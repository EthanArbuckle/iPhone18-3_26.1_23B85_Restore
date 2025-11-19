@interface CKContextExtractionUtil
+ (id)_renderImageToSurfaceWithImage:(id)a3;
+ (void)renderLeadImage:(id)a3 toDonationItem:(id)a4;
+ (void)renderSnapshot:(id)a3 toDonationItem:(id)a4;
@end

@implementation CKContextExtractionUtil

+ (id)_renderImageToSurfaceWithImage:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ioSurface];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      [v4 size];
      v9 = v8;
      v11 = v10;
      [v4 scale];
      v13 = v12;
      v29[0] = *MEMORY[0x1E696CDE0];
      v14 = v9 * v12;
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      v30[0] = v15;
      v29[1] = *MEMORY[0x1E696CD90];
      v16 = v11 * v13;
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v18 = *MEMORY[0x1E696CD78];
      v30[1] = v17;
      v30[2] = &unk_1F305C7A8;
      v19 = *MEMORY[0x1E696CDA0];
      v29[2] = v18;
      v29[3] = v19;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1111970369];
      v30[3] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

      v22 = [objc_alloc(MEMORY[0x1E696CDE8]) initWithProperties:v21];
      [v22 lockWithOptions:1 seed:0];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v24 = CGIOSurfaceContextCreate();
      if (v24)
      {
        v25 = v24;
        v26 = [v4 CGImage];
        v32.origin.x = 0.0;
        v32.origin.y = 0.0;
        v32.size.width = v14;
        v32.size.height = v16;
        CGContextDrawImage(v25, v32, v26);
        CGColorSpaceRelease(DeviceRGB);
        CGContextFlush(v25);
        CFRelease(v25);
        v7 = v22;
      }

      else
      {
        CGColorSpaceRelease(DeviceRGB);
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)renderLeadImage:(id)a3 toDonationItem:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [CKContextExtractionUtil _renderImageToSurfaceWithImage:a3];
    [v5 setLeadImage:?];
  }

  else
  {
    v6 = a4;
    [v6 setLeadImage:0];
  }
}

+ (void)renderSnapshot:(id)a3 toDonationItem:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = [CKContextExtractionUtil _renderImageToSurfaceWithImage:a3];
    [v5 setSnapshot:?];
  }

  else
  {
    v6 = a4;
    [v6 setSnapshot:0];
  }
}

@end