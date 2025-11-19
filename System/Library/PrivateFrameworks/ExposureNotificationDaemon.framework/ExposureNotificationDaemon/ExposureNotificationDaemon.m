uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A1F4754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ct_sqlite_rpi_buffer_connect(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(rpi, rpi_pointer hidden, validity_pointer hidden, buffer_count hidden, valid_count hidden, daily_tracing_key_index, rpi_index)");
  if (!result)
  {
    v7 = sqlite3_malloc(24);
    if (v7)
    {
      v8 = v7;
      result = 0;
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *a5 = v8;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t ct_sqlite_rpi_buffer_best_index(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v2 = *a2;
  if (*a2 >= 1)
  {
    v3 = 0;
    v4 = (*(a2 + 8) + 5);
    do
    {
      if (*v4)
      {
        if (*(v4 - 1) == 2)
        {
          v5 = *(v4 - 5);
          if ((v5 - 1) <= 3)
          {
            *(v11 + v5) = v3;
          }
        }
      }

      ++v3;
      v4 += 12;
    }

    while (v2 != v3);
  }

  v6 = *(a2 + 32);
  for (i = 1; i != 5; ++i)
  {
    v8 = v6 + 8 * *(v11 + i);
    *v8 = i;
    *(v8 + 4) = 1;
  }

  *(a2 + 64) = 0x3FF0000000000000;
  *(a2 + 72) = 100;
  *(a2 + 40) = 4;
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ct_sqlite_rpi_buffer_open(uint64_t a1, void *a2)
{
  v3 = sqlite3_malloc(56);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  result = 0;
  v4[6] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  *a2 = v4;
  return result;
}

uint64_t ct_sqlite_rpi_buffer_filter(void *a1, int a2, uint64_t a3, uint64_t a4, sqlite3_value **a5)
{
  if (a2)
  {
    a1[3] = sqlite3_value_pointer(*a5, "ct_sqlite_rpi_buffer");
    v7 = sqlite3_value_pointer(a5[1], "ct_sqlite_rpi_validity_buffer");
    a1[4] = v7;
    v8 = a1[3];
    if (v8)
    {
      v8 = sqlite3_value_int64(a5[2]);
      v7 = a1[4];
    }

    a1[5] = v8;
    if (v7)
    {
      v7 = sqlite3_value_int64(a5[3]);
    }

    a1[6] = v7;
  }

  else
  {
    *(a1 + 5) = 0u;
    *(a1 + 3) = 0u;
  }

  a1[1] = 0;
  a1[2] = 0;
  return 0;
}

uint64_t ct_sqlite_rpi_buffer_next(void *a1)
{
  v1 = a1[5];
  v2 = a1[1];
  v3 = v2 + 1;
  if (v1 <= v2 + 1)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = a1[5];
  }

  while (v3 < v1)
  {
    v5 = *(a1[4] + v3++);
    if (v5 == 1)
    {
      v4 = v3 - 1;
      break;
    }
  }

  a1[1] = v4;
  return 0;
}

uint64_t ct_sqlite_rpi_buffer_column(void *a1, sqlite3_context *a2, int a3)
{
  if (a3 <= 3)
  {
    if (!a3)
    {
      sqlite3_result_blob(a2, (a1[3] + 16 * a1[1]), 16, 0);
      return 0;
    }

    if (a3 == 3)
    {
      v3 = a1[5];
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v3 = a1[6];
        goto LABEL_11;
      case 5:
        v3 = a1[1] / 144;
        goto LABEL_11;
      case 6:
        v3 = a1[1] % 144;
LABEL_11:
        sqlite3_result_int64(a2, v3);
        break;
    }
  }

  return 0;
}

void sub_24A1F7EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ENSQLiteBindFoundationValue(sqlite3_stmt *a1, int a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UTF8String];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    sqlite3_bind_text(a1, a2, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_9;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sqlite3_bind_null(a1, a2);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_12:
    sqlite3_bind_double(a1, a2, v9);
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15[0] = 0;
      v15[1] = 0;
      [v5 getUUIDBytes:v15];
      sqlite3_bind_blob(a1, a2, v15, 16, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      ENSQLiteBindFoundationValue_cold_1();
    }

    v13 = [v5 objCType];
    v14 = *v13;
    if (v14 != 102 && v14 != 100 || v13[1])
    {
      sqlite3_bind_int64(a1, a2, [v5 longLongValue]);
      goto LABEL_9;
    }

    [v5 doubleValue];
    goto LABEL_12;
  }

  v10 = v5;
  if ([v10 length] >= 0x7FFFFFFF)
  {
    ENSQLiteBindFoundationValue_cold_2(v10);
  }

  v11 = [v10 bytes];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = "";
  }

  sqlite3_bind_blob(a1, a2, v12, [v10 length], 0xFFFFFFFFFFFFFFFFLL);

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

id ENSQLiteColumnAsData(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_column_blob(a1, a2);
    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:v4 length:{sqlite3_column_bytes(a1, a2)}];
    }
  }

  return v4;
}

id ENSQLiteColumnAsDate(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAA0]) initWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(a1, a2)}];
  }

  return v4;
}

id ENSQLiteColumnAsNaturalType(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      v5 = ENSQLiteColumnAsData(a1, a2);
    }

    else if (v4 == 3)
    {
      v5 = ENSQLiteColumnAsString(a1, a2);
    }
  }

  else if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithLongLong:{sqlite3_column_int64(a1, a2)}];
  }

  else if (v4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithDouble:{sqlite3_column_double(a1, a2)}];
  }

  return v5;
}

unsigned __int8 *ENSQLiteColumnAsString(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_column_text(a1, a2);
    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA0]) initWithUTF8String:v4];
    }
  }

  return v4;
}

id ENSQLiteColumnAsUUID(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    goto LABEL_5;
  }

  v4 = sqlite3_column_blob(a1, a2);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  if (sqlite3_column_bytes(a1, a2) != 16)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDBytes:v5];
  }

LABEL_6:

  return v4;
}

void sub_24A1F8AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SharedServiceConnectionHandler(void *a1)
{
  v1 = a1;
  v2 = +[ENXPCServiceListener sharedServiceListener];
  v3 = [v2 dispatchQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SharedServiceConnectionHandler_block_invoke;
  v5[3] = &unk_278FD1120;
  v5[4] = v2;
  v6 = v1;
  v4 = v1;
  dispatch_sync(v3, v5);
}

void sub_24A1FA6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  (*(a14 + 16))();
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_24A1FAA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A1FADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return LogPrintF_safe();
}

id DiagnosisReportTypeToServerStringMap()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_285D6E240;
  v3[1] = &unk_285D6E258;
  v4[0] = @"confirmed";
  v4[1] = @"likely";
  v3[2] = &unk_285D6E270;
  v3[3] = &unk_285D6E288;
  v4[2] = @"negative";
  v4[3] = @"user-report";
  v3[4] = &unk_285D6E2A0;
  v4[4] = @"recursive";
  v0 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

const char *ENDiagnosisReportTypeToString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_278FD1190[a1];
  }
}

void sub_24A1FBA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A1FEEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_24A1FFDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A200DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

void sub_24A2049F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A212570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))();
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A2147D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A214A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2150E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(v27 + 16))(v27);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_24A217F20(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A218584(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_24A218C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A219094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A219AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(a4 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21A7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21AC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21B0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21B518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21B8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21BD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21C138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  (*(v23 + 16))(v23);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_24A21C850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  (*(a12 + 16))();
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_24A21D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A21DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  (*(v12 + 16))(v12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A220838(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3A8], 8);
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

const char *ENVersionToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_278FD2250[a1];
  }
}

void sub_24A221618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A221B20(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_24A222624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2229C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A222D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22311C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2234D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A223B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A223F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2243C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2247A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A224A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A224D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))();
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A2261EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  (*(a11 + 16))();
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_24A226574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A226BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  objc_destroyWeak((v43 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  (*(v42 + 16))(v42);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_24A227304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2279B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(a3 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A228434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a14 + 16))();
  _Block_object_dispose((v14 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_24A228E98(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_24A2299E4(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A22A060(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Block_object_dispose((v3 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A22AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22B9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a14 + 16))();
  _Block_object_dispose((v14 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_24A22C4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(a17 + 16))();
  _Block_object_dispose((v17 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A22CAC8(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A22CEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A22E624(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_24A23005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  (*(a11 + 16))();
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_24A230458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A230988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A230D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2313A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  (*(a14 + 16))();
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_24A231928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  (*(a11 + 16))();
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_24A231CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A232064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2325D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A232944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A232FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A233544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(a3 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A23430C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A234C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A235264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(a13 + 16))();
  _Block_object_dispose((v13 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A2358B0(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A2364E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  (*(a23 + 16))();
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return LogPrintF_safe();
}

void sub_24A23776C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A238208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A238F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A239B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A239F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A23A6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_24A23A984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_24A23AD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24A23B070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24A23B290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return CFDictionaryGetInt64Ranged();
}

void sub_24A23D89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2401C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A240C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_24A241204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A246FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A247B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A247CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A247E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2482F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A248A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_24A248C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A248EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A249B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24A178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24ADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24B1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24B9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24C1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  (*(a11 + 16))();
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_24A24D12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A24D508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_3(void *a1, const char *a2)
{

  return [a1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v3];
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1)
{

  return [v2 initWithServerResponseDictionary:v1 locale:a1];
}

uint64_t OUTLINED_FUNCTION_6_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = 0;

  return [a1 removeItemAtPath:v11 error:&a11];
}

void sub_24A250248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A25079C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A25167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A252670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak(&a42);
  objc_destroyWeak((v42 - 256));
  _Unwind_Resume(a1);
}

void sub_24A2529A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2538F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24A254824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24A254DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __ENIsTestContext_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  ENIsTestContext__isTestingContext = result != 0;
  return result;
}

void sub_24A255484(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

id exposureWindowsForScanInstances(uint64_t *a1, uint64_t a2, __int128 *a3, char a4, void *a5, double a6)
{
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v13 = [MEMORY[0x277CBEA88] calendarWithIdentifier:*MEMORY[0x277CBE5B8]];
  v14 = [MEMORY[0x277CBEBA8] timeZoneForSecondsFromGMT:0];
  [v13 setTimeZone:v14];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __exposureWindowsForScanInstances_block_invoke;
  v21[3] = &unk_278FD2AF0;
  v25 = *a3;
  v26 = *(a3 + 2);
  v22 = v13;
  v23 = v11;
  v27 = a4;
  v15 = v12;
  v24 = v15;
  v16 = v11;
  v17 = v13;
  groupScanInstances(a1, a2, v21, a6);
  v18 = v24;
  v19 = v15;

  return v15;
}

void groupScanInstances(uint64_t *a1, uint64_t a2, void *a3, double a4)
{
  v7 = a3;
  if (a2)
  {
    v10 = v7;
    if (a2 == 1)
    {
      goto LABEL_9;
    }

    v8 = a1 + 2;
    v9 = a2 - 1;
    a2 = 1;
    do
    {
      if (scanInstancesInDifferentWindows(*a1, a1[1], *v8, v8[1], a4))
      {
        v10[2](v10, a1, a2);
        a2 = 1;
        a1 = v8;
      }

      else
      {
        a2 = (a2 + 1);
      }

      v8 += 2;
      --v9;
    }

    while (v9);
    v7 = v10;
    if (a2)
    {
LABEL_9:
      v7[2](v10, a1, a2);
      v7 = v10;
    }
  }
}

BOOL scanInstancesInDifferentWindows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  if (a1 != a3)
  {
    return 1;
  }

  v5 = *(&v8 + 4);
  v6 = *(&v9 + 4);
  if (*(&v8 + 4) < *(&v9 + 4))
  {
    *&v6 = v8 >> 32;
    *&v5 = v9 >> 32;
  }

  return v6 + a5 <= v5;
}

void __exposureWindowsForScanInstances_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 73);
  v7 = *(a1 + 74);
  v8 = *(a1 + 75);
  v22 = objc_alloc_init(MEMORY[0x277CC5C70]);
  [v22 setDiagnosisReportType:v6];
  [v22 setCalibrationConfidence:v7];
  [v22 setVariantOfConcernType:v8];
  v9 = *(a2 + 4);
  v10 = MEMORY[0x277CBEAA0];
  v11 = *(a1 + 32);
  v12 = [v10 dateWithTimeIntervalSince1970:v9];
  v13 = [v11 startOfDayForDate:v12];

  [v22 setDate:v13];
  [v22 setInfectiousness:{objc_msgSend(*(a1 + 40), "infectiousnessWithDaysSinceOnsetOfSymptoms:", *(a1 + 64))}];
  v14 = objc_alloc_init(MEMORY[0x277CBEB10]);
  if (a3)
  {
    v16 = 0;
    v17 = a2 - 8;
    do
    {
      v18 = *(v17 + 8);
      v23 = v18;
      if (*(a1 + 80))
      {
        if (v16 && *(v17 - 8) == v18 && (LOWORD(v15) = HIWORD(v18), v15 = *&v15, *&v18 = vabdd_f64(COERCE_DOUBLE(v18 >> 32) - v15, *(v17 - 4)), *&v18 < 4.0))
        {
          v19 = vcvtmd_u64_f64(*(&v23 + 4) / 60.0) - vcvtmd_u64_f64(*(v17 - 4) / 60.0);
        }

        else
        {
          LOWORD(v18) = HIWORD(v23);
          v19 = llroundf(v18 / 60.0);
        }

        v20 = 60 * v19;
        HIWORD(v23) = v20;
      }

      else
      {
        v20 = HIWORD(v18);
      }

      if (v20)
      {
        v21 = objc_alloc_init(MEMORY[0x277CC5D18]);
        [v21 setMinimumAttenuation:BYTE13(v23)];
        [v21 setTypicalAttenuation:BYTE12(v23)];
        [v21 setSecondsSinceLastScan:HIWORD(*(&v23 + 1))];
        [v14 addObject:v21];
      }

      ++v16;
      v17 += 16;
    }

    while (a3 != v16);
  }

  [v22 setScanInstances:v14];
  [*(a1 + 48) addObject:v22];
}

uint64_t __timeOrderedAdvertisements_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

id ENBundleIdentifierForURLSessions()
{
  v0 = [MEMORY[0x277CCA8D0] mainBundle];
  v1 = [v0 bundleIdentifier];

  return v1;
}

void sub_24A25ACA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *(v0 + 8);

  return sqlite3_extended_errcode(v2);
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  v2 = *v0;

  return sqlite3_extended_errcode(v2);
}

void sub_24A25E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A25EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A25FB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A25FFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A260530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2608DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return [v1 _checkDatabaseOpenWithError:v0];
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [v5 executeSQL:a3 error:v6 bindingHandler:a5 enumerationHandler:0];
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return [v1 performTransactionWithType:1 error:v0 usingBlock:?];
}

void OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
}

id ENTestResultErrorF(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if ((a1 - 1) > 0xC)
  {
    v2 = "?";
  }

  else
  {
    v2 = (&off_278FD3088)[a1 - 1];
  }

  v3 = NSPrintV();
  v12 = v2;
  v4 = NSPrintF();
  v5 = objc_alloc(MEMORY[0x277CCA9B0]);
  v13[0] = @"cuErrorDesc";
  v13[1] = @"cuErrorMsg";
  v6 = &stru_285D62BB0;
  if (v3)
  {
    v6 = v3;
  }

  v14[0] = v4;
  v14[1] = v6;
  v7 = *MEMORY[0x277CC5BF8];
  v13[2] = *MEMORY[0x277CCA060];
  v14[2] = v4;
  v8 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v14 forKeys:v13 count:{3, v12, v3}];
  v9 = [v5 initWithDomain:v7 code:a1 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id ENNestedTestResultErrorF(void *a1, uint64_t a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ((a2 - 1) > 0xC)
  {
    v4 = "?";
  }

  else
  {
    v4 = (&off_278FD3088)[a2 - 1];
  }

  v5 = NSPrintV();
  v18 = v4;
  v6 = NSPrintF();
  v7 = objc_alloc(MEMORY[0x277CCA9B0]);
  v8 = *MEMORY[0x277CC5BF8];
  v19[0] = @"cuErrorDesc";
  v19[1] = @"cuErrorMsg";
  v9 = &stru_285D62BB0;
  if (v5)
  {
    v9 = v5;
  }

  v20[0] = v6;
  v20[1] = v9;
  v10 = *MEMORY[0x277CCA060];
  v20[2] = v6;
  v11 = *MEMORY[0x277CCA7E0];
  v19[2] = v10;
  v19[3] = v11;
  v12 = v3;
  if (!v3)
  {
    v13 = *MEMORY[0x277CCA598];
    v12 = NSErrorF();
  }

  v20[3] = v12;
  v14 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v20 forKeys:v19 count:{4, v18, v5}];
  v15 = [v7 initWithDomain:v8 code:a2 userInfo:v14];

  if (!v3)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void *__getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AppSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278FD30F0;
    v7 = 0;
    AppSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AppSupportLibraryCore_frameworkLibrary;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    __getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "CPPhoneNumberCopyActiveCountryCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!TelephonyPreferencesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __TelephonyPreferencesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278FD3128;
    v7 = 0;
    TelephonyPreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = TelephonyPreferencesLibraryCore_frameworkLibrary;
  if (!TelephonyPreferencesLibraryCore_frameworkLibrary)
  {
    __getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "TPSNormalizedPhoneNumberString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTPSNormalizedPhoneNumberStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TelephonyPreferencesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyPreferencesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ENReadLinesFromFile()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v49 = *MEMORY[0x277D85DE8];
  v29 = v4;
  if ((v3 & 0x80000000) == 0)
  {
    v27 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CCAB60]);
    bzero(__buf, 0x2000uLL);
    v6 = objc_autoreleasePoolPush();
    v7 = pread(v3, __buf, 0x2000uLL, 0);
    if (v7 < 1)
    {
LABEL_21:
      if (v7 < 0)
      {
        if (*__error())
        {
          if (*__error())
          {
            v21 = *__error();
          }

          else
          {
            v21 = -6700;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CCA598] code:v21 userInfo:{0, v27}];
LABEL_34:
        v19 = v22;
      }

      else
      {
        v19 = 0;
      }

      objc_autoreleasePoolPop(v6);
      if (v19)
      {
        if (v27)
        {
          v23 = v19;
          v20 = 0;
          *v27 = v19;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_41;
      }

      v24 = [v5 length];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __ENReadLinesFromFile_block_invoke_2;
      v30[3] = &unk_278FD3170;
      v31 = v29;
      [v5 enumerateSubstringsInRange:0 options:v24 usingBlock:{0, v30}];
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v28 = v33;
      while (1)
      {
        v10 = v7 + v8;
        if (v7 + v8 >= 3)
        {
          v11 = 3;
        }

        else
        {
          v11 = v7 + v8;
        }

        v12 = v7 + v8;
        do
        {
          v13 = [objc_alloc(MEMORY[0x277CCACA0]) initWithBytes:__buf length:v12 encoding:4];
          v14 = v13;
          if (v13)
          {
            v15 = 1;
          }

          else
          {
            v15 = v11 == 0;
          }

          --v11;
          --v12;
        }

        while (!v15);
        if (!v13)
        {
          v22 = ENErrorF();
          goto LABEL_34;
        }

        if ([v13 length] >= v10)
        {
          v8 = 0;
        }

        else
        {
          v16 = [v14 length];
          [v14 length];
          v8 = v10 - v16;
          __memmove_chk();
        }

        [v5 appendString:{v14, v27, v28}];
        v44 = 0;
        v45 = &v44;
        v46 = 0x2020000000;
        v47 = 0;
        v38 = 0;
        v39 = &v38;
        v40 = 0x3010000000;
        v41 = &unk_24A2B34BB;
        v42 = 0;
        v43 = 0;
        v17 = [v5 length];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v33[0] = __ENReadLinesFromFile_block_invoke;
        v33[1] = &unk_278FD3148;
        v18 = v5;
        v34 = v18;
        v35 = v29;
        v36 = &v44;
        v37 = &v38;
        [v18 enumerateSubstringsInRange:0 options:v17 usingBlock:{0, v32}];
        if (v45[3])
        {
          break;
        }

        if (v39[5])
        {
          [v18 deleteCharactersInRange:v39[4]];
        }

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v44, 8);

        objc_autoreleasePoolPop(v6);
        v6 = objc_autoreleasePoolPush();
        v9 += v7;
        v7 = pread(v3, &__buf[v8], 0x2000 - v8, v9);
        if (v7 < 1)
        {
          goto LABEL_21;
        }
      }

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v44, 8);

      objc_autoreleasePoolPop(v6);
    }

    v19 = 0;
    v20 = 1;
LABEL_41:

    goto LABEL_42;
  }

  if (v2)
  {
    ENErrorF();
    *v2 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_42:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_24A2653E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void __ENReadLinesFromFile_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSUInteger a5, NSUInteger a6, _BYTE *a7)
{
  v12 = a2;
  if (a5 + a6 >= [*(a1 + 32) length])
  {
    *a7 = 1;
  }

  else
  {
    v11 = *(*(a1 + 48) + 8);
    (*(*(a1 + 40) + 16))();
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a7 = 1;
    }

    v14.location = a5;
    v14.length = a6;
    *(*(*(a1 + 56) + 8) + 32) = NSUnionRange(*(*(*(a1 + 56) + 8) + 32), v14);
  }
}

void sub_24A265CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A265FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ENAdvertisementDatabaseStorageFullResponseHandler(CFTypeRef cf, char a2)
{
  if ((a2 & 3) == 0)
  {
    v3 = [MEMORY[0x277CBEBC8] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
    v4 = [MEMORY[0x277CC1E78] defaultWorkspace];
    v5 = [v4 openSensitiveURL:v3 withOptions:0];

    if ((v5 & 1) == 0 && gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      _ENAdvertisementDatabaseStorageFullResponseHandler_cold_1();
    }
  }

  alertActive = 0;

  CFRelease(cf);
}

void sub_24A267798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A2682F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A268B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24A269E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ENSQLiteBindFoundationValue_cold_1()
{
  v1 = [MEMORY[0x277CCA888] currentHandler];
  v0 = [MEMORY[0x277CCACA0] stringWithUTF8String:{"void ENSQLiteBindFoundationValue(sqlite3_stmt * _Nonnull, int, id  _Nullable __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"ENSQLiteUtils.m" lineNumber:33 description:{@"Binding unexpected value class %@", objc_opt_class()}];
}

void ENSQLiteBindFoundationValue_cold_2(void *a1)
{
  v3 = [MEMORY[0x277CCA888] currentHandler];
  v2 = [MEMORY[0x277CCACA0] stringWithUTF8String:{"void ENSQLiteBindFoundationValue(sqlite3_stmt * _Nonnull, int, id  _Nullable __strong)"}];
  [v3 handleFailureInFunction:v2 file:@"ENSQLiteUtils.m" lineNumber:24 description:{@"NSData parameter is large (%lu bytes)", objc_msgSend(a1, "length")}];
}

void __getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA888] currentHandler];
  v3 = [MEMORY[0x277CCACA0] stringWithUTF8String:"void *AppSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ENCoreTelephonyUtility.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA888] currentHandler];
  v3 = [MEMORY[0x277CCACA0] stringWithUTF8String:"void *TelephonyPreferencesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ENCoreTelephonyUtility.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F918](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}