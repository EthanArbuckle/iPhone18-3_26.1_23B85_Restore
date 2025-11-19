@interface _EDThreadQueryUnderlyingHandlers
- (BOOL)_isCurrentObservationToken:(id)a3;
@end

@implementation _EDThreadQueryUnderlyingHandlers

- (BOOL)_isCurrentObservationToken:(id)a3
{
  v4 = a3;
  v5 = [(_EDThreadQueryUnderlyingHandlers *)self inMemoryObservationID];
  if ([v4 isEqual:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(_EDThreadQueryUnderlyingHandlers *)self precomputedObservationID];
    v6 = [v4 isEqual:v7];
  }

  return v6;
}

@end