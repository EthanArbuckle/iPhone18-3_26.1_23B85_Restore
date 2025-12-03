@interface IEFlowTestBuilder
- (BOOL)addToTestFile:(id)file flowId:(id)id testName:(id)name description:(id)description;
- (BOOL)addToTestFile:(id)file testName:(id)name description:(id)description;
- (TestCaseBuilder)mBuilder;
- (void)assertResponseAllIds:(id)ids;
- (void)assertResponseAnyId:(id)id;
- (void)gotoResponse:(id)response;
- (void)sendEvent:(id)event;
- (void)setMBuilder:(TestCaseBuilder)builder;
- (void)setVariable:(id)variable value:(id)value;
- (void)switchActivity:(id)activity;
@end

@implementation IEFlowTestBuilder

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v7 = eventCopy;
  if (eventCopy)
  {
    eventId = [eventCopy eventId];
    if (eventId)
    {
      eventId2 = [v7 eventId];
      uTF8String = [eventId2 UTF8String];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      uTF8String = "";
    }
  }

  else
  {
    v9 = 0;
    uTF8String = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v22, uTF8String);
  if (v9)
  {
  }

  if (v7)
  {

    eventId = [v7 name];
    if (eventId)
    {
      eventId2 = [v7 name];
      uTF8String2 = [eventId2 UTF8String];
      v11 = 1;
    }

    else
    {
      v11 = 0;
      uTF8String2 = "";
    }
  }

  else
  {
    v11 = 0;
    uTF8String2 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, uTF8String2);
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

  slots = [v7 slots];
  if (slots)
  {
    slots2 = [v7 slots];
    IE_NSObjectToVariable(slots2, &lpsrc);
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

- (void)assertResponseAllIds:(id)ids
{
  v20 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v5 = idsCopy;
  memset(v18, 0, sizeof(v18));
  if (idsCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = idsCopy;
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

- (void)assertResponseAnyId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = idCopy;
  memset(v18, 0, sizeof(v18));
  if (idCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = idCopy;
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

- (void)setVariable:(id)variable value:(id)value
{
  variableCopy = variable;
  valueCopy = value;
  if (variableCopy)
  {
    uTF8String = [variableCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, uTF8String);
  IE_NSObjectToVariable(valueCopy, &v11);
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

- (void)gotoResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (responseCopy)
  {
    uTF8String = [responseCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, uTF8String);
  siri::intelligence::TestCaseBuilder::GotoResponse(&self->_mBuilder, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)switchActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (activityCopy)
  {
    uTF8String = [activityCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, uTF8String);
  siri::intelligence::TestCaseBuilder::SwitchActivity(&self->_mBuilder, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (BOOL)addToTestFile:(id)file flowId:(id)id testName:(id)name description:(id)description
{
  fileCopy = file;
  idCopy = id;
  nameCopy = name;
  descriptionCopy = description;
  if (fileCopy)
  {
    uTF8String = [fileCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, uTF8String);
  if (idCopy)
  {
    uTF8String2 = [idCopy UTF8String];
  }

  else
  {
    uTF8String2 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v21, uTF8String2);
  if (nameCopy)
  {
    uTF8String3 = [nameCopy UTF8String];
  }

  else
  {
    uTF8String3 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, uTF8String3);
  if (descriptionCopy)
  {
    uTF8String4 = [descriptionCopy UTF8String];
  }

  else
  {
    uTF8String4 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, uTF8String4);
  siri::intelligence::TestCaseBuilder::AddToTestFile(&self->_mBuilder, &v22, &v21, &__str, __p);
}

- (BOOL)addToTestFile:(id)file testName:(id)name description:(id)description
{
  fileCopy = file;
  nameCopy = name;
  descriptionCopy = description;
  if (fileCopy)
  {
    uTF8String = [fileCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, uTF8String);
  if (nameCopy)
  {
    uTF8String2 = [nameCopy UTF8String];
  }

  else
  {
    uTF8String2 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, uTF8String2);
  if (descriptionCopy)
  {
    uTF8String3 = [descriptionCopy UTF8String];
  }

  else
  {
    uTF8String3 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, uTF8String3);
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

- (void)setMBuilder:(TestCaseBuilder)builder
{
  v4 = *builder.mImpl.__ptr_;
  v3 = *(builder.mImpl.__ptr_ + 1);
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