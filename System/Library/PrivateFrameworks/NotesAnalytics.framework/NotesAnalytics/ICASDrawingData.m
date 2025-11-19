@interface ICASDrawingData
- (ICASDrawingData)initWithDrawingActionType:(id)a3 drawingTool:(id)a4 drawingID:(id)a5;
- (id)toDict;
@end

@implementation ICASDrawingData

- (ICASDrawingData)initWithDrawingActionType:(id)a3 drawingTool:(id)a4 drawingID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASDrawingData;
  v12 = [(ICASDrawingData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_drawingActionType, a3);
    objc_storeStrong(&v13->_drawingTool, a4);
    objc_storeStrong(&v13->_drawingID, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"drawingActionType";
  v3 = [(ICASDrawingData *)self drawingActionType];
  if (v3)
  {
    v4 = [(ICASDrawingData *)self drawingActionType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"drawingTool";
  v6 = [(ICASDrawingData *)self drawingTool];
  if (v6)
  {
    v7 = [(ICASDrawingData *)self drawingTool];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"drawingID";
  v9 = [(ICASDrawingData *)self drawingID];
  if (v9)
  {
    v10 = [(ICASDrawingData *)self drawingID];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end