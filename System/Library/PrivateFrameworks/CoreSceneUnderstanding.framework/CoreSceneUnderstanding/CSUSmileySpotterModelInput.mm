@interface CSUSmileySpotterModelInput
- (CSUSmileySpotterModelInput)initWithTextEncoding:(id)encoding TextEncoderRevision:(int64_t)revision;
@end

@implementation CSUSmileySpotterModelInput

- (CSUSmileySpotterModelInput)initWithTextEncoding:(id)encoding TextEncoderRevision:(int64_t)revision
{
  encodingCopy = encoding;
  v12.receiver = self;
  v12.super_class = CSUSmileySpotterModelInput;
  v8 = [(CSUSmileySpotterModelInput *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textEncoding, encoding);
    v9->_textEncoderrevision = revision;
    v10 = v9;
  }

  return v9;
}

@end