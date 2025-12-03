@interface CSCoverSheetSDFBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation CSCoverSheetSDFBackdropView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.glassForeground.inputRefractionAmount"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"filters.glassForeground.inputAberrationAmount"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSCoverSheetSDFBackdropView;
    v5 = [(CSCoverSheetSDFBackdropView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end