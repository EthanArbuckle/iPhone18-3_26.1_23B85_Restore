@interface _EARLMTGlobalNNLM
+ (id)attachmentURL:(id)a3 withName:(id)a4;
+ (id)compressedAttachmentURLFromRecipe:(id)a3 attachments:(id)a4;
+ (void)initialize;
- (_EARLMTGlobalNNLM)initWithRecipe:(id)a3;
- (_EARLMTGlobalNNLM)initWithRecipe:(id)a3 assetPath:(id)a4;
- (id)_fetchTensorInfo:(id)a3;
- (id)computeDelta:(BOOL)a3;
- (id)evaluate;
- (id)evaluatePartialDelta;
- (id)findTensorsIndicesByKeyWord:(id)a3 tensorInfo:(id)a4;
- (id)getEvalTask:(id *)a3;
- (id)getTrainTask:(id *)a3;
- (id)loadData;
- (id)loadWeight;
- (id)restoreFromLatestWeights:(id)a3;
- (id)saveWeight:(id)a3;
- (id)setup;
- (id)train;
- (void)evaluatePartialDelta;
@end

@implementation _EARLMTGlobalNNLM

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.speech.speechmodeltraining", "_EARLMTGlobalNNLM");
    v3 = sLog;
    sLog = v2;
  }
}

+ (id)attachmentURL:(id)a3 withName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v6 && v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44___EARLMTGlobalNNLM_attachmentURL_withName___block_invoke;
    v13[3] = &unk_1E7C1C4E8;
    v14 = v6;
    v8 = [v5 indexOfObjectPassingTest:v13];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v6];

    if (v11)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)compressedAttachmentURLFromRecipe:(id)a3 attachments:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"compressedAttachmentFilename"];
  if (v8)
  {
    v9 = [a1 attachmentURL:v7 withName:v8];
    v10 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_INFO, "Attached compressed file URL: %@", &v13, 0xCu);
    }

    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_fetchTensorInfo:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v26 = objc_opt_new();
  v30 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v4)
  {
    v34 = 0;
    v28 = *v41;
    do
    {
      v5 = 0;
      v31 = v4;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [v29 getTensorNamed:v6 directBind:1];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = v7;
        v8 = [v7 shape];
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v9)
        {
          v10 = *v37;
          LODWORD(v11) = 1;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = [v13 intValue];

              v11 = (v14 * v11);
            }

            v9 = [v8 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v9);
        }

        else
        {
          v11 = 1;
        }

        v45[0] = v6;
        v44[0] = @"name";
        v44[1] = @"size";
        v32 = [MEMORY[0x1E696AD98] numberWithInt:v11];
        v45[1] = v32;
        v44[2] = @"shape";
        v15 = objc_alloc(MEMORY[0x1E695DF70]);
        v16 = [v35 shape];
        v17 = [v15 initWithArray:v16 copyItems:1];
        v45[2] = v17;
        v44[3] = @"strides";
        v18 = objc_alloc(MEMORY[0x1E695DF70]);
        v19 = [v35 strides];
        v20 = [v18 initWithArray:v19 copyItems:1];
        v45[3] = v20;
        v44[4] = @"offset";
        v21 = [MEMORY[0x1E696AD98] numberWithInt:v34];
        v45[4] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:5];
        v23 = [v22 mutableCopy];
        [v30 setObject:v23 forKeyedSubscript:v6];

        objc_autoreleasePoolPop(context);
        v34 += v11;
        ++v5;
      }

      while (v5 != v31);
      v4 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v4);
  }

  else
  {
    v34 = 0;
  }

  [v26 setObject:v30 forKeyedSubscript:@"tensorInfo"];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  [v26 setObject:v24 forKeyedSubscript:@"totalSize"];

  return v26;
}

- (_EARLMTGlobalNNLM)initWithRecipe:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = _EARLMTGlobalNNLM;
  v6 = [(_EARLMTGlobalNNLM *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipe, a3);
    v7->_numParam = 0;
    v8 = objc_opt_new();
    assetPath = v7->_assetPath;
    v7->_assetPath = v8;

    v10 = objc_opt_new();
    trainData = v7->_trainData;
    v7->_trainData = v10;

    v12 = objc_opt_new();
    evalData = v7->_evalData;
    v7->_evalData = v12;

    v7->_weightsAreUpdated = 0;
    v7->_numWordsTrain = 0;
    v7->_numWordsEval = 0;
    v14 = objc_opt_new();
    results = v7->_results;
    v7->_results = v14;

    v7->_deltaIsPartial = 0;
    mmappedPartialWeights = v7->_mmappedPartialWeights;
    v7->_mmappedPartialWeights = 0;
  }

  return v7;
}

- (_EARLMTGlobalNNLM)initWithRecipe:(id)a3 assetPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = _EARLMTGlobalNNLM;
  v9 = [(_EARLMTGlobalNNLM *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recipe, a3);
    objc_storeStrong(&v10->_assetPath, a4);
    v10->_numParam = 0;
    v11 = objc_opt_new();
    trainData = v10->_trainData;
    v10->_trainData = v11;

    v13 = objc_opt_new();
    evalData = v10->_evalData;
    v10->_evalData = v13;

    v10->_weightsAreUpdated = 0;
    v10->_numWordsTrain = 0;
    v10->_numWordsEval = 0;
    v15 = objc_opt_new();
    results = v10->_results;
    v10->_results = v15;
  }

  return v10;
}

- (id)loadData
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"language"];
  v4 = v3;
  if (!v3)
  {
    v3 = @"en-US";
  }

  v5 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  language = self->_language;
  self->_language = v5;

  v7 = _parseRecipeBoolField(self->_recipe, @"mergeTrainDev", 0);
  if (v7)
  {
    objc_storeStrong(&self->_evalData, self->_trainData);
    v8 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v8, OS_LOG_TYPE_INFO, "merge training and evaluation data and use them for both training and evaluation", buf, 2u);
    }
  }

  v9 = objc_autoreleasePoolPush();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = self->_trainData;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v10);
        }

        self->_numWordsTrain += [*(*(&v35 + 1) + 8 * i) count] + 1;
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_evalData;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        self->_numWordsEval += [*(*(&v31 + 1) + 8 * j) count] + 1;
      }

      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v15);
  }

  v18 = sLog;
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v19)
    {
      v20 = [(NSMutableArray *)self->_trainData count];
      numWordsTrain = self->_numWordsTrain;
      *buf = 134218240;
      v40 = v20;
      v41 = 2048;
      v42 = numWordsTrain;
      _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_INFO, "%lu sentences (%lu words) will be used for both traiing and evaluation data", buf, 0x16u);
    }

    v22 = self->_numWordsTrain + self->_numWordsEval;
    self->_numWordsTrain = v22;
    self->_numWordsEval = v22;
  }

  else
  {
    if (v19)
    {
      v23 = [(NSMutableArray *)self->_trainData count];
      v24 = self->_numWordsTrain;
      *buf = 134218240;
      v40 = v23;
      v41 = 2048;
      v42 = v24;
      _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_INFO, "%lu sentences (%lu words) will be used for traiing data", buf, 0x16u);
    }

    v25 = sLog;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [(NSMutableArray *)self->_evalData count];
      numWordsEval = self->_numWordsEval;
      *buf = 134218240;
      v40 = v26;
      v41 = 2048;
      v42 = numWordsEval;
      _os_log_impl(&dword_1B501D000, v25, OS_LOG_TYPE_INFO, "%lu sentences (%lu words) will be used for evaluation data", buf, 0x16u);
    }

    v22 = self->_numWordsTrain;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  [(NSMutableDictionary *)self->_results setObject:v28 forKeyedSubscript:@"NumWordsInTraining"];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numWordsEval];
  [(NSMutableDictionary *)self->_results setObject:v29 forKeyedSubscript:@"NumWordsInEvaluation"];

  objc_autoreleasePoolPop(v9);

  return 0;
}

- (id)loadWeight
{
  v109 = *MEMORY[0x1E69E9840];
  v104[0] = 0;
  v2 = [(_EARLMTGlobalNNLM *)self getEvalTask:v104];
  v3 = v104[0];
  if (!v2 || v3)
  {
    v69 = v3;
    v62 = v69;
  }

  else
  {
    v55 = v2;
    v4 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v4, OS_LOG_TYPE_INFO, "Evaluation model loaded in reloading weight", buf, 2u);
    }

    assetPath = self->_assetPath;
    v6 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"weightMap"];
    v58 = [(NSString *)assetPath stringByAppendingString:v6];

    v7 = self->_assetPath;
    v8 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"weightFile"];
    v60 = [(NSString *)v7 stringByAppendingString:v8];

    v103 = 0;
    v57 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v58 encoding:4 error:&v103];
    v69 = v103;
    v101[0] = 0;
    v101[1] = v101;
    v101[2] = 0x3032000000;
    v101[3] = __Block_byref_object_copy__20;
    v101[4] = __Block_byref_object_dispose__20;
    v102 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v56 = [v57 componentsSeparatedByCharactersInSet:v9];

    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __31___EARLMTGlobalNNLM_loadWeight__block_invoke;
    v100[3] = &unk_1E7C1A410;
    v100[4] = v101;
    [v56 enumerateObjectsUsingBlock:v100];
    v10 = v60;
    std::string::basic_string[abi:ne200100]<0>(&__sz, [v60 UTF8String]);
    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v97, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
    }

    else
    {
      v97 = __sz;
    }

    StorageAccessor::EspressoStorageAccessor::EspressoStorageAccessor(buf, &v97);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
    v11 = [obj countByEnumeratingWithState:&v93 objects:v108 count:16];
    if (v11)
    {
      v63 = *v94;
      v59 = *MEMORY[0x1E696A578];
      while (1)
      {
        v12 = 0;
        v64 = v11;
        do
        {
          if (*v94 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v67 = v12;
          v13 = *(*(&v93 + 1) + 8 * v12);
          context = objc_autoreleasePoolPush();
          v68 = [v13 componentsSeparatedByString:@"/"];
          v71 = [v68 objectAtIndex:2];
          if ([v68 count] < 4)
          {
            v17 = v71;
          }

          else
          {
            v14 = [v71 stringByAppendingString:@"/"];
            v15 = [v68 objectAtIndex:3];
            v16 = [v14 stringByAppendingString:v15];

            v17 = v16;
          }

          v72 = v17;
          v70 = [_EARLMTGlobalNNLM findTensorsIndicesByKeyWord:"findTensorsIndicesByKeyWord:tensorInfo:" tensorInfo:?];
          v18 = [v70 objectForKey:@"constant_blob"];
          v19 = v18 == 0;

          if (!v19)
          {
            v20 = [v70 objectForKey:@"constant_blob"];
            StorageAccessor::EspressoStorageAccessor::GetDataView<float>(buf, [v20 integerValue], &v90);
            v21 = v90;
            v91 = 0;
            v92 = 0;
            v90 = 0;

            goto LABEL_21;
          }

          v22 = [v70 objectForKey:@"Q_meta"];
          if (v22)
          {
            v23 = [v70 objectForKey:@"weights_u8"];
            v24 = v23 == 0;

            if (!v24)
            {
              v25 = [v70 objectForKey:@"Q_meta"];
              StorageAccessor::EspressoStorageAccessor::GetDataView<float>(buf, [v25 integerValue], &v90);

              v26 = [v70 objectForKey:@"weights_u8"];
              StorageAccessor::EspressoStorageAccessor::GetDataView<unsigned char>(buf, [v26 intValue], &v87);

              v27 = [v70 objectForKey:@"nB"];
              LODWORD(v26) = [v27 intValue];

              v28 = [v70 objectForKey:@"nC"];
              LODWORD(v27) = [v28 intValue];

              v84 = 0;
              v85 = 0;
              v83 = 0;
              std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v83, v87, v88, v88 - v87);
              __p = 0;
              v81 = 0;
              v82 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v90, v91, (v91 - v90) >> 2);
              quasar::QuantizationTool::LinearRegionDequantize(&v83, v26, v27, 64, &__p, v86);
              v21 = v86[0];
              memset(v86, 0, sizeof(v86));
              if (__p)
              {
                v81 = __p;
                operator delete(__p);
              }

              if (v83)
              {
                v84 = v83;
                operator delete(v83);
              }

              v29 = v87;
              if (!v87)
              {
                goto LABEL_44;
              }

              v88 = v87;
              goto LABEL_43;
            }
          }

          v40 = [v70 objectForKey:@"w_quantization_scale"];
          if (!v40 || ([v70 objectForKey:@"W_int8"], v41 = objc_claimAutoreleasedReturnValue(), v42 = v41 == 0, v41, v40, v42))
          {
            v47 = MEMORY[0x1E696ABC0];
            v106 = v59;
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in fetching weights"];
            v107 = v48;
            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
            v50 = [v47 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v49];

            v21 = 0;
            v69 = v50;
            goto LABEL_21;
          }

          v43 = [v70 objectForKey:@"w_quantization_scale"];
          [v43 floatValue];
          v45 = v44;

          v46 = [v70 objectForKey:@"W_int8"];
          StorageAccessor::EspressoStorageAccessor::GetDataView<signed char>(buf, [v46 integerValue], &v90);

          v78 = 0;
          v79 = 0;
          v77 = 0;
          std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v77, v90, v91, v91 - v90);
          quasar::QuantizationTool::SimpleDequantize(&v77, &v87, v45);
          v21 = v87;
          v88 = 0;
          v89 = 0;
          v87 = 0;
          v29 = v77;
          if (v77)
          {
            v78 = v77;
LABEL_43:
            operator delete(v29);
          }

LABEL_44:
          if (v90)
          {
            v91 = v90;
            operator delete(v90);
          }

LABEL_21:
          if (v69)
          {
            v62 = v69;
          }

          else
          {
            v30 = [(NSDictionary *)self->_tensors objectForKeyedSubscript:v13];
            v31 = [v30 dataPointer];
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v32 = [v30 shape];
            v33 = [v32 countByEnumeratingWithState:&v73 objects:v105 count:16];
            if (v33)
            {
              v34 = *v74;
              v35 = 1;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v74 != v34)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v73 + 1) + 8 * i);
                  v38 = [v37 intValue];

                  v35 *= v38;
                }

                v33 = [v32 countByEnumeratingWithState:&v73 objects:v105 count:16];
              }

              while (v33);
              v39 = 4 * v35;
            }

            else
            {
              v39 = 4;
            }

            memcpy(v31, v21, v39);
          }

          if (v21)
          {
            operator delete(v21);
          }

          objc_autoreleasePoolPop(context);
          if (v69)
          {

            goto LABEL_59;
          }

          v69 = 0;
          v12 = v67 + 1;
        }

        while (v67 + 1 != v64);
        v51 = [obj countByEnumeratingWithState:&v93 objects:v108 count:16];
        v11 = v51;
        v69 = 0;
        v52 = 0;
        if (!v51)
        {
          goto LABEL_58;
        }
      }
    }

    v52 = v69;
LABEL_58:

    v53 = [(_EARLMTGlobalNNLM *)self restoreFromLatestWeights:v55];
    v69 = v52;
    v62 = v69;
LABEL_59:
    StorageAccessor::EspressoStorageAccessor::~EspressoStorageAccessor(buf);
    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__sz.__r_.__value_.__l.__data_);
    }

    _Block_object_dispose(v101, 8);
    v2 = v55;
  }

  return v62;
}

- (id)saveWeight:(id)a3
{
  v118[19] = *MEMORY[0x1E69E9840];
  v64 = a3;
  v108[0] = 0;
  v70 = self;
  v4 = [(_EARLMTGlobalNNLM *)self getEvalTask:v108];
  v5 = v108[0];
  v69 = v4;
  if (!v4 || v5 || (v6 = v70, v70->_weightsAreUpdated) && ([(_EARLMTGlobalNNLM *)v70 restoreFromLatestWeights:v4], v5 = objc_claimAutoreleasedReturnValue(), v6 = v70, v5))
  {
    v74 = v5;
    v66 = v74;
    goto LABEL_64;
  }

  assetPath = v6->_assetPath;
  v8 = [(NSDictionary *)v6->_recipe objectForKeyedSubscript:@"weightMap"];
  v60 = [(NSString *)assetPath stringByAppendingString:v8];

  v9 = v70->_assetPath;
  v10 = [(NSDictionary *)v70->_recipe objectForKeyedSubscript:@"weightFile"];
  v63 = [(NSString *)v9 stringByAppendingString:v10];

  v11 = [v64 stringByAppendingString:@"/"];
  v12 = [(NSDictionary *)v70->_recipe objectForKeyedSubscript:@"weightSaveFile"];
  v62 = [v11 stringByAppendingString:v12];

  v107 = 0;
  v59 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v60 encoding:4 error:&v107];
  v74 = v107;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__20;
  v105 = __Block_byref_object_dispose__20;
  v106 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v58 = [v59 componentsSeparatedByCharactersInSet:v13];

  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __32___EARLMTGlobalNNLM_saveWeight___block_invoke;
  v100[3] = &unk_1E7C1A410;
  v100[4] = &v101;
  [v58 enumerateObjectsUsingBlock:v100];
  v14 = v63;
  std::string::basic_string[abi:ne200100]<0>(&v98, [v63 UTF8String]);
  v15 = v62;
  std::string::basic_string[abi:ne200100]<0>(&v97, [v62 UTF8String]);
  std::ifstream::basic_ifstream(v116);
  std::ofstream::basic_ofstream(&v113);
  std::ostream::operator<<();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v116 + *(v116[0] - 24)), *&v117[*(v116[0] - 24) + 16] | 4);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v114[*(v113 - 24) - 8], *&v114[*(v113 - 24) + 24] | 4);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v97;
  }

  StorageAccessor::EspressoStorageAccessor::EspressoStorageAccessor(v96, &v95);
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v16 = [(NSDictionary *)v70->_recipe objectForKeyedSubscript:@"trainingGlobals"];
  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v91 objects:v112 count:16];
  if (v17)
  {
    v68 = *v92;
    v61 = *MEMORY[0x1E696A578];
    while (1)
    {
      v67 = v17;
      v18 = 0;
      do
      {
        if (*v92 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v91 + 1) + 8 * v18);
        context = objc_autoreleasePoolPush();
        v72 = [v19 componentsSeparatedByString:@"/"];
        v75 = [v72 objectAtIndex:2];
        if ([v72 count] >= 4)
        {
          v20 = [v75 stringByAppendingString:@"/"];
          v21 = [v72 objectAtIndex:3];
          v22 = [v20 stringByAppendingString:v21];

          v75 = v22;
        }

        v73 = [v69 getTensorNamed:v19 directBind:1];
        v23 = [(_EARLMTGlobalNNLM *)v70 findTensorsIndicesByKeyWord:v75 tensorInfo:v102[5]];
        v24 = [v73 dataPointer];
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v87 = 0u;
        v25 = [v73 shape];
        v26 = [v25 countByEnumeratingWithState:&v87 objects:v111 count:16];
        if (v26)
        {
          v27 = *v88;
          v28 = 1;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v88 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v87 + 1) + 8 * i);
              v31 = [v30 intValue];

              v28 *= v31;
            }

            v26 = [v25 countByEnumeratingWithState:&v87 objects:v111 count:16];
          }

          while (v26);
          v32 = v28;
        }

        else
        {
          v32 = 1;
        }

        __p = 0;
        v85 = 0;
        v86 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v24, v24 + 4 * v32, v32);
        v33 = [v23 objectForKey:@"constant_blob"];
        v34 = v33 == 0;

        if (!v34)
        {
          v35 = [v23 objectForKey:@"constant_blob"];
          StorageAccessor::EspressoStorageAccessor::SetDataView<float>(v96, [v35 integerValue], &__p);

          goto LABEL_33;
        }

        v36 = [v23 objectForKey:@"Q_meta"];
        if (!v36 || ([v23 objectForKey:@"weights_u8"], v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 == 0, v37, v36, v38))
        {
          v44 = [v23 objectForKey:@"w_quantization_scale"];
          if (!v44 || ([v23 objectForKey:@"W_int8"], v45 = objc_claimAutoreleasedReturnValue(), v46 = v45 == 0, v45, v44, v46))
          {
            v51 = MEMORY[0x1E696ABC0];
            v109 = v61;
            v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exception in saving weights"];
            v110 = v52;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
            v54 = [v51 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v53];

            v74 = v54;
            goto LABEL_33;
          }

          v47 = [v23 objectForKey:@"w_quantization_scale"];
          [v47 floatValue];
          v49 = v48;

          v77 = 0;
          v78 = 0;
          v76 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v76, __p, v85, (v85 - __p) >> 2);
          quasar::QuantizationTool::SimpleQuantizeWithRatio(&v76, v82, v49);
          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

          v50 = [v23 objectForKey:@"W_int8"];
          StorageAccessor::EspressoStorageAccessor::SetDataView<signed char>(v96, [v50 integerValue], v82);
        }

        else
        {
          v39 = [v23 objectForKey:@"nB"];
          v40 = [v39 intValue];

          v41 = [v23 objectForKey:@"nC"];
          LODWORD(v39) = [v41 intValue];

          v80 = 0;
          v81 = 0;
          v79 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v79, __p, v85, (v85 - __p) >> 2);
          quasar::QuantizationTool::LinearRegionQuantize(&v79, v40, v39, [&unk_1F2D54368 intValue], v82);
          if (v79)
          {
            v80 = v79;
            operator delete(v79);
          }

          v42 = [v23 objectForKey:@"Q_meta"];
          StorageAccessor::EspressoStorageAccessor::SetDataView<float>(v96, [v42 integerValue], v82);

          v43 = [v23 objectForKey:@"weights_u8"];
          StorageAccessor::EspressoStorageAccessor::SetDataView<unsigned char>(v96, [v43 intValue], v83);

          if (v83[0])
          {
            v83[1] = v83[0];
            operator delete(v83[0]);
          }
        }

        if (v82[0])
        {
          v82[1] = v82[0];
          operator delete(v82[0]);
        }

LABEL_33:
        if (v74)
        {
          v66 = v74;
        }

        if (__p)
        {
          v85 = __p;
          operator delete(__p);
        }

        objc_autoreleasePoolPop(context);
        if (v74)
        {

          goto LABEL_59;
        }

        v74 = 0;
        ++v18;
      }

      while (v18 != v67);
      v16 = obj;
      v55 = [obj countByEnumeratingWithState:&v91 objects:v112 count:16];
      v17 = v55;
      v74 = 0;
      v56 = 0;
      if (!v55)
      {
        goto LABEL_58;
      }
    }
  }

  v56 = v74;
LABEL_58:

  v74 = v56;
  v66 = v74;
LABEL_59:
  StorageAccessor::EspressoStorageAccessor::~EspressoStorageAccessor(v96);
  v113 = *MEMORY[0x1E69E54D0];
  *&v114[*(v113 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](v114);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v115);
  v116[0] = *MEMORY[0x1E69E54C8];
  *(v116 + *(v116[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v117);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v118);
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  _Block_object_dispose(&v101, 8);
LABEL_64:

  return v66;
}

- (id)setup
{
  v124[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"kaldiVocab"];

  if (!v3)
  {
    v17 = MEMORY[0x1E696ABC0];
    v123 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No vocab filename specified in recipe."];
    v124[0] = v12;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:&v123 count:1];
    v16 = [v17 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v9];
    goto LABEL_11;
  }

  v4 = objc_opt_class();
  attachments = self->_attachments;
  assetPath = self->_assetPath;
  v7 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"kaldiVocab"];
  v8 = [(NSString *)assetPath stringByAppendingString:v7];
  v9 = [v4 attachmentURL:attachments withName:v8];

  if (!v9)
  {
    v18 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v19 = MEMORY[0x1E696AEC0];
    v15 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"kaldiVocab"];
    v20 = [v19 stringWithFormat:@"No vocab file attached: %@", v15];
    v122 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v16 = [v18 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v21];

    goto LABEL_9;
  }

  v10 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v120 = v9;
    _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_INFO, "Attached vocabulary URL: %@", buf, 0xCu);
  }

  v104[0] = 0;
  v11 = [[_EARLMTKaldiVocab alloc] initWithContentsOfUrl:v9 outError:v104];
  v12 = v104[0];
  vocab = self->_vocab;
  self->_vocab = v11;

  if (!v12)
  {
    v23 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_INFO, "Vocabulary loaded", buf, 2u);
    }

    partialUpdateOffsets = self->_partialUpdateOffsets;
    self->_partialUpdateOffsets = 0;

    v25 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"partialUpdateOffsetFile"];
    v26 = v25 == 0;

    if (v26)
    {
      goto LABEL_24;
    }

    v27 = objc_opt_class();
    v28 = self->_attachments;
    v29 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"partialUpdateOffsetFile"];
    v30 = [v27 attachmentURL:v28 withName:v29];

    if (v30)
    {
      v103 = 0;
      v31 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v30 options:1 error:&v103];
      v32 = v103;
      if (v32)
      {
        v12 = v32;
        v33 = MEMORY[0x1E696ABC0];
        v113 = *MEMORY[0x1E696A578];
        v114 = @"Unable to load partial update offsets";
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v16 = [v33 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v34];

LABEL_43:
        v15 = v30;
        goto LABEL_10;
      }

      v102 = 0;
      v36 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v31 options:1 error:&v102];
      v12 = v102;
      if (v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v83 = MEMORY[0x1E696ABC0];
        v111 = *MEMORY[0x1E696A578];
        v112 = @"Unable to load _recipe[kRecipePartialUpdateOffsetFile] as json";
        v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v16 = [v83 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:153 userInfo:v84];

        goto LABEL_43;
      }

      v37 = self->_partialUpdateOffsets;
      self->_partialUpdateOffsets = v36;

      self->_deltaIsPartial = 1;
LABEL_24:
      v110[0] = @"inferenceContextSize";
      v110[1] = @"trainingContextKey";
      v110[2] = @"trainingTargetKey";
      v110[3] = @"sequenceLength";
      v110[4] = @"numNoise";
      v110[5] = @"batchSize";
      v110[6] = @"trainingMaskKey";
      v110[7] = @"trainingNoiseKey";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:8];
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v15 = v99 = 0u;
      v38 = [v15 countByEnumeratingWithState:&v98 objects:v109 count:16];
      if (v38)
      {
        v39 = *v99;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v99 != v39)
            {
              objc_enumerationMutation(v15);
            }

            v41 = *(*(&v98 + 1) + 8 * i);
            v42 = [(NSDictionary *)self->_recipe valueForKey:v41];
            v43 = v42 == 0;

            if (v43)
            {
              v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read recipe[%@]", v41];
              v81 = MEMORY[0x1E696ABC0];
              v107 = *MEMORY[0x1E696A578];
              v108 = v80;
              v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
              v16 = [v81 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v82];

              goto LABEL_9;
            }
          }

          v38 = [v15 countByEnumeratingWithState:&v98 objects:v109 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v44 = [TextProcessorInference alloc];
      v45 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceContextSize"];
      v46 = -[TextProcessorInference initWithLength:vocab:BOS:](v44, "initWithLength:vocab:BOS:", [v45 integerValue], self->_vocab, -[_EARLMTKaldiVocab beginOfSentenceIndex](self->_vocab, "beginOfSentenceIndex"));
      textProcessorInference = self->_textProcessorInference;
      self->_textProcessorInference = v46;

      v48 = [DataSourceInference alloc];
      v49 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceContextSize"];
      v50 = [v49 integerValue];
      v51 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingContextKey"];
      v52 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingTargetKey"];
      v53 = [(DataSourceInference *)v48 initWithLength:v50 contextKey:v51 targetKey:v52];
      fofeInferenceSource = self->_fofeInferenceSource;
      self->_fofeInferenceSource = v53;

      v55 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"sequenceLength"];
      LODWORD(v49) = [v55 intValue];

      v56 = [[TextProcessorTrain alloc] initWithVocab:self->_vocab];
      textProcessorTrain = self->_textProcessorTrain;
      self->_textProcessorTrain = v56;

      v58 = v49;
      trainData = self->_trainData;
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __26___EARLMTGlobalNNLM_setup__block_invoke;
      v97[3] = &unk_1E7C1C510;
      v97[4] = self;
      v97[5] = v49;
      [(NSMutableArray *)trainData enumerateObjectsUsingBlock:v97];
      v60 = [DataSourceTrain alloc];
      v61 = [(TextProcessorTrain *)self->_textProcessorTrain numberSamples];
      [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"numNoise"];
      v93 = v92 = v61;
      LODWORD(v61) = [v93 intValue];
      v91 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"batchSize"];
      v62 = [v91 intValue];
      v63 = [(_EARLMTKaldiVocab *)self->_vocab vocabSize];
      v95 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingContextKey"];
      v94 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingTargetKey"];
      v64 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingMaskKey"];
      v65 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingNoiseKey"];
      v66 = [(DataSourceTrain *)v60 initWithNumDataPoints:v92 sequenceLength:v58 noiseSize:v61 batchSize:v62 vocabSize:v63 contextKey:v95 targetKey:v94 maskKey:v64 noiseKey:v65];
      fofeTrainSource = self->_fofeTrainSource;
      self->_fofeTrainSource = v66;

      v68 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B501D000, v68, OS_LOG_TYPE_INFO, "Data feeder loaded", buf, 2u);
      }

      v96 = 0;
      v69 = [(_EARLMTGlobalNNLM *)self getEvalTask:&v96];
      v70 = v96;
      v12 = v70;
      if (!v69 || v70)
      {
        v16 = v70;
      }

      else
      {
        v71 = [(_EARLMTGlobalNNLM *)self _fetchTensorInfo:v69];
        v72 = [v71 objectForKeyedSubscript:@"tensorInfo"];
        tensorInfo = self->_tensorInfo;
        self->_tensorInfo = v72;

        v74 = [v71 objectForKeyedSubscript:@"totalSize"];
        self->_numParam = [v74 intValue];

        if (!_parseRecipeBoolField(self->_recipe, @"enableMemoryMap", 0))
        {
          operator new[]();
        }

        v75 = [[SimpleMmapBuffer alloc] initWithData:0 ofSize:4 * self->_numParam];
        mmappedWeights = self->_mmappedWeights;
        self->_mmappedWeights = v75;

        v77 = self->_mmappedWeights;
        if (v77)
        {
          ptr = self->_weights.__ptr_;
          self->_weights.__ptr_ = 0;
          if (ptr)
          {
            MEMORY[0x1B8C85310](ptr, 0x1000C8052888210);
            v77 = self->_mmappedWeights;
          }

          v79 = [(SimpleMmapBuffer *)v77 dataPointer];
          self->_weightsRawPtr = v79;
          v85 = _fetchTensors(self->_tensorInfo, v69, v79);
          tensors = self->_tensors;
          self->_tensors = v85;

          v87 = sLog;
          if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B501D000, v87, OS_LOG_TYPE_INFO, "Initial weights and tensor shapes have been read from evaluation graph", buf, 2u);
          }

          v16 = 0;
        }

        else
        {
          v89 = MEMORY[0x1E696ABC0];
          v105 = *MEMORY[0x1E696A578];
          v106 = @"Unable to memory map the buffer";
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          v16 = [v89 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v90];
        }
      }

      goto LABEL_10;
    }

    v35 = MEMORY[0x1E696ABC0];
    v115 = *MEMORY[0x1E696A578];
    v116 = @"recipe[kRecipePartialUpdateOffsetFile] is configured but not resolved";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v16 = [v35 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v15];
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v14 = MEMORY[0x1E696ABC0];
  v117 = *MEMORY[0x1E696AA08];
  v118 = v12;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  v16 = [v14 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v15];
LABEL_10:

LABEL_11:

  return v16;
}

- (id)getEvalTask:(id *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v42[0] = @"inferenceInputs";
  v42[1] = @"inferenceOutputs";
  v42[2] = @"inferenceGraph";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v6)
  {
    v7 = *v33;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_recipe valueForKey:v9];
        v11 = v10 == 0;

        if (v11)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read recipe[%@]", v9];
          v22 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E696A578];
          v41 = v12;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          [v22 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v15];
          *a3 = v21 = 0;
          goto LABEL_19;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceInputs"];
  v12 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceOutputs"];
  assetPath = self->_assetPath;
  v14 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceGraph"];
  v15 = [(NSString *)assetPath stringByAppendingString:v14];

  v29 = [objc_opt_class() attachmentURL:self->_attachments withName:v15];
  v16 = objc_alloc(MEMORY[0x1E699BBE8]);
  v17 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"checkpointName"];
  v31 = 0;
  v18 = [v16 initWithTrainingNetworkPath:v29 inferenceInputs:v5 inferenceOutputs:v12 trainingInputs:v5 trainingOutputs:v12 trainingControlVariableName:@"is_training" withInitializer:v17 error:&v31];
  v19 = v31;

  if (v19 || !v18)
  {
    v23 = MEMORY[0x1E696ABC0];
    v38[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create ETModelDefinition (evaluation)"];
    v38[1] = *MEMORY[0x1E696AA08];
    v39[0] = v20;
    v39[1] = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    *a3 = [v23 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v24];

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v30 = 0;
  v20 = [objc_alloc(MEMORY[0x1E699BC00]) initWithTrainingModelDefinition:v18 forPlatform:1 error:&v30];
  v19 = v30;
  if (v19 || !v20)
  {
    v25 = MEMORY[0x1E696ABC0];
    v36[0] = *MEMORY[0x1E696A578];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create ETTaskDefinition (evaluation)"];
    v36[1] = *MEMORY[0x1E696AA08];
    v37[0] = v26;
    v37[1] = v19;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    *a3 = [v25 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v27];

    goto LABEL_17;
  }

  v20 = v20;
  v21 = v20;
LABEL_18:

LABEL_19:

  return v21;
}

- (id)findTensorsIndicesByKeyWord:(id)a3 tensorInfo:(id)a4
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20;
  v16 = __Block_byref_object_dispose__20;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___EARLMTGlobalNNLM_findTensorsIndicesByKeyWord_tensorInfo___block_invoke;
  v9[3] = &unk_1E7C1C538;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  [a4 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getTrainTask:(id *)a3
{
  v63[7] = *MEMORY[0x1E69E9840];
  v63[0] = @"trainingGraph";
  v63[1] = @"inferenceInputs";
  v63[2] = @"inferenceOutputs";
  v63[3] = @"trainingInputs";
  v63[4] = @"trainingOutputs";
  v63[5] = @"trainingGlobals";
  v63[6] = @"numberOfEpochs";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:7];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v5 = v49 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v6)
  {
    v7 = *v49;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_recipe objectForKey:v9];
        v11 = v10 == 0;

        if (v11)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read recipe[%@]", v9];
          v29 = MEMORY[0x1E696ABC0];
          v60 = *MEMORY[0x1E696A578];
          v61 = v15;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          *a3 = [v29 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:v30];

          v28 = 0;
          v14 = v5;
          goto LABEL_28;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  assetPath = self->_assetPath;
  v13 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGraph"];
  v14 = [(NSString *)assetPath stringByAppendingString:v13];

  v9 = [objc_opt_class() attachmentURL:self->_attachments withName:v14];
  if (!v9)
  {
    v31 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A578];
    v59 = @"training model is not attached";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    [v31 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:v15];
    *a3 = v28 = 0;
    goto LABEL_28;
  }

  v15 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingOutputs"];
  v43 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingInputs"];
  v16 = objc_alloc(MEMORY[0x1E699BBE8]);
  v17 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceInputs"];
  v18 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"inferenceOutputs"];
  v19 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"checkpointName"];
  v47 = 0;
  v44 = [v16 initWithTrainingNetworkPath:v9 inferenceInputs:v17 inferenceOutputs:v18 trainingInputs:v43 trainingOutputs:v15 trainingControlVariableName:@"is_training" withInitializer:v19 error:&v47];
  v20 = v47;

  if (v20 || !v44)
  {
    v32 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696AA08];
    v56[0] = *MEMORY[0x1E696A578];
    v56[1] = v33;
    v57[0] = @"Unable to create ETModelDefinition (train)";
    v57[1] = v20;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v35 = v32;
    v26 = v34;
    [v35 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:?];
    *a3 = v28 = 0;
  }

  else
  {
    v46 = 0;
    v42 = [objc_alloc(MEMORY[0x1E699BC00]) initWithTrainingModelDefinition:v44 forPlatform:1 error:&v46];
    v20 = v46;
    if (v20 || !v42)
    {
      v36 = MEMORY[0x1E696ABC0];
      v54[0] = *MEMORY[0x1E696A578];
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create ETTaskDefinition (training)"];
      v54[1] = *MEMORY[0x1E696AA08];
      v55[0] = v37;
      v55[1] = v20;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
      *a3 = [v36 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:v38];
    }

    else
    {
      v21 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_INFO, "Training model loaded", buf, 2u);
      }

      numParam = self->_numParam;
      v23 = [(_EARLMTGlobalNNLM *)self _fetchTensorInfo:v42];
      v24 = [v23 objectForKeyedSubscript:@"totalSize"];
      LOBYTE(numParam) = numParam == [v24 unsignedLongValue];

      if (numParam)
      {
        v25 = [(_EARLMTGlobalNNLM *)self restoreFromLatestWeights:v42];
        *a3 = v25;
        v26 = v42;
        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v42;
        }

        v28 = v27;
        goto LABEL_27;
      }

      v39 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A578];
      v53 = @"Unexpected number of parameters changed (training, this[%lu] vs previous[%lu])";
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *a3 = [v39 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:v40];
    }

    v28 = 0;
    v26 = v42;
  }

LABEL_27:

LABEL_28:

  return v28;
}

- (id)restoreFromLatestWeights:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals", 0];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      v10 = [v4 getTensorNamed:v9 directBind:1];
      v11 = [(NSDictionary *)self->_tensors objectForKeyedSubscript:v9];
      v12 = _copy(v11, v10);

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (id)evaluate
{
  v97 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v87[0] = 0;
  v3 = [(_EARLMTGlobalNNLM *)self getEvalTask:v87];
  v4 = v87[0];
  if (!v3 || v4)
  {
    goto LABEL_7;
  }

  v5 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Evaluation model loaded", buf, 2u);
  }

  if (self->_weightsAreUpdated)
  {
    v4 = [(_EARLMTGlobalNNLM *)self restoreFromLatestWeights:v3];
    if (v4)
    {
LABEL_7:
      v71 = v4;
      v65 = v71;
      goto LABEL_59;
    }
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = self->_evalData;
  v68 = v3;
  v72 = self;
  v55 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v55)
  {
    v60 = 0;
    v6 = 0;
    v56 = *v84;
    v63 = *MEMORY[0x1E696A578];
    v62 = *MEMORY[0x1E696AA08];
    v7 = 0.0;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        v71 = v6;
        if (*v84 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v59 = [*(*(&v83 + 1) + 8 * i) mutableCopy];
        [(TextProcessorInference *)self->_textProcessorInference resetWithBOS:[(_EARLMTKaldiVocab *)self->_vocab beginOfSentenceIndex]];
        v8 = [(_EARLMTKaldiVocab *)self->_vocab endOfSentenceToken];
        [v59 addObject:v8];

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v64 = v59;
        v9 = [v64 countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (v9)
        {
          v67 = *v80;
          while (2)
          {
            v10 = 0;
            v66 = v9;
            v60 += v9;
            do
            {
              if (*v80 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v70 = *(*(&v79 + 1) + 8 * v10);
              [(TextProcessorInference *)v72->_textProcessorInference addText:?];
              [(DataSourceInference *)v72->_fofeInferenceSource setVectorsWithProcessor:v72->_textProcessorInference];
              v11 = objc_autoreleasePoolPush();
              fofeInferenceSource = v72->_fofeInferenceSource;
              v78 = v71;
              v13 = [v68 doInferenceOnData:fofeInferenceSource error:&v78];
              v14 = v78;

              if (v13)
              {
                v15 = v14 == 0;
              }

              else
              {
                v15 = 0;
              }

              v16 = v15;
              v69 = v16;
              if (v15)
              {
                v77 = 0;
                v17 = [v13 dataPointAtIndex:0 error:&v77];
                v71 = v77;
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v76 = 0u;
                v26 = v17;
                v18 = [v26 countByEnumeratingWithState:&v73 objects:v92 count:16];
                if (v18)
                {
                  v19 = *v74;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v74 != v19)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v21 = *(*(&v73 + 1) + 8 * j);
                      v22 = [v26 objectForKeyedSubscript:v21];
                      v23 = [v22 dataPointer];

                      v24 = *v23;
                      v7 = v7 + v24;
                    }

                    v18 = [v26 countByEnumeratingWithState:&v73 objects:v92 count:16];
                  }

                  while (v18);
                }
              }

              else
              {
                v25 = MEMORY[0x1E696ABC0];
                v93[0] = v63;
                v93[1] = v62;
                v94[0] = @"Call to doInferenceOnData during evaluation failed.";
                v94[1] = v14;
                v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
                v65 = [v25 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v26];
                v71 = v14;
              }

              objc_autoreleasePoolPop(v11);
              if (!v69)
              {

                goto LABEL_58;
              }

              ++v10;
            }

            while (v10 != v66);
            v9 = [v64 countByEnumeratingWithState:&v79 objects:v95 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v6 = v71;
        self = v72;
      }

      v55 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v55);
  }

  else
  {
    v60 = 0;
    v6 = 0;
    v7 = 0.0;
  }

  v71 = v6;

  v27 = [(NSMutableDictionary *)v72->_results objectForKeyedSubscript:@"NumWordsInEvaluation"];
  v28 = v27;
  if (!v27)
  {
    v27 = &unk_1F2D54380;
  }

  v29 = [v27 intValue];

  if (v29 >= 1 && v29 != v60 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [_EARLMTGlobalNNLM evaluate];
  }

  if (v72->_weightsAreUpdated)
  {
    if (v72->_mmappedPartialWeights)
    {
      *&v30 = v7;
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
      [(NSMutableDictionary *)v72->_results setObject:v31 forKeyedSubscript:@"TotalEvalCostWithPartialUpdate"];

      v32 = v7 / v60;
      v33 = expf(v32);
      *&v34 = v32;
      v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      [(NSMutableDictionary *)v72->_results setObject:v35 forKeyedSubscript:@"EvaluationCostWithPartialUpdate"];

      *&v36 = v33;
      v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
      [(NSMutableDictionary *)v72->_results setObject:v37 forKeyedSubscript:@"EvaluationPPLWithPartialUpdate"];

      v38 = sLog;
      if (!os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 134218240;
      v89 = v32;
      v90 = 2048;
      v91 = v33;
      v39 = "evaluation cost/PPL with partial update: %.2f/%.2f";
    }

    else
    {
      *&v30 = v7;
      v47 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
      [(NSMutableDictionary *)v72->_results setObject:v47 forKeyedSubscript:@"TotalEvalCostAfterTraining"];

      v48 = v7 / v60;
      v49 = expf(v48);
      *&v50 = v48;
      v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
      [(NSMutableDictionary *)v72->_results setObject:v51 forKeyedSubscript:@"EvaluationCostAfterTraining"];

      *&v52 = v49;
      v53 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
      [(NSMutableDictionary *)v72->_results setObject:v53 forKeyedSubscript:@"EvaluationPPLAfterTraining"];

      v38 = sLog;
      if (!os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 134218240;
      v89 = v48;
      v90 = 2048;
      v91 = v49;
      v39 = "evaluation cost/PPL after training: %.2f/%.2f";
    }
  }

  else
  {
    *&v30 = v7;
    v40 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
    [(NSMutableDictionary *)v72->_results setObject:v40 forKeyedSubscript:@"TotalEvalCostBeforeTraining"];

    v41 = v7 / v60;
    v42 = expf(v41);
    *&v43 = v41;
    v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
    [(NSMutableDictionary *)v72->_results setObject:v44 forKeyedSubscript:@"EvaluationCostBeforeTraining"];

    *&v45 = v42;
    v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
    [(NSMutableDictionary *)v72->_results setObject:v46 forKeyedSubscript:@"EvaluationPPLBeforeTraining"];

    v38 = sLog;
    if (!os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      goto LABEL_57;
    }

    *buf = 134218240;
    v89 = v41;
    v90 = 2048;
    v91 = v42;
    v39 = "evaluation cost/PPL before training: %.2f/%.2f";
  }

  _os_log_impl(&dword_1B501D000, v38, OS_LOG_TYPE_INFO, v39, buf, 0x16u);
LABEL_57:
  v65 = 0;
LABEL_58:
  v3 = v68;
LABEL_59:

  objc_autoreleasePoolPop(context);

  return v65;
}

- (id)train
{
  v107 = *MEMORY[0x1E69E9840];
  v57 = [MEMORY[0x1E695DF70] array];
  v3 = objc_autoreleasePoolPush();
  v94[0] = 0;
  v4 = [(_EARLMTGlobalNNLM *)self getTrainTask:v94];
  v5 = v94[0];
  context = v3;
  if (!v4 || v5)
  {
    v20 = v5;
    v21 = 0;
    fofeTrainSource = v20;
    goto LABEL_34;
  }

  v56 = v4;
  v53 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingOutputs"];
  v6 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateName"];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateName"];
    v9 = [v4 getTensorNamed:v8];

    v10 = [v9 dataPointer];
    v11 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v12 = *v10;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_INFO, "The learning rate embedded in the training graph is %f", &buf, 0xCu);
    }

    v13 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateValue"];
    v14 = v13 == 0;

    if (!v14)
    {
      v15 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateValue"];
      [v15 floatValue];
      *v10 = v16;

      v17 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"learningRateName"];
      v93 = 0;
      [v56 setTensorNamed:v17 withValue:v9 error:&v93];
      v18 = v93;

      v19 = sLog;
      if (v18)
      {
        if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
        {
          [_EARLMTGlobalNNLM train];
        }
      }

      else if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        v23 = *v10;
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_INFO, "Override learning rate with value %f", &buf, 0xCu);
      }
    }
  }

  v24 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"batchPerUpdate"];
  v25 = [v24 unsignedIntValue];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__20;
  v105 = __Block_byref_object_dispose__20;
  v106 = objc_opt_new();
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__20;
  v91 = __Block_byref_object_dispose__20;
  v26 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"sparseGlobals"];
  v27 = v26;
  v28 = MEMORY[0x1E695E0F0];
  if (v26)
  {
    v28 = v26;
  }

  v92 = v28;

  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v86 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v29 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"l2ClipNorm"];
  [v29 floatValue];
  if (v30 == 0.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v30;
  }

  v84 = v31;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v32 = v82[6];
  v80 = v32 > 0.0;
  v33 = sLog;
  v34 = os_log_type_enabled(sLog, OS_LOG_TYPE_INFO);
  if (v32 <= 0.0)
  {
    if (!v34)
    {
      goto LABEL_26;
    }

    LOWORD(v99) = 0;
    v36 = "Gradients are not clipped";
    v37 = v33;
    v38 = 2;
  }

  else
  {
    if (!v34)
    {
      goto LABEL_26;
    }

    v35 = v82[6];
    LODWORD(v99) = 134217984;
    *(&v99 + 4) = v35;
    v36 = "Gradients are clipped by global L2Norm of %f";
    v37 = v33;
    v38 = 12;
  }

  _os_log_impl(&dword_1B501D000, v37, OS_LOG_TYPE_INFO, v36, &v99, v38);
LABEL_26:
  *&v99 = 0;
  *(&v99 + 1) = &v99;
  v100 = 0x2020000000;
  v101 = v25 > 0;
  if (v25 >= 1)
  {
    v39 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v40 = v88[5];
      *v97 = 138412290;
      v98 = v40;
      _os_log_impl(&dword_1B501D000, v39, OS_LOG_TYPE_INFO, "Gradient of %@ are accumulated in a sparse fashion", v97, 0xCu);
    }
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __26___EARLMTGlobalNNLM_train__block_invoke;
  v69[3] = &unk_1E7C1C560;
  v41 = v53;
  v70 = v41;
  v71 = v57;
  v72 = self;
  v74 = v85;
  p_buf = &buf;
  v76 = v79;
  v77 = &v81;
  v78 = &v99;
  v42 = v56;
  v73 = v42;
  v54 = MEMORY[0x1B8C868A0](v69);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __26___EARLMTGlobalNNLM_train__block_invoke_307;
  v59[3] = &unk_1E7C1C588;
  v43 = v41;
  v60 = v43;
  v61 = self;
  v62 = v85;
  v63 = &buf;
  v68 = v25;
  v64 = &v87;
  v65 = v79;
  v66 = &v81;
  v67 = &v99;
  v44 = MEMORY[0x1B8C868A0](v59);
  v45 = objc_opt_new();
  v46 = MEMORY[0x1B8C868A0](v54);
  [v45 setObject:v46 forKeyedSubscript:*MEMORY[0x1E699BBB8]];

  if (*(*(&v99 + 1) + 24) == 1)
  {
    v47 = MEMORY[0x1B8C868A0](v44);
    [v45 setObject:v47 forKeyedSubscript:*MEMORY[0x1E699BBA8]];
  }

  [(TextProcessorTrain *)self->_textProcessorTrain shuffleSamples];
  [(DataSourceTrain *)self->_fofeTrainSource setVectorsWithProcessor:self->_textProcessorTrain];
  fofeTrainSource = self->_fofeTrainSource;
  v48 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"numberOfEpochs"];
  v58 = 0;
  v21 = [v42 doTrainingOnData:fofeTrainSource forNumberOfEpochs:objc_msgSend(v48 withCallback:"intValue") error:{v45, &v58}];
  v20 = v58;

  if ((v21 & 1) == 0)
  {
    v49 = MEMORY[0x1E696ABC0];
    v95[0] = *MEMORY[0x1E696A578];
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Training failed with error."];
    v95[1] = *MEMORY[0x1E696AA08];
    v96[0] = v50;
    v96[1] = v20;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    fofeTrainSource = [v49 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:152 userInfo:v51];
  }

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(v79, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(&v87, 8);

  _Block_object_dispose(&buf, 8);
  v4 = v56;
LABEL_34:

  objc_autoreleasePoolPop(context);
  if (v21)
  {
    [(NSMutableDictionary *)self->_results setObject:v57 forKeyedSubscript:@"TrainingCostOfEachBatch"];
    fofeTrainSource = 0;
    self->_weightsAreUpdated = 1;
  }

  return fofeTrainSource;
}

- (id)evaluatePartialDelta
{
  v55 = *MEMORY[0x1E69E9840];
  v49[0] = 0;
  v3 = [(_EARLMTGlobalNNLM *)self getEvalTask:v49];
  v4 = v49[0];
  v43 = v3;
  if (v3 && !v4)
  {
    v5 = _fetchTensors(self->_tensorInfo, v3, self->_weightsRawPtr);
    tensors = self->_tensors;
    self->_tensors = v5;

    v44 = [(SimpleMmapBuffer *)self->_mmappedPartialWeights dataPointer];
    v7 = [(SimpleMmapBuffer *)self->_mmappedPartialWeights size];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
    v8 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    v9 = 0;
    if (v8)
    {
      v10 = v7 >> 2;
      v11 = *v46;
      v39 = *v46;
      do
      {
        v12 = 0;
        v40 = v8;
        while (2)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = 0;
          v41 = v12;
          v14 = *(*(&v45 + 1) + 8 * v12);
          while (1)
          {
            v15 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v14];
            v16 = v13 < [v15 count];

            if (!v16)
            {
              break;
            }

            v17 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v14];
            v18 = [v17 objectAtIndexedSubscript:v13];
            v19 = [v18 objectForKeyedSubscript:@"start"];
            v20 = [v19 unsignedIntegerValue];

            v21 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v14];
            v22 = [v21 objectAtIndexedSubscript:v13];
            v23 = [v22 objectForKeyedSubscript:@"end"];
            v24 = [v23 unsignedIntegerValue];

            v25 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v14];
            v26 = [v25 objectForKeyedSubscript:@"size"];
            v27 = [v26 unsignedIntValue];

            v28 = [(NSDictionary *)self->_tensors objectForKeyedSubscript:v14];
            v29 = [v28 dataPointer];

            if (v20 < v24)
            {
              while (1)
              {
                if (v20 > v27)
                {
                  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setting %@[%lu] while size(%@) == %lu", v14, v20, v14, v27];
                  v34 = MEMORY[0x1E696ABC0];
                  v52 = *MEMORY[0x1E696A578];
                  v53 = v33;
                  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
                  v36 = [v34 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v35];
                  goto LABEL_25;
                }

                if (v9 > v10)
                {
                  break;
                }

                v30 = v9 + 1;
                *(v29 + 4 * v20) = v44[v9] + *(v29 + 4 * v20);
                ++v20;
                ++v9;
                if (v24 == v20)
                {
                  goto LABEL_16;
                }
              }

              v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"accessing partiaDelta[%lu] while size(partiaDelta) == %lu", v9, v10];
              v37 = MEMORY[0x1E696ABC0];
              v50 = *MEMORY[0x1E696A578];
              v51 = v33;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
              v36 = [v37 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:154 userInfo:v35];
LABEL_25:
              v32 = v36;

              v31 = 0;
              goto LABEL_26;
            }

            v30 = v9;
LABEL_16:
            ++v13;
            v9 = v30;
          }

          v12 = v41 + 1;
          v11 = v39;
          if (v41 + 1 != v40)
          {
            continue;
          }

          break;
        }

        v8 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v8);
    }

    if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
    {
      [_EARLMTGlobalNNLM evaluatePartialDelta];
    }

    v4 = [(_EARLMTGlobalNNLM *)self evaluate];
  }

  v31 = v4;
  v32 = v31;
LABEL_26:

  return v32;
}

- (id)computeDelta:(BOOL)a3
{
  v3 = a3;
  v172 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v146 = 0;
  v6 = [(_EARLMTGlobalNNLM *)self getEvalTask:&v146];
  context = v5;
  v129 = v3;
  v7 = v146;
  v130 = v7;
  v132 = v6;
  if (!v6 || v7)
  {
    *&v10 = COERCE_DOUBLE(v7);
    v36 = 0;
  }

  else
  {
    v8 = self->_tensorInfo;
    v9 = v6;
    *&v10 = COERCE_DOUBLE(objc_opt_new());
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v11 = v8;
    v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v147 objects:buf count:16];
    if (v12)
    {
      v13 = *v148;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v148 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v147 + 1) + 8 * i);
          v16 = [v9 getTensorNamed:v15 directBind:1];
          [(__CFString *)v10 setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v147 objects:buf count:16];
      }

      while (v12);
    }

    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    obj = v10;
    v17 = [(__CFString *)obj countByEnumeratingWithState:&v142 objects:v169 count:16];
    if (v17)
    {
      v125 = *v143;
      *&v10 = COERCE_DOUBLE(@"size");
      do
      {
        v18 = 0;
        v123 = v17;
        do
        {
          if (*v143 != v125)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v142 + 1) + 8 * v18);
          v20 = [(__CFString *)obj objectForKeyedSubscript:v19];
          v127 = v18;
          v21 = [v20 dataPointer];

          v22 = 0;
          while (1)
          {
            v23 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v19];
            v24 = [v23 objectForKeyedSubscript:@"size"];
            v25 = v22 < [v24 intValue];

            if (!v25)
            {
              break;
            }

            v26 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v19];
            v27 = [v26 objectForKeyedSubscript:@"offset"];
            v28 = [v27 intValue];

            weightsRawPtr = self->_weightsRawPtr;
            v30 = weightsRawPtr[(v22 + v28)] - *(v21 + 4 * v22);
            weightsRawPtr[(v22++ + v28)] = v30;
            if ((LODWORD(v30) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"delta[%d] is not finite", v22 + v28 - 1];
              v38 = MEMORY[0x1E696ABC0];
              v167 = *MEMORY[0x1E696A578];
              v168 = v37;
              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
              [v38 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:156 userInfo:v39];
              *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

              goto LABEL_26;
            }
          }

          v18 = v127 + 1;
        }

        while (v127 + 1 != v123);
        v17 = [(__CFString *)obj countByEnumeratingWithState:&v142 objects:v169 count:16];
      }

      while (v17);
    }

    numParam = self->_numParam;
    if (numParam)
    {
      v32 = self->_weightsRawPtr;
      v33 = 4 * numParam;
      v34 = 0.0;
      do
      {
        v35 = *v32++;
        v34 = v34 + (v35 * v35);
        v33 -= 4;
      }

      while (v33);
    }

    else
    {
      v34 = 0.0;
    }

    v40 = sqrt(v34);
    v41 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v171 = v40;
      _os_log_impl(&dword_1B501D000, v41, OS_LOG_TYPE_INFO, "l2-norm of the delta is %f", buf, 0xCu);
    }

    *&v42 = v40;
    v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
    [(NSMutableDictionary *)self->_results setObject:v43 forKeyedSubscript:@"DeltaL2Norm"];

    if (!self->_deltaIsPartial)
    {
      goto LABEL_103;
    }

    self->_numParam = 0;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v44 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"trainingGlobals"];
    v45 = [v44 countByEnumeratingWithState:&v138 objects:v166 count:16];
    if (v45)
    {
      v46 = *v139;
      v128 = v44;
      v122 = *v139;
      do
      {
        v47 = 0;
        v124 = v45;
        while (2)
        {
          if (*v139 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v126 = v47;
          v10 = *(*(&v138 + 1) + 8 * v47);
          v48 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v10];
          v49 = [v48 objectForKeyedSubscript:@"offset"];
          v50 = [v49 intValue];

          v51 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
          LOBYTE(v49) = v51 == 0;

          if (v49)
          {
            v164[0] = &unk_1F2D54380;
            v163[0] = @"start";
            v163[1] = @"end";
            v52 = [(NSDictionary *)self->_tensorInfo objectForKeyedSubscript:v10];
            v53 = [v52 objectForKeyedSubscript:@"size"];
            v163[2] = @"scale";
            v164[1] = v53;
            v164[2] = &unk_1F2D54480;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:v163 count:3];
            v165 = v54;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v165 count:1];
            [(NSMutableDictionary *)self->_partialUpdateOffsets setObject:v55 forKeyedSubscript:v10];

            v56 = sLog;
            if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v171 = *&v10;
              _os_log_debug_impl(&dword_1B501D000, v56, OS_LOG_TYPE_DEBUG, "%@ applies full update", buf, 0xCu);
            }
          }

          for (j = 0; ; ++j)
          {
            v58 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v59 = j < [v58 count];

            if (!v59)
            {
              break;
            }

            v60 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v61 = [v60 objectAtIndexedSubscript:j];
            v62 = [v61 objectForKeyedSubscript:@"start"];
            v63 = [v62 unsignedIntValue];

            v64 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v65 = [v64 objectAtIndexedSubscript:j];
            v66 = [v65 objectForKeyedSubscript:@"end"];
            LODWORD(v61) = [v66 unsignedIntValue];

            v67 = [(NSMutableDictionary *)self->_partialUpdateOffsets objectForKeyedSubscript:v10];
            v68 = [v67 objectAtIndexedSubscript:j];
            v69 = [v68 objectForKeyedSubscript:@"scale"];
            [v69 floatValue];
            v71 = v70;

            v72 = (v63 + v50);
            v73 = (v61 + v50);
            if (v72 < v73)
            {
              v74 = self->_numParam;
              while (v72 >= v74)
              {
                v75 = self->_weightsRawPtr;
                v76 = v71 * v75[v72];
                self->_numParam = v74 + 1;
                v75[v74] = v76;
                ++v72;
                ++v74;
                if (v73 == v72)
                {
                  goto LABEL_45;
                }
              }

              v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shifting delta[%lu] to delta[%lu] may overwrite chosen gradient", v72, v74];
              v83 = MEMORY[0x1E696ABC0];
              v161 = *MEMORY[0x1E696A578];
              v162 = v82;
              v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
              [v83 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:156 userInfo:v84];
              *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

              goto LABEL_26;
            }

LABEL_45:
            ;
          }

          v47 = v126 + 1;
          v44 = v128;
          v46 = v122;
          if (v126 + 1 != v124)
          {
            continue;
          }

          break;
        }

        v45 = [v128 countByEnumeratingWithState:&v138 objects:v166 count:16];
      }

      while (v45);
    }

    v77 = self->_numParam;
    if (v77)
    {
      v78 = self->_weightsRawPtr;
      v79 = 4 * v77;
      v80 = 0.0;
      do
      {
        v81 = *v78++;
        v80 = v80 + (v81 * v81);
        v79 -= 4;
      }

      while (v79);
    }

    else
    {
      v80 = 0.0;
    }

    v85 = sqrt(v80);
    v86 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v171 = v85;
      _os_log_impl(&dword_1B501D000, v86, OS_LOG_TYPE_INFO, "l2-norm of the partial delta before normalization is %f", buf, 0xCu);
    }

    v87 = self->_numParam;
    if (v87)
    {
      v88 = self->_weightsRawPtr;
      v89 = v88;
      v90 = self->_numParam;
      do
      {
        *v89 = (v40 / v85) * *v89;
        ++v89;
        --v90;
      }

      while (v90);
      v91 = 4 * v87;
      v92 = 0.0;
      do
      {
        v93 = *v88++;
        v92 = v92 + (v93 * v93);
        v91 -= 4;
      }

      while (v91);
    }

    else
    {
      v92 = 0.0;
    }

    v94 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v95 = sqrt(v92);
      *buf = 134217984;
      v171 = v95;
      _os_log_impl(&dword_1B501D000, v94, OS_LOG_TYPE_INFO, "l2-norm of the partial delta after normalization is %f", buf, 0xCu);
    }

    v96 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v97 = *&self->_numParam;
      *buf = 134217984;
      v171 = v97;
      _os_log_impl(&dword_1B501D000, v96, OS_LOG_TYPE_INFO, "Gradients of %lu parameters are chosen and sent to server", buf, 0xCu);
    }

    v98 = [[SimpleMmapBuffer alloc] initWithData:self->_weightsRawPtr ofSize:4 * self->_numParam];
    mmappedPartialWeights = self->_mmappedPartialWeights;
    self->_mmappedPartialWeights = v98;

    if (!self->_mmappedPartialWeights)
    {
      v120 = MEMORY[0x1E696ABC0];
      v159 = *MEMORY[0x1E696A578];
      v160 = @"Unable to buffer partial delta";
      v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      [v120 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:1 userInfo:v121];
      *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

LABEL_26:
      v36 = 0;
    }

    else
    {
LABEL_103:
      if (_parseRecipeBoolField(self->_recipe, @"deltaIsWeighted", 1))
      {
        v100 = self->_numParam;
        if (v100)
        {
          numWordsTrain = self->_numWordsTrain;
          v102 = self->_weightsRawPtr;
          do
          {
            *v102 = *v102 * numWordsTrain;
            ++v102;
            --v100;
          }

          while (v100);
        }

        v103 = sLog;
        v36 = 1;
        if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B501D000, v103, OS_LOG_TYPE_INFO, "delta is weighted", buf, 2u);
        }
      }

      else
      {
        v36 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  if (v36)
  {
    if (!v129)
    {
      v115 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_weightsRawPtr length:4 * self->_numParam];
      *&v10 = 0.0;
      delta = self->_delta;
      self->_delta = v115;
LABEL_96:

      goto LABEL_97;
    }

    v158[0] = @"maxNorm";
    v158[1] = @"normBinCount";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:2];
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    delta = v135 = 0u;
    v105 = [(NSData *)delta countByEnumeratingWithState:&v134 objects:v157 count:16];
    if (v105)
    {
      v106 = *v135;
      while (2)
      {
        for (k = 0; k != v105; ++k)
        {
          if (*v135 != v106)
          {
            objc_enumerationMutation(delta);
          }

          v108 = *(*(&v134 + 1) + 8 * k);
          v109 = [(NSDictionary *)self->_recipe valueForKey:v108];
          v110 = v109 == 0;

          if (v110)
          {
            v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read recipe[%@]", v108];
            v116 = MEMORY[0x1E696ABC0];
            v155 = *MEMORY[0x1E696A578];
            v156 = v112;
            v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
            [v116 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:153 userInfo:v117];
            *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v111 = delta;
            goto LABEL_94;
          }
        }

        v105 = [(NSData *)delta countByEnumeratingWithState:&v134 objects:v157 count:16];
        if (v105)
        {
          continue;
        }

        break;
      }
    }

    v111 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"iCloudAggServiceKey"];
    if (v111 || ([(NSDictionary *)self->_recipe objectForKeyedSubscript:@"HaruspexKey"], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v112 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v111 options:0];
      v113 = *MEMORY[0x1E696A578];
      if (!v112)
      {
        v114 = MEMORY[0x1E696ABC0];
        v153 = *MEMORY[0x1E696A578];
        v154 = @"Corrupted HaruspexKey";
        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
        [v114 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:153 userInfo:v112];
        *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_95:

        goto LABEL_96;
      }
    }

    else
    {
      v112 = 0;
      v113 = *MEMORY[0x1E696A578];
    }

    v118 = MEMORY[0x1E696ABC0];
    v151 = v113;
    v152 = @"Privatization of deltas failed";
    v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    [v118 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:153 userInfo:v117];
    *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
LABEL_94:

    goto LABEL_95;
  }

LABEL_97:

  return v10;
}

- (void)evaluatePartialDelta
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_1B501D000, v0, OS_LOG_TYPE_DEBUG, "parsed %lu chosen gradients", v1, 0xCu);
}

@end