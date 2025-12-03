@interface ICFilterTypeSelection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICFilterTypeSelection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICFilterTypeSelection allocWithZone:zone];
  accountObjectID = [(ICFilterTypeSelection *)self accountObjectID];
  [(ICFilterTypeSelection *)v4 setAccountObjectID:accountObjectID];

  return v4;
}

@end