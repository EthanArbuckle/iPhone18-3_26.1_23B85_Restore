@interface BWIrisMovieInfoAndCallback
+ (id)movieInfoAndCallbackWithMovieInfo:(id)a3 callback:(id)a4;
- (void)_initWithMovieInfo:(void *)a3 callback:;
- (void)dealloc;
@end

@implementation BWIrisMovieInfoAndCallback

+ (id)movieInfoAndCallbackWithMovieInfo:(id)a3 callback:(id)a4
{
  v4 = [[BWIrisMovieInfoAndCallback alloc] _initWithMovieInfo:a3 callback:a4];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIrisMovieInfoAndCallback;
  [(BWIrisMovieInfoAndCallback *)&v3 dealloc];
}

- (void)_initWithMovieInfo:(void *)a3 callback:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWIrisMovieInfoAndCallback;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = [a3 copy];
    v5[4] = 0x7FF8000000000000;
    *(v5 + 10) = 1;
  }

  return v5;
}

@end