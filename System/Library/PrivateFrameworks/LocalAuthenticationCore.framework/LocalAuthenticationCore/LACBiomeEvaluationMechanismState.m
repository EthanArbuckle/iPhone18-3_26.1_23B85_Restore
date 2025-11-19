@interface LACBiomeEvaluationMechanismState
- (id)initAvailable:(BOOL)a3 started:(BOOL)a4 success:(BOOL)a5 lockout:(BOOL)a6 generation:(unsigned int)a7;
@end

@implementation LACBiomeEvaluationMechanismState

- (id)initAvailable:(BOOL)a3 started:(BOOL)a4 success:(BOOL)a5 lockout:(BOOL)a6 generation:(unsigned int)a7
{
  v13.receiver = self;
  v13.super_class = LACBiomeEvaluationMechanismState;
  result = [(LACBiomeEvaluationMechanismState *)&v13 init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 9) = a4;
    *(result + 10) = a5;
    *(result + 11) = a6;
    *(result + 3) = a7;
  }

  return result;
}

@end