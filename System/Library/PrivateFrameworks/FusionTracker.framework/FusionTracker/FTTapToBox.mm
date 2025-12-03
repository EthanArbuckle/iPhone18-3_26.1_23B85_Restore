@interface FTTapToBox
+ ($7E6FF06E1E2A477A0598F669E6D2B004)postProcessNetworkOutput:(SEL)output;
+ (BOOL)preprocessForTap:(CGPoint)tap inSourceImageBuffer:(__CVBuffer *)buffer destinationImageBuffer:(__CVBuffer *)imageBuffer tapBuffer:(__CVBuffer *)tapBuffer scaler:(id)scaler;
+ (BOOL)renderTap:(CGPoint)tap inBuffer:(__CVBuffer *)buffer;
+ (CGSize)networkInputImageSize;
+ (CGSize)networkInputTapImageSize;
+ (id)networkDescriptor;
+ (id)networkPath;
+ (void)networkPath;
- ($7E6FF06E1E2A477A0598F669E6D2B004)predictionForTap:(SEL)tap inBuffer:(CGPoint)buffer scaler:(__CVBuffer *)scaler;
- (CGRect)predictBoxForTap:(CGPoint)tap inBuffer:(__CVBuffer *)buffer scaler:(id)scaler;
- (FTTapToBox)init;
- (id).cxx_construct;
@end

@implementation FTTapToBox

- (FTTapToBox)init
{
  v29 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = FTTapToBox;
  v2 = [(FTTapToBox *)&v13 init];

  if (v2)
  {
    +[FTTapToBox networkDescriptor];
    outputNames = [objc_claimAutoreleasedReturnValue() outputNames];
    firstObject = [outputNames firstObject];
    v5 = firstObject;
    uTF8String = [firstObject UTF8String];
    v7 = strlen(uTF8String);
    if (v7 < 0x7FFFFFFFFFFFFFF8)
    {
      v8 = v7;
      if (v7 < 0x17)
      {
        *(&__dst.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&__dst, uTF8String, v7);
        }

        __dst.__r_.__value_.__s.__data_[v8] = 0;

        v9 = +[FTTapToBox networkPath];
        v10 = v9;
        [v9 UTF8String];
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v28 = __dst;
        }

        std::vector<std::string>::vector[abi:ne200100](&v14, &v28, 1uLL);
        v15 = 0;
        v16 = 0;
        v17 = -4294901744;
        v18 = 0;
        v19 = 0;
        LOBYTE(v20) = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0u;
        v24 = 0u;
        LODWORD(v25) = 1065353216;
        v27 = 0;
        LOBYTE(__p) = 0;
        std::make_unique[abi:ne200100]<ik::EspressoNet,char const*,ik::EspressoConfig,0>();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

- ($7E6FF06E1E2A477A0598F669E6D2B004)predictionForTap:(SEL)tap inBuffer:(CGPoint)buffer scaler:(__CVBuffer *)scaler
{
  y = buffer.y;
  x = buffer.x;
  v11 = a6;
  if ([FTTapToBox preprocessForTap:scaler inSourceImageBuffer:*(self->_inputImageTensor.storage_.__ptr_ + 1) destinationImageBuffer:*(self->_inputTapTensor.storage_.__ptr_ + 1) tapBuffer:v11 scaler:x, y])
  {
    ptr = self->_net.__ptr_;
    v13 = *(ptr + 1);
    v15 = *(v13 + 56);
    v16 = *(v13 + 64);
    v14 = (v13 + 56);
    if (v15 == v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Model has no pre-declared outputs.");
      exception->__vftable = &unk_285F8F310;
    }

    ik::EspressoNet::Predict(ptr, &self->_inputMap, v14, v29);
    std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(v29);
    v28 = 0.0;
    v26 = 0;
    v27 = 0;
    [FTTapToBox postProcessNetworkOutput:self->_outputTensor.storage_.__ptr_ + 8];
    v17 = +[FTTapToBox defaultConfidenceThreshold];
    if (v18 <= 0.0)
    {
      v22 = v27;
      retstr->var0.origin = v26;
      retstr->var0.size = v22;
      retstr->var1 = v28;
      goto LABEL_10;
    }

    v19 = ft::GetOsLog(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_24BC30000, v19, OS_LOG_TYPE_INFO, "TapToBox prediction below threshold.", v25, 2u);
    }

    v20 = MEMORY[0x277CBF3A0];
  }

  else
  {
    v20 = MEMORY[0x277CBF398];
  }

  v21 = *(v20 + 16);
  retstr->var0.origin = *v20;
  retstr->var0.size = v21;
  retstr->var1 = 0.0;
LABEL_10:

  return result;
}

- (CGRect)predictBoxForTap:(CGPoint)tap inBuffer:(__CVBuffer *)buffer scaler:(id)scaler
{
  [(FTTapToBox *)self predictionForTap:buffer inBuffer:scaler scaler:tap.x, tap.y];
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v8 = v12;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (id)networkPath
{
  v12 = *MEMORY[0x277D85DE8];
  networkDescriptor = [self networkDescriptor];
  name = [networkDescriptor name];

  v4 = FTResolveEspressoNetPath(name);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 pathForResource:name ofType:@"espresso.net"];

    if (!v6)
    {
      v9 = ft::GetOsLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[FTTapToBox networkPath].cold.1([name UTF8String], v11, v9);
      }

      v6 = 0;
    }
  }

  return v6;
}

+ (CGSize)networkInputImageSize
{
  v2 = 360.0;
  v3 = 360.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)networkInputTapImageSize
{
  v2 = 90.0;
  v3 = 90.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)networkDescriptor
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FTNetworkDescriptor);
  [self networkInputImageSize];
  v4 = [FTImageTensorDescriptor bgraImageWithName:@"input_color_image" size:?];
  v8[0] = v4;
  [self networkInputTapImageSize];
  v5 = [FTImageTensorDescriptor descriptorWithName:@"input_tap_image" size:1278226488 pixelFormat:?];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [(FTNetworkDescriptor *)v3 setInputImages:v6];

  [(FTNetworkDescriptor *)v3 setOutputNames:&unk_285F919B8];
  [(FTNetworkDescriptor *)v3 setName:@"tap_to_box_v2_fp16"];

  return v3;
}

+ (BOOL)renderTap:(CGPoint)tap inBuffer:(__CVBuffer *)buffer
{
  y = tap.y;
  x = tap.x;
  if (CVPixelBufferLockBaseAddress(buffer, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
    goto LABEL_26;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  networkInputTapImageSize = [self networkInputTapImageSize];
  if (Width != v12 || Height != v11)
  {
    v14 = ft::GetOsLog(networkInputTapImageSize);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[FTTapToBox renderTap:inBuffer:];
    }

LABEL_21:

    v18 = 0;
    goto LABEL_22;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  if (!BaseAddress)
  {
    v14 = ft::GetOsLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[FTTapToBox renderTap:inBuffer:];
    }

    goto LABEL_21;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  bzero(BaseAddress, BytesPerRow * Height);
  if (x > 1.0 || x < 0.0 || y < 0.0 || y > 1.0)
  {
    v14 = ft::GetOsLog(v17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[FTTapToBox renderTap:inBuffer:];
    }

    goto LABEL_21;
  }

  v18 = 1;
  memset(&BaseAddress[BytesPerRow * vcvtad_u64_f64(y * (Height - 1))], 1, BytesPerRow);
  if (Height)
  {
    v19 = &BaseAddress[vcvtad_u64_f64(x * (Width - 1))];
    do
    {
      *v19 = 1;
      v19 += BytesPerRow;
      --Height;
    }

    while (Height);
  }

LABEL_22:
  if (CVPixelBufferUnlockBaseAddress(buffer, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
LABEL_26:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v18;
}

+ (BOOL)preprocessForTap:(CGPoint)tap inSourceImageBuffer:(__CVBuffer *)buffer destinationImageBuffer:(__CVBuffer *)imageBuffer tapBuffer:(__CVBuffer *)tapBuffer scaler:(id)scaler
{
  y = tap.y;
  x = tap.x;
  scalerCopy = scaler;
  v14 = [self renderTap:tapBuffer inBuffer:{x, y}];
  if ((v14 & 1) == 0)
  {
    v20 = ft::GetOsLog(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[FTTapToBox preprocessForTap:inSourceImageBuffer:destinationImageBuffer:tapBuffer:scaler:];
    }

    goto LABEL_8;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v17 = CVPixelBufferGetWidth(imageBuffer);
  v18 = [scalerCopy scaleSourceBuffer:buffer toDestinationBuffer:imageBuffer sourceROI:0.0 destinationROI:{0.0, Width, Height, 0.0, 0.0, v17, CVPixelBufferGetHeight(imageBuffer)}];
  if ((v18 & 1) == 0)
  {
    v20 = ft::GetOsLog(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[FTTapToBox preprocessForTap:inSourceImageBuffer:destinationImageBuffer:tapBuffer:scaler:];
    }

LABEL_8:

    v19 = 0;
    goto LABEL_9;
  }

  v19 = 1;
LABEL_9:

  return v19;
}

+ ($7E6FF06E1E2A477A0598F669E6D2B004)postProcessNetworkOutput:(SEL)output
{
  v5 = *a4->var0;
  v6 = vcvtq_f64_f32(*(a4->var0 + 12));
  __asm { FMOV            V1.2D, #-0.5 }

  v11 = vmlaq_f64(vcvtq_f64_f32(*(a4->var0 + 4)), _Q1, v6);
  retstr->var0.origin = v11;
  retstr->var0.size = v6;
  v12 = v5;
  if (v5 < 0.9 && v12 >= 0.7)
  {
    y = v11.y;
    height = v6.height;
    x = v11.x;
    width = v6.width;
    v16 = v11.y;
    v17 = v6.height;
    if (CGRectGetMinX(*&v11.x) < 0.1)
    {
      v20.origin.x = x;
      v20.size.width = width;
      v20.origin.y = y;
      v20.size.height = height;
      if (CGRectGetMaxX(v20) > 0.9)
      {
        v21.origin.x = x;
        v21.size.width = width;
        v21.origin.y = y;
        v21.size.height = height;
        if (CGRectGetMinY(v21) < 0.1)
        {
          v22.origin.x = x;
          v22.size.width = width;
          v22.origin.y = y;
          v22.size.height = height;
          if (CGRectGetMaxY(v22) > 0.9)
          {
            v12 = 0.35;
          }
        }
      }
    }
  }

  retstr->var1 = v12;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 1;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0;
  *(self + 2) = &unk_285F8F2F0;
  *(self + 20) = 1;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  *(self + 8) = 0;
  *(self + 9) = &unk_285F8F2F0;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 40) = 1065353216;
  *(self + 44) = 1;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 27) = 0;
  *(self + 21) = &unk_285F8F338;
  return self;
}

+ (void)networkPath
{
  *buf = 136315138;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_24BC30000, log, OS_LOG_TYPE_ERROR, "Network not found: %s", buf, 0xCu);
}

@end