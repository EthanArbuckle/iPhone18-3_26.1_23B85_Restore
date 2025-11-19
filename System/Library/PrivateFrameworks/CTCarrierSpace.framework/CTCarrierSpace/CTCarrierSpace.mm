void sub_2426DC7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23)
{
  if (a21 != a16)
  {
  }

  if (a17 != a20)
  {
  }

  if (v30 != v29)
  {
  }

  if (v27 != v28)
  {
  }

  if (v24 != v25)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2426DFCC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2426E0448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CTCarrierSpaceClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2426E0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

uint64_t ___ZN8dispatch9sync_implIU8__strongU13block_pointerFP11objc_objectvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  v4 = *v3;
  *v3 = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t _CTCarrierSpaceLogDomain()
{
  if (_CTCarrierSpaceLogDomain_token != -1)
  {
    _CTCarrierSpaceLogDomain_cold_1();
  }

  return _CTCarrierSpaceLogDomain_oslog;
}

const char *CTCarrierSpaceDeviceTypeAsString(unint64_t a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278D64778[a1];
  }
}

const char *CTCarrierSpacePlanCategoryAsString(unint64_t a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278D647A0[a1];
  }
}

const char *CTCarrierSpaceDataUnitsAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return "???";
  }

  else
  {
    return off_278D647C0[a1 - 1];
  }
}

double CTCarrierSpaceConvertDataUnits(uint64_t a1, uint64_t a2, double result)
{
  if (result != 0.0)
  {
    if (a1 >= a2)
    {
      if (a1 > a2)
      {
        v4 = a1 - a2;
        if (a1 != a2)
        {
          do
          {
            --v4;
            result = result * 1024.0;
          }

          while (v4);
        }
      }
    }

    else
    {
      v3 = a2 - a1;
      if (a2 != a1)
      {
        do
        {
          --v3;
          result = result * 0.0009765625;
        }

        while (v3);
      }
    }
  }

  return result;
}

const char *CTCarrierSpacePlanPurchaseStatusAsString(unint64_t a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_278D647E8[a1];
  }
}

const char *CTCarrierSpacePlanStatusAsString(unint64_t a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278D64810[a1];
  }
}

const char *CTCarrierSpaceRegistrationStatusAsString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278D64830[a1];
  }
}

__CFString *errorDescription(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_278D64878[a1];
  }
}