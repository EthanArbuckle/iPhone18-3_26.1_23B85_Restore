@interface JFXMatting
+ (BOOL)canMatteWithANE;
+ (BOOL)defaultMatteGeneratorPrefersDepth;
+ (BOOL)isCVASegMattingSPIWorking;
+ (CGSize)mattingDepthInputSize;
+ (Class)defaultMatteGeneratorClass;
+ (id)defaultMatteGenerator:(id)a3;
+ (id)depthDataForCVPixelBuffer:(__CVBuffer *)a3;
+ (void)postNotification:(unint64_t)a3;
- (BOOL)isValidForCameraFrameSet:(id)a3;
- (id)initForFrameSet:(id)a3;
@end

@implementation JFXMatting

+ (void)postNotification:(unint64_t)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__JFXMatting_postNotification___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __31__JFXMatting_postNotification___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"kMattingStatusWarning";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"kMattingStatusWarning" object:0 userInfo:v2];
}

+ (id)depthDataForCVPixelBuffer:(__CVBuffer *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = 0;
    goto LABEL_14;
  }

  Height = CVPixelBufferGetHeight(a3);
  Width = CVPixelBufferGetWidth(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = PixelFormatType;
  if (PixelFormatType == 1717855600 || PixelFormatType == 1751410032)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD3520]];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD3370]];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:BytesPerRow];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD2DF8]];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD3440]];

    CVPixelBufferLockBaseAddress(a3, 1uLL);
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:CVPixelBufferGetBaseAddress(a3) length:BytesPerRow * Height];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277CD2C60]];

    [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2C68]];
    v20 = 0;
    v16 = [MEMORY[0x277CE5B70] depthDataFromDictionaryRepresentation:v14 error:&v20];
    v17 = v20;
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    if (!v17)
    {

      goto LABEL_13;
    }

    v18 = JFXLog_matting();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v22 = v17;
      _os_log_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEFAULT, "Error: failed to create depthdata. %@", buf, 0xCu);
    }

    v9 = v16;
  }

  else
  {
    v9 = JFXLog_matting();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v22 = BYTE3(v8);
      *&v22[4] = 1024;
      *&v22[6] = WORD1(v8);
      v23 = 1024;
      v24 = v8 >> 8;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "Error: unexpected depth format: %c%c%c%c", buf, 0x1Au);
    }
  }

  v16 = 0;
LABEL_13:

LABEL_14:

  return v16;
}

+ (BOOL)isCVASegMattingSPIWorking
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__JFXMatting_isCVASegMattingSPIWorking__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isCVASegMattingSPIWorking_onceToken != -1)
  {
    dispatch_once(&isCVASegMattingSPIWorking_onceToken, block);
  }

  return isCVASegMattingSPIWorking_working;
}

void __39__JFXMatting_isCVASegMattingSPIWorking__block_invoke()
{
  +[JFXRGBDMatte mattingDepthInputSize];
  v1 = v0;
  v3 = v2;
  pixelBufferOut = 0;
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  v12 = 0;
  memset(&v10, 0, sizeof(v10));
  CMTimeMake(&v10.duration, 1, 30);
  v10.presentationTimeStamp = **&MEMORY[0x277CC08F0];
  v10.decodeTimeStamp = **&MEMORY[0x277CC0898];
  v4 = *MEMORY[0x277CBECE8];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x500uLL, 0x2D0uLL, 0x34323076u, 0, &pixelBufferOut);
  CMVideoFormatDescriptionCreateForImageBuffer(v4, pixelBufferOut, &formatDescriptionOut);
  CMSampleBufferCreateReadyWithImageBuffer(v4, pixelBufferOut, formatDescriptionOut, &v10, &sampleBufferOut);
  CVPixelBufferCreate(v4, v1, v3, 0x66646570u, 0, &v12);
  v5 = [objc_opt_class() depthDataForCVPixelBuffer:v12];
  CVPixelBufferRelease(v12);
  CVPixelBufferRelease(pixelBufferOut);
  v6 = objc_alloc(MEMORY[0x277D415D8]);
  v7 = [v6 initWithSampleBuffer:sampleBufferOut];
  v8 = [objc_alloc(MEMORY[0x277D41608]) initWithColorBuffer:v7 depthData:v5 metadata:0];
  if (v8)
  {
    v9 = [[JFXCVASegMatting alloc] initForFrameSet:v8];
    isCVASegMattingSPIWorking_working = [v9 ready];
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

+ (Class)defaultMatteGeneratorClass
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"JFXMattingClassAutoSelectionPref"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 integerForKey:@"JFXMattingClassAutoSelectionPref"];
  }

  v5 = objc_opt_class();

  return v5;
}

+ (CGSize)mattingDepthInputSize
{
  v2 = +[JFXMatting defaultMatteGeneratorClass];

  [(objc_class *)v2 mattingDepthInputSize];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (BOOL)canMatteWithANE
{
  if (canMatteWithANE_onceToken != -1)
  {
    +[JFXMatting canMatteWithANE];
  }

  return canMatteWithANE_hasAppleNeuralEngine;
}

uint64_t __29__JFXMatting_canMatteWithANE__block_invoke()
{
  v6 = 0;
  v5 = 4;
  result = sysctlbyname("hw.cpufamily", &v6, &v5, 0, 0);
  v1 = 0;
  if (v6 <= 747742333)
  {
    v2 = v6 == -1829029944;
    v3 = -400654602;
  }

  else
  {
    v2 = v6 == 747742334 || v6 == 933271106;
    v3 = 1741614739;
  }

  if (!v2 && v6 != v3)
  {
    v1 = 1;
  }

  canMatteWithANE_hasAppleNeuralEngine = v1;
  return result;
}

+ (BOOL)defaultMatteGeneratorPrefersDepth
{
  v2 = [a1 defaultMatteGeneratorClass];

  return [v2 _defaultMatteGeneratorPrefersDepth];
}

+ (id)defaultMatteGenerator:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 "defaultMatteGeneratorClass"))];

  return v5;
}

- (id)initForFrameSet:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = JFXMatting;
  v5 = [(JFXMatting *)&v11 init];
  if (v5)
  {
    v6 = [v4 colorImageBuffer];
    [v6 size];
    v5->_colorBufferSize.width = v7;
    v5->_colorBufferSize.height = v8;

    v9 = [v4 metadataObjectForKey:*MEMORY[0x277D41A00]];
    v5->_cameraLocation = [v9 cameraPosition];
  }

  return v5;
}

- (BOOL)isValidForCameraFrameSet:(id)a3
{
  v4 = a3;
  [objc_opt_class() defaultMatteGeneratorClass];
  if (objc_opt_isKindOfClass())
  {
    cameraLocation = self->_cameraLocation;
    v6 = [v4 metadataObjectForKey:*MEMORY[0x277D41A00]];
    if (cameraLocation == [v6 cameraPosition])
    {
      v7 = [v4 colorImageBuffer];
      [v7 size];
      v10 = self->_colorBufferSize.height == v9 && self->_colorBufferSize.width == v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end