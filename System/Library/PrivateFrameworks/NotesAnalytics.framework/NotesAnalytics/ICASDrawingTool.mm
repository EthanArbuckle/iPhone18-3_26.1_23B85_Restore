@interface ICASDrawingTool
- (ICASDrawingTool)initWithDrawingTool:(int64_t)tool;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASDrawingTool

- (ICASDrawingTool)initWithDrawingTool:(int64_t)tool
{
  v5.receiver = self;
  v5.super_class = ICASDrawingTool;
  result = [(ICASDrawingTool *)&v5 init];
  if (result)
  {
    result->_drawingTool = tool;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  drawingTool = [(ICASDrawingTool *)self drawingTool];
  v4 = @"unknown";
  if (drawingTool == 1)
  {
    v4 = @"pencil";
  }

  if (drawingTool == 2)
  {
    return @"finger";
  }

  else
  {
    return v4;
  }
}

@end