@interface LACBiomeEvaluationMechanismState
- (id)initAvailable:(BOOL)available started:(BOOL)started success:(BOOL)success lockout:(BOOL)lockout generation:(unsigned int)generation;
@end

@implementation LACBiomeEvaluationMechanismState

- (id)initAvailable:(BOOL)available started:(BOOL)started success:(BOOL)success lockout:(BOOL)lockout generation:(unsigned int)generation
{
  v13.receiver = self;
  v13.super_class = LACBiomeEvaluationMechanismState;
  result = [(LACBiomeEvaluationMechanismState *)&v13 init];
  if (result)
  {
    *(result + 8) = available;
    *(result + 9) = started;
    *(result + 10) = success;
    *(result + 11) = lockout;
    *(result + 3) = generation;
  }

  return result;
}

@end