@interface CALNSyntheticRouteHypothesizer
- (EKTravelEngineHypothesis)currentHypothesis;
- (void)startHypothesizingWithUpdateHandler:(id)handler;
@end

@implementation CALNSyntheticRouteHypothesizer

- (EKTravelEngineHypothesis)currentHypothesis
{
  currentCADRouteHypothesis = [(CALNSyntheticRouteHypothesizer *)self currentCADRouteHypothesis];
  v3 = [CALNRouteHypothesisMapper ekTravelEngineHypothesisFromCADRouteHypothesis:currentCADRouteHypothesis];

  return v3;
}

- (void)startHypothesizingWithUpdateHandler:(id)handler
{
  v4 = [handler copy];
  [(CALNSyntheticRouteHypothesizer *)self setUpdateHandler:v4];
}

@end