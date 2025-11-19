@interface HomeEnergyProxy
- (_TtC16HomeEnergyDaemon15HomeEnergyProxy)init;
- (void)addGuidanceTokenWithGridID:(NSString *)a3 siteID:(NSUUID *)a4 completionHandler:(id)a5;
- (void)clearCacheWithCompletionHandler:(id)a3;
- (void)clearEnergyKitDataForAllHomesWithCompletionHandler:(id)a3;
- (void)completedOnboardingWithId:(NSString *)a3 completionHandler:(id)a4;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 accessTokenExpirationDate:(NSDate *)a7 refreshToken:(NSString *)a8 address:(NSString *)a9 utilityCustomerName:(NSString *)a10 completionHandler:(id)a11;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 accessTokenExpirationDate:(NSDate *)a7 refreshToken:(NSString *)a8 utilityCustomerName:(NSString *)a9 completionHandler:(id)a10;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 refreshToken:(NSString *)a7 completionHandler:(id)a8;
- (void)deleteAllDeviceInsightsBefore:(NSDate *)a3 completionHandler:(id)a4;
- (void)deleteAllGuidanceTrackersWithCompletionHandler:(id)a3;
- (void)deleteAllHistoricalWithCompletionHandler:(id)a3;
- (void)deleteEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)a3 completionHandler:(id)a4;
- (void)deleteGuidanceTokenWithSiteID:(NSUUID *)a3 completionHandler:(id)a4;
- (void)disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler:(id)a3;
- (void)disableGuidanceCollectionWithCompletionHandler:(id)a3;
- (void)disableGuidanceCollectionWithGridID:(NSString *)a3 completionHandler:(id)a4;
- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)a3 completionHandler:(id)a4;
- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)a3 homeID:(NSString *)a4 completionHandler:(id)a5;
- (void)downloadLoadEventsWithSite:(NSUUID *)a3 range:(NSDateInterval *)a4 limit:(int64_t)a5 completionHandler:(id)a6;
- (void)dumpAllDataWithCompletionHandler:(id)a3;
- (void)enableGuidanceCollectionWithGridID:(NSString *)a3 completionHandler:(id)a4;
- (void)enableNextCleanEnergyWindowNotificationsForGridID:(NSString *)a3 notificationContext:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)energyGuidanceFor:(NSString *)a3 guidanceType:(signed __int16)a4 ratePlan:(NSString *)a5 utilityID:(NSString *)a6 timeZone:(NSString *)a7 withCaching:(BOOL)a8 completionHandler:(id)a9;
- (void)forceIndependentTokenRotateWithToken:(NSString *)a3 utility:(NSString *)a4 completionHandler:(id)a5;
- (void)generateMockAMIDataWithSiteID:(NSString *)a3 startDate:(NSString *)a4 endDate:(NSString *)a5 forceAllReadingsToConstant:(BOOL)a6 recordInterval:(int64_t)a7 batchSize:(int64_t)a8 rateSchedule:(NSString *)a9 netMetering:(BOOL)a10 direction:(int64_t)a11 randomization:(BOOL)a12 completionHandler:(id)a13;
- (void)generateMultipleMeterMockAMIDataWithSiteID:(NSString *)a3 startDate:(NSString *)a4 endDate:(NSString *)a5 recordInterval:(int64_t)a6 rateSchedule:(NSString *)a7 multipleMeters:(int64_t)a8 completionHandler:(id)a9;
- (void)getAllSiteIDsWithCompletionHandler:(id)a3;
- (void)getAllUtilitiesWithCountryCode:(NSString *)a3 completionHandler:(id)a4;
- (void)getCurrentLocationWithCompletionHandler:(id)a3;
- (void)getGridIDWithToken:(NSUUID *)a3 completionHandler:(id)a4;
- (void)getGuidanceTokenWithGridID:(NSString *)a3 siteID:(NSUUID *)a4 completionHandler:(id)a5;
- (void)getKVSDictionaryWithKey:(NSString *)a3 completionHandler:(id)a4;
- (void)getMockOptionsWithCompletionHandler:(id)a3;
- (void)gridIDLookupWithCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4;
- (void)historicalEnergyUsageWithInterval:(NSString *)a3 start:(NSDate *)a4 timezone:(NSString *)a5 utilityID:(NSString *)a6 subscriptionID:(NSString *)a7 completionHandler:(id)a8;
- (void)historicalGridQualityFor:(NSString *)a3 from:(NSDateInterval *)a4 withCaching:(BOOL)a5 completionHandler:(id)a6;
- (void)intervalReadingWithSubscriptionID:(NSString *)a3 utilityID:(NSString *)a4 interval:(NSString *)a5 start:(NSDate *)a6 end:(NSDate *)a7 timeZone:(NSTimeZone *)a8 flowDirection:(NSString *)a9 completionHandler:(id)a10;
- (void)isDataAvailableWithSiteID:(NSString *)a3 completionHandler:(id)a4;
- (void)isNextCleanEnergyWindowNotificationEnabledForGridID:(NSString *)a3 homeID:(NSString *)a4 completionHandler:(id)a5;
- (void)isTAFEnabledWithUtilityID:(NSString *)a3 completionHandler:(id)a4;
- (void)leanHistoricalEnergyUsageWithInterval:(NSString *)a3 start:(NSDate *)a4 end:(NSDate *)a5 subscriptionID:(NSString *)a6 utilityID:(NSString *)a7 timeZone:(NSTimeZone *)a8 flowDirection:(int64_t)a9 siteID:(NSString *)a10 completionHandler:(id)a11;
- (void)processAllEventDataWithCompletionHandler:(id)a3;
- (void)processDailyDigestsWithSiteID:(NSUUID *)a3 sourceID:(NSString *)a4 deviceID:(NSString *)a5 between:(NSDateInterval *)a6 completionHandler:(id)a7;
- (void)processSiteRawLoadEventsWithSiteID:(NSUUID *)a3 after:(NSDate *)a4 completionHandler:(id)a5;
- (void)refreshCurrentUtilityPeakPeriodsWithSiteID:(NSString *)a3 start:(NSDate *)a4 completionHandler:(id)a5;
- (void)registerEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)a3 completionHandler:(id)a4;
- (void)renewUtilityAccessTokenWithSiteID:(NSString *)a3 completionHandler:(id)a4;
- (void)requestAddToShareForHomeUUID:(NSUUID *)a3 siteID:(NSString *)a4 completionHandler:(id)a5;
- (void)resetUtilityDataWithCompletionHandler:(id)a3;
- (void)revokeUtilitySubscriptionWithSiteID:(NSString *)a3 completionHandler:(id)a4;
- (void)saveAllHistoricalWithGridID:(NSString *)a3 untilDate:(NSDate *)a4 mockCompleteSession:(BOOL)a5 deterministicMock:(BOOL)a6 completionHandler:(id)a7;
- (void)setKVSDictionaryWithKey:(NSString *)a3 dict:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)setMockOptionsWithOptions:(int64_t)a3 completionHandler:(id)a4;
- (void)siteWithSiteID:(NSString *)a3 completionHandler:(id)a4;
- (void)submitTestTaskWithTaskID:(NSString *)a3 delay:(int64_t)a4 withRetry:(BOOL)a5 taskDuration:(int64_t)a6 cancelOnly:(BOOL)a7 completionHandler:(id)a8;
- (void)testDelegateForGridIds:(NSSet *)a3 completionHandler:(id)a4;
- (void)testNotificationsForGridID:(NSString *)a3 notificationContext:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)testSetMockURLSessionWithCompletionHandler:(id)a3;
- (void)triggerAMIFetchFromDropboxWithCompletionHandler:(id)a3;
- (void)updateCompletedOnboardingWithId:(NSString *)a3 value:(BOOL)a4 completionHandler:(id)a5;
- (void)updateFieldsWithSiteID:(NSString *)a3 from:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)updateLocationWithSiteID:(NSString *)a3 location:(CLLocation *)a4 completionHandler:(id)a5;
- (void)updateRatePlanInclusionInGuidanceWithSiteID:(NSString *)a3 toggle:(BOOL)a4 completionHandler:(id)a5;
- (void)updateStateWithSiteID:(NSString *)a3 state:(NSString *)a4 completionHandler:(id)a5;
- (void)updateSubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 subscriptionID:(NSString *)a5 accessToken:(NSString *)a6 refreshToken:(NSString *)a7 ckFunctionToken:(NSString *)a8 accountName:(NSString *)a9 accountNumber:(NSString *)a10 address:(NSString *)a11 serviceLocationID:(NSString *)a12 alternateSupplier:(NSString *)a13 accessTokenExpirationDate:(NSDate *)a14 completionHandler:(id)a15;
- (void)updateTimezoneWithSiteID:(NSString *)a3 timezone:(NSString *)a4 completionHandler:(id)a5;
- (void)useMockDataWithFilePath:(NSString *)a3 disableMock:(BOOL)a4 validityDate:(NSDate *)a5 completionHandler:(id)a6;
- (void)utilitiesNearLocationWithLocation:(CLLocationCoordinate2D)a3 completionHandler:(id)a4;
- (void)utilityInformationWithUtilityID:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation HomeEnergyProxy

- (void)disableGuidanceCollectionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364600, v13);
}

- (void)disableGuidanceCollectionWithGridID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3645E0, v15);
}

- (void)enableGuidanceCollectionWithGridID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3645C0, v15);
}

- (void)dumpAllDataWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B3645A0, v13);
}

- (void)useMockDataWithFilePath:(NSString *)a3 disableMock:(BOOL)a4 validityDate:(NSDate *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
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
  v20 = a3;
  v21 = a5;
  v22 = self;
  sub_22B1818A0(0, 0, v14, &unk_22B364580, v19);
}

- (void)testNotificationsForGridID:(NSString *)a3 notificationContext:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B364560, v17);
}

- (void)testDelegateForGridIds:(NSSet *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364540, v15);
}

- (void)testSetMockURLSessionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364520, v13);
}

- (void)isNextCleanEnergyWindowNotificationEnabledForGridID:(NSString *)a3 homeID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B364500, v17);
}

- (void)enableNextCleanEnergyWindowNotificationsForGridID:(NSString *)a3 notificationContext:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3644E0, v17);
}

- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)a3 homeID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3644C0, v17);
}

- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3644A0, v15);
}

- (void)disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364480, v13);
}

- (void)energyGuidanceFor:(NSString *)a3 guidanceType:(signed __int16)a4 ratePlan:(NSString *)a5 utilityID:(NSString *)a6 timeZone:(NSString *)a7 withCaching:(BOOL)a8 completionHandler:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = a8;
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
  v25 = a3;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = self;
  sub_22B1818A0(0, 0, v19, &unk_22B364450, v24);
}

- (void)saveAllHistoricalWithGridID:(NSString *)a3 untilDate:(NSDate *)a4 mockCompleteSession:(BOOL)a5 deterministicMock:(BOOL)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 33) = a6;
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
  v22 = a3;
  v23 = a4;
  v24 = self;
  sub_22B1818A0(0, 0, v16, &unk_22B364428, v21);
}

- (void)deleteAllHistoricalWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364408, v13);
}

- (void)deleteAllGuidanceTrackersWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B3643E8, v13);
}

- (void)historicalGridQualityFor:(NSString *)a3 from:(NSDateInterval *)a4 withCaching:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_22B1818A0(0, 0, v14, &unk_22B3643C8, v19);
}

- (void)gridIDLookupWithCoordinate:(CLLocationCoordinate2D)a3 completionHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
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
  v17 = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3643A8, v16);
}

- (_TtC16HomeEnergyDaemon15HomeEnergyProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)registerEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364388, v15);
}

- (void)getAllSiteIDsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364368, v13);
}

- (void)deleteEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364348, v15);
}

- (void)siteWithSiteID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364328, v15);
}

- (void)updateLocationWithSiteID:(NSString *)a3 location:(CLLocation *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B364308, v17);
}

- (void)updateTimezoneWithSiteID:(NSString *)a3 timezone:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3642E8, v17);
}

- (void)updateStateWithSiteID:(NSString *)a3 state:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3642C8, v17);
}

- (void)updateFieldsWithSiteID:(NSString *)a3 from:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3642A8, v17);
}

- (void)updateSubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 subscriptionID:(NSString *)a5 accessToken:(NSString *)a6 refreshToken:(NSString *)a7 ckFunctionToken:(NSString *)a8 accountName:(NSString *)a9 accountNumber:(NSString *)a10 address:(NSString *)a11 serviceLocationID:(NSString *)a12 alternateSupplier:(NSString *)a13 accessTokenExpirationDate:(NSDate *)a14 completionHandler:(id)a15
{
  v50 = a8;
  v51 = self;
  v48 = a7;
  v49 = a14;
  v47 = a13;
  v45 = a3;
  v46 = a9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v44 = &v44 - v21;
  v22 = _Block_copy(a15);
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v24 = v50;
  v23[6] = v48;
  v23[7] = v24;
  v23[8] = a9;
  v23[9] = a10;
  v23[10] = a11;
  v23[11] = a12;
  v25 = v49;
  v23[12] = v47;
  v23[13] = v25;
  v26 = v51;
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
  v31 = v45;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = v48;
  v36 = v50;
  v37 = v46;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = v47;
  v42 = v49;
  v43 = v51;
  sub_22B1818A0(0, 0, v28, &unk_22B364270, v30);
}

- (void)getCurrentLocationWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364248, v13);
}

- (void)leanHistoricalEnergyUsageWithInterval:(NSString *)a3 start:(NSDate *)a4 end:(NSDate *)a5 subscriptionID:(NSString *)a6 utilityID:(NSString *)a7 timeZone:(NSTimeZone *)a8 flowDirection:(int64_t)a9 siteID:(NSString *)a10 completionHandler:(id)a11
{
  v36 = a9;
  v37 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v36 - v19;
  v21 = _Block_copy(a11);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v23 = v36;
  v24 = v37;
  v22[6] = a7;
  v22[7] = v24;
  v22[8] = v23;
  v22[9] = a10;
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
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v37;
  v34 = a10;
  v35 = self;
  sub_22B1818A0(0, 0, v20, &unk_22B364218, v27);
}

- (void)historicalEnergyUsageWithInterval:(NSString *)a3 start:(NSDate *)a4 timezone:(NSString *)a5 utilityID:(NSString *)a6 subscriptionID:(NSString *)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
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
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = self;
  sub_22B1818A0(0, 0, v18, &unk_22B3641F8, v23);
}

- (void)isDataAvailableWithSiteID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3641D8, v15);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 refreshToken:(NSString *)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
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
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = self;
  sub_22B1818A0(0, 0, v18, &unk_22B3641B8, v23);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 accessTokenExpirationDate:(NSDate *)a7 refreshToken:(NSString *)a8 utilityCustomerName:(NSString *)a9 completionHandler:(id)a10
{
  v35 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v34 = &v34 - v19;
  v20 = _Block_copy(a10);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = a9;
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
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = v35;
  v33 = self;
  sub_22B1818A0(0, 0, v23, &unk_22B364198, v25);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 accessTokenExpirationDate:(NSDate *)a7 refreshToken:(NSString *)a8 address:(NSString *)a9 utilityCustomerName:(NSString *)a10 completionHandler:(id)a11
{
  v36 = self;
  v37 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = _Block_copy(a11);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v22 = v36;
  v23 = v37;
  v21[6] = a7;
  v21[7] = v23;
  v21[8] = a9;
  v21[9] = a10;
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
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v37;
  v33 = a9;
  v34 = a10;
  v35 = v36;
  sub_22B1818A0(0, 0, v19, &unk_22B364178, v26);
}

- (void)revokeUtilitySubscriptionWithSiteID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364158, v15);
}

- (void)renewUtilityAccessTokenWithSiteID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364138, v15);
}

- (void)completedOnboardingWithId:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364118, v15);
}

- (void)updateCompletedOnboardingWithId:(NSString *)a3 value:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
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
  v18 = a3;
  v19 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B3640F8, v17);
}

- (void)utilitiesNearLocationWithLocation:(CLLocationCoordinate2D)a3 completionHandler:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
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
  v17 = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3640D8, v16);
}

- (void)utilityInformationWithUtilityID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3640B8, v15);
}

- (void)isTAFEnabledWithUtilityID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364098, v15);
}

- (void)getAllUtilitiesWithCountryCode:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364078, v15);
}

- (void)clearCacheWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B364058, v13);
}

- (void)intervalReadingWithSubscriptionID:(NSString *)a3 utilityID:(NSString *)a4 interval:(NSString *)a5 start:(NSDate *)a6 end:(NSDate *)a7 timeZone:(NSTimeZone *)a8 flowDirection:(NSString *)a9 completionHandler:(id)a10
{
  v35 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v34 = &v34 - v19;
  v20 = _Block_copy(a10);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = a9;
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
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = v35;
  v33 = self;
  sub_22B1818A0(0, 0, v23, &unk_22B364010, v25);
}

- (void)generateMockAMIDataWithSiteID:(NSString *)a3 startDate:(NSString *)a4 endDate:(NSString *)a5 forceAllReadingsToConstant:(BOOL)a6 recordInterval:(int64_t)a7 batchSize:(int64_t)a8 rateSchedule:(NSString *)a9 netMetering:(BOOL)a10 direction:(int64_t)a11 randomization:(BOOL)a12 completionHandler:(id)a13
{
  v36 = a8;
  v37 = a4;
  v34 = a7;
  v35 = self;
  v38 = a5;
  HIDWORD(v33) = a12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - v19;
  v21 = _Block_copy(a13);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  v23 = v35;
  v24 = v36;
  *(v22 + 48) = v34;
  *(v22 + 56) = v24;
  *(v22 + 64) = a9;
  *(v22 + 72) = a10;
  *(v22 + 80) = a11;
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
  v28 = a3;
  v29 = v37;
  v30 = v38;
  v31 = a9;
  v32 = v23;
  sub_22B1818A0(0, 0, v20, &unk_22B363FF0, v27);
}

- (void)generateMultipleMeterMockAMIDataWithSiteID:(NSString *)a3 startDate:(NSString *)a4 endDate:(NSString *)a5 recordInterval:(int64_t)a6 rateSchedule:(NSString *)a7 multipleMeters:(int64_t)a8 completionHandler:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
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
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a7;
  v29 = self;
  sub_22B1818A0(0, 0, v19, &unk_22B363FD0, v24);
}

- (void)refreshCurrentUtilityPeakPeriodsWithSiteID:(NSString *)a3 start:(NSDate *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363FA0, v17);
}

- (void)triggerAMIFetchFromDropboxWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363F68, v13);
}

- (void)requestAddToShareForHomeUUID:(NSUUID *)a3 siteID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363F30, v17);
}

- (void)resetUtilityDataWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363EF0, v13);
}

- (void)submitTestTaskWithTaskID:(NSString *)a3 delay:(int64_t)a4 withRetry:(BOOL)a5 taskDuration:(int64_t)a6 cancelOnly:(BOOL)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
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
  v24 = a3;
  v25 = self;
  sub_22B1818A0(0, 0, v18, &unk_22B363EA8, v23);
}

- (void)setKVSDictionaryWithKey:(NSString *)a3 dict:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363E80, v17);
}

- (void)getKVSDictionaryWithKey:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363E58, v15);
}

- (void)forceIndependentTokenRotateWithToken:(NSString *)a3 utility:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363E30, v17);
}

- (void)addGuidanceTokenWithGridID:(NSString *)a3 siteID:(NSUUID *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363E10, v17);
}

- (void)deleteGuidanceTokenWithSiteID:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363DF0, v15);
}

- (void)getGuidanceTokenWithGridID:(NSString *)a3 siteID:(NSUUID *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363DC8, v17);
}

- (void)getGridIDWithToken:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363DA8, v15);
}

- (void)downloadLoadEventsWithSite:(NSUUID *)a3 range:(NSDateInterval *)a4 limit:(int64_t)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_22B1818A0(0, 0, v14, &unk_22B363D88, v19);
}

- (void)updateRatePlanInclusionInGuidanceWithSiteID:(NSString *)a3 toggle:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
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
  v18 = a3;
  v19 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363D60, v17);
}

- (void)processDailyDigestsWithSiteID:(NSUUID *)a3 sourceID:(NSString *)a4 deviceID:(NSString *)a5 between:(NSDateInterval *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
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
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_22B1818A0(0, 0, v16, &unk_22B363D38, v21);
}

- (void)processSiteRawLoadEventsWithSiteID:(NSUUID *)a3 after:(NSDate *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_22B1818A0(0, 0, v12, &unk_22B363D10, v17);
}

- (void)processAllEventDataWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363CE8, v13);
}

- (void)deleteAllDeviceInsightsBefore:(NSDate *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B363CC8, v15);
}

- (void)clearEnergyKitDataForAllHomesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363CA8, v13);
}

- (void)setMockOptionsWithOptions:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = self;
  sub_22B1818A0(0, 0, v10, &unk_22B364810, v15);
}

- (void)getMockOptionsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_22B1818A0(0, 0, v8, &unk_22B363CA8, v13);
}

@end