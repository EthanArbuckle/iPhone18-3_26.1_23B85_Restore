@interface TransferContactViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferContactViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AssetViewModel.encode(with:)(coderCopy);
  v5 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.isa) + 0x210))();
  if (v6)
  {
    v7 = MEMORY[0x21CE91FC0](v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  [coderCopy encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

@end