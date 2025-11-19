@interface ICLockedNotesFilterTypeSelection
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICLockedNotesFilterTypeSelection

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICLockedNotesFilterTypeSelection allocWithZone:a3];
  v5 = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:v5];
}

@end