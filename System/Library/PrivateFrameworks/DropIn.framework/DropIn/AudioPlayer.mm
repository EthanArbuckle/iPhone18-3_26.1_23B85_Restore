@interface AudioPlayer
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation AudioPlayer

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_249DB779C();
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  selfCopy = self;
  errorCopy = error;
  sub_249DB7894(errorCopy, error);
}

@end