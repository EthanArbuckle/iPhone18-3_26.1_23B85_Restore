@interface TransferReflectionViewModel
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransferReflectionViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TransferReflectionViewModel.encode(with:)(v4);
}

@end