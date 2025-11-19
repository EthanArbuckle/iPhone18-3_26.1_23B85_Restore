@interface MIOPixelBufferUtility
+ (BOOL)bufferHasPadding:(__CVBuffer *)a3;
+ (BOOL)concatPixelBuffer:(__CVBuffer *)a3 withPixelBuffer:(__CVBuffer *)a4 targetPixelBuffer:(__CVBuffer *)a5;
+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)a3 toMonochromeBuffer:(__CVBuffer *)a4;
+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)a3 touint16Data:(unsigned __int16 *)a4;
+ (BOOL)copyData:(id)a3 toNonPlanarPixelBuffer:(__CVBuffer *)a4;
+ (BOOL)copyData:(id)a3 toPlanarPixelBuffer:(__CVBuffer *)a4 toPlane:(unint64_t)a5;
+ (BOOL)copyFromPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 andShiftBits:(int)a5;
+ (BOOL)copyMonochromeBuffer:(__CVBuffer *)a3 toAlphaChannelOfBuffer:(__CVBuffer *)a4;
+ (BOOL)copyPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4;
+ (BOOL)copyPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 bytesPerPixel:(double)a5;
+ (BOOL)copyuint16Data:(unsigned __int16 *)a3 toAlphaChannelOfBuffer:(__CVBuffer *)a4;
+ (BOOL)fillPlaneOfPixelBuffer:(__CVBuffer *)a3 planeIndex:(int)a4 withValue:(unsigned __int16)a5;
+ (BOOL)isPixelBufferCompandedRawBayer:(__CVBuffer *)a3;
+ (BOOL)isPixelBufferRawBayer:(__CVBuffer *)a3;
+ (BOOL)isPixelFormatCompandedRawBayer:(unsigned int)a3;
+ (BOOL)isPixelFormatRawBayer:(unsigned int)a3;
+ (BOOL)joinCompandedWarholBuffer:(__CVBuffer *)a3 intoCompandedBayerBuffer:(__CVBuffer *)a4;
+ (BOOL)joinWarholBuffer:(__CVBuffer *)a3 intoBayerBuffer:(__CVBuffer *)a4 shiftBitsRightBy:(int)a5 msbReplication:(BOOL)a6;
+ (BOOL)joinYUVBuffer:(__CVBuffer *)a3 intoRawBayerPixelBuffer:(__CVBuffer *)a4 shiftBitsLeftBy:(int)a5 msbReplication:(BOOL)a6;
+ (BOOL)splitBayerBuffer:(__CVBuffer *)a3 intoWarholPixelBuffer:(__CVBuffer *)a4 shiftBitsLeftBy:(int)a5;
+ (BOOL)splitBayerBuffer:(__CVBuffer *)a3 intoYUVPixelBuffer:(__CVBuffer *)a4 shiftBitsLeftBy:(int)a5;
+ (BOOL)splitCompandedBayerBuffer:(__CVBuffer *)a3 intoCompandedWarholPixelBuffer:(__CVBuffer *)a4;
+ (BOOL)transferL010PixelBuffer:(__CVBuffer *)a3 toq8q2PixelBuffer:(__CVBuffer *)a4;
+ (BOOL)transfer_RGhABuffer:(__CVBuffer *)a3 torg3h:(__CVBuffer *)a4;
+ (BOOL)transfer_rg3hBuffer:(__CVBuffer *)a3 toRGhA:(__CVBuffer *)a4;
+ (BOOL)transferq8q2PixelBuffer:(__CVBuffer *)a3 toL010PixelBuffer:(__CVBuffer *)a4;
+ (BOOL)verticallySplitPixelBuffer:(__CVBuffer *)a3 intoTopPixelBuffer:(__CVBuffer *)a4 bottomPixelBuffer:(__CVBuffer *)a5;
+ (BOOL)writeBuffer:(__CVBuffer *)a3 toFile:(id)a4;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 extendedPixelsPerRow:(unsigned int)a5 pixelFormat:(int)a6 bytesPerRowAlignment:(unsigned int)a7 planeAlignment:(unsigned int)a8;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 extendedPixelsPerRow:(unsigned int)a5 pixelFormat:(int)a6 bytesPerRowAlignment:(unsigned int)a7 planeAlignment:(unsigned int)a8 bufferCacheMode:(int)a9;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(int)a5 bytesPerRow:(unsigned int)a6;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(int)a5 bytesPerRows:(id)a6;
+ (__CVBuffer)combineLeftBuffer:(__CVBuffer *)a3 rightBuffer:(__CVBuffer *)a4;
+ (__CVBuffer)create4444AYpCbCr16PixelBufferFillAlphaWithData:(__CFData *)a3 width:(unint64_t)a4 height:(unint64_t)a5;
+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)a3 height:(unsigned int)a4 extendedRows:(unsigned int)a5 extendedPixelsPerRow:(unsigned int)a6 pixelFormat:(int)a7 bytesPerRowAlignment:(unsigned int)a8 planeAlignment:(unsigned int)a9 bufferCacheMode:(unsigned int)a10;
+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(int)a5 bytesPerRow:(unsigned int)a6;
+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)a3;
+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)a3 attachmentKeysToCopy:(id)a4;
+ (__CVBuffer)newRawBayerBufferFromYUVPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4 msbReplication:(BOOL)a5;
+ (__CVBuffer)newWarholBufferFromCompandedRawBayerPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4;
+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)a3;
+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4;
+ (__CVBuffer)newYUVBufferFromRawBayerPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4;
+ (__CVBuffer)pixelBufferFromPool:(__CVPixelBufferPool *)a3;
+ (__CVBuffer)readFrameFromFile:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 pixelFormat:(unsigned int)a6;
+ (__CVBuffer)stripBufferPadding:(__CVBuffer *)a3;
+ (__CVPixelBufferPool)createNewL008PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)a3 minimumBufferCount:(unint64_t)a4;
+ (__CVPixelBufferPool)createNewL010PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)a3 minimumBufferCount:(unint64_t)a4;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 bytesPerRow:(unint64_t)a6 minBufferCount:(unint64_t)a7;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 bytesPerRows:(id)a6 minBufferCount:(unint64_t)a7;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 extendedPixelsPerRow:(unint64_t)a6 minBufferCount:(unint64_t)a7;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 extendedPixelsPerRow:(unint64_t)a6 minBufferCount:(unint64_t)a7 bufferCacheMode:(int)a8;
+ (id)copyNonPlanarPixelBufferData:(__CVBuffer *)a3;
+ (id)copyPixelBufferData:(__CVBuffer *)a3 ofPlane:(unint64_t)a4;
+ (id)histogramOf8BitBuffer:(__CVBuffer *)a3;
+ (id)rangesOf8BitBuffer:(__CVBuffer *)a3;
+ (id)sharedBytesPerPixelLookUp;
+ (int64_t)numberOfPlanesForPixelFormatType:(unsigned int)a3;
+ (unint64_t)bytesPerWidthOfBuffer:(__CVBuffer *)a3;
+ (unint64_t)extendedPixelsPerRowOfPixelBuffer:(__CVBuffer *)a3;
+ (unint64_t)pixelBufferSizeWithPadding:(__CVBuffer *)a3;
+ (void)transferAttachmentForKey:(__CFString *)a3 fromBuffer:(__CVBuffer *)a4 toBuffer:(__CVBuffer *)a5;
+ (void)writeBuffer:(const char *)a3 ofSize:(unint64_t)a4 toFile:(id)a5;
@end

@implementation MIOPixelBufferUtility

+ (id)sharedBytesPerPixelLookUp
{
  if (+[MIOPixelBufferUtility sharedBytesPerPixelLookUp]::onceToken != -1)
  {
    +[MIOPixelBufferUtility sharedBytesPerPixelLookUp];
  }

  v3 = +[MIOPixelBufferUtility sharedBytesPerPixelLookUp]::lookup;

  return v3;
}

uint64_t __50__MIOPixelBufferUtility_sharedBytesPerPixelLookUp__block_invoke()
{
  +[MIOPixelBufferUtility sharedBytesPerPixelLookUp]::lookup = [&unk_2868E3C28 mutableCopy];

  return MEMORY[0x2821F96F8]();
}

+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)a3 height:(unsigned int)a4 extendedRows:(unsigned int)a5 extendedPixelsPerRow:(unsigned int)a6 pixelFormat:(int)a7 bytesPerRowAlignment:(unsigned int)a8 planeAlignment:(unsigned int)a9 bufferCacheMode:(unsigned int)a10
{
  pixelBufferOut = 0;
  LODWORD(v15) = a10;
  v13 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:*&a3 height:*&a4 extendedPixelsPerRow:*&a6 pixelFormat:*&a7 bytesPerRowAlignment:*&a8 planeAlignment:a9 bufferCacheMode:v15];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], a3, a4, a7, v13, &pixelBufferOut);
  CFRelease(v13);
  return pixelBufferOut;
}

+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(int)a5 bytesPerRow:(unsigned int)a6
{
  pixelBufferOut = 0;
  v9 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:*&a3 height:*&a4 pixelFormat:*&a5 bytesPerRow:*&a6];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], a3, a4, a5, v9, &pixelBufferOut);
  CFRelease(v9);
  return pixelBufferOut;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(int)a5 bytesPerRows:(id)a6
{
  v20 = a4;
  valuePtr = a3;
  v19 = a5;
  v6 = a6;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v9);
  CFRelease(v9);
  if ([v6 count] == 1)
  {
    v10 = [v6 objectAtIndexedSubscript:0];
    v11 = [v10 intValue];

    v18 = v11;
    v12 = CFNumberCreate(v7, kCFNumberIntType, &v18);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D98], v12);
    CFRelease(v12);
  }

  if ([v6 count] >= 2)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D98], v6);
  }

  v13 = CFNumberCreate(v7, kCFNumberIntType, &v20);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v13);
  CFRelease(v13);
  v14 = CFNumberCreate(v7, kCFNumberIntType, &v19);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v14);
  CFRelease(v14);
  v15 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = 0;
  v16 = CFNumberCreate(v7, kCFNumberIntType, &v18);
  CFDictionarySetValue(v15, *MEMORY[0x277CD2970], v16);
  CFRelease(v16);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v15);
  CFRelease(v15);

  return Mutable;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(int)a5 bytesPerRow:(unsigned int)a6
{
  v21 = a4;
  valuePtr = a3;
  v20 = a5;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v11);
  CFRelease(v11);
  v19 = a6;
  v12 = CFNumberCreate(v7, kCFNumberIntType, &v19);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D98], v12);
  CFRelease(v12);
  v13 = CFNumberCreate(v7, kCFNumberIntType, &v21);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v13);
  CFRelease(v13);
  v14 = CFNumberCreate(v7, kCFNumberIntType, &v20);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v14);
  CFRelease(v14);
  v15 = CFDictionaryCreateMutable(v7, 0, v8, v9);
  v18 = 0;
  v16 = CFNumberCreate(v7, kCFNumberIntType, &v18);
  CFDictionarySetValue(v15, *MEMORY[0x277CD2970], v16);
  CFRelease(v16);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v15);
  CFRelease(v15);
  return Mutable;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 extendedPixelsPerRow:(unsigned int)a5 pixelFormat:(int)a6 bytesPerRowAlignment:(unsigned int)a7 planeAlignment:(unsigned int)a8
{
  v27 = a4;
  valuePtr = a3;
  v25 = a6;
  v26 = a5;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v13);
  CFRelease(v13);
  v24 = a7;
  v14 = CFNumberCreate(v11, kCFNumberIntType, &v24);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v14);
  CFRelease(v14);
  v15 = CFNumberCreate(v11, kCFNumberIntType, &v27);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v15);
  CFRelease(v15);
  if (a5)
  {
    v16 = CFNumberCreate(v11, kCFNumberIntType, &v26);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DB8], v16);
    CFRelease(v16);
  }

  v17 = CFNumberCreate(v11, kCFNumberIntType, &v25);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v17);
  CFRelease(v17);
  v23 = a8;
  v18 = CFNumberCreate(v11, kCFNumberIntType, &v23);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E38], v18);
  CFRelease(v18);
  v19 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = 0;
  v20 = CFNumberCreate(v11, kCFNumberIntType, &v22);
  CFDictionarySetValue(v19, *MEMORY[0x277CD2970], v20);
  CFRelease(v20);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v19);
  CFRelease(v19);
  return Mutable;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)a3 height:(unsigned int)a4 extendedPixelsPerRow:(unsigned int)a5 pixelFormat:(int)a6 bytesPerRowAlignment:(unsigned int)a7 planeAlignment:(unsigned int)a8 bufferCacheMode:(int)a9
{
  v9 = a9;
  v10 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:*&a3 height:*&a4 extendedPixelsPerRow:*&a5 pixelFormat:*&a6 bytesPerRowAlignment:1 planeAlignment:1];
  v11 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v10);
  CFRelease(v10);
  if (!v9)
  {
    a9 = 0;
  }

  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = CFNumberCreate(v11, kCFNumberIntType, &a9);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2970], v14);
  CFRelease(v14);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC4DE8], Mutable);
  CFRelease(Mutable);
  return MutableCopy;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 extendedPixelsPerRow:(unint64_t)a6 minBufferCount:(unint64_t)a7 bufferCacheMode:(int)a8
{
  v16[1] = *MEMORY[0x277D85DE8];
  LODWORD(v13) = a8;
  v9 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:a3 height:a4 extendedPixelsPerRow:a6 pixelFormat:*&a5 bytesPerRowAlignment:1 planeAlignment:1 bufferCacheMode:v13];
  poolOut = 0;
  v15 = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a7];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v11, v9, &poolOut);

  CFRelease(v9);
  return poolOut;
}

+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurfaceGetProhibitUseCount())
  {
    v12 = *MEMORY[0x277CC4D90];
    v13[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], IOSurface, v4, &pixelBufferOut);
  if (v5)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_ERROR, "ERROR CREATING PIXELBUFFERREFCOPY %d", buf, 8u);
    }

    v7 = 0;
  }

  else
  {
    v7 = pixelBufferOut;
  }

  return v7;
}

+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)a3 attachmentKeysToCopy:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  pixelBufferOut = 0;
  if (IOSurfaceGetProhibitUseCount())
  {
    v26 = *MEMORY[0x277CC4D90];
    v27[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], IOSurface, v7, &pixelBufferOut);
  if (v8)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v25 = v8;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "ERROR CREATING PIXELBUFFERREFCOPY %d", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          *buf = 0;
          v16 = CVBufferCopyAttachment(a3, v15, buf);
          if (v16)
          {
            CVBufferSetAttachment(pixelBufferOut, v15, v16, *buf);
            CFRelease(v16);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    v10 = pixelBufferOut;
  }

  return v10;
}

+ (BOOL)copyFromPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 andShiftBits:(int)a5
{
  if (a3)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    if (a5 >= 0)
    {
      LOBYTE(v10) = a5;
    }

    else
    {
      v10 = -a5;
    }

    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 0);
    if (CVPixelBufferIsPlanar(a3))
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a3);
    }

    v12 = BaseAddressOfPlane;
    if (CVPixelBufferIsPlanar(a4))
    {
      BaseAddress = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a4);
    }

    v14 = BaseAddress;
    if (CVPixelBufferIsPlanar(a3))
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeight(a3);
    }

    v16 = HeightOfPlane;
    if (CVPixelBufferIsPlanar(a3))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    }

    else
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
    }

    v18 = BytesPerRowOfPlane * v16;
    if (a5)
    {
      if (a5 < 1)
      {
        right_shift_uint16_buffer(v12, v14, v18, v10);
      }

      else
      {
        left_shift_uint16_buffer(v12, v14, v18, v10);
      }
    }

    else
    {
      memcpy(v14, v12, v18);
    }

    CVPixelBufferUnlockBaseAddress(a4, 0);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }

  return v6;
}

+ (__CVPixelBufferPool)createNewL010PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)a3 minimumBufferCount:(unint64_t)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v8 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v9 = +[MIOPixelBufferUtility createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:](MIOPixelBufferUtility, "createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:", Width, Height, (CVPixelBufferGetBytesPerRow(a3) % v8) >> 1, 1278226736, v8, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize]);
  v13 = 0;
  v14 = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v11, v9, &v13);

  CFRelease(v9);
  return v13;
}

+ (__CVPixelBufferPool)createNewL008PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)a3 minimumBufferCount:(unint64_t)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v8 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v9 = +[MIOPixelBufferUtility createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:](MIOPixelBufferUtility, "createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:", Width, Height, (CVPixelBufferGetBytesPerRow(a3) % v8), 1278226488, v8, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize]);
  v13 = 0;
  v14 = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v11, v9, &v13);

  CFRelease(v9);
  return v13;
}

+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4
{
  pixelBufferOut = 0;
  v5 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a4, &pixelBufferOut);
  result = 0;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (!v7)
  {
    [MIOPixelBufferUtility splitBayerBuffer:"splitBayerBuffer:intoWarholPixelBuffer:shiftBitsLeftBy:" intoWarholPixelBuffer:a3 shiftBitsLeftBy:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newYUVBufferFromRawBayerPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4
{
  pixelBufferOut = 0;
  v5 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a4, &pixelBufferOut);
  result = 0;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (!v7)
  {
    [MIOPixelBufferUtility splitBayerBuffer:"splitBayerBuffer:intoYUVPixelBuffer:shiftBitsLeftBy:" intoYUVPixelBuffer:a3 shiftBitsLeftBy:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newRawBayerBufferFromYUVPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4 msbReplication:(BOOL)a5
{
  pixelBufferOut = 0;
  v6 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a4, &pixelBufferOut);
  result = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = pixelBufferOut == 0;
  }

  if (!v8)
  {
    [MIOPixelBufferUtility joinYUVBuffer:"joinYUVBuffer:intoRawBayerPixelBuffer:shiftBitsLeftBy:msbReplication:" intoRawBayerPixelBuffer:a3 shiftBitsLeftBy:? msbReplication:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newWarholBufferFromCompandedRawBayerPixelBuffer:(__CVBuffer *)a3 withPixelBufferPool:(__CVPixelBufferPool *)a4
{
  pixelBufferOut = 0;
  v5 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a4, &pixelBufferOut);
  result = 0;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (!v7)
  {
    [MIOPixelBufferUtility splitCompandedBayerBuffer:a3 intoCompandedWarholPixelBuffer:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v6 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v7 = +[MIOPixelBufferUtility createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:](MIOPixelBufferUtility, "createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:", Width, Height, 0, (CVPixelBufferGetBytesPerRow(a3) % v6) >> 1, 1278226736, v6, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize]);
  [MIOPixelBufferUtility splitBayerBuffer:a3 intoWarholPixelBuffer:v7 shiftBitsLeftBy:2];
  return v7;
}

+ (BOOL)fillPlaneOfPixelBuffer:(__CVBuffer *)a3 planeIndex:(int)a4 withValue:(unsigned __int16)a5
{
  result = 0;
  if (a3 && (a4 & 0x80000000) == 0)
  {
    if (CVPixelBufferGetPlaneCount(a3) <= a4)
    {
      return 0;
    }

    else
    {
      CVPixelBufferLockBaseAddress(a3, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, a4);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, a4);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, a4);
      __pattern4[0] = a5;
      __pattern4[1] = a5;
      memset_pattern4(BaseAddressOfPlane, __pattern4, BytesPerRowOfPlane * HeightOfPlane);
      CVPixelBufferUnlockBaseAddress(a3, 0);
      return 1;
    }
  }

  return result;
}

+ (BOOL)isPixelBufferRawBayer:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);

  return [MIOPixelBufferUtility isPixelFormatRawBayer:PixelFormatType];
}

+ (BOOL)isPixelFormatRawBayer:(unsigned int)a3
{
  result = 1;
  if (a3 > 1735549491)
  {
    if (a3 == 1735549492)
    {
      return result;
    }

    v4 = 1919379252;
  }

  else
  {
    if (a3 == 1650943796)
    {
      return result;
    }

    v4 = 1734505012;
  }

  if (a3 != v4)
  {
    return 0;
  }

  return result;
}

+ (BOOL)isPixelBufferCompandedRawBayer:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);

  return [MIOPixelBufferUtility isPixelFormatCompandedRawBayer:PixelFormatType];
}

+ (BOOL)isPixelFormatCompandedRawBayer:(unsigned int)a3
{
  result = 1;
  if (a3 > 1735549751)
  {
    if (a3 == 1735549752)
    {
      return result;
    }

    v4 = 1919378232;
  }

  else
  {
    if (a3 == 1650942776)
    {
      return result;
    }

    v4 = 1734501176;
  }

  if (a3 != v4)
  {
    return 0;
  }

  return result;
}

+ (void)writeBuffer:(const char *)a3 ofSize:(unint64_t)a4 toFile:(id)a5
{
  v7 = fopen([a5 cStringUsingEncoding:4], "wb");
  if (v7)
  {
    v8 = v7;
    fwrite(a3, a4, 1uLL, v7);

    fclose(v8);
  }
}

+ (BOOL)joinYUVBuffer:(__CVBuffer *)a3 intoRawBayerPixelBuffer:(__CVBuffer *)a4 shiftBitsLeftBy:(int)a5 msbReplication:(BOOL)a6
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = a6;
    v9 = *&a5;
    v12 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v13 = [v12 joinYUVBuffer:a3 intoRawBayerPixelBuffer:a4 shiftBitsLeftBy:v9 msbReplication:v8];

    if ((v13 & 1) == 0)
    {
      if (v9 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = -v9;
      }

      v26 = v14;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a4);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v16 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
      Height = CVPixelBufferGetHeight(a4);
      Width = CVPixelBufferGetWidth(a4);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      v21 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
      join_bayer_buffer_yuv(BaseAddressOfPlane, v16, BaseAddress, Width, Height, BytesPerRow, BytesPerRowOfPlane, v21, v22, v23, v26, v8);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v7;
}

+ (unint64_t)bytesPerWidthOfBuffer:(__CVBuffer *)a3
{
  if (CVPixelBufferIsPlanar(a3))
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "bytesPerWidthOfBuffer requires non-planar buffer.", v8, 2u);
    }

    return 0;
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, 0);
    return (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidth(a3));
  }
}

+ (BOOL)bufferHasPadding:(__CVBuffer *)a3
{
  if (CVPixelBufferIsPlanar(a3))
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "bufferHasPadding requires non-planar buffer.", v7, 2u);
    }

    return 0;
  }

  else
  {
    v6 = [MIOPixelBufferUtility bytesPerWidthOfBuffer:a3];
    return v6 < CVPixelBufferGetBytesPerRow(a3);
  }
}

+ (__CVBuffer)stripBufferPadding:(__CVBuffer *)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferIsPlanar(a3))
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(destinationBuffer) = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "stripBufferPadding requires non-planar buffer.", &destinationBuffer, 2u);
    }

    goto LABEL_7;
  }

  v5 = [MIOPixelBufferUtility bytesPerWidthOfBuffer:a3];
  v14[0] = *MEMORY[0x277CC4D98];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
  v14[1] = *MEMORY[0x277CC4DE8];
  v15[0] = v6;
  v15[1] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  destinationBuffer = 0;
  Default = CFAllocatorGetDefault();
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  CVPixelBufferCreate(Default, Width, Height, PixelFormatType, v4, &destinationBuffer);
  if (![MIOPixelBufferUtility copyPixelBuffer:a3 toPixelBuffer:destinationBuffer])
  {
    CVPixelBufferRelease(destinationBuffer);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  CVBufferPropagateAttachments(a3, destinationBuffer);
  v11 = destinationBuffer;
LABEL_8:

  return v11;
}

+ (BOOL)transfer_RGhABuffer:(__CVBuffer *)a3 torg3h:(__CVBuffer *)a4
{
  Width = CVPixelBufferGetWidth(a4);
  if (Width != CVPixelBufferGetWidth(a3))
  {
    v24 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v32 = 0;
    v25 = "Width of rg3h and RGhA buffers does not match.";
    v26 = &v32;
LABEL_19:
    _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, v25, v26, 2u);
    goto LABEL_20;
  }

  Height = CVPixelBufferGetHeight(a4);
  if (Height != CVPixelBufferGetHeight(a3))
  {
    v24 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v31 = 0;
    v25 = "Height of rg3h and RGhA buffers does not match.";
    v26 = &v31;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a4) != 1919365992)
  {
    v24 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v30 = 0;
    v25 = "rg3h buffer has wrong pixel format type.";
    v26 = &v30;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1380411457)
  {
    v24 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "RGhA buffer has wrong pixel format type.";
      v26 = buf;
      goto LABEL_19;
    }

LABEL_20:

    return 0;
  }

  CVPixelBufferLockBaseAddress(a4, 0);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a4, 1uLL);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a4, 2uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(a4, 1uLL);
  v14 = CVPixelBufferGetBytesPerRowOfPlane(a4, 2uLL);
  if (Height)
  {
    v15 = 0;
    v16 = 2 * (v14 >> 1);
    v17 = BaseAddress + 2;
    do
    {
      v18 = v17;
      v19 = BaseAddressOfPlane;
      v20 = v9;
      v21 = v10;
      for (i = Width; i; --i)
      {
        *v19++ = *(v18 - 1);
        *v20++ = *v18;
        *v21++ = v18[1];
        v18 += 4;
      }

      ++v15;
      v10 += v16;
      v9 += 2 * (v13 >> 1);
      BaseAddressOfPlane += 2 * (BytesPerRowOfPlane >> 1);
      v17 += BytesPerRow >> 1;
    }

    while (v15 != Height);
  }

  v23 = 1;
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  return v23;
}

+ (BOOL)transfer_rg3hBuffer:(__CVBuffer *)a3 toRGhA:(__CVBuffer *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  if (Width != CVPixelBufferGetWidth(a4))
  {
    v27 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v35 = 0;
    v28 = "Width of rg3h and RGhA buffers does not match.";
    v29 = &v35;
LABEL_19:
    _os_log_impl(&dword_257883000, v27, OS_LOG_TYPE_ERROR, v28, v29, 2u);
    goto LABEL_20;
  }

  Height = CVPixelBufferGetHeight(a3);
  if (Height != CVPixelBufferGetHeight(a4))
  {
    v27 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v34 = 0;
    v28 = "Height of rg3h and RGhA buffers does not match.";
    v29 = &v34;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1919365992)
  {
    v27 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v33 = 0;
    v28 = "rg3h buffer has wrong pixel format type.";
    v29 = &v33;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a4) != 1380411457)
  {
    v27 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "RGhA buffer has wrong pixel format type.";
      v29 = buf;
      goto LABEL_19;
    }

LABEL_20:

    return 0;
  }

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a3, 2uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
  v14 = CVPixelBufferGetBytesPerRowOfPlane(a3, 2uLL);
  if (Height)
  {
    v15 = 0;
    v16 = 2 * (v14 >> 1);
    v17 = BaseAddress + 4;
    do
    {
      v18 = v17;
      v19 = BaseAddressOfPlane;
      v20 = v9;
      v21 = v10;
      for (i = Width; i; --i)
      {
        v23 = *v19++;
        *(v18 - 2) = v23;
        v24 = *v20++;
        *(v18 - 1) = v24;
        v25 = *v21++;
        *v18 = v25;
        v18[1] = 15360;
        v18 += 4;
      }

      ++v15;
      v10 += v16;
      v9 += 2 * (v13 >> 1);
      BaseAddressOfPlane += 2 * (BytesPerRowOfPlane >> 1);
      v17 += BytesPerRow >> 1;
    }

    while (v15 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
  v26 = 1;
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  return v26;
}

+ (BOOL)splitBayerBuffer:(__CVBuffer *)a3 intoYUVPixelBuffer:(__CVBuffer *)a4 shiftBitsLeftBy:(int)a5
{
  if (a3)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = *&a5;
    v10 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v11 = [v10 splitBayerBuffer:a3 intoYUVPixelBuffer:a4 shiftBitsLeftBy:v7];

    if ((v11 & 1) == 0)
    {
      if (v7 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = -v7;
      }

      v25 = v12;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      v15 = CVPixelBufferGetBaseAddressOfPlane(a4, 1uLL);
      Height = CVPixelBufferGetHeight(a3);
      Width = CVPixelBufferGetWidth(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      v20 = CVPixelBufferGetBytesPerRowOfPlane(a4, 1uLL);
      split_bayer_buffer_yuv(BaseAddress, BaseAddressOfPlane, v15, Width, Height, BytesPerRow, BytesPerRowOfPlane, v20, v21, v22, v23, v25);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v6;
}

+ (BOOL)splitBayerBuffer:(__CVBuffer *)a3 intoWarholPixelBuffer:(__CVBuffer *)a4 shiftBitsLeftBy:(int)a5
{
  if (a3)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = *&a5;
    v10 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v11 = [v10 splitBayerBuffer:a3 intoWarholPixelBuffer:a4 shiftBitsLeftBy:v7];

    if ((v11 & 1) == 0)
    {
      if (v7 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = -v7;
      }

      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      if (CVPixelBufferIsPlanar(a3))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a3);
      }

      v14 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(a4))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a4);
      }

      v16 = BaseAddress;
      if (CVPixelBufferIsPlanar(a3))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(a3);
      }

      v18 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
      }

      v20 = BytesPerRowOfPlane;
      v21 = BytesPerRowOfPlane * v18;
      if (CVPixelBufferIsPlanar(a4))
      {
        Height = CVPixelBufferGetHeightOfPlane(a4, 0);
      }

      else
      {
        Height = CVPixelBufferGetHeight(a4);
      }

      v23 = Height;
      if (CVPixelBufferIsPlanar(a4))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      }

      split_bayer_buffer(v14, v16, (v16 + (v20 >> 1)), (v16 + BytesPerRow * (v23 >> 1)), (v16 + BytesPerRow * (v23 >> 1) + (v20 >> 1)), v21, v20, BytesPerRow, v12, 1);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v6;
}

+ (BOOL)joinWarholBuffer:(__CVBuffer *)a3 intoBayerBuffer:(__CVBuffer *)a4 shiftBitsRightBy:(int)a5 msbReplication:(BOOL)a6
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = a6;
    v9 = *&a5;
    v12 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v13 = [v12 joinWarholBuffer:a3 intoBayerBuffer:a4 shiftBitsRightBy:v9 msbReplication:v8];

    if ((v13 & 1) == 0)
    {
      if (v9 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = -v9;
      }

      v28 = v14;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      if (CVPixelBufferIsPlanar(a4))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a4);
      }

      v27 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a3);
      }

      v17 = BaseAddress;
      if (CVPixelBufferIsPlanar(a3))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(a3);
      }

      v19 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
      }

      v21 = BytesPerRowOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
      }

      else
      {
        WidthOfPlane = CVPixelBufferGetWidth(a3);
      }

      v23 = WidthOfPlane;
      v24 = v21 - 2 * WidthOfPlane;
      if (CVPixelBufferIsPlanar(a4))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      }

      join_bayer_buffer(v17, (v17 + v23), (v17 + v21 * (v19 >> 1)), (v17 + v21 * (v19 >> 1) + v23), v27, (v21 * v19) >> 2, v21 >> 1, BytesPerRow, v24 >> 1, v28, 1, v8);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v7;
}

+ (BOOL)splitCompandedBayerBuffer:(__CVBuffer *)a3 intoCompandedWarholPixelBuffer:(__CVBuffer *)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v8 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v9 = [v8 splitCompandedBayerBuffer:a3 intoCompandedWarholPixelBuffer:a4];

    if ((v9 & 1) == 0)
    {
      extraColumnsOnRight = 0;
      extraColumnsOnLeft = 0;
      extraRowsOnBottom = 0;
      extraRowsOnTop = 0;
      CVPixelBufferGetExtendedPixels(a4, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      if (CVPixelBufferIsPlanar(a3))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a3);
      }

      v11 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(a4))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a4);
      }

      v13 = BaseAddress;
      if (CVPixelBufferIsPlanar(a3))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(a3);
      }

      v15 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
      }

      v17 = BytesPerRowOfPlane;
      v18 = BytesPerRowOfPlane * v15;
      Width = CVPixelBufferGetWidth(a3);
      v20 = CVPixelBufferGetWidth(a4);
      if (CVPixelBufferIsPlanar(a4))
      {
        Height = CVPixelBufferGetHeightOfPlane(a4, 0);
      }

      else
      {
        Height = CVPixelBufferGetHeight(a4);
      }

      v22 = Height;
      if (CVPixelBufferIsPlanar(a4))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      }

      split_companded_bayer_buffer(v11, &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow], &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow + (Width >> 1)], &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow + BytesPerRow * (v22 >> 1)], &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow + BytesPerRow * (v22 >> 1) + (Width >> 1)], v18, v17, BytesPerRow, Width, v20);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v5;
}

+ (BOOL)joinCompandedWarholBuffer:(__CVBuffer *)a3 intoCompandedBayerBuffer:(__CVBuffer *)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v8 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v9 = [v8 joinCompandedWarholBuffer:a3 intoCompandedBayerBuffer:a4];

    if ((v9 & 1) == 0)
    {
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      if (CVPixelBufferIsPlanar(a4))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a4);
      }

      v11 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a3);
      }

      v13 = BaseAddress;
      if (CVPixelBufferIsPlanar(a3))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(a3);
      }

      v15 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
      }

      v17 = BytesPerRowOfPlane;
      if (CVPixelBufferIsPlanar(a3))
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
      }

      else
      {
        WidthOfPlane = CVPixelBufferGetWidth(a3);
      }

      v19 = WidthOfPlane;
      v20 = v17 - WidthOfPlane;
      if (CVPixelBufferIsPlanar(a4))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      }

      join_companded_bayer_buffer(v13, (v13 + (v19 >> 1)), (v13 + v17 * (v15 >> 1)), (v13 + v17 * (v15 >> 1) + (v19 >> 1)), v11, v15 >> 1, v19 >> 1, BytesPerRow, v20, 1);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v5;
}

+ (BOOL)verticallySplitPixelBuffer:(__CVBuffer *)a3 intoTopPixelBuffer:(__CVBuffer *)a4 bottomPixelBuffer:(__CVBuffer *)a5
{
  v5 = 0;
  if (a3 && a4 && a5)
  {
    Height = CVPixelBufferGetHeight(a3);
    v10 = CVPixelBufferGetHeight(a4);
    if (Height == CVPixelBufferGetHeight(a5) + v10)
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      if (BytesPerRow == CVPixelBufferGetBytesPerRow(a4))
      {
        v12 = CVPixelBufferGetBytesPerRow(a3);
        if (v12 == CVPixelBufferGetBytesPerRow(a5))
        {
          v5 = 1;
          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a4, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
          v14 = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
          v15 = CVPixelBufferGetBytesPerRow(a4);
          v16 = CVPixelBufferGetHeight(a4) * v15;
          memcpy(v14, BaseAddressOfPlane, v16);
          CVPixelBufferUnlockBaseAddress(a4, 0);
          CVPixelBufferLockBaseAddress(a5, 0);
          v17 = CVPixelBufferGetBaseAddressOfPlane(a5, 0);
          v18 = CVPixelBufferGetBytesPerRow(a5);
          v19 = CVPixelBufferGetHeight(a5);
          memcpy(v17, &BaseAddressOfPlane[v16], v19 * v18);
          CVPixelBufferUnlockBaseAddress(a3, 1uLL);
          CVPixelBufferUnlockBaseAddress(a5, 0);
          return v5;
        }
      }

      if (+[MIOLog debugEnabled])
      {
        v20 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v24 = 0;
          v21 = "Inconsistent bytes per row.";
          v22 = &v24;
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    else if (+[MIOLog debugEnabled])
    {
      v20 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v21 = "Inconsistent height.";
        v22 = &v25;
LABEL_14:
        _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_DEBUG, v21, v22, 2u);
      }

LABEL_15:
    }

    return 0;
  }

  return v5;
}

+ (BOOL)concatPixelBuffer:(__CVBuffer *)a3 withPixelBuffer:(__CVBuffer *)a4 targetPixelBuffer:(__CVBuffer *)a5
{
  v5 = 0;
  if (a3 && a4 && a5)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v11 = CVPixelBufferGetHeight(a4);
    if (Width == CVPixelBufferGetWidth(a5) && Width == CVPixelBufferGetWidth(a4))
    {
      if (v11 + Height == CVPixelBufferGetHeight(a5))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
        v13 = CVPixelBufferGetBytesPerRow(a4);
        v14 = CVPixelBufferGetBytesPerRow(a5);
        if (v14 == BytesPerRow && v14 == v13)
        {
          v5 = 1;
          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a5, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
          v16 = CVPixelBufferGetBaseAddressOfPlane(a5, 0);
          v17 = CVPixelBufferGetBytesPerRow(a3);
          v18 = CVPixelBufferGetHeight(a3) * v17;
          memcpy(v16, BaseAddressOfPlane, v18);
          CVPixelBufferUnlockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a4, 1uLL);
          v19 = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
          v20 = CVPixelBufferGetBytesPerRow(a4);
          v21 = CVPixelBufferGetHeight(a4);
          memcpy(&v16[v18], v19, v21 * v20);
          CVPixelBufferUnlockBaseAddress(a4, 1uLL);
          CVPixelBufferUnlockBaseAddress(a5, 0);
          return v5;
        }

        if (+[MIOLog debugEnabled])
        {
          v22 = +[MIOLog defaultLog];
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_14;
          }

          v26 = 0;
          v23 = "Inconsistent bytes per row.";
          v24 = &v26;
          goto LABEL_13;
        }

        return 0;
      }

      if (!+[MIOLog debugEnabled])
      {
        return 0;
      }

      v22 = +[MIOLog defaultLog];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v27 = 0;
      v23 = "Inconsistent height.";
      v24 = &v27;
    }

    else
    {
      if (!+[MIOLog debugEnabled])
      {
        return 0;
      }

      v22 = +[MIOLog defaultLog];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:

        return 0;
      }

      *buf = 0;
      v23 = "Inconsistent width.";
      v24 = buf;
    }

LABEL_13:
    _os_log_impl(&dword_257883000, v22, OS_LOG_TYPE_DEBUG, v23, v24, 2u);
    goto LABEL_14;
  }

  return v5;
}

+ (unint64_t)extendedPixelsPerRowOfPixelBuffer:(__CVBuffer *)a3
{
  extraColumnsOnRight = 0;
  CVPixelBufferGetExtendedPixels(a3, 0, &extraColumnsOnRight, 0, 0);
  return extraColumnsOnRight;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 extendedPixelsPerRow:(unint64_t)a6 minBufferCount:(unint64_t)a7
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:a3 height:a4 extendedPixelsPerRow:a6 pixelFormat:*&a5 bytesPerRowAlignment:1 planeAlignment:1];
  v12 = 0;
  v13 = *MEMORY[0x277CC4E50];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a7];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v10, v8, &v12);

  CFRelease(v8);
  return v12;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 bytesPerRow:(unint64_t)a6 minBufferCount:(unint64_t)a7
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:a3 height:a4 pixelFormat:*&a5 bytesPerRow:a6];
  v12 = 0;
  v13 = *MEMORY[0x277CC4E50];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a7];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v10, v8, &v12);

  CFRelease(v8);
  return v12;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 bytesPerRows:(id)a6 minBufferCount:(unint64_t)a7
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:a3 height:a4 pixelFormat:*&a5 bytesPerRows:a6];
  v12 = 0;
  v13 = *MEMORY[0x277CC4E50];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a7];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v10, v8, &v12);

  CFRelease(v8);
  return v12;
}

+ (__CVBuffer)pixelBufferFromPool:(__CVPixelBufferPool *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v3 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a3, &pixelBufferOut);
  result = pixelBufferOut;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = pixelBufferOut == 0;
  }

  if (v5)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_ERROR, "Error creating pixel buffer from pool (%d).", buf, 8u);
    }

    return 0;
  }

  return result;
}

+ (BOOL)transferq8q2PixelBuffer:(__CVBuffer *)a3 toL010PixelBuffer:(__CVBuffer *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (CVPixelBufferLockBaseAddress(a3, 1uLL))
    {
      return 0;
    }

    else
    {
      v7 = CVPixelBufferLockBaseAddress(a4, 0);
      v4 = v7 == 0;
      if (!v7)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a3);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
        v10 = CVPixelBufferGetBaseAddress(a4);
        v11 = CVPixelBufferGetBytesPerRow(a4);
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        conv_q8q2_to_L010(BaseAddress, BytesPerRow, v10, v11, Width, Height);
        CVPixelBufferUnlockBaseAddress(a4, 0);
      }

      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v4;
}

+ (BOOL)transferL010PixelBuffer:(__CVBuffer *)a3 toq8q2PixelBuffer:(__CVBuffer *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (CVPixelBufferLockBaseAddress(a3, 1uLL))
    {
      return 0;
    }

    else
    {
      v7 = CVPixelBufferLockBaseAddress(a4, 0);
      v4 = v7 == 0;
      if (!v7)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a3);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
        v10 = CVPixelBufferGetBaseAddress(a4);
        v11 = CVPixelBufferGetBytesPerRow(a4);
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        conv_L010_to_q8q2(BaseAddress, BytesPerRow, v10, v11, Width, Height);
        CVPixelBufferUnlockBaseAddress(a4, 0);
      }

      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }
  }

  return v4;
}

+ (BOOL)copyPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 bytesPerPixel:(double)a5
{
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  v9 = PlaneCount;
  if (PlaneCount <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = PlaneCount;
  }

  v11 = CVPixelBufferGetPlaneCount(a4);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v9 <= v12)
  {
    v16 = 0;
    while (1)
    {
      v17 = (CVPixelBufferGetWidthOfPlane(a3, v16) * a5);
      if (CVPixelBufferGetBytesPerRowOfPlane(a4, v16) < v17)
      {
        break;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, v16);
      v19 = CVPixelBufferGetBaseAddressOfPlane(a4, v16);
      if (CVPixelBufferGetHeightOfPlane(a3, v16))
      {
        v20 = 0;
        do
        {
          v21 = &BaseAddressOfPlane[CVPixelBufferGetBytesPerRowOfPlane(a3, v16) * v20];
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, v16);
          memcpy(&v19[BytesPerRowOfPlane * v20++], v21, v17);
        }

        while (v20 < CVPixelBufferGetHeightOfPlane(a3, v16));
      }

      if (++v16 == v10)
      {
        CVPixelBufferUnlockBaseAddress(a4, 0);
        v23 = 1;
        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
        return v23;
      }
    }

    if (+[MIOLog debugEnabled])
    {
      v13 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v14 = "Cannot copyPixelBuffer, not matching bytes per row";
        v15 = &v25;
        goto LABEL_21;
      }

LABEL_22:
    }
  }

  else if (+[MIOLog debugEnabled])
  {
    v13 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v26 = 0;
      v14 = "Cannot copyPixelBuffer, not matching plane count";
      v15 = &v26;
LABEL_21:
      _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_DEBUG, v14, v15, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return 0;
}

+ (BOOL)copyPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (!v4)
  {
    v30 = result;
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 0);
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    if (PlaneCount <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = PlaneCount;
    }

    v10 = CVPixelBufferGetPlaneCount(a4);
    v11 = 0;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    if (v9 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    do
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, v11);
      v16 = CVPixelBufferGetPixelFormatType(a4);
      v17 = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(v16, v11);
      v18 = (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidthOfPlane(a3, v11));
      v19 = v17 * CVPixelBufferGetWidthOfPlane(a4, v11);
      if (v18 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, v11);
      v22 = CVPixelBufferGetHeightOfPlane(a4, v11);
      if (HeightOfPlane >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = HeightOfPlane;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, v11);
      v25 = CVPixelBufferGetBaseAddressOfPlane(a4, v11);
      if (v23)
      {
        v26 = v25;
        for (i = 0; i != v23; ++i)
        {
          v28 = &BaseAddressOfPlane[CVPixelBufferGetBytesPerRowOfPlane(a3, v11) * i];
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, v11);
          memcpy(&v26[BytesPerRowOfPlane * i], v28, v20);
        }
      }

      ++v11;
    }

    while (v11 != v13);
    CVPixelBufferUnlockBaseAddress(a4, 0);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    return v30;
  }

  return result;
}

+ (BOOL)copyData:(id)a3 toNonPlanarPixelBuffer:(__CVBuffer *)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    if (CVPixelBufferIsPlanar(a4))
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_class() copyData:v5 toPlanarPixelBuffer:a4 toPlane:0];
    }
  }

  return v6;
}

+ (BOOL)copyData:(id)a3 toPlanarPixelBuffer:(__CVBuffer *)a4 toPlane:(unint64_t)a5
{
  v7 = a3;
  if (v7)
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, a5);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a4, a5);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, a5);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
    BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, a5);
    v15 = [v7 bytes];
    CVPixelBufferLockBaseAddress(a4, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, a5);
    if (HeightOfPlane)
    {
      v17 = BaseAddressOfPlane;
      v18 = (BytesPerPixelOfPlaneForFormat * WidthOfPlane);
      do
      {
        memcpy(v17, v15, v18);
        v15 += v18;
        v17 += BytesPerRowOfPlane;
        --HeightOfPlane;
      }

      while (HeightOfPlane);
    }

    CVPixelBufferUnlockBaseAddress(a4, 0);
  }

  return v9;
}

+ (id)copyNonPlanarPixelBufferData:(__CVBuffer *)a3
{
  if (!a3 || CVPixelBufferIsPlanar(a3))
  {
    return 0;
  }

  v5 = objc_opt_class();

  return [v5 copyPixelBufferData:a3 ofPlane:0];
}

+ (id)copyPixelBufferData:(__CVBuffer *)a3 ofPlane:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  if (!CVPixelBufferIsPlanar(a3))
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (CVPixelBufferGetPlaneCount(a3) <= a4)
  {
    return 0;
  }

LABEL_4:
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, a4);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, a4);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, a4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v10 = (MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, a4) * WidthOfPlane);
  v11 = [MEMORY[0x277CBEB28] dataWithLength:HeightOfPlane * v10];
  v12 = [v11 mutableBytes];
  CVPixelBufferLockBaseAddress(a3, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, a4);
  if (HeightOfPlane)
  {
    v14 = BaseAddressOfPlane;
    do
    {
      memcpy(v12, v14, v10);
      v12 += v10;
      v14 += BytesPerRowOfPlane;
      --HeightOfPlane;
    }

    while (HeightOfPlane);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  return v11;
}

+ (__CVBuffer)readFrameFromFile:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 pixelFormat:(unsigned int)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  pixelBuffer = 0;
  v31 = *MEMORY[0x277CC4DE8];
  v32[0] = MEMORY[0x277CBEC10];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], a4, a5, a6, v10, &pixelBuffer);
  if (pixelBuffer)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    if (PlaneCount <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = PlaneCount;
    }

    v13 = v9;
    v14 = fopen([v9 UTF8String], "rb");
    if (v14)
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      for (i = 0; i != v12; ++i)
      {
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
        }

        else
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(pixelBuffer);
        }

        v17 = BaseAddressOfPlane;
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
        }

        else
        {
          HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
        }

        v19 = HeightOfPlane;
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
        }

        else
        {
          WidthOfPlane = CVPixelBufferGetWidth(pixelBuffer);
        }

        v21 = WidthOfPlane;
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
        }

        v23 = BytesPerRowOfPlane;
        PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
        BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, i);
        if (v19)
        {
          v26 = (BytesPerPixelOfPlaneForFormat * v21);
          v27 = 1;
          do
          {
            if (!fread(v17, 1uLL, v26, v14))
            {
              break;
            }

            v17 += v23;
          }

          while (v27++ < v19);
        }
      }

      fclose(v14);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      v14 = pixelBuffer;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (__CVBuffer)combineLeftBuffer:(__CVBuffer *)a3 rightBuffer:(__CVBuffer *)a4
{
  v5 = a3;
  v36[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a3);
  v33 = a4;
  v7 = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(v5);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
  PlaneCount = CVPixelBufferGetPlaneCount(v5);
  if (PlaneCount <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = PlaneCount;
  }

  v32 = v11;
  pixelBufferOut = 0;
  v35 = *MEMORY[0x277CC4DE8];
  v36[0] = MEMORY[0x277CBEC10];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7 + Width, Height, PixelFormatType, v12, &pixelBufferOut);
  v13 = v33;
  if (pixelBufferOut)
  {
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    CVPixelBufferLockBaseAddress(v33, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    v30 = v12;
    pixelBuffer = v5;
    for (i = 0; i != v32; ++i)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v5, i);
      v16 = CVPixelBufferGetBaseAddressOfPlane(v13, i);
      v17 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, i);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v5, i);
      v19 = CVPixelBufferGetBytesPerRowOfPlane(v13, i);
      v20 = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, i);
      v21 = CVPixelBufferGetPixelFormatType(v5);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(v21, i);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, i);
      v24 = CVPixelBufferGetWidthOfPlane(v13, i);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, i);
      if (HeightOfPlane)
      {
        v26 = (BytesPerPixelOfPlaneForFormat * WidthOfPlane);
        v27 = (BytesPerPixelOfPlaneForFormat * v24);
        do
        {
          memcpy(v17, BaseAddressOfPlane, v26);
          memcpy(&v17[v26], v16, v27);
          v17 += v20;
          v16 += v19;
          BaseAddressOfPlane += BytesPerRowOfPlane;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      v13 = v33;
      v5 = pixelBuffer;
    }

    v12 = v30;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(v33, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v28 = pixelBufferOut;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (BOOL)writeBuffer:(__CVBuffer *)a3 toFile:(id)a4
{
  v5 = a4;
  v6 = fopen([v5 UTF8String], "wb");
  if (v6)
  {
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    v8 = 0;
    if (PlaneCount <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = PlaneCount;
    }

    while (1)
    {
      v10 = (CVPixelBufferIsPlanar(a3) ? CVPixelBufferGetBaseAddressOfPlane(a3, v8) : CVPixelBufferGetBaseAddress(a3));
      v11 = v10;
      v12 = CVPixelBufferIsPlanar(a3) ? CVPixelBufferGetHeightOfPlane(a3, v8) : CVPixelBufferGetHeight(a3);
      v13 = v12;
      v14 = CVPixelBufferIsPlanar(a3) ? CVPixelBufferGetWidthOfPlane(a3, v8) : CVPixelBufferGetWidth(a3);
      v15 = v14;
      v16 = CVPixelBufferIsPlanar(a3) ? CVPixelBufferGetBytesPerRowOfPlane(a3, v8) : CVPixelBufferGetBytesPerRow(a3);
      v17 = v16;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, v8);
      if (v13)
      {
        break;
      }

LABEL_21:
      if (++v8 == v9)
      {
        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
        fclose(v6);
        v21 = 1;
        goto LABEL_25;
      }
    }

    v20 = (BytesPerPixelOfPlaneForFormat * v15);
    while (fwrite(v11, v20, 1uLL, v6) == 1)
    {
      v11 += v17;
      if (!--v13)
      {
        goto LABEL_21;
      }
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }

  v21 = 0;
LABEL_25:

  return v21;
}

+ (id)histogramOf8BitBuffer:(__CVBuffer *)a3
{
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  if (PlaneCount <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = PlaneCount;
  }

  v20 = v5;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  CVPixelBufferLockBaseAddress(a3, 0);
  for (i = 0; i != v20; ++i)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
    v8 = 256;
    do
    {
      [v7 addObject:&unk_2868E3828];
      --v8;
    }

    while (v8);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, i);
    for (j = 0; j < CVPixelBufferGetHeightOfPlane(a3, i); ++j)
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, i);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, i);
      v13 = 0;
      v14 = &BaseAddressOfPlane[BytesPerRowOfPlane * j];
      while (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidthOfPlane(a3, i) > v13)
      {
        v15 = v14[v13];
        v16 = MEMORY[0x277CCABB0];
        v17 = [v7 objectAtIndex:v15];
        v18 = [v16 numberWithInt:{objc_msgSend(v17, "intValue") + 1}];
        [v7 replaceObjectAtIndex:v15 withObject:v18];

        ++v13;
      }
    }

    [v21 addObject:v7];
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);

  return v21;
}

+ (id)rangesOf8BitBuffer:(__CVBuffer *)a3
{
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  if (PlaneCount <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = PlaneCount;
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  CVPixelBufferLockBaseAddress(a3, 0);
  for (i = 0; i != v5; ++i)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, i);
    v9 = 0;
    v10 = 0;
    v11 = -1;
    while (v10 < CVPixelBufferGetHeightOfPlane(a3, i))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, i);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, i);
      v15 = 0;
      v16 = &BaseAddressOfPlane[BytesPerRowOfPlane * v10];
      while (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidthOfPlane(a3, i) > v15)
      {
        v17 = v16[v15];
        if (v17 < v11)
        {
          v11 = v16[v15];
        }

        if (v17 > v9)
        {
          v9 = v16[v15];
        }

        ++v15;
      }

      ++v10;
    }

    v18 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v9}];
    [v6 addObject:v18];
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);

  return v6;
}

+ (__CVBuffer)create4444AYpCbCr16PixelBufferFillAlphaWithData:(__CFData *)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  v19 = *MEMORY[0x277CC4DE8];
  v20[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], a4, a5, 0x79343136u, v8, &pixelBuffer);
  BytePtr = CFDataGetBytePtr(a3);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = CVPixelBufferGetBaseAddress(pixelBuffer) + 4;
  while (v12 < CVPixelBufferGetHeight(pixelBuffer))
  {
    v14 = 0;
    v15 = &v13[v10 * (CVPixelBufferGetBytesPerRow(pixelBuffer) >> 1)];
    while (v14 < 4 * CVPixelBufferGetWidth(pixelBuffer))
    {
      *(v15 - 2) = *&BytePtr[2 * v11];
      *(v15 - 2) = -2147450880;
      *(v15 + 1) = 0x8000;
      ++v11;
      v14 += 4;
      v15 += 8;
    }

    ++v12;
    v10 += 2;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v16 = pixelBuffer;

  return v16;
}

+ (BOOL)copyMonochromeBuffer:(__CVBuffer *)a3 toAlphaChannelOfBuffer:(__CVBuffer *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (CVPixelBufferGetPixelFormatType(a4) == 2033463606)
    {
      v4 = 1;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      v10 = CVPixelBufferGetBytesPerRow(a4);
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      v12 = CVPixelBufferGetBaseAddress(a4);
      copy_monochrome_to_alpha_channel(BaseAddress, v12, Width, Height, BytesPerRow, v10);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (BOOL)copyuint16Data:(unsigned __int16 *)a3 toAlphaChannelOfBuffer:(__CVBuffer *)a4
{
  result = 0;
  if (a3 && a4)
  {
    if (CVPixelBufferGetPixelFormatType(a4) == 2033463606)
    {
      CVPixelBufferLockBaseAddress(a4, 0);
      Width = CVPixelBufferGetWidth(a4);
      Height = CVPixelBufferGetHeight(a4);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      BaseAddress = CVPixelBufferGetBaseAddress(a4);
      copy_monochrome_to_alpha_channel(a3, BaseAddress, Width, Height, 2 * Width, BytesPerRow);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)a3 touint16Data:(unsigned __int16 *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (CVPixelBufferGetPixelFormatType(a3) == 2033463606)
    {
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      v4 = 1;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      copy_alpha_channel_to_monochrome(BaseAddress, a4, Width, Height, 2 * Width, BytesPerRow);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)a3 toMonochromeBuffer:(__CVBuffer *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (CVPixelBufferGetPixelFormatType(a3) == 2033463606)
    {
      Width = CVPixelBufferGetWidth(a4);
      Height = CVPixelBufferGetHeight(a4);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
      v10 = CVPixelBufferGetBytesPerRow(a3);
      v4 = 1;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      v12 = CVPixelBufferGetBaseAddress(a4);
      copy_alpha_channel_to_monochrome(BaseAddress, v12, Width, Height, BytesPerRow, v10);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (int64_t)numberOfPlanesForPixelFormatType:(unsigned int)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  v8 = *MEMORY[0x277CC4DE8];
  v9[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x280uLL, 0x1E0uLL, a3, v4, &pixelBuffer);
  if (pixelBuffer)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    CVPixelBufferRelease(pixelBuffer);
  }

  else
  {
    PlaneCount = -1;
  }

  return PlaneCount;
}

+ (unint64_t)pixelBufferSizeWithPadding:(__CVBuffer *)a3
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v15 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a3, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v15);
  if (CVPixelBufferIsPlanar(a3))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    if (PlaneCount)
    {
      v5 = PlaneCount;
      v6 = 0;
      for (i = 0; i != v5; ++i)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, i);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, i);
        v10 = (BytesPerRowOfPlane / (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight));
        v6 += CVPixelBufferGetHeightOfPlane(a3, i) * WidthOfPlane * v10;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    Width = CVPixelBufferGetWidth(a3);
    v13 = (BytesPerRow / (extraColumnsOnLeft + Width + extraColumnsOnRight));
    return CVPixelBufferGetHeight(a3) * Width * v13;
  }

  return v6;
}

+ (void)transferAttachmentForKey:(__CFString *)a3 fromBuffer:(__CVBuffer *)a4 toBuffer:(__CVBuffer *)a5
{
  v7 = CVBufferCopyAttachment(a4, a3, 0);
  if (v7)
  {
    v8 = v7;
    CVBufferSetAttachment(a5, a3, v7, kCVAttachmentMode_ShouldPropagate);

    CFRelease(v8);
  }

  else
  {

    CVBufferRemoveAttachment(a5, a3);
  }
}

@end