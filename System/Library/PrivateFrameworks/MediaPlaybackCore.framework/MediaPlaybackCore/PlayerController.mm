@interface PlayerController
- (BOOL)isMuted;
- (NSDictionary)stateDictionary;
- (float)relativeVolume;
- (void)resetWithReason:(id)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setRelativeVolume:(float)a3;
- (void)setSpatializationFormat:(int64_t)a3;
@end

@implementation PlayerController

- (NSDictionary)stateDictionary
{

  sub_1C5DDD6EC();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5DDC13C(v3);
}

- (void)setSpatializationFormat:(int64_t)a3
{

  sub_1C5C83FA8(a3);
}

- (float)relativeVolume
{

  sub_1C5DDE264();
  v3 = v2;

  return v3;
}

- (void)setRelativeVolume:(float)a3
{

  sub_1C5DDE2E0(a3);
}

- (BOOL)isMuted
{

  v2 = sub_1C5DDE3DC();

  return v2 & 1;
}

- (void)setIsMuted:(BOOL)a3
{
  v3 = a3;

  sub_1C5DDE450(v3);
}

@end