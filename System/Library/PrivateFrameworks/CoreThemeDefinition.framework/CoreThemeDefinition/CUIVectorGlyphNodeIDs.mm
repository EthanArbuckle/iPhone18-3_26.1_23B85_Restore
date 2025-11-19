@interface CUIVectorGlyphNodeIDs
@end

@implementation CUIVectorGlyphNodeIDs

id ____CUIVectorGlyphNodeIDs_block_invoke()
{
  v2[27] = *MEMORY[0x277D85DE8];
  v2[0] = @"Ultralight-L";
  v2[1] = @"Ultralight-M";
  v2[2] = @"Ultralight-S";
  v2[3] = @"Thin-L";
  v2[4] = @"Thin-M";
  v2[5] = @"Thin-S";
  v2[6] = @"Light-L";
  v2[7] = @"Light-M";
  v2[8] = @"Light-S";
  v2[9] = @"Regular-L";
  v2[10] = @"Regular-M";
  v2[11] = @"Regular-S";
  v2[12] = @"Medium-L";
  v2[13] = @"Medium-M";
  v2[14] = @"Medium-S";
  v2[15] = @"Semibold-L";
  v2[16] = @"Semibold-M";
  v2[17] = @"Semibold-S";
  v2[18] = @"Bold-L";
  v2[19] = @"Bold-M";
  v2[20] = @"Bold-S";
  v2[21] = @"Heavy-L";
  v2[22] = @"Heavy-M";
  v2[23] = @"Heavy-S";
  v2[24] = @"Black-L";
  v2[25] = @"Black-M";
  v2[26] = @"Black-S";
  result = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:27];
  __CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

@end