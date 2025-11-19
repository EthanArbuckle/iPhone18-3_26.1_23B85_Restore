@interface CALNGEORouteHypothesizer
- (CALNGEORouteHypothesizer)initWithRouteHypothesizer:(id)a3;
- (EKTravelEngineHypothesis)currentHypothesis;
- (unint64_t)state;
- (void)didPostUINotification:(unint64_t)a3;
- (void)requestRefresh;
- (void)startHypothesizingWithUpdateHandler:(id)a3;
- (void)stopHypothesizing;
@end

@implementation CALNGEORouteHypothesizer

- (CALNGEORouteHypothesizer)initWithRouteHypothesizer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNGEORouteHypothesizer;
  v6 = [(CALNGEORouteHypothesizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeHypothesizer, a3);
  }

  return v7;
}

- (unint64_t)state
{
  v2 = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  v3 = [v2 state];

  return v3;
}

- (EKTravelEngineHypothesis)currentHypothesis
{
  v2 = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  v3 = [v2 currentHypothesis];

  v4 = [CALNRouteHypothesisMapper ekTravelEngineHypothesisFromGEORouteHypothesis:v3];

  return v4;
}

- (void)startHypothesizingWithUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [v5 startHypothesizingWithUpdateHandler:v4];
}

- (void)requestRefresh
{
  v2 = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [v2 requestRefresh];
}

- (void)stopHypothesizing
{
  v2 = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [v2 stopHypothesizing];
}

- (void)didPostUINotification:(unint64_t)a3
{
  v4 = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [v4 didPostUINotification:a3];
}

@end