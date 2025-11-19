@interface MarrsSiriNLUTypesConverter
+ (QRInteraction)toPluginInteraction:(QRInteraction *__return_ptr)retstr;
+ (QRRequest)toPluginRequestObj:(SEL)a3;
+ (QRToken)internalTokentoPluginToken:(QRToken *__return_ptr)retstr;
+ (QRToken)toPluginToken:(QRToken *__return_ptr)retstr;
+ (QRUtterance)toPluginUtterance:(QRUtterance *__return_ptr)retstr;
+ (Uuid)toPluginUuid:(id)a3;
+ (basic_string<char,)NSString2StdString:(std::allocator<char>> *__return_ptr)retstr;
+ (id)StdVectorStdString2NSMutableArrayNSString:()vector<std:(std::allocator<std::string>> *)a3 :string;
+ (id)fromPluginHypothesis:(QRHypothesis *)a3;
+ (id)fromPluginInteraction:(QRInteraction *)a3;
+ (id)fromPluginResponseObj:(const void *)a3;
+ (id)fromPluginResponsePtr:(const void *)a3;
+ (id)fromPluginToken:(QRToken *)a3;
+ (id)fromPluginUtterance:(QRUtterance *)a3;
+ (id)fromPluginUuid:(Uuid)a3;
+ (id)internalTokenfromPluginToken:(QRToken *)a3;
+ (id)stdString2NSString:()basic_string<char;
+ (int)fromPluginRepetitionType:(int)a3;
+ (int)toPluginRequester:(int)a3;
+ (unique_ptr<marrs::qr::orchestration::QRRequest,)toPluginRequestPtr:(id)a3;
+ (vector<std::string,)NSMutableArrayNSString2StdVectorStdString:(id)a2;
@end

@implementation MarrsSiriNLUTypesConverter

+ (id)fromPluginResponseObj:(const void *)a3
{
  v4 = objc_opt_new();
  v5 = *(a3 + 1);
  if (*a3 != v5)
  {
    v6 = *a3 + 16;
    do
    {
      v16 = *(v6 - 16);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *v6, *(v6 + 8));
      }

      else
      {
        v17 = *v6;
      }

      v7 = v6 - 16;
      v18 = *(v6 + 24);
      v19 = *(v6 + 32);
      v12 = v16;
      v8 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v17;
      }

      v14 = v18;
      v15 = v19;
      v9 = [MarrsSiriNLUTypesConverter fromPluginHypothesis:&v12];
      [v4 addObject:{v9, v12}];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v8 < 0)
        {
LABEL_14:
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }

      else if (v8 < 0)
      {
        goto LABEL_14;
      }

      v6 += 56;
    }

    while (v7 + 56 != v5);
  }

  v10 = objc_alloc_init(MEMORY[0x277D5DE50]);
  [v10 setRewriteHypotheses:v4];
  [v10 setRepetitionType:{+[MarrsSiriNLUTypesConverter fromPluginRepetitionType:](MarrsSiriNLUTypesConverter, "fromPluginRepetitionType:", *(a3 + 6))}];

  return v10;
}

+ (id)fromPluginResponsePtr:(const void *)a3
{
  v4 = objc_opt_new();
  v5 = **a3;
  v6 = *(*a3 + 8);
  if (v5 != v6)
  {
    v7 = v5 + 16;
    do
    {
      v17 = *(v7 - 16);
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *v7, *(v7 + 8));
      }

      else
      {
        v18 = *v7;
      }

      v8 = v7 - 16;
      v19 = *(v7 + 24);
      v20 = *(v7 + 32);
      v13 = v17;
      v9 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v18;
      }

      v15 = v19;
      v16 = v20;
      v10 = [MarrsSiriNLUTypesConverter fromPluginHypothesis:&v13];
      [v4 addObject:{v10, v13}];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v9 < 0)
        {
LABEL_14:
          operator delete(v18.__r_.__value_.__l.__data_);
        }
      }

      else if (v9 < 0)
      {
        goto LABEL_14;
      }

      v7 += 56;
    }

    while (v8 + 56 != v6);
  }

  v11 = objc_alloc_init(MEMORY[0x277D5DE50]);
  [v11 setRewriteHypotheses:v4];
  [v11 setRepetitionType:{+[MarrsSiriNLUTypesConverter fromPluginRepetitionType:](MarrsSiriNLUTypesConverter, "fromPluginRepetitionType:", *(*a3 + 24))}];

  return v11;
}

+ (QRRequest)toPluginRequestObj:(SEL)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v6 = [v5 originalInteractions];
  std::vector<marrs::qr::orchestration::QRInteraction>::reserve(&v29, [v6 count]);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 originalInteractions];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [MarrsSiriNLUTypesConverter toPluginInteraction:*(*(&v25 + 1) + 8 * v10), v16];
        v11 = v30;
        if (v30 >= v31)
        {
          v30 = std::vector<marrs::qr::orchestration::QRInteraction>::__emplace_back_slow_path<marrs::qr::orchestration::QRInteraction>(&v29, &v16);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          *(v30 + 16) = 0;
          *(v11 + 24) = 0;
          *v11 = 0;
          *(v11 + 8) = 0;
          *v11 = v16;
          *(v11 + 16) = v17;
          v16 = 0uLL;
          v17 = 0;
          *(v11 + 32) = 0;
          *(v11 + 40) = 0;
          *(v11 + 24) = v18;
          v18 = 0uLL;
          *(v11 + 40) = v19;
          *(v11 + 48) = 0;
          v19 = 0;
          *(v11 + 56) = 0;
          *(v11 + 64) = 0;
          *(v11 + 48) = v20;
          *(v11 + 64) = v21;
          v20 = 0uLL;
          v21 = 0;
          v12 = __p;
          *(v11 + 88) = v23;
          *(v11 + 72) = v12;
          v23 = 0;
          __p = 0uLL;
          *(v11 + 96) = v24;
          v30 = v11 + 112;
        }

        v32 = &v20;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v32);
        v32 = &v18;
        std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v32);
        v32 = &v16;
        std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v32);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v13 = [v5 cdmRequestId];
  retstr->var0 = +[MarrsSiriNLUTypesConverter toPluginRequester:](MarrsSiriNLUTypesConverter, "toPluginRequester:", [v13 requester]);
  retstr->var1.var0 = 0;
  retstr->var1.var1 = 0;
  retstr->var1.var2 = 0;
  *&v16 = &retstr->var1;
  BYTE8(v16) = 0;
  if (v30 != v29)
  {
    std::vector<marrs::qr::orchestration::QRInteraction>::__vallocate[abi:ne200100](&retstr->var1, 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 4));
  }

  *&v16 = &v29;
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&v16);

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unique_ptr<marrs::qr::orchestration::QRRequest,)toPluginRequestPtr:(id)a3
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  operator new();
}

+ (int)toPluginRequester:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)fromPluginHypothesis:(QRHypothesis *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D5DE58]);
  v5 = [MarrsSiriNLUTypesConverter fromPluginUuid:a3->var0.var0, a3->var0.var1];
  [v4 setAsrId:v5];

  if (*(&a3->var1.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3->var1.var0.var1.var0, a3->var1.var0.var1.var1);
  }

  else
  {
    __p = a3->var1;
  }

  v6 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
  [v4 setUtterance:v6];

  if (*(&__p.var0.var1 + 23) < 0)
  {
    operator delete(__p.var0.var1.var0);
  }

  [v4 setConfidence:{*&a3[1].var0.var0, *__p.var0.var0.var0, *(&__p.var0.var1 + 2)}];
  [v4 setRewriteType:{+[MarrsSiriNLUTypesConverter fromPluginRewriteType:](MarrsSiriNLUTypesConverter, "fromPluginRewriteType:", LODWORD(a3[1].var0.var1))}];

  return v4;
}

+ (id)fromPluginInteraction:(QRInteraction *)a3
{
  v4 = objc_opt_new();
  v16 = a3;
  var1 = a3->var0.var1;
  v18 = v4;
  if (a3->var0.var0 != var1)
  {
    p_var1 = &a3->var0.var0->var1;
    do
    {
      v28 = *&p_var1[-1].var0.var1.var1;
      if (*(&p_var1->var0.var1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, p_var1->var0.var1.var0, p_var1->var0.var1.var1);
      }

      else
      {
        v6 = *p_var1->var0.var0.var0;
        v29.__r_.__value_.__r.__words[2] = *(&p_var1->var0.var1 + 2);
        *&v29.__r_.__value_.__l.__data_ = v6;
      }

      v7 = &p_var1[-1].var0.var0.var0[8];
      v30 = 0;
      v31[0] = 0;
      v31[1] = 0;
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v30, p_var1[1].var0.var1.var0, p_var1[1].var0.var1.var1, 0xCCCCCCCCCCCCCCCDLL * ((p_var1[1].var0.var1.var1 - p_var1[1].var0.var1.var0) >> 5));
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v32, p_var1[2].var0.var1.var0, p_var1[2].var0.var1.var1, 0xCCCCCCCCCCCCCCCDLL * ((p_var1[2].var0.var1.var1 - p_var1[2].var0.var1.var0) >> 5));
      var0 = p_var1[3].var0.var1.var0;
      v40 = v28;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      else
      {
        v41 = v29;
      }

      memset(v42, 0, sizeof(v42));
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(v42, v30, v31[0], 0xCCCCCCCCCCCCCCCDLL * ((v31[0] - v30) >> 5));
      memset(v43, 0, sizeof(v43));
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(v43, v32, v33, 0xCCCCCCCCCCCCCCCDLL * ((v33 - v32) >> 5));
      v44 = var0;
      v8 = [MarrsSiriNLUTypesConverter fromPluginUtterance:&v40];
      [v18 addObject:v8];

      v45[0] = v43;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v45);
      v45[0] = v42;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v45);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      v45[0] = &v32;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v45);
      v45[0] = &v30;
      std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v45);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      p_var1 += 4;
    }

    while (v7 + 96 != var1);
  }

  v9 = objc_opt_new();
  v11 = v16->var2.var0;
  for (i = v16->var2.var1; v11 != i; v11 = (v11 + 160))
  {
    marrs::qr::orchestration::QRToken::QRToken(&v28, v11);
    marrs::qr::orchestration::QRToken::QRToken(&v20, &v28);
    v12 = [MarrsSiriNLUTypesConverter fromPluginToken:&v20];
    [v9 addObject:v12];

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    v45[0] = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }

    v45[0] = v31;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__size_);
    }

    if (v29.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v28);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277D5DE60]);
  [v13 setOriginalUtterances:v18];
  [v13 setSiriResponses:v9];
  if (*(&v16->var3.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&var3, v16->var3.var0.var1.var0, v16->var3.var0.var1.var1);
  }

  else
  {
    var3 = v16->var3;
  }

  v14 = [MarrsSiriNLUTypesConverter stdString2NSString:&var3];
  [v13 setLocale:v14];

  if (SHIBYTE(var3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(var3.__r_.__value_.__l.__data_);
  }

  [v13 setTap2edit:LOBYTE(v16[1].var0.var0)];
  [v13 setStartTimestamp:v16[1].var0.var1];

  return v13;
}

+ (QRInteraction)toPluginInteraction:(QRInteraction *__return_ptr)retstr
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = v1;
  v56 = 0;
  v57 = 0uLL;
  v4 = [v3 originalUtterances];
  v35 = v3;
  v5 = [v4 count];
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      __p[2] = &v56;
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>>(v5);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  [v3 originalUtterances];
  obj = v34 = retstr;
  v6 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v6)
  {
    v7 = *v53;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(obj);
        }

        [MarrsSiriNLUTypesConverter toPluginUtterance:*(*(&v52 + 1) + 8 * i)];
        v9 = v57;
        if (v57 >= *(&v57 + 1))
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 5);
          v13 = v12 + 1;
          if (v12 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v57 + 1) - v56) >> 5) > v13)
          {
            v13 = 0x5555555555555556 * ((*(&v57 + 1) - v56) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v57 + 1) - v56) >> 5) >= 0x155555555555555)
          {
            v14 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v13;
          }

          v62 = &v56;
          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>>(v14);
          }

          v15 = 32 * ((v57 - v56) >> 5);
          v59 = 0;
          v60 = v15;
          *(&v61 + 1) = 0;
          *v15 = *v38;
          v16 = *__p;
          *(v15 + 32) = __p[2];
          *(v15 + 16) = v16;
          memset(__p, 0, sizeof(__p));
          *(v15 + 40) = 0;
          *(v15 + 48) = 0;
          *(v15 + 56) = 0;
          *(v15 + 40) = *v40;
          *(v15 + 56) = *&v40[16];
          memset(v40, 0, sizeof(v40));
          *(v15 + 64) = 0;
          *(v15 + 72) = 0;
          *(v15 + 80) = 0;
          *(v15 + 64) = *v41;
          *(v15 + 80) = *&v41[16];
          memset(v41, 0, sizeof(v41));
          *(v15 + 88) = v42;
          *&v61 = 96 * v12 + 96;
          v17 = &v56[12 * v12] - v57;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>,marrs::qr::orchestration::QRUtterance*>(&v56, v56, v57, &v56[v15 / 8] - v57);
          v18 = v56;
          v19 = *(&v57 + 1);
          v56 = v17;
          v37 = v61;
          v57 = v61;
          *&v61 = v18;
          *(&v61 + 1) = v19;
          v59 = v18;
          v60 = v18;
          std::__split_buffer<marrs::qr::orchestration::QRUtterance>::~__split_buffer(&v59);
          v11 = v37;
        }

        else
        {
          *v57 = *v38;
          v10 = *__p;
          *(v9 + 32) = __p[2];
          *(v9 + 40) = 0;
          *(v9 + 16) = v10;
          memset(__p, 0, sizeof(__p));
          *(v9 + 48) = 0;
          *(v9 + 56) = 0;
          *(v9 + 40) = *v40;
          *v40 = 0uLL;
          *(v9 + 56) = *&v40[16];
          *(v9 + 64) = 0;
          *&v40[16] = 0;
          *(v9 + 72) = 0;
          *(v9 + 80) = 0;
          *(v9 + 64) = *v41;
          *(v9 + 80) = *&v41[16];
          memset(v41, 0, sizeof(v41));
          *(v9 + 88) = v42;
          v11 = v9 + 96;
        }

        *&v57 = v11;
        v59 = v41;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v59);
        v59 = v40;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v59);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v6);
  }

  v59 = 0;
  v60 = 0;
  *&v61 = 0;
  v20 = [v35 siriResponses];
  std::vector<marrs::qr::orchestration::QRToken>::reserve(&v59, [v20 count]);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = [v35 siriResponses];
  v22 = [v21 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v22)
  {
    v23 = *v49;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [MarrsSiriNLUTypesConverter internalTokentoPluginToken:*(*(&v48 + 1) + 8 * j)];
        v25 = v60;
        if (v60 >= v61)
        {
          v60 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(&v59, v38);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(v46);
          }
        }

        else
        {
          v26 = *v38;
          *(v60 + 16) = __p[0];
          *v25 = v26;
          v38[1] = 0;
          __p[0] = 0;
          v38[0] = 0;
          v27 = *v40;
          *(v25 + 24) = *&__p[1];
          *(v25 + 40) = v27;
          *(v25 + 48) = 0;
          __p[2] = 0;
          *v40 = 0;
          __p[1] = 0;
          *(v25 + 56) = 0;
          *(v25 + 64) = 0;
          *(v25 + 48) = *&v40[8];
          *(v25 + 64) = *v41;
          *&v40[8] = 0;
          *&v40[16] = 0;
          *v41 = 0;
          v28 = *&v41[8];
          *(v25 + 88) = v42;
          *(v25 + 72) = v28;
          v29 = v43;
          *(v25 + 120) = v44;
          *(v25 + 104) = v29;
          v44 = 0;
          v43 = 0uLL;
          *(v25 + 128) = v45;
          v30 = v46;
          *(v25 + 152) = v47;
          *(v25 + 136) = v30;
          v47 = 0;
          v46 = 0uLL;
          v60 = v25 + 160;
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43);
        }

        v58 = &v40[8];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v58);
        if ((v40[7] & 0x80000000) != 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v38[0]);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v22);
  }

  v34->var0.var0 = 0;
  v34->var0.var1 = 0;
  v34->var0.var2 = 0;
  std::vector<marrs::qr::orchestration::QRUtterance>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(v34, v56, v57, 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 5));
  *&v34->var1.var0 = 0u;
  *&v34->var1.var2 = 0u;
  *&v34->var2.var1 = 0u;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v34->var2, v59, v60, 0xCCCCCCCCCCCCCCCDLL * ((v60 - v59) >> 5));
  v31 = [v35 locale];
  [MarrsSiriNLUTypesConverter NSString2StdString:v31];
  LOBYTE(v34[1].var0.var0) = [v35 tap2edit];
  v34[1].var0.var1 = [v35 startTimestamp];

  v38[0] = &v59;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v38);
  v38[0] = &v56;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](v38);

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)fromPluginUtterance:(QRUtterance *)a3
{
  v4 = objc_opt_new();
  var0 = a3[1].var0.var0;
  for (i = a3[1].var0.var1; var0 != i; var0 = (var0 + 160))
  {
    marrs::qr::orchestration::QRToken::QRToken(&v33, var0);
    marrs::qr::orchestration::QRToken::QRToken(&v25, &v33);
    v7 = [MarrsSiriNLUTypesConverter internalTokenfromPluginToken:&v25];
    [v4 addObject:v7];

    if (v32 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    v41 = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    v41 = v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  v8 = objc_opt_new();
  var1 = a3[1].var1.var0.var1.var1;
  for (j = *(&a3[1].var1.var0.var1 + 2); var1 != j; var1 = (var1 + 160))
  {
    marrs::qr::orchestration::QRToken::QRToken(&v33, var1);
    marrs::qr::orchestration::QRToken::QRToken(&v17, &v33);
    v11 = [MarrsSiriNLUTypesConverter fromPluginToken:&v17];
    [v8 addObject:v11];

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    v41 = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    v41 = v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277D5DE70]);
  v13 = [MarrsSiriNLUTypesConverter fromPluginUuid:a3->var0.var0, a3->var0.var1];
  [v12 setAsrId:v13];

  if (*(&a3->var1.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, a3->var1.var0.var1.var0, a3->var1.var0.var1.var1);
  }

  else
  {
    v16 = a3->var1;
  }

  v14 = [MarrsSiriNLUTypesConverter stdString2NSString:&v16];
  [v12 setUtterance:v14];

  if (*(&v16.var0.var1 + 23) < 0)
  {
    operator delete(v16.var0.var1.var0);
  }

  [v12 setNluInternalTokens:{v4, *v16.var0.var0.var0, *(&v16.var0.var1 + 2)}];
  [v12 setAsrUtteranceTokens:v8];
  [v12 setConfidence:*&a3[2].var0.var1];

  return v12;
}

+ (QRUtterance)toPluginUtterance:(QRUtterance *__return_ptr)retstr
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = v1;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v4 = [v3 nluInternalTokens];
  std::vector<marrs::qr::orchestration::QRToken>::reserve(&v56, [v4 count]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = [v3 nluInternalTokens];
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v6)
  {
    v7 = *v53;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [MarrsSiriNLUTypesConverter internalTokentoPluginToken:*(*(&v52 + 1) + 8 * i)];
        v9 = v57;
        if (v57 >= v58)
        {
          v57 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(&v56, v39);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v10 = *v39;
          *(v57 + 16) = v40;
          *v9 = v10;
          v39[1] = 0;
          v40 = 0;
          v39[0] = 0;
          v11 = v42;
          *(v9 + 24) = v41;
          *(v9 + 40) = v11;
          *(v9 + 48) = 0;
          v42 = 0;
          v41 = 0uLL;
          *(v9 + 56) = 0;
          *(v9 + 64) = 0;
          *(v9 + 48) = v43;
          *(v9 + 64) = v44;
          v43 = 0uLL;
          v44 = 0;
          v12 = v45;
          *(v9 + 88) = v46;
          *(v9 + 72) = v12;
          v13 = v47;
          *(v9 + 120) = v48;
          *(v9 + 104) = v13;
          v48 = 0;
          v47 = 0uLL;
          *(v9 + 128) = v49;
          v14 = __p;
          *(v9 + 152) = v51;
          *(v9 + 136) = v14;
          v51 = 0;
          __p = 0uLL;
          v57 = v9 + 160;
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47);
        }

        v36 = &v43;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0]);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v6);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v15 = [v3 asrUtteranceTokens];
  std::vector<marrs::qr::orchestration::QRToken>::reserve(&v36, [v15 count]);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = [v3 asrUtteranceTokens];
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v60 count:16];
  if (v17)
  {
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [MarrsSiriNLUTypesConverter toPluginToken:*(*(&v32 + 1) + 8 * j)];
        v20 = v37;
        if (v37 >= v38)
        {
          v37 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(&v36, v39);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v21 = *v39;
          *(v37 + 16) = v40;
          *v20 = v21;
          v39[1] = 0;
          v40 = 0;
          v39[0] = 0;
          v22 = v42;
          *(v20 + 24) = v41;
          *(v20 + 40) = v22;
          *(v20 + 48) = 0;
          v42 = 0;
          v41 = 0uLL;
          *(v20 + 56) = 0;
          *(v20 + 64) = 0;
          *(v20 + 48) = v43;
          *(v20 + 64) = v44;
          v43 = 0uLL;
          v44 = 0;
          v23 = v45;
          *(v20 + 88) = v46;
          *(v20 + 72) = v23;
          v24 = v47;
          *(v20 + 120) = v48;
          *(v20 + 104) = v24;
          v48 = 0;
          v47 = 0uLL;
          *(v20 + 128) = v49;
          v25 = __p;
          *(v20 + 152) = v51;
          *(v20 + 136) = v25;
          v51 = 0;
          __p = 0uLL;
          v37 = v20 + 160;
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47);
        }

        v59 = &v43;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v59);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0]);
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v32 objects:v60 count:16];
    }

    while (v17);
  }

  v26 = [v3 asrId];
  retstr->var0.var0 = [MarrsSiriNLUTypesConverter toPluginUuid:v26];
  retstr->var0.var1 = v27;
  v28 = [v3 utterance];
  [MarrsSiriNLUTypesConverter NSString2StdString:v28];
  retstr[1].var0.var0 = 0;
  retstr[1].var0.var1 = 0;
  retstr[1].var1.var0.var1.var0 = 0;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&retstr[1], v56, v57, 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 5));
  retstr[1].var1.var0.var1.var1 = 0;
  *(&retstr[1].var1.var0.var1 + 2) = 0;
  retstr[2].var0.var0 = 0;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&retstr[1].var1.var0.var1.var1, v36, v37, 0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 5));
  [v3 confidence];
  retstr[2].var0.var1 = v29;

  v39[0] = &v36;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v39);
  v39[0] = &v56;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v39);

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)internalTokenfromPluginToken:(QRToken *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D5DED0]);
  if (*(&a3->var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, a3->var0.var0.var1.var0, a3->var0.var0.var1.var1);
  }

  else
  {
    v11 = *a3;
  }

  v5 = [MarrsSiriNLUTypesConverter stdString2NSString:&v11];
  [v4 setValue:v5];

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (*(&a3[1].var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, a3[1].var0.var0.var1.var0, a3[1].var0.var0.var1.var1);
  }

  else
  {
    v10 = a3[1];
  }

  v6 = [MarrsSiriNLUTypesConverter stdString2NSString:&v10];
  [v4 setCleanValue:v6];

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  memset(v9, 0, sizeof(v9));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v9, a3[2].var0.var0.var1.var0, a3[2].var0.var0.var1.var1, 0xAAAAAAAAAAAAAAABLL * ((a3[2].var0.var0.var1.var1 - a3[2].var0.var0.var1.var0) >> 3));
  v7 = [MarrsSiriNLUTypesConverter StdVectorStdString2NSMutableArrayNSString:v9];
  [v4 setNormalizedValues:v7];

  v12 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  [v4 setIsSignificant:a3[3].var0.var0.var0.var0[0]];
  [v4 setIsWhitespace:a3[3].var0.var0.var0.var0[1]];

  return v4;
}

+ (id)fromPluginToken:(QRToken *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D5DE68]);
  if (*(&a3->var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, a3->var0.var0.var1.var0, a3->var0.var0.var1.var1);
  }

  else
  {
    v9 = *a3;
  }

  v5 = [MarrsSiriNLUTypesConverter stdString2NSString:&v9];
  [v4 setValue:v5];

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  [v4 setStartIndex:LODWORD(a3[3].var0.var0.var1.var1)];
  [v4 setEndIndex:*(&a3[3].var0.var0.var1 + 4)];
  [v4 setAsrConfidence:*&a3[4].var0.var0.var1.var0];
  if (a3[5].var0.var0.var0.var0[7] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3[4].var0.var0.var1.var1, *(&a3[4].var0.var0.var1 + 2));
  }

  else
  {
    __p = *(a3 + 104);
  }

  v6 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
  [v4 setPhoneSequence:v6];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v4 setRemoveSpaceAfter:{a3[5].var0.var0.var0.var0[8], *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];

  return v4;
}

+ (QRToken)internalTokentoPluginToken:(QRToken *__return_ptr)retstr
{
  v3 = v1;
  v4 = [v3 value];
  [MarrsSiriNLUTypesConverter NSString2StdString:v4];
  v5 = [v3 cleanValue];
  [MarrsSiriNLUTypesConverter NSString2StdString:v5];
  v6 = [v3 normalizedValues];
  [MarrsSiriNLUTypesConverter NSMutableArrayNSString2StdVectorStdString:v6];
  marrs::qr::orchestration::QRToken::QRToken(retstr, &v11, &__p, v8, [v3 isSignificant], objc_msgSend(v3, "isWhitespace"));
  v13 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  retstr[3].var0.var0.var1.var1 = [v3 begin];
  *(&retstr[3].var0.var0.var1 + 2) = [v3 end];
  retstr[4].var0.var0.var1.var0 = 0x408F400000000000;
  MEMORY[0x223DC1FB0](&retstr[4].var0.var0.var1.var1, "");
  retstr[5].var0.var0.var0.var0[8] = 0;

  return result;
}

+ (QRToken)toPluginToken:(QRToken *__return_ptr)retstr
{
  v3 = v1;
  v4 = [v3 value];
  [MarrsSiriNLUTypesConverter NSString2StdString:v4];
  marrs::qr::orchestration::QRToken::QRToken(retstr, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  retstr[3].var0.var0.var1.var1 = [v3 startIndex];
  *(&retstr[3].var0.var0.var1 + 2) = [v3 endIndex];
  [v3 asrConfidence];
  retstr[4].var0.var0.var1.var0 = v5;
  v6 = [v3 phoneSequence];
  [MarrsSiriNLUTypesConverter NSString2StdString:v6];
  if (retstr[5].var0.var0.var0.var0[7] < 0)
  {
    operator delete(retstr[4].var0.var0.var1.var1);
  }

  *&retstr[4].var0.var0.var1.var1 = *__p;
  retstr[5].var0.var0.var1.var0 = v9;
  HIBYTE(v9) = 0;
  LOBYTE(__p[0]) = 0;

  retstr[5].var0.var0.var0.var0[8] = [v3 removeSpaceAfter];
  return result;
}

+ (id)fromPluginUuid:(Uuid)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v5 setLowInt:var1];
  [v5 setHighInt:var0];

  return v5;
}

+ (Uuid)toPluginUuid:(id)a3
{
  v3 = a3;
  v4 = [v3 highInt];
  v5 = [v3 lowInt];

  v6 = v4;
  v7 = v5;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

+ (int)fromPluginRepetitionType:(int)a3
{
  if (a3 >= 4)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

+ (id)StdVectorStdString2NSMutableArrayNSString:()vector<std:(std::allocator<std::string>> *)a3 :string
{
  v4 = objc_opt_new();
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      if (SHIBYTE(var0->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, var0->__r_.__value_.__l.__data_, var0->__r_.__value_.__l.__size_);
      }

      else
      {
        v11 = *var0;
      }

      v7 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v11;
      }

      v8 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
      [v4 addObject:v8];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v7 < 0)
        {
LABEL_13:
          operator delete(v11.__r_.__value_.__l.__data_);
        }
      }

      else if (v7 < 0)
      {
        goto LABEL_13;
      }

      ++var0;
    }

    while (var0 != var1);
  }

  return v4;
}

+ (id)stdString2NSString:()basic_string<char
{
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:var0];
}

+ (vector<std::string,)NSMutableArrayNSString2StdVectorStdString:(id)a2
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (v5)
  {
    std::vector<std::string>::reserve(retstr, [v5 count]);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = *v29;
      v9 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          [MarrsSiriNLUTypesConverter NSString2StdString:*(*(&v28 + 1) + 8 * i)];
          var1 = retstr->var1;
          var2 = retstr->var2;
          if (var1 >= var2)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((var1 - retstr->var0) >> 3);
            v14 = v13 + 1;
            if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v15 = 0xAAAAAAAAAAAAAAABLL * ((var2 - retstr->var0) >> 3);
            if (2 * v15 > v14)
            {
              v14 = 2 * v15;
            }

            if (v15 >= 0x555555555555555)
            {
              v16 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v16 = v14;
            }

            v32.__end_cap_.__value_ = retstr;
            if (v16)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v16);
            }

            v17 = 24 * v13;
            *(v17 + 16) = v27;
            *v17 = *__p;
            v27 = 0;
            *__p = 0uLL;
            v18 = (24 * v13 + 24);
            v19 = retstr->var1 - retstr->var0;
            v20 = (24 * v13 - v19);
            memcpy((v17 - v19), retstr->var0, v19);
            var0 = retstr->var0;
            retstr->var0 = v20;
            retstr->var1 = v18;
            v22 = retstr->var2;
            retstr->var2 = 0;
            v32.__end_ = var0;
            v32.__end_cap_.__value_ = v22;
            v32.__first_ = var0;
            v32.__begin_ = var0;
            std::__split_buffer<std::string>::~__split_buffer(&v32);
            retstr->var1 = v18;
            v6 = v9;
          }

          else
          {
            *(var1 + 2) = v27;
            *var1 = *__p;
            retstr->var1 = var1 + 24;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

+ (basic_string<char,)NSString2StdString:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v5 = v3;
  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(retstr, [v3 UTF8String]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(retstr, "");
  }

  return result;
}

@end