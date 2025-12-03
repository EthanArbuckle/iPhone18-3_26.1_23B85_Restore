@interface DSPController
- (DSPController)initWithBundleID:(id)d withLogger:(id)logger andADMConfigurator:(id)configurator andHALDSPFactory:(id)factory;
- (id).cxx_construct;
- (id)adaptToConfigurationChange:(id)change error:(id *)error inputStreamIndicesInIOProc:(id)proc outputStreamIndicesInIOProc:(id)oProc frameBufferSize:(unint64_t)size;
- (id)negotiateConfigurationChange:(id)change error:(id *)error;
- (void)dealloc;
- (void)startIO;
- (void)stopIO;
@end

@implementation DSPController

- (DSPController)initWithBundleID:(id)d withLogger:(id)logger andADMConfigurator:(id)configurator andHALDSPFactory:(id)factory
{
  v28[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  loggerCopy = logger;
  configuratorCopy = configurator;
  factoryCopy = factory;
  v26.receiver = self;
  v26.super_class = DSPController;
  v14 = [(DSPController *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->admConfigurator, configurator);
    if (factoryCopy && [factoryCopy conformsToProtocol:&unk_28580B0B8])
    {
      createFactory = factoryCopy;
    }

    else
    {
      v17 = [[CoreAudioOrchestration_ADM_Loader alloc] initWithLogger:loggerCopy];
      admLoader = v15->admLoader;
      v15->admLoader = v17;

      createFactory = [(CoreAudioOrchestration_ADM_Loader *)v15->admLoader createFactory];
    }

    admFactory = v15->admFactory;
    v15->admFactory = createFactory;

    v20 = v15->admFactory;
    v27[0] = @"client bundle identifier";
    v27[1] = @"client unique identifier";
    v28[0] = dCopy;
    v28[1] = @"Isolated ADM DSP";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v22 = [(HAL_DSP_Factory *)v20 createProcessor:v21 withHost:0];
    dspIOProcessor = v15->dspIOProcessor;
    v15->dspIOProcessor = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)negotiateConfigurationChange:(id)change error:(id *)error
{
  v4 = [(HAL_DSP_IOProcessor *)self->dspIOProcessor negotiateConfigurationChange:change error:error];

  return v4;
}

- (id)adaptToConfigurationChange:(id)change error:(id *)error inputStreamIndicesInIOProc:(id)proc outputStreamIndicesInIOProc:(id)oProc frameBufferSize:(unint64_t)size
{
  v38 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  procCopy = proc;
  oProcCopy = oProc;
  if (self->admCallbacks.m_unregisterClientCallback.__f_.__f_)
  {
    std::function<void ()>::operator()(&self->admCallbacks.m_unregisterClientCallback, 1);
  }

  v15 = [(HAL_DSP_IOProcessor *)self->dspIOProcessor adaptToConfigurationChange:changeCopy withCallbacks:&self->admCallbacks error:error];
  v16 = [procCopy count];
  std::vector<unsigned long>::vector[abi:ne200100](&v29, v16);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = [procCopy objectAtIndex:i];
      unsignedLongLongValue = [v18 unsignedLongLongValue];
      *(v29 + i) = unsignedLongLongValue;
    }
  }

  v20 = [oProcCopy count];
  std::vector<unsigned long>::vector[abi:ne200100](&v27, v20);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = [oProcCopy objectAtIndex:j];
      unsignedLongLongValue2 = [v22 unsignedLongLongValue];
      *(v27 + j) = unsignedLongLongValue2;
    }
  }

  v31 = 1;
  sizeCopy = size;
  *v34 = 0u;
  v35 = 0u;
  *__p = 0u;
  v37 = 0;
  if (error)
  {
    if (!*error)
    {
      std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(v33, &self->admCallbacks.m_ioCallback);
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v34[1], v29, v30, (v30 - v29) >> 3);
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, v27, v28, (v28 - v27) >> 3);
      if (self->admCallbacks.m_registerClientCallback.__f_.__f_)
      {
        std::function<void ()>::operator()(&self->admCallbacks, 1);
      }
    }
  }

  [(ADMConfigurationProtocol *)self->admConfigurator configure:&v31];
  v24 = v15;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[1])
  {
    *&v35 = v34[1];
    operator delete(v34[1]);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v33);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)dealloc
{
  if (self->admCallbacks.m_unregisterClientCallback.__f_.__f_)
  {
    std::function<void ()>::operator()(&self->admCallbacks.m_unregisterClientCallback, 1);
  }

  v3.receiver = self;
  v3.super_class = DSPController;
  [(DSPController *)&v3 dealloc];
}

- (void)startIO
{
  if (self->admCallbacks.m_beginProcessingCallback.__f_.__f_)
  {
    std::function<void ()>::operator()(&self->admCallbacks.m_beginProcessingCallback, 1);
  }
}

- (void)stopIO
{
  if (self->admCallbacks.m_endProcessingCallback.__f_.__f_)
  {
    std::function<void ()>::operator()(&self->admCallbacks.m_endProcessingCallback, 1);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 11) = 0;
  *(self + 15) = 0;
  *(self + 19) = 0;
  *(self + 23) = 0;
  return self;
}

@end