@interface TransferWorkoutViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferWorkoutViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferWorkoutViewModel.encode(with:)(coderCopy);
}

@end