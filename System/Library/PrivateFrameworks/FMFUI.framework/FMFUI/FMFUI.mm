void sub_24A4F2894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id LogCategory_Daemon()
{
  if (LogCategory_Daemon_onceToken != -1)
  {
    LogCategory_Daemon_cold_1();
  }

  v1 = LogCategory_Daemon_log;

  return v1;
}

id LogCategory_FMFMapXPC()
{
  if (LogCategory_FMFMapXPC_onceToken != -1)
  {
    LogCategory_FMFMapXPC_cold_1();
  }

  v1 = LogCategory_FMFMapXPC_log;

  return v1;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___FindMyAccountOverviewViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FindMyUICore))
  {
    return dlopenHelper_FindMyUICore(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_FindMyUICore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/FindMyUICore.framework/FindMyUICore", 0);
  atomic_store(1u, &dlopenHelperFlag_FindMyUICore);
  return a1;
}