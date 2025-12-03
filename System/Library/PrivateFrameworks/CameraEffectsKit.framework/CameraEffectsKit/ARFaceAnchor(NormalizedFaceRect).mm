@interface ARFaceAnchor(NormalizedFaceRect)
- (CGFloat)normalizedFaceRect;
@end

@implementation ARFaceAnchor(NormalizedFaceRect)

- (CGFloat)normalizedFaceRect
{
  v1 = *(MEMORY[0x277CBF3A0] + 16);
  v7.origin = *MEMORY[0x277CBF3A0];
  v7.size = v1;
  trackingData = [self trackingData];
  v3 = trackingData;
  if (trackingData)
  {
    v4 = [trackingData objectForKeyedSubscript:*MEMORY[0x277CECE20]];
    v5 = v4;
    if (v4)
    {
      CGRectMakeWithDictionaryRepresentation(v4, &v7);
    }
  }

  return v7.origin.x;
}

@end