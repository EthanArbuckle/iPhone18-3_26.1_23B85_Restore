@interface CSSRequestServicer
- (CSSRequestServicer)init;
- (void)fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchInternetDateWithCompletion:(id)completion;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion;
@end

@implementation CSSRequestServicer

- (CSSRequestServicer)init
{
  v10.receiver = self;
  v10.super_class = CSSRequestServicer;
  v2 = [(CSSRequestServicer *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    applicationProvider = v2->_applicationProvider;
    v2->_applicationProvider = v3;

    v5 = objc_opt_new();
    screenshotter = v2->_screenshotter;
    v2->_screenshotter = v5;

    v7 = objc_opt_new();
    internetDateProvider = v2->_internetDateProvider;
    v2->_internetDateProvider = v7;
  }

  return v2;
}

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000042D4;
  v5[3] = &unk_10000C6E8;
  pixelsCopy = pixels;
  v5[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000043F0;
  block[3] = &unk_10000C710;
  block[4] = self;
  descriptorCopy = descriptor;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = descriptorCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)fetchInternetDateWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000044DC;
  v4[3] = &unk_10000C738;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

@end