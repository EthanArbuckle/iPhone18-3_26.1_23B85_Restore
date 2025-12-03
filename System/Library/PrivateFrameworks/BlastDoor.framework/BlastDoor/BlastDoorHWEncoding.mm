@interface BlastDoorHWEncoding
+ (id)dataRepresentation:(id)representation frame:(CGRect)frame bound:(CGRect)bound uuid:(id)uuid date:(id)date;
+ (id)decodeHandwritingFromData:(id)data;
@end

@implementation BlastDoorHWEncoding

+ (id)decodeHandwritingFromData:(id)data
{
  dataCopy = data;
  if (getHWEncodingClass())
  {
    v4 = [getHWEncodingClass() decodeHandwritingFromData:dataCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dataRepresentation:(id)representation frame:(CGRect)frame bound:(CGRect)bound uuid:(id)uuid date:(id)date
{
  height = bound.size.height;
  width = bound.size.width;
  y = bound.origin.y;
  x = bound.origin.x;
  v12 = frame.size.height;
  v13 = frame.size.width;
  v14 = frame.origin.y;
  v15 = frame.origin.x;
  uuidCopy = uuid;
  dateCopy = date;
  height = [BlastDoorDrawing createDrawing:representation frame:v15 bound:v14, v13, v12, x, y, width, height];
  if (height)
  {
    v21 = [BlastDoorHWHandwritingItem createHandwritingItem:height uuid:uuidCopy date:dateCopy];
    if (v21)
    {
      v22 = [self encodeHandwriting:v21 compress:1];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end