@interface HRTFSerializableCaptureData
- (CGPoint)distortionCenter;
- (CGSize)referenceDimensions;
- (HRTFSerializableCaptureData)initWithCoder:(id)coder;
- (HRTFSerializableCaptureData)initWithColorPixelBuffer:(__n128)buffer depthPixelBuffer:(__n128)pixelBuffer colorIntrinsics:(__n128)intrinsics depthIntrinsics:(__n128)depthIntrinsics distortionLookupTable:(__n128)table referenceDimensions:(CGFloat)dimensions distortionCenter:(CGFloat)center timestamp:(uint64_t)self0;
- (__n128)colorIntrinsics;
- (__n128)depthIntrinsics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRTFSerializableCaptureData

- (HRTFSerializableCaptureData)initWithColorPixelBuffer:(__n128)buffer depthPixelBuffer:(__n128)pixelBuffer colorIntrinsics:(__n128)intrinsics depthIntrinsics:(__n128)depthIntrinsics distortionLookupTable:(__n128)table referenceDimensions:(CGFloat)dimensions distortionCenter:(CGFloat)center timestamp:(uint64_t)self0
{
  v25 = a13;
  v42.receiver = self;
  v42.super_class = HRTFSerializableCaptureData;
  v26 = [(HRTFSerializableCaptureData *)&v42 init];
  if (v26)
  {
    v27 = [[_SerializableCVPixelBuffer alloc] initWithCVPixelBufferRef:a11];
    serializableColorPixelBuffer = v26->_serializableColorPixelBuffer;
    v26->_serializableColorPixelBuffer = v27;

    v29 = [[_SerializableCVPixelBuffer alloc] initWithCVPixelBufferRef:a12];
    serializableDepthPixelBuffer = v26->_serializableDepthPixelBuffer;
    v26->_serializableDepthPixelBuffer = v29;

    v31 = CVPixelBufferGetIOSurface(a11);
    colorSurface = v26->_colorSurface;
    v26->_colorSurface = v31;

    v33 = CVPixelBufferGetIOSurface(a12);
    depthSurface = v26->_depthSurface;
    v26->_depthSurface = v33;

    *v26->_anon_20 = a2;
    *&v26->_anon_20[16] = buffer;
    *&v26->_anon_20[32] = pixelBuffer;
    *v26->_anon_50 = intrinsics;
    *&v26->_anon_50[16] = depthIntrinsics;
    *&v26->_anon_50[32] = table;
    objc_storeStrong(&v26->_distortionLookupTable, a13);
    v26->_referenceDimensions.width = dimensions;
    v26->_referenceDimensions.height = center;
    v26->_distortionCenter.x = a14;
    v26->_distortionCenter.y = a15;
    v26->_timestamp = a16;
  }

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  colorSurface = self->_colorSurface;
  coderCopy = coder;
  [coderCopy encodeObject:colorSurface forKey:@"ColorSurface"];
  [coderCopy encodeObject:self->_depthSurface forKey:@"DepthSurface"];
  [coderCopy encodeObject:self->_serializableColorPixelBuffer forKey:@"ColorPixelBuffer"];
  [coderCopy encodeObject:self->_serializableDepthPixelBuffer forKey:@"DepthPixelBuffer"];
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:self->_anon_20 length:48];
  [coderCopy encodeObject:v6 forKey:@"ColorIntrinsics"];
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:self->_anon_50 length:48];

  [coderCopy encodeObject:v7 forKey:@"DepthIntrinsics"];
  [coderCopy encodeObject:self->_distortionLookupTable forKey:@"DistortionLUT"];
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_referenceDimensions length:16];

  [coderCopy encodeObject:v8 forKey:@"RefDimensions"];
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_distortionCenter length:16];

  [coderCopy encodeObject:v10 forKey:@"DistortionCenter"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [coderCopy encodeObject:v9 forKey:@"Timestamp"];
}

- (HRTFSerializableCaptureData)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"ColorSurface"] && objc_msgSend(coderCopy, "containsValueForKey:", @"DepthSurface") && objc_msgSend(coderCopy, "containsValueForKey:", @"ColorPixelBuffer") && objc_msgSend(coderCopy, "containsValueForKey:", @"DepthPixelBuffer") && objc_msgSend(coderCopy, "containsValueForKey:", @"ColorIntrinsics") && objc_msgSend(coderCopy, "containsValueForKey:", @"DepthIntrinsics") && objc_msgSend(coderCopy, "containsValueForKey:", @"DistortionLUT") && objc_msgSend(coderCopy, "containsValueForKey:", @"RefDimensions") && objc_msgSend(coderCopy, "containsValueForKey:", @"DistortionCenter") && objc_msgSend(coderCopy, "containsValueForKey:", @"Timestamp"))
  {
    v30.receiver = self;
    v30.super_class = HRTFSerializableCaptureData;
    v5 = [(HRTFSerializableCaptureData *)&v30 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ColorSurface"];
      v7 = *(v5 + 22);
      *(v5 + 22) = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepthSurface"];
      v9 = *(v5 + 23);
      *(v5 + 23) = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ColorPixelBuffer"];
      v11 = *(v5 + 1);
      *(v5 + 1) = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepthPixelBuffer"];
      v13 = *(v5 + 2);
      *(v5 + 2) = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ColorIntrinsics"];
      if ([v14 length] != 48)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      bytes = [v14 bytes];
      v17 = bytes[1];
      v16 = bytes[2];
      *(v5 + 2) = *bytes;
      *(v5 + 3) = v17;
      *(v5 + 4) = v16;
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepthIntrinsics"];

      if ([v18 length] != 48)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      bytes2 = [v18 bytes];
      v21 = bytes2[1];
      v20 = bytes2[2];
      *(v5 + 5) = *bytes2;
      *(v5 + 6) = v21;
      *(v5 + 7) = v20;
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DistortionLUT"];
      v23 = *(v5 + 16);
      *(v5 + 16) = v22;

      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RefDimensions"];

      if ([v24 length] != 16)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      *(v5 + 136) = *[v24 bytes];
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DistortionCenter"];

      if ([v25 length] != 16)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      *(v5 + 152) = *[v25 bytes];
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Timestamp"];
      [v26 doubleValue];
      *(v5 + 21) = v27;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (__n128)colorIntrinsics
{
  result = *(self + 32);
  v2 = *(self + 48);
  v3 = *(self + 64);
  return result;
}

- (__n128)depthIntrinsics
{
  result = *(self + 80);
  v2 = *(self + 96);
  v3 = *(self + 112);
  return result;
}

- (CGSize)referenceDimensions
{
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)distortionCenter
{
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end