@interface CiderObject
- (CiderObject)init;
- (id).cxx_construct;
- (id)setPropertyDataPrivileged_NSHelper:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5;
- (pair<NSError)getPropertyData_Boolean:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4;
- (pair<NSError)getPropertyData_NSHelper:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withClass:(Class)a5;
- (void)connectADSDevice:(id)a3 withReply:(id)a4;
- (void)connectADSDevices:(id)a3 withReply:(id)a4;
- (void)disconnectADSDeviceByAOID:(id)a3 withReply:(id)a4;
- (void)disconnectADSDeviceByUUID:(id)a3 withReply:(id)a4;
- (void)disconnectADSDevicesByAOIDs:(id)a3 withReply:(id)a4;
- (void)disconnectADSDevicesByUUIDs:(id)a3 withReply:(id)a4;
- (void)disconnectAllADSDevices:(id)a3;
- (void)getADSDeviceMap:(id)a3;
- (void)getADSPluginAOID:(id)a3;
- (void)getAOIDForUUID:(id)a3 withReply:(id)a4;
- (void)getPropertyDataSize:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInQualifierData:(id)a5 withReply:(id)a6;
- (void)getPropertyData_Arithmetic:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInQualifierData:(id)a5 withReply:(id)a6;
- (void)getPropertyData_Array:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5;
- (void)getPropertyData_Boolean:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5;
- (void)getPropertyData_Dict:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5;
- (void)getPropertyData_String:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5;
- (void)getUUIDForAOID:(id)a3 withReply:(id)a4;
- (void)hasProperty:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5;
- (void)isDeviceWithAOIDConnected:(id)a3 withReply:(id)a4;
- (void)isDeviceWithUUIDConnected:(id)a3 withReply:(id)a4;
- (void)serializeNonADSDevices:(id)a3;
- (void)setPropertyDataPrivileged_Arithmetic:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInQualifierData:(id)a5 withInData:(id)a6 withReply:(id)a7;
- (void)setPropertyDataPrivileged_Array:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5 withReply:(id)a6;
- (void)setPropertyDataPrivileged_Dict:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5 withReply:(id)a6;
- (void)setPropertyDataPrivileged_String:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5 withReply:(id)a6;
@end

@implementation CiderObject

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)setPropertyDataPrivileged_String:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5 withReply:(id)a6
{
  v11 = a6;
  v10 = [(CiderObject *)self setPropertyDataPrivileged_NSHelper:a3 withInAddress:a4 withInData:a5];
  v11[2](v11, v10);
}

- (void)setPropertyDataPrivileged_Dict:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5 withReply:(id)a6
{
  v11 = a6;
  v10 = [(CiderObject *)self setPropertyDataPrivileged_NSHelper:a3 withInAddress:a4 withInData:a5];
  v11[2](v11, v10);
}

- (void)setPropertyDataPrivileged_Array:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5 withReply:(id)a6
{
  v11 = a6;
  v10 = [(CiderObject *)self setPropertyDataPrivileged_NSHelper:a3 withInAddress:a4 withInData:a5];
  v11[2](v11, v10);
}

- (void)setPropertyDataPrivileged_Arithmetic:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInQualifierData:(id)a5 withInData:(id)a6 withReply:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13 || !v15 || (v16 = [v15 bytes]) == 0)
  {
    util::server_log(v16);
    v30 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v62 = 1024;
      v63 = 814;
      v64 = 2112;
      v65 = v31;
      _os_log_impl(&dword_24348C000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = NSStringFromSelector(a2);
    v34 = [v32 errorWithDomain:v33 code:1852797029 userInfo:0];
    (*(v17 + 2))(v17, v34);

    goto LABEL_52;
  }

  v18 = [v13 unsignedIntValue];
  if (v14 && [v14 bytes])
  {
    ptr = self->mKernelPtr.__ptr_;
    v20 = [v14 length];
    v21 = [v14 bytes];
    v22 = [v15 length];
    v23 = [v15 bytes];
    v24 = ptr;
    v25 = v18;
    v26 = a4;
    v27 = v20;
    v28 = v21;
    v29 = v22;
  }

  else
  {
    v35 = self->mKernelPtr.__ptr_;
    v36 = [v15 length];
    v23 = [v15 bytes];
    v24 = v35;
    v25 = v18;
    v26 = a4;
    v27 = 0;
    v28 = 0;
    v29 = v36;
  }

  v37 = ads::Kernel::setPropertyDataPrivileged(v24, v25, v26, v27, v28, v29, v23);
  v38 = v37;
  util::server_log(v37);
  v39 = util::server_log(void)::sLogCat;
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    if (v40)
    {
      v41 = bswap32(v38);
      *&buf[1] = v41;
      if ((v41 - 32) > 0x5E || ((v41 >> 8) - 32) > 0x5E || ((v41 << 8 >> 24) - 32) > 0x5E || ((v41 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v60, v38);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v60, buf);
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v60;
      }

      else
      {
        v44 = v60.__r_.__value_.__r.__words[0];
      }

      mSelector = a4->mSelector;
      v46 = bswap32(a4->mSelector);
      *&buf[1] = v46;
      if ((v46 - 32) > 0x5E || ((v46 >> 8) - 32) > 0x5E || ((v46 << 8 >> 24) - 32) > 0x5E || ((v46 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v59, mSelector);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v59, buf);
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v59;
      }

      else
      {
        v47 = v59.__r_.__value_.__r.__words[0];
      }

      mScope = a4->mScope;
      v49 = bswap32(mScope);
      *&buf[1] = v49;
      if ((v49 - 32) > 0x5E || ((v49 >> 8) - 32) > 0x5E || ((v49 << 8 >> 24) - 32) > 0x5E || ((v49 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v58, mScope);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v58, buf);
      }

      v50 = &v58;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = v58.__r_.__value_.__r.__words[0];
      }

      mElement = a4->mElement;
      *buf = 136316674;
      *&buf[4] = "InCider.mm";
      v62 = 1024;
      v63 = 856;
      v64 = 2080;
      v65 = v44;
      v66 = 2080;
      v67 = v47;
      v68 = 2080;
      *v69 = v50;
      *&v69[8] = 1024;
      v70 = mElement;
      v71 = 1024;
      v72 = v18;
      _os_log_impl(&dword_24348C000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s setting property [%s/%s/%u] on device with ID %u with privilege", buf, 0x3Cu);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::setPropertyDataPrivileged" code:v38 userInfo:0];
    (*(v17 + 2))(v17, v33);
LABEL_52:

    goto LABEL_53;
  }

  if (v40)
  {
    v42 = a4->mSelector;
    v43 = bswap32(a4->mSelector);
    *&buf[1] = v43;
    if ((v43 - 32) > 0x5E || ((v43 >> 8) - 32) > 0x5E || ((v43 << 8 >> 24) - 32) > 0x5E || ((v43 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v60, v42);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v60, buf);
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v60;
    }

    else
    {
      v53 = v60.__r_.__value_.__r.__words[0];
    }

    v54 = a4->mScope;
    v55 = bswap32(v54);
    *&buf[1] = v55;
    if ((v55 - 32) > 0x5E || ((v55 >> 8) - 32) > 0x5E || ((v55 << 8 >> 24) - 32) > 0x5E || ((v55 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v59, v54);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v59, buf);
    }

    v56 = &v59;
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = v59.__r_.__value_.__r.__words[0];
    }

    v57 = a4->mElement;
    *buf = 136316418;
    *&buf[4] = "InCider.mm";
    v62 = 1024;
    v63 = 845;
    v64 = 2080;
    v65 = v53;
    v66 = 2080;
    v67 = v56;
    v68 = 1024;
    *v69 = v57;
    *&v69[4] = 1024;
    *&v69[6] = v18;
    _os_log_impl(&dword_24348C000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully set property [%s/%s/%u] on device with ID %u with privilege", buf, 0x32u);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }
  }

  (*(v17 + 2))(v17, 0);
LABEL_53:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)getPropertyData_Boolean:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5
{
  v8 = a5;
  [(CiderObject *)self getPropertyData_Boolean:a3 withInAddress:a4];
  v8[2](v8, v9, v10);
}

- (pair<NSError)getPropertyData_Boolean:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4
{
  v8 = v4;
  v57 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntValue];
    v12 = v11;
    ads::Kernel::getPropertyData_TypeRef(&__val, self->mKernelPtr.__ptr_, v11, a4);
    if (__val || !BOOLean)
    {
      util::server_log(v13);
      v14 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = bswap32(__val);
        *&buf[1] = v15;
        if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v42, __val);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v42, buf);
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v42;
        }

        else
        {
          v23 = v42.__r_.__value_.__r.__words[0];
        }

        mSelector = a4->mSelector;
        v25 = bswap32(a4->mSelector);
        *&buf[1] = v25;
        if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v41, mSelector);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v41, buf);
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v41;
        }

        else
        {
          v26 = v41.__r_.__value_.__r.__words[0];
        }

        mScope = a4->mScope;
        v28 = bswap32(mScope);
        *&buf[1] = v28;
        if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v40, mScope);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v40, buf);
        }

        v29 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v40.__r_.__value_.__r.__words[0];
        }

        mElement = a4->mElement;
        *buf = 136316674;
        *&buf[4] = "InCider.mm";
        v46 = 1024;
        v47 = 792;
        v48 = 2080;
        v49 = v23;
        v50 = 2080;
        v51 = v26;
        v52 = 2080;
        *v53 = v29;
        *&v53[8] = 1024;
        v54 = mElement;
        v55 = 1024;
        v56 = v12;
        _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }
      }

      *v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyData" code:__val userInfo:0];
      *(v8 + 8) = 0;
    }

    else
    {
      util::server_log(v13);
      v20 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a4->mSelector;
        v22 = bswap32(a4->mSelector);
        *&buf[1] = v22;
        if ((v22 - 32) > 0x5E || ((v22 >> 8) - 32) > 0x5E || ((v22 << 8 >> 24) - 32) > 0x5E || ((v22 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v42, v21);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v42, buf);
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v42;
        }

        else
        {
          v31 = v42.__r_.__value_.__r.__words[0];
        }

        v32 = a4->mScope;
        v33 = bswap32(v32);
        *&buf[1] = v33;
        if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v41, v32);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v41, buf);
        }

        v34 = &v41;
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v41.__r_.__value_.__r.__words[0];
        }

        v35 = a4->mElement;
        *buf = 136316418;
        *&buf[4] = "InCider.mm";
        v46 = 1024;
        v47 = 781;
        v48 = 2080;
        v49 = v31;
        v50 = 2080;
        v51 = v34;
        v52 = 1024;
        *v53 = v35;
        *&v53[4] = 1024;
        *&v53[6] = v12;
        _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property [%s/%s/%u] on device with ID %u", buf, 0x32u);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }
      }

      Value = CFBooleanGetValue(BOOLean);
      *v8 = 0;
      *(v8 + 8) = Value != 0;
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    util::server_log(0);
    v16 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v46 = 1024;
      v47 = 765;
      v48 = 2112;
      v49 = v17;
      _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = NSStringFromSelector(a2);
    *v8 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];
    *(v8 + 8) = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  result.var1 = v38;
  result.var0 = v37;
  return result;
}

- (void)getPropertyData_String:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(CiderObject *)self getPropertyData_NSHelper:v8 withInAddress:a4 withClass:objc_opt_class()];
  v9[2](v9, v10, v11);
}

- (void)getPropertyData_Dict:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(CiderObject *)self getPropertyData_NSHelper:v8 withInAddress:a4 withClass:objc_opt_class()];
  v9[2](v9, v10, v11);
}

- (void)getPropertyData_Array:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(CiderObject *)self getPropertyData_NSHelper:v8 withInAddress:a4 withClass:objc_opt_class()];
  v9[2](v9, v10, v11);
}

- (void)getPropertyData_Arithmetic:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInQualifierData:(id)a5 withReply:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15 = [v11 unsignedIntValue];
    v55 = 0;
    v56 = 0;
    if (v12 && [v12 bytes])
    {
      ptr = self->mKernelPtr.__ptr_;
      v17 = [v12 length];
      v18 = [v12 bytes];
      v19 = ptr;
      v20 = v15;
      v21 = a4;
      v22 = v17;
    }

    else
    {
      v19 = self->mKernelPtr.__ptr_;
      v20 = v15;
      v21 = a4;
      v22 = 0;
      v18 = 0;
    }

    ads::Kernel::getPropertyData(buf, v19, v20, v21, v22, v18);
    v23 = *buf;
    v55 = *buf;
    v24 = *&buf[8];
    v56 = *&buf[8];
    util::server_log(v25);
    v26 = util::server_log(void)::sLogCat;
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v27)
      {
        v28 = bswap32(v23);
        *&buf[1] = v28;
        if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v54, v23);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v54, buf);
        }

        v36 = &v54;
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v54.__r_.__value_.__r.__words[0];
        }

        v51 = v36;
        mSelector = a4->mSelector;
        v38 = bswap32(a4->mSelector);
        *&buf[1] = v38;
        if ((v38 - 32) > 0x5E || ((v38 >> 8) - 32) > 0x5E || ((v38 << 8 >> 24) - 32) > 0x5E || ((v38 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v53, mSelector);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v53, buf);
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v53;
        }

        else
        {
          v39 = v53.__r_.__value_.__r.__words[0];
        }

        mScope = a4->mScope;
        v41 = bswap32(mScope);
        *&buf[1] = v41;
        if ((v41 - 32) > 0x5E || ((v41 >> 8) - 32) > 0x5E || ((v41 << 8 >> 24) - 32) > 0x5E || ((v41 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v52, mScope);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v52, buf);
        }

        v42 = &v52;
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v52.__r_.__value_.__r.__words[0];
        }

        mElement = a4->mElement;
        *buf = 136316674;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 728;
        v58 = 2080;
        v59 = v51;
        v60 = 2080;
        v61 = v39;
        v62 = 2080;
        *v63 = v42;
        *&v63[8] = 1024;
        v64 = mElement;
        v65 = 1024;
        v66 = v15;
        _os_log_impl(&dword_24348C000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyData" code:v23 userInfo:0];
      (*(v14 + 2))(v14, v44, 0);
    }

    else
    {
      if (v27)
      {
        v34 = a4->mSelector;
        v35 = bswap32(a4->mSelector);
        *&buf[1] = v35;
        if ((v35 - 32) > 0x5E || ((v35 >> 8) - 32) > 0x5E || ((v35 << 8 >> 24) - 32) > 0x5E || ((v35 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v54, v34);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v54, buf);
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v54;
        }

        else
        {
          v45 = v54.__r_.__value_.__r.__words[0];
        }

        v46 = a4->mScope;
        v47 = bswap32(v46);
        *&buf[1] = v47;
        if ((v47 - 32) > 0x5E || ((v47 >> 8) - 32) > 0x5E || ((v47 << 8 >> 24) - 32) > 0x5E || ((v47 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v53, v46);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v53, buf);
        }

        v48 = &v53;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = v53.__r_.__value_.__r.__words[0];
        }

        v49 = a4->mElement;
        *buf = 136316418;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 717;
        v58 = 2080;
        v59 = v45;
        v60 = 2080;
        v61 = v48;
        v62 = 1024;
        *v63 = v49;
        *&v63[4] = 1024;
        *&v63[6] = v15;
        _os_log_impl(&dword_24348C000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property [%s/%s/%u] on device with ID %u", buf, 0x32u);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }
      }

      (*(v14 + 2))(v14, 0, v24);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    util::server_log(v13);
    v29 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 690;
      v58 = 2112;
      v59 = v30;
      _os_log_impl(&dword_24348C000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = NSStringFromSelector(a2);
    v33 = [v31 errorWithDomain:v32 code:1852797029 userInfo:0];
    (*(v14 + 2))(v14, v33, 0);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)getPropertyDataSize:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInQualifierData:(id)a5 withReply:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    util::server_log(v13);
    v27 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v52 = 1024;
      v53 = 634;
      v54 = 2112;
      v55 = v28;
      _os_log_impl(&dword_24348C000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = NSStringFromSelector(a2);
    v31 = [v29 errorWithDomain:v30 code:1852797029 userInfo:0];
    (*(v14 + 2))(v14, v31, 0);

    goto LABEL_50;
  }

  v15 = [v11 unsignedIntValue];
  if (v12 && [v12 bytes])
  {
    ptr = self->mKernelPtr.__ptr_;
    v17 = [v12 length];
    v18 = [v12 bytes];
    v19 = ptr;
    v20 = v15;
    v21 = a4;
    v22 = v17;
  }

  else
  {
    v19 = self->mKernelPtr.__ptr_;
    v20 = v15;
    v21 = a4;
    v22 = 0;
    v18 = 0;
  }

  PropertyDataSize = ads::Kernel::getPropertyDataSize(v19, v20, v21, v22, v18);
  util::server_log(PropertyDataSize);
  v24 = util::server_log(void)::sLogCat;
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (PropertyDataSize)
  {
    if (v25)
    {
      v26 = bswap32(PropertyDataSize);
      *&buf[1] = v26;
      if ((v26 - 32) > 0x5E || ((v26 >> 8) - 32) > 0x5E || ((v26 << 8 >> 24) - 32) > 0x5E || ((v26 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v50, PropertyDataSize);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v50, buf);
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v50;
      }

      else
      {
        v34 = v50.__r_.__value_.__r.__words[0];
      }

      mSelector = a4->mSelector;
      v36 = bswap32(a4->mSelector);
      *&buf[1] = v36;
      if ((v36 - 32) > 0x5E || ((v36 >> 8) - 32) > 0x5E || ((v36 << 8 >> 24) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v49, mSelector);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v49, buf);
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v49;
      }

      else
      {
        v37 = v49.__r_.__value_.__r.__words[0];
      }

      mScope = a4->mScope;
      v39 = bswap32(mScope);
      *&buf[1] = v39;
      if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v48, mScope);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v48, buf);
      }

      v40 = &v48;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = v48.__r_.__value_.__r.__words[0];
      }

      mElement = a4->mElement;
      *buf = 136316674;
      *&buf[4] = "InCider.mm";
      v52 = 1024;
      v53 = 672;
      v54 = 2080;
      v55 = v34;
      v56 = 2080;
      v57 = v37;
      v58 = 2080;
      *v59 = v40;
      *&v59[8] = 1024;
      v60 = mElement;
      v61 = 1024;
      v62 = v15;
      _os_log_impl(&dword_24348C000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property data size for [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyDataSize" code:PropertyDataSize userInfo:0];
    (*(v14 + 2))(v14, v30, 0);
LABEL_50:

    goto LABEL_68;
  }

  if (v25)
  {
    v32 = a4->mSelector;
    v33 = bswap32(a4->mSelector);
    *&buf[1] = v33;
    if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v50, v32);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v50, buf);
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v50;
    }

    else
    {
      v42 = v50.__r_.__value_.__r.__words[0];
    }

    v43 = a4->mScope;
    v44 = bswap32(v43);
    *&buf[1] = v44;
    if ((v44 - 32) > 0x5E || ((v44 >> 8) - 32) > 0x5E || ((v44 << 8 >> 24) - 32) > 0x5E || ((v44 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v49, v43);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v49, buf);
    }

    v45 = &v49;
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = v49.__r_.__value_.__r.__words[0];
    }

    v46 = a4->mElement;
    *buf = 136316418;
    *&buf[4] = "InCider.mm";
    v52 = 1024;
    v53 = 661;
    v54 = 2080;
    v55 = v42;
    v56 = 2080;
    v57 = v45;
    v58 = 1024;
    *v59 = v46;
    *&v59[4] = 1024;
    *&v59[6] = v15;
    _os_log_impl(&dword_24348C000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property data size for [%s/%s/%u] on device with ID %u", buf, 0x32u);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  (*(v14 + 2))(v14, 0, HIDWORD(PropertyDataSize));
LABEL_68:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)hasProperty:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withReply:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    util::server_log(v10);
    v21 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(a2);
      *block = 136315650;
      *&block[4] = "InCider.mm";
      *&block[12] = 1024;
      *&block[14] = 593;
      *&block[18] = 2112;
      *&block[20] = v22;
      _os_log_impl(&dword_24348C000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", block, 0x1Cu);
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = NSStringFromSelector(a2);
    v25 = [v23 errorWithDomain:v24 code:1852797029 userInfo:0];
    (*(v11 + 2))(v11, v25, 0);

    goto LABEL_46;
  }

  v12 = [v9 unsignedIntValue];
  ptr = self->mKernelPtr.__ptr_;
  v47 = v12;
  __p.__r_.__value_.__r.__words[0] = a4;
  v46.__r_.__value_.__r.__words[0] = ptr;
  v46.__r_.__value_.__l.__size_ = &v47;
  v46.__r_.__value_.__r.__words[2] = &__p;
  v14 = *(ptr + 7);
  v15 = applesauce::dispatch::v1::queue::get(v14);
  LODWORD(v45.__r_.__value_.__l.__data_) = 0;
  WORD2(v45.__r_.__value_.__r.__words[0]) = 0;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel11hasPropertyEjPK26AudioObjectPropertyAddressE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS9_17integral_constantIbLb0EEE_block_invoke;
  *&block[24] = &__block_descriptor_48_e5_v8__0l;
  *&block[32] = &v45;
  *&block[40] = &v46;
  dispatch_sync(v15, block);
  v16 = v45.__r_.__value_.__r.__words[0];

  util::server_log(v17);
  v18 = util::server_log(void)::sLogCat;
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v19)
    {
      v20 = bswap32(v16);
      *&block[1] = v20;
      if ((v20 - 32) > 0x5E || ((v20 >> 8) - 32) > 0x5E || ((v20 << 8 >> 24) - 32) > 0x5E || ((v20 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v46, v16);
      }

      else
      {
        strcpy(&block[5], "'");
        block[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v46, block);
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v46;
      }

      else
      {
        v28 = v46.__r_.__value_.__r.__words[0];
      }

      mSelector = a4->mSelector;
      v30 = bswap32(a4->mSelector);
      *&block[1] = v30;
      if ((v30 - 32) > 0x5E || ((v30 >> 8) - 32) > 0x5E || ((v30 << 8 >> 24) - 32) > 0x5E || ((v30 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v45, mSelector);
      }

      else
      {
        strcpy(&block[5], "'");
        block[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v45, block);
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v45;
      }

      else
      {
        v31 = v45.__r_.__value_.__r.__words[0];
      }

      mScope = a4->mScope;
      v33 = bswap32(mScope);
      *&block[1] = v33;
      if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
      {
        std::to_string(&__p, mScope);
      }

      else
      {
        strcpy(&block[5], "'");
        block[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&__p, block);
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      mElement = a4->mElement;
      *block = 136316674;
      *&block[4] = "InCider.mm";
      *&block[12] = 1024;
      *&block[14] = 622;
      *&block[18] = 2080;
      *&block[20] = v28;
      *&block[28] = 1024;
      *&block[30] = v12;
      *&block[34] = 2080;
      *&block[36] = v31;
      *&block[44] = 2080;
      *&block[46] = p_p;
      *&block[54] = 1024;
      *&block[56] = mElement;
      _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s checking if device with ID %u has property [%s/%s/%u]", block, 0x3Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::hasProperty" code:v16 userInfo:0];
    (*(v11 + 2))(v11, v24, 0);
LABEL_46:

    goto LABEL_67;
  }

  if (v19)
  {
    v26 = a4->mSelector;
    v27 = bswap32(a4->mSelector);
    *&block[1] = v27;
    if ((v27 - 32) > 0x5E || ((v27 >> 8) - 32) > 0x5E || ((v27 << 8 >> 24) - 32) > 0x5E || ((v27 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v46, v26);
    }

    else
    {
      strcpy(&block[5], "'");
      block[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v46, block);
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v46;
    }

    else
    {
      v37 = v46.__r_.__value_.__r.__words[0];
    }

    v38 = a4->mScope;
    v39 = bswap32(v38);
    *&block[1] = v39;
    if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v45, v38);
    }

    else
    {
      strcpy(&block[5], "'");
      block[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v45, block);
    }

    v40 = &v45;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v45.__r_.__value_.__r.__words[0];
    }

    v41 = a4->mElement;
    v42 = "it does";
    *block = 136316674;
    v36 = v16 & 0x100000000;
    *&block[4] = "InCider.mm";
    if (!v36)
    {
      v42 = "'it doesn't";
    }

    *&block[12] = 1024;
    *&block[14] = 611;
    *&block[18] = 1024;
    *&block[20] = v12;
    *&block[24] = 2080;
    *&block[26] = v37;
    *&block[34] = 2080;
    *&block[36] = v40;
    *&block[44] = 1024;
    *&block[46] = v41;
    *&block[50] = 2080;
    *&block[52] = v42;
    _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully checked if device with ID %u has property [%s/%s/%u] (%s)", block, 0x3Cu);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v36 = v16 & 0x100000000;
  }

  (*(v11 + 2))(v11, 0, v36 != 0);
LABEL_67:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)serializeNonADSDevices:(id)a3
{
  v3 = a3;
  util::WriteDevicesExceptionSafe(&v6);
  if (v6)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::serializeNonADSDevices" code:? userInfo:?];
    v3[2](v3, v4, 0);
  }

  else
  {
    v5 = applesauce::CF::details::make_CFArrayRef<std::string>(v7);
    v8 = v5;
    (v3)[2](v3, 0, v5);
    CFRelease(v5);
  }

  v8 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
}

- (void)isDeviceWithUUIDConnected:(id)a3 withReply:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v25, [v7 UTF8String]);
    ptr = self->mKernelPtr.__ptr_;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v25;
    }

    v26[0] = ptr;
    v26[1] = &__p;
    v16 = *(ptr + 7);
    v17 = applesauce::dispatch::v1::queue::get(v16);
    v27 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25isDeviceWithUUIDConnectedENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    *&buf[24] = &__block_descriptor_48_e5_v8__0l;
    *&buf[32] = &v27;
    v29 = v26;
    dispatch_sync(v17, buf);
    v18 = v27;

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    util::server_log(v19);
    v20 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      v21 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v25.__r_.__value_.__r.__words[0];
      }

      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 571;
      v22 = "it is";
      *buf = 136315906;
      if (!v18)
      {
        v22 = "it isn't";
      }

      *&buf[18] = 2080;
      *&buf[20] = v21;
      *&buf[28] = 2080;
      *&buf[30] = v22;
      _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel checked if device with UUID %s is connected (%s)", buf, 0x26u);
    }

    (*(v9 + 2))(v9, 0, v18);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    util::server_log(v8);
    v11 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 563;
      *&buf[18] = 2112;
      *&buf[20] = v12;
      _os_log_impl(&dword_24348C000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 errorWithDomain:v14 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v15, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceWithAOIDConnected:(id)a3 withReply:(id)a4
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 unsignedIntValue];
    isDeviceWithAOIDConnected = ads::Kernel::isDeviceWithAOIDConnected(self->mKernelPtr.__ptr_, v10);
    util::server_log(isDeviceWithAOIDConnected);
    v12 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "it isn't";
      v20 = 136315906;
      v21 = "InCider.mm";
      v23 = 554;
      v22 = 1024;
      if (isDeviceWithAOIDConnected)
      {
        v13 = "it is";
      }

      v24 = 1024;
      v25[0] = v10;
      LOWORD(v25[1]) = 2080;
      *(&v25[1] + 2) = v13;
      _os_log_impl(&dword_24348C000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel checked if device with AOID %u is connected (%s)", &v20, 0x22u);
    }

    (*(v9 + 2))(v9, 0, isDeviceWithAOIDConnected);
  }

  else
  {
    util::server_log(v8);
    v14 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v20 = 136315650;
      v21 = "InCider.mm";
      v22 = 1024;
      v23 = 546;
      v24 = 2112;
      *v25 = v15;
      _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", &v20, 0x1Cu);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = NSStringFromSelector(a2);
    v18 = [v16 errorWithDomain:v17 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v18, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)disconnectAllADSDevices:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ads::Kernel::disconnectAllADSDevices(self->mKernelPtr.__ptr_);
  v6 = v5;
  util::server_log(v5);
  v7 = util::server_log(void)::sLogCat;
  v8 = util::server_log(void)::sLogCat;
  if (v6)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = bswap32(v6);
      *&buf[1] = v10;
      if ((v10 - 32) > 0x5E || ((v10 >> 8) - 32) > 0x5E || ((v10 << 8 >> 24) - 32) > 0x5E || ((v10 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v14, v6);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v14, buf);
      }

      v11 = &v14;
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v14.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v16 = 1024;
      v17 = 535;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_24348C000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting all ADS devices", buf, 0x1Cu);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectAllADSDevices" code:v6 userInfo:0];
    v4[2](v4, v12);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "InCider.mm";
      v16 = 1024;
      v17 = 530;
      _os_log_impl(&dword_24348C000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected all ADS devices without error", buf, 0x12u);
    }

    v4[2](v4, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)disconnectADSDevicesByUUIDs:(id)a3 withReply:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v54 = v6;
  v52 = v5;
  if (v5)
  {
    applesauce::CF::ArrayRef::from_get(cf, v5);
    v7 = cf[0];
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    TypeID = CFArrayGetTypeID();
    v9 = CFGetTypeID(v7);
    if (TypeID == v9)
    {
      Count = CFArrayGetCount(v7);
      v62[0] = 0;
      v62[1] = 0;
      v63 = 0;
      if (Count << 32)
      {
        if (Count <= 0xAAAAAAAAAAAAAAALL)
        {
          block.__end_cap_.__value_ = v62;
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(Count);
        }

LABEL_69:
        std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
      }

      if (Count < 1)
      {
LABEL_22:
        v56 = *v62;
        v57 = v63;
        v62[1] = 0;
        v63 = 0;
        v62[0] = 0;
        v58 = 1;
      }

      else
      {
        v11 = 0;
        v12 = Count & 0x7FFFFFFF;
        v50 = v58;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
          applesauce::CF::convert_as<std::string,0>(&__p, ValueAtIndex);
          if (v61 != 1)
          {
            break;
          }

          v14 = v62[1];
          if (v62[1] >= v63)
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v62[1] - v62[0]) >> 3);
            v17 = v16 + 1;
            if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              v58 = v50;
              goto LABEL_69;
            }

            if (0x5555555555555556 * ((v63 - v62[0]) >> 3) > v17)
            {
              v17 = 0x5555555555555556 * ((v63 - v62[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v63 - v62[0]) >> 3) >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v17;
            }

            block.__end_cap_.__value_ = v62;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v18);
            }

            v19 = (8 * ((v62[1] - v62[0]) >> 3));
            *v19 = __p;
            memset(&__p, 0, sizeof(__p));
            v15 = (24 * v16 + 24);
            v20 = (24 * v16 - (v62[1] - v62[0]));
            memcpy(v19 - (v62[1] - v62[0]), v62[0], v62[1] - v62[0]);
            v21 = v62[0];
            v22 = v63;
            v62[0] = v20;
            v62[1] = v15;
            v63 = 0;
            block.__end_ = v21;
            block.__end_cap_.__value_ = v22;
            block.__first_ = v21;
            block.__begin_ = v21;
            std::__split_buffer<std::string>::~__split_buffer(&block);
          }

          else
          {
            *v62[1] = *&__p.__r_.__value_.__l.__data_;
            v14[2] = *(&__p.__r_.__value_.__l + 2);
            memset(&__p, 0, sizeof(__p));
            v15 = v14 + 3;
          }

          v62[1] = v15;
          if (v12 == ++v11)
          {
            goto LABEL_22;
          }
        }

        v58 = 0;
        LOBYTE(v56) = 0;
      }

      block.__first_ = v62;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
      if (v58)
      {
        ptr = self->mKernelPtr.__ptr_;
        memset(v55, 0, sizeof(v55));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v55, v56, *(&v56 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v56 + 1) - v56) >> 3));
        __p.__r_.__value_.__r.__words[0] = v55;
        __p.__r_.__value_.__l.__size_ = ptr;
        v29 = *(ptr + 7);
        v30 = applesauce::dispatch::v1::queue::get(v29);
        LODWORD(v62[0]) = 0;
        block.__first_ = MEMORY[0x277D85DD0];
        block.__begin_ = 3221225472;
        block.__end_ = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel27disconnectADSDevicesByUUIDsENSt3__16vectorINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENSA_ISC_EEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
        block.__end_cap_.__value_ = &__block_descriptor_48_e5_v8__0l;
        block.__end_cap_.__value_ = v62;
        p_p = &__p;
        dispatch_sync(v30, &block);
        v31 = v62[0];

        block.__first_ = v55;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
        util::server_log(v32);
        v33 = util::server_log(void)::sLogCat;
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (!v31)
        {
          if (v34)
          {
            if (!cf[0])
            {
              v49 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x245D37300](v49, "Could not construct");
              __cxa_throw(v49, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v42 = CFCopyDescription(cf[0]);
            v62[0] = v42;
            applesauce::CF::details::CFString_get_value<true>(&__p, v42);
            if (v42)
            {
              CFRelease(v42);
            }

            v43 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v43 = __p.__r_.__value_.__r.__words[0];
            }

            LODWORD(block.__first_) = 136315650;
            *(&block.__first_ + 4) = "InCider.mm";
            WORD2(block.__begin_) = 1024;
            *(&block.__begin_ + 6) = 510;
            WORD1(block.__end_) = 2080;
            *(&block.__end_ + 4) = v43;
            _os_log_impl(&dword_24348C000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS devices with UUIDs %s without error", &block, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          (*(v54 + 2))(v54, 0);
          goto LABEL_40;
        }

        v35 = v31;
        if (v34)
        {
          v36 = bswap32(v31);
          *(v62 + 1) = v36;
          if ((v36 - 32) > 0x5E || ((v36 >> 8) - 32) > 0x5E || ((v36 << 8 >> 24) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
          {
            std::to_string(&__p, v31);
          }

          else
          {
            *(v62 + 5) = 39;
            LOBYTE(v62[0]) = 39;
            std::string::basic_string[abi:ne200100]<0>(&__p, v62);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &__p;
          }

          else
          {
            v44 = __p.__r_.__value_.__r.__words[0];
          }

          if (!cf[0])
          {
            v48 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v48, "Could not construct");
            __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v45 = CFCopyDescription(cf[0]);
          cf[1] = v45;
          applesauce::CF::details::CFString_get_value<true>(v62, v45);
          if (v45)
          {
            CFRelease(v45);
          }

          v46 = v62;
          if (SHIBYTE(v63) < 0)
          {
            v46 = v62[0];
          }

          LODWORD(block.__first_) = 136315906;
          *(&block.__first_ + 4) = "InCider.mm";
          WORD2(block.__begin_) = 1024;
          *(&block.__begin_ + 6) = 515;
          WORD1(block.__end_) = 2080;
          *(&block.__end_ + 4) = v44;
          WORD2(block.__end_cap_.__value_) = 2080;
          *(&block.__end_cap_.__value_ + 6) = v46;
          _os_log_impl(&dword_24348C000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS devices with UUIDs %s", &block, 0x26u);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(v62[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDeviceByUUIDs" code:v35 userInfo:0];
        (*(v54 + 2))(v54, v39);
LABEL_39:

LABEL_40:
        if (v58 == 1)
        {
          block.__first_ = &v56;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_44;
      }
    }

    else
    {
      LOBYTE(v56) = 0;
      v58 = 0;
    }

    util::server_log(v9);
    v37 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block.__first_) = 136315394;
      *(&block.__first_ + 4) = "InCider.mm";
      WORD2(block.__begin_) = 1024;
      *(&block.__begin_ + 6) = 521;
      _os_log_impl(&dword_24348C000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject was unable to parse NSArray input as std::vector<std::string>", &block, 0x12u);
    }

    v38 = MEMORY[0x277CCA9B8];
    v39 = NSStringFromSelector(a2);
    v40 = [v38 errorWithDomain:v39 code:1852797029 userInfo:0];
    (*(v54 + 2))(v54, v40);

    goto LABEL_39;
  }

  util::server_log(v6);
  v23 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromSelector(a2);
    LODWORD(block.__first_) = 136315650;
    *(&block.__first_ + 4) = "InCider.mm";
    WORD2(block.__begin_) = 1024;
    *(&block.__begin_ + 6) = 497;
    WORD1(block.__end_) = 2112;
    *(&block.__end_ + 4) = v24;
    _os_log_impl(&dword_24348C000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", &block, 0x1Cu);
  }

  v25 = MEMORY[0x277CCA9B8];
  v26 = NSStringFromSelector(a2);
  v27 = [v25 errorWithDomain:v26 code:1852797029 userInfo:0];
  (*(v54 + 2))(v54, v27);

LABEL_44:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)disconnectADSDeviceByUUID:(id)a3 withReply:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v7 UTF8String]);
    ptr = self->mKernelPtr.__ptr_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = __p;
    }

    v16 = ads::Kernel::disconnectADSDeviceByUUID(ptr, &v28);
    v17 = v16;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    util::server_log(v16);
    v18 = util::server_log(void)::sLogCat;
    v19 = util::server_log(void)::sLogCat;
    if (v17)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = bswap32(v17);
        *&buf[1] = v21;
        if ((v21 - 32) > 0x5E || ((v21 >> 8) - 32) > 0x5E || ((v21 << 8 >> 24) - 32) > 0x5E || ((v21 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v27, v17);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v27, buf);
        }

        v23 = &v27;
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v27.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "InCider.mm";
        v31 = 1024;
        v32 = 487;
        v33 = 2080;
        v34 = v23;
        v35 = 2080;
        v36 = p_p;
        _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS device with UUID %s", buf, 0x26u);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDeviceByUUID" code:v17 userInfo:0];
      (*(v9 + 2))(v9, v25);
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "InCider.mm";
        v31 = 1024;
        v32 = 482;
        v33 = 2080;
        v34 = v22;
        _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS device with UUID %s without error", buf, 0x1Cu);
      }

      (*(v9 + 2))(v9, 0);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    util::server_log(v8);
    v11 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v31 = 1024;
      v32 = 473;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_24348C000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 errorWithDomain:v14 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v15);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)disconnectADSDevicesByAOIDs:(id)a3 withReply:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v40 = v6;
  v41 = v7;
  if (v6)
  {
    applesauce::CF::ArrayRef::from_get(cf, v6);
    v8 = cf[0];
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    TypeID = CFArrayGetTypeID();
    v10 = CFGetTypeID(v8);
    if (TypeID == v10)
    {
      Count = CFArrayGetCount(v8);
      if (Count << 32)
      {
        Count = Count;
        if (!(Count >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(Count);
        }

        std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
      }

      if (Count < 1)
      {
        ptr = self->mKernelPtr.__ptr_;
        v44 = 0;
        v45 = 0;
        __p = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, 0, 0, 0);
        v42.__r_.__value_.__r.__words[0] = &__p;
        v42.__r_.__value_.__l.__size_ = ptr;
        v19 = *(ptr + 7);
        v20 = applesauce::dispatch::v1::queue::get(v19);
        LODWORD(v47[0]) = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel27disconnectADSDevicesByAOIDsENSt3__16vectorIjNS5_9allocatorIjEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
        *&buf[24] = &__block_descriptor_48_e5_v8__0l;
        *&buf[32] = v47;
        v50 = &v42;
        dispatch_sync(v20, buf);
        v21 = SLODWORD(v47[0]);

        v22 = __p;
        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }

        util::server_log(v22);
        v23 = util::server_log(void)::sLogCat;
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (!v21)
        {
          if (v24)
          {
            if (!cf[0])
            {
              v38 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x245D37300](v38, "Could not construct");
              __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v30 = CFCopyDescription(cf[0]);
            v47[0] = v30;
            applesauce::CF::details::CFString_get_value<true>(&v42, v30);
            if (v30)
            {
              CFRelease(v30);
            }

            v31 = &v42;
            if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v31 = v42.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "InCider.mm";
            *&buf[12] = 1024;
            *&buf[14] = 452;
            *&buf[18] = 2080;
            *&buf[20] = v31;
            _os_log_impl(&dword_24348C000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS devices with AOIDs %s without error", buf, 0x1Cu);
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }
          }

          (*(v41 + 2))(v41, 0);
          goto LABEL_49;
        }

        if (v24)
        {
          v25 = bswap32(v21);
          *(v47 + 1) = v25;
          if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v42, v21);
          }

          else
          {
            *(v47 + 5) = 39;
            LOBYTE(v47[0]) = 39;
            std::string::basic_string[abi:ne200100]<0>(&v42, v47);
          }

          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = &v42;
          }

          else
          {
            v32 = v42.__r_.__value_.__r.__words[0];
          }

          if (!cf[0])
          {
            v37 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v37, "Could not construct");
            __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v33 = CFCopyDescription(cf[0]);
          cf[1] = v33;
          applesauce::CF::details::CFString_get_value<true>(v47, v33);
          if (v33)
          {
            CFRelease(v33);
          }

          v34 = v47;
          if (v48 < 0)
          {
            v34 = v47[0];
          }

          *buf = 136315906;
          *&buf[4] = "InCider.mm";
          *&buf[12] = 1024;
          *&buf[14] = 457;
          *&buf[18] = 2080;
          *&buf[20] = v32;
          *&buf[28] = 2080;
          *&buf[30] = v34;
          _os_log_impl(&dword_24348C000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS devices with AOIDs %s", buf, 0x26u);
          if (v48 < 0)
          {
            operator delete(v47[0]);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }
        }

        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDevicesByAOIDs" code:v21 userInfo:0];
        (*(v41 + 2))(v41, v28);
LABEL_48:

LABEL_49:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_51;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      v10 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
      if ((v10 & 0x100000000) != 0)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(1uLL);
      }
    }

    util::server_log(v10);
    v26 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 463;
      _os_log_impl(&dword_24348C000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject was unable to parse NSArray input as std::vector<AudioObjectID>", buf, 0x12u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = NSStringFromSelector(a2);
    v29 = [v27 errorWithDomain:v28 code:1852797029 userInfo:0];
    (*(v41 + 2))(v41, v29);

    goto LABEL_48;
  }

  util::server_log(v7);
  v12 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 136315650;
    *&buf[4] = "InCider.mm";
    *&buf[12] = 1024;
    *&buf[14] = 439;
    *&buf[18] = 2112;
    *&buf[20] = v13;
    _os_log_impl(&dword_24348C000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 errorWithDomain:v15 code:1852797029 userInfo:0];
  (*(v41 + 2))(v41, v16);

LABEL_51:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)disconnectADSDeviceByAOID:(id)a3 withReply:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    util::server_log(v8);
    v17 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v26 = 1024;
      v27 = 415;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_24348C000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = NSStringFromSelector(a2);
    v21 = [v19 errorWithDomain:v20 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v21);

    goto LABEL_21;
  }

  v10 = [v7 unsignedIntValue];
  v11 = ads::Kernel::disconnectADSDeviceByAOID(self->mKernelPtr.__ptr_, v10);
  v12 = v11;
  util::server_log(v11);
  v13 = util::server_log(void)::sLogCat;
  v14 = util::server_log(void)::sLogCat;
  if (v12)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = bswap32(v12);
      *&buf[1] = v16;
      if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v24, v12);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v24, buf);
      }

      v22 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v24.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "InCider.mm";
      v26 = 1024;
      v27 = 429;
      v28 = 2080;
      v29 = v22;
      v30 = 1024;
      v31 = v10;
      _os_log_impl(&dword_24348C000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS device with AOID %u", buf, 0x22u);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDeviceByAOID" code:v12 userInfo:0];
    (*(v9 + 2))(v9, v20);
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "InCider.mm";
    v26 = 1024;
    v27 = 424;
    v28 = 1024;
    LODWORD(v29) = v10;
    _os_log_impl(&dword_24348C000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS device with AOID %u without error", buf, 0x18u);
  }

  (*(v9 + 2))(v9, 0);
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)connectADSDevices:(id)a3 withReply:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    applesauce::CF::ArrayRef::from_get(&cf, v7);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::convert_as<std::vector<applesauce::CF::DictionaryRef>,0>(&v59, cf);
    if (v61 == 1)
    {
      ptr = self->mKernelPtr.__ptr_;
      memset(v54, 0, sizeof(v54));
      std::vector<applesauce::CF::DictionaryRef>::__init_with_size[abi:ne200100]<applesauce::CF::DictionaryRef*,applesauce::CF::DictionaryRef*>(v54, v59, v60, (v60 - v59) >> 3);
      v63.__r_.__value_.__r.__words[0] = ptr;
      v63.__r_.__value_.__l.__size_ = v54;
      v12 = applesauce::dispatch::v1::queue::get(*(ptr + 7));
      __val = 0;
      v57 = 0;
      v58 = 0;
      __p = 0;
      block.__first_ = MEMORY[0x277D85DD0];
      block.__begin_ = 3221225472;
      block.__end_ = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel17connectADSDevicesENSt3__16vectorINS_2CF13DictionaryRefENS5_9allocatorIS8_EEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
      block.__end_cap_.__value_ = &__block_descriptor_48_e5_v8__0l;
      block.__end_cap_.__value_ = &__val;
      v66 = &v63;
      dispatch_sync(v12, &block);

      block.__first_ = v54;
      std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&block);
      if (__val)
      {
        util::server_log(v13);
        v14 = util::server_log(void)::sLogCat;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = bswap32(__val);
          *(&block.__first_ + 1) = v15;
          if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v63, __val);
          }

          else
          {
            *(&block.__first_ + 5) = 39;
            LOBYTE(block.__first_) = 39;
            std::string::basic_string[abi:ne200100]<0>(&v63, &block);
          }

          v40 = &v63;
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = v63.__r_.__value_.__r.__words[0];
          }

          LODWORD(block.__first_) = 136315906;
          *(&block.__first_ + 4) = "InCider.mm";
          WORD2(block.__begin_) = 1024;
          *(&block.__begin_ + 6) = 398;
          WORD1(block.__end_) = 2080;
          *(&block.__end_ + 4) = v40;
          WORD2(block.__end_cap_.__value_) = 2048;
          *(&block.__end_cap_.__value_ + 6) = ((v60 - v59) >> 3);
          _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s connecting %lu ADS devices", &block, 0x26u);
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v46 = v9;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v51, __p, v57, (v57 - __p) >> 2);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v25 = v51;
        v26 = v52;
        v45 = self;
        for (i = v25; v25 != v26; ++v25)
        {
          ads::Kernel::getUUIDForAOID(&block, self->mKernelPtr.__ptr_, *v25);
          if (LODWORD(block.__first_))
          {
            v43 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v43, "We should never throw here. Successfully connecting a list of ads::Device then failing to get their UUIDs?");
            v43->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v43, off_278DBC6D0, MEMORY[0x277D82610]);
          }

          if (SHIBYTE(block.__end_cap_.__value_) < 0)
          {
            std::string::__init_copy_ctor_external(&v63, block.__begin_, block.__end_);
            if (LOBYTE(block.__end_cap_.__value_) == 1 && SHIBYTE(block.__end_cap_.__value_) < 0)
            {
              operator delete(block.__begin_);
            }
          }

          else
          {
            v63 = *&block.__begin_;
          }

          v27 = v49;
          if (v49 >= v50)
          {
            v29 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3);
            v30 = v29 + 1;
            if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v50 - v48) >> 3) > v30)
            {
              v30 = 0x5555555555555556 * ((v50 - v48) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v50 - v48) >> 3) >= 0x555555555555555)
            {
              v31 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v31 = v30;
            }

            block.__end_cap_.__value_ = &v48;
            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v31);
            }

            v32 = (8 * ((v49 - v48) >> 3));
            *v32 = v63;
            memset(&v63, 0, sizeof(v63));
            v28 = 24 * v29 + 24;
            v33 = (24 * v29 - (v49 - v48));
            memcpy(v32 - (v49 - v48), v48, v49 - v48);
            v34 = v48;
            v35 = v50;
            v48 = v33;
            v49 = v28;
            v50 = 0;
            block.__end_ = v34;
            block.__end_cap_.__value_ = v35;
            block.__first_ = v34;
            block.__begin_ = v34;
            std::__split_buffer<std::string>::~__split_buffer(&block);
          }

          else
          {
            *v49 = *&v63.__r_.__value_.__l.__data_;
            *(v27 + 2) = *(&v63.__r_.__value_.__l + 2);
            v28 = (v27 + 24);
          }

          v49 = v28;
        }

        v9 = v46;
        v36 = applesauce::CF::details::make_CFArrayRef<std::string>(&v48);
        util::server_log(v36);
        v37 = util::server_log(void)::sLogCat;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = CFCopyDescription(v36);
          v64 = v38;
          applesauce::CF::details::CFString_get_value<true>(&v63, v38);
          if (v38)
          {
            CFRelease(v38);
          }

          v39 = &v63;
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v39 = v63.__r_.__value_.__r.__words[0];
          }

          LODWORD(block.__first_) = 136315650;
          *(&block.__first_ + 4) = "InCider.mm";
          WORD2(block.__begin_) = 1024;
          *(&block.__begin_ + 6) = 393;
          WORD1(block.__end_) = 2080;
          *(&block.__end_ + 4) = v39;
          _os_log_impl(&dword_24348C000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel connected ADS devices with UUIDs %s without error", &block, 0x1Cu);
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }
        }

        (*(v46 + 2))(v46, 0, v36);
        CFRelease(v36);
        block.__first_ = &v48;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
        if (i)
        {
          operator delete(i);
        }
      }

      v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::connectADSDevices" code:__val userInfo:0];
      (*(v9 + 2))(v9, v41, 0);

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }
    }

    else
    {
      util::server_log(v10);
      v21 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block.__first_) = 136315394;
        *(&block.__first_ + 4) = "InCider.mm";
        WORD2(block.__begin_) = 1024;
        *(&block.__begin_ + 6) = 404;
        _os_log_impl(&dword_24348C000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject was unable to parse NSArray input as std::vector<ascf::DictionaryRef>", &block, 0x12u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = NSStringFromSelector(a2);
      v24 = [v22 errorWithDomain:v23 code:1852797029 userInfo:0];
      (*(v9 + 2))(v9, v24, 0);
    }

    if (v61 == 1)
    {
      block.__first_ = &v59;
      std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&block);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    util::server_log(v8);
    v16 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      LODWORD(block.__first_) = 136315650;
      *(&block.__first_ + 4) = "InCider.mm";
      WORD2(block.__begin_) = 1024;
      *(&block.__begin_ + 6) = 369;
      WORD1(block.__end_) = 2112;
      *(&block.__end_ + 4) = v17;
      _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", &block, 0x1Cu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = NSStringFromSelector(a2);
    v20 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v20, 0);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)connectADSDevice:(id)a3 withReply:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    applesauce::CF::DictionaryRef::from_get(cf, v7);
    ptr = self->mKernelPtr.__ptr_;
    v11 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    v39 = v11;
    v12 = ads::Kernel::connectADSDevice(ptr, &v39);
    v13 = v39;
    if (v39)
    {
      CFRelease(v39);
    }

    if (v12)
    {
      util::server_log(v13);
      v14 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = bswap32(v12);
        *(&__p.__r_.__value_.__l.__data_ + 1) = v15;
        if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
        {
          std::to_string(v42, v12);
        }

        else
        {
          *(__p.__r_.__value_.__r.__words + 5) = 39;
          __p.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(v42, &__p);
        }

        if (v42[23] >= 0)
        {
          v29 = v42;
        }

        else
        {
          v29 = *v42;
        }

        if (!cf[0])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245D37300](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v30 = CFCopyDescription(cf[0]);
        cf[1] = v30;
        applesauce::CF::details::CFString_get_value<true>(&__p, v30);
        if (v30)
        {
          CFRelease(v30);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *v46 = "InCider.mm";
        *&v46[8] = 1024;
        *&v46[10] = 359;
        v47 = 2080;
        v48 = v29;
        v49 = 2080;
        v50 = p_p;
        _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s connecting ADS device with dictionary %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v42[23] & 0x80000000) != 0)
        {
          operator delete(*v42);
        }
      }

      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::connectADSDevice" code:v12 userInfo:0];
      (*(v9 + 2))(v9, v32, 0);
    }

    else
    {
      v21 = self->mKernelPtr.__ptr_;
      v22 = HIDWORD(v12);
      ads::Kernel::getUUIDForAOID(buf, v21, SHIDWORD(v12));
      v23 = *buf;
      util::server_log(v24);
      v25 = util::server_log(void)::sLogCat;
      v26 = util::server_log(void)::sLogCat;
      if (v23)
      {
        v27 = v25;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = bswap32(*buf);
          *&v42[1] = v28;
          if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
          {
            std::to_string(&__p, *buf);
          }

          else
          {
            strcpy(&v42[5], "'");
            v42[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&__p, v42);
          }

          v36 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v36 = __p.__r_.__value_.__r.__words[0];
          }

          *v42 = 136315906;
          *&v42[4] = "InCider.mm";
          *&v42[12] = 1024;
          *&v42[14] = 353;
          *&v42[18] = 2080;
          *&v42[20] = v36;
          v43 = 1024;
          v44 = v22;
          _os_log_impl(&dword_24348C000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting UUID for newly connected ADS device with AOID %d", v42, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getUUIDForAOID" code:*buf userInfo:0];
        (*(v9 + 2))(v9, v35, 0);
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v33 = &v46[4];
          if (SBYTE1(v50) < 0)
          {
            v33 = *&v46[4];
          }

          *v42 = 136315650;
          *&v42[4] = "InCider.mm";
          *&v42[12] = 1024;
          *&v42[14] = 348;
          *&v42[18] = 2080;
          *&v42[20] = v33;
          _os_log_impl(&dword_24348C000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel connected ADS device with UUID %s without error", v42, 0x1Cu);
        }

        if (SBYTE1(v50) >= 0)
        {
          v34 = &v46[4];
        }

        else
        {
          v34 = *&v46[4];
        }

        v35 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:4];
        (*(v9 + 2))(v9, 0, v35);
      }

      if (BYTE2(v50) == 1 && SBYTE1(v50) < 0)
      {
        operator delete(*&v46[4]);
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    util::server_log(v8);
    v16 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 136315650;
      *v46 = "InCider.mm";
      *&v46[8] = 1024;
      *&v46[10] = 336;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = NSStringFromSelector(a2);
    v20 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v20, 0);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)getUUIDForAOID:(id)a3 withReply:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 unsignedIntValue];
    ads::Kernel::getUUIDForAOID(buf, self->mKernelPtr.__ptr_, v10);
    v11 = *buf;
    util::server_log(v12);
    v13 = util::server_log(void)::sLogCat;
    v14 = util::server_log(void)::sLogCat;
    if (v11)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = bswap32(*buf);
        *&v28[1] = v16;
        if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v27, *buf);
        }

        else
        {
          strcpy(&v28[5], "'");
          v28[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v27, v28);
        }

        v25 = &v27;
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = v27.__r_.__value_.__r.__words[0];
        }

        *v28 = 136315906;
        *&v28[4] = "InCider.mm";
        v29 = 1024;
        v30 = 325;
        v31 = 2080;
        v32 = v25;
        v33 = 1024;
        v34 = v10;
        _os_log_impl(&dword_24348C000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s retrieving UUID for AOID %u", v28, 0x22u);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getUUIDForAOID" code:*buf userInfo:0];
      (*(v9 + 2))(v9, v24, 0);
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = &__p[4];
        if (v39 < 0)
        {
          v22 = *&__p[4];
        }

        *v28 = 136315906;
        *&v28[4] = "InCider.mm";
        v29 = 1024;
        v30 = 320;
        v31 = 2080;
        v32 = v22;
        v33 = 1024;
        v34 = v10;
        _os_log_impl(&dword_24348C000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved UUID %s for AOID %u without error", v28, 0x22u);
      }

      if (v39 >= 0)
      {
        v23 = &__p[4];
      }

      else
      {
        v23 = *&__p[4];
      }

      v24 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      (*(v9 + 2))(v9, 0, v24);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(*&__p[4]);
    }
  }

  else
  {
    util::server_log(v8);
    v17 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 136315650;
      *__p = "InCider.mm";
      *&__p[8] = 1024;
      *&__p[10] = 311;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_24348C000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = NSStringFromSelector(a2);
    v21 = [v19 errorWithDomain:v20 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v21, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)getAOIDForUUID:(id)a3 withReply:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v7 UTF8String]);
    ptr = self->mKernelPtr.__ptr_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = __p;
    }

    v31.__r_.__value_.__r.__words[0] = ptr;
    v31.__r_.__value_.__l.__size_ = &v32;
    v16 = *(ptr + 7);
    v17 = applesauce::dispatch::v1::queue::get(v16);
    LODWORD(v34) = 0;
    BYTE4(v34) = 0;
    v35 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel14getAOIDForUUIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    *&buf[24] = &__block_descriptor_48_e5_v8__0l;
    *&buf[32] = &v34;
    v37 = &v31;
    dispatch_sync(v17, buf);
    v18 = v34;

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    util::server_log(v19);
    v20 = util::server_log(void)::sLogCat;
    v21 = util::server_log(void)::sLogCat;
    if (v18)
    {
      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = bswap32(v18);
        *&buf[1] = v23;
        if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v31, v18);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v31, buf);
        }

        v27 = &v31;
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v31.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 301;
        *&buf[18] = 2080;
        *&buf[20] = v27;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        _os_log_impl(&dword_24348C000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s retrieving AOID for UUID %s", buf, 0x26u);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }
      }

      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getAOIDForUUID" code:v18 userInfo:0];
      (*(v9 + 2))(v9, v29, 0);
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HIDWORD(v18);
        v25 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 296;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        *&buf[24] = 2080;
        *&buf[26] = v25;
        _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved AOID %u for UUID %s without error", buf, 0x22u);
        v26 = v24;
      }

      else
      {
        v26 = HIDWORD(v18);
      }

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
      (*(v9 + 2))(v9, 0, v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    util::server_log(v8);
    v11 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 287;
      *&buf[18] = 2112;
      *&buf[20] = v12;
      _os_log_impl(&dword_24348C000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 errorWithDomain:v14 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v15, 0);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)getADSDeviceMap:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ptr = self->mKernelPtr.__ptr_;
  v5 = applesauce::dispatch::v1::queue::get(*(ptr + 7));
  *__p = 0u;
  *v22 = 0u;
  v23 = 1065353216;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel15getADSDeviceMapEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  *&block[24] = &__block_descriptor_48_e5_v8__0l;
  v28 = __p;
  p_ptr = &ptr;
  dispatch_sync(v5, block);

  ptr = 0;
  v26 = 0uLL;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&ptr, v22[1]);
  v6 = v22[0];
  if (v22[0])
  {
    v7 = v26;
    do
    {
      if (v7 >= *(&v26 + 1))
      {
        v8 = (v7 - ptr) >> 4;
        if ((v8 + 1) >> 60)
        {
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        v9 = (*(&v26 + 1) - ptr) >> 3;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (*(&v26 + 1) - ptr >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v28 = &ptr;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(v10);
        }

        *block = 0;
        *&block[8] = 16 * v8;
        *&block[16] = (16 * v8);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,unsigned int const&>((16 * v8), v6 + 16, v6 + 10);
        *&block[16] += 16;
        v11 = (ptr + *&block[8] - v26);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&ptr, ptr, v26, v11);
        v12 = ptr;
        v13 = *(&v26 + 1);
        ptr = v11;
        v20 = *&block[16];
        v26 = *&block[16];
        *&block[16] = v12;
        *&block[24] = v13;
        *block = v12;
        *&block[8] = v12;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(block);
        v7 = v20;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,unsigned int const&>(v7, v6 + 16, v6 + 10);
        v7 += 2;
      }

      *&v26 = v7;
      v6 = *v6;
    }

    while (v6);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&ptr);
  *block = &ptr;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](block);
  v24 = CFDictionaryRef;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v22[0]);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  util::server_log(v15);
  v16 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = CFCopyDescription(CFDictionaryRef);
    ptr = v17;
    applesauce::CF::details::CFString_get_value<true>(__p, v17);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = __p;
    if (SHIBYTE(v22[0]) < 0)
    {
      v18 = __p[0];
    }

    *block = 136315650;
    *&block[4] = "InCider.mm";
    *&block[12] = 1024;
    *&block[14] = 278;
    *&block[18] = 2080;
    *&block[20] = v18;
    _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved ADS device map: %s", block, 0x1Cu);
    if (SHIBYTE(v22[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4[2](v4, 0, CFDictionaryRef);
  CFRelease(CFDictionaryRef);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)getADSPluginAOID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  ADSPluginAOID = ads::Kernel::getADSPluginAOID(v3);
  util::server_log(ADSPluginAOID);
  v5 = util::server_log(void)::sLogCat;
  v6 = os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT);
  if (ADSPluginAOID)
  {
    if (v6)
    {
      v9 = 136315650;
      v10 = "InCider.mm";
      v11 = 1024;
      v12 = 271;
      v13 = 1024;
      v14 = ADSPluginAOID;
      _os_log_impl(&dword_24348C000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved ADS plugin AOID %u without error", &v9, 0x18u);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ADSPluginAOID];
    (*(v3 + 2))(v3, 0, v7);
  }

  else
  {
    if (v6)
    {
      v9 = 136315394;
      v10 = "InCider.mm";
      v11 = 1024;
      v12 = 266;
      _os_log_impl(&dword_24348C000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error retrieving ADS plugin AOID -- ADS is not enabled", &v9, 0x12u);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getADSPluginAOID" code:1852797029 userInfo:0];
    (*(v3 + 2))(v3, v7, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)setPropertyDataPrivileged_NSHelper:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withInData:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [v9 unsignedIntValue];
    v13 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applesauce::CF::ArrayRef::from_get(cf, v13);
      v14 = *cf;
      if (*cf)
      {
        CFRetain(*cf);
        v15 = *cf;
        v48 = v14;
        if (*cf)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        applesauce::CF::DictionaryRef::from_get(cf, v13);
        v21 = *cf;
        if (*cf)
        {
          CFRetain(*cf);
          v15 = *cf;
          v48 = v21;
          if (*cf)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          applesauce::CF::StringRef::from_get(cf, v13);
          v22 = *cf;
          if (*cf)
          {
            CFRetain(*cf);
            v15 = *cf;
            v48 = v22;
            if (*cf)
            {
LABEL_17:
              CFRelease(v15);
            }

LABEL_19:

            v23 = ads::Kernel::setPropertyDataPrivileged_TypeRef(self->mKernelPtr.__ptr_, v12, a4, &v48);
            v24 = v23;
            util::server_log(v23);
            v25 = util::server_log(void)::sLogCat;
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v24)
            {
              if (v26)
              {
                v27 = bswap32(v24);
                *&cf[1] = v27;
                if ((v27 - 32) > 0x5E || ((v27 >> 8) - 32) > 0x5E || ((v27 << 8 >> 24) - 32) > 0x5E || ((v27 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v47, v24);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v47, cf);
                }

                if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v30 = &v47;
                }

                else
                {
                  v30 = v47.__r_.__value_.__r.__words[0];
                }

                mSelector = a4->mSelector;
                v32 = bswap32(a4->mSelector);
                *&cf[1] = v32;
                if ((v32 - 32) > 0x5E || ((v32 >> 8) - 32) > 0x5E || ((v32 << 8 >> 24) - 32) > 0x5E || ((v32 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v46, mSelector);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v46, cf);
                }

                if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v33 = &v46;
                }

                else
                {
                  v33 = v46.__r_.__value_.__r.__words[0];
                }

                mScope = a4->mScope;
                v35 = bswap32(mScope);
                *&cf[1] = v35;
                if ((v35 - 32) > 0x5E || ((v35 >> 8) - 32) > 0x5E || ((v35 << 8 >> 24) - 32) > 0x5E || ((v35 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&__p, mScope);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&__p, cf);
                }

                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                mElement = a4->mElement;
                *cf = 136316674;
                *&cf[4] = "InCider.mm";
                v50 = 1024;
                v51 = 255;
                v52 = 2080;
                v53 = v30;
                v54 = 2080;
                v55 = v33;
                v56 = 2080;
                *v57 = p_p;
                *&v57[8] = 1024;
                v58 = mElement;
                v59 = 1024;
                v60 = v12;
                _os_log_impl(&dword_24348C000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s setting property [%s/%s/%u] on device with ID %u with privilege", cf, 0x3Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v46.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                }
              }

              v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::setPropertyDataPrivileged_TypeRef" code:v24 userInfo:0];
            }

            else
            {
              if (v26)
              {
                v28 = a4->mSelector;
                v29 = bswap32(a4->mSelector);
                *&cf[1] = v29;
                if ((v29 - 32) > 0x5E || ((v29 >> 8) - 32) > 0x5E || ((v29 << 8 >> 24) - 32) > 0x5E || ((v29 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v47, v28);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v47, cf);
                }

                if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v38 = &v47;
                }

                else
                {
                  v38 = v47.__r_.__value_.__r.__words[0];
                }

                v39 = a4->mScope;
                v40 = bswap32(v39);
                *&cf[1] = v40;
                if ((v40 - 32) > 0x5E || ((v40 >> 8) - 32) > 0x5E || ((v40 << 8 >> 24) - 32) > 0x5E || ((v40 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v46, v39);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v46, cf);
                }

                v41 = &v46;
                if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v46.__r_.__value_.__r.__words[0];
                }

                v42 = a4->mElement;
                *cf = 136316418;
                *&cf[4] = "InCider.mm";
                v50 = 1024;
                v51 = 244;
                v52 = 2080;
                v53 = v38;
                v54 = 2080;
                v55 = v41;
                v56 = 1024;
                *v57 = v42;
                *&v57[4] = 1024;
                *&v57[6] = v12;
                _os_log_impl(&dword_24348C000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully set property [%s/%s/%u] on device with ID %u with privilege", cf, 0x32u);
                if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v46.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                }
              }

              v20 = 0;
            }

            if (v48)
            {
              CFRelease(v48);
            }

            goto LABEL_79;
          }
        }
      }
    }

    v48 = 0;
    goto LABEL_19;
  }

  util::server_log(v10);
  v16 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *cf = 136315650;
    *&cf[4] = "InCider.mm";
    v50 = 1024;
    v51 = 225;
    v52 = 2112;
    v53 = v17;
    _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", cf, 0x1Cu);
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];

LABEL_79:
  v43 = *MEMORY[0x277D85DE8];

  return v20;
}

- (pair<NSError)getPropertyData_NSHelper:(id)a3 withInAddress:(AudioObjectPropertyAddress *)a4 withClass:(Class)a5
{
  v10 = v5;
  v82 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntValue];
    v14 = v13;
    ads::Kernel::getPropertyData_TypeRef(&__val, self->mKernelPtr.__ptr_, v13, a4);
    if (__val)
    {
      util::server_log(v15);
      v16 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = bswap32(__val);
        *&buf[1] = v17;
        if ((v17 - 32) > 0x5E || ((v17 >> 8) - 32) > 0x5E || ((v17 << 8 >> 24) - 32) > 0x5E || ((v17 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v66, __val);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v66, buf);
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v66;
        }

        else
        {
          v25 = v66.__r_.__value_.__r.__words[0];
        }

        mSelector = a4->mSelector;
        v27 = bswap32(a4->mSelector);
        *&buf[1] = v27;
        if ((v27 - 32) > 0x5E || ((v27 >> 8) - 32) > 0x5E || ((v27 << 8 >> 24) - 32) > 0x5E || ((v27 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v70, mSelector);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v70, buf);
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v70;
        }

        else
        {
          v28 = v70.__r_.__value_.__r.__words[0];
        }

        mScope = a4->mScope;
        v30 = bswap32(mScope);
        *&buf[1] = v30;
        if ((v30 - 32) > 0x5E || ((v30 >> 8) - 32) > 0x5E || ((v30 << 8 >> 24) - 32) > 0x5E || ((v30 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v69, mScope);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v69, buf);
        }

        v31 = &v69;
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v69.__r_.__value_.__r.__words[0];
        }

        mElement = a4->mElement;
        *buf = 136316674;
        *&buf[4] = "InCider.mm";
        v72 = 1024;
        v73 = 214;
        v74 = 2080;
        v75 = v25;
        v76 = 2080;
        v77 = v28;
        v78 = 2080;
        *v79 = v31;
        *&v79[8] = 1024;
        *&v79[10] = mElement;
        v80 = 1024;
        v81 = v14;
        _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }
      }

      *v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyData_TypeRef" code:__val userInfo:0];
      v10[1] = 0;
LABEL_109:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_111;
    }

    if (objc_opt_class() == a5)
    {
      *buf = 0;
      if (cf)
      {
        v33 = CFGetTypeID(cf);
        if (v33 != CFArrayGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245D37300](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v34 = cf;
      }

      else
      {
        v34 = 0;
      }

      v22 = applesauce::CF::ArrayRef::from_get(&v66, v34);
      *buf = v66.__r_.__value_.__r.__words[0];
      if (!v66.__r_.__value_.__r.__words[0])
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (objc_opt_class() != a5)
      {
        v22 = objc_opt_class();
        if (v22 != a5)
        {
          goto LABEL_69;
        }

        *buf = 0;
        if (cf)
        {
          v23 = CFGetTypeID(cf);
          if (v23 != CFStringGetTypeID())
          {
            v64 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v64, "Could not construct");
            __cxa_throw(v64, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v24 = cf;
        }

        else
        {
          v24 = 0;
        }

        v22 = applesauce::CF::StringRef::from_get(&v66, v24);
        *buf = v66.__r_.__value_.__r.__words[0];
        if (v66.__r_.__value_.__r.__words[0])
        {
          goto LABEL_60;
        }

LABEL_61:
        v37 = 0;
LABEL_62:
        if (v37)
        {
          util::server_log(v22);
          v38 = util::server_log(void)::sLogCat;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = a4->mSelector;
            v40 = bswap32(a4->mSelector);
            *&buf[1] = v40;
            if ((v40 - 32) > 0x5E || ((v40 >> 8) - 32) > 0x5E || ((v40 << 8 >> 24) - 32) > 0x5E || ((v40 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v66, v39);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v66, buf);
            }

            if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v66;
            }

            else
            {
              v54 = v66.__r_.__value_.__r.__words[0];
            }

            v55 = a4->mScope;
            v56 = bswap32(v55);
            *&buf[1] = v56;
            if ((v56 - 32) > 0x5E || ((v56 >> 8) - 32) > 0x5E || ((v56 << 8 >> 24) - 32) > 0x5E || ((v56 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v70, v55);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v70, buf);
            }

            v57 = &v70;
            if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v57 = v70.__r_.__value_.__r.__words[0];
            }

            v58 = a4->mElement;
            *buf = 136316418;
            *&buf[4] = "InCider.mm";
            v72 = 1024;
            v73 = 203;
            v74 = 2080;
            v75 = v54;
            v76 = 2080;
            v77 = v57;
            v78 = 1024;
            *v79 = v58;
            *&v79[4] = 1024;
            *&v79[6] = v14;
            _os_log_impl(&dword_24348C000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property [%s/%s/%u] on device with ID %u", buf, 0x32u);
            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v70.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }
          }

          *v10 = 0;
          v10[1] = v37;
          goto LABEL_109;
        }

LABEL_69:
        util::server_log(v22);
        v41 = util::server_log(void)::sLogCat;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = a4->mSelector;
          v43 = bswap32(a4->mSelector);
          *(&v70.__r_.__value_.__l.__data_ + 1) = v43;
          if ((v43 - 32) > 0x5E || ((v43 >> 8) - 32) > 0x5E || ((v43 << 8 >> 24) - 32) > 0x5E || ((v43 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v66, v42);
          }

          else
          {
            *(v70.__r_.__value_.__r.__words + 5) = 39;
            v70.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v66, &v70);
          }

          v44 = &v66;
          if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v66.__r_.__value_.__r.__words[0];
          }

          v65 = v44;
          v45 = a4->mScope;
          v46 = bswap32(v45);
          *(&v69.__r_.__value_.__l.__data_ + 1) = v46;
          if ((v46 - 32) > 0x5E || ((v46 >> 8) - 32) > 0x5E || ((v46 << 8 >> 24) - 32) > 0x5E || ((v46 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v70, v45);
          }

          else
          {
            *(v69.__r_.__value_.__r.__words + 5) = 39;
            v69.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v70, &v69);
          }

          if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v70;
          }

          else
          {
            v47 = v70.__r_.__value_.__r.__words[0];
          }

          v48 = a4->mElement;
          v49 = NSStringFromClass(a5);
          v50 = v49;
          v51 = [v49 UTF8String];
          *buf = 136316674;
          *&buf[4] = "InCider.mm";
          v72 = 1024;
          v73 = 194;
          v74 = 2080;
          v75 = v65;
          v76 = 2080;
          v77 = v47;
          v78 = 1024;
          *v79 = v48;
          *&v79[4] = 2080;
          *&v79[6] = v51;
          v80 = 1024;
          v81 = v14;
          _os_log_impl(&dword_24348C000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error: couldn't convert result for property [%s/%s/%u] to %s on device with ID %u", buf, 0x3Cu);

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }
        }

        v52 = MEMORY[0x277CCA9B8];
        v53 = NSStringFromSelector(a2);
        *v10 = [v52 errorWithDomain:v53 code:1970171760 userInfo:0];
        v10[1] = 0;

        goto LABEL_109;
      }

      *buf = 0;
      if (cf)
      {
        v35 = CFGetTypeID(cf);
        if (v35 != CFDictionaryGetTypeID())
        {
          v63 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245D37300](v63, "Could not construct");
          __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v36 = cf;
      }

      else
      {
        v36 = 0;
      }

      v22 = applesauce::CF::DictionaryRef::from_get(&v66, v36);
      *buf = v66.__r_.__value_.__r.__words[0];
      if (!v66.__r_.__value_.__r.__words[0])
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    v37 = v66.__r_.__value_.__l.__data_;
    CFRelease(v37);
    goto LABEL_62;
  }

  util::server_log(0);
  v18 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 136315650;
    *&buf[4] = "InCider.mm";
    v72 = 1024;
    v73 = 158;
    v74 = 2112;
    v75 = v19;
    _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
  }

  v20 = MEMORY[0x277CCA9B8];
  v21 = NSStringFromSelector(a2);
  *v10 = [v20 errorWithDomain:v21 code:1852797029 userInfo:0];
  v10[1] = 0;

LABEL_111:
  v61 = *MEMORY[0x277D85DE8];
  result.var1 = v60;
  result.var0 = v59;
  return result;
}

- (CiderObject)init
{
  v7.receiver = self;
  v7.super_class = CiderObject;
  v2 = [(CiderObject *)&v7 init];
  if (v2)
  {
    {
      __cxa_atexit(std::weak_ptr<ads::Kernel>::~weak_ptr, &util::ref_counted_singleton::get_or_create<ads::Kernel>()::sWeakInstanceRef, &dword_24348C000);
    }

    if (!qword_28133BC90 || (v3 = std::__shared_weak_count::lock(qword_28133BC90)) == 0 || !util::ref_counted_singleton::get_or_create<ads::Kernel>()::sWeakInstanceRef)
    {
      operator new();
    }

    *&v4 = util::ref_counted_singleton::get_or_create<ads::Kernel>()::sWeakInstanceRef;
    *(&v4 + 1) = v3;
    v5 = *(v2 + 2);
    *(v2 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v2;
}

@end