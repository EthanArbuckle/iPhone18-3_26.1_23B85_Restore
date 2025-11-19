@interface LeastNumberPriorityQueue
- (BOOL)lessThanWithId:(id)a3 withId:(id)a4;
@end

@implementation LeastNumberPriorityQueue

- (BOOL)lessThanWithId:(id)a3 withId:(id)a4
{
  v5 = a4;
  LODWORD(a3) = [a3 unsignedIntValue];
  v6 = [v5 unsignedIntValue];

  return a3 >= v6;
}

@end