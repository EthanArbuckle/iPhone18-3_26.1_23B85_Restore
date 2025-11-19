@interface IMEmbeddedHardwareJPEGTranscoder
- (BOOL)_decodeImageToIOSurface;
- (BOOL)_isJPEGImage:(CGImageSource *)a3;
- (BOOL)scaleImageToFitLargestDimension:(id)a3 outputData:(id *)a4;
- (IMEmbeddedHardwareJPEGTranscoder)initWithImageData:(id)a3 imageSource:(CGImageSource *)a4;
- (void)dealloc;
@end

@implementation IMEmbeddedHardwareJPEGTranscoder

- (IMEmbeddedHardwareJPEGTranscoder)initWithImageData:(id)a3 imageSource:(CGImageSource *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = IMEmbeddedHardwareJPEGTranscoder;
  v6 = [(IMEmbeddedHardwareJPEGTranscoder *)&v35 init];
  if (v6 && MGGetBoolAnswer() && objc_msgSend__isJPEGImage_(v6, v7, a4, v8, v9, v10, v11))
  {
    v6->_imageData = a3;
    v12 = CGImageSourceCopyPropertiesAtIndex(a4, 0, 0);
    v6->_imageProperties = v12;
    Value = CFDictionaryGetValue(v12, *MEMORY[0x277CD3450]);
    v20 = objc_msgSend_intValue(Value, v14, v15, v16, v17, v18, v19);
    v21 = CFDictionaryGetValue(v6->_imageProperties, *MEMORY[0x277CD3448]);
    v28 = objc_msgSend_intValue(v21, v22, v23, v24, v25, v26, v27);
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        imageProperties = v6->_imageProperties;
        *buf = 138412290;
        v37 = imageProperties;
        _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "Input image properties: %@", buf, 0xCu);
      }
    }

    v32 = v20 <= 0x4000 && v28 <= 0x4000;
    v6->_canHardwareScaleImage = v32;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  imageProperties = self->_imageProperties;
  if (imageProperties)
  {
    CFRelease(imageProperties);
  }

  ioSurfaceRef = self->_ioSurfaceRef;
  if (ioSurfaceRef)
  {
    CFRelease(ioSurfaceRef);
  }

  v5.receiver = self;
  v5.super_class = IMEmbeddedHardwareJPEGTranscoder;
  [(IMEmbeddedHardwareJPEGTranscoder *)&v5 dealloc];
}

- (BOOL)_isJPEGImage:(CGImageSource *)a3
{
  Type = CGImageSourceGetType(a3);
  if (Type)
  {
    LOBYTE(Type) = UTTypeConformsTo(Type, *MEMORY[0x277CC20C8]) != 0;
  }

  return Type;
}

- (BOOL)_decodeImageToIOSurface
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = objc_msgSend_initWithObjectsAndKeys_(v3, v4, *MEMORY[0x277CBED28], v5, v6, v7, v8, *MEMORY[0x277CF6DB0], 0);
  imageData = self->_imageData;
  v11 = CMPhotoJPEGCreateIOSurfaceFromJPEG();

  if (v11)
  {
    self->_canHardwareScaleImage = 0;
  }

  self->_imageData = 0;
  return v11 != 0;
}

- (BOOL)scaleImageToFitLargestDimension:(id)a3 outputData:(id *)a4
{
  v81 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_4;
  }

  *a4 = 0;
  if (!self->_canHardwareScaleImage || objc_msgSend_intValue(a3, a2, a3, a4, v4, v5, v6) > 0x4000)
  {
    goto LABEL_4;
  }

  ioSurfaceRef = self->_ioSurfaceRef;
  if (!ioSurfaceRef)
  {
    if (objc_msgSend__decodeImageToIOSurface(self, 0, v10, v11, v12, v13, v14))
    {
LABEL_4:
      v15 = 0;
      goto LABEL_5;
    }

    ioSurfaceRef = self->_ioSurfaceRef;
  }

  pixelTransferSessionOut = 0;
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], ioSurfaceRef, 0, &pixelBufferOut);
  VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  v19 = self->_ioSurfaceRef;
  if (qword_27F611A20 != -1)
  {
    sub_254831018();
  }

  off_27F611A18(v19);
  v20 = self->_ioSurfaceRef;
  if (qword_27F611A30 != -1)
  {
    sub_254831040();
  }

  off_27F611A28(v20);
  objc_msgSend_intValue(a3, v21, v22, v23, v24, v25, v26);
  FigCreateIOSurfaceBackedCVPixelBuffer();
  VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, 0);
  CVPixelBufferRelease(pixelBufferOut);
  pixelBufferOut = 0;
  IOSurface = CVPixelBufferGetIOSurface(0);
  CFRetain(IOSurface);
  CVPixelBufferRelease(0);
  objc_msgSend_targetJPEGCompressionValue(self, v28, v29, v30, v31, v32, v33);
  v35 = v34;
  if (v34 <= 0.0)
  {
    v35 = 0.899999976;
  }

  else
  {
    v36 = 926232686;
    if (v34 == 0.75)
    {
LABEL_25:
      v52 = objc_alloc(MEMORY[0x277CBEAC0]);
      v58 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v53, v36, v54, v55, v56, v57);
      v51 = objc_msgSend_initWithObjectsAndKeys_(v52, v59, v58, v60, v61, v62, v63, *MEMORY[0x277CF6DB8], 0);
      goto LABEL_26;
    }

    if (v34 == 0.800000012)
    {
      v36 = 942682222;
      goto LABEL_25;
    }

    if (v34 == 0.824999988)
    {
      v36 = 942814579;
      goto LABEL_25;
    }

    if (v34 == 0.850000024)
    {
      v36 = 943009907;
      goto LABEL_25;
    }

    if (v34 == 0.899999976)
    {
      v36 = 959459438;
      goto LABEL_25;
    }
  }

  v37 = objc_alloc(MEMORY[0x277CBEAC0]);
  *&v38 = v35;
  v45 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v39, v40, v41, v42, v43, v44, v38);
  v51 = objc_msgSend_initWithObjectsAndKeys_(v37, v46, v45, v47, v48, v49, v50, *MEMORY[0x277CD2D48], 0);
LABEL_26:
  v64 = v51;
  v65 = CMPhotoJPEGCreateJPEGFromIOSurface();

  v15 = v65 == 0;
  if (!v65)
  {
    if (qword_27F611A50 != -1)
    {
      sub_254831068();
    }

    off_27F611A48(0, 1, 0);
    v66 = objc_alloc(MEMORY[0x277CBEA90]);
    if (qword_27F611A40 != -1)
    {
      sub_254831090();
    }

    v67 = off_27F611A38(0);
    v71 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v66, v68, v67, 0, 0, v69, v70);
    imageProperties = self->_imageProperties;
    v73 = IMOSLoggingEnabled();
    if (imageProperties)
    {
      if (v73)
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v80 = imageProperties;
          _os_log_impl(&dword_254811000, v74, OS_LOG_TYPE_INFO, "Out image properties: %@", buf, 0xCu);
        }
      }

      EXIFJPEGData = CGImageCreateEXIFJPEGData();
    }

    else
    {
      if (v73)
      {
        v76 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v80 = 0;
          _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "Empty image properties: %@", buf, 0xCu);
        }
      }

      EXIFJPEGData = v71;
    }

    *a4 = EXIFJPEGData;

    if (qword_27F611A60 != -1)
    {
      sub_2548310B8();
    }

    off_27F611A58(0, 1, 0);
  }

  if (IOSurface)
  {
    CFRelease(IOSurface);
  }

  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

LABEL_5:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end