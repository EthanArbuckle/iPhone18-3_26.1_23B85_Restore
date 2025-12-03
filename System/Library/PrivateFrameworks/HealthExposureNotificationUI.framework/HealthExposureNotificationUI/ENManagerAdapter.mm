@interface ENManagerAdapter
+ (_TtC28HealthExposureNotificationUI16ENManagerAdapter)defaultAdapter;
+ (void)setDefaultAdapter:(id)adapter;
- (BOOL)areAvailabilityAlertsEnabled;
- (BOOL)isAvailabilityAlertsSwitchEnabled;
- (BOOL)isExposureLoggingDataPresent;
- (BOOL)tccContainsRecordForBundleIdentifier:(id)identifier;
- (NSSet)statusChangeObservers;
- (int64_t)exposureNotificationStatus;
- (void)didEnterLegalConsentPageForRegion:(id)region;
- (void)fetchAgencyModelForRegionCode:(id)code reason:(unsigned int)reason completion:(id)completion;
- (void)notifyChangeObserversForChangeFrom:(int64_t)from to:(int64_t)to;
- (void)onboardingDidStartForRegion:(id)region source:(int64_t)source;
- (void)setActivePhaseOneAppWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)setAreAvailabilityAlertsEnabled:(BOOL)enabled;
- (void)setExposureNotificationStatus:(int64_t)status;
- (void)setIsAvailabilityAlertsSwitchEnabled:(BOOL)enabled;
- (void)setIsExposureLoggingDataPresent:(BOOL)present;
- (void)setShareAnalyticsEnabled:(BOOL)enabled region:(id)region version:(id)version completion:(id)completion;
- (void)setStatusChangeObservers:(id)observers;
- (void)setTravelStatusEnabled:(BOOL)enabled region:(id)region completion:(id)completion;
- (void)setUserConsent:(int64_t)consent region:(id)region text:(id)text version:(id)version completion:(id)completion;
@end

@implementation ENManagerAdapter

- (int64_t)exposureNotificationStatus
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setExposureNotificationStatus:(int64_t)status
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_exposureNotificationStatus;
  swift_beginAccess();
  *(self + v5) = status;
}

- (BOOL)isExposureLoggingDataPresent
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsExposureLoggingDataPresent:(BOOL)present
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isExposureLoggingDataPresent;
  swift_beginAccess();
  *(self + v5) = present;
}

- (BOOL)areAvailabilityAlertsEnabled
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAreAvailabilityAlertsEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_areAvailabilityAlertsEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (BOOL)isAvailabilityAlertsSwitchEnabled
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAvailabilityAlertsSwitchEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_isAvailabilityAlertsSwitchEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
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

+ (void)setDefaultAdapter:(id)adapter
{
  v3 = qword_28151EB60;
  adapterCopy = adapter;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static ENManagerAdapter.defaultAdapter;
  static ENManagerAdapter.defaultAdapter = adapterCopy;
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

- (void)setStatusChangeObservers:(id)observers
{
  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  sub_2516CFAA4(&qword_27F454410, type metadata accessor for ENManagerAdapter.StatusChangeObserver);
  v4 = sub_2517032D4();
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)onboardingDidStartForRegion:(id)region source:(int64_t)source
{
  v7 = swift_allocObject();
  v7[2] = source;
  v7[3] = self;
  v7[4] = region;
  regionCopy = region;
  selfCopy = self;
  v9 = regionCopy;
  sub_2516C59C8(sub_2516ABFD8, v7);
}

- (void)didEnterLegalConsentPageForRegion:(id)region
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = region;
  regionCopy = region;
  selfCopy = self;
  v7 = regionCopy;
  sub_2516C59C8(sub_2516CFC58, v5);
}

- (void)setActivePhaseOneAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;

  sub_2516C59C8(sub_2516CFC4C, v10);
}

- (void)fetchAgencyModelForRegionCode:(id)code reason:(unsigned int)reason completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = objc_opt_self();
  selfCopy = self;
  regionWithCode_ = [v10 regionWithCode_];
  v13 = swift_allocObject();
  *(v13 + 16) = selfCopy;
  *(v13 + 24) = regionWithCode_;
  *(v13 + 32) = reason;
  *(v13 + 40) = sub_2516CF644;
  *(v13 + 48) = v9;
  v15 = selfCopy;
  v14 = regionWithCode_;

  sub_2516C59C8(sub_2516B9C50, v13);
}

- (void)setShareAnalyticsEnabled:(BOOL)enabled region:(id)region version:(id)version completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_251703164();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  *(v14 + 32) = enabled;
  *(v14 + 40) = self;
  *(v14 + 48) = region;
  *(v14 + 56) = sub_2516CFD10;
  *(v14 + 64) = v13;
  regionCopy = region;
  selfCopy = self;
  v16 = regionCopy;

  sub_2516C59C8(sub_2516CFC48, v14);
}

- (void)setTravelStatusEnabled:(BOOL)enabled region:(id)region completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = enabled;
  *(v10 + 32) = region;
  *(v10 + 40) = sub_2516CFD10;
  *(v10 + 48) = v9;
  regionCopy = region;
  selfCopy = self;
  v12 = regionCopy;

  sub_2516C59C8(sub_2516CFC44, v10);
}

- (void)setUserConsent:(int64_t)consent region:(id)region text:(id)text version:(id)version completion:(id)completion
{
  v11 = _Block_copy(completion);
  if (text)
  {
    text = sub_251703164();
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
  v18[4] = consent;
  v18[5] = text;
  v18[6] = v13;
  v18[7] = self;
  v18[8] = region;
  v18[9] = sub_2516CF548;
  v18[10] = v17;
  regionCopy = region;
  selfCopy = self;
  v20 = regionCopy;

  sub_2516C59C8(sub_2516CFC40, v18);
}

- (BOOL)tccContainsRecordForBundleIdentifier:(id)identifier
{
  sub_251703164();
  selfCopy = self;
  _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0();
  v6 = v5;

  return v6 & 1;
}

- (void)notifyChangeObserversForChangeFrom:(int64_t)from to:(int64_t)to
{
  selfCopy = self;
  sub_2516EFBAC(from, to);
}

@end