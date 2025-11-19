@interface TransferStateOfMindViewModel
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransferStateOfMindViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TransferStateOfMindViewModel.encode(with:)(v4);
}

@end