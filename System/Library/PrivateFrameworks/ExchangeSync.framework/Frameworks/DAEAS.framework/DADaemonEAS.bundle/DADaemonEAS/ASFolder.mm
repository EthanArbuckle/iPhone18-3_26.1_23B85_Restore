@interface ASFolder
- (id)conciseDescription;
@end

@implementation ASFolder

- (id)conciseDescription
{
  serverID = [(ASFolder *)self serverID];
  displayName = [(ASFolder *)self displayName];
  v5 = [NSString stringWithFormat:@"%@:%@", serverID, displayName];

  return v5;
}

@end