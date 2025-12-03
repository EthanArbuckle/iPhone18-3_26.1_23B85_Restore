@interface MNNavigationServiceCallback_WillStartNavigation
- (MNNavigationServiceCallback_WillStartNavigation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_WillStartNavigation

- (MNNavigationServiceCallback_WillStartNavigation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MNNavigationServiceCallback_WillStartNavigation;
  v5 = [(MNNavigationServiceCallbackParameters *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_navigationType = [coderCopy decodeIntegerForKey:@"_navigationType"];
    v5->_simulationType = [coderCopy decodeIntegerForKey:@"_simulationType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeInfo"];
    routeInfo = v5->_routeInfo;
    v5->_routeInfo = v6;

    v5->_initialRouteSource = [coderCopy decodeIntegerForKey:@"_initialRouteSource"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceLanguage"];
    voiceLanguage = v5->_voiceLanguage;
    v5->_voiceLanguage = v8;

    v5->_isResumingMultiStopRoute = [coderCopy decodeBoolForKey:@"_isResumingMultiStopRoute"];
    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  navigationType = self->_navigationType;
  coderCopy = coder;
  [coderCopy encodeInteger:navigationType forKey:@"_navigationType"];
  [coderCopy encodeInteger:self->_simulationType forKey:@"_simulationType"];
  [coderCopy encodeObject:self->_routeInfo forKey:@"_routeInfo"];
  [coderCopy encodeInteger:self->_initialRouteSource forKey:@"_initialRouteSource"];
  [coderCopy encodeObject:self->_voiceLanguage forKey:@"_voiceLanguage"];
  [coderCopy encodeBool:self->_isResumingMultiStopRoute forKey:@"_isResumingMultiStopRoute"];
}

@end