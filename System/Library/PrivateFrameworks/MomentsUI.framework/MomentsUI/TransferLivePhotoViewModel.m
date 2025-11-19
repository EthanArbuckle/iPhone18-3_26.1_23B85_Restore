@interface TransferLivePhotoViewModel
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransferLivePhotoViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TransferPhotoFamilyViewModel.encode(with:)(v4);
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & v5->super.super.super.isa) + 0x2A0))();
  v8 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006F65646956);
  [v4 encodeObject:v7 forKey:v8];

  v9 = (*((*v6 & v5->super.super.super.isa) + 0x2B8))();
  v10 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006567616D49);
  [v4 encodeObject:v9 forKey:v10];
}

@end