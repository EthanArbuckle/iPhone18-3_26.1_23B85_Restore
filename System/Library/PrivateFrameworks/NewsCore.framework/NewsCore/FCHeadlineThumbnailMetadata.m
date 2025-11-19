@interface FCHeadlineThumbnailMetadata
- (CGRect)focalFrame;
- (FCHeadlineThumbnailMetadata)initWithTextColor:(id)a3 backgroundColor:(id)a4 accentColor:(id)a5 primaryColor:(id)a6 focalFrame:(unint64_t)a7 lowQualityImage:(id)a8 defaultQualityImage:(id)a9 mediumQualityImage:(id)a10 highQualityImage:(id)a11 ultraQualityImage:(id)a12;
@end

@implementation FCHeadlineThumbnailMetadata

- (FCHeadlineThumbnailMetadata)initWithTextColor:(id)a3 backgroundColor:(id)a4 accentColor:(id)a5 primaryColor:(id)a6 focalFrame:(unint64_t)a7 lowQualityImage:(id)a8 defaultQualityImage:(id)a9 mediumQualityImage:(id)a10 highQualityImage:(id)a11 ultraQualityImage:(id)a12
{
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v26 = a11;
  v18 = a12;
  v34.receiver = self;
  v34.super_class = FCHeadlineThumbnailMetadata;
  v19 = [(FCHeadlineThumbnailMetadata *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_textColor, a3);
    objc_storeStrong(&v20->_backgroundColor, a4);
    objc_storeStrong(&v20->_accentColor, a5);
    objc_storeStrong(&v20->_primaryColor, a6);
    v20->_focalFrame.origin.x = FCCGRectFromBuffer(a7);
    v20->_focalFrame.origin.y = v21;
    v20->_focalFrame.size.width = v22;
    v20->_focalFrame.size.height = v23;
    v20->_focalFrameBuffer = a7;
    objc_storeStrong(&v20->_lowQualityImage, a8);
    objc_storeStrong(&v20->_defaultQualityImage, a9);
    objc_storeStrong(&v20->_mediumQualityImage, a10);
    objc_storeStrong(&v20->_highQualityImage, a11);
    objc_storeStrong(&v20->_ultraQualityImage, a12);
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