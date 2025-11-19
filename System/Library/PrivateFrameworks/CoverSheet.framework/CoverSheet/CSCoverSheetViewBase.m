@interface CSCoverSheetViewBase
- (NSArray)presentationRegions;
@end

@implementation CSCoverSheetViewBase

- (NSArray)presentationRegions
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(CSCoverSheetViewBase *)self bounds];
  v3 = [CSRegion regionForCoordinateSpace:self withExtent:?];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

@end