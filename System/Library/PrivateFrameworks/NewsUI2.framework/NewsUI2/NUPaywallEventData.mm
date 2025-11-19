@interface NUPaywallEventData
- (NUPaywallEventData)init;
- (NUPaywallEventData)initWithPaywallViewData:(id)a3 headline:(id)a4 channel:(id)a5 feed:(id)a6 paywallGroupData:(id)a7 referral:(id)a8 qToken:(id)a9;
@end

@implementation NUPaywallEventData

- (NUPaywallEventData)initWithPaywallViewData:(id)a3 headline:(id)a4 channel:(id)a5 feed:(id)a6 paywallGroupData:(id)a7 referral:(id)a8 qToken:(id)a9
{
  if (a9)
  {
    v15 = sub_219BF5414();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = a6;
  v20 = a7;
  v21 = sub_21946C704(v18, a4, a5, a6, a7, a8, v15, v17);

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