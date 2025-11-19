@interface NTKUpNextElementDataSource
- (id)supportedSections;
@end

@implementation NTKUpNextElementDataSource

- (id)supportedSections
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D44530];
  v6[0] = *MEMORY[0x277D44500];
  v6[1] = v2;
  v3 = *MEMORY[0x277D44528];
  v6[2] = *MEMORY[0x277D444C0];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

@end