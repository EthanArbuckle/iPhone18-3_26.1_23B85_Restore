@interface CSUPixelBufferDescriptor
- (__CVBuffer)createNewBuffer:(id *)a3;
@end

@implementation CSUPixelBufferDescriptor

- (__CVBuffer)createNewBuffer:(id *)a3
{
  v35 = objc_msgSend_width(self, a2, a3, v3, v4);
  v10 = objc_msgSend_height(self, v6, v7, v8, v9);
  v36 = v10;
  pixelFormatType = objc_msgSend_pixelFormat(self, v11, v12, v13, v14);
  isIOSurfaceBacked = objc_msgSend_isIOSurfaceBacked(self, v15, v16, v17, v18);
  v38 = objc_msgSend_bytesPerRowAlignment(self, v20, v21, v22, v23);
  v39 = 1;
  if (!v35 || !v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid dimensions requested for CVPixelBuffer creation.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  pixelBufferOut = 0;
  v24 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v42 = Mutable;
  if (isIOSurfaceBacked)
  {
    v26 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v27 = *MEMORY[0x1E69660D8];
    v41.__r_.__value_.__r.__words[0] = v26;
    CFDictionarySetValue(Mutable, v27, v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  v28 = CFNumberCreate(v24, kCFNumberSInt64Type, &v38);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966020], v28);
  CFRelease(v28);
  v29 = CVPixelBufferCreate(v24, v35, v36, pixelFormatType, Mutable, &pixelBufferOut);
  if (v29)
  {
    v33 = v29;
    v34 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v40, v33);
    sub_1AC063E68("Failed to create CVPixelBuffer. Status = ", &v40, &v41);
    std::runtime_error::runtime_error(v34, &v41);
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v30 = pixelBufferOut;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

@end