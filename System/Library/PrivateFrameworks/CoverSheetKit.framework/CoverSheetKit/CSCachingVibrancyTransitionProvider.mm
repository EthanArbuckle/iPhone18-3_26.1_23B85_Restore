@interface CSCachingVibrancyTransitionProvider
- (id)vibrancyLUTWithStartingLUT:(id)t transitionProgress:(double)progress toIdentifier:(id)identifier;
@end

@implementation CSCachingVibrancyTransitionProvider

- (id)vibrancyLUTWithStartingLUT:(id)t transitionProgress:(double)progress toIdentifier:(id)identifier
{
  cachedVibrancyLUT = self->_cachedVibrancyLUT;
  if (!cachedVibrancyLUT)
  {
    cachedVibrancyLUT = t;
  }

  v7 = [cachedVibrancyLUT copyWithBlend:identifier toIdentifier:progress];
  v8 = self->_cachedVibrancyLUT;
  self->_cachedVibrancyLUT = v7;

  v9 = self->_cachedVibrancyLUT;

  return v9;
}

@end