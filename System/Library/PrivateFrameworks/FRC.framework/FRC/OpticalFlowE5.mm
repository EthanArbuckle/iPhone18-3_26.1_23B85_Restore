@interface OpticalFlowE5
- (BOOL)buildLibraryForModel:(id)a3;
- (BOOL)buildLibraryFromE5BundleForModel:(id)a3;
- (BOOL)checkInputResolutions;
- (BOOL)getPortNames;
- (BOOL)initializeModel:(id)a3;
- (BOOL)setupAdaptationLayer;
- (BOOL)switchUsageTo:(int64_t)a3;
- (BOOL)upscaleFlowWithFlowAdaptationLayerFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 baseFlow:(__CVBuffer *)a5 destination:(__CVBuffer *)a6;
- (OpticalFlowE5)initWithModel:(id)a3 usage:(int64_t)a4;
- (id)createFP16TextureFromIOSurface:(__IOSurface *)a3 width:(int64_t)a4 height:(int64_t)a5 channels:(int64_t)a6;
- (void)allocateBufferObjects;
- (void)bindPorts;
- (void)checkDefaults;
- (void)dealloc;
- (void)encodeConvertLinearBuffer:(__IOSurface *)a3 toPixelBuffer:(__CVBuffer *)a4;
- (void)encodeCovnertPixelBuffer:(__CVBuffer *)a3 toLinearBuffer:(__IOSurface *)a4 toCommandBuffer:(id)a5;
- (void)encodeUnormNormalize:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 toCommandBuffer:(id)a5;
- (void)executeModel;
- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flow:(__CVBuffer *)a5;
- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 originalFirst:(__CVBuffer *)a5 originalSecond:(__CVBuffer *)a6 flow:(__CVBuffer *)a7;
- (void)releaseAdaptationLayerStorage;
- (void)releaseBufferObjects;
- (void)resetStream:(e5rt_execution_stream *)a3;
@end

@implementation OpticalFlowE5

- (OpticalFlowE5)initWithModel:(id)a3 usage:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = OpticalFlowE5;
  v7 = [(OpticalFlow *)&v14 initWithMode:a4];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (createLogger_onceToken != -1)
  {
    [OpticalFlowE5 initWithModel:usage:];
  }

  objc_storeStrong(&v7->_logger, createLogger_logger);
  v7->super._usage = a4;
  [(OpticalFlow *)v7 setUseE5RT:1];
  [(OpticalFlowE5 *)v7 checkDefaults];
  if (![(OpticalFlowE5 *)v7 initializeModel:v6])
  {
    if (os_log_type_enabled(v7->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 initWithModel:usage:];
    }

    goto LABEL_14;
  }

  v8 = objc_alloc_init(FRCScaler);
  scaler = v7->_scaler;
  v7->_scaler = v8;

  if (!v7->_scaler)
  {
    if (os_log_type_enabled(v7->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 initWithModel:usage:];
    }

    goto LABEL_14;
  }

  v10 = objc_alloc_init(Normalization);
  normalization = v7->_normalization;
  v7->_normalization = v10;

  if (!v7->_normalization)
  {
    if (os_log_type_enabled(v7->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 initWithModel:usage:];
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_7:
  v12 = v7;
LABEL_15:

  return v12;
}

- (BOOL)checkInputResolutions
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0uLL;
  FRCGetInputFrameSizeForUsage(self->super._usage, &v10 + 1, &v10);
  p_inputSize = &self->_inputSize;
  if (__PAIR128__(self->_inputSize.width, self->_inputSize.height) == v10)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    logger = self->_logger;
    v4 = os_log_type_enabled(logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      width = p_inputSize->width;
      height = p_inputSize->height;
      *buf = 134218752;
      v12 = width;
      v13 = 2048;
      v14 = height;
      v15 = 2048;
      v16 = *(&v10 + 1);
      v17 = 2048;
      v18 = v10;
      _os_log_error_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_ERROR, "Error! Model input resolution does not match with usage (Model expects %ld x %ld, Usage: %ld x %ld", buf, 0x2Au);
      LOBYTE(v4) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)checkDefaults
{
  v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FRC"];
  v3 = [v6 objectForKey:@"E5RTDevice"];
  v4 = v3;
  if (v3 && ![v3 caseInsensitiveCompare:@"GPU"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 4;
  }

  self->_deviceType = v5;
}

- (BOOL)switchUsageTo:(int64_t)a3
{
  if (![(OpticalFlow *)self skipLastLevel])
  {
    [(OpticalFlow *)self setUseAdaptationLayer:1];
    [(OpticalFlow *)self setAdaptationLayerOnly:1];
  }

  if (FRCGetNumberOfPixelsForUsage(a3) >> 10 >= 0x7E9)
  {
    [(OpticalFlow *)self setDownsampling:1];
  }

  if ([(OpticalFlow *)self downsampling]== 1 || [(OpticalFlow *)self bypassInputNormalization])
  {
    v9 = 0;
    v10 = 0;
    if ([(OpticalFlow *)self downsampling])
    {
      QuarterSizeUsage = getQuarterSizeUsage(a3);
      FRCGetInputFrameSizeForUsage(QuarterSizeUsage, &v10, &v9);
      self->super._usage = QuarterSizeUsage;
    }

    else
    {
      FRCGetInputFrameSizeForUsage(a3, &v10, &v9);
    }

    self->_subsampledFirst = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
    self->_subsampledSecond = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
    if ([(OpticalFlow *)self bypassInputNormalization])
    {
      self->_subsampledBGRAFirst = createPixelBuffer(v10, v9, 0x42475241u, 0);
      self->_subsampledBGRASecond = createPixelBuffer(v10, v9, 0x42475241u, 0);
      self->_subsampledOriginalFirst = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
      self->_subsampledOriginalSecond = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
    }
  }

  v8.receiver = self;
  v8.super_class = OpticalFlowE5;
  [(OpticalFlow *)&v8 switchUsageTo:a3];
  v6 = [(OpticalFlowE5 *)self checkInputResolutions];
  if (v6)
  {
    if ([(OpticalFlow *)self useAdaptationLayer])
    {
      [(OpticalFlowE5 *)self setupAdaptationLayer];
    }

    if ([(OpticalFlow *)self useAdaptationLayer]|| [(OpticalFlow *)self upscaleFinalFlow])
    {
      self->_intermediateFlow = createPixelBuffer(self->_outputSize.width, self->_outputSize.height, 0x32433068u, 0);
    }
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [OpticalFlowE5 switchUsageTo:];
  }

  return v6;
}

- (void)dealloc
{
  [(OpticalFlowE5 *)self releaseBufferObjects];
  CVPixelBufferRelease(self->_subsampledFirst);
  CVPixelBufferRelease(self->_subsampledSecond);
  CVPixelBufferRelease(self->_subsampledBGRAFirst);
  CVPixelBufferRelease(self->_subsampledBGRASecond);
  CVPixelBufferRelease(self->_subsampledOriginalFirst);
  CVPixelBufferRelease(self->_subsampledOriginalSecond);
  if (self->_stream)
  {
    e5rt_execution_stream_release();
  }

  if (self->_library)
  {
    e5rt_program_library_release();
  }

  self->_library = 0;
  if (self->_function)
  {
    e5rt_program_function_release();
  }

  self->_function = 0;
  if (self->_operation)
  {
    e5rt_execution_stream_operation_release();
  }

  self->_operation = 0;
  CVPixelBufferRelease(self->_intermediateFlow);
  v3.receiver = self;
  v3.super_class = OpticalFlowE5;
  [(OpticalFlow *)&v3 dealloc];
}

- (BOOL)initializeModel:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"PWCNet_540p_lv2Flow_9x9corrANE";
  }

  v6 = [(__CFString *)v5 stringByDeletingPathExtension];

  if (![(OpticalFlowE5 *)self buildLibraryFromE5BundleForModel:v6]&& ![(OpticalFlowE5 *)self buildLibraryForModel:v6]&& os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [OpticalFlowE5 initializeModel:];
  }

  library = self->_library;
  v8 = e5rt_program_library_retain_program_function();
  if (v8)
  {
    v33 = v8;
    last_error_message = e5rt_get_last_error_message();
    v35 = "e5rt_program_library_retain_program_function(_library, main, &_function)";
LABEL_29:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v35, v33, last_error_message);
LABEL_23:
    exit(1);
  }

  v39[1] = 0;
  function = self->_function;
  v10 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
  if (v10)
  {
    v33 = v10;
    last_error_message = e5rt_get_last_error_message();
    v35 = "e5rt_precompiled_compute_op_create_options_create_with_program_function(&create_options, _function)";
    goto LABEL_29;
  }

  v36 = v6;
  precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
  if (precompiled_compute_operation_with_options)
  {
    v33 = precompiled_compute_operation_with_options;
    last_error_message = e5rt_get_last_error_message();
    v35 = "e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options(&_operation, create_options)";
    goto LABEL_29;
  }

  e5rt_precompiled_compute_op_create_options_release();
  [(OpticalFlowE5 *)self getPortNames];
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    operation = self->_operation;
    v16 = [(NSMutableArray *)self->_inputPortNames objectAtIndexedSubscript:v12];
    [v16 UTF8String];
    v17 = e5rt_execution_stream_operation_retain_input_port();

    if (v17)
    {
      v32 = e5rt_get_last_error_message();
      printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_execution_stream_operation_retain_input_port(_operation, _inputPortNames[inputIdx].UTF8String, &_input_ports[inputIdx])", v17, v32);
      goto LABEL_23;
    }

    v38 = 0;
    v39[0] = 0;
    v37 = 0;
    getPortShape(self->_input_ports[v12], v39, &v38, &v37);
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      inputPortNames = self->_inputPortNames;
      v20 = logger;
      v21 = [(NSMutableArray *)inputPortNames objectAtIndexedSubscript:v12];
      v22 = v37;
      *buf = 138413058;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v39[0];
      *&buf[22] = 2048;
      v41 = v38;
      v42 = 2048;
      v43 = v37;
      _os_log_impl(&dword_24A8C8000, v20, OS_LOG_TYPE_DEFAULT, "Input image [%@]: %ld x %ld x %ld", buf, 0x2Au);
    }

    else
    {
      v22 = v37;
    }

    TensorSizeMake(v39[0], v38, v22, buf);
    v13 = 0;
    *&self->_inputSize.width = *buf;
    self->_inputSize.channels = *&buf[16];
    v12 = 1;
  }

  while ((v14 & 1) != 0);
  v23 = self->_operation;
  [(NSString *)self->_outputPortName UTF8String];
  v24 = e5rt_execution_stream_operation_retain_output_port();
  if (v24)
  {
    v33 = v24;
    last_error_message = e5rt_get_last_error_message();
    v35 = "e5rt_execution_stream_operation_retain_output_port(_operation, _outputPortName.UTF8String, &_output_port)";
    goto LABEL_29;
  }

  v38 = 0;
  v39[0] = 0;
  v37 = 0;
  getPortShape(self->_output_port, v39, &v38, &v37);
  v25 = self->_logger;
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  v27 = v37;
  if (v26)
  {
    outputPortName = self->_outputPortName;
    *buf = 138413058;
    *&buf[4] = outputPortName;
    *&buf[12] = 2048;
    *&buf[14] = v39[0];
    *&buf[22] = 2048;
    v41 = v38;
    v42 = 2048;
    v43 = v37;
    _os_log_impl(&dword_24A8C8000, v25, OS_LOG_TYPE_DEFAULT, "Output Flow [%@]: %ld x %ld x %ld", buf, 0x2Au);
  }

  TensorSizeMake(v39[0], v38, v27, buf);
  *&self->_outputSize.width = *buf;
  self->_outputSize.channels = *&buf[16];
  v29 = e5rt_execution_stream_create();
  if (v29)
  {
    v33 = v29;
    last_error_message = e5rt_get_last_error_message();
    v35 = "e5rt_execution_stream_create(&_stream)";
    goto LABEL_29;
  }

  [(OpticalFlowE5 *)self allocateBufferObjects];
  [(OpticalFlowE5 *)self bindPorts];

  v30 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)buildLibraryForModel:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Runtime Compilation\n", buf, 2u);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:v4 ofType:@"mlmodelc"];
  if (v7 || ([v6 pathForResource:v4 ofType:@"mlpackage"], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v16 = getInternalBundle(v6);

    v17 = [v16 pathForResource:v4 ofType:@"mlmodelc"];
    if (!v17)
    {
      v17 = [v16 pathForResource:v4 ofType:@"mlpackage"];
    }

    v8 = v17;
    v6 = v16;
  }

  v9 = [v8 stringByAppendingPathComponent:@"model.mil"];
  *buf = 0;
  deviceType = self->_deviceType;
  v11 = e5rt_e5_compiler_create();
  if (v11)
  {
    v18 = v11;
    last_error_message = e5rt_get_last_error_message();
    v20 = "e5rt_e5_compiler_create (&compiler)";
LABEL_19:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v20, v18, last_error_message);
    goto LABEL_21;
  }

  v12 = e5rt_e5_compiler_options_create();
  if (v12)
  {
    v18 = v12;
    last_error_message = e5rt_get_last_error_message();
    v20 = "e5rt_e5_compiler_options_create(&options)";
    goto LABEL_19;
  }

  v13 = e5rt_e5_compiler_options_set_compute_device_types_mask();
  if (v13)
  {
    v21 = v13;
    v22 = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_e5_compiler_options_set_compute_device_types_mask(options, deviceMask)", v21, v22);
LABEL_21:
    exit(1);
  }

  [v9 UTF8String];
  v14 = e5rt_e5_compiler_compile();
  if (v14)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 buildLibraryForModel:];
    }
  }

  else
  {
    e5rt_e5_compiler_release();
    e5rt_e5_compiler_options_release();
  }

  return v14 == 0;
}

- (BOOL)buildLibraryFromE5BundleForModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 stringByDeletingPathExtension];
  v7 = [v5 pathForResource:v6 ofType:@"bundle" inDirectory:@"e5Bundles"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = getInternalBundle(v5);

  v9 = [v4 stringByDeletingPathExtension];
  v7 = [v8 pathForResource:v9 ofType:@"bundle" inDirectory:@"e5Bundles"];

  if (v7)
  {
    v5 = v8;
LABEL_4:
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Creating library from pre-built bundle at %@", &v15, 0xCu);
    }

    [v7 UTF8String];
    if (e5rt_program_library_create())
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [OpticalFlowE5 buildLibraryFromE5BundleForModel:];
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v8 = v5;
    goto LABEL_12;
  }

  v14 = self->_logger;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_24A8C8000, v14, OS_LOG_TYPE_DEFAULT, "Pre-compiled E5 Bundle for %@ is not available. Switching to runtime compilation.", &v15, 0xCu);
  }

  v7 = 0;
  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)getPortNames
{
  v25 = *MEMORY[0x277D85DE8];
  operation = self->_operation;
  if (e5rt_execution_stream_operation_get_num_inputs())
  {
    puts("failed to obtain input info");
    exit(1);
  }

  num_input_ports = self->_num_input_ports;
  v5 = &buf[-((8 * num_input_ports + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (8 * num_input_ports >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = 8 * num_input_ports;
  }

  bzero(&buf[-((8 * num_input_ports + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v7 = self->_operation;
  e5rt_execution_stream_operation_get_input_names();
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_num_input_ports;
    *buf = 134217984;
    *&buf[4] = v9;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Number of Input Ports = %ld", buf, 0xCu);
  }

  v10 = self->_num_input_ports;
  if (v10 == 2)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inputPortNames = self->_inputPortNames;
    self->_inputPortNames = v11;

    if (self->_num_input_ports)
    {
      v13 = 0;
      do
      {
        v14 = self->_inputPortNames;
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&v5[8 * v13]];
        [(NSMutableArray *)v14 addObject:v15];

        ++v13;
      }

      while (self->_num_input_ports > v13);
    }

    *buf = 0;
    v16 = self->_operation;
    e5rt_execution_stream_operation_get_num_outputs();
    v17 = *buf;
    if ((8 * *buf) >= 0x200)
    {
      v18 = 512;
    }

    else
    {
      v18 = 8 * *buf;
    }

    bzero(&buf[-((8 * *buf + 15) & 0xFFFFFFFFFFFFFFF0)], v18);
    v19 = self->_operation;
    e5rt_execution_stream_operation_get_output_names();
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&buf[-((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0)]];
    outputPortName = self->_outputPortName;
    self->_outputPortName = v20;
  }

  else
  {
    printf("Error invalid number of input ports (%ld)\n", self->_num_input_ports);
  }

  result = v10 == 2;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)allocateBufferObjects
{
  v3 = 0;
  input_ports = self->_input_ports;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = input_ports[v3];
    v8 = e5rt_io_port_retain_tensor_desc();
    if (v8)
    {
      v19 = v8;
      last_error_message = e5rt_get_last_error_message();
      v21 = "e5rt_io_port_retain_tensor_desc(_input_ports[inputIdx], &input_tensor_desc)";
      goto LABEL_13;
    }

    v9 = e5rt_tensor_desc_alloc_buffer_object();
    if (v9)
    {
      v19 = v9;
      last_error_message = e5rt_get_last_error_message();
      v21 = "e5rt_tensor_desc_alloc_buffer_object(input_tensor_desc, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_inputBufferObject[inputIdx])";
      goto LABEL_13;
    }

    e5rt_tensor_desc_release();
    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  output_port = self->_output_port;
  v11 = e5rt_io_port_retain_tensor_desc();
  if (v11)
  {
    v19 = v11;
    last_error_message = e5rt_get_last_error_message();
    v21 = "e5rt_io_port_retain_tensor_desc(_output_port, &output_tensor_desc)";
    goto LABEL_13;
  }

  v12 = e5rt_tensor_desc_alloc_buffer_object();
  if (v12)
  {
    v19 = v12;
    last_error_message = e5rt_get_last_error_message();
    v21 = "e5rt_tensor_desc_alloc_buffer_object(output_tensor_desc, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_outputBufferObject)";
    goto LABEL_13;
  }

  e5rt_tensor_desc_release();
  v13 = self->_inputBufferObject[0];
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v19 = iosurface;
    last_error_message = e5rt_get_last_error_message();
    v21 = "e5rt_buffer_object_get_iosurface(_inputBufferObject[0], &_firstFrameSurface)";
    goto LABEL_13;
  }

  v15 = self->_inputBufferObject[1];
  v16 = e5rt_buffer_object_get_iosurface();
  if (v16)
  {
    v19 = v16;
    last_error_message = e5rt_get_last_error_message();
    v21 = "e5rt_buffer_object_get_iosurface(_inputBufferObject[1], &_secondFrameSurface)";
    goto LABEL_13;
  }

  outputBufferObject = self->_outputBufferObject;
  v18 = e5rt_buffer_object_get_iosurface();
  if (v18)
  {
    v19 = v18;
    last_error_message = e5rt_get_last_error_message();
    v21 = "e5rt_buffer_object_get_iosurface(_outputBufferObject, &_outputSurface)";
LABEL_13:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v21, v19, last_error_message);
    exit(1);
  }
}

- (void)releaseBufferObjects
{
  v3 = 0;
  inputBufferObject = self->_inputBufferObject;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &inputBufferObject[v3];
    if (*v7)
    {
      e5rt_buffer_object_release();
      *v7 = 0;
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  if (self->_outputBufferObject)
  {
    e5rt_buffer_object_release();
    self->_outputBufferObject = 0;
  }

  e5rt_io_port_release();
  e5rt_io_port_release();
  e5rt_io_port_release();
  if ([(OpticalFlow *)self useAdaptationLayer])
  {

    [(OpticalFlowE5 *)self releaseAdaptationLayerStorage];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flow:(__CVBuffer *)a5
{
  v9 = [(OpticalFlow *)self originalFirst];
  v10 = [(OpticalFlow *)self originalSecond];

  [(OpticalFlowE5 *)self opticalFlowFirstFrame:a3 secondFrame:a4 originalFirst:v9 originalSecond:v10 flow:a5];
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 originalFirst:(__CVBuffer *)a5 originalSecond:(__CVBuffer *)a6 flow:(__CVBuffer *)a7
{
  if ([(OpticalFlow *)self bypassInputNormalization])
  {
    v13 = [(OpticalFlowE5 *)self rotationForBuffer:[(OpticalFlow *)self originalFirst]];
    [(FRCScaler *)self->_scaler downScaleFrameSource:a5 destination:self->_subsampledBGRAFirst rotate:v13 waitForCompletion:0];
    [(FRCScaler *)self->_scaler downScaleFrameSource:a6 destination:self->_subsampledBGRASecond rotate:v13 waitForCompletion:0];
  }

  v20 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  if ([(OpticalFlow *)self bypassInputNormalization])
  {
    p_subsampledOriginalFirst = &self->_subsampledOriginalFirst;
    [(OpticalFlowE5 *)self encodeUnormNormalize:self->_subsampledBGRAFirst destination:self->_subsampledOriginalFirst toCommandBuffer:v20];
    p_subsampledOriginalSecond = &self->_subsampledOriginalSecond;
    [(OpticalFlowE5 *)self encodeUnormNormalize:self->_subsampledBGRASecond destination:self->_subsampledOriginalSecond toCommandBuffer:v20];
LABEL_7:
    v18 = *p_subsampledOriginalFirst;
    v17 = *p_subsampledOriginalSecond;
    goto LABEL_8;
  }

  v16 = [(OpticalFlow *)self downsampling];
  v17 = a4;
  v18 = a3;
  if (v16 == 1)
  {
    p_subsampledOriginalFirst = &self->_subsampledFirst;
    [(OpticalFlow *)self subsampleBuffer:a3 destination:self->_subsampledFirst toCommandBuffer:v20];
    p_subsampledOriginalSecond = &self->_subsampledSecond;
    [(OpticalFlow *)self subsampleBuffer:a4 destination:self->_subsampledSecond toCommandBuffer:v20];
    goto LABEL_7;
  }

LABEL_8:
  [(OpticalFlowE5 *)self encodeCovnertPixelBuffer:v18 toLinearBuffer:self->_firstFrameSurface toCommandBuffer:v20];
  [(OpticalFlowE5 *)self encodeCovnertPixelBuffer:v17 toLinearBuffer:self->_secondFrameSurface toCommandBuffer:v20];
  [v20 commit];
  [v20 waitUntilScheduled];
  [(OpticalFlowE5 *)self executeModel];
  if ([(OpticalFlow *)self useAdaptationLayer]|| (intermediateFlow = a7, [(OpticalFlow *)self upscaleFinalFlow]))
  {
    intermediateFlow = self->_intermediateFlow;
  }

  [(OpticalFlowE5 *)self encodeConvertLinearBuffer:self->_outputSurface toPixelBuffer:intermediateFlow];
  if ([(OpticalFlow *)self useAdaptationLayer])
  {
    [(OpticalFlowE5 *)self upscaleFlowWithFlowAdaptationLayerFirstFrame:a3 secondFrame:a4 baseFlow:intermediateFlow destination:a7];
  }

  else if ([(OpticalFlow *)self upscaleFinalFlow])
  {
    [(OpticalFlow *)self upscaleInputFlow:intermediateFlow outFlow:a7];
  }
}

- (void)executeModel
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_error_impl(&dword_24A8C8000, log, OS_LOG_TYPE_ERROR, "Execution failed. returned error = %u. msg = %s\n", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)bindPorts
{
  v3 = 0;
  input_ports = self->_input_ports;
  inputBufferObject = self->_inputBufferObject;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = input_ports[v3];
    v9 = inputBufferObject[v3];
    v10 = e5rt_io_port_bind_buffer_object();
    if (v10)
    {
      v14 = v10;
      last_error_message = e5rt_get_last_error_message();
      v16 = "e5rt_io_port_bind_buffer_object(_input_ports[i], _inputBufferObject[i])";
      goto LABEL_7;
    }

    v6 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  output_port = self->_output_port;
  outputBufferObject = self->_outputBufferObject;
  v13 = e5rt_io_port_bind_buffer_object();
  if (v13)
  {
    v14 = v13;
    last_error_message = e5rt_get_last_error_message();
    v16 = "e5rt_io_port_bind_buffer_object(_output_port, _outputBufferObject)";
LABEL_7:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v16, v14, last_error_message);
    exit(1);
  }
}

- (void)resetStream:(e5rt_execution_stream *)a3
{
  v3 = e5rt_execution_stream_reset();
  if (v3)
  {
    v4 = v3;
    last_error_message = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_execution_stream_reset(stream)", v4, last_error_message);
    exit(1);
  }
}

- (void)encodeCovnertPixelBuffer:(__CVBuffer *)a3 toLinearBuffer:(__IOSurface *)a4 toCommandBuffer:(id)a5
{
  v8 = a5;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v12 = [(OpticalFlow *)self device];
  if (PixelFormatType == 1111970369)
  {
    createRGBATextureFromCVPixelBuffer(a3, v12);
  }

  else
  {
    createTexturesFromCVPixelBuffer(a3, v12, 1, 3uLL);
  }
  v13 = ;

  if (IOSurfaceGetPixelFormat(a4) == 1278226488)
  {
    v14 = [(OpticalFlowE5 *)self createFP16TextureFromIOSurface:a4 width:Width height:Height / 3 channels:3];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 blitCommandEncoder];
  v16 = [v14 width];
  v17 = [v14 height];
  if ([v13 arrayLength])
  {
    v18 = 0;
    do
    {
      memset(v21, 0, sizeof(v21));
      v20[0] = v16;
      v20[1] = v17;
      v20[2] = 1;
      memset(v19, 0, sizeof(v19));
      [v15 copyFromTexture:v13 sourceSlice:v18 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toTexture:v14 destinationSlice:v18 destinationLevel:0 destinationOrigin:v19];
      ++v18;
    }

    while ([v13 arrayLength] > v18);
  }

  [v15 endEncoding];
}

- (void)encodeConvertLinearBuffer:(__IOSurface *)a3 toPixelBuffer:(__CVBuffer *)a4
{
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v10 = Height >> (PixelFormatType == 1278226536);
  if (PixelFormatType == 843264104 || (v10 >= 0x80 ? (v11 = ((v10 * Width) & 0x3F) == 0) : (v11 = 0), !v11 || Width <= 0x7F))
  {
    v20 = CVPixelBufferGetBytesPerRow(a4) >> 1;
    IOSurfaceLock(a3, 1u, 0);
    CVPixelBufferLockBaseAddress(a4, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a3);
    v22 = CVPixelBufferGetBaseAddress(a4);
    if (PixelFormatType == 1278226536)
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = v24;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            if (Width)
            {
              v27 = 0;
              v28 = &BaseAddress[2 * v23];
              v23 += Width;
              v29 = Width;
              do
              {
                *&v22[v27] = *&v28[v27];
                v27 += 2;
                --v29;
              }

              while (v29);
            }

            v22 += 2 * v20;
          }
        }

        v24 = 0;
      }

      while ((v25 & 1) != 0);
    }

    else if (PixelFormatType == 843264104 && v10)
    {
      v30 = 0;
      v31 = 0;
      v32 = v22 + 2;
      do
      {
        if (Width)
        {
          v33 = &BaseAddress[2 * v31];
          v31 += Width;
          v34 = v32;
          v35 = Width;
          do
          {
            *(v34 - 1) = *v33;
            *v34 = *&v33[2 * Width * v10];
            v33 += 2;
            v34 += 2;
            --v35;
          }

          while (v35);
        }

        ++v30;
        v32 += v20;
      }

      while (v30 != v10);
    }

    IOSurfaceUnlock(a3, 1u, 0);

    CVPixelBufferUnlockBaseAddress(a4, 0);
  }

  else
  {
    v12 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v13 = [(OpticalFlowE5 *)self createFP16TextureFromIOSurface:a3 width:Width height:v10 channels:2];
    v14 = [(OpticalFlow *)self device];
    v15 = createTexturesFromCVPixelBuffer(a4, v14, 1, 2uLL);

    v16 = [v12 blitCommandEncoder];
    v17 = [v15 width];
    v18 = [v15 height];
    if ([v13 arrayLength])
    {
      v19 = 0;
      do
      {
        memset(v38, 0, sizeof(v38));
        v37[0] = v17;
        v37[1] = v18;
        v37[2] = 1;
        memset(v36, 0, sizeof(v36));
        [v16 copyFromTexture:v13 sourceSlice:v19 sourceLevel:0 sourceOrigin:v38 sourceSize:v37 toTexture:v15 destinationSlice:v19 destinationLevel:0 destinationOrigin:v36];
        ++v19;
      }

      while ([v13 arrayLength] > v19);
    }

    [v16 endEncoding];
    [v12 commit];
    [v12 waitUntilCompleted];
  }
}

- (id)createFP16TextureFromIOSurface:(__IOSurface *)a3 width:(int64_t)a4 height:(int64_t)a5 channels:(int64_t)a6
{
  v10 = [(OpticalFlow *)self device];
  v11 = [v10 newBufferWithIOSurface:a3];

  v12 = 2 * a4 * a5;
  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:a4 height:a5 mipmapped:0];
  [v13 setTextureType:3];
  [v13 setArrayLength:a6];
  [v13 setUsage:3];
  [v13 setStorageMode:0];
  v14 = [v11 newLinearTextureWithDescriptor:v13 offset:0 bytesPerRow:2 * a4 bytesPerImage:v12];

  return v14;
}

- (BOOL)setupAdaptationLayer
{
  [(OpticalFlow *)self setNumLevels:1];
  [(OpticalFlow *)self setResourcePreAllocated:1];
  [(OpticalFlow *)self allocateIntermediateStageStorage:&self->_opticalFlowStorage baseStage:0];
  if ([(OpticalFlow *)self upscaleFinalFlow])
  {
    self->_opticalFlowStorage.flows[0] = createPixelBuffer([(OpticalFlow *)self flowWidth]>> 1, [(OpticalFlow *)self flowHeight]>> 1, 0x32433068u, 0);
  }

  [(OpticalFlow *)self allocateFeatureBuffers:self->_features];
  [(OpticalFlow *)self allocateFeatureBuffers:&self->_features[1]];
  v4.receiver = self;
  v4.super_class = OpticalFlowE5;
  [(OpticalFlow *)&v4 createModules];
  return 1;
}

- (void)releaseAdaptationLayerStorage
{
  features = self->_features;
  [(OpticalFlow *)self releaseFeatureBuffers:self->_features];
  [(OpticalFlow *)self releaseFeatureBuffers:&features[1]];

  [(OpticalFlow *)self releaseIntermediateStageStorage:&self->_opticalFlowStorage];
}

- (BOOL)upscaleFlowWithFlowAdaptationLayerFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 baseFlow:(__CVBuffer *)a5 destination:(__CVBuffer *)a6
{
  features = self->_features;
  [(OpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
  [(OpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&features[1]];
  [(OpticalFlow *)self adaptFlowFromFirstFeatures:features secondFeature:&features[1] storage:&self->_opticalFlowStorage inputFlow:a5 outputFlow:a6];
  return 0;
}

- (void)encodeUnormNormalize:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 toCommandBuffer:(id)a5
{
  v8 = a5;
  v9 = [(OpticalFlow *)self device];
  v13 = createRGBATextureFromCVPixelBuffer(a3, v9);

  v10 = [(OpticalFlow *)self device];
  v11 = createTexturesFromCVPixelBuffer(a4, v10, 1, 3uLL);

  LODWORD(v12) = 1.0;
  [(Normalization *)self->_normalization encodeNormalizationToCommandBuffer:v8 source:v13 destination:v11 params:0.0, v12];
}

- (void)initWithModel:usage:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithModel:usage:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithModel:usage:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)switchUsageTo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initializeModel:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)buildLibraryForModel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)buildLibraryFromE5BundleForModel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end