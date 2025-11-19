uint64_t sub_2492552C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2492552E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24925530C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_249255344()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24925537C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2492553DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24925545C()
{
  MEMORY[0x24C1F5BD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249255494()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2492554E4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24925554C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24925B0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24925D460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24925D638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24925EE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_249260C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 40));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_249260FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double DCTSDOffsetForEdgeOfFrame(int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return CGRectGetMinY(*&a2);
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return CGRectGetMaxY(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidY(*&a2);
  }

  else
  {
    if (!a1)
    {
      return CGRectGetMinX(*&a2);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CGRectGetMaxX(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidX(*&a2);
  }
}

double DCTSDRectWithPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double DCTSDRectWithSizeAlignedToRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.size.height = a4;
  v17.size.width = a3;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  width = v18.size.width;
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  if (!CGRectIsNull(v18))
  {
    switch(a1)
    {
      case 3:
        v21.origin.x = a5;
        v21.origin.y = a6;
        v21.size.width = a7;
        v21.size.height = a8;
        x = CGRectGetMaxX(v21) - width;
        break;
      case 2:
        v20.origin.x = a5;
        v20.origin.y = a6;
        v20.size.width = a7;
        v20.size.height = a8;
        x = CGRectGetMidX(v20) + width * -0.5;
        break;
      case 1:
        v19.origin.x = a5;
        v19.origin.y = a6;
        v19.size.width = a7;
        v19.size.height = a8;
        x = CGRectGetMinX(v19);
        break;
    }

    switch(a2)
    {
      case 3:
        v24.origin.x = a5;
        v24.origin.y = a6;
        v24.size.width = a7;
        v24.size.height = a8;
        CGRectGetMaxY(v24);
        break;
      case 2:
        v23.origin.x = a5;
        v23.origin.y = a6;
        v23.size.width = a7;
        v23.size.height = a8;
        CGRectGetMidY(v23);
        break;
      case 1:
        v22.origin.x = a5;
        v22.origin.y = a6;
        v22.size.width = a7;
        v22.size.height = a8;
        CGRectGetMinY(v22);
        break;
    }
  }

  return x;
}

BOOL DCTSDNearlyEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (vabdd_f64(a1, a5) < 0.01 && vabdd_f64(a2, a6) < 0.01)
  {
    v9 = vabdd_f64(a3, a7) < 0.01;
    return vabdd_f64(a4, a8) < 0.01 && v9;
  }

  return result;
}

BOOL DCTSDNearlyContainsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL DCTSDRectsOverlapVertically(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxX(v24);
  if (MinX <= v16)
  {
    return MaxX >= v16;
  }

  else
  {
    return v18 >= MinX;
  }
}

BOOL DCTSDRectsOverlapHorizontally(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxY(v24);
  if (MinY <= v16)
  {
    return MaxY >= v16;
  }

  else
  {
    return v18 >= MinY;
  }
}

uint64_t DCTSDLineIntersectsRect(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a4;
  v13 = a3;
  while (1)
  {
    v16 = p_ComputeOutcode(a1, a2, a5, a6, a7, a8);
    v17 = p_ComputeOutcode(v13, v12, a5, a6, a7, a8);
    result = 1;
    if (!v16 || !v17)
    {
      break;
    }

    if ((v17 & v16) != 0)
    {
      return 0;
    }

    v19 = (v13 + a1) * 0.5;
    v20 = (v12 + a2) * 0.5;
    v21 = DCTSDLineIntersectsRect(1, a1, a2, v19, v20, a5, a6, a7, a8);
    a1 = v19;
    a2 = v20;
    v13 = a3;
    v12 = a4;
    if (v21)
    {
      return 1;
    }
  }

  return result;
}

uint64_t p_ComputeOutcode(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

double DCTSDNearestPointOnInfiniteLineToPoint(double *a1, double a2, double a3)
{
  v3 = a1[1];
  v4 = a1[2] - *a1;
  v5 = a1[3] - v3;
  v6 = 1.0 / sqrt(v5 * v5 + v4 * v4);
  return *a1 + v4 * v6 * ((a3 - v3) * (v5 * v6) + (a2 - *a1) * (v4 * v6));
}

double DCTSDSizeWithMaxArea(double result, double a2, double a3, double a4)
{
  if (result * a2 <= a3 * a4)
  {
    return a3;
  }

  return result;
}

double DCTSDUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x277CBF3A0];
  }

  return a5;
}

double DCTSDHorizontalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmax(MinX, CGRectGetMinX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmin(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmin(MaxY, CGRectGetMaxY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmax(MinY, CGRectGetMinY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

double DCTSDVerticalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmax(MinX, CGRectGetMinX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmax(MinY, CGRectGetMinY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmin(MaxY, CGRectGetMaxY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

BOOL DCTSDIntersectsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double DCTSDMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double DCTSDOrthogonalDistance(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a2 - a4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v4 + v5;
}

void DCTSDDistanceToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

double DCTSDDistanceToRectFromRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  MidX = CGRectGetMidX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MidY = CGRectGetMidY(v23);
  v16 = DCTSUClamp(MidX, a5, a5 + a7);
  v17 = DCTSUClamp(MidY, a6, a6 + a8);
  v18 = DCTSUClamp(v16, a1, a1 + a3);
  v19 = DCTSUClamp(v17, a2, a2 + a4);
  return sqrt((v17 - v19) * (v17 - v19) + (v16 - v18) * (v16 - v18));
}

double DCTSDClampPointInRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = DCTSUClamp(a1, a3, a3 + a5);
  DCTSUClamp(a2, a4, a4 + a6);
  return v9;
}

double DCTSDCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double DCTSDRectGetMaxPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double DCTSDGrowRectToPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (!CGRectIsNull(*&a1))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    if (MinX >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = MinX;
    }

    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMaxX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinY(v15);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxY(v16);
    return v11;
  }

  return a5;
}

double DCTSDFlipRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectGetMidY(*&a1);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMidY(v14);
  return a1;
}

double DCTSDCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL DCTSDRectIsFinite(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

void DCTSDRectDivide(CGRect *a1, CGRect *a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  memset(v8, 0, sizeof(v8));
  if (!a1)
  {
    a1 = v8;
  }

  if (!a2)
  {
    a2 = v8;
  }

  CGRectDivide(*&a4, a1, a2, a8, a3);
}

uint64_t DCTSDGetCanvasSpaceCorners(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 16);
  v47 = *a1;
  v48 = v18;
  v49 = *(a1 + 32);
  DCTSDTransformedCornersOfRect(&v47, &v50, &v52, &v53, v54, a6, a7, a8, a9);
  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = a6;
  v56.origin.y = a7;
  v56.size.width = a8;
  v56.size.height = a9;
  MidY = CGRectGetMidY(v56);
  v21 = 0;
  v22 = 0;
  v23 = MidY * *(a1 + 16) + *a1 * MidX;
  v24 = 1000000.0;
  v25 = MidY * *(a1 + 24) + *(a1 + 8) * MidX;
  v26 = *(a1 + 32) + v23;
  v27 = *(a1 + 40) + v25;
  v28 = &v51;
  do
  {
    v29 = atan2(*v28 - v27, *(v28 - 1) - v26);
    v30 = fmod(v29 * 57.2957795, 360.0);
    if (v30 < 0.0)
    {
      v30 = v30 + 360.0;
    }

    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    v31 = fabs(360.0 - v30 + -135.0);
    if (v31 < v24)
    {
      v21 = v22;
      v24 = v31;
    }

    ++v22;
    v28 += 2;
  }

  while (v22 != 4);
  *a2 = *(&v50 + v21);
  v32 = (v21 + 2) & 3;
  if (v21 + 2 <= 0)
  {
    v32 = -(-(v21 + 2) & 3);
  }

  *a4 = *(&v50 + v32);
  v33 = *(a1 + 16);
  v47 = *a1;
  v48 = v33;
  v49 = *(a1 + 32);
  v34 = DCTSDIsTransformFlipped(v47.f64);
  v35 = v21 + 3;
  if (v34)
  {
    v36 = v21 + 1;
  }

  else
  {
    v36 = v21 + 3;
  }

  v37 = v36 & 3;
  if (!v34)
  {
    v35 = v21 + 1;
  }

  v39 = -v36;
  v38 = v39 < 0;
  v40 = v39 & 3;
  if (v38)
  {
    v41 = v37;
  }

  else
  {
    v41 = -v40;
  }

  *a5 = *(&v50 + v41);
  v42 = v35 & 3;
  v43 = -v35;
  v38 = v43 < 0;
  v44 = v43 & 3;
  if (v38)
  {
    v45 = v42;
  }

  else
  {
    v45 = -v44;
  }

  *a3 = *(&v50 + v45);
  return v21;
}

uint64_t DCTSDMixBOOLs(uint64_t result, unsigned int a2, double a3)
{
  if (a3 > 0.5)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

void DCTSDMixAnglesInDegrees(long double a1, long double a2, double a3)
{
  v5 = fmod(a1, 360.0);
  if (v5 < 0.0)
  {
    v5 = v5 + 360.0;
  }

  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = fmod(a2, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, v6) > 180.0)
  {
    if (v6 <= v7)
    {
      v7 = v7 + -360.0;
    }

    else
    {
      v7 = v7 + 360.0;
    }
  }

  fmod(v7 * a3 + v6 * (1.0 - a3), 360.0);
}

double DCTSDSizeWithMaxSize(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double DCTSDTranslatedRectMaximizingOverlapWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v34 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  if (MaxX > CGRectGetMaxX(v37))
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    if (MinX > CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      v29 = CGRectGetMaxX(v40);
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      v30 = v29 - CGRectGetMaxX(v41);
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      v28 = CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      v17 = v28 - CGRectGetMinX(v43);
      if (v30 < v17)
      {
        v17 = v30;
      }

      v18 = a1 + v17;
LABEL_11:
      v34 = v18;
      goto LABEL_12;
    }
  }

  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  v19 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (v19 < CGRectGetMinX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v20 = CGRectGetMaxX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (v20 < CGRectGetMaxX(v47))
    {
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v31 = CGRectGetMinX(v48);
      v49.origin.x = a5;
      v49.origin.y = a6;
      v49.size.width = a7;
      v49.size.height = a8;
      v32 = v31 - CGRectGetMinX(v49);
      v50.origin.x = a1;
      v50.origin.y = a2;
      v50.size.width = a3;
      v50.size.height = a4;
      v21 = CGRectGetMaxX(v50);
      v51.origin.x = a5;
      v51.origin.y = a6;
      v51.size.width = a7;
      v51.size.height = a8;
      v22 = v21 - CGRectGetMaxX(v51);
      if (v32 < v22)
      {
        v22 = v32;
      }

      v18 = a1 - v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v53) || (v54.origin.x = a5, v54.origin.y = a6, v54.size.width = a7, v54.size.height = a8, v24 = CGRectGetMinY(v54), v55.origin.x = a1, v55.origin.y = a2, v55.size.width = a3, v55.size.height = a4, v24 <= CGRectGetMinY(v55)))
  {
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    if (MinY < CGRectGetMinY(v61))
    {
      v62.origin.x = a5;
      v62.origin.y = a6;
      v62.size.width = a7;
      v62.size.height = a8;
      v26 = CGRectGetMaxY(v62);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      if (v26 < CGRectGetMaxY(v63))
      {
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        CGRectGetMinY(v64);
        v65.origin.x = a5;
        v65.origin.y = a6;
        v65.size.width = a7;
        v65.size.height = a8;
        CGRectGetMinY(v65);
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        CGRectGetMaxY(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        CGRectGetMaxY(v67);
      }
    }
  }

  else
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    CGRectGetMaxY(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a5;
    v58.origin.y = a6;
    v58.size.width = a7;
    v58.size.height = a8;
    CGRectGetMinY(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetMinY(v59);
  }

  return v34;
}

double DCTSDOriginRotate(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double DCTSDNiceAngleFromDelta(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

double DCTSDDeltaFromAngle(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double DCTSDRotatePoint90Degrees(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double DCTSDNormalizeDifferenceAngleInDegrees(double a1, double a2)
{
  v2 = fmod(a1 - a2, 360.0);
  if (v2 > 180.0)
  {
    v2 = v2 + -360.0;
  }

  if (v2 < -180.0)
  {
    v2 = v2 + 360.0;
  }

  return fabs(v2);
}

double DCTSDNormalizeAngleAboutZeroInRadians(double a1)
{
  v1 = fmod(a1 + 3.14159265, 6.28318531);
  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return v1 + -3.14159265;
}

double DCTSDAngleBetweenPoints(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a1;
  v7 = a4 - a2;
  v8 = 1.0 / sqrt(v7 * v7 + v6 * v6);
  v9 = a5 - a1;
  v10 = a6 - a2;
  v11 = 1.0 / sqrt(v10 * v10 + v9 * v9);
  return acos(v7 * v8 * (v10 * v11) + v6 * v8 * (v9 * v11));
}

void DCTSDRectFromNormalizedSubrect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMaxX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxY(v13);
}

void DCTSDNormalizedSubrectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMaxY(v8);
}

double DCTSDRectSubtractingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

double DCTSDSizeWithAspectRatio(int a1, double result, double a3, double a4, double a5)
{
  v5 = result == a4 && a3 == a5;
  if (!v5 && a4 != 0.0 && a5 != 0.0 && a4 != 3.40282347e38 && a5 != 3.40282347e38)
  {
    if (a1)
    {
      v6 = sqrt(a5 * a5 + a4 * a4);
      return a4 / v6 * (a3 * (a5 / v6) + result * (a4 / v6));
    }

    else if (vabdd_f64(result, a4) < 0.01)
    {
      return a3 * a4 / a5;
    }
  }

  return result;
}

double DCTSDSizeExpandedToMatchAspectRatio(double result, double a2, double a3, double a4)
{
  v4 = result != a3;
  if (a2 != a4)
  {
    v4 = 1;
  }

  v5 = a3 <= 0.0 || !v4;
  if (!v5 && a4 > 0.0)
  {
    v6 = a3 / a4;
    if (v6 > result / a2)
    {
      return a2 * v6;
    }
  }

  return result;
}

double DCTSDScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double DCTSDShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double DCTSDFitOrFillSizeInSize(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  v6 = a5 / a3;
  if (v5 < v6 == a1)
  {
    v5 = v6;
  }

  return a2 * v5;
}

double DCTSDFitOrFillSizeInRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = a7 / a3;
  if (a6 / a2 < a7 / a3 != a1)
  {
    v9 = a6 / a2;
  }

  return DCTSDCenterRectOverRect(0.0, 0.0, a2 * v9, a3 * v9, a4, a5, a6, a7);
}

void DCTSDScaleRectAroundPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

void DCTSDVisibleUnscaledRectForNewScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, double a8)
{
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, a7, a7);
  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformInvert(&v18, &v17);
  v17 = v18;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v21 = CGRectApplyAffineTransform(v20, &v17);
  v14 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, a6), *&v18.a, a5));
  DCTSDScaleRectAroundPoint(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, v14.f64[0], v14.f64[1], a7 / a8);
}

double DCTSDRectByExpandingBoundingRectToContentRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v25 = a1 + a5 * a3;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMaxY(v37);
  v26 = a1 + MaxX * a3;
  if (v25 >= v26)
  {
    v27 = a1 + MaxX * a3;
  }

  else
  {
    v27 = v25;
  }

  if (v25 >= v26)
  {
    v26 = v25;
  }

  v35 = v27;
  v28 = v26 - v27;
  v29 = -a9 / a11 * (v26 - v27);
  v38.origin.x = -a9 / a11;
  v38.origin.y = -a10 / a12;
  v38.size.width = 1.0 / a11;
  v38.size.height = 1.0 / a12;
  v30 = CGRectGetMaxX(v38);
  v39.origin.x = -a9 / a11;
  v39.origin.y = -a10 / a12;
  v39.size.width = 1.0 / a11;
  v39.size.height = 1.0 / a12;
  CGRectGetMaxY(v39);
  if (v29 >= v30 * v28)
  {
    v31 = v30 * v28;
  }

  else
  {
    v31 = v29;
  }

  return v35 + v31;
}

double DCTSDClampRectToRect(double a1, double a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v23 = a5 + a7;
  v15 = DCTSUClamp(a1, a5, a5 + a7);
  v21 = a6;
  v22 = a6 + a8;
  DCTSUClamp(a2, a6, a6 + a8);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MaxY = CGRectGetMaxY(v25);
  v18 = DCTSUClamp(MaxX, a5, v23);
  DCTSUClamp(MaxY, v21, v22);
  if (v15 >= v18)
  {
    return v18;
  }

  else
  {
    return v15;
  }
}

double DCTSDAliasRound(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double DCTSDAliasRoundedPoint(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double DCTSDRoundedPoint(double a1, double a2)
{
  v3 = DCTSURound(a1);
  DCTSURound(a2);
  return v3;
}

double DCTSDRoundedPointForScale(double a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = DCTSURound(a1 * a3);
  DCTSURound(v4);
  return 1.0 / a3 * v5;
}

double DCTSDRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 != 0.0 && !CGRectIsNull(*&a1))
  {
    v23.origin.x = DCTSDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    MinX = CGRectGetMinX(v23);
    v15 = DCTSURound(MinX);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinY = CGRectGetMinY(v24);
    v17 = DCTSURound(MinY);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MaxX = CGRectGetMaxX(v25);
    v19 = DCTSURound(MaxX) - v15;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxY = CGRectGetMaxY(v26);
    v21 = DCTSURound(MaxY);
    return DCTSDMultiplyRectScalar(v15, v17, v19, v21 - v17, 1.0 / a5);
  }

  return v8;
}

double DCTSDAliasRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 != 0.0 && !CGRectIsNull(*&a1))
  {
    v34.origin.x = DCTSDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    MinX = CGRectGetMinX(v34);
    v15 = floor(MinX);
    v16 = MinX - v15;
    v17 = ceil(MinX);
    if (v16 >= 0.49)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MinY = CGRectGetMinY(v35);
    v20 = floor(MinY);
    v21 = MinY - v20;
    v22 = ceil(MinY);
    if (v21 >= 0.49)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
    v25 = floor(MaxX);
    v26 = MaxX - v25;
    v27 = ceil(MaxX);
    if (v26 < 0.49)
    {
      v27 = v25;
    }

    v33 = v27 - v18;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxY = CGRectGetMaxY(v37);
    v29 = floor(MaxY);
    v30 = MaxY - v29;
    v31 = ceil(MaxY);
    if (v30 < 0.49)
    {
      v31 = v29;
    }

    return DCTSDMultiplyRectScalar(v18, v23, v33, v31 - v23, 1.0 / a5);
  }

  return v8;
}

double DCTSDRoundedMinX(double a1, double a2, double a3, double a4)
{
  MinX = CGRectGetMinX(*&a1);

  return DCTSURound(MinX);
}

double DCTSDRoundedMidX(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = DCTSURound(a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxX = CGRectGetMaxX(v13);
  v10 = (v8 + DCTSURound(MaxX)) * 0.5;

  return DCTSURound(v10);
}

double DCTSDRoundedMaxX(double a1, double a2, double a3, double a4)
{
  MaxX = CGRectGetMaxX(*&a1);

  return DCTSURound(MaxX);
}

double DCTSDRoundedMinY(double a1, double a2, double a3, double a4)
{
  MinY = CGRectGetMinY(*&a1);

  return DCTSURound(MinY);
}

double DCTSDRoundedMidY(CGFloat a1, double a2, CGFloat a3, CGFloat a4)
{
  v8 = DCTSURound(a2);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxY = CGRectGetMaxY(v13);
  v10 = (v8 + DCTSURound(MaxY)) * 0.5;

  return DCTSURound(v10);
}

double DCTSDRoundedMaxY(double a1, double a2, double a3, double a4)
{
  MaxY = CGRectGetMaxY(*&a1);

  return DCTSURound(MaxY);
}

uint64_t DCTSDRectHasInfComponents(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a3) == INFINITY;
  result = 1;
  if (fabs(a4) != INFINITY)
  {
    v6 = fabs(a1) == INFINITY;
    if (fabs(a2) == INFINITY)
    {
      v6 = 1;
    }

    return v4 || v6;
  }

  return result;
}

double DCTSDSanitizeRect(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

double DCTSDSanitizePoint(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

void sub_24926A570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24926A8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DCTSUDeviceRGBColorSpace()
{
  if (DCTSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    DCTSUDeviceRGBColorSpace_cold_1();
  }

  return DCTSUDeviceRGBColorSpace_sDeviceRGBColorSpace;
}

CGColorSpaceRef __DCTSUDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  DCTSUDeviceRGBColorSpace_sDeviceRGBColorSpace = result;
  return result;
}

uint64_t DCTSUDeviceCMYKColorSpace()
{
  if (DCTSUDeviceCMYKColorSpace_sDeviceCMYKDispatchOnce != -1)
  {
    DCTSUDeviceCMYKColorSpace_cold_1();
  }

  return DCTSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace;
}

CGColorSpaceRef __DCTSUDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  DCTSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace = result;
  return result;
}

uint64_t DCTSUDeviceGrayColorSpace()
{
  if (DCTSUDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    DCTSUDeviceGrayColorSpace_cold_1();
  }

  return DCTSUDeviceGrayColorSpace_sDeviceGrayColorSpace;
}

CGColorSpaceRef __DCTSUDeviceGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  DCTSUDeviceGrayColorSpace_sDeviceGrayColorSpace = result;
  return result;
}

CGColorRef DCTSUCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (DCTSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    DCTSUDeviceRGBColorSpace_cold_1();
  }

  return CGColorCreate(DCTSUDeviceRGBColorSpace_sDeviceRGBColorSpace, components);
}

CGColorRef DCTSUCGColorCreateDeviceGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  if (DCTSUDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    DCTSUDeviceGrayColorSpace_cold_1();
  }

  return CGColorCreate(DCTSUDeviceGrayColorSpace_sDeviceGrayColorSpace, components);
}

CGPatternRef DCTSUCGPatternCreateWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  CGImageRetain(a1);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (a2)
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    v9 = a2[2];
  }

  else
  {
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v13 = *MEMORY[0x277CBF2C0];
    v14 = v10;
    v9 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v15 = v9;
  v16.size.height = Height;
  v16.size.width = Width;
  *&v12.a = v13;
  *&v12.c = v14;
  *&v12.tx = v9;
  v16.origin.x = v4;
  v16.origin.y = v5;
  return CGPatternCreate(a1, v16, &v12, Width, v16.size.height, kCGPatternTilingConstantSpacing, 1, &DCTSUCGPatternCreateWithImageAndTransform_sCallbacks);
}

void DCTSUDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef DCTSUCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = DCTSUCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

uint64_t DCTSUHSBFromCGColorRef(CGColor *a1, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(a1) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(a1);
  Components = CGColorGetComponents(a1);
  DCTSURGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double DCTSURGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double *DCTSUHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double DCTSUCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

BOOL DCTSUColorIsBlack(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  result = 0;
  if (Model > 2)
  {
    if ((Model - 3) >= 3)
    {
      return result;
    }

    NSLog(&cfstr_Dctsucolorisbl.isa, Model, a1);
    return 0;
  }

  if (Model)
  {
    if (Model != 1)
    {
      if (Model != 2)
      {
        return result;
      }

      return Components[3] == 1.0;
    }

    if (*Components == 0.0 && Components[1] == 0.0)
    {
      v7 = Components[2];
      return v7 == 0.0;
    }

    return 0;
  }

  v7 = *Components;
  return v7 == 0.0;
}

CGFloat DCTSUColorLightness(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  switch(Model)
  {
    case kCGColorSpaceModelMonochrome:
      return *CGColorGetComponents(a1);
    case kCGColorSpaceModelCMYK:
      Components = CGColorGetComponents(a1);
      v7 = Components[3];
      v8 = 1.0 - fmin(v7 + *Components * (1.0 - v7), 1.0);
      v9 = 1.0 - fmin(v7 + Components[1] * (1.0 - v7), 1.0);
      v10 = 1.0 - fmin(v7 + Components[2] * (1.0 - v7), 1.0);
      v5 = fmax(fmax(v8, v9), v10) + fmin(fmin(v8, v9), v10);
      return v5 * 0.5;
    case kCGColorSpaceModelRGB:
      v4 = CGColorGetComponents(a1);
      v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
      return v5 * 0.5;
  }

  NSLog(&cfstr_WarningTesting.isa);
  return 0.0;
}

CGContext *DCTSUCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (DCTSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    DCTSUDeviceRGBColorSpace_cold_1();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, DCTSUDeviceRGBColorSpace_sDeviceRGBColorSpace, 0x2002u);
  CGAffineTransformMakeScale(&v10, a4, a4);
  CGContextConcatCTM(v8, &v10);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextConcatCTM(v8, &v10);
  }

  return v8;
}

CGColorRef DCTSUCreateCheckerBoardColor(CGColor *a1, CGColor *a2, CGFloat a3, CGFloat a4)
{
  v8 = a3 + a3;
  v9 = a4 + a4;
  v10 = DCTSUCreateRGBABitmapContext(0, a3 + a3, a4 + a4, 1.0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  CGContextSetFillColorWithColor(v10, a1);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v8;
  v15.size.height = v9;
  CGContextFillRect(v11, v15);
  CGContextSetFillColorWithColor(v11, a2);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a3;
  v16.size.height = a4;
  CGContextFillRect(v11, v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a3;
  v17.size.height = a4;
  CGContextFillRect(v11, v17);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  if (!Image)
  {
    return 0;
  }

  PatternWithImageAndTransform = DCTSUCGColorCreatePatternWithImageAndTransform(Image, 0);
  CGImageRelease(Image);
  return PatternWithImageAndTransform;
}

void sub_24926C334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVKCImageAnalyzerClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VKCImageAnalyzer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKCImageAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVKCImageAnalyzerClass_block_invoke_cold_1();
    VisionKitCoreLibrary();
  }
}

void VisionKitCoreLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __VisionKitCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278F931C0;
    v3 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVKCImageAnalyzerRequestClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzerRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKCImageAnalyzerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVKCImageAnalyzerRequestClass_block_invoke_cold_1();
    return [NSObject(DCAccessibility) dcaxRespondsToSelector:v3 fromExtrasProtocol:?];
  }

  return result;
}

double simd_float3_project_to_plane(int32x4_t a1)
{
  v1 = COERCE_DOUBLE(vdiv_f32(*a1.i8, vdup_laneq_s32(a1, 2)));
  __asm { FMOV            V0.4S, #1.0 }

  return v1;
}

void sub_249270208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492705BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_249270920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_249270D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2492772C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249277754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249277BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVKCImageAnalysisInteractionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __VisionKitCoreLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F935A8;
    v6 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (VisionKitCoreLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VKCImageAnalysisInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalysisInteractionClass_block_invoke_cold_1();
  }

  getVKCImageAnalysisInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void DumpCVPixelBufferInfo(__CVBuffer *a1)
{
  CVPixelBufferRetain(a1);
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  DataSize = CVPixelBufferGetDataSize(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], ">> CVPixelBuffer(%p) Information\n", a1);
  fprintf(*v8, " Pixel Format Type: %c%c%c%c {w:%lu h:%lu}\n", (PixelFormatType >> 24), (PixelFormatType << 8 >> 24), (PixelFormatType >> 8), PixelFormatType, Width, Height);
  fprintf(*v8, " Base address:%p size:%lu bytes/row:%lu\n", BaseAddress, DataSize, BytesPerRow);
  if (CVPixelBufferIsPlanar(a1))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
    v10 = "";
    if (PlaneCount > 1)
    {
      v10 = "s";
    }

    fprintf(*v8, " pixel buffer has %lu planer%s.\n", PlaneCount, v10);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, i);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, i);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
        fprintf(*v8, "  [plane:%d] {w:%lu h:%lu} base address:%p bytes/row:%lu\n", i, WidthOfPlane, HeightOfPlane, BaseAddressOfPlane, BytesPerRowOfPlane);
      }
    }
  }

  else
  {
    fwrite(" pixel buffer is not planer.\n", 0x1DuLL, 1uLL, *v8);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);

  CVPixelBufferRelease(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24927DFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void dc_performBlockOnMainThread(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void dc_dispatchMainAfterDelay(void *a1, double a2)
{
  v2 = (a2 * 1000000000.0);
  block = a1;
  v3 = dispatch_time(0, v2);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t DCLocalizedCapitalizationStyleForView(void *a1)
{
  v1 = DCKeyboardLanguageForBaseView(a1);
  v2 = [&unk_285C6D708 objectForKey:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 1;
  }

  v5 = [DCLocalization localizedStringForKey:@"default" value:@"default" table:@"Localizable"];
  if ([v5 caseInsensitiveCompare:@"default"])
  {
    if ([v5 caseInsensitiveCompare:@"all"])
    {
      if ([v5 caseInsensitiveCompare:@"word"])
      {
        if ([v5 caseInsensitiveCompare:@"none"])
        {
          if (![v5 caseInsensitiveCompare:@"sentence"])
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 3;
    }
  }

  return v4;
}

id DCKeyboardLanguageForBaseView(void *a1)
{
  v1 = a1;
  v2 = [v1 textInputMode];
  if (v2)
  {
    v3 = [v1 textInputMode];
    v4 = [v3 primaryLanguage];
    v5 = [v4 isEqualToString:@"dictation"];

    if (v5)
    {
      v2 = 0;
    }

    else
    {
      v6 = [v1 textInputMode];
      v2 = [v6 primaryLanguage];
    }
  }

  return v2;
}

id DCAppName()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 localizedInfoDictionary];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CBED50]];

  if (!v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 localizedInfoDictionary];
    v2 = [v4 objectForKey:@"CFBundleDisplayName"];

    if (!v2)
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 infoDictionary];
      v2 = [v6 objectForKey:@"CFBundleDisplayName"];

      if (!v2)
      {
        v7 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [v7 infoDictionary];
        v2 = [v8 objectForKey:@"CFBundleName"];

        if (!v2)
        {
          v2 = [DCLocalization localizedStringForKey:@"Document Camera" value:@"Document Camera" table:@"Localizable"];
        }
      }
    }
  }

  return v2;
}

Class __getSidecarServiceClass_block_invoke(uint64_t a1)
{
  SidecarCoreLibrary();
  result = objc_getClass("SidecarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSidecarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSidecarServiceClass_block_invoke_cold_1();
    return SidecarCoreLibrary();
  }

  return result;
}

uint64_t SidecarCoreLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SidecarCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SidecarCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F936E8;
    v5 = 0;
    SidecarCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SidecarCoreLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!SidecarCoreLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SidecarCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SidecarCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSidecarServiceNameScanDocumentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SidecarCoreLibrary();
  result = dlsym(v2, "SidecarServiceNameScanDocument");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSidecarServiceNameScanDocumentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id DCAccessibilitySystemDarkenedColor(void *a1)
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [a1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x277D75348] colorWithHue:v6 saturation:v5 brightness:v4 * 0.8 alpha:v3];

  return v1;
}

BOOL DCAccessibilityAccessibilityLargerTextSizesEnabled()
{
  v0 = [MEMORY[0x277D75380] system];
  v1 = [v0 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v1);
  return IsAccessibilityCategory;
}

id DCAccessibilityContentSizeCategories()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76800];
  v4[0] = *MEMORY[0x277D76808];
  v4[1] = v0;
  v1 = *MEMORY[0x277D767F0];
  v4[2] = *MEMORY[0x277D767F8];
  v4[3] = v1;
  v4[4] = *MEMORY[0x277D767E8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

double DCAccessibilityLinearInterpolatedValueForAccessibilityContentSizeCategory(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = DCAccessibilityContentSizeCategories();
  v7 = [v6 indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    a2 = (a3 - a2) * v7 / ([v6 count] - 1) + a2;
  }

  return a2;
}

void sub_2492824B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2492827E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2492833A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249283558(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

double triangleNormalDirection(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = DCTSDSubtractPoints(a3, a4, a1);
  v11 = v10;
  v13 = DCTSDSubtractPoints(a5, a6, a1);

  return DCTSDCrossPoints(v9, v11, v13, v12);
}

double diffMachTime(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  LODWORD(a4) = timebase;
  LODWORD(a5) = *algn_27EEE1BC4;
  return (a2 - a1) * *&a4 / *&a5 / 1000000000.0;
}

uint64_t perfInit()
{
  mach_timebase_info(&timebase);
  result = mach_absolute_time();
  g_initTime = result;
  return result;
}

double timeElapsedSinceInit()
{
  v0 = g_initTime;
  if (!g_initTime)
  {
    mach_timebase_info(&timebase);
    v0 = mach_absolute_time();
    g_initTime = v0;
  }

  v1 = mach_absolute_time();
  LODWORD(v2) = timebase;
  LODWORD(v3) = *algn_27EEE1BC4;
  return (v1 - v0) * v2 / v3 / 1000000000.0;
}

double timestampToSeconds(unint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a3) = timebase;
  LODWORD(a4) = *algn_27EEE1BC4;
  return a1 * *&a3 / *&a4 / 1000000000.0;
}

void sReleasePixelMemory(void *a1, const void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

void sReleaseCVPixelBuffer(__CVBuffer *a1, const void *a2)
{
  if (a1)
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);

    CVPixelBufferRelease(a1);
  }
}

void sub_2492914A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_249291574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMURemoteViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MarkupUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MarkupUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F93920;
    v6 = 0;
    MarkupUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MarkupUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MURemoteViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMURemoteViewControllerClass_block_invoke_cold_1();
  }

  getMURemoteViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MarkupUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MarkupUILibraryCore_frameworkLibrary = result;
  return result;
}

void DCAccessibilityPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v3 = a1;
  v4 = +[DCDispatchAfterHandler appLifeCycleHandler];
  [v4 dispatchAfter:0 stringIdentifier:v3 withBlock:a2];
}

void DCAccessibilityPostAnnouncementNotificationWithPriority(void *a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v5 = a2;
  v6 = +[DCAccessibility sharedInstance];
  if ([v6 dcaxRespondsToSelector:sel_postAnnouncement_withSender_priority_ fromExtrasProtocol:&unk_285C99158])
  {
    [v6 postAnnouncement:v5 withSender:v7 priority:a3];
  }
}

uint64_t DCAccessibilityNeedsAccessibilityElements()
{
  v0 = +[DCAccessibility sharedInstance];
  if ([v0 dcaxRespondsToSelector:sel_needsAccessibilityElements fromExtrasProtocol:&unk_285C99158])
  {
    v1 = [v0 needsAccessibilityElements];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id __DCAccessibilityStringForVariables(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  objc_opt_class();
  objc_opt_class();
  v11 = [MEMORY[0x277CCAB68] stringWithString:&stru_285C55A80];
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [v10 string];
  }

  v13 = v12;
LABEL_7:
  if ([v13 length])
  {
    [v11 appendString:v13];
  }

  v20 = &a9;
  if (a1)
  {
    v14 = @", ";
  }

  else
  {
    v14 = @" ";
  }

  while (1)
  {
    v15 = v20++;
    v16 = *v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
LABEL_16:
      v18 = v17;
      goto LABEL_18;
    }

    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 string];
      goto LABEL_16;
    }

    v18 = 0;
LABEL_18:
    if (![v18 length])
    {
      goto LABEL_23;
    }

    if ([v18 isEqualToString:@"__DCAccessibilityStringForVariablesSentinel"])
    {
      break;
    }

    if ([v11 length])
    {
      [v11 appendString:v14];
    }

    [v11 appendString:v18];
LABEL_23:
  }

  return v11;
}

CGPath *DCTSDCreatePathFromTransformedRect(const CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGPathAddRect(Mutable, a1, v12);
  return Mutable;
}

float64x2_t DCTSDTransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

CGAffineTransform *DCTSDAffineTransformShear@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  t1.a = 1.0;
  t1.b = a3;
  t1.c = a4;
  __asm { FMOV            V0.2D, #1.0 }

  *&t1.d = _Q0;
  t1.ty = 1.0;
  v9 = a1[1];
  *&v11.a = *a1;
  *&v11.c = v9;
  *&v11.tx = a1[2];
  return CGAffineTransformConcat(a2, &t1, &v11);
}

long double DCTSDTransformAngle(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2) * 57.2957795;
}

double DCTSDTransformIsValid(uint64_t a1)
{
  v1 = fabs(*a1 * *(a1 + 24) - *(a1 + 8) * *(a1 + 16));
  result = 0.0;
  if (v1 >= 0.001 && *&v1 <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1.0;
  }

  return result;
}

CGAffineTransform *DCTSDTransformNormalizeScale@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = 1.0 / sqrt(*(a1 + 8) * *(a1 + 8) + *a1 * *a1);
  v3 = 1.0 / sqrt(*(a1 + 24) * *(a1 + 24) + *(a1 + 16) * *(a1 + 16));
  v4 = *(a1 + 16);
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = *(a1 + 32);
  return CGAffineTransformScale(a2, &v6, v2, v3);
}

BOOL DCTSDIsTransformAxisAlignedWithObjectSize(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL DCTSDIsTransformAxisAlignedWithThreshold(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

BOOL DCTSDIsTransformAxisAligned(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *DCTSDAffineTransformForFlips@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = MEMORY[0x277CBF2C0];
  v14 = *MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v15;
  v16 = *(v13 + 32);
  *(a3 + 32) = v16;
  if (result)
  {
    v31 = v15;
    v32 = v14;
    v17 = a4;
    v18 = a5;
    v30 = v16;
    v19 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MaxX = CGRectGetMaxX(v35);
    *&v34.a = v32;
    *&v34.c = v31;
    *&v34.tx = v30;
    CGAffineTransformTranslate(a3, &v34, MinX + MaxX, 0.0);
    v22 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v22;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, -1.0, 1.0);
    v23 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v23;
    *(a3 + 32) = *&v34.tx;
  }

  if (a2)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    MaxY = CGRectGetMaxY(v37);
    v26 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v26;
    *&v33.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v34, &v33, 0.0, MinY + MaxY);
    v27 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v27;
    *(a3 + 32) = *&v34.tx;
    v28 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v28;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, 1.0, -1.0);
    v29 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v34.tx;
  }

  return result;
}

CGAffineTransform *DCTSDTransformFromTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *DCTSDTransformInTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v7 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v7;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&t1, &v9);
  return CGAffineTransformConcat(a3, &v11, &t1);
}

CGAffineTransform *DCTSDTransformConvertForNewOrigin@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *DCTSDTransformMakeFree@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v18 = DCTSDDistance(a3, a4, a5, a6);
  v38 = a7;
  v19 = DCTSDDistance(a7, a8, a9, a10);
  if (v18 < 0.0001 || v19 < 0.0001)
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    sx = v19 / v18;
    v20 = DCTSDSubtractPoints(a3, a4, a5);
    v22 = DCTSDAngleFromDelta(v20, v21);
    v23 = DCTSDSubtractPoints(a7, a8, a9);
    v25 = DCTSDAngleFromDelta(v23, v24);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v22);
    v26 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v26;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v27 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v27;
    *(a2 + 32) = *&v41.tx;
    v28 = 1.0;
    if (!a1)
    {
      v28 = sx;
    }

    CGAffineTransformMakeScale(&t2, sx, v28);
    v29 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v29;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v30 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v30;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeRotation(&t2, v25);
    v31 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v31;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v32 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v32;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, v38, a8);
    v33 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v33;
    *&t1.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v41, &t1, &t2);
    v35 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v35;
    *(a2 + 32) = *&v41.tx;
  }

  return result;
}

CGFloat DCTSDTransformMakeAxisAligned@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, double a10, double a11, double a12)
{
  v19 = DCTSDDistance(a2, a3, a4, a5);
  v20 = DCTSDDistance(a6, a7, a8, a9);
  if (v19 < 0.0001 || v20 < 0.0001)
  {

    CGAffineTransformMakeTranslation(a1, a6 - a2, a7 - a3);
  }

  else
  {
    v21 = v20 / v19;
    if (v21 >= a10)
    {
      if (v21 > a11)
      {
        v21 = a11 + (v21 - a11) * a12;
      }
    }

    else
    {
      v21 = (v21 - a10) * a12 * 0.5 + a10;
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    CGAffineTransformMakeTranslation(a1, (a2 + a4) * -0.5, (a3 + a5) * -0.5);
    CGAffineTransformMakeScale(&t2, v21, v21);
    v23 = *(a1 + 16);
    *&t1.a = *a1;
    *&t1.c = v23;
    *&t1.tx = *(a1 + 32);
    CGAffineTransformConcat(&v31, &t1, &t2);
    v24 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v24;
    *(a1 + 32) = *&v31.tx;
    CGAffineTransformMakeTranslation(&t2, (a6 + a8) * 0.5, (a7 + a9) * 0.5);
    v25 = *(a1 + 16);
    *&t1.a = *a1;
    *&t1.c = v25;
    *&t1.tx = *(a1 + 32);
    CGAffineTransformConcat(&v31, &t1, &t2);
    v26 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v26;
    result = v31.tx;
    *(a1 + 32) = *&v31.tx;
  }

  return result;
}

CGFloat DCTSDTransformConvertingRectToRectAtPercent@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, double a9)
{
  v14 = DCTSDSubtractPoints(a5, a6, a2);
  v15 = a7 / a3;
  v16 = a8 / a4;
  v18 = DCTSDMultiplyPointScalar(v14, v17, a9);
  v20 = v19;
  v21 = DCTSDInterpolatePoints(1.0, 1.0, v15, v16, a9);
  v23 = v22;
  v24 = MEMORY[0x277CBF2C0];
  v25 = *MEMORY[0x277CBF2C0];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v26;
  v27 = *(v24 + 32);
  *(a1 + 32) = v27;
  *&v32.a = v25;
  *&v32.c = v26;
  *&v32.tx = v27;
  CGAffineTransformTranslate(a1, &v32, v18, v20);
  v28 = *(a1 + 16);
  *&v31.a = *a1;
  *&v31.c = v28;
  *&v31.tx = *(a1 + 32);
  CGAffineTransformScale(&v32, &v31, v21, v23);
  v29 = *&v32.c;
  *a1 = *&v32.a;
  *(a1 + 16) = v29;
  result = v32.tx;
  *(a1 + 32) = *&v32.tx;
  return result;
}

double DCTSD_CGAffineTransformDecompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CGFloat DCTSD_CGAffineTransformCompose@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

double DCTSDTransformDecompose(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v17[9] = *MEMORY[0x277D85DE8];
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v16[2] = a1[2];
  DCTSD_CGAffineTransformDecompose(v16, v17);
  v12 = v17[8];
  v13 = v17[1];
  v14 = v17[2];
  *a2 = v17[7];
  *a3 = v12;
  *a4 = v14;
  result = *v17;
  *a5 = v17[0];
  *a6 = v13;
  return result;
}

uint64_t DCTSDTransform3DDecompose(_OWORD *a1, CGFloat *a2, CGFloat *a3, CGFloat *a4, CGFloat *a5, CGFloat *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a1[5];
  *&v27.m31 = a1[4];
  *&v27.m33 = v12;
  v13 = a1[7];
  *&v27.m41 = a1[6];
  *&v27.m43 = v13;
  v14 = a1[1];
  *&v27.m11 = *a1;
  *&v27.m13 = v14;
  v15 = a1[3];
  *&v27.m21 = a1[2];
  *&v27.m23 = v15;
  v16 = MEMORY[0x24C1F4510](&v27);
  if (v16)
  {
    memset(&v25, 0, sizeof(v25));
    v17 = a1[5];
    *&v27.m31 = a1[4];
    *&v27.m33 = v17;
    v18 = a1[7];
    *&v27.m41 = a1[6];
    *&v27.m43 = v18;
    v19 = a1[1];
    *&v27.m11 = *a1;
    *&v27.m13 = v19;
    v20 = a1[3];
    *&v27.m21 = a1[2];
    *&v27.m23 = v20;
    CATransform3DGetAffineTransform(&v25, &v27);
    v26 = v25;
    DCTSD_CGAffineTransformDecompose(&v26, &v27);
    m31 = v27.m31;
    m12 = v27.m12;
    m13 = v27.m13;
    *a2 = v27.m24;
    *a3 = m31;
    *a4 = m13;
    *a5 = v27.m11;
    *a6 = m12;
  }

  return v16;
}

void DCTSDTransformMixAffineTransforms(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  DCTSD_CGAffineTransformDecompose(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  DCTSD_CGAffineTransformDecompose(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_2492F7A50[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  DCTSD_CGAffineTransformCompose(&v18, a3);
}

BOOL DCTSDTransform3DNearlyEqualToTransform(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[7];
  v11[6] = a2[6];
  v11[7] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v9 = a2[3];
  v11[2] = a2[2];
  v11[3] = v9;
  return DCTSDTransform3DNearlyEqualToTransformWithTolerance(v12, v11, 0.01);
}

void sub_24929F9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24929FE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492A00A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2492A042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2492A06CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2492A1174(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2492A1258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_2492A130C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_2492A1568(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2492A2050(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2492A2338(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t UIAccessibilityLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIAccessibilityLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = ___ZL26UIAccessibilityLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F93F30;
    v5 = 0;
    UIAccessibilityLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = UIAccessibilityLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!UIAccessibilityLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_2492A32C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ICDocCamViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2492B030C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2492B233C(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_2492B26C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_2492B29E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2492B2D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2492BA5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x240], 8);

  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x380], 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__811(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492BC614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v16 + 48));

  _Unwind_Resume(a1);
}

void sub_2492BC9EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2492BE580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2492C1A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);

  _Unwind_Resume(a1);
}

void sub_2492C2524(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2492C2F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v12;

  _Unwind_Resume(a1);
}

void sub_2492C3284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2492C613C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

uint64_t __UIAccessibilitySpeakAndDoNotBeInterrupted(NSString *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v1 = getUIAccessibilitySpeakAndDoNotBeInterruptedSymbolLoc(void)::ptr;
  v8 = getUIAccessibilitySpeakAndDoNotBeInterruptedSymbolLoc(void)::ptr;
  if (!getUIAccessibilitySpeakAndDoNotBeInterruptedSymbolLoc(void)::ptr)
  {
    v2 = UIAccessibilityLibrary();
    v6[3] = dlsym(v2, "UIAccessibilitySpeakAndDoNotBeInterrupted");
    getUIAccessibilitySpeakAndDoNotBeInterruptedSymbolLoc(void)::ptr = v6[3];
    v1 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v1)
  {
    v4 = [ICRemoteDocCamViewController viewDidLoad];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return v1(0);
}

void sub_2492C7D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v14;

  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___ZL26UIAccessibilityLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  UIAccessibilityLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL28getMarkupViewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MarkupUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL19MarkupUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F93F70;
    v6 = 0;
    MarkupUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MarkupUILibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MarkupViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL28getMarkupViewControllerClassv_block_invoke_cold_1();
  }

  getMarkupViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19MarkupUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  MarkupUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL53getUIAccessibilitySpeakAndDoNotBeInterruptedSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = UIAccessibilityLibrary();
  result = dlsym(v2, "UIAccessibilitySpeakAndDoNotBeInterrupted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIAccessibilitySpeakAndDoNotBeInterruptedSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkAXAnnouncementEnteredValidStateSoundSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "kAXAnnouncementEnteredValidStateSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXAnnouncementEnteredValidStateSoundSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXRuntimeLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AXRuntimeLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = ___ZL20AXRuntimeLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F93F88;
    v5 = 0;
    AXRuntimeLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = AXRuntimeLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!AXRuntimeLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL20AXRuntimeLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  AXRuntimeLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL48getkAXAnnouncementExitedValidStateSoundSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "kAXAnnouncementExitedValidStateSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXAnnouncementExitedValidStateSoundSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492CBC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DCDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

void *DCSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *DCProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *DCClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef DCCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t DCCheckedDynamicCast(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      DCCheckedDynamicCast_cold_1(v2, a1, v4);
    }

    return 0;
  }

  return v2;
}

void *DCCheckedProtocolCast(Protocol *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      DCCheckedProtocolCast_cold_1(v4);
    }
  }

  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    v5 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      if (a1)
      {
        Name = protocol_getName(a1);
      }

      else
      {
        Name = "<No protocol supplied>";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 2080;
      v12 = Name;
      _os_log_error_impl(&dword_249253000, v5, OS_LOG_TYPE_ERROR, "Unexpected object type in checked protocol cast %@ expects %s", &v9, 0x16u);
    }

    return 0;
  }

  return a2;
}

id getMarkupViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMarkupViewControllerClass_softClass;
  v7 = getMarkupViewControllerClass_softClass;
  if (!getMarkupViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMarkupViewControllerClass_block_invoke;
    v3[3] = &unk_278F931A0;
    v3[4] = &v4;
    __getMarkupViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2492CC108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMarkupViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MarkupUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MarkupUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F94028;
    v6 = 0;
    MarkupUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (MarkupUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MarkupViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL28getMarkupViewControllerClassv_block_invoke_cold_1();
  }

  getMarkupViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MarkupUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MarkupUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t dc_orientationByRotatingLeft(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_2492F7B60[a1];
  }
}

uint64_t dc_orientationByRotatingRight(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_2492F7BA0[a1];
  }
}

uint64_t dc_clockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_2492F7BE0[a1 - 1];
  }
}

uint64_t dc_counterClockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_2492F7C18[a1 - 1];
  }
}

uint64_t DCTransformFromImageOrientation@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *a2 = *MEMORY[0x277CBF2C0];
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  if (result <= 3)
  {
    if (result != 1)
    {
      if (result != 2)
      {
        if (result != 3)
        {
          return result;
        }

        *a2 = xmmword_2492F7B40;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0x3FF0000000000000;
        goto LABEL_14;
      }

      *a2 = xmmword_2492F7870;
      *(a2 + 16) = xmmword_2492F7B50;
      goto LABEL_18;
    }

    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xBFF0000000000000;
LABEL_13:
    *(a2 + 32) = a3;
    goto LABEL_14;
  }

  if (result <= 5)
  {
    if (result != 4)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0x3FF0000000000000;
      *(a2 + 24) = xmmword_2492F7B50;
LABEL_14:
      *(a2 + 40) = a4;
      return result;
    }

    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
LABEL_18:
    *(a2 + 32) = a3;
    *(a2 + 40) = 0;
    return result;
  }

  if (result == 6 || result == 7)
  {
    *a2 = xmmword_2492F7B40;
    *(a2 + 16) = xmmword_2492F7B50;
    goto LABEL_13;
  }

  return result;
}

__CFString *dc_nonLocalizedOrientationNameForType(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_278F94070[a1];
  }
}

uint64_t dc_orientationFromNonLocalizedName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"DCImageClassOrientationUp"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationDown"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationLeft"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationRight"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationUpMirrored"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationDownMirrored"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationLeftMirrored"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"DCImageClassOrientationRightMirrored"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2492D1F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492D6058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492D7D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492DB234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

double DCTSUFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

double DCTSUClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2492DCA64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2492DCAAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2492DCB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1878);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2492F7C70;
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEE2088;
  v2 = sub_2492ECA14();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2492ECA24();
  v6 = v5;

  v7 = qword_27EEE2088;
  v8 = sub_2492ECA14();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  v10 = sub_2492ECA24();
  v12 = v11;

  *(v0 + 32) = 1;
  *(v0 + 40) = 0xD000000000000022;
  *(v0 + 48) = 0x8000000249304920;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v4;
  *(v0 + 80) = v6;
  *(v0 + 88) = v10;
  *(v0 + 96) = v12;
  v13 = qword_27EEE2088;
  v14 = sub_2492ECA14();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = sub_2492ECA24();
  v18 = v17;

  v19 = qword_27EEE2088;
  v20 = sub_2492ECA14();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = sub_2492ECA24();
  v24 = v23;

  *(v0 + 104) = 0;
  *(v0 + 112) = 0xD000000000000011;
  *(v0 + 120) = 0x8000000249304980;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = v16;
  *(v0 + 152) = v18;
  *(v0 + 160) = v22;
  *(v0 + 168) = v24;
  qword_27EEE2070 = v0;
}

double sub_2492DCD74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1868);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2492F7C80;
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEE2088;
  v2 = sub_2492ECA14();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2492ECA24();
  v6 = v5;

  v7 = qword_27EEE2088;
  v8 = sub_2492ECA14();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  v10 = sub_2492ECA24();
  v12 = v11;

  *(v0 + 32) = xmmword_2492F7C90;
  *(v0 + 48) = 0x8000000249304820;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v10;
  *(v0 + 80) = v12;
  v13 = qword_27EEE2088;
  v14 = sub_2492ECA14();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = sub_2492ECA24();
  v18 = v17;

  v19 = qword_27EEE2088;
  v20 = sub_2492ECA14();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = sub_2492ECA24();
  v24 = v23;

  *(v0 + 88) = xmmword_2492F7CA0;
  *(v0 + 104) = 0xE90000000000006CLL;
  *(v0 + 112) = v16;
  *(v0 + 120) = v18;
  *(v0 + 128) = v22;
  *(v0 + 136) = v24;
  v25 = qword_27EEE2088;
  v26 = sub_2492ECA14();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  v28 = sub_2492ECA24();
  v30 = v29;

  v31 = qword_27EEE2088;
  v32 = sub_2492ECA14();
  v33 = [v31 localizedStringForKey:v32 value:0 table:0];

  v34 = sub_2492ECA24();
  v36 = v35;

  result = 0.0;
  *(v0 + 144) = xmmword_2492F7CB0;
  *(v0 + 160) = 0xEF6C6C69662E6873;
  *(v0 + 168) = v28;
  *(v0 + 176) = v30;
  *(v0 + 184) = v34;
  *(v0 + 192) = v36;
  qword_27EEE2078 = v0;
  return result;
}

void sub_2492DD0A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2492F7CC0;
  v1 = objc_opt_self();
  v2 = [v1 localizedImageFilterNameForType_];
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_2492ECA24();
  v6 = v5;

  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v7 = qword_27EEE2088;
  v8 = sub_2492ECA14();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  v10 = sub_2492ECA24();
  v12 = v11;

  *(v0 + 32) = 1;
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  *(v0 + 56) = v10;
  *(v0 + 64) = v12;
  v13 = [v1 localizedImageFilterNameForType_];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = sub_2492ECA24();
  v17 = v16;

  v18 = qword_27EEE2088;
  v19 = sub_2492ECA14();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  v21 = sub_2492ECA24();
  v23 = v22;

  *(v0 + 72) = 2;
  *(v0 + 80) = v15;
  *(v0 + 88) = v17;
  *(v0 + 96) = v21;
  *(v0 + 104) = v23;
  v24 = [v1 localizedImageFilterNameForType_];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = sub_2492ECA24();
  v28 = v27;

  v29 = qword_27EEE2088;
  v30 = sub_2492ECA14();
  v31 = [v29 localizedStringForKey:v30 value:0 table:0];

  v32 = sub_2492ECA24();
  v34 = v33;

  *(v0 + 112) = 3;
  *(v0 + 120) = v26;
  *(v0 + 128) = v28;
  *(v0 + 136) = v32;
  *(v0 + 144) = v34;
  v35 = [v1 localizedImageFilterNameForType_];
  if (v35)
  {
    v36 = v35;
    v37 = sub_2492ECA24();
    v39 = v38;

    v40 = qword_27EEE2088;
    v41 = sub_2492ECA14();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    v43 = sub_2492ECA24();
    v45 = v44;

    *(v0 + 152) = 0;
    *(v0 + 160) = v37;
    *(v0 + 168) = v39;
    *(v0 + 176) = v43;
    *(v0 + 184) = v45;
    qword_27EEE2080 = v0;
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_2492DD400@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_WORD *sub_2492DD410@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

BOOL sub_2492DD470(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2492DD51C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (qword_27EEE1800 != -1)
  {
    v15 = result;
    swift_once();
    result = v15;
  }

  v3 = *(qword_27EEE2070 + 16);
  if (v3)
  {
    v4 = qword_27EEE2070 + 32;
    while (1)
    {
      *v19 = *v4;
      v5 = *(v4 + 16);
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v21 = *(v4 + 64);
      *&v19[32] = v6;
      v20 = v7;
      *&v19[16] = v5;
      v8 = v19[0];
      if (v19[0] == (result & 1))
      {
        break;
      }

      v4 += 72;
      if (!--v3)
      {
        v9 = *(qword_27EEE2070 + 80);
        v10 = *(qword_27EEE2070 + 48);
        *&v19[32] = *(qword_27EEE2070 + 64);
        v20 = v9;
        *v19 = *(qword_27EEE2070 + 32);
        *&v19[16] = v10;
        v11 = *(qword_27EEE2070 + 96);
        v21 = v11;
        v12 = *(&v9 + 1);
        v13 = v9;
        v14 = *&v19[40];
        v16 = *&v19[8];
        v17 = *&v19[24];
        v8 = v19[0];
        goto LABEL_9;
      }
    }

    v12 = *(&v20 + 1);
    v11 = v21;
    v14 = *&v19[40];
    v13 = v20;
    v16 = *&v19[8];
    v17 = *&v19[24];
LABEL_9:
    result = sub_2492DD778(v19, v18);
    *a2 = v8;
    *(a2 + 8) = v16;
    *(a2 + 24) = v17;
    *(a2 + 40) = v14;
    *(a2 + 48) = v13;
    *(a2 + 56) = v12;
    *(a2 + 64) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2492DD660@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  if (qword_27EEE1808 != -1)
  {
    result = swift_once();
  }

  v4 = *(qword_27EEE2078 + 16);
  v5 = qword_27EEE2078 - 16;
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = (v5 + 56);
    v8 = *(v5 + 48);
    v5 += 56;
    if (v8 == v2)
    {
      v9 = v7 + 1;
      v10 = v7 + 2;
      v11 = v7 + 3;
      v12 = v7 + 4;
      v13 = v7 + 5;
LABEL_9:
      v14 = *v12;
      v15 = *v11;
      v16 = *v10;
      v17 = *v9;
      v18 = *v7;
      v19 = *v13;

      *a2 = v2;
      a2[1] = v18;
      a2[2] = v17;
      a2[3] = v16;
      a2[4] = v15;
      a2[5] = v14;
      a2[6] = v19;
      return result;
    }
  }

  if (v4)
  {
    v7 = (qword_27EEE2078 + 40);
    v9 = (qword_27EEE2078 + 48);
    v2 = *(qword_27EEE2078 + 32);
    v10 = (qword_27EEE2078 + 56);
    v11 = (qword_27EEE2078 + 64);
    v12 = (qword_27EEE2078 + 72);
    v13 = (qword_27EEE2078 + 80);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2492DD7D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2492DD81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2492DD890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2492DD8D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2492DD974(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2492DD994(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_2492DDA10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2492DDAB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2492ECCD4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2492ECCD4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2492DDDAC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2492DDE4C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2492DDBE0(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  sub_2492DDD60();

  v4 = sub_2492ECA64();

  [v3 deactivateConstraints_];

  sub_2492E0CB0(a2);
  sub_2492E103C(a2);
}

void sub_2492DDCC4(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  sub_2492DDD60();

  v4 = sub_2492ECA64();

  [v3 deactivateConstraints_];

  sub_2492E0CB0(a2);
}

unint64_t sub_2492DDD60()
{
  result = qword_27EEE18B0;
  if (!qword_27EEE18B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEE18B0);
  }

  return result;
}

uint64_t sub_2492DDDAC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2492ECCD4();
LABEL_9:
  result = sub_2492ECC44();
  *v1 = result;
  return result;
}

uint64_t sub_2492DDE4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2492ECCD4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2492ECCD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2492DE5B4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18C0);
            v9 = sub_2492DDFCC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2492DDD60();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2492DDFCC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1F43D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2492DE04C;
  }

  __break(1u);
  return result;
}

id sub_2492DE054(void *a1, uint64_t a2)
{
  v4 = sub_2492DEFC0();
  v5 = sub_2492DF1B4();
  v6 = sub_2492DF13C();
  result = [a1 view];
  if (result)
  {
    v8 = result;
    v9 = [result safeAreaLayoutGuide];

    v49 = MEMORY[0x277D84F90];
    if (a2 == 4)
    {
      v48 = v4;
      v29 = &selRef_leadingAnchor;
    }

    else
    {
      if (a2 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2492F7F60;
        v11 = v5;
        v12 = [v11 centerXAnchor];
        v13 = [v9 centerXAnchor];
        v14 = [v12 constraintEqualToAnchor_];

        *(inited + 32) = v14;
        v15 = [v11 bottomAnchor];

        v16 = v6;
        v17 = [v16 topAnchor];
        v18 = [v15 constraintEqualToAnchor:v17 constant:-32.0];

        *(inited + 40) = v18;
        v19 = [v16 centerXAnchor];
        v20 = [v9 centerXAnchor];
        v21 = [v19 constraintEqualToAnchor_];

        *(inited + 48) = v21;
        v22 = v4;
        v23 = [v16 bottomAnchor];

        v24 = [v9 bottomAnchor];
        v25 = [v23 constraintEqualToAnchor:v24 constant:-42.0];

        *(inited + 56) = v25;
        v26 = [v4 topAnchor];
        v27 = [v9 topAnchor];
        v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];

        *(inited + 64) = v28;
        sub_2492DDAB8(inited);
LABEL_8:

        return v49;
      }

      v48 = v4;
      v29 = &selRef_trailingAnchor;
    }

    v30 = [v6 *v29];
    v31 = [v9 *v29];
    v32 = [v30 constraintEqualToAnchor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_2492F7F60;
    v47 = v32;
    v34 = [v6 centerYAnchor];
    v35 = [v9 centerYAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v33 + 32) = v36;
    *(v33 + 40) = v47;
    v37 = v5;
    v38 = [v37 centerXAnchor];
    v39 = [v9 centerXAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v33 + 48) = v40;
    v41 = [v37 topAnchor];

    v42 = [v9 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:16.0];

    *(v33 + 56) = v43;
    v22 = v48;
    v44 = [v48 topAnchor];
    v45 = [v9 topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:16.0];

    *(v33 + 64) = v46;
    sub_2492DDAB8(v33);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_2492DE5B4()
{
  result = qword_27EEE18C8;
  if (!qword_27EEE18C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEE18C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE18C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_2492DE660(void *a1)
{
  v2 = sub_2492DEFC0();
  v3 = sub_2492DF1B4();
  v4 = sub_2492DF13C();
  result = [a1 view];
  if (result)
  {
    v6 = result;
    v7 = [result safeAreaLayoutGuide];

    v8 = sub_2492DF90C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2492F7F70;
    v10 = [v2 topAnchor];
    v11 = [v7 &selRef_setAutoShutterOffView_];
    v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

    *(v9 + 32) = v12;
    v13 = v4;
    v14 = [v13 trailingAnchor];
    v15 = [v7 trailingAnchor];
    v16 = [v14 &selRef_fileManager + 6];

    *(v9 + 40) = v16;
    v17 = [v13 centerYAnchor];
    v18 = [v7 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v9 + 48) = v19;
    v20 = v3;
    v21 = [v20 trailingAnchor];
    v22 = [v7 trailingAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor:v22 constant:-28.0];

    *(v9 + 56) = v23;
    v24 = [v20 bottomAnchor];
    v25 = [v13 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-64.0];

    *(v9 + 64) = v26;
    v27 = v8;
    v28 = [v27 topAnchor];
    v29 = [v13 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:64.0];

    *(v9 + 72) = v30;
    v31 = [v27 trailingAnchor];
    v32 = [v7 trailingAnchor];
    v33 = [v31 constraintLessThanOrEqualToAnchor:v32 constant:-28.0];

    *(v9 + 80) = v33;
    v44 = v9;
    v34 = [v27 centerXAnchor];

    v35 = [v13 centerXAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    LODWORD(v37) = 1148829696;
    [v36 setPriority_];
    v38 = v36;
    MEMORY[0x24C1F41F0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2492ECA74();
    }

    sub_2492ECA84();
    v39 = [v20 centerXAnchor];

    v40 = [v13 centerXAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    LODWORD(v42) = 1148829696;
    [v41 setPriority_];
    v43 = v41;
    MEMORY[0x24C1F41F0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2492ECA74();
    }

    sub_2492ECA84();

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2492DEBE0()
{
  type metadata accessor for CameraCaptureButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EEE2088 = result;
  return result;
}

uint64_t sub_2492DEC38()
{
  v0 = sub_2492EC964();
  __swift_allocate_value_buffer(v0, qword_27EEE18D0);
  v1 = __swift_project_value_buffer(v0, qword_27EEE18D0);
  if (qword_27EEE1828 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EEE19E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2492DED00()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() defaultDeviceWithMediaType_];
    if (v3)
    {
      v4 = v3;
      LOBYTE(v2) = [v3 hasFlash];
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_2492DEE9C(uint64_t a1)
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_2492DEEF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_2492DEFC0()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75780]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setTranslucent_];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2492DF0A4()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureControlsNavigationItem;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureControlsNavigationItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureControlsNavigationItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757A8]) init];
    v5 = sub_2492DFEAC();
    [v4 setLeftBarButtonItem_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2492DF13C()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton);
  }

  else
  {
    type metadata accessor for CameraCaptureButton();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2492DF1B4()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView);
  }

  else
  {
    v4 = sub_2492DF218();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2492DF218()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAxis_];
  [v0 setAlignment_];
  [v0 setDistribution_];
  sub_2492E033C(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  [v0 setSpacing_];
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v0;
}

char *sub_2492DF324()
{
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEE2088;
  v1 = sub_2492ECA14();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2492ECA24();
  v3 = objc_allocWithZone(type metadata accessor for LabelledButton());
  v4 = LabelledButton.init(symbolName:subtitle:)();
  v5 = sub_2492ECA14();
  v6 = [v0 localizedStringForKey:v5 value:0 table:0];

  if (!v6)
  {
    sub_2492ECA24();
    v6 = sub_2492ECA14();
  }

  [v4 setAccessibilityLabel_];

  v7 = sub_2492ECA14();
  v8 = [v0 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    sub_2492ECA24();
    v8 = sub_2492ECA14();
  }

  [v4 setAccessibilityHint_];

  return v4;
}

char *sub_2492DF54C()
{
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEE2088;
  v1 = sub_2492ECA14();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2492ECA24();
  v3 = objc_allocWithZone(type metadata accessor for LabelledButton());
  v4 = LabelledButton.init(symbolName:subtitle:)();
  v5 = sub_2492ECA14();
  v6 = [v0 localizedStringForKey:v5 value:0 table:0];

  if (!v6)
  {
    sub_2492ECA24();
    v6 = sub_2492ECA14();
  }

  [v4 setAccessibilityLabel_];

  v7 = sub_2492ECA14();
  v8 = [v0 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    sub_2492ECA24();
    v8 = sub_2492ECA14();
  }

  [v4 setAccessibilityHint_];

  return v4;
}

char *sub_2492DF780()
{
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v0 = qword_27EEE2088;
  v1 = sub_2492ECA14();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2492ECA24();
  v3 = objc_allocWithZone(type metadata accessor for LabelledButton());
  v4 = LabelledButton.init(symbolName:subtitle:)();
  v5 = sub_2492ECA14();
  v6 = [v0 localizedStringForKey:v5 value:0 table:0];

  if (!v6)
  {
    sub_2492ECA24();
    v6 = sub_2492ECA14();
  }

  [v4 setAccessibilityHint_];

  return v4;
}

id sub_2492DF90C()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2492DFA04()
{
  type metadata accessor for ModeSelectionButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEE2088;
  v2 = sub_2492ECA14();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    sub_2492ECA24();
    v3 = sub_2492ECA14();
  }

  [v0 setTitle:v3 forState:0];

  v4 = v0;
  v5 = sub_2492ECA14();
  v6 = [v1 localizedStringForKey:v5 value:0 table:0];

  if (!v6)
  {
    sub_2492ECA24();
    v6 = sub_2492ECA14();
  }

  [v4 setAccessibilityLabel_];

  v7 = sub_2492ECA14();
  v8 = [v1 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    sub_2492ECA24();
    v8 = sub_2492ECA14();
  }

  [v4 setAccessibilityHint_];

  return v4;
}

id sub_2492DFC34(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2492DFC94()
{
  type metadata accessor for ModeSelectionButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEE2088;
  v2 = sub_2492ECA14();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    sub_2492ECA24();
    v3 = sub_2492ECA14();
  }

  [v0 setTitle:v3 forState:0];

  v4 = v0;
  v5 = sub_2492ECA14();
  v6 = [v1 localizedStringForKey:v5 value:0 table:0];

  if (!v6)
  {
    sub_2492ECA24();
    v6 = sub_2492ECA14();
  }

  [v4 setAccessibilityLabel_];

  v7 = sub_2492ECA14();
  v8 = [v1 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    sub_2492ECA24();
    v8 = sub_2492ECA14();
  }

  [v4 setAccessibilityHint_];

  return v4;
}

id sub_2492DFEAC()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeBarButtonItem);
  }

  else
  {
    sub_2492E3B3C(0, &qword_27EEE18F8);
    v4 = v0;
    sub_2492E1364();
    v5 = sub_2492ECAD4();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2492DFF40()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneBarButtonItem);
  }

  else
  {
    sub_2492E3B3C(0, &qword_27EEE18F8);
    v4 = v0;
    sub_2492E1344();
    v5 = sub_2492ECAD4();
    [v5 setStyle_];
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2492E0030()
{
  v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2492E00C8(char a1)
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2492F8020;
    *(v4 + 32) = sub_2492DFF40();
    v5 = sub_2492DF0A4();
    sub_2492E3B3C(0, &qword_27EEE18F8);
    v6 = sub_2492ECA64();
  }

  else
  {
    v5 = sub_2492DF0A4();
    v6 = 0;
  }

  [v5 setRightBarButtonItems:v6 animated:1];
}

void (*sub_2492E01BC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2492E0244;
}

void sub_2492E0244(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + v3[4]))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_2492F8020;
      *(v4 + 32) = sub_2492DFF40();
      v5 = sub_2492DF0A4();
      sub_2492E3B3C(0, &qword_27EEE18F8);
      v6 = sub_2492ECA64();
    }

    else
    {
      v5 = sub_2492DF0A4();
      v6 = 0;
    }

    [v5 setRightBarButtonItems:v6 animated:1];
  }

  free(v3);
}

uint64_t sub_2492E033C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___layoutStrategy;
  swift_beginAccess();
  sub_2492E3828(v1 + v3, &v10);
  if (v11)
  {
    return sub_2492E396C(&v10, a1);
  }

  sub_2492E37C0(&v10);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = type metadata accessor for iPadLayoutStrategy();
    v8 = &off_285C55358;
  }

  else
  {
    v7 = type metadata accessor for iPhoneLayoutStrategy();
    v8 = &off_285C55380;
  }

  v9 = swift_allocObject();
  a1[3] = v7;
  a1[4] = v8;
  *a1 = v9;
  sub_2492E3898(a1, &v10);
  swift_beginAccess();
  sub_2492E38FC(&v10, v1 + v3);
  return swift_endAccess();
}

void sub_2492E0474()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = sub_2492DEFC0();
  [v3 addSubview_];

  v5 = *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2492F8020;
  v7 = v5;
  *(v6 + 32) = sub_2492DF0A4();
  sub_2492E3B3C(0, &qword_27EEE1908);
  v8 = sub_2492ECA64();

  [v7 setItems:v8 animated:0];

  sub_2492E0848();
  v9 = [v1 view];
  if (!v9)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 window];

  if (v11 && (v12 = [v11 windowScene], v11, v12))
  {
    v13 = [v12 effectiveGeometry];

    v14 = [v13 interfaceOrientation];
  }

  else
  {
    v14 = 1;
  }

  sub_2492E0CB0(v14);
  sub_2492E103C(v14);
  sub_2492E1720();
  sub_2492E20AC(0x10000);
  if (sub_2492DED00())
  {
    v15 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
    swift_beginAccess();
    v16 = *&v1[v15];
    if (v16)
    {
      v17 = [v16 overlayFlashMode];
      if (v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash])
      {
        sub_2492DD660(v17, v30);
        v18 = sub_2492DF304();
        sub_2492E75BC(v30[1], v30[2], 0);

        sub_2492E3414(v30);
      }
    }
  }

  v19 = objc_opt_self();
  v20 = [v19 currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 1)
  {
    v22 = [v19 currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == 1)
    {
      v24 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
      swift_beginAccess();
      v25 = *&v1[v24];
      if (v25)
      {
        v26 = [v25 overlayAutoEnabled];
      }

      else
      {
        v26 = 1;
      }

      v27 = sub_2492DF9E4();
      [v27 setSelected_];

      v28 = sub_2492DFC14();
      [v28 setSelected_];
    }
  }
}

id sub_2492E0848()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  v4 = sub_2492DF13C();
  [v3 addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  v6 = sub_2492DF1B4();
  [v5 addSubview_];

  v7 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView;
  v8 = *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView];
  sub_2492E033C(v35);
  v9 = v36;
  v10 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  [v8 setAxis_];

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (sub_2492DED00())
  {
    v11 = *&v1[v7];
    v12 = sub_2492DF304();
    [v11 addArrangedSubview_];

    if (v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash])
    {
      sub_2492E1B08(0, 1);
    }
  }

  v13 = *&v1[v7];
  v14 = sub_2492DF52C();
  [v13 addArrangedSubview_];

  sub_2492E20AC(0x10000);
  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 != 1)
  {
    v31 = *&v1[v7];
    v32 = sub_2492DF760();
    [v31 addArrangedSubview_];

    [*&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoButton] addTarget:v1 action:sel_autoButtonTapped forControlEvents:64];
    return [*&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton] addTarget:v1 action:sel_captureButtonTapped forControlEvents:64];
  }

  v18 = sub_2492DF760();
  [v18 setHidden_];

  result = [v1 view];
  if (result)
  {
    v19 = result;
    v20 = sub_2492DF90C();
    [v19 addSubview_];

    v21 = OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView;
    v22 = *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView];
    v23 = sub_2492DF9E4();
    [v22 addArrangedSubview_];

    v24 = *&v1[v21];
    v25 = sub_2492DFC14();
    [v24 addArrangedSubview_];

    [*&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoModeButton] addTarget:v1 action:sel_autoModeButtonTapped forControlEvents:64];
    [*&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___manualModeButton] addTarget:v1 action:sel_manualModeButtonTapped forControlEvents:64];
    v26 = [v15 currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (v27 == 1)
    {
      v28 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
      swift_beginAccess();
      v29 = *&v1[v28];
      if (v29)
      {
        v30 = [v29 overlayAutoEnabled];
      }

      else
      {
        v30 = 1;
      }

      v33 = sub_2492DF9E4();
      [v33 setSelected_];

      v34 = sub_2492DFC14();
      [v34 setSelected_];
    }

    return [*&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton] addTarget:v1 action:sel_captureButtonTapped forControlEvents:64];
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2492E0CB0(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2492F8030;
  v5 = sub_2492DEFC0();
  v6 = [v5 leadingAnchor];

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 leadingAnchor];

    v10 = [v6 constraintEqualToAnchor_];
    *(v4 + 32) = v10;
    v11 = [*&v2[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar] trailingAnchor];
    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 trailingAnchor];

      v15 = [v11 constraintEqualToAnchor_];
      *(v4 + 40) = v15;
      sub_2492E033C(v21);
      v16 = v22;
      v17 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v18 = (*(v17 + 8))(v2, a1, v16, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v21[0] = v4;
      sub_2492DDAB8(v18);
      *&v2[OBJC_IVAR___DCCaptureControlsOverlayViewController_staticConstraints] = v21[0];

      v19 = objc_opt_self();
      sub_2492E3B3C(0, &qword_27EEE18B0);

      v20 = sub_2492ECA64();

      [v19 activateConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2492E0F10(uint64_t a1, double a2)
{
  sub_2492E033C(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 32))(v2, a1, v5, v6, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

void sub_2492E103C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2492F8040;
  *(inited + 32) = sub_2492DF304();
  *(inited + 40) = sub_2492DF52C();
  v3 = 0;
  *(inited + 48) = sub_2492DF760();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1F43D0](v3, inited);
      goto LABEL_5;
    }

    if (v3 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(inited + 8 * v3 + 32);
LABEL_5:
    v5 = v4;
    ++v3;
    IsLandscape = UIInterfaceOrientationIsLandscape(a1);
    sub_2492E7434(IsLandscape);

    if (v3 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

id sub_2492E1144(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return [v1 setOverrideUserInterfaceStyle_];
}

void sub_2492E126C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v1 impactOccurred];
  v2 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    [v3 overlayCaptureButtonTapped_];
  }
}

id sub_2492E1384(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    sub_2492E3B3C(0, &qword_27EEE1998);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    v6 = sub_2492ECB04();
    v7 = *(v1 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

void sub_2492E1468(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7)
    {
      [v7 *a3];
    }
  }
}

void sub_2492E1608(char a1)
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if ([v4 overlayAutoEnabled] == (a1 & 1))
    {
      return;
    }

    v5 = *(v1 + v3);
    if (v5)
    {
      [v5 overlayAutoButtonTapped_];
    }
  }

  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = *(v1 + v3);
    if (v8)
    {
      v9 = [v8 overlayAutoEnabled];
    }

    else
    {
      v9 = 1;
    }

    v10 = sub_2492DF9E4();
    [v10 setSelected_];

    v11 = sub_2492DFC14();
    [v11 setSelected_];
  }
}

void sub_2492E1720()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 overlayAutoEnabled];
  }

  else
  {
    v4 = 1;
  }

  sub_2492DD51C(v4, v34);
  v5 = sub_2492DF760();
  v6 = sub_2492ECA14();
  [v5 setAccessibilityLabel_];

  v7 = v36;
  if (v36)
  {
    v8 = v35;

    sub_2492E3990(v34);
    v9 = *(v1 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoButton);
    sub_2492E75BC(v8, v7, 0);
  }

  else
  {
    v17 = v38;
    if (v38)
    {
      v18 = v37;

      sub_2492E3990(v34);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v21 = sub_2492ECA14();
      v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];

      if (v22)
      {

        v23 = *(v1 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoButton);
        v24 = v22;
        sub_2492E6760(v22);
      }

      else
      {
        if (qword_27EEE1820 != -1)
        {
          swift_once();
        }

        v27 = sub_2492EC964();
        __swift_project_value_buffer(v27, qword_27EEE18D0);

        v28 = sub_2492EC944();
        v29 = sub_2492ECAB4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v33 = v31;
          *v30 = 136315138;
          v32 = sub_2492E2E6C(v18, v17, &v33);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_249253000, v28, v29, "Unable to find image from bundle for name: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x24C1F5BA0](v31, -1, -1);
          MEMORY[0x24C1F5BA0](v30, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_2492E3990(v34);
    }
  }

  v10 = objc_opt_self();
  v11 = [v10 currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v13 = [v10 currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 1)
    {
      v15 = *(v1 + v2);
      if (v15)
      {
        v16 = [v15 overlayAutoEnabled];
      }

      else
      {
        v16 = 1;
      }

      v25 = sub_2492DF9E4();
      [v25 setSelected_];

      v26 = sub_2492DFC14();
      [v26 setSelected_];
    }
  }
}

void sub_2492E1B08(id a1, char a2)
{
  if (sub_2492DED00())
  {
    if (a2)
    {
      v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
      swift_beginAccess();
      v4 = *(v31 + v3);
      if (v4)
      {
        a1 = [v4 overlayFlashMode];
      }

      else
      {
        a1 = 0;
      }
    }

    if (qword_27EEE1808 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v5 = qword_27EEE2078;
      v6 = *(qword_27EEE2078 + 16);
      v7 = MEMORY[0x277D84F90];
      if (!v6)
      {
        break;
      }

      v33 = MEMORY[0x277D84F90];
      sub_2492ECC84();
      v8 = *(v5 + 16);
      sub_2492E3B3C(0, &qword_27EEE1998);
      v28 = objc_opt_self();
      v9 = v8 - 1;
      v10 = v5 + 56 * v8 - 24;
      v29 = v5;
      while (v9 != -1)
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v11 = *(v10 + 48);
        v12 = *(v10 + 32);
        v13 = *v10;
        v35 = *(v10 + 16);
        v36 = v12;
        v34 = v13;
        v37 = v11;
        v14 = v13 == a1;
        sub_2492E3710(&v34, v32);

        v15 = sub_2492ECA14();
        v16 = [v28 _systemImageNamed_];

        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        v19 = v35;
        *(v18 + 24) = v34;
        *(v18 + 40) = v19;
        *(v18 + 56) = v36;
        *(v18 + 72) = v37;
        sub_2492E3710(&v34, v32);
        v20 = sub_2492ECB04();
        v21 = sub_2492ECA14();
        [v20 setAccessibilityIdentifier_];

        sub_2492E3414(&v34);
        sub_2492ECC64();
        sub_2492ECC94();
        v5 = v29;
        sub_2492ECCA4();
        sub_2492ECC74();
        --v9;
        v10 -= 56;
        if (!--v6)
        {
          v7 = v33;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_13:
    if (qword_27EEE1818 != -1)
    {
      swift_once();
    }

    v22 = qword_27EEE2088;
    v23 = sub_2492ECA14();
    v24 = [v22 localizedStringForKey:v23 value:0 table:0];

    sub_2492ECA24();
    if (v7 >> 62)
    {
      sub_2492E3B3C(0, &qword_27EEE19A0);

      v25 = sub_2492ECCC4();
    }

    else
    {

      sub_2492ECD04();
      sub_2492E3B3C(0, &qword_27EEE19A0);
      v25 = v7;
    }

    sub_2492E3B3C(0, &qword_27EEE19A8);
    v26 = sub_2492ECAE4();
    v27 = sub_2492DF304();
    [v27 setMenu_];

    [*(v31 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___flashButton) setShowsMenuAsPrimaryAction_];
  }
}

void sub_2492E1FBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *a3;
    if (sub_2492DED00())
    {
      v7 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
      swift_beginAccess();
      v8 = *&v5[v7];
      if (v8)
      {
        [v8 setOverlayFlashMode_];
      }

      if (v5[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash])
      {
        sub_2492DD660(v6, v10);
        v9 = sub_2492DF304();
        sub_2492E75BC(v10[1], v10[2], 0);

        sub_2492E3414(v10);
      }

      sub_2492E1B08(v6, 0);
    }
  }
}

void sub_2492E20AC(int a1)
{
  v36 = a1;
  if ((a1 & 0x10000) != 0)
  {
    v1 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
    swift_beginAccess();
    v2 = *(v37 + v1);
    if (v2)
    {
      v36 = [v2 overlayFilter];
    }

    else
    {
      v36 = 1;
    }
  }

  if (qword_27EEE1810 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = qword_27EEE2080;
    v4 = *(qword_27EEE2080 + 16);
    v5 = MEMORY[0x277D84F90];
    if (!v4)
    {
      break;
    }

    v39 = MEMORY[0x277D84F90];
    sub_2492ECC84();
    v6 = *(v3 + 16);
    sub_2492E3B3C(0, &qword_27EEE1998);
    v7 = 0;
    v33 = v3 + 32;
    v34 = objc_opt_self();
    v35 = v6;
    v31 = v4;
    v32 = v3;
    while (v7 != v35)
    {
      if (--v6 >= *(v3 + 16))
      {
        goto LABEL_27;
      }

      v14 = (v33 + 40 * v6);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = v14[4];

      v20 = [v34 localizedImageFilterNameForType_];
      v38 = v16;
      if (v20)
      {
        v8 = v20;
        sub_2492ECA24();
      }

      else
      {
        v21 = *(v3 + 16);
        v22 = v21 + 1;
        v23 = v3;
        while (--v22)
        {
          v24 = *(v23 + 32) == v15;
          v23 += 40;
          if (v24)
          {
            goto LABEL_19;
          }
        }

        if (!v21)
        {
          goto LABEL_28;
        }

LABEL_19:
      }

      v9 = v15 == v36;
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v15;
      *(v11 + 26) = v40;
      *(v11 + 30) = v41;
      *(v11 + 32) = v38;
      *(v11 + 40) = v17;
      *(v11 + 48) = v18;
      *(v11 + 56) = v19;

      v12 = sub_2492ECB04();
      v13 = sub_2492ECA14();
      [v12 setAccessibilityLabel_];

      ++v7;
      [v12 setState_];

      sub_2492ECC64();
      sub_2492ECC94();
      sub_2492ECCA4();
      sub_2492ECC74();
      v3 = v32;
      if (v7 == v31)
      {
        v5 = v39;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_21:
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v25 = qword_27EEE2088;
  v26 = sub_2492ECA14();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  sub_2492ECA24();
  if (v5 >> 62)
  {
    sub_2492E3B3C(0, &qword_27EEE19A0);

    v28 = sub_2492ECCC4();
  }

  else
  {

    sub_2492ECD04();
    sub_2492E3B3C(0, &qword_27EEE19A0);
    v28 = v5;
  }

  sub_2492E3B3C(0, &qword_27EEE19A8);
  v29 = sub_2492ECAE4();
  v30 = sub_2492DF52C();
  [v30 setMenu_];

  [*(v37 + OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___filterButton) setShowsMenuAsPrimaryAction_];
}

void sub_2492E25C8(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *a3;
    v7 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
    swift_beginAccess();
    v8 = *&v5[v7];
    if (v8)
    {
      [v8 setOverlayFilter_];
    }

    sub_2492E20AC(v6);
  }
}

void sub_2492E266C(char a1)
{
  v3 = objc_opt_self();
  v4 = [v3 areAnimationsEnabled];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = v1;
  v7 = sub_2492DF13C();
  [v7 setUserInteractionEnabled_];

  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2492E34AC;
    *(v8 + 24) = v5;
    v11[4] = sub_2492E3514;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2492E2830;
    v11[3] = &block_descriptor;
    v9 = _Block_copy(v11);

    [v3 animateWithDuration:v9 animations:0.3];

    _Block_release(v9);
  }

  else
  {
    v10 = 0.5;
    if (a1)
    {
      v10 = 1.0;
    }

    [*&v6[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton] setAlpha_];
  }
}

uint64_t sub_2492E2830(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id CaptureControlsOverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2492ECA14();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CaptureControlsOverlayViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR___DCCaptureControlsOverlayViewController_updateButtonTitlesOnModeChange] = 0;
  v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash] = 2;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureControlsNavigationItem] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___flashButton] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___filterButton] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoButton] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoModeButton] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___manualModeButton] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeBarButtonItem] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneBarButtonItem] = 0;
  v3[OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController_staticConstraints] = MEMORY[0x277D84F90];
  v5 = &v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___layoutStrategy];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneAction] = 0;
  *&v3[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeAction] = 0;
  if (a2)
  {
    v6 = sub_2492ECA14();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id CaptureControlsOverlayViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CaptureControlsOverlayViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR___DCCaptureControlsOverlayViewController_updateButtonTitlesOnModeChange] = 0;
  v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___deviceHasFlash] = 2;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureNavigationBar] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureControlsNavigationItem] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___captureButton] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___controlsStackView] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___flashButton] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___filterButton] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoButton] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___modeSelectionStackView] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___autoModeButton] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___manualModeButton] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeBarButtonItem] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneBarButtonItem] = 0;
  v1[OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController_staticConstraints] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___layoutStrategy];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___doneAction] = 0;
  *&v1[OBJC_IVAR___DCCaptureControlsOverlayViewController____lazy_storage___closeAction] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id CaptureControlsOverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2492E2E6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2492E2F38(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2492E3A68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2492E2F38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2492E3044(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2492ECC54();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2492E3044(uint64_t a1, unint64_t a2)
{
  v3 = sub_2492E3090(a1, a2);
  sub_2492E31C0(&unk_285C54FA0);
  return v3;
}

uint64_t sub_2492E3090(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2492E32AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2492ECC54();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2492ECA44();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2492E32AC(v10, 0);
        result = sub_2492ECC24();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2492E31C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2492E3320(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2492E32AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE19B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2492E3320(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE19B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2492E34AC()
{
  v1 = *(v0 + 24);
  v2 = sub_2492DF13C();
  v4 = v2;
  v3 = 0.5;
  if (v1)
  {
    v3 = 1.0;
  }

  [v2 setAlpha_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2492E37C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE19B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2492E3828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE19B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2492E3898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2492E38FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE19B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2492E396C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2492E3A68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2492E3B3C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t GradientBlurBar.GradientBlurDirection.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2492E3B98()
{
  v1 = *v0;
  sub_2492ECD14();
  MEMORY[0x24C1F44C0](v1);
  return sub_2492ECD34();
}

uint64_t sub_2492E3C0C()
{
  v1 = *v0;
  sub_2492ECD14();
  MEMORY[0x24C1F44C0](v1);
  return sub_2492ECD34();
}

uint64_t *sub_2492E3C50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id GradientBlurBar.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

char *GradientBlurBar.init(effect:)(void *a1)
{
  *&v1[OBJC_IVAR___DCGradientBlurBar_direction] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GradientBlurBar();
  v3 = objc_msgSendSuper2(&v7, sel_initWithEffect_, a1);
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 effect];
  if (!v4)
  {
    v5 = sub_2492E4874(*&v3[OBJC_IVAR___DCGradientBlurBar_direction], 0.5, 0.0, 0.5, 1.0);
    v4 = [objc_opt_self() effectWithVariableBlurRadius:v5 imageMask:5.0];

    [v3 setEffect_];
  }

  return v3;
}

id GradientBlurBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GradientBlurBar.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DCGradientBlurBar_direction] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for GradientBlurBar();
  v3 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [v5 effect];
    if (!v6)
    {
      v7 = sub_2492E4874(*&v5[OBJC_IVAR___DCGradientBlurBar_direction], 0.5, 0.0, 0.5, 1.0);
      v6 = [objc_opt_self() effectWithVariableBlurRadius:v7 imageMask:5.0];

      [v5 setEffect_];
    }

    a1 = v6;
  }

  return v4;
}

char *GradientBlurBar.__allocating_init(direction:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DCGradientBlurBar_direction] = 0;
  v10.receiver = v3;
  v10.super_class = v1;
  v4 = objc_msgSendSuper2(&v10, sel_initWithEffect_, 0);
  v5 = OBJC_IVAR___DCGradientBlurBar_direction;
  *&v4[OBJC_IVAR___DCGradientBlurBar_direction] = a1;
  v6 = v4;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v6 effect];
  if (!v7)
  {
    v8 = sub_2492E4874(*&v4[v5], 0.5, 0.0, 0.5, 1.0);
    v7 = [objc_opt_self() effectWithVariableBlurRadius:v8 imageMask:5.0];

    [v6 setEffect_];
  }

  return v6;
}

char *GradientBlurBar.init(direction:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DCGradientBlurBar_direction] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for GradientBlurBar();
  v3 = objc_msgSendSuper2(&v9, sel_initWithEffect_, 0);
  v4 = OBJC_IVAR___DCGradientBlurBar_direction;
  *&v3[OBJC_IVAR___DCGradientBlurBar_direction] = a1;
  v5 = v3;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 effect];
  if (!v6)
  {
    v7 = sub_2492E4874(*&v3[v4], 0.5, 0.0, 0.5, 1.0);
    v6 = [objc_opt_self() effectWithVariableBlurRadius:v7 imageMask:5.0];

    [v5 setEffect_];
  }

  return v5;
}

void sub_2492E422C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 effect];
  if (!v1)
  {
    v2 = sub_2492E4874(*&v0[OBJC_IVAR___DCGradientBlurBar_direction], 0.5, 0.0, 0.5, 1.0);
    v3 = [objc_opt_self() effectWithVariableBlurRadius:v2 imageMask:5.0];

    [v0 setEffect_];
    v1 = v3;
  }
}

id static GradientBlurBar.fauxGradientBlurEffect(direction:)(uint64_t a1)
{
  v1 = sub_2492E4874(a1, 0.5, 0.0, 0.5, 1.0);
  v2 = [objc_opt_self() effectWithVariableBlurRadius:v1 imageMask:5.0];

  return v2;
}

void sub_2492E4388(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v18 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v18 setType_];
  [v18 setBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE19D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2492F80E0;
  v20 = objc_opt_self();
  v21 = [v20 blackColor];
  v22 = [v21 CGColor];

  type metadata accessor for CGColor(0);
  v24 = v23;
  *(v19 + 56) = v23;
  *(v19 + 32) = v22;
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0745 alpha:0.3];
  v26 = [v25 CGColor];

  *(v19 + 88) = v24;
  *(v19 + 64) = v26;
  v27 = [v20 &selRef_bottomAnchor + 5];
  v28 = [v27 colorWithAlphaComponent_];

  v29 = [v28 CGColor];
  *(v19 + 120) = v24;
  *(v19 + 96) = v29;
  v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.235 alpha:0.08];
  v31 = [v30 CGColor];

  *(v19 + 152) = v24;
  *(v19 + 128) = v31;
  v32 = [v20 blackColor];
  v33 = [v32 colorWithAlphaComponent_];

  v34 = [v33 CGColor];
  *(v19 + 184) = v24;
  *(v19 + 160) = v34;
  v35 = sub_2492ECA64();

  [v18 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2492F7F60;
  *(v36 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v36 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v36 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v36 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v36 + 64) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2492E4BB4();
  v37 = sub_2492ECA64();

  [v18 setLocations_];

  if (a2)
  {
    v38 = a9;
  }

  else
  {
    v38 = a7;
  }

  if (a2)
  {
    v39 = a10;
  }

  else
  {
    v39 = a8;
  }

  if (a2)
  {
    a9 = a7;
    a10 = a8;
  }

  [v18 setStartPoint_];
  [v18 setEndPoint_];
  v42 = [a1 CGContext];
  [v18 renderInContext_];
}

void sub_2492E47F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id GradientBlurBar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientBlurBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2492E4874(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  v11 = [objc_opt_self() currentTraitCollection];
  [v11 displayScale];
  v13 = v12;

  [v10 setScale_];
  [v10 setPreferredRange_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds:v10 format:{0.0, 0.0, 100.0, 100.0}];
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = vdupq_n_s64(0x4059000000000000uLL);
  *(v15 + 48) = a1;
  *(v15 + 56) = a4;
  *(v15 + 64) = a5;
  *(v15 + 72) = a2;
  *(v15 + 80) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2492E4B5C;
  *(v16 + 24) = v15;
  v20[4] = sub_2492E4B74;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_2492E47F4;
  v20[3] = &block_descriptor_0;
  v17 = _Block_copy(v20);

  v18 = [v14 imageWithActions_];

  _Block_release(v17);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_2492E4ACC()
{
  result = qword_27EEE19C8;
  if (!qword_27EEE19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE19C8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2492E4BB4()
{
  result = qword_27EEE19D8;
  if (!qword_27EEE19D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEE19D8);
  }

  return result;
}

uint64_t sub_2492E4C00()
{
  v0 = sub_2492EC964();
  __swift_allocate_value_buffer(v0, qword_27EEE19E0);
  __swift_project_value_buffer(v0, qword_27EEE19E0);
  return sub_2492EC954();
}

uint64_t static Logger.liquidGlass.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEE1828 != -1)
  {
    swift_once();
  }

  v2 = sub_2492EC964();
  v3 = __swift_project_value_buffer(v2, qword_27EEE19E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_2492E4D28()
{
  result = [objc_opt_self() systemGray6Color];
  qword_27EEE2090 = result;
  return result;
}

double sub_2492E4D64()
{
  result = *MEMORY[0x277D74418];
  qword_27EEE2098 = *MEMORY[0x277D74418];
  return result;
}

double sub_2492E4D90()
{
  v0 = objc_allocWithZone(type metadata accessor for LabelledButton());
  v1 = LabelledButton.init(symbolName:subtitle:)();
  [v1 sizeThatFits_];
  v3 = v2;
  v5 = v4;

  result = v5 + 8.0;
  qword_27EEE20A8 = v3;
  *&qword_27EEE20B0 = v5 + 8.0;
  return result;
}

void sub_2492E4E1C()
{
  v0 = objc_allocWithZone(type metadata accessor for LabelledButton());
  v1 = LabelledButton.init(symbolName:subtitle:)();
  [v1 sizeThatFits_];
  v3 = v2;
  v5 = v4;

  qword_27EEE20B8 = v3;
  qword_27EEE20C0 = v5;
}

id sub_2492E4EFC()
{
  if (qword_27EEE1830 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEE2090;

  return v1;
}

double sub_2492E4FCC()
{
  if (qword_27EEE1848 != -1)
  {
    swift_once();
  }

  return *&qword_27EEE20B0 + 48.0;
}

double sub_2492E5028(void *a1, char a2)
{
  if (a2)
  {
    v2 = 48.0;
  }

  else
  {
    if (qword_27EEE1848 != -1)
    {
      v5 = a1;
      swift_once();
      a1 = v5;
    }

    v2 = *&qword_27EEE20B0 + 48.0;
  }

  [a1 safeAreaInsets];
  return v2 + v3;
}

double sub_2492E51E4()
{
  if (qword_27EEE1850 != -1)
  {
    swift_once();
  }

  return *&qword_27EEE20C0 + 166.0;
}

double sub_2492E52FC()
{
  if (qword_27EEE1840 != -1)
  {
    swift_once();
  }

  return *&qword_27EEE20A0;
}

id DCLiquidGlassConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DCLiquidGlassConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DCLiquidGlassConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DCLiquidGlassConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DCLiquidGlassConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2492E5590()
{
  v0 = sub_2492EC9B4();
  __swift_allocate_value_buffer(v0, qword_27EEE19F8);
  __swift_project_value_buffer(v0, qword_27EEE19F8);
  return sub_2492EC9C4();
}

uint64_t sub_2492E55F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2492EC924();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_2492E62D4();
  return sub_2492EC934();
}

uint64_t static UIButton.Configuration.dc_selectedModeSelection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_2492ECB54();
  if (qword_27EEE1858 != -1)
  {
    swift_once();
  }

  v3 = sub_2492EC9B4();
  v4 = __swift_project_value_buffer(v3, qword_27EEE19F8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  sub_2492ECB74();
  return sub_2492ECB44();
}

uint64_t static UIButton.Configuration.dc_unselectedModeSelection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  sub_2492ECB34();
  if (qword_27EEE1858 != -1)
  {
    swift_once();
  }

  v3 = sub_2492EC9B4();
  v4 = __swift_project_value_buffer(v3, qword_27EEE19F8);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  sub_2492ECB74();
  sub_2492ECB44();
  v6 = [objc_opt_self() systemWhiteColor];
  return sub_2492ECB64();
}

uint64_t sub_2492E5A68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_2492ECBC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2492ECBB4();
  sub_2492ECB44();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_2492ECBE4();
  v8 = [v0 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    if (qword_27EEE1838 != -1)
    {
      v14 = v10;
      swift_once();
      v10 = v14;
    }

    v11 = [v10 systemFontOfSize:11.0 weight:*&qword_27EEE2098];
    [v9 setFont_];
  }

  v12 = [v0 layer];
  [v12 setMasksToBounds_];

  sub_2492E5ED8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2492E5ED8()
{
  v1 = sub_2492EC9A4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_2492ECBD4();
  v11 = sub_2492ECBC4();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11))
  {
    sub_2492E61C0(v10, v5);
    sub_2492ECBE4();
    sub_2492E6230(v10);
  }

  else
  {
    v13 = [v0 isSelected];
    sub_2492EC994();
    if (v13)
    {
      v14 = [objc_opt_self() clearColor];
      sub_2492EC984();
      v15 = [objc_opt_self() effectWithStyle_];
      sub_2492EC974();
    }

    sub_2492ECB14();
    sub_2492ECBE4();
  }

  sub_2492ECBD4();
  if (v12(v8, 1, v11))
  {
    sub_2492E61C0(v8, v5);
    sub_2492ECBE4();
    return sub_2492E6230(v8);
  }

  else
  {
    v17 = [objc_opt_self() whiteColor];
    sub_2492ECB64();
    return sub_2492ECBE4();
  }
}

id sub_2492E6168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModeSelectionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2492E61C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2492E6230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2492E62D4()
{
  result = qword_27EEE1A20;
  if (!qword_27EEE1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE1A20);
  }

  return result;
}

uint64_t sub_2492E6384()
{
  v0 = sub_2492EC964();
  __swift_allocate_value_buffer(v0, qword_27EEE1A28);
  v1 = __swift_project_value_buffer(v0, qword_27EEE1A28);
  if (qword_27EEE1828 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EEE19E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static UIButton.Configuration.dc_LabelledButton()()
{
  v0 = sub_2492ECB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2492ECB94();
  (*(v1 + 104))(v3, *MEMORY[0x277D75020], v0);
  return sub_2492ECB24();
}

id sub_2492E6524()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setTextAlignment_];
  v1 = objc_opt_self();
  if (qword_27EEE1838 != -1)
  {
    v13 = v1;
    swift_once();
    v1 = v13;
  }

  v2 = [v1 systemFontOfSize:11.0 weight:*&qword_27EEE2098];
  [v0 setFont_];

  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v0 setTextColor_];

  v5 = [v0 layer];
  v6 = [v3 blackColor];
  v7 = [v6 CGColor];

  [v5 setShadowColor_];
  v8 = [v0 layer];
  LODWORD(v9) = 0.5;
  [v8 setShadowOpacity_];

  v10 = [v0 layer];
  [v10 setShadowOffset_];

  v11 = [v0 layer];
  [v11 setShadowRadius_];

  return v0;
}

void sub_2492E6760(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_2492ECBC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR___DCLabelledButton_backingButton);
  sub_2492ECBD4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2492E8020(v7, &qword_27EEE1A18);
    if (qword_27EEE1860 != -1)
    {
      swift_once();
    }

    v13 = sub_2492EC964();
    __swift_project_value_buffer(v13, qword_27EEE1A28);
    v14 = sub_2492EC944();
    v15 = sub_2492ECAC4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_249253000, v14, v15, "Button didn't have a config. This is unexpected.", v16, 2u);
      MEMORY[0x24C1F5BA0](v16, -1, -1);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v17 = a1;
    sub_2492ECBA4();
    (*(v9 + 16))(v5, v11, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    sub_2492ECBE4();
    [v12 setImage:v17 forState:0];

    (*(v9 + 8))(v11, v8);
  }
}

id LabelledButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *LabelledButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_2492ECB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR___DCLabelledButton_backingButton;
  v18 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  sub_2492ECB94();
  (*(v11 + 104))(v13, *MEMORY[0x277D75020], v10);
  sub_2492ECB24();
  v19 = sub_2492ECBC4();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  sub_2492ECBE4();
  v20 = v18;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setUserInteractionEnabled_];

  *&v5[v17] = v20;
  v21 = OBJC_IVAR___DCLabelledButton_label;
  *&v5[v21] = sub_2492E6524();
  v22 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR___DCLabelledButton_portraitConstraints] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR___DCLabelledButton_landscapeConstraints] = v22;
  v23 = type metadata accessor for LabelledButton();
  v27.receiver = v5;
  v27.super_class = v23;
  v24 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 addSubview_];
  [v24 addSubview_];
  sub_2492E6FB0();
  v25 = sub_2492E82C4();
  sub_2492E7434(v25);

  return v24;
}

char *LabelledButton.init(symbolName:subtitle:)()
{
  v1 = [v0 initWithFrame_];
  v2 = OBJC_IVAR___DCLabelledButton_backingButton;
  v3 = *&v1[OBJC_IVAR___DCLabelledButton_backingButton];
  v4 = v1;
  v5 = v3;
  v6 = sub_2492ECA14();

  v7 = [objc_opt_self() systemImageNamed_];

  [v5 setImage:v7 forState:0];
  v8 = OBJC_IVAR___DCLabelledButton_label;
  v9 = *&v4[OBJC_IVAR___DCLabelledButton_label];
  v10 = sub_2492ECA14();

  [v9 setText_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];
  [v4 addSubview_];
  sub_2492E6FB0();
  v11 = sub_2492E82C4();
  sub_2492E7434(v11);

  return v4;
}

uint64_t sub_2492E6FB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2492F82B0;
  v2 = *&v0[OBJC_IVAR___DCLabelledButton_backingButton];
  v3 = [v2 centerXAnchor];
  v4 = [v0 &selRef_filterButtonWithType_ + 2];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 topAnchor];
  v7 = [v0 &selRef_setAutoShutterOffView_];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = *&v0[OBJC_IVAR___DCLabelledButton_label];
  v10 = [v9 &selRef_setAutoShutterOffView_];
  v11 = [v2 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:8.0];

  *(v1 + 48) = v12;
  v13 = [v9 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  v16 = [v9 trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v1 + 64) = v18;
  v19 = [v9 bottomAnchor];
  v20 = [v0 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 72) = v21;
  *&v0[OBJC_IVAR___DCLabelledButton_portraitConstraints] = v1;

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2492F82C0;
  v23 = [v2 centerXAnchor];
  v24 = [v0 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [v2 centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 40) = v28;
  v29 = [v2 topAnchor];
  v30 = [v0 topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v22 + 48) = v31;
  v32 = [v2 bottomAnchor];
  v33 = [v0 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 56) = v34;
  *&v0[OBJC_IVAR___DCLabelledButton_landscapeConstraints] = v22;
}

void sub_2492E7434(unsigned __int8 a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = objc_opt_self();
  sub_2492DDD60();

  v6 = sub_2492ECA64();

  [v5 deactivateConstraints_];

  v7 = sub_2492ECA64();

  [v5 deactivateConstraints_];

  [*(v1 + OBJC_IVAR___DCLabelledButton_label) setHidden_];

  v8 = sub_2492ECA64();

  [v5 activateConstraints_];
}

void sub_2492E75BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  if (sub_2492E7760())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_2492ECA14();
    v11 = [objc_opt_self() imageNamed:v7 inBundle:v6];

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v11;
    goto LABEL_8;
  }

  v10 = sub_2492ECA14();
  v11 = [objc_opt_self() _systemImageNamed_];

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11)
  {
    v8 = [v11 imageWithTintColor:a3 renderingMode:1];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_8:
  v12 = v9;
  [*(v3 + OBJC_IVAR___DCLabelledButton_backingButton) setImage_forState_];
}

uint64_t sub_2492E7760()
{

  v0 = sub_2492ECA34();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_2492ECA34();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_2492ECCF4();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_2492ECA34();
      v3 = v5;
    }

    while (v5);
  }

  sub_2492ECA34();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_2492E7900()
{
  v1 = [*(v0 + OBJC_IVAR___DCLabelledButton_backingButton) menu];

  return v1;
}

void sub_2492E7958(void *a1)
{
  [*(v1 + OBJC_IVAR___DCLabelledButton_backingButton) setMenu_];
}

double sub_2492E7A24()
{
  v0 = objc_allocWithZone(type metadata accessor for LabelledButton());
  v1 = LabelledButton.init(symbolName:subtitle:)();
  [v1 sizeThatFits_];
  v3 = v2;

  return v3;
}

uint64_t sub_2492E7AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR___DCLabelledButton_backingButton);
  sub_2492E7C0C(a1, v14);
  v7 = v15;
  if (v15)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_2492ECCE4();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  [v6 addTarget:v12 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

uint64_t sub_2492E7C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2492E7D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR___DCLabelledButton_backingButton);
  sub_2492E7C0C(a1, v14);
  v7 = v15;
  if (v15)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_2492ECCE4();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  [v6 removeTarget:v12 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

id LabelledButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelledButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2492E7FD4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2492E8020(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2492E8080()
{
  v1 = v0;
  v2 = sub_2492ECB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE1A18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR___DCLabelledButton_backingButton;
  v10 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  sub_2492ECB94();
  (*(v3 + 104))(v5, *MEMORY[0x277D75020], v2);
  sub_2492ECB24();
  v11 = sub_2492ECBC4();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_2492ECBE4();
  v12 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setUserInteractionEnabled_];

  *(v1 + v9) = v12;
  v13 = OBJC_IVAR___DCLabelledButton_label;
  *(v1 + v13) = sub_2492E6524();
  v14 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR___DCLabelledButton_portraitConstraints) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR___DCLabelledButton_landscapeConstraints) = v14;
  sub_2492ECCB4();
  __break(1u);
}

BOOL sub_2492E82C4()
{
  v1 = [v0 window];
  if (v1 && (v2 = v1, v3 = [v1 windowScene], v2, v3))
  {
    v4 = [v3 effectiveGeometry];
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 connectedScenes];

    sub_2492E8518();
    sub_2492E8564();
    v8 = sub_2492ECA94();

    sub_2492E85BC(v8);
    v10 = v9;

    if (v10 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2492ECCD4())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C1F43D0](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (![v13 activationState])
        {

          v4 = [v14 effectiveGeometry];
          v5 = [v4 interfaceOrientation];

          goto LABEL_20;
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 orientation];
  }

LABEL_20:

  return UIInterfaceOrientationIsLandscape(v5);
}

unint64_t sub_2492E8518()
{
  result = qword_27EEE1A68;
  if (!qword_27EEE1A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEE1A68);
  }

  return result;
}

unint64_t sub_2492E8564()
{
  result = qword_27EEE1A70;
  if (!qword_27EEE1A70)
  {
    sub_2492E8518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE1A70);
  }

  return result;
}

void sub_2492E85BC(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2492ECC04();
    sub_2492E8518();
    sub_2492E8564();
    sub_2492ECAA4();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_2492ECC14() || (sub_2492E8518(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_2492E8808();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x24C1F41F0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2492ECA74();
      }

      sub_2492ECA84();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2492E8810()
{
  v0 = sub_2492EC9E4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_2492EC9D4();
  v4[3] = sub_2492EC9F4();
  v4[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_2492ECA04();
  sub_2492ECAF4();
  v2 = [v1 layer];
  [v2 setCornerRadius_];

  [v1 setUserInteractionEnabled_];
  return v1;
}

id CameraCaptureButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CameraCaptureButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC14DocumentCamera19CameraCaptureButton_outerCircle;
  *&v4[v9] = sub_2492E8810();
  v10 = OBJC_IVAR____TtC14DocumentCamera19CameraCaptureButton_innerCircle;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [objc_opt_self() whiteColor];
  [v11 setBackgroundColor_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  [v11 setUserInteractionEnabled_];
  *&v4[v10] = v11;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CameraCaptureButton();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2492E8CE0();

  return v14;
}

id CameraCaptureButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CameraCaptureButton.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC14DocumentCamera19CameraCaptureButton_outerCircle;
  *&v1[v3] = sub_2492E8810();
  v4 = OBJC_IVAR____TtC14DocumentCamera19CameraCaptureButton_innerCircle;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_opt_self() whiteColor];
  [v5 setBackgroundColor_];

  v7 = [v5 layer];
  [v7 setCornerRadius_];

  [v5 setUserInteractionEnabled_];
  *&v1[v4] = v5;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CameraCaptureButton();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_2492E8CE0();
    sub_2492E9074();
  }

  return v9;
}

void sub_2492E8CE0()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC14DocumentCamera19CameraCaptureButton_outerCircle];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC14DocumentCamera19CameraCaptureButton_innerCircle];
  [v0 addSubview_];
  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE18B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2492F8310;
  v5 = [v2 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v4 + 48) = v12;
  v13 = [v2 heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v4 + 56) = v14;
  v15 = [v3 centerXAnchor];
  v16 = [v1 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v4 + 64) = v17;
  v18 = [v3 centerYAnchor];
  v19 = [v1 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 72) = v20;
  v21 = [v3 widthAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v4 + 80) = v22;
  v23 = [v3 heightAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v4 + 88) = v24;
  sub_2492DDD60();
  v26 = sub_2492ECA64();

  [v25 activateConstraints_];
}

void sub_2492E9074()
{
  if (qword_27EEE1818 != -1)
  {
    swift_once();
  }

  v1 = qword_27EEE2088;
  v2 = sub_2492ECA14();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    sub_2492ECA24();
    v3 = sub_2492ECA14();
  }

  [v0 setAccessibilityLabel_];

  v4 = sub_2492ECA14();
  v5 = [v1 localizedStringForKey:v4 value:0 table:0];

  if (!v5)
  {
    sub_2492ECA24();
    v5 = sub_2492ECA14();
  }

  [v0 setAccessibilityHint_];
}

id CameraCaptureButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraCaptureButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void DCCheckedDynamicCast_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_249253000, a3, OS_LOG_TYPE_ERROR, "Unexpected object type in checked dynamic cast %@ expects %@", &v5, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  MEMORY[0x282112400](videoDesc, usePixelAspectRatio, useCleanAperture);
  result.height = v4;
  result.width = v3;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}