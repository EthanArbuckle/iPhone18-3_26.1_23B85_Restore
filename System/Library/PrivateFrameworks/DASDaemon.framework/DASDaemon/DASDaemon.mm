id defaultFormatter()
{
  if (defaultFormatter_onceToken != -1)
  {
    defaultFormatter_cold_1();
  }

  v1 = defaultFormatter_formatter;

  return v1;
}

void sub_247E1EE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSubstring(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (a4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = [v7 rangeOfString:v8];
    if (!v13)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_12;
    }

    v14 = v12 + v13;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v14 = 0;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_7:
  v15 = [v7 rangeOfString:v10 options:v11];
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v17 = [v7 substringWithRange:{v14, v15 - v14}];
LABEL_12:

  return v17;
}

__CFString *getIntervalString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEqualToDate:v3];
    v7 = 0.5;
    v8 = 0.5;
    if (v6)
    {
      goto LABEL_3;
    }

    [v5 timeIntervalSinceDate:{v3, 0.5, 0.5}];
    if (v7 >= 0.0)
    {
      if (v7 >= 3600.0)
      {
        v9 = @"hours";
        v8 = v7 / 3600.0;
LABEL_5:
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%3.2lf %@", *&v8, v9];
        goto LABEL_8;
      }

      if (v7 >= 60.0)
      {
        v8 = v7 / 60.0;
      }

      else
      {
        v8 = v7;
      }

LABEL_3:
      v9 = @"minutes";
      if (v7 < 60.0)
      {
        v9 = @"seconds";
      }

      goto LABEL_5;
    }
  }

  v10 = &stru_2859F0B50;
LABEL_8:

  return v10;
}

void sub_247E250DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247E253C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __defaultFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = defaultFormatter_formatter;
  defaultFormatter_formatter = v0;

  [defaultFormatter_formatter setDateStyle:1];
  [defaultFormatter_formatter setTimeStyle:2];
  v2 = defaultFormatter_formatter;
  v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:v3];
}

void __timeOnlyFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = timeOnlyFormatter_timeOnlyFormatter;
  timeOnlyFormatter_timeOnlyFormatter = v0;

  [timeOnlyFormatter_timeOnlyFormatter setDateStyle:0];
  [timeOnlyFormatter_timeOnlyFormatter setTimeStyle:2];
  v2 = timeOnlyFormatter_timeOnlyFormatter;
  v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:v3];
}