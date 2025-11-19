@interface CSCachingVibrancyTransitionProvider
- (id)vibrancyLUTWithStartingLUT:(id)a3 transitionProgress:(double)a4 toIdentifier:(id)a5;
@end

@implementation CSCachingVibrancyTransitionProvider

- (id)vibrancyLUTWithStartingLUT:(id)a3 transitionProgress:(double)a4 toIdentifier:(id)a5
{
  cachedVibrancyLUT = self->_cachedVibrancyLUT;
  if (!cachedVibrancyLUT)
  {
    cachedVibrancyLUT = a3;
  }

  v7 = [cachedVibrancyLUT copyWithBlend:a5 toIdentifier:a4];
  v8 = self->_cachedVibrancyLUT;
  self->_cachedVibrancyLUT = v7;

  v9 = self->_cachedVibrancyLUT;

  return v9;
}

@end