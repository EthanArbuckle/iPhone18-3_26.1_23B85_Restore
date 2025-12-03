@interface NUPaywallEventData
- (NUPaywallEventData)init;
- (NUPaywallEventData)initWithPaywallViewData:(id)data headline:(id)headline channel:(id)channel feed:(id)feed paywallGroupData:(id)groupData referral:(id)referral qToken:(id)token;
@end

@implementation NUPaywallEventData

- (NUPaywallEventData)initWithPaywallViewData:(id)data headline:(id)headline channel:(id)channel feed:(id)feed paywallGroupData:(id)groupData referral:(id)referral qToken:(id)token
{
  if (token)
  {
    v15 = sub_219BF5414();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  dataCopy = data;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  feedCopy = feed;
  groupDataCopy = groupData;
  v21 = sub_21946C704(dataCopy, headline, channel, feed, groupData, referral, v15, v17);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v21;
}

- (NUPaywallEventData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end