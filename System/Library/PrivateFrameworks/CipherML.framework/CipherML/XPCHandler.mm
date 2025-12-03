@interface XPCHandler
- (void)asyncResponseDataByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)asyncResponseSimilarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)cacheFileForUseCase:(NSString *)case reply:(id)reply;
- (void)configureUseCaseGroupWithName:(NSString *)name useCaseGroup:(CMLUseCaseGroup *)group reply:(id)reply;
- (void)constructPIRBatchRequestWithIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)constructPIRBatchRequestWithKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)constructPIRRequestWithIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)constructPIRRequestWithKeyword:(NSData *)keyword withEvaluationKey:(BOOL)key shardId:(NSString *)id pirConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)dataVaultDirectory:(id)directory;
- (void)decryptBatchOfSimilarityScores:(NSData *)scores clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRBatchResponse:(NSData *)response indices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRBatchResponse:(NSData *)response keywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRResponse:(NSData *)response index:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRResponse:(NSData *)response keyword:(NSData *)keyword shardId:(NSString *)id clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRResponse:(NSData *)response latitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)encryptBatchOfElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)encryptDifferentiallyPrivateFakes:(NSArray *)fakes shardIndex:(int64_t)index shardCount:(int64_t)count pecConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)generateEvaluationKey:(CMLPIRConfig *)key clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)listUseCaseGroupsWithReply:(id)reply;
- (void)queryStatusForClientConfig:(CMLClientConfig *)config options:(unint64_t)options reply:(id)reply;
- (void)removeCachedEntriesByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)setPECConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)setPIRConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)similarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
@end

@implementation XPCHandler

- (void)requestDataByIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = index;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(by:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_563Tu;
  v17[5] = v16;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_568Tu, v17);
}

- (void)requestDataByIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = indices;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_546Tu;
  v17[5] = v16;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_551Tu, v17);
}

- (void)requestDataByKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = keywords;
  v16[3] = ids;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_529Tu;
  v19[5] = v18;
  keywordsCopy = keywords;
  idsCopy = ids;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_534Tu, v19);
}

- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  *(v16 + 16) = latitude;
  *(v16 + 24) = longitude;
  *(v16 + 32) = config;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_514Tu;
  v19[5] = v18;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_519Tu, v19);
}

- (void)removeCachedEntriesByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = keywords;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_499Tu;
  v17[5] = v16;
  keywordsCopy = keywords;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_504Tu, v17);
}

- (void)setPIRConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = config;
  v14[3] = clientConfig;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.setPIRConfig(_:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_484Tu;
  v17[5] = v16;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_489Tu, v17);
}

- (void)generateEvaluationKey:(CMLPIRConfig *)key clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = key;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_469Tu;
  v17[5] = v16;
  keyCopy = key;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_474Tu, v17);
}

- (void)constructPIRRequestWithIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = index;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_454Tu;
  v17[5] = v16;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_459Tu, v17);
}

- (void)constructPIRBatchRequestWithIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = indices;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_439Tu;
  v17[5] = v16;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_444Tu, v17);
}

- (void)decryptPIRResponse:(NSData *)response index:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = response;
  v16[3] = index;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_424Tu;
  v19[5] = v18;
  responseCopy = response;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_429Tu, v19);
}

- (void)decryptPIRBatchResponse:(NSData *)response indices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = response;
  v16[3] = indices;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_407Tu;
  v19[5] = v18;
  responseCopy = response;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_412Tu, v19);
}

- (void)constructPIRRequestWithKeyword:(NSData *)keyword withEvaluationKey:(BOOL)key shardId:(NSString *)id pirConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(reply);
  v20 = swift_allocObject();
  *(v20 + 16) = keyword;
  *(v20 + 24) = key;
  *(v20 + 32) = id;
  *(v20 + 40) = config;
  *(v20 + 48) = clientConfig;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &_sIeghH_IeAgH_TRTA_392Tu;
  v23[5] = v22;
  keywordCopy = keyword;
  idCopy = id;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v18, &_sIeAgH_ytIeAgHr_TRTA_397Tu, v23);
}

- (void)constructPIRBatchRequestWithKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = keywords;
  v16[3] = ids;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_377Tu;
  v19[5] = v18;
  keywordsCopy = keywords;
  idsCopy = ids;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_382Tu, v19);
}

- (void)decryptPIRResponse:(NSData *)response keyword:(NSData *)keyword shardId:(NSString *)id clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(reply);
  v18 = swift_allocObject();
  v18[2] = response;
  v18[3] = keyword;
  v18[4] = id;
  v18[5] = config;
  v18[6] = v17;
  v18[7] = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &_sIeghH_IeAgH_TRTA_362Tu;
  v21[5] = v20;
  responseCopy = response;
  keywordCopy = keyword;
  idCopy = id;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v16, &_sIeAgH_ytIeAgHr_TRTA_367Tu, v21);
}

- (void)decryptPIRBatchResponse:(NSData *)response keywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = response;
  v16[3] = keywords;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_345Tu;
  v19[5] = v18;
  responseCopy = response;
  keywordsCopy = keywords;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_350Tu, v19);
}

- (void)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  *(v16 + 16) = latitude;
  *(v16 + 24) = longitude;
  *(v16 + 32) = config;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_330Tu;
  v19[5] = v18;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_335Tu, v19);
}

- (void)decryptPIRResponse:(NSData *)response latitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(reply);
  v18 = swift_allocObject();
  *(v18 + 16) = response;
  *(v18 + 24) = latitude;
  *(v18 + 32) = longitude;
  *(v18 + 40) = config;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &_sIeghH_IeAgH_TRTA_315Tu;
  v21[5] = v20;
  responseCopy = response;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v16, &_sIeAgH_ytIeAgHr_TRTA_320Tu, v21);
}

- (void)asyncResponseDataByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = keywords;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_298Tu;
  v17[5] = v16;
  keywordsCopy = keywords;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_303Tu, v17);
}

- (void)similarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = elements;
  v16[3] = indices;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_281Tu;
  v19[5] = v18;
  elementsCopy = elements;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_286Tu, v19);
}

- (void)setPECConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = config;
  v14[3] = clientConfig;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_266Tu;
  v17[5] = v16;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_271Tu, v17);
}

- (void)encryptBatchOfElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = elements;
  v16[3] = indices;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_251Tu;
  v19[5] = v18;
  elementsCopy = elements;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_256Tu, v19);
}

- (void)encryptDifferentiallyPrivateFakes:(NSArray *)fakes shardIndex:(int64_t)index shardCount:(int64_t)count pecConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(reply);
  v20 = swift_allocObject();
  v20[2] = fakes;
  v20[3] = index;
  v20[4] = count;
  v20[5] = config;
  v20[6] = clientConfig;
  v20[7] = v19;
  v20[8] = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &_sIeghH_IeAgH_TRTA_234Tu;
  v23[5] = v22;
  fakesCopy = fakes;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v18, &_sIeAgH_ytIeAgHr_TRTA_239Tu, v23);
}

- (void)decryptBatchOfSimilarityScores:(NSData *)scores clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = scores;
  v14[3] = config;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_217Tu;
  v17[5] = v16;
  scoresCopy = scores;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_222Tu, v17);
}

- (void)asyncResponseSimilarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = elements;
  v16[3] = indices;
  v16[4] = config;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &_sIeghH_IeAgH_TRTA_200Tu;
  v19[5] = v18;
  elementsCopy = elements;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v14, &_sIeAgH_ytIeAgHr_TRTA_205Tu, v19);
}

- (void)queryStatusForClientConfig:(CMLClientConfig *)config options:(unint64_t)options reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = config;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.queryStatus(for:options:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_185Tu;
  v17[5] = v16;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_190Tu, v17);
}

- (void)dataVaultDirectory:(id)directory
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(directory);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.dataVaultDirectory();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_171Tu;
  v13[5] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_176Tu, v13);
}

- (void)cacheFileForUseCase:(NSString *)case reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = case;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.cacheFile(for:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_157Tu;
  v15[5] = v14;
  caseCopy = case;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_162Tu, v15);
}

- (void)listUseCaseGroupsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.listUseCaseGroups();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_142Tu;
  v13[5] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_147Tu, v13);
}

- (void)configureUseCaseGroupWithName:(NSString *)name useCaseGroup:(CMLUseCaseGroup *)group reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = name;
  v14[3] = group;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTATu;
  v17[5] = v16;
  nameCopy = name;
  groupCopy = group;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTATu, v17);
}

@end