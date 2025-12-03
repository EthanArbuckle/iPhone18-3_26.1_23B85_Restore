@interface CSPerson(Significance)
- (BOOL)sg_isSignificantWithStore:()Significance;
@end

@implementation CSPerson(Significance)

- (BOOL)sg_isSignificantWithStore:()Significance
{
  v4 = a3;
  if (v4 && ([self handles], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    handles = [self handles];
    if ([v4 anyHandleIsSignificant:handles])
    {
      v8 = 1;
    }

    else
    {
      handles2 = [self handles];
      v10 = [handles2 objectAtIndexedSubscript:0];
      handleIdentifier = [self handleIdentifier];
      v8 = [SGContactsInterface handleExistsInContactStoreForHandle:v10 withHandleType:handleIdentifier];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end