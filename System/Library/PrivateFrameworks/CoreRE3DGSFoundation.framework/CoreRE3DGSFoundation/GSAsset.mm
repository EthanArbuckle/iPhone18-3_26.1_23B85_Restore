@interface GSAsset
- (BOOL)computeCentroids;
- (BOOL)computeCovariances:(id *)a3;
- (BOOL)updateAtTimestepWithTVFile:(id)a3 atTimestep:(unsigned int)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (CGColorSpace)cgColorSpace;
- (GSAsset)init;
- (GSAsset)initWithFile:(id)a3 forDevice:(id)a4 error:(id *)a5;
- (__n128)defaultIntrinsics;
- (__n128)defaultViewMatrix;
- (__n128)modelMatrix;
- (apple3dgs)transform:(float32x4_t)a3 error:(float32x4_t)a4;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionJSON;
- (shared_ptr<apple3dgs::Asset>)impl;
- (uint64_t)setDefaultIntrinsics:(__n128)a3;
- (uint64_t)setDefaultViewMatrix:(__n128)a3;
- (uint64_t)setModelMatrix:(__n128)a3;
- (void)setAlphas:(id)a3;
- (void)setAlphas:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6;
- (void)setCgColorSpace:(CGColorSpace *)a3;
- (void)setCoords:(id)a3;
- (void)setCoords:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6;
- (void)setFeatures:(id)a3;
- (void)setFeatures:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6;
- (void)setImpl:(shared_ptr<apple3dgs::Asset>)a3;
- (void)setRots:(id)a3;
- (void)setRots:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6;
- (void)setScales:(id)a3;
- (void)setScales:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6;
@end

@implementation GSAsset

- (GSAsset)init
{
  v3.receiver = self;
  v3.super_class = GSAsset;
  [(GSAsset *)&v3 init];
  operator new();
}

- (GSAsset)initWithFile:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(GSAsset *)self init];
  v11 = [v8 stringByRemovingPercentEncoding];
  if (!v11)
  {
    v11 = v8;
  }

  [(GSAsset *)v10 setPath:v11];
  v12 = [v11 UTF8String];
  memset(&v28, 0, sizeof(v28));
  v13 = (v12 - 1);
  do
  {
    v14 = v13->__r_.__value_.__s.__data_[1];
    v13 = (v13 + 1);
  }

  while (v14);
  std::string::append[abi:ne200100]<char const*,0>(&v28.__pn_, v12, v13);
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
        apple3dgs::loadTv(&v28, 0, v9, a5, __dst);
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
  apple3dgs::loadPly(&v28, v9, a5, __dst);
  if (v30)
  {
LABEL_43:
    apple3dgs::Asset::operator=(v10->_impl.__ptr_, __dst);
    if (v30 == 1)
    {
      apple3dgs::Asset::~Asset(__dst);
    }

    apple3dgs::Asset::ComputeCovariance(v10->_impl.__ptr_, 0, a5);
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

- (BOOL)updateAtTimestepWithTVFile:(id)a3 atTimestep:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 stringByRemovingPercentEncoding];
  if (!v9)
  {
    v9 = v8;
  }

  v10 = [v9 UTF8String];
  memset(&__p, 0, sizeof(__p));
  v11 = (v10 - 1);
  do
  {
    v12 = v11->__r_.__value_.__s.__data_[1];
    v11 = (v11 + 1);
  }

  while (v12);
  std::string::append[abi:ne200100]<char const*,0>(&__p, v10, v11);
  v13 = apple3dgs::updateFromTv(self->_impl.__ptr_, &__p, a4, a5);
  if (v13)
  {
    apple3dgs::Asset::ComputeCovariance(self->_impl.__ptr_, 0, a5);
    apple3dgs::Asset::ComputeCentroid(self->_impl.__ptr_, v14);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

- (BOOL)computeCovariances:(id *)a3
{
  v4 = apple3dgs::Asset::ComputeCovariance(self->_impl.__ptr_, 0, a3);
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  if (apple3dgs::Asset::Valid(self->_impl.__ptr_, v8))
  {
    ptr = self->_impl.__ptr_;
    [v6 path];
    v10 = [objc_claimAutoreleasedReturnValue() UTF8String];
    memset(&__p, 0, sizeof(__p));
    v11 = (v10 - 1);
    do
    {
      v12 = v11->__r_.__value_.__s.__data_[1];
      v11 = (v11 + 1);
    }

    while (v12);
    std::string::append[abi:ne200100]<char const*,0>(&__p, v10, v11);
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
  if (a4 && v20)
  {
    v21 = v20;
    *a4 = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

- (apple3dgs)transform:(float32x4_t)a3 error:(float32x4_t)a4
{
  v7 = *(a1 + 136);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
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

- (void)setCoords:(id)a3
{
  v4 = a3;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v5);
  v10 = v4;
  v7 = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 16);
  *(ptr + 16) = v10;

  *(ptr + 17) = v7;
  *(ptr + 18) = 30;
  *(ptr + 19) = MinimumStride;
  *(ptr + 20) = 0;
}

- (void)setCoords:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6
{
  v13 = a3;
  v10 = [v13 contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 16);
  *(ptr + 16) = v13;

  *(ptr + 17) = v10;
  *(ptr + 18) = a4;
  *(ptr + 19) = a5;
  *(ptr + 20) = a6;
}

- (void)setFeatures:(id)a3
{
  v4 = a3;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v5);
  v10 = v4;
  v7 = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 21);
  *(ptr + 21) = v10;

  *(ptr + 22) = v7;
  *(ptr + 23) = 30;
  *(ptr + 24) = MinimumStride;
  *(ptr + 25) = 0;
}

- (void)setFeatures:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6
{
  v13 = a3;
  v10 = [v13 contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 21);
  *(ptr + 21) = v13;

  *(ptr + 22) = v10;
  *(ptr + 23) = a4;
  *(ptr + 24) = a5;
  *(ptr + 25) = a6;
}

- (void)setAlphas:(id)a3
{
  v4 = a3;
  MinimumStride = apple3dgs::GetMinimumStride(0x1C, v5);
  v10 = v4;
  v7 = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 26);
  *(ptr + 26) = v10;

  *(ptr + 27) = v7;
  *(ptr + 28) = 28;
  *(ptr + 29) = MinimumStride;
  *(ptr + 30) = 0;
}

- (void)setAlphas:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6
{
  v13 = a3;
  v10 = [v13 contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 26);
  *(ptr + 26) = v13;

  *(ptr + 27) = v10;
  *(ptr + 28) = a4;
  *(ptr + 29) = a5;
  *(ptr + 30) = a6;
}

- (void)setScales:(id)a3
{
  v4 = a3;
  MinimumStride = apple3dgs::GetMinimumStride(0x1E, v5);
  v10 = v4;
  v7 = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 31);
  *(ptr + 31) = v10;

  *(ptr + 32) = v7;
  *(ptr + 33) = 30;
  *(ptr + 34) = MinimumStride;
  *(ptr + 35) = 0;
}

- (void)setScales:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6
{
  v13 = a3;
  v10 = [v13 contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 31);
  *(ptr + 31) = v13;

  *(ptr + 32) = v10;
  *(ptr + 33) = a4;
  *(ptr + 34) = a5;
  *(ptr + 35) = a6;
}

- (void)setRots:(id)a3
{
  v4 = a3;
  MinimumStride = apple3dgs::GetMinimumStride(0x1F, v5);
  v10 = v4;
  v7 = [v10 contents];

  ptr = self->_impl.__ptr_;
  v9 = *(ptr + 36);
  *(ptr + 36) = v10;

  *(ptr + 37) = v7;
  *(ptr + 38) = 31;
  *(ptr + 39) = MinimumStride;
  *(ptr + 40) = 0;
}

- (void)setRots:(id)a3 withFormat:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6
{
  v13 = a3;
  v10 = [v13 contents];
  ptr = self->_impl.__ptr_;
  v12 = *(ptr + 36);
  *(ptr + 36) = v13;

  *(ptr + 37) = v10;
  *(ptr + 38) = a4;
  *(ptr + 39) = a5;
  *(ptr + 40) = a6;
}

- (uint64_t)setModelMatrix:(__n128)a3
{
  v5 = *(result + 136);
  v5[25] = a2;
  v5[26] = a3;
  v5[27] = a4;
  v5[28] = a5;
  return result;
}

- (__n128)modelMatrix
{
  v1 = *(a1 + 136);
  result = *(v1 + 400);
  v3 = *(v1 + 416);
  v4 = *(v1 + 432);
  v5 = *(v1 + 448);
  return result;
}

- (uint64_t)setDefaultViewMatrix:(__n128)a3
{
  v5 = *(result + 136);
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = a4;
  v5[24] = a5;
  return result;
}

- (__n128)defaultViewMatrix
{
  v1 = *(a1 + 136);
  result = *(v1 + 336);
  v3 = *(v1 + 352);
  v4 = *(v1 + 368);
  v5 = *(v1 + 384);
  return result;
}

- (uint64_t)setDefaultIntrinsics:(__n128)a3
{
  v4 = *(result + 136);
  v4[29] = a2;
  v4[30] = a3;
  v4[31] = a4;
  return result;
}

- (__n128)defaultIntrinsics
{
  v1 = *(a1 + 136);
  result = *(v1 + 464);
  v3 = *(v1 + 480);
  v4 = *(v1 + 496);
  return result;
}

- (void)setCgColorSpace:(CGColorSpace *)a3
{
  ptr = self->_impl.__ptr_;
  v4 = *(ptr + 81);
  if (v4 != a3)
  {
    CGColorSpaceRelease(v4);
    *(ptr + 81) = a3;
    CGColorSpaceRetain(a3);
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

- (void)setImpl:(shared_ptr<apple3dgs::Asset>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
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