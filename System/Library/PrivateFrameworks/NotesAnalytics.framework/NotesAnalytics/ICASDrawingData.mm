@interface ICASDrawingData
- (ICASDrawingData)initWithDrawingActionType:(id)type drawingTool:(id)tool drawingID:(id)d;
- (id)toDict;
@end

@implementation ICASDrawingData

- (ICASDrawingData)initWithDrawingActionType:(id)type drawingTool:(id)tool drawingID:(id)d
{
  typeCopy = type;
  toolCopy = tool;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = ICASDrawingData;
  v12 = [(ICASDrawingData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_drawingActionType, type);
    objc_storeStrong(&v13->_drawingTool, tool);
    objc_storeStrong(&v13->_drawingID, d);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"drawingActionType";
  drawingActionType = [(ICASDrawingData *)self drawingActionType];
  if (drawingActionType)
  {
    drawingActionType2 = [(ICASDrawingData *)self drawingActionType];
  }

  else
  {
    drawingActionType2 = objc_opt_new();
  }

  v5 = drawingActionType2;
  v16[0] = drawingActionType2;
  v15[1] = @"drawingTool";
  drawingTool = [(ICASDrawingData *)self drawingTool];
  if (drawingTool)
  {
    drawingTool2 = [(ICASDrawingData *)self drawingTool];
  }

  else
  {
    drawingTool2 = objc_opt_new();
  }

  v8 = drawingTool2;
  v16[1] = drawingTool2;
  v15[2] = @"drawingID";
  drawingID = [(ICASDrawingData *)self drawingID];
  if (drawingID)
  {
    drawingID2 = [(ICASDrawingData *)self drawingID];
  }

  else
  {
    drawingID2 = objc_opt_new();
  }

  v11 = drawingID2;
  v16[2] = drawingID2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end