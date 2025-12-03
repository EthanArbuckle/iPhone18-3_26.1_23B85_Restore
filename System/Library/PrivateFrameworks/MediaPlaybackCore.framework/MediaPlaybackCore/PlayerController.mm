@interface PlayerController
- (BOOL)isMuted;
- (NSDictionary)stateDictionary;
- (float)relativeVolume;
- (void)resetWithReason:(id)reason;
- (void)setIsMuted:(BOOL)muted;
- (void)setRelativeVolume:(float)volume;
- (void)setSpatializationFormat:(int64_t)format;
@end

@implementation PlayerController

- (NSDictionary)stateDictionary
{

  sub_1C5DDD6EC();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;

  sub_1C5DDC13C(reasonCopy);
}

- (void)setSpatializationFormat:(int64_t)format
{

  sub_1C5C83FA8(format);
}

- (float)relativeVolume
{

  sub_1C5DDE264();
  v3 = v2;

  return v3;
}

- (void)setRelativeVolume:(float)volume
{

  sub_1C5DDE2E0(volume);
}

- (BOOL)isMuted
{

  v2 = sub_1C5DDE3DC();

  return v2 & 1;
}

- (void)setIsMuted:(BOOL)muted
{
  mutedCopy = muted;

  sub_1C5DDE450(mutedCopy);
}

@end