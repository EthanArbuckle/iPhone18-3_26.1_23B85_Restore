@interface FKTextCandidate
- (FKTextCandidate)initWithText:(id)a3 confidence:(float)a4;
- (void)dealloc;
@end

@implementation FKTextCandidate

- (FKTextCandidate)initWithText:(id)a3 confidence:(float)a4
{
  v8.receiver = self;
  v8.super_class = FKTextCandidate;
  v6 = [(FKTextCandidate *)&v8 init];
  if (v6)
  {
    v6->_text = a3;
    v6->_confidence = a4;
  }

  return v6;
}

- (void)dealloc
{
  self->_text = 0;
  v3.receiver = self;
  v3.super_class = FKTextCandidate;
  [(FKTextCandidate *)&v3 dealloc];
}

@end