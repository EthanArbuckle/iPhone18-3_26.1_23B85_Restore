@interface HMDHomeKeySetupWalletLogEventV2
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2)init;
- (_TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2)initWithStartTime:(double)a3;
- (void)setCoreAnalyticsEventName:(id)a3;
@end

@implementation HMDHomeKeySetupWalletLogEventV2

- (NSString)coreAnalyticsEventName
{
  v2 = *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventName);
  v3 = *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventName + 8);

  v4 = sub_22A4DD5AC();

  return v4;
}

- (void)setCoreAnalyticsEventName:(id)a3
{
  v4 = sub_22A4DD5EC();
  v5 = (self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventName);
  v6 = *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventName + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
  sub_229565114();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2)init
{
  *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_success) = 0;
  v2 = (self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventName);
  *v2 = 0xD000000000000026;
  v2[1] = 0x800000022A589DA0;
  *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventOptions) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for HMDHomeKeySetupWalletLogEventV2();
  return [(HMMLogEvent *)&v4 init];
}

- (_TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2)initWithStartTime:(double)a3
{
  *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_success) = 0;
  v4 = (self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventName);
  *v4 = 0xD000000000000026;
  v4[1] = 0x800000022A589DA0;
  *(self + OBJC_IVAR____TtC13HomeKitDaemon31HMDHomeKeySetupWalletLogEventV2_coreAnalyticsEventOptions) = 1;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HMDHomeKeySetupWalletLogEventV2();
  return [(HMMLogEvent *)&v6 initWithStartTime:a3];
}

@end