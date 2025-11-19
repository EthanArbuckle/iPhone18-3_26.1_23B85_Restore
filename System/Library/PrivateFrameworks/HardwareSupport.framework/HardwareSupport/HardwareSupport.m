void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void __socVersionFromSOCGen_block_invoke()
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"H(\\d+)" options:0 error:&v3];
  v1 = v3;
  v2 = socVersionFromSOCGen_regex;
  socVersionFromSOCGen_regex = v0;
}

id HSLogHandle()
{
  if (HSLogHandle_onceToken != -1)
  {
    HSLogHandle_cold_1();
  }

  v1 = HSLogHandle__handle;

  return v1;
}

uint64_t __HSLogHandle_block_invoke()
{
  HSLogHandle__handle = os_log_create("com.apple.osdiags", "hardware-support");

  return MEMORY[0x2821F96F8]();
}

id __HSDescribeFigStreamStatus(int a1)
{
  if (a1 > -12687)
  {
    v1 = -12686;
    v2 = @"Buffer allocation failed!";
    if (a1 == -12684)
    {
      v4 = @"Not available while streaming!";
    }

    else
    {
      v4 = 0;
    }

    if (a1 == -12685)
    {
      v3 = @"Unknown stream error!";
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    if (a1 == -12689)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = NSStringFromSelector(sel_requestControlOfStreams_error_);
      v5 = [v7 stringWithFormat:@"Stream not controlled! Please ensure to request with %@.", v8];

      goto LABEL_15;
    }

    v1 = -12688;
    v2 = @"Stream is busy!";
    v3 = @"Data was dropped!";
    if (a1 != -12687)
    {
      v3 = 0;
    }
  }

  if (a1 == v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

LABEL_15:

  return v5;
}

id _unwrapFigCaptureValue(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 underlyingStream];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 underlyingSyncStreamsGroup];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v1;
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = _unwrapFigCaptureValue(*(*(&v30 + 1) + 8 * i));
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
LABEL_18:
    v3 = v14;

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v1 allObjects];
    v3 = _unwrapFigCaptureValue(v15);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = v1;
    v3 = v17;
    if (isKindOfClass)
    {
      v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v8 = v3;
      v18 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v8);
            }

            v22 = *(*(&v26 + 1) + 8 * j);
            v23 = [v8 objectForKeyedSubscript:{v22, v26}];
            v24 = (_unwrapFigCaptureValue)();
            v25 = _unwrapFigCaptureValue(v22);
            [v7 setObject:v24 forKey:v25];
          }

          v19 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v19);
      }

      v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
      goto LABEL_18;
    }
  }

LABEL_6:

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id _wrapFigCaptureValue(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = CFGetTypeID(v3);
  if (v5 == FigCaptureStreamGetTypeID())
  {
    v6 = [[HSFigCaptureStream alloc] initWithCaptureStream:v3 fromDevice:v4];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = CFGetTypeID(v3);
  if (v8 == FigCaptureSynchronizedStreamsGroupGetTypeID())
  {
    v6 = [[HSFigCaptureSyncStreamsGroup alloc] initWithCaptureSyncStreamsGroup:v3 fromDevice:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v3;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = _wrapFigCaptureValue(*(*(&v35 + 1) + 8 * i), v4);
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    v19 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
LABEL_20:
    v7 = v19;

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v3 allObjects];
    v7 = _wrapFigCaptureValue(v20, v4);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v22 = v3;
    v7 = v22;
    if (isKindOfClass)
    {
      v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v22, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = v7;
      v23 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v32;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v13);
            }

            v27 = *(*(&v31 + 1) + 8 * j);
            v28 = [v13 objectForKeyedSubscript:{v27, v31}];
            v29 = _wrapFigCaptureValue(v28, v4);
            v30 = _wrapFigCaptureValue(v27, v4);
            [v12 setObject:v29 forKey:v30];
          }

          v24 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v24);
      }

      v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v12];
      goto LABEL_20;
    }
  }

LABEL_8:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

__CFString *__HSDescribeFigDeviceStatus(int a1)
{
  if ((a1 + 12683) > 3)
  {
    return 0;
  }

  else
  {
    return off_2796AB608[a1 + 12683];
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void HSRequestConcreteImplementation(void *a1, const char *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  Name = sel_getName(a2);
  v7 = objc_opt_class();
  v8 = class_getName(v7);
  [v4 raise:v5 format:{@"-%s is abstract. Define -[%s %s]!", Name, v8, sel_getName(a2)}];
  abort();
}

void __deviceRemovedCallback(void *a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (a2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device removal failed!"];
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA4A8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v5 errorWithDomain:v6 code:a2 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 deviceRemovedCallback];

  if (v9)
  {
    v10 = [v3 deviceRemovedCallback];
    (v10)[2](v10, v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __deviceInputReportCallback(void *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v11 = a1;
  if (a2)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Input report callback failed!"];
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA4A8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [v13 errorWithDomain:v14 code:a2 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v11 inputReportCallback];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:a6 length:a7];
    v19 = [v11 inputReportCallback];
    (v19)[2](v19, a5, v18, v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __managerDeviceMatchingCallback(void *a1, int a2, uint64_t a3, const void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device failed to enumerate!"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA4A8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v8 errorWithDomain:v9 code:a2 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  CFRetain(a4);
  v12 = [[HSHIDDevice alloc] initWithDeviceRef:a4];
  v13 = [v6 deviceEnumeratedCallback];

  if (v13)
  {
    v14 = [v6 deviceEnumeratedCallback];
    (v14)[2](v14, v12, v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __managerDeviceRemovalCallback(void *a1, int a2, uint64_t a3, const void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device removal failed!"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA4A8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v8 errorWithDomain:v9 code:a2 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  CFRetain(a4);
  v12 = [[HSHIDDevice alloc] initWithDeviceRef:a4];
  v13 = [v6 deviceRemovedCallback];

  if (v13)
  {
    v14 = [v6 deviceRemovedCallback];
    (v14)[2](v14, v12, v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}