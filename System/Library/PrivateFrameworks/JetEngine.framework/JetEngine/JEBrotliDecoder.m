@interface JEBrotliDecoder
- (JEBrotliDecoder)init;
- (void)dealloc;
@end

@implementation JEBrotliDecoder

- (JEBrotliDecoder)init
{
  v6.receiver = self;
  v6.super_class = JEBrotliDecoder;
  v2 = [(JEBrotliDecoder *)&v6 init];
  if (v2 && (Instance = BrotliDecoderCreateInstance(0, 0, 0), (v2->_decoder = Instance) == 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (void)dealloc
{
  BrotliDecoderDestroyInstance([(JEBrotliDecoder *)self decoder]);
  v3.receiver = self;
  v3.super_class = JEBrotliDecoder;
  [(JEBrotliDecoder *)&v3 dealloc];
}

@end