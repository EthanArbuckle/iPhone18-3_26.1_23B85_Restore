void sub_22CD22AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateSpotlightTransportTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMailed");
  v52 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasUserMailed");
  v52 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemUserSharedSentTransport=com.apple.mail && ((kMDItemUserSharedSentSender=*cwd || kMDItemUserSharedSentSenderHandle=*cwd)))");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "RECEIVED");
  __p[0] = v50;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMailed");
  v52 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemUserSharedReceivedTransport=com.apple.mail");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMessaged");
  v52 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasUserMessaged");
  v52 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "(kMDItemUserSharedSentTransport=com.apple.messages && ((kMDItemUserSharedSentSender=*cwd || kMDItemUserSharedSentSenderHandle=*cwd)))");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "RECEIVED");
  __p[0] = v50;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMessaged");
  v52 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemUserSharedReceivedTransport=com.apple.messages");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasAirdropped");
  v52 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemUserSharedSentTransport=com.apple.AirDrop");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasUserAirdropped");
  v52 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "(kMDItemUserSharedSentTransport=com.apple.AirDrop && ((kMDItemUserSharedSentSender=*cwd || kMDItemUserSharedSentSenderHandle=*cwd)))");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "RECEIVED");
  __p[0] = v50;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasAirdropped");
  v52 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemUserSharedReceivedTransport=com.apple.AirDrop");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasShared");
  v52 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemUserSharedSentTransport=*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasUserShared");
  v52 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemUserSharedSentTransport=*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Facebook");
  v52 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemUserSharedSentTransport=facebook*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasFacebooked");
  v52 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "kMDItemUserSharedSentTransport=facebook*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Twitter");
  v52 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDItemUserSharedSentTransport=twitter*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasTwitter");
  v52 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDItemUserSharedSentTransport=twitter*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasTweeted");
  v52 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDItemUserSharedSentTransport=twitter*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Linkedin");
  v52 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemUserSharedSentTransport=linkedin*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "SENT");
  __p[0] = v50;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasLinkedin");
  v52 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemUserSharedSentTransport=linkedin*cwd");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "MAILSENT");
  __p[0] = v50;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMailed");
  v52 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "MAILSENT");
  __p[0] = v50;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasUserMailed");
  v52 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "MAILRECEIVED");
  __p[0] = v50;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMailed");
  v52 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemUserSharedReceivedTransport=com.apple.mail");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "MAILMAILSENT");
  __p[0] = v50;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasUserMailed");
  v52 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "MAILMAILRECEIVED");
  __p[0] = v50;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v50);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.HasMailed");
  v52 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }
}

void sub_22CD24228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateSpotlightSenderReceiverTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v146, "FILECREATED");
  __p[0] = v146;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemComposer=%@c*cwd || kMDItemContributors=%@c*cwd || kMDItemAuthors=%@c*cwd || kMDItemLyricist=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v148 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemUserSharedSentTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemUserSharedSentTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "(kMDItemUserSharedSentSender=%@c*cwd || kMDItemUserSharedSentSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemUserSharedSentSenderHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwd || kMDItemUserSharedSentRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemUserSharedSentRecipientHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwd || kMDItemUserSharedSentRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemUserSharedSentRecipientHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v148 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemUserSharedReceivedTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwd || kMDItemUserSharedReceivedSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "(kMDItemUserSharedReceivedRecipient=%@c*cwd || kMDItemUserSharedReceivedRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDItemUserSharedReceivedRecipientHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "(kMDItemUserSharedReceivedRecipient=*cwd || kMDItemUserSharedReceivedRecipientHandle=*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVEDFROM");
  __p[0] = v146;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwd || kMDItemUserSharedReceivedSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVEDFROM");
  __p[0] = v146;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v148 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwd || kMDItemUserSharedReceivedSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwd || kMDItemUserSharedSentRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemUserSharedSentRecipientHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v148 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemUserSharedReceivedTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwd || kMDItemUserSharedReceivedSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "(kMDItemUserSharedReceivedRecipient=%@c*cwd || kMDItemUserSharedReceivedRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "kMDItemUserSharedReceivedRecipientHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v148 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwd || kMDItemUserSharedReceivedSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwd || kMDItemUserSharedSentRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "kMDItemUserSharedSentRecipientHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v148 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "kMDItemUserSharedReceivedTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwd || kMDItemUserSharedReceivedSenderHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "(kMDItemUserSharedReceivedRecipient=%@c*cwd || kMDItemUserSharedReceivedRecipientHandle=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "kMDItemUserSharedReceivedRecipientHandle=%@c*cwd");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "kMDItemDeliveryType=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "(kMDItemAuthors=%@c*cwd || kMDItemAuthorAddresses=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "(kMDItemRecipients=%@c*cwd || kMDItemRecipientAddresses=%@c*cwd || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "(kMDItemRecipientAddresses=%@c*cwd || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "kMDItemDeliveryType=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "(kMDItemAuthors=%@c*cwd || kMDItemAuthorAddresses=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "(kMDItemRecipients=%@c*cwd || kMDItemRecipientAddresses=%@c*cwd || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "(kMDItemRecipientAddresses=%@c*cwd || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "kMDItemDeliveryType=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD.HasSent");
  v148 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD.HasShared");
  v148 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasAuthored");
  v148 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasCreated");
  v148 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "(kMDItemAuthors=%@c*cwd || kMDItemEmailAddresses=%@c*cwd || kMDItemAuthorEmailAddresses=%@c*cwd || kMDItemOriginSenderDisplayName=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "(kMDItemRecipients=%@c*cwd || kMDItemRecipientAddresses=%@c*cwd || kMDItemRecipientEmailAddresses=%@c*cwd || kMDItemDestinationRecipients=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "(kMDItemRecipientAddresses=%@c || kMDItemRecipientEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SHARERECIPIENT.Contact");
  v148 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "(kMDItemRecipients=%@c*cwd || kMDItemRecipientAddresses=%@c*cwd || kMDItemRecipientEmailAddresses=%@c*cwd || kMDItemDestinationRecipients=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "(kMDItemAuthors=%@c*cwd || kMDItemEmailAddresses=%@c*cwd || kMDItemAuthorEmailAddresses=%@c*cwd || kMDItemOriginSenderDisplayName=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "(kMDItemRecipients=%@c*cwd || kMDItemRecipientAddresses=%@c*cwd || kMDItemRecipientEmailAddresses=%@c*cwd || kMDItemDestinationRecipients=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "(kMDItemRecipientAddresses=%@c || kMDItemRecipientEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "kMDItemMailboxes!=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENTFROM");
  __p[0] = v146;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v148 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "(kMDItemAuthors=%@c*cwd || kMDItemEmailAddresses=%@c*cwd || kMDItemAuthorEmailAddresses=%@c*cwd || kMDItemOriginSenderDisplayName=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENTFROM");
  __p[0] = v146;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v148 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "FROMTO");
  __p[0] = v146;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v148 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "((kMDItemRecipientAddresses=%@c*cwd || kMDItemRecipientEmailAddresses=%@c*cwd || kMDItemRecipients=%@c*cwd || kMDItemDestinationRecipients=%@c*cwd) || (kMDItemAuthors=%@c*cwd || kMDItemEmailAddresses=%@c*cwd || kMDItemAuthorEmailAddresses=%@c*cwd || kMDItemInstantMessageAddresses=%@c*cwd || kMDItemOriginSenderDisplayName=%@c*cwd))");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "FROMTO");
  __p[0] = v146;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v148 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "((kMDItemRecipientAddresses=%@c || kMDItemRecipientEmailAddresses=%@c) || (kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c || kMDItemInstantMessageAddresses=%@c || kMDItemOriginSenderDisplayName=%@ccwd))");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "AUTHORED");
  __p[0] = v146;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v148 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "(kMDItemComposer=%@c*cwd || kMDItemContributors=%@c*cwd || kMDItemAuthors=%@c*cwd || kMDItemLyricist=%@c*cwd)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "AUTHORED");
  __p[0] = v146;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v148 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "(kMDItemAuthorAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }
}

void sub_22CD26EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateSpotlightSenderReceiverTranslations_Tokenize(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v146, "FILECREATED");
  __p[0] = v146;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemComposer=%@c*cwdt || kMDItemContributors=%@c*cwdt || kMDItemAuthors=%@c*cwdt || kMDItemLyricist=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v148 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemUserSharedSentTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemUserSharedSentTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "(kMDItemUserSharedSentSender=%@c*cwdt || kMDItemUserSharedSentSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemUserSharedSentSenderHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwdt || kMDItemUserSharedSentRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemUserSharedSentRecipientHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwdt || kMDItemUserSharedSentRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENT");
  __p[0] = v146;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemUserSharedSentRecipientHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v148 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemUserSharedReceivedTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwdt || kMDItemUserSharedReceivedSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "(kMDItemUserSharedReceivedRecipient=%@c*cwdt || kMDItemUserSharedReceivedRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDItemUserSharedReceivedRecipientHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVED");
  __p[0] = v146;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "(kMDItemUserSharedReceivedRecipient=*cwdt || kMDItemUserSharedReceivedRecipientHandle=*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVEDFROM");
  __p[0] = v146;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwdt || kMDItemUserSharedReceivedSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "RECEIVEDFROM");
  __p[0] = v146;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v148 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwdt || kMDItemUserSharedReceivedSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwdt || kMDItemUserSharedSentRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILSENT");
  __p[0] = v146;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemUserSharedSentRecipientHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v148 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemUserSharedReceivedTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwdt || kMDItemUserSharedReceivedSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "(kMDItemUserSharedReceivedRecipient=%@c*cwdt || kMDItemUserSharedReceivedRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILRECEIVED");
  __p[0] = v146;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "kMDItemUserSharedReceivedRecipientHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v148 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwdt || kMDItemUserSharedReceivedSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "(kMDItemUserSharedSentRecipient=%@c*cwdt || kMDItemUserSharedSentRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGESENT");
  __p[0] = v146;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "kMDItemUserSharedSentRecipientHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v148 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "kMDItemUserSharedReceivedTransport=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "(kMDItemUserSharedReceivedSender=%@c*cwdt || kMDItemUserSharedReceivedSenderHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "kMDItemUserSharedReceivedSenderHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "(kMDItemUserSharedReceivedRecipient=%@c*cwdt || kMDItemUserSharedReceivedRecipientHandle=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MESSAGERECEIVED");
  __p[0] = v146;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "kMDItemUserSharedReceivedRecipientHandle=%@c*cwdt");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "kMDItemDeliveryType=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "(kMDItemAuthors=%@c*cwdt || kMDItemAuthorAddresses=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "(kMDItemRecipients=%@c*cwdt || kMDItemRecipientAddresses=%@c*cwdt || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "(kMDItemRecipientAddresses=%@c*cwdt || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGESENT");
  __p[0] = v146;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "kMDItemDeliveryType=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "(kMDItemAuthors=%@c*cwdt || kMDItemAuthorAddresses=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "(kMDItemRecipients=%@c*cwdt || kMDItemRecipientAddresses=%@c*cwdt || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "(kMDItemRecipientAddresses=%@c*cwdt || kMDItemInstantMessageAddresses=%@c*)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MSGMESSAGERECEIVED");
  __p[0] = v146;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "kMDItemDeliveryType=*");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD.HasSent");
  v148 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD.HasShared");
  v148 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasAuthored");
  v148 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasCreated");
  v148 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
  v148 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "(kMDItemAuthors=%@c*cwdt || kMDItemEmailAddresses=%@c*cwdt || kMDItemAuthorEmailAddresses=%@c*cwdt || kMDItemOriginSenderDisplayName=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "(kMDItemRecipients=%@c*cwdt || kMDItemRecipientAddresses=%@c*cwdt || kMDItemRecipientEmailAddresses=%@c*cwdt || kMDItemDestinationRecipients=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "(kMDItemRecipientAddresses=%@c || kMDItemRecipientEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILSENT");
  __p[0] = v146;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SHARERECIPIENT.Contact");
  v148 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "(kMDItemRecipients=%@c*cwdt || kMDItemRecipientAddresses=%@c*cwdt || kMDItemRecipientEmailAddresses=%@c*cwdt || kMDItemDestinationRecipients=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v148 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "(kMDItemAuthors=%@c*cwdt || kMDItemEmailAddresses=%@c*cwdt || kMDItemAuthorEmailAddresses=%@c*cwdt || kMDItemOriginSenderDisplayName=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
  v148 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
  v148 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "(kMDItemRecipients=%@c*cwdt || kMDItemRecipientAddresses=%@c*cwdt || kMDItemRecipientEmailAddresses=%@c*cwdt || kMDItemDestinationRecipients=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
  v148 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "(kMDItemRecipientAddresses=%@c || kMDItemRecipientEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "MAILMAILRECEIVED");
  __p[0] = v146;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
  v148 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "kMDItemMailboxes!=mailbox.sent");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENTFROM");
  __p[0] = v146;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v148 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "(kMDItemAuthors=%@c*cwdt || kMDItemEmailAddresses=%@c*cwdt || kMDItemAuthorEmailAddresses=%@c*cwdt || kMDItemOriginSenderDisplayName=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "SENTFROM");
  __p[0] = v146;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v148 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "(kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "FROMTO");
  __p[0] = v146;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v148 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "((kMDItemRecipientAddresses=%@c*cwdt || kMDItemRecipientEmailAddresses=%@c*cwdt || kMDItemRecipients=%@c*cwdt || kMDItemDestinationRecipients=%@c*cwdt) || (kMDItemAuthors=%@c*cwdt || kMDItemEmailAddresses=%@c*cwdt || kMDItemAuthorEmailAddresses=%@c*cwdt || kMDItemInstantMessageAddresses=%@c*cwdt || kMDItemOriginSenderDisplayName=%@c*cwdt))");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "FROMTO");
  __p[0] = v146;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v148 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "((kMDItemRecipientAddresses=%@c || kMDItemRecipientEmailAddresses=%@c) || (kMDItemEmailAddresses=%@c || kMDItemAuthorEmailAddresses=%@c || kMDItemInstantMessageAddresses=%@c || kMDItemOriginSenderDisplayName=%@ccwdt))");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "AUTHORED");
  __p[0] = v146;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v148 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "(kMDItemComposer=%@c*cwdt || kMDItemContributors=%@c*cwdt || kMDItemAuthors=%@c*cwdt || kMDItemLyricist=%@c*cwdt)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v146, "AUTHORED");
  __p[0] = v146;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v146);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v148 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "(kMDItemAuthorAddresses=%@c || kMDItemAuthorEmailAddresses=%@c)");
  if (v145 < 0)
  {
    operator delete(__p[0]);
  }

  if (v147 < 0)
  {
    operator delete(v146[0]);
  }
}

void sub_22CD29DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL NL::ParserContext::languageIsCJ(NL::ParserContext *this)
{
  result = 0;
  if (*(this + 1))
  {
    v1 = MEMORY[0x2318BF8A0]();
    if (v1)
    {
      v2 = v1;
      if (CFStringHasPrefix(v1, @"zh") || CFStringHasPrefix(v2, @"ja"))
      {
        return 1;
      }
    }
  }

  return result;
}

void updateMailFileTypeTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "ChatKind");
  v150 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailKind");
  v150 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "MessageKind");
  v150 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v150 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v150 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v150 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v150 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v150 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v150 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v150 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v150 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v150 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v150 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v150 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v150 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v150 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v150 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v150 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v150 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v150 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v150 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v150 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v150 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v150 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v150 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v150 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v150 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v150 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v150 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v150 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v150 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v150 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v150 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "Spreadsheet");
  v150 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v150 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v150 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v150 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v150 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v150 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v150 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=org.openxmlformats.word*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v150 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v150 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v150 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v150 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "(com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=org.openxmlformats.word*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v150 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v150 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v150 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v150 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v150 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v150 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v150 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v150 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v150 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v150 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v150 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v150 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v150 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v150 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v150 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v150 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v150 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v150 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v150 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v150 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v150 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v150 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v150 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v150 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v150 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v150 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttachment");
  v150 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v148, "KIND");
  __p[0] = v148;
  v144 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v148);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v150 = __p;
  v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v144 + 56, __p);
  MEMORY[0x2318C02F0](v145 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v147 < 0)
  {
    operator delete(__p[0]);
  }

  if (v149 < 0)
  {
    operator delete(v148[0]);
  }
}

void sub_22CD2CDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateMailAttachmentTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailClient");
  v290 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v290 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v290 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttached");
  v290 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttachment");
  v290 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailAttachment");
  v290 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v290 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v290 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v290 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v290 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v290 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v290 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v290 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v290 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v290 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v290 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v290 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v290 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v290 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v290 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v290 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v290 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v290 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v290 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v290 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v290 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v290 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v290 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v290 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v290 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v290 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v290 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v290 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v290 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v290 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v290 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v290 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v290 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v290 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v290 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v290 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v290 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v290 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v290 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v290 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v290 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v290 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v290 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v290 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v290 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v290 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v290 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v290 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v290 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v290 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v290 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v290 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v290 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v290 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v290 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v290 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v290 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v290 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v290 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v290 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v290 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Spreadsheet");
  v290 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v290 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v290 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Spreadsheet");
  v290 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v290 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v144 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v290 = __p;
  v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v144 + 56, __p);
  MEMORY[0x2318C02F0](v145 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v146 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v290 = __p;
  v147 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v146 + 56, __p);
  MEMORY[0x2318C02F0](v147 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v148 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v290 = __p;
  v149 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v148 + 56, __p);
  MEMORY[0x2318C02F0](v149 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v150 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v290 = __p;
  v151 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v150 + 56, __p);
  MEMORY[0x2318C02F0](v151 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v152 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v290 = __p;
  v153 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v152 + 56, __p);
  MEMORY[0x2318C02F0](v153 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v154 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v290 = __p;
  v155 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v154 + 56, __p);
  MEMORY[0x2318C02F0](v155 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v156 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v290 = __p;
  v157 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v156 + 56, __p);
  MEMORY[0x2318C02F0](v157 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=org.openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v158 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v290 = __p;
  v159 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v158 + 56, __p);
  MEMORY[0x2318C02F0](v159 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v160 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v290 = __p;
  v161 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v160 + 56, __p);
  MEMORY[0x2318C02F0](v161 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v162 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v290 = __p;
  v163 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v162 + 56, __p);
  MEMORY[0x2318C02F0](v163 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v164 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v290 = __p;
  v165 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v164 + 56, __p);
  MEMORY[0x2318C02F0](v165 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=org.openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v166 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v290 = __p;
  v167 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v166 + 56, __p);
  MEMORY[0x2318C02F0](v167 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v168 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v290 = __p;
  v169 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v168 + 56, __p);
  MEMORY[0x2318C02F0](v169 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v170 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v290 = __p;
  v171 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v170 + 56, __p);
  MEMORY[0x2318C02F0](v171 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v172 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v290 = __p;
  v173 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v172 + 56, __p);
  MEMORY[0x2318C02F0](v173 + 56, "(com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=org.openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v174 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v290 = __p;
  v175 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v174 + 56, __p);
  MEMORY[0x2318C02F0](v175 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v176 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v290 = __p;
  v177 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v176 + 56, __p);
  MEMORY[0x2318C02F0](v177 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v178 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v290 = __p;
  v179 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v178 + 56, __p);
  MEMORY[0x2318C02F0](v179 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v180 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v290 = __p;
  v181 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v180 + 56, __p);
  MEMORY[0x2318C02F0](v181 + 56, "(com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=org.openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v182 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v290 = __p;
  v183 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v182 + 56, __p);
  MEMORY[0x2318C02F0](v183 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v184 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v290 = __p;
  v185 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v184 + 56, __p);
  MEMORY[0x2318C02F0](v185 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v186 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v290 = __p;
  v187 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v186 + 56, __p);
  MEMORY[0x2318C02F0](v187 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v188 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v290 = __p;
  v189 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v188 + 56, __p);
  MEMORY[0x2318C02F0](v189 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v190 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v290 = __p;
  v191 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v190 + 56, __p);
  MEMORY[0x2318C02F0](v191 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v192 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v290 = __p;
  v193 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v192 + 56, __p);
  MEMORY[0x2318C02F0](v193 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v194 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v290 = __p;
  v195 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v194 + 56, __p);
  MEMORY[0x2318C02F0](v195 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v196 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v290 = __p;
  v197 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v196 + 56, __p);
  MEMORY[0x2318C02F0](v197 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v198 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v290 = __p;
  v199 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v198 + 56, __p);
  MEMORY[0x2318C02F0](v199 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v200 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v290 = __p;
  v201 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v200 + 56, __p);
  MEMORY[0x2318C02F0](v201 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v202 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v290 = __p;
  v203 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v202 + 56, __p);
  MEMORY[0x2318C02F0](v203 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v204 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v290 = __p;
  v205 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v204 + 56, __p);
  MEMORY[0x2318C02F0](v205 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v206 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v290 = __p;
  v207 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v206 + 56, __p);
  MEMORY[0x2318C02F0](v207 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v208 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v290 = __p;
  v209 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v208 + 56, __p);
  MEMORY[0x2318C02F0](v209 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v210 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v290 = __p;
  v211 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v210 + 56, __p);
  MEMORY[0x2318C02F0](v211 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v212 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v290 = __p;
  v213 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v212 + 56, __p);
  MEMORY[0x2318C02F0](v213 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v214 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v290 = __p;
  v215 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v214 + 56, __p);
  MEMORY[0x2318C02F0](v215 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v216 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v290 = __p;
  v217 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v216 + 56, __p);
  MEMORY[0x2318C02F0](v217 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v218 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v290 = __p;
  v219 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v218 + 56, __p);
  MEMORY[0x2318C02F0](v219 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v220 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v290 = __p;
  v221 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v220 + 56, __p);
  MEMORY[0x2318C02F0](v221 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v222 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v290 = __p;
  v223 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v222 + 56, __p);
  MEMORY[0x2318C02F0](v223 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v224 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v290 = __p;
  v225 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v224 + 56, __p);
  MEMORY[0x2318C02F0](v225 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v226 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v290 = __p;
  v227 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v226 + 56, __p);
  MEMORY[0x2318C02F0](v227 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v228 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v290 = __p;
  v229 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v228 + 56, __p);
  MEMORY[0x2318C02F0](v229 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v230 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v290 = __p;
  v231 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v230 + 56, __p);
  MEMORY[0x2318C02F0](v231 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v232 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v290 = __p;
  v233 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v232 + 56, __p);
  MEMORY[0x2318C02F0](v233 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v234 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v290 = __p;
  v235 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v234 + 56, __p);
  MEMORY[0x2318C02F0](v235 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v236 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v290 = __p;
  v237 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v236 + 56, __p);
  MEMORY[0x2318C02F0](v237 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v238 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v290 = __p;
  v239 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v238 + 56, __p);
  MEMORY[0x2318C02F0](v239 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v240 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v290 = __p;
  v241 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v240 + 56, __p);
  MEMORY[0x2318C02F0](v241 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v242 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v290 = __p;
  v243 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v242 + 56, __p);
  MEMORY[0x2318C02F0](v243 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v244 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v290 = __p;
  v245 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v244 + 56, __p);
  MEMORY[0x2318C02F0](v245 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v246 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v290 = __p;
  v247 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v246 + 56, __p);
  MEMORY[0x2318C02F0](v247 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v248 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v290 = __p;
  v249 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v248 + 56, __p);
  MEMORY[0x2318C02F0](v249 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v250 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v290 = __p;
  v251 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v250 + 56, __p);
  MEMORY[0x2318C02F0](v251 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v252 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v290 = __p;
  v253 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v252 + 56, __p);
  MEMORY[0x2318C02F0](v253 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v254 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v290 = __p;
  v255 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v254 + 56, __p);
  MEMORY[0x2318C02F0](v255 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v256 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v290 = __p;
  v257 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v256 + 56, __p);
  MEMORY[0x2318C02F0](v257 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v258 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v290 = __p;
  v259 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v258 + 56, __p);
  MEMORY[0x2318C02F0](v259 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v260 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v290 = __p;
  v261 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v260 + 56, __p);
  MEMORY[0x2318C02F0](v261 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v262 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v290 = __p;
  v263 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v262 + 56, __p);
  MEMORY[0x2318C02F0](v263 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v264 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v290 = __p;
  v265 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v264 + 56, __p);
  MEMORY[0x2318C02F0](v265 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v266 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v290 = __p;
  v267 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v266 + 56, __p);
  MEMORY[0x2318C02F0](v267 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v268 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v290 = __p;
  v269 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v268 + 56, __p);
  MEMORY[0x2318C02F0](v269 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v270 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v290 = __p;
  v271 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v270 + 56, __p);
  MEMORY[0x2318C02F0](v271 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v272 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v290 = __p;
  v273 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v272 + 56, __p);
  MEMORY[0x2318C02F0](v273 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v274 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v290 = __p;
  v275 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v274 + 56, __p);
  MEMORY[0x2318C02F0](v275 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v276 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v290 = __p;
  v277 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v276 + 56, __p);
  MEMORY[0x2318C02F0](v277 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v278 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v290 = __p;
  v279 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v278 + 56, __p);
  MEMORY[0x2318C02F0](v279 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v280 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v290 = __p;
  v281 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v280 + 56, __p);
  MEMORY[0x2318C02F0](v281 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHED");
  __p[0] = v288;
  v282 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v290 = __p;
  v283 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v282 + 56, __p);
  MEMORY[0x2318C02F0](v283 + 56, "com_apple_mail_attachmentNames=%@c");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v288, "ATTACHMOD");
  __p[0] = v288;
  v284 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v288);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v290 = __p;
  v285 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v284 + 56, __p);
  MEMORY[0x2318C02F0](v285 + 56, "com_apple_mail_attachmentNames=%@c");
  if (v287 < 0)
  {
    operator delete(__p[0]);
  }

  if (v289 < 0)
  {
    operator delete(v288[0]);
  }
}

void sub_22CD32804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateMailTransportTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v62, "MAILMAILSENT");
  __p[0] = v62;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD.HasSent");
  v64 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILMAILSENT");
  __p[0] = v62;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENTMOD.SentEvent");
  v64 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILMAILSENT");
  __p[0] = v62;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasAuthored");
  v64 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILMAILSENT");
  __p[0] = v62;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasCreated");
  v64 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDItemMailboxes=mailbox.sent");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Airdropped");
  v64 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemUserSharedReceivedTransport=com.apple.AirDrop");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Airdrop");
  v64 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemUserSharedReceivedTransport=com.apple.AirDrop");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Airdropped");
  v64 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemUserSharedSentTransport=com.apple.AirDrop");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Airdrop");
  v64 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemUserSharedSentTransport=com.apple.AirDrop");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Messaged");
  v64 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemUserSharedReceivedTransport=com.apple.messages");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.MessageClient");
  v64 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemUserSharedReceivedTransport=com.apple.messages");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Messaged");
  v64 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.MessageClient");
  v64 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemUserSharedSentTransport=com.apple.messages");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Shared");
  v64 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "(kMDItemUserSharedSentTransport=facebook*cwd || kMDItemUserSharedSentTransport=twitter*cwd)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Sharesheet");
  v64 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "(kMDItemUserSharedSentTransport=facebook*cwd || kMDItemUserSharedSentTransport=twitter*cwd)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Facebook");
  v64 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDItemUserSharedSentTransport=facebook*cwd");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Facebooked");
  v64 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDItemUserSharedSentTransport=facebook*cwd");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Twitter");
  v64 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemUserSharedSentTransport=twitter*cwd");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Tweeted");
  v64 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemUserSharedSentTransport=twitter*cwd");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mail");
  v64 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mailed");
  v64 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "kMDItemUserSharedReceivedTransport=com.apple.mail");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "RECEIVED");
  __p[0] = v62;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.MailClient");
  v64 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemUserSharedReceivedTransport=com.apple.mail");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mailed");
  v64 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "SENT");
  __p[0] = v62;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.MailClient");
  v64 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemUserSharedSentTransport=com.apple.mail");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILRECEIVED");
  __p[0] = v62;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mail");
  v64 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILRECEIVED");
  __p[0] = v62;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mailed");
  v64 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "(kMDItemMailboxes=*in*cwd || kMDItemWhereFroms=message*cwd)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILRECEIVED");
  __p[0] = v62;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.MailClient");
  v64 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "(kMDItemMailboxes=*in*cwd || kMDItemWhereFroms=message*cwd)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILSENT");
  __p[0] = v62;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mailed");
  v64 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "(kMDItemMailboxes=mailbox.sent || kMDItemUserSharedSentTransport=com.apple.mail)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILSENT");
  __p[0] = v62;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.MailClient");
  v64 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "(kMDItemMailboxes=mailbox.sent || kMDItemUserSharedSentTransport=com.apple.mail)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v62, "MAILMAILRECEIVED");
  __p[0] = v62;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v62);
  std::string::basic_string[abi:ne200100]<0>(__p, "TRANSPORT.Mail");
  v64 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }
}

void sub_22CD34318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateNotesFileTypeTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "NotesKind");
  v146 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemContentType=com.apple.notes.spotlightrecord");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "DrawingKind");
  v146 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "MapKind");
  v146 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemAttachmentTypes=public.url");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteKind");
  v146 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDItemAttachmentTypes=public.url");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v146 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemAttachmentTypes=public.image");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v146 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemAttachmentTypes=com.compuserve.gif");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v146 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemAttachmentTypes=public.png");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v146 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemAttachmentTypes=public.tiff");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v146 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemAttachmentTypes=public.jpeg");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v146 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemAttachmentTypes=public.image");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v146 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemAttachmentTypes=com.compuserve.gif");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v146 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemAttachmentTypes=public.png");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v146 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "kMDItemAttachmentTypes=public.tiff");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v146 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDItemAttachmentTypes=public.jpeg");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v146 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDItemAttachmentTypes=public.audio");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v146 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDItemAttachmentTypes=public.aac-audio");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v146 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemAttachmentTypes=public.aif*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v146 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemAttachmentTypes=public.mp3");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v146 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "kMDItemAttachmentTypes=public.audio");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v146 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "kMDItemAttachmentTypes=public.aac-audio");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v146 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemAttachmentTypes=public.aif*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v146 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "kMDItemAttachmentTypes=public.mp3");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v146 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemAttachmentTypes=public.movie");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v146 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemAttachmentTypes=com.apple.quicktime-movie");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v146 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "kMDItemAttachmentTypes=com.apple.m4v-video");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v146 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "kMDItemAttachmentTypes=public.movie");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v146 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "kMDItemAttachmentTypes=com.apple.quicktime-movie");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v146 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "kMDItemAttachmentTypes=com.apple.m4v-video");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v146 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "(kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=com.apple.iwork.keynote.key || kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v146 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "kMDItemAttachmentTypes=com.apple.iwork.keynote.key");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v146 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "(kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v146 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "(kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=com.apple.iwork.keynote.key || kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v146 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "kMDItemAttachmentTypes=com.apple.iwork.keynote.key");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v146 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "(kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v146 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "kMDItemAttachmentTypes=com.apple.notes.table");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v146 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "(kMDItemAttachmentTypes=com.microsoft.excel.xls || kMDItemAttachmentTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v146 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "kMDItemAttachmentTypes=com.apple.notes.table");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v146 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "kMDItemAttachmentTypes=com.microsoft.excel.xls || kMDItemAttachmentTypes=org.openxmlformats.spreadsheetml.sheet");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v146 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "(kMDItemAttachmentTypes=com.adobe.pdf || kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=public.spreadsheet || kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.word*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd || kMDItemAttachmentTypes=public.plain-text || kMDItemAttachmentTypes=public.rtf || kMDItemAttachmentTypes=com.apple.notes.gallery || kMDItemAttachmentTypes=public.html || kMDItemAttachmentTypes=com.apple.rtfd || kMDItemAttachmentTypes=com.apple.flat-rtfd || kMDItemAttachmentTypes=com.apple.ibooks-container || kMDItemAttachmentTypes=com.apple.ibooks-folder || kMDItemAttachmentTypes=com.apple.ibooks || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgbook || kMDItemAttachmentTypes=com.apple.ibooksauthor.book || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgtemplate || kMDItemAttachmentTypes=com.apple.ibooksauthor.template)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v146 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "(kMDItemAttachmentTypes=com.apple.iwork.pages.* || kMDItemAttachmentTypes=com.microsoft.word.doc || kMDItemAttachmentTypes=org.openxmlformats.word*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v146 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "(kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v146 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "(kMDItemAttachmentTypes=microsoft.word.doc*cwd || kMDItemAttachmentTypes=openxmlformats.word*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v146 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "(kMDItemAttachmentTypes=com.adobe.pdf || kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=public.spreadsheet || kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.word*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd || kMDItemAttachmentTypes=public.plain-text || kMDItemAttachmentTypes=public.rtf || kMDItemAttachmentTypes=com.apple.notes.gallery || kMDItemAttachmentTypes=public.html || kMDItemAttachmentTypes=com.apple.rtfd || kMDItemAttachmentTypes=com.apple.flat-rtfd || kMDItemAttachmentTypes=com.apple.ibooks-container || kMDItemAttachmentTypes=com.apple.ibooks-folder || kMDItemAttachmentTypes=com.apple.ibooks || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgbook || kMDItemAttachmentTypes=com.apple.ibooksauthor.book || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgtemplate || kMDItemAttachmentTypes=com.apple.ibooksauthor.template)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v146 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "(kMDItemAttachmentTypes=com.microsoft.word.doc || kMDItemAttachmentTypes=com.apple.iwork.pages.* || kMDItemAttachmentTypes=org.openxmlformats.word*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v146 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "(kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v146 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "(kMDItemAttachmentTypes=microsoft.word.doc*cwd || kMDItemAttachmentTypes=openxmlformats.word*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v146 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "kMDItemAttachmentTypes=public.plain-text");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v146 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "kMDItemAttachmentTypes=public.plain-text");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v146 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "kMDItemAttachmentTypes=rtf*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v146 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "kMDItemAttachmentTypes=rtf*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v146 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "kMDItemAttachmentTypes=*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v146 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "(kMDItemAttachmentTypes=tar*cwd || kMDItemAttachmentTypes=zip*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v146 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "kMDItemAttachmentTypes=java*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v146 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "kMDItemAttachmentTypes=*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v146 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "(kMDItemAttachmentTypes=tar*cwd || kMDItemAttachmentTypes=zip*cwd)");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v146 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "kMDItemAttachmentTypes=java*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v146 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "kMDItemAttachmentTypes=public.calendar-eventcwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v146 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "kMDItemAttachmentTypes=*ics*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v146 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "kMDItemAttachmentTypes=public.calendar-eventcwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v146 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "kMDItemAttachmentTypes=*ics*cwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v146 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v146 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v146 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v146 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v146 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "kMDItemAttachmentTypes=com.apple.pkpasscwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v146 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "kMDItemAttachmentTypes=com.apple.pkpasscwd");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v146 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "kMDItemAttachmentTypes=com.adobe.pdf");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v146 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "kMDItemAttachmentTypes=com.adobe.pdf");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v146 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "kMDItemAttachmentTypes=org.idpf.epub-container");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v144, "KIND");
  __p[0] = v144;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v144);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v146 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "kMDItemAttachmentTypes=org.idpf.epub-container");
  if (v143 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145 < 0)
  {
    operator delete(v144[0]);
  }
}

void sub_22CD36F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateNotesAttachmentTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v314 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemAttachmentTypes != com.apple.notes.pencilkitsketch && kMDItemAttachmentTypes != com.apple.notes.table)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v314 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemAttachmentTypes != com.apple.notes.pencilkitsketch && kMDItemAttachmentTypes != com.apple.notes.table)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttached");
  v314 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemAttachmentTypes != com.apple.notes.pencilkitsketch && kMDItemAttachmentTypes != com.apple.notes.table)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttachment");
  v314 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemAttachmentTypes != com.apple.notes.pencilkitsketch && kMDItemAttachmentTypes != com.apple.notes.table)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v314 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemAttachmentTypes=public.image");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v314 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemAttachmentTypes=com.compuserve.gif");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v314 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemAttachmentTypes=public.png");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v314 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemAttachmentTypes=public.tiff");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v314 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemAttachmentTypes=public.jpeg");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v314 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemAttachmentTypes=public.image");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v314 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemAttachmentTypes=com.compuserve.gif");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v314 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemAttachmentTypes=public.png");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v314 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "kMDItemAttachmentTypes=public.tiff");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v314 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDItemAttachmentTypes=public.jpeg");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v314 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDItemAttachmentTypes=public.image");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v314 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDItemAttachmentTypes=com.compuserve.gif");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v314 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemAttachmentTypes=public.png");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v314 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemAttachmentTypes=public.tiff");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v314 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "kMDItemAttachmentTypes=public.jpeg");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v314 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "kMDItemAttachmentTypes=public.image");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v314 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemAttachmentTypes=com.compuserve.gif");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v314 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "kMDItemAttachmentTypes=public.png");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v314 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemAttachmentTypes=public.tiff");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v314 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemAttachmentTypes=public.jpeg");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v314 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "kMDItemAttachmentTypes=public.audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v314 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "kMDItemAttachmentTypes=public.aac-audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v314 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "kMDItemAttachmentTypes=public.aif*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v314 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "kMDItemAttachmentTypes=public.mp3");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v314 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "kMDItemAttachmentTypes=public.audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v314 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "kMDItemAttachmentTypes=public.aac-audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v314 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "kMDItemAttachmentTypes=public.aif*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v314 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "kMDItemAttachmentTypes=public.mp3");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v314 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "kMDItemAttachmentTypes=public.audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v314 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "kMDItemAttachmentTypes=public.aac-audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v314 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "kMDItemAttachmentTypes=public.aif*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v314 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "kMDItemAttachmentTypes=public.mp3");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v314 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "kMDItemAttachmentTypes=public.audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v314 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "kMDItemAttachmentTypes=public.aac-audio");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v314 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "kMDItemAttachmentTypes=public.aif*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v314 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "kMDItemAttachmentTypes=public.mp3");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v314 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "kMDItemAttachmentTypes=public.movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v314 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "kMDItemAttachmentTypes=com.apple.quicktime-movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v314 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "kMDItemAttachmentTypes=com.apple.m4v-video");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v314 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "kMDItemAttachmentTypes=public.movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v314 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "kMDItemAttachmentTypes=com.apple.quicktime-movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v314 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "kMDItemAttachmentTypes=com.apple.m4v-video");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v314 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "kMDItemAttachmentTypes=public.movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v314 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "kMDItemAttachmentTypes=com.apple.quicktime-movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v314 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "kMDItemAttachmentTypes=com.apple.m4v-video");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v314 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "kMDItemAttachmentTypes=public.movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v314 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "kMDItemAttachmentTypes=com.apple.quicktime-movie");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v314 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "kMDItemAttachmentTypes=com.apple.m4v-video");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Presentation");
  v314 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "(kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=com.apple.iwork.keynote.key || kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v314 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "kMDItemAttachmentTypes=com.apple.iwork.keynote.key");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v314 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "(kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v314 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "(kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=com.apple.iwork.keynote.key || kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v314 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "kMDItemAttachmentTypes=com.apple.iwork.keynote.key");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v314 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "(kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Presentation");
  v314 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "(kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=com.apple.iwork.keynote.key || kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v314 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "kMDItemAttachmentTypes=com.apple.iwork.keynote.key");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v314 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "(kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v314 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "(kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=com.apple.iwork.keynote.key || kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v314 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "kMDItemAttachmentTypes=com.apple.iwork.keynote.key");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v314 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "(kMDItemAttachmentTypes=com.microsoft.powerpoint.ppt || kMDItemAttachmentTypes=org.openxmlformats.presentationml.presentation)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v314 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "kMDItemAttachmentTypes=com.apple.notes.table");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v314 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "(kMDItemAttachmentTypes=com.microsoft.excel.xls || kMDItemAttachmentTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v314 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "kMDItemAttachmentTypes=com.apple.notes.table");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v314 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "(kMDItemAttachmentTypes=com.microsoft.excel.xls || kMDItemAttachmentTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v314 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "kMDItemAttachmentTypes=com.apple.notes.table");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v314 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "(kMDItemAttachmentTypes=com.microsoft.excel.xls || kMDItemAttachmentTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v314 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "kMDItemAttachmentTypes=com.apple.notes.table");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v144 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v314 = __p;
  v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v144 + 56, __p);
  MEMORY[0x2318C02F0](v145 + 56, "(kMDItemAttachmentTypes=com.microsoft.excel.xls || kMDItemAttachmentTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v146 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v314 = __p;
  v147 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v146 + 56, __p);
  MEMORY[0x2318C02F0](v147 + 56, "(kMDItemAttachmentTypes=com.adobe.pdf || kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=public.spreadsheet || kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.word*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd || kMDItemAttachmentTypes=public.plain-text || kMDItemAttachmentTypes=public.rtf || kMDItemAttachmentTypes=com.apple.notes.gallery || kMDItemAttachmentTypes=public.html || kMDItemAttachmentTypes=com.apple.rtfd || kMDItemAttachmentTypes=com.apple.flat-rtfd || kMDItemAttachmentTypes=com.apple.ibooks-container || kMDItemAttachmentTypes=com.apple.ibooks-folder || kMDItemAttachmentTypes=com.apple.ibooks || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgbook || kMDItemAttachmentTypes=com.apple.ibooksauthor.book || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgtemplate || kMDItemAttachmentTypes=com.apple.ibooksauthor.template)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v148 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v314 = __p;
  v149 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v148 + 56, __p);
  MEMORY[0x2318C02F0](v149 + 56, "(kMDItemAttachmentTypes=com.apple.iwork.pages.* || kMDItemAttachmentTypes=com.microsoft.word.doc || kMDItemAttachmentTypes=org.openxmlformats.word*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v150 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v314 = __p;
  v151 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v150 + 56, __p);
  MEMORY[0x2318C02F0](v151 + 56, "(kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v152 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v314 = __p;
  v153 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v152 + 56, __p);
  MEMORY[0x2318C02F0](v153 + 56, "(kMDItemAttachmentTypes=microsoft.word.doc*cwd || kMDItemAttachmentTypes=openxmlformats.word*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v154 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v314 = __p;
  v155 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v154 + 56, __p);
  MEMORY[0x2318C02F0](v155 + 56, "(kMDItemAttachmentTypes=com.adobe.pdf || kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=public.spreadsheet || kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.word*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd || kMDItemAttachmentTypes=public.plain-text || kMDItemAttachmentTypes=public.rtf || kMDItemAttachmentTypes=com.apple.notes.gallery || kMDItemAttachmentTypes=public.html || kMDItemAttachmentTypes=com.apple.rtfd || kMDItemAttachmentTypes=com.apple.flat-rtfd || kMDItemAttachmentTypes=com.apple.ibooks-container || kMDItemAttachmentTypes=com.apple.ibooks-folder || kMDItemAttachmentTypes=com.apple.ibooks || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgbook || kMDItemAttachmentTypes=com.apple.ibooksauthor.book || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgtemplate || kMDItemAttachmentTypes=com.apple.ibooksauthor.template)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v156 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v314 = __p;
  v157 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v156 + 56, __p);
  MEMORY[0x2318C02F0](v157 + 56, "(kMDItemAttachmentTypes=com.microsoft.word.doc || kMDItemAttachmentTypes=com.apple.iwork.pages.*)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v158 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v314 = __p;
  v159 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v158 + 56, __p);
  MEMORY[0x2318C02F0](v159 + 56, "(kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v160 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v314 = __p;
  v161 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v160 + 56, __p);
  MEMORY[0x2318C02F0](v161 + 56, "(kMDItemAttachmentTypes=microsoft.word.doc*cwd || kMDItemAttachmentTypes=openxmlformats.word*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v162 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v314 = __p;
  v163 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v162 + 56, __p);
  MEMORY[0x2318C02F0](v163 + 56, "(kMDItemAttachmentTypes=com.adobe.pdf || kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=public.spreadsheet || kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.word*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd || kMDItemAttachmentTypes=public.plain-text || kMDItemAttachmentTypes=public.rtf || kMDItemAttachmentTypes=com.apple.notes.gallery || kMDItemAttachmentTypes=public.html || kMDItemAttachmentTypes=com.apple.rtfd || kMDItemAttachmentTypes=com.apple.flat-rtfd || kMDItemAttachmentTypes=com.apple.ibooks-container || kMDItemAttachmentTypes=com.apple.ibooks-folder || kMDItemAttachmentTypes=com.apple.ibooks || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgbook || kMDItemAttachmentTypes=com.apple.ibooksauthor.book || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgtemplate || kMDItemAttachmentTypes=com.apple.ibooksauthor.template)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v164 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v314 = __p;
  v165 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v164 + 56, __p);
  MEMORY[0x2318C02F0](v165 + 56, "(kMDItemAttachmentTypes=com.apple.iwork.pages.* || kMDItemAttachmentTypes=com.microsoft.word.doc || kMDItemAttachmentTypes=org.openxmlformats.word*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v166 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v314 = __p;
  v167 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v166 + 56, __p);
  MEMORY[0x2318C02F0](v167 + 56, "(kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v168 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v314 = __p;
  v169 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v168 + 56, __p);
  MEMORY[0x2318C02F0](v169 + 56, "(kMDItemAttachmentTypes=microsoft.word.doc*cwd || kMDItemAttachmentTypes=openxmlformats.word*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v170 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v314 = __p;
  v171 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v170 + 56, __p);
  MEMORY[0x2318C02F0](v171 + 56, "(kMDItemAttachmentTypes=com.adobe.pdf || kMDItemAttachmentTypes=public.presentation || kMDItemAttachmentTypes=public.spreadsheet || kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.word*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd || kMDItemAttachmentTypes=public.plain-text || kMDItemAttachmentTypes=public.rtf || kMDItemAttachmentTypes=com.apple.notes.gallery || kMDItemAttachmentTypes=public.html || kMDItemAttachmentTypes=com.apple.rtfd || kMDItemAttachmentTypes=com.apple.flat-rtfd || kMDItemAttachmentTypes=com.apple.ibooks-container || kMDItemAttachmentTypes=com.apple.ibooks-folder || kMDItemAttachmentTypes=com.apple.ibooks || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgbook || kMDItemAttachmentTypes=com.apple.ibooksauthor.book || kMDItemAttachmentTypes=com.apple.ibooksauthor.pkgtemplate || kMDItemAttachmentTypes=com.apple.ibooksauthor.template)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v172 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v314 = __p;
  v173 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v172 + 56, __p);
  MEMORY[0x2318C02F0](v173 + 56, "(kMDItemAttachmentTypes=com.microsoft.word.doc || kMDItemAttachmentTypes=com.apple.iwork.pages.*)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v174 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v314 = __p;
  v175 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v174 + 56, __p);
  MEMORY[0x2318C02F0](v175 + 56, "(kMDItemAttachmentTypes=com.apple.iwork*cwd || kMDItemAttachmentTypes=com.microsoft.*cwd || kMDItemAttachmentTypes=org.openxmlformats*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v176 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v314 = __p;
  v177 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v176 + 56, __p);
  MEMORY[0x2318C02F0](v177 + 56, "(kMDItemAttachmentTypes=microsoft.word.doc*cwd || kMDItemAttachmentTypes=openxmlformats.word*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v178 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v314 = __p;
  v179 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v178 + 56, __p);
  MEMORY[0x2318C02F0](v179 + 56, "kMDItemAttachmentTypes=rtf*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v180 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v314 = __p;
  v181 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v180 + 56, __p);
  MEMORY[0x2318C02F0](v181 + 56, "kMDItemAttachmentTypes=rtf*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v182 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v314 = __p;
  v183 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v182 + 56, __p);
  MEMORY[0x2318C02F0](v183 + 56, "kMDItemAttachmentTypes=rtf*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v184 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v314 = __p;
  v185 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v184 + 56, __p);
  MEMORY[0x2318C02F0](v185 + 56, "kMDItemAttachmentTypes=rtf*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v186 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v314 = __p;
  v187 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v186 + 56, __p);
  MEMORY[0x2318C02F0](v187 + 56, "kMDItemAttachmentTypes=public.plain-text");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v188 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v314 = __p;
  v189 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v188 + 56, __p);
  MEMORY[0x2318C02F0](v189 + 56, "kMDItemAttachmentTypes=public.plain-text");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v190 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v314 = __p;
  v191 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v190 + 56, __p);
  MEMORY[0x2318C02F0](v191 + 56, "kMDItemAttachmentTypes=public.plain-text");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v192 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v314 = __p;
  v193 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v192 + 56, __p);
  MEMORY[0x2318C02F0](v193 + 56, "kMDItemAttachmentTypes=public.plain-text");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v194 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v314 = __p;
  v195 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v194 + 56, __p);
  MEMORY[0x2318C02F0](v195 + 56, "kMDItemAttachmentTypes=*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v196 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v314 = __p;
  v197 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v196 + 56, __p);
  MEMORY[0x2318C02F0](v197 + 56, "(kMDItemAttachmentTypes=tar*cwd || kMDItemAttachmentTypes=zip*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v198 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v314 = __p;
  v199 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v198 + 56, __p);
  MEMORY[0x2318C02F0](v199 + 56, "kMDItemAttachmentTypes=java*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v200 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v314 = __p;
  v201 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v200 + 56, __p);
  MEMORY[0x2318C02F0](v201 + 56, "kMDItemAttachmentTypes=*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v202 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v314 = __p;
  v203 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v202 + 56, __p);
  MEMORY[0x2318C02F0](v203 + 56, "(kMDItemAttachmentTypes=tar*cwd || kMDItemAttachmentTypes=zip*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v204 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v314 = __p;
  v205 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v204 + 56, __p);
  MEMORY[0x2318C02F0](v205 + 56, "kMDItemAttachmentTypes=java*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v206 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v314 = __p;
  v207 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v206 + 56, __p);
  MEMORY[0x2318C02F0](v207 + 56, "kMDItemAttachmentTypes=*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v208 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v314 = __p;
  v209 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v208 + 56, __p);
  MEMORY[0x2318C02F0](v209 + 56, "(kMDItemAttachmentTypes=tar*cwd || kMDItemAttachmentTypes=zip*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v210 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v314 = __p;
  v211 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v210 + 56, __p);
  MEMORY[0x2318C02F0](v211 + 56, "kMDItemAttachmentTypes=java*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v212 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v314 = __p;
  v213 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v212 + 56, __p);
  MEMORY[0x2318C02F0](v213 + 56, "kMDItemAttachmentTypes=*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v214 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v314 = __p;
  v215 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v214 + 56, __p);
  MEMORY[0x2318C02F0](v215 + 56, "(kMDItemAttachmentTypes=tar*cwd || kMDItemAttachmentTypes=zip*cwd)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v216 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v314 = __p;
  v217 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v216 + 56, __p);
  MEMORY[0x2318C02F0](v217 + 56, "kMDItemAttachmentTypes=java*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v218 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v314 = __p;
  v219 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v218 + 56, __p);
  MEMORY[0x2318C02F0](v219 + 56, "kMDItemAttachmentTypes=public.calendar-eventcwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v220 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v314 = __p;
  v221 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v220 + 56, __p);
  MEMORY[0x2318C02F0](v221 + 56, "kMDItemAttachmentTypes=*ics*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v222 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v314 = __p;
  v223 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v222 + 56, __p);
  MEMORY[0x2318C02F0](v223 + 56, "kMDItemAttachmentTypes=public.calendar-eventcwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v224 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v314 = __p;
  v225 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v224 + 56, __p);
  MEMORY[0x2318C02F0](v225 + 56, "kMDItemAttachmentTypes=*ics*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v226 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v314 = __p;
  v227 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v226 + 56, __p);
  MEMORY[0x2318C02F0](v227 + 56, "kMDItemAttachmentTypes=public.calendar-eventcwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v228 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v314 = __p;
  v229 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v228 + 56, __p);
  MEMORY[0x2318C02F0](v229 + 56, "kMDItemAttachmentTypes=*ics*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v230 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v314 = __p;
  v231 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v230 + 56, __p);
  MEMORY[0x2318C02F0](v231 + 56, "kMDItemAttachmentTypes=public.calendar-eventcwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v232 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v314 = __p;
  v233 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v232 + 56, __p);
  MEMORY[0x2318C02F0](v233 + 56, "kMDItemAttachmentTypes=*ics*cwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v234 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v314 = __p;
  v235 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v234 + 56, __p);
  MEMORY[0x2318C02F0](v235 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v236 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v314 = __p;
  v237 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v236 + 56, __p);
  MEMORY[0x2318C02F0](v237 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v238 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v314 = __p;
  v239 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v238 + 56, __p);
  MEMORY[0x2318C02F0](v239 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v240 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v314 = __p;
  v241 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v240 + 56, __p);
  MEMORY[0x2318C02F0](v241 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v242 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v314 = __p;
  v243 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v242 + 56, __p);
  MEMORY[0x2318C02F0](v243 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v244 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v314 = __p;
  v245 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v244 + 56, __p);
  MEMORY[0x2318C02F0](v245 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v246 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v314 = __p;
  v247 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v246 + 56, __p);
  MEMORY[0x2318C02F0](v247 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v248 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v314 = __p;
  v249 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v248 + 56, __p);
  MEMORY[0x2318C02F0](v249 + 56, "kMDItemAttachmentTypes=public.vcard");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v250 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v314 = __p;
  v251 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v250 + 56, __p);
  MEMORY[0x2318C02F0](v251 + 56, "kMDItemAttachmentTypes=com.apple.pkpasscwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v252 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v314 = __p;
  v253 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v252 + 56, __p);
  MEMORY[0x2318C02F0](v253 + 56, "kMDItemAttachmentTypes=com.apple.pkpasscwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v254 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v314 = __p;
  v255 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v254 + 56, __p);
  MEMORY[0x2318C02F0](v255 + 56, "kMDItemAttachmentTypes=com.apple.pkpasscwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v256 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v314 = __p;
  v257 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v256 + 56, __p);
  MEMORY[0x2318C02F0](v257 + 56, "kMDItemAttachmentTypes=com.apple.pkpasscwd");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v258 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v314 = __p;
  v259 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v258 + 56, __p);
  MEMORY[0x2318C02F0](v259 + 56, "kMDItemAttachmentTypes=com.adobe.pdf");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v260 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v314 = __p;
  v261 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v260 + 56, __p);
  MEMORY[0x2318C02F0](v261 + 56, "kMDItemAttachmentTypes=com.adobe.pdf");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v262 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v314 = __p;
  v263 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v262 + 56, __p);
  MEMORY[0x2318C02F0](v263 + 56, "kMDItemAttachmentTypes=com.adobe.pdf");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v264 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v314 = __p;
  v265 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v264 + 56, __p);
  MEMORY[0x2318C02F0](v265 + 56, "kMDItemAttachmentTypes=com.adobe.pdf");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v266 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v314 = __p;
  v267 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v266 + 56, __p);
  MEMORY[0x2318C02F0](v267 + 56, "kMDItemDisplayName =%@c");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "FILEATTACHED");
  __p[0] = v312;
  v268 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v314 = __p;
  v269 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v268 + 56, __p);
  MEMORY[0x2318C02F0](v269 + 56, "kMDItemDisplayName =%@c");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v270 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v314 = __p;
  v271 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v270 + 56, __p);
  MEMORY[0x2318C02F0](v271 + 56, "kMDItemDisplayName =%@c");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "FILEATTACHMOD");
  __p[0] = v312;
  v272 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v314 = __p;
  v273 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v272 + 56, __p);
  MEMORY[0x2318C02F0](v273 + 56, "kMDItemDisplayName =%@c");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v274 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v314 = __p;
  v275 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v274 + 56, __p);
  MEMORY[0x2318C02F0](v275 + 56, "kMDItemAttachmentTypes=org.idpf.epub-container");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v276 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v314 = __p;
  v277 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v276 + 56, __p);
  MEMORY[0x2318C02F0](v277 + 56, "kMDItemAttachmentTypes=org.idpf.epub-container");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v278 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v314 = __p;
  v279 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v278 + 56, __p);
  MEMORY[0x2318C02F0](v279 + 56, "kMDItemAttachmentTypes=org.idpf.epub-container");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v280 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v314 = __p;
  v281 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v280 + 56, __p);
  MEMORY[0x2318C02F0](v281 + 56, "kMDItemAttachmentTypes=org.idpf.epub-container");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v282 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DrawingKind");
  v314 = __p;
  v283 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v282 + 56, __p);
  MEMORY[0x2318C02F0](v283 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v284 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DrawingAttachment");
  v314 = __p;
  v285 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v284 + 56, __p);
  MEMORY[0x2318C02F0](v285 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v286 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasDrawn");
  v314 = __p;
  v287 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v286 + 56, __p);
  MEMORY[0x2318C02F0](v287 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v288 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DrawingKind");
  v314 = __p;
  v289 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v288 + 56, __p);
  MEMORY[0x2318C02F0](v289 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v290 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "DrawingAttachment");
  v314 = __p;
  v291 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v290 + 56, __p);
  MEMORY[0x2318C02F0](v291 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v292 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasDrawn");
  v314 = __p;
  v293 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v292 + 56, __p);
  MEMORY[0x2318C02F0](v293 + 56, "(kMDItemAttachmentTypes=com.apple.notes.pencilkitsketch || kMDItemAttachmentTypes=com.apple.notes.sketch)");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v294 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MapKind");
  v314 = __p;
  v295 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v294 + 56, __p);
  MEMORY[0x2318C02F0](v295 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v296 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MapAttachment");
  v314 = __p;
  v297 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v296 + 56, __p);
  MEMORY[0x2318C02F0](v297 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v298 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MapKind");
  v314 = __p;
  v299 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v298 + 56, __p);
  MEMORY[0x2318C02F0](v299 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v300 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "MapAttachment");
  v314 = __p;
  v301 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v300 + 56, __p);
  MEMORY[0x2318C02F0](v301 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v302 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteKind");
  v314 = __p;
  v303 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v302 + 56, __p);
  MEMORY[0x2318C02F0](v303 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHED");
  __p[0] = v312;
  v304 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteAttachment");
  v314 = __p;
  v305 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v304 + 56, __p);
  MEMORY[0x2318C02F0](v305 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v306 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteKind");
  v314 = __p;
  v307 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v306 + 56, __p);
  MEMORY[0x2318C02F0](v307 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v312, "ATTACHMOD");
  __p[0] = v312;
  v308 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v312);
  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteAttachment");
  v314 = __p;
  v309 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v308 + 56, __p);
  MEMORY[0x2318C02F0](v309 + 56, "kMDItemAttachmentTypes=public.url");
  if (v311 < 0)
  {
    operator delete(__p[0]);
  }

  if (v313 < 0)
  {
    operator delete(v312[0]);
  }
}