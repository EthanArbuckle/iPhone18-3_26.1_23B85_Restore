@interface RouteRecommendationDisplayMonitorSuppressor
- (id)suppressionPolicyWithContext:(id)context;
@end

@implementation RouteRecommendationDisplayMonitorSuppressor

- (id)suppressionPolicyWithContext:(id)context
{
  v3 = *&self->displayMonitor[24];
  v4 = *&self->displayMonitor[32];
  sub_1000326D8(self->displayMonitor, v3);
  v5 = *(v4 + 8);

  if (v5(v3, v4))
  {
    type metadata accessor for RouteRecommendationSuppressionPolicy();
    v6 = sub_1003812C8();
    v7 = *v6;
    v8 = v6[1];

    v9 = sub_1003810DC(v7, v8);
  }

  else
  {
    v9 = *sub_10038108C();
  }

  return v9;
}

@end