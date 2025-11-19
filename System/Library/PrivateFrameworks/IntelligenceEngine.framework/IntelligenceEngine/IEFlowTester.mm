@interface IEFlowTester
+ (id)getTestList:(id)a3;
+ (id)getTestList:(id)a3 flowId:(id)a4;
+ (id)runAllTests:(id)a3;
+ (id)runFileTests:(id)a3;
@end

@implementation IEFlowTester

+ (id)runAllTests:(id)a3
{
  IE_GetTemplateDirFromBundle(a3, v10);
  v3 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v3 = v10[1];
  }

  if (v3)
  {
    memset(v9, 0, sizeof(v9));
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    siri::intelligence::TestSuite::LoadTests(v9, v10);
    if ((v8[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    memset(v6, 0, sizeof(v6));
    siri::intelligence::TestRunner::RunTestSuite(v9, v6, &__p);
    v12 = v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
    v4 = ConvertTestResults(v9, &__p);
    v6[0] = v8;
    std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](v6);
    __p = &v9[1] + 8;
    std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = v9;
    std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v4 = objc_opt_new();
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  return v4;
}

+ (id)runFileTests:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
    siri::intelligence::FindTemplateDir(&__p, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v5 = v9[1];
    }

    if (v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, [v4 UTF8String]);
      siri::intelligence::Configuration::GetFlowIdFromPath(&__p);
    }

    v6 = MakeEmptyTestResults();
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  else
  {
    v6 = MakeEmptyTestResults();
  }

  return v6;
}

+ (id)getTestList:(id)a3 flowId:(id)a4
{
  v5 = a3;
  v6 = a4;
  IE_GetTemplateDirFromBundle(v5, v36);
  v7 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v7 = v36[1];
  }

  if (v7)
  {
    v21 = v5;
    v8 = objc_opt_new();
    if (v6)
    {
      v9 = [v6 UTF8String];
    }

    else
    {
      v9 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v34, v9);
    memset(v33, 0, sizeof(v33));
    siri::intelligence::TestSuite::LoadTests(v33, v36);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<siri::intelligence::TestCase>::__init_with_size[abi:ne200100]<siri::intelligence::TestCase*,siri::intelligence::TestCase*>(&v30, *&v33[0], *(&v33[0] + 1), 0x86BCA1AF286BCA1BLL * ((*(&v33[0] + 1) - *&v33[0]) >> 3));
    v11 = v30;
    for (i = v31; v11 != i; v11 = (v11 + 152))
    {
      siri::intelligence::TestCase::TestCase(&v23, v11);
      v13 = objc_opt_new();
      [v13 setStatus:0];
      [v13 setSummary:&stru_28671CC40];
      v14 = MEMORY[0x277CCACA8];
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v24;
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v22;
      }

      else
      {
        v15 = v22.__r_.__value_.__r.__words[0];
      }

      v16 = [v14 stringWithUTF8String:{v15, v21}];
      [v13 setFlowId:v16];

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      v17 = MEMORY[0x277CCACA8];
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v25;
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v22;
      }

      else
      {
        v18 = v22.__r_.__value_.__r.__words[0];
      }

      v19 = [v17 stringWithUTF8String:v18];
      [v13 setTestName:v19];

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      [v8 addObject:v13];

      v22.__r_.__value_.__r.__words[0] = &v29;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
      v22.__r_.__value_.__r.__words[0] = &v28;
      std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v22);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    v23.__r_.__value_.__r.__words[0] = &v30;
    std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](&v23);
    v10 = MakeEmptyTestResults();
    [v10 setResults:v8];
    v23.__r_.__value_.__r.__words[0] = &v33[1] + 8;
    std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v23);
    v23.__r_.__value_.__r.__words[0] = v33;
    std::vector<siri::intelligence::TestCase>::__destroy_vector::operator()[abi:ne200100](&v23);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    v5 = v21;
  }

  else
  {
    v10 = MakeEmptyTestResults();
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  return v10;
}

+ (id)getTestList:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
    siri::intelligence::FindTemplateDir(&__p, v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v5 = v10[1];
    }

    if (v5)
    {
      v6 = [v4 UTF8String];
      std::string::basic_string[abi:ne200100]<0>(&__p, v6);
      siri::intelligence::Configuration::GetFlowIdFromPath(&__p);
    }

    v7 = MakeEmptyTestResults();
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    v7 = MakeEmptyTestResults();
  }

  return v7;
}

@end