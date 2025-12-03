@interface BWIrisMovieInfoAndCallback
+ (id)movieInfoAndCallbackWithMovieInfo:(id)info callback:(id)callback;
- (void)_initWithMovieInfo:(void *)info callback:;
- (void)dealloc;
@end

@implementation BWIrisMovieInfoAndCallback

+ (id)movieInfoAndCallbackWithMovieInfo:(id)info callback:(id)callback
{
  v4 = [[BWIrisMovieInfoAndCallback alloc] _initWithMovieInfo:info callback:callback];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIrisMovieInfoAndCallback;
  [(BWIrisMovieInfoAndCallback *)&v3 dealloc];
}

- (void)_initWithMovieInfo:(void *)info callback:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWIrisMovieInfoAndCallback;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = [info copy];
    v5[4] = 0x7FF8000000000000;
    *(v5 + 10) = 1;
  }

  return v5;
}

@end