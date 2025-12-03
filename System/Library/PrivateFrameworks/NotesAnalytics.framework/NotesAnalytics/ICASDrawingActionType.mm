@interface ICASDrawingActionType
- (ICASDrawingActionType)initWithDrawingActionType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASDrawingActionType

- (ICASDrawingActionType)initWithDrawingActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASDrawingActionType;
  result = [(ICASDrawingActionType *)&v5 init];
  if (result)
  {
    result->_drawingActionType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  drawingActionType = [(ICASDrawingActionType *)self drawingActionType];
  if ((drawingActionType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF7C8[drawingActionType - 1];
  }
}

@end