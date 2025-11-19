@interface CSCoverSheetSDFBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation CSCoverSheetSDFBackdropView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.glassForeground.inputRefractionAmount"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.glassForeground.inputAberrationAmount"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSCoverSheetSDFBackdropView;
    v5 = [(CSCoverSheetSDFBackdropView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end