id LogCategory_Unspecified()
{
  if (LogCategory_Unspecified_onceToken != -1)
  {
    LogCategory_Unspecified_cold_1();
  }

  v1 = LogCategory_Unspecified_log;

  return v1;
}

id LogCategory_ViewControllerLifecyle()
{
  if (LogCategory_ViewControllerLifecyle_onceToken != -1)
  {
    LogCategory_ViewControllerLifecyle_cold_1();
  }

  v1 = LogCategory_ViewControllerLifecyle_log;

  return v1;
}

id LogCategory_FMSlidingPaneViewController()
{
  if (LogCategory_FMSlidingPaneViewController_onceToken != -1)
  {
    LogCategory_FMSlidingPaneViewController_cold_1();
  }

  v1 = LogCategory_FMSlidingPaneViewController_log;

  return v1;
}

void sub_24A320240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A3209E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

double __parametersOfSpringAnimation_block_invoke_3(uint64_t a1, double a2)
{
  v4 = *(a1 + 40);
  v5 = -(*(a1 + 48) * a2);
  v6 = expf(v5);
  return v4 - fabs((*(*(a1 + 32) + 16))(a2) * v6);
}

double __parametersOfSpringAnimation_block_invoke_4(uint64_t a1, double a2)
{
  v4 = a2 * a2;
  v5 = exp(-(*(a1 + 40) * a2));
  v6 = (*(*(a1 + 32) + 16))(a2);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48) + *(a1 + 56) * a2;
  v9 = -v7;
  v10 = v8 - v7 * v4;
  v11 = -(v8 + v9 * v4);
  if (v5 * v6 <= 0.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + 40) * a2;
  return v12 / (v4 * *(a1 + 72) * expf(v13));
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

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x282123638](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectInset(MKMapRect rect, double dx, double dy)
{
  MEMORY[0x282123690](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x2821236C0](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}