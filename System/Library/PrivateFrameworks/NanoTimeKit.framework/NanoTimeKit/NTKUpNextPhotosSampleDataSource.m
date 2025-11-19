@interface NTKUpNextPhotosSampleDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation NTKUpNextPhotosSampleDataSource

- (id)supportedSections
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D44500];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a4;
  REUISampleRelevanceProviderForSamplePosition();
  objc_claimAutoreleasedReturnValue();
  NTKImageNamed(@"SG_Photo_Sample");
}

@end