@interface NUPaywallViewData
- (NUPaywallViewData)init;
- (NUPaywallViewData)initWithViewSessionID:(id)a3 viewType:(id)a4 viewAction:(id)a5;
@end

@implementation NUPaywallViewData

- (NUPaywallViewData)initWithViewSessionID:(id)a3 viewType:(id)a4 viewAction:(id)a5
{
  v5 = sub_219BF5414();
  v7 = v6;
  v8 = sub_219BF5414();
  v10 = v9;
  v11 = sub_219BF5414();
  return PaywallViewData.init(viewSessionID:viewType:viewAction:)(v5, v7, v8, v10, v11, v12);
}

- (NUPaywallViewData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end