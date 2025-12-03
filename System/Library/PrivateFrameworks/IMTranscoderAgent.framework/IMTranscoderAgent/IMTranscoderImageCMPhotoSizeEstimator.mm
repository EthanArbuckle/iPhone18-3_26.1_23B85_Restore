@interface IMTranscoderImageCMPhotoSizeEstimator
- (IMTranscoderImageCMPhotoSizeEstimator)initWithURL:(id)l uti:(id)uti imageSource:(CGImageSource *)source;
- (unint64_t)estimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality;
- (unint64_t)optimizedEstimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality;
- (void)dealloc;
@end

@implementation IMTranscoderImageCMPhotoSizeEstimator

- (IMTranscoderImageCMPhotoSizeEstimator)initWithURL:(id)l uti:(id)uti imageSource:(CGImageSource *)source
{
  v8.receiver = self;
  v8.super_class = IMTranscoderImageCMPhotoSizeEstimator;
  v5 = [(IMTranscoderImageSizeEstimator *)&v8 initWithUTI:uti imageSource:source];
  if (CMPhotoDecompressionSessionCreate() || (Container = CMPhotoDecompressionSessionCreateContainer(), CFRelease(0), Container))
  {

    return 0;
  }

  else
  {
    v5->_container = 0;
  }

  return v5;
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
  }

  v4.receiver = self;
  v4.super_class = IMTranscoderImageCMPhotoSizeEstimator;
  [(IMTranscoderImageCMPhotoSizeEstimator *)&v4 dealloc];
}

- (unint64_t)optimizedEstimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality
{
  v41[4] = *MEMORY[0x277D85DE8];
  if (UTTypeConformsTo(i, *MEMORY[0x277CC20C8]))
  {
    v13 = 1785750887;
  }

  else
  {
    v13 = 1752589105;
  }

  v40[0] = *MEMORY[0x277CF6DA0];
  v41[0] = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, dimension, v9, v10, v11, v12, 0);
  v40[1] = *MEMORY[0x277CF6CF0];
  v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, v13, v15, v16, v17, v18);
  v20 = *MEMORY[0x277CF6D38];
  v41[1] = v19;
  v41[2] = &unk_28669CC30;
  v21 = *MEMORY[0x277CF6D30];
  v40[2] = v20;
  v40[3] = v21;
  v38 = *MEMORY[0x277CF6DD8];
  v39 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v24, v25, v26, v27, quality);
  v41[3] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v39, &v38, 1, v29, v30);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v41, v40, 4, v32, v33);
  container = self->_container;
  if (CMPhotoDecompressionContainerPredictTranscodedSize())
  {
    result = 0;
  }

  else
  {
    result = v37;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)estimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality
{
  if (!UTTypeConformsTo(i, *MEMORY[0x277CC20C8]) && !UTTypeConformsTo(i, @"public.heif-standard") || (result = objc_msgSend_optimizedEstimatedSizeForOutputUTI_maximumDimension_quality_(self, v9, i, dimension, v10, v11, v12, quality)) == 0)
  {
    v14.receiver = self;
    v14.super_class = IMTranscoderImageCMPhotoSizeEstimator;
    return [(IMTranscoderImageSizeEstimator *)&v14 estimatedSizeForOutputUTI:i maximumDimension:dimension quality:quality];
  }

  return result;
}

@end