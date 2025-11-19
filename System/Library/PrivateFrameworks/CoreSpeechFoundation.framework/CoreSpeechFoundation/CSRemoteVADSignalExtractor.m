@interface CSRemoteVADSignalExtractor
- (CSRemoteVADSignalExtractor)initWithToken:(id)a3;
- (void)feedRemoteVAD:(id)a3 startSampleCount:(unint64_t)a4;
@end

@implementation CSRemoteVADSignalExtractor

- (void)feedRemoteVAD:(id)a3 startSampleCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  if ([v6 length] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + v8) != 0;
      +[CSConfig remoteVADDuration];
      v11 = v10;
      +[CSConfig inputRecordingSampleRate];
      v13.receiver = self;
      v13.super_class = CSRemoteVADSignalExtractor;
      [(CSVADSignalExtractor *)&v13 processBufferSampleWithIndex:v8++ startSampleCount:a4 isSampleRepresentSpeech:v9 vadToSpeechRatio:(v11 * v12)];
    }

    while (v8 < [v6 length]);
  }
}

- (CSRemoteVADSignalExtractor)initWithToken:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSRemoteVADSignalExtractor;
  return [(CSVADSignalExtractor *)&v4 initWithToken:a3 delegate:0];
}

@end