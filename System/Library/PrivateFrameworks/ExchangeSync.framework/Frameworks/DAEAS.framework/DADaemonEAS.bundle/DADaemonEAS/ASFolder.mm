@interface ASFolder
- (id)conciseDescription;
@end

@implementation ASFolder

- (id)conciseDescription
{
  v3 = [(ASFolder *)self serverID];
  v4 = [(ASFolder *)self displayName];
  v5 = [NSString stringWithFormat:@"%@:%@", v3, v4];

  return v5;
}

@end