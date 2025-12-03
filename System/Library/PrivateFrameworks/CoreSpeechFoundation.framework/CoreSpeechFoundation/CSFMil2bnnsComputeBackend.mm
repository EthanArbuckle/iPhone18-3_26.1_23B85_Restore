@interface CSFMil2bnnsComputeBackend
+ ($3265B292A9BE2BE95187D95CCBA22C14)_compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight compilationConfig:(id)config isBnnsIrMapped:(BOOL *)mapped errOut:(id *)out;
+ (id)compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight;
+ (void)markPurgeableWithBnnsIrFile:(id)file;
- ($3265B292A9BE2BE95187D95CCBA22C14)_mapBnnsIrPath:(id)path errOut:(id *)out;
- (BOOL)_populateModelInterfaceParameters;
- (CSFMil2bnnsComputeBackend)initWithBnnsIrFile:(id)file weightPath:(id)path errOut:(id *)out;
- (CSFMil2bnnsComputeBackend)initWithModelFile:(id)file bnnsIrPath:(id)path errOut:(id *)out;
- (id)_convertOutputBuffer:(id)buffer;
- (id)_fetchTensorPropertiesForName:(id)name;
- (id)_getShapeFromTensorDesc:(id *)desc;
- (id)_runWithMil2bnnsDataInputBuff:(id)buff error:(id *)error;
- (id)predictOutputWithInputs:(id)inputs errOut:(id *)out;
- (unint64_t)_getDataTypeFromTensorDesc:(id *)desc;
- (void)_graphInitWithError:(id *)error;
- (void)_loadGraph:(id *)graph;
- (void)_pointBnnsIrToWeights:(id)weights errOut:(id *)out;
- (void)dealloc;
@end

@implementation CSFMil2bnnsComputeBackend

- (void)dealloc
{
  data = self->_graphContext.data;
  size = self->_graphContext.size;
  BNNSGraphContextDestroy_v2();
  v5 = self->_graph.data;
  if (self->_graphIsMapped)
  {
    if (v5 != -1)
    {
      munmap(v5, self->_graph.size);
      self->_graph.data = -1;
      self->_graph.size = 0;
    }

    self->_graphIsMapped = 0;
  }

  else if (v5)
  {
    free(v5);
    self->_graph.data = 0;
    self->_graph.size = 0;
  }

  v6.receiver = self;
  v6.super_class = CSFMil2bnnsComputeBackend;
  [(CSFMil2bnnsComputeBackend *)&v6 dealloc];
}

- (id)_runWithMil2bnnsDataInputBuff:(id)buff error:(id *)error
{
  v61[1] = *MEMORY[0x1E69E9840];
  buffCopy = buff;
  if (buffCopy && [buffCopy count])
  {
    data = self->_graph.data;
    size = self->_graph.size;
    InputCount = BNNSGraphGetInputCount();
    std::vector<char const*>::vector[abi:ne200100](v53, InputCount);
    v8 = self->_graph.data;
    v9 = self->_graph.size;
    BNNSGraphGetInputNames_v2();
    v10 = self->_graph.data;
    v11 = self->_graph.size;
    OutputCount = BNNSGraphGetOutputCount();
    std::vector<char const*>::vector[abi:ne200100](v52, OutputCount);
    v46 = InputCount;
    v13 = self->_graph.data;
    v14 = self->_graph.size;
    BNNSGraphGetOutputNames_v2();
    memset(__p, 0, sizeof(__p));
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (OutputCount)
    {
      v16 = 0;
      while (1)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v52[0] + v16)];
        v18 = [CSFComputeDataBuffer alloc];
        v19 = [(NSDictionary *)self->_bnnsIrOutputTensorsProperty objectForKeyedSubscript:v17];
        v50 = 0;
        v20 = [(CSFComputeDataBuffer *)v18 initWithProperties:v19 name:v17 errOut:&v50];
        v21 = v50;

        if (!v20 || v21 != 0)
        {
          break;
        }

        [v15 setObject:v20 forKey:v17];
        v23 = [v15 objectForKeyedSubscript:v17];
        *&v49 = [v23 getWritableDataPtr];
        v24 = [v15 objectForKeyedSubscript:v17];
        *(&v49 + 1) = 4 * [v24 elementSize];
        std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](__p, &v49);

        if (OutputCount == ++v16)
        {
          goto LABEL_11;
        }
      }

      if (error)
      {
        v41 = v21;
        *error = v21;
      }

      goto LABEL_28;
    }

LABEL_11:
    if (InputCount == [buffCopy count])
    {
      if (InputCount)
      {
        v25 = 0;
        while (1)
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v53[0] + v25)];
          v26 = [(NSDictionary *)self->_bnnsIrInputTensorsProperty objectForKeyedSubscript:v17];
          v27 = [buffCopy objectForKeyedSubscript:v17];
          tensorProperties = [v27 tensorProperties];
          v29 = [v26 isEqual:tensorProperties];

          if ((v29 & 1) == 0)
          {
            break;
          }

          v30 = [buffCopy objectForKeyedSubscript:v17];
          *&v49 = [v30 getWritableDataPtr];
          v31 = [buffCopy objectForKeyedSubscript:v17];
          *(&v49 + 1) = 4 * [v31 elementSize];
          std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](__p, &v49);

          if (v46 == ++v25)
          {
            goto LABEL_16;
          }
        }

        if (!error)
        {
          goto LABEL_29;
        }

        v44 = MEMORY[0x1E696ABC0];
        v56 = *MEMORY[0x1E696A578];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatched input tensor"];
        v57 = v21;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        *error = [v44 errorWithDomain:@"com.apple.corespeech" code:2415 userInfo:v45];

LABEL_28:
LABEL_29:

        goto LABEL_30;
      }

LABEL_16:
      v32 = self->_graphContext.data;
      v33 = self->_graphContext.size;
      if (!BNNSGraphContextExecute_v2())
      {
        v39 = [v15 copy];
        goto LABEL_31;
      }

      if (error)
      {
        v34 = MEMORY[0x1E696ABC0];
        v54 = *MEMORY[0x1E696A578];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BNNSGraphContextExecute failed"];
        v55 = v17;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v35 = [v34 errorWithDomain:@"com.apple.corespeech" code:2408 userInfo:v21];
LABEL_24:
        *error = v35;
        goto LABEL_28;
      }
    }

    else if (error)
    {
      v40 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"given input length does not match"];
      v59 = v17;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v35 = [v40 errorWithDomain:@"com.apple.corespeech" code:2409 userInfo:v21];
      goto LABEL_24;
    }

LABEL_30:
    v39 = 0;
LABEL_31:

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    goto LABEL_37;
  }

  if (error)
  {
    v36 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A578];
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs to model is empty"];
    v61[0] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    *error = [v36 errorWithDomain:@"com.apple.corespeech" code:2401 userInfo:v38];
  }

  v39 = 0;
LABEL_37:

  v42 = *MEMORY[0x1E69E9840];

  return v39;
}

- (void)_loadGraph:(id *)graph
{
  v45 = *MEMORY[0x1E69E9840];
  bnnsIrPath = self->_bnnsIrPath;
  if (!bnnsIrPath)
  {
    if (self->_graph.data)
    {
      goto LABEL_20;
    }

LABEL_11:
    milPath = self->_milPath;
    if (milPath)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      v13 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      v14 = self->_bnnsIrPath;
      if (v13)
      {
        *buf = 136315394;
        v40 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
        v41 = 2112;
        v42 = v14;
        _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s No graph is loaded, compiling to bnnsIr: %@", buf, 0x16u);
        milPath = self->_milPath;
        v14 = self->_bnnsIrPath;
      }

      modelCompilationConfig = self->_modelCompilationConfig;
      v36 = 0;
      v16 = [CSFMil2bnnsComputeBackend _compileWithMilFile:milPath bnnsIrPath:v14 separateWeight:0 compilationConfig:modelCompilationConfig isBnnsIrMapped:&self->_graphIsMapped errOut:&v36];
      v18 = v17;
      milPath = v36;
      self->_graph.data = v16;
      self->_graph.size = v18;
      if (v16)
      {
        v19 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v40 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
          _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s recompilation is successful", buf, 0xCu);
        }

        if (graph)
        {
          *graph = 0;
        }

        data = self->_graph.data;
        goto LABEL_20;
      }

      v30 = self->_milPath;
      if (v30)
      {
        v31 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v40 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
          v41 = 2112;
          v42 = v30;
          v43 = 2112;
          v44 = milPath;
          _os_log_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_DEFAULT, "%s recompiling milFile: %@ failed with error: %@", buf, 0x20u);
        }

        if (graph)
        {
          v32 = milPath;
          *graph = milPath;
        }
      }
    }

    v33 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
      _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s bnnsIr loading failed", buf, 0xCu);
    }

    goto LABEL_35;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
    v41 = 2112;
    v42 = bnnsIrPath;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s loading model from bnnsIrPath: %@", buf, 0x16u);
    bnnsIrPath = self->_bnnsIrPath;
  }

  v7 = [(CSFMil2bnnsComputeBackend *)self _mapBnnsIrPath:bnnsIrPath errOut:graph];
  self->_graph.data = v7;
  self->_graph.size = v8;
  if (graph)
  {
    v9 = *graph;
    if (*graph)
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v40 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
        v41 = 2112;
        v42 = v9;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s error loading bnns ir :%@", buf, 0x16u);
        v7 = self->_graph.data;
      }
    }
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  self->_graphIsMapped = 1;
LABEL_20:
  size = self->_graph.size;
  v22 = BNNSGraphContextMake();
  self->_graphContext.data = v22;
  self->_graphContext.size = v23;
  weight = self->_weight;
  if (weight)
  {
    v35 = 0;
    [(CSFMil2bnnsComputeBackend *)self _pointBnnsIrToWeights:weight errOut:&v35];
    v25 = v35;
    if (v25)
    {
      milPath = v25;
      if (graph)
      {
        v26 = v25;
        *graph = milPath;
      }

      goto LABEL_35;
    }

    v22 = self->_graphContext.data;
  }

  milPath = 0;
  if (graph && !v22)
  {
    v27 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BNNSGraphContextMake fail for %@", self->_milPath];
    v38 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *graph = [v27 errorWithDomain:@"com.apple.corespeech" code:2262 userInfo:v29];

    milPath = 0;
  }

LABEL_35:

  v34 = *MEMORY[0x1E69E9840];
}

- ($3265B292A9BE2BE95187D95CCBA22C14)_mapBnnsIrPath:(id)path errOut:(id *)out
{
  v41[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = open([pathCopy UTF8String], 0);
  v7 = v6;
  if (v6 == -1)
  {
    if (out)
    {
      v13 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      v14 = MEMORY[0x1E696AEC0];
      v15 = __error();
      v16 = [v14 stringWithFormat:@"Could not read open() BNNSIR: %s", strerror(*v15)];
      v41[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      *out = [v13 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v17];
    }
  }

  else if (fstat(v6, &v33))
  {
    if (out)
    {
      v8 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v9 = MEMORY[0x1E696AEC0];
      v10 = __error();
      v11 = [v9 stringWithFormat:@"Could not fstat() BNNSIR: %s", strerror(*v10)];
      v39 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *out = [v8 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v12];
    }

    close(v7);
  }

  else
  {
    st_size = v33.st_size;
    v18 = mmap(0, v33.st_size, 1, 1, v7, 0);
    close(v7);
    if (v18 == -1)
    {
      if (out)
      {
        v28 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A578];
        v29 = MEMORY[0x1E696AEC0];
        v30 = __error();
        v31 = [v29 stringWithFormat:@"Could not mmap() BNNSIR: %s", strerror(*v30)];
        v37 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *out = [v28 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v32];
      }
    }

    else
    {
      if (BNNSGraphGetWorkspaceSize_v2() != -1)
      {
        goto LABEL_9;
      }

      if (out)
      {
        v23 = MEMORY[0x1E696ABC0];
        v34 = *MEMORY[0x1E696A578];
        v24 = MEMORY[0x1E696AEC0];
        v25 = __error();
        v26 = [v24 stringWithFormat:@"Could not BNNSGraphGetWorkspaceSize() BNNSIR: %s", strerror(*v25)];
        v35 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *out = [v23 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v27];
      }

      munmap(v18, st_size);
    }
  }

  v18 = 0;
  st_size = 0;
LABEL_9:

  v20 = *MEMORY[0x1E69E9840];
  v21 = v18;
  v22 = st_size;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (id)_convertOutputBuffer:(id)buffer
{
  v20 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = bufferCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v15}];
        convertDataToArray = [v10 convertDataToArray];
        [v4 setObject:convertDataToArray forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_populateModelInterfaceParameters
{
  if (!self->_graph.data)
  {
    return 0;
  }

  size = self->_graph.size;
  InputCount = BNNSGraphGetInputCount();
  std::vector<char const*>::vector[abi:ne200100](&v27, InputCount);
  data = self->_graph.data;
  v6 = self->_graph.size;
  BNNSGraphGetInputNames_v2();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = v27;
  v9 = v28;
  if (v27 == v28)
  {
    v12 = 0;
LABEL_9:
    v14 = self->_graph.data;
    v15 = self->_graph.size;
    OutputCount = BNNSGraphGetOutputCount();
    std::vector<char const*>::vector[abi:ne200100](&__p, OutputCount);
    v17 = self->_graph.data;
    v18 = self->_graph.size;
    BNNSGraphGetOutputNames_v2();
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v20 = __p;
    v21 = v26;
    if (__p == v26)
    {
      v23 = v12;
LABEL_15:
      objc_storeStrong(&self->_bnnsIrInputTensorsProperty, dictionary);
      objc_storeStrong(&self->_bnnsIrOutputTensorsProperty, dictionary2);
      v13 = 1;
      v22 = v23;
    }

    else
    {
      while (1)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v20];
        if (!v12)
        {
          break;
        }

        v23 = [(CSFMil2bnnsComputeBackend *)self _fetchTensorPropertiesForName:v22];

        [dictionary2 setObject:v23 forKey:v22];
        ++v20;
        v12 = v23;
        if (v20 == v21)
        {
          goto LABEL_15;
        }
      }

      v13 = 0;
    }

    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v8];
      v12 = [(CSFMil2bnnsComputeBackend *)self _fetchTensorPropertiesForName:v11];

      if (!v12)
      {
        break;
      }

      [dictionary setObject:v12 forKey:v11];

      ++v8;
      v10 = v12;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }

    v13 = 0;
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v13;
}

- (id)_fetchTensorPropertiesForName:(id)name
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  data = self->_graphContext.data;
  size = self->_graphContext.size;
  [(NSString *)self->_funcName UTF8String];
  if (BNNSGraphContextGetTensorDescriptor_v2())
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
      *buf = 136315394;
      *&buf[4] = "[CSFMil2bnnsComputeBackend _fetchTensorPropertiesForName:]";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get desc for tensor %@", buf, 0x16u);
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (*(&v27 + 1) != 1)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
      *buf = 136315394;
      *&buf[4] = "[CSFMil2bnnsComputeBackend _fetchTensorPropertiesForName:]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Stride not supported for tensor %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v42 = v31;
  v43 = v32;
  v44 = v33;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  *buf = v23;
  *&buf[16] = v24;
  v36 = v25;
  v37 = v26;
  [(CSFMil2bnnsComputeBackend *)self _getShapeFromTensorDesc:buf];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v34 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v19 + 1) + 8 * i) unsignedLongLongValue])
        {
          v15 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
            *buf = 136315394;
            *&buf[4] = "[CSFMil2bnnsComputeBackend _fetchTensorPropertiesForName:]";
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Shape not set for tensor %@", buf, 0x16u);
          }

          goto LABEL_19;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v42 = v31;
  v43 = v32;
  v44 = v33;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  *buf = v23;
  *&buf[16] = v24;
  v36 = v25;
  v37 = v26;
  v13 = [CSFTensorProperties propertyWithShape:v8 dataType:[(CSFMil2bnnsComputeBackend *)self _getDataTypeFromTensorDesc:buf]];
LABEL_20:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)_getDataTypeFromTensorDesc:(id *)desc
{
  var5 = desc->var5;
  if (var5 == 65568)
  {
    return 1;
  }

  else
  {
    return 2 * (var5 != 131104);
  }
}

- (id)_getShapeFromTensorDesc:(id *)desc
{
  var1 = desc->var1;
  Rank = BNNSDataLayoutGetRank();
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (Rank)
  {
    var2 = desc->var2;
    do
    {
      v8 = *var2++;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v8];
      [v6 addObject:v9];

      --Rank;
    }

    while (Rank);
  }

  return v6;
}

- (void)_pointBnnsIrToWeights:(id)weights errOut:(id *)out
{
  v15[1] = *MEMORY[0x1E69E9840];
  weightsCopy = weights;
  data = self->_graphContext.data;
  size = self->_graphContext.size;
  [weightsCopy getWeightData];
  [weightsCopy weightSize];
  v9 = BNNSGraphContextSetWeights();
  if (out && v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set weight for graph context"];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *out = [v10 errorWithDomain:@"com.apple.corespeech" code:2454 userInfo:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_graphInitWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  self->_graphIsMapped = 0;
  self->_graphContext = 0u;
  self->_graph = 0u;
  v15 = 0;
  [(CSFMil2bnnsComputeBackend *)self _loadGraph:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      bnnsIrPath = self->_bnnsIrPath;
      *buf = 136315650;
      v19 = "[CSFMil2bnnsComputeBackend _graphInitWithError:]";
      v20 = 2112;
      v21 = bnnsIrPath;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Error loading mil2bnns graph for bnnsir file: %@ with error: %@", buf, 0x20u);
    }

    if (error)
    {
      v8 = v5;
      *error = v5;
    }
  }

  else
  {
    _populateModelInterfaceParameters = [(CSFMil2bnnsComputeBackend *)self _populateModelInterfaceParameters];
    if (error)
    {
      v10 = _populateModelInterfaceParameters;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      v11 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read tensor descriptors"];
      v17 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *error = [v11 errorWithDomain:@"com.apple.corespeech" code:2457 userInfo:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)predictOutputWithInputs:(id)inputs errOut:(id *)out
{
  v32[1] = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  v7 = [inputsCopy count];
  if (v7 == [(NSDictionary *)self->_bnnsIrInputTensorsProperty count])
  {
    v22 = 0;
    v8 = [(CSFMil2bnnsComputeBackend *)self _runWithMil2bnnsDataInputBuff:inputsCopy error:&v22];
    v9 = v22;
    if (v9)
    {
      v10 = v9;
      if (out)
      {
        v11 = v9;
        *out = v10;
        v12 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          bnnsIrPath = self->_bnnsIrPath;
          *buf = 136315650;
          v26 = "[CSFMil2bnnsComputeBackend predictOutputWithInputs:errOut:]";
          v27 = 2112;
          v28 = bnnsIrPath;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s bnnsIr %@ model execution with error: %@", buf, 0x20u);
        }
      }

LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    v16 = [v8 count];
    if (v16 != [(NSDictionary *)self->_bnnsIrOutputTensorsProperty count])
    {
      if (out)
      {
        v17 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config output count does not match with given inputs count"];
        v24 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        *out = [v17 errorWithDomain:@"com.apple.corespeech" code:2411 userInfo:v19];
      }

      v10 = 0;
      goto LABEL_14;
    }

    v8 = v8;
    v10 = 0;
    v15 = v8;
  }

  else
  {
    if (!out)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v14 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config input count does not match with given inputs count"];
    v32[0] = v10;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v14 errorWithDomain:@"com.apple.corespeech" code:2410 userInfo:v8];
    *out = v15 = 0;
  }

LABEL_15:

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (CSFMil2bnnsComputeBackend)initWithBnnsIrFile:(id)file weightPath:(id)path errOut:(id *)out
{
  v36 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = CSFMil2bnnsComputeBackend;
  v11 = [(CSFMil2bnnsComputeBackend *)&v29 init];
  v12 = v11;
  if (v11)
  {
    milPath = v11->_milPath;
    v11->_milPath = 0;

    objc_storeStrong(&v12->_bnnsIrPath, file);
    funcName = v12->_funcName;
    v12->_funcName = @"main";

    if (pathCopy)
    {
      v28 = 0;
      v15 = [[bnnsIrMappedWeight alloc] initWithWeightFile:pathCopy errOut:&v28];
      v16 = v28;
      weight = v12->_weight;
      v12->_weight = v15;

      if (!v12->_weight || v16)
      {
        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v31 = "[CSFMil2bnnsComputeBackend initWithBnnsIrFile:weightPath:errOut:]";
          v32 = 2112;
          v33 = pathCopy;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s weight init with: %@ failed with error: %@", buf, 0x20u);
        }

        if (out)
        {
          v24 = v16;
          *out = v16;
        }

        goto LABEL_17;
      }
    }

    v27 = 0;
    [(CSFMil2bnnsComputeBackend *)v12 _graphInitWithError:&v27];
    v18 = v27;
    if (v18)
    {
      v19 = v18;
      if (out)
      {
        v20 = v18;
        *out = v19;
      }

      v21 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = "[CSFMil2bnnsComputeBackend initWithBnnsIrFile:weightPath:errOut:]";
        v32 = 2112;
        v33 = fileCopy;
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_DEFAULT, "%s model init with bnnsIrFile: %@ failed with error: %@", buf, 0x20u);
      }

LABEL_17:
      v22 = 0;
      goto LABEL_18;
    }
  }

  v22 = v12;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

- (CSFMil2bnnsComputeBackend)initWithModelFile:(id)file bnnsIrPath:(id)path errOut:(id *)out
{
  v36 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = CSFMil2bnnsComputeBackend;
  v11 = [(CSFMil2bnnsComputeBackend *)&v29 init];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [fileCopy stringByAppendingPathExtension:@"config.json"];
  objc_storeStrong(&v11->_milPath, file);
  objc_storeStrong(&v11->_bnnsIrPath, path);
  v28 = 0;
  v13 = [[CSFMil2bnnsCompilationConfig alloc] initWithConfigPath:v12 errOut:&v28];
  v14 = v28;
  modelCompilationConfig = v11->_modelCompilationConfig;
  v11->_modelCompilationConfig = v13;

  v16 = v11->_modelCompilationConfig;
  if (!v16)
  {
    if (out)
    {
      v23 = v14;
      *out = v14;
    }

    goto LABEL_12;
  }

  funcName = [(CSFMil2bnnsCompilationConfig *)v16 funcName];
  funcName = v11->_funcName;
  v11->_funcName = funcName;

  v27 = 0;
  [(CSFMil2bnnsComputeBackend *)v11 _graphInitWithError:&v27];
  v19 = v27;
  if (!v19)
  {

LABEL_14:
    v24 = v11;
    goto LABEL_15;
  }

  v20 = v19;
  if (out)
  {
    v21 = v19;
    *out = v20;
  }

  v22 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "[CSFMil2bnnsComputeBackend initWithModelFile:bnnsIrPath:errOut:]";
    v32 = 2112;
    v33 = pathCopy;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s model init with bnnsIrFile: %@ failed with error: %@", buf, 0x20u);
  }

LABEL_12:
  v24 = 0;
LABEL_15:

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

+ ($3265B292A9BE2BE95187D95CCBA22C14)_compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight compilationConfig:(id)config isBnnsIrMapped:(BOOL *)mapped errOut:(id *)out
{
  v45[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  weightCopy = weight;
  configCopy = config;
  if (mapped)
  {
    *mapped = 0;
  }

  BNNSGraphCompileOptionsMakeDefault();
  [configCopy singleThread];
  BNNSGraphCompileOptionsSetTargetSingleThread();
  [configCopy debugInfo];
  BNNSGraphCompileOptionsSetGenerateDebugInfo();
  [configCopy predefinedOptimizations];
  BNNSGraphCompileOptionsSetPredefinedOptimizations();
  if ([configCopy optimizeForSize])
  {
    BNNSGraphCompileOptionsSetOptimizationPreference();
  }

  if (pathCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
    {
      v41 = 0;
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v41];
      v16 = v41;
      if (v16)
      {
        v17 = v16;
        if (out)
        {
          v18 = v16;
          v19 = 0;
          v20 = 0;
          *out = v17;
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        v19 = 0;
        v20 = 0;
        goto LABEL_28;
      }
    }

    BNNSGraphCompileOptionsSetFileWriteFSyncBarrier();
    v21 = pathCopy;
    [pathCopy UTF8String];
    BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();
    if (weightCopy)
    {
      stringByDeletingLastPathComponent2 = [weightCopy stringByDeletingLastPathComponent];
      if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent2] & 1) == 0)
      {
        v40 = 0;
        [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v40];
        v23 = v40;
        if (v23)
        {
          v17 = v23;
          if (out)
          {
            v24 = v23;
            *out = v17;
          }

          goto LABEL_27;
        }
      }

      v26 = weightCopy;
      [weightCopy UTF8String];
      BNNSGraphCompileOptionsSetWeightsPathWithPermissions();
    }

    v27 = fileCopy;
    [fileCopy UTF8String];
    funcName = [configCopy funcName];
    v29 = funcName;
    [funcName UTF8String];
    v19 = BNNSGraphCompileFromFile_v2();
    v20 = v30;

    BNNSGraphCompileOptionsDestroy();
    if (v19)
    {
      if (mapped)
      {
        *mapped = 1;
      }

      [CSFMil2bnnsComputeBackend markPurgeableWithBnnsIrFile:pathCopy, out];
      v17 = 0;
      goto LABEL_28;
    }

    if (out)
    {
      v31 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"graph data nil"];
      v43 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *out = [v31 errorWithDomain:@"com.apple.corespeech" code:2260 userInfo:v33];
    }

    v17 = 0;
    goto LABEL_27;
  }

  if (out)
  {
    v25 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    defaultManager = [MEMORY[0x1E696AEC0] stringWithFormat:@"bnnsIrPath nil"];
    v45[0] = defaultManager;
    stringByDeletingLastPathComponent = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    [v25 errorWithDomain:@"com.apple.corespeech" code:2258 userInfo:stringByDeletingLastPathComponent];
    v19 = 0;
    *out = v20 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v19 = 0;
  v20 = 0;
LABEL_30:

  v34 = *MEMORY[0x1E69E9840];
  v35 = v19;
  v36 = v20;
  result.var1 = v36;
  result.var0 = v35;
  return result;
}

+ (void)markPurgeableWithBnnsIrFile:(id)file
{
  v19 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (fileCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:fileCopy];

    if (v5)
    {
      v12 = 67589;
      v6 = fsctl([fileCopy UTF8String], 0xC0084A44uLL, &v12, 0);
      v7 = CSLogContextFacilityCoreSpeech;
      if (v6)
      {
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = __error();
          v11 = strerror(*v10);
          *buf = 136315650;
          v14 = "+[CSFMil2bnnsComputeBackend markPurgeableWithBnnsIrFile:]";
          v15 = 2112;
          v16 = fileCopy;
          v17 = 2080;
          v18 = v11;
          _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Fail to mark bnnsIrFile: %@ as purgeable: error: %s", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "+[CSFMil2bnnsComputeBackend markPurgeableWithBnnsIrFile:]";
        v15 = 2112;
        v16 = fileCopy;
        _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Mark bnnsIrFile: %@ as purgeable is successful!", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight
{
  fileCopy = file;
  pathCopy = path;
  weightCopy = weight;
  v10 = [fileCopy stringByAppendingPathExtension:@"config.json"];
  v22 = 0;
  v11 = [[CSFMil2bnnsCompilationConfig alloc] initWithConfigPath:v10 errOut:&v22];
  v12 = v22;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v14 = [CSFMil2bnnsComputeBackend _compileWithMilFile:fileCopy bnnsIrPath:pathCopy separateWeight:weightCopy compilationConfig:v11 isBnnsIrMapped:&v21 errOut:&v20];
    v16 = v15;
    v17 = v20;
    if (v21 == 1)
    {
      if (v14 != -1)
      {
        munmap(v14, v16);
      }
    }

    else if (v14)
    {
      free(v14);
    }

    v13 = v17;
  }

  v18 = v13;

  return v18;
}

@end