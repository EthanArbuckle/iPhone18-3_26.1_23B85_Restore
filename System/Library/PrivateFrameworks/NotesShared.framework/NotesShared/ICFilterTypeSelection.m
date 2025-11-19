@interface ICFilterTypeSelection
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICFilterTypeSelection

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICFilterTypeSelection allocWithZone:a3];
  v5 = [(ICFilterTypeSelection *)self accountObjectID];
  [(ICFilterTypeSelection *)v4 setAccountObjectID:v5];

  return v4;
}

@end