@interface CSRemoteVADSignalExtractor
- (CSRemoteVADSignalExtractor)initWithToken:(id)token;
- (void)feedRemoteVAD:(id)d startSampleCount:(unint64_t)count;
@end

@implementation CSRemoteVADSignalExtractor

- (void)feedRemoteVAD:(id)d startSampleCount:(unint64_t)count
{
  dCopy = d;
  bytes = [dCopy bytes];
  if ([dCopy length] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(bytes + v8) != 0;
      +[CSConfig remoteVADDuration];
      v11 = v10;
      +[CSConfig inputRecordingSampleRate];
      v13.receiver = self;
      v13.super_class = CSRemoteVADSignalExtractor;
      [(CSVADSignalExtractor *)&v13 processBufferSampleWithIndex:v8++ startSampleCount:count isSampleRepresentSpeech:v9 vadToSpeechRatio:(v11 * v12)];
    }

    while (v8 < [dCopy length]);
  }
}

- (CSRemoteVADSignalExtractor)initWithToken:(id)token
{
  v4.receiver = self;
  v4.super_class = CSRemoteVADSignalExtractor;
  return [(CSVADSignalExtractor *)&v4 initWithToken:token delegate:0];
}

@end