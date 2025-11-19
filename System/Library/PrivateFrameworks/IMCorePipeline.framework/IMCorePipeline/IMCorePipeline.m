id sub_2547DF9C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 nextComponent];
  v5 = [v4 runWithInput:v3];

  return v5;
}

void sub_2547E016C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2547E0198(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v9 = v3;
    if ([v3 state] == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v4 = *(a1 + 32);
      v5 = [v9 error];
      [v4 failWithError:v5];

LABEL_7:
      v3 = v9;
      goto LABEL_8;
    }

    v6 = [v9 value];
    [*(a1 + 40) setObject:v6 atIndexedSubscript:*(a1 + 64)];

    v7 = ++*(*(*(a1 + 56) + 8) + 24);
    v8 = [*(a1 + 40) count] == v7;
    v3 = v9;
    if (v8)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(a1 + 32) fullfillWithValue:*(a1 + 40)];
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_2547E036C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(a1 + 32);
    v8 = [v3 error];

    [v4 failWithError:v8];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [v3 value];

    v7 = (*(v5 + 16))(v5, v6);

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2547E049C;
    v9[3] = &unk_279788520;
    v10 = *(a1 + 32);
    [v7 registerCompletionBlock:v9];
  }
}

void sub_2547E049C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  if (v4 == 1)
  {
    v6 = [v3 error];

    [v5 failWithError:v6];
  }

  else
  {
    v6 = [v3 value];

    [v5 fullfillWithValue:v6];
  }
}

id IMCorePipelineHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMCorePipelineHelloWorldClass.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMCorePipelineHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMCorePipelineHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMCorePipelineHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for IMCorePipelineHelloWorld(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IMCorePipelineHelloWorld(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}