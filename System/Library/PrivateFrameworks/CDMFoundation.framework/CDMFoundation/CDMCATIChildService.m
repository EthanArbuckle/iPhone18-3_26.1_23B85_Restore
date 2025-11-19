@interface CDMCATIChildService
- (BOOL)checkFBBloomFilter:(id)a3 contains:(id)a4;
- (BOOL)getBloomFilterAt:(id)a3;
- (BOOL)getFlatbuffersBFAt:(id)a3;
- (BOOL)shouldSuppressCATIInvocationDueTo:(id)a3;
- (CDMCATIChildService)initWithAssetBundle:(id)a3;
- (id).cxx_construct;
- (id)buildCrisisSupportUserParse:(id)a3 confidenceScore:(float)a4;
- (id)buildLegacyBloomFilterAndExactMatchDictForInvocation:(id)a3;
- (id)buildSocialConversationUserParse:(id)a3 confidenceScore:(float)a4;
- (id)buildUserParse:(id)a3 confidenceScore:(float)a4;
- (id)checkExactMatch:(id)a3;
- (id)checkExactMatchForUtterances:(id)a3;
- (id)checkExactMatchFromPossibleGuids:(id)a3 forUtterance:(id)a4 modelType:(unint64_t)a5;
- (id)createUserParse:(float)a3;
- (id)getIntentLookup;
- (id)getInvocationInferenceResults:()vector<float;
- (id)getManifestFromPath:(id)a3;
- (id)getMultiturnInferenceResults:()vector<float;
- (id)getMultiturnIntentsFromSystemGaveOptions:(id)a3;
- (id)getMultiturnIntentsFromSystemInformed:(id)a3;
- (id)getProductAreaName;
- (id)handle:(id)a3 assetVersion:(int64_t)a4;
- (id)runCATIModelInferenceWithWeights:(id)a3;
- (id)setup:(id)a3 assetVersion:(int64_t)a4;
- (vector<float,)getCATIEmbeddingTensor:(CDMCATIChildService *)self;
- (void)buildMultiturnFeatures:(id)a3;
- (void)constructWeightMatrixForInference:(id)a3 numModels:(unint64_t)a4 guids:(id)a5 modelType:(unint64_t)a6;
@end

@implementation CDMCATIChildService

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 17) = 0;
  return self;
}

- (id)getProductAreaName
{
  if ([(CDMCATIManifest *)self->_catiManifest usoElementId]== 2550)
  {
    return @"socialConversation";
  }

  if ([(CDMCATIManifest *)self->_catiManifest usoElementId]== 2612)
  {
    return @"crisisSupport";
  }

  return @"oldAssetsOrNewProductArea";
}

- (id)getIntentLookup
{
  v2 = [(CDMCATIChildService *)self getManifest];
  v3 = [v2 intentLookup];

  return v3;
}

- (id)getManifestFromPath:(id)a3
{
  v3 = a3;
  v4 = [[CDMCATIManifest alloc] initWithPath:v3];

  return v4;
}

- (BOOL)shouldSuppressCATIInvocationDueTo:(id)a3
{
  v3 = a3;
  if (![v3 hasTurnContext])
  {
    goto LABEL_7;
  }

  v4 = [v3 turnContext];
  v5 = [v4 hasLegacyNlContext];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v3 turnContext];
  v7 = [v6 legacyNlContext];
  if (![v7 dictationPrompt])
  {
    v8 = [v3 turnContext];
    v9 = [v8 legacyNlContext];
    v10 = [v9 strictPrompt];

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v11 = 1;
LABEL_8:

  return v11;
}

- (id)createUserParse:(float)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69D1240]);
  v6 = MEMORY[0x1E69D13F8];
  v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v8 = [v6 convertFromUUID:v7];
  [v5 setIdA:v8];

  [v5 setProbability:a3];
  [v5 setParserId:@"com.apple.siri.cati"];
  v9 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v9 setAlgorithm:self->_algoType];
  [v9 setParserId:4];
  [v5 setParser:v9];

  return v5;
}

- (id)buildCrisisSupportUserParse:(id)a3 confidenceScore:(float)a4
{
  v6 = a3;
  v7 = [(CDMCATIChildService *)self getIntentLookup];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [v8 intentName];
    v10 = [v8 ensemble];
    v11 = +[CDMCATIUSOParseHelpers buildCrisisSupportParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:](_TtC13CDMFoundation22CDMCATIUSOParseHelpers, "buildCrisisSupportParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:", @"com.apple.siri.cati", v6, v9, v10, +[CDMFeatureFlags isUsoEntitySpanEnabled]);

    v12 = objc_alloc_init(MEMORY[0x1E69D1248]);
    [v12 setTask:v11];
    v13 = objc_alloc_init(MEMORY[0x1E69D1238]);
    [v13 setUserStatedTask:v12];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
    *&v15 = a4;
    v16 = [(CDMCATIChildService *)self createUserParse:v15];
    [v16 setUserDialogActs:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)buildSocialConversationUserParse:(id)a3 confidenceScore:(float)a4
{
  v6 = a3;
  v7 = [(CDMCATIChildService *)self getIntentLookup];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [v8 intentName];
    v10 = [v8 ensemble];
    v11 = +[CDMCATIUSOParseHelpers buildSocialConversationParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:](_TtC13CDMFoundation22CDMCATIUSOParseHelpers, "buildSocialConversationParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:", @"com.apple.siri.cati", v6, v9, v10, +[CDMFeatureFlags isUsoEntitySpanEnabled]);

    v12 = objc_alloc_init(MEMORY[0x1E69D1248]);
    [v12 setTask:v11];
    v13 = objc_alloc_init(MEMORY[0x1E69D1238]);
    [v13 setUserStatedTask:v12];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
    *&v15 = a4;
    v16 = [(CDMCATIChildService *)self createUserParse:v15];
    [v16 setUserDialogActs:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)buildUserParse:(id)a3 confidenceScore:(float)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  usoEntity = self->_usoEntity;
  if (usoEntity && [(NSString *)usoEntity length])
  {
    usoVerb = self->_usoVerb;
    if (usoVerb && [(NSString *)usoVerb length])
    {
      usoEdge = self->_usoEdge;
      if (usoEdge)
      {
        v10 = [(NSString *)usoEdge length];
        if (v10)
        {
          SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v10);
          v13 = *SharedUsoVocabManager;
          v12 = SharedUsoVocabManager[1];
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](self->_usoEntity, "UTF8String"));
          siri::ontology::UsoVocabManager::createCustomEntityName();
          if (v55 < 0)
          {
            operator delete(__p);
          }

          std::string::basic_string[abi:ne200100]<0>(&v52, -[NSString UTF8String](self->_usoVerb, "UTF8String"));
          siri::ontology::UsoVocabManager::createCustomVerbName();
          if (v53 < 0)
          {
            operator delete(v52);
          }

          std::string::basic_string[abi:ne200100]<0>(&v50, -[NSString UTF8String](self->_usoEdge, "UTF8String"));
          siri::ontology::UsoVocabManager::createCustomEdgeName();
          if (v51 < 0)
          {
            operator delete(v50);
          }

          buf.__r_.__value_.__r.__words[0] = 0;
          LODWORD(buf.__r_.__value_.__r.__words[1]) = 0;
          MEMORY[0x1E12976A0](v49, &buf);
          TaskNode = siri::ontology::UsoGraph::createTaskNode();
          siri::ontology::oname::graph::ontology_init::Argument_task(TaskNode);
          siri::ontology::UsoGraphNode::setSuccessor();
          EntityNode = siri::ontology::UsoGraph::createEntityNode();
          siri::ontology::oname::graph::ontology_init::Argument_target(EntityNode);
          siri::ontology::UsoGraphNode::setSuccessor();
          memset(&v48, 0, sizeof(v48));
          v16 = [(CDMCATIChildService *)self getIntentLookup];
          v17 = [v16 objectForKey:v6];

          if (v17)
          {
            v18 = [v17 intentName];
            v19 = v18 == 0;

            if (!v19)
            {
              v20 = [v17 intentName];
              v21 = v20;
              MEMORY[0x1E12979B0](&v48, [v20 UTF8String]);

              if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&buf, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
              }

              else
              {
                buf = v48;
              }

              v57 = 1;
              siri::ontology::UsoGraph::createStringNode();
              if (v57 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              siri::ontology::UsoGraphNode::setSuccessor();
              _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_();
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&buf, [&stru_1F5800F50 UTF8String]);
          v57 = 1;
          siri::ontology::UsoGraph::createStringNode();
          if (v57 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          siri::ontology::UsoGraphNode::setSuccessor();
          v25 = [(CDMCATIChildService *)self getManifest];
          v26 = [v25 isPreGuidVersion];

          if (v26)
          {
            v27 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
              _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s No intent GUIDs available in assets to attach to CATIResponse.", &buf, 0xCu);
            }
          }

          else
          {
            v29 = v6;
            std::string::basic_string[abi:ne200100]<0>(v44, [v6 UTF8String]);
            std::string::basic_string[abi:ne200100]<0>(&v41, [@"com.apple.siri.cati" UTF8String]);
            std::string::basic_string[abi:ne200100]<0>(&buf, [*MEMORY[0x1E69D2468] UTF8String]);
            v57 = 1;
            v46 = 0;
            v47 = 0;
            siri::ontology::UsoEntityNode::addIdentifier();
            if (v57 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if (v43 < 0)
            {
              operator delete(v41);
            }

            if (v45 < 0)
            {
              operator delete(v44[0]);
            }
          }

          if (v17)
          {
            v30 = [v17 intentName];
            v31 = v30 == 0;

            if (!v31)
            {
              v32 = [v17 intentName];
              v33 = v32;
              MEMORY[0x1E12979B0](&v48, [v32 UTF8String]);

              std::string::basic_string[abi:ne200100]<0>(v44, [@"com.apple.siri.cati" UTF8String]);
              std::string::basic_string[abi:ne200100]<0>(&buf, [*MEMORY[0x1E69D2480] UTF8String]);
              v57 = 1;
              LOBYTE(v41) = 0;
              v42 = 0;
              siri::ontology::UsoEntityNode::addIdentifier();
              if (v57 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (v45 < 0)
              {
                operator delete(v44[0]);
              }

              if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
              {
                _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_();
              }
            }

            v34 = [v17 ensemble];
            v35 = v34 == 0;

            if (!v35)
            {
              v36 = [v17 ensemble];
              v37 = v36;
              std::string::basic_string[abi:ne200100]<0>(v44, [v36 UTF8String]);
              std::string::basic_string[abi:ne200100]<0>(&v41, [@"com.apple.siri.cati" UTF8String]);
              std::string::basic_string[abi:ne200100]<0>(&buf, [*MEMORY[0x1E69D2460] UTF8String]);
              v57 = 1;
              v46 = 0;
              v47 = 0;
              siri::ontology::UsoEntityNode::addIdentifier();
              if (v57 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (v43 < 0)
              {
                operator delete(v41);
              }

              if (v45 < 0)
              {
                operator delete(v44[0]);
              }

              if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
              {
                _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_();
              }
            }
          }

          *&v28 = a4;
          v38 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
          v39 = [v38 stringValue];
          v40 = v39;
          std::string::basic_string[abi:ne200100]<0>(v44, [v39 UTF8String]);

          std::string::basic_string[abi:ne200100]<0>(&v41, [@"com.apple.siri.cati" UTF8String]);
          buf.__r_.__value_.__s.__data_[0] = 0;
          v57 = 0;
          v46 = 0;
          v47 = 0;
          siri::ontology::UsoEntityNode::addIdentifier();
          if (v57 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v43 < 0)
          {
            operator delete(v41);
          }

          if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
          {
            _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_();
          }

          sirinluexternal::UsoGraph::UsoGraph(&buf);
          siri::ontology::UsoGraphProtoWriter::toProtobuf();
          operator new();
        }
      }

      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
        _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI did not have a valid usoEdge. Please check the manifest to ensure that this value exists", &buf, 0xCu);
      }
    }

    else
    {
      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
        _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI did not have a valid usoVerb. Please check the manifest to ensure that this value exists", &buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
      _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI did not have a valid usoEntity. Please check the manifest to ensure that this value exists", &buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return 0;
}

- (id)getMultiturnInferenceResults:()vector<float
{
  v5 = objc_alloc_init(CATILogisticsRegressionModel);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3->var0, a3->var1, a3->var1 - a3->var0);
  v6 = [(CATILogisticsRegressionModel *)v5 getBestIntent:&__p numberOfModels:self->_numMultiturnModels weightMatrix:&self->_multiturnWeightPtr guids:self->_multiturnGUIDs usoEdgeKey:self->_usoEdge];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

- (id)getInvocationInferenceResults:()vector<float
{
  v5 = objc_alloc_init(CATILogisticsRegressionModel);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3->var0, a3->var1, a3->var1 - a3->var0);
  v6 = [(CATILogisticsRegressionModel *)v5 getBestIntent:&__p numberOfModels:self->_numModels weightMatrix:&self->_weightPtr guids:self->_invocationGUIDs usoEdgeKey:self->_usoEdge];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

- (vector<float,)getCATIEmbeddingTensor:(CDMCATIChildService *)self
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  embeddingDimensionCATI = self->_embeddingDimensionCATI;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (embeddingDimensionCATI)
  {
    std::vector<float>::__vallocate[abi:ne200100](retstr, embeddingDimensionCATI);
  }

  if ([v6 hasNumToken])
  {
    v8 = [v6 numToken];
    v9 = self->_embeddingDimensionCATI;
    if (v9 >= 1)
    {
      v10 = v8;
      v11 = 0;
      v12 = v8;
      var0 = retstr->var0;
      do
      {
        if (v10)
        {
          v14 = 0;
          v15 = 0.0;
          do
          {
            v16 = [v6 values];
            v9 = self->_embeddingDimensionCATI;
            v15 = v15 + *(v16 + 4 * v9 * v14++ + 4 * v11);
          }

          while (v10 != v14);
        }

        else
        {
          v15 = 0.0;
        }

        var0[v11++] = v15 / v12;
      }

      while (v9 > v11);
    }
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[CDMCATIChildService getCATIEmbeddingTensor:]";
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: NLv4EmbeddingTensor has numToken with a value of zero, returning empty CATI embeddingTensor.", &v20, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)runCATIModelInferenceWithWeights:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  [(CDMCATIChildService *)self getCATIEmbeddingTensor:a3];
  if (!self->_multiturnEnabled || !self->_multiturnWeightsEnabled)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v74, v83, v84, (v84 - v83) >> 2);
    v4 = [(CDMCATIChildService *)self getInvocationInferenceResults:&v74];

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    v16 = [v4 valueForKey:@"confidence_score"];
    [v16 floatValue];
    v18 = v17;

    if (v18 > self->_confidenceThreshold)
    {
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *&v20 = v18;
        v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
        v22 = [v21 stringValue];
        *&v23 = self->_confidenceThreshold;
        v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
        v25 = [v24 stringValue];
        *buf = 136315650;
        v86 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
        v87 = 2112;
        v88 = v22;
        v89 = 2112;
        v90 = v25;
        _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Invocation inference score is over the threshold: %@ > %@.", buf, 0x20u);
      }

      goto LABEL_15;
    }

    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *&v28 = v18;
      v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
      v30 = [v29 stringValue];
      *&v31 = self->_confidenceThreshold;
      v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      v33 = [v32 stringValue];
      *buf = 136315650;
      v86 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v87 = 2112;
      v88 = v30;
      v89 = 2112;
      v90 = v33;
      _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s Invocation inference score is under the threshold: %@ < %@.", buf, 0x20u);
    }

    goto LABEL_19;
  }

  __p = 0;
  v81 = 0;
  v82 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v83, v84, (v84 - v83) >> 2);
  v4 = [(CDMCATIChildService *)self getMultiturnInferenceResults:&__p];
  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  v5 = [v4 valueForKey:@"confidence_score"];
  [v5 floatValue];
  v7 = v6;

  if (v7 > self->_multiturnConfidenceThreshold)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *&v9 = v7;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      v11 = [v10 stringValue];
      *&v12 = self->_multiturnConfidenceThreshold;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      v14 = [v13 stringValue];
      *buf = 136315650;
      v86 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v87 = 2112;
      v88 = v11;
      v89 = 2112;
      v90 = v14;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Multiturn inference score is over the threshold: %@ > %@.", buf, 0x20u);
    }

LABEL_15:
    v4 = v4;
    v26 = v4;
    goto LABEL_20;
  }

  if (!self->_invocationWeightsEnabled)
  {
    v52 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *&v53 = v7;
      v54 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
      v55 = [v54 stringValue];
      *&v56 = self->_multiturnConfidenceThreshold;
      v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
      v58 = [v57 stringValue];
      *buf = 136315650;
      v86 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v87 = 2112;
      v88 = v55;
      v89 = 2112;
      v90 = v58;
      _os_log_impl(&dword_1DC287000, v52, OS_LOG_TYPE_INFO, "%s CATI multiturn inference score is under the threshold: %@ < %@. Inference for invocation is not enabled.", buf, 0x20u);
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v77, v83, v84, (v84 - v83) >> 2);
  v37 = [(CDMCATIChildService *)self getInvocationInferenceResults:&v77];

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  v38 = [v37 valueForKey:@"confidence_score"];
  [v38 floatValue];
  v40 = v39;

  if (v40 <= self->_confidenceThreshold)
  {
    v59 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *&v60 = v7;
      v71 = [MEMORY[0x1E696AD98] numberWithFloat:v60];
      v73 = [v71 stringValue];
      *&v61 = self->_multiturnConfidenceThreshold;
      v62 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
      v63 = [v62 stringValue];
      *&v64 = v40;
      v65 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
      v66 = [v65 stringValue];
      *&v67 = self->_confidenceThreshold;
      v68 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
      v69 = [v68 stringValue];
      *buf = 136316162;
      v86 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v87 = 2112;
      v88 = v73;
      v89 = 2112;
      v90 = v63;
      v91 = 2112;
      v92 = v66;
      v93 = 2112;
      v94 = v69;
      _os_log_impl(&dword_1DC287000, v59, OS_LOG_TYPE_INFO, "%s Multiturn inference score is under the threshold: %@ < %@. CATI invocation inference score is also under the threshold: %@ < %@.", buf, 0x34u);
    }

    v26 = 0;
  }

  else
  {
    v41 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *&v42 = v7;
      v70 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
      v72 = [v70 stringValue];
      *&v43 = self->_multiturnConfidenceThreshold;
      v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
      v45 = [v44 stringValue];
      *&v46 = v40;
      v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
      v48 = [v47 stringValue];
      *&v49 = self->_confidenceThreshold;
      v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
      v51 = [v50 stringValue];
      *buf = 136316162;
      v86 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v87 = 2112;
      v88 = v72;
      v89 = 2112;
      v90 = v45;
      v91 = 2112;
      v92 = v48;
      v93 = 2112;
      v94 = v51;
      _os_log_impl(&dword_1DC287000, v41, OS_LOG_TYPE_INFO, "%s Multiturn inference score is under the threshold: %@ < %@. CATI invocation inference score is over the threshold: %@ > %@.", buf, 0x34u);
    }

    v26 = v37;
  }

LABEL_20:
  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)checkExactMatchFromPossibleGuids:(id)a3 forUtterance:(id)a4 modelType:(unint64_t)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v27 = a4;
  if (![v7 count])
  {
    v26 = 0;
    goto LABEL_22;
  }

  v8 = [(CDMCATIChildService *)self getManifest];
  v9 = [v8 getPositiveOverrideGuidsForModelType:a5];

  v10 = 0;
  *&v11 = 136315650;
  v25 = v11;
  while (1)
  {
    if ([v7 count] <= v10)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v12 = [v7 objectAtIndexedSubscript:v10];
    if ([v9 containsObject:v12])
    {
      break;
    }

LABEL_17:

    ++v10;
  }

  v13 = [v12 stringByAppendingString:@".json"];
  v14 = [(CDMCATIChildService *)self getPosOverridesDirectoryPath];
  v15 = [v14 stringByAppendingPathComponent:v13];

  v30 = 0;
  v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v15 options:0 error:&v30];
  v17 = v30;
  v18 = v17;
  if (!v16 || v17)
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = v25;
      v32 = "[CDMCATIChildService checkExactMatchFromPossibleGuids:forUtterance:modelType:]";
      v33 = 2112;
      v34 = v15;
      v35 = 2112;
      v36 = v18;
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to find or process file (%@) due to %@", buf, 0x20u);
    }
  }

  else
  {
    v29 = 0;
    v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&v29];
    v18 = v29;
    if (v19)
    {
      v20 = [v19 valueForKey:v27];
      if (v20)
      {
        v26 = [v19 valueForKey:v27];

        v21 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = v25;
        v32 = "[CDMCATIChildService checkExactMatchFromPossibleGuids:forUtterance:modelType:]";
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v18;
        _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: Error parsing JSON in file %@: %@", buf, 0x20u);
      }
    }
  }

  v21 = 1;
LABEL_16:

  if (v21)
  {
    goto LABEL_17;
  }

LABEL_21:
LABEL_22:

  v23 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)checkExactMatch:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 dataUsingEncoding:4];
  if (!self->_multiturnEnabled || ([(CDMCATIChildService *)self checkExactMatchFromPossibleGuids:self->_multiturnEnabledExactMatchIntents forUtterance:v4 modelType:1], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (self->_isLegacyCATIOverrideSystem && [(CATIBloomFilter *)self->_positiveOverridesInvocationBloomFilterLegacy contains:v5])
    {
      v6 = [(NSDictionary *)self->_positiveOverridesDictionary valueForKey:v4];
      goto LABEL_34;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_isFlatbuffersCATIOverrideSystem)
    {
      v8 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v36 = "[CDMCATIChildService checkExactMatch:]";
        _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Using Flatbuffers BF override system", buf, 0xCu);
      }

      v9 = [(FLTCDMCATIBloomFilters *)self->_fbBloomFilters general_bf];
      v10 = [(CDMCATIChildService *)self checkFBBloomFilter:v9 contains:v5];

      if (!v10)
      {
        goto LABEL_33;
      }

      [(FLTCDMCATIBloomFilters *)self->_fbBloomFilters array_bf];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v11 = v30 = 0u;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        v13 = *v30;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            if ([(CDMCATIChildService *)self checkFBBloomFilter:v15 contains:v5])
            {
              v16 = [v15 name];
              [v7 addObject:v16];
            }
          }

          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v17 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v36 = "[CDMCATIChildService checkExactMatch:]";
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Using JSON BF override system", buf, 0xCu);
      }

      if (![self->_positiveOverridesInvocationBloomFilter containsWithData:v5])
      {
        goto LABEL_33;
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = self->_positiveOverridesInvocationIndividualBloomFilters;
      v18 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = *v26;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v11);
            }

            v21 = *(*(&v25 + 1) + 8 * j);
            if ([v21 containsWithData:{v5, v25}])
            {
              v22 = [v21 name];
              [v7 addObject:v22];
            }
          }

          v18 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v18);
      }
    }

LABEL_33:
    v6 = [(CDMCATIChildService *)self checkExactMatchFromPossibleGuids:v7 forUtterance:v4 modelType:0, v25];
  }

LABEL_34:

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)checkFBBloomFilter:(id)a3 contains:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MurmurHash3 hash128WithKey:length:seed:](MurmurHash3, "hash128WithKey:length:seed:", [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v5, "seed"));
  v9 = v8;
  v15 = v6;
  v10 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  while ([v5 number:v15 of:?hashes] > v10)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = (v7 + v9 * v10) % [v5 number_of_bits];
    v11 = [v5 bit_vector];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__CDMCATIChildService_checkFBBloomFilter_contains___block_invoke;
    v16[3] = &unk_1E862EC88;
    v18 = v20;
    v12 = v11;
    v17 = v12;
    v19 = &v21;
    [v12 data:v16];

    _Block_object_dispose(v20, 8);
    ++v10;
  }

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v13;
}

unint64_t __51__CDMCATIChildService_checkFBBloomFilter_contains___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(a2 + (v3 >> [*(a1 + 32) bit_shift]));
  v5 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) bits_per_block];
  if (((v4 >> (v5 % result)) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (id)checkExactMatchForUtterances:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v4 normalisedUtterance];
    v18 = 136315394;
    v19 = "[CDMCATIChildService checkExactMatchForUtterances:]";
    v20 = 2112;
    v21 = v16;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s CATI normalized utterance: %@", &v18, 0x16u);
  }

  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v4 originalUtterance];
    v18 = 136315394;
    v19 = "[CDMCATIChildService checkExactMatchForUtterances:]";
    v20 = 2112;
    v21 = v17;
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s CATI original utterance: %@", &v18, 0x16u);
  }

  if ([v4 hasOriginalUtterance])
  {
    v7 = [v4 originalUtterance];
    v8 = [v7 lowercaseString];

    v9 = [(CDMCATIChildService *)self checkExactMatch:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 hasNormalisedUtterance];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 1)
  {
    v12 = [v4 normalisedUtterance];
    v13 = [v12 lowercaseString];

    v9 = [(CDMCATIChildService *)self checkExactMatch:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)handle:(id)a3 assetVersion:(int64_t)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = os_signpost_id_generate(CDMLogContext);
  v8 = CDMLogContext;
  v9 = v8;
  spid = v7;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [(CDMCATIChildService *)self getProductAreaName];
    *buf = 138412290;
    v59 = v11;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CATI", "invokeHandle (%@)", buf, 0xCu);
  }

  if ([(CDMCATIChildService *)self isMultiTurnEnabled])
  {
    v12 = os_signpost_id_generate(CDMLogContext);
    v13 = CDMLogContext;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 138412290;
      v59 = v15;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CATI", "buildMultiTurnFeatures (%@)", buf, 0xCu);
    }

    v16 = [v6 request];
    v17 = [v16 turnInput];
    [(CDMCATIChildService *)self buildMultiturnFeatures:v17];

    v18 = CDMLogContext;
    v19 = v18;
    if (v12 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v12, "CATI", "", buf, 2u);
    }

    if (self->_multiturnEnabled)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v59 = "[CDMCATIChildService handle:assetVersion:]";
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: Multiturn is disabled", buf, 0xCu);
    }

    self->_multiturnEnabled = 0;
  }

  v21 = [v6 request];
  v22 = [v21 turnInput];
  v23 = [(CDMCATIChildService *)self shouldSuppressCATIInvocationDueTo:v22];

  if (v23)
  {
    v24 = CDMLogContext;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v53 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315650;
      v59 = "[CDMCATIChildService handle:assetVersion:]";
      v60 = 2112;
      v61 = @"cati";
      v62 = 2112;
      v63 = v53;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@: CATI suppressed due to previous non-CATI turn info, return empty hypothesis", buf, 0x20u);
    }

    v25 = CDMLogContext;
    v26 = v25;
    if (v10 >= 0xFFFFFFFFFFFFFFFELL || !os_signpost_enabled(v25))
    {
      goto LABEL_57;
    }

    *buf = 0;
    goto LABEL_22;
  }

LABEL_23:
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = [v6 request];
  v28 = [(CDMCATIChildService *)self checkExactMatchForUtterances:v27];

  if (!v28)
  {
    if (!self->_invocationWeightsEnabled && !self->_multiturnWeightsEnabled)
    {
      v48 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v56 = [(CDMCATIChildService *)self getProductAreaName];
        *buf = 136315394;
        v59 = "[CDMCATIChildService handle:assetVersion:]";
        v60 = 2112;
        v61 = v56;
        _os_log_debug_impl(&dword_1DC287000, v48, OS_LOG_TYPE_DEBUG, "%s %@: There were no override matches and no weights to run inference on so we are returning an empty response.", buf, 0x16u);
      }

      v49 = CDMLogContext;
      v50 = v49;
      if (v10 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v50, OS_SIGNPOST_INTERVAL_END, spid, "CATI", "", buf, 2u);
      }

      goto LABEL_57;
    }

    v32 = [v6 request];
    v33 = [v32 embeddings];
    v34 = [(CDMCATIChildService *)self runCATIModelInferenceWithWeights:v33];

    if (v34)
    {
      v28 = [v34 valueForKey:self->_usoEdge];
      v35 = [v34 valueForKey:@"confidence_score"];
      [v35 floatValue];
      v30 = v36;

      v31 = 2;
      v26 = v34;
      goto LABEL_29;
    }

    v46 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v55 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315394;
      v59 = "[CDMCATIChildService handle:assetVersion:]";
      v60 = 2112;
      v61 = v55;
      _os_log_debug_impl(&dword_1DC287000, v46, OS_LOG_TYPE_DEBUG, "%s %@: There were no override matches and the inference results were below the threshold, so we are returning an empty response.", buf, 0x16u);
    }

    v47 = CDMLogContext;
    v26 = v47;
    if (v10 >= 0xFFFFFFFFFFFFFFFELL || !os_signpost_enabled(v47))
    {
LABEL_57:
      v40 = 0;
      goto LABEL_58;
    }

    *buf = 0;
LABEL_22:
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v26, OS_SIGNPOST_INTERVAL_END, spid, "CATI", "", buf, 2u);
    goto LABEL_57;
  }

  v30 = 1.0;
  v31 = 1;
LABEL_29:
  self->_algoType = v31;
  if (a4 > 3199)
  {
    v38 = [(CDMCATIManifest *)self->_catiManifest usoElementId];
    if (v38 == 2550)
    {
      *&v39 = v30;
      v37 = [(CDMCATIChildService *)self buildSocialConversationUserParse:v28 confidenceScore:v39];
    }

    else
    {
      *&v39 = v30;
      if (v38 == 2612)
      {
        [(CDMCATIChildService *)self buildCrisisSupportUserParse:v28 confidenceScore:v39];
      }

      else
      {
        [(CDMCATIChildService *)self buildUserParse:v28 confidenceScore:v39];
      }
      v37 = ;
    }
  }

  else
  {
    *&v29 = v30;
    v37 = [(CDMCATIChildService *)self buildUserParse:v28 confidenceScore:v29];
  }

  v40 = v37;
  v41 = CDMLogContext;
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
  if (v40)
  {
    if (v42)
    {
      v43 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315906;
      v59 = "[CDMCATIChildService handle:assetVersion:]";
      v60 = 2112;
      v61 = @"cati";
      v62 = 2112;
      v63 = v43;
      v64 = 2112;
      v65 = v40;
      _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@ CATI hypothesis: %@", buf, 0x2Au);
    }
  }

  else if (v42)
  {
    v54 = [(CDMCATIChildService *)self getProductAreaName];
    *buf = 136315650;
    v59 = "[CDMCATIChildService handle:assetVersion:]";
    v60 = 2112;
    v61 = @"cati";
    v62 = 2112;
    v63 = v54;
    _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@: no CATI hypothesis", buf, 0x20u);
  }

  v44 = CDMLogContext;
  v45 = v44;
  if (v10 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v45, OS_SIGNPOST_INTERVAL_END, spid, "CATI", "", buf, 2u);
  }

LABEL_58:
  v51 = *MEMORY[0x1E69E9840];

  return v40;
}

- (id)getMultiturnIntentsFromSystemInformed:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = [v32 entities];
  if (v34 && [v34 count])
  {
    for (i = 0; [v34 count] > i; ++i)
    {
      v33 = [v34 objectAtIndex:?];
      v39 = [v33 nodes];
      if (!v39 || ![v39 count])
      {
        goto LABEL_42;
      }

      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; [v39 count] > j; ++j)
      {
        v5 = [v39 objectAtIndex:j];
        if ([v5 usoElementId] == self->_usoElementId)
        {
          goto LABEL_11;
        }

        v6 = [v5 entityLabel];
        v7 = [(CDMCATIChildService *)self getManifest];
        v8 = [v7 usoEntity];
        v9 = [v6 isEqualToString:v8];

        if (v9)
        {
LABEL_11:
          v10 = [MEMORY[0x1E696AD98] numberWithInt:j];
          [v42 addObject:v10];
        }
      }

      v37 = [v33 identifiers];
      for (k = 0; [v37 count] > k; ++k)
      {
        v12 = [v37 objectAtIndex:k];
        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "nodeIndex")}];
        if ([v42 containsObject:v13])
        {
          v14 = [v12 hasValue];

          if (!v14)
          {
            goto LABEL_19;
          }

          v13 = [v12 value];
          [v3 addObject:v13];
        }

LABEL_19:
      }

      if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = [v33 spans];
        v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v15)
        {
          v40 = *v48;
          do
          {
            v41 = v15;
            for (m = 0; m != v41; ++m)
            {
              if (*v48 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v47 + 1) + 8 * m);
              v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "nodeIndex")}];
              v19 = [v42 containsObject:v18];

              if (v19)
              {
                v45 = 0u;
                v46 = 0u;
                v43 = 0u;
                v44 = 0u;
                v20 = [v17 properties];
                v21 = [v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
                if (v21)
                {
                  v22 = *v44;
                  do
                  {
                    for (n = 0; n != v21; ++n)
                    {
                      if (*v44 != v22)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v24 = *(*(&v43 + 1) + 8 * n);
                      if ([v24 hasValueString])
                      {
                        v25 = [v24 valueString];
                        v26 = [v25 value];
                        v27 = [v3 containsObject:v26];

                        if ((v27 & 1) == 0)
                        {
                          v28 = [v24 valueString];
                          v29 = [v28 value];
                          [v3 addObject:v29];
                        }
                      }
                    }

                    v21 = [v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
                  }

                  while (v21);
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v15);
        }
      }

LABEL_42:
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getMultiturnIntentsFromSystemGaveOptions:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = [v31 choices];
  if (v34 && [v34 count])
  {
    for (i = 0; [v34 count] > i; ++i)
    {
      v33 = [v34 objectAtIndex:?];
      if (![v33 hasUserStatedTask])
      {
        goto LABEL_44;
      }

      v4 = [v33 userStatedTask];
      v32 = [v4 task];

      v39 = [v32 nodes];
      if (!v39 || ![v39 count])
      {
        goto LABEL_43;
      }

      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; [v39 count] > j; ++j)
      {
        v6 = [v39 objectAtIndex:j];
        if ([v6 usoElementId] == self->_usoElementId || (objc_msgSend(v6, "entityLabel"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_usoEntity), v7, v8))
        {
          v9 = [MEMORY[0x1E696AD98] numberWithInt:j];
          [v42 addObject:v9];
        }
      }

      v37 = [v32 identifiers];
      for (k = 0; [v37 count] > k; ++k)
      {
        v11 = [v37 objectAtIndex:k];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "nodeIndex")}];
        if ([v42 containsObject:v12])
        {
          v13 = [v11 hasValue];

          if (!v13)
          {
            goto LABEL_20;
          }

          v12 = [v11 value];
          [v3 addObject:v12];
        }

LABEL_20:
      }

      if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = [v32 spans];
        v14 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v14)
        {
          v40 = *v48;
          do
          {
            v41 = v14;
            for (m = 0; m != v41; ++m)
            {
              if (*v48 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v47 + 1) + 8 * m);
              v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "nodeIndex")}];
              v18 = [v42 containsObject:v17];

              if (v18)
              {
                v45 = 0u;
                v46 = 0u;
                v43 = 0u;
                v44 = 0u;
                v19 = [v16 properties];
                v20 = [v19 countByEnumeratingWithState:&v43 objects:v51 count:16];
                if (v20)
                {
                  v21 = *v44;
                  do
                  {
                    for (n = 0; n != v20; ++n)
                    {
                      if (*v44 != v21)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v23 = *(*(&v43 + 1) + 8 * n);
                      if ([v23 hasValueString])
                      {
                        v24 = [v23 valueString];
                        v25 = [v24 value];
                        v26 = [v3 containsObject:v25];

                        if ((v26 & 1) == 0)
                        {
                          v27 = [v23 valueString];
                          v28 = [v27 value];
                          [v3 addObject:v28];
                        }
                      }
                    }

                    v20 = [v19 countByEnumeratingWithState:&v43 objects:v51 count:16];
                  }

                  while (v20);
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v14);
        }
      }

LABEL_43:
LABEL_44:
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)buildMultiturnFeatures:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_multiturnEnabled = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [v4 turnContext];
  v7 = [v6 hasNlContext];

  if (v7)
  {
    v8 = [v4 turnContext];
    v9 = [v8 nlContext];
    v10 = [v9 systemDialogActs];

    if (v10 && [v10 count])
    {
      for (i = 0; [v10 count] > i; ++i)
      {
        v12 = [v10 objectAtIndex:i];
        if ([v12 hasGaveOptions])
        {
          v13 = objc_alloc(MEMORY[0x1E695DFA8]);
          v14 = [v12 gaveOptions];
          v15 = [(CDMCATIChildService *)self getMultiturnIntentsFromSystemGaveOptions:v14];
          v16 = [v13 initWithSet:v15];
        }

        else
        {
          if (![v12 hasInformed])
          {
            goto LABEL_11;
          }

          v17 = objc_alloc(MEMORY[0x1E695DFA8]);
          v14 = [v12 informed];
          v15 = [(CDMCATIChildService *)self getMultiturnIntentsFromSystemInformed:v14];
          v16 = [v17 initWithSet:v15];
        }

        v18 = v16;

        v5 = v18;
LABEL_11:
      }
    }

    v19 = [(CDMCATIChildService *)self getManifest];
    v20 = [v19 getPositiveOverrideGuidsForModelType:1];
    [v5 intersectSet:v20];
  }

  if ([v5 count])
  {
    self->_multiturnEnabled = 1;
    v21 = [v5 allObjects];
    multiturnEnabledExactMatchIntents = self->_multiturnEnabledExactMatchIntents;
    self->_multiturnEnabledExactMatchIntents = v21;

    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v37 = [v23 contentsOfDirectoryAtPath:self->_weightsDirectoryPath error:0];

    v24 = [(CDMCATIChildService *)self getManifest];
    v36 = [v24 getWeightGuidsForModelType:1];

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = os_signpost_id_generate(CDMLogContext);
    v27 = CDMLogContext;
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v29 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 138412290;
      v45 = v29;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "CATI", "processMultiTurnWeightFiles (%@)", buf, 0xCu);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke;
    v39[3] = &unk_1E862EC60;
    v30 = v37;
    v40 = v30;
    v31 = v36;
    v41 = v31;
    v42 = v5;
    v32 = v25;
    v43 = v32;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke_2;
    v38[3] = &__block_descriptor_40_e5_v8__0l;
    v38[4] = v26;
    [v30 enumerateTaskParallelly:v39 blockCompleteAllTask:v38];
    self->_multiturnWeightsEnabled = 0;
    v33 = [v32 count];
    self->_numMultiturnModels = v33;
    if (v33)
    {
      v34 = self->_embeddingDimensionCATIPlusOne * v33;
      operator new[]();
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke(id *a1)
{
  v4 = [a1[4] objectAtIndex:?];
  v2 = [v4 componentsSeparatedByString:@"."];
  v3 = [v2 objectAtIndex:0];
  if ([a1[5] containsObject:v3] && objc_msgSend(a1[6], "containsObject:", v3))
  {
    [a1[7] addObject:v4];
  }
}

void __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke_2(uint64_t a1)
{
  v2 = CDMLogContext;
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CATI", "", v5, 2u);
  }
}

- (id)buildLegacyBloomFilterAndExactMatchDictForInvocation:(id)a3
{
  v4 = a3;
  expectedPositiveUtterances = self->_expectedPositiveUtterances;
  v6 = [(CDMCATIChildService *)self getManifest];
  v7 = [v6 getPositiveOverrideGuidsForModelType:0];

  if (expectedPositiveUtterances == -1)
  {
    expectedPositiveUtterances = 100 * [v7 count];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2016;
  v29 = __Block_byref_object_dispose__2017;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2016;
  v23 = __Block_byref_object_dispose__2017;
  v24 = [[CATIBloomFilter alloc] initWithExceptedNumberOfItems:expectedPositiveUtterances falsePositiveRate:1234 seed:0.01];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CDMCATIChildService_buildLegacyBloomFilterAndExactMatchDictForInvocation___block_invoke;
  v13[3] = &unk_1E862EC38;
  v8 = v4;
  v14 = v8;
  v15 = self;
  v9 = v7;
  v16 = v9;
  v17 = &v25;
  v18 = &v19;
  [v8 enumerateTaskParallelly:v13 blockCompleteAllTask:&__block_literal_global_434];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v26[5]];
  [(CDMCATIChildService *)self setPositiveOverridesDictionary:v10];

  if ([(NSDictionary *)self->_positiveOverridesDictionary count])
  {
    self->_invocationOverridesEnabled = 1;
    self->_isLegacyCATIOverrideSystem = 1;
  }

  v11 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

void __76__CDMCATIChildService_buildLegacyBloomFilterAndExactMatchDictForInvocation___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = [*(a1 + 32) objectAtIndex:?];
  v2 = [*(a1 + 40) getPosOverridesDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:v19];

  v25 = 0;
  v18 = v3;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:0 error:&v25];
  v5 = v25;
  if (v4)
  {
    v24 = v5;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v24];
    v16 = v24;

    if (v6)
    {
      v17 = [v19 componentsSeparatedByString:@"."];
      v7 = [v17 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if ([*(a1 + 48) containsObject:{v7, v16}])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v9)
          {
            v10 = *v21;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v20 + 1) + 8 * i);
                [*(*(*(a1 + 56) + 8) + 40) setValue:v7 forKey:v12];
                v13 = *(*(*(a1 + 64) + 8) + 40);
                v14 = [v12 dataUsingEncoding:4];
                [v13 add:v14];
              }

              v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
            }

            while (v9);
          }
        }
      }
    }

    else
    {
      v17 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v28 = "[CDMCATIChildService buildLegacyBloomFilterAndExactMatchDictForInvocation:]_block_invoke";
        v29 = 2112;
        v30 = v19;
        v31 = 2112;
        v32 = v16;
        _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Error parsing JSON in file %@: %@", buf, 0x20u);
      }
    }

    v5 = v16;
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "[CDMCATIChildService buildLegacyBloomFilterAndExactMatchDictForInvocation:]_block_invoke";
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v5;
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to find or process file (%@) due to %@", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)getBloomFilterAt:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 stringByAppendingPathComponent:@"general.bf"];
  v22 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:0 error:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = v7;
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[CDMCATIChildService getBloomFilterAt:]";
      v25 = 2112;
      v26 = v8;
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI: Error parsing General Bloom Filter: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(_TtC13CDMFoundation27BloomFilterObjectiveCHelper);
    v21 = 0;
    v9 = [(BloomFilterObjectiveCHelper *)v11 getDecodedBFWithData:v6 error:&v21];
    v8 = v21;

    [v4 stringByAppendingPathComponent:@"array.bf"];
    v18 = v20 = 0;
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v18 options:0 error:&v20];
    v13 = v20;
    if (v13)
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[CDMCATIChildService getBloomFilterAt:]";
        v25 = 2112;
        v26 = v13;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI: Error parsing Array Bloom Filter: %@", buf, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v15 = objc_alloc_init(_TtC13CDMFoundation27BloomFilterObjectiveCHelper);
      v19 = 0;
      v14 = [(BloomFilterObjectiveCHelper *)v15 getDecodedBFArrayWithData:v12 error:&v19];
      v13 = v19;

      v10 = 0;
      if (v9 && v14)
      {
        self->_invocationOverridesEnabled = 1;
        objc_storeStrong(&self->_positiveOverridesInvocationBloomFilter, v9);
        objc_storeStrong(&self->_positiveOverridesInvocationIndividualBloomFilters, v14);
        v10 = 1;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)getFlatbuffersBFAt:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@"/FBBF.bin"];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  v10 = 0;
  v7 = [MEMORY[0x1E69D1108] getCATIBloomFiltersFromFileURL:v6 error:&v10];
  v8 = v10;
  if (v7)
  {
    self->_invocationOverridesEnabled = 1;
    self->_isFlatbuffersCATIOverrideSystem = 1;
    objc_storeStrong(&self->_fbBloomFilters, v7);
  }

  return v7 != 0;
}

- (void)constructWeightMatrixForInference:(id)a3 numModels:(unint64_t)a4 guids:(id)a5 modelType:(unint64_t)a6
{
  v10 = a3;
  for (i = a5; a4; --a4)
  {
    [i addObject:@"0"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__CDMCATIChildService_constructWeightMatrixForInference_numModels_guids_modelType___block_invoke;
  v14[3] = &unk_1E862EC10;
  v12 = v10;
  v15 = v12;
  v16 = self;
  v13 = i;
  v17 = v13;
  v18 = a6;
  [v12 enumerateTaskParallelly:v14 blockCompleteAllTask:&__block_literal_global_421];
}

void __83__CDMCATIChildService_constructWeightMatrixForInference_numModels_guids_modelType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) objectAtIndex:?];
  v23 = [v5 componentsSeparatedByString:@"."];
  v25 = [v23 objectAtIndex:0];
  v6 = [*(*(a1 + 40) + 56) stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
  v26 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v26];
  v24 = v26;
  if (v8)
  {
    [*(a1 + 48) replaceObjectAtIndex:a3 withObject:v25];
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 count];
    if (v10 != *(*(a1 + 40) + 16))
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(a1 + 40) getProductAreaName];
        v22 = *(*(a1 + 40) + 16);
        *buf = 136315906;
        v28 = "[CDMCATIChildService constructWeightMatrixForInference:numModels:guids:modelType:]_block_invoke";
        v29 = 2112;
        v30 = v21;
        v31 = 1024;
        *v32 = v22;
        *&v32[4] = 2112;
        *&v32[6] = v5;
        _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: %@: Weight vector doesn't have size %d in file %@", buf, 0x26u);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    if (v10 >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = [v9 objectAtIndex:v12];
        v14 = v13;
        v15 = *(a1 + 56);
        if (v15 == 1)
        {
          break;
        }

        if (!v15)
        {
          [v13 floatValue];
          v17 = 128;
          v18 = 224;
LABEL_12:
          *(*(*(a1 + 40) + v17) + 4 * *(*(a1 + 40) + 16) * a3 + 4 * v12) = v16;
          *(*(a1 + 40) + v18) = 1;
        }

        if (*(*(a1 + 40) + 16) <= ++v12)
        {
          goto LABEL_17;
        }
      }

      [v13 floatValue];
      v17 = 136;
      v18 = 226;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = [*(a1 + 40) getProductAreaName];
      *buf = 136315906;
      v28 = "[CDMCATIChildService constructWeightMatrixForInference:numModels:guids:modelType:]_block_invoke";
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      *v32 = v5;
      *&v32[8] = 2112;
      *&v32[10] = v24;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s %@: Error parsing JSON for CATI Weight Matrix named %@: %@", buf, 0x2Au);
    }
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
}

- (id)setup:(id)a3 assetVersion:(int64_t)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(NSBundle *)self->_catiAssetBundle resourcePath];
    *buf = 136315394;
    v75 = "[CDMCATIChildService setup:assetVersion:]";
    v76 = 2112;
    v77 = v7;
    _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Setting up child service at this path:%@", buf, 0x16u);
  }

  v8 = [(NSBundle *)self->_catiAssetBundle resourcePath];
  v9 = [v8 stringByAppendingPathComponent:@"cati_manifest.json"];
  manifestPath = self->_manifestPath;
  self->_manifestPath = v9;

  v11 = [(CDMCATIChildService *)self getManifestFromPath:self->_manifestPath];
  catiManifest = self->_catiManifest;
  self->_catiManifest = v11;

  v13 = os_signpost_id_generate(CDMLogContext);
  v14 = CDMLogContext;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v17 = [(CDMCATIChildService *)self getProductAreaName];
    *buf = 138412290;
    v75 = v17;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CATI", "setupChildService (%@)", buf, 0xCu);
  }

  v18 = self->_catiManifest;
  if (v18 && [(CDMCATIManifest *)v18 manifestValid])
  {
    v19 = [v5 dynamicConfig];
    v66 = [v19 embeddingConfigs];

    v65 = [v66 getEmbeddingConfigForFactor:@"com.apple.siri.nl.cati"];
    v20 = [v65 embeddingModelDimension];
    self->_embeddingDimensionCATI = [v20 integerValue];

    self->_embeddingDimensionCATIPlusOne = self->_embeddingDimensionCATI + 1;
    v21 = [(NSBundle *)self->_catiAssetBundle resourcePath];
    v22 = [v21 stringByAppendingPathComponent:@"positive_overrides"];
    posOverridesDirectoryPath = self->_posOverridesDirectoryPath;
    self->_posOverridesDirectoryPath = v22;

    v24 = [(NSBundle *)self->_catiAssetBundle resourcePath];
    v25 = [v24 stringByAppendingPathComponent:@"weights"];
    weightsDirectoryPath = self->_weightsDirectoryPath;
    self->_weightsDirectoryPath = v25;

    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v68 = [v27 contentsOfDirectoryAtPath:self->_weightsDirectoryPath error:0];

    v28 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = [(CDMCATIChildService *)self getPosOverridesDirectoryPath];
    v67 = [v28 contentsOfDirectoryAtPath:v29 error:0];

    v30 = [(CDMCATIManifest *)self->_catiManifest usoEntity];
    usoEntity = self->_usoEntity;
    self->_usoEntity = v30;

    self->_usoElementId = [(CDMCATIManifest *)self->_catiManifest usoElementId];
    v32 = [(CDMCATIManifest *)self->_catiManifest usoVerb];
    usoVerb = self->_usoVerb;
    self->_usoVerb = v32;

    v34 = [(CDMCATIManifest *)self->_catiManifest usoEdge];
    usoEdge = self->_usoEdge;
    self->_usoEdge = v34;

    [(CDMCATIManifest *)self->_catiManifest confidenceScoreThreshold];
    self->_confidenceThreshold = v36;
    [(CDMCATIManifest *)self->_catiManifest multiturnConfidenceScoreThreshold];
    self->_multiturnConfidenceThreshold = v37;
    self->_expectedPositiveUtterances = [(CDMCATIManifest *)self->_catiManifest expectedPositiveUtterances];
    if ([v68 count])
    {
      v38 = [(CDMCATIChildService *)self getManifest];
      v64 = [v38 getWeightGuidsForModelType:0];

      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __42__CDMCATIChildService_setup_assetVersion___block_invoke;
      v70[3] = &unk_1E862EBE8;
      v71 = v68;
      v72 = v64;
      v40 = v39;
      v73 = v40;
      [v71 enumerateTaskParallelly:v70 blockCompleteAllTask:&__block_literal_global_2039];
      v41 = [v40 count];
      self->_numModels = v41;
      v42 = self->_embeddingDimensionCATIPlusOne * v41;
      operator new[]();
    }

    v46 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v63 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315394;
      v75 = "[CDMCATIChildService setup:assetVersion:]";
      v76 = 2112;
      v77 = v63;
      _os_log_debug_impl(&dword_1DC287000, v46, OS_LOG_TYPE_DEBUG, "%s %@: There are no weight files for this product area. CATI will run only on overrides, if available", buf, 0x16u);
    }

    self->_invocationOverridesEnabled = 0;
    if ([v67 count])
    {
      v47 = [(NSBundle *)self->_catiAssetBundle resourcePath];
      v48 = [v47 stringByAppendingPathComponent:@"bf_files"];

      v49 = [MEMORY[0x1E696AC08] defaultManager];
      v50 = [v49 contentsOfDirectoryAtPath:v48 error:0];

      v51 = [v50 count];
      if (a4 >= 3104 && v51)
      {
        if (![(CDMCATIChildService *)self getFlatbuffersBFAt:v48]&& ![(CDMCATIChildService *)self getBloomFilterAt:v48])
        {
          v52 = [(CDMCATIChildService *)self getProductAreaName];
          v43 = [v52 stringByAppendingString:{@": Bloom filter setup failed, service is disabled. Check logs for error message"}];

          v53 = CDMLogContext;
          v54 = v53;
          if (v16 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v53))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v54, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
          }

LABEL_36:
          v45 = v66;
          goto LABEL_37;
        }
      }

      else
      {
        v56 = [(CDMCATIChildService *)self buildLegacyBloomFilterAndExactMatchDictForInvocation:v67];
        positiveOverridesInvocationBloomFilterLegacy = self->_positiveOverridesInvocationBloomFilterLegacy;
        self->_positiveOverridesInvocationBloomFilterLegacy = v56;
      }
    }

    else
    {
      v48 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v55 = [(CDMCATIChildService *)self getPosOverridesDirectoryPath];
        *buf = 136315394;
        v75 = "[CDMCATIChildService setup:assetVersion:]";
        v76 = 2112;
        v77 = v55;
        _os_log_impl(&dword_1DC287000, v48, OS_LOG_TYPE_INFO, "%s [WARN]: Not able to find any CATI positive overrides in %@", buf, 0x16u);
      }
    }

    if ([(CDMCATIChildService *)self getInvocationOverridesEnabled])
    {
      v58 = CDMLogContext;
      v48 = v58;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v48, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
      }

      v43 = 0;
    }

    else
    {
      v59 = [(CDMCATIChildService *)self getProductAreaName];
      v43 = [v59 stringByAppendingString:{@": No CATI positive overrides are available, service is disabled."}];

      v60 = CDMLogContext;
      v48 = v60;
      if (v16 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v60))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v48, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
      }
    }

    goto LABEL_36;
  }

  v43 = [@"CATI manifest not found or invalid at " stringByAppendingString:self->_manifestPath];
  v44 = CDMLogContext;
  v45 = v44;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v45, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
  }

LABEL_37:

  v61 = *MEMORY[0x1E69E9840];

  return v43;
}

void __42__CDMCATIChildService_setup_assetVersion___block_invoke(id *a1)
{
  v4 = [a1[4] objectAtIndex:?];
  v2 = [v4 componentsSeparatedByString:@"."];
  v3 = [v2 objectAtIndex:0];
  if ([a1[5] containsObject:v3])
  {
    [a1[6] addObject:v4];
  }
}

- (CDMCATIChildService)initWithAssetBundle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CDMCATIChildService;
  v5 = [(CDMCATIChildService *)&v8 init];
  catiAssetBundle = v5->_catiAssetBundle;
  v5->_catiAssetBundle = v4;

  return v5;
}

@end