void sub_100000F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000F48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100000F60(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  if (a2)
  {
    v5 = DLCLogPathKey;
    v6 = [v10 objectForKey:DLCLogPathKey];

    if (v6)
    {
      v7 = [v10 objectForKeyedSubscript:v5];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}