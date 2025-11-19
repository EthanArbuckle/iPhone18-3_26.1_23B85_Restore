@interface CSUCaptionResult
- (CSUCaptionResult)initWithCaption:(id)a3 score:(float)a4;
@end

@implementation CSUCaptionResult

- (CSUCaptionResult)initWithCaption:(id)a3 score:(float)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CSUCaptionResult;
  v8 = [(CSUCaptionResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_score = a4;
    objc_storeStrong(&v8->_caption, a3);
    v10 = v9;
  }

  return v9;
}

@end