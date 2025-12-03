@interface _EDThreadQueryUnderlyingHandlers
- (BOOL)_isCurrentObservationToken:(id)token;
@end

@implementation _EDThreadQueryUnderlyingHandlers

- (BOOL)_isCurrentObservationToken:(id)token
{
  tokenCopy = token;
  inMemoryObservationID = [(_EDThreadQueryUnderlyingHandlers *)self inMemoryObservationID];
  if ([tokenCopy isEqual:inMemoryObservationID])
  {
    v6 = 1;
  }

  else
  {
    precomputedObservationID = [(_EDThreadQueryUnderlyingHandlers *)self precomputedObservationID];
    v6 = [tokenCopy isEqual:precomputedObservationID];
  }

  return v6;
}

@end