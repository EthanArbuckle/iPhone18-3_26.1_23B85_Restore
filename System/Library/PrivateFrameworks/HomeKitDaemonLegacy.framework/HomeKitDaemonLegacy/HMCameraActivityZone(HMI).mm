@interface HMCameraActivityZone(HMI)
- (id)createHMIActivityZoneWithIsInclusion:()HMI;
@end

@implementation HMCameraActivityZone(HMI)

- (id)createHMIActivityZoneWithIsInclusion:()HMI
{
  v4 = [a1 points];
  v5 = [v4 na_map:&__block_literal_global_184436];

  v6 = [objc_alloc(MEMORY[0x277D14D70]) initWithPoints:v5 isInclusion:a3];

  return v6;
}

@end