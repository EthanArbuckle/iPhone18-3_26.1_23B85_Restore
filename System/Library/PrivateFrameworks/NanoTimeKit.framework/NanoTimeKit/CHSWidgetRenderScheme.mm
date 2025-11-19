@interface CHSWidgetRenderScheme
@end

@implementation CHSWidgetRenderScheme

void __66__CHSWidgetRenderScheme_NTKAdditions__ntk_watchFacesRenderSchemes__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:1];
  v1 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:2 backgroundViewPolicy:1];
  v4[0] = v0;
  v4[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v3 = ntk_watchFacesRenderSchemes_schemes;
  ntk_watchFacesRenderSchemes_schemes = v2;
}

@end