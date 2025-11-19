@interface ICASEndDrawingStrokeData
- (ICASEndDrawingStrokeData)initWithEndPencilStrokeCount:(id)a3 endFingerStrokeCount:(id)a4;
- (id)toDict;
@end

@implementation ICASEndDrawingStrokeData

- (ICASEndDrawingStrokeData)initWithEndPencilStrokeCount:(id)a3 endFingerStrokeCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASEndDrawingStrokeData;
  v9 = [(ICASEndDrawingStrokeData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endPencilStrokeCount, a3);
    objc_storeStrong(&v10->_endFingerStrokeCount, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"endPencilStrokeCount";
  v3 = [(ICASEndDrawingStrokeData *)self endPencilStrokeCount];
  if (v3)
  {
    v4 = [(ICASEndDrawingStrokeData *)self endPencilStrokeCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"endFingerStrokeCount";
  v13[0] = v4;
  v6 = [(ICASEndDrawingStrokeData *)self endFingerStrokeCount];
  if (v6)
  {
    v7 = [(ICASEndDrawingStrokeData *)self endFingerStrokeCount];
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