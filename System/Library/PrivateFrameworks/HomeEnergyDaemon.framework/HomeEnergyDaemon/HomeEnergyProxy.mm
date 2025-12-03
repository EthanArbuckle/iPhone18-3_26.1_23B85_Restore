@interface HomeEnergyProxy
- (_TtC16HomeEnergyDaemon15HomeEnergyProxy)init;
- (void)addGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler;
- (void)clearCacheWithCompletionHandler:(id)handler;
- (void)clearEnergyKitDataForAllHomesWithCompletionHandler:(id)handler;
- (void)completedOnboardingWithId:(NSString *)id completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken address:(NSString *)address utilityCustomerName:(NSString *)self0 completionHandler:(id)self1;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken utilityCustomerName:(NSString *)name completionHandler:(id)self0;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken completionHandler:(id)handler;
- (void)deleteAllDeviceInsightsBefore:(NSDate *)before completionHandler:(id)handler;
- (void)deleteAllGuidanceTrackersWithCompletionHandler:(id)handler;
- (void)deleteAllHistoricalWithCompletionHandler:(id)handler;
- (void)deleteEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler;
- (void)deleteGuidanceTokenWithSiteID:(NSUUID *)d completionHandler:(id)handler;
- (void)disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler:(id)handler;
- (void)disableGuidanceCollectionWithCompletionHandler:(id)handler;
- (void)disableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler;
- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d completionHandler:(id)handler;
- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler;
- (void)downloadLoadEventsWithSite:(NSUUID *)site range:(NSDateInterval *)range limit:(int64_t)limit completionHandler:(id)handler;
- (void)dumpAllDataWithCompletionHandler:(id)handler;
- (void)enableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler;
- (void)enableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler;
- (void)energyGuidanceFor:(NSString *)for guidanceType:(signed __int16)type ratePlan:(NSString *)plan utilityID:(NSString *)d timeZone:(NSString *)zone withCaching:(BOOL)caching completionHandler:(id)handler;
- (void)forceIndependentTokenRotateWithToken:(NSString *)token utility:(NSString *)utility completionHandler:(id)handler;
- (void)generateMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate forceAllReadingsToConstant:(BOOL)constant recordInterval:(int64_t)interval batchSize:(int64_t)size rateSchedule:(NSString *)schedule netMetering:(BOOL)self0 direction:(int64_t)self1 randomization:(BOOL)self2 completionHandler:(id)self3;
- (void)generateMultipleMeterMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate recordInterval:(int64_t)interval rateSchedule:(NSString *)schedule multipleMeters:(int64_t)meters completionHandler:(id)handler;
- (void)getAllSiteIDsWithCompletionHandler:(id)handler;
- (void)getAllUtilitiesWithCountryCode:(NSString *)code completionHandler:(id)handler;
- (void)getCurrentLocationWithCompletionHandler:(id)handler;
- (void)getGridIDWithToken:(NSUUID *)token completionHandler:(id)handler;
- (void)getGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler;
- (void)getKVSDictionaryWithKey:(NSString *)key completionHandler:(id)handler;
- (void)getMockOptionsWithCompletionHandler:(id)handler;
- (void)gridIDLookupWithCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)historicalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start timezone:(NSString *)timezone utilityID:(NSString *)d subscriptionID:(NSString *)iD completionHandler:(id)handler;
- (void)historicalGridQualityFor:(NSString *)for from:(NSDateInterval *)from withCaching:(BOOL)caching completionHandler:(id)handler;
- (void)intervalReadingWithSubscriptionID:(NSString *)d utilityID:(NSString *)iD interval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end timeZone:(NSTimeZone *)zone flowDirection:(NSString *)direction completionHandler:(id)self0;
- (void)isDataAvailableWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)isNextCleanEnergyWindowNotificationEnabledForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler;
- (void)isTAFEnabledWithUtilityID:(NSString *)d completionHandler:(id)handler;
- (void)leanHistoricalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end subscriptionID:(NSString *)d utilityID:(NSString *)iD timeZone:(NSTimeZone *)zone flowDirection:(int64_t)direction siteID:(NSString *)self0 completionHandler:(id)self1;
- (void)processAllEventDataWithCompletionHandler:(id)handler;
- (void)processDailyDigestsWithSiteID:(NSUUID *)d sourceID:(NSString *)iD deviceID:(NSString *)deviceID between:(NSDateInterval *)between completionHandler:(id)handler;
- (void)processSiteRawLoadEventsWithSiteID:(NSUUID *)d after:(NSDate *)after completionHandler:(id)handler;
- (void)refreshCurrentUtilityPeakPeriodsWithSiteID:(NSString *)d start:(NSDate *)start completionHandler:(id)handler;
- (void)registerEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler;
- (void)renewUtilityAccessTokenWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)requestAddToShareForHomeUUID:(NSUUID *)d siteID:(NSString *)iD completionHandler:(id)handler;
- (void)resetUtilityDataWithCompletionHandler:(id)handler;
- (void)revokeUtilitySubscriptionWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)saveAllHistoricalWithGridID:(NSString *)d untilDate:(NSDate *)date mockCompleteSession:(BOOL)session deterministicMock:(BOOL)mock completionHandler:(id)handler;
- (void)setKVSDictionaryWithKey:(NSString *)key dict:(NSDictionary *)dict completionHandler:(id)handler;
- (void)setMockOptionsWithOptions:(int64_t)options completionHandler:(id)handler;
- (void)siteWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)submitTestTaskWithTaskID:(NSString *)d delay:(int64_t)delay withRetry:(BOOL)retry taskDuration:(int64_t)duration cancelOnly:(BOOL)only completionHandler:(id)handler;
- (void)testDelegateForGridIds:(NSSet *)ids completionHandler:(id)handler;
- (void)testNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler;
- (void)testSetMockURLSessionWithCompletionHandler:(id)handler;
- (void)triggerAMIFetchFromDropboxWithCompletionHandler:(id)handler;
- (void)updateCompletedOnboardingWithId:(NSString *)id value:(BOOL)value completionHandler:(id)handler;
- (void)updateFieldsWithSiteID:(NSString *)d from:(NSDictionary *)from completionHandler:(id)handler;
- (void)updateLocationWithSiteID:(NSString *)d location:(CLLocation *)location completionHandler:(id)handler;
- (void)updateRatePlanInclusionInGuidanceWithSiteID:(NSString *)d toggle:(BOOL)toggle completionHandler:(id)handler;
- (void)updateStateWithSiteID:(NSString *)d state:(NSString *)state completionHandler:(id)handler;
- (void)updateSubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD subscriptionID:(NSString *)subscriptionID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken ckFunctionToken:(NSString *)functionToken accountName:(NSString *)name accountNumber:(NSString *)self0 address:(NSString *)self1 serviceLocationID:(NSString *)self2 alternateSupplier:(NSString *)self3 accessTokenExpirationDate:(NSDate *)self4 completionHandler:(id)self5;
- (void)updateTimezoneWithSiteID:(NSString *)d timezone:(NSString *)timezone completionHandler:(id)handler;
- (void)useMockDataWithFilePath:(NSString *)path disableMock:(BOOL)mock validityDate:(NSDate *)date completionHandler:(id)handler;
- (void)utilitiesNearLocationWithLocation:(CLLocationCoordinate2D)location completionHandler:(id)handler;
- (void)utilityInformationWithUtilityID:(NSString *)d completionHandler:(id)handler;
@end

@implementation HomeEnergyProxy

- (void)disableGuidanceCollectionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B3645F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B3645F8;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364600, v13);
}

- (void)disableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3645D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3645D8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3645E0, v15);
}

- (void)enableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3645B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3645B8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3645C0, v15);
}

- (void)dumpAllDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364590;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364598;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B3645A0, v13);
}

- (void)useMockDataWithFilePath:(NSString *)path disableMock:(BOOL)mock validityDate:(NSDate *)date completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = path;
  *(v16 + 24) = mock;
  *(v16 + 32) = date;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_22B360B6C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B364570;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22B364578;
  v19[5] = v18;
  pathCopy = path;
  dateCopy = date;
  selfCopy = self;
  sub_22B1818A0(0, 0, v14, &unk_22B364580, v19);
}

- (void)testNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = context;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B364550;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B364558;
  v17[5] = v16;
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B364560, v17);
}

- (void)testDelegateForGridIds:(NSSet *)ids completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = ids;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364530;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364538;
  v15[5] = v14;
  idsCopy = ids;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364540, v15);
}

- (void)testSetMockURLSessionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364510;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364518;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364520, v13);
}

- (void)isNextCleanEnergyWindowNotificationEnabledForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3644F0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3644F8;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B364500, v17);
}

- (void)enableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = context;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3644D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3644D8;
  v17[5] = v16;
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3644E0, v17);
}

- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3644B0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3644B8;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3644C0, v17);
}

- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364490;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364498;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3644A0, v15);
}

- (void)disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364470;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364478;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364480, v13);
}

- (void)energyGuidanceFor:(NSString *)for guidanceType:(signed __int16)type ratePlan:(NSString *)plan utilityID:(NSString *)d timeZone:(NSString *)zone withCaching:(BOOL)caching completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = for;
  *(v21 + 24) = type;
  *(v21 + 32) = plan;
  *(v21 + 40) = d;
  *(v21 + 48) = zone;
  *(v21 + 56) = caching;
  *(v21 + 64) = v20;
  *(v21 + 72) = self;
  v22 = sub_22B360B6C();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B364440;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B364448;
  v24[5] = v23;
  forCopy = for;
  planCopy = plan;
  dCopy = d;
  zoneCopy = zone;
  selfCopy = self;
  sub_22B1818A0(0, 0, v19, &unk_22B364450, v24);
}

- (void)saveAllHistoricalWithGridID:(NSString *)d untilDate:(NSDate *)date mockCompleteSession:(BOOL)session deterministicMock:(BOOL)mock completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = d;
  *(v18 + 24) = date;
  *(v18 + 32) = session;
  *(v18 + 33) = mock;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = sub_22B360B6C();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22B364418;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22B364420;
  v21[5] = v20;
  dCopy = d;
  dateCopy = date;
  selfCopy = self;
  sub_22B1818A0(0, 0, v16, &unk_22B364428, v21);
}

- (void)deleteAllHistoricalWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B3643F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364400;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364408, v13);
}

- (void)deleteAllGuidanceTrackersWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B3643D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B3643E0;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B3643E8, v13);
}

- (void)historicalGridQualityFor:(NSString *)for from:(NSDateInterval *)from withCaching:(BOOL)caching completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = for;
  *(v16 + 24) = from;
  *(v16 + 32) = caching;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_22B360B6C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B3643B8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22B3643C0;
  v19[5] = v18;
  forCopy = for;
  fromCopy = from;
  selfCopy = self;
  sub_22B1818A0(0, 0, v14, &unk_22B3643C8, v19);
}

- (void)gridIDLookupWithCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = latitude;
  v13[3] = longitude;
  *(v13 + 4) = v12;
  *(v13 + 5) = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364398;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3643A0;
  v16[5] = v15;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3643A8, v16);
}

- (_TtC16HomeEnergyDaemon15HomeEnergyProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)registerEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = site;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364378;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364380;
  v15[5] = v14;
  siteCopy = site;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364388, v15);
}

- (void)getAllSiteIDsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364358;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364360;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364368, v13);
}

- (void)deleteEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = site;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364338;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364340;
  v15[5] = v14;
  siteCopy = site;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364348, v15);
}

- (void)siteWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364318;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364320;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364328, v15);
}

- (void)updateLocationWithSiteID:(NSString *)d location:(CLLocation *)location completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = location;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3642F8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B364300;
  v17[5] = v16;
  dCopy = d;
  locationCopy = location;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B364308, v17);
}

- (void)updateTimezoneWithSiteID:(NSString *)d timezone:(NSString *)timezone completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = timezone;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3642D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3642E0;
  v17[5] = v16;
  dCopy = d;
  timezoneCopy = timezone;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3642E8, v17);
}

- (void)updateStateWithSiteID:(NSString *)d state:(NSString *)state completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = state;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3642B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3642C0;
  v17[5] = v16;
  dCopy = d;
  stateCopy = state;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3642C8, v17);
}

- (void)updateFieldsWithSiteID:(NSString *)d from:(NSDictionary *)from completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = from;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B364298;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3642A0;
  v17[5] = v16;
  dCopy = d;
  fromCopy = from;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3642A8, v17);
}

- (void)updateSubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD subscriptionID:(NSString *)subscriptionID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken ckFunctionToken:(NSString *)functionToken accountName:(NSString *)name accountNumber:(NSString *)self0 address:(NSString *)self1 serviceLocationID:(NSString *)self2 alternateSupplier:(NSString *)self3 accessTokenExpirationDate:(NSDate *)self4 completionHandler:(id)self5
{
  functionTokenCopy = functionToken;
  selfCopy = self;
  refreshTokenCopy = refreshToken;
  dateCopy = date;
  supplierCopy = supplier;
  dCopy = d;
  nameCopy = name;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v44 = &v44 - v21;
  v22 = _Block_copy(handler);
  v23 = swift_allocObject();
  v23[2] = d;
  v23[3] = iD;
  v23[4] = subscriptionID;
  v23[5] = token;
  v24 = functionTokenCopy;
  v23[6] = refreshTokenCopy;
  v23[7] = v24;
  v23[8] = name;
  v23[9] = number;
  v23[10] = address;
  v23[11] = locationID;
  v25 = dateCopy;
  v23[12] = supplierCopy;
  v23[13] = v25;
  v26 = selfCopy;
  v23[14] = v22;
  v23[15] = v26;
  v27 = sub_22B360B6C();
  v28 = v44;
  (*(*(v27 - 8) + 56))(v44, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_22B364260;
  v29[5] = v23;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_22B364268;
  v30[5] = v29;
  v31 = dCopy;
  iDCopy = iD;
  subscriptionIDCopy = subscriptionID;
  tokenCopy = token;
  v35 = refreshTokenCopy;
  v36 = functionTokenCopy;
  v37 = nameCopy;
  numberCopy = number;
  addressCopy = address;
  locationIDCopy = locationID;
  v41 = supplierCopy;
  v42 = dateCopy;
  v43 = selfCopy;
  sub_22B1818A0(0, 0, v28, &unk_22B364270, v30);
}

- (void)getCurrentLocationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364238;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364240;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364248, v13);
}

- (void)leanHistoricalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end subscriptionID:(NSString *)d utilityID:(NSString *)iD timeZone:(NSTimeZone *)zone flowDirection:(int64_t)direction siteID:(NSString *)self0 completionHandler:(id)self1
{
  directionCopy = direction;
  zoneCopy = zone;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &directionCopy - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  v22[2] = interval;
  v22[3] = start;
  v22[4] = end;
  v22[5] = d;
  v23 = directionCopy;
  v24 = zoneCopy;
  v22[6] = iD;
  v22[7] = v24;
  v22[8] = v23;
  v22[9] = siteID;
  v22[10] = v21;
  v22[11] = self;
  v25 = sub_22B360B6C();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_22B364208;
  v26[5] = v22;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_22B364210;
  v27[5] = v26;
  intervalCopy = interval;
  startCopy = start;
  endCopy = end;
  dCopy = d;
  iDCopy = iD;
  v33 = zoneCopy;
  siteIDCopy = siteID;
  selfCopy = self;
  sub_22B1818A0(0, 0, v20, &unk_22B364218, v27);
}

- (void)historicalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start timezone:(NSString *)timezone utilityID:(NSString *)d subscriptionID:(NSString *)iD completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = interval;
  v20[3] = start;
  v20[4] = timezone;
  v20[5] = d;
  v20[6] = iD;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_22B360B6C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B3641E8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B3641F0;
  v23[5] = v22;
  intervalCopy = interval;
  startCopy = start;
  timezoneCopy = timezone;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v18, &unk_22B3641F8, v23);
}

- (void)isDataAvailableWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3641C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3641D0;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3641D8, v15);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = d;
  v20[3] = iD;
  v20[4] = locationID;
  v20[5] = token;
  v20[6] = refreshToken;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_22B360B6C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B3641A8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B3641B0;
  v23[5] = v22;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  selfCopy = self;
  sub_22B1818A0(0, 0, v18, &unk_22B3641B8, v23);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken utilityCustomerName:(NSString *)name completionHandler:(id)self0
{
  nameCopy = name;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v34 = &v34 - v19;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = iD;
  v21[4] = locationID;
  v21[5] = token;
  v21[6] = date;
  v21[7] = refreshToken;
  v21[8] = name;
  v21[9] = v20;
  v21[10] = self;
  v22 = sub_22B360B6C();
  v23 = v34;
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B364188;
  v24[5] = v21;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B364190;
  v25[5] = v24;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  dateCopy = date;
  refreshTokenCopy = refreshToken;
  v32 = nameCopy;
  selfCopy = self;
  sub_22B1818A0(0, 0, v23, &unk_22B364198, v25);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken address:(NSString *)address utilityCustomerName:(NSString *)self0 completionHandler:(id)self1
{
  selfCopy = self;
  refreshTokenCopy = refreshToken;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &selfCopy - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = iD;
  v21[4] = locationID;
  v21[5] = token;
  v22 = selfCopy;
  v23 = refreshTokenCopy;
  v21[6] = date;
  v21[7] = v23;
  v21[8] = address;
  v21[9] = name;
  v21[10] = v20;
  v21[11] = v22;
  v24 = sub_22B360B6C();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B364168;
  v25[5] = v21;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_22B364170;
  v26[5] = v25;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  dateCopy = date;
  v32 = refreshTokenCopy;
  addressCopy = address;
  nameCopy = name;
  v35 = selfCopy;
  sub_22B1818A0(0, 0, v19, &unk_22B364178, v26);
}

- (void)revokeUtilitySubscriptionWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364148;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364150;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364158, v15);
}

- (void)renewUtilityAccessTokenWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364128;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364130;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364138, v15);
}

- (void)completedOnboardingWithId:(NSString *)id completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = id;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364108;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364110;
  v15[5] = v14;
  idCopy = id;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364118, v15);
}

- (void)updateCompletedOnboardingWithId:(NSString *)id value:(BOOL)value completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = id;
  *(v14 + 24) = value;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3640E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3640F0;
  v17[5] = v16;
  idCopy = id;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3640F8, v17);
}

- (void)utilitiesNearLocationWithLocation:(CLLocationCoordinate2D)location completionHandler:(id)handler
{
  longitude = location.longitude;
  latitude = location.latitude;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = latitude;
  v13[3] = longitude;
  *(v13 + 4) = v12;
  *(v13 + 5) = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3640C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3640D0;
  v16[5] = v15;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3640D8, v16);
}

- (void)utilityInformationWithUtilityID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3640A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3640B0;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3640B8, v15);
}

- (void)isTAFEnabledWithUtilityID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364088;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364090;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364098, v15);
}

- (void)getAllUtilitiesWithCountryCode:(NSString *)code completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = code;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364068;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364070;
  v15[5] = v14;
  codeCopy = code;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364078, v15);
}

- (void)clearCacheWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364048;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364050;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364058, v13);
}

- (void)intervalReadingWithSubscriptionID:(NSString *)d utilityID:(NSString *)iD interval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end timeZone:(NSTimeZone *)zone flowDirection:(NSString *)direction completionHandler:(id)self0
{
  directionCopy = direction;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v34 = &v34 - v19;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = iD;
  v21[4] = interval;
  v21[5] = start;
  v21[6] = end;
  v21[7] = zone;
  v21[8] = direction;
  v21[9] = v20;
  v21[10] = self;
  v22 = sub_22B360B6C();
  v23 = v34;
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B364000;
  v24[5] = v21;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B364008;
  v25[5] = v24;
  dCopy = d;
  iDCopy = iD;
  intervalCopy = interval;
  startCopy = start;
  endCopy = end;
  zoneCopy = zone;
  v32 = directionCopy;
  selfCopy = self;
  sub_22B1818A0(0, 0, v23, &unk_22B364010, v25);
}

- (void)generateMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate forceAllReadingsToConstant:(BOOL)constant recordInterval:(int64_t)interval batchSize:(int64_t)size rateSchedule:(NSString *)schedule netMetering:(BOOL)self0 direction:(int64_t)self1 randomization:(BOOL)self2 completionHandler:(id)self3
{
  sizeCopy = size;
  dateCopy = date;
  intervalCopy = interval;
  selfCopy = self;
  endDateCopy = endDate;
  HIDWORD(v33) = randomization;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  *(v22 + 16) = d;
  *(v22 + 24) = date;
  *(v22 + 32) = endDate;
  *(v22 + 40) = constant;
  v23 = selfCopy;
  v24 = sizeCopy;
  *(v22 + 48) = intervalCopy;
  *(v22 + 56) = v24;
  *(v22 + 64) = schedule;
  *(v22 + 72) = metering;
  *(v22 + 80) = direction;
  *(v22 + 88) = BYTE4(v33);
  *(v22 + 96) = v21;
  *(v22 + 104) = v23;
  v25 = sub_22B360B6C();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_22B363FE0;
  v26[5] = v22;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_22B363FE8;
  v27[5] = v26;
  dCopy = d;
  v29 = dateCopy;
  v30 = endDateCopy;
  scheduleCopy = schedule;
  v32 = v23;
  sub_22B1818A0(0, 0, v20, &unk_22B363FF0, v27);
}

- (void)generateMultipleMeterMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate recordInterval:(int64_t)interval rateSchedule:(NSString *)schedule multipleMeters:(int64_t)meters completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = d;
  v21[3] = date;
  v21[4] = endDate;
  v21[5] = interval;
  v21[6] = schedule;
  v21[7] = meters;
  v21[8] = v20;
  v21[9] = self;
  v22 = sub_22B360B6C();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B363FC0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B363FC8;
  v24[5] = v23;
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  scheduleCopy = schedule;
  selfCopy = self;
  sub_22B1818A0(0, 0, v19, &unk_22B363FD0, v24);
}

- (void)refreshCurrentUtilityPeakPeriodsWithSiteID:(NSString *)d start:(NSDate *)start completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = start;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363F90;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363F98;
  v17[5] = v16;
  dCopy = d;
  startCopy = start;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363FA0, v17);
}

- (void)triggerAMIFetchFromDropboxWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363F58;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363F60;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363F68, v13);
}

- (void)requestAddToShareForHomeUUID:(NSUUID *)d siteID:(NSString *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363F20;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363F28;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363F30, v17);
}

- (void)resetUtilityDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363EE0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363EE8;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363EF0, v13);
}

- (void)submitTestTaskWithTaskID:(NSString *)d delay:(int64_t)delay withRetry:(BOOL)retry taskDuration:(int64_t)duration cancelOnly:(BOOL)only completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = d;
  *(v20 + 24) = delay;
  *(v20 + 32) = retry;
  *(v20 + 40) = duration;
  *(v20 + 48) = only;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_22B360B6C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B363E98;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B363EA0;
  v23[5] = v22;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v18, &unk_22B363EA8, v23);
}

- (void)setKVSDictionaryWithKey:(NSString *)key dict:(NSDictionary *)dict completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = key;
  v14[3] = dict;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363E70;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363E78;
  v17[5] = v16;
  keyCopy = key;
  dictCopy = dict;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363E80, v17);
}

- (void)getKVSDictionaryWithKey:(NSString *)key completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363E48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363E50;
  v15[5] = v14;
  keyCopy = key;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363E58, v15);
}

- (void)forceIndependentTokenRotateWithToken:(NSString *)token utility:(NSString *)utility completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = token;
  v14[3] = utility;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363E20;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363E28;
  v17[5] = v16;
  tokenCopy = token;
  utilityCopy = utility;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363E30, v17);
}

- (void)addGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363E00;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363E08;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363E10, v17);
}

- (void)deleteGuidanceTokenWithSiteID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363DE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363DE8;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363DF0, v15);
}

- (void)getGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363DB8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363DC0;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363DC8, v17);
}

- (void)getGridIDWithToken:(NSUUID *)token completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = token;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363D98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363DA0;
  v15[5] = v14;
  tokenCopy = token;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363DA8, v15);
}

- (void)downloadLoadEventsWithSite:(NSUUID *)site range:(NSDateInterval *)range limit:(int64_t)limit completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = site;
  v16[3] = range;
  v16[4] = limit;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22B360B6C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B363D78;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22B363D80;
  v19[5] = v18;
  siteCopy = site;
  rangeCopy = range;
  selfCopy = self;
  sub_22B1818A0(0, 0, v14, &unk_22B363D88, v19);
}

- (void)updateRatePlanInclusionInGuidanceWithSiteID:(NSString *)d toggle:(BOOL)toggle completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = d;
  *(v14 + 24) = toggle;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363D50;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363D58;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363D60, v17);
}

- (void)processDailyDigestsWithSiteID:(NSUUID *)d sourceID:(NSString *)iD deviceID:(NSString *)deviceID between:(NSDateInterval *)between completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = d;
  v18[3] = iD;
  v18[4] = deviceID;
  v18[5] = between;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_22B360B6C();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22B363D28;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22B363D30;
  v21[5] = v20;
  dCopy = d;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  betweenCopy = between;
  selfCopy = self;
  sub_22B1818A0(0, 0, v16, &unk_22B363D38, v21);
}

- (void)processSiteRawLoadEventsWithSiteID:(NSUUID *)d after:(NSDate *)after completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = after;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363D00;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363D08;
  v17[5] = v16;
  dCopy = d;
  afterCopy = after;
  selfCopy = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363D10, v17);
}

- (void)processAllEventDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363CD8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363CE0;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363CE8, v13);
}

- (void)deleteAllDeviceInsightsBefore:(NSDate *)before completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = before;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363CB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363CC0;
  v15[5] = v14;
  beforeCopy = before;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363CC8, v15);
}

- (void)clearEnergyKitDataForAllHomesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363C98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363CA0;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363CA8, v13);
}

- (void)setMockOptionsWithOptions:(int64_t)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364800;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364808;
  v15[5] = v14;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364810, v15);
}

- (void)getMockOptionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B3647C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363CA0;
  v13[5] = v12;
  selfCopy = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363CA8, v13);
}

@end