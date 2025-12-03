@interface _EAREndpointer
+ (void)initialize;
- (BOOL)acceptEagerResultWithFeatures:(id)features featuresToLog:(id *)log;
- (BOOL)didEndpointWithFeatures:(id)features audioTimestamp:(double)timestamp featuresToLog:(id *)log endpointPosterior:(float *)posterior extraDelayMs:(int *)ms;
- (_EAREndpointer)initWithConfiguration:(id)configuration delaysTrigger:(BOOL)trigger modelVersion:(id *)version;
- (_EAREndpointer)initWithConfiguration:(id)configuration modelVersion:(id *)version;
- (id)defaultServerEndpointFeatures;
@end

@implementation _EAREndpointer

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EAREndpointer)initWithConfiguration:(id)configuration modelVersion:(id *)version
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = _EAREndpointer;
  v6 = [(_EAREndpointer *)&v13 init];
  if (v6)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager fileExistsAtPath:configurationCopy];

    if (v8)
    {
      if (configurationCopy)
      {
        [configurationCopy ear_toString];
      }

      operator new();
    }

    v10 = EARLogger::QuasarOSLogger(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_EAROnDeviceEndpointerInfo *)configurationCopy initWithConfig:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (_EAREndpointer)initWithConfiguration:(id)configuration delaysTrigger:(BOOL)trigger modelVersion:(id *)version
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = _EAREndpointer;
  v7 = [(_EAREndpointer *)&v14 init];
  if (v7)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [defaultManager fileExistsAtPath:configurationCopy];

    if (v9)
    {
      if (configurationCopy)
      {
        [configurationCopy ear_toString];
      }

      operator new();
    }

    v11 = EARLogger::QuasarOSLogger(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_EAROnDeviceEndpointerInfo *)configurationCopy initWithConfig:v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)didEndpointWithFeatures:(id)features audioTimestamp:(double)timestamp featuresToLog:(id *)log endpointPosterior:(float *)posterior extraDelayMs:(int *)ms
{
  v55 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v46 = 0;
  [featuresCopy pauseCounts];
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v51 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:&__p count:16];
  if (v14)
  {
    v15 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        unsignedIntValue = [v17 unsignedIntValue];
        std::vector<int>::push_back[abi:ne200100](&v43, &unsignedIntValue);
      }

      v14 = [v13 countByEnumeratingWithState:&v48 objects:&__p count:16];
    }

    while (v14);
  }

  __p = 0;
  v53 = 0;
  v54 = 0;
  LODWORD(v48) = 0;
  ptr = self->_endpointer.__ptr_;
  wordCount = [featuresCopy wordCount];
  trailingSilenceDuration = [featuresCopy trailingSilenceDuration];
  [featuresCopy endOfSentenceLikelihood];
  v22 = v21;
  [featuresCopy acousticEndpointerScore];
  v24 = v23;
  [featuresCopy silencePosterior];
  v26 = v25;
  [featuresCopy clientSilenceFramesCountMs];
  v28 = v27;
  [featuresCopy clientSilenceProbability];
  v30 = v29;
  [featuresCopy silencePosteriorNF];
  v32 = v31;
  [featuresCopy serverFeaturesLatency];
  v34 = v33;
  eagerResultEndTime = [featuresCopy eagerResultEndTime];
  v36 = v22;
  v37 = v24;
  v38 = v26;
  v39 = v28;
  v40 = v30;
  v41 = quasar::HybridEndpointer::evalEndPoint(ptr, &v46, wordCount, trailingSilenceDuration, &v43, eagerResultEndTime, &__p, &v48, timestamp, v36, v37, v38, v39, v40, v32, v34);
  if (ms)
  {
    *ms = v48;
  }

  if (log && __p != v53)
  {
    *log = EARHelpers::VectorToArray<double>(&__p);
  }

  if (posterior)
  {
    *posterior = v46;
  }

  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v41;
}

- (id)defaultServerEndpointFeatures
{
  quasar::HybridEndpointer::defaultServerEndpointFeatures(self->_endpointer.__ptr_, v22);
  v2 = [_EARDefaultServerEndpointFeatures alloc];
  std::string::basic_string[abi:ne200100]<0>(v20, quasar::EP_NUM_OF_WORDS_STR[0]);
  v18[0] = v20;
  v3 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22, v20) + 56);
  std::string::basic_string[abi:ne200100]<0>(v18, quasar::EP_NUM_TRAILING_SIL_STR[0]);
  v16[0] = v18;
  v4 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22, v18) + 56);
  std::string::basic_string[abi:ne200100]<0>(v16, quasar::EP_EOS_LIKELIHOOD_STR[0]);
  v14[0] = v16;
  v5 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22, v16) + 56);
  std::string::basic_string[abi:ne200100]<0>(v14, quasar::EP_ACOUSTIC_EP_SCORE_STR[0]);
  __p[0] = v14;
  v6 = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22, v14) + 56);
  std::string::basic_string[abi:ne200100]<0>(__p, quasar::EP_SILENCE_POSTERIOR_STR[0]);
  v22[4] = __p;
  LODWORD(v7) = *(std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22, __p) + 56);
  LODWORD(v8) = v5;
  LODWORD(v9) = v6;
  v10 = [(_EARDefaultServerEndpointFeatures *)v2 initWithWordCount:v3 trailingSilenceDuration:v4 endOfSentenceLikelihood:v8 acousticEndpointerScore:v9 silencePosterior:v7];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  std::__tree<std::string>::destroy(v22, v22[1]);

  return v10;
}

- (BOOL)acceptEagerResultWithFeatures:(id)features featuresToLog:(id *)log
{
  v46 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  [featuresCopy pauseCounts];
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v42 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:&__p count:16];
  if (v8)
  {
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        unsignedIntValue = [v11 unsignedIntValue];
        std::vector<int>::push_back[abi:ne200100](&v35, &unsignedIntValue);
      }

      v8 = [v7 countByEnumeratingWithState:&v39 objects:&__p count:16];
    }

    while (v8);
  }

  __p = 0;
  v44 = 0;
  v45 = 0;
  ptr = self->_endpointer.__ptr_;
  wordCount = [featuresCopy wordCount];
  trailingSilenceDuration = [featuresCopy trailingSilenceDuration];
  [featuresCopy endOfSentenceLikelihood];
  v16 = v15;
  [featuresCopy silencePosterior];
  v18 = v17;
  [featuresCopy clientSilenceFramesCountMs];
  v20 = v19;
  [featuresCopy clientSilenceProbability];
  v22 = v21;
  [featuresCopy silencePosteriorNF];
  v24 = v23;
  [featuresCopy serverFeaturesLatency];
  v26 = v25;
  eagerResultEndTime = [featuresCopy eagerResultEndTime];
  v28 = v16;
  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = quasar::HybridEndpointer::acceptEagerResult(ptr, wordCount, trailingSilenceDuration, &v35, eagerResultEndTime, &__p, v28, v29, v30, v31, v24, v26);
  v33 = __p;
  if (log && __p != v44)
  {
    *log = EARHelpers::VectorToArray<double>(&__p);
    v33 = __p;
  }

  if (v33)
  {
    v44 = v33;
    operator delete(v33);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return v32;
}

@end