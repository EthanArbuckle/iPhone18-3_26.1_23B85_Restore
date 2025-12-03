@interface CDRichComplicationCornerUtilities
+ (CGRect)cornerGaugeCustomViewRectWithPosition:(int64_t)position forDevice:(id)device;
+ (id)hitTestPathWithViewBounds:(CGRect)bounds position:(int64_t)position forDevice:(id)device;
@end

@implementation CDRichComplicationCornerUtilities

+ (id)hitTestPathWithViewBounds:(CGRect)bounds position:(int64_t)position forDevice:(id)device
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  deviceCopy = device;
  CLKLargeDialDiameterForDevice();
  v12 = v11;
  [deviceCopy screenBounds];
  v14 = v13;
  v16 = v15;

  v17 = (v14 - v12) * 0.5;
  v18 = (v16 - v12) * 0.5;
  v19 = [MEMORY[0x277D75208] bezierPathWithRect:{x, y, width, height}];
  if (position > 1)
  {
    v20 = height - v16;
    if (position == 2)
    {
      v18 = v20 + v18;
    }

    else
    {
      v21 = v20 + v18;
      if (position == 3)
      {
        v18 = v21;
      }

      else
      {
        v18 = *(MEMORY[0x277CBF348] + 8);
      }

      if (position == 3)
      {
        v17 = width - v12 - v17;
      }

      else
      {
        v17 = *MEMORY[0x277CBF348];
      }
    }
  }

  else if (position)
  {
    if (position == 1)
    {
      v17 = width - v12 - v17;
    }

    else
    {
      v18 = *(MEMORY[0x277CBF348] + 8);
      v17 = *MEMORY[0x277CBF348];
    }
  }

  v22 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v17, v18, v12, v12}];
  bezierPathByReversingPath = [v22 bezierPathByReversingPath];
  [v19 appendPath:bezierPathByReversingPath];

  return v19;
}

+ (CGRect)cornerGaugeCustomViewRectWithPosition:(int64_t)position forDevice:(id)device
{
  deviceCopy = device;
  v6 = ___LayoutConstants_block_invoke_4(deviceCopy, deviceCopy);
  v8 = v7;
  v10 = v9;
  v11 = CDCornerComplicationSize(deviceCopy);
  v13 = v12;
  if (CDUsingRadialCornerComplicationLayout(deviceCopy))
  {
    v8 = CDCornerComplicationOuterImageCenterPoint(deviceCopy);
    v10 = v14;
  }

  v15 = 0.0;
  v16 = v13 - v10;
  v17 = v11 - v8;
  if (position == 3)
  {
    v18 = v11 - v8;
  }

  else
  {
    v18 = 0.0;
  }

  if (position == 3)
  {
    v19 = v13 - v10;
  }

  else
  {
    v19 = 0.0;
  }

  if (position == 2)
  {
    v18 = v8;
  }

  else
  {
    v16 = v19;
  }

  if (position == 1)
  {
    v15 = v10;
  }

  else
  {
    v17 = 0.0;
  }

  if (!position)
  {
    v17 = v8;
    v15 = v10;
  }

  if (position > 1)
  {
    v17 = v18;
    v15 = v16;
  }

  v20 = v17 - v6 * 0.5;
  v21 = v15 - v6 * 0.5;

  v22 = v20;
  v23 = v21;
  v24 = v6;
  v25 = v6;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

@end