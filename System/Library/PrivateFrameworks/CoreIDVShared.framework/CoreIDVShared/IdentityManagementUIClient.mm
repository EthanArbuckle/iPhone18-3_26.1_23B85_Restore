@interface IdentityManagementUIClient
- (_TtC13CoreIDVShared26IdentityManagementUIClient)init;
- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)deleteBoundACLWithCompletionHandler:(id)handler;
- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler;
- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler;
- (void)getLivenessConfigWithCompletionHandler:(id)handler;
- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler;
- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler;
- (void)globalAuthACLInfoWithCompletionHandler:(id)handler;
- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler;
- (void)invalidate;
- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler;
- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler;
- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler;
- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler;
- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler;
- (void)retrieveBoundACLWithCompletionHandler:(id)handler;
- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler;
- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler;
- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler;
- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler;
- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler;
- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler;
@end

@implementation IdentityManagementUIClient

- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = options;
  *(v14 + 24) = network;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02A48;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02A50;
  v17[5] = v16;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02A58, v17);
}

- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02A28;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02A30;
  v17[5] = v16;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02A38, v17);
}

- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = documents;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_225CCE994();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D02A08;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_225D02A10;
  v19[5] = v18;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;
  selfCopy = self;
  sub_225CBCC70(0, 0, v14, &unk_225D02A18, v19);
}

- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = identifier;
  v16[4] = options;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_225CCE994();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D029E8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_225D029F0;
  v19[5] = v18;
  configurationCopy = configuration;
  identifierCopy = identifier;
  selfCopy = self;
  sub_225CBCC70(0, 0, v14, &unk_225D029F8, v19);
}

- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_225CCE994();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D029C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D029D0;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v10, &unk_225D029D8, v15);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v27 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = configuration;
  *(v20 + 24) = documents;
  *(v20 + 32) = options;
  *(v20 + 40) = uploads;
  *(v20 + 48) = bytes;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_225CCE994();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_225D029A8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_225D029B0;
  v23[5] = v22;
  configurationCopy = configuration;
  documentsCopy = documents;
  selfCopy = self;
  sub_225CBCC70(0, 0, v18, &unk_225D029B8, v23);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = code;
  v16[4] = options;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_225CCE994();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D02988;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_225D02990;
  v19[5] = v18;
  configurationCopy = configuration;
  codeCopy = code;
  selfCopy = self;
  sub_225CBCC70(0, 0, v14, &unk_225D02998, v19);
}

- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = configuration;
  v16[3] = documents;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_225CCE994();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D02968;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_225D02970;
  v19[5] = v18;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;
  selfCopy = self;
  sub_225CBCC70(0, 0, v14, &unk_225D02978, v19);
}

- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02948;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02950;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02958, v13);
}

- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = us;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_225CCE994();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D02928;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02930;
  v15[5] = v14;
  usCopy = us;
  selfCopy = self;
  sub_225CBCC70(0, 0, v10, &unk_225D02938, v15);
}

- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02908;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02910;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02918, v13);
}

- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = for;
  v14[3] = country;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D028E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D028F0;
  v17[5] = v16;
  forCopy = for;
  countryCopy = country;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D028F8, v17);
}

- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_225CCE994();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D028C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D028D0;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v10, &unk_225D028D8, v15);
}

- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D028A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D028B0;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D028B8, v13);
}

- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02888;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02890;
  v17[5] = v16;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02898, v17);
}

- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = type;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02868;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02870;
  v17[5] = v16;
  dataCopy = data;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02878, v17);
}

- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = context;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02848;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02850;
  v17[5] = v16;
  dataCopy = data;
  contextCopy = context;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02858, v17);
}

- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02828;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02830;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02838, v13);
}

- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02808;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02810;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02818, v13);
}

- (void)retrieveBoundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D027E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D027F0;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D027F8, v13);
}

- (void)deleteBoundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D027C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D027D0;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D027D8, v13);
}

- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D027A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D027B0;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D027B8, v13);
}

- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02788;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02790;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02798, v13);
}

- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = l;
  *(v14 + 24) = uploads;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02768;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02770;
  v17[5] = v16;
  lCopy = l;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02778, v17);
}

- (void)getLivenessConfigWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02748;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02750;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02758, v13);
}

- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02728;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02730;
  v17[5] = v16;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02738, v17);
}

- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_225CCE994();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D02708;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02710;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v10, &unk_225D02718, v15);
}

- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_225CCE994();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D026E8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D026F0;
  v15[5] = v14;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v10, &unk_225D026F8, v15);
}

- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v26 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = type;
  *(v20 + 24) = settings;
  *(v20 + 32) = consent;
  *(v20 + 40) = consentType;
  *(v20 + 48) = options;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_225CCE994();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_225D026C8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_225D026D0;
  v23[5] = v22;
  settingsCopy = settings;
  selfCopy = self;
  sub_225CBCC70(0, 0, v18, &unk_225D026D8, v23);
}

- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D026A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D026B0;
  v17[5] = v16;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D026B8, v17);
}

- (void)invalidate
{
  selfCopy = self;
  sub_225CAEDAC();
}

- (void)globalAuthACLInfoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02688;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02690;
  v13[5] = v12;
  selfCopy = self;
  sub_225CBCC70(0, 0, v8, &unk_225D02698, v13);
}

- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_225CCE994();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02678;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225CF9CD0;
  v17[5] = v16;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v12, &unk_225D02030, v17);
}

- (_TtC13CoreIDVShared26IdentityManagementUIClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end