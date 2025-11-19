@interface TransferContactViewModel
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransferContactViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = self;
  AssetViewModel.encode(with:)(v4);
  v5 = (*((*MEMORY[0x277D85000] & v9->super.super.isa) + 0x210))();
  if (v6)
  {
    v7 = MEMORY[0x21CE91FC0](v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  [v4 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

@end