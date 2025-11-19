@interface IEFlowTestBuilder
- (BOOL)addToTestFile:(id)a3 flowId:(id)a4 testName:(id)a5 description:(id)a6;
- (BOOL)addToTestFile:(id)a3 testName:(id)a4 description:(id)a5;
- (TestCaseBuilder)mBuilder;
- (void)assertResponseAllIds:(id)a3;
- (void)assertResponseAnyId:(id)a3;
- (void)gotoResponse:(id)a3;
- (void)sendEvent:(id)a3;
- (void)setMBuilder:(TestCaseBuilder)a3;
- (void)setVariable:(id)a3 value:(id)a4;
- (void)switchActivity:(id)a3;
@end

@implementation IEFlowTestBuilder

- (void)sendEvent:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v3 = [v6 eventId];
    if (v3)
    {
      v4 = [v7 eventId];
      v8 = [v4 UTF8String];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v8 = "";
    }
  }

  else
  {
    v9 = 0;
    v8 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v22, v8);
  if (v9)
  {
  }

  if (v7)
  {

    v3 = [v7 name];
    if (v3)
    {
      v4 = [v7 name];
      v10 = [v4 UTF8String];
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = "";
    }
  }

  else
  {
    v11 = 0;
    v10 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v10);
  if (v11)
  {
  }

  if (!v7)
  {
    lpsrc = 0;
    v20 = 0;
    p_mBuilder = &self->_mBuilder;
LABEL_24:
    v17 = 0;
    v18 = 0;
    goto LABEL_25;
  }

  v12 = [v7 slots];
  if (v12)
  {
    v13 = [v7 slots];
    IE_NSObjectToVariable(v13, &lpsrc);
  }

  else
  {
    lpsrc = 0;
    v20 = 0;
  }

  p_mBuilder = &self->_mBuilder;
  if (!lpsrc)
  {
    goto LABEL_24;
  }

  v15 = **lpsrc;
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_25:
  siri::intelligence::TestCaseBuilder::SendIntent(p_mBuilder, v22, &__p, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }
}

- (void)assertResponseAllIds:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  memset(v18, 0, sizeof(v18));
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (v10)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](v18, __p);
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }
  }

  siri::intelligence::TestCaseBuilder::AssertResponseAllIds(&self->_mBuilder, v18);
  __p[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assertResponseAnyId:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  memset(v18, 0, sizeof(v18));
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (v10)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](v18, __p);
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }
  }

  siri::intelligence::TestCaseBuilder::AssertResponseAnyId(&self->_mBuilder, v18);
  __p[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setVariable:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 UTF8String];
  }

  else
  {
    v8 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v8);
  IE_NSObjectToVariable(v7, &v11);
  v9 = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  siri::intelligence::TestCaseBuilder::SetVariable(&self->_mBuilder, &__p, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)gotoResponse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 UTF8String];
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v6);
  siri::intelligence::TestCaseBuilder::GotoResponse(&self->_mBuilder, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)switchActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 UTF8String];
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v6);
  siri::intelligence::TestCaseBuilder::SwitchActivity(&self->_mBuilder, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (BOOL)addToTestFile:(id)a3 flowId:(id)a4 testName:(id)a5 description:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [v10 UTF8String];
  }

  else
  {
    v14 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, v14);
  if (v11)
  {
    v15 = [v11 UTF8String];
  }

  else
  {
    v15 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v21, v15);
  if (v12)
  {
    v16 = [v12 UTF8String];
  }

  else
  {
    v16 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, v16);
  if (v13)
  {
    v17 = [v13 UTF8String];
  }

  else
  {
    v17 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v17);
  siri::intelligence::TestCaseBuilder::AddToTestFile(&self->_mBuilder, &v22, &v21, &__str, __p);
}

- (BOOL)addToTestFile:(id)a3 testName:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 UTF8String];
  }

  else
  {
    v11 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, v11);
  if (v9)
  {
    v12 = [v9 UTF8String];
  }

  else
  {
    v12 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v12);
  if (v10)
  {
    v13 = [v10 UTF8String];
  }

  else
  {
    v13 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v13);
  siri::intelligence::TestCaseBuilder::AddToTestFile(&self->_mBuilder, &v17);
}

- (TestCaseBuilder)mBuilder
{
  cntrl = self->_mBuilder.mImpl.__cntrl_;
  *v2 = self->_mBuilder.mImpl.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.mImpl.__cntrl_ = a2;
  result.mImpl.__ptr_ = self;
  return result;
}

- (void)setMBuilder:(TestCaseBuilder)a3
{
  v4 = *a3.mImpl.__ptr_;
  v3 = *(a3.mImpl.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mBuilder.mImpl.__cntrl_;
  self->_mBuilder.mImpl.__ptr_ = v4;
  self->_mBuilder.mImpl.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

@end