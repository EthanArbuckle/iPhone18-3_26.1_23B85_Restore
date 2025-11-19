@interface CSUSmileySpotterModelInput
- (CSUSmileySpotterModelInput)initWithTextEncoding:(id)a3 TextEncoderRevision:(int64_t)a4;
@end

@implementation CSUSmileySpotterModelInput

- (CSUSmileySpotterModelInput)initWithTextEncoding:(id)a3 TextEncoderRevision:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CSUSmileySpotterModelInput;
  v8 = [(CSUSmileySpotterModelInput *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textEncoding, a3);
    v9->_textEncoderrevision = a4;
    v10 = v9;
  }

  return v9;
}

@end