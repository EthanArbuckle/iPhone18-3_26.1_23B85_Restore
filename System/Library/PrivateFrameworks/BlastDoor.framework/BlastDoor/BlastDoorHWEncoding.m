@interface BlastDoorHWEncoding
+ (id)dataRepresentation:(id)a3 frame:(CGRect)a4 bound:(CGRect)a5 uuid:(id)a6 date:(id)a7;
+ (id)decodeHandwritingFromData:(id)a3;
@end

@implementation BlastDoorHWEncoding

+ (id)decodeHandwritingFromData:(id)a3
{
  v3 = a3;
  if (getHWEncodingClass())
  {
    v4 = [getHWEncodingClass() decodeHandwritingFromData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dataRepresentation:(id)a3 frame:(CGRect)a4 bound:(CGRect)a5 uuid:(id)a6 date:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.size.height;
  v13 = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  v18 = a6;
  v19 = a7;
  v20 = [BlastDoorDrawing createDrawing:a3 frame:v15 bound:v14, v13, v12, x, y, width, height];
  if (v20)
  {
    v21 = [BlastDoorHWHandwritingItem createHandwritingItem:v20 uuid:v18 date:v19];
    if (v21)
    {
      v22 = [a1 encodeHandwriting:v21 compress:1];
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