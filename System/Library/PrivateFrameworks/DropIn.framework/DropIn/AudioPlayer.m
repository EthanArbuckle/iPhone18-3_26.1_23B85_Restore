@interface AudioPlayer
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
@end

@implementation AudioPlayer

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_249DB779C();
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_249DB7894(v8, a4);
}

@end