@interface CHMecabraWrapper
- (CHMecabraWrapper)init;
- (void)dealloc;
- (void)initMecabraIfNeededWithType:(int)type learningDictURL:(id)l;
@end

@implementation CHMecabraWrapper

- (CHMecabraWrapper)init
{
  v3.receiver = self;
  v3.super_class = CHMecabraWrapper;
  result = [(CHMecabraWrapper *)&v3 init];
  if (result)
  {
    result->_mecabra = 0;
  }

  return result;
}

- (void)initMecabraIfNeededWithType:(int)type learningDictURL:(id)l
{
  lCopy = l;
  if (type && !self->_mecabra)
  {
    v7 = lCopy;
    self->_mecabra = MecabraCreateWithOptions();
    lCopy = v7;
  }
}

- (void)dealloc
{
  if (self->_mecabra)
  {
    MecabraRelease();
  }

  v3.receiver = self;
  v3.super_class = CHMecabraWrapper;
  [(CHMecabraWrapper *)&v3 dealloc];
}

@end