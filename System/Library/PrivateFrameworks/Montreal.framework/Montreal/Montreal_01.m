__CFData *MRLModelCopyQuantizedSerializedData(uint64_t a1, int a2)
{
  std::mutex::lock(&stru_1EB013260);
  if (*(a1 + 136) != 32 || a2 != 8)
  {
    sub_19D41C548(42);
  }

  Mutable = CFDataCreateMutable(0, 0);
  CFDataIncreaseLength(Mutable, 104857600);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v7 = fmemopen(MutableBytePtr, 0x6400000uLL, "wb");
  v8 = sub_19D2CC89C(a1, v7);
  CFDataSetLength(Mutable, v8);
  fclose(v7);
  std::mutex::unlock(&stru_1EB013260);
  return Mutable;
}

uint64_t MRLModelGetOutputSize(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  if (!a1)
  {
    sub_19D41C548(14);
  }

  v2 = sub_19D2CD188(a1);
  std::mutex::unlock(&stru_1EB013260);
  return v2;
}

uint64_t MRLModelGetInputSize(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  v2 = sub_19D2D2A90(a1);
  std::mutex::unlock(&stru_1EB013260);
  return v2;
}

void MRLModelRecognize(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  operator new();
}

void sub_19D2B355C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B351CLL);
}

void sub_19D2B35B0(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, unint64_t a5, int a6, int a7)
{
  v8 = *(a1 + 220);
  dword_1EB0131E8 = *(a1 + 224);
  if (v8 < a3)
  {
    sub_19D41C548(90);
  }

  sub_19D2CCA14(a1, "recognizeSequenceInternalFullBiDir, tokenID - activate all buffer to %d length", v8);
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a1 + 176);
  sub_19D2D2A98(a1, v14);
  v15 = *(a1 + 220) - 1;
  if (v15 >= 0)
  {
    v15 = 0;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  if (v15)
  {
    sub_19D2AE2B4();
  }

  sub_19D2D2D2C(a1, v14);
  sub_19D2D1E4C(a1, &__p);
  v16 = sub_19D2CD188(a1);
  if (a7)
  {
    if (!a4)
    {
      sub_19D41C548(103);
    }

    if (a6 < 1)
    {
      sub_19D2D2DA0(a1, a4, (v19 - __p) >> 2);
    }

    else
    {
      sub_19D2D2E90(a1, a4, a5, a6, (v19 - __p) >> 2);
    }

LABEL_17:
    v17 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

  if (a6 >= 1)
  {
    sub_19D2D348C(a1, a4, a5, a6, (v19 - __p) >> 2);
    goto LABEL_17;
  }

  memcpy(a4, *(a1 + 168), 4 * v16);
  v17 = __p;
  if (__p)
  {
LABEL_18:
    v19 = v17;
    operator delete(v17);
  }
}

void sub_19D2B385C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2B38A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dword_1EB0131E8 = *(a1 + 224);
  if ((*(a1 + 188) & 1) == 0)
  {
    sub_19D2CCD00(a1);
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2D2A98(a1, *(a1 + 176));
}

void sub_19D2B3B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    if (!v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void sub_19D2B3D7C(void *a1)
{
  operator delete(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B3D2CLL);
}

void *sub_19D2B3DE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char a5)
{
  v10 = *(a1 + 220);
  dword_1EB0131E8 = *(a1 + 224);
  sub_19D2CCA14(a1, "recognizeSequenceInternalFullBiDir, float* - activate all buffer to %d length", v10);
  v11 = *(a1 + 176);
  sub_19D2D2A98(a1, v11);
  if (*(a1 + 220) - 1 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = *(a1 + 220) - 1;
  }

  sub_19D2D2D2C(a1, v11);
  sub_19D2D257C(a1, a2, a3);
  if (a5)
  {
    if (!a4)
    {
      sub_19D41C548(303);
    }

    return sub_19D2D2DA0(a1, a4, v12);
  }

  else
  {
    v14 = *(a1 + 168);
    v15 = 4 * sub_19D2CD188(a1);

    return memcpy(a4, v14, v15);
  }
}

uint64_t sub_19D2B3EF0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  dword_1EB0131E8 = *(a1 + 224);
  v8 = *(a1 + 200);
  if (v8)
  {
    if (*(v8 + 28) >= a4)
    {
      goto LABEL_3;
    }

LABEL_20:
    sub_19D41C548(1764);
  }

  if (a4 > 1)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((*(a1 + 188) & 1) == 0)
  {
    sub_19D2CCD00(a1);
  }

  v9 = *(a1 + 176);
  v27 = 1;
  result = sub_19D2D2A98(a1, v9);
  if (a3 >= 1)
  {
    v11 = *a2;
    v12 = (*(a1 + 32) * a4);
    if (v12 < 1)
    {
      goto LABEL_17;
    }

    v13 = ***(a1 + 208);
    if (v12 >= 8 && (v13 - v11) > 0x1F)
    {
      v15 = v12 & 0x7FFFFFF8;
      v16 = (v11 + 16);
      v17 = (v13 + 16);
      v18 = v15;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 8;
      }

      while (v18);
      if (v15 == v12)
      {
LABEL_17:
        __p = 0;
        v25 = 0;
        v26 = 0;
        operator new();
      }
    }

    else
    {
      v15 = 0;
    }

    v20 = (v11 + 4 * v15);
    v21 = (v13 + 4 * v15);
    v22 = v12 - v15;
    do
    {
      v23 = *v20++;
      *v21++ = v23;
      --v22;
    }

    while (v22);
    goto LABEL_17;
  }

  return result;
}

void sub_19D2B4130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2B42D4(void *a1)
{
  operator delete(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B4278);
}

void sub_19D2B4BE4(void *a1)
{
  operator delete(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B4A28);
}

void sub_19D2B5478(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(__p);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B52B0);
}

void MRLModelRecognizeTopN(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  sub_19D2CD188(a1);
  operator new();
}

void sub_19D2B5DF8(void *a1)
{
  operator delete(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B5724);
}

void MRLModelStateCreate(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  sub_19D2CD190(a1);
}

void sub_19D2B5EAC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B5E90);
}

uint64_t MRLModelStateSave(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  if ((*(a1 + 188) & 1) == 0)
  {
    sub_19D2CCD00(a1);
  }

  if (!a2)
  {
    sub_19D41C548(40);
  }

  sub_19D2D2CC4(a1, a2, a3);
  std::mutex::unlock(&stru_1EB013260);
  return a2;
}

void sub_19D2B5F74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B5F48);
}

uint64_t MRLModelStateRestore(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  if ((*(a1 + 188) & 1) == 0)
  {
    sub_19D2CCD00(a1);
  }

  if (!a2)
  {
    sub_19D41C548(41);
  }

  sub_19D2D2D2C(a1, a2);
  std::mutex::unlock(&stru_1EB013260);
  return a2;
}

void sub_19D2B6030(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B6008);
}

uint64_t MRLModelStateIsEmpty(uint64_t a1, void *a2)
{
  std::mutex::lock(&stru_1EB013260);
  if (!a2)
  {
    sub_19D41C548(45);
  }

  v4 = sub_19D2D2AF8(a1, a2);
  std::mutex::unlock(&stru_1EB013260);
  return v4;
}

void sub_19D2B60D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B60A8);
}

void sub_19D2B6150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2B616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  memset(__p, 0, sizeof(__p));
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (a2)
  {
    v7 = 1;
    sub_19D2B7260(__p, 0, &v7);
  }

  if (*(a1 + 216) != 1)
  {
    operator new();
  }

  sub_19D41C548(456);
}

void sub_19D2B62F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B62B0);
}

void MRLModelRecognizeIncrementalOneClassOnly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a6)
  {
    if (a7 >= 1)
    {
      operator new();
    }
  }

  sub_19D41C548(98);
}

void sub_19D2B64F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MRLModelRecognizeIncrementalClassPlusSuffixIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a6)
  {
    if (a7 >= 1)
    {
      operator new();
    }
  }

  sub_19D41C548(98);
}

void sub_19D2B685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void MRLModelRecognizeIncrementalTopN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock(&stru_1EB013260);
  dword_1EB0131E8 = *(a1 + 224);
  if (*(a1 + 216) != 1)
  {
    memset(__p, 0, sizeof(__p));
    if (a4)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    if (a2)
    {
      v7 = 1;
      sub_19D2B7260(__p, 0, &v7);
    }

    sub_19D2CD188(a1);
    operator new();
  }

  sub_19D41C548(456);
}

void sub_19D2B71D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D2B7108);
}

char *sub_19D2B7260(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      *(a1 + 8) = v6 + 4;
      return v4;
    }

    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v6 == v8)
      {
LABEL_21:
        v17 = v9 <= a3 || v4 > a3;
        v18 = 4;
        if (v17)
        {
          v18 = 0;
        }

        *v4 = *&a3[v18];
        return v4;
      }
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
      *(a1 + 8) = v6 + 4;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 4, __src, v6 - v8);
    v9 = *(a1 + 8);
    goto LABEL_21;
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 2) + 1;
  if (v11 >> 62)
  {
    sub_19D2AE2B4();
  }

  v12 = v7 - v10;
  if (v12 >> 1 > v11)
  {
    v11 = v12 >> 1;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v13 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 62))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v14 = __src - v10;
  v15 = (__src - v10) >> 2;
  v16 = (4 * v15);
  if (!v15)
  {
    if (v14 < 1)
    {
      v19 = v14 >> 1;
      if (v10 == __src)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      if (!(v20 >> 62))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v16 = (v16 - (((v14 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
  }

  *v16 = *a3;
  memcpy(v16 + 1, __src, *(a1 + 8) - __src);
  v21 = *a1;
  v22 = v16 + *(a1 + 8) - v4 + 4;
  *(a1 + 8) = v4;
  v23 = v4 - v21;
  v24 = v16 - (v4 - v21);
  memcpy(v24, v21, v23);
  v25 = *a1;
  *a1 = v24;
  *(a1 + 8) = v22;
  *(a1 + 16) = 0;
  if (v25)
  {
    operator delete(v25);
  }

  return v16;
}

void sub_19D2B7494(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void MRLModelStateReset(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(&stru_1EB013260);
  if (a2)
  {
    sub_19D2D2A98(a1, a2);
  }

  std::mutex::unlock(&stru_1EB013260);
}

void sub_19D2B7504(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_end_catch();
    JUMPOUT(0x19D2B74E0);
  }

  __cxa_end_catch();

  std::mutex::unlock(&stru_1EB013260);
}

void MRLModelStateRelease(uint64_t a1, char **a2)
{
  std::mutex::lock(&stru_1EB013260);
  if (a2)
  {
    sub_19D2CD32C(a1, a2);
  }

  std::mutex::unlock(&stru_1EB013260);
}

void sub_19D2B75B4(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_end_catch();
    JUMPOUT(0x19D2B7590);
  }

  __cxa_end_catch();

  std::mutex::unlock(&stru_1EB013260);
}

uint64_t MRLModelStateSize(uint64_t a1, void *a2)
{
  std::mutex::lock(&stru_1EB013260);
  if (a2)
  {
    v3 = (a2[1] - *a2) >> 4;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  std::mutex::unlock(&stru_1EB013260);
  return v3;
}

uint64_t MRLModelStatePieceSize(uint64_t a1, void *a2, int a3)
{
  std::mutex::lock(&stru_1EB013260);
  if (!a2 || ((v5 = (a2[1] - *a2) >> 4, v5 >= 1) ? (v6 = v5 <= a3) : (v6 = 1), v6))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = *(*a2 + 16 * a3);
  }

  std::mutex::unlock(&stru_1EB013260);
  return v7;
}

uint64_t MRLModelStatePieceData(uint64_t a1, void *a2, int a3)
{
  std::mutex::lock(&stru_1EB013260);
  if (!a2 || ((v5 = (a2[1] - *a2) >> 4, v5 >= 1) ? (v6 = v5 <= a3) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = **(*a2 + 16 * a3 + 8);
  }

  std::mutex::unlock(&stru_1EB013260);
  return v7;
}

uint64_t MRLModelGetIOMappings(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  v2 = sub_19D2D2D98(a1);
  std::mutex::unlock(&stru_1EB013260);
  return v2;
}

void MRLModelRelease(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  if (a1)
  {
    dword_1EB0131E8 = *(a1 + 224);
    v2 = sub_19D2CD600(a1);
    operator delete(v2);
  }

  std::mutex::unlock(&stru_1EB013260);
}

void MRLModelReset(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  if (a1)
  {
    dword_1EB0131E8 = *(a1 + 224);
    if (*(a1 + 188) == 1)
    {
      sub_19D2CCAF0(a1);
    }

    *(a1 + 188) = 0;
  }

  std::mutex::unlock(&stru_1EB013260);
}

uint64_t MRLModelLock(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  if (a1)
  {
    dword_1EB0131E8 = *(a1 + 224);
    v2 = *(a1 + 228);
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = sub_19D2CC710(a1);
    v4 = sub_19D2CC6F4(a1);
    v5 = 0;
    if (!v4 || !v3)
    {
      goto LABEL_7;
    }

    if (v4 % getpagesize() || mlock(v4, v3) == -1)
    {
LABEL_6:
      v5 = 0;
    }

    else
    {
      v5 = 1;
      *(a1 + 228) = 1;
    }

LABEL_7:
    a1 = v5 | v2;
  }

  std::mutex::unlock(&stru_1EB013260);
  return a1;
}

uint64_t MRLModelUnlock(uint64_t a1)
{
  std::mutex::lock(&stru_1EB013260);
  if (a1)
  {
    dword_1EB0131E8 = *(a1 + 224);
    if (*(a1 + 228) == 1 && (v2 = sub_19D2CC710(a1), (v3 = sub_19D2CC6F4(a1)) != 0) && munlock(v3, v2) != -1)
    {
      *(a1 + 228) = 0;
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  std::mutex::unlock(&stru_1EB013260);
  return a1;
}

uint64_t MRLModelSetMaxSequenceLength(uint64_t a1, int a2)
{
  std::mutex::lock(&stru_1EB013260);
  if (!a1)
  {
    goto LABEL_6;
  }

  dword_1EB0131E8 = *(a1 + 224);
  if (*(a1 + 188) == 1)
  {
    sub_19D2CCAF0(a1);
  }

  *(a1 + 188) = 0;
  if ((a2 - 1) <= 0x270E)
  {
    v4 = 0;
    *(a1 + 220) = a2;
    *(a1 + 224) = a2;
    dword_1EB0131E8 = a2;
  }

  else
  {
LABEL_6:
    v4 = 0xFFFFFFFFLL;
  }

  std::mutex::unlock(&stru_1EB013260);
  return v4;
}

CFMutableDataRef MRLModelCopyFlatWeights(uint64_t a1, _DWORD *a2)
{
  MRLModelGetWeights_0(a1);
  Mutable = CFDataCreateMutable(0, 0);
  if (a2)
  {
    *a2 = *(a1 + 136);
  }

  return Mutable;
}

void sub_19D2B7BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL MRLModelConvertFlatWeights(const char *a1)
{
  v10[19] = *MEMORY[0x1E69E9840];
  sub_19D2B8208(v8);
  std::istream::seekg();
  std::istream::tellg();
  std::istream::seekg();
  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a1, 0x8000100u);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, kMRLModelFileLocationKey, v3);
  v5 = MRLModelCreate(Mutable);
  MRLModelGetWeights_0(v5);
  if (!v7)
  {
    operator new[]();
  }

  v8[0] = *MEMORY[0x1E69E54C8];
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x19EAFA1F0](&v9);
  std::istream::~istream();
  MEMORY[0x19EAFA410](v10);
  return v7 == 0;
}

void sub_19D2B8168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D2B866C(&STACK[0x258], MEMORY[0x1E69E54C8]);
  MEMORY[0x19EAFA410](&STACK[0x400]);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D2B8208(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x19EAFA1E0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19D2B8394(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x19EAFA410](v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D2B83D8(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x19EAFA1E0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19D2B8560(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2B85A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x19EAFA1F0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t sub_19D2B866C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x19EAFA1F0](a1 + 2);

  return std::istream::~istream();
}

void *sub_19D2B8734(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_19D2B88A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_19D2B88C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2B88C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float *sub_19D2B8934(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v79 = *(a2 - 1);
      v80 = v8[1];
      if (v79 > v80)
      {
        v81 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v81;
        v8[1] = v79;
        *(a2 - 1) = v80;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v92 = v8 + 2;
      v94 = v8 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 0;
          v96 = v8 + 1;
          v97 = v8;
          do
          {
            v99 = v97[3];
            v100 = v97[1];
            v97 = v92;
            if (v99 > v100)
            {
              v101 = *v92;
              v102 = v95;
              v103 = v96;
              do
              {
                v103[1] = *(v103 - 1);
                v103[2] = *v103;
                if (!v102)
                {
                  v98 = v8;
                  goto LABEL_126;
                }

                v104 = *(v103 - 2);
                v103 -= 2;
                v102 += 8;
              }

              while (v99 > v104);
              v98 = v103 + 1;
LABEL_126:
              *v98 = v101;
              v98[1] = v99;
            }

            v92 = v97 + 2;
            v96 += 2;
            v95 -= 8;
          }

          while (v97 + 2 != a2);
        }
      }

      else if (!v94)
      {
        v142 = v8 + 1;
        do
        {
          v143 = v7[3];
          v144 = v7[1];
          v7 = v92;
          if (v143 > v144)
          {
            v145 = *v92;
            v146 = v142;
            do
            {
              v146[1] = *(v146 - 1);
              v146[2] = *v146;
              v147 = *(v146 - 2);
              v146 -= 2;
            }

            while (v143 > v147);
            v146[1] = v145;
            v146[2] = v143;
          }

          v92 = v7 + 2;
          v142 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v105 = (v9 - 2) >> 1;
      v106 = v8 + 2;
      v107 = v105;
      do
      {
        if (v105 >= v107)
        {
          v109 = (2 * (v107 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v110 = &v106[4 * v107];
          if (2 * (v107 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v9 && v110[1] > v110[3])
          {
            v110 += 2;
            v109 = 2 * (v107 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v111 = &v8[2 * v107];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 <= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v105 < v109)
              {
                break;
              }

              v116 = (2 * v109) | 1;
              v110 = &v106[4 * v109];
              v117 = 2 * v109 + 2;
              if (v117 < v9 && v110[1] > v110[3])
              {
                v110 += 2;
                v116 = v117;
              }

              v112 = v110[1];
              v109 = v116;
            }

            while (v112 <= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v108 = v107-- <= 0;
      }

      while (!v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v126 = &v121[2 * v118];
          v125 = v126 + 2;
          v127 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 < v9)
          {
            v122 = v126[3];
            v123 = v126[5];
            v124 = v126 + 4;
            if (v122 <= v123)
            {
              v118 = v127;
            }

            else
            {
              v125 = v124;
            }
          }

          else
          {
            v118 = v127;
          }

          *v121 = *v125;
          v121[1] = v125[1];
          v121 = v125;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v125 != a2 - 2)
        {
          *v125 = *(a2 - 2);
          v125[1] = *(a2 - 1);
          *(a2 - 2) = v119;
          *(a2 - 1) = v120;
          v128 = (v125 - v8 + 8) >> 3;
          v108 = v128 < 2;
          v129 = v128 - 2;
          if (!v108)
          {
            v130 = v129 >> 1;
            v131 = &v8[2 * v130];
            v132 = v131[1];
            v120 = v125[1];
            if (v132 > v120)
            {
              v133 = *v125;
              do
              {
                v134 = v125;
                v125 = v131;
                *v134 = *v131;
                v134[1] = v132;
                if (!v130)
                {
                  break;
                }

                v130 = (v130 - 1) >> 1;
                v131 = &v8[2 * v130];
                v132 = v131[1];
              }

              while (v132 > v120);
              *v125 = v133;
LABEL_149:
              v125[1] = v120;
            }
          }

          a2 -= 2;
          v108 = v9-- <= 2;
          if (v108)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v125 = v119;
      goto LABEL_149;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = v8[1];
      v16 = v10[1];
      if (v15 > v16)
      {
        v17 = *v10;
        if (v11 > v15)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v17;
          v10[1] = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        v10[1] = v15;
        v8[1] = v16;
        v35 = *(a2 - 1);
        if (v35 > v16)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v17;
          v8[1] = v35;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 2);
      *(a2 - 2) = v22;
      v8[1] = v11;
      *(a2 - 1) = v15;
      v23 = v8[1];
      v24 = v10[1];
      if (v23 <= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      v10[1] = v23;
      v8[1] = v24;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v37 = v8[1];
      v36 = *v8;
      if (*(v8 - 1) > v37)
      {
        goto LABEL_64;
      }

      if (v37 <= *(a2 - 1))
      {
        v70 = v8 + 2;
        do
        {
          v8 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v71 = v70[1];
          v70 += 2;
        }

        while (v37 <= v71);
      }

      else
      {
        v68 = v8;
        do
        {
          v8 = v68 + 2;
          v69 = v68[3];
          v68 += 2;
        }

        while (v37 <= v69);
      }

      v72 = a2;
      if (v8 < a2)
      {
        v73 = a2;
        do
        {
          v72 = v73 - 2;
          v74 = *(v73 - 1);
          v73 -= 2;
        }

        while (v37 > v74);
      }

      while (v8 < v72)
      {
        v75 = *v8;
        *v8 = *v72;
        *v72 = v75;
        v76 = *(v8 + 1);
        v8[1] = v72[1];
        *(v72 + 1) = v76;
        do
        {
          v77 = v8[3];
          v8 += 2;
        }

        while (v37 <= v77);
        do
        {
          v78 = *(v72 - 1);
          v72 -= 2;
        }

        while (v37 > v78);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v36;
      *(v8 - 1) = v37;
    }

    else
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 <= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          v8[1] = v12;
          v10[1] = v13;
          v26 = *(a2 - 1);
          if (v26 <= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
        }

        else
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v27 = *(v10 - 1);
      v28 = v8[3];
      v29 = *(a2 - 3);
      if (v27 <= v28)
      {
        if (v29 > v27)
        {
          v31 = *(v10 - 2);
          *(v10 - 2) = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v29;
          *(a2 - 3) = v27;
          v32 = *(v10 - 1);
          v33 = v8[3];
          if (v32 > v33)
          {
            v34 = *(v8 + 2);
            v8[2] = *(v10 - 2);
            *(v10 - 2) = v34;
            v8[3] = v32;
            *(v10 - 1) = v33;
          }
        }
      }

      else
      {
        v30 = *(v8 + 2);
        if (v29 <= v27)
        {
          v8[2] = *(v10 - 2);
          *(v10 - 2) = v30;
          v8[3] = v27;
          *(v10 - 1) = v28;
          v38 = *(a2 - 3);
          if (v38 <= v28)
          {
            goto LABEL_43;
          }

          *(v10 - 2) = *(a2 - 4);
          *(a2 - 4) = v30;
          *(v10 - 1) = v38;
        }

        else
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v30;
          v8[3] = v29;
        }

        *(a2 - 3) = v28;
      }

LABEL_43:
      v39 = v10[3];
      v40 = v8[5];
      v41 = *(a2 - 5);
      if (v39 <= v40)
      {
        if (v41 > v39)
        {
          v43 = *(v10 + 2);
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v43;
          v10[3] = v41;
          *(a2 - 5) = v39;
          v44 = v10[3];
          v45 = v8[5];
          if (v44 > v45)
          {
            v46 = *(v8 + 4);
            v8[4] = v10[2];
            *(v10 + 2) = v46;
            v8[5] = v44;
            v10[3] = v45;
          }
        }
      }

      else
      {
        v42 = *(v8 + 4);
        if (v41 <= v39)
        {
          v8[4] = v10[2];
          *(v10 + 2) = v42;
          v8[5] = v39;
          v10[3] = v40;
          v47 = *(a2 - 5);
          if (v47 <= v40)
          {
            goto LABEL_52;
          }

          v10[2] = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v47;
        }

        else
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v42;
          v8[5] = v41;
        }

        *(a2 - 5) = v40;
      }

LABEL_52:
      v48 = v10[1];
      v49 = *(v10 - 1);
      v50 = v10[3];
      if (v48 <= v49)
      {
        v51 = *v10;
        if (v50 <= v48)
        {
          goto LABEL_58;
        }

        v52 = v10[2];
        *v10 = v52;
        v10[2] = v51;
        v10[1] = v50;
        v10[3] = v48;
        if (v50 > v49)
        {
          v51 = *(v10 - 2);
          *(v10 - 2) = v52;
          *v10 = v51;
          *(v10 - 1) = v50;
          v10[1] = v49;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      v51 = *(v10 - 2);
      if (v50 > v48)
      {
        *(v10 - 2) = v10[2];
        v10[2] = v51;
        *(v10 - 1) = v50;
        v10[3] = v49;
        v51 = *v10;
LABEL_58:
        v49 = v48;
        goto LABEL_62;
      }

      *(v10 - 2) = *v10;
      *v10 = v51;
      *(v10 - 1) = v48;
      v10[1] = v49;
      if (v50 > v49)
      {
        v52 = v10[2];
        *v10 = v52;
        v10[2] = v51;
        v10[1] = v50;
        v10[3] = v49;
LABEL_61:
        v49 = v50;
        v51 = v52;
      }

LABEL_62:
      v53 = *v8;
      *v8 = v51;
      *v10 = v53;
      v54 = *(v8 + 1);
      v8[1] = v49;
      *(v10 + 1) = v54;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v36 = *v8;
      v37 = v8[1];
LABEL_64:
      v55 = v8;
      do
      {
        v56 = v55;
        v55 += 2;
      }

      while (v56[3] > v37);
      v57 = a2;
      if (v56 == v8)
      {
        v60 = a2;
        while (v55 < v60)
        {
          v58 = v60 - 2;
          v61 = *(v60 - 1);
          v60 -= 2;
          if (v61 > v37)
          {
            goto LABEL_72;
          }
        }

        v58 = v60;
        v8 = v55;
      }

      else
      {
        do
        {
          v58 = v57 - 2;
          v59 = *(v57 - 1);
          v57 -= 2;
        }

        while (v59 <= v37);
LABEL_72:
        v8 = v55;
        if (v55 < v58)
        {
          v62 = v58;
          do
          {
            v63 = *v8;
            *v8 = *v62;
            *v62 = v63;
            v64 = *(v8 + 1);
            v8[1] = v62[1];
            *(v62 + 1) = v64;
            do
            {
              v65 = v8[3];
              v8 += 2;
            }

            while (v65 > v37);
            do
            {
              v66 = *(v62 - 1);
              v62 -= 2;
            }

            while (v66 <= v37);
          }

          while (v8 < v62);
        }
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v36;
      *(v8 - 1) = v37;
      if (v55 < v58)
      {
        goto LABEL_83;
      }

      v67 = sub_19D2B972C(v7, v8 - 2);
      result = sub_19D2B972C(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v67)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v67)
      {
LABEL_83:
        result = sub_19D2B8934(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v86 = v8 + 3;
      v87 = v8[3];
      v88 = v8 + 1;
      v89 = v8[1];
      v90 = v8[5];
      if (v87 <= v89)
      {
        if (v90 > v87)
        {
          v139 = *(v8 + 2);
          v140 = *(v8 + 4);
          *(v8 + 2) = v140;
          *(v8 + 4) = v139;
          v8[3] = v90;
          v8[5] = v87;
          if (v90 > v89)
          {
            v141 = *v8;
            *v8 = v140;
            v8[2] = v141;
            goto LABEL_184;
          }

LABEL_185:
          v90 = v87;
        }
      }

      else
      {
        v91 = *v8;
        if (v90 > v87)
        {
          *v8 = v8[4];
          v8[4] = v91;
          goto LABEL_183;
        }

        *v8 = v8[2];
        v8[2] = v91;
        v8[1] = v87;
        v8[3] = v89;
        if (v90 > v89)
        {
          v8[2] = v8[4];
          v8[4] = v91;
          v88 = v8 + 3;
LABEL_183:
          v86 = v8 + 5;
          v87 = v89;
LABEL_184:
          *v88 = v90;
          *v86 = v89;
          goto LABEL_185;
        }
      }

      v149 = *(a2 - 1);
      if (v149 <= v90)
      {
        return result;
      }

      v150 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v150;
      v8[5] = v149;
      *(a2 - 1) = v90;
      v136 = v8[5];
      v151 = v8[3];
      if (v136 <= v151)
      {
        return result;
      }

      v152 = *(v8 + 2);
      v153 = *(v8 + 4);
      *(v8 + 2) = v153;
      *(v8 + 4) = v152;
      v8[3] = v136;
      v8[5] = v151;
      v137 = v8[1];
      if (v136 <= v137)
      {
        return result;
      }

      v154 = *v8;
      *v8 = v153;
      v8[2] = v154;
LABEL_190:
      v8[1] = v136;
      v8[3] = v137;
      return result;
    }

    if (v9 == 5)
    {

      return sub_19D2B9538(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

    goto LABEL_10;
  }

  v82 = v8[3];
  v83 = v8[1];
  v84 = *(a2 - 1);
  if (v82 <= v83)
  {
    if (v84 <= v82)
    {
      return result;
    }

    v135 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v135;
    v8[3] = v84;
    *(a2 - 1) = v82;
    v136 = v8[3];
    v137 = v8[1];
    if (v136 <= v137)
    {
      return result;
    }

    v138 = *v8;
    *v8 = v8[2];
    v8[2] = v138;
    goto LABEL_190;
  }

  v85 = *v8;
  if (v84 <= v82)
  {
    *v8 = v8[2];
    v8[2] = v85;
    v8[1] = v82;
    v8[3] = v83;
    v148 = *(a2 - 1);
    if (v148 <= v83)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v85;
    v8[3] = v148;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v85;
    v8[1] = v84;
  }

  *(a2 - 1) = v83;
  return result;
}

float *sub_19D2B9538(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 > v6)
  {
    v8 = *result;
    if (v7 <= v5)
    {
      *result = *a2;
      *a2 = v8;
      result[1] = v5;
      a2[1] = v6;
      v5 = a3[1];
      if (v5 <= v6)
      {
        goto LABEL_11;
      }

      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
    }

    else
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
    }

    a3[1] = v6;
    v5 = v6;
LABEL_11:
    v13 = a4[1];
    if (v13 <= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 <= v5)
  {
    v5 = a3[1];
    v13 = a4[1];
    if (v13 <= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    a2[1] = v7;
    a3[1] = v5;
    v10 = a2[1];
    v11 = result[1];
    if (v10 <= v11)
    {
      goto LABEL_11;
    }

    v12 = *result;
    *result = *a2;
    *a2 = v12;
    result[1] = v10;
    a2[1] = v11;
    v5 = a3[1];
    v13 = a4[1];
    if (v13 <= v5)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v14 = *a3;
  *a3 = *a4;
  *a4 = v14;
  a3[1] = v13;
  a4[1] = v5;
  v15 = a3[1];
  v16 = a2[1];
  if (v15 > v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    a2[1] = v15;
    a3[1] = v16;
    v18 = a2[1];
    v19 = result[1];
    if (v18 > v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      result[1] = v18;
      a2[1] = v19;
    }
  }

LABEL_16:
  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_19D2B972C(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = a1[3];
      v8 = a1[1];
      v9 = *(a2 - 1);
      if (v7 <= v8)
      {
        if (v9 <= v7)
        {
          return 1;
        }

        v23 = *(a1 + 2);
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        a1[3] = v9;
        *(a2 - 1) = v7;
        v24 = a1[3];
        v25 = a1[1];
        if (v24 <= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        a1[1] = v24;
        a1[3] = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 <= v7)
        {
          *a1 = a1[2];
          *(a1 + 2) = v10;
          a1[1] = v7;
          a1[3] = v8;
          v33 = *(a2 - 1);
          if (v33 <= v8)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v10;
          a1[3] = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v10;
          a1[1] = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_19D2B9538(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

LABEL_14:
      v11 = a1[3];
      v12 = a1 + 1;
      v13 = a1[1];
      v14 = a1 + 5;
      v15 = a1[5];
      if (v11 <= v13)
      {
        if (v15 <= v11)
        {
          goto LABEL_34;
        }

        v27 = *(a1 + 2);
        v28 = *(a1 + 4);
        *(a1 + 2) = v28;
        *(a1 + 4) = v27;
        a1[3] = v15;
        a1[5] = v11;
        if (v15 <= v13)
        {
          goto LABEL_34;
        }

        v29 = *a1;
        *a1 = v28;
        a1[2] = v29;
        v14 = a1 + 3;
      }

      else
      {
        v16 = *a1;
        if (v15 <= v11)
        {
          *a1 = a1[2];
          a1[2] = v16;
          a1[1] = v11;
          a1[3] = v13;
          if (v15 <= v13)
          {
LABEL_34:
            v34 = a1 + 6;
            if (a1 + 6 == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            v37 = a1 + 4;
            while (1)
            {
              v38 = v34[1];
              if (v38 > v37[1])
              {
                break;
              }

LABEL_43:
              v37 = v34;
              v35 += 8;
              v34 += 2;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *v34;
            v40 = v35;
            do
            {
              v41 = (a1 + v40);
              v41[6] = *(a1 + v40 + 16);
              v41[7] = *(a1 + v40 + 20);
              if (v40 == -16)
              {
                *a1 = v39;
                a1[1] = v38;
                if (++v36 != 8)
                {
                  goto LABEL_43;
                }

                return v34 + 2 == a2;
              }

              v40 -= 8;
            }

            while (v38 > v41[3]);
            v42 = a1 + v40;
            *(v42 + 6) = v39;
            *(v42 + 7) = v38;
            if (++v36 != 8)
            {
              goto LABEL_43;
            }

            return v34 + 2 == a2;
          }

          a1[2] = a1[4];
          a1[4] = v16;
          v12 = a1 + 3;
        }

        else
        {
          *a1 = a1[4];
          a1[4] = v16;
        }
      }

      *v12 = v15;
      *v14 = v13;
      goto LABEL_34;
    }

    v17 = a1 + 3;
    v18 = a1[3];
    v19 = a1 + 1;
    v20 = a1[1];
    v21 = a1[5];
    if (v18 <= v20)
    {
      if (v21 <= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 2);
      v31 = *(a1 + 4);
      *(a1 + 2) = v31;
      *(a1 + 4) = v30;
      a1[3] = v21;
      a1[5] = v18;
      if (v21 <= v20)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      a1[2] = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 <= v18)
      {
        *a1 = a1[2];
        a1[2] = v22;
        a1[1] = v18;
        a1[3] = v20;
        if (v21 <= v20)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v22;
        v19 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v22;
      }

      v17 = a1 + 5;
      v18 = v20;
    }

    *v19 = v21;
    *v17 = v20;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 <= v21)
    {
      return 1;
    }

    v44 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v44;
    a1[5] = v43;
    *(a2 - 1) = v21;
    v45 = a1[5];
    v46 = a1[3];
    if (v45 <= v46)
    {
      return 1;
    }

    v47 = *(a1 + 2);
    v48 = *(a1 + 4);
    *(a1 + 2) = v48;
    *(a1 + 4) = v47;
    a1[3] = v45;
    a1[5] = v46;
    v49 = a1[1];
    if (v45 <= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    a1[2] = v50;
    a1[1] = v45;
    a1[3] = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = a1[1];
  if (v4 <= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 2);
  *(a2 - 2) = v6;
  a1[1] = v4;
  *(a2 - 1) = v5;
  return 1;
}

uint64_t sub_19D2B9B38(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_19D2B2B60, a2, a3);
}

uint64_t sub_19D2B9D4C(uint64_t result, uint64_t a2, int *a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *result = &unk_1F10B5DF8;
  *(result + 8) = a2;
  v10 = *a4;
  v11 = a4[1];
  *(result + 48) = *(a4 + 4);
  *(result + 16) = v10;
  *(result + 32) = v11;
  v12 = *a6;
  v13 = a6[1];
  *(result + 88) = *(a6 + 4);
  *(result + 72) = v13;
  *(result + 56) = v12;
  v14 = *a3;
  *(result + 144) = 0;
  *(result + 96) = a5;
  *(result + 104) = a7;
  *(result + 112) = a8;
  *(result + 120) = 0;
  *(result + 124) = 0;
  *(result + 128) = v14;
  *(result + 136) = a9;
  *(result + 152) = 0;
  *(result + 160) = 0;
  v15 = a10[1];
  if (v15 != *a10)
  {
    if (((v15 - *a10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D2B9E30(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D2B9E4C(uint64_t result, uint64_t a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, float a9)
{
  *result = &unk_1F10B5DF8;
  *(result + 8) = a2;
  v9 = *a4;
  v10 = a4[1];
  *(result + 48) = *(a4 + 4);
  *(result + 16) = v9;
  *(result + 32) = v10;
  v11 = *a4;
  v12 = a4[1];
  *(result + 88) = *(a4 + 4);
  *(result + 72) = v12;
  *(result + 56) = v11;
  v13 = *a3;
  *(result + 144) = 0;
  *(result + 96) = a5;
  *(result + 104) = a5;
  *(result + 112) = a6;
  *(result + 120) = a9;
  *(result + 124) = 1;
  *(result + 128) = v13;
  *(result + 136) = a7;
  *(result + 152) = 0;
  *(result + 160) = 0;
  v14 = a8[1];
  if (v14 != *a8)
  {
    if (((v14 - *a8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D2B9F30(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2B9F4C(uint64_t a1)
{
  v1 = **(a1 + 104);
  if (!v1)
  {
    return;
  }

  if (*(a1 + 124) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = **(a1 + 96);
        v5 = **(a1 + 112);
        v6 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
        v7 = (a1 + 120);
        goto LABEL_54;
      }

      if (v3 != 1)
      {
        goto LABEL_97;
      }

      *v78 = -*(a1 + 120);
LABEL_7:
      v4 = **(a1 + 96);
      v5 = **(a1 + 112);
      v6 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
      v7 = v78;
LABEL_54:
      MEMORY[0x19EAFB1B0](v4, 1, v7, v5, 1, v6);
      goto LABEL_97;
    }

    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_97;
      }

      v18 = **(a1 + 96);
      v19 = **(a1 + 112);
      v20 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
      v21 = (a1 + 120);
      goto LABEL_31;
    }

    v40 = **(a1 + 96);
    v41 = **(a1 + 112);
    v42 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
    v43 = (a1 + 120);
    goto LABEL_56;
  }

  if (*(a1 + 16) == *(a1 + 56) && *(a1 + 24) == *(a1 + 64) && *(a1 + 32) == *(a1 + 72) && *(a1 + 40) == *(a1 + 80) && *(a1 + 48) == *(a1 + 88))
  {
    v22 = *(a1 + 128);
    switch(v22)
    {
      case 2:
        MEMORY[0x19EAFB190](**(a1 + 96), 1);
        break;
      case 1:
        MEMORY[0x19EAFB240](**(a1 + 96), 1);
        break;
      case 0:
        MEMORY[0x19EAFB120](**(a1 + 96), 1);
        break;
    }

    goto LABEL_97;
  }

  v12 = *(a1 + 88);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  if (v12 != 1)
  {
    v15 = v14 * v13 * *(a1 + 72);
    goto LABEL_37;
  }

  LODWORD(v15) = v14 * v13 * *(a1 + 72);
  if (v15 != 1)
  {
LABEL_37:
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    if (v15 != v24 * v23 * v25)
    {
      if (v26 != v12 || !v12)
      {
        goto LABEL_97;
      }

      v27 = 0;
      v28 = *(a1 + 40);
      v29 = *(a1 + 80);
      while (!v28)
      {
LABEL_42:
        if (v12 <= ++v27)
        {
          goto LABEL_97;
        }
      }

      v30 = 0;
      v31 = 4 * v28 * v27 * v23 * v24 * v25;
      v32 = (**(a1 + 112) + v31);
      v33 = (**(a1 + 104) + 4 * v29 * v27 * *(a1 + 56) * *(a1 + 64) * *(a1 + 72));
      v34 = (**(a1 + 96) + v31);
      while (1)
      {
        v36 = *(a1 + 128);
        if (v36 == 2)
        {
          MEMORY[0x19EAFB210](v34, 1, v33, v32, 1, v23 * v24 * v25);
        }

        else
        {
          if (v36 == 1)
          {
            *v78 = -*v33;
            v37 = v23 * v24 * v25;
            v39 = v78;
            v38 = v34;
LABEL_52:
            MEMORY[0x19EAFB1B0](v38, 1, v39, v32, 1, v37);
            goto LABEL_46;
          }

          v37 = v23 * v24 * v25;
          v38 = v34;
          v39 = v33;
          if (!v36)
          {
            goto LABEL_52;
          }

          vDSP_vsdiv(v34, 1, v33, v32, 1, v37);
        }

LABEL_46:
        v23 = *(a1 + 16);
        v24 = *(a1 + 24);
        v25 = *(a1 + 32);
        v28 = *(a1 + 40);
        v35 = 4 * v23 * v24 * v25;
        v34 = (v34 + v35);
        v32 = (v32 + v35);
        v29 = *(a1 + 80);
        v33 += v29 != 1;
        if (v28 <= ++v30)
        {
          v12 = *(a1 + 48);
          goto LABEL_42;
        }
      }
    }

    if (!v26)
    {
      goto LABEL_97;
    }

    v44 = 0;
    v45 = *(a1 + 40);
    while (!v45)
    {
LABEL_60:
      if (v26 <= ++v44)
      {
        goto LABEL_97;
      }
    }

    v46 = 0;
    v47 = 4 * v45 * v44 * v23 * v24 * v25;
    v48 = **(a1 + 112) + v47;
    v49 = **(a1 + 96) + v47;
    v50 = **(a1 + 104);
    while (1)
    {
      v53 = *(a1 + 128);
      switch(v53)
      {
        case 2:
          MEMORY[0x19EAFB190](v49, 1, v50, 1, v48, 1, v23 * v24 * v25);
          v23 = *(a1 + 16);
          v24 = *(a1 + 24);
          v25 = *(a1 + 32);
          if (*(a1 + 80) == 1)
          {
LABEL_72:
            v51 = 0;
            goto LABEL_64;
          }

          break;
        case 1:
          MEMORY[0x19EAFB240](v49, 1, v50, 1, v48, 1, v23 * v24 * v25);
          break;
        case 0:
          MEMORY[0x19EAFB120](v49, 1, v50, 1, v48, 1, v23 * v24 * v25);
          v23 = *(a1 + 16);
          v24 = *(a1 + 24);
          v25 = *(a1 + 32);
          if (*(a1 + 80) == 1)
          {
            goto LABEL_72;
          }

          break;
        default:
          v23 = *(a1 + 16);
          v24 = *(a1 + 24);
          v25 = *(a1 + 32);
          if (*(a1 + 80) == 1)
          {
            goto LABEL_72;
          }

          break;
      }

      v51 = *(a1 + 56) * *(a1 + 64) * *(a1 + 72);
LABEL_64:
      v52 = 4 * v23 * v24 * v25;
      v49 += v52;
      v48 += v52;
      v50 += 4 * v51;
      ++v46;
      v45 = *(a1 + 40);
      if (v45 <= v46)
      {
        v26 = *(a1 + 48);
        goto LABEL_60;
      }
    }
  }

  if (*(a1 + 80) != 1)
  {
    v54 = *(a1 + 48);
    if (!v54)
    {
      goto LABEL_97;
    }

    v55 = 0;
    v56 = *(a1 + 16);
    v57 = *(a1 + 24);
    v58 = *(a1 + 32);
    v59 = *(a1 + 40);
    while (!v59)
    {
LABEL_80:
      if (v54 <= ++v55)
      {
        goto LABEL_97;
      }
    }

    v60 = 0;
    v61 = 4 * v59 * v55 * v56 * v57 * v58;
    v62 = (**(a1 + 112) + v61);
    v63 = (**(a1 + 96) + v61);
    v64 = **(a1 + 104);
    while (1)
    {
      v68 = *(v64 + 4 * v60);
      *v78 = v68;
      v69 = *(a1 + 128);
      if (v69 > 1)
      {
        if (v69 == 2)
        {
          MEMORY[0x19EAFB210](v63, 1, v78, v62, 1, v56 * v57 * v58);
        }

        else if (v69 == 3)
        {
          vDSP_vsdiv(v63, 1, v78, v62, 1, v56 * v57 * v58);
        }

        goto LABEL_85;
      }

      if (v69)
      {
        if (v69 != 1)
        {
          goto LABEL_85;
        }

        *v80 = -v68;
        v65 = v56 * v57 * v58;
        v66 = v80;
      }

      else
      {
        v65 = v56 * v57 * v58;
        v66 = v78;
      }

      MEMORY[0x19EAFB1B0](v63, 1, v66, v62, 1, v65);
LABEL_85:
      v56 = *(a1 + 16);
      v57 = *(a1 + 24);
      v58 = *(a1 + 32);
      v59 = *(a1 + 40);
      v67 = 4 * v56 * v57 * v58;
      v63 = (v63 + v67);
      v62 = (v62 + v67);
      if (v59 <= ++v60)
      {
        v54 = *(a1 + 48);
        goto LABEL_80;
      }
    }
  }

  v16 = *v1;
  *v78 = *v1;
  v17 = *(a1 + 128);
  if (v17 <= 1)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_97;
      }

      *v80 = -v16;
      v4 = **(a1 + 96);
      v5 = **(a1 + 112);
      v6 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
      v7 = v80;
      goto LABEL_54;
    }

    goto LABEL_7;
  }

  if (v17 == 2)
  {
    v40 = **(a1 + 96);
    v41 = **(a1 + 112);
    v42 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
    v43 = v78;
LABEL_56:
    MEMORY[0x19EAFB210](v40, 1, v43, v41, 1, v42);
    goto LABEL_97;
  }

  if (v17 == 3)
  {
    v18 = **(a1 + 96);
    v19 = **(a1 + 112);
    v20 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32) * *(a1 + 40) * *(a1 + 48);
    v21 = v78;
LABEL_31:
    vDSP_vsdiv(v18, 1, v21, v19, 1, v20);
  }

LABEL_97:
  v70 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32);
  v79[2] = 0;
  v80[0] = v70;
  v80[1] = 0x3F80000000010020;
  v80[2] = 0;
  v79[0] = v70;
  v79[1] = 0x3F80000000010020;
  memset(v78, 0, sizeof(v78));
  v71 = *(a1 + 136);
  if (v71 > 7)
  {
    if (v71 > 9)
    {
      if (v71 == 10 || v71 == 12)
      {
        return;
      }
    }

    else
    {
      if (v71 == 8)
      {
        return;
      }

      LODWORD(v78[0]) = 8;
      *(v78 + 4) = **(a1 + 144);
    }

    goto LABEL_114;
  }

  if (v71 > 3)
  {
    if (v71 == 4)
    {
      v72 = 11;
      goto LABEL_113;
    }

    if (v71 == 5)
    {
      v72 = 1;
      goto LABEL_113;
    }
  }

  else
  {
    if (v71 == 1)
    {
      v72 = 3;
      goto LABEL_113;
    }

    if (v71 == 2)
    {
      v72 = 4;
LABEL_113:
      LODWORD(v78[0]) = v72;
    }
  }

LABEL_114:
  v73 = MEMORY[0x19EAF99F0](v80, v79, v78, 0);
  if (v73)
  {
    v74 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32);
    v75 = **(a1 + 112);
    v76 = v74 * *(a1 + 40) * *(a1 + 48) / v74;
    v77 = v73;
    BNNSFilterApplyBatch(v73, v76, v75, v74, v75, v74);
    v73 = v77;
  }

  BNNSFilterDestroy(v73);
}

void *sub_19D2BA8E0(void *result)
{
  *result = &unk_1F10B5DF8;
  v1 = result[18];
  if (v1)
  {
    result[19] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D2BA938(void *a1)
{
  *a1 = &unk_1F10B5DF8;
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

id sub_19D2BA99C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3, a4);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id sub_19D2BAA2C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3, a4);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

uint64_t sub_19D2BAAC4(void *a1, const char *a2, uint64_t a3, BOOL *a4)
{
  v5 = objc_msgSend_exMRL_numberForKey_(a1, a2, a3, a4);
  v9 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  if (v5)
  {
    v10 = objc_msgSend_BOOLValue(v5, v6, v7, v8);

    return v10;
  }

  else
  {

    return 0;
  }
}

id sub_19D2BAB30(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3, a4);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;

      v6 = v5;
    }

    else
    {

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_19D2BABE8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3, a4);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id sub_19D2BAC78(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3, a4);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id sub_19D2BAD08(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3, a4);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id sub_19D2BAD98(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, a3, a4);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%@, ", v10, *(*(&v22 + 1) + 8 * i));
        objc_msgSend_appendString_(v5, v15, v14, v16);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v22, v26, 16);
    }

    while (v11);
  }

  v20 = objc_msgSend_copy(v5, v17, v18, v19);

  return v20;
}

uint64_t sub_19D2BB1D8(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = &off_1EB013880;
  *(result + 16) = 0;
  return result;
}

void sub_19D2BB1EC(void *a1)
{
  if (a1 != &off_1EB013880)
  {
    sub_19D2BB1EC(a1[2]);
    sub_19D2BB1EC(a1[1]);

    free(a1);
  }
}

void sub_19D2BB248(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2;
  do
  {
    if (v3 == &off_1EB013880)
    {
      goto LABEL_5;
    }

    v4 = v3;
    v3 = v3[2];
  }

  while (v3 != &off_1EB013880);
  if (!v4)
  {
LABEL_5:
    sub_19D2BB1EC(v2);
    *(a1 + 8) = &off_1EB013880;
    return;
  }

  while (1)
  {
    free(v4[3]);
    v4[3] = 0;
    v5 = v4[1];
    if (v5 == &off_1EB013880)
    {
      break;
    }

    do
    {
      v4 = v5;
      v5 = v5[2];
    }

    while (v5 != &off_1EB013880);
LABEL_6:
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v6 = v4;
    v4 = *v4;
  }

  while (v4 != &off_1EB013880 && v6 == v4[1]);
  if (v4 != &off_1EB013880)
  {
    goto LABEL_6;
  }

LABEL_15:
  sub_19D2BB1EC(*(a1 + 8));
  *(a1 + 8) = &off_1EB013880;
}

uint64_t sub_19D2BB310(uint64_t a1)
{
  v1 = *(a1 + 8);
  while (v1 != &off_1EB013880)
  {
    result = v1;
    v1 = *(v1 + 16);
    if (v1 == &off_1EB013880)
    {
      return result;
    }
  }

  return 0;
}

void *sub_19D2BB340(void *result)
{
  if (result)
  {
    v1 = result[1];
    if (v1 == &off_1EB013880)
    {
      do
      {
        v2 = *result;
        v3 = *result != &off_1EB013880 && result == *(*result + 8);
        result = *result;
      }

      while (v3);
      if (v2 == &off_1EB013880)
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }

    else
    {
      do
      {
        result = v1;
        v1 = v1[2];
      }

      while (v1 != &off_1EB013880);
    }
  }

  return result;
}

void *sub_19D2BB390(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x10A0040E109E3ABuLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = a2;
    sub_19D2BB3F0(a1, v4);
  }

  return v5;
}

uint64_t sub_19D2BB3F0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(a2 + 24);
  v6 = *result;
  v5 = *(result + 8);
  *(a2 + 32) = 0;
  *(a2 + 8) = &off_1EB013880;
  *(a2 + 16) = &off_1EB013880;
  *a2 = &off_1EB013880;
  ++*(result + 16);
  if (v5 == &off_1EB013880)
  {
    *(result + 8) = a2;
    *(a2 + 32) = 1;
    return result;
  }

  v7 = 2;
  do
  {
    while (1)
    {
      v8 = v5;
      result = v6(v4, v5[3]);
      if (result > 0)
      {
        break;
      }

      v5 = v8[2];
      if (v5 == &off_1EB013880)
      {
        goto LABEL_7;
      }
    }

    v5 = v8[1];
  }

  while (v5 != &off_1EB013880);
  v7 = 1;
LABEL_7:
  v8[v7] = v2;
  *v2 = v8;
  if (!*(v8 + 8))
  {
    while (1)
    {
      v9 = *v8;
      v10 = *(*v8 + 2);
      v11 = v10;
      if (v8 == v10)
      {
        v11 = v9[1];
      }

      if (v11 == &off_1EB013880 || *(v11 + 8))
      {
        break;
      }

      *(v11 + 8) = 1;
      *(v8 + 8) = 1;
      v8 = *v9;
      if (*v9 != &off_1EB013880)
      {
        *(v9 + 8) = 0;
        v2 = v9;
        if (!*(v8 + 8))
        {
          continue;
        }
      }

      return result;
    }

    v12 = v8[1];
    if (v8 == v10 && v2 == v12)
    {
      v16 = v12[2];
      v8[1] = v16;
      v12[2] = v8;
      if (v9 == &off_1EB013880)
      {
        *(v3 + 8) = v12;
      }

      else if (v9[2] == v8)
      {
        v9[2] = v12;
      }

      else
      {
        v9[1] = v12;
        v16 = v8[1];
      }

      *v12 = v9;
      *v8 = v12;
      if (v16 != &off_1EB013880)
      {
        *v16 = v8;
      }

      v8 = v2;
      v2 = v2[2];
    }

    else
    {
      v14 = v8[2];
      if (v2 != v14)
      {
        *(v8 + 8) = 1;
        v15 = *v8;
        *(*v8 + 8) = 0;
        goto LABEL_37;
      }

      if (v8 == v9[1])
      {
        v17 = v14[1];
        v8[2] = v17;
        v14[1] = v8;
        if (v9 == &off_1EB013880)
        {
          *(v3 + 8) = v14;
        }

        else if (v9[2] == v8)
        {
          v9[2] = v14;
          v17 = v8[2];
        }

        else
        {
          v9[1] = v14;
        }

        *v14 = v9;
        *v8 = v14;
        if (v17 != &off_1EB013880)
        {
          *v17 = v8;
        }

        v8 = v2;
        v22 = v2 + 1;
        v2 = v2[1];
        v21 = v22[1];
        *(v8 + 8) = 1;
        v15 = *v8;
        *(*v8 + 8) = 0;
        if (v2 != v21)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    *(v8 + 8) = 1;
    v15 = *v8;
    *(*v8 + 8) = 0;
LABEL_36:
    v18 = v15[2];
    if (v8 == v18)
    {
      v19 = v18[1];
      v15[2] = v19;
      v18[1] = v15;
      v20 = *v15;
      if (*v15 != &off_1EB013880)
      {
        if (v20[2] == v15)
        {
          v20[2] = v18;
          v19 = v15[2];
        }

        else
        {
          v20[1] = v18;
        }

LABEL_49:
        *v18 = v20;
        *v15 = v18;
        if (v19 != &off_1EB013880)
        {
          *v19 = v15;
        }

        return result;
      }

LABEL_45:
      *(v3 + 8) = v18;
      goto LABEL_49;
    }

LABEL_37:
    if (v2 != v8[1])
    {
      return result;
    }

    v18 = v15[1];
    if (v8 != v18)
    {
      return result;
    }

    v19 = v18[2];
    v15[1] = v19;
    v18[2] = v15;
    v20 = *v15;
    if (*v15 != &off_1EB013880)
    {
      if (v20[2] == v15)
      {
        v20[2] = v18;
      }

      else
      {
        v20[1] = v18;
        v19 = v15[1];
      }

      goto LABEL_49;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t sub_19D2BB6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == &off_1EB013880)
  {
    return 0;
  }

  v4 = *a1;
  while (1)
  {
    v5 = v4(a2, *(v2 + 24));
    if (!v5)
    {
      break;
    }

    if (v5 >= 1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 16;
    }

    v2 = *(v2 + v6);
    if (v2 == &off_1EB013880)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_19D2BB784(_UNKNOWN **a1, uint64_t a2, int (**a3)(void *, uint64_t))
{
  if (a1 == &off_1EB013880)
  {
    return 0;
  }

  v4 = a1;
  v6 = *a3;
  while (v6(v4[3], a2) <= 0)
  {
    v4 = v4[1];
    if (v4 == &off_1EB013880)
    {
      return 0;
    }
  }

  result = sub_19D2BB784(v4[2], a2, a3);
  if (!result)
  {
    return v4;
  }

  return result;
}

uint64_t sub_19D2BB820(uint64_t a1)
{
  v1 = *(a1 + 8);
  while (v1 != &off_1EB013880)
  {
    result = v1;
    v1 = *(v1 + 8);
    if (v1 == &off_1EB013880)
    {
      return result;
    }
  }

  return 0;
}

void *sub_19D2BB850(void *result)
{
  if (result)
  {
    v1 = result[2];
    if (v1 == &off_1EB013880)
    {
      do
      {
        v2 = *result;
        v3 = *result != &off_1EB013880 && result == *(*result + 16);
        result = *result;
      }

      while (v3);
      if (v2 == &off_1EB013880)
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }

    else
    {
      do
      {
        result = v1;
        v1 = v1[1];
      }

      while (v1 != &off_1EB013880);
    }
  }

  return result;
}

_UNKNOWN **sub_19D2BB8A0(uint64_t a1, _UNKNOWN **a2)
{
  v3 = a2[2];
  v2 = a2[3];
  if (v3 == &off_1EB013880)
  {
    v4 = a2;
    goto LABEL_7;
  }

  if (a2[1] != &off_1EB013880)
  {
    do
    {
      v4 = v3;
      v3 = v3[1];
    }

    while (v3 != &off_1EB013880);
    v3 = v4[2];
    a2[3] = v4[3];
    if (v3 != &off_1EB013880)
    {
LABEL_8:
      v5 = *v4;
      if (*v4 != &off_1EB013880)
      {
        goto LABEL_9;
      }

LABEL_50:
      *(a1 + 8) = v3;
      if (v3 == &off_1EB013880)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_7:
    v3 = v4[1];
    goto LABEL_8;
  }

  v4 = a2;
  v5 = *a2;
  if (*a2 == &off_1EB013880)
  {
    goto LABEL_50;
  }

LABEL_9:
  v6 = v5 + 1;
  if (v5[1] != v4)
  {
    v6 = v5 + 2;
  }

  *v6 = v3;
  if (v3 == &off_1EB013880)
  {
    goto LABEL_13;
  }

LABEL_12:
  *v3 = v5;
LABEL_13:
  if (*(v4 + 8) != 1)
  {
    goto LABEL_53;
  }

  if (!*(v3 + 8))
  {
    *(v3 + 8) = 1;
    goto LABEL_53;
  }

  if (v5 == &off_1EB013880)
  {
LABEL_53:
    --*(a1 + 16);
    v4[3] = v2;
    return v4;
  }

  while (1)
  {
    v7 = v5;
    v8 = v5[2];
    if (v3 == v8)
    {
      v9 = v5[1];
      if (v9[8])
      {
        goto LABEL_39;
      }

      *(v7 + 8) = 0;
      v9[8] = 1;
      v11 = *(v9 + 2);
      v7[1] = v11;
      *(v9 + 2) = v7;
      v12 = *v7;
      if (*v7 == &off_1EB013880)
      {
        *(a1 + 8) = v9;
        *v9 = v12;
        *v7 = v9;
        if (v11 == &off_1EB013880)
        {
          goto LABEL_37;
        }

LABEL_36:
        *v11 = v7;
        goto LABEL_37;
      }

      if (v12[2] == v7)
      {
        v12[2] = v9;
        *v9 = v12;
        *v7 = v9;
        if (v11 != &off_1EB013880)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v12[1] = v9;
        v11 = v7[1];
        *v9 = v12;
        *v7 = v9;
        if (v11 != &off_1EB013880)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (v8[8])
      {
        v9 = v5[2];
        v10 = *(v7 + 8);
        if (v10 != 1)
        {
          goto LABEL_54;
        }

        goto LABEL_40;
      }

      *(v5 + 8) = 0;
      v8[8] = 1;
      v11 = *(v8 + 1);
      v5[2] = v11;
      *(v8 + 1) = v5;
      v13 = *v5;
      if (*v7 == &off_1EB013880)
      {
        *(a1 + 8) = v8;
        *v8 = v13;
        *v7 = v8;
        if (v11 != &off_1EB013880)
        {
          goto LABEL_36;
        }
      }

      else if (v13[2] == v7)
      {
        v13[2] = v8;
        v11 = v7[2];
        *v8 = v13;
        *v7 = v8;
        if (v11 != &off_1EB013880)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v13[1] = v8;
        *v8 = v13;
        *v7 = v8;
        if (v11 != &off_1EB013880)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_37:
    v8 = v7[2];
    if (v3 == v8)
    {
      break;
    }

    v9 = v7[2];
LABEL_39:
    v10 = *(v7 + 8);
    if (v10 != 1)
    {
      goto LABEL_54;
    }

LABEL_40:
    if (v9[8] != 1 || *(*(v9 + 2) + 32) != 1 || *(*(v9 + 1) + 32) != 1)
    {
      goto LABEL_61;
    }

    if (v9 != &off_1EB013880)
    {
      v9[8] = 0;
    }

    v5 = *v7;
    v3 = v7;
    if (*v7 == &off_1EB013880)
    {
      goto LABEL_53;
    }
  }

  v9 = v7[1];
  v10 = *(v7 + 8);
  if (v10 == 1)
  {
    goto LABEL_40;
  }

LABEL_54:
  if (v10)
  {
LABEL_61:
    v15 = v7 + 4;
    goto LABEL_62;
  }

  v15 = v7 + 4;
  if (v9[8] == 1 && *(*(v9 + 2) + 32) == 1 && *(*(v9 + 1) + 32) == 1)
  {
    if (v9 != &off_1EB013880)
    {
      v9[8] = 0;
    }

    *v15 = 1;
    --*(a1 + 16);
    v4[3] = v2;
    return v4;
  }

LABEL_62:
  if (v3 == v8 && v9[8] == 1 && (v16 = *(v9 + 2), !*(v16 + 32)) && *(*(v9 + 1) + 32) == 1)
  {
    v9[8] = 0;
    *(v16 + 32) = 1;
    v17 = *(v16 + 8);
    *(v9 + 2) = v17;
    *(v16 + 8) = v9;
    v18 = *v9;
    if (*v9 == &off_1EB013880)
    {
      *(a1 + 8) = v16;
    }

    else if (v18[2] == v9)
    {
      v18[2] = v16;
      v17 = *(v9 + 2);
    }

    else
    {
      v18[1] = v16;
    }

    *v16 = v18;
    *v9 = v16;
    if (v17 != &off_1EB013880)
    {
      *v17 = v9;
    }

    v8 = v7[2];
    if (v3 == v8)
    {
      v19 = (v7 + 1);
      goto LABEL_88;
    }

LABEL_87:
    v9 = v8;
  }

  else
  {
    v19 = (v7 + 1);
    if (v3 == v7[1] && v9[8] == 1)
    {
      v20 = *(v9 + 1);
      if (!*(v20 + 32) && *(*(v9 + 2) + 32) == 1)
      {
        v9[8] = 0;
        *(v20 + 32) = 1;
        v21 = *(v20 + 16);
        *(v9 + 1) = v21;
        *(v20 + 16) = v9;
        v22 = *v9;
        if (*v9 == &off_1EB013880)
        {
          *(a1 + 8) = v20;
        }

        else if (v22[2] == v9)
        {
          v22[2] = v20;
        }

        else
        {
          v22[1] = v20;
          v21 = *(v9 + 1);
        }

        *v20 = v22;
        *v9 = v20;
        if (v21 != &off_1EB013880)
        {
          *v21 = v9;
        }

        v8 = v7[2];
        if (v3 != v8)
        {
          goto LABEL_87;
        }

LABEL_88:
        v9 = *v19;
      }
    }
  }

  v9[8] = *v15;
  *v15 = 1;
  if (v3 == v8)
  {
    *(*(v9 + 1) + 32) = 1;
    v26 = *v7;
    v25 = v7[1];
    v27 = v25[2];
    v7[1] = v27;
    v25[2] = v7;
    if (v26 == &off_1EB013880)
    {
      *(a1 + 8) = v25;
    }

    else if (*(v26 + 16) == v7)
    {
      *(v26 + 16) = v25;
    }

    else
    {
      *(v26 + 8) = v25;
      v27 = v7[1];
    }

    *v25 = v26;
    *v7 = v25;
    if (v27 != &off_1EB013880)
    {
      *v27 = v7;
      --*(a1 + 16);
      v4[3] = v2;
      return v4;
    }

    goto LABEL_53;
  }

  *(*(v9 + 2) + 32) = 1;
  v23 = *(v8 + 1);
  v7[2] = v23;
  *(v8 + 1) = v7;
  v24 = *v7;
  if (*v7 == &off_1EB013880)
  {
    *(a1 + 8) = v8;
    *v8 = v24;
    *v7 = v8;
    if (v23 == &off_1EB013880)
    {
      goto LABEL_53;
    }
  }

  else if (*(v24 + 16) == v7)
  {
    *(v24 + 16) = v8;
    v23 = v7[2];
    *v8 = v24;
    *v7 = v8;
    if (v23 == &off_1EB013880)
    {
      goto LABEL_53;
    }
  }

  else
  {
    *(v24 + 8) = v8;
    *v8 = v24;
    *v7 = v8;
    if (v23 == &off_1EB013880)
    {
      goto LABEL_53;
    }
  }

  *v23 = v7;
  --*(a1 + 16);
  v4[3] = v2;
  return v4;
}

_UNKNOWN **sub_19D2BBDF0(uint64_t a1, _UNKNOWN **a2)
{
  v3 = sub_19D2BB8A0(a1, a2);
  sub_19D2BB3F0(a1, v3);
  return v3;
}

void sub_19D2BCA7C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    free(v15);
  }

  v16 = *(a1 + 112);
  if (v16)
  {
    free(v16);
  }

  v17 = *(a1 + 120);
  if (v17)
  {

    free(v17);
  }
}

void *sub_19D2BD2A8(void *a1, uint64_t a2, uint64_t a3, int32x2_t *__src)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10B5E48;
  v7 = __src[32];
  LODWORD(v8) = __src[17].i32[0];
  if (v8 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v8;
  }

  v9 = __src[33].i32[0];
  v18 = 1;
  v10 = vmax_s32(__src[16], 0x100000001);
  *&v11 = v10.u32[0];
  *(&v11 + 1) = v10.u32[1];
  v19 = v11;
  v20 = v8;
  sub_19D2AD9C0((a1 + 2), &v18, &v21);
  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = vmax_s32(v7, 0x100000001);
  v18 = 9;
  *&v14 = v13.u32[0];
  *(&v14 + 1) = v13.u32[1];
  v19 = v14;
  v20 = v12;
  sub_19D2AD9C0((a1 + 5), &v18, &v21);
  return a1;
}

void sub_19D2BD428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D2BD448(_DWORD *a1)
{
  v2 = *sub_19D387D50(a1, 9);
  (*(*a1 + 168))(&v42, a1, 9);
  v3 = v43;
  v4 = v44;
  v38 = v45;
  v41 = *sub_19D387A2C(a1, 1);
  (*(*a1 + 160))(&v42, a1, 1);
  v5 = v43;
  v6 = v44;
  v7 = v45;
  v8 = (*(*a1 + 224))(a1);
  v36 = (*(*a1 + 216))(a1, 1);
  v37 = v8;
  if (v8)
  {
    v40 = v6 * v5 / v6;
    v9 = v6 * v5 % v6;
    if (v40 | v9 && v42 != 0)
    {
      v11 = 0;
      v12 = v4;
      v13 = 0;
      v14 = 0;
      v15 = v5 * v42;
      v35 = v5 * v42 * v6;
      v16 = v3 * v42 * v12;
      v17 = v38 * v16;
      v18 = a1[158];
      if (v18 >= 0)
      {
        v19 = a1[158];
      }

      else
      {
        v19 = v18 + 5;
      }

      v20 = a1[159];
      if (v20 >= 0)
      {
        v21 = a1[159];
      }

      else
      {
        v21 = v20 + 5;
      }

      v22 = a1[160];
      if (v22 >= 0)
      {
        v23 = a1[160];
      }

      else
      {
        v23 = v22 + 5;
      }

      v24 = a1[161];
      if (v24 >= 0)
      {
        v25 = a1[161];
      }

      else
      {
        v25 = v24 + 5;
      }

      v26 = a1[162];
      if (v26 >= 0)
      {
        v27 = a1[162];
      }

      else
      {
        v27 = v26 + 5;
      }

      do
      {
        v39 = v14;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = 0;
          v32 = v41 + 4 * v42 * v29 + 4 * v15 * v28 + 4 * v35 * v13;
          do
          {
            v42 = v31;
            v43 = v29;
            v44 = v28;
            v45 = v13;
            v46 = v11;
            *(v2 + 4 * *(&v42 + v19) + 4 * v31 * *(&v42 + v21) + 4 * v3 * v31 * *(&v42 + v23) + 4 * v16 * *(&v42 + v25) + 4 * v17 * *(&v42 + v27)) = *(v32 + 4 * v35 * v7 * v11 + 4 * v31);
            ++v31;
          }

          while (v42 != v31);
          v29 = ++v30 / v6;
          v28 = v30 % v6;
        }

        while (v30 / v6 != v40 || v28 != v9);
        ++v14;
        v13 = (v39 + 1) / v36;
        v11 = (v39 + 1) % v36;
      }

      while (v13 != v37 || v11);
    }
  }

  return (*(*a1 + 32))(a1);
}

uint64_t sub_19D2BD754(uint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 16);
  v4 = *(result + 632);
  if (v4 < 0)
  {
    v4 = v4 + 5;
  }

  v5 = *(v3 + 8 * v4 + 40);
  v6 = *(result + 636);
  if (v6 < 0)
  {
    v6 = v6 + 5;
  }

  v7 = *(v3 + 8 * v6 + 40);
  v8 = *(result + 640);
  if (v8 < 0)
  {
    v8 = v8 + 5;
  }

  v9 = *(v3 + 8 * v8 + 40);
  v10 = *(result + 644);
  if (v10 < 0)
  {
    v10 = v10 + 5;
  }

  v11 = *(v3 + 8 * v10 + 40);
  v12 = *(result + 648);
  if (v12 < 0)
  {
    v12 = v12 + 5;
  }

  v13 = *(v3 + 8 * v12 + 40);
  if (!v2)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v14 = v2;
      v15 = *(v2 + 32);
      if (v15 <= a2)
      {
        break;
      }

      v2 = *v14;
      if (!*v14)
      {
        goto LABEL_18;
      }
    }

    if (v15 >= a2)
    {
      break;
    }

    v2 = v14[1];
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  v14[5] = v5;
  v14[6] = v7;
  v14[7] = v9;
  v14[8] = v11;
  v14[9] = v13;
  return result;
}

void sub_19D2BD8E0(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

id sub_19D2BD908(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v58 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6, v7);
  if (a3)
  {
    operator new();
  }

  v61 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  v60 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13);
  v59 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16);
  v20 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v19, 0.0 / a2);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v21, v20, MLPModelTrainerOverallAccuracyKey);

  v25 = objc_msgSend_copy(v61, v22, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v26, v25, MLPModelTrainerPerClassPrecisionKey);

  v30 = objc_msgSend_copy(v60, v27, v28, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v31, v30, MLPModelTrainerPerClassRecallKey);

  v35 = objc_msgSend_copy(v59, v32, v33, v34);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v36, v35, MLPModelTrainerConfusionMatrixKey);

  v37 = -v62[8] / a2;
  v38 = exp2(v37);
  *&v38 = v38;
  v42 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v39, v40, v41, v38);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v43, v42, MLPModelTrainerPerplexityKey);

  *&v44 = v37;
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v45, v46, v47, v44);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v49, v48, MLPModelTrainerBpcKey);

  *&v53 = v62[9];
  if (*&v53 > 0.0)
  {
    *&v53 = *&v53 / a2;
    v54 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v50, v51, v52, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v58, v55, v54, MLPModelTrainerLossValueKey);
  }

  v56 = v58;

  return v56;
}

void sub_19D2BE824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D2BE900(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](a1 + 112);
  return a1;
}

uint64_t MRLNeuralNetworkCreateModelContainerWithJSON(uint64_t a1)
{
  v2 = [MontrealModelJSONParser alloc];
  v5 = objc_msgSend_initWithURL_(v2, v3, a1, v4);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_network(v5, v6, v7, v8);
    ModelContainer = objc_msgSend_generateModelContainer(v10, v11, v12, v13);

    return ModelContainer;
  }

  else
  {

    return 0;
  }
}

void sub_19D2BEC74(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    goto LABEL_14;
  }

  if (*a2 == 20547 && *(a2 + 2) == 85)
  {
    *(&v6.__r_.__value_.__s + 23) = 0;
    v6.__r_.__value_.__s.__data_[0] = 0;
    if (qword_1EB013388 != -1)
    {
      sub_19D453E8C();
    }

    Instance = _CFRuntimeCreateInstance();
    sub_19D42A978(Instance + 16);
  }

LABEL_14:
  sub_19D2BF218(&v6, "Invalid Engine. Support Engines = {CPU}");
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v6);
  exception->__vftable = &unk_1F10B6030;
  __cxa_throw(exception, &unk_1F10B5FC0, std::runtime_error::~runtime_error);
}

void sub_19D2BEFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (v19)
  {
    (*(*v19 + 8))(v19);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_19D2BF004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::runtime_error::~runtime_error(&a11);
  __cxa_end_catch();
  if (v18)
  {
    (*(*v18 + 8))(v18);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  JUMPOUT(0x19D2BF208);
}

void sub_19D2BF018(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, uint64_t a12, std::string *a13)
{
  if (a10)
  {
    sub_19D453EA0();
  }

  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::runtime_error::runtime_error(&a11, exception_ptr);
    __cxa_begin_catch(a1);
    v16 = std::runtime_error::what(&a11);
    std::string::append(&a13, v16);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &a13);
    exception->__vftable = &unk_1F10B6080;
    __cxa_throw(exception, &unk_1F10B5FF0, std::runtime_error::~runtime_error);
  }

  __cxa_begin_catch(a1);
  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, &a13);
  v18->__vftable = &unk_1F10B6080;
  __cxa_throw(v18, &unk_1F10B5FF0, std::runtime_error::~runtime_error);
}

void sub_19D2BF14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v19);
  std::runtime_error::~runtime_error(&a11);
  __cxa_end_catch();
  if (v18)
  {
    (*(*v18 + 8))(v18);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  JUMPOUT(0x19D2BF208);
}

void sub_19D2BF1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x19D2BF194);
}

void sub_19D2BF1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(a14);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x19D2BF194);
}

void sub_19D2BF1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    JUMPOUT(0x19D2BF208);
  }

  JUMPOUT(0x19D2BF194);
}

_BYTE *sub_19D2BF218(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19D2AD774();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_19D2BF2DC(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v7 = 0;
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    goto LABEL_14;
  }

  if (*a2 == 20547 && *(a2 + 2) == 85)
  {
    if (qword_1EB013388 != -1)
    {
      sub_19D453E8C();
    }

    Instance = _CFRuntimeCreateInstance();
    sub_19D375050(Instance + 16);
  }

LABEL_14:
  sub_19D2BF218(&v6, "Invalid Engine. Support Engines for E5RT = {CPU}");
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v6);
  exception->__vftable = &unk_1F10B6030;
  __cxa_throw(exception, &unk_1F10B5FC0, std::runtime_error::~runtime_error);
}

void sub_19D2BF4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  __cxa_end_catch();
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19D2BF524()
{
  if (qword_1EB013388 != -1)
  {
    sub_19D453E8C();
  }

  Instance = _CFRuntimeCreateInstance();
  sub_19D42A978(Instance + 16);
}

void sub_19D2BF714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_19D453EA0();
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

unint64_t sub_19D2BF7EC@<X0>(const __CFString ***a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = **a1;
  if (!v3 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D2C4680(v3, a2);
}

const void **sub_19D2BF898(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t MRLNeuralNetworkSetInput(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  sub_19D2A3794(a2, v29);
  v12 = a1[2];
  a1 += 2;
  (*(v12 + 32))(&v26, a1, v29);
  *(&v27 + 1) = a3;
  v28 = a4;
  *v23 = v26;
  v24 = v27;
  v25 = a4;
  v13 = (*(*a1 + 40))(a1, a5, v29, v23, 1);
  v14 = v13;
  if (a6)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sub_19D2A3794(a2, __p);
    sub_19D2BFAFC("Please provide a valid input name. ", __p, " input cannot be set");
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v18 = (SBYTE7(v24) & 0x80u) == 0 ? v23 : v23[0];
    v19 = CFStringCreateWithCString(v16, v18, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E650], v19);
    *a6 = CFErrorCreate(v16, MRLNeuralNetworkErrorDomain, 0, Mutable);
    CFRelease(v19);
    CFRelease(Mutable);
    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
      if ((v30 & 0x80000000) == 0)
      {
        return v14;
      }

      goto LABEL_12;
    }
  }

  if (v30 < 0)
  {
LABEL_12:
    operator delete(v29[0]);
  }

  return v14;
}

void sub_19D2BFAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 49) < 0)
  {
    operator delete(*(v21 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D2BFAFC(const char *a1, uint64_t a2, const char *a3)
{
  sub_19D2AE334(&v12);
  v6 = strlen(a1);
  sub_19D2AE554(&v12, a1, v6);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  sub_19D2AE554(&v12, v8, v9);
  v10 = strlen(a3);
  sub_19D2AE554(&v12, a3, v10);
  std::stringbuf::str();
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v16);
}

void sub_19D2BFCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_19D2AE8F8(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x19EAFA410](va1);
  _Unwind_Resume(a1);
}

uint64_t MRLNeuralNetworkCopyOutputTensor(uint64_t a1, const __CFString *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_19D2A3794(a2, __p);
  v4 = a1 + 16;
  v5 = (*(*(a1 + 16) + 48))(a1 + 16, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  sub_19D2A3794(a2, v16);
  (*(*v4 + 56))(__p, v4, v16);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  *v16 = *__p;
  v6 = v15;
  v17 = v13;
  if (qword_1EB013318 != -1)
  {
    sub_19D453ED4();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = *v16;
  v8 = v17;
  *(Instance + 72) = v6;
  *(Instance + 80) = 1;
  *(Instance + 82) = 0;
  v9 = *(Instance + 40) * *(Instance + 48) * v8;
  v10 = 4 * LODWORD(__p[0]) * LODWORD(__p[1]) * v13 * v14 * v15 / v9 / v6;
  *(Instance + 56) = v8;
  *(Instance + 64) = (v10 >> 2);
  sub_19D2A7450(Instance + 16, 0, v5, &v5[4 * v9 * v6 * (v10 >> 2)], v9 * v6 * (v10 >> 2));
  sub_19D2A7A6C((Instance + 16));
  return Instance;
}

void sub_19D2BFEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MRLNeuralNetworkTensorGetData(uint64_t a1, int a2)
{
  v2 = 56;
  if (*(a1 + 81))
  {
    v2 = 48;
  }

  return *(a1 + 16) + 4 * a2 * *(a1 + 40) * *(a1 + 48) * *(a1 + 56) * *(a1 + v2 + 16);
}

CFDictionaryRef MRLNeuralNetworkTensorCopyShape(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = (a1 + 48);
  if (*(a1 + 40) == 1 && *(a1 + 48) == 1)
  {
    sub_19D2C05B4(@"ShapeDimension", &v20);
    LODWORD(v17) = 3;
    sub_19D2C068C(&v25, &v20, &v17);
    sub_19D2C05B4(@"InputDimension", &v19);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    v27 = v11;
    valuePtr = (v8 * v9 * v10);
    v28 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (!v28)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_19D2C05B4(@"SequenceLength", &valuePtr);
    v12 = 56;
    if (*(a1 + 81))
    {
      v12 = 48;
    }

    sub_19D2C077C(&v29, &valuePtr, (a1 + v12 + 16));
    v21 = &v25;
    v22 = 3;
    v13 = sub_19D2C37DC(&v21);
    v23 = v13;
    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    Copy = CFDictionaryCreateCopy(0, v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    sub_19D2C05B4(@"ShapeDimension", &v23);
    v18 = 5;
    sub_19D2C068C(&v25, &v23, &v18);
    sub_19D2C05B4(@"Width", &v20);
    sub_19D2C077C(&v27, &v20, v2);
    sub_19D2C05B4(@"Height", &v19);
    sub_19D2C077C(&v29, &v19, v3);
    sub_19D2C05B4(@"Channel", &v17);
    sub_19D2C077C(&v31, &v17, (a1 + 56));
    sub_19D2C05B4(@"SequenceLength", &v16);
    v5 = 56;
    if (*(a1 + 81))
    {
      v5 = 48;
    }

    sub_19D2C077C(&v33, &v16, (a1 + v5 + 16));
    v21 = &v25;
    v22 = 5;
    v6 = sub_19D2C37DC(&v21);
    valuePtr = v6;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    Copy = CFDictionaryCreateCopy(0, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return Copy;
}

void sub_19D2C034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  sub_19D2C3B58(va3);
  sub_19D2C3B24(v4);
  sub_19D2BF898(va);
  sub_19D2BF898(va1);
  do
  {
    v4 -= 2;
    sub_19D2C086C(v4);
  }

  while (v4 != va2);
  _Unwind_Resume(a1);
}

const void *sub_19D2C05B4@<X0>(const void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CFRetain(result);
    *a2 = v3;
    v4 = CFGetTypeID(v3);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_19D2C0654(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_19D2C37A8(v1);
  _Unwind_Resume(a1);
}

void *sub_19D2C068C(void *a1, CFTypeRef *a2, int *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D2C0738(_Unwind_Exception *a1)
{
  sub_19D2C3B58(v2);
  sub_19D2C3B24(v1);
  _Unwind_Resume(a1);
}

void *sub_19D2C077C(void *a1, CFTypeRef *a2, uint64_t *a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D2C0828(_Unwind_Exception *a1)
{
  sub_19D2C3B58(v2);
  sub_19D2C3B24(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2C086C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

const void **sub_19D2C08B0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t MRLNeuralNetworkAddNode(uint64_t a1, const __CFString *a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_19D2A3794(a2, __p);
  sub_19D42B3F4((a1 + 16), __dst, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_19D2C0994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MRLNeuralNetworkConnectNodes(uint64_t a1, const __CFString *a2, int a3, const __CFString *a4, int a5)
{
  sub_19D2A3794(a2, v14);
  sub_19D2A3794(a4, __p);
  result = sub_19D42D0E0(a1 + 16, v14, a3, __p, a5);
  if ((v13 & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_5:
    v11 = result;
    operator delete(v14[0]);
    return v11;
  }

  v10 = result;
  operator delete(__p[0]);
  result = v10;
  if (v15 < 0)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_19D2C0A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t MRLNeuralNetworkSave(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"MRLNeuralNetworkOptionModelURLKey");
  v4 = CFURLCopyFileSystemPath(Value, kCFURLPOSIXPathStyle);
  sub_19D2A3794(v4, v54);
  if (v4)
  {
    CFRelease(v4);
  }

  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  v5 = CFDictionaryGetValue(theDict, @"MRLNeuralNetworkOptionQuantizationParamsKey");
  v6 = CFDictionaryGetValue(theDict, @"MRLNeuralNetworkOptionModelNameKey");
  v7 = CFDictionaryGetValue(theDict, @"MRLNeuralNetworkOptionModelVersionKey");
  v8 = CFDictionaryGetValue(theDict, @"kMRLNeuralNetworkOptionModelTypeKey");
  if (!v8)
  {
    v8 = @"FlatModel";
  }

  v32 = CFEqual(v8, @"Espresso");
  if (v6)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v6))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not convert");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_19D2C4680(v6, v50);
    v49 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v51 = 5;
    v49 = 0;
    strcpy(v50, "model");
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v10 = CFStringGetTypeID();
  if (v10 != CFGetTypeID(v7))
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not convert");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D2C4680(v7, &__str);
  v49 = std::stoi(&__str, 0, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_60;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (!v5)
  {
    goto LABEL_60;
  }

LABEL_13:
  sub_19D2A7050(v5, &v48);
  sub_19D2C3BC0(&__str, v48);
  while (1)
  {
    sub_19D2C3BC0(v39, v48);
    v11 = v40;
    v39[1] = ((v41 - v40) >> 3);
    if (!__str.__r_.__value_.__r.__words[0] || __str.__r_.__value_.__l.__size_ == (v45 - __str.__r_.__value_.__r.__words[2]) >> 3)
    {
      v12 = 0;
      v13 = __p;
      if (!__p)
      {
        goto LABEL_18;
      }

LABEL_17:
      v43 = v13;
      operator delete(v13);
      v11 = v40;
      goto LABEL_18;
    }

    v20 = __str.__r_.__value_.__l.__data_ == v39[0] && __str.__r_.__value_.__l.__size_ == (v41 - v40) >> 3;
    v12 = !v20;
    v13 = __p;
    if (__p)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v11)
    {
      v41 = v11;
      operator delete(v11);
    }

    if (!v12)
    {
      break;
    }

    sub_19D2C1504(&__str, &v37);
    v14 = v37;
    if (!v37 || (v15 = CFStringGetTypeID(), v15 != CFGetTypeID(v14)))
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not convert");
      __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_19D2C4680(v14, v39);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    sub_19D2C1504(&__str, &v37);
    sub_19D2A7050(cf, &theDicta);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (!theDicta)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
      goto LABEL_77;
    }

    if (!CFDictionaryGetValue(theDicta, @"MRLNeuralNetworkOptionQuantizationSchemeNameKey"))
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not find item");
LABEL_77:
      __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!theDicta)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Could not construct");
      __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v16 = sub_19D2C4B9C(theDicta, kMRLNeuralNetworkOptionQuantizationSchemeLinearInt8RangeMinKey);
    if (!theDicta)
    {
      v29 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v29, "Could not construct");
      __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v17 = v16;
    v18 = sub_19D2C4B9C(theDicta, kMRLNeuralNetworkOptionQuantizationSchemeLinearInt8RangeMaxKey);
    v37 = v39;
    v19 = sub_19D2C4F10(&v52, v39);
    v19[14] = v17;
    v19[15] = v18;
    if (v45 != __str.__r_.__value_.__r.__words[2])
    {
      if (((v45 - __str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    if (v47 != v46)
    {
      if (((v47 - v46) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    ++__str.__r_.__value_.__l.__size_;
    if (theDicta)
    {
      CFRelease(theDicta);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (__str.__r_.__value_.__r.__words[2])
  {
    v45 = __str.__r_.__value_.__r.__words[2];
    operator delete(__str.__r_.__value_.__r.__words[2]);
  }

  if (v48)
  {
    CFRelease(v48);
  }

LABEL_60:
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v21 = v52;
  if (v52 != v53)
  {
    do
    {
      sub_19D2C50CC(&v34, v35, v21 + 4);
      v24 = v21[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v21[2];
          v20 = *v25 == v21;
          v21 = v25;
        }

        while (!v20);
      }

      v21 = v25;
    }

    while (v25 != v53);
  }

  v22 = sub_19D430E84(a1 + 16, v54, &v34, v50, &v49, v32 != 0);
  sub_19D2A3E48(&v34, v35[0]);
  if (v51 < 0)
  {
    operator delete(v50[0]);
    sub_19D2A3E48(&v52, v53[0]);
    if ((v55 & 0x80000000) == 0)
    {
      return v22;
    }

LABEL_84:
    operator delete(v54[0]);
    return v22;
  }

  sub_19D2A3E48(&v52, v53[0]);
  if (v55 < 0)
  {
    goto LABEL_84;
  }

  return v22;
}

void sub_19D2C1504(void *a1@<X0>, void *a2@<X8>)
{
  sub_19D2C4864(a1, &cf);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *a2 = v3;
  v4 = v8;
  if (!v8)
  {
    a2[1] = 0;
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_9;
  }

  CFRetain(v8);
  v5 = v8;
  a2[1] = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v6);
  }
}

uint64_t sub_19D2C1594(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

CFDictionaryRef MRLNeuralNetworkCopyInputNamesAndDimensions(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v17[1] = 0;
  v18 = v19;
  v16 = v17;
  v17[0] = 0;
  v1 = *(a1 + 24);
  v2 = (a1 + 32);
  if (v1 != (a1 + 32))
  {
    v3 = a1 + 16;
    do
    {
      sub_19D2C3E1C(&v16, v17, v1 + 4);
      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
    v7 = v16;
    if (v16 != v17)
    {
      do
      {
        v8 = (*(*v3 + 16))(v3, v7 + 4);
        v19[3] = (v7 + 4);
        __src = v8;
        v9 = sub_19D2C444C(&v18, v7 + 4);
        sub_19D2C65DC(v9 + 7, &__src, &v21, 1uLL);
        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v6 = *v11 == v7;
            v7 = v11;
          }

          while (!v6);
        }

        v7 = v11;
      }

      while (v11 != v17);
    }
  }

  sub_19D2A3E48(&v16, v17[0]);
  sub_19D2C183C(v15, &v18);
  v12 = sub_19D2C51E0(v15);
  v16 = v12;
  Copy = CFDictionaryCreateCopy(0, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  sub_19D2C6548(v15, v15[1]);
  sub_19D2C6548(&v18, v19[0]);
  return Copy;
}

void sub_19D2C17D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a2)
  {
    sub_19D2ABE10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D2C183C(uint64_t a1, const void ***a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      if (!*sub_19D2C3F28(a1, v3, &v11, &v10, v5 + 4))
      {
        sub_19D2C67FC();
      }

      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }

  return a1;
}

CFDictionaryRef MRLNeuralNetworkCopyOutputNamesAndDimensions(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v17[1] = 0;
  v18 = v19;
  v16 = v17;
  v17[0] = 0;
  v1 = *(a1 + 48);
  v2 = (a1 + 56);
  if (v1 != (a1 + 56))
  {
    v3 = a1 + 16;
    do
    {
      sub_19D2C3E1C(&v16, v17, v1 + 4);
      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
    v7 = v16;
    if (v16 != v17)
    {
      do
      {
        v8 = (*(*v3 + 24))(v3, v7 + 4);
        v19[3] = (v7 + 4);
        __src = v8;
        v9 = sub_19D2C444C(&v18, v7 + 4);
        sub_19D2C65DC(v9 + 7, &__src, &v21, 1uLL);
        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v6 = *v11 == v7;
            v7 = v11;
          }

          while (!v6);
        }

        v7 = v11;
      }

      while (v11 != v17);
    }
  }

  sub_19D2A3E48(&v16, v17[0]);
  sub_19D2C183C(v15, &v18);
  v12 = sub_19D2C51E0(v15);
  v16 = v12;
  Copy = CFDictionaryCreateCopy(0, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  sub_19D2C6548(v15, v15[1]);
  sub_19D2C6548(&v18, v19[0]);
  return Copy;
}

void sub_19D2C1B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a2)
  {
    sub_19D2ABE10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MRLNeuralNetworkGetNodeParams(uint64_t a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D2C4680(a2, __p);
  sub_19D430AF8(a1 + 16, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D2C1CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v34 < 0)
  {
    operator delete(Mutable);
  }

  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v29 = __cxa_begin_catch(exception_object);
  v30 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = (*(*v29 + 16))(v29);
  v32 = CFStringCreateWithCString(v30, v31, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E650], v32);
  *v26 = CFErrorCreate(v30, MRLNeuralNetworkErrorDomain, 0, Mutable);
  bzero(v25, 0x2C0uLL);
  sub_19D2C1E00(&v32);
  sub_19D2C1E38(&Mutable);
  __cxa_end_catch();
}

const void **sub_19D2C1E00(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_19D2C1E38(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void *MRLNeuralNetworkStateCreate()
{
  if (qword_1EB013258 != -1)
  {
    sub_19D453EFC();
  }

  result = _CFRuntimeCreateInstance();
  result[3] = 0;
  result[2] = result + 3;
  result[6] = 0;
  result[4] = 0;
  result[5] = result + 6;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  return result;
}

void MRLNeuralNetworkStateSetData(uint64_t a1, const __CFString *a2, char *a3, unint64_t a4)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D2C4680(a2, __p);
  sub_19D37DA30(a1 + 16, __p, a3, a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D2C1FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MRLNeuralNetworkSetPartialOutputIndices(uint64_t a1, const __CFString *a2, uint64_t a3, unint64_t a4)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  std::__sort<std::__less<long,long> &,long *>();
  v10 = 0;
  LOBYTE(v9) = 0;
  sub_19D2C23D8(a2, &v9, v11);
  v6 = sub_19D4312DC((a1 + 16), v11, &__p, 0);
  if (v12 < 0)
  {
    operator delete(v11[0]);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_6:
      if (v6)
      {
        goto LABEL_7;
      }

LABEL_12:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unknown error. ");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v9);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return 1;
}

uint64_t sub_19D2C2248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (v42)
  {
    operator delete(v42);
  }

  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v35 = __cxa_begin_catch(exception_object);
  if (v32)
  {
    v36 = v35;
    v37 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v39 = (*(*v36 + 16))(v36);
    v40 = CFStringCreateWithCString(v37, v39, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E650], v40);
    *v32 = CFErrorCreate(v37, MRLNeuralNetworkErrorDomain, 0, Mutable);
    CFRelease(v40);
    CFRelease(Mutable);
  }

  __cxa_end_catch();
  return 0;
}

void sub_19D2C23D8(const __CFString *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    return;
  }

  sub_19D2C6CD8(a1, __p);
  v9 = 1;
  if (SHIBYTE(v8) < 0)
  {
    sub_19D2AD6B8(a3, __p[0], __p[1]);
    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v8;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void MRLNeuralNetworkSetPartialOutputRange(uint64_t a1, const __CFString *a2)
{
  v3 = 0;
  LOBYTE(v2) = 0;
  sub_19D2C23D8(a2, &v2, &v4);
  operator new();
}

uint64_t sub_19D2C25E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v31 = __cxa_begin_catch(exception_object);
  if (v30)
  {
    v32 = v31;
    v33 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v35 = (*(*v32 + 16))(v32);
    v36 = CFStringCreateWithCString(v33, v35, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E650], v36);
    *v30 = CFErrorCreate(v33, MRLNeuralNetworkErrorDomain, 0, Mutable);
    CFRelease(v36);
    CFRelease(Mutable);
  }

  __cxa_end_catch();
  return 0;
}

uint64_t MRLNeuralNetworkModelUnLock(uint64_t result)
{
  if (result)
  {
    return sub_19D432B78(result + 16);
  }

  return result;
}

uint64_t MRLNeuralNetworkDeclareOutput(uint64_t a1, const __CFString *a2)
{
  sub_19D2A3794(a2, __p);
  result = (*(*(a1 + 16) + 88))(a1 + 16, __p);
  if (v6 < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

void sub_19D2C2800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MRLNeuralNetworkIncrementalStateCreate(uint64_t a1)
{
  if (qword_1EB013258 != -1)
  {
    sub_19D453EFC();
  }

  result = _CFRuntimeCreateInstance();
  result[3] = 0;
  result[2] = result + 3;
  result[6] = 0;
  result[4] = 0;
  result[5] = result + 6;
  result[7] = 0;
  result[8] = a1;
  result[9] = 0;
  return result;
}

void sub_19D2C2A10(void *a1, uint64_t a2)
{
  if (!a1[7])
  {
    v28 = sub_19D37D9D0(a2);
    v29 = *v28;
    v50 = v28 + 1;
    if (*v28 != v28 + 1)
    {
      do
      {
        if (*(v29 + 55) < 0)
        {
          sub_19D2AD6B8(&v58, v29[4], v29[5]);
        }

        else
        {
          v58 = *(v29 + 2);
          v59 = v29[6];
        }

        v30 = v29[7];
        v31 = *(v29 + 16);
        v33 = v29[9];
        v32 = v29[10];
        v34 = v29[11];
        v35 = a1[6];
        *&v55 = &v58;
        v36 = sub_19D2C444C(a1, &v58);
        v37 = v30 * v31 * v33 * v32 * v34 * v35;
        if (v36[8] - v36[7] < v37)
        {
          *&v55 = &v58;
          v38 = sub_19D2C444C(a1, &v58);
          v39 = v38[8];
          v40 = v38[7];
          v41 = v37 - &v39[-v40];
          if (v37 <= &v39[-v40])
          {
            if (v37 < &v39[-v40])
            {
              v38[8] = v40 + v37;
            }
          }

          else
          {
            if (v38[9] - v39 < v41)
            {
              if ((v37 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_19D2AE2B4();
            }

            v42 = (v37 + v40);
            bzero(v39, v41);
            v38[8] = v42;
          }
        }

        v55 = v30;
        *&v56 = v33;
        *(&v56 + 1) = v32;
        v57 = v34;
        sub_19D37DA88(a1, &v58, &v55);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58);
          v43 = v29[1];
          if (v43)
          {
            do
            {
LABEL_70:
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
            goto LABEL_54;
          }
        }

        else
        {
          v43 = v29[1];
          if (v43)
          {
            goto LABEL_70;
          }
        }

        do
        {
          v44 = v29[2];
          v27 = *v44 == v29;
          v29 = v44;
        }

        while (!v27);
LABEL_54:
        v29 = v44;
      }

      while (v44 != v50);
    }
  }

  v3 = sub_19D37D9D0(a2);
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 != v3 + 1)
  {
    __src = v3 + 1;
    do
    {
      if (*(v5 + 55) < 0)
      {
        sub_19D2AD6B8(__p, v5[4], v5[5]);
      }

      else
      {
        *__p = *(v5 + 2);
        v54 = v5[6];
      }

      v6 = *(v5 + 9);
      v55 = *(v5 + 7);
      v56 = v6;
      v57 = v5[11];
      if (sub_19D2C4324(a1, __p, &v55))
      {
        v49 = sub_19D37D73C(a2, __p);
        sub_19D37D87C(a1, __p, &v55);
        v48 = v56;
        if (v56)
        {
          v7 = 0;
          __n = v55;
          do
          {
            v8 = a1[7];
            v9 = a1[1];
            if (!v9)
            {
LABEL_36:
              operator new();
            }

            if (v54 >= 0)
            {
              v10 = HIBYTE(v54);
            }

            else
            {
              v10 = __p[1];
            }

            if (v54 >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            while (1)
            {
              while (1)
              {
                v12 = v9;
                v15 = v9[4];
                v13 = v9 + 4;
                v14 = v15;
                v16 = *(v13 + 23);
                if (v16 >= 0)
                {
                  v17 = *(v13 + 23);
                }

                else
                {
                  v17 = v13[1];
                }

                if (v16 >= 0)
                {
                  v18 = v13;
                }

                else
                {
                  v18 = v14;
                }

                if (v17 >= v10)
                {
                  v19 = v10;
                }

                else
                {
                  v19 = v17;
                }

                v20 = memcmp(v11, v18, v19);
                v21 = v10 < v17;
                if (v20)
                {
                  v21 = v20 < 0;
                }

                if (!v21)
                {
                  break;
                }

                v9 = *v12;
                if (!*v12)
                {
                  goto LABEL_36;
                }
              }

              v22 = memcmp(v18, v11, v19);
              v23 = v17 < v10;
              if (v22)
              {
                v23 = v22 < 0;
              }

              if (!v23)
              {
                break;
              }

              v9 = v12[1];
              if (!v9)
              {
                goto LABEL_36;
              }
            }

            memcpy((v12[7] + a1[6] * v7 * __n + v8 * __n), v49 + v7 * __n, __n);
            ++v7;
          }

          while (v7 != v48);
        }

        v4 = __src;
        if ((SHIBYTE(v54) & 0x80000000) == 0)
        {
LABEL_40:
          v25 = v5[1];
          if (!v25)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v24 = sub_19D398AE4();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_19D453F10(&buf, v52, v24);
          if ((SHIBYTE(v54) & 0x80000000) == 0)
          {
            goto LABEL_40;
          }
        }

        else if ((SHIBYTE(v54) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      operator delete(__p[0]);
      v25 = v5[1];
      if (!v25)
      {
        do
        {
LABEL_46:
          v26 = v5[2];
          v27 = *v26 == v5;
          v5 = v26;
        }

        while (!v27);
        goto LABEL_4;
      }

      do
      {
LABEL_44:
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
LABEL_4:
      v5 = v26;
    }

    while (v26 != v4);
  }

  ++a1[7];
}

void sub_19D2C312C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MRLNeuralNetworkResetIncrementalState(uint64_t result, uint64_t a2)
{
  *(result + 64) = a2;
  *(result + 72) = 0;
  return result;
}

uint64_t MRLEmbeddingMemoryModelCreate(const void *a1)
{
  sub_19D2A7050(a1, &theDict);
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(theDict, @"MRLEmbeddingMemoryModelEmbeddingDimensionKey");
  if (Value)
  {
    v2 = sub_19D2C6EB4(Value);
    v3 = theDict;
    if (theDict)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v2 = 0;
  v3 = theDict;
  if (!theDict)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = CFDictionaryGetValue(v3, @"MRLEmbeddingMemoryModelSizeKey");
  if (v4)
  {
    v5 = sub_19D2C6EB4(v4);
  }

  else
  {
    v5 = 0;
  }

  if (qword_1EB0131B8 != -1)
  {
    sub_19D453F50();
  }

  Instance = _CFRuntimeCreateInstance();
  sub_19D37A0F4(Instance + 16, v2, v5);
  if (theDict)
  {
    CFRelease(theDict);
  }

  return Instance;
}

void sub_19D2C32FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19D2C08B0(va);
  _Unwind_Resume(a1);
}

void sub_19D2C3310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_19D2C08B0(&a12);
  _Unwind_Resume(a1);
}

void sub_19D2C3350(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v15)
    {
      v19 = v18;
      Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v21 = (*(*v19 + 16))(v19);
      v22 = CFStringCreateWithCString(v16, v21, 0);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E650], v22);
      *v15 = CFErrorCreate(v16, MRLNeuralNetworkErrorDomain, 0, Mutable);
      CFRelease(v22);
      CFRelease(Mutable);
    }
  }

  else if (v15)
  {
    v23 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sub_19D2BF218(&__p, "Unknown expection");
    v24 = a14 >= 0 ? &__p : __p;
    v25 = CFStringCreateWithCString(v16, v24, 0);
    CFDictionaryAddValue(v23, *MEMORY[0x1E695E650], v25);
    *v15 = CFErrorCreate(v16, MRLNeuralNetworkErrorDomain, 0, v23);
    CFRelease(v25);
    CFRelease(v23);
    if (a14 < 0)
    {
      operator delete(__p);
    }
  }

  __cxa_end_catch();
  if (!a15)
  {
    JUMPOUT(0x19D2C329CLL);
  }

  JUMPOUT(0x19D2C3298);
}

uint64_t MRLEmbeddingMemoryModelAddEmbedding(uint64_t a1, CFArrayRef theArray, CFIndex a3, const __CFString *a4, uint64_t a5)
{
  if (CFArrayGetCount(theArray) <= a3 || *(a1 + 88) != a5)
  {
    return 0xFFFFFFFFLL;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  sub_19D2A3794(a4, __p);
  result = sub_19D37A14C(a1 + 16, ValueAtIndex, __p);
  if (v14 < 0)
  {
    v12 = result;
    operator delete(__p[0]);
    return v12;
  }

  return result;
}

void sub_19D2C3618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MRLEmbeddingMemoryModelGetOutputDistances(uint64_t a1, CFArrayRef theArray, CFIndex a3, const __CFString *a4, uint64_t a5)
{
  if (CFArrayGetCount(theArray) > a3 && *(a1 + 88) == a5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    sub_19D2A3794(a4, __p);
    sub_19D37A328((a1 + 16), ValueAtIndex, __p);
  }

  return 0;
}

void sub_19D2C3714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D2C3730(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

void sub_19D2C3758(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

void sub_19D2C3780(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

const void **sub_19D2C37A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFDictionaryRef sub_19D2C37DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v2 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v2;
}

void sub_19D2C3AC0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v3);
  _Unwind_Resume(a1);
}

const void **sub_19D2C3B24(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_19D2C3B58(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_19D2C3B8C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_19D2C3BC0(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v5 = Count;
    v6 = *(a1 + 16);
    v7 = (*(a1 + 24) - v6) >> 3;
    if (Count <= v7)
    {
      if (Count < v7)
      {
        *(a1 + 24) = v6 + 8 * Count;
      }
    }

    else
    {
      sub_19D2C3C84(a1 + 16, Count - v7);
    }

    v8 = *(a1 + 40);
    v9 = (*(a1 + 48) - v8) >> 3;
    if (v5 <= v9)
    {
      if (v5 < v9)
      {
        *(a1 + 48) = &v8[v5];
      }
    }

    else
    {
      sub_19D2C3C84(v3, v5 - v9);
      v8 = *v3;
    }

    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), v8);
  }

  return a1;
}

void sub_19D2C3C84(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_19D2AE2B4();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_19D2C3DD8(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_19D2C3E1C(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_19D2C3F28(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_19D2C3F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D2C3F28(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = v38 + 1;
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = (a4 + 4);
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

BOOL sub_19D2C4324(uint64_t a1, const void **a2, uint64_t a3)
{
  sub_19D37D87C(a1, a2, &v11);
  if (*(a3 + 8) == 1)
  {
    if (*a3 == v11 && *(a3 + 16) == *v12 && *(a3 + 24) == *&v12[8])
    {
      ++*(&v11 + 1);
      v9[0] = v11;
      v9[1] = *v12;
      v10 = *&v12[16];
      sub_19D37DA88(a1, a2, v9);
      return 1;
    }

    else
    {
      v8 = sub_19D398AE4();
      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_19D453FBC(v8);
        return 0;
      }
    }
  }

  else
  {
    v7 = sub_19D398AE4();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_19D453F78(v7);
      return 0;
    }
  }

  return result;
}

void *sub_19D2C444C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D2C45F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C460C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D2C460C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        *(v2 + 64) = v3;
        operator delete(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_19D2C4680@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a2[23] = result;
      if (result)
      {
        result = memmove(a2, v5, result);
      }

      a2[v7] = 0;
      return result;
    }

LABEL_19:
    sub_19D2AD774();
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v9)
  {
    bzero(a2, v9);
  }

  a2[v9] = 0;
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void sub_19D2C4848(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D2C4864@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 0x8000000000000000) != 0 || (v4 = result, v5 = result[2], v3 >= (result[3] - v5) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2AEA88(exception, "DictionaryRef_iterator iterator out of range.");
    __cxa_throw(exception, off_1E7626758, MEMORY[0x1E69E5280]);
  }

  v6 = *(v5 + 8 * v3);
  if (v6)
  {
    result = CFRetain(*(v5 + 8 * v3));
    v3 = v4[1];
  }

  v7 = v4[5];
  v8 = *(v7 + 8 * v3);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v3));
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_19D2C4928()
{
  qword_1EB013328 = 0;
  unk_1EB013330 = "MontrealNeuralNetwork";
  qword_1EB013338 = 0;
  unk_1EB013340 = 0;
  qword_1EB013348 = sub_19D2A2990;
  unk_1EB013350 = 0u;
  unk_1EB013360 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB013320 = result;
  return result;
}

_BYTE *sub_19D2C4980(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19D2AD774();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_19D2C4B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2AE2CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2C4B34()
{
  qword_1EB0132B8 = 0;
  unk_1EB0132C0 = "MontrealNeuralNetworkTensor";
  qword_1EB0132C8 = 0;
  unk_1EB0132D0 = 0;
  qword_1EB0132D8 = sub_19D2A38CC;
  unk_1EB0132E0 = 0u;
  unk_1EB0132F0 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB0132B0 = result;
  return result;
}

float sub_19D2C4B9C(const __CFDictionary *a1, const void **a2)
{
  if (!a1 || (v2 = *a2) == 0 || (Value = CFDictionaryGetValue(a1, v2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_8;
  }

  v4 = sub_19D2C4C50(Value);
  if ((v4 & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *&v4;
}

uint64_t sub_19D2C4C50(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 0xFFFFFFFFFFLL;
  }

  v1 = a1;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v1))
  {
    a1 = sub_19D2C4CF0(v1);
    return a1 & 0xFFFFFFFFFFLL;
  }

  v4 = CFBooleanGetTypeID();
  if (v4 == CFGetTypeID(v1))
  {
    return COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D2C4CF0(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v18.i8[0] = LOBYTE(valuePtr);
      v17 = vmovl_s16(*&vmovl_s8(v18)).i32[0];
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16.i16[0] = LOWORD(valuePtr);
      v17 = vmovl_s16(v16).i32[0];
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_24:
      v9 = LODWORD(v17);
LABEL_25:
      v19 = v9 | 0x100000000;
      if (!Value)
      {
        v19 = 0;
      }

      result = v19 & 0x1FFFFFFFFLL;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void *sub_19D2C4F10(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D2C50B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2C50CC(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_19D2C3F28(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_19D2C51CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_19D2C51E0(void *a1)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_19D2C5354(&__p, a1[2]);
  v4 = *a1;
  v2 = (a1 + 1);
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v18;
    do
    {
      if (v5 >= v19)
      {
        v5 = sub_19D2C59E4(&__p, (v3 + 4), v3 + 7);
        v18 = v5;
        v6 = v3[1];
        if (v6)
        {
          do
          {
LABEL_8:
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
          goto LABEL_3;
        }
      }

      else
      {
        sub_19D2C5B34(&__p, v5, (v3 + 4), v3 + 7);
        v5 += 2;
        v18 = v5;
        v6 = v3[1];
        if (v6)
        {
          goto LABEL_8;
        }
      }

      do
      {
        v7 = v3[2];
        v8 = *v7 == v3;
        v3 = v7;
      }

      while (!v8);
LABEL_3:
      v3 = v7;
    }

    while (v7 != v2);
  }

  result = sub_19D2C5444(&__p);
  v10 = __p;
  if (__p)
  {
    v11 = result;
    v12 = v18;
    v13 = __p;
    if (v18 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        if (v14)
        {
          CFRelease(v14);
        }

        v16 = *(v12 - 2);
        v12 -= 2;
        v15 = v16;
        if (v16)
        {
          CFRelease(v15);
        }
      }

      while (v12 != v10);
      v13 = __p;
    }

    v18 = v10;
    operator delete(v13);
    return v11;
  }

  return result;
}

void sub_19D2C531C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C64B0(va);
  _Unwind_Resume(a1);
}

void sub_19D2C533C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C64B0(va);
  _Unwind_Resume(a1);
}

void *sub_19D2C5354(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D2C5428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C596C(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_19D2C5444(void *a1)
{
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 != *a1)
  {
    if (!((v2 >> 4) >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v3 = CFDictionaryCreate(0, 0, 0, v2 >> 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v3;
}

void sub_19D2C5788(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (v1)
  {
    operator delete(v1);
    if (!v2)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D2C57F4(unint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 - (v6 - *a1);
  v8 = v6 - *a1;
  if (v6 != *a1)
  {
    v9 = v8 - 16;
    v10 = *a1;
    v11 = (v4 - (v6 - *a1));
    if ((v8 - 16) < 0x70)
    {
      goto LABEL_22;
    }

    v12 = v7 >= v5 + (v9 & 0xFFFFFFFFFFFFFFF0) + 16 || v5 >= v4 + (v9 & 0xFFFFFFFFFFFFFFF0) - v8 + 16;
    v10 = *a1;
    v11 = (v4 - (v6 - *a1));
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v8 >> 4;
    v14 = (v9 >> 4) + 1;
    v15 = 16 * (v14 & 0x1FFFFFFFFFFFFFFCLL);
    v10 = (v5 + v15);
    v11 = (v7 + v15);
    v16 = (v4 - 16 * v13 + 32);
    v17 = (v5 + 32);
    v18 = v14 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = v17[1];
      *(v16 - 2) = *(v17 - 2);
      *(v16 - 1) = v19;
      *v16 = v20;
      v16[1] = v21;
      v16 += 4;
      *(v17 - 2) = 0uLL;
      *(v17 - 1) = 0uLL;
      *v17 = 0uLL;
      v17[1] = 0uLL;
      v17 += 4;
      v18 -= 4;
    }

    while (v18);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_22:
      do
      {
        *v11 = *v10;
        *v10 = 0;
        v11[1] = v10[1];
        v10[1] = 0;
        v10 += 2;
        v11 += 2;
      }

      while (v10 != v6);
    }

    do
    {
      v22 = *(v5 + 8);
      if (v22)
      {
        CFRelease(v22);
      }

      if (*v5)
      {
        CFRelease(*v5);
      }

      v5 += 16;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v23 = a1[1];
  a1[1] = a2[2];
  a2[2] = v23;
  v24 = a1[2];
  a1[2] = a2[3];
  a2[3] = v24;
  *a2 = a2[1];
}

uint64_t sub_19D2C596C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 16);
    *(a1 + 16) = i - 16;
    v5 = *(i - 8);
    if (v5)
    {
      CFRelease(v5);
    }

    if (*v4)
    {
      CFRelease(*v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_19D2C59E4(unint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v18 = a1;
  if (v7)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  __p = 0;
  v15 = 16 * v3;
  v17 = 0;
  sub_19D2C5B34(a1, (16 * v3), a2, a3);
  v16 = 16 * v3 + 16;
  sub_19D2C57F4(a1, &__p);
  v8 = a1[1];
  v9 = v15;
  while (1)
  {
    v10 = v16;
    if (v16 == v9)
    {
      break;
    }

    v11 = (v16 - 16);
    v16 -= 16;
    v12 = *(v10 - 8);
    if (v12)
    {
      CFRelease(v12);
    }

    if (*v11)
    {
      CFRelease(*v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_19D2C5B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C596C(va);
  _Unwind_Resume(a1);
}

CFArrayRef sub_19D2C5B34(uint64_t a1, CFStringRef *a2, uint64_t a3, uint64_t **a4)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  *a2 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = sub_19D2C5C20(a4);
  a2[1] = result;
  return result;
}

void sub_19D2C5BF0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_19D2C3B58(v1);
  _Unwind_Resume(a1);
}

CFArrayRef sub_19D2C5C20(uint64_t **a1)
{
  v2 = a1[1] - *a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_19D2C5DDC(&__p, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v18;
    do
    {
      v6 = *v3;
      v16 = *v3;
      if (v5 >= v19)
      {
        v5 = sub_19D2C61C0(&__p, &v16);
      }

      else
      {
        valuePtr = v6;
        v7 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
        *v5 = v7;
        if (!v7)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v18 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  result = sub_19D2C5F9C(&__p);
  v9 = __p;
  if (__p)
  {
    v10 = result;
    v11 = v18;
    v12 = __p;
    if (v18 != __p)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        if (v14)
        {
          CFRelease(v13);
        }
      }

      while (v11 != v9);
      v12 = __p;
    }

    v18 = v9;
    operator delete(v12);
    return v10;
  }

  return result;
}

void sub_19D2C5D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D2C6440(va);
  _Unwind_Resume(a1);
}

void sub_19D2C5D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, const void **a12)
{
  sub_19D2C618C(v12);
  a12 = v12;
  sub_19D2C6440(&a11);
  _Unwind_Resume(a1);
}

void sub_19D2C5DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D2C6440(va);
  _Unwind_Resume(a1);
}

void sub_19D2C5DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D2C6440(va);
  _Unwind_Resume(a1);
}

void *sub_19D2C5DDC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

CFArrayRef sub_19D2C5F9C(void *a1)
{
  v1 = a1[1];
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  result = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_19D2C610C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D2C6134(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      CFRelease(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_19D2C618C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_19D2C61C0(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * v3;
  valuePtr = *a2;
  v9 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *(8 * v3) = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v8 - (v11 - *a1);
  v13 = v8 + 8;
  v14 = v11 - *a1;
  if (v11 != *a1)
  {
    v15 = v14 - 8;
    v16 = *a1;
    v17 = v12;
    if ((v14 - 8) < 0x98)
    {
      goto LABEL_32;
    }

    if (v12 < v10 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v16 = *a1;
      v17 = v12;
      if (v10 < v2 + (v15 & 0xFFFFFFFFFFFFFFF8) - v14 + 8)
      {
        goto LABEL_32;
      }
    }

    v18 = v14 >> 3;
    v19 = (v15 >> 3) + 1;
    v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    v16 = &v10[v20];
    v17 = (v12 + v20 * 8);
    v21 = (-8 * v18 + 8 * v3 + 16);
    v22 = (v10 + 2);
    v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      *(v22 - 1) = 0uLL;
      *v22 = 0uLL;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      do
      {
        *v17++ = *v16;
        *v16++ = 0;
      }

      while (v16 != v11);
    }

    do
    {
      if (*v10)
      {
        CFRelease(*v10);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v13;
}

void sub_19D2C63FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D2C618C(v9);
  sub_19D2C6134(&a9);
  _Unwind_Resume(a1);
}

void **sub_19D2C6440(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_19D2C64B0(uint64_t *a1)
{
  if (*a1)
  {
    sub_19D2C64EC(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_19D2C64EC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      CFRelease(v5);
    }
  }

  a1[1] = v2;
}

void sub_19D2C6548(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_19D2C6548(a1, *a2);
    sub_19D2C6548(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void *sub_19D2C65DC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

void sub_19D2C68F4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      sub_19D2C460C(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 32));
  sub_19D2C460C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D2C6940()
{
  qword_1EB0131F8 = 0;
  unk_1EB013200 = "MontrealNeuralNetworkState";
  qword_1EB013208 = 0;
  unk_1EB013210 = 0;
  qword_1EB013218 = sub_19D2B0D5C;
  unk_1EB013220 = 0u;
  unk_1EB013230 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB0131F0 = result;
  return result;
}

uint64_t sub_19D2C6998(const __CFBoolean *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return (CFBooleanGetValue(a1) != 0) | 0x100u;
  }

  v4 = CFNumberGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
    return 0;
  }

  v5 = sub_19D2C6A60(a1);
  return v5 | (HIBYTE(v5) << 8);
}

uint64_t sub_19D2C6A60(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_24;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_15;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_34;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_20;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_24:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      if (!LOBYTE(valuePtr))
      {
        v9 = 0;
      }

      if (!Value)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_15:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      if (!LOWORD(valuePtr))
      {
        v9 = 0;
      }

      if (!Value)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_34:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      if (!LODWORD(valuePtr))
      {
        v9 = 0;
      }

      if (Value)
      {
        goto LABEL_37;
      }

      goto LABEL_7;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0 && *&valuePtr != 0.0;
      if (!Value)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_20;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      if (valuePtr == 0.0)
      {
        v9 = 0;
      }

      if (!Value)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_20:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0 && valuePtr != 0.0;
      if (Value)
      {
LABEL_37:
        result = v9 | 0x100u;
      }

      else
      {
LABEL_7:
        result = Value | v9;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}