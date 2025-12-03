@interface CALNGEORouteHypothesizer
- (CALNGEORouteHypothesizer)initWithRouteHypothesizer:(id)hypothesizer;
- (EKTravelEngineHypothesis)currentHypothesis;
- (unint64_t)state;
- (void)didPostUINotification:(unint64_t)notification;
- (void)requestRefresh;
- (void)startHypothesizingWithUpdateHandler:(id)handler;
- (void)stopHypothesizing;
@end

@implementation CALNGEORouteHypothesizer

- (CALNGEORouteHypothesizer)initWithRouteHypothesizer:(id)hypothesizer
{
  hypothesizerCopy = hypothesizer;
  v9.receiver = self;
  v9.super_class = CALNGEORouteHypothesizer;
  v6 = [(CALNGEORouteHypothesizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routeHypothesizer, hypothesizer);
  }

  return v7;
}

- (unint64_t)state
{
  routeHypothesizer = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  state = [routeHypothesizer state];

  return state;
}

- (EKTravelEngineHypothesis)currentHypothesis
{
  routeHypothesizer = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  currentHypothesis = [routeHypothesizer currentHypothesis];

  v4 = [CALNRouteHypothesisMapper ekTravelEngineHypothesisFromGEORouteHypothesis:currentHypothesis];

  return v4;
}

- (void)startHypothesizingWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  routeHypothesizer = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [routeHypothesizer startHypothesizingWithUpdateHandler:handlerCopy];
}

- (void)requestRefresh
{
  routeHypothesizer = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [routeHypothesizer requestRefresh];
}

- (void)stopHypothesizing
{
  routeHypothesizer = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [routeHypothesizer stopHypothesizing];
}

- (void)didPostUINotification:(unint64_t)notification
{
  routeHypothesizer = [(CALNGEORouteHypothesizer *)self routeHypothesizer];
  [routeHypothesizer didPostUINotification:notification];
}

@end