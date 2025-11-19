@interface AVCaptureDevice
@end

@implementation AVCaptureDevice

uint64_t __52__AVCaptureDevice_JFX__jfx_highestQualityColorSpace__block_invoke()
{
  jfx_highestQualityColorSpace_s_colorSpaceLookup = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void __52__AVCaptureDevice_JFX__jfx_highestQualityColorSpace__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 supportedColorSpaces];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__AVCaptureDevice_JFX__jfx_highestQualityColorSpace__block_invoke_3;
  v4[3] = &unk_278D7BD78;
  v4[4] = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

uint64_t __52__AVCaptureDevice_JFX__jfx_highestQualityColorSpace__block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  v4 = *(*(a1 + 32) + 8);
  if (result > *(v4 + 24))
  {
    *(v4 + 24) = result;
  }

  return result;
}

@end