@interface JEBrotliEncoder
- (JEBrotliEncoder)init;
- (void)dealloc;
- (void)setQuality:(unsigned int)quality;
- (void)setSizeHint:(unsigned int)hint;
@end

@implementation JEBrotliEncoder

- (JEBrotliEncoder)init
{
  v6.receiver = self;
  v6.super_class = JEBrotliEncoder;
  v2 = [(JEBrotliEncoder *)&v6 init];
  if (v2 && (Instance = BrotliEncoderCreateInstance(0, 0, 0), (v2->_encoder = Instance) == 0))
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
  BrotliEncoderDestroyInstance([(JEBrotliEncoder *)self encoder]);
  v3.receiver = self;
  v3.super_class = JEBrotliEncoder;
  [(JEBrotliEncoder *)&v3 dealloc];
}

- (void)setQuality:(unsigned int)quality
{
  self->_quality = quality;
  if (BrotliEncoderSetParameter([(JEBrotliEncoder *)self encoder], 1, quality) != 1)
  {
    NSLog(&cfstr_FailedToSetQua.isa);
  }
}

- (void)setSizeHint:(unsigned int)hint
{
  self->_sizeHint = hint;
  if (BrotliEncoderSetParameter([(JEBrotliEncoder *)self encoder], 5, hint) != 1)
  {
    NSLog(&cfstr_FailedToSetSiz.isa);
  }
}

@end