@interface MNNavigationServiceCallback_WillStartNavigation
- (MNNavigationServiceCallback_WillStartNavigation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_WillStartNavigation

- (MNNavigationServiceCallback_WillStartNavigation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MNNavigationServiceCallback_WillStartNavigation;
  v5 = [(MNNavigationServiceCallbackParameters *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_navigationType = [v4 decodeIntegerForKey:@"_navigationType"];
    v5->_simulationType = [v4 decodeIntegerForKey:@"_simulationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeInfo"];
    routeInfo = v5->_routeInfo;
    v5->_routeInfo = v6;

    v5->_initialRouteSource = [v4 decodeIntegerForKey:@"_initialRouteSource"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voiceLanguage"];
    voiceLanguage = v5->_voiceLanguage;
    v5->_voiceLanguage = v8;

    v5->_isResumingMultiStopRoute = [v4 decodeBoolForKey:@"_isResumingMultiStopRoute"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  navigationType = self->_navigationType;
  v5 = a3;
  [v5 encodeInteger:navigationType forKey:@"_navigationType"];
  [v5 encodeInteger:self->_simulationType forKey:@"_simulationType"];
  [v5 encodeObject:self->_routeInfo forKey:@"_routeInfo"];
  [v5 encodeInteger:self->_initialRouteSource forKey:@"_initialRouteSource"];
  [v5 encodeObject:self->_voiceLanguage forKey:@"_voiceLanguage"];
  [v5 encodeBool:self->_isResumingMultiStopRoute forKey:@"_isResumingMultiStopRoute"];
}

@end