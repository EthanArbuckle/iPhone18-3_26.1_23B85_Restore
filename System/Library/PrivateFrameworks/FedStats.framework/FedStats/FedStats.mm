void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_24AB0AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id getColumnName(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a1;
  v9 = [v7 stringWithFormat:@"SELECT %@ FROM PRAGMA_TABLE_XINFO('%@') WHERE type == '%@'", @"name", a2, a3];
  v16 = 0;
  v10 = [v8 runQuery:v9 error:&v16];

  v11 = v16;
  if (v10)
  {
    v12 = [v10 next];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKey:@"name"];
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:302 underlyingError:v11 description:@"Cannot check query result"];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:302 underlyingError:v11 description:@"Cannot query database"];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id getColumnMaxValue(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a1;
  v9 = [v7 stringWithFormat:@"SELECT MAX(%@) AS %@ FROM '%@'", a3, @"maxColumn", a2];
  v16 = 0;
  v10 = [v8 runQuery:v9 error:&v16];

  v11 = v16;
  if (v10)
  {
    v12 = [v10 next];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKey:@"maxColumn"];
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:302 underlyingError:v11 description:@"Cannot check query result"];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:302 underlyingError:v11 description:@"Cannot query database"];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}