@interface ICASDrawingActionType
- (ICASDrawingActionType)initWithDrawingActionType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASDrawingActionType

- (ICASDrawingActionType)initWithDrawingActionType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASDrawingActionType;
  result = [(ICASDrawingActionType *)&v5 init];
  if (result)
  {
    result->_drawingActionType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASDrawingActionType *)self drawingActionType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF7C8[v3 - 1];
  }
}

@end