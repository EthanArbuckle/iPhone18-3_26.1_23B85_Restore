@interface CMContinuityCaptureStillImageRequest
- (CMContinuityCaptureStillImageRequest)init;
- (CMContinuityCaptureStillImageRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMContinuityCaptureStillImageRequest

- (CMContinuityCaptureStillImageRequest)init
{
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureStillImageRequest;
  return [(CMContinuityCaptureStillImageRequest *)&v3 init];
}

- (CMContinuityCaptureStillImageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureStillImageRequest;
  v5 = [(CMContinuityCaptureStillImageRequest *)&v15 init];
  if (v5)
  {
    v5->_uniqueID = [v4 decodeInt64ForKey:@"uniqueID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compressedFormat"];
    compressedFormat = v5->_compressedFormat;
    v5->_compressedFormat = v6;

    v5->_highResolutionPhotoEnabled = [v4 decodeBoolForKey:@"highResolutionEnabled"];
    v5->_flashMode = [v4 decodeInt32ForKey:@"flashMode"];
    v5->_photoQualityPrioritization = [v4 decodeInt32ForKey:@"photoQualityPrioritization"];
    v5->_maxPhotoDimensions.width = [v4 decodeInt32ForKey:@"maxPhotoDimensionsWidth"];
    v5->_maxPhotoDimensions.height = [v4 decodeInt32ForKey:@"maxPhotoDimensionsHeight"];
    v5->_captureComplete = [v4 decodeBoolForKey:@"captureComplete"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkTimestamp"];
    networkTimestamp = v5->_networkTimestamp;
    v5->_networkTimestamp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageFileData"];
    imageFileData = v5->_imageFileData;
    v5->_imageFileData = v12;

    v5->_imageCodecType = [v4 decodeInt32ForKey:@"imageCodecType"];
    v5->_imageWidth = [v4 decodeInt32ForKey:@"imageWidth"];
    v5->_imageHeight = [v4 decodeInt32ForKey:@"imageHeight"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: ID:%lld Format:%@ HiRes:%d, Flash:%d, QP:%d, Dimensions:%dx%d Complete:%d Timestamp:%@ Error:%@ Data:%@ [%p]", v5, self->_uniqueID, self->_compressedFormat, self->_highResolutionPhotoEnabled, self->_flashMode, self->_photoQualityPrioritization, self->_maxPhotoDimensions.width, self->_maxPhotoDimensions.height, self->_captureComplete, self->_networkTimestamp, self->_error, self->_imageFileData, self];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueID = self->_uniqueID;
  v5 = a3;
  [v5 encodeInt64:uniqueID forKey:@"uniqueID"];
  [v5 encodeObject:self->_compressedFormat forKey:@"compressedFormat"];
  [v5 encodeBool:self->_highResolutionPhotoEnabled forKey:@"highResolutionEnabled"];
  [v5 encodeInt32:self->_flashMode forKey:@"flashMode"];
  [v5 encodeInt32:self->_photoQualityPrioritization forKey:@"photoQualityPrioritization"];
  [v5 encodeInt32:self->_maxPhotoDimensions.width forKey:@"maxPhotoDimensionsWidth"];
  [v5 encodeInt32:self->_maxPhotoDimensions.height forKey:@"maxPhotoDimensionsHeight"];
  [v5 encodeBool:self->_captureComplete forKey:@"captureComplete"];
  [v5 encodeObject:self->_networkTimestamp forKey:@"networkTimestamp"];
  [v5 encodeObject:self->_error forKey:@"error"];
  [v5 encodeObject:self->_imageFileData forKey:@"imageFileData"];
  [v5 encodeInt32:self->_imageCodecType forKey:@"imageCodecType"];
  [v5 encodeInt32:self->_imageWidth forKey:@"imageWidth"];
  [v5 encodeInt32:self->_imageHeight forKey:@"imageHeight"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUniqueID:{-[CMContinuityCaptureStillImageRequest uniqueID](self, "uniqueID")}];
  v5 = [(CMContinuityCaptureStillImageRequest *)self compressedFormat];
  v6 = [v5 copy];
  [v4 setCompressedFormat:v6];

  [v4 setHighResolutionPhotoEnabled:{-[CMContinuityCaptureStillImageRequest highResolutionPhotoEnabled](self, "highResolutionPhotoEnabled")}];
  [v4 setFlashMode:{-[CMContinuityCaptureStillImageRequest flashMode](self, "flashMode")}];
  [v4 setPhotoQualityPrioritization:{-[CMContinuityCaptureStillImageRequest photoQualityPrioritization](self, "photoQualityPrioritization")}];
  [v4 setMaxPhotoDimensions:{-[CMContinuityCaptureStillImageRequest maxPhotoDimensions](self, "maxPhotoDimensions")}];
  [v4 setCaptureComplete:{-[CMContinuityCaptureStillImageRequest captureComplete](self, "captureComplete")}];
  v7 = [(CMContinuityCaptureStillImageRequest *)self networkTimestamp];
  v8 = [v7 copy];
  [v4 setNetworkTimestamp:v8];

  v9 = [(CMContinuityCaptureStillImageRequest *)self error];
  v10 = [v9 copy];
  [v4 setError:v10];

  v11 = [(CMContinuityCaptureStillImageRequest *)self imageFileData];
  v12 = [v11 copy];
  [v4 setImageFileData:v12];

  [v4 setImageCodecType:{-[CMContinuityCaptureStillImageRequest imageCodecType](self, "imageCodecType")}];
  [v4 setImageWidth:{-[CMContinuityCaptureStillImageRequest imageWidth](self, "imageWidth")}];
  [v4 setImageHeight:{-[CMContinuityCaptureStillImageRequest imageHeight](self, "imageHeight")}];
  return v4;
}

@end