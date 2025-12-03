@interface FMDAVRoute
- (id)description;
@end

@implementation FMDAVRoute

- (id)description
{
  routeID = [(FMDAVRoute *)self routeID];
  routeType = [(FMDAVRoute *)self routeType];
  routeSubType = [(FMDAVRoute *)self routeSubType];
  currentlyPicked = [(FMDAVRoute *)self currentlyPicked];
  v7 = @"NO";
  if (currentlyPicked)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"Route ID: %@, Type: %@, Subtype: %@, CurrentlyPicked:%@", routeID, routeType, routeSubType, v7];

  return v8;
}

@end