@interface CMContinuityCaptureStillImageRequest
- (CMContinuityCaptureStillImageRequest)init;
- (CMContinuityCaptureStillImageRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureStillImageRequest

- (CMContinuityCaptureStillImageRequest)init
{
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureStillImageRequest;
  return [(CMContinuityCaptureStillImageRequest *)&v3 init];
}

- (CMContinuityCaptureStillImageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureStillImageRequest;
  v5 = [(CMContinuityCaptureStillImageRequest *)&v15 init];
  if (v5)
  {
    v5->_uniqueID = [coderCopy decodeInt64ForKey:@"uniqueID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compressedFormat"];
    compressedFormat = v5->_compressedFormat;
    v5->_compressedFormat = v6;

    v5->_highResolutionPhotoEnabled = [coderCopy decodeBoolForKey:@"highResolutionEnabled"];
    v5->_flashMode = [coderCopy decodeInt32ForKey:@"flashMode"];
    v5->_photoQualityPrioritization = [coderCopy decodeInt32ForKey:@"photoQualityPrioritization"];
    v5->_maxPhotoDimensions.width = [coderCopy decodeInt32ForKey:@"maxPhotoDimensionsWidth"];
    v5->_maxPhotoDimensions.height = [coderCopy decodeInt32ForKey:@"maxPhotoDimensionsHeight"];
    v5->_captureComplete = [coderCopy decodeBoolForKey:@"captureComplete"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkTimestamp"];
    networkTimestamp = v5->_networkTimestamp;
    v5->_networkTimestamp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageFileData"];
    imageFileData = v5->_imageFileData;
    v5->_imageFileData = v12;

    v5->_imageCodecType = [coderCopy decodeInt32ForKey:@"imageCodecType"];
    v5->_imageWidth = [coderCopy decodeInt32ForKey:@"imageWidth"];
    v5->_imageHeight = [coderCopy decodeInt32ForKey:@"imageHeight"];
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

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeInt64:uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_compressedFormat forKey:@"compressedFormat"];
  [coderCopy encodeBool:self->_highResolutionPhotoEnabled forKey:@"highResolutionEnabled"];
  [coderCopy encodeInt32:self->_flashMode forKey:@"flashMode"];
  [coderCopy encodeInt32:self->_photoQualityPrioritization forKey:@"photoQualityPrioritization"];
  [coderCopy encodeInt32:self->_maxPhotoDimensions.width forKey:@"maxPhotoDimensionsWidth"];
  [coderCopy encodeInt32:self->_maxPhotoDimensions.height forKey:@"maxPhotoDimensionsHeight"];
  [coderCopy encodeBool:self->_captureComplete forKey:@"captureComplete"];
  [coderCopy encodeObject:self->_networkTimestamp forKey:@"networkTimestamp"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeObject:self->_imageFileData forKey:@"imageFileData"];
  [coderCopy encodeInt32:self->_imageCodecType forKey:@"imageCodecType"];
  [coderCopy encodeInt32:self->_imageWidth forKey:@"imageWidth"];
  [coderCopy encodeInt32:self->_imageHeight forKey:@"imageHeight"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUniqueID:{-[CMContinuityCaptureStillImageRequest uniqueID](self, "uniqueID")}];
  compressedFormat = [(CMContinuityCaptureStillImageRequest *)self compressedFormat];
  v6 = [compressedFormat copy];
  [v4 setCompressedFormat:v6];

  [v4 setHighResolutionPhotoEnabled:{-[CMContinuityCaptureStillImageRequest highResolutionPhotoEnabled](self, "highResolutionPhotoEnabled")}];
  [v4 setFlashMode:{-[CMContinuityCaptureStillImageRequest flashMode](self, "flashMode")}];
  [v4 setPhotoQualityPrioritization:{-[CMContinuityCaptureStillImageRequest photoQualityPrioritization](self, "photoQualityPrioritization")}];
  [v4 setMaxPhotoDimensions:{-[CMContinuityCaptureStillImageRequest maxPhotoDimensions](self, "maxPhotoDimensions")}];
  [v4 setCaptureComplete:{-[CMContinuityCaptureStillImageRequest captureComplete](self, "captureComplete")}];
  networkTimestamp = [(CMContinuityCaptureStillImageRequest *)self networkTimestamp];
  v8 = [networkTimestamp copy];
  [v4 setNetworkTimestamp:v8];

  error = [(CMContinuityCaptureStillImageRequest *)self error];
  v10 = [error copy];
  [v4 setError:v10];

  imageFileData = [(CMContinuityCaptureStillImageRequest *)self imageFileData];
  v12 = [imageFileData copy];
  [v4 setImageFileData:v12];

  [v4 setImageCodecType:{-[CMContinuityCaptureStillImageRequest imageCodecType](self, "imageCodecType")}];
  [v4 setImageWidth:{-[CMContinuityCaptureStillImageRequest imageWidth](self, "imageWidth")}];
  [v4 setImageHeight:{-[CMContinuityCaptureStillImageRequest imageHeight](self, "imageHeight")}];
  return v4;
}

@end