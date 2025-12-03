@interface _EARSpeechRecognitionActiveConfiguration
+ (id)activeConfigurationForEverything;
+ (id)activeConfigurationForNothing;
- (SpeechRecognizerActiveConfiguration)speechRecognizerActiveConfiguration;
- (id)_initWithActiveConfiguration:(const void *)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _EARSpeechRecognitionActiveConfiguration

+ (id)activeConfigurationForEverything
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)activeConfigurationForNothing
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E695DFD8] set];
  [v2 setSamplingRateFilter:v3];

  v4 = [MEMORY[0x1E695DFD8] set];
  [v2 setTaskTypeFilter:v4];

  v5 = [MEMORY[0x1E695DFD8] set];
  [v2 setFarFieldFilter:v5];

  v6 = [MEMORY[0x1E695DFD8] set];
  [v2 setDeviceIdFilter:v6];

  v7 = [MEMORY[0x1E695DFD8] set];
  [v2 setAneContextFilter:v7];

  v8 = [MEMORY[0x1E695DFD8] set];
  [v2 setCpuContextFilter:v8];

  v9 = [MEMORY[0x1E695DFD8] set];
  [v2 setGpuContextFilter:v9];

  v10 = [MEMORY[0x1E695DFD8] set];
  [v2 setAtypicalSpeechFilter:v10];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  samplingRateFilter = [(_EARSpeechRecognitionActiveConfiguration *)self samplingRateFilter];
  [v4 setSamplingRateFilter:samplingRateFilter];

  taskTypeFilter = [(_EARSpeechRecognitionActiveConfiguration *)self taskTypeFilter];
  [v4 setTaskTypeFilter:taskTypeFilter];

  farFieldFilter = [(_EARSpeechRecognitionActiveConfiguration *)self farFieldFilter];
  [v4 setFarFieldFilter:farFieldFilter];

  deviceIdFilter = [(_EARSpeechRecognitionActiveConfiguration *)self deviceIdFilter];
  [v4 setDeviceIdFilter:deviceIdFilter];

  aneContextFilter = [(_EARSpeechRecognitionActiveConfiguration *)self aneContextFilter];
  [v4 setAneContextFilter:aneContextFilter];

  cpuContextFilter = [(_EARSpeechRecognitionActiveConfiguration *)self cpuContextFilter];
  [v4 setCpuContextFilter:cpuContextFilter];

  gpuContextFilter = [(_EARSpeechRecognitionActiveConfiguration *)self gpuContextFilter];
  [v4 setGpuContextFilter:gpuContextFilter];

  atypicalSpeechFilter = [(_EARSpeechRecognitionActiveConfiguration *)self atypicalSpeechFilter];
  [v4 setAtypicalSpeechFilter:atypicalSpeechFilter];

  return v4;
}

- (id)_initWithActiveConfiguration:(const void *)configuration
{
  v14.receiver = self;
  v14.super_class = _EARSpeechRecognitionActiveConfiguration;
  v4 = [(_EARSpeechRecognitionActiveConfiguration *)&v14 init];
  if (*(configuration + 24) == 1)
  {
    v5 = EARHelpers::ContainerToNSSet<std::set<unsigned int>>(configuration);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setSamplingRateFilter:v5];
  }

  if (*(configuration + 56) == 1)
  {
    v6 = EARHelpers::ContainerToNSSet<std::set<std::string>>(configuration + 4);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setTaskTypeFilter:v6];
  }

  if (*(configuration + 120) == 1)
  {
    v7 = EARHelpers::ContainerToNSSet<std::set<BOOL>>(configuration + 12);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setFarFieldFilter:v7];
  }

  if (*(configuration + 88) == 1)
  {
    v8 = EARHelpers::ContainerToNSSet<std::set<std::string>>(configuration + 8);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setDeviceIdFilter:v8];
  }

  if (*(configuration + 152) == 1)
  {
    v9 = EARHelpers::ContainerToNSSet<std::set<BOOL>>(configuration + 16);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setAtypicalSpeechFilter:v9];
  }

  if (*(configuration + 184) == 1)
  {
    v10 = EARHelpers::ContainerToNSSet<std::set<std::string>>(configuration + 20);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setAneContextFilter:v10];
  }

  if (*(configuration + 216) == 1)
  {
    v11 = EARHelpers::ContainerToNSSet<std::set<std::string>>(configuration + 24);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setCpuContextFilter:v11];
  }

  if (*(configuration + 248) == 1)
  {
    v12 = EARHelpers::ContainerToNSSet<std::set<std::string>>(configuration + 28);
    [(_EARSpeechRecognitionActiveConfiguration *)v4 setGpuContextFilter:v12];
  }

  return v4;
}

- (SpeechRecognizerActiveConfiguration)speechRecognizerActiveConfiguration
{
  v60 = *MEMORY[0x1E69E9840];
  retstr->var0.var0.var0 = 0;
  retstr->var0.var1 = 0;
  retstr->var1.var0.var0 = 0;
  p_var1 = &retstr->var1;
  retstr->var1.var1 = 0;
  retstr->var2.var0.var0 = 0;
  p_var2 = &retstr->var2;
  retstr->var3.var0.var0 = 0;
  p_var3 = &retstr->var3;
  retstr->var2.var1 = 0;
  retstr->var3.var1 = 0;
  retstr->var4.var0.var0 = 0;
  p_var4 = &retstr->var4;
  retstr->var4.var1 = 0;
  retstr->var5.var0.var0 = 0;
  p_var5 = &retstr->var5;
  retstr->var6.var0.var0 = 0;
  p_var6 = &retstr->var6;
  retstr->var5.var1 = 0;
  retstr->var6.var1 = 0;
  retstr->var7.var0.var0 = 0;
  p_var7 = &retstr->var7;
  retstr->var7.var1 = 0;
  samplingRateFilter = [(_EARSpeechRecognitionActiveConfiguration *)self samplingRateFilter];

  if (samplingRateFilter)
  {
    [(_EARSpeechRecognitionActiveConfiguration *)self samplingRateFilter];
    v51 = 0;
    v52 = 0;
    v50 = &v51;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v9 = v57 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v54 objects:&v58 count:16];
    if (v10)
    {
      v11 = *v55;
      do
      {
        v12 = 0;
        do
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v54 + 1) + 8 * v12);
          unsignedIntegerValue = [v13 unsignedIntegerValue];
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&v50, &unsignedIntegerValue);

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v54 objects:&v58 count:16];
      }

      while (v10);
    }

    std::optional<std::set<unsigned int>>::operator=[abi:ne200100]<std::set<unsigned int>,void>(retstr, &v50);
    std::__tree<int>::destroy(&v50, v51);
  }

  taskTypeFilter = [(_EARSpeechRecognitionActiveConfiguration *)self taskTypeFilter];
  v15 = taskTypeFilter == 0;

  if (!v15)
  {
    taskTypeFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self taskTypeFilter];
    EARHelpers::StdSetOfStringsFromNSSet(taskTypeFilter2, &v58);
    std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(p_var1, &v58);
    std::__tree<std::string>::destroy(&v58, v59);
  }

  farFieldFilter = [(_EARSpeechRecognitionActiveConfiguration *)self farFieldFilter];
  v18 = farFieldFilter == 0;

  if (!v18)
  {
    farFieldFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self farFieldFilter];
    v51 = 0;
    v52 = 0;
    v50 = &v51;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v20 = farFieldFilter2;
    v21 = [v20 countByEnumeratingWithState:&v54 objects:&v58 count:16];
    if (v21)
    {
      v22 = *v55;
      do
      {
        v23 = 0;
        do
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v54 + 1) + 8 * v23);
          LOBYTE(unsignedIntegerValue) = [v24 BOOLValue];
          std::__tree<BOOL>::__emplace_unique_key_args<BOOL,BOOL>(&v50, &unsignedIntegerValue);

          ++v23;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v54 objects:&v58 count:16];
      }

      while (v21);
    }

    std::optional<std::set<unsigned int>>::operator=[abi:ne200100]<std::set<unsigned int>,void>(p_var3, &v50);
    std::__tree<int>::destroy(&v50, v51);
  }

  deviceIdFilter = [(_EARSpeechRecognitionActiveConfiguration *)self deviceIdFilter];
  v26 = deviceIdFilter == 0;

  if (!v26)
  {
    deviceIdFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self deviceIdFilter];
    EARHelpers::StdSetOfStringsFromNSSet(deviceIdFilter2, &v58);
    std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(p_var2, &v58);
    std::__tree<std::string>::destroy(&v58, v59);
  }

  atypicalSpeechFilter = [(_EARSpeechRecognitionActiveConfiguration *)self atypicalSpeechFilter];
  v29 = atypicalSpeechFilter == 0;

  if (!v29)
  {
    atypicalSpeechFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self atypicalSpeechFilter];
    v51 = 0;
    v52 = 0;
    v50 = &v51;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = atypicalSpeechFilter2;
    v32 = [v31 countByEnumeratingWithState:&v54 objects:&v58 count:16];
    if (v32)
    {
      v33 = *v55;
      do
      {
        v34 = 0;
        do
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v54 + 1) + 8 * v34);
          LOBYTE(unsignedIntegerValue) = [v35 BOOLValue];
          std::__tree<BOOL>::__emplace_unique_key_args<BOOL,BOOL>(&v50, &unsignedIntegerValue);

          ++v34;
        }

        while (v32 != v34);
        v32 = [v31 countByEnumeratingWithState:&v54 objects:&v58 count:16];
      }

      while (v32);
    }

    std::optional<std::set<unsigned int>>::operator=[abi:ne200100]<std::set<unsigned int>,void>(p_var4, &v50);
    std::__tree<int>::destroy(&v50, v51);
  }

  aneContextFilter = [(_EARSpeechRecognitionActiveConfiguration *)self aneContextFilter];
  v37 = aneContextFilter == 0;

  if (!v37)
  {
    aneContextFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self aneContextFilter];
    EARHelpers::StdSetOfStringsFromNSSet(aneContextFilter2, &v58);
    std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(p_var5, &v58);
    std::__tree<std::string>::destroy(&v58, v59);
  }

  cpuContextFilter = [(_EARSpeechRecognitionActiveConfiguration *)self cpuContextFilter];
  v40 = cpuContextFilter == 0;

  if (!v40)
  {
    cpuContextFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self cpuContextFilter];
    EARHelpers::StdSetOfStringsFromNSSet(cpuContextFilter2, &v58);
    std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(p_var6, &v58);
    std::__tree<std::string>::destroy(&v58, v59);
  }

  gpuContextFilter = [(_EARSpeechRecognitionActiveConfiguration *)self gpuContextFilter];
  v43 = gpuContextFilter == 0;

  if (!v43)
  {
    gpuContextFilter2 = [(_EARSpeechRecognitionActiveConfiguration *)self gpuContextFilter];
    EARHelpers::StdSetOfStringsFromNSSet(gpuContextFilter2, &v58);
    std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(p_var7, &v58);
    std::__tree<std::string>::destroy(&v58, v59);
  }

  return result;
}

- (id)description
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  [(_EARSpeechRecognitionActiveConfiguration *)self speechRecognizerActiveConfiguration];
  quasar::operator<<(&v10, __p);
  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(__p);
  v3 = MEMORY[0x1E696AEC0];
  std::stringbuf::str();
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = [v3 ear_stringWithStringView:{v4, v5}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v14);

  return v6;
}

@end