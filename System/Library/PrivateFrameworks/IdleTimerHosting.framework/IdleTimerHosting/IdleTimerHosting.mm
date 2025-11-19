id ITLogIdleTimer()
{
  if (ITLogIdleTimer_onceToken != -1)
  {
    ITLogIdleTimer_cold_1();
  }

  v1 = ITLogIdleTimer___logObj;

  return v1;
}

uint64_t __ITLogIdleTimer_block_invoke()
{
  ITLogIdleTimer___logObj = os_log_create(ITLoggingSubsystem, "IdleTimer");

  return MEMORY[0x2821F96F8]();
}

void sub_254AB7D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}