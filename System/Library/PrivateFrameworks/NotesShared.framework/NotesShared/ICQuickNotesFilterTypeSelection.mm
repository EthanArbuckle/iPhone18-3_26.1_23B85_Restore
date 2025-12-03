@interface ICQuickNotesFilterTypeSelection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICQuickNotesFilterTypeSelection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICQuickNotesFilterTypeSelection allocWithZone:zone];
  inclusionType = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:inclusionType];
}

@end