@interface NMBUIMediaTableCellConfiguration
- (UIImage)placeholderImage;
@end

@implementation NMBUIMediaTableCellConfiguration

- (UIImage)placeholderImage
{
  placeholderImage = self->_placeholderImage;
  if (!placeholderImage)
  {
    if (self->_placeholderSystemImageName)
    {
      v4 = [MEMORY[0x277D755B8] _systemImageNamed:?];
      v5 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
      v6 = [v4 imageWithSymbolConfiguration:v5];
      v7 = [v6 imageWithRenderingMode:2];

      +[NMBUIMediaTableCell artworkSize];
      UIGraphicsBeginImageContextWithOptions(v33, 1, 0.0);
      v8 = [MEMORY[0x277D75348] colorWithRed:0.247058824 green:0.247058824 blue:0.254901961 alpha:1.0];
      [v8 set];

      +[NMBUIMediaTableCell artworkSize];
      v10 = v9;
      +[NMBUIMediaTableCell artworkSize];
      v34.size.height = v11;
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = v10;
      UIRectFill(v34);
      [v7 size];
      __asm { FMOV            V4.2D, #24.0 }

      _UIScaleTransformForAspectFitOfSizeInTargetSize();
      [v7 size];
      +[NMBUIMediaTableCell artworkSize];
      UIRectCenteredIntegralRectScale();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      placeholderIconColor = [(NMBUIMediaTableCellConfiguration *)self placeholderIconColor];
      v26 = placeholderIconColor;
      if (placeholderIconColor)
      {
        systemGrayColor = placeholderIconColor;
      }

      else
      {
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      }

      v28 = systemGrayColor;

      [v28 set];
      [v7 drawInRect:{v18, v20, v22, v24}];
      v29 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      v30 = self->_placeholderImage;
      self->_placeholderImage = v29;

      placeholderImage = self->_placeholderImage;
    }

    else
    {
      placeholderImage = 0;
    }
  }

  return placeholderImage;
}

@end