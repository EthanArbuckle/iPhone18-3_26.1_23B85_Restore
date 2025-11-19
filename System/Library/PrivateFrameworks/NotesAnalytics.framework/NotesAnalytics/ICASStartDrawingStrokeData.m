@interface ICASStartDrawingStrokeData
- (ICASStartDrawingStrokeData)initWithStartPencilStrokeCount:(id)a3 startFingerStrokeCount:(id)a4;
- (id)toDict;
@end

@implementation ICASStartDrawingStrokeData

- (ICASStartDrawingStrokeData)initWithStartPencilStrokeCount:(id)a3 startFingerStrokeCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASStartDrawingStrokeData;
  v9 = [(ICASStartDrawingStrokeData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startPencilStrokeCount, a3);
    objc_storeStrong(&v10->_startFingerStrokeCount, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"startPencilStrokeCount";
  v3 = [(ICASStartDrawingStrokeData *)self startPencilStrokeCount];
  if (v3)
  {
    v4 = [(ICASStartDrawingStrokeData *)self startPencilStrokeCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"startFingerStrokeCount";
  v13[0] = v4;
  v6 = [(ICASStartDrawingStrokeData *)self startFingerStrokeCount];
  if (v6)
  {
    v7 = [(ICASStartDrawingStrokeData *)self startFingerStrokeCount];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end