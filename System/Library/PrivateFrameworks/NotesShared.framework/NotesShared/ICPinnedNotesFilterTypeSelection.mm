@interface ICPinnedNotesFilterTypeSelection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICPinnedNotesFilterTypeSelection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICPinnedNotesFilterTypeSelection allocWithZone:zone];
  inclusionType = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:inclusionType];
}

@end