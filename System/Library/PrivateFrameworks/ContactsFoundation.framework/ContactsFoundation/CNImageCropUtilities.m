@interface CNImageCropUtilities
+ (CGRect)centeredSquareCropRectInRect:(CGRect)a3;
+ (CGRect)intersectingSquareCropRect:(CGRect)a3 forRect:(CGRect)a4;
+ (CGRect)scaledCropRect:(CGRect)a3 fromSize:(CGSize)a4 toSize:(CGSize)a5;
+ (CGRect)squareCropRect:(CGRect)a3 toFitSize:(CGSize)a4;
@end

@implementation CNImageCropUtilities

+ (CGRect)centeredSquareCropRectInRect:(CGRect)a3
{
  if (a3.size.width >= a3.size.height)
  {
    height = a3.size.height;
  }

  else
  {
    height = a3.size.width;
  }

  v4 = height == a3.size.width;
  v5 = a3.origin.x + (a3.size.width - height) * 0.5;
  v6 = a3.origin.y + (a3.size.height - height) * 0.5;
  if (v4)
  {
    y = v6;
  }

  else
  {
    y = a3.origin.y;
  }

  if (v4)
  {
    x = a3.origin.x;
  }

  else
  {
    x = v5;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = getCGRectIntegralSymbolLoc_ptr;
  v21 = getCGRectIntegralSymbolLoc_ptr;
  if (!getCGRectIntegralSymbolLoc_ptr)
  {
    v10 = CoreGraphicsLibrary();
    v19[3] = dlsym(v10, "CGRectIntegral");
    getCGRectIntegralSymbolLoc_ptr = v19[3];
    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v9)
  {
    +[CNImageCropUtilities centeredSquareCropRectInRect:];
    v17 = v16;
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(v17);
  }

  v9(x, y, height, height);
  if (v13 >= v14)
  {
    v13 = v14;
  }

  v15 = v13;
  result.size.height = v15;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (CGRect)squareCropRect:(CGRect)a3 toFitSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = 0.0;
  if (a4.width == 0.0 && a4.height == 0.0 || a4.width == 0.0)
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    if (a4.height != 0.0)
    {
      [objc_opt_class() intersectingSquareCropRect:x forRect:{y, v7, v6, 0.0, 0.0, a4.width, a4.height}];
      v15 = v14;
      v26 = v16;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v17 = getCGRectGetMidXSymbolLoc_ptr;
      v30 = getCGRectGetMidXSymbolLoc_ptr;
      if (!getCGRectGetMidXSymbolLoc_ptr)
      {
        v18 = CoreGraphicsLibrary();
        v28[3] = dlsym(v18, "CGRectGetMidX");
        getCGRectGetMidXSymbolLoc_ptr = v28[3];
        v17 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (v17)
      {
        v25 = v15;
        v19 = v17(x, y, v7, v6);
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v20 = getCGRectGetMidYSymbolLoc_ptr;
        v30 = getCGRectGetMidYSymbolLoc_ptr;
        if (!getCGRectGetMidYSymbolLoc_ptr)
        {
          v21 = CoreGraphicsLibrary();
          v28[3] = dlsym(v21, "CGRectGetMidY");
          getCGRectGetMidYSymbolLoc_ptr = v28[3];
          v20 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (v20)
        {
          v22 = v20(x, y, v7, v6);
          [objc_opt_class() intersectingSquareCropRect:v19 - v25 * 0.5 forRect:{v22 - v26 * 0.5, v25, v26, 0.0, 0.0, width, height}];
          goto LABEL_16;
        }
      }

      else
      {
        +[CNImageCropUtilities centeredSquareCropRectInRect:];
      }

      +[CNImageCropUtilities centeredSquareCropRectInRect:];
      v24 = v23;
      _Block_object_dispose(&v27, 8);
      _Unwind_Resume(v24);
    }
  }

LABEL_16:
  result.size.height = v10;
  result.size.width = v11;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

+ (CGRect)scaledCropRect:(CGRect)a3 fromSize:(CGSize)a4 toSize:(CGSize)a5
{
  x = a3.origin.x;
  v6 = 0.0;
  if (a4.width == 0.0 && a4.height == 0.0)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else if (a5.width != 0.0 || (v7 = 0.0, v8 = 0.0, v9 = 0.0, a5.height != 0.0))
  {
    v10 = a5.width / a4.width;
    v11 = a5.height / a4.height;
    v6 = x * v10;
    v7 = a3.origin.y * v11;
    v8 = rint(a3.size.width * v10);
    v9 = rint(a3.size.height * v11);
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v6;
  return result;
}

+ (CGRect)intersectingSquareCropRect:(CGRect)a3 forRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v29 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v11 = getCGRectIntersectionSymbolLoc_ptr;
  v33 = getCGRectIntersectionSymbolLoc_ptr;
  if (!getCGRectIntersectionSymbolLoc_ptr)
  {
    v12 = CoreGraphicsLibrary();
    v31[3] = dlsym(v12, "CGRectIntersection");
    getCGRectIntersectionSymbolLoc_ptr = v31[3];
    v11 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v11)
  {
    +[CNImageCropUtilities centeredSquareCropRectInRect:];
    goto LABEL_18;
  }

  v13 = v11(v10, v9, v8, v29, x, y, width, height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v20 = getCGRectEqualToRectSymbolLoc_ptr;
  v33 = getCGRectEqualToRectSymbolLoc_ptr;
  if (!getCGRectEqualToRectSymbolLoc_ptr)
  {
    v21 = CoreGraphicsLibrary();
    v31[3] = dlsym(v21, "CGRectEqualToRect");
    getCGRectEqualToRectSymbolLoc_ptr = v31[3];
    v20 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v20)
  {
LABEL_18:
    +[CNImageCropUtilities centeredSquareCropRectInRect:];
    v28 = v27;
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v28);
  }

  v22 = v20(v13, v15, v17, v19, v10, v9, v8, v29);
  if (v17 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v17;
  }

  if (v22)
  {
    v24 = v9;
  }

  else
  {
    v24 = v15;
  }

  if (v22)
  {
    v25 = v10;
  }

  else
  {
    v25 = v13;
  }

  v26 = v23;
  result.size.height = v26;
  result.size.width = v23;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

+ (void)centeredSquareCropRectInRect:.cold.1()
{
  dlerror();
  abort_report_np();
  +[CNAuditTokenUtilities os_log];
}

@end