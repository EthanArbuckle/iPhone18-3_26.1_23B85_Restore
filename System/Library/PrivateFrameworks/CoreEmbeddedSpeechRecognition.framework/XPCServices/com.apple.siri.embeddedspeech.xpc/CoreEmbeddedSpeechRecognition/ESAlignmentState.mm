@interface ESAlignmentState
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ESAlignmentState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ESAlignmentState allocWithZone:?]];
  [(ESAlignmentState *)v4 setNumberOfInsertions:[(ESAlignmentState *)self numberOfInsertions]];
  [(ESAlignmentState *)v4 setNumberOfSubstitutions:[(ESAlignmentState *)self numberOfSubstitutions]];
  [(ESAlignmentState *)v4 setNumberOfDeletions:[(ESAlignmentState *)self numberOfDeletions]];
  [(ESAlignmentState *)v4 setTotalCost:[(ESAlignmentState *)self totalCost]];
  return v4;
}

@end