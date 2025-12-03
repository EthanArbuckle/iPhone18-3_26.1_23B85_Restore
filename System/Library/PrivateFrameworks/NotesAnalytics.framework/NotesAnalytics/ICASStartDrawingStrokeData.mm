@interface ICASStartDrawingStrokeData
- (ICASStartDrawingStrokeData)initWithStartPencilStrokeCount:(id)count startFingerStrokeCount:(id)strokeCount;
- (id)toDict;
@end

@implementation ICASStartDrawingStrokeData

- (ICASStartDrawingStrokeData)initWithStartPencilStrokeCount:(id)count startFingerStrokeCount:(id)strokeCount
{
  countCopy = count;
  strokeCountCopy = strokeCount;
  v12.receiver = self;
  v12.super_class = ICASStartDrawingStrokeData;
  v9 = [(ICASStartDrawingStrokeData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startPencilStrokeCount, count);
    objc_storeStrong(&v10->_startFingerStrokeCount, strokeCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"startPencilStrokeCount";
  startPencilStrokeCount = [(ICASStartDrawingStrokeData *)self startPencilStrokeCount];
  if (startPencilStrokeCount)
  {
    startPencilStrokeCount2 = [(ICASStartDrawingStrokeData *)self startPencilStrokeCount];
  }

  else
  {
    startPencilStrokeCount2 = objc_opt_new();
  }

  v5 = startPencilStrokeCount2;
  v12[1] = @"startFingerStrokeCount";
  v13[0] = startPencilStrokeCount2;
  startFingerStrokeCount = [(ICASStartDrawingStrokeData *)self startFingerStrokeCount];
  if (startFingerStrokeCount)
  {
    startFingerStrokeCount2 = [(ICASStartDrawingStrokeData *)self startFingerStrokeCount];
  }

  else
  {
    startFingerStrokeCount2 = objc_opt_new();
  }

  v8 = startFingerStrokeCount2;
  v13[1] = startFingerStrokeCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end