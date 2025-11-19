void sub_25BD2B210(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void AlwaysApplyPerFrameHDRDisplayMetadata()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 BOOLForKey:@"debugTryDolbyInEdit"];
}

void sub_25BD2DB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _commonInit(void *a1)
{
  v1 = a1;
  v2 = [v1 layer];
  [v2 addObserver:v1 forKeyPath:@"readyForDisplay" options:4 context:PlayerLayerReadyForDisplayObservationContext];
}

id NUMediaTimingFunctionForUIAnimationCurve(unint64_t a1)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CD9EF8] functionWithName:{**(&unk_279973D18 + a1), v1}];
  }

  return v3;
}

id NUAssertLogger()
{
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
  }

  v1 = *MEMORY[0x277D2D070];

  return v1;
}

id NUAssertLogger_155()
{
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_123);
  }

  v1 = *MEMORY[0x277D2D070];

  return v1;
}

void sub_25BD34820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD34D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_467()
{
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
  }

  v1 = *MEMORY[0x277D2D070];

  return v1;
}

void sub_25BD38298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD39838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25BD39970(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25BD3AAEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_25BD3B770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD3B8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD3BC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD3BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _NUViewCommonInit(void *a1)
{
  v1 = a1;
  v2 = [v1 layer];
  [v2 setAnchorPoint:{0.5, 0.5}];
  [v2 setMasksToBounds:0];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v14 = v2;

  v4 = +[_NUContainerLayer layer];
  [v4 setMasksToBounds:1];
  [v4 setAnchorPoint:{0.5, 0.5}];
  [v1 bounds];
  [v4 setFrame:?];
  [v14 addSublayer:v4];
  v5 = *(v1 + 53);
  *(v1 + 53) = v4;
  v6 = v4;

  v7 = +[_NUTiledBackfillLayer layer];
  [v7 setAnchorPoint:{0.5, 0.5}];
  v8 = [MEMORY[0x277D75348] yellowColor];
  [v7 setDebugColor:{objc_msgSend(v8, "CGColor")}];

  [v6 addSublayer:v7];
  v9 = *(v1 + 51);
  *(v1 + 51) = v7;
  v10 = v7;

  v11 = +[_NUTiledROILayer layer];
  [v11 setAnchorPoint:{0.5, 0.5}];
  v12 = [MEMORY[0x277D75348] redColor];
  [v11 setDebugColor:{objc_msgSend(v12, "CGColor")}];

  [v6 addSublayer:v11];
  v13 = *(v1 + 52);
  *(v1 + 52) = v11;

  *(v1 + 441) = 1;
  [v1 setAccessibilityIdentifier:@"renderView"];
}

void sub_25BD3FE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

CGFloat NUBoundingRectForRotatedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  CGRectGetWidth(*&a1);
  __sincos_stret(a5);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetHeight(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetWidth(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetHeight(v13);
  return a1;
}

double NURectCenterRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  rect_8 = CGRectGetMinX(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  Width = CGRectGetWidth(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  rect_8a = rect_8 + (Width - CGRectGetWidth(v23)) * 0.5;
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  CGRectGetMinY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetHeight(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetHeight(v26);
  return rect_8a;
}

double NUEdgeInsetsInsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 + a6;
  v9 = a3 - (a8 + a6);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

void NUMaxRectInRotatedRect(double a1, double a2, double a3, double a4, double a5)
{
  if (a3 > 0.0 && a4 > 0.0)
  {
    fabs(__sincos_stret(a5).__sinval);
  }
}

double NURectGetMidpoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

void NUFitScaleForImageRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (a3 > 0.0 && a4 > 0.0)
  {
    v16.origin.x = a5;
    v16.origin.y = a6;
    v16.size.width = a7;
    v16.size.height = a8;
    CGRectGetWidth(v16);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    CGRectGetWidth(v17);
    v18.origin.x = a5;
    v18.origin.y = a6;
    v18.size.width = a7;
    v18.size.height = a8;
    CGRectGetHeight(v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetHeight(v19);
  }
}

__n128 CATransform3DFromDouble4x4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = result;
  return result;
}

__n128 CATransform3DToDouble4x4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  a2[7] = v9;
  return result;
}

__n128 Double4x4MakeTranslation@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(&v3 + 1) = 1.0;
  *a2 = xmmword_25BD44920;
  *(a2 + 16) = 0u;
  *(a2 + 32) = xmmword_25BD44930;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = xmmword_25BD44920;
  *(a2 + 96) = result;
  *(a2 + 112) = v3;
  return result;
}

double Double4x4MakeScale@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q3>)
{
  *&v3 = 0;
  *(&v3 + 1) = a1[1];
  result = 0.0;
  a3.n128_u64[0] = a1[2];
  *a2 = *a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = v3;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = a3;
  *(a2 + 96) = 0u;
  *(a2 + 112) = xmmword_25BD44930;
  return result;
}

double Double4x4MakeRotation@<D0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a1[1];
  v5 = vmulq_f64(v4, v4);
  v5.f64[0] = 1.0 / sqrt(v5.f64[0] + vaddvq_f64(vmulq_f64(*a1, *a1)));
  v15 = vmulq_n_f64(*a1, v5.f64[0]);
  v16 = vmulq_f64(v4, v5).f64[0];
  v6 = __sincos_stret(a3);
  v7 = v15;
  *&v8 = v6.__cosval + vmuld_n_f64(v7.f64[0], v7.f64[0]) * (1.0 - v6.__cosval);
  v9 = vmuld_n_f64(v16, v15.f64[0]);
  v10 = vmuld_lane_f64(v6.__sinval, v15, 1);
  v11.f64[0] = -(v6.__sinval * v16);
  v12 = vmulq_laneq_f64(v7, v7, 1);
  *(&v8 + 1) = v6.__sinval * v16 + v12.f64[0] * (1.0 - v6.__cosval);
  *a2 = v8;
  *(a2 + 16) = COERCE_UNSIGNED_INT64(-(v10 - v9 * (1.0 - v6.__cosval)));
  v11.f64[1] = v6.__cosval;
  *&v8 = vmuld_lane_f64(v16, v15, 1);
  *(a2 + 32) = vmlaq_n_f64(v11, v12, 1.0 - v6.__cosval);
  *(a2 + 48) = COERCE_UNSIGNED_INT64(v6.__sinval * v15.f64[0] + *&v8 * (1.0 - v6.__cosval));
  *&v13 = v10 + v9 * (1.0 - v6.__cosval);
  *(&v13 + 1) = -(v6.__sinval * v15.f64[0] - *&v8 * (1.0 - v6.__cosval));
  *(a2 + 64) = v13;
  *(a2 + 80) = COERCE_UNSIGNED_INT64(v6.__cosval + vmuld_n_f64(v16, v16) * (1.0 - v6.__cosval));
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  result = 0.0;
  *(a2 + 112) = xmmword_25BD44930;
  return result;
}

id NUAssertLogger_821()
{
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_838);
  }

  v1 = *MEMORY[0x277D2D070];

  return v1;
}

id NUAssertLogger_873()
{
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_888);
  }

  v1 = *MEMORY[0x277D2D070];

  return v1;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}