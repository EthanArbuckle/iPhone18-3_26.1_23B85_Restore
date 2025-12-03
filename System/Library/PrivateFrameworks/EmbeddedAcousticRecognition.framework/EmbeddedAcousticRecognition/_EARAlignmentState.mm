@interface _EARAlignmentState
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _EARAlignmentState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_EARAlignmentState allocWithZone:?]];
  [(_EARAlignmentState *)v4 setNumberOfInsertions:[(_EARAlignmentState *)self numberOfInsertions]];
  [(_EARAlignmentState *)v4 setNumberOfSubstitutions:[(_EARAlignmentState *)self numberOfSubstitutions]];
  [(_EARAlignmentState *)v4 setNumberOfDeletions:[(_EARAlignmentState *)self numberOfDeletions]];
  [(_EARAlignmentState *)v4 setTotalCost:[(_EARAlignmentState *)self totalCost]];
  return v4;
}

@end