@interface GSAsset
- (BOOL)computeCentroids;
- (BOOL)computeCovariances:(id *)covariances;
- (BOOL)updateAtTimestepWithTVFile:(id)file atTimestep:(unsigned int)timestep error:(id *)error;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (CGColorSpace)cgColorSpace;
- (GSAsset)init;
- (GSAsset)initWithFile:(id)file forDevice:(id)device error:(id *)error;
- (__n128)defaultIntrinsics;
- (__n128)defaultViewMatrix;
- (__n128)modelMatrix;
- (apple3dgs)transform:(float32x4_t)transform error:(float32x4_t)error;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionJSON;
- (shared_ptr<apple3dgs::Asset>)impl;
- (uint64_t)setDefaultIntrinsics:(__n128)intrinsics;
- (uint64_t)setDefaultViewMatrix:(__n128)matrix;
- (uint64_t)setModelMatrix:(__n128)matrix;
- (void)setAlphas:(id)alphas;
- (void)setAlphas:(id)alphas withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset;
- (void)setCgColorSpace:(CGColorSpace *)space;
- (void)setCoords:(id)coords;
- (void)setCoords:(id)coords withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset;
- (void)setFeatures:(id)features;
- (void)setFeatures:(id)features withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset;
- (void)setImpl:(shared_ptr<apple3dgs::Asset>)impl;
- (void)setRots:(id)rots;
- (void)setRots:(id)rots withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset;
- (void)setScales:(id)scales;
- (void)setScales:(id)scales withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset;
@end

@implementation GSAsset

- (GSAsset)init
{
  v3.receiver = self;
  v3.super_class = GSAsset;
  [(GSAsset *)&v3 init];
  operator new();
}

- (GSAsset)initWithFile:(id)file forDevice:(id)device error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  deviceCopy = device;
  v10 = [(GSAsset *)self init];
  stringByRemovingPercentEncoding = [fileCopy stringByRemovingPercentEncoding];
  if (!stringByRemovingPercentEncoding)
  {
    stringByRemovingPercentEncoding = fileCopy;
  }

  [(GSAsset *)v10 setPath:stringByRemovingPercentEncoding];
  uTF8String = [stringByRemovingPercentEncoding UTF8String];
  memset(&v28, 0, sizeof(v28));
  v13 = (uTF8String - 1);
  do
  {
    v14 = v13->__r_.__value_.__s.__data_[1];
    v13 = (v13 + 1);
  }

  while (v14);
  std::string::append[abi:ne200100]<char const*,0>(&v28.__pn_, uTF8String, v13);
  v15 = std::__fs::filesystem::path::__extension(&v28);
  if (v15.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst[0].__r_.__value_.__s + 23) = v15.__size_;
  if (v15.__size_)
  {
    memmove(__dst, v15.__data_, v15.__size_);
  }

  __dst[0].__r_.__value_.__s.__data_[v15.__size_] = 0;
  *__p = *&__dst[0].__r_.__value_.__l.__data_;
  *&v26 = *(&__dst[0].__r_.__value_.__l + 2);
  memset(__dst, 0, 24);
  std::string::append[abi:ne200100]<char const*,0>(__dst, ".ply", "");
  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16.__data_ = __dst;
  }

  else
  {
    v16.__data_ = __dst[0].__r_.__value_.__r.__words[0];
  }

  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16.__size_ = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16.__size_ = __dst[0].__r_.__value_.__l.__size_;
  }

  v17 = std::__fs::filesystem::path::__compare(__p, v16);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
    if ((SBYTE7(v26) & 0x80000000) == 0)
    {
LABEL_19:
      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else if ((SBYTE7(v26) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(__p[0]);
  if (v17)
  {
LABEL_20:
    v18 = std::__fs::filesystem::path::__extension(&v28);
    if (v18.__size_ > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v18.__size_ >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v18.__size_;
    if (v18.__size_)
    {
      memmove(__dst, v18.__data_, v18.__size_);
    }

    __dst[0].__r_.__value_.__s.__data_[v18.__size_] = 0;
    *__p = *&__dst[0].__r_.__value_.__l.__data_;
    *&v26 = *(&__dst[0].__r_.__value_.__l + 2);
    memset(__dst, 0, 24);
    std::string::append[abi:ne200100]<char const*,0>(__dst, ".tv", "");
    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19.__data_ = __dst;
    }

    else
    {
      v19.__data_ = __dst[0].__r_.__value_.__r.__words[0];
    }

    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19.__size_ = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19.__size_ = __dst[0].__r_.__value_.__l.__size_;
    }

    v20 = std::__fs::filesystem::path::__compare(__p, v19);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[0].__r_.__value_.__l.__data_);
      if ((SBYTE7(v26) & 0x80000000) == 0)
      {
LABEL_38:
        if (v20)
        {
          goto LABEL_47;
        }

LABEL_42:
        *__p = xmmword_247477B70;
        v26 = xmmword_247477B80;
        v27 = 27;
        apple3dgs::loadTv(&v28, 0, deviceCopy, error, __dst);
        if (v30)
        {
          goto LABEL_43;
        }

        goto LABEL_47;
      }
    }

    else if ((SBYTE7(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(__p[0]);
    if (v20)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

LABEL_26:
  *__p = xmmword_247477B70;
  v26 = xmmword_247477B80;
  v27 = 27;
  apple3dgs::loadPly(&v28, deviceCopy, error, __dst);
  if (v30)
  {
LABEL_43:
    apple3dgs::Asset::operator=(v10->_impl.__ptr_, __dst);
    if (v30 == 1)
    {
      apple3dgs::Asset::~Asset(__dst);
    }

    apple3dgs::Asset::ComputeCovariance(v10->_impl.__ptr_, 0, error);
    apple3dgs::Asset::ComputeCentroid(v10->_impl.__ptr_, v21);
    v22 = v10;
    if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_47:
  v22 = 0;
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_49:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)updateAtTimestepWithTVFile:(id)file atTimestep:(unsigned int)timestep error:(id *)error
{
  fileCopy = file;
  stringByRemovingPercentEncoding = [fileCopy stringByRemovingPercentEncoding];
  if (!stringByRemovingPercentEncoding)
  {
    stringByRemovingPercentEncoding = fileCopy;
  }

  uTF8String = [stringByRemovingPercentEncoding UTF8String];
  memset(&__p, 0, sizeof(__p));
  v11 = (uTF8String - 1);
  do
  {
    v12 = v11->__r_.__value_.__s.__data_[1];
    v11 = (v11 + 1);
  }

  while (v12);
  std::string::append[abi:ne200100]<char const*,0>(&__p, uTF8String, v11);
  v13 = apple3dgs::updateFromTv(self->_impl.__ptr_, &__p, timestep, error);
  if (v13)
  {
    apple3dgs::Asset::ComputeCovariance(self->_impl.__ptr_, 0, error);
    apple3dgs::Asset::ComputeCentroid(self->_impl.__ptr_, v14);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

- (BOOL)computeCovariances:(id *)covariances
{
  v4 = apple3dgs::Asset::ComputeCovariance(self->_impl.__ptr_, 0, covariances);
  if (v4)
  {
    ptr = self->_impl.__ptr_;

    LOBYTE(v4) = apple3dgs::Asset::ComputeCentroid(ptr, v5);
  }

  return v4;
}

- (BOOL)computeCentroids
{
  v3 = objc_autoreleasePoolPush();
  LOBYTE(self) = apple3dgs::Asset::ComputeCentroid(self->_impl.__ptr_, v4);
  objc_autoreleasePoolPop(v3);
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GSAsset);
  [(GSAsset *)self impl];
  v5 = v11;
  [(GSAsset *)v4 impl];
  apple3dgs::Asset::operator=(v9, v5);
  v6 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v4;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (error)
  {
    *error = 0;
  }

  v7 = objc_autoreleasePoolPush();
  if (apple3dgs::Asset::Valid(self->_impl.__ptr_, v8))
  {
    ptr = self->_impl.__ptr_;
    [lCopy path];
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    memset(&__p, 0, sizeof(__p));
    v11 = (uTF8String - 1);
    do
    {
      v12 = v11->__r_.__value_.__s.__data_[1];
      v11 = (v11 + 1);
    }

    while (v12);
    std::string::append[abi:ne200100]<char const*,0>(&__p, uTF8String, v11);
    apple3dgs::savePly(&__p, ptr, v13);
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Gaussian params are invalid."];
  v15 = _gs_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
    *(__p.__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&dword_2473FC000, v15, OS_LOG_TYPE_ERROR, "[A3DGSR /GSAsset.mm:114] %@", &__p, 0xCu);
  }

  v16 = MEMORY[0x277CCA9B8];
  v18 = apple3dgs::ErrorDomain(v17);
  v25 = *MEMORY[0x277CCA450];
  v26[0] = v14;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v20 = [v16 errorWithDomain:v18 code:-3 userInfo:v19];

  objc_autoreleasePoolPop(v7);
  if (error && v20)
  {
    v21 = v20;
    *error = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

- (apple3dgs)transform:(float32x4_t)transform error:(float32x4_t)error
{
  v7 = *(self + 136);
  v9[0] = a2;
  v9[1] = transform;
  v9[2] = error;
  v9[3] = a5;
  return apple3dgs::Asset::Transform(v7, 0, v9, a7);
}

- (id)description
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  apple3dgs::operator<<(&v14, self->_impl.__ptr_);
  v3 = MEMORY[0x277CCACA8];
  if ((v24 & 0x10) != 0)
  {
    v5 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v5 = v20;
    }

    v6 = v19;
    v4 = v5 - v19;
    if (v5 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v12) = 0;
      goto LABEL_12;
    }

    v6 = v17;
    v4 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v4;
  if (v4)
  {
    memmove(__p, v6, v4);
  }

LABEL_12:
  *(__p + v4) = 0;
  if (v12 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = [v3 stringWithUTF8String:{v7, __p[0], __p[1], v12}];
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v13[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v9;
  v15 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v16);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A1F80](&v25);

  return v8;
}

- (id)descriptionJSON
{
  [*(self->_impl.__ptr_ + 15) UUIDString];
  v5 = 0;
  v6 = 0;
  v3 = [objc_claimAutoreleasedReturnValue() cStringUsingEncoding:4];
  LOBYTE(v4[0]) = 0;
  v4[1] = 0;
  nlohmann::json_abi_v3_11_2::detail::external_constructor<(nlohmann::json_abi_v3_11_2::detail::value_t)3>::construct<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,char const*,0>(v4);
}

- (void)setCoords:(id)coords
{
  coordsCopy = coords;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v5);
  v10 = coordsCopy;
  contents = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 16);
  *(ptr + 16) = v10;

  *(ptr + 17) = contents;
  *(ptr + 18) = 30;
  *(ptr + 19) = MinimumStride;
  *(ptr + 20) = 0;
}

- (void)setCoords:(id)coords withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset
{
  coordsCopy = coords;
  contents = [coordsCopy contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 16);
  *(ptr + 16) = coordsCopy;

  *(ptr + 17) = contents;
  *(ptr + 18) = format;
  *(ptr + 19) = stride;
  *(ptr + 20) = offset;
}

- (void)setFeatures:(id)features
{
  featuresCopy = features;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v5);
  v10 = featuresCopy;
  contents = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 21);
  *(ptr + 21) = v10;

  *(ptr + 22) = contents;
  *(ptr + 23) = 30;
  *(ptr + 24) = MinimumStride;
  *(ptr + 25) = 0;
}

- (void)setFeatures:(id)features withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset
{
  featuresCopy = features;
  contents = [featuresCopy contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 21);
  *(ptr + 21) = featuresCopy;

  *(ptr + 22) = contents;
  *(ptr + 23) = format;
  *(ptr + 24) = stride;
  *(ptr + 25) = offset;
}

- (void)setAlphas:(id)alphas
{
  alphasCopy = alphas;
  MinimumStride = apple3dgs::GetMinimumStride(0x1C, v5);
  v10 = alphasCopy;
  contents = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 26);
  *(ptr + 26) = v10;

  *(ptr + 27) = contents;
  *(ptr + 28) = 28;
  *(ptr + 29) = MinimumStride;
  *(ptr + 30) = 0;
}

- (void)setAlphas:(id)alphas withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset
{
  alphasCopy = alphas;
  contents = [alphasCopy contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 26);
  *(ptr + 26) = alphasCopy;

  *(ptr + 27) = contents;
  *(ptr + 28) = format;
  *(ptr + 29) = stride;
  *(ptr + 30) = offset;
}

- (void)setScales:(id)scales
{
  scalesCopy = scales;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v5);
  v10 = scalesCopy;
  contents = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 31);
  *(ptr + 31) = v10;

  *(ptr + 32) = contents;
  *(ptr + 33) = 30;
  *(ptr + 34) = MinimumStride;
  *(ptr + 35) = 0;
}

- (void)setScales:(id)scales withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset
{
  scalesCopy = scales;
  contents = [scalesCopy contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 31);
  *(ptr + 31) = scalesCopy;

  *(ptr + 32) = contents;
  *(ptr + 33) = format;
  *(ptr + 34) = stride;
  *(ptr + 35) = offset;
}

- (void)setRots:(id)rots
{
  rotsCopy = rots;
  MinimumStride = apple3dgs::GetMinimumStride(0x1F, v5);
  v10 = rotsCopy;
  contents = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 36);
  *(ptr + 36) = v10;

  *(ptr + 37) = contents;
  *(ptr + 38) = 31;
  *(ptr + 39) = MinimumStride;
  *(ptr + 40) = 0;
}

- (void)setRots:(id)rots withFormat:(unint64_t)format stride:(unint64_t)stride offset:(unint64_t)offset
{
  rotsCopy = rots;
  contents = [rotsCopy contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 36);
  *(ptr + 36) = rotsCopy;

  *(ptr + 37) = contents;
  *(ptr + 38) = format;
  *(ptr + 39) = stride;
  *(ptr + 40) = offset;
}

- (uint64_t)setModelMatrix:(__n128)matrix
{
  v5 = *(result + 136);
  v5[25] = a2;
  v5[26] = matrix;
  v5[27] = a4;
  v5[28] = a5;
  return result;
}

- (__n128)modelMatrix
{
  v1 = *(self + 136);
  result = *(v1 + 400);
  v3 = *(v1 + 416);
  v4 = *(v1 + 432);
  v5 = *(v1 + 448);
  return result;
}

- (uint64_t)setDefaultViewMatrix:(__n128)matrix
{
  v5 = *(result + 136);
  v5[21] = a2;
  v5[22] = matrix;
  v5[23] = a4;
  v5[24] = a5;
  return result;
}

- (__n128)defaultViewMatrix
{
  v1 = *(self + 136);
  result = *(v1 + 336);
  v3 = *(v1 + 352);
  v4 = *(v1 + 368);
  v5 = *(v1 + 384);
  return result;
}

- (uint64_t)setDefaultIntrinsics:(__n128)intrinsics
{
  v4 = *(result + 136);
  v4[29] = a2;
  v4[30] = intrinsics;
  v4[31] = a4;
  return result;
}

- (__n128)defaultIntrinsics
{
  v1 = *(self + 136);
  result = *(v1 + 464);
  v3 = *(v1 + 480);
  v4 = *(v1 + 496);
  return result;
}

- (void)setCgColorSpace:(CGColorSpace *)space
{
  ptr = self->_impl.__ptr_;
  v4 = *(ptr + 81);
  if (v4 != space)
  {
    CGColorSpaceRelease(v4);
    *(ptr + 81) = space;
    CGColorSpaceRetain(space);
    *(ptr + 139) = apple3dgs::CGColorSpaceGetTransferFunction(*(ptr + 81), v6);
  }
}

- (CGColorSpace)cgColorSpace
{
  result = CGColorSpaceRetain(*(self->_impl.__ptr_ + 81));
  if (result)
  {
    v3 = result;
    CFAutorelease(result);
    return v3;
  }

  return result;
}

- (shared_ptr<apple3dgs::Asset>)impl
{
  cntrl = self->_impl.__cntrl_;
  *v2 = self->_impl.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setImpl:(shared_ptr<apple3dgs::Asset>)impl
{
  v4 = *impl.__ptr_;
  v3 = *(impl.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_impl.__cntrl_;
  self->_impl.__ptr_ = v4;
  self->_impl.__cntrl_ = v3;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);

    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (id).cxx_construct
{
  v3 = MTLCreateSystemDefaultDevice();
  MetalContext::MetalContext(&self->context, v3, 0);

  self->_impl.__ptr_ = 0;
  self->_impl.__cntrl_ = 0;
  return self;
}

@end