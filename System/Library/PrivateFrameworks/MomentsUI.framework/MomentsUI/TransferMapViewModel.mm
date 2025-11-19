@interface TransferMapViewModel
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransferMapViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TransferMapViewModel.encode(with:)(v4);
}

@end