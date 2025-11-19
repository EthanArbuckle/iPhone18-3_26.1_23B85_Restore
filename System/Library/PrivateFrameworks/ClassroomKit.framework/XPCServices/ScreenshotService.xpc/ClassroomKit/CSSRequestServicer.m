@interface CSSRequestServicer
- (CSSRequestServicer)init;
- (void)fetchApplicationWithDescriptor:(id)a3 completion:(id)a4;
- (void)fetchInternetDateWithCompletion:(id)a3;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4;
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

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000042D4;
  v5[3] = &unk_10000C6E8;
  v7 = a3;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)fetchApplicationWithDescriptor:(id)a3 completion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000043F0;
  block[3] = &unk_10000C710;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)fetchInternetDateWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000044DC;
  v4[3] = &unk_10000C738;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

@end