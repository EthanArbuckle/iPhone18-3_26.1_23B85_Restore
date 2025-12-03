@interface HMFaceCrop(HFAdditions)
- (id)hf_imageRepresentation;
@end

@implementation HMFaceCrop(HFAdditions)

- (id)hf_imageRepresentation
{
  v1 = MEMORY[0x277D755B8];
  dataRepresentation = [self dataRepresentation];
  v3 = [v1 imageWithData:dataRepresentation];

  return v3;
}

@end