@interface ICPinnedNotesFilterTypeSelection
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICPinnedNotesFilterTypeSelection

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICPinnedNotesFilterTypeSelection allocWithZone:a3];
  v5 = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:v5];
}

@end