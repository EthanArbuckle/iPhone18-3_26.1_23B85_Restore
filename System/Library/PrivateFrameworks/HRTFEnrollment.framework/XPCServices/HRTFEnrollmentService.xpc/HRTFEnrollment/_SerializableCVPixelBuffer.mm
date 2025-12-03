@interface _SerializableCVPixelBuffer
- (_SerializableCVPixelBuffer)initWithCVPixelBufferRef:(__CVBuffer *)ref;
- (_SerializableCVPixelBuffer)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SerializableCVPixelBuffer

- (_SerializableCVPixelBuffer)initWithCVPixelBufferRef:(__CVBuffer *)ref
{
  v7.receiver = self;
  v7.super_class = _SerializableCVPixelBuffer;
  v4 = [(_SerializableCVPixelBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_pixelBuffer = ref;
    CVBufferRetain(ref);
  }

  return v5;
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVBufferRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = _SerializableCVPixelBuffer;
  [(_SerializableCVPixelBuffer *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
  PlaneCount = CVPixelBufferGetPlaneCount(self->_pixelBuffer);
  v6 = [NSNumber numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(self->_pixelBuffer)];
  [coderCopy encodeObject:v6 forKey:@"PixelFormat"];

  v7 = [NSNumber numberWithInteger:PlaneCount];
  [coderCopy encodeObject:v7 forKey:@"PlaneCount"];

  if (PlaneCount)
  {
    v37 = coderCopy;
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v38 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    [v8 addObject:v11];

    v12 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v13 = v9;
    [v9 addObject:v12];

    if (PlaneCount >= 1)
    {
      v14 = 0;
      do
      {
        v15 = PlaneCount;
        v16 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetWidthOfPlane(self->_pixelBuffer, v14)];
        [v8 addObject:v16];

        HeightOfPlane = CVPixelBufferGetHeightOfPlane(self->_pixelBuffer, v14);
        v18 = v8;
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, v14);
        v20 = [NSNumber numberWithUnsignedLong:HeightOfPlane];
        [v13 addObject:v20];

        v21 = [NSNumber numberWithUnsignedLong:BytesPerRowOfPlane];
        [v38 addObject:v21];

        v22 = BytesPerRowOfPlane * HeightOfPlane;
        v8 = v18;
        v23 = [NSData alloc];
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, v14);
        v25 = v23;
        PlaneCount = v15;
        v26 = [v25 initWithBytes:BaseAddressOfPlane length:v22];
        [v10 addObject:v26];

        ++v14;
      }

      while (v15 != v14);
    }

    coderCopy = v37;
    [v37 encodeObject:v8 forKey:@"Width"];
    [v37 encodeObject:v13 forKey:@"Height"];
    [v37 encodeObject:v38 forKey:@"BytesPerRow"];
    [v37 encodeObject:v10 forKey:@"PixelData"];
  }

  else
  {
    v27 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    v42 = v27;
    v28 = [NSArray arrayWithObjects:&v42 count:1];
    [coderCopy encodeObject:v28 forKey:@"Width"];

    v29 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v41 = v29;
    v30 = [NSArray arrayWithObjects:&v41 count:1];
    [coderCopy encodeObject:v30 forKey:@"Height"];

    v31 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(self->_pixelBuffer)];
    v40 = v31;
    v32 = [NSArray arrayWithObjects:&v40 count:1];
    [coderCopy encodeObject:v32 forKey:@"BytesPerRow"];

    v33 = [NSData alloc];
    BaseAddress = CVPixelBufferGetBaseAddress(self->_pixelBuffer);
    v35 = [v33 initWithBytes:BaseAddress length:CVPixelBufferGetDataSize(self->_pixelBuffer)];
    v39 = v35;
    v36 = [NSArray arrayWithObjects:&v39 count:1];
    [coderCopy encodeObject:v36 forKey:@"PixelData"];
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);
}

- (_SerializableCVPixelBuffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"PlaneCount"] && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelFormat") && objc_msgSend(coderCopy, "containsValueForKey:", @"Width") && objc_msgSend(coderCopy, "containsValueForKey:", @"Height") && objc_msgSend(coderCopy, "containsValueForKey:", @"BytesPerRow") && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelData"))
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PlaneCount"];
    integerValue = [v5 integerValue];
    v84[0] = objc_opt_class();
    v84[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v84 count:2];
    v8 = [NSSet setWithArray:v7];

    v9 = integerValue;
    v83[0] = objc_opt_class();
    v83[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v83 count:2];
    v11 = [NSSet setWithArray:v10];

    v73 = v11;
    v74 = v8;
    if (integerValue)
    {
      selfCopy = self;
      v72 = v5;
      v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Width"];
      v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Height"];
      v14 = v8;
      v15 = v13;
      v16 = [coderCopy decodeObjectOfClasses:v14 forKey:@"BytesPerRow"];
      v67 = coderCopy;
      v17 = [coderCopy decodeObjectOfClasses:v11 forKey:@"PixelData"];
      v18 = [(size_t *)v12 objectAtIndexedSubscript:0];
      integerValue2 = [v18 integerValue];

      v19 = [v15 objectAtIndexedSubscript:0];
      integerValue3 = [v19 integerValue];

      v70 = &v67;
      (__chkstk_darwin)();
      v20 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = (&v67 - v20);
      if ((8 * v9) >= 0x200)
      {
        v22 = 512;
      }

      else
      {
        v22 = 8 * v9;
      }

      bzero(&v67 - v20, v22);
      v23 = (__chkstk_darwin)();
      planeWidth = (&v67 - v20);
      v25 = __chkstk_darwin(v23);
      v77 = (&v67 - v20);
      __chkstk_darwin(v25);
      planeBytesPerRow = (&v67 - v20);
      if (v9 >= 1)
      {
        v26 = 0;
        v75 = v9;
        do
        {
          v27 = [v17 objectAtIndexedSubscript:v26];
          v28 = malloc_type_malloc([v27 length], 0xBD302F31uLL);
          v21[v26] = v28;

          v29 = [v17 objectAtIndexedSubscript:v26];
          [v17 objectAtIndexedSubscript:v26];
          v30 = planeWidth;
          v31 = v21;
          v32 = v17;
          v33 = v16;
          v34 = v15;
          v36 = v35 = v12;
          [v29 getBytes:v28 length:{objc_msgSend(v36, "length")}];

          v12 = v35;
          v15 = v34;
          v16 = v33;
          v17 = v32;
          v21 = v31;
          planeWidth = v30;

          v37 = [(size_t *)v12 objectAtIndexedSubscript:v26 + 1];
          v30[v26] = [v37 integerValue];

          v38 = [v15 objectAtIndexedSubscript:v26 + 1];
          integerValue4 = [v38 integerValue];
          v77[v26] = integerValue4;

          v40 = [v16 objectAtIndexedSubscript:v26];
          integerValue5 = [v40 integerValue];
          planeBytesPerRow[v26] = integerValue5;

          v9 = v75;
          v26 = v26 + 1;
        }

        while (v26 != v75);
      }

      pixelBufferOut = 0;
      v42 = objc_opt_class();
      coderCopy = v67;
      v43 = [v67 decodeObjectOfClass:v42 forKey:@"PixelFormat"];

      integerValue6 = [(size_t *)v43 integerValue];
      v45 = CVPixelBufferCreateWithPlanarBytes(kCFAllocatorDefault, integerValue2, integerValue3, integerValue6, 0, 0, v9, v21, planeWidth, v77, planeBytesPerRow, sub_100003694, 0, 0, &pixelBufferOut);
      if (v45)
      {
        v46 = v45;
        v47 = sub_100003650();
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        v49 = v74;
        self = selfCopy;
        if (v48)
        {
          *buf = 67109120;
          v82 = v46;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "failed to create planar CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v78.receiver = selfCopy;
        v78.super_class = _SerializableCVPixelBuffer;
        v65 = [(_SerializableCVPixelBuffer *)&v78 init];
        v49 = v74;
        if (v65)
        {
          v65->_pixelBuffer = pixelBufferOut;
        }

        self = v65;
        selfCopy3 = self;
      }
    }

    else
    {
      v52 = [coderCopy decodeObjectOfClasses:v11 forKey:@"PixelData"];
      v53 = [v52 objectAtIndexedSubscript:0];

      v70 = malloc_type_malloc([v53 length], 0x74067141uLL);
      v77 = v53;
      memcpy(v70, [v53 bytes], objc_msgSend(v53, "length"));
      pixelBufferOut = 0;
      v54 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Width"];
      v55 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Height"];
      v56 = [coderCopy decodeObjectOfClasses:v8 forKey:@"BytesPerRow"];
      v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PixelFormat"];

      planeBytesPerRow = v57;
      integerValue2 = [(size_t *)v57 integerValue];
      v75 = v54;
      v58 = [v54 objectAtIndexedSubscript:0];
      integerValue7 = [v58 integerValue];
      v72 = v55;
      v60 = [v55 objectAtIndexedSubscript:0];
      integerValue8 = [v60 integerValue];
      selfCopy = v56;
      v62 = [(_SerializableCVPixelBuffer *)v56 objectAtIndexedSubscript:0];
      v63 = CVPixelBufferCreateWithBytes(kCFAllocatorDefault, integerValue7, integerValue8, integerValue2, v70, [v62 integerValue], sub_100003648, 0, 0, &pixelBufferOut);

      if (v63)
      {
        v64 = sub_100003650();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v82 = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "failed to create CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v79.receiver = self;
        v79.super_class = _SerializableCVPixelBuffer;
        v66 = [(_SerializableCVPixelBuffer *)&v79 init];
        if (v66)
        {
          v66->_pixelBuffer = pixelBufferOut;
        }

        self = v66;
        selfCopy3 = self;
      }

      v49 = v74;
      v43 = planeBytesPerRow;
      v12 = v77;
    }
  }

  else
  {
    selfCopy3 = 0;
  }

  return selfCopy3;
}

@end