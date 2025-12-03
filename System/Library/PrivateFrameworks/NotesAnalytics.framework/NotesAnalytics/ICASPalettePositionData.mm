@interface ICASPalettePositionData
- (ICASPalettePositionData)initWithPaletteStartPosition:(id)position paletteEndPosition:(id)endPosition;
- (id)toDict;
@end

@implementation ICASPalettePositionData

- (ICASPalettePositionData)initWithPaletteStartPosition:(id)position paletteEndPosition:(id)endPosition
{
  positionCopy = position;
  endPositionCopy = endPosition;
  v12.receiver = self;
  v12.super_class = ICASPalettePositionData;
  v9 = [(ICASPalettePositionData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paletteStartPosition, position);
    objc_storeStrong(&v10->_paletteEndPosition, endPosition);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"paletteStartPosition";
  paletteStartPosition = [(ICASPalettePositionData *)self paletteStartPosition];
  if (paletteStartPosition)
  {
    paletteStartPosition2 = [(ICASPalettePositionData *)self paletteStartPosition];
  }

  else
  {
    paletteStartPosition2 = objc_opt_new();
  }

  v5 = paletteStartPosition2;
  v12[1] = @"paletteEndPosition";
  v13[0] = paletteStartPosition2;
  paletteEndPosition = [(ICASPalettePositionData *)self paletteEndPosition];
  if (paletteEndPosition)
  {
    paletteEndPosition2 = [(ICASPalettePositionData *)self paletteEndPosition];
  }

  else
  {
    paletteEndPosition2 = objc_opt_new();
  }

  v8 = paletteEndPosition2;
  v13[1] = paletteEndPosition2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end