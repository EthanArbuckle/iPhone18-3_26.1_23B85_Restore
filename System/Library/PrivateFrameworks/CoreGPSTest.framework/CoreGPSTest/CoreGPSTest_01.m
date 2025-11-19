uint64_t GnssHal::PlatformNvStore::clearFromCache(GnssHal::PlatformNvStore *this, GnssHal::PlatformNvStore::Cache *a2, uint64_t a3)
{
  v3 = *(a2 + 6);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 2);
    while (1)
    {
      v8 = *(v7 + 8 * v6);
      if (*(v8 + 16) == a3)
      {
        break;
      }

      if (v3 == ++v6)
      {
        return 1;
      }
    }

    if (v3 <= v6)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
      v8 = *(*(a2 + 2) + 8 * v6);
    }

    v9 = *(v8 + 24);
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v10 = *(v9 + 8);
    }

    *(a2 + 10) -= v10;
    *buf = 0;
    v15 = 0;
    v16 = 0;
    GnssHal::PlatformNvStore::storeToProtobuf(this, v8, a3, buf);
    if ((GnssHal::PlatformNvStore::writeCacheToDisk(v11, a2) & 1) == 0)
    {
      v12 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, "NvStore,clearFromCache,writeCacheToDisk failed", buf, 2u);
      }
    }
  }

  return 1;
}

void sub_2454C2524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void GnssHal::PlatformNvStore::storeToProtobuf(uint64_t a1, uint64_t a2, uint64_t a3, gpsd::util **a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a2 + 64) |= 1u;
  *(a2 + 16) = a3;
  v6 = gpsd::util::truncatedSha256(*a4, (a4[1] - *a4));
  v7 = *(a2 + 64);
  *(a2 + 56) = v6;
  *(a2 + 64) = v7 | 6;
  v8 = *(a2 + 24);
  if (v8 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
  }

  std::string::reserve(v8, a4[1] - *a4);
  v9 = *a4;
  v10 = a4[1];
  while (v9 != v10)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    std::string::push_back(v8, v11);
  }

  v12 = *(a2 + 32) + 1;
  *(a2 + 64) |= 8u;
  *(a2 + 32) = v12;
  Current = CFAbsoluteTimeGetCurrent();
  *(a2 + 64) |= 0x20u;
  *(a2 + 48) = Current;
  v14 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v16 = a4[1] - *a4;
    v17 = *(a2 + 24);
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v18 = *(v17 + 8);
    }

    v19 = *(a2 + 56);
    v20 = *(a2 + 32);
    v21 = 134349824;
    v22 = v16;
    v23 = 2050;
    v24 = v18;
    v25 = 1026;
    v26 = v19;
    v27 = 2050;
    v28 = v20;
    _os_log_debug_impl(&dword_2454AA000, v14, OS_LOG_TYPE_DEBUG, "NvStore,storeToProtobuf,source_size,%{public}zu,dest_size,%{public}zu,hash,%{public}x,count,%{public}lld", &v21, 0x26u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void std::unique_ptr<__sFILE,GnssHal::PlatformNvStore::writeCacheToDisk(GnssHal::PlatformNvStore::Cache const&,BOOL)::$_0>::reset[abi:ne200100](FILE **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (fclose(v2))
    {
      v3 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6[0] = 67240192;
        v6[1] = v5;
        _os_log_error_impl(&dword_2454AA000, v3, OS_LOG_TYPE_ERROR, "NvStore,Failed to close file,%{public}d", v6, 8u);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2454C27DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t GnssHal::PlatformNvStore::readCacheFromFile(GnssHal::PlatformNvStore *a1, uint64_t a2, uint64_t *a3)
{
  v76[19] = *MEMORY[0x277D85DE8];
  v76[6] = 0;
  v6 = MEMORY[0x277D82858] + 64;
  v76[0] = MEMORY[0x277D82858] + 64;
  v7 = MEMORY[0x277D82808];
  v8 = *(MEMORY[0x277D82808] + 16);
  v74[0] = *(MEMORY[0x277D82808] + 8);
  *(v74 + *(v74[0] - 24)) = v8;
  v74[1] = 0;
  v9 = (v74 + *(v74[0] - 24));
  std::ios_base::init(v9, v75);
  v10 = MEMORY[0x277D82858] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v74[0] = v10;
  v76[0] = v6;
  MEMORY[0x245D6AC40](v75);
  if (*(a3 + 23) < 0)
  {
    v11 = *a3;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((v74 + *(v74[0] - 24)), *&v75[*(v74[0] - 24) + 16] | 4);
  }

  if ((v75[*(v74[0] - 24) + 16] & 5) == 0)
  {
    std::istream::seekg();
    std::istream::tellg();
    v17 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v49 = a3;
      }

      else
      {
        v49 = *a3;
      }

      *v63 = 136446466;
      *v64 = v49;
      *&v64[8] = 1026;
      *&v64[10] = v73;
      _os_log_debug_impl(&dword_2454AA000, v17, OS_LOG_TYPE_DEBUG, "NvStore,readCacheFromFile,filePath,%{public}s,size,%{public}d", v63, 0x12u);
    }

    std::istream::seekg();
    if (!v73)
    {
      v12 = GpsdLogObjectWarning;
      if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      if (*(a3 + 23) >= 0)
      {
        v38 = a3;
      }

      else
      {
        v38 = *a3;
      }

      *v63 = 136446210;
      *v64 = v38;
      v15 = "NvStore,readCacheFromFile,Empty file,%{public}s";
      v16 = v63;
LABEL_11:
      _os_log_impl(&dword_2454AA000, v12, OS_LOG_TYPE_DEFAULT, v15, v16, 0xCu);
LABEL_60:
      v13 = 0;
      goto LABEL_61;
    }

    if (wireless_diagnostics::google::protobuf::Message::ParseFromIstream())
    {
      v18 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(a2 + 24);
        *v63 = 67240192;
        *v64 = v50;
        _os_log_debug_impl(&dword_2454AA000, v18, OS_LOG_TYPE_DEBUG, "NvStore,readCacheFromFile,items_size,%{public}d", v63, 8u);
      }

      GnssHal::PlatformNvStore::printState(a1, "post-parse of cache from file");
      v19 = *(a2 + 40);
      if (v19 == 1)
      {
        *(a2 + 80) = 0;
        if (*(a2 + 24) < 1)
        {
          v13 = 1;
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = *(*(a2 + 16) + 8 * v20);
            v24 = *(v23 + 24);
            v25 = *(v24 + 23);
            if (v25 < 0)
            {
              v25 = *(v24 + 8);
            }

            *(a2 + 80) += v25;
            v21 = v21 || (*(v23 + 64) & 1) == 0;
            v26 = *(v23 + 56);
            v27 = *(v24 + 23);
            if (v27 >= 0)
            {
              v28 = v24;
            }

            else
            {
              v28 = *v24;
            }

            if (v27 >= 0)
            {
              v29 = *(v24 + 23);
            }

            else
            {
              v29 = *(v24 + 8);
            }

            v30 = gpsd::util::truncatedSha256(v28, v29);
            if (v26 != v30)
            {
              if (v20 >= *(a2 + 24))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v63);
              }

              v31 = *(*(a2 + 16) + 8 * v20);
              v32 = GpsdLogObjectGeneral;
              if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
              {
                v34 = *(v31 + 24);
                v35 = *(v34 + 23);
                if (v35 < 0)
                {
                  v35 = *(v34 + 8);
                }

                v36 = *(a2 + 24);
                v37 = *(v31 + 16);
                *v63 = 67241216;
                *v64 = v36;
                *&v64[4] = 2050;
                *&v64[6] = v37;
                *&v64[14] = 2050;
                *&v64[16] = v35;
                v65 = 1026;
                v66 = v26;
                v67 = 1026;
                v68 = v30;
                _os_log_error_impl(&dword_2454AA000, v32, OS_LOG_TYPE_ERROR, "NvStore,readCacheFromFile,hash does not match,items_size,%{public}d,itemId,%{public}lld,size,%{public}zu,storedHash,%{public}x,calculatedHash,%{public}x", v63, 0x28u);
              }

              *(v31 + 64) |= 2u;
              v33 = *(v31 + 24);
              if (v33 == MEMORY[0x277D82C30])
              {
                operator new();
              }

              if (*(v33 + 23) < 0)
              {
                **v33 = 0;
                *(v33 + 8) = 0;
              }

              else
              {
                *v33 = 0;
                *(v33 + 23) = 0;
              }

              v22 = 1;
            }

            ++v20;
          }

          while (v20 < *(a2 + 24));
          v13 = v22 ^ 1;
          if (v21)
          {
            proto::gnsshal::NvStore::NvStore(v63, a2);
            if (*(a2 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(a2 + 56), *(a2 + 64));
            }

            else
            {
              __p = *(a2 + 56);
            }

            v70 = *(a2 + 80);
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(a2 + 16);
            if (*&v64[20] >= 1)
            {
              v51 = 0;
              do
              {
                v52 = *(*&v64[12] + 8 * v51);
                if (*(v52 + 64))
                {
                  v54 = *(a2 + 28);
                  v55 = *(a2 + 24);
                  if (v55 >= v54)
                  {
                    if (v54 == *(a2 + 32))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
                      v54 = *(a2 + 28);
                    }

                    *(a2 + 28) = v54 + 1;
                    wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
                  }

                  v56 = *(a2 + 16);
                  *(a2 + 24) = v55 + 1;
                  v57 = *(v56 + 8 * v55);
                  if (v52 != v57)
                  {
                    (*(*v57 + 32))(v57);
                    proto::gnsshal::NvStoreItem::MergeFrom(v57, v52);
                  }
                }

                else
                {
                  v53 = GpsdLogObjectWarning;
                  if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
                  {
                    *v61 = 67240192;
                    v62 = v51;
                    _os_log_impl(&dword_2454AA000, v53, OS_LOG_TYPE_DEFAULT, "NvStore,readCacheFromFile,Missing item id for index,%{public}d", v61, 8u);
                  }
                }

                ++v51;
              }

              while (v51 < *&v64[20]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            proto::gnsshal::NvStore::~NvStore(v63);
          }
        }

        v58 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
        {
          v59 = *(a2 + 24);
          v60 = *(a2 + 80);
          *v63 = 67240448;
          *v64 = v59;
          *&v64[4] = 2050;
          *&v64[6] = v60;
          _os_log_debug_impl(&dword_2454AA000, v58, OS_LOG_TYPE_DEBUG, "NvStore,readCacheFromFile,numItems,%{public}d,totalSize,%{public}lld", v63, 0x12u);
        }

        goto LABEL_61;
      }

      v46 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 67240448;
        *v64 = v19;
        *&v64[4] = 1026;
        *&v64[6] = 1;
        v43 = "NvStore,readCacheFromFile,Unexpected version,%{public}d,Expected version,%{public}d";
        v44 = v46;
        v45 = 14;
LABEL_58:
        _os_log_impl(&dword_2454AA000, v44, OS_LOG_TYPE_DEFAULT, v43, v63, v45);
      }
    }

    else
    {
      v39 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v40 = a3;
        }

        else
        {
          v40 = *a3;
        }

        v41 = *(a2 + 40);
        v42 = *(a2 + 24);
        *v63 = 136446722;
        *v64 = v40;
        *&v64[8] = 1026;
        *&v64[10] = v41;
        *&v64[14] = 1026;
        *&v64[16] = v42;
        v43 = "NvStore,readCacheFromFile,Could not parse message from file,%{public}s,parsed_ver,%{public}d,parsed_items_size,%{public}d";
        v44 = v39;
        v45 = 24;
        goto LABEL_58;
      }
    }

    proto::gnsshal::NvStore::Clear(a2);
    goto LABEL_60;
  }

  v12 = GpsdLogObjectGeneral;
  v13 = 0;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    *buf = 136446210;
    v72 = v14;
    v15 = "NvStore,readCacheFromFile,Could not open file,%{public}s";
    v16 = buf;
    goto LABEL_11;
  }

LABEL_61:
  v74[0] = *v7;
  *(v74 + *(v74[0] - 24)) = v7[3];
  MEMORY[0x245D6AC50](v75);
  std::istream::~istream();
  MEMORY[0x245D6AE70](v76);
  v47 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void sub_2454C3158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  proto::gnsshal::NvStore::~NvStore(&a13);
  std::ifstream::~ifstream(&a43, MEMORY[0x277D82808]);
  MEMORY[0x245D6AE70](v43);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x245D6AC50](a1 + 2);

  return std::istream::~istream();
}

void std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::__map_value_compare<GnssHal::NvStorage::NamedType,std::__value_type<GnssHal::NvStorage::NamedType,std::string>,std::less<GnssHal::NvStorage::NamedType>,true>,std::allocator<std::__value_type<GnssHal::NvStorage::NamedType,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__copy_impl::operator()[abi:ne200100]<char const*,char const*,std::back_insert_iterator<std::vector<unsigned char>>>(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *v5;
      v8 = *(a3 + 16);
      if (v6 >= v8)
      {
        v9 = *a3;
        v10 = &v6[-*a3];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v6[-*a3];
        *v10 = v7;
        v6 = v10 + 1;
        memcpy(0, v9, v14);
        *a3 = 0;
        *(a3 + 8) = v10 + 1;
        *(a3 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto(proto::gnsshal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(this, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  v7 = 20;
  strcpy(__p, "GnssHalNvStore.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  _MergedGlobals_1 = *(FileByName + 80);
  operator new();
}

void proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(proto::gnsshal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssHalNvStore.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x14GnssHalNvStore.proto\x12\rproto.gnsshalI\n\aNvStore\x12\x13\n\aversion\x18\x01 \x01(\x05:\x02-1\x12)\n\x05items\x18\x02 \x03(\v2\x1A.proto.gnsshal.NvStoreItem\xB9\x01\n\vNvStoreItem\x12\n\n\x02id\x18\x01 \x01(\x03\x12\f\n\x04blob\x18\x02 \x01(\f\x12 \n\x15blob_truncated_sha256\x18\x03 \x01(\r:\x010\x12\x1E\n\x12modification_count\x18\x04 \x01(\x03:\x02-1\x12$\n\x18creation_cf_time_seconds\x18\x05 \x01(\x01:\x02-1\x12(\n\x1Cmodification_cf_time_seconds\x18\x06 \x01(\x01:\x02-1", 0x12C);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

void sub_2454C39D8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x245D6AEE0](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::protobuf_ShutdownFile_GnssHalNvStore_2eproto(proto::gnsshal *this)
{
  if (proto::gnsshal::NvStore::default_instance_)
  {
    (*(*proto::gnsshal::NvStore::default_instance_ + 8))(proto::gnsshal::NvStore::default_instance_);
  }

  if (qword_27EE14D70)
  {
    (*(*qword_27EE14D70 + 8))(qword_27EE14D70);
  }

  if (proto::gnsshal::NvStoreItem::default_instance_)
  {
    (*(*proto::gnsshal::NvStoreItem::default_instance_ + 8))(proto::gnsshal::NvStoreItem::default_instance_);
  }

  result = qword_27EE14D80;
  if (qword_27EE14D80)
  {
    v2 = *(*qword_27EE14D80 + 8);

    return v2();
  }

  return result;
}

uint64_t proto::gnsshal::anonymous namespace::protobuf_RegisterTypes(proto::gnsshal *a1)
{
  v1 = qword_27EE14D88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v4[0] = MEMORY[0x277D82C40] + 16;
    v4[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v5 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  if (!proto::gnsshal::NvStore::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(a1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!proto::gnsshal::NvStoreItem::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(v2);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_2454C3BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

proto::gnsshal::NvStore *proto::gnsshal::NvStore::NvStore(proto::gnsshal::NvStore *this)
{
  *this = &unk_28585C6A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
  return this;
}

double proto::gnsshal::NvStore::SharedCtor(proto::gnsshal::NvStore *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
  return result;
}

proto::gnsshal::NvStore *proto::gnsshal::NvStore::NvStore(proto::gnsshal::NvStore *this, const proto::gnsshal::NvStore *a2)
{
  *this = &unk_28585C6A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
  proto::gnsshal::NvStore::MergeFrom(this, a2);
  return this;
}

void sub_2454C3CD8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v3);
  MEMORY[0x245D6A760](v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStore::MergeFrom(proto::gnsshal::NvStore *this, const proto::gnsshal::NvStore *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::MergeFrom((this + 16), a2 + 16);
  if (*(a2 + 48))
  {
    v4 = *(a2 + 10);
    *(this + 12) |= 1u;
    *(this + 10) = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom();
}

void sub_2454C3DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnsshal::NvStore::~NvStore(proto::gnsshal::NvStore *this)
{
  *this = &unk_28585C6A8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 2);
  MEMORY[0x245D6A760](this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnsshal::NvStore::~NvStore(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnsshal::NvStore::descriptor(proto::gnsshal::NvStore *this)
{
  v1 = qword_27EE14D88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = MEMORY[0x277D82C40] + 16;
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return _MergedGlobals_1;
}

void sub_2454C3EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStore::default_instance(proto::gnsshal::NvStore *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnsshal::NvStore::default_instance_;
  if (!proto::gnsshal::NvStore::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(0, a2, a3, a4);
    return proto::gnsshal::NvStore::default_instance_;
  }

  return result;
}

uint64_t proto::gnsshal::NvStore::Clear(proto::gnsshal::NvStore *this)
{
  if (*(this + 48))
  {
    *(this + 10) = -1;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 16);
  v4 = *(this + 1);
  v3 = this + 8;
  *(v3 + 10) = 0;
  if (v4)
  {

    return MEMORY[0x2821F9D80](v3);
  }

  return result;
}

uint64_t proto::gnsshal::NvStore::MergePartialFromCodedStream(proto::gnsshal::NvStore *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v27 = 0;
      v9 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v11 = v27;
        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v12 = v9 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 10) = v11;
      *(this + 12) |= 1u;
      if (v12 < v10 && *v12 == 18)
      {
        do
        {
          *(a2 + 1) = v12 + 1;
LABEL_21:
          v14 = *(this + 7);
          v15 = *(this + 6);
          if (v15 >= v14)
          {
            if (v14 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v14 = *(this + 7);
            }

            *(this + 7) = v14 + 1;
            wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
          }

          v16 = *(this + 2);
          *(this + 6) = v15 + 1;
          v17 = *(v16 + 8 * v15);
          v28 = 0;
          v18 = *(a2 + 1);
          if (v18 >= *(a2 + 2) || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v19 = *(a2 + 14);
          v20 = *(a2 + 15);
          *(a2 + 14) = v19 + 1;
          if (v19 >= v20)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!proto::gnsshal::NvStoreItem::MergePartialFromCodedStream(v17, a2, v21, v22) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v23 = *(a2 + 14);
          v24 = __OFSUB__(v23, 1);
          v25 = v23 - 1;
          if (v25 < 0 == v24)
          {
            *(a2 + 14) = v25;
          }

          v12 = *(a2 + 1);
          v26 = *(a2 + 2);
        }

        while (v12 < v26 && *v12 == 18);
        if (v12 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, this + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnsshal::NvStore::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return this;
}

unsigned __int8 *proto::gnsshal::NvStore::SerializeWithCachedSizesToArray(proto::gnsshal::NvStore *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 48))
  {
    v6 = *(this + 10);
    *a2 = 8;
    v7 = a2 + 1;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v7, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        v4[1] = v6;
        v4 += 2;
        goto LABEL_8;
      }

      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    v4 = v8;
  }

LABEL_8:
  if (*(this + 6) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 2) + 8 * v9);
      *v4 = 18;
      v11 = v10[15];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, (v4 + 1), a3);
      }

      else
      {
        v4[1] = v11;
        v12 = v4 + 2;
      }

      v4 = proto::gnsshal::NvStoreItem::SerializeWithCachedSizesToArray(v10, v12, a3, a4);
      ++v9;
    }

    while (v9 < *(this + 6));
  }

  v15 = *(this + 1);
  v14 = this + 8;
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v4;
  }

  return MEMORY[0x2821F9DC8](v14, v4);
}

uint64_t proto::gnsshal::NvStore::ByteSize(proto::gnsshal::NvStore *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(this + 48))
  {
    v4 = *(this + 10);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 6);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = proto::gnsshal::NvStoreItem::ByteSize(*(*(this + 2) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

  v11 = *(this + 1);
  if (v11 && *v11 != v11[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((this + 8), a2) + v6;
  }

  *(this + 11) = v6;
  return v6;
}

uint64_t proto::gnsshal::NvStore::MergeFrom(char **this, char **lpsrc)
{
  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return proto::gnsshal::NvStore::MergeFrom(this, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_2454C45E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v6) = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v8 = *(*a2 + 8 * v7);
      v9 = *(a1 + 3);
      v10 = *(a1 + 2);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v9 = *(a1 + 3);
        }

        *(a1 + 3) = v9 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
      }

      v11 = *a1;
      *(a1 + 2) = v10 + 1;
      result = proto::gnsshal::NvStoreItem::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  return result;
}

void sub_2454C4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStore::CopyFrom(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

const proto::gnsshal::NvStore *proto::gnsshal::NvStore::CopyFrom(const proto::gnsshal::NvStore *this, const proto::gnsshal::NvStore *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return proto::gnsshal::NvStore::MergeFrom(v4, a2);
  }

  return this;
}

proto::gnsshal::NvStore *proto::gnsshal::NvStore::Swap(proto::gnsshal::NvStore *this, proto::gnsshal::NvStore *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    v6 = *(v3 + 1);
    *(v3 + 1) = *(a2 + 1);
    *(a2 + 1) = v6;
    LODWORD(v6) = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

uint64_t proto::gnsshal::NvStore::GetMetadata(proto::gnsshal::NvStore *this)
{
  v1 = qword_27EE14D88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = MEMORY[0x277D82C40] + 16;
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return _MergedGlobals_1;
}

void sub_2454C4948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

proto::gnsshal::NvStoreItem *proto::gnsshal::NvStoreItem::NvStoreItem(proto::gnsshal::NvStoreItem *this)
{
  *this = &unk_28585C758;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 60) = 0;
  v2 = MEMORY[0x277D82C30];
  *(this + 2) = 0;
  *(this + 3) = v2;
  *(this + 14) = 0;
  *(this + 4) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 40) = _Q0;
  return this;
}

__n128 proto::gnsshal::NvStoreItem::SharedCtor(proto::gnsshal::NvStoreItem *this)
{
  *(this + 60) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 2) = 0;
  *(this + 3) = v1;
  *(this + 14) = 0;
  *(this + 4) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 40) = result;
  return result;
}

proto::gnsshal::NvStoreItem *proto::gnsshal::NvStoreItem::NvStoreItem(proto::gnsshal::NvStoreItem *this, const proto::gnsshal::NvStoreItem *a2)
{
  *this = &unk_28585C758;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 60) = 0;
  v4 = MEMORY[0x277D82C30];
  *(this + 2) = 0;
  *(this + 3) = v4;
  *(this + 14) = 0;
  *(this + 4) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 40) = _Q0;
  proto::gnsshal::NvStoreItem::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gnsshal::NvStoreItem::MergeFrom(proto::gnsshal::NvStoreItem *this, const proto::gnsshal::NvStoreItem *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom();
  }

  if (*(a2 + 64))
  {
    v7 = *(a2 + 2);
    *(this + 16) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a2 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 16) |= 2u;
  v9 = *(this + 3);
  if (v9 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 14);
  *(this + 16) |= 4u;
  *(this + 14) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = *(a2 + 5);
    *(this + 16) |= 0x10u;
    *(this + 5) = v12;
    if ((*(a2 + 16) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom();
    }

    goto LABEL_10;
  }

LABEL_17:
  v11 = *(a2 + 4);
  *(this + 16) |= 8u;
  *(this + 4) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 6);
    *(this + 16) |= 0x20u;
    *(this + 6) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom();
}

void sub_2454C4C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnsshal::NvStoreItem::~NvStoreItem(proto::gnsshal::NvStoreItem *this)
{
  *this = &unk_28585C758;
  v2 = this + 8;
  proto::gnsshal::NvStoreItem::SharedDtor(this);
  MEMORY[0x245D6A760](v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gnsshal::NvStoreItem::~NvStoreItem(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnsshal::NvStoreItem::SharedDtor(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gnsshal::NvStoreItem::descriptor(proto::gnsshal::NvStoreItem *this)
{
  v1 = qword_27EE14D88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = MEMORY[0x277D82C40] + 16;
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_27EE14D78;
}

void sub_2454C4DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStoreItem::default_instance(proto::gnsshal::NvStoreItem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnsshal::NvStoreItem::default_instance_;
  if (!proto::gnsshal::NvStoreItem::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(0, a2, a3, a4);
    return proto::gnsshal::NvStoreItem::default_instance_;
  }

  return result;
}

uint64_t proto::gnsshal::NvStoreItem::Clear(proto::gnsshal::NvStoreItem *this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 2) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 3);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 14) = 0;
    *(this + 4) = -1;
    __asm { FMOV            V0.2D, #-1.0 }

    *(this + 40) = _Q0;
  }

  v9 = *(this + 1);
  result = this + 8;
  *(result + 56) = 0;
  if (v9)
  {
    return MEMORY[0x2821F9D80]();
  }

  return result;
}

uint64_t proto::gnsshal::NvStoreItem::MergePartialFromCodedStream(proto::gnsshal::NvStoreItem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v6 = MEMORY[0x277D82C30];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = *(a2 + 1);
          if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v7 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v9 = TagFallback >> 3;
          v10 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v9 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_49;
            }

            goto LABEL_27;
          }

          if (v9 == 5)
          {
            if (v10 != 1)
            {
              goto LABEL_27;
            }

LABEL_57:
            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v26) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v26;
            *(this + 16) |= 0x10u;
            v25 = *(a2 + 1);
            if (v25 < *(a2 + 2) && *v25 == 49)
            {
              *(a2 + 1) = v25 + 1;
              goto LABEL_61;
            }
          }

          else
          {
            if (v9 != 6 || v10 != 1)
            {
              goto LABEL_27;
            }

LABEL_61:
            v26 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v26) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v26;
            *(this + 16) |= 0x20u;
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v9 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v26 = 0;
        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, (v15 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v15 = v26;
          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 2) = v15;
        v18 = *(this + 16) | 1;
        *(this + 16) = v18;
        if (v16 < v13 && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_35;
        }
      }

      if (v9 != 2)
      {
        break;
      }

      if (v10 != 2)
      {
        goto LABEL_27;
      }

      v18 = *(this + 16);
LABEL_35:
      *(this + 16) = v18 | 2;
      if (*(this + 3) == v6)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v20 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v20 < v11 && *v20 == 24)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_41:
        if (v12 >= v11 || (v21 = *v12, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v21;
          v22 = v12 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 16) |= 4u;
        if (v22 < v11 && *v22 == 32)
        {
          v17 = v22 + 1;
          *(a2 + 1) = v17;
LABEL_49:
          v26 = 0;
          if (v17 >= v11 || (v23 = *v17, (v23 & 0x8000000000000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v26);
            if (!result)
            {
              return result;
            }

            v23 = v26;
            v24 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v24 = v17 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 4) = v23;
          *(this + 16) |= 8u;
          if (v24 < v11 && *v24 == 41)
          {
            *(a2 + 1) = v24 + 1;
            goto LABEL_57;
          }
        }
      }
    }

    if (v9 == 3 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_41;
    }

LABEL_27:
    if (v10 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, this + 8, a4) & 1) != 0);
  return 0;
}

uint64_t proto::gnsshal::NvStoreItem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
    if ((*(v5 + 64) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  }

LABEL_8:
  v9 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return MEMORY[0x2821F9DB8](v8, a2);
  }

  return this;
}

unsigned __int8 *proto::gnsshal::NvStoreItem::SerializeWithCachedSizesToArray(proto::gnsshal::NvStoreItem *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, (a2 + 1), a3);
    v5 = *(this + 16);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 3);
  *a2 = 18;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8 > 0x7F)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, (a2 + 1), a3);
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
  if ((*(this + 16) & 4) != 0)
  {
LABEL_18:
    v13 = *(this + 14);
    *a2 = 24;
    if (v13 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, (a2 + 1), a3);
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

LABEL_21:
  v14 = *(this + 16);
  if ((v14 & 8) == 0)
  {
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    v20 = *(this + 5);
    *a2 = 41;
    *(a2 + 1) = v20;
    a2 += 9;
    if ((*(this + 16) & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v19 = *(this + 4);
  *a2 = 32;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v19, (a2 + 1), a3);
  v14 = *(this + 16);
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  if ((v14 & 0x20) != 0)
  {
LABEL_24:
    v15 = *(this + 6);
    *a2 = 49;
    *(a2 + 1) = v15;
    a2 += 9;
  }

LABEL_25:
  v18 = *(this + 1);
  v17 = this + 8;
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return a2;
  }

  return MEMORY[0x2821F9DC8](v17, a2);
}

uint64_t proto::gnsshal::NvStoreItem::ByteSize(proto::gnsshal::NvStoreItem *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 64);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  if (*(this + 64))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 16);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 64) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 3);
  v7 = *(v6 + 23);
  v8 = v7;
  v9 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 16);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 1;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 += v11 + v7 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v15 = *(this + 14);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((v3 & 8) != 0)
  {
LABEL_18:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    v3 = *(this + 16);
  }

LABEL_19:
  v12 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v12 + 9;
  }

  else
  {
    v5 = v12;
  }

LABEL_24:
  v13 = *(this + 1);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((this + 8), a2) + v5;
  }

  *(this + 15) = v5;
  return v5;
}

uint64_t proto::gnsshal::NvStoreItem::MergeFrom(char **this, char **lpsrc)
{
  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return proto::gnsshal::NvStoreItem::MergeFrom(this, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_2454C575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStoreItem::CopyFrom(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

const proto::gnsshal::NvStoreItem *proto::gnsshal::NvStoreItem::CopyFrom(const proto::gnsshal::NvStoreItem *this, const proto::gnsshal::NvStoreItem *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return proto::gnsshal::NvStoreItem::MergeFrom(v4, a2);
  }

  return this;
}

double proto::gnsshal::NvStoreItem::Swap(proto::gnsshal::NvStoreItem *this, proto::gnsshal::NvStoreItem *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    v4 = *(this + 1);
    v3 = *(this + 2);
    v5 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v5;
    *(a2 + 2) = v3;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    *(a2 + 16) = v6;
    *(a2 + 1) = v4;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
  }

  return result;
}

uint64_t proto::gnsshal::NvStoreItem::GetMetadata(proto::gnsshal::NvStoreItem *this)
{
  v1 = qword_27EE14D88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = MEMORY[0x277D82C40] + 16;
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_27EE14D78;
}

void sub_2454C5994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x245D6AEC0);
  }

  return result;
}

uint64_t proto::gnss::Emergency::protobuf_ShutdownFile_GnssEmergencyTypes_2eproto(proto::gnss::Emergency *this)
{
  if (proto::gnss::Emergency::Configuration::default_instance_)
  {
    (*(*proto::gnss::Emergency::Configuration::default_instance_ + 8))(proto::gnss::Emergency::Configuration::default_instance_);
  }

  if (proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::SummaryReport::default_instance_ + 8))(proto::gnss::Emergency::SummaryReport::default_instance_);
  }

  if (proto::gnss::Emergency::SuplConfig::default_instance_)
  {
    (*(*proto::gnss::Emergency::SuplConfig::default_instance_ + 8))(proto::gnss::Emergency::SuplConfig::default_instance_);
  }

  if (proto::gnss::Emergency::LteCellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::LteCellInfo::default_instance_ + 8))(proto::gnss::Emergency::LteCellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::GsmCellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::GsmCellInfo::default_instance_ + 8))(proto::gnss::Emergency::GsmCellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::WcdmaCellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::WcdmaCellInfo::default_instance_ + 8))(proto::gnss::Emergency::WcdmaCellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::LocationId::default_instance_)
  {
    (*(*proto::gnss::Emergency::LocationId::default_instance_ + 8))(proto::gnss::Emergency::LocationId::default_instance_);
  }

  if (proto::gnss::Emergency::WlanMeasurementRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::WlanMeasurementRequest::default_instance_ + 8))(proto::gnss::Emergency::WlanMeasurementRequest::default_instance_);
  }

  if (proto::gnss::Emergency::WlanMeasurementElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::WlanMeasurementElement::default_instance_ + 8))(proto::gnss::Emergency::WlanMeasurementElement::default_instance_);
  }

  if (proto::gnss::Emergency::WlanMeasurementList::default_instance_)
  {
    (*(*proto::gnss::Emergency::WlanMeasurementList::default_instance_ + 8))(proto::gnss::Emergency::WlanMeasurementList::default_instance_);
  }

  if (proto::gnss::Emergency::QoP::default_instance_)
  {
    (*(*proto::gnss::Emergency::QoP::default_instance_ + 8))(proto::gnss::Emergency::QoP::default_instance_);
  }

  if (proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    (*(*proto::gnss::Emergency::SLPAddress::default_instance_ + 8))(proto::gnss::Emergency::SLPAddress::default_instance_);
  }

  if (proto::gnss::Emergency::Notification::default_instance_)
  {
    (*(*proto::gnss::Emergency::Notification::default_instance_ + 8))(proto::gnss::Emergency::Notification::default_instance_);
  }

  if (proto::gnss::Emergency::SuplInitVer2Extension::default_instance_)
  {
    (*(*proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ + 8))(proto::gnss::Emergency::SuplInitVer2Extension::default_instance_);
  }

  if (proto::gnss::Emergency::Init::default_instance_)
  {
    (*(*proto::gnss::Emergency::Init::default_instance_ + 8))(proto::gnss::Emergency::Init::default_instance_);
  }

  if (proto::gnss::Emergency::SuplContext::default_instance_)
  {
    (*(*proto::gnss::Emergency::SuplContext::default_instance_ + 8))(proto::gnss::Emergency::SuplContext::default_instance_);
  }

  if (proto::gnss::Emergency::SessionStatus::default_instance_)
  {
    (*(*proto::gnss::Emergency::SessionStatus::default_instance_ + 8))(proto::gnss::Emergency::SessionStatus::default_instance_);
  }

  if (proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsGpsCellTime::default_instance_ + 8))(proto::gnss::Emergency::ClsGpsCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::ClsUtranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsUtranCellTime::default_instance_ + 8))(proto::gnss::Emergency::ClsUtranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::Plmn::default_instance_)
  {
    (*(*proto::gnss::Emergency::Plmn::default_instance_ + 8))(proto::gnss::Emergency::Plmn::default_instance_);
  }

  if (proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::SessionInfo::default_instance_ + 8))(proto::gnss::Emergency::SessionInfo::default_instance_);
  }

  if (proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::PositionRequest::default_instance_ + 8))(proto::gnss::Emergency::PositionRequest::default_instance_);
  }

  if (proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_)
  {
    (*(*proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_ + 8))(proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_);
  }

  if (proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_)
  {
    (*(*proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_ + 8))(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::GpsTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8))(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTOD::default_instance_ + 8))(proto::gnss::Emergency::GpsTOD::default_instance_);
  }

  if (proto::gnss::Emergency::LocationInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::LocationInfo::default_instance_ + 8))(proto::gnss::Emergency::LocationInfo::default_instance_);
  }

  if (proto::gnss::Emergency::CellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellInfo::default_instance_ + 8))(proto::gnss::Emergency::CellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::ClsEutranCell::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsEutranCell::default_instance_ + 8))(proto::gnss::Emergency::ClsEutranCell::default_instance_);
  }

  if (proto::gnss::Emergency::GanssTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::GanssTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ + 8))(proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_);
  }

  if (proto::gnss::Emergency::GanssLocationInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssLocationInfo::default_instance_ + 8))(proto::gnss::Emergency::GanssLocationInfo::default_instance_);
  }

  if (proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    (*(*proto::gnss::Emergency::EllipsoidPoint::default_instance_ + 8))(proto::gnss::Emergency::EllipsoidPoint::default_instance_);
  }

  if (proto::gnss::Emergency::PointUncertainCircle::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointUncertainCircle::default_instance_ + 8))(proto::gnss::Emergency::PointUncertainCircle::default_instance_);
  }

  if (proto::gnss::Emergency::PointUncertainEllipse::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointUncertainEllipse::default_instance_ + 8))(proto::gnss::Emergency::PointUncertainEllipse::default_instance_);
  }

  if (proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ + 8))(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_);
  }

  if (proto::gnss::Emergency::EllipsoidArc::default_instance_)
  {
    (*(*proto::gnss::Emergency::EllipsoidArc::default_instance_ + 8))(proto::gnss::Emergency::EllipsoidArc::default_instance_);
  }

  if (proto::gnss::Emergency::PointAltitude::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointAltitude::default_instance_ + 8))(proto::gnss::Emergency::PointAltitude::default_instance_);
  }

  if (proto::gnss::Emergency::Polygon::default_instance_)
  {
    (*(*proto::gnss::Emergency::Polygon::default_instance_ + 8))(proto::gnss::Emergency::Polygon::default_instance_);
  }

  if (proto::gnss::Emergency::ShapeInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::ShapeInfo::default_instance_ + 8))(proto::gnss::Emergency::ShapeInfo::default_instance_);
  }

  if (proto::gnss::Emergency::LocEstimate::default_instance_)
  {
    (*(*proto::gnss::Emergency::LocEstimate::default_instance_ + 8))(proto::gnss::Emergency::LocEstimate::default_instance_);
  }

  if (proto::gnss::Emergency::HorizontalVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizontalVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizontalVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::HorizWithVertVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizWithVertVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizWithVertVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::VelocityInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::VelocityInfo::default_instance_ + 8))(proto::gnss::Emergency::VelocityInfo::default_instance_);
  }

  if (proto::gnss::Emergency::VelocityEstimate::default_instance_)
  {
    (*(*proto::gnss::Emergency::VelocityEstimate::default_instance_ + 8))(proto::gnss::Emergency::VelocityEstimate::default_instance_);
  }

  if (proto::gnss::Emergency::PositionReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::PositionReport::default_instance_ + 8))(proto::gnss::Emergency::PositionReport::default_instance_);
  }

  if (proto::gnss::Emergency::GanssMeasurementElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssMeasurementElement::default_instance_ + 8))(proto::gnss::Emergency::GanssMeasurementElement::default_instance_);
  }

  if (proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_ + 8))(proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_);
  }

  if (proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ + 8))(proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_);
  }

  if (proto::gnss::Emergency::GanssMeasurements::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssMeasurements::default_instance_ + 8))(proto::gnss::Emergency::GanssMeasurements::default_instance_);
  }

  if (proto::gnss::Emergency::GpsMeasurementElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsMeasurementElement::default_instance_ + 8))(proto::gnss::Emergency::GpsMeasurementElement::default_instance_);
  }

  if (proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsMeasurements::default_instance_ + 8))(proto::gnss::Emergency::GpsMeasurements::default_instance_);
  }

  if (proto::gnss::Emergency::MeasurementReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::MeasurementReport::default_instance_ + 8))(proto::gnss::Emergency::MeasurementReport::default_instance_);
  }

  if (proto::gnss::Emergency::GpsAssistanceRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsAssistanceRequest::default_instance_ + 8))(proto::gnss::Emergency::GpsAssistanceRequest::default_instance_);
  }

  if (proto::gnss::Emergency::GanssTimeModelElem::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssTimeModelElem::default_instance_ + 8))(proto::gnss::Emergency::GanssTimeModelElem::default_instance_);
  }

  if (proto::gnss::Emergency::GanssDataBitAssist::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssDataBitAssist::default_instance_ + 8))(proto::gnss::Emergency::GanssDataBitAssist::default_instance_);
  }

  if (proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_ + 8))(proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_);
  }

  if (proto::gnss::Emergency::GanssNavModelAddData::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssNavModelAddData::default_instance_ + 8))(proto::gnss::Emergency::GanssNavModelAddData::default_instance_);
  }

  if (proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_ + 8))(proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_);
  }

  if (proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 8))(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_);
  }

  if (proto::gnss::Emergency::GanssAssistanceRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssAssistanceRequest::default_instance_ + 8))(proto::gnss::Emergency::GanssAssistanceRequest::default_instance_);
  }

  if (proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 8))(proto::gnss::Emergency::AssistanceNeededReport::default_instance_);
  }

  if (proto::gnss::Emergency::EutranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::EutranCellTime::default_instance_ + 8))(proto::gnss::Emergency::EutranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::ClsGeranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsGeranCellTime::default_instance_ + 8))(proto::gnss::Emergency::ClsGeranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_ + 8))(proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::CtsEutranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::CtsEutranCellTime::default_instance_ + 8))(proto::gnss::Emergency::CtsEutranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::CtsCdmaCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8))(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellTimeData::default_instance_ + 8))(proto::gnss::Emergency::CellTimeData::default_instance_);
  }

  if (proto::gnss::Emergency::CellTimeAssistance::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8))(proto::gnss::Emergency::CellTimeAssistance::default_instance_);
  }

  if (proto::gnss::Emergency::TowAssist::default_instance_)
  {
    (*(*proto::gnss::Emergency::TowAssist::default_instance_ + 8))(proto::gnss::Emergency::TowAssist::default_instance_);
  }

  if (proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsReferenceTime::default_instance_ + 8))(proto::gnss::Emergency::GpsReferenceTime::default_instance_);
  }

  if (proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    (*(*proto::gnss::Emergency::ReferenceLocation::default_instance_ + 8))(proto::gnss::Emergency::ReferenceLocation::default_instance_);
  }

  if (proto::gnss::Emergency::GpsEphemeris::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsEphemeris::default_instance_ + 8))(proto::gnss::Emergency::GpsEphemeris::default_instance_);
  }

  if (proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsNavigationModel::default_instance_ + 8))(proto::gnss::Emergency::GpsNavigationModel::default_instance_);
  }

  if (proto::gnss::Emergency::CplaneConfig::default_instance_)
  {
    (*(*proto::gnss::Emergency::CplaneConfig::default_instance_ + 8))(proto::gnss::Emergency::CplaneConfig::default_instance_);
  }

  if (proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    (*(*proto::gnss::Emergency::CplaneContext::default_instance_ + 8))(proto::gnss::Emergency::CplaneContext::default_instance_);
  }

  if (proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    (*(*proto::gnss::Emergency::EmergConfig::default_instance_ + 8))(proto::gnss::Emergency::EmergConfig::default_instance_);
  }

  if (proto::gnss::Emergency::GpsAcqElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsAcqElement::default_instance_ + 8))(proto::gnss::Emergency::GpsAcqElement::default_instance_);
  }

  if (proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 8))(proto::gnss::Emergency::GpsAcqAssistance::default_instance_);
  }

  if (proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_ + 8))(proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_);
  }

  if (proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellFTAssistance::default_instance_ + 8))(proto::gnss::Emergency::CellFTAssistance::default_instance_);
  }

  if (proto::gnss::Emergency::NetworkReferenceLocation::default_instance_)
  {
    (*(*proto::gnss::Emergency::NetworkReferenceLocation::default_instance_ + 8))(proto::gnss::Emergency::NetworkReferenceLocation::default_instance_);
  }

  if (proto::gnss::Emergency::NetworkReferenceTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::NetworkReferenceTime::default_instance_ + 8))(proto::gnss::Emergency::NetworkReferenceTime::default_instance_);
  }

  if (proto::gnss::Emergency::Is801VelocityInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801VelocityInfo::default_instance_ + 8))(proto::gnss::Emergency::Is801VelocityInfo::default_instance_);
  }

  if (proto::gnss::Emergency::Is801ClockInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801ClockInfo::default_instance_ + 8))(proto::gnss::Emergency::Is801ClockInfo::default_instance_);
  }

  if (proto::gnss::Emergency::Is801HeightInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801HeightInfo::default_instance_ + 8))(proto::gnss::Emergency::Is801HeightInfo::default_instance_);
  }

  if (proto::gnss::Emergency::Is801LocationInd::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801LocationInd::default_instance_ + 8))(proto::gnss::Emergency::Is801LocationInd::default_instance_);
  }

  if (proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    (*(*proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 8))(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_);
  }

  result = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  if (proto::gnss::Emergency::Cdma1xContext::default_instance_)
  {
    v2 = *(*proto::gnss::Emergency::Cdma1xContext::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(proto::gnss::Emergency *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssEmergencyTypes.pb.cc", a4);
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(v4, v5, v6, v7);
    operator new();
  }
}

uint64_t proto::gnss::Emergency::Configuration::Configuration(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = &unk_28585C838;
  *(this + 8) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = &unk_28585C838;
  *(this + 8) = 0;
  return this;
}

double proto::gnss::Emergency::SummaryReport::SummaryReport(proto::gnss::Emergency::SummaryReport *this)
{
  *this = &unk_28585C8B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  return result;
}

{
  *this = &unk_28585C8B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  return result;
}

void *proto::gnss::Emergency::SuplConfig::SuplConfig(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585C928;
  this[1] = v1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585C928;
  this[1] = v1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::LteCellInfo::LteCellInfo(proto::gnss::Emergency::LteCellInfo *this)
{
  *this = &unk_28585C9A0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_28585C9A0;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::GsmCellInfo(uint64_t this)
{
  *this = &unk_28585CA18;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_28585CA18;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

double proto::gnss::Emergency::WcdmaCellInfo::WcdmaCellInfo(proto::gnss::Emergency::WcdmaCellInfo *this)
{
  *this = &unk_28585CA90;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_28585CA90;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 11) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::LocationId::LocationId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585CB08;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585CB08;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::WlanMeasurementRequest(uint64_t this)
{
  *this = &unk_28585CB80;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_28585CB80;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::WlanMeasurementElement(uint64_t this)
{
  *(this + 28) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585CBF8;
  *(this + 8) = v1;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585CBF8;
  *(this + 8) = v1;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::WlanMeasurementList(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585CC70;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585CC70;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::QoP::QoP(uint64_t this)
{
  *this = &unk_28585CCE8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_28585CCE8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SLPAddress::SLPAddress(uint64_t this)
{
  *this = &unk_28585CD60;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_28585CD60;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 16) = MEMORY[0x277D82C30];
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Notification::Notification(uint64_t this)
{
  *this = &unk_28585CDD8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_28585CDD8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::SuplInitVer2Extension(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585CE50;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585CE50;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::Init::Init(proto::gnss::Emergency::Init *this)
{
  *this = &unk_28585CEC8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_28585CEC8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *proto::gnss::Emergency::SuplContext::SuplContext(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585CF40;
  this[1] = v1;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  this[5] = v1;
  this[6] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585CF40;
  this[1] = v1;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  this[5] = v1;
  this[6] = 0;
  return this;
}

double proto::gnss::Emergency::SessionStatus::SessionStatus(proto::gnss::Emergency::SessionStatus *this)
{
  *this = &unk_28585CFB8;
  *(this + 25) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 83) = 0u;
  return result;
}

{
  *this = &unk_28585CFB8;
  *(this + 25) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 83) = 0u;
  return result;
}

void *proto::gnss::Emergency::ClsGpsCellTime::ClsGpsCellTime(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D030;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D030;
  return this;
}

double proto::gnss::Emergency::ClsUtranCellTime::ClsUtranCellTime(proto::gnss::Emergency::ClsUtranCellTime *this)
{
  *this = &unk_28585D0A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585D0A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::Plmn::Plmn(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D120;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D120;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SessionInfo::SessionInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D198;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D198;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::PositionRequest::PositionRequest(proto::gnss::Emergency::PositionRequest *this)
{
  *this = &unk_28585D210;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

{
  *this = &unk_28585D210;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

void *proto::gnss::Emergency::UtranGpsTimeMeasured::UtranGpsTimeMeasured(void *this)
{
  *this = &unk_28585D288;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585D288;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gnss::Emergency::GeranGpsTimeMeasuredBased::GeranGpsTimeMeasuredBased(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D300;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D300;
  return this;
}

void *proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::GeranGpsTimeMeasuredAssisted(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D378;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D378;
  return this;
}

double proto::gnss::Emergency::GpsTimeMeasured::GpsTimeMeasured(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  *this = &unk_28585D3F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585D3F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::GpsTimeMeasuredParams(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D468;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D468;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTOD::GpsTOD(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D4E0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D4E0;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::LocationInfo::LocationInfo(proto::gnss::Emergency::LocationInfo *this)
{
  *this = &unk_28585D558;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585D558;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::CellInfo::CellInfo(uint64_t this)
{
  *this = &unk_28585D5D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_28585D5D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::Emergency::UtranGanssTimeMeasured::UtranGanssTimeMeasured(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  *this = &unk_28585D648;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585D648;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gnss::Emergency::GeranGanssTimeMeasured::GeranGanssTimeMeasured(void *this)
{
  *this = &unk_28585D6C0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585D6C0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::ClsEutranCell::ClsEutranCell(proto::gnss::Emergency::ClsEutranCell *this)
{
  *this = &unk_28585D738;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_28585D738;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double proto::gnss::Emergency::GanssTimeMeasured::GanssTimeMeasured(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  *this = &unk_28585D7B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585D7B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::GanssTimeMeasuredParams(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D828;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D828;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::GanssLocationInfo::GanssLocationInfo(proto::gnss::Emergency::GanssLocationInfo *this)
{
  *this = &unk_28585D8A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585D8A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gnss::Emergency::EllipsoidPoint::EllipsoidPoint(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D918;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585D918;
  return this;
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::PointUncertainCircle(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D990;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585D990;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::PointUncertainEllipse::PointUncertainEllipse(proto::gnss::Emergency::PointUncertainEllipse *this)
{
  *this = &unk_28585DA08;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585DA08;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::PointAltitudeUncertainEllipsoid(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this)
{
  *this = &unk_28585DA80;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_28585DA80;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double proto::gnss::Emergency::EllipsoidArc::EllipsoidArc(proto::gnss::Emergency::EllipsoidArc *this)
{
  *this = &unk_28585DAF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585DAF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::PointAltitude::PointAltitude(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DB70;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DB70;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Polygon::Polygon(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DBE8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DBE8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double proto::gnss::Emergency::ShapeInfo::ShapeInfo(proto::gnss::Emergency::ShapeInfo *this)
{
  *this = &unk_28585DC60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_28585DC60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::LocEstimate::LocEstimate(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DCD8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DCD8;
  *(this + 24) = 0;
  return this;
}

void *proto::gnss::Emergency::HorizontalVelocity::HorizontalVelocity(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585DD50;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585DD50;
  return this;
}

void *proto::gnss::Emergency::HorizWithVertVelocity::HorizWithVertVelocity(void *this)
{
  *this = &unk_28585DDC8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585DDC8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::HorizWithUncertaintyVelocity(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DE40;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DE40;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::HorizWithVertUncertaintyVelocity(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this)
{
  *this = &unk_28585DEB8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_28585DEB8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gnss::Emergency::VelocityInfo::VelocityInfo(proto::gnss::Emergency::VelocityInfo *this)
{
  *this = &unk_28585DF30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_28585DF30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::VelocityEstimate(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DFA8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585DFA8;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::PositionReport::PositionReport(proto::gnss::Emergency::PositionReport *this)
{
  *this = &unk_28585E020;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_28585E020;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double proto::gnss::Emergency::GanssMeasurementElement::GanssMeasurementElement(proto::gnss::Emergency::GanssMeasurementElement *this)
{
  *this = &unk_28585E098;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_28585E098;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::GanssSignalMeasurementInfo(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_28585E110;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_28585E110;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::GanssMeasurementsForSingleGanss(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585E188;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585E188;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::GanssMeasurements::GanssMeasurements(proto::gnss::Emergency::GanssMeasurements *this)
{
  *this = &unk_28585E200;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_28585E200;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsMeasurementElement::GpsMeasurementElement(proto::gnss::Emergency::GpsMeasurementElement *this)
{
  *this = &unk_28585E278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_28585E278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsMeasurements::GpsMeasurements(proto::gnss::Emergency::GpsMeasurements *this)
{
  *this = &unk_28585E2F0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585E2F0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double proto::gnss::Emergency::MeasurementReport::MeasurementReport(proto::gnss::Emergency::MeasurementReport *this)
{
  *this = &unk_28585E368;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

{
  *this = &unk_28585E368;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

double proto::gnss::Emergency::GpsAssistanceRequest::GpsAssistanceRequest(proto::gnss::Emergency::GpsAssistanceRequest *this)
{
  *this = &unk_28585E3E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_28585E3E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

void *proto::gnss::Emergency::GanssTimeModelElem::GanssTimeModelElem(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585E458;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585E458;
  return this;
}

double proto::gnss::Emergency::GanssDataBitAssist::GanssDataBitAssist(proto::gnss::Emergency::GanssDataBitAssist *this)
{
  *this = &unk_28585E4D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_28585E4D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *proto::gnss::Emergency::GanssStoredSatDataElem::GanssStoredSatDataElem(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585E548;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585E548;
  return this;
}

double proto::gnss::Emergency::GanssNavModelAddData::GanssNavModelAddData(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  *this = &unk_28585E5C0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585E5C0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

void *proto::gnss::Emergency::GanssAddAssistDataChoices::GanssAddAssistDataChoices(void *this)
{
  *this = &unk_28585E638;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585E638;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::GanssAidRequestPerGanss::GanssAidRequestPerGanss(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *this = &unk_28585E6B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *this = &unk_28585E6B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

double proto::gnss::Emergency::GanssAssistanceRequest::GanssAssistanceRequest(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  *this = &unk_28585E728;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_28585E728;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double proto::gnss::Emergency::AssistanceNeededReport::AssistanceNeededReport(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  *this = &unk_28585E7A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_28585E7A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::EutranCellTime::EutranCellTime(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585E818;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585E818;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double proto::gnss::Emergency::ClsGeranCellTime::ClsGeranCellTime(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  *this = &unk_28585E890;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585E890;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

void *proto::gnss::Emergency::GpsTowCdmaCellTime::GpsTowCdmaCellTime(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585E908;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585E908;
  return this;
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::CtsEutranCellTime(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585E980;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585E980;
  *(this + 24) = 0;
  return this;
}

void *proto::gnss::Emergency::CtsCdmaCellTime::CtsCdmaCellTime(void *this)
{
  *this = &unk_28585E9F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585E9F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gnss::Emergency::CellTimeData::CellTimeData(void *this)
{
  *this = &unk_28585EA70;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585EA70;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::CellTimeAssistance(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585EAE8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585EAE8;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::TowAssist::TowAssist(uint64_t this)
{
  *this = &unk_28585EB60;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_28585EB60;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::Emergency::GpsReferenceTime::GpsReferenceTime(proto::gnss::Emergency::GpsReferenceTime *this)
{
  *this = &unk_28585EBD8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585EBD8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double proto::gnss::Emergency::ReferenceLocation::ReferenceLocation(proto::gnss::Emergency::ReferenceLocation *this)
{
  *this = &unk_28585EC50;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_28585EC50;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsEphemeris::GpsEphemeris(proto::gnss::Emergency::GpsEphemeris *this)
{
  *this = &unk_28585ECC8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  return result;
}

{
  *this = &unk_28585ECC8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::GpsNavigationModel(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585ED40;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585ED40;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::CplaneConfig(uint64_t this)
{
  *this = &unk_28585EDB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_28585EDB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

void *proto::gnss::Emergency::CplaneContext::CplaneContext(void *this)
{
  *this = &unk_28585EE30;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585EE30;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::EmergConfig(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585EEA8;
  *(this + 8) = v1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_28585EEA8;
  *(this + 8) = v1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::GpsAcqElement::GpsAcqElement(proto::gnss::Emergency::GpsAcqElement *this)
{
  *this = &unk_28585EF20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_28585EF20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsAcqAssistance::GpsAcqAssistance(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  *this = &unk_28585EF98;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_28585EF98;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::CellFTAssistanceRequest(uint64_t this)
{
  *this = &unk_28585F010;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_28585F010;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void *proto::gnss::Emergency::CellFTAssistance::CellFTAssistance(void *this)
{
  *this = &unk_28585F088;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585F088;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::NetworkReferenceLocation::NetworkReferenceLocation(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  *this = &unk_28585F100;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_28585F100;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void *proto::gnss::Emergency::NetworkReferenceTime::NetworkReferenceTime(void *this)
{
  *this = &unk_28585F178;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_28585F178;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::Is801VelocityInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585F1F0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_28585F1F0;
  *(this + 24) = 0;
  return this;
}

void *proto::gnss::Emergency::Is801ClockInfo::Is801ClockInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585F268;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585F268;
  return this;
}

void *proto::gnss::Emergency::Is801HeightInfo::Is801HeightInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585F2E0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_28585F2E0;
  return this;
}

double proto::gnss::Emergency::Is801LocationInd::Is801LocationInd(proto::gnss::Emergency::Is801LocationInd *this)
{
  *this = &unk_28585F358;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  return result;
}

{
  *this = &unk_28585F358;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  return result;
}

double proto::gnss::Emergency::MeasurementReportWithEstimate::MeasurementReportWithEstimate(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  *this = &unk_28585F3D0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

{
  *this = &unk_28585F3D0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::Cdma1xContext(uint64_t this)
{
  *this = &unk_28585F448;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_28585F448;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void proto::gnss::Emergency::SuplInitVer2Extension::InitAsDefaultInstance(proto::gnss::Emergency::SuplInitVer2Extension *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SLPAddress::default_instance_;
  if (!proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SLPAddress::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::Init::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::QoP::default_instance_;
  if (!proto::gnss::Emergency::QoP::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::QoP::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = proto::gnss::Emergency::SLPAddress::default_instance_;
  if (!proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::SLPAddress::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = proto::gnss::Emergency::Notification::default_instance_;
  if (!proto::gnss::Emergency::Notification::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::Notification::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = proto::gnss::Emergency::SuplInitVer2Extension::default_instance_;
  if (!proto::gnss::Emergency::SuplInitVer2Extension::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::SuplInitVer2Extension::default_instance_;
  }

  *(v1 + 4) = v5;
  return this;
}

void proto::gnss::Emergency::SuplContext::InitAsDefaultInstance(proto::gnss::Emergency::SuplContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Configuration::default_instance_;
  if (!proto::gnss::Emergency::Configuration::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Configuration::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::SessionStatus::InitAsDefaultInstance(proto::gnss::Emergency::SessionStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::NetworkReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::NetworkReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::NetworkReferenceLocation::default_instance_;
  }

  *(this + 10) = v5;
  v6 = proto::gnss::Emergency::NetworkReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::NetworkReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::NetworkReferenceTime::default_instance_;
  }

  *(this + 11) = v6;
}

void proto::gnss::Emergency::ClsUtranCellTime::InitAsDefaultInstance(proto::gnss::Emergency::ClsUtranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::UtranGpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::ClsUtranCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsUtranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::ClsUtranCellTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  }

  *(this + 2) = v6;
}

void proto::gnss::Emergency::GpsTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::GpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::InitAsDefaultInstance(proto::gnss::Emergency::GpsTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::LocationInfo::InitAsDefaultInstance(proto::gnss::Emergency::LocationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTOD::default_instance_;
  if (!proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTOD::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::CellInfo::InitAsDefaultInstance(proto::gnss::Emergency::CellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Plmn::default_instance_;
  if (!proto::gnss::Emergency::Plmn::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Plmn::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::UtranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  if (!proto::gnss::Emergency::CellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::GeranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  if (!proto::gnss::Emergency::CellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::ClsEutranCell::InitAsDefaultInstance(proto::gnss::Emergency::ClsEutranCell *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Plmn::default_instance_;
  if (!proto::gnss::Emergency::Plmn::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Plmn::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::GanssTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::GanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Emergency::ClsEutranCell::default_instance_;
  if (!proto::gnss::Emergency::ClsEutranCell::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::ClsEutranCell::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::Emergency::GanssTimeMeasuredParams::InitAsDefaultInstance(proto::gnss::Emergency::GanssTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointUncertainCircle::InitAsDefaultInstance(proto::gnss::Emergency::PointUncertainCircle *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointUncertainEllipse::InitAsDefaultInstance(proto::gnss::Emergency::PointUncertainEllipse *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::InitAsDefaultInstance(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::EllipsoidArc::InitAsDefaultInstance(proto::gnss::Emergency::EllipsoidArc *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointAltitude::InitAsDefaultInstance(proto::gnss::Emergency::PointAltitude *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::ShapeInfo::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::PointUncertainCircle::default_instance_;
  if (!proto::gnss::Emergency::PointUncertainCircle::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::PointUncertainCircle::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = proto::gnss::Emergency::PointUncertainEllipse::default_instance_;
  if (!proto::gnss::Emergency::PointUncertainEllipse::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::PointUncertainEllipse::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_;
  if (!proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = proto::gnss::Emergency::EllipsoidArc::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidArc::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::EllipsoidArc::default_instance_;
  }

  *(v1 + 4) = v5;
  v6 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v6 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(v1 + 5) = v6;
  v7 = proto::gnss::Emergency::PointAltitude::default_instance_;
  if (!proto::gnss::Emergency::PointAltitude::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v7 = proto::gnss::Emergency::PointAltitude::default_instance_;
  }

  *(v1 + 6) = v7;
  v8 = proto::gnss::Emergency::Polygon::default_instance_;
  if (!proto::gnss::Emergency::Polygon::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v8 = proto::gnss::Emergency::Polygon::default_instance_;
  }

  *(v1 + 7) = v8;
  return this;
}

void proto::gnss::Emergency::LocEstimate::InitAsDefaultInstance(proto::gnss::Emergency::LocEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::ShapeInfo::default_instance_;
  if (!proto::gnss::Emergency::ShapeInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::ShapeInfo::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::VelocityInfo::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::HorizontalVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizontalVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::HorizontalVelocity::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = proto::gnss::Emergency::HorizWithVertVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithVertVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::HorizWithVertVelocity::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_;
  }

  *(v1 + 4) = v5;
  return this;
}

void proto::gnss::Emergency::VelocityEstimate::InitAsDefaultInstance(proto::gnss::Emergency::VelocityEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::VelocityInfo::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::PositionReport::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(v1 + 2) = v2;
  v3 = proto::gnss::Emergency::LocationInfo::default_instance_;
  if (!proto::gnss::Emergency::LocationInfo::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::LocationInfo::default_instance_;
  }

  *(v1 + 3) = v3;
  v4 = proto::gnss::Emergency::GanssLocationInfo::default_instance_;
  if (!proto::gnss::Emergency::GanssLocationInfo::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::GanssLocationInfo::default_instance_;
  }

  *(v1 + 4) = v4;
  v5 = proto::gnss::Emergency::LocEstimate::default_instance_;
  if (!proto::gnss::Emergency::LocEstimate::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::LocEstimate::default_instance_;
  }

  *(v1 + 5) = v5;
  v6 = proto::gnss::Emergency::VelocityEstimate::default_instance_;
  if (!proto::gnss::Emergency::VelocityEstimate::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v6 = proto::gnss::Emergency::VelocityEstimate::default_instance_;
  }

  *(v1 + 6) = v6;
  return this;
}

void proto::gnss::Emergency::GanssMeasurementsForSingleGanss::InitAsDefaultInstance(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_;
  if (!proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::GanssMeasurements::InitAsDefaultInstance(proto::gnss::Emergency::GanssMeasurements *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_;
  }

  *(this + 3) = v5;
  v6 = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_;
  }

  *(this + 5) = v6;
}

void proto::gnss::Emergency::GpsMeasurements::InitAsDefaultInstance(proto::gnss::Emergency::GpsMeasurements *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  }

  *(this + 6) = v5;
  v6 = proto::gnss::Emergency::GpsTOD::default_instance_;
  if (!proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsTOD::default_instance_;
  }

  *(this + 8) = v6;
}

void proto::gnss::Emergency::MeasurementReport::InitAsDefaultInstance(proto::gnss::Emergency::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gnss::Emergency::GanssMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GanssMeasurements::default_instance_;
  }

  *(this + 4) = v7;
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::InitAsDefaultInstance(proto::gnss::Emergency::GanssAidRequestPerGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssDataBitAssist::default_instance_;
  if (!proto::gnss::Emergency::GanssDataBitAssist::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssDataBitAssist::default_instance_;
  }

  *(this + 5) = v5;
  v6 = proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  if (!proto::gnss::Emergency::GanssNavModelAddData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  }

  *(this + 6) = v6;
  v7 = proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  if (!proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  }

  *(this + 7) = v7;
}

void proto::gnss::Emergency::AssistanceNeededReport::InitAsDefaultInstance(proto::gnss::Emergency::AssistanceNeededReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::GpsAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GpsAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsAssistanceRequest::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GanssAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  }

  *(this + 4) = v7;
}

void proto::gnss::Emergency::CtsCdmaCellTime::InitAsDefaultInstance(proto::gnss::Emergency::CtsCdmaCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::CellTimeData::InitAsDefaultInstance(proto::gnss::Emergency::CellTimeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsEutranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  }

  *(this + 2) = v6;
}

void proto::gnss::Emergency::CellTimeAssistance::InitAsDefaultInstance(proto::gnss::Emergency::CellTimeAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  if (!proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::CplaneContext::InitAsDefaultInstance(proto::gnss::Emergency::CplaneContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Configuration::default_instance_;
  if (!proto::gnss::Emergency::Configuration::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Configuration::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  if (!proto::gnss::Emergency::Cdma1xContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  }

  *(this + 2) = v6;
}

void proto::gnss::Emergency::EmergConfig::InitAsDefaultInstance(proto::gnss::Emergency::EmergConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CplaneConfig::default_instance_;
  if (!proto::gnss::Emergency::CplaneConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CplaneConfig::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::SuplConfig::default_instance_;
  if (!proto::gnss::Emergency::SuplConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::SuplConfig::default_instance_;
  }

  *(this + 3) = v6;
}

void proto::gnss::Emergency::GpsAcqAssistance::InitAsDefaultInstance(proto::gnss::Emergency::GpsAcqAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellTimeAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::CellFTAssistance::InitAsDefaultInstance(proto::gnss::Emergency::CellFTAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  if (!proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::Is801LocationInd::InitAsDefaultInstance(proto::gnss::Emergency::Is801LocationInd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  }

  *(this + 4) = v5;
  v6 = proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801ClockInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  }

  *(this + 5) = v6;
  v7 = proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801HeightInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  }

  *(this + 6) = v7;
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::InitAsDefaultInstance(proto::gnss::Emergency::MeasurementReportWithEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gnss::Emergency::Is801LocationInd::default_instance_;
  if (!proto::gnss::Emergency::Is801LocationInd::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::Is801LocationInd::default_instance_;
  }

  *(this + 4) = v7;
}

BOOL proto::gnss::Emergency::SupportedGADShapes_IsValid(proto::gnss::Emergency *this)
{
  v1 = this;
  result = 1;
  if (v1 - 4 > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0)
  {
    return v1 < 3;
  }

  return result;
}

uint64_t proto::gnss::Emergency::AidMask_IsValid(proto::gnss::Emergency *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 3)
  {
    if (v1 >= 3)
    {
      return 0;
    }
  }

  else if (((v1 - 4) > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0) && v1 != 128 && v1 != 256)
  {
    return 0;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssGenericAidMask_IsValid(proto::gnss::Emergency *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 3)
  {
    if (v1 >= 3)
    {
      return 0;
    }
  }

  else if (((v1 - 4) > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0) && v1 != 128 && v1 != 256)
  {
    return 0;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Configuration::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::Configuration *proto::gnss::Emergency::Configuration::Configuration(proto::gnss::Emergency::Configuration *this, const proto::gnss::Emergency::Configuration *a2)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *this = &unk_28585C838;
  *(this + 1) = 0;
  proto::gnss::Emergency::Configuration::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Configuration::MergeFrom(proto::gnss::Emergency::Configuration *this, const proto::gnss::Emergency::Configuration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v6;
      v4 = *(a2 + 6);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 17);
    *(this + 6) |= 2u;
    *(this + 17) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *(this + 6) |= 4u;
    *(this + 1) = v5;
  }
}

void sub_2454CB058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Configuration::~Configuration(proto::gnss::Emergency::Configuration *this)
{
  *this = &unk_28585C838;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C838;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C838;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::Configuration::default_instance(proto::gnss::Emergency::Configuration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Configuration::default_instance_;
  if (!proto::gnss::Emergency::Configuration::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Configuration::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Configuration::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Configuration::MergePartialFromCodedStream(proto::gnss::Emergency::Configuration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v16[0] = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
        if (!result)
        {
          return result;
        }

        v10 = v16[0];
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 16) = v10 != 0;
      *(this + 6) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_24:
        v16[0] = 0;
        if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v14 = v16[0];
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 17) = v14 != 0;
        *(this + 6) |= 2u;
        if (v15 < v8 && *v15 == 25)
        {
          *(a2 + 1) = v15 + 1;
LABEL_32:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v16;
          *(this + 6) |= 4u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t proto::gnss::Emergency::Configuration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
    if ((*(v5 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v5 + 8);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v7, a3);
}

uint64_t proto::gnss::Emergency::Configuration::ByteSize(proto::gnss::Emergency::Configuration *this)
{
  v1 = 2 * (*(this + 6) & 1) + (*(this + 6) & 2);
  if ((*(this + 6) & 4) != 0)
  {
    v1 |= 9u;
  }

  if (*(this + 6))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  *(this + 5) = v2;
  return v2;
}

void proto::gnss::Emergency::Configuration::CheckTypeAndMergeFrom(proto::gnss::Emergency::Configuration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Configuration::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Configuration::CopyFrom(proto::gnss::Emergency::Configuration *this, const proto::gnss::Emergency::Configuration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Configuration::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::Configuration::Swap(proto::gnss::Emergency::Configuration *this, proto::gnss::Emergency::Configuration *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double proto::gnss::Emergency::SummaryReport::SharedCtor(proto::gnss::Emergency::SummaryReport *this)
{
  *(this + 52) = 0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  return result;
}

proto::gnss::Emergency::SummaryReport *proto::gnss::Emergency::SummaryReport::SummaryReport(proto::gnss::Emergency::SummaryReport *this, const proto::gnss::Emergency::SummaryReport *a2)
{
  *this = &unk_28585C8B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  proto::gnss::Emergency::SummaryReport::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SummaryReport::MergeFrom(proto::gnss::Emergency::SummaryReport *this, const proto::gnss::Emergency::SummaryReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 31);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 1);
      *(this + 31) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 31);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 31) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 31);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v7 = *(a2 + 3);
    *(this + 31) |= 4u;
    *(this + 3) = v7;
    v4 = *(a2 + 31);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 4);
    *(this + 31) |= 8u;
    *(this + 4) = v8;
    v4 = *(a2 + 31);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 5);
    *(this + 31) |= 0x10u;
    *(this + 5) = v9;
    v4 = *(a2 + 31);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 6);
    *(this + 31) |= 0x20u;
    *(this + 6) = v10;
    v4 = *(a2 + 31);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 14);
    *(this + 31) |= 0x40u;
    *(this + 14) = v11;
    v4 = *(a2 + 31);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v12 = *(a2 + 15);
    if (v12 >= 0x12)
    {
      __assert_rtn("set_method_type", "GnssEmergencyTypes.pb.h", 13226, "::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(this + 31) |= 0x80u;
    *(this + 15) = v12;
    v4 = *(a2 + 31);
  }

LABEL_22:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 16);
    if (v13 >= 4)
    {
      __assert_rtn("set_session_type", "GnssEmergencyTypes.pb.h", 13249, "::proto::gnss::Emergency::PositionSession_IsValid(value)");
    }

    *(this + 31) |= 0x100u;
    *(this + 16) = v13;
    v4 = *(a2 + 31);
  }

  if ((v4 & 0x200) != 0)
  {
    v14 = *(a2 + 17);
    if (v14 >= 7)
    {
      __assert_rtn("set_protocol_type", "GnssEmergencyTypes.pb.h", 13272, "::proto::gnss::Emergency::PositionProtocol_IsValid(value)");
    }

    *(this + 31) |= 0x200u;
    *(this + 17) = v14;
    v4 = *(a2 + 31);
  }

  if ((v4 & 0x400) != 0)
  {
    v17 = *(a2 + 9);
    *(this + 31) |= 0x400u;
    *(this + 9) = v17;
    v4 = *(a2 + 31);
    if ((v4 & 0x800) == 0)
    {
LABEL_31:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_31;
  }

  v18 = *(a2 + 10);
  *(this + 31) |= 0x800u;
  *(this + 10) = v18;
  v4 = *(a2 + 31);
  if ((v4 & 0x1000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 11);
  *(this + 31) |= 0x1000u;
  *(this + 11) = v19;
  v4 = *(a2 + 31);
  if ((v4 & 0x2000) == 0)
  {
LABEL_33:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_45:
  v20 = *(a2 + 24);
  if (v20 >= 8)
  {
    __assert_rtn("set_pos_req_type", "GnssEmergencyTypes.pb.h", 13361, "::proto::gnss::Emergency::PositionReqType_IsValid(value)");
  }

  *(this + 31) |= 0x2000u;
  *(this + 24) = v20;
  v4 = *(a2 + 31);
  if ((v4 & 0x4000) == 0)
  {
LABEL_34:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_47:
  v21 = *(a2 + 25);
  if (v21 >= 0x11)
  {
    __assert_rtn("set_error_code", "GnssEmergencyTypes.pb.h", 13384, "::proto::gnss::Emergency::SessionErrorCode_IsValid(value)");
  }

  *(this + 31) |= 0x4000u;
  *(this + 25) = v21;
  v4 = *(a2 + 31);
  if ((v4 & 0x8000) != 0)
  {
LABEL_35:
    v15 = *(a2 + 104);
    *(this + 31) |= 0x8000u;
    *(this + 104) = v15;
    v4 = *(a2 + 31);
  }

LABEL_36:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v22 = *(a2 + 105);
    *(this + 31) |= 0x10000u;
    *(this + 105) = v22;
    v4 = *(a2 + 31);
    if ((v4 & 0x20000) == 0)
    {
LABEL_39:
      if ((v4 & 0x40000) == 0)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_39;
  }

  v23 = *(a2 + 14);
  *(this + 31) |= 0x20000u;
  *(this + 14) = v23;
  if ((*(a2 + 31) & 0x40000) != 0)
  {
LABEL_40:
    v16 = *(a2 + 27);
    *(this + 31) |= 0x40000u;
    *(this + 27) = v16;
  }
}

void sub_2454CBA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SummaryReport::~SummaryReport(proto::gnss::Emergency::SummaryReport *this)
{
  *this = &unk_28585C8B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C8B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C8B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::SummaryReport::default_instance(proto::gnss::Emergency::SummaryReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SummaryReport::default_instance_;
  if (!proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SummaryReport::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SummaryReport::Clear(uint64_t this)
{
  v1 = *(this + 124);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 89) = 0u;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 105) = 0;
    *(this + 112) = 0;
    *(this + 108) = 0;
  }

  *(this + 124) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SummaryReport::MergePartialFromCodedStream(proto::gnss::Emergency::SummaryReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
  {
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 1)
        {
          goto LABEL_68;
        }

        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v53;
        *(this + 31) |= 1u;
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || *v7 != 17)
        {
          continue;
        }

        *(a2 + 1) = v7 + 1;
        goto LABEL_33;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_68;
        }

LABEL_33:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v53;
        *(this + 31) |= 2u;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 25)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
LABEL_37:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v53;
        *(this + 31) |= 4u;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 33)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_41:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v53;
        *(this + 31) |= 8u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 41)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_45:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v53;
        *(this + 31) |= 0x10u;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 49)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_52:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v53;
        *(this + 31) |= 0x20u;
        v22 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v22 >= v15 || *v22 != 56)
        {
          continue;
        }

        v23 = v22 + 1;
        *(a2 + 1) = v23;
LABEL_60:
        v53[0] = 0;
        if (v23 >= v15 || (v26 = *v23, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
          if (!result)
          {
            return result;
          }

          v26 = v53[0];
          v27 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v27 = v23 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 14) = v26;
        *(this + 31) |= 0x40u;
        if (v27 >= v15 || *v27 != 64)
        {
          continue;
        }

        v16 = v27 + 1;
        *(a2 + 1) = v16;
LABEL_77:
        v53[0] = 0;
        if (v16 >= v15 || (v32 = *v16, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
          if (!result)
          {
            return result;
          }

          v32 = v53[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v32 <= 0x11)
        {
          *(this + 31) |= 0x80u;
          *(this + 15) = v32;
        }

        v33 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v33 >= v29 || *v33 != 72)
        {
          continue;
        }

        v30 = v33 + 1;
        *(a2 + 1) = v30;
LABEL_87:
        v53[0] = 0;
        if (v30 >= v29 || (v34 = *v30, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
          if (!result)
          {
            return result;
          }

          v34 = v53[0];
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (v34 <= 3)
        {
          *(this + 31) |= 0x100u;
          *(this + 16) = v34;
        }

        v35 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v35 >= v12 || *v35 != 80)
        {
          continue;
        }

        v13 = v35 + 1;
        *(a2 + 1) = v13;
LABEL_97:
        v53[0] = 0;
        if (v13 >= v12 || (v36 = *v13, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
          if (!result)
          {
            return result;
          }

          v36 = v53[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v36 <= 6)
        {
          *(this + 31) |= 0x200u;
          *(this + 17) = v36;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 89)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_107:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v53;
        *(this + 31) |= 0x400u;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 97)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_111:
        *v53 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v53;
        *(this + 31) |= 0x800u;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 105)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_115:
        *v53 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v53))
        {
          *(this + 11) = *v53;
          *(this + 31) |= 0x1000u;
          v40 = *(a2 + 1);
          v24 = *(a2 + 2);
          if (v40 < v24 && *v40 == 112)
          {
            v25 = v40 + 1;
            *(a2 + 1) = v25;
LABEL_119:
            v53[0] = 0;
            if (v25 >= v24 || (v41 = *v25, (v41 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
              if (!result)
              {
                return result;
              }

              v41 = v53[0];
            }

            else
            {
              *(a2 + 1) = v25 + 1;
            }

            if (v41 <= 7)
            {
              *(this + 31) |= 0x2000u;
              *(this + 24) = v41;
            }

            v42 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v42 < v10 && *v42 == 120)
            {
              v11 = v42 + 1;
              *(a2 + 1) = v11;
LABEL_129:
              v53[0] = 0;
              if (v11 >= v10 || (v43 = *v11, (v43 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
                if (!result)
                {
                  return result;
                }

                v43 = v53[0];
              }

              else
              {
                *(a2 + 1) = v11 + 1;
              }

              if (v43 <= 0x10)
              {
                *(this + 31) |= 0x4000u;
                *(this + 25) = v43;
              }

              v44 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v8 - v44 >= 2 && *v44 == 128 && v44[1] == 1)
              {
                v14 = (v44 + 2);
                *(a2 + 1) = v14;
LABEL_140:
                v53[0] = 0;
                if (v14 >= v8 || (v45 = *v14, (v45 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
                  if (!result)
                  {
                    return result;
                  }

                  v45 = v53[0];
                  v46 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v46 = (v14 + 1);
                  *(a2 + 1) = v46;
                }

                *(this + 104) = v45 != 0;
                *(this + 31) |= 0x8000u;
                if (v8 - v46 >= 2 && *v46 == 136 && v46[1] == 1)
                {
                  v9 = (v46 + 2);
                  *(a2 + 1) = v9;
LABEL_149:
                  v53[0] = 0;
                  if (v9 >= v8 || (v47 = *v9, (v47 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v53);
                    if (!result)
                    {
                      return result;
                    }

                    v47 = v53[0];
                    v48 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v48 = (v9 + 1);
                    *(a2 + 1) = v48;
                  }

                  *(this + 105) = v47 != 0;
                  *(this + 31) |= 0x10000u;
                  if (v8 - v48 >= 2 && *v48 == 144 && v48[1] == 1)
                  {
                    v21 = (v48 + 2);
                    *(a2 + 1) = v21;
LABEL_158:
                    if (v21 >= v8 || (v49 = *v21, v49 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 14);
                      if (!result)
                      {
                        return result;
                      }

                      v50 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 14) = v49;
                      v50 = (v21 + 1);
                      *(a2 + 1) = v50;
                    }

                    *(this + 31) |= 0x20000u;
                    if (v8 - v50 >= 2 && *v50 == 152 && v50[1] == 1)
                    {
                      v28 = (v50 + 2);
                      *(a2 + 1) = v28;
LABEL_167:
                      if (v28 >= v8 || (v51 = *v28, v51 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                        if (!result)
                        {
                          return result;
                        }

                        v52 = *(a2 + 1);
                        v8 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 27) = v51;
                        v52 = v28 + 1;
                        *(a2 + 1) = v52;
                      }

                      *(this + 31) |= 0x40000u;
                      if (v52 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                      {
                        *(a2 + 8) = 0;
                        result = 1;
                        *(a2 + 36) = 1;
                        return result;
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_41;
        }

        goto LABEL_68;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_68;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v23 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_60;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_77;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_87;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_97;
      case 0xBu:
        if (v6 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_68;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_68;
      case 0xDu:
        if (v6 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_68;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_119;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_129;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_140;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_149;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_158;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_167;
      default:
LABEL_68:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t proto::gnss::Emergency::SummaryReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 124);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 60), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 68), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 100), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 104), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x12, *(v5 + 112), a2, a4);
    if ((*(v5 + 124) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 105), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v6 & 0x40000) == 0)
  {
    return this;
  }

LABEL_39:
  v7 = *(v5 + 108);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::SummaryReport::ByteSize(proto::gnss::Emergency::SummaryReport *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = *(this + 14);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }

    if ((v2 & 0x80) != 0)
    {
      v7 = *(this + 15);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v8 = 2;
      }

      v4 = (v8 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v9 = *(this + 16);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v10 = 2;
      }

      LODWORD(v4) = v10 + v4;
    }

    if ((v2 & 0x200) != 0)
    {
      v11 = *(this + 17);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v12 = 2;
      }

      LODWORD(v4) = v12 + v4;
    }

    v13 = v4 + 9;
    if ((v2 & 0x400) == 0)
    {
      v13 = v4;
    }

    if ((v2 & 0x800) != 0)
    {
      v13 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      LODWORD(v4) = v13 + 9;
    }

    else
    {
      LODWORD(v4) = v13;
    }

    if ((v2 & 0x2000) != 0)
    {
      v14 = *(this + 24);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v15 = 2;
      }

      LODWORD(v4) = v15 + v4;
    }

    if ((v2 & 0x4000) != 0)
    {
      v16 = *(this + 25);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = 11;
      }

      else if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
        v2 = *(this + 31);
      }

      else
      {
        v17 = 2;
      }

      LODWORD(v4) = v17 + v4;
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }

    if ((v2 & 0x20000) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 14)) + 2;
      v2 = *(this + 31);
    }

    if ((v2 & 0x40000) != 0)
    {
      v18 = *(this + 27);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 2;
      }

      else
      {
        v19 = 3;
      }

      v4 = (v19 + v4);
    }
  }

  *(this + 30) = v4;
  return v4;
}

void proto::gnss::Emergency::SummaryReport::CheckTypeAndMergeFrom(proto::gnss::Emergency::SummaryReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SummaryReport::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SummaryReport::CopyFrom(proto::gnss::Emergency::SummaryReport *this, const proto::gnss::Emergency::SummaryReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SummaryReport::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::SummaryReport::Swap(proto::gnss::Emergency::SummaryReport *this, proto::gnss::Emergency::SummaryReport *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v8;
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
    v10 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
    v11 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    v13 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v13;
    result = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = result;
    v15 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v15;
    v16 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v16;
    LOBYTE(v16) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v16;
    LOBYTE(v16) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v16;
    v17 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v17;
    LODWORD(v17) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v17;
    LODWORD(v17) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v17;
    LODWORD(v17) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v17;
  }

  return result;
}

void *proto::gnss::Emergency::SuplConfig::SharedCtor(void *this)
{
  this[1] = MEMORY[0x277D82C30];
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::SuplConfig *proto::gnss::Emergency::SuplConfig::SuplConfig(proto::gnss::Emergency::SuplConfig *this, const proto::gnss::Emergency::SuplConfig *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_28585C928;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::SuplConfig::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SuplConfig::MergeFrom(proto::gnss::Emergency::SuplConfig *this, const proto::gnss::Emergency::SuplConfig *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 4);
      *(this + 7) |= 1u;
      *(this + 4) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 1);
    *(this + 7) |= 2u;
    v8 = *(this + 1);
    if (v8 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 7);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v9 = *(a2 + 20);
    *(this + 7) |= 4u;
    *(this + 20) = v9;
    v4 = *(a2 + 7);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v10 = *(a2 + 21);
    *(this + 7) |= 8u;
    *(this + 21) = v10;
    v4 = *(a2 + 7);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = *(a2 + 22);
    *(this + 7) |= 0x10u;
    *(this + 22) = v11;
    if ((*(a2 + 7) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 23);
    *(this + 7) |= 0x20u;
    *(this + 23) = v5;
  }
}

void sub_2454CCE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SuplConfig::~SuplConfig(proto::gnss::Emergency::SuplConfig *this)
{
  *this = &unk_28585C928;
  proto::gnss::Emergency::SuplConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C928;
  proto::gnss::Emergency::SuplConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C928;
  proto::gnss::Emergency::SuplConfig::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::SuplConfig::SharedDtor(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245D6AEE0);
  }

  return this;
}

uint64_t proto::gnss::Emergency::SuplConfig::default_instance(proto::gnss::Emergency::SuplConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SuplConfig::default_instance_;
  if (!proto::gnss::Emergency::SuplConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SuplConfig::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SuplConfig::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 20) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SuplConfig::MergePartialFromCodedStream(proto::gnss::Emergency::SuplConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_50;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_58;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_66;
          }

          goto LABEL_27;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v17 = *(this + 7) | 1;
        *(this + 7) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_36;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_27;
      }

      v17 = *(this + 7);
LABEL_36:
      *(this + 7) = v17 | 2;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v19 < v9 && *v19 == 24)
      {
        v10 = v19 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        v29 = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 20) = v20 != 0;
        *(this + 7) |= 4u;
        if (v21 < v9 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(a2 + 1) = v16;
LABEL_50:
          v29 = 0;
          if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
            if (!result)
            {
              return result;
            }

            v22 = v29;
            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v23 = v16 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 21) = v22 != 0;
          *(this + 7) |= 8u;
          if (v23 < v9 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_58:
            v29 = 0;
            if (v18 >= v9 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 22) = v24 != 0;
            *(this + 7) |= 0x10u;
            if (v25 < v9 && *v25 == 48)
            {
              v11 = v25 + 1;
              *(a2 + 1) = v11;
LABEL_66:
              v29 = 0;
              if (v11 >= v9 || (v26 = *v11, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
                if (!result)
                {
                  return result;
                }

                v26 = v29;
                v27 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v27 = v11 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 23) = v26 != 0;
              *(this + 7) |= 0x20u;
              if (v27 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }
      }
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::SuplConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 22), a2, a4);
    if ((*(v5 + 28) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 23);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v8, a2, a4);
}

uint64_t proto::gnss::Emergency::SuplConfig::ByteSize(proto::gnss::Emergency::SuplConfig *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 4);
      if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 7);
        if ((v2 & 2) == 0)
        {
LABEL_19:
          v12.i64[0] = 0x200000002;
          v12.i64[1] = 0x200000002;
          result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2455824F0), v12)) + v3);
          goto LABEL_20;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(this + 1);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v2 = *(this + 7);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v3 += v11 + v7 + 1;
    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  *(this + 6) = result;
  return result;
}

void proto::gnss::Emergency::SuplConfig::CheckTypeAndMergeFrom(proto::gnss::Emergency::SuplConfig *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SuplConfig::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SuplConfig::CopyFrom(proto::gnss::Emergency::SuplConfig *this, const proto::gnss::Emergency::SuplConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SuplConfig::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::SuplConfig::Swap(uint64_t this, proto::gnss::Emergency::SuplConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LOBYTE(v3) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v3;
    LOBYTE(v3) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v3;
    LOBYTE(v3) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v3;
    LOBYTE(v3) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double proto::gnss::Emergency::LteCellInfo::SharedCtor(proto::gnss::Emergency::LteCellInfo *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  return result;
}

proto::gnss::Emergency::LteCellInfo *proto::gnss::Emergency::LteCellInfo::LteCellInfo(proto::gnss::Emergency::LteCellInfo *this, const proto::gnss::Emergency::LteCellInfo *a2)
{
  *this = &unk_28585C9A0;
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  proto::gnss::Emergency::LteCellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::LteCellInfo::MergeFrom(proto::gnss::Emergency::LteCellInfo *this, const proto::gnss::Emergency::LteCellInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    *(this + 13) |= 1u;
    *(this + 8) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 3);
  *(this + 13) |= 2u;
  *(this + 3) = v9;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 4);
  *(this + 13) |= 4u;
  *(this + 4) = v10;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 5);
  *(this + 13) |= 8u;
  *(this + 5) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 7);
    *(this + 13) |= 0x20u;
    *(this + 7) = v13;
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 6);
  *(this + 13) |= 0x10u;
  *(this + 6) = v12;
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v14 = *(a2 + 8);
  *(this + 13) |= 0x40u;
  *(this + 8) = v14;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 9);
    *(this + 13) |= 0x80u;
    *(this + 9) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 10);
      *(this + 13) |= 0x100u;
      *(this + 10) = v6;
      v4 = *(a2 + 13);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 11);
      *(this + 13) |= 0x200u;
      *(this + 11) = v7;
    }
  }
}

void sub_2454CDA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::LteCellInfo::~LteCellInfo(proto::gnss::Emergency::LteCellInfo *this)
{
  *this = &unk_28585C9A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C9A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585C9A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::LteCellInfo::default_instance(proto::gnss::Emergency::LteCellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::LteCellInfo::default_instance_;
  if (!proto::gnss::Emergency::LteCellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::LteCellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::LteCellInfo::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 36) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::LteCellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::LteCellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v6 == 7 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v6 == 10 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v39 = 0;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v13 = v39;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) = v13 != 0;
        *(this + 13) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
LABEL_49:
          if (v10 >= v7 || (v20 = *v10, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v20;
            v21 = v10 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 13) |= 2u;
          if (v21 < v7 && *v21 == 24)
          {
            v16 = v21 + 1;
            *(a2 + 1) = v16;
LABEL_57:
            if (v16 >= v7 || (v22 = *v16, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v22;
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 13) |= 4u;
            if (v23 < v7 && *v23 == 32)
            {
              v18 = v23 + 1;
              *(a2 + 1) = v18;
              goto LABEL_65;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_65:
      if (v18 >= v7 || (v24 = *v18, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v24;
        v25 = v18 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 13) |= 8u;
      if (v25 < v7 && *v25 == 40)
      {
        v8 = v25 + 1;
        *(a2 + 1) = v8;
LABEL_73:
        if (v8 >= v7 || (v26 = *v8, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v26;
          v27 = v8 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 13) |= 0x10u;
        if (v27 < v7 && *v27 == 48)
        {
          v15 = v27 + 1;
          *(a2 + 1) = v15;
LABEL_81:
          if (v15 >= v7 || (v28 = *v15, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v28;
            v29 = v15 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 13) |= 0x20u;
          if (v29 < v7 && *v29 == 56)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
LABEL_89:
            if (v11 >= v7 || (v30 = *v11, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v30;
              v31 = v11 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 13) |= 0x40u;
            if (v31 < v7 && *v31 == 64)
            {
              v17 = v31 + 1;
              *(a2 + 1) = v17;
LABEL_97:
              if (v17 >= v7 || (v32 = *v17, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v32;
                v33 = v17 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 13) |= 0x80u;
              if (v33 < v7 && *v33 == 72)
              {
                v19 = v33 + 1;
                *(a2 + 1) = v19;
LABEL_105:
                v40 = 0;
                if (v19 >= v7 || (v34 = *v19, (v34 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = v40;
                  v35 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  v35 = v19 + 1;
                  *(a2 + 1) = v35;
                }

                *(this + 10) = v34;
                *(this + 13) |= 0x100u;
                if (v35 < v7 && *v35 == 80)
                {
                  v9 = v35 + 1;
                  *(a2 + 1) = v9;
LABEL_113:
                  if (v9 >= v7 || (v36 = *v9, v36 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 11) = v36;
                    v37 = v9 + 1;
                    *(a2 + 1) = v37;
                  }

                  *(this + 13) |= 0x200u;
                  if (v37 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::LteCellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = v5[13];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[13];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[13];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[7], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[8], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v5[10], a2, a4);
    if ((v5[13] & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[9], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_21:
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::LteCellInfo::ByteSize(proto::gnss::Emergency::LteCellInfo *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_39;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(this + 3);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 13);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_19:
  v8 = *(this + 5);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_23:
  v10 = *(this + 6);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_27:
  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_31:
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_35:
    v16 = *(this + 9);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 13);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_39:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v18 = *(this + 10);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 11;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        v2 = *(this + 13);
      }

      else
      {
        v19 = 2;
      }

      v3 = (v19 + v3);
    }

    if ((v2 & 0x200) != 0)
    {
      v20 = *(this + 11);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      }

      else
      {
        v21 = 2;
      }

      v3 = (v21 + v3);
    }
  }

  *(this + 12) = v3;
  return v3;
}

void proto::gnss::Emergency::LteCellInfo::CheckTypeAndMergeFrom(proto::gnss::Emergency::LteCellInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::LteCellInfo::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::LteCellInfo::CopyFrom(proto::gnss::Emergency::LteCellInfo *this, const proto::gnss::Emergency::LteCellInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::LteCellInfo::MergeFrom(this, a2);
  }
}

uint64_t proto::gnss::Emergency::LteCellInfo::Swap(uint64_t this, proto::gnss::Emergency::LteCellInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v12;
    v13 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v13;
  }

  return this;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

proto::gnss::Emergency::GsmCellInfo *proto::gnss::Emergency::GsmCellInfo::GsmCellInfo(proto::gnss::Emergency::GsmCellInfo *this, const proto::gnss::Emergency::GsmCellInfo *a2)
{
  *this = &unk_28585CA18;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  proto::gnss::Emergency::GsmCellInfo::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::GsmCellInfo::MergeFrom(proto::gnss::Emergency::GsmCellInfo *this, const proto::gnss::Emergency::GsmCellInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(this + 8) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 8);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 6);
    *(this + 8) |= 0x10u;
    *(this + 6) = v5;
  }
}

void sub_2454CE7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::GsmCellInfo::~GsmCellInfo(proto::gnss::Emergency::GsmCellInfo *this)
{
  *this = &unk_28585CA18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585CA18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_28585CA18;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t proto::gnss::Emergency::GsmCellInfo::default_instance(proto::gnss::Emergency::GsmCellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::GsmCellInfo::default_instance_;
  if (!proto::gnss::Emergency::GsmCellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::GsmCellInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 20) = 0;
    *(this + 12) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::MergePartialFromCodedStream(proto::gnss::Emergency::GsmCellInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v24 = 0;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v13 = v24;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) = v13 != 0;
        *(this + 8) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 8) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 8) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 8) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 8) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnss::Emergency::GsmCellInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::GsmCellInfo::ByteSize(proto::gnss::Emergency::GsmCellInfo *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(this + 3);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v6 = *(this + 4);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_16:
  v8 = *(this + 5);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_20:
    v10 = *(this + 6);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
  }

LABEL_24:
  *(this + 7) = v3;
  return v3;
}