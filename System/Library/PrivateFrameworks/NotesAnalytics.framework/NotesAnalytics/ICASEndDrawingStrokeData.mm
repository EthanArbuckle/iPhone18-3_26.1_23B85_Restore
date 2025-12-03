@interface ICASEndDrawingStrokeData
- (ICASEndDrawingStrokeData)initWithEndPencilStrokeCount:(id)count endFingerStrokeCount:(id)strokeCount;
- (id)toDict;
@end

@implementation ICASEndDrawingStrokeData

- (ICASEndDrawingStrokeData)initWithEndPencilStrokeCount:(id)count endFingerStrokeCount:(id)strokeCount
{
  countCopy = count;
  strokeCountCopy = strokeCount;
  v12.receiver = self;
  v12.super_class = ICASEndDrawingStrokeData;
  v9 = [(ICASEndDrawingStrokeData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endPencilStrokeCount, count);
    objc_storeStrong(&v10->_endFingerStrokeCount, strokeCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"endPencilStrokeCount";
  endPencilStrokeCount = [(ICASEndDrawingStrokeData *)self endPencilStrokeCount];
  if (endPencilStrokeCount)
  {
    endPencilStrokeCount2 = [(ICASEndDrawingStrokeData *)self endPencilStrokeCount];
  }

  else
  {
    endPencilStrokeCount2 = objc_opt_new();
  }

  v5 = endPencilStrokeCount2;
  v12[1] = @"endFingerStrokeCount";
  v13[0] = endPencilStrokeCount2;
  endFingerStrokeCount = [(ICASEndDrawingStrokeData *)self endFingerStrokeCount];
  if (endFingerStrokeCount)
  {
    endFingerStrokeCount2 = [(ICASEndDrawingStrokeData *)self endFingerStrokeCount];
  }

  else
  {
    endFingerStrokeCount2 = objc_opt_new();
  }

  v8 = endFingerStrokeCount2;
  v13[1] = endFingerStrokeCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end