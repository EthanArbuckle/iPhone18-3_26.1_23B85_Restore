uint64_t HMXPCGetNextClientID()
{
  if (HMXPCGetNextClientID_sOnce != -1)
  {
    HMXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&HMXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __HMXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  HMXPCGetNextClientID_sNext = word_280C38202 << 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return LogPrintF();
}

id HMEarLossDataToArray(void *a1)
{
  v22[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    [a1 getBytes:&v20 length:32];
    LODWORD(v1) = v20;
    v2 = [MEMORY[0x277CCABB0] numberWithFloat:v1];
    v22[0] = v2;
    LODWORD(v3) = DWORD1(v20);
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
    v22[1] = v4;
    LODWORD(v5) = DWORD2(v20);
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v22[2] = v6;
    LODWORD(v7) = HIDWORD(v20);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v22[3] = v8;
    LODWORD(v9) = v21;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v22[4] = v10;
    LODWORD(v11) = DWORD1(v21);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v22[5] = v12;
    LODWORD(v13) = DWORD2(v21);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v22[6] = v14;
    LODWORD(v15) = HIDWORD(v21);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v22[7] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:8];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id HMEarLossArrayToData(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    memset(v17, 0, sizeof(v17));
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      LODWORD(v6) = 0;
      v7 = *v14;
LABEL_4:
      v8 = 0;
      v6 = v6;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v6 == 8)
        {
          break;
        }

        [*(*(&v13 + 1) + 8 * v8) doubleValue];
        *&v9 = v9;
        *(v17 + v6++) = LODWORD(v9);
        if (v5 == ++v8)
        {
          v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v17 length:32];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

double OUTLINED_FUNCTION_0_1(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, float a29)
{
  v30 = v29[12];
  result = a29;
  v32 = v29[22];
  v33 = v29[6];
  v34 = v29[8];
  v35 = v29[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return [v0 isEqual:v1];
}

void sub_251F7CB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251F7CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251F7D314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
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

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 64);
  v3 = *(a2 + 40);
  return result;
}