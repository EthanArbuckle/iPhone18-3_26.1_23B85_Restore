@interface TransferLivePhotoViewModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferLivePhotoViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferPhotoFamilyViewModel.encode(with:)(coderCopy);
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x2A0))();
  v8 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006F65646956);
  [coderCopy encodeObject:v7 forKey:v8];

  v9 = (*((*v6 & selfCopy->super.super.super.isa) + 0x2B8))();
  v10 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006567616D49);
  [coderCopy encodeObject:v9 forKey:v10];
}

@end