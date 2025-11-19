@interface CHMecabraWrapper
- (CHMecabraWrapper)init;
- (void)dealloc;
- (void)initMecabraIfNeededWithType:(int)a3 learningDictURL:(id)a4;
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

- (void)initMecabraIfNeededWithType:(int)a3 learningDictURL:(id)a4
{
  v6 = a4;
  if (a3 && !self->_mecabra)
  {
    v7 = v6;
    self->_mecabra = MecabraCreateWithOptions();
    v6 = v7;
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