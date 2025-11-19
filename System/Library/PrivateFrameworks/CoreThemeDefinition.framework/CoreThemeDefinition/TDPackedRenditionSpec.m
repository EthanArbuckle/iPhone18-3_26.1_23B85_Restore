@interface TDPackedRenditionSpec
- (id)renditionPackName;
@end

@implementation TDPackedRenditionSpec

uint64_t __86__TDPackedRenditionSpec_createCSIRepresentationWithCompression_colorSpaceID_document___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_msgSend(a2 "keySpec")];
  v6 = [objc_msgSend(a3 "keySpec")];
  v7 = [*(a1 + 32) untrimmedRenditionKeyFormat];

  return MEMORY[0x282157470](v5, v6, v7);
}

- (id)renditionPackName
{
  v3 = [(TDPackedRenditionSpec *)self alphaCrop];
  v4 = MEMORY[0x277CCACA8];
  v5 = [-[TDPackedRenditionSpec keySpec](self "keySpec")];
  v6 = [(TDPackedRenditionSpec *)self opaque];
  v7 = [(TDPackedRenditionSpec *)self monochrome];
  v8 = [objc_msgSend(-[TDPackedRenditionSpec keySpec](self "keySpec")];
  if (v3)
  {
    v9 = @"ZZZZExplicitlyPackedAsset-%d.%d.%d-gamut%d";
  }

  else
  {
    v9 = @"ZZZZPackedAsset-%d.%d.%d-gamut%d";
  }

  return [v4 stringWithFormat:v9, v5, v6, v7, v8];
}

@end