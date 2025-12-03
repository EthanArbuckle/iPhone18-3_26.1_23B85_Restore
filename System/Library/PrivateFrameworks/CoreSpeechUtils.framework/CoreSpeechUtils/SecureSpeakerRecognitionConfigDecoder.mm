@interface SecureSpeakerRecognitionConfigDecoder
- (id)decode:(id)decode;
@end

@implementation SecureSpeakerRecognitionConfigDecoder

- (id)decode:(id)decode
{
  decodeCopy = decode;
  selfCopy = self;
  v6 = SecureSpeakerRecognitionConfigDecoder.decode(_:)(decodeCopy);

  return v6;
}

@end