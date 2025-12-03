@interface FCHeadlineThumbnailMetadata
- (CGRect)focalFrame;
- (FCHeadlineThumbnailMetadata)initWithTextColor:(id)color backgroundColor:(id)backgroundColor accentColor:(id)accentColor primaryColor:(id)primaryColor focalFrame:(unint64_t)frame lowQualityImage:(id)image defaultQualityImage:(id)qualityImage mediumQualityImage:(id)self0 highQualityImage:(id)self1 ultraQualityImage:(id)self2;
@end

@implementation FCHeadlineThumbnailMetadata

- (FCHeadlineThumbnailMetadata)initWithTextColor:(id)color backgroundColor:(id)backgroundColor accentColor:(id)accentColor primaryColor:(id)primaryColor focalFrame:(unint64_t)frame lowQualityImage:(id)image defaultQualityImage:(id)qualityImage mediumQualityImage:(id)self0 highQualityImage:(id)self1 ultraQualityImage:(id)self2
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  accentColorCopy = accentColor;
  primaryColorCopy = primaryColor;
  imageCopy = image;
  qualityImageCopy = qualityImage;
  mediumQualityImageCopy = mediumQualityImage;
  highQualityImageCopy = highQualityImage;
  ultraQualityImageCopy = ultraQualityImage;
  v34.receiver = self;
  v34.super_class = FCHeadlineThumbnailMetadata;
  v19 = [(FCHeadlineThumbnailMetadata *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_textColor, color);
    objc_storeStrong(&v20->_backgroundColor, backgroundColor);
    objc_storeStrong(&v20->_accentColor, accentColor);
    objc_storeStrong(&v20->_primaryColor, primaryColor);
    v20->_focalFrame.origin.x = FCCGRectFromBuffer(frame);
    v20->_focalFrame.origin.y = v21;
    v20->_focalFrame.size.width = v22;
    v20->_focalFrame.size.height = v23;
    v20->_focalFrameBuffer = frame;
    objc_storeStrong(&v20->_lowQualityImage, image);
    objc_storeStrong(&v20->_defaultQualityImage, qualityImage);
    objc_storeStrong(&v20->_mediumQualityImage, mediumQualityImage);
    objc_storeStrong(&v20->_highQualityImage, highQualityImage);
    objc_storeStrong(&v20->_ultraQualityImage, ultraQualityImage);
  }

  return v20;
}

- (CGRect)focalFrame
{
  x = self->_focalFrame.origin.x;
  y = self->_focalFrame.origin.y;
  width = self->_focalFrame.size.width;
  height = self->_focalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end