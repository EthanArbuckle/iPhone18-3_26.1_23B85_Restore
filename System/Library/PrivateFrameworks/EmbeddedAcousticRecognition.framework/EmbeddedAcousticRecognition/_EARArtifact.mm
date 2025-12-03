@interface _EARArtifact
+ (BOOL)isValid:(id)valid;
- (BOOL)hasContent:(id)content;
- (BOOL)hasInfo:(id)info;
- (BOOL)isEquivalentTo:(id)to;
- (BOOL)supportsContent:(id)content;
- (BOOL)supportsInfo:(id)info;
- (BOOL)write:(id)write;
- (_EARArtifact)initWithAcceptedContent:(id)content acceptedInfo:(id)info dependent:(id)dependent;
- (id).cxx_construct;
- (id)getContent:(id)content;
- (id)getInfo:(id)info;
- (id)getLocale;
- (id)getVersion;
- (void)getVersion;
@end

@implementation _EARArtifact

- (_EARArtifact)initWithAcceptedContent:(id)content acceptedInfo:(id)info dependent:(id)dependent
{
  v46[10] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  infoCopy = info;
  dependentCopy = dependent;
  v31.receiver = self;
  v31.super_class = _EARArtifact;
  if ([(_EARArtifact *)&v31 init])
  {
    v11 = contentCopy;
    v30[0] = 0;
    v30[1] = 0;
    v29 = v30;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:&v39 count:16];
    if (v13)
    {
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = v16;
          if (v16)
          {
            [v16 ear_toString];
          }

          else
          {
            __p = 0;
            v33 = 0;
            v34 = 0;
          }

          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v29, &__p);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v35 objects:&v39 count:16];
      }

      while (v13);
    }

    v18 = infoCopy;
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:&v39 count:16];
    if (v20)
    {
      v21 = *v36;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v35 + 1) + 8 * j);
          v24 = v23;
          if (v23)
          {
            [v23 ear_toString];
          }

          else
          {
            __p = 0;
            v33 = 0;
            v34 = 0;
          }

          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v27, &__p);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p);
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v35 objects:&v39 count:16];
      }

      while (v20);
    }

    v25 = dependentCopy;
    v39 = 0;
    v40 = &v39;
    v41 = 0x4812000000;
    v42 = __Block_byref_object_copy__12;
    v43 = __Block_byref_object_dispose__12;
    v44 = &unk_1B5CADD23;
    v46[0] = 0;
    v46[1] = 0;
    v45 = v46;
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 3221225472;
    *&v36 = ___ZN10EARHelpers15DictionaryToMapINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6vectorIS7_NS5_IS7_EEEEZ63___EARArtifact_initWithAcceptedContent_acceptedInfo_dependent__E3__2Z63___EARArtifact_initWithAcceptedContent_acceptedInfo_dependent__E3__3EENS1_3mapIT_T0_NS1_4lessISE_EENS5_INS1_4pairIKSE_SF_EEEEEEP12NSDictionaryT1_T2__block_invoke;
    *(&v36 + 1) = &unk_1E7C1A308;
    *&v37 = &v39;
    [v25 enumerateKeysAndObjectsUsingBlock:&v35];
    std::map<std::string,std::vector<std::string>>::map[abi:ne200100](&__p, v40 + 6);
    _Block_object_dispose(&v39, 8);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v45, v46[0]);

    std::allocate_shared[abi:ne200100]<quasar::artifact::Artifact,std::allocator<quasar::artifact::Artifact>,std::set<std::string> &,std::set<std::string> &,std::map<std::string,std::vector<std::string>> &,0>();
  }

  return 0;
}

- (id)getVersion
{
  v2 = MEMORY[0x1E696AEC0];
  Version = quasar::artifact::Artifact::getVersion(self->_artifact.__ptr_);
  if (Version[23] >= 0)
  {
    v4 = Version;
  }

  else
  {
    v4 = *Version;
  }

  v5 = [v2 stringWithUTF8String:v4];

  return v5;
}

- (id)getLocale
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  quasar::artifact::Artifact::getLocale(self->_artifact.__ptr_, &v10);
  std::string::basic_string[abi:ne200100]<0>(v6, "_");
  quasar::Locale::toInternalShortIdentifier(&v10, v6);
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = [v2 stringWithUTF8String:p_p];
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (BOOL)supportsInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  ptr = self->_artifact.__ptr_;
  if (infoCopy)
  {
    [infoCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  v7 = quasar::artifact::Artifact::supportsInfo(ptr, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

- (BOOL)hasInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  ptr = self->_artifact.__ptr_;
  if (infoCopy)
  {
    [infoCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  hasInfo = quasar::artifact::Artifact::hasInfo(ptr, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return hasInfo;
}

- (id)getInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = infoCopy;
  v6 = MEMORY[0x1E696AEC0];
  ptr = self->_artifact.__ptr_;
  if (infoCopy)
  {
    [infoCopy ear_toString];
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
  }

  quasar::artifact::Artifact::getInfo(ptr, v11, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = [v6 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

- (BOOL)supportsContent:(id)content
{
  contentCopy = content;
  v5 = contentCopy;
  ptr = self->_artifact.__ptr_;
  if (contentCopy)
  {
    [contentCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  v7 = quasar::artifact::Artifact::supportsContent(ptr, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

- (BOOL)hasContent:(id)content
{
  contentCopy = content;
  v5 = contentCopy;
  ptr = self->_artifact.__ptr_;
  if (contentCopy)
  {
    [contentCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  hasContent = quasar::artifact::Artifact::hasContent(ptr, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return hasContent;
}

- (id)getContent:(id)content
{
  v14 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v5 = contentCopy;
  v6 = MEMORY[0x1E696AEC0];
  ptr = self->_artifact.__ptr_;
  if (contentCopy)
  {
    [contentCopy ear_toString];
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
  }

  quasar::artifact::Artifact::getContentAsString(ptr, v11, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = [v6 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

- (BOOL)write:(id)write
{
  writeCopy = write;
  v5 = writeCopy;
  ptr = self->_artifact.__ptr_;
  if (writeCopy)
  {
    [writeCopy ear_toString];
  }

  else
  {
    __p = 0;
    v10 = 0;
  }

  v7 = quasar::artifact::Artifact::write(ptr);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return v7;
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  LOBYTE(self) = quasar::artifact::Artifact::operator==(self->_artifact.__ptr_, toCopy[1]);

  return self;
}

+ (BOOL)isValid:(id)valid
{
  validCopy = valid;
  v4 = validCopy;
  if (validCopy)
  {
    [validCopy ear_toString];
  }

  else
  {
    __p = 0;
    v8 = 0;
  }

  isValid = quasar::artifact::Artifact::isValid();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  return isValid;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)getVersion
{
  if (self)
  {
    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  __cxa_end_catch();
}

@end