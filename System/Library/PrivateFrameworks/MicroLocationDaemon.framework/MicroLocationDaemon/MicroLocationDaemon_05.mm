void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,ULPointLocation>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULPointLocation>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULPointLocation>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULPointLocation>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t ULHomeSlamModel::ULHomeSlamModel(uint64_t a1, const ULTrajectoryPointCloud *a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t *a6)
{
  v11 = std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100](a1, a2);
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  std::vector<ULROI>::__init_with_size[abi:ne200100]<ULROI*,ULROI*>(v11 + 40, *a3, a3[1], (a3[1] - *a3) >> 5);
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 64, a4);
  *(a1 + 104) = *(a4 + 40);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 136) = *(a5 + 2);
    *(a1 + 120) = v12;
  }

  v13 = *(a5 + 24);
  v14 = *(a5 + 40);
  v15 = *(a5 + 14);
  *(a1 + 184) = 0;
  *(a1 + 176) = v15;
  *(a1 + 160) = v14;
  *(a1 + 144) = v13;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  std::vector<ULPositionedImage>::__init_with_size[abi:ne200100]<ULPositionedImage*,ULPositionedImage*>(a1 + 184, *a6, a6[1], 0xEEEEEEEEEEEEEEEFLL * ((a6[1] - *a6) >> 4));
  return a1;
}

void sub_25903E42C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v2 + 64);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v2);
  _Unwind_Resume(a1);
}

void ULHomeSlamModel::createEmptyHomeSlamModel(uint64_t a1@<X8>)
{
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v6, v8);
    *__p = *v8;
    *&__p[16] = *&v8[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v8);
    *__p = *v8;
    *&__p[15] = *&v8[15];
    __p[23] = v8[23];
  }

  v14 = 4;
  v15 = 0u;
  v16 = 0u;
  v10[0] = 0;
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(v8);
  memset(v7, 0, sizeof(v7));
  ULHomeSlamModel::ULHomeSlamModel(a1, v10, v9, v8, __p, v7);
  v17 = v7;
  std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v8);
  *v8 = v9;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](v8);
  if (v12 == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&v11, 0);
    *v8 = v10;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](v8);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

BOOL ULHomeSlamModel::isGeoWorkMode(uint64_t a1, uint64_t *a2)
{
  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULForceHomeSlamClusteringMode"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v9 = v8;

  if ((v9 & 1) != 0 || *(a1 + 32) != 1)
  {
    return 0;
  }

  ULTrajectoryPointCloud::getAllPoints(a1, &__p);
  v11 = __p;
  v10 = v29;
  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMinTrajectoryPoints"];
  v15 = [v13 objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = [v15 unsignedLongValue];
  }

  else
  {
    v16 = [&unk_286A716A0 unsignedLongValue];
  }

  v19 = v16;

  if (0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 2) <= v19)
  {
    v17 = 0;
  }

  else
  {
    v21 = *a2;
    v20 = a2[1];
    v22 = +[ULDefaultsSingleton shared];
    v23 = [v22 defaultsDictionary];

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMinROIs"];
    v25 = [v23 objectForKey:v24];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v26 = [v25 unsignedLongValue];
    }

    else
    {
      v26 = [&unk_286A71688 unsignedLongValue];
    }

    v27 = v26;

    v17 = (v20 - v21) >> 5 >= v27;
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_25903E94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULHomeSlamModel::toProtobuf(ULHomeSlamModel *this@<X0>, uint64_t a2@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  CLMicroLocationProto::HomeSlamModel::HomeSlamModel(a2);
  CLMicroLocationProto::ModelMetadata::ModelMetadata(v50);
  v4 = *(this + 36);
  if (!CLMicroLocationProto::ModelType_IsValid(v4))
  {
    __assert_rtn("set_modeltype", "microlocation.pb.h", 15074, "::CLMicroLocationProto::ModelType_IsValid(value)");
  }

  v52 = v4;
  v55 |= 3u;
  if (v51 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v51, this + 5);
  v53 = *(this + 148);
  v55 |= 0x3FCu;
  v54 = *(this + 164);
  *(a2 + 120) |= 8u;
  v5 = *(a2 + 64);
  if (!v5)
  {
    operator new();
  }

  CLMicroLocationProto::ModelMetadata::CopyFrom(v5, v50);
  if (*(this + 32) == 1)
  {
    ULTrajectoryPointCloud::getAllPoints(this, &v67);
    v6 = v67;
    v7 = v68;
    if (v67 != v68)
    {
      do
      {
        v8 = *v6;
        *&v46[12] = *(v6 + 12);
        *v46 = v8;
        CLMicroLocationProto::ULTrajectoryPoint::ULTrajectoryPoint(&__p);
        v61 |= 1u;
        v9 = v58;
        if (!v58)
        {
          operator new();
        }

        ULPointLocation::toProtobuf(v46, &v41);
        CLMicroLocationProto::ULPointLocation::CopyFrom(v9, &v41);
        CLMicroLocationProto::ULPointLocation::~ULPointLocation(&v41);
        v61 |= 2u;
        v10 = v59;
        if (!v59)
        {
          operator new();
        }

        ULPointMovement::toProtobuf(&v46[12], &v41);
        CLMicroLocationProto::ULPointMovement::CopyFrom(v10, &v41);
        CLMicroLocationProto::ULPointMovement::~ULPointMovement(&v41);
        v61 |= 4u;
        v11 = v60;
        if (!v60)
        {
          operator new();
        }

        ULPointMovement::toProtobuf(&v46[20], &v41);
        CLMicroLocationProto::ULPointMovement::CopyFrom(v11, &v41);
        CLMicroLocationProto::ULPointMovement::~ULPointMovement(&v41);
        v12 = *(a2 + 20);
        v13 = *(a2 + 16);
        if (v13 >= v12)
        {
          if (v12 == *(a2 + 24))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8));
            v12 = *(a2 + 20);
          }

          *(a2 + 20) = v12 + 1;
          wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ULTrajectoryPoint>::New();
        }

        v14 = *(a2 + 8);
        *(a2 + 16) = v13 + 1;
        CLMicroLocationProto::ULTrajectoryPoint::CopyFrom(*(v14 + 8 * v13), &__p);
        CLMicroLocationProto::ULTrajectoryPoint::~ULTrajectoryPoint(&__p);
        v6 = (v6 + 28);
      }

      while (v6 != v7);
      v6 = v67;
    }

    if (v6)
    {
      v68 = v6;
      operator delete(v6);
    }

    *(a2 + 120) |= 0x10u;
    v15 = *(a2 + 72);
    if (!v15)
    {
      operator new();
    }

    if ((*(this + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v41.var0 = ULTrajectoryPointCloud::getMapCenter(this);
    v41.var1 = v16;
    v41.var2 = v17;
    ULPointLocation::toProtobuf(&v41, &__p);
    CLMicroLocationProto::ULPointLocation::CopyFrom(v15, &__p);
    CLMicroLocationProto::ULPointLocation::~ULPointLocation(&__p);
    if ((*(this + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULTrajectoryPointCloud::getMapDimensions(this, &__p);
    v18 = __p;
    v19 = *(a2 + 120);
    *(a2 + 80) = *__p;
    *(a2 + 84) = *(v18 + 1);
    v20 = *(v18 + 2);
    *(a2 + 120) = v19 | 0xE0;
    *(a2 + 112) = v20;
    v58 = v18;
    operator delete(v18);
  }

  v21 = *(this + 5);
  for (i = *(this + 6); v21 != i; v21 += 32)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    std::vector<ULROIPoint>::__init_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(&v67, *v21, *(v21 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(v21 + 8) - *v21) >> 4));
    v70 = *(v21 + 24);
    CLMicroLocationProto::ULROI::ULROI(v46);
    v22 = v67;
    v23 = v68;
    while (v22 != v23)
    {
      v24 = *v22;
      LODWORD(v58) = v22[2];
      __p = v24;
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(&v59, (v22 + 4));
      CLMicroLocationProto::ULROIPoint::ULROIPoint(&v42);
      v45 |= 1u;
      v25 = v43;
      if (!v43)
      {
        operator new();
      }

      ULPointLocation::toProtobuf(&__p, &v41);
      CLMicroLocationProto::ULPointLocation::CopyFrom(v25, &v41);
      CLMicroLocationProto::ULPointLocation::~ULPointLocation(&v41);
      v45 |= 2u;
      v26 = v44;
      if (!v44)
      {
        operator new();
      }

      v56[0] = 0;
      v56[16] = 0;
      CLMicroLocationFingerprint::toProtobuf(&v59, v56, &v41);
      CLMicroLocationProto::Fingerprint::CopyFrom(v26, &v41);
      CLMicroLocationProto::Fingerprint::~Fingerprint(&v41);
      v27 = *&v46[20];
      v28 = *&v46[16];
      if (*&v46[16] >= *&v46[20])
      {
        if (*&v46[20] == *&v46[24])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v46[8]);
          v27 = *&v46[20];
        }

        *&v46[20] = v27 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ULROIPoint>::New();
      }

      ++*&v46[16];
      CLMicroLocationProto::ULROIPoint::CopyFrom(*(*&v46[8] + 8 * v28), &v42);
      CLMicroLocationProto::ULROIPoint::~ULROIPoint(&v42);
      *&v41.var0 = v66;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v41);
      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v63);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v62);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v59);
      v22 += 60;
    }

    v49 |= 2u;
    v48 = v70;
    v29 = *(a2 + 44);
    v30 = *(a2 + 40);
    if (v30 >= v29)
    {
      if (v29 == *(a2 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32));
        v29 = *(a2 + 44);
      }

      *(a2 + 44) = v29 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ULROI>::New();
    }

    v31 = *(a2 + 32);
    *(a2 + 40) = v30 + 1;
    CLMicroLocationProto::ULROI::CopyFrom(*(v31 + 8 * v30), v46);
    CLMicroLocationProto::ULROI::~ULROI(v46);
    __p = &v67;
    std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  *(a2 + 120) |= 4u;
  v32 = *(a2 + 56);
  if (!v32)
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::toProtobuf((this + 64), &__p);
  CLMicroLocationProto::anchorAppearancesVector::CopyFrom(v32, &__p);
  CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(&__p);
  v33 = *(this + 23);
  for (j = *(this + 24); v33 != j; v33 += 240)
  {
    v35 = *v33;
    LODWORD(v58) = *(v33 + 8);
    __p = v35;
    CLMicroLocationFingerprint::CLMicroLocationFingerprint(&v59, (v33 + 16));
    CLMicroLocationProto::ULPositionedImage::ULPositionedImage(v46);
    ULPointLocation::toProtobuf(&__p, &v41);
    v47 |= 1u;
    if (!*&v46[8])
    {
      operator new();
    }

    CLMicroLocationProto::ULPointLocation::CopyFrom(*&v46[8], &v41);
    CLMicroLocationProto::ULPointLocation::~ULPointLocation(&v41);
    LOBYTE(v67) = 0;
    LOBYTE(v69) = 0;
    CLMicroLocationFingerprint::toProtobuf(&v59, &v67, &v41);
    v47 |= 2u;
    if (!*&v46[16])
    {
      operator new();
    }

    CLMicroLocationProto::Fingerprint::CopyFrom(*&v46[16], &v41);
    CLMicroLocationProto::Fingerprint::~Fingerprint(&v41);
    v36 = *(a2 + 100);
    v37 = *(a2 + 96);
    if (v37 >= v36)
    {
      if (v36 == *(a2 + 104))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 88));
        v36 = *(a2 + 100);
      }

      *(a2 + 100) = v36 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ULPositionedImage>::New();
    }

    v38 = *(a2 + 88);
    *(a2 + 96) = v37 + 1;
    CLMicroLocationProto::ULPositionedImage::CopyFrom(*(v38 + 8 * v37), v46);
    CLMicroLocationProto::ULPositionedImage::~ULPositionedImage(v46);
    *&v41.var0 = v66;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v63);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v62);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v59);
  }

  CLMicroLocationProto::ModelMetadata::~ModelMetadata(v50);
  v39 = *MEMORY[0x277D85DE8];
}

void sub_25903F2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  MEMORY[0x259CA1F90](v40, 0x1081C40DCAC275BLL);
  CLMicroLocationProto::ModelMetadata::~ModelMetadata(&a39);
  CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(v39);
  _Unwind_Resume(a1);
}

void ULHomeSlamModel::fromProtobuf(ULPointLocation **this@<X0>, const ULPointLocation *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v128[3] = *MEMORY[0x277D85DE8];
  v110[0] = 0;
  v112 = 0;
  if ((~*(this + 30) & 0xF0) == 0)
  {
    v5 = this[9];
    if (!v5)
    {
      v5 = *(CLMicroLocationProto::HomeSlamModel::default_instance(0) + 72);
    }

    v121[0] = ULPointLocation::fromProtobuf(v5, a2);
    v121[1] = v6;
    v121[2] = v7;
    v122 = *(v3 + 10);
    v123 = *(v3 + 28);
    v99.__r_.__value_.__r.__words[0] = __PAIR64__(v6, v121[0]);
    LODWORD(v99.__r_.__value_.__r.__words[1]) = v7;
    HIDWORD(v99.__r_.__value_.__r.__words[1]) = ULSettings::get<ULSettings::HomeSlamMinimumBoxSize>();
    LODWORD(v99.__r_.__value_.__r.__words[2]) = ULSettings::get<ULSettings::HomeSlamMinimumBoxSize>();
    HIDWORD(v99.__r_.__value_.__r.__words[2]) = ULSettings::get<ULSettings::HomeSlamMinimumBoxSize>();
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamBoxCapacity"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 intValue];
    }

    else
    {
      v12 = [&unk_286A71670 intValue];
    }

    v13 = v12;

    ULTrajectoryPointCloud::ULTrajectoryPointCloud(&__str, v121, &v99, v13);
    std::optional<ULTrajectoryPointCloud>::operator=[abi:ne200100]<ULTrajectoryPointCloud,void>(v110, &__str);
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](v115, 0);
    v109[0] = &__str;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](v109);
    if (*(v3 + 4))
    {
      v14 = *(v3 + 1);
      v15 = *v14;
      v16 = *(*v14 + 8);
      if (!v16)
      {
        v16 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance(0) + 8);
      }

      v17 = ULPointLocation::fromProtobuf(v16, a2);
      v19 = v18;
      v21 = v20;
      v22 = *(v15 + 16);
      if (!v22)
      {
        v22 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance(0) + 16);
      }

      v23 = ULPointMovement::fromProtobuf(v22);
      v25 = v24;
      v26 = *(v15 + 24);
      if (!v26)
      {
        v26 = *(CLMicroLocationProto::ULTrajectoryPoint::default_instance(0) + 24);
      }

      v27 = ULPointMovement::fromProtobuf(v26);
      if (v112)
      {
        __str.__r_.__value_.__r.__words[0] = __PAIR64__(v19, LODWORD(v17));
        __str.__r_.__value_.__l.__size_ = __PAIR64__(LODWORD(v23), v21);
        __str.__r_.__value_.__r.__words[2] = __PAIR64__(LODWORD(v27), v25);
        LODWORD(v115[0]) = v28;
        ULTrajectoryPointCloud::addPoint();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  memset(v109, 0, sizeof(v109));
  v29 = *(v3 + 10);
  if (v29)
  {
    v30 = *(v3 + 4);
    v31 = &v30[v29];
    do
    {
      v32 = *v30;
      memset(&v99, 0, sizeof(v99));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = *(v32 + 8);
        v35 = 8 * v33;
        do
        {
          v36 = *v34;
          v37 = *(*v34 + 8);
          if (!v37)
          {
            v37 = *(CLMicroLocationProto::ULROIPoint::default_instance(0) + 8);
          }

          v39 = ULPointLocation::fromProtobuf(v37, a2);
          v41 = v40;
          v43 = v42;
          v44 = *(v36 + 16);
          if (!v44)
          {
            v44 = *(CLMicroLocationProto::ULROIPoint::default_instance(v38) + 16);
          }

          CLMicroLocationFingerprint::CLMicroLocationFingerprint(v121, v44);
          __str.__r_.__value_.__r.__words[0] = __PAIR64__(v41, LODWORD(v39));
          LODWORD(__str.__r_.__value_.__r.__words[1]) = v43;
          CLMicroLocationFingerprint::CLMicroLocationFingerprint(&__str.__r_.__value_.__r.__words[2], v121);
          size = v99.__r_.__value_.__l.__size_;
          if (v99.__r_.__value_.__l.__size_ >= v99.__r_.__value_.__r.__words[2])
          {
            v47 = std::vector<ULROIPoint>::__emplace_back_slow_path<ULROIPoint const&>(&v99, &__str);
          }

          else
          {
            v46 = __str.__r_.__value_.__r.__words[0];
            *(v99.__r_.__value_.__l.__size_ + 8) = __str.__r_.__value_.__r.__words[1];
            *size = v46;
            CLMicroLocationFingerprint::CLMicroLocationFingerprint((size + 2), &__str.__r_.__value_.__r.__words[2]);
            v47 = (size + 30);
          }

          v99.__r_.__value_.__l.__size_ = v47;
          v96 = v120;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v96);
          if (__p)
          {
            v119 = __p;
            operator delete(__p);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v117);
          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v116);
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&__str.__r_.__value_.__r.__words[2]);
          __str.__r_.__value_.__r.__words[0] = v128;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__str);
          if (v126)
          {
            v127 = v126;
            operator delete(v126);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v125);
          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v124);
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v121);
          ++v34;
          v35 -= 8;
        }

        while (v35);
      }

      v100 = *(v32 + 32);
      std::vector<ULROI>::push_back[abi:ne200100](v109, &v99);
      __str.__r_.__value_.__r.__words[0] = &v99;
      std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&__str);
      ++v30;
    }

    while (v30 != v31);
  }

  memset(&v99, 0, sizeof(v99));
  v100 = 4;
  if ((*(v3 + 120) & 8) != 0)
  {
    v48 = *(v3 + 8);
    if (!v48)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v48 = this[8];
    }

    if (LOBYTE(v48[4].var2))
    {
      v49 = *(v3 + 8);
      if (!v49)
      {
        v49 = *(CLMicroLocationProto::HomeSlamModel::default_instance(this) + 64);
      }

      v50 = *(v49 + 8);
      if (*(v50 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v50, *(v50 + 1));
      }

      else
      {
        v51 = *v50;
        __str.__r_.__value_.__r.__words[2] = *(v50 + 2);
        *&__str.__r_.__value_.__l.__data_ = v51;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "0");
    }

    this = std::string::operator=(&v99, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v52 = *(v3 + 8);
    v53 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v53 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v53[4].var2) & 2) != 0)
    {
      v55 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v55 = this[8];
        v52 = *(v3 + 8);
      }

      var1_low = LODWORD(v55[1].var1);
    }

    else
    {
      var1_low = 4;
    }

    v100 = var1_low;
    v56 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v56 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v56[4].var2) & 4) != 0)
    {
      v58 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v58 = this[8];
        v52 = *(v3 + 8);
      }

      var2 = v58[1].var2;
    }

    else
    {
      var2 = 0.0;
    }

    v101 = var2;
    v59 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v59 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v59[4].var2) & 8) != 0)
    {
      v61 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v61 = this[8];
        v52 = *(v3 + 8);
      }

      var0 = v61[2].var0;
    }

    else
    {
      var0 = 0.0;
    }

    v102 = var0;
    v62 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v62 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v62[4].var2) & 0x10) != 0)
    {
      v64 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v64 = this[8];
        v52 = *(v3 + 8);
      }

      var1 = v64[2].var1;
    }

    else
    {
      var1 = 0.0;
    }

    v103 = var1;
    v65 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v65 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v65[4].var2) & 0x20) != 0)
    {
      v67 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v67 = this[8];
        v52 = *(v3 + 8);
      }

      v66 = v67[2].var2;
    }

    else
    {
      v66 = 0.0;
    }

    v104 = v66;
    v68 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v68 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v68[4].var2) & 0x40) != 0)
    {
      v70 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v70 = this[8];
        v52 = *(v3 + 8);
      }

      v69 = v70[3].var0;
    }

    else
    {
      v69 = 0.0;
    }

    v105 = v69;
    v71 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v71 = this[8];
      v52 = *(v3 + 8);
    }

    if ((LOBYTE(v71[4].var2) & 0x80) != 0)
    {
      v73 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v73 = this[8];
        v52 = *(v3 + 8);
      }

      v72 = v73[3].var1;
    }

    else
    {
      v72 = 0.0;
    }

    v106 = v72;
    v74 = v52;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v74 = this[8];
      v52 = *(v3 + 8);
    }

    if (BYTE1(v74[4].var2))
    {
      v76 = v52;
      if (!v52)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v76 = this[8];
        v52 = *(v3 + 8);
      }

      v75 = v76[3].var2;
    }

    else
    {
      v75 = 0.0;
    }

    v107 = v75;
    if (!v52)
    {
      this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
      v52 = this[8];
    }

    if ((BYTE1(v52[4].var2) & 2) != 0)
    {
      v78 = *(v3 + 8);
      if (!v78)
      {
        this = CLMicroLocationProto::HomeSlamModel::default_instance(this);
        v78 = this[8];
      }

      v77 = v78[4].var0;
    }

    else
    {
      v77 = 0.0;
    }

    v108 = v77;
  }

  v96 = 0;
  v97 = 0;
  v98 = 0;
  v79 = *(v3 + 24);
  if (v79)
  {
    v80 = *(v3 + 11);
    v81 = 8 * v79;
    do
    {
      v82 = *v80;
      v83 = *(*v80 + 8);
      if (!v83)
      {
        v83 = *(CLMicroLocationProto::ULPositionedImage::default_instance(0) + 8);
      }

      v85 = ULPointLocation::fromProtobuf(v83, a2);
      v87 = v86;
      v89 = v88;
      v90 = *(v82 + 16);
      if (!v90)
      {
        v90 = *(CLMicroLocationProto::ULPositionedImage::default_instance(v84) + 16);
      }

      CLMicroLocationFingerprint::CLMicroLocationFingerprint(v121, v90);
      __str.__r_.__value_.__r.__words[0] = __PAIR64__(v87, LODWORD(v85));
      LODWORD(__str.__r_.__value_.__r.__words[1]) = v89;
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(&__str.__r_.__value_.__r.__words[2], v121);
      v91 = v97;
      if (v97 >= v98)
      {
        v93 = std::vector<ULPositionedImage>::__emplace_back_slow_path<ULPositionedImage const&>(&v96, &__str);
      }

      else
      {
        v92 = __str.__r_.__value_.__r.__words[0];
        *(v97 + 8) = __str.__r_.__value_.__r.__words[1];
        *v91 = v92;
        CLMicroLocationFingerprint::CLMicroLocationFingerprint((v91 + 2), &__str.__r_.__value_.__r.__words[2]);
        v93 = (v91 + 30);
      }

      v97 = v93;
      v113 = v120;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v113);
      if (__p)
      {
        v119 = __p;
        operator delete(__p);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v117);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v116);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&__str.__r_.__value_.__r.__words[2]);
      __str.__r_.__value_.__r.__words[0] = v128;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__str);
      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v125);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v124);
      this = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v121);
      ++v80;
      v81 -= 8;
    }

    while (v81);
  }

  v94 = *(v3 + 7);
  if (!v94)
  {
    v94 = *(CLMicroLocationProto::HomeSlamModel::default_instance(this) + 56);
  }

  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(&__str, v94);
  ULHomeSlamModel::ULHomeSlamModel(a3, v110, v109, &__str, &v99, &v96);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&__str);
  __str.__r_.__value_.__r.__words[0] = &v96;
  std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v109;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (v112 == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&v111, 0);
    __str.__r_.__value_.__r.__words[0] = v110;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

  v95 = *MEMORY[0x277D85DE8];
}

void sub_25903FDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  std::optional<ULTrajectoryPointCloud>::~optional(va);
  _Unwind_Resume(a1);
}

float ULSettings::get<ULSettings::HomeSlamMinimumBoxSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMinimumBoxSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A71670 floatValue];
  }

  v5 = v4;

  return v5;
}

ULTrajectoryPointCloud *std::optional<ULTrajectoryPointCloud>::operator=[abi:ne200100]<ULTrajectoryPointCloud,void>(ULTrajectoryPointCloud *a1, ULTrajectoryPointCloud *a2)
{
  if (*(a1 + 32) == 1)
  {
    ULTrajectoryPointCloud::operator=(a1, a2);
  }

  else
  {
    ULTrajectoryPointCloud::ULTrajectoryPointCloud(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

__n128 ULHomeSlamModel::getMetadata@<Q0>(ULHomeSlamModel *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 143) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 15), *(this + 16));
  }

  else
  {
    *a2 = *(this + 120);
    *(a2 + 16) = *(this + 17);
  }

  result = *(this + 9);
  v5 = *(this + 10);
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 56) = *(this + 44);
  return result;
}

uint64_t ULHomeSlamModel::addPositionedImage(uint64_t *a1, uint64_t a2)
{
  v3 = a1[24];
  if (v3 >= a1[25])
  {
    result = std::vector<ULPositionedImage>::__emplace_back_slow_path<ULPositionedImage const&>(a1 + 23, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *v3 = v4;
    CLMicroLocationFingerprint::CLMicroLocationFingerprint((v3 + 16), (a2 + 16));
    result = v3 + 240;
    a1[24] = v3 + 240;
  }

  a1[24] = result;
  return result;
}

uint64_t ULHomeSlamModel::getRoisDesc@<X0>(ULHomeSlamModel *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "{", 1);
  v4 = *(this + 5);
  for (i = *(this + 6); v4 != i; v4 += 32)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " {roomIndex: ", 13);
    v7 = MEMORY[0x259CA1DB0](v6, *(v4 + 24));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", points: ", 10);
    v9 = MEMORY[0x259CA1DD0](v8, 0xEEEEEEEEEEEEEEEFLL * ((*(v4 + 8) - *v4) >> 4));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "}", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " }", 2);
  if ((v21 & 0x10) != 0)
  {
    v11 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v11 = v17;
    }

    locale = v16[4].__locale_;
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v10 = 0;
      a2[23] = 0;
      goto LABEL_16;
    }

    locale = v16[1].__locale_;
    v11 = v16[3].__locale_;
  }

  v10 = v11 - locale;
  if ((v11 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a2[23] = v10;
  if (v10)
  {
    memmove(a2, locale, v10);
  }

LABEL_16:
  a2[v10] = 0;
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x259CA1EE0](&v22);
}

void sub_259040444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x259CA1EE0](va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULROIPoint>::__emplace_back_slow_path<ULROIPoint const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROIPoint>>(a1, v6);
  }

  v7 = 240 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 240 * v2;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  CLMicroLocationFingerprint::CLMicroLocationFingerprint((240 * v2 + 16), (a2 + 2));
  *&v17 = v17 + 240;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULROIPoint>,ULROIPoint*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULROIPoint>::~__split_buffer(&v15);
  return v14;
}

void sub_25904072C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULROIPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULROI>::__construct_one_at_end[abi:ne200100]<ULROI const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  result = std::vector<ULROIPoint>::__init_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(v4, *a2, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4));
  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<ULROI>::__emplace_back_slow_path<ULROI const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROI>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<ULROIPoint>::__init_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(v8, *a2, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4));
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v17 + 32;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULROI>,ULROI*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULROI>::~__split_buffer(&v15);
  return v14;
}

void sub_2590408D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULROI>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULPositionedImage>::__emplace_back_slow_path<ULPositionedImage const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROIPoint>>(a1, v6);
  }

  v7 = 240 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 240 * v2;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  CLMicroLocationFingerprint::CLMicroLocationFingerprint((240 * v2 + 16), (a2 + 2));
  *&v17 = v17 + 240;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULPositionedImage>,ULPositionedImage*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULPositionedImage>::~__split_buffer(&v15);
  return v14;
}

void sub_259040A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULPositionedImage>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULPositionedImage>,ULPositionedImage*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    v15 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 120;
    do
    {
      v9 = *(v8 - 120);
      *(v4 + 8) = *(v8 - 112);
      *v4 = v9;
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v4 + 16, (v8 - 104));
      v10 = *(v8 - 64);
      *(v4 + 72) = *(v8 - 48);
      *(v4 + 56) = v10;
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v4 + 80, (v8 - 40));
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v4 + 120, v8);
      v11 = *(v8 + 40);
      *(v4 + 176) = *(v8 + 56);
      *(v4 + 160) = v11;
      *(v4 + 192) = 0;
      *(v4 + 200) = 0;
      *(v4 + 184) = 0;
      *(v4 + 184) = *(v8 + 64);
      *(v4 + 200) = *(v8 + 80);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      *(v4 + 208) = *(v8 + 88);
      *(v4 + 224) = 0;
      *(v4 + 232) = 0;
      *(v4 + 216) = 0;
      *(v4 + 216) = *(v8 + 96);
      *(v4 + 232) = *(v8 + 112);
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      v4 = v17 + 240;
      v17 += 240;
      v12 = v8 + 120;
      v8 += 240;
    }

    while (v12 != a3);
    v15 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(a1, v6);
      v6 += 240;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPositionedImage>,ULPositionedImage*>>::~__exception_guard_exceptions[abi:ne200100](v14);
}

uint64_t std::__split_buffer<ULPositionedImage>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULPositionedImage>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<ULPositionedImage>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 240;
    result = std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(v5, v4 - 240);
  }

  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::optional<ULLocalizationResult>::~optional(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      *(a1 + 104) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      *(a1 + 80) = v3;
      operator delete(v3);
    }

    if (*(a1 + 24) == 1)
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
      }
    }
  }

  return a1;
}

void ULModel::~ULModel(ULModel *this)
{
  if (*(this + 520) == 1)
  {
    v4 = (this + 496);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(this + 455) < 0)
    {
      operator delete(*(this + 54));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 376);
    v4 = (this + 352);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(this + 344) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](this + 42, 0);
      v4 = (this + 312);
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v4);
    }
  }

  if (*(this + 304) == 1)
  {
    if (*(this + 295) < 0)
    {
      operator delete(*(this + 34));
    }

    v2 = *(this + 31);
    if (v2)
    {
      *(this + 32) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(this + 200);
    v4 = (this + 176);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(this + 136) == 1)
    {
      v3 = *(this + 9);
      if (v3)
      {
        *(this + 10) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 16);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void ULTrajectoryPointCloud::ULTrajectoryPointCloud(ULTrajectoryPointCloud *this, const ULBoudingBox *a2, const ULBoudingBox *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

void sub_25904105C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULTrajectoryPointCloud::ULTrajectoryPointCloud(ULTrajectoryPointCloud *this, const ULTrajectoryPointCloud *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 3);
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  v7 = *(v2 + 5);
  v3 = *(v2 + 13);
  operator new();
}

void sub_259041188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *__p, uint64_t a14)
{
  std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::~unique_ptr[abi:ne200100](v14 + 3);
  __p = v14;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__n128 ULTrajectoryPointCloud::getBoundary@<Q0>(ULTrajectoryPointCloud *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *(this + 3);
  result = *v2;
  *a2 = *v2;
  a2[1].n128_u64[0] = v2[1].n128_u64[0];
  return result;
}

__n128 ULTrajectoryPointCloud::getMinimumBox@<Q0>(ULTrajectoryPointCloud *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *(this + 3);
  result = *(v2 + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 40);
  return result;
}

void ULTrajectoryPointCloud::getAllPoints(__int128 ***this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    do
    {
      v6 = *v2;
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v11 = *a2;
        v12 = v8 - *a2;
        v13 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 2) + 1;
        if (v13 > 0x924924924924924)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v11) >> 2);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x492492492492492)
        {
          v15 = 0x924924924924924;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULTrajectoryPoint>>(a2, v15);
        }

        v16 = (4 * (v12 >> 2));
        v17 = *v6;
        *(v16 + 12) = *(v6 + 12);
        *v16 = v17;
        v10 = v16 + 28;
        v18 = v16 - v12;
        memcpy(v16 - v12, v11, v12);
        v19 = *a2;
        *a2 = v18;
        a2[1] = v10;
        a2[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        v9 = *v6;
        *(v8 + 12) = *(v6 + 12);
        *v8 = v9;
        v10 = v8 + 28;
      }

      a2[1] = v10;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_259041384(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_259041474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<ULTrajectoryPoint>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<ULTrajectoryPoint>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t ULOcTree<std::shared_ptr<ULTrajectoryPoint>>::insert(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::insert(v2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_259041614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ULTrajectoryPointCloud::getPointsAroundPoint(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  *&v7[4] = a6;
  *&v7[5] = a6;
  ULOcTree<std::shared_ptr<ULTrajectoryPoint>>::query((a1 + 24), v7, a2, v6);
  v8 = v6;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

uint64_t ULOcTree<std::shared_ptr<ULTrajectoryPoint>>::query@<X0>(uint64_t *a1@<X0>, const ULBoudingBox *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::query(*a1, a2, a3);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = (v7 - *a3) >> 4;

  return std::vector<std::shared_ptr<ULTrajectoryPoint>>::__init_with_size[abi:ne200100]<std::shared_ptr<ULTrajectoryPoint>*,std::shared_ptr<ULTrajectoryPoint>*>(a4, v6, v7, v8);
}

float ULTrajectoryPointCloud::getMapCenter(ULTrajectoryPointCloud *this)
{
  v1 = *(this + 3);
  result = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  return result;
}

uint64_t ULTrajectoryPointCloud::getMapDimensions@<X0>(ULTrajectoryPointCloud *this@<X0>, void *a2@<X8>)
{
  *&v8[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  v3 = *(v2 + 20);
  v6 = *(v2 + 12);
  v7 = v3;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a2, &v6, v8, 3uLL);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

float ULPointLocation::toProtobuf@<S0>(ULPointLocation *this@<X0>, uint64_t a2@<X8>)
{
  v3 = CLMicroLocationProto::ULPointLocation::ULPointLocation(a2);
  v4 = *(v3 + 24);
  *(v3 + 8) = *&this->var0;
  result = this->var2;
  *(v3 + 24) = v4 | 7;
  *(v3 + 16) = result;
  return result;
}

float ULPointLocation::fromProtobuf(ULPointLocation *this, const ULPointLocation *a2)
{
  result = this->var2;
  var0 = this[1].var0;
  var1 = this[1].var1;
  return result;
}

double ULPointMovement::toProtobuf@<D0>(ULPointMovement *this@<X0>, void *a2@<X8>)
{
  v3 = CLMicroLocationProto::ULPointMovement::ULPointMovement(a2);
  *(v3 + 5) |= 3u;
  result = *this;
  v3[1] = *this;
  return result;
}

float ULPointMovement::fromProtobuf(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(a1 + 12);
  return result;
}

uint64_t *std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 80);
    std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 56);
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x259CA1F90](v2, 0x1020C40B3163EAALL);
  }

  return a1;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590418BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ULTrajectoryPoint>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286A548F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA1F90);
}

uint64_t ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::insert(uint64_t a1, uint64_t a2)
{
  if (!ULBoudingBox::contains(a1, **a2, *(*a2 + 4), *(*a2 + 8)))
  {
    return 0;
  }

  if (*(a1 + 52) > ((*(a1 + 64) - *(a1 + 56)) >> 4) || *(a1 + 12) <= *(a1 + 36) && *(a1 + 16) <= *(a1 + 40) && *(a1 + 20) <= *(a1 + 44))
  {
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::push_back[abi:ne200100]((a1 + 56), a2);
    return 1;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::subdivide(a1);
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = v5 + 8;
  do
  {
    v8 = *(v7 - 8);
    v9 = *(a2 + 8);
    v12 = *a2;
    v13 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::insert(v8, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v7 == v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4;
    }

    v7 += 8;
  }

  while ((v10 & 1) == 0);
  return v4;
}

void sub_259041A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL ULBoudingBox::contains(ULBoudingBox *this, float a2, float a3, float a4)
{
  v4 = *(this + 3);
  if ((*this - v4) > a2 || (*this + v4) < a2)
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = *(this + 4);
  v8 = v6 - v7;
  v9 = v6 + v7;
  if (v8 > a3 || v9 < a3)
  {
    return 0;
  }

  v11 = *(this + 2);
  v12 = *(this + 5);
  return (v11 - v12) <= a4 && (v11 + v12) >= a4;
}

void ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::subdivide(uint64_t a1)
{
  v1 = vmul_f32(*(a1 + 12), 0x3F0000003F000000);
  v2 = *a1 - v1.f32[0];
  v3 = *(a1 + 4) - v1.f32[1];
  v4 = *(a1 + 8) - (*(a1 + 20) * 0.5);
  operator new();
}

void sub_259041EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::query(uint64_t a1, const ULBoudingBox *a2, const void **a3)
{
  result = ULBoudingBox::intersects(a1, a2);
  if (result)
  {
    v7 = *(a1 + 56);
    for (i = *(a1 + 64); v7 != i; ++v7)
    {
      result = ULBoudingBox::contains(a2, **v7, *(*v7 + 4), *(*v7 + 8));
      if (result)
      {
        v9 = a3[1];
        v10 = a3[2];
        if (v9 >= v10)
        {
          v13 = (v9 - *a3) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v15 = v10 - *a3;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          v26[4] = a3;
          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>>(a3, v16);
          }

          v17 = 16 * v13;
          v18 = *v7;
          *(16 * v13) = *v7;
          if (*(&v18 + 1))
          {
            atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v12 = (v17 + 16);
          v19 = a3[1] - *a3;
          v20 = v17 - v19;
          memcpy((v17 - v19), *a3, v19);
          v21 = *a3;
          *a3 = v20;
          a3[1] = v12;
          v22 = a3[2];
          a3[2] = 0;
          v26[2] = v21;
          v26[3] = v22;
          v26[0] = v21;
          v26[1] = v21;
          result = std::__split_buffer<std::shared_ptr<ULTrajectoryPoint>>::~__split_buffer(v26);
        }

        else
        {
          v11 = *(v7 + 1);
          *v9 = *v7;
          v9[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = v9 + 2;
        }

        a3[1] = v12;
      }
    }

    if (*(a1 + 48))
    {
      v24 = *(a1 + 80);
      v23 = *(a1 + 88);
      while (v24 != v23)
      {
        v25 = *v24++;
        result = ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>::query(v25, a2, a3);
      }
    }
  }

  return result;
}

BOOL ULBoudingBox::intersects(ULBoudingBox *this, const ULBoudingBox *a2)
{
  v2 = *(this + 3);
  v3 = *(a2 + 3);
  if ((*this - v2) > (*a2 + v3))
  {
    return 0;
  }

  if ((*this + v2) < (*a2 - v3))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 4);
  v6 = *(a2 + 1);
  v7 = *(a2 + 4);
  if ((v4 - v5) > (v6 + v7))
  {
    return 0;
  }

  if ((v4 + v5) >= (v6 - v7) && (v8 = *(this + 2), v9 = *(this + 5), v10 = *(a2 + 2), v11 = *(a2 + 5), (v8 - v9) <= (v10 + v11)))
  {
    return (v8 + v9) >= (v10 - v11);
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<ULTrajectoryPoint>>::__init_with_size[abi:ne200100]<std::shared_ptr<ULTrajectoryPoint>*,std::shared_ptr<ULTrajectoryPoint>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259042304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<ULTrajectoryPoint>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>,std::shared_ptr<ULTrajectoryPoint>*,std::shared_ptr<ULTrajectoryPoint>*,std::shared_ptr<ULTrajectoryPoint>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULTrajectoryPoint>>,std::shared_ptr<ULTrajectoryPoint>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULTrajectoryPoint>>,std::shared_ptr<ULTrajectoryPoint>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULTrajectoryPoint>>,std::shared_ptr<ULTrajectoryPoint>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULTrajectoryPoint>>,std::shared_ptr<ULTrajectoryPoint>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void ULRandomGenerator::ULRandomGenerator(ULRandomGenerator *this)
{
  v2 = std::random_device::random_device[abi:ne200100](this);
  v3 = MEMORY[0x259CA1E20](v2);
  *(this + 1) = v3;
  v4 = 1;
  for (i = 2; i != 313; ++i)
  {
    v6 = 0x5851F42D4C957F2DLL * (v3 ^ (v3 >> 62));
    v3 = v6 + v4;
    *(this + i) = i + v6 - 1;
    ++v4;
  }

  *(this + 313) = 0;
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_25904255C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CLMacAddress::newFromStrStrict(const std::string *a1)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_15;
    }

    if (size != 12)
    {
      goto LABEL_17;
    }

    v1 = a1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v1 = a1;
    if (*(&a1->__r_.__value_.__s + 23) != 12)
    {
      if (*(&a1->__r_.__value_.__s + 23))
      {
LABEL_17:
        std::string::basic_string[abi:ne200100]<0>(v9, "size");
        v7 = CLMacAddress::newFromMalformedMac();
LABEL_19:
        v5 = v7;
        goto LABEL_20;
      }

LABEL_15:
      std::string::basic_string[abi:ne200100]<0>(v9, "empty");
      std::string::basic_string[abi:ne200100]<0>(v15, " ");
      v5 = CLMacAddress::newFromMalformedMac();
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

LABEL_20:
      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }

      return v5;
    }
  }

  for (i = 0; i != 12; ++i)
  {
    v4 = v1->__r_.__value_.__s.__data_[i];
    if (v4 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x10000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v9, "nonhex");
      v7 = CLMacAddress::newFromMalformedMac();
      goto LABEL_19;
    }
  }

  v15[0] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9, a1, 24);
  *(&v9[1] + *(v9[0] - 3)) = *(&v9[1] + *(v9[0] - 3)) & 0xFFFFFFB5 | 8;
  MEMORY[0x259CA1D30](v9, v15);
  v5 = v15[0];
  v9[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v10 = v6;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](&v14);
  return v5;
}

uint64_t CLMacAddress::newFromMalformedMac()
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ff:ff:ff:ff:ff:ff");
  v0 = CLMacAddress::newFromCLStr(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return v0;
}

void sub_2590428A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_259042B54(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](a1 + 128);
  return a1;
}

uint64_t CLMacAddress::newFromStr(char *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (a1[23])
    {
      memset(&__str, 0, sizeof(__str));
      goto LABEL_6;
    }

LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(&__str, "empty");
    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    v10 = CLMacAddress::newFromMalformedMac();
    goto LABEL_31;
  }

  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  memset(&__str, 0, sizeof(__str));
  v1 = *a1;
LABEL_6:
  v3 = MEMORY[0x277D85DE0];
  do
  {
    v4 = *v1;
    if ((v4 & 0x80000000) != 0 || (*(v3 + 4 * v4 + 60) & 0x10000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "nonhex");
      v10 = CLMacAddress::newFromMalformedMac();
      goto LABEL_31;
    }

    v5 = __tolower(v4);
    std::string::push_back(&__str, v5);
    ++v1;
    --v2;
  }

  while (v2);
  size = __str.__r_.__value_.__l.__size_;
  v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __str.__r_.__value_.__l.__size_;
  }

  if (v7 > 0xB)
  {
    std::string::operator=(&__p, &__str);
  }

  else
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    if (size == 12)
    {
      v8 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
      v9 = 12;
    }

    else
    {
      v11 = 0;
      do
      {
        std::string::push_back(&__p, 48);
        ++v11;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = __str.__r_.__value_.__l.__size_;
        }
      }

      while (v11 < 12 - v9);
      v8 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
    }

    if (v8)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      p_str = &__str;
    }

    std::string::append(&__p, p_str, v9);
  }

  v10 = CLMacAddress::newFromStrStrict(&__p);
LABEL_31:
  v13 = v10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_259042E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMacAddress::newFromCLStr(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    v1 = a1[1];
    if (!v1)
    {
LABEL_24:
      std::string::basic_string[abi:ne200100]<0>(v12, "empty");
      std::string::basic_string[abi:ne200100]<0>(&__p, " ");
      v3 = CLMacAddress::newFromMalformedMac();
      if (v11 < 0)
      {
        operator delete(__p);
      }

LABEL_29:
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      return v3;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a1 + v1 - 1);
    if (v6 == 58)
    {
      ++v5;
      if (v2 == 2)
      {
        v2 = 0;
        goto LABEL_20;
      }

      if (v2 != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v12, "multibyte");
        v8 = CLMacAddress::newFromMalformedMac();
        goto LABEL_28;
      }

      v2 = 0;
    }

    else
    {
      v7 = v6 - 48;
      if ((v6 - 48) > 9)
      {
        if ((v6 - 65) > 5)
        {
          if ((v6 - 97) > 5)
          {
            goto LABEL_26;
          }

          v7 = v6 - 87;
        }

        else
        {
          v7 = v6 - 55;
        }
      }

      if (v7 == -1)
      {
LABEL_26:
        std::string::basic_string[abi:ne200100]<0>(v12, "nonhex");
        v8 = CLMacAddress::newFromMalformedMac();
        goto LABEL_28;
      }

      v3 += v7 << v4;
      ++v2;
    }

    v4 += 4;
LABEL_20:
    --v1;
  }

  while (v1);
  if (v5 && v5 != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "colons");
    v8 = CLMacAddress::newFromMalformedMac();
LABEL_28:
    v3 = v8;
    goto LABEL_29;
  }

  return v3;
}

void sub_25904303C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CLMacAddress::isMalformed(CLMacAddress *this, const CLMacAddress *a2)
{
  CLMacAddress::str(this, &v6);
  if (v8 < 0)
  {
    v3 = v7 == 12 && *v6 == 0x6666666666666666 && v6[2] == 1717986918;
    operator delete(v6);
  }

  else
  {
    return v8 == 12 && v6 == 0x6666666666666666 && v7 == 1717986918;
  }

  return v3;
}

uint64_t CLMacAddress::str@<X0>(CLMacAddress *this@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v4 = v13;
  v5 = &v13 + *(v13 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((&v13 + *(v13 - 24)));
    v6 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v23);
    v4 = v13;
  }

  *(v5 + 36) = 48;
  *(v16 + *(v4 - 24)) = 12;
  *(&v13 + *(v4 - 24) + 8) = *(&v13 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x259CA1DF0](&v13, this->var0);
  if ((v21 & 0x10) != 0)
  {
    v8 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v8 = v17;
    }

    v9 = v16[3];
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_16;
    }

    v9 = v16[0];
    v8 = v16[2];
  }

  v7 = v8 - v9;
  if (v8 - v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v9, v7);
  }

LABEL_16:
  a2[v7] = 0;
  v12[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v10;
  v14 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x259CA1EE0](&v22);
}

BOOL CLMacAddress::isValid(CLMacAddress *this, const CLMacAddress *a2)
{
  if (CLMacAddress::isMalformed(this, a2))
  {
    return 0;
  }

  CLMacAddress::str(this, &v7);
  if (v9 < 0)
  {
    v3 = v8 != 12 || *v7 != 0x3030303030303030 || v7[2] != 808464432;
    operator delete(v7);
  }

  else
  {
    return v9 != 12 || v7 != 0x3030303030303030 || v8 != 808464432;
  }

  return v3;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2590437A8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259CA1EE0](v1);
  _Unwind_Resume(a1);
}

void CLMacAddress::toPrettyStr(CLMacAddress *this@<X0>, std::string *a2@<X8>)
{
  v3 = v8;
  CLMacAddress::str(this, v8);
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = v9;
  v6 = v8[0];
  v7 = v8[1];
  if ((v9 & 0x80u) != 0)
  {
    v3 = v8[0];
  }

  if ((v9 & 0x80) != 0)
  {
    goto LABEL_6;
  }

  while (v4 < v5)
  {
    while (1)
    {
      if (v4)
      {
        std::string::push_back(a2, 58);
      }

      std::string::push_back(a2, *(v3 + v4));
      std::string::push_back(a2, *(v3 + v4 + 1));
      v4 += 2;
      if ((v5 & 0x80) == 0)
      {
        break;
      }

LABEL_6:
      if (v4 >= v7)
      {

        operator delete(v6);
        return;
      }
    }
  }
}

void sub_2590438B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void CLMacAddress::toCLStr(CLMacAddress *this@<X0>, std::string *a2@<X8>)
{
  v3 = v9;
  CLMacAddress::str(this, v9);
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = v10;
  v6 = v9[0];
  v7 = v9[1];
  if ((v10 & 0x80u) != 0)
  {
    v3 = v9[0];
  }

  if ((v10 & 0x80) != 0)
  {
    goto LABEL_6;
  }

  while (v4 < v5)
  {
    while (1)
    {
      if (v4)
      {
        std::string::push_back(a2, 58);
      }

      v8 = *(v3 + v4);
      if (v8 != 48)
      {
        std::string::push_back(a2, v8);
      }

      std::string::push_back(a2, *(v3 + v4 + 1));
      v4 += 2;
      if ((v5 & 0x80) == 0)
      {
        break;
      }

LABEL_6:
      if (v4 >= v7)
      {

        operator delete(v6);
        return;
      }
    }
  }
}

void sub_2590439C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259CA1E90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_259043A9C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationLegacyClient::CLMicroLocationLegacyClient(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  v3 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingThrottleDuration"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 intValue];
  }

  else
  {
    v8 = [&unk_286A716D0 intValue];
  }

  v9 = v8;

  ULThrottle::ULThrottle(a1 + 40, v9);
  v10 = +[ULDefaultsSingleton shared];
  v11 = [v10 defaultsDictionary];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLocalizingThrottleDuration"];
  v13 = [v11 objectForKey:v12];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v13 intValue];
  }

  else
  {
    v14 = [&unk_286A716B8 intValue];
  }

  v15 = v14;

  ULThrottle::ULThrottle(a1 + 64, v15);
  *(a1 + 88) = 0;
  return a1;
}

void sub_259043C68(_Unwind_Exception *a1)
{
  v6 = *(v1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

CLMicroLocationLegacyClient *CLMicroLocationLegacyClient::onBatteryState(CLMicroLocationLegacyClient *this, int a2)
{
  if (a2)
  {
    return CLMicroLocationLegacyClient::requestLocalizationIfPossible(this, 0, 0);
  }

  return this;
}

uint64_t CLMicroLocationLegacyClient::requestLocalizationIfPossible(CLMicroLocationLegacyClient *this, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  v17 = v6;
  if (*(this + 89))
  {
    if (a2 && ULThrottle::shouldThrottle(this + 64, v6))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLegacyClient::requestLocalizationIfPossible();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "Throttled Localization Request", &buf, 2u);
      }

      v8 = +[ULEventLog shared];
      [v8 log:@"Legacy Throttle Event"];

      goto LABEL_13;
    }

    if (*(this + 16) != 1)
    {
      goto LABEL_18;
    }

    v16 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v16);
    *&buf = boost::uuids::random_generator_pure::operator()(&v16);
    *(&buf + 1) = v11;
    boost::uuids::detail::random_provider_base::destroy(&v16);
    if ((*(this + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((*(**(this + 3) + 56))(*(this + 3), *this, *(this + 1), &buf, &v17, a3))
    {
      ULThrottle::setLastStartedTime(this + 64, &v17);
      v10 = 1;
    }

    else
    {
LABEL_18:
      v10 = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLegacyClient::requestLocalizationIfPossible();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v10)
      {
        v13 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "Localization requested, success: %@", &buf, 0xCu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLegacyClient::requestLocalizationIfPossible();
    }

    v9 = logObject_MicroLocation_Default;
    v10 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Localization is not allowed", &buf, 2u);
LABEL_13:
      v10 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

CLMicroLocationLegacyClient *CLMicroLocationLegacyClient::onDisplayState(CLMicroLocationLegacyClient *this, int a2)
{
  if (a2)
  {
    return CLMicroLocationLegacyClient::requestLocalizationIfPossible(this, 1, 0);
  }

  return this;
}

uint64_t CLMicroLocationLegacyClient::onHomeKit(CLMicroLocationLegacyClient *this, NSDictionary *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (CLMicroLocationLegacyEventHomeKit::isHomekitTriggerLocalization(v3, v4))
  {
    v6 = CLMicroLocationLegacyClient::requestLocalizationIfPossible(this, 0, 0);
  }

  else
  {
    v6 = 0;
  }

  if (CLMicroLocationLegacyEventHomeKit::isHomekitTriggerRecording(v3, v5))
  {
    if (CLMicroLocationLegacyEventHomeKit::isHomekitSceneRequest(v3, v7))
    {
      CLMicroLocationLegacyEventHomeKit::homekitSceneActionSetUUID(v3, &v11);
    }

    else
    {
      CLMicroLocationLegacyEventHomeKit::homekitAccessoryUUID(v3, &v11);
    }

    v13[0] = *v12;
    *(v13 + 7) = *&v12[7];
    *v12 = v13[0];
    *&v12[7] = *(v13 + 7);
    v8 = CLMicroLocationLegacyClient::requestRecordingIfPossible(this, 1, &v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | v8;
}

uint64_t CLMicroLocationLegacyClient::requestRecordingIfPossible(uint64_t *a1, int a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  v21 = v6;
  if ((a1[11] & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLegacyClient::requestLocalizationIfPossible();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Recording is not allowed", buf, 2u);
    }

    goto LABEL_14;
  }

  if (*(a1 + 16) != 1)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (a2 && ULThrottle::shouldThrottle((a1 + 5), v6))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLegacyClient::requestLocalizationIfPossible();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "Throttled Recording Request", buf, 2u);
    }

    v8 = +[ULEventLog shared];
    [v8 log:@"Legacy Throttle Event"];

    goto LABEL_14;
  }

  if ((*(a3 + 16) & 1) == 0)
  {
    *buf = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    boost::uuids::random_generator_pure::operator()(buf);
    boost::uuids::detail::random_provider_base::destroy(buf);
  }

  if (*(a1 + 16) != 1)
  {
    goto LABEL_21;
  }

  v13 = a1[3];
  v14 = *a1;
  v15 = a1[1];
  v20 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v20);
  v16 = boost::uuids::random_generator_pure::operator()(&v20);
  buf[0] = 0;
  v24 = 0;
  LODWORD(v13) = (*(*v13 + 64))(v13, v14, v15, v16, v17, buf, &v21);
  boost::uuids::detail::random_provider_base::destroy(&v20);
  if (v13)
  {
    ULThrottle::setLastStartedTime((a1 + 5), &v21);
    v10 = 1;
  }

  else
  {
LABEL_21:
    v10 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLegacyClient::requestLocalizationIfPossible();
  }

  v18 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (v10)
    {
      v19 = @"YES";
    }

    *buf = 138412290;
    v23 = v19;
    _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "Recording requested, success: %@", buf, 0xCu);
  }

LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t CLMicroLocationLegacyClient::onRecordingRequest(CLMicroLocationLegacyClient *this, NSDictionary *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = CLMicroLocationLegacyEventRecordingRequest::isForceRecording(v3, v4);
  CLMicroLocationLegacyEventRecordingRequest::recordingRequestUUID(v3, v9);
  v6 = CLMicroLocationLegacyClient::requestRecordingIfPossible(this, v5 ^ 1, v9);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t CLMicroLocationLegacyClient::onLocalizationRequest(CLMicroLocationLegacyClient *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 18)
    {
LABEL_15:
      v5 = 0;
      return CLMicroLocationLegacyClient::requestLocalizationIfPossible(a1, 0, v5);
    }

    a2 = *a2;
  }

  else if (v2 != 18)
  {
    goto LABEL_15;
  }

  v5 = *a2 == 0x6163696669746F4ELL && a2[1] == 0x746E65436E6F6974 && *(a2 + 8) == 29285;
  return CLMicroLocationLegacyClient::requestLocalizationIfPossible(a1, 0, v5);
}

void CLMicroLocationLegacyClient::databaseAvailable(CLMicroLocationLegacyClient *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(this + 16) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "milo-internal-legacy-client-name-unsupervised");
    [@"00000000-0000-0000-0000-000000000016" boostUUID];
    if ((v8 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v3 = 1;
    CLMicroLocationLegacyClient::tryCreateServiceAndConnect(this, __p, v6, v7, &v3, &v9);
    *this = v9;
    *(this + 16) = v10;
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_2590445A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationLegacyClient::tryCreateServiceAndConnect(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLegacyClient::requestLocalizationIfPossible();
  }

  v12 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    v15 = *a5;
    v16 = ULServiceTypeToString();
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "tryCreateServiceAndConnect: clientName: %@, serviceType: %@", buf, 0x16u);
  }

  v17 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v17 + 32))(buf, v17, a2, __p);
  if (v34 < 0)
  {
    operator delete(*__p);
  }

  if (*buf == *&buf[8])
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = **buf;
    v32[0] = *(*buf + 1);
    *(v32 + 7) = *(*buf + 8);
    v19 = 1;
  }

  v20 = objc_alloc(MEMORY[0x277D28778]);
  v21 = [MEMORY[0x277CBEB98] set];
  v22 = [v20 initWithContextLayers:v21];

  [v22 setPredictionsUpdateType:0];
  v23 = *(a1 + 24);
  v29 = v18;
  *v30 = v32[0];
  *&v30[7] = *(v32 + 7);
  v31 = v19;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v24 = (*(*v23 + 40))(v23, a2, a3, a4, &v29, a3, a4, v22, __p);
  if (v34 < 0)
  {
    operator delete(*__p);
  }

  if (v24 == -1)
  {
    *a6 = a3;
    *(a6 + 8) = a4;
    v27 = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLegacyClient::requestLocalizationIfPossible();
    }

    v25 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      *__p = 138412290;
      *&__p[4] = v26;
      _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_DEFAULT, "tryCreateServiceAndConnect: failed to connect, errorId: %@", __p, 0xCu);
    }

    v27 = 0;
    *a6 = 0;
  }

  *(a6 + 16) = v27;

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_259044918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLegacyClient::publishResultsToBiomeAndCoreDuet(CLMicroLocationLegacyClient *this, const ULService::ServiceDescriptor *a2, const ULLocalizationResult *a3)
{
  __p[4] = *MEMORY[0x277D85DE8];
  if (*a3 == *(a3 + 1))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a3 + 24);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLegacyClient::requestLocalizationIfPossible();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Trying to publish results, probabilityVectorValid: %@", buf, 0xCu);
  }

  if (v6 && *(this + 16) == 1 && *this == *a2 && *(this + 1) == *(a2 + 1))
  {
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    v12 = cl::chrono::CFAbsoluteTimeClock::now();
    *buf = "com.apple.magicalmoments";
    std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](&buf[8], a3);
    v10 = *(a3 + 3);
    v16 = *(a3 + 2);
    *v17 = v10;
    *&v17[15] = *(a3 + 63);
    memset(v18, 0, sizeof(v18));
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v18, *(a3 + 9), *(a3 + 10), (*(a3 + 10) - *(a3 + 9)) >> 4);
    memset(__p, 0, 24);
    std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(__p, *(a3 + 12), *(a3 + 13), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 13) - *(a3 + 12)) >> 2));
    std::__tree<std::__value_type<std::string,ULLocalizationResult>,std::__map_value_compare<std::string,std::__value_type<std::string,ULLocalizationResult>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ULLocalizationResult>>>::__emplace_multi<std::pair<char const*,ULLocalizationResult>>();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationLegacyClient::publishResults(uint64_t a1, double *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (([MEMORY[0x277D28868] isMac] & 1) == 0)
  {
    v4 = CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement(a2);
    [ULCoreDuetPublisher saveEventsToDuetStream:v4];

    v5 = CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement(a2);
    [ULBiomePublisher saveMicroLocationLocalizationEvents:v5];

    v6 = CLMicroLocationPublishHelper::biomePublicEventsFromLocalizationResultMeasurement(a2);
    [ULBiomePublisher saveMicroLocationVisitEvents:v6];
  }

  objc_autoreleasePoolPop(v3);
}

void CLMicroLocationLegacyClient::updateStatus(uint64_t a1, uint64_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 1 && *a1 == a2[4] && *(a1 + 8) == a2[5])
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = a2[2];
    if (v5 != v7)
    {
      while (*v5)
      {
        if (++v5 == v7)
        {
          v5 = a2[2];
          break;
        }
      }
    }

    v8 = v5 != v7;
    v9 = v5 == v7;
    v10 = *(a1 + 89);
    *(a1 + 89) = v6 != 1;
    if (v6 != 1)
    {
      v9 = 1;
    }

    *(a1 + 88) = v9;
    if (v10 == 1 && v6 == 1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLegacyClient::requestLocalizationIfPossible();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "Localization disallowed, cleaning up Biome resources", buf, 2u);
      }

      +[ULBiomePublisher cleanup];
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLegacyClient::requestLocalizationIfPossible();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a2 + 232);
      v15 = *(a1 + 89);
      v16 = *(a1 + 88);
      *buf = 68290306;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 1026;
      v26 = v6 == 1;
      v27 = 1026;
      v28 = v8;
      v29 = 1026;
      v30 = v14;
      v31 = 1026;
      v32 = v15;
      v33 = 1026;
      v34 = v16;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Service Status update, isSuspended:%{public}hhd, isReasonLocationNotSupported:%{public}hhd, isMapValid:%{public}hhd, Localization Allowed:%{public}hhd, Recording Allowed:%{public}hhd}", buf, 0x30u);
    }

    v17 = +[ULEventLog shared];
    if (*(a2 + 232))
    {
      v18 = "Yes";
    }

    else
    {
      v18 = "No";
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service Status Update Event isMapValid: %s", v18];
    [v17 log:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t boost::uuids::random_generator_pure::operator()(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  boost::uuids::detail::random_provider_base::get_random_bytes(a1, &v3, 0x10uLL);
  LOBYTE(v4) = v4 & 0x3F | 0x80;
  BYTE6(v3) = BYTE6(v3) & 0xF | 0x40;
  result = v3;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false> const&>(a1, a2);
  return a1;
}

void sub_2590450B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 2));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULParticle>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259045190(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<char const*,ULLocalizationResult>::~pair(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_9()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__tree<std::__value_type<std::string,ULLocalizationResult>,std::__map_value_compare<std::string,std::__value_type<std::string,ULLocalizationResult>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ULLocalizationResult>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ULLocalizationResult>,std::__map_value_compare<std::string,std::__value_type<std::string,ULLocalizationResult>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ULLocalizationResult>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ULLocalizationResult>,std::__map_value_compare<std::string,std::__value_type<std::string,ULLocalizationResult>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ULLocalizationResult>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 19);
    if (v4)
    {
      *(a2 + 20) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 16);
    if (v5)
    {
      *(a2 + 17) = v5;
      operator delete(v5);
    }

    if (a2[80] == 1)
    {
      v6 = *(a2 + 7);
      if (v6)
      {
        *(a2 + 8) = v6;
        operator delete(v6);
      }
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

boost::uuids::detail::random_provider_base *boost::uuids::detail::random_provider_base::random_provider_base(boost::uuids::detail::random_provider_base *this)
{
  *this = -1;
  v2 = open("/dev/urandom", 0x1000000);
  *this = v2;
  if (v2 == -1)
  {
    v4 = *__error();
    std::string::basic_string[abi:ne200100]<0>(&v7, "open /dev/urandom");
    v5 = std::runtime_error::runtime_error(&v8, &v7);
    v8.__vftable = &unk_286A54A48;
    v9 = v4;
    v6[0] = "/AppleInternal/Library/BuildRoots/4~CAoWugBp3PLHT7CMQ3XPRqDfBLlwdFseJslrMM0/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
    v6[1] = "boost::uuids::detail::random_provider_base::random_provider_base()";
    v6[2] = 60;
    boost::throw_exception<boost::uuids::entropy_error>(v5, v6);
  }

  return this;
}

void sub_2590453B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::runtime_error::~runtime_error((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::uuids::entropy_error>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(exception, a1, a2);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_286A547F0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v6 = a2[1].__vftable;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_286A549C8;
  *(a1 + 8) = &unk_286A549F8;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_286A54A28;
  *(a1 + 64) = a3[1].i32[0];
  *(a1 + 48) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_259045744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::uuids::entropy_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<boost::uuids::entropy_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_286A54820;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_286A54820;
  v1 = (a1 - 3);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x259CA1F90);
}

void boost::uuids::entropy_error::~entropy_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t boost::wrapexcept<boost::uuids::entropy_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A547F0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_286A54A48;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = &unk_286A54820;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &unk_286A549C8;
  *(a1 + 8) = &unk_286A549F8;
  *(a1 + 32) = &unk_286A54A28;
  return a1;
}

uint64_t boost::uuids::detail::random_provider_base::get_random_bytes(uint64_t this, char *a2, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = read(*v5, &a2[v6], a3 - v6);
      if (this < 0)
      {
        this = __error();
        if (*this != 4)
        {
          v7 = *this;
          std::string::basic_string[abi:ne200100]<0>(&v9, "read");
          std::runtime_error::runtime_error(&v10, &v9);
          v10.__vftable = &unk_286A54A48;
          v11 = v7;
          v8[0] = "/AppleInternal/Library/BuildRoots/4~CAoWugBp3PLHT7CMQ3XPRqDfBLlwdFseJslrMM0/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
          v8[1] = "void boost::uuids::detail::random_provider_base::get_random_bytes(void *, std::size_t)";
          v8[2] = 98;
          boost::throw_exception<boost::uuids::entropy_error>(&v10, v8);
        }
      }

      else
      {
        v6 += this;
      }
    }

    while (v6 < a3);
  }

  return this;
}

void sub_259045C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  std::runtime_error::~runtime_error(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::uuids::detail::random_provider_base::destroy(boost::uuids::detail::random_provider_base *this)
{
  result = *this;
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

void sub_259045D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ULLocalizationResult>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259045E48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ULLocalizationResult>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,ULLocalizationResult>,std::__map_value_compare<std::string,std::__value_type<std::string,ULLocalizationResult>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ULLocalizationResult>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ULLocalizationResult>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 19);
    if (v3)
    {
      *(__p + 20) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 16);
    if (v4)
    {
      *(__p + 17) = v4;
      operator delete(v4);
    }

    if (__p[80] == 1)
    {
      v5 = *(__p + 7);
      if (v5)
      {
        *(__p + 8) = v5;
        operator delete(v5);
      }
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL CLMicroLocationLegacyEventHomeKit::isHomeControlSuggestionRequest(CLMicroLocationLegacyEventHomeKit *this, NSDictionary *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(CLMicroLocationLegacyEventHomeKit *)v2 objectForKeyedSubscript:@"private.HomeKit.accessory.accessoryUUID"];

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v6 = [(CLMicroLocationLegacyEventHomeKit *)v3 objectForKeyedSubscript:@"private.HomeKit.scene.actionSetUUID"];
      v5 = v6 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL CLMicroLocationLegacyEventHomeKit::isHomekitSceneRequest(CLMicroLocationLegacyEventHomeKit *this, NSDictionary *a2)
{
  v2 = [(CLMicroLocationLegacyEventHomeKit *)this objectForKeyedSubscript:@"private.HomeKit.scene.actionSetUUID"];
  v3 = v2 != 0;

  return v3;
}

void *CLMicroLocationLegacyEventHomeKit::isHomekitTriggerLocalization(CLMicroLocationLegacyEventHomeKit *this, NSDictionary *a2)
{
  v2 = this;
  v3 = [(CLMicroLocationLegacyEventHomeKit *)v2 objectForKeyedSubscript:@"shouldTriggerLocalizationScan"];

  if (v3)
  {
    v4 = [(CLMicroLocationLegacyEventHomeKit *)v2 objectForKeyedSubscript:@"shouldTriggerLocalizationScan"];
    v3 = [v4 BOOLValue];
  }

  return v3;
}

void *CLMicroLocationLegacyEventHomeKit::isHomekitTriggerRecording(CLMicroLocationLegacyEventHomeKit *this, NSDictionary *a2)
{
  v2 = this;
  v3 = [(CLMicroLocationLegacyEventHomeKit *)v2 objectForKeyedSubscript:@"shouldTriggerRecordingScan"];

  if (v3)
  {
    v4 = [(CLMicroLocationLegacyEventHomeKit *)v2 objectForKeyedSubscript:@"shouldTriggerRecordingScan"];
    v3 = [v4 BOOLValue];
  }

  return v3;
}

void CLMicroLocationLegacyEventHomeKit::homekitSceneActionSetUUID(CLMicroLocationLegacyEventHomeKit *this@<X0>, uint64_t a2@<X8>)
{
  v7 = this;
  v4 = [(CLMicroLocationLegacyEventHomeKit *)v7 objectForKeyedSubscript:@"private.HomeKit.scene.actionSetUUID"];

  if (v4)
  {
    v5 = [(CLMicroLocationLegacyEventHomeKit *)v7 objectForKeyedSubscript:@"private.HomeKit.scene.actionSetUUID"];
    v6 = v5;
    if (v5)
    {
      [v5 boostUUID];
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void CLMicroLocationLegacyEventHomeKit::homekitAccessoryUUID(CLMicroLocationLegacyEventHomeKit *this@<X0>, uint64_t a2@<X8>)
{
  v7 = this;
  v4 = [(CLMicroLocationLegacyEventHomeKit *)v7 objectForKeyedSubscript:@"private.HomeKit.accessory.accessoryUUID"];

  if (v4)
  {
    v5 = [(CLMicroLocationLegacyEventHomeKit *)v7 objectForKeyedSubscript:@"private.HomeKit.accessory.accessoryUUID"];
    v6 = v5;
    if (v5)
    {
      [v5 boostUUID];
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

void *CLMicroLocationLegacyEventRecordingRequest::isForceRecording(CLMicroLocationLegacyEventRecordingRequest *this, NSDictionary *a2)
{
  v2 = this;
  v3 = [(CLMicroLocationLegacyEventRecordingRequest *)v2 objectForKeyedSubscript:@"private.MicroLocation.forced.recordingRequest"];

  if (v3)
  {
    v4 = [(CLMicroLocationLegacyEventRecordingRequest *)v2 objectForKeyedSubscript:@"private.MicroLocation.forced.recordingRequest"];
    v3 = [v4 BOOLValue];
  }

  return v3;
}

void CLMicroLocationLegacyEventRecordingRequest::recordingRequestUUID(CLMicroLocationLegacyEventRecordingRequest *this@<X0>, uint64_t a2@<X8>)
{
  v8 = this;
  v4 = [(CLMicroLocationLegacyEventRecordingRequest *)v8 objectForKeyedSubscript:@"private.MicroLocation.recordingTriggerUUID"];

  if (v4)
  {
    v5 = [(CLMicroLocationLegacyEventRecordingRequest *)v8 objectForKeyedSubscript:@"private.MicroLocation.recordingTriggerUUID"];
    v6 = [v5 UUIDString];
    v7 = v6;
    if (v6)
    {
      [v6 boostUUID];
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t ULBinaryRoiNullSpaceLocalizationAlgorithm::localize@<X0>(CLMicroLocationModel *this@<X1>, CLMicroLocationLocalizationSettings *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  if (!CLMicroLocationModel::isValid(this))
  {
    ULBinaryRoiNullSpaceLocalizationAlgorithm::localize();
  }

  if ((*(a4 + 32) & 1) == 0)
  {
    ULBinaryRoiNullSpaceLocalizationAlgorithm::localize();
  }

  v55 = a5;
  v56 = a2;
  v74 = 0u;
  v75 = 0u;
  v76 = 1065353216;
  v10 = *(this + 22);
  if (v10 != *(this + 23))
  {
    __p[0] = v10 + 2;
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v74, v10 + 2);
    v11 = *(a4 + 24);
    if (v11)
    {
      *__p = (*(*v11 + 48))(v11, *v10, a3);
      std::__tree<double>::__emplace_multi<double>();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  CLMicroLocationModel::getIdentifiers(this, &v72);
  LOBYTE(__p[0]) = 0;
  v67 = 0;
  LOBYTE(v68) = 0;
  v69[8] = 0;
  *&v69[16] = 0;
  v69[18] = 0;
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  buf = 0uLL;
  v78 = 0;
  v79 = 1;
  std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(__p, &buf);
  if (v79 == 1)
  {
    v12 = buf.n128_u64[0];
    if (buf.n128_u64[0])
    {
      buf.n128_u64[1] = buf.n128_u64[0];
      operator delete(buf.n128_u64[0]);
    }
  }

  v13 = __p[1];
  if (__p[1] >= v66)
  {
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 2) + 1;
    if (v15 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    if (0x999999999999999ALL * ((v66 - __p[0]) >> 2) > v15)
    {
      v15 = 0x999999999999999ALL * ((v66 - __p[0]) >> 2);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v66 - __p[0]) >> 2) >= 0x666666666666666)
    {
      v16 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(__p, v16);
    }

    v17 = 4 * ((__p[1] - __p[0]) >> 2);
    v14 = (v17 + 20);
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    v18 = (v17 - (__p[1] - __p[0]));
    memcpy(v18, __p[0], __p[1] - __p[0]);
    v12 = __p[0];
    __p[0] = v18;
    __p[1] = v14;
    v66 = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v14 = __p[1] + 20;
    *__p[1] = 0;
    v13[1] = 0;
    *(v13 + 4) = 0;
  }

  __p[1] = v14;
  ULBinaryRoiNullSpaceLocalizationAlgorithm::getAdjustmentPowerForBinaryRoiDetectionThreshold(v12, v56);
  v20 = v72;
  if (v72 != v73)
  {
    v21 = v19;
    do
    {
      if ((*(v20 + 25) & *(v20 + 33)) != -1)
      {
        memset(v63, 0, sizeof(v63));
        v64 = 1065353216;
        for (i = v75; i; i = *i)
        {
          v23 = i[2] == *(v20 + 25) && i[3] == *(v20 + 33);
          if (v23)
          {
            buf.n128_u64[0] = (i + 2);
            v25 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(v63, i + 2);
            if (i != v25)
            {
              std::__tree<double>::__assign_multi<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(v25 + 4, i[4], i + 5);
            }
          }

          else
          {
            buf.n128_u64[0] = CL::kNegMicroLocation;
            v24 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(v63, CL::kNegMicroLocation);
            std::multiset<double>::insert[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>((v24 + 4), i[4], (i + 5));
          }
        }

        ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap(v56, v63, v61);
        v58 = 0u;
        v59 = 0u;
        v60 = 1065353216;
        v26 = CLMicroLocationLocalizationSettings::getKernelFuncSettings(v56);
        ULAlgorithms::createKernelFunction(v26, &v57);

        for (j = v62; j; j = *j)
        {
          v28 = (*(*v57 + 24))(v57, j[4]);
          if (v28 >= 0.0)
          {
            buf.n128_u64[0] = (j + 2);
            *(std::__hash_table<std::__hash_value_type<boost::uuids::uuid,double>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,double>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,double>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v58, j + 2) + 4) = v28 / (1.0 - v28);
            if (onceToken_MicroLocation_Default != -1)
            {
              ULBinaryRoiNullSpaceLocalizationAlgorithm::localize();
            }

            v29 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              operator new();
            }
          }
        }

        v30 = v59;
        if (v59)
        {
          v31 = 1.0;
          v32 = v59;
          do
          {
            v31 = v31 + v32[4];
            v32 = *v32;
          }

          while (v32);
          v33 = 1.0 / v31;
          do
          {
            if (*(v30 + 2) == *(v20 + 25) && *(v30 + 3) == *(v20 + 33))
            {
              v36 = *(v30 + 2);
              v35 = *(v30 + 3);
              v37 = pow(v33 * v30[4], v21);
              v38 = __p[1];
              if (__p[1] >= v66)
              {
                v41 = 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 2);
                v42 = v41 + 1;
                if (v41 + 1 > 0xCCCCCCCCCCCCCCCLL)
                {
                  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                }

                if (0x999999999999999ALL * ((v66 - __p[0]) >> 2) > v42)
                {
                  v42 = 0x999999999999999ALL * ((v66 - __p[0]) >> 2);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v66 - __p[0]) >> 2) >= 0x666666666666666)
                {
                  v43 = 0xCCCCCCCCCCCCCCCLL;
                }

                else
                {
                  v43 = v42;
                }

                if (v43)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(__p, v43);
                }

                v44 = 4 * ((__p[1] - __p[0]) >> 2);
                v45 = v37;
                *v44 = v36;
                *(v44 + 8) = v35;
                *(v44 + 16) = v45;
                v40 = (20 * v41 + 20);
                v46 = (20 * v41 - (__p[1] - __p[0]));
                memcpy(v46, __p[0], __p[1] - __p[0]);
                v47 = __p[0];
                __p[0] = v46;
                __p[1] = v40;
                v66 = 0;
                if (v47)
                {
                  operator delete(v47);
                }
              }

              else
              {
                v39 = v37;
                *__p[1] = v36;
                *(v38 + 1) = v35;
                v38[4] = v39;
                v40 = v38 + 5;
              }

              __p[1] = v40;
            }

            v30 = *v30;
          }

          while (v30);
        }

        v48 = v57;
        v57 = 0;
        if (v48)
        {
          (*(*v48 + 8))(v48);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v58);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v61);
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::~__hash_table(v63);
      }

      v49 = v20[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v20[2];
          v23 = *v50 == v20;
          v20 = v50;
        }

        while (!v23);
      }

      v20 = v50;
    }

    while (v50 != v73);
  }

  *v55 = 0;
  *(v55 + 24) = 0;
  v51 = v67;
  if (v67 == 1)
  {
    *v55 = *__p;
    *(v55 + 16) = v66;
    __p[1] = 0;
    v66 = 0;
    __p[0] = 0;
    *(v55 + 24) = 1;
  }

  v52 = *v69;
  *(v55 + 32) = v68;
  *(v55 + 48) = v52;
  *(v55 + 63) = *&v69[15];
  *(v55 + 72) = v70;
  *(v55 + 88) = v71[0];
  v71[0] = 0;
  v70 = 0uLL;
  *(v55 + 96) = *&v71[1];
  *(v55 + 112) = v71[3];
  memset(&v71[1], 0, 24);
  *(v55 + 120) = 1;
  if (v51 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v72, v73[0]);
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::~__hash_table(&v74);
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259046C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, void *a51)
{
  ULLocalizationResult::~ULLocalizationResult(&a35);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a50, a51);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::~__hash_table(v51 - 256);
  _Unwind_Resume(a1);
}

void ULBinaryRoiNullSpaceLocalizationAlgorithm::getAdjustmentPowerForBinaryRoiDetectionThreshold(ULBinaryRoiNullSpaceLocalizationAlgorithm *this, const CLMicroLocationLocalizationSettings *a2)
{
  v2 = COERCE_DOUBLE(CLMicroLocationLocalizationSettings::getDetectionThresholdForBinaryROI(a2));
  if (v3)
  {
    if (v2 > 0.0 && v2 < 1.0)
    {
      log(v2);
    }

    else
    {
      AdjustmentPowerForBinaryRoiDetectionThreshold = ULBinaryRoiNullSpaceLocalizationAlgorithm::getAdjustmentPowerForBinaryRoiDetectionThreshold();
      std::multiset<double>::insert[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(AdjustmentPowerForBinaryRoiDetectionThreshold);
    }
  }
}

void std::multiset<double>::insert[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    std::__tree<double>::__emplace_hint_multi<double const&>();
  }
}

uint64_t *ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap@<X0>(ULHomeSlamModel *this@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v7 += *(v6 + 12);
      v6 = *v6;
    }

    while (v6);
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud(this);
  v10 = *(TrajectoryPointCloud + 8);
  if (v10)
  {
    v3 = TrajectoryPointCloud;
    v11 = *(TrajectoryPointCloud + 8);
    do
    {
      v12 = *(v11 + 8);
      if (v12 <= 2)
      {
        if (v12 == 2)
        {
          goto LABEL_15;
        }

        ++v11;
      }

      v11 = *v11;
    }

    while (v11);
  }

  ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap();
  do
  {
    ++v10;
    do
    {
      v10 = *v10;
      if (!v10)
      {
        ReducedDistancesMap = ULBinaryRoiNullSpaceLocalizationAlgorithm::createReducedDistancesMap();
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a3);
        _Unwind_Resume(ReducedDistancesMap);
      }

LABEL_15:
      v13 = *(v10 + 8);
    }

    while (v13 > 3);
  }

  while (v13 != 3);
  LODWORD(v23) = 2;
  v14 = *std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::at(v3, &v23);
  LODWORD(v23) = 3;
  result = std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::at(v3, &v23);
  v16 = *result;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  for (i = *(a2 + 16); i; i = *i)
  {
    if (~*(i + 1) == 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    CLReducerFunction<std::multiset<double>,double>::parametrizedPercentileSorted(i + 4, v18);
    v20 = v19;
    v21 = i[6];
    v23 = i + 2;
    result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(a3, i + 2);
    result[4] = v20;
    *(result + 5) = v21 / v8;
  }

  return result;
}

uint64_t *std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_10()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

__n128 std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void ULLocalizationResult::~ULLocalizationResult(ULLocalizationResult *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  if (*(this + 24) == 1)
  {
    v4 = *this;
    if (*this)
    {
      *(this + 1) = v4;
      operator delete(v4);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((v2 + 4), v2[5]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::multiset<double>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((a2 + 4), a2[5]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **std::__tree<double>::__assign_multi<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<double>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::__tree<double>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<double>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<double>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<double>::__emplace_multi<double>();
  }

  return result;
}

void sub_25904766C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<double>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<double>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 4))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<double>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<double>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(*a1, v2);
  }

  return a1;
}

double *std::__tree<double>::__find_leaf(void *a1, double *a2, double **a3, double *a4)
{
  v4 = (a1 + 1);
  if (a1 + 1 != a2 && a2[4] < *a4)
  {
    while (1)
    {
      v5 = *v4;
      a2 = v4;
      if (!*v4)
      {
        break;
      }

      while (1)
      {
        v4 = v5;
        if (*(v5 + 32) >= *a4)
        {
          break;
        }

        v5 = *(v5 + 8);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    *a3 = v4;
    return a2;
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6 == 0.0)
    {
      v9 = a2;
      do
      {
        v8 = *(v9 + 2);
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    else
    {
      v7 = *a2;
      do
      {
        v8 = *&v7;
        v7 = *(*&v7 + 8);
      }

      while (v7 != 0.0);
    }

    if (*a4 < v8[4])
    {
      while (1)
      {
        v11 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v11;
          if (*a4 < *(v11 + 32))
          {
            break;
          }

          v11 = *(v11 + 8);
          if (!v11)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v6 == 0.0)
  {
    *a3 = a2;
  }

  else
  {
    *a3 = v8;
    return v8 + 1;
  }

  return a2;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,double>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,double>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,double>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,ULNullSpaceLocalizationAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void ULBlueAtlasLocalizationAlgorithm::localize(CLMicroLocationModel *this@<X1>, const CLMicroLocationModel *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v161[4] = *MEMORY[0x277D85DE8];
  if (!CLMicroLocationModel::isValid(this))
  {
    ULBlueAtlasLocalizationAlgorithm::localize();
  }

  if (*(this + 1) == 3)
  {
    if ((*(a3 + 32) & 1) == 0)
    {
      ULBlueAtlasLocalizationAlgorithm::localize();
    }

    LOBYTE(v126[0]) = 0;
    v128 = 0;
    LOBYTE(v129) = 0;
    v130[8] = 0;
    *&v130[16] = 0;
    v130[18] = 0;
    v131 = 0u;
    memset(v132, 0, sizeof(v132));
    memset(__p, 0, 24);
    __p[24] = 1;
    std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(v126, __p);
    if (__p[24] == 1 && *__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    v112 = boost::uuids::string_generator::operator()<char const*>(__p, "84848484-8484-8484-8484-848484848484", "");
    v113 = v10;
    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasAssociatedAccessPointLocalizerEnabled"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v16 = v15;

    if (!v16)
    {
      goto LABEL_14;
    }

    std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](v125, a4);
    isValidAssociatedAccessPointBasedDecision = ULBlueAtlasLocalizationAlgorithm::isValidAssociatedAccessPointBasedDecision(this, v125);
    v19 = isValidAssociatedAccessPointBasedDecision;
    if (v125[32] == 1)
    {
      CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v125);
      if (!v19)
      {
LABEL_14:
        if ((*(this + 136) & 1) == 0)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULBlueAtlasLocalizationAlgorithm::localize();
          }

          v28 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 68289026;
            *&__p[8] = 2082;
            *&__p[10] = "";
            _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAtlasLocalization, model with empty Blue Atlas Data, publishing empty results}", __p, 0x12u);
          }

          goto LABEL_140;
        }

        v109 = a2;
        v20 = *(this + 11);
        v21 = *(this + 23);
        v22 = *(this + 22);
        v23 = 0x277CBE000;
        if (v22 == v21)
        {
          v36 = 0.0;
          v37 = 0.0;
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
          do
          {
            CLMicroLocationFingerprint::CLMicroLocationFingerprint(__p, *v22);
            v24 = v123;
            if (v123 >= v124)
            {
              v25 = std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint>(&v122, __p);
            }

            else
            {
              std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(&v122, v123, __p);
              v25 = v24 + 224;
            }

            v123 = v25;
            v155.__r_.__value_.__r.__words[0] = &v154;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v155);
            if (v152)
            {
              v153 = v152;
              operator delete(v152);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v150);
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v149 + 4);
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(__p);
            v22 += 4;
          }

          while (v22 != v21);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          if ((*(this + 136) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v26 = *(this + 9);
          v27 = *(this + 10);
          while (v26 != v27)
          {
            *buf = *v26;
            *__p = CLMacAddress::toUint64(buf);
            *&__p[24] = 0;
            std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::push_back[abi:ne200100](&v119, __p);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p);
            ++v26;
          }

          CLMicroLocationFingerprint::CLMicroLocationFingerprint(&v155, &v122);
          v34 = v155.__r_.__value_.__r.__words[2];
          if (v155.__r_.__value_.__r.__words[2])
          {
            v35 = 0;
            do
            {
              if (*(v34 + 6) == 1)
              {
                ++v35;
              }

              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            v35 = 0;
          }

          memset(v118, 0, sizeof(v118));
          std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__init_with_size[abi:ne200100]<std::variant<unsigned long long,boost::uuids::uuid,std::string>*,std::variant<unsigned long long,boost::uuids::uuid,std::string>*>(v118, v119, v120, (v120 - v119) >> 5);
          v106 = a3;
          CLMicroLocationFingerprint::removeMeasurementsFromSourcesOtherThan(&v155, 1, v118);
          *__p = v118;
          std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
          v40 = v155.__r_.__value_.__r.__words[2];
          if (v155.__r_.__value_.__r.__words[2])
          {
            v41 = 1;
            do
            {
              if (*(v40 + 6) == 1)
              {
                if (*(v40 + 14))
                {
                  std::__throw_bad_variant_access[abi:ne200100]();
                }

                v133.var0 = ULHomeSlamModel::getTrajectoryPointCloud(v40[4]);
                if ((v41 & 1) == 0)
                {
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], ", ", 2);
                }

                CLMacAddress::toPrettyStr(&v133, buf);
                if (buf[23] >= 0)
                {
                  v42 = buf;
                }

                else
                {
                  v42 = *buf;
                }

                if (buf[23] >= 0)
                {
                  v43 = buf[23];
                }

                else
                {
                  v43 = *&buf[8];
                }

                v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p[16], v42, v43);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " (", 2);
                v45 = *(v40 + 7);
                v46 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ")", 1);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                v41 = 0;
              }

              v40 = *v40;
            }

            while (v40);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULBlueAtlasLocalizationAlgorithm::localize();
          }

          v47 = v109;
          v23 = 0x277CBE000;
          v48 = v106;
          v49 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v51 = v119;
            v50 = v120;
            v52 = v156;
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, &v133);
            if (v134 >= 0)
            {
              var0 = &v133;
            }

            else
            {
              var0 = v133.var0;
            }

            *buf = 68290050;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = (v50 - v51) >> 5;
            v137 = 2050;
            v138 = v35;
            v139 = 2050;
            v140 = v52;
            v141 = 2082;
            v142 = var0;
            _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAtlasLocalization - Model Super fingerprint, num dominant sources:%{public}lu, super fingerprint size before filtering dominant sources:%{public}lu, super fingerprint size:%{public}lu, values:%{public, location:escape_only}s}", buf, 0x3Au);
            if (v134 < 0)
            {
              operator delete(v133.var0);
            }

            v47 = v109;
            v23 = 0x277CBE000uLL;
            v48 = v106;
          }

          if ((*(v48 + 32) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](&v133, v48);
          if (!v135)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v54 = (*(*v135 + 48))(v135, &v155, v47);
          if (onceToken_MicroLocation_Default != -1)
          {
            ULBlueAtlasLocalizationAlgorithm::localize();
          }

          v36 = v54;
          v55 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = v36;
            v137 = 2050;
            v138 = 0;
            _os_log_impl(&dword_258FE9000, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAtlasLocalization, euclideanDistance:%{public}f, euclideanScore:%{public}f}", buf, 0x26u);
          }

          v56 = +[ULDefaultsSingleton shared];
          v57 = [v56 defaultsDictionary];

          v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasLocalizerEuclideanThresholds"];
          v59 = [v57 objectForKey:v58];
          if (v59 && (v60 = *(v23 + 2656), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v59, buf);
            v107 = *buf;
            v116 = *buf;
            v61 = *&buf[16];
          }

          else
          {
            ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_37BlueAtlasLocalizerEuclideanThresholdsEE12defaultValueE_, 2uLL, buf);
            v61 = *&buf[16];
            v107 = *buf;
            v116 = *buf;
          }

          v117 = v61;

          v62 = v107;
          v63 = +[ULDefaultsSingleton shared];
          v64 = [v63 defaultsDictionary];

          v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasLocalizerEuclideanSimilarityScores"];
          v66 = [v64 objectForKey:v65];
          if (v66 && (v67 = *(v23 + 2656), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v66, buf);
            v108 = *buf;
            v114 = *buf;
            v68 = *&buf[16];
          }

          else
          {
            ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_43BlueAtlasLocalizerEuclideanSimilarityScoresEE12defaultValueE_, 2uLL, buf);
            v68 = *&buf[16];
            v108 = *buf;
            v114 = *buf;
          }

          v115 = v68;

          CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(&v116, &v114, 0, v36);
          v37 = v69;
          if (v108)
          {
            operator delete(v108);
          }

          if (v62)
          {
            operator delete(v62);
          }

          std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&v133);
          *__p = *MEMORY[0x277D82818];
          v70 = *(MEMORY[0x277D82818] + 72);
          *&__p[*(*__p - 24)] = *(MEMORY[0x277D82818] + 64);
          *&__p[16] = v70;
          *&__p[24] = MEMORY[0x277D82878] + 16;
          if ((v150[7] & 0x80000000) != 0)
          {
            operator delete(*(&v149[3] + 4));
          }

          *&__p[24] = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&__p[32]);
          std::iostream::~basic_iostream();
          MEMORY[0x259CA1EE0](&v151);
          *__p = v161;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](__p);
          if (v159)
          {
            v160 = v159;
            operator delete(v159);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v158);
          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v157);
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v155);
          *__p = &v119;
          std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
          *__p = &v122;
          std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](__p);
        }

        v71 = ULBlueAtlasLocalizationAlgorithm::countSharedAPsInModelAndTestFingerprint(this, v109, v17);
        v72 = +[ULDefaultsSingleton shared];
        v73 = [v72 defaultsDictionary];

        v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasLocalizerRssiScaleNumberOfAps"];
        v75 = [v73 objectForKey:v74];
        if (v75 && (v76 = *(v23 + 2656), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v75, __p);
          v110 = *__p;
          *&v155.__r_.__value_.__l.__data_ = *__p;
          v77 = *&__p[16];
        }

        else
        {
          ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_38BlueAtlasLocalizerRssiScaleNumberOfApsEE12defaultValueE_, 2uLL, __p);
          v77 = *&__p[16];
          v110 = *__p;
          *&v155.__r_.__value_.__l.__data_ = *__p;
        }

        v155.__r_.__value_.__r.__words[2] = v77;

        v78 = v110;
        v79 = +[ULDefaultsSingleton shared];
        v80 = [v79 defaultsDictionary];

        v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasLocalizerRssiScaleFactor"];
        v82 = [v80 objectForKey:v81];
        if (v82 && (v83 = *(v23 + 2656), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v82, __p);
          v111 = *__p;
          *buf = *__p;
          v84 = *&__p[16];
        }

        else
        {
          ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_33BlueAtlasLocalizerRssiScaleFactorEE12defaultValueE_, 2uLL, __p);
          v84 = *&__p[16];
          v111 = *__p;
          *buf = *__p;
        }

        *&buf[16] = v84;

        v85 = v71;
        CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(&v155, buf, 1, v71);
        v87 = v86;
        if (v111)
        {
          operator delete(v111);
        }

        if (v78)
        {
          operator delete(v78);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULBlueAtlasLocalizationAlgorithm::localize();
        }

        v88 = (v37 + -0.5) * v87 + 0.5;
        v89 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 68290306;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 2050;
          *&__p[20] = v36;
          *&__p[28] = 2050;
          *&__p[30] = v37;
          v144 = 2050;
          v145 = v85;
          v146 = 2050;
          v147 = v87;
          v148 = 2050;
          v149[0] = (v37 + -0.5) * v87 + 0.5;
          _os_log_impl(&dword_258FE9000, v89, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAtlasLocalization, euclideanDistance:%{public}f, euclideanScore:%{public}f, numSharedAPs:%{public}f, rssiScaleFactor:%{public}f, similarityScore:%{public}f}", __p, 0x44u);
        }

        v33 = v126[1];
        if (v126[1] < v127)
        {
          v90 = v88;
          *v126[1] = v112;
          *(v33 + 1) = v113;
          v33[4] = v90;
          goto LABEL_126;
        }

        v92 = 0xCCCCCCCCCCCCCCCDLL * ((v126[1] - v126[0]) >> 2) + 1;
        if (v92 > 0xCCCCCCCCCCCCCCCLL)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        if (0x999999999999999ALL * ((v127 - v126[0]) >> 2) > v92)
        {
          v92 = 0x999999999999999ALL * ((v127 - v126[0]) >> 2);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v127 - v126[0]) >> 2) >= 0x666666666666666)
        {
          v93 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v93 = v92;
        }

        if (v93)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(v126, v93);
        }

        v94 = 4 * ((v126[1] - v126[0]) >> 2);
        v95 = v88;
        *v94 = v112;
        *(v94 + 8) = v113;
        *(v94 + 16) = v95;
        goto LABEL_137;
      }
    }

    else if (!isValidAssociatedAccessPointBasedDecision)
    {
      goto LABEL_14;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULBlueAtlasLocalizationAlgorithm::localize();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 136) != 1 || (*(this + 120) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v30 = *(this + 1);
      CLMacAddress::toCLStr(this + 14, &v155);
      if ((*(a4 + 32) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v31 = &v155;
      if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v155.__r_.__value_.__r.__words[0];
      }

      v32 = *(a4 + 16);
      *__p = 68289795;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2050;
      *&__p[20] = v30;
      *&__p[28] = 2081;
      *&__p[30] = v31;
      v144 = 2050;
      v145 = v32;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BlueAtlasLocalization, found matching strong associated AP, ModelType:%{public}lu, MAC Address:%{private, location:escape_only}s, Rssi:%{public}f}", __p, 0x30u);
      if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v155.__r_.__value_.__l.__data_);
      }
    }

    v33 = v126[1];
    if (v126[1] < v127)
    {
      *v126[1] = v112;
      *(v33 + 1) = v113;
      v33[4] = 1.0;
LABEL_126:
      v91 = v33 + 5;
LABEL_139:
      v126[1] = v91;
LABEL_140:
      *a5 = 0;
      *(a5 + 24) = 0;
      v98 = v128;
      if (v128 == 1)
      {
        *a5 = *v126;
        *(a5 + 16) = v127;
        v126[1] = 0;
        v127 = 0;
        v126[0] = 0;
        *(a5 + 24) = 1;
      }

      v99 = *v130;
      *(a5 + 32) = v129;
      *(a5 + 48) = v99;
      *(a5 + 63) = *&v130[15];
      *(a5 + 72) = v131;
      *(a5 + 88) = v132[0];
      v132[0] = 0;
      v131 = 0uLL;
      *(a5 + 96) = *&v132[1];
      *(a5 + 112) = v132[3];
      memset(&v132[1], 0, 24);
      *(a5 + 120) = 1;
      if (v98)
      {
        if (v126[0])
        {
          v126[1] = v126[0];
          operator delete(v126[0]);
        }
      }

      v100 = *MEMORY[0x277D85DE8];
      return;
    }

    v38 = 0xCCCCCCCCCCCCCCCDLL * ((v126[1] - v126[0]) >> 2) + 1;
    if (v38 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    if (0x999999999999999ALL * ((v127 - v126[0]) >> 2) > v38)
    {
      v38 = 0x999999999999999ALL * ((v127 - v126[0]) >> 2);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v127 - v126[0]) >> 2) >= 0x666666666666666)
    {
      v39 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v39 = v38;
    }

    if (v39)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(v126, v39);
    }

    v94 = 4 * ((v126[1] - v126[0]) >> 2);
    *v94 = v112;
    *(v94 + 8) = v113;
    *(v94 + 16) = 1065353216;
LABEL_137:
    v91 = (v94 + 20);
    v96 = (v94 - (v126[1] - v126[0]));
    memcpy(v96, v126[0], v126[1] - v126[0]);
    v97 = v126[0];
    v126[0] = v96;
    v126[1] = v91;
    v127 = 0;
    if (v97)
    {
      operator delete(v97);
    }

    goto LABEL_139;
  }

  v101 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
  {
    CLMicroLocationProtobufHelper::modelTypeToString(*(this + 1), &v155);
    v102 = (v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v155 : v155.__r_.__value_.__r.__words[0];
    *__p = 68289795;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2082;
    *&__p[20] = v102;
    *&__p[28] = 2082;
    *&__p[30] = "assert";
    v144 = 2081;
    v145 = COERCE_DOUBLE("model.modelType == CLMicroLocationProto::ModelType::BLUE_ATLAS");
    _os_log_impl(&dword_258FE9000, v101, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Blue Atlas Localization, model type is not BLUE_ATLAS!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", __p, 0x30u);
    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }
  }

  v103 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v103))
  {
    CLMicroLocationProtobufHelper::modelTypeToString(*(this + 1), &v155);
    v104 = (v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v155 : v155.__r_.__value_.__r.__words[0];
    *__p = 68289795;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2082;
    *&__p[20] = v104;
    *&__p[28] = 2082;
    *&__p[30] = "assert";
    v144 = 2081;
    v145 = COERCE_DOUBLE("model.modelType == CLMicroLocationProto::ModelType::BLUE_ATLAS");
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v103, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Blue Atlas Localization, model type is not BLUE_ATLAS!", "{msg%{public}.0s:Blue Atlas Localization, model type is not BLUE_ATLAS!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", __p, 0x30u);
    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }
  }

  v105 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    CLMicroLocationProtobufHelper::modelTypeToString(*(this + 1), &v155);
    ULBlueAtlasLocalizationAlgorithm::localize(&v155, __p, v105);
  }

  abort_report_np();
  __break(1u);
}

void sub_25904900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int16 a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (v69)
  {
    operator delete(v69);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&a57);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a69);
  CLMicroLocationFingerprint::~CLMicroLocationFingerprint(&STACK[0x300]);
  STACK[0x300] = &a30;
  std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  STACK[0x300] = &a33;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  ULLocalizationResult::~ULLocalizationResult(&a41);
  _Unwind_Resume(a1);
}

BOOL ULBlueAtlasLocalizationAlgorithm::isValidAssociatedAccessPointBasedDecision(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != 3 || *(a1 + 136) != 1 || *(a1 + 120) != 1 || *(a2 + 32) != 1)
  {
    return 0;
  }

  v3 = CLMacAddress::toUint64((a1 + 112));
  if ((*(a2 + 32) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (v3 != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasStrongAssociatedAccessPointThreshold"];
  v8 = [v6 objectForKey:v7];
  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 floatValue];
  }

  else
  {
LABEL_10:
    [&unk_286A72CD0 floatValue];
  }

  v10 = v9;

  return v4 > v10;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>(uint64_t result, uint64_t **a2, int a3, double a4)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = *a2;
  v7 = a2[1];
  if ((v4 - *result) == (v7 - *a2))
  {
    if (v5 != v4)
    {
      for (i = v5 + 1; i != v4; ++i)
      {
        v9 = *(i - 1);
        v10 = *i > v9;
        if (!a3)
        {
          v10 = *i < v9;
        }

        if (v10)
        {
          CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>();
        }
      }

      while (v5 != v4 && v6 != v7)
      {
        v11 = *v5;
        if (a3)
        {
          if (*v5 < a4)
          {
            goto LABEL_17;
          }
        }

        else if (*v5 > a4)
        {
LABEL_17:
          v12 = *v6;
          return result;
        }

        ++v5;
        ++v6;
      }
    }
  }

  else
  {
    v13 = CLMicroLocationBlueAtlasAlgorithms::calculateScoreForValue<double>();
    return ULBlueAtlasLocalizationAlgorithm::countSharedAPsInModelAndTestFingerprint(v13, v14, v15);
  }

  return result;
}

uint64_t ULBlueAtlasLocalizationAlgorithm::countSharedAPsInModelAndTestFingerprint(ULBlueAtlasLocalizationAlgorithm *this, const CLMicroLocationModel *a2, const CLMicroLocationFingerprint *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(this + 1) == 3 && *(this + 136) == 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    std::vector<CLMacAddress>::__init_with_size[abi:ne200100]<CLMacAddress*,CLMacAddress*>(&v24, *(this + 9), *(this + 10), (*(this + 10) - *(this + 9)) >> 3);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
    v4 = *(a2 + 2);
    if (v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        if (*(v4 + 6) == 1)
        {
          if (*(v4 + 14))
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          __p[0] = ULHomeSlamModel::getTrajectoryPointCloud(v4[4]);
          v7 = v24;
          v8 = v25;
          if (v24 != v25)
          {
            while (!CLMacAddress::operator==(v7, __p))
            {
              if (++v7 == v8)
              {
                v7 = v8;
                break;
              }
            }

            v8 = v25;
          }

          if (v7 != v8)
          {
            if ((v6 & 1) == 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", ", 2);
            }

            CLMacAddress::toPrettyStr(__p, buf);
            if ((v30 & 0x80000000) == 0)
            {
              v9 = buf;
            }

            else
            {
              v9 = *buf;
            }

            if ((v30 & 0x80000000) == 0)
            {
              v10 = BYTE3(v30);
            }

            else
            {
              v10 = *v28;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v9, v10);
            if (SBYTE3(v30) < 0)
            {
              operator delete(*buf);
            }

            v6 = 0;
            v5 = (v5 + 1);
          }
        }

        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULBlueAtlasLocalizationAlgorithm::localize();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v18, __p);
      v14 = v17 >= 0 ? __p : __p[0];
      *buf = 68289538;
      *&buf[4] = 0;
      *v28 = 2082;
      *&v28[2] = "";
      v29 = 2050;
      v30 = v5;
      v31 = 2082;
      v32 = v14;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:countSharedAPsInTestFingerprintAndModel, number of shared APs:%{public}lu, shared AP addresses:%{public, location:escape_only}s}", buf, 0x26u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v19 = v15;
    v20 = MEMORY[0x277D82878] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v21);
    std::iostream::~basic_iostream();
    MEMORY[0x259CA1EE0](&v23);
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2590499AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  v8 = *(v6 - 152);
  if (v8)
  {
    *(v6 - 144) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_11()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

CLMicroLocationProto::AssociatedAccessPointInfo *std::__optional_copy_base<CLMicroLocationProto::AssociatedAccessPointInfo,false>::__optional_copy_base[abi:ne200100](CLMicroLocationProto::AssociatedAccessPointInfo *this, const CLMicroLocationProto::AssociatedAccessPointInfo *a2)
{
  *this = 0;
  *(this + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(this, a2);
    *(this + 32) = 1;
  }

  return this;
}

void sub_259049AB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(a1, 224 * v2, a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CLMicroLocationFingerprint>::~__split_buffer(&v13);
  return v12;
}

void sub_259049C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CLMicroLocationFingerprint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a2, a3);
  v5 = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 40) = v5;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a2 + 64, (a3 + 64));
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a2 + 104, (a3 + 104));
  v6 = *(a3 + 144);
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 144) = v6;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a2 + 168) = *(a3 + 168);
  *(a2 + 184) = *(a3 + 184);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0;
  *(a2 + 192) = *(a3 + 192);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  result = *(a3 + 200);
  *(a2 + 200) = result;
  *(a2 + 216) = *(a3 + 216);
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  return result;
}

uint64_t std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<unsigned long long,boost::uuids::uuid,std::string>>>(a1, v11);
    }

    v12 = 32 * v8;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v12, a2);
    v7 = v12 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 32;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::~__split_buffer(v17);
  }

  else
  {
    result = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v4, a2);
    v7 = result + 32;
  }

  *(a1 + 8) = v7;
  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286A54B38[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long long,boost::uuids::uuid,std::string> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<unsigned long long,boost::uuids::uuid,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__init_with_size[abi:ne200100]<std::variant<unsigned long long,boost::uuids::uuid,std::string>*,std::variant<unsigned long long,boost::uuids::uuid,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259049FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<unsigned long long,boost::uuids::uuid,std::string>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::variant<unsigned long long,boost::uuids::uuid,std::string>*,std::variant<unsigned long long,boost::uuids::uuid,std::string>*,std::variant<unsigned long long,boost::uuids::uuid,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25904A068(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      v4 -= 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void sub_25904A344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_25904A4B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CLMacAddress>::__init_with_size[abi:ne200100]<CLMacAddress*,CLMacAddress*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25904A534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void ULCosineSimilarityLocalizationAlgorithm::localize(CLMicroLocationModel *this@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  if (!CLMicroLocationModel::isValid(this))
  {
    ULCosineSimilarityLocalizationAlgorithm::localize();
  }

  if (*(this + 1) != 2)
  {
    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      CLMicroLocationProtobufHelper::modelTypeToString(*(this + 1), buf);
      v25 = buf[1].n128_i8[7] >= 0 ? buf : buf[0].n128_u64[0];
      __p = 68289795;
      v49 = 2082;
      v50 = "";
      v51 = 2082;
      v52 = v25;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "model.modelType == CLMicroLocationProto::ModelType::SIMILARITY_LIST";
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CosineSimilarityLocalization, model type is not similarity list!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x30u);
      if (buf[1].n128_i8[7] < 0)
      {
        operator delete(buf[0].n128_u64[0]);
      }
    }

    v26 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v26))
    {
      CLMicroLocationProtobufHelper::modelTypeToString(*(this + 1), buf);
      v27 = buf[1].n128_i8[7] >= 0 ? buf : buf[0].n128_u64[0];
      __p = 68289795;
      v49 = 2082;
      v50 = "";
      v51 = 2082;
      v52 = v27;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "model.modelType == CLMicroLocationProto::ModelType::SIMILARITY_LIST";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CosineSimilarityLocalization, model type is not similarity list!", "{msg%{public}.0s:CosineSimilarityLocalization, model type is not similarity list!, Model Type:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x30u);
      if (buf[1].n128_i8[7] < 0)
      {
        operator delete(buf[0].n128_u64[0]);
      }
    }

    v28 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      CLMicroLocationProtobufHelper::modelTypeToString(*(this + 1), buf);
      ULCosineSimilarityLocalizationAlgorithm::localize(buf, &__p, v28);
    }

    abort_report_np();
    __break(1u);
    goto LABEL_87;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.magicalmoments");
  CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings(v35, &__p);
  std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](v39, v35);
  v40 = v37;
  v41 = v38;

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v35, v36);
  if (SBYTE3(v52) < 0)
  {
    operator delete(__p);
  }

  buf[0] = 0uLL;
  std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.magicalmoments");
  v5 = cl::chrono::CFAbsoluteTimeClock::now();
  ULModelMetaData::ULModelMetaData(v69, buf, &__p, 0, v5);
  if (SBYTE3(v52) < 0)
  {
    operator delete(__p);
  }

  std::optional<ULRfClusterModelMetaData>::operator=[abi:ne200100]<ULRfClusterModelMetaData&,void>(v70, v39);
  ULModel::ULModel(&__p, this);
  v33[0] = 0;
  v34 = 0;
  ULRfClusterLocalizer::localize(&__p, v69, a2, v33, a3);
  if (v34 == 1)
  {
    CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v33);
  }

  if (*(a3 + 120) == 1 && *(a3 + 24) == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&v30, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 2));
    v6 = v30;
    if (v30 != v31)
    {
      while (*v6 != 0)
      {
        v6 += 5;
        if (v6 == v31)
        {
          goto LABEL_28;
        }
      }
    }

    if (v6 == v31)
    {
LABEL_28:
      if (onceToken_MicroLocation_Default != -1)
      {
        ULCosineSimilarityLocalizationAlgorithm::localize();
      }

      v9 = logObject_MicroLocation_Default;
      v8 = 0.0;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u16[0] = 0;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "CosineSimilarityLocalization, did not find null space probability", buf, 2u);
      }
    }

    else
    {
      v8 = v6[4];
    }

    v10 = +[ULDefaultsSingleton shared];
    v11 = [v10 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullClusterThresholdForLowConfidence"];
    v13 = [v11 objectForKey:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v13 floatValue];
    }

    else
    {
      [&unk_286A72CE0 floatValue];
    }

    v15 = v14;

    if (v8 > v15)
    {
      *(a3 + 64) = 1;
      if (onceToken_MicroLocation_Default != -1)
      {
        ULCosineSimilarityLocalizationAlgorithm::localize();
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].n128_u64[0] = 68289283;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        buf[1].n128_u16[1] = 2049;
        *(buf[1].n128_f64 + 4) = v8;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CosineSimilarityLocalization, null cluster probability, nullClusterProbability:%{private}.6f}", buf, 0x1Cu);
      }
    }

    if (onceToken_MicroLocation_Default == -1)
    {
LABEL_42:
      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        buf[0].n128_u64[0] = 68289282;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        buf[1].n128_u16[1] = 2050;
        *(buf[1].n128_u64 + 4) = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v30) >> 2);
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CosineSimilarityLocalization, internalLocalizer results, numInternalResults:%{public}lu}", buf, 0x1Cu);
      }

      v18 = v30;
      v19 = v31;
      if (v31 != v30)
      {
        do
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULCosineSimilarityLocalizationAlgorithm::localize();
          }

          v20 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            operator new();
          }

          v18 += 20;
        }

        while (v18 != v19);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULCosineSimilarityLocalizationAlgorithm::localize();
      }

      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a3 + 64);
        buf[0].n128_u64[0] = 68289282;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        buf[1].n128_u16[1] = 1026;
        buf[1].n128_u32[1] = v22;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Updated RfScan, Is required:%{public}hhd}", buf, 0x18u);
      }

      ULLocalizationResult::removeNullCluster(a3);
      v7 = v30;
      if (v30)
      {
        v31 = v30;
        goto LABEL_56;
      }

      goto LABEL_57;
    }

LABEL_87:
    ULCosineSimilarityLocalizationAlgorithm::localize();
    goto LABEL_42;
  }

  v46 = 0;
  v44 = 0u;
  *v45 = 0u;
  *v43 = 0u;
  memset(buf, 0, sizeof(buf));
  v47 = 1;
  std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(a3, buf);
  if (v47 == 1)
  {
    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    if (v43[1])
    {
      *&v44 = v43[1];
      operator delete(v43[1]);
    }

    if (buf[1].n128_u8[8] == 1 && buf[0].n128_u64[0])
    {
      buf[0].n128_u64[1] = buf[0].n128_u64[0];
      operator delete(buf[0].n128_u64[0]);
    }
  }

  memset(buf, 0, 24);
  buf[1].n128_u8[8] = 1;
  std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(a3, buf);
  if (buf[1].n128_u8[8] == 1)
  {
    v7 = buf[0].n128_u64[0];
    if (buf[0].n128_u64[0])
    {
      buf[0].n128_u64[1] = buf[0].n128_u64[0];
LABEL_56:
      operator delete(v7);
    }
  }

LABEL_57:
  if (v68 == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel(&v67);
  }

  if (v66 == 1)
  {
    if (v65 < 0)
    {
      operator delete(v64);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v61);
    buf[0].n128_u64[0] = &v60;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v59 == 1 && v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v50 + 6);
  }

  if (v71 == 1)
  {

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v70, v70[1]);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v39, v39[1]);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_25904AF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::optional<ULLocalizationResult>::~optional(a18);
  ULModel::~ULModel(&a57);
  ULModelMetaData::~ULModelMetaData((v65 - 192));
  CLMicroLocationLocalizationSettings::~CLMicroLocationLocalizationSettings(&a36);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRfClusterModelMetaData>::operator=[abi:ne200100]<ULRfClusterModelMetaData&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    if (a1 != a2)
    {
      std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__tree_node<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,void *> *,long>>(a1, *a2, (a2 + 8));
    }

    objc_storeStrong((a1 + 24), *(a2 + 24));
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](a1, a2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_12()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__tree_node<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__tree_node<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__emplace_hint_unique_key_args<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::pair<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes const,double> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__emplace_hint_unique_key_args<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::pair<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes const,double> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__find_equal<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__find_equal<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t **std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__tree_node<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<double>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          v8[5] = v9[5];
          std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<double>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<double>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__emplace_multi<std::pair<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes const,double> const&>();
  }

  return result;
}

void sub_25904B648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<double>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::__map_value_compare<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>,std::less<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes>,true>,std::allocator<std::__value_type<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

__n128 std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == *(a2 + 120))
  {
    if (*(a1 + 120))
    {
      std::__optional_storage_base<std::vector<ULLocalizationResultInternal>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULLocalizationResultInternal>,false>>(a1, a2);
      v4 = *(a2 + 32);
      v5 = *(a2 + 48);
      *(a1 + 63) = *(a2 + 63);
      *(a1 + 32) = v4;
      *(a1 + 48) = v5;
      std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 72, (a2 + 72));

      result.n128_u64[0] = std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 96, (a2 + 96)).n128_u64[0];
    }
  }

  else if (*(a1 + 120))
  {
    v7 = *(a1 + 96);
    if (v7)
    {
      *(a1 + 104) = v7;
      operator delete(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      *(a1 + 80) = v8;
      operator delete(v8);
    }

    if (*(a1 + 24) == 1)
    {
      v9 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v9;
        operator delete(v9);
      }
    }

    *(a1 + 120) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a1 + 24) = 1;
    }

    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    *(a1 + 63) = *(a2 + 63);
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    result = *(a2 + 96);
    *(a1 + 96) = result;
    *(a1 + 112) = *(a2 + 112);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a1 + 120) = 1;
  }

  return result;
}

void ULHomeSlamModel::~ULHomeSlamModel(void **this)
{
  v3 = this + 23;
  std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((this + 8));
  v3 = this + 5;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 32) == 1)
  {
    v2 = this[3];
    this[3] = 0;
    if (v2)
    {
      v3 = (v2 + 80);
      std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::__destroy_vector::operator()[abi:ne200100](&v3);
      v3 = (v2 + 56);
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
      MEMORY[0x259CA1F90](v2, 0x1020C40B3163EAALL);
    }

    v3 = this;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void ULModelMetaData::~ULModelMetaData(id *this)
{
  if (*(this + 64) == 1)
  {

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy((this + 3), this[4]);
  }
}

void ULHomeSlamProbabilityVectorAlgorithm::localizeVisionFingerprint(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  v4 = a1;
  v5 = *(a3 + 340);
  v6 = *(a3 + 344);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  __src = 0;
  v98 = 0;
  v99 = 0;
  v7 = *a1;
  v92 = a1[1];
  if (*a1 == v92)
  {
    v26 = 0;
    v10 = 0;
  }

  else
  {
    v90 = v6;
    v10 = 0;
    do
    {
      v11 = *v7;
      v12 = v7[1];
      while (v11 != v12)
      {
        v13 = *(a3 + 280);
        if (!v13)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v14 = (*(*v13 + 48))(v13, v11 + 16, a2);
        v15 = v98;
        if (v98 >= v99)
        {
          v16 = __src;
          v17 = v98 - __src;
          v18 = (v98 - __src) >> 3;
          v19 = v18 + 1;
          if ((v18 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v20 = v99 - __src;
          if ((v99 - __src) >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v21);
          }

          v22 = (v98 - __src) >> 3;
          v23 = 8 * v18;
          *v23 = *(v7 + 6);
          *(v23 + 4) = v14;
          v10 = 8 * v18 + 8;
          v24 = (8 * v18 - 8 * v22);
          memcpy((v23 - 8 * v22), v16, v17);
          v25 = __src;
          __src = v24;
          v98 = v10;
          v99 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v98 = *(v7 + 6);
          *(v15 + 1) = v14;
          v10 = (v15 + 8);
        }

        v98 = v10;
        v11 += 240;
      }

      v7 += 4;
    }

    while (v7 != v92);
    v26 = __src;
    v6 = v90;
    v4 = a1;
  }

  if ((v10 - v26) >> 3 >= v6)
  {
    v27 = v6;
  }

  else
  {
    v27 = (v10 - v26) >> 3;
  }

  v28 = 8 * v27;
  if (v27)
  {
    v29 = &v26[2 * v27];
    if (v27 >= 2)
    {
      v30 = (v27 - 2) >> 1;
      v31 = &v26[2 * v30];
      v32 = v30 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeVisionFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_0 &,std::__wrap_iter<std::pair<int,float> *>>(v26, v27, v31);
        v31 -= 2;
        --v32;
      }

      while (v32);
    }

    if (v29 != v10)
    {
      v33 = &v26[2 * v27];
      do
      {
        v34 = v33[1];
        v35 = v26[1];
        if (v34 < v35)
        {
          v36 = *v33;
          *v33 = *v26;
          *v26 = v36;
          v33[1] = v35;
          v26[1] = v34;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeVisionFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_0 &,std::__wrap_iter<std::pair<int,float> *>>(v26, v27, v26);
        }

        v33 += 2;
      }

      while (v33 != v10);
    }

    if (v27 >= 2)
    {
      do
      {
        v37 = 0;
        v38 = *v26;
        v39 = v26[1];
        v40 = v26;
        do
        {
          v41 = v40;
          v40 += 2 * v37 + 2;
          v42 = 2 * v37;
          v37 = (2 * v37) | 1;
          v43 = v42 + 2;
          if (v43 < v27 && v40[1] < v40[3])
          {
            v40 += 2;
            v37 = v43;
          }

          *v41 = *v40;
          v41[1] = v40[1];
        }

        while (v37 <= ((v27 - 2) >> 1));
        if (v40 == v29 - 2)
        {
          *v40 = v38;
        }

        else
        {
          *v40 = *(v29 - 2);
          v40[1] = *(v29 - 1);
          *(v29 - 2) = v38;
          *(v29 - 1) = v39;
          v44 = (v40 - v26 + 8) >> 3;
          v45 = v44 < 2;
          v46 = v44 - 2;
          if (v45)
          {
            goto LABEL_49;
          }

          v47 = v46 >> 1;
          v48 = &v26[2 * v47];
          v49 = v48[1];
          v39 = v40[1];
          if (v49 >= v39)
          {
            goto LABEL_49;
          }

          v50 = *v40;
          do
          {
            v51 = v40;
            v40 = v48;
            *v51 = *v48;
            v51[1] = v49;
            if (!v47)
            {
              break;
            }

            v47 = (v47 - 1) >> 1;
            v48 = &v26[2 * v47];
            v49 = v48[1];
          }

          while (v49 < v39);
          *v40 = v50;
        }

        v40[1] = v39;
LABEL_49:
        v29 -= 2;
        v45 = v27-- <= 2;
      }

      while (!v45);
    }
  }

  v94 = 0u;
  v95 = 0u;
  v96 = 1065353216;
  v52 = a4;
  if (!v28)
  {
    goto LABEL_117;
  }

  v53 = __src;
  do
  {
    if (v53[1] >= v5)
    {
      break;
    }

    v100 = v53;
    v54 = std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v94, v53);
    ++v54[3];
    v53 += 2;
  }

  while (v53 != (__src + v28));
  v52 = a4;
  if (!*(&v95 + 1))
  {
LABEL_117:
    v55 = *v4;
    v56 = v4[1];
    if (*v4 != v56)
    {
      v57 = v52[1];
      do
      {
        v58 = *(v55 + 24);
        v59 = v52[2];
        if (v57 >= v59)
        {
          v60 = *v52;
          v61 = v57 - *v52;
          v62 = v61 >> 4;
          v63 = (v61 >> 4) + 1;
          if (v63 >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v64 = v59 - v60;
          if (v64 >> 3 > v63)
          {
            v63 = v64 >> 3;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFF0)
          {
            v65 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULRoomProbability>>(a4, v65);
          }

          v66 = 16 * v62;
          *v66 = v58;
          *(v66 + 8) = 0;
          v57 = 16 * v62 + 16;
          v67 = (v66 - 16 * (v61 >> 4));
          memcpy(v67, v60, v61);
          v68 = *a4;
          *a4 = v67;
          a4[1] = v57;
          a4[2] = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }

        else
        {
          *v57 = v58;
          *(v57 + 8) = 0;
          v57 += 16;
        }

        v52 = a4;
        a4[1] = v57;
        v55 += 32;
      }

      while (v55 != v56);
    }
  }

  v69 = v95;
  if (v95)
  {
    v70 = *v95;
    if (*v95)
    {
      do
      {
        if (v69[3] < v70[3])
        {
          v69 = v70;
        }

        v70 = *v70;
      }

      while (v70);
      v71 = a4;
      if (!v69)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v71 = a4;
    }

    v72 = *v4;
    v73 = v4[1];
    if (*v4 == v73)
    {
      goto LABEL_107;
    }

    do
    {
      v74 = *(v72 + 24);
      v76 = v71[1];
      v75 = v71[2];
      if (v74 == *(v69 + 4))
      {
        if (v76 >= v75)
        {
          v78 = *a4;
          v79 = v76 - *a4;
          v80 = (v79 >> 4) + 1;
          if (v80 >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v81 = v75 - v78;
          if (v81 >> 3 > v80)
          {
            v80 = v81 >> 3;
          }

          if (v81 >= 0x7FFFFFFFFFFFFFF0)
          {
            v82 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v82 = v80;
          }

          if (v82)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULRoomProbability>>(a4, v82);
          }

          v86 = v79 >> 4;
          v71 = a4;
          v87 = 16 * (v79 >> 4);
          *v87 = v74;
          *(v87 + 8) = 0x3FF0000000000000;
LABEL_104:
          v77 = v87 + 16;
          v88 = (v87 - 16 * v86);
          memcpy(v88, v78, v79);
          v89 = *v71;
          *v71 = v88;
          v71[1] = v77;
          v71[2] = 0;
          if (v89)
          {
            operator delete(v89);
          }

          goto LABEL_106;
        }

        *v76 = v74;
        *(v76 + 1) = 0x3FF0000000000000;
      }

      else
      {
        if (v76 >= v75)
        {
          v78 = *a4;
          v79 = v76 - *a4;
          v83 = (v79 >> 4) + 1;
          if (v83 >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v84 = v75 - v78;
          if (v84 >> 3 > v83)
          {
            v83 = v84 >> 3;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFF0)
          {
            v85 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULRoomProbability>>(a4, v85);
          }

          v86 = v79 >> 4;
          v71 = a4;
          v87 = 16 * (v79 >> 4);
          *v87 = v74;
          *(v87 + 8) = 0;
          goto LABEL_104;
        }

        *v76 = v74;
        *(v76 + 1) = 0;
      }

      v77 = (v76 + 16);
      v71 = a4;
LABEL_106:
      v71[1] = v77;
      v72 += 32;
    }

    while (v72 != v73);
  }

LABEL_107:
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v94);
  if (__src)
  {
    v98 = __src;
    operator delete(__src);
  }
}

void sub_25904C0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a13);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  v20 = *a12;
  if (*a12)
  {
    *(a12 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint@<X0>(int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v9 = *v6;
      if (*v6 != *(v6 + 1))
      {
        *buf = v6 + 6;
        std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v75, v6 + 6);
        v10 = *(a3 + 280);
        if (v10)
        {
          *buf = (*(*v10 + 48))(v10, v9 + 16, a2);
          std::__tree<double>::__emplace_multi<double>();
        }

        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 += 8;
    }

    while (v6 != v7);
  }

  ULHomeSlamProbabilityVectorAlgorithm::createReducedDistancesMap(v75, a3, v73);
  v70 = 0u;
  v71 = 0u;
  v72 = 1065353216;
  __src = 0;
  v68 = 0;
  v69 = 0;
  ULAlgorithms::createKernelFunction(*(a3 + 312), &v66);
  for (i = v74; i; i = *i)
  {
    v12 = (*(*v66 + 24))(v66, *(i + 3));
    v13 = (i + 2);
    *buf = i + 2;
    std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v70, i + 4)[3] = 0;
    if (v12 >= 0.0)
    {
      if (v12 >= 0.999)
      {
        v14 = v68;
        if (v68 >= v69)
        {
          v16 = __src;
          v17 = v68 - __src;
          v18 = (v68 - __src) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v20 = v69 - __src;
          if ((v69 - __src) >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
          v22 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v22 = v19;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v22);
          }

          *(4 * v18) = *v13;
          v15 = 4 * v18 + 4;
          memcpy(0, v16, v17);
          v23 = __src;
          __src = 0;
          v68 = v15;
          v69 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v68 = *v13;
          v15 = (v14 + 4);
        }

        v68 = v15;
      }

      else
      {
        *buf = i + 2;
        *(std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v70, i + 4) + 3) = v12 / (1.0 - v12);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint();
    }

    v24 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      std::to_string(&v65, *v13);
      v25 = &v65;
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v65.__r_.__value_.__r.__words[0];
      }

      v27 = i[3];
      v26 = i[4];
      *buf = 68290051;
      *&buf[4] = 0;
      v78 = 2082;
      v79 = "";
      v80 = 2081;
      v81 = v25;
      v82 = 2049;
      v83 = v26;
      v84 = 2049;
      v85 = v12;
      v86 = 2049;
      v87 = v27;
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:nullspace, identifier:%{private, location:escape_only}s, weight:%{private}f, phat:%{private}f, reducedDistance:%{private}f}", buf, 0x3Au);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v28 = __src;
  v29 = v68;
  v30 = v71;
  if (__src == v68)
  {
    if (v71)
    {
      v46 = 1.0;
      v47 = v71;
      do
      {
        v46 = v46 + v47[3];
        v47 = *v47;
      }

      while (v47);
      v33 = 0;
      v48 = 1.0 / v46;
      do
      {
        v49 = *(v30 + 4);
        v50 = v48 * *(v30 + 3);
        v51 = *(a4 + 16);
        if (v33 >= v51)
        {
          v52 = (v33 - *a4) >> 4;
          if ((v52 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v53 = v51 - *a4;
          v54 = v53 >> 3;
          if (v53 >> 3 <= (v52 + 1))
          {
            v54 = v52 + 1;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFF0)
          {
            v55 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v54;
          }

          if (v55)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULRoomProbability>>(a4, v55);
          }

          v56 = 16 * v52;
          *v56 = v49;
          *(v56 + 4) = 0;
          *(v56 + 8) = v50;
          v33 = (16 * v52 + 16);
          v57 = *(a4 + 8) - *a4;
          v58 = v56 - v57;
          memcpy((v56 - v57), *a4, v57);
          v59 = *a4;
          *a4 = v58;
          *(a4 + 8) = v33;
          *(a4 + 16) = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          v33->n128_u32[0] = v49;
          v33->n128_u32[1] = 0;
          v33->n128_f64[1] = v50;
          ++v33;
        }

        *(a4 + 8) = v33;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    if (v71)
    {
      do
      {
        *buf = v30 + 2;
        std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v70, v30 + 4)[3] = 0;
        v30 = *v30;
      }

      while (v30);
      v28 = __src;
      v29 = v68;
    }

    if (v29 != v28)
    {
      v31 = 1.0 / (v29 - v28);
      do
      {
        *buf = *&v28;
        *(std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v70, v28++) + 3) = v31;
      }

      while (v28 != v29);
    }

    v32 = v71;
    if (v71)
    {
      v33 = *(a4 + 8);
      do
      {
        v34 = *(v32 + 4);
        v35 = v32[3];
        v36 = *(a4 + 16);
        if (v33 >= v36)
        {
          v37 = *a4;
          v38 = v33 - *a4;
          v39 = v38 >> 4;
          v40 = (v38 >> 4) + 1;
          if (v40 >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v41 = v36 - v37;
          if (v41 >> 3 > v40)
          {
            v40 = v41 >> 3;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULRoomProbability>>(a4, v42);
          }

          v43 = 16 * v39;
          *v43 = v34;
          *(v43 + 8) = v35;
          v33 = (16 * v39 + 16);
          v44 = (v43 - 16 * (v38 >> 4));
          memcpy(v44, v37, v38);
          v45 = *a4;
          *a4 = v44;
          *(a4 + 8) = v33;
          *(a4 + 16) = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          v33->n128_u32[0] = v34;
          v33->n128_u64[1] = v35;
          ++v33;
        }

        *(a4 + 8) = v33;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      v33 = *(a4 + 8);
    }
  }

  v60 = 126 - 2 * __clz((v33 - *a4) >> 4);
  if (v33 == *a4)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  std::__introsort<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,false>(*a4, v33, v61, 1);
  v62 = v66;
  v66 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  if (__src)
  {
    v68 = __src;
    operator delete(__src);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v70);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v73);
  result = std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(v75);
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25904C7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a19);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a24);
  std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(&a29);
  _Unwind_Resume(a1);
}

uint64_t ULHomeSlamProbabilityVectorAlgorithm::createReducedDistancesMap@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    do
    {
      v6 += v5[5];
      v5 = *v5;
    }

    while (v5);
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  ULAlgorithms::createReducerFunction<std::multiset<double>,double>(*(a2 + 288), 0, v15, *(a2 + 296), *(a2 + 304));
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    std::multiset<double>::multiset[abi:ne200100](v14, i + 3);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = (*(*v16 + 48))(v16, v14);
    v10 = i[5];
    v14[4] = i + 2;
    v11 = std::__hash_table<std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::__unordered_map_hasher<int,std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,ULHomeSlamProbabilityVectorAlgorithm::ReducedDistanceAndWeight>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a3, i + 4);
    *(v11 + 3) = v9;
    *(v11 + 4) = v10 / v7;
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v14, v14[1]);
  }

  result = std::__function::__value_func<double ()(std::multiset<double>)>::~__value_func[abi:ne200100](v15);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void ULHomeSlamProbabilityVectorAlgorithm::localize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == *(a1 + 8))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULHomeSlamProbabilityVectorAlgorithm::localize();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "[ULHomeSlamProbabilityVectorAlgorithm]: localize with empty rois, returning empty results", v6, 2u);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else if (*(a2 + 208) == *(a2 + 200))
  {

    ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(a1, a2, a3, a4);
  }

  else
  {

    ULHomeSlamProbabilityVectorAlgorithm::localizeVisionFingerprint(a1, a2, a3, a4);
  }
}

uint64_t ULAlgorithms::createReducerFunction<std::multiset<double>,double>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (result >= 6)
  {
    ULAlgorithms::createReducerFunction<std::multiset<double>,double>();
  }

  if (result <= 2)
  {
    if (result)
    {
      if (result != 1)
      {
        if (a2 == 1)
        {
          *a3 = &unk_286A54BE0;
          v5 = CLReducerFunction<std::multiset<double>,double>::maximumValue;
          goto LABEL_28;
        }

        if (!a2)
        {
          *a3 = &unk_286A54BE0;
          v5 = CLReducerFunction<std::multiset<double>,double>::maximumValueSorted;
LABEL_28:
          *(a3 + 8) = v5;
          goto LABEL_29;
        }

LABEL_22:
        *(a3 + 24) = 0;
        return result;
      }
    }

    else
    {
      if (a2 == 1)
      {
        *a3 = &unk_286A54BE0;
        v5 = CLReducerFunction<std::multiset<double>,double>::minimumValue;
        goto LABEL_28;
      }

      if (!a2)
      {
        *a3 = &unk_286A54BE0;
        v5 = CLReducerFunction<std::multiset<double>,double>::minimumValueSorted;
        goto LABEL_28;
      }
    }

    *a3 = &unk_286A54BE0;
    v5 = CLReducerFunction<std::multiset<double>,double>::meanValue;
    goto LABEL_28;
  }

  if (result == 3)
  {
    if (!a2)
    {
      *a3 = &unk_286A54BE0;
      v5 = CLReducerFunction<std::multiset<double>,double>::firstQuartileValueSorted;
      goto LABEL_28;
    }

    if (a2 == 1)
    {
      ULAlgorithms::createReducerFunction<std::multiset<double>,double>();
    }

    goto LABEL_22;
  }

  if (result == 4)
  {
    if (!a2)
    {
      *a3 = &unk_286A54BE0;
      v5 = CLReducerFunction<std::multiset<double>,double>::medianValueSorted;
      goto LABEL_28;
    }

    if (a2 == 1)
    {
      ULAlgorithms::createReducerFunction<std::multiset<double>,double>();
    }

    goto LABEL_22;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      ULAlgorithms::createReducerFunction<std::multiset<double>,double>();
    }

    goto LABEL_22;
  }

  *a3 = &unk_286A54C90;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
LABEL_29:
  *(a3 + 24) = a3;
  return result;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeVisionFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_0 &,std::__wrap_iter<std::pair<int,float> *>>(uint64_t result, uint64_t a2, float *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) | 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      if (v8 < a2 && v7[1] < v7[3])
      {
        v7 += 2;
        v6 = v8;
      }

      v9 = v7[1];
      v10 = a3[1];
      if (v9 >= v10)
      {
        v11 = *a3;
        do
        {
          v12 = a3;
          a3 = v7;
          *v12 = *v7;
          v12[1] = v9;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 8 * v6);
          v14 = v13 + 2;
          if (v14 < a2 && v7[1] < v7[3])
          {
            v7 += 2;
            v6 = v14;
          }

          v9 = v7[1];
        }

        while (v9 >= v10);
        *a3 = v11;
        a3[1] = v10;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULRoomProbability>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_13()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__introsort<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
  v140 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      goto LABEL_190;
    }

    if (v12 == 2)
    {
      v67 = a2[-1].n128_i32[0];
      v66 = a2 - 1;
      if (v67 < *v11)
      {
        v68 = *v11;
        *v11 = *v66;
        *v66 = v68;
      }

      goto LABEL_190;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v81 = (v11 + 16);
      v83 = v11 == a2 || v81 == a2;
      if (a4)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v11;
          do
          {
            v86 = v81;
            v87 = *(v85 + 16);
            if (v87 < *v85)
            {
              v129 = *(v85 + 20);
              v135 = *(v85 + 28);
              v88 = v84;
              while (1)
              {
                *(v11 + v88 + 16) = *(v11 + v88);
                if (!v88)
                {
                  break;
                }

                v89 = *(v11 + v88 - 16);
                v88 -= 16;
                if (v87 >= v89)
                {
                  v90 = v11 + v88 + 16;
                  goto LABEL_123;
                }
              }

              v90 = v11;
LABEL_123:
              *v90 = v87;
              *(v90 + 12) = v135;
              *(v90 + 4) = v129;
            }

            v81 = v86 + 1;
            v84 += 16;
            v85 = v86;
          }

          while (&v86[1] != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v120 = v81;
          v121 = *(a1 + 16);
          if (v121 < *a1)
          {
            v132 = *(a1 + 20);
            v137 = *(a1 + 28);
            do
            {
              *v81 = v81[-1];
              v122 = v81[-2].n128_i32[0];
              --v81;
            }

            while (v121 < v122);
            v81->n128_u32[0] = v121;
            v81->n128_u32[3] = v137;
            *(v81->n128_u64 + 4) = v132;
          }

          v81 = v120 + 1;
          a1 = v120;
        }

        while (&v120[1] != a2);
      }

      goto LABEL_190;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v91 = (v12 - 2) >> 1;
        v92 = v91;
        do
        {
          v93 = v92;
          if (v91 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v11 + 16 * v94);
            if (2 * v93 + 2 >= v12)
            {
              v96 = *v95;
            }

            else
            {
              v96 = v95[4];
              v97 = *v95 < v96;
              if (*v95 > v96)
              {
                v96 = *v95;
              }

              if (v97)
              {
                v95 += 4;
                v94 = 2 * v93 + 2;
              }
            }

            v98 = (v11 + 16 * v93);
            v99 = *v98;
            if (v96 >= *v98)
            {
              v136 = v98[3];
              v130 = *(v98 + 1);
              do
              {
                v100 = v98;
                v98 = v95;
                *v100 = *v95;
                if (v91 < v94)
                {
                  break;
                }

                v101 = (2 * v94) | 1;
                v95 = (v11 + 16 * v101);
                v94 = 2 * v94 + 2;
                if (v94 >= v12)
                {
                  v102 = *v95;
                  v94 = v101;
                }

                else
                {
                  v102 = *v95;
                  v103 = v95[4];
                  if (*v95 <= v103)
                  {
                    v102 = v95[4];
                  }

                  if (*v95 >= v103)
                  {
                    v94 = v101;
                  }

                  else
                  {
                    v95 += 4;
                  }
                }
              }

              while (v102 >= v99);
              *v98 = v99;
              v98[3] = v136;
              *(v98 + 1) = v130;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        do
        {
          v104 = 0;
          v131 = *v11;
          v105 = v11;
          do
          {
            v106 = &v105[v104];
            v107 = v106 + 1;
            v108 = (2 * v104) | 1;
            v104 = 2 * v104 + 2;
            if (v104 >= v12)
            {
              v104 = v108;
            }

            else
            {
              v110 = v106[2].n128_i32[0];
              v109 = v106 + 2;
              if (v109[-1].n128_u32[0] >= v110)
              {
                v104 = v108;
              }

              else
              {
                v107 = v109;
              }
            }

            *v105 = *v107;
            v105 = v107;
          }

          while (v104 <= ((v12 - 2) >> 1));
          if (v107 == --a2)
          {
            *v107 = v131;
          }

          else
          {
            *v107 = *a2;
            *a2 = v131;
            v111 = (&v107[1] - v11) >> 4;
            v97 = v111 < 2;
            v112 = v111 - 2;
            if (!v97)
            {
              v113 = v112 >> 1;
              v114 = (v11 + 16 * v113);
              v115 = v107->n128_u32[0];
              if (v114->n128_u32[0] < v107->n128_u32[0])
              {
                v139 = v107->n128_i32[3];
                v138 = *(v107->n128_u64 + 4);
                do
                {
                  v116 = v107;
                  v107 = v114;
                  *v116 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v11 + 16 * v113);
                }

                while (v114->n128_u32[0] < v115);
                v107->n128_u32[0] = v115;
                v107->n128_u32[3] = v139;
                *(v107->n128_u64 + 4) = v138;
              }
            }
          }

          v97 = v12-- <= 2;
        }

        while (!v97);
      }

      goto LABEL_190;
    }

    v13 = (v11 + 16 * (v12 >> 1));
    v14 = v13;
    v15 = v8->n128_u32[0];
    if (v12 >= 0x81)
    {
      v16 = v13->n128_u32[0];
      if (v13->n128_u32[0] >= *v11)
      {
        if (v15 < v16)
        {
          v20 = *v13;
          *v13 = *v8;
          *v8 = v20;
          if (v13->n128_u32[0] < *v11)
          {
            v21 = *v11;
            *v11 = *v13;
            *v13 = v21;
          }
        }
      }

      else
      {
        v17 = *v11;
        if (v15 >= v16)
        {
          *v11 = *v13;
          *v13 = v17;
          if (v8->n128_u32[0] < v17.n128_i32[0])
          {
            *v13 = *v8;
            a2[-1] = v17;
          }
        }

        else
        {
          *v11 = *v8;
          a2[-1] = v17;
        }
      }

      v24 = (v11 + 16);
      v25 = v13 - 1;
      v26 = v13[-1].n128_i32[0];
      v27 = v9->n128_u32[0];
      if (v26 >= *(v11 + 16))
      {
        if (v27 < v26)
        {
          v29 = *v25;
          *v25 = *v9;
          *v9 = v29;
          if (v25->n128_u32[0] < v24->n128_u32[0])
          {
            v30 = *v24;
            *v24 = *v25;
            *v25 = v30;
          }
        }
      }

      else
      {
        v28 = *v24;
        if (v27 >= v26)
        {
          *v24 = *v25;
          *v25 = v28;
          if (v9->n128_u32[0] < v28.n128_i32[0])
          {
            *v25 = *v9;
            a2[-2] = v28;
          }
        }

        else
        {
          *v24 = *v9;
          a2[-2] = v28;
        }
      }

      v31 = (v11 + 32);
      v34 = v13[1].n128_i32[0];
      v32 = v13 + 1;
      v33 = v34;
      v35 = v10->n128_u32[0];
      if (v34 >= *(v11 + 32))
      {
        if (v35 < v33)
        {
          v37 = *v32;
          *v32 = *v10;
          *v10 = v37;
          if (v32->n128_u32[0] < v31->n128_u32[0])
          {
            v38 = *v31;
            *v31 = *v32;
            *v32 = v38;
          }
        }
      }

      else
      {
        v36 = *v31;
        if (v35 >= v33)
        {
          *v31 = *v32;
          *v32 = v36;
          if (v10->n128_u32[0] < v36.n128_i32[0])
          {
            *v32 = *v10;
            a2[-3] = v36;
          }
        }

        else
        {
          *v31 = *v10;
          a2[-3] = v36;
        }
      }

      v39 = *v14;
      v40 = v25->n128_u32[0];
      v41 = v32->n128_u32[0];
      if (*v14 >= v25->n128_u32[0])
      {
        if (v41 < v39)
        {
          v43 = *v14;
          *v14 = *v32;
          *v32 = v43;
          if (*v14 < v40)
          {
            v44 = *v25;
            *v25 = *v14;
            *v14 = v44;
          }
        }
      }

      else
      {
        v42 = *v25;
        if (v41 < v39)
        {
          *v25 = *v32;
          goto LABEL_54;
        }

        *v25 = *v14;
        *v14 = v42;
        if (v41 < v42.n128_i32[0])
        {
          *v14 = *v32;
LABEL_54:
          *v32 = v42;
        }
      }

      v45 = *v11;
      *v11 = *v14;
      *v14 = v45;
      goto LABEL_56;
    }

    v18 = *v11;
    if (*v11 >= v13->n128_u32[0])
    {
      if (v15 < v18)
      {
        v22 = *v11;
        *v11 = *v8;
        *v8 = v22;
        if (*v11 < v13->n128_u32[0])
        {
          v23 = *v13;
          *v13 = *v11;
          *v11 = v23;
        }
      }

      goto LABEL_56;
    }

    v19 = *v13;
    if (v15 >= v18)
    {
      *v13 = *v11;
      *v11 = v19;
      if (v8->n128_u32[0] >= v19.n128_i32[0])
      {
        goto LABEL_56;
      }

      *v11 = *v8;
    }

    else
    {
      *v13 = *v8;
    }

    *v8 = v19;
LABEL_56:
    --a3;
    v46 = *v11;
    if ((a4 & 1) != 0 || *(v11 - 16) < v46)
    {
      v47 = 0;
      v133 = *(v11 + 12);
      v127 = *(v11 + 4);
      do
      {
        v48 = *(v11 + v47 + 16);
        v47 += 16;
      }

      while (v48 < v46);
      v49 = v11 + v47;
      v50 = a2;
      if (v47 == 16)
      {
        v50 = a2;
        do
        {
          if (v49 >= v50)
          {
            break;
          }

          v52 = v50[-1].n128_i32[0];
          --v50;
        }

        while (v52 >= v46);
      }

      else
      {
        do
        {
          v51 = v50[-1].n128_i32[0];
          --v50;
        }

        while (v51 >= v46);
      }

      v11 += v47;
      if (v49 < v50)
      {
        v53 = v50;
        do
        {
          v54 = *v11;
          *v11 = *v53;
          *v53 = v54;
          do
          {
            v55 = *(v11 + 16);
            v11 += 16;
          }

          while (v55 < v46);
          do
          {
            v56 = v53[-1].n128_i32[0];
            --v53;
          }

          while (v56 >= v46);
        }

        while (v11 < v53);
      }

      if (v11 - 16 != a1)
      {
        *a1 = *(v11 - 16);
      }

      *(v11 - 16) = v46;
      *(v11 - 4) = v133;
      *(v11 - 12) = v127;
      if (v49 < v50)
      {
        goto LABEL_77;
      }

      v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *>(a1, (v11 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *>(v11, a2))
      {
        a2 = (v11 - 16);
        if (!v57)
        {
          goto LABEL_2;
        }

        goto LABEL_190;
      }

      if (!v57)
      {
LABEL_77:
        std::__introsort<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,false>(a1, v11 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v134 = *(v11 + 12);
      v128 = *(v11 + 4);
      if (v46 >= v8->n128_u32[0])
      {
        v59 = v11 + 16;
        do
        {
          v11 = v59;
          if (v59 >= a2)
          {
            break;
          }

          v59 += 16;
        }

        while (v46 >= *v11);
      }

      else
      {
        do
        {
          v58 = *(v11 + 16);
          v11 += 16;
        }

        while (v46 >= v58);
      }

      v60 = a2;
      if (v11 < a2)
      {
        v60 = a2;
        do
        {
          v61 = v60[-1].n128_i32[0];
          --v60;
        }

        while (v46 < v61);
      }

      while (v11 < v60)
      {
        v62 = *v11;
        *v11 = *v60;
        *v60 = v62;
        do
        {
          v63 = *(v11 + 16);
          v11 += 16;
        }

        while (v46 >= v63);
        do
        {
          v64 = v60[-1].n128_i32[0];
          --v60;
        }

        while (v46 < v64);
      }

      if (v11 - 16 != a1)
      {
        *a1 = *(v11 - 16);
      }

      a4 = 0;
      *(v11 - 16) = v46;
      *(v11 - 4) = v134;
      *(v11 - 12) = v128;
    }
  }

  if (v12 == 3)
  {
    v69 = (v11 + 16);
    v70 = *(v11 + 16);
    v71 = a2 - 1;
    v72 = a2[-1].n128_i32[0];
    if (v70 >= *v11)
    {
      if (v72 < v70)
      {
        v117 = *(v11 + 16);
        *v69 = *v71;
        *v71 = v117;
        goto LABEL_188;
      }
    }

    else
    {
      v74 = *v11;
      v73 = *(v11 + 8);
      if (v72 < v70)
      {
        *v11 = *v71;
LABEL_181:
        a2[-1].n128_u64[0] = v74;
        a2[-1].n128_u64[1] = v73;
        goto LABEL_190;
      }

      *v11 = *v69;
      *(v11 + 16) = v74;
      *(v11 + 24) = v73;
      if (v71->n128_u32[0] < v74)
      {
        *v69 = *v71;
        goto LABEL_181;
      }
    }

LABEL_190:
    v126 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 == 4)
  {
    v69 = (v11 + 16);
    v75 = *(v11 + 16);
    v76 = (v11 + 32);
    v77 = *(v11 + 32);
    v78 = *v11;
    if (v75 >= *v11)
    {
      if (v77 < v75)
      {
        v118 = *v69;
        *v69 = *v76;
        *v76 = v118;
        v77 = v118.n128_u32[0];
        if (v69->n128_u32[0] < v78)
        {
          v119 = *v11;
          *v11 = *v69;
          *(v11 + 16) = v119;
        }
      }

      goto LABEL_185;
    }

    v79 = *v11;
    v80 = *(v11 + 8);
    if (v77 >= v75)
    {
      *v11 = *v69;
      *(v11 + 16) = v79;
      *(v11 + 24) = v80;
      if (v77 >= v79)
      {
        goto LABEL_185;
      }

      *v69 = *v76;
    }

    else
    {
      *v11 = *v76;
    }

    *(v11 + 32) = v79;
    *(v11 + 40) = v80;
    v77 = v79;
LABEL_185:
    if (v8->n128_u32[0] >= v77)
    {
      goto LABEL_190;
    }

    v123 = *v76;
    *v76 = *v8;
    *v8 = v123;
    if (v76->n128_u32[0] >= v69->n128_u32[0])
    {
      goto LABEL_190;
    }

    v124 = *(v11 + 16);
    *v69 = *v76;
    *(v11 + 32) = v124;
LABEL_188:
    if (*(v11 + 16) < *v11)
    {
      v125 = *v11;
      *v11 = *v69;
      *(v11 + 16) = v125;
    }

    goto LABEL_190;
  }

  if (v12 != 5)
  {
    goto LABEL_10;
  }

  v65 = *MEMORY[0x277D85DE8];

  std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamProbabilityVectorAlgorithm::localizeRfFingerprint(std::vector<ULROI> const&,CLMicroLocationFingerprint const&,ULHomeSlamSettings const&)::$_1 &,ULRoomProbability *,0>(v11, (v11 + 16), (v11 + 32), (v11 + 48), a2 - 1);
}