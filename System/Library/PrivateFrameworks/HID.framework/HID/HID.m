uint64_t __HIDVirtualServiceSetPropertyCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = [v7 delegate];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 setProperty:a5 forKey:a4 forService:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void _removalCallback(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = MEMORY[0x277CD2878];
  v4 = *&a3[*MEMORY[0x277CD2878] + 112];
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = a3;
    v5(v4);
    _Block_release(*&v6[*v3 + 112]);
    *&v6[*v3 + 112] = 0;
  }
}

void sub_22DF7E640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HIDVirtualServiceNotifyCallback(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = a1;
  v7 = [v9 delegate];
  v8 = v7;
  if (v7 && (a4 - 3) <= 2)
  {
    [v7 notification:qword_22DF89988[a4 - 3] withProperty:a5 forService:v9];
  }
}

uint64_t __HIDVirtualServiceCopyPropertyCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = [v5 delegate];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 propertyForKey:a4 forService:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __HIDVirtualServiceCopyEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v10 = [v9 delegate];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
    [v11 setObject:v12 forKeyedSubscript:@"EventType"];

    [v11 setObject:a5 forKeyedSubscript:@"MatchingEvent"];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a6];
    [v11 setObject:v13 forKeyedSubscript:@"MatchingEventOptions"];

    v14 = [v10 copyEventMatching:v11 forService:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __HIDVirtualServiceSetOutputEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = [v5 delegate];
  v7 = v6;
  if (v6)
  {
    if ([v6 setOutputEvent:a4 forService:v5])
    {
      v8 = 0;
    }

    else
    {
      v8 = 3758097084;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __HIDVirtualServiceClientCopyMatchingEventCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = [v5 delegate];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copyEventMatching:a4 forService:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

void inputValueCallback(void *a1, uint64_t a2, uint64_t a3, __IOHIDValue *a4)
{
  v6 = a1;
  v8 = IOHIDValueGetElement(a4);
  [v8 setValueRef:a4];
  v7 = v6[2];

  (*(v7 + 16))(v7, a3, v8);
}

void inputReportCallback(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x277CBEA90];
  v15 = a1;
  v17 = [[v14 alloc] initWithBytesNoCopy:a6 length:a7 freeWhenDone:0];
  v16 = v15[4];

  (*(v16 + 16))(v16, a3, a8, a4, a5, v17);
}

double OUTLINED_FUNCTION_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void asyncReportCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v12 = _Block_copy(a1);
  v12[2](v12, a2, a6, a7, a5);
  _Block_release(a1);
}

void inputValueCallback_0(void *a1, uint64_t a2, uint64_t a3, __IOHIDValue *a4)
{
  v8 = a1;
  v5 = IOHIDValueGetElement(a4);
  [v5 setValueRef:a4];
  if (atomic_load(&v8[*MEMORY[0x277CD2868] + 312]))
  {
    v7 = atomic_load(&v8[*MEMORY[0x277CD2868] + 312]);
    (*(v7 + 16))(v7, v5);
  }
}

void batchInputValueCallback(void *a1, uint64_t a2, uint64_t a3, __IOHIDValue *a4)
{
  v12 = a1;
  v5 = IOHIDValueGetElement(a4);
  [v5 setValueRef:a4];
  v6 = MEMORY[0x277CD2868];
  v7 = &v12[*MEMORY[0x277CD2868]];
  os_unfair_recursive_lock_lock_with_options();
  v8 = *&v12[*v6 + 280];
  if ([v5 type] == 5)
  {
    if (atomic_load(&v12[*v6 + 312]))
    {
      v10 = atomic_load(&v12[*v6 + 312]);
      (*(v10 + 16))(v10, v8);
    }

    [v8 removeAllObjects];
  }

  else
  {
    [v8 addObject:v5];
  }

  v11 = &v12[*v6];
  os_unfair_recursive_lock_unlock();
}

void removalCallback(char *a1)
{
  v1 = MEMORY[0x277CD2868];
  if (atomic_load(&a1[*MEMORY[0x277CD2868] + 320]))
  {
    v3 = atomic_load(&a1[*MEMORY[0x277CD2868] + 320]);
    v4 = *(v3 + 16);
    v6 = a1;
    v4(v3);
    v5 = atomic_load(&v6[*v1 + 320]);
    _Block_release(v5);
    atomic_store(0, &v6[*v1 + 320]);
  }
}

void inputReportCallback_0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a6 length:a7 freeWhenDone:0];
  if (atomic_load(&v17[*MEMORY[0x277CD2868] + 328]))
  {
    v16 = atomic_load(&v17[*MEMORY[0x277CD2868] + 328]);
    (*(v16 + 16))(v16, a3, a8, a4, a5, v14);
  }
}

void asyncCommitCallback(const void *a1, uint64_t a2)
{
  v4 = _Block_copy(a1);
  v4[2](v4, a2);
  _Block_release(a1);
}

void HIDTimeSyncPropertyHandler(void *a1, uint64_t a2, int a3)
{
  if (a3 == -536870608)
  {
    v4 = a1;
    v5 = [v4 properties];
    [v4 handlePropertyUpdate:v5];
  }
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1_0(unsigned int *a1, void *a2, _OWORD *a3)
{
  atomic_load(a1);
  *a2 = 0;
  result = 0.0;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

double OUTLINED_FUNCTION_5(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t getReportCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  result = (*(*(a1 + 16) + 16))();
  v7 = *a5;
  if (*a5 >= v8)
  {
    v7 = v8;
  }

  *a5 = v7;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}