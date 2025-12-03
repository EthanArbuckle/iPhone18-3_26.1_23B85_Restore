@interface ICLockedNotesFilterTypeSelection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICLockedNotesFilterTypeSelection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICLockedNotesFilterTypeSelection allocWithZone:zone];
  inclusionType = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:inclusionType];
}

@end