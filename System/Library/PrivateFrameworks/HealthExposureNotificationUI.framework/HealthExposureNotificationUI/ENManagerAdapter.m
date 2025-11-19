@interface ENManagerAdapter
+ (_TtC28HealthExposureNotificationUI16ENManagerAdapter)defaultAdapter;
+ (void)setDefaultAdapter:(id)a3;
- (BOOL)areAvailabilityAlertsEnabled;
- (BOOL)isAvailabilityAlertsSwitchEnabled;
- (BOOL)isExposureLoggingDataPresent;
- (BOOL)tccContainsRecordForBundleIdentifier:(id)a3;
- (NSSet)statusChangeObservers;
- (int64_t)exposureNotificationStatus;
- (void)didEnterLegalConsentPageForRegion:(id)a3;
- (void)fetchAgencyModelForRegionCode:(id)a3 reason:(unsigned int)a4 completion:(id)a5;
- (void)notifyChangeObserversForChangeFrom:(int64_t)a3 to:(int64_t)a4;
- (void)onboardingDidStartForRegion:(id)a3 source:(int64_t)a4;
- (void)setActivePhaseOneAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)setAreAvailabilityAlertsEnabled:(BOOL)a3;
- (void)setExposureNotificationStatus:(int64_t)a3;
- (void)setIsAvailabilityAlertsSwitchEnabled:(BOOL)a3;
- (void)setIsExposureLoggingDataPresent:(BOOL)a3;
- (void)setShareAnalyticsEnabled:(BOOL)a3 region:(id)a4 version:(id)a5 completion:(id)a6;
- (void)setStatusChangeObservers:(id)a3;
- (void)setTravelStatusEnabled:(BOOL)a3 region:(id)a4 completion:(id)a5;
- (void)setUserConsent:(int64_t)a3 region:(id)a4 text:(id)a5 version:(id)a6 completion:(id)a7;
@end

@implementation ENManagerAdapter

- (int64_t)exposureNotificationStatus
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setExposureNotificationStatus:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isExposureLoggingDataPresent
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsExposureLoggingDataPresent:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)areAvailabilityAlertsEnabled
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAreAvailabilityAlertsEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isAvailabilityAlertsSwitchEnabled
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAvailabilityAlertsSwitchEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  swift_beginAccess();
  *(self + v5) = a3;
}

+ (_TtC28HealthExposureNotificationUI16ENManagerAdapter)defaultAdapter
{
  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static ENManagerAdapter.defaultAdapter;
}

+ (void)setDefaultAdapter:(id)a3
{
  v3 = qword_28151EB60;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static ENManagerAdapter.defaultAdapter;
  static ENManagerAdapter.defaultAdapter = v4;
}

- (NSSet)statusChangeObservers
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  sub_2516CFAA4(&qword_27F454410, type metadata accessor for ENManagerAdapter.StatusChangeObserver);

  v5 = sub_2517032C4();

  return v5;
}

- (void)setStatusChangeObservers:(id)a3
{
  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  sub_2516CFAA4(&qword_27F454410, type metadata accessor for ENManagerAdapter.StatusChangeObserver);
  v4 = sub_2517032D4();
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)onboardingDidStartForRegion:(id)a3 source:(int64_t)a4
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = self;
  v7[4] = a3;
  v8 = a3;
  v10 = self;
  v9 = v8;
  sub_2516C59C8(sub_2516ABFD8, v7);
}

- (void)didEnterLegalConsentPageForRegion:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = a3;
  v8 = self;
  v7 = v6;
  sub_2516C59C8(sub_2516CFC58, v5);
}

- (void)setActivePhaseOneAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_251703164();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = sub_2516CFD10;
  v10[6] = v9;
  v11 = self;

  sub_2516C59C8(sub_2516CFC4C, v10);
}

- (void)fetchAgencyModelForRegionCode:(id)a3 reason:(unsigned int)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = objc_opt_self();
  v11 = self;
  v12 = [v10 regionWithCode_];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = a4;
  *(v13 + 40) = sub_2516CF644;
  *(v13 + 48) = v9;
  v15 = v11;
  v14 = v12;

  sub_2516C59C8(sub_2516B9C50, v13);
}

- (void)setShareAnalyticsEnabled:(BOOL)a3 region:(id)a4 version:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_251703164();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  *(v14 + 32) = a3;
  *(v14 + 40) = self;
  *(v14 + 48) = a4;
  *(v14 + 56) = sub_2516CFD10;
  *(v14 + 64) = v13;
  v15 = a4;
  v17 = self;
  v16 = v15;

  sub_2516C59C8(sub_2516CFC48, v14);
}

- (void)setTravelStatusEnabled:(BOOL)a3 region:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = sub_2516CFD10;
  *(v10 + 48) = v9;
  v11 = a4;
  v13 = self;
  v12 = v11;

  sub_2516C59C8(sub_2516CFC44, v10);
}

- (void)setUserConsent:(int64_t)a3 region:(id)a4 text:(id)a5 version:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (a5)
  {
    a5 = sub_251703164();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_251703164();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v16;
  v18[4] = a3;
  v18[5] = a5;
  v18[6] = v13;
  v18[7] = self;
  v18[8] = a4;
  v18[9] = sub_2516CF548;
  v18[10] = v17;
  v19 = a4;
  v21 = self;
  v20 = v19;

  sub_2516C59C8(sub_2516CFC40, v18);
}

- (BOOL)tccContainsRecordForBundleIdentifier:(id)a3
{
  sub_251703164();
  v4 = self;
  _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0();
  v6 = v5;

  return v6 & 1;
}

- (void)notifyChangeObserversForChangeFrom:(int64_t)a3 to:(int64_t)a4
{
  v6 = self;
  sub_2516EFBAC(a3, a4);
}

@end