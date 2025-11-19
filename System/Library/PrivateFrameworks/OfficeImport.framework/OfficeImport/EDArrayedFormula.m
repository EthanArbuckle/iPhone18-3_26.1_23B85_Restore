@interface EDArrayedFormula
- (EDArrayedFormula)init;
@end

@implementation EDArrayedFormula

- (EDArrayedFormula)init
{
  v5.receiver = self;
  v5.super_class = EDArrayedFormula;
  v2 = [(EDSharedFormula *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EDFormula *)v2 setWarning:2];
  }

  return v3;
}

@end