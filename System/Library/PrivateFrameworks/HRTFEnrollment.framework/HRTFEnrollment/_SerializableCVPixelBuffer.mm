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
  v43[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
  PlaneCount = CVPixelBufferGetPlaneCount(self->_pixelBuffer);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(self->_pixelBuffer)];
  [coderCopy encodeObject:v6 forKey:@"PixelFormat"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:PlaneCount];
  [coderCopy encodeObject:v7 forKey:@"PlaneCount"];

  if (PlaneCount)
  {
    v38 = coderCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    [v8 addObject:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v13 = v9;
    [v9 addObject:v12];

    if (PlaneCount >= 1)
    {
      v14 = 0;
      do
      {
        v15 = PlaneCount;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidthOfPlane(self->_pixelBuffer, v14)}];
        [v8 addObject:v16];

        HeightOfPlane = CVPixelBufferGetHeightOfPlane(self->_pixelBuffer, v14);
        v18 = v8;
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, v14);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:HeightOfPlane];
        [v13 addObject:v20];

        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:BytesPerRowOfPlane];
        [v39 addObject:v21];

        v22 = BytesPerRowOfPlane * HeightOfPlane;
        v8 = v18;
        v23 = objc_alloc(MEMORY[0x277CBEA90]);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, v14);
        v25 = v23;
        PlaneCount = v15;
        v26 = [v25 initWithBytes:BaseAddressOfPlane length:v22];
        [v10 addObject:v26];

        ++v14;
      }

      while (v15 != v14);
    }

    coderCopy = v38;
    [v38 encodeObject:v8 forKey:@"Width"];
    [v38 encodeObject:v13 forKey:@"Height"];
    [v38 encodeObject:v39 forKey:@"BytesPerRow"];
    [v38 encodeObject:v10 forKey:@"PixelData"];
  }

  else
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    v43[0] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    [coderCopy encodeObject:v28 forKey:@"Width"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v42 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    [coderCopy encodeObject:v30 forKey:@"Height"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(self->_pixelBuffer)];
    v41 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [coderCopy encodeObject:v32 forKey:@"BytesPerRow"];

    v33 = objc_alloc(MEMORY[0x277CBEA90]);
    BaseAddress = CVPixelBufferGetBaseAddress(self->_pixelBuffer);
    v35 = [v33 initWithBytes:BaseAddress length:CVPixelBufferGetDataSize(self->_pixelBuffer)];
    v40 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    [coderCopy encodeObject:v36 forKey:@"PixelData"];
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);

  v37 = *MEMORY[0x277D85DE8];
}

- (_SerializableCVPixelBuffer)initWithCoder:(id)coder
{
  v88[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"PlaneCount"] && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelFormat") && objc_msgSend(coderCopy, "containsValueForKey:", @"Width") && objc_msgSend(coderCopy, "containsValueForKey:", @"Height") && objc_msgSend(coderCopy, "containsValueForKey:", @"BytesPerRow") && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelData"))
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PlaneCount"];
    integerValue = [v5 integerValue];
    v7 = MEMORY[0x277CBEB98];
    v88[0] = objc_opt_class();
    v88[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = MEMORY[0x277CBEB98];
    v11 = integerValue;
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v13 = [v10 setWithArray:v12];

    v77 = v13;
    v78 = v9;
    if (integerValue)
    {
      selfCopy = self;
      v76 = v5;
      v14 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Width"];
      v15 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Height"];
      v16 = v9;
      v17 = v15;
      v18 = [coderCopy decodeObjectOfClasses:v16 forKey:@"BytesPerRow"];
      v71 = coderCopy;
      v19 = [coderCopy decodeObjectOfClasses:v13 forKey:@"PixelData"];
      v20 = [(size_t *)v14 objectAtIndexedSubscript:0];
      integerValue2 = [v20 integerValue];

      v21 = [v17 objectAtIndexedSubscript:0];
      integerValue3 = [v21 integerValue];

      v74 = &v71;
      (MEMORY[0x28223BE20])();
      v22 = (8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v23 = (&v71 - v22);
      if ((8 * v11) >= 0x200)
      {
        v24 = 512;
      }

      else
      {
        v24 = 8 * v11;
      }

      bzero(&v71 - v22, v24);
      v25 = (MEMORY[0x28223BE20])();
      planeWidth = (&v71 - v22);
      v27 = MEMORY[0x28223BE20](v25);
      v81 = (&v71 - v22);
      MEMORY[0x28223BE20](v27);
      planeBytesPerRow = (&v71 - v22);
      if (v11 >= 1)
      {
        v28 = 0;
        v79 = v11;
        do
        {
          v29 = [v19 objectAtIndexedSubscript:v28];
          v30 = malloc_type_malloc([v29 length], 0xBD302F31uLL);
          v23[v28] = v30;

          v31 = [v19 objectAtIndexedSubscript:v28];
          [v19 objectAtIndexedSubscript:v28];
          v32 = planeWidth;
          v33 = v23;
          v34 = v19;
          v35 = v18;
          v36 = v17;
          v38 = v37 = v14;
          [v31 getBytes:v30 length:{objc_msgSend(v38, "length")}];

          v14 = v37;
          v17 = v36;
          v18 = v35;
          v19 = v34;
          v23 = v33;
          planeWidth = v32;

          v39 = [(size_t *)v14 objectAtIndexedSubscript:v28 + 1];
          v32[v28] = [v39 integerValue];

          v40 = [v17 objectAtIndexedSubscript:v28 + 1];
          integerValue4 = [v40 integerValue];
          v81[v28] = integerValue4;

          v42 = [v18 objectAtIndexedSubscript:v28];
          integerValue5 = [v42 integerValue];
          planeBytesPerRow[v28] = integerValue5;

          v11 = v79;
          v28 = v28 + 1;
        }

        while (v28 != v79);
      }

      pixelBufferOut = 0;
      v44 = objc_opt_class();
      coderCopy = v71;
      v45 = [v71 decodeObjectOfClass:v44 forKey:@"PixelFormat"];

      integerValue6 = [(size_t *)v45 integerValue];
      v47 = CVPixelBufferCreateWithPlanarBytes(*MEMORY[0x277CBECE8], integerValue2, integerValue3, integerValue6, 0, 0, v11, v23, planeWidth, v81, planeBytesPerRow, __planarDeallocateHelper, 0, 0, &pixelBufferOut);
      if (v47)
      {
        v48 = v47;
        v49 = HRTFLogObjectForCategory_HRTFSerializableCaptureData();
        v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
        v51 = v78;
        self = selfCopy;
        if (v50)
        {
          *buf = 67109120;
          v86 = v48;
          _os_log_impl(&dword_250984000, v49, OS_LOG_TYPE_ERROR, "failed to create planar CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v82.receiver = selfCopy;
        v82.super_class = _SerializableCVPixelBuffer;
        v69 = [(_SerializableCVPixelBuffer *)&v82 init];
        v51 = v78;
        if (v69)
        {
          v69->_pixelBuffer = pixelBufferOut;
        }

        self = v69;
        selfCopy3 = self;
      }
    }

    else
    {
      v55 = [coderCopy decodeObjectOfClasses:v13 forKey:@"PixelData"];
      v56 = [v55 objectAtIndexedSubscript:0];

      v74 = malloc_type_malloc([v56 length], 0x74067141uLL);
      v81 = v56;
      memcpy(v74, [v56 bytes], objc_msgSend(v56, "length"));
      pixelBufferOut = 0;
      v57 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Width"];
      v58 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Height"];
      v59 = [coderCopy decodeObjectOfClasses:v9 forKey:@"BytesPerRow"];
      v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PixelFormat"];

      planeBytesPerRow = v60;
      integerValue2 = [(size_t *)v60 integerValue];
      v61 = *MEMORY[0x277CBECE8];
      v79 = v57;
      v62 = [v57 objectAtIndexedSubscript:0];
      integerValue7 = [v62 integerValue];
      v76 = v58;
      v64 = [v58 objectAtIndexedSubscript:0];
      integerValue8 = [v64 integerValue];
      selfCopy = v59;
      v66 = [(_SerializableCVPixelBuffer *)v59 objectAtIndexedSubscript:0];
      v67 = CVPixelBufferCreateWithBytes(v61, integerValue7, integerValue8, integerValue2, v74, [v66 integerValue], __deallocateHelper, 0, 0, &pixelBufferOut);

      if (v67)
      {
        v68 = HRTFLogObjectForCategory_HRTFSerializableCaptureData();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v86 = v67;
          _os_log_impl(&dword_250984000, v68, OS_LOG_TYPE_ERROR, "failed to create CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v83.receiver = self;
        v83.super_class = _SerializableCVPixelBuffer;
        v70 = [(_SerializableCVPixelBuffer *)&v83 init];
        if (v70)
        {
          v70->_pixelBuffer = pixelBufferOut;
        }

        self = v70;
        selfCopy3 = self;
      }

      v51 = v78;
      v45 = planeBytesPerRow;
      v14 = v81;
    }
  }

  else
  {
    selfCopy3 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];
  return selfCopy3;
}

@end