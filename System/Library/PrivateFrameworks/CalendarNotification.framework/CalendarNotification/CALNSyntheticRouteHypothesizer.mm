@interface CALNSyntheticRouteHypothesizer
- (EKTravelEngineHypothesis)currentHypothesis;
- (void)startHypothesizingWithUpdateHandler:(id)a3;
@end

@implementation CALNSyntheticRouteHypothesizer

- (EKTravelEngineHypothesis)currentHypothesis
{
  v2 = [(CALNSyntheticRouteHypothesizer *)self currentCADRouteHypothesis];
  v3 = [CALNRouteHypothesisMapper ekTravelEngineHypothesisFromCADRouteHypothesis:v2];

  return v3;
}

- (void)startHypothesizingWithUpdateHandler:(id)a3
{
  v4 = [a3 copy];
  [(CALNSyntheticRouteHypothesizer *)self setUpdateHandler:v4];
}

@end