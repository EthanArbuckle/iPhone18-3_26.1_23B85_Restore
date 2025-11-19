@interface DOCExternalDeviceSource
- (UIImage)iconPreferingSymbolImages;
@end

@implementation DOCExternalDeviceSource

- (UIImage)iconPreferingSymbolImages
{
  v2 = specialized static UIImage.sidebarImageWithSystemImageName(_:scale:)(0x6C616E7265747865, 0xED00006576697264, 0, 1);

  return v2;
}

@end