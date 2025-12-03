@interface CSUCaptionResult
- (CSUCaptionResult)initWithCaption:(id)caption score:(float)score;
@end

@implementation CSUCaptionResult

- (CSUCaptionResult)initWithCaption:(id)caption score:(float)score
{
  captionCopy = caption;
  v12.receiver = self;
  v12.super_class = CSUCaptionResult;
  v8 = [(CSUCaptionResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_score = score;
    objc_storeStrong(&v8->_caption, caption);
    v10 = v9;
  }

  return v9;
}

@end