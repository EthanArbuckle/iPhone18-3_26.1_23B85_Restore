@interface HRTFSerializableCaptureData
- (CGPoint)distortionCenter;
- (CGSize)referenceDimensions;
- (HRTFSerializableCaptureData)initWithCoder:(id)a3;
- (HRTFSerializableCaptureData)initWithColorPixelBuffer:(__n128)a3 depthPixelBuffer:(__n128)a4 colorIntrinsics:(__n128)a5 depthIntrinsics:(__n128)a6 distortionLookupTable:(__n128)a7 referenceDimensions:(CGFloat)a8 distortionCenter:(CGFloat)a9 timestamp:(uint64_t)a10;
- (__n128)colorIntrinsics;
- (__n128)depthIntrinsics;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRTFSerializableCaptureData

- (HRTFSerializableCaptureData)initWithColorPixelBuffer:(__n128)a3 depthPixelBuffer:(__n128)a4 colorIntrinsics:(__n128)a5 depthIntrinsics:(__n128)a6 distortionLookupTable:(__n128)a7 referenceDimensions:(CGFloat)a8 distortionCenter:(CGFloat)a9 timestamp:(uint64_t)a10
{
  v25 = a13;
  v42.receiver = a1;
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
    *&v26->_anon_20[16] = a3;
    *&v26->_anon_20[32] = a4;
    *v26->_anon_50 = a5;
    *&v26->_anon_50[16] = a6;
    *&v26->_anon_50[32] = a7;
    objc_storeStrong(&v26->_distortionLookupTable, a13);
    v26->_referenceDimensions.width = a8;
    v26->_referenceDimensions.height = a9;
    v26->_distortionCenter.x = a14;
    v26->_distortionCenter.y = a15;
    v26->_timestamp = a16;
  }

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  colorSurface = self->_colorSurface;
  v5 = a3;
  [v5 encodeObject:colorSurface forKey:@"ColorSurface"];
  [v5 encodeObject:self->_depthSurface forKey:@"DepthSurface"];
  [v5 encodeObject:self->_serializableColorPixelBuffer forKey:@"ColorPixelBuffer"];
  [v5 encodeObject:self->_serializableDepthPixelBuffer forKey:@"DepthPixelBuffer"];
  v6 = [[NSData alloc] initWithBytes:self->_anon_20 length:48];
  [v5 encodeObject:v6 forKey:@"ColorIntrinsics"];
  v7 = [[NSData alloc] initWithBytes:self->_anon_50 length:48];

  [v5 encodeObject:v7 forKey:@"DepthIntrinsics"];
  [v5 encodeObject:self->_distortionLookupTable forKey:@"DistortionLUT"];
  v8 = [[NSData alloc] initWithBytes:&self->_referenceDimensions length:16];

  [v5 encodeObject:v8 forKey:@"RefDimensions"];
  v10 = [[NSData alloc] initWithBytes:&self->_distortionCenter length:16];

  [v5 encodeObject:v10 forKey:@"DistortionCenter"];
  v9 = [NSNumber numberWithDouble:self->_timestamp];
  [v5 encodeObject:v9 forKey:@"Timestamp"];
}

- (HRTFSerializableCaptureData)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"ColorSurface"] && objc_msgSend(v4, "containsValueForKey:", @"DepthSurface") && objc_msgSend(v4, "containsValueForKey:", @"ColorPixelBuffer") && objc_msgSend(v4, "containsValueForKey:", @"DepthPixelBuffer") && objc_msgSend(v4, "containsValueForKey:", @"ColorIntrinsics") && objc_msgSend(v4, "containsValueForKey:", @"DepthIntrinsics") && objc_msgSend(v4, "containsValueForKey:", @"DistortionLUT") && objc_msgSend(v4, "containsValueForKey:", @"RefDimensions") && objc_msgSend(v4, "containsValueForKey:", @"DistortionCenter") && objc_msgSend(v4, "containsValueForKey:", @"Timestamp"))
  {
    v30.receiver = self;
    v30.super_class = HRTFSerializableCaptureData;
    v5 = [(HRTFSerializableCaptureData *)&v30 init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ColorSurface"];
      v7 = *(v5 + 22);
      *(v5 + 22) = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DepthSurface"];
      v9 = *(v5 + 23);
      *(v5 + 23) = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ColorPixelBuffer"];
      v11 = *(v5 + 1);
      *(v5 + 1) = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DepthPixelBuffer"];
      v13 = *(v5 + 2);
      *(v5 + 2) = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ColorIntrinsics"];
      if ([v14 length] != 48)
      {
        sub_100008638();
      }

      v15 = [v14 bytes];
      v17 = v15[1];
      v16 = v15[2];
      *(v5 + 2) = *v15;
      *(v5 + 3) = v17;
      *(v5 + 4) = v16;
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DepthIntrinsics"];

      if ([v18 length] != 48)
      {
        sub_100008664();
      }

      v19 = [v18 bytes];
      v21 = v19[1];
      v20 = v19[2];
      *(v5 + 5) = *v19;
      *(v5 + 6) = v21;
      *(v5 + 7) = v20;
      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DistortionLUT"];
      v23 = *(v5 + 16);
      *(v5 + 16) = v22;

      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RefDimensions"];

      if ([v24 length] != 16)
      {
        sub_100008690();
      }

      *(v5 + 136) = *[v24 bytes];
      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DistortionCenter"];

      if ([v25 length] != 16)
      {
        sub_1000086BC();
      }

      *(v5 + 152) = *[v25 bytes];
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Timestamp"];
      [v26 doubleValue];
      *(v5 + 21) = v27;
    }

    self = v5;
    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (__n128)colorIntrinsics
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  return result;
}

- (__n128)depthIntrinsics
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
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