@interface FKTextCandidate
- (FKTextCandidate)initWithText:(id)text confidence:(float)confidence;
- (void)dealloc;
@end

@implementation FKTextCandidate

- (FKTextCandidate)initWithText:(id)text confidence:(float)confidence
{
  v8.receiver = self;
  v8.super_class = FKTextCandidate;
  v6 = [(FKTextCandidate *)&v8 init];
  if (v6)
  {
    v6->_text = text;
    v6->_confidence = confidence;
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