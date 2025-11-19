uint64_t sub_10017C938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10017C950(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = a1[4];
    v9 = [v7 filePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = a1[5];
    v13 = [v7 filePath];
    v14 = *(a1[6] + 8);
    obj = *(v14 + 40);
    LOBYTE(v12) = [v12 copyItemAtURL:v13 toURL:v11 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
      [*(*(a1[7] + 8) + 40) addObject:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    v15 = *(a1[6] + 8);
    v18 = *(v15 + 40);
    [DIError failWithPOSIXCode:45 verboseInfo:@"Clone of plugin nodes is not supported." error:&v18];
    v16 = v18;
    v7 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_10017CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017CFD0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [DiskImageGraphNode GraphNodeWithDictionary:a2 workDir:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = a1[5];
    v10 = [v8 UUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v8 forKey:v11];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_10017D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017D1B8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v6 = [v15 parentUUID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v15 parentUUID];
    v9 = [v8 UUIDString];
    v10 = [v7 objectForKey:v9];

    if (v10)
    {
      [v15 setParent:v10];
      v11 = [v15 parent];
      v12 = [v11 mutableChildren];
      [v12 addObject:v15];
    }

    else
    {
      *a4 = 1;
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Missing parent node in graph."];
      v14 = *(*(a1 + 40) + 8);
      v11 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

void sub_10017D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017D6A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 tag];
  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

uint64_t sub_10017E404(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v4);
    sub_1000026BC(v4, "random generation failed with err code ", 39);
    std::ostream::operator<<();
    sub_100004290(exception, v4, 0x9Au);
  }

  return result;
}

void sub_10017E4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017E4D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  LODWORD(v9) = 0;
  sub_10009C144("public_key_crypto_algo_mode", 0, &v9, 1);
  bzero((a1 + 48), 0x204uLL);
  LODWORD(v9) = bswap32(*a2);
  sub_10017F2A8(a1, &v9);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  LODWORD(v9) = 42;
  sub_10009C144("public_key_crypto_algo", v5, &v9, 1);
  *(a1 + 36) = v5;
  v6 = bswap32(*(a2 + 40));
  v9 = 0x800000010000000ALL;
  sub_10009C144("public_key_padding_algo", v6, &v9, 2);
  *(a1 + 40) = v6;
  v7 = bswap32(*(a2 + 44));
  LODWORD(v9) = 0;
  sub_10009C144("public_key_crypto_algo_mode", v7, &v9, 1);
  *(a1 + 44) = v7;
  LODWORD(v9) = bswap32(*(a2 + 48));
  sub_1001805EC((a1 + 48), &v9);
  memcpy((a1 + 52), (a2 + 52), 0x200uLL);
  return a1;
}

uint64_t sub_10017E8BC(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x2A00000000;
  LODWORD(v3) = 42;
  sub_10009C144("public_key_crypto_algo", 42, &v3, 1);
  *(a1 + 40) = 10;
  v3 = 0x800000010000000ALL;
  sub_10009C144("public_key_padding_algo", 10, &v3, 2);
  *(a1 + 44) = 0;
  LODWORD(v3) = 0;
  sub_10009C144("public_key_crypto_algo_mode", 0, &v3, 1);
  bzero((a1 + 48), 0x204uLL);
  return a1;
}

SecKeyAlgorithm sub_10017E99C(uint64_t a1)
{
  if (*(a1 + 36) != 42)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 40);
  if (v1 == 10)
  {
    v2 = &kSecKeyAlgorithmRSAEncryptionPKCS1;
    return *v2;
  }

  if (v1 != -2147483647)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001860(exception, "Unsupported public key algorithm.", 0xA1u);
  }

  v2 = &kSecKeyAlgorithmRSAEncryptionOAEPSHA1;
  return *v2;
}

uint64_t sub_10017EA1C(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  *(a2 + 44) = bswap32(*(a1 + 44));
  *(a2 + 48) = bswap32(*(a1 + 48));
  memcpy((a2 + 52), (a1 + 52), 0x200uLL);
  return a2 + 564;
}

int *sub_10017EAA0(int *a1, uint64_t a2)
{
  bzero(a1, 0x268uLL);
  v4 = bswap32(*a2);
  LODWORD(v12) = 103;
  sub_10009C144("key_derivation_algorithm_t", v4, &v12, 1);
  *a1 = v4;
  v5 = bswap32(*(a2 + 4));
  LODWORD(v12) = 0;
  sub_10009C144("key_derivation_prng_algorithm_t", v5, &v12, 1);
  a1[1] = v5;
  a1[2] = bswap32(*(a2 + 8));
  LODWORD(v12) = bswap32(*(a2 + 12));
  sub_10017F2A8(a1 + 3, &v12);
  v6 = *(a2 + 32);
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 2) = v6;
  LODWORD(v12) = bswap32(*(a2 + 48));
  sub_10017F2A8(a1 + 12, &v12);
  v7 = *(a2 + 52);
  *(a1 + 17) = *(a2 + 68);
  *(a1 + 13) = v7;
  a1[21] = bswap32(*(a2 + 84));
  v8 = bswap32(*(a2 + 88));
  v12 = 0x8000000100000011;
  sub_10009C144("wrap_key_crypto_algo", v8, &v12, 2);
  a1[22] = v8;
  v9 = bswap32(*(a2 + 92));
  LODWORD(v12) = 7;
  sub_10009C144("wrap_key_crypto_padding_algo", v9, &v12, 1);
  a1[23] = v9;
  v10 = bswap32(*(a2 + 96));
  LODWORD(v12) = 6;
  sub_10009C144("crypto_mode", v10, &v12, 1);
  a1[24] = v10;
  LODWORD(v12) = bswap32(*(a2 + 100));
  sub_1001805EC(a1 + 25, &v12);
  memcpy(a1 + 26, (a2 + 104), 0x200uLL);
  return a1;
}

uint64_t sub_10017F068(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *(a2 + 48) = bswap32(*(a1 + 48));
  v4 = *(a1 + 52);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 52) = v4;
  *(a2 + 84) = bswap32(*(a1 + 84));
  *(a2 + 88) = bswap32(*(a1 + 88));
  *(a2 + 92) = bswap32(*(a1 + 92));
  *(a2 + 96) = bswap32(*(a1 + 96));
  *(a2 + 100) = bswap32(*(a1 + 100));
  memcpy((a2 + 104), (a1 + 104), 0x200uLL);
  return a2 + 616;
}

uint64_t sub_10017F130(uint64_t a1)
{
  *a1 = 103;
  LODWORD(v3) = 103;
  sub_10009C144("key_derivation_algorithm_t", 103, &v3, 1);
  *(a1 + 4) = 0;
  LODWORD(v3) = 0;
  sub_10009C144("key_derivation_prng_algorithm_t", 0, &v3, 1);
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 84) = 0x11000000C0;
  v3 = 0x8000000100000011;
  sub_10009C144("wrap_key_crypto_algo", 17, &v3, 2);
  *(a1 + 92) = 7;
  LODWORD(v3) = 7;
  sub_10009C144("wrap_key_crypto_padding_algo", 7, &v3, 1);
  *(a1 + 96) = 6;
  LODWORD(v3) = 6;
  sub_10009C144("crypto_mode", 6, &v3, 1);
  bzero((a1 + 100), 0x204uLL);
  LODWORD(v3) = 20;
  sub_10017F2A8((a1 + 12), &v3);
  LODWORD(v3) = 8;
  sub_10017F2A8((a1 + 48), &v3);
  sub_10017E404((a1 + 16), *(a1 + 12));
  sub_10017E404((a1 + 52), *(a1 + 48));
  return a1;
}

_DWORD *sub_10017F2A8(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x21u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_1002264F8;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

uint64_t sub_10017F31C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == -2147483647)
  {
    return 0;
  }

  if (v1 != 17)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v4);
    sub_1000026BC(v4, "Unsupported key decryption algo", 31);
    sub_100004290(exception, v4, 0xA1u);
  }

  return 2;
}

void sub_10017F3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F3FC(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x22CuLL);
  v7 = bswap32(*a2);
  sub_10017F2A8(a1, &v7);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  v8 = -2147483647;
  sub_10009C144("wrap_key_crypto_algo", v5, &v8, 1);
  *(a1 + 36) = v5;
  v9 = bswap32(*(a2 + 40));
  sub_1001805EC((a1 + 40), &v9);
  memcpy((a1 + 44), (a2 + 44), 0x200uLL);
  return a1;
}

uint64_t sub_10017F5C4(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  memcpy((a2 + 44), (a1 + 44), 0x200uLL);
  return a2 + 556;
}

uint64_t sub_10017F630(uint64_t a1)
{
  if (*(a1 + 36) != -2147483647)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v3);
    sub_1000026BC(v3, "Unsupported key decryption algo", 31);
    sub_100004290(exception, v3, 0xA1u);
  }

  return 0;
}

void sub_10017F6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F700(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = bswap32(*a2);
  *(result + 4) = bswap64(*(a2 + 4));
  *(result + 12) = bswap64(*(a2 + 12));
  return result;
}

uint64_t sub_10017F730(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap64(*(a1 + 4));
  *(a2 + 12) = bswap64(*(a1 + 12));
  return a2 + 20;
}

uint64_t *sub_10017F75C(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a4 >> 3;
    v8 = a5 >> 3;
    v9 = *a2;
    v10 = (a5 >> 3) + (a4 >> 3);
    do
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_10018253C(v15, v9, v7 + v9, v7);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_10018253C(__p, v7 + v9, v10 + v9, v8);
      v11 = a1[1];
      if (v11 >= a1[2])
      {
        v12 = sub_1001822F0(a1, v15);
        v13 = __p[0];
        a1[1] = v12;
        if (v13)
        {
          __p[1] = v13;
          operator delete(v13);
        }
      }

      else
      {
        v11[2] = 0;
        v11[3] = 0;
        *v11 = 0;
        v11[1] = 0;
        *v11 = *v15;
        v11[2] = v16;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v11[4] = 0;
        v11[5] = 0;
        *(v11 + 3) = *__p;
        v11[5] = v18;
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        a1[1] = (v11 + 6);
      }

      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void sub_10017F890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_1001825B8(&__p);
  sub_100036760(&__p);
  _Unwind_Resume(a1);
}

void *sub_10017F8D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == *(a1 + 8))
  {
    result = std::generic_category();
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 22;
    *(a3 + 24) = result;
LABEL_7:
    *(a3 + 632) = 4;
    return result;
  }

  result = (*(**(a1 + 24) + 8))(v6);
  if (v7 != 1)
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v6[0];
    goto LABEL_7;
  }

  result = sub_100036488(a3, v6);
  if (v7)
  {
    return sub_100035E5C(v6);
  }

  return result;
}

void sub_10017F9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x280])
  {
    sub_100035E5C(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_10017F9F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (***(a1 + 24))(&v6);
  if (v8 == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *a1 = v6;
    *(a1 + 16) = v7;
    v7 = 0;
    v6 = 0uLL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = v6;
  }

  *(a2 + 16) = v5;
}

_BYTE *sub_10017FA9C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a2;
  v23 = *(a2 + 4);
  if (*(a2 + 20) == 1)
  {
    *(a2 + 20) = 0;
  }

  v6 = *(a1 + 8);
  v7 = a3[1];
  if (*a3 == a1 && v7 == v6)
  {
    v11 = *(a1 + 16);
    if (v6 >= v11)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 2);
      v15 = v14 + 1;
      if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_100036CAC();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_100182664(a1, v17);
      }

      v18 = 20 * v14;
      *v18 = v22;
      *(v18 + 16) = v23;
      v13 = 20 * v14 + 20;
      v19 = *(a1 + 8) - *a1;
      v20 = 20 * v14 - v19;
      memcpy((v18 - v19), *a1, v19);
      v21 = *a1;
      *a1 = v20;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v12 = *a2;
      *(v6 + 16) = *(a2 + 4);
      *v6 = v12;
      v13 = v6 + 20;
    }

    *(a1 + 8) = v13;
    *&v25 = a1;
    *(&v25 + 1) = v13 - 20;
    v26[0] = 0;
    v27 = 0;
    *a4 = v25;
    result = sub_1001825FC((a4 + 16), v26);
  }

  else
  {
    v9 = *a2;
    *(v7 + 16) = *(a2 + 4);
    *v7 = v9;
    *&v24 = a1;
    *(&v24 + 1) = v7;
    v26[0] = 0;
    v27 = 0;
    *a4 = v24;
    result = sub_1001825FC((a4 + 16), v26);
  }

  *(a4 + 664) = 1;
  if (v27 == 1)
  {
    return sub_100035E5C(v26);
  }

  return result;
}

void sub_10017FC90(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2B0]) == 1)
  {
    sub_100035E5C(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_10017FCC0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  (*(**(*a1 + 24) + 32))(&v10);
  if (v11)
  {
    v4 = (*(**(v3 + 24) + 24))(*(v3 + 24), 0);
    sub_10017FE38(v4, &v8);
    if (v9)
    {
      v5 = (*(**(v3 + 24) + 24))(*(v3 + 24), 1);
      sub_10017FE38(v5, &v8);
      if (v9)
      {
        v6 = (*(**(v3 + 24) + 16))(*(v3 + 24));
        sub_10017F75C(&v8, &v10, v6, v4, v5);
        *a2 = v8;
        *(a2 + 16) = v9;
        v9 = 0;
        v8 = 0uLL;
        *(a2 + 24) = 1;
        v12 = &v8;
        sub_100036760(&v12);
        return;
      }
    }

    v7 = v8;
  }

  else
  {
    v7 = v10;
  }

  *a2 = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_10017FE38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 1 || (result & 7) != 0)
  {
    *&v5 = "diskimage_err> crypto::validate_key_size(ssize_t)";
    *(&v5 + 1) = 40;
    v6 = 16;
    sub_100171E9C(v7, &v5);
    sub_1000026BC(v8, "Key size isn't a multiple of 8", 30);
    std::ostream::~ostream();
    sub_1001749A4(v7);
    std::ios::~ios();
    result = make_error_code(152);
    v3 = 0;
    *a2 = result;
    *(a2 + 8) = v4;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 16) = v3;
  return result;
}

void sub_10017FEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100171FC4(va);
  _Unwind_Resume(a1);
}

void sub_10017FF04(uint64_t a1@<X0>, const char *a2@<X1>, int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  sub_100180290(a2, v35);
  if ((v35[16] & 1) == 0)
  {
    v19 = *v35;
LABEL_8:
    *a5 = v19;
    *(a5 + 628) = 0;
    return;
  }

  v10 = *a3;
  sub_10017F130(v28);
  *v35 = a1;
  *&v35[8] = v10;
  v38 = v29;
  *&v35[12] = v28[0];
  v36 = v28[1];
  v37 = v28[2];
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  memcpy(dataOut, v34, 0x200uLL);
  LODWORD(v28[0]) = 8;
  sub_10017F2A8(&v38, v28);
  v11 = strlen(a2);
  *&v35[20] = CCCalibratePBKDF(2u, v11, *&v35[24], 1u, v41 >> 3, 0x64u);
  (**a4)(__p, a4);
  if (v27 != 1)
  {
    v19 = *__p;
    goto LABEL_8;
  }

  dataOutMoved = 0;
  sub_1001802F0(v35, a2, &v23);
  if (v24)
  {
    v12 = sub_10017F31C(&v35[12]);
    v13 = v23;
    v14 = *(&v23 + 1) - v23;
    v15 = CCCrypt(0, v12, 1u, v23, *(&v23 + 1) - v23, &v39, __p[0], __p[1] - __p[0], dataOut, 0x200uLL, &dataOutMoved);
    bzero(v13, v14);
    if (v15)
    {
      *&v21 = "std::expected<passphrase, diskimage_err> crypto::auth_entry_ns::passphrase::create(const auth_table &, const char *, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v21 + 1) = 82;
      v22 = 16;
      sub_100180480(v28, &v21);
      sub_1000026BC(&v34[32], "Image key encoding failed with err code ", 40);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100182950(v28);
      std::ios::~ios();
      error_code = make_error_code(154);
      v17 = 0;
      *a5 = error_code;
      *(a5 + 8) = v18;
    }

    else
    {
      LODWORD(v28[0]) = dataOutMoved;
      sub_1001805EC(&v42, v28);
      *a5 = *v35;
      *(a5 + 12) = *&v35[12];
      *(a5 + 28) = v36;
      *(a5 + 44) = v37;
      *(a5 + 60) = v38;
      v20 = v40;
      *(a5 + 64) = v39;
      *(a5 + 80) = v20;
      *(a5 + 96) = v41;
      *(a5 + 112) = v42;
      memcpy((a5 + 116), dataOut, 0x200uLL);
      v17 = 1;
    }

    *(a5 + 628) = v17;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *a5 = v23;
    *(a5 + 628) = 0;
  }

  if (v27)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_100180228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (a24 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

size_t sub_100180290@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && *a1)
  {
    result = strnlen(a1, 0x101uLL);
    if (result < 0x101)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = 169;
  }

  else
  {
    v4 = 168;
  }

  result = make_error_code(v4);
  v5 = 0;
  *a2 = result;
  *(a2 + 8) = v6;
LABEL_7:
  *(a2 + 16) = v5;
  return result;
}

double sub_1001802F0@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 96);
  sub_10017FE38(v6, &v12);
  if (v13)
  {
    LOBYTE(v12) = 0;
    sub_100182E50(&v15, v6 >> 3);
    v7 = strlen(a2);
    if (CCKeyDerivationPBKDF(2u, a2, v7, (a1 + 28), *(a1 + 24), 1u, *(a1 + 20), v15, *(&v15 + 1) - v15))
    {
      *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_derivation_key(const char *) const";
      *(&v10 + 1) = 73;
      v11 = 16;
      sub_100180948(&v12, &v10);
      sub_1000026BC(v14, "crypto_format: Can't derive key ", 32);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100183168(&v12);
      std::ios::~ios();
      *a3 = make_error_code(152);
      *(a3 + 8) = v8;
      *(a3 + 24) = 0;
      if (v15)
      {
        *(&v15 + 1) = v15;
        operator delete(v15);
      }
    }

    else
    {
      result = *&v15;
      *a3 = v15;
      *(a3 + 16) = v16;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    result = *&v12;
    *a3 = v12;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_10018044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 80);
  if (v16)
  {
    *(v14 - 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100180480(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186B90(a1, a2);
  *a1 = off_10022E768;
  a1[45] = &off_10022E868;
  a1[46] = &off_10022E890;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E768;
  a1[45] = off_10022E7F0;
  a1[46] = off_10022E818;
  return a1;
}

void sub_100180584(_Unwind_Exception *a1)
{
  sub_100182950(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001805A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100182950(a1);
  std::ios::~ios();
  return a1;
}

_DWORD *sub_1001805EC(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x201u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_1002264F8;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

double sub_100180660@<D0>(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100180290(a2, &v8);
  if ((v9 & 1) != 0 && (sub_100180718(a1, a2, &v8), v10 == 1))
  {
    v6 = v8;
    sub_10017FCC0(a1, a3);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_100180700(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100180718(unsigned int *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  __len = 0;
  sub_1001802F0(a1, a2, &key);
  if (v16 != 1)
  {
    *a3 = key;
    *(a3 + 24) = 0;
    return;
  }

  v5 = sub_10017F31C((a1 + 3));
  v6 = key;
  v7 = *(&key + 1) - key;
  v8 = CCCrypt(1u, v5, 1u, key, *(&key + 1) - key, a1 + 16, a1 + 29, a1[28], __src, a1[28], &__len);
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  if (!v8)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v13 = 0;
    sub_100065CC8(__dst, __len);
    sub_100065E0C(__dst, __dst[0], __src, &__src[__len], __len);
    *a3 = *__dst;
    *(a3 + 16) = v13;
    *(a3 + 24) = 1;
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_wrapped_key(const char *) const";
  *(&v10 + 1) = 70;
  v11 = 16;
  sub_10008DB88(__dst, &v10);
  sub_1000026BC(v14, "crypto_format: Can't decrypt wrapped key ", 41);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100096A24(__dst);
  std::ios::~ios();
  if (v8 < 0)
  {
    v8 = -v8;
  }

  v9 = std::system_category();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 24) = 0;
  if (v6)
  {
LABEL_11:
    operator delete(v6);
  }
}

void sub_1001808F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_100180948(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186C58(a1, a2);
  *a1 = off_10022E988;
  a1[45] = &off_10022EA88;
  a1[46] = &off_10022EAB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E988;
  a1[45] = off_10022EA10;
  a1[46] = off_10022EA38;
  return a1;
}

void sub_100180A4C(_Unwind_Exception *a1)
{
  sub_100183168(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100180A70(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183168(a1);
  std::ios::~ios();
  return a1;
}

void sub_100180AB4(uint64_t a1@<X0>, __SecKey *a2@<X1>, unsigned int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_10017E8BC(v32);
  *&v36 = a1;
  *(&v36 + 1) = __PAIR64__(*v32, v9);
  v37 = *&v32[4];
  v38 = v33;
  v39 = v34;
  memcpy(v40, v35, sizeof(v40));
  (**a4)(&__p, a4);
  error = 0;
  v10 = SecKeyCopyExternalRepresentation(a2, &error);
  if (!v10)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100180EF8(v32, &v26);
    sub_1000026BC(&v35[77], "Key from the certificate is not exportable", 42);
    std::ostream::~ostream();
    sub_100183900(v32);
    std::ios::~ios();
    Code = CFErrorGetCode(error);
    v20 = std::generic_category();
    *a5 = Code;
    *(a5 + 8) = v20;
    *(a5 + 576) = 0;
    goto LABEL_10;
  }

  theData = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(theData);
  CC_SHA1(BytePtr, Length, &v37);
  *v32 = 20;
  sub_10017F2A8(&v36 + 3, v32);
  plaintext = CFDataCreate(kCFAllocatorDefault, __p, v30 - __p);
  if (!plaintext)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100181064(v32, &v26);
    sub_1000026BC(&v35[77], "Failed to allocate raw blob data", 32);
    std::ostream::~ostream();
    sub_100184098(v32);
    std::ios::~ios();
    v21 = std::generic_category();
    v22 = 12;
LABEL_8:
    *a5 = v22;
    *(a5 + 8) = v21;
    *(a5 + 576) = 0;
    goto LABEL_9;
  }

  v13 = sub_10017E99C(&v36 + 12);
  v14 = SecKeyCreateEncryptedData(a2, v13, plaintext, &error);
  if (!v14)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_1001811D0(v32, &v26);
    sub_1000026BC(&v35[77], "Failed to encrypt data using public key from certificate", 56);
    std::ostream::~ostream();
    sub_100184830(v32);
    std::ios::~ios();
    v23 = CFErrorGetCode(error);
    v21 = std::generic_category();
    v22 = v23;
    goto LABEL_8;
  }

  *v32 = v14;
  LODWORD(v26) = CFDataGetLength(v14);
  sub_1001805EC(&v39 + 3, &v26);
  v15 = *v32;
  v41.length = CFDataGetLength(*v32);
  v41.location = 0;
  CFDataGetBytes(v15, v41, v40);
  v16 = HIDWORD(v36);
  v17 = v37;
  *a5 = v36;
  *(a5 + 16) = v17;
  *(a5 + 12) = v16;
  v18 = v39;
  *(a5 + 32) = v38;
  *(a5 + 48) = v18;
  memcpy((a5 + 64), v40, 0x200uLL);
  *(a5 + 576) = 1;
  sub_10008943C(v32);
LABEL_9:
  sub_10008943C(&plaintext);
  sub_10008943C(&theData);
LABEL_10:
  if (v31 == 1)
  {
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void sub_100180E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  sub_10008943C(&a9);
  sub_10008943C(&a10);
  if (a18 == 1)
  {
    if (__p)
    {
      a16 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_100180EF8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186D20(a1, a2);
  *a1 = off_10022EBA8;
  a1[45] = &off_10022ECA8;
  a1[46] = &off_10022ECD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022EBA8;
  a1[45] = off_10022EC30;
  a1[46] = off_10022EC58;
  return a1;
}

void sub_100180FFC(_Unwind_Exception *a1)
{
  sub_100183900(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181020(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183900(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100181064(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186DE8(a1, a2);
  *a1 = off_10022EDC8;
  a1[45] = &off_10022EEC8;
  a1[46] = &off_10022EEF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022EDC8;
  a1[45] = off_10022EE50;
  a1[46] = off_10022EE78;
  return a1;
}

void sub_100181168(_Unwind_Exception *a1)
{
  sub_100184098(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018118C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184098(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001811D0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186EB0(a1, a2);
  *a1 = off_10022EFE8;
  a1[45] = &off_10022F0E8;
  a1[46] = &off_10022F110;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022EFE8;
  a1[45] = off_10022F070;
  a1[46] = off_10022F098;
  return a1;
}

void sub_1001812D4(_Unwind_Exception *a1)
{
  sub_100184830(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001812F8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184830(a1);
  std::ios::~ios();
  return a1;
}

const void **sub_10018133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 12;
  v5 = CFDataCreate(kCFAllocatorDefault, (a1 + 16), *(a1 + 12));
  v22 = v5;
  *&v23 = kSecClass;
  *(&v23 + 1) = kSecClassKey;
  v24 = kSecAttrKeyClass;
  v25 = kSecAttrKeyClassPrivate;
  v26 = kSecAttrApplicationLabel;
  v27 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v28 = kSecReturnRef;
  v29 = kCFBooleanTrue;
  result = 0;
  *&v15 = &v23;
  *(&v15 + 1) = 4;
  sub_10014D3C0(&v15, &query);
  for (i = 56; i != -8; i -= 16)
  {
    sub_100004450((&v23 + i));
  }

  sub_100023510(&result);
  result = 0;
  if (!SecItemCopyMatching(query, &result))
  {
    error = 0;
    v19 = result;
    ciphertext = CFDataCreate(kCFAllocatorDefault, (a1 + 64), *(a1 + 60));
    if (ciphertext)
    {
      v8 = v19;
      v9 = sub_10017E99C(v4);
      v10 = SecKeyCreateDecryptedData(v8, v9, ciphertext, &error);
      v11 = v10;
      if (v10)
      {
        sub_10014D1C0(v10, 0, 0, &v23);
        CFRelease(v11);
        *a2 = v23;
        *(a2 + 16) = v24;
        *(a2 + 24) = 1;
LABEL_13:
        sub_10008943C(&ciphertext);
        sub_100186F78(&v19);
        goto LABEL_14;
      }

      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100181874(&v23, &v15);
      sub_1000026BC(v30, "Error decrypting data using public key, error code ", 51);
      CFErrorGetCode(error);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100185760(&v23);
      std::ios::~ios();
      v13 = std::generic_category();
      *a2 = 35;
      *(a2 + 8) = v13;
    }

    else
    {
      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100181708(&v23, &v15);
      sub_1000026BC(v30, "Failed to create chiper data for public key auth", 48);
      std::ostream::~ostream();
      sub_100184FC8(&v23);
      std::ios::~ios();
      *a2 = make_error_code(152);
      *(a2 + 8) = v12;
    }

    *(a2 + 24) = 0;
    goto LABEL_13;
  }

  v7 = std::generic_category();
  *a2 = 35;
  *(a2 + 8) = v7;
  *(a2 + 24) = 0;
LABEL_14:
  sub_1000043E8(&query);
  return sub_10008943C(&v22);
}

void sub_100181634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, __int16 a16, char a17, char a18, int a19, const void *a20, const void *a21, void *__p, uint64_t a23)
{
  sub_10018199C(&__p);
  sub_10008943C(&a13);
  sub_100186F78(&a15);
  sub_1000043E8(&a20);
  sub_10008943C(&a21);
  _Unwind_Resume(a1);
}

void *sub_100181708(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186FAC(a1, a2);
  *a1 = off_10022F208;
  a1[45] = &off_10022F308;
  a1[46] = &off_10022F330;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F208;
  a1[45] = off_10022F290;
  a1[46] = off_10022F2B8;
  return a1;
}

void sub_10018180C(_Unwind_Exception *a1)
{
  sub_100184FC8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181830(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184FC8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100181874(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100187074(a1, a2);
  *a1 = off_10022F428;
  a1[45] = &off_10022F528;
  a1[46] = &off_10022F550;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F428;
  a1[45] = off_10022F4B0;
  a1[46] = off_10022F4D8;
  return a1;
}

void sub_100181978(_Unwind_Exception *a1)
{
  sub_100185760(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018199C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185760(a1);
  std::ios::~ios();
  return a1;
}

double sub_1001819E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018133C(a1, v6);
  if (v7 == 1)
  {
    v4 = v6[0];
    sub_10017FCC0(a1, a2);
    if (v4 != 0.0)
    {
      operator delete(*&v4);
    }
  }

  else
  {
    result = v6[0];
    *a2 = *v6;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_100181A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100181A78(CFTypeRef cf@<X1>, uint64_t a2@<X0>, int *a3@<X2>, void (***a4)(__int128 *__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    v17 = std::generic_category();
    *a5 = 22;
    *(a5 + 8) = v17;
LABEL_7:
    *(a5 + 568) = 0;
    return;
  }

  v11 = *a3;
  LODWORD(v23[0]) = -2147483647;
  sub_10009C144("wrap_key_crypto_algo", -2147483647, v23, 1);
  *v28 = a2;
  *&v28[8] = v11;
  memset(&v28[12], 0, 32);
  *&v28[44] = 0x8000000100000000;
  bzero(&v28[52], 0x204uLL);
  LODWORD(v23[0]) = 8;
  sub_10017F2A8(&v28[12], v23);
  (**a4)(&dataIn, a4);
  if (v27 != 1)
  {
    *a5 = dataIn;
    goto LABEL_7;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  sub_10017F630(&v28[12]);
  if (CCCrypt(0, 0, 1u, BytePtr, Length, &v28[16], dataIn, *(&dataIn + 1) - dataIn, dataOut, 0x200uLL, &dataOutMoved))
  {
    *&v21 = "std::expected<symmetric_key, diskimage_err> crypto::auth_entry_ns::symmetric_key::create(const auth_table &, CFDataRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v21 + 1) = 88;
    v22 = 16;
    sub_100181D74(v23, &v21);
    sub_1000026BC(v24, "Image key encoding failed with err code ", 40);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100185EF8(v23);
    std::ios::~ios();
    error_code = make_error_code(154);
    v15 = 0;
    *a5 = error_code;
    *(a5 + 8) = v16;
  }

  else
  {
    LODWORD(v23[0]) = dataOutMoved;
    sub_1001805EC(&v28[52], v23);
    v18 = *&v28[12];
    v19 = *&v28[16];
    v20 = *&v28[32];
    *a5 = *v28;
    *(a5 + 16) = v19;
    *(a5 + 12) = v18;
    *(a5 + 32) = v20;
    *(a5 + 48) = *&v28[48];
    memcpy((a5 + 56), dataOut, 0x200uLL);
    v15 = 1;
  }

  *(a5 + 568) = v15;
  if (v27)
  {
    if (dataIn)
    {
      *(&dataIn + 1) = dataIn;
      operator delete(dataIn);
    }
  }
}

void sub_100181D20(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x258]) == 1)
  {
    v2 = STACK[0x240];
    if (STACK[0x240])
    {
      STACK[0x248] = v2;
      operator delete(v2);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_100181D74(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018713C(a1, a2);
  *a1 = off_10022F648;
  a1[45] = &off_10022F748;
  a1[46] = &off_10022F770;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F648;
  a1[45] = off_10022F6D0;
  a1[46] = off_10022F6F8;
  return a1;
}

void sub_100181E78(_Unwind_Exception *a1)
{
  sub_100185EF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181E9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185EF8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100181EE0(CFTypeRef cf@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDataGetTypeID()))
  {
    v8 = std::generic_category();
    *a3 = 22;
    *(a3 + 8) = v8;
LABEL_7:
    *(a3 + 24) = 0;
    return;
  }

  sub_100181FB0(cf, a2, &v9);
  if (v10 != 1)
  {
    *a3 = v9;
    goto LABEL_7;
  }

  v7 = v9;
  sub_10017FCC0(a2, a3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_100181F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_100181FB0@<D0>(CFDataRef theData@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  __len = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_10017F630((a2 + 3));
  v8 = CCCrypt(1u, 0, 1u, BytePtr, Length, a2 + 4, a2 + 14, a2[13], __src, a2[13], &__len);
  if (v8)
  {
    *&v11 = "diskimage_err> crypto::auth_entry_ns::symmetric_key::generate_wrapped_key(CFDataRef) const";
    *(&v11 + 1) = 73;
    v12 = 16;
    sub_100182184(__dst, &v11);
    sub_1000026BC(v15, "crypto_format: Can't decrypt wrapped key ", 41);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100186690(__dst);
    std::ios::~ios();
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v9 = std::system_category();
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 24) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v14 = 0;
    sub_100065CC8(__dst, __len);
    sub_100065E0C(__dst, __dst[0], __src, &__src[__len], __len);
    result = *__dst;
    *a3 = *__dst;
    *(a3 + 16) = v14;
    *(a3 + 24) = 1;
  }

  return result;
}

void sub_10018214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100182184(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100187204(a1, a2);
  *a1 = off_10022F868;
  a1[45] = &off_10022F968;
  a1[46] = &off_10022F990;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F868;
  a1[45] = off_10022F8F0;
  a1[46] = off_10022F918;
  return a1;
}

void sub_100182288(_Unwind_Exception *a1)
{
  sub_100186690(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001822AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186690(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001822F0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100036CAC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1000696B0(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  sub_100182450(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1001824EC(&v14);
  return v13;
}

void sub_10018243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001824EC(va);
  _Unwind_Resume(a1);
}

void sub_100182450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000367E4(v5);
      v5 += 48;
    }
  }
}

uint64_t sub_1001824EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1000367E4(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10018253C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100036C5C(result, a4);
  }

  return result;
}

void sub_10018259C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001825B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_1001825FC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    sub_100036488(a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_100182644(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    sub_100035E5C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100182664(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_1001826B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100182950(v1);

  return std::ios::~ios();
}

uint64_t sub_100182704(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100182950(v1);

  return std::ios::~ios();
}

void sub_100182764(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100182950(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001827CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100182808(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100182874(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100182950(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001828D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100182950(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100182950(uint64_t a1)
{
  *a1 = off_10022E900;
  sub_100182ABC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100182ABC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100182C6C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100182C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100182C34(uint64_t a1)
{
  sub_100182950(a1);

  operator delete();
}

int *sub_100182C6C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 321;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 321;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100182E50(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100036C5C(result, a2);
  }

  return result;
}

void sub_100182EB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100182ED0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183168(v1);

  return std::ios::~ios();
}

uint64_t sub_100182F1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183168(v1);

  return std::ios::~ios();
}

void sub_100182F7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183168(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100182FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100183020(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018308C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183168(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001830F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183168(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100183168(uint64_t a1)
{
  *a1 = off_10022EB20;
  sub_1001832D4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001832D4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100183484((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100183420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018344C(uint64_t a1)
{
  sub_100183168(a1);

  operator delete();
}

int *sub_100183484(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 371;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 371;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100183668(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183900(v1);

  return std::ios::~ios();
}

uint64_t sub_1001836B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183900(v1);

  return std::ios::~ios();
}

void sub_100183714(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183900(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001837B8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100183824(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183900(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100183888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183900(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100183900(uint64_t a1)
{
  *a1 = off_10022ED40;
  sub_100183A6C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100183A6C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100183C1C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100183BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100183BE4(uint64_t a1)
{
  sub_100183900(a1);

  operator delete();
}

int *sub_100183C1C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 421;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 421;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100183E00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184098(v1);

  return std::ios::~ios();
}

uint64_t sub_100183E4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184098(v1);

  return std::ios::~ios();
}

void sub_100183EAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184098(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100183F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100183F50(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100183FBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184098(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100184020(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184098(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184098(uint64_t a1)
{
  *a1 = off_10022EF60;
  sub_100184204(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100184204(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1001843B4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100184350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018437C(uint64_t a1)
{
  sub_100184098(a1);

  operator delete();
}

int *sub_1001843B4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 432;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 432;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100184598(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184830(v1);

  return std::ios::~ios();
}

uint64_t sub_1001845E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184830(v1);

  return std::ios::~ios();
}

void sub_100184644(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184830(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001846AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001846E8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100184754(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184830(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001847B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184830(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184830(uint64_t a1)
{
  *a1 = off_10022F180;
  sub_10018499C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018499C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100184B4C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100184AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100184B14(uint64_t a1)
{
  sub_100184830(a1);

  operator delete();
}

int *sub_100184B4C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 439;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 439;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100184D30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184FC8(v1);

  return std::ios::~ios();
}

uint64_t sub_100184D7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184FC8(v1);

  return std::ios::~ios();
}

void sub_100184DDC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184FC8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100184E80(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100184EEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184FC8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100184F50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184FC8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184FC8(uint64_t a1)
{
  *a1 = off_10022F3A0;
  sub_100185134(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100185134(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1001852E4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100185280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001852AC(uint64_t a1)
{
  sub_100184FC8(a1);

  operator delete();
}

int *sub_1001852E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 468;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 468;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001854C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185760(v1);

  return std::ios::~ios();
}

uint64_t sub_100185514(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185760(v1);

  return std::ios::~ios();
}

void sub_100185574(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185760(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001855DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185618(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100185684(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185760(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001856E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185760(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185760(uint64_t a1)
{
  *a1 = off_10022F5C0;
  sub_1001858CC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001858CC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100185A7C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100185A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100185A44(uint64_t a1)
{
  sub_100185760(a1);

  operator delete();
}

int *sub_100185A7C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 474;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 474;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100185C60(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185EF8(v1);

  return std::ios::~ios();
}

uint64_t sub_100185CAC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185EF8(v1);

  return std::ios::~ios();
}

void sub_100185D0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185EF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185DB0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100185E1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185EF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185E80(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185EF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185EF8(uint64_t a1)
{
  *a1 = off_10022F7E0;
  sub_100186064(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100186064(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100186214((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001861B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001861DC(uint64_t a1)
{
  sub_100185EF8(a1);

  operator delete();
}

int *sub_100186214(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 522;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 522;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001863F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186690(v1);

  return std::ios::~ios();
}

uint64_t sub_100186444(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186690(v1);

  return std::ios::~ios();
}

void sub_1001864A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186690(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100186548(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001865B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186690(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100186618(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186690(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100186690(uint64_t a1)
{
  *a1 = off_10022FA00;
  sub_1001867FC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001867FC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1001869AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100186948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100186974(uint64_t a1)
{
  sub_100186690(a1);

  operator delete();
}

int *sub_1001869AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 557;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 557;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100186B90(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022E900;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100186C40(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186C58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022EB20;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100186D08(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186D20(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022ED40;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100186DD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186DE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022EF60;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100186E98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186EB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022F180;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100186F60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_100186F78(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100186FAC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022F3A0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10018705C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100187074(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022F5C0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100187124(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018713C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022F7E0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001871EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100187204(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022FA00;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001872B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001872CC(uint64_t a1, int *a2, int a3, _DWORD *a4)
{
  *a1 = 1919118949;
  v13 = 1919118949;
  sub_10009C144("sig1_t", 1919118949, &v13, 1);
  *(a1 + 4) = 1634952291;
  v13 = 1634952291;
  sub_10009C144("sig2_t", 1634952291, &v13, 1);
  *(a1 + 8) = 2;
  v13 = 2;
  sub_10009C144("version_t", 2, &v13, 1);
  *(a1 + 12) = 16;
  v13 = 16;
  sub_10009C144("iv_tweak_size_t", 16, &v13, 1);
  *(a1 + 16) = *a4;
  *(a1 + 20) = -2147483647;
  v13 = -2147483647;
  sub_10009C144("algorithm_type", -2147483647, &v13, 1);
  v8 = *a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = v8;
  *(a1 + 52) = a3;
  *(a1 + 56) = xmmword_1001D5AB0;
  *(a1 + 72) = 0;
  if (*a4 == 5)
  {
    v9 = 91;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 28) = v9;
  if (*a4 == 5)
  {
    v10 = 160;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 36) = sub_10019E294();
  *(a1 + 44) = v11;
  return a1;
}

void sub_10018742C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  v3 = (*(*a2 + 40))(a2);
  v4 = v3 - 12;
  if (v3 >= 0xC)
  {
    v5 = *(sub_10019E2E8() + 1);
    v11 = v19;
    v12 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 12;
    v14 = v4;
    v15 = 12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = (*(*a2 + 128))(a2, &v11);
    if (v12)
    {
      sub_10000367C(v12);
    }

    if ((v6 & 0x80000000) == 0 && v19[0] == 0x1000000 && *&v19[1] == 0x72636E6561736463)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v10 = sub_100001860(exception, "The image is encrypted with obsolete encoding version 1", 0x2Du);
    }
  }

  if ((*(*a2 + 40))(a2) > 0x4B)
  {
    operator new[]();
  }

  v7 = __cxa_allocate_exception(0x20uLL);
  v8 = (*(*a2 + 40))(a2);
  *v7 = &off_1002219A0;
  v7[1] = "crypto";
  v7[2] = 76;
  v7[3] = v8;
}

void sub_100187A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100187A48(void *a1, int a2, ...)
{
  va_start(va, a2);
  switch(a2)
  {
    case 3:
      v2 = __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x30uLL);
      sub_10009C1E4((exception + 1), v2);
      *exception = off_100213C40;
      exception[1] = off_100213C80;
    case 2:
      __cxa_begin_catch(a1);
      __cxa_rethrow();
    case 1:
      v4 = __cxa_begin_catch(a1);
      v5 = __cxa_allocate_exception(0x40uLL);
      sub_100002148(va);
      sub_1000026BC(va, "Unsupported value for crypto header field ", 42);
      v6 = *(v4 + 1);
      v7 = strlen(v6);
      sub_1000026BC(va, v6, v7);
      sub_100004290(v5, va, 0xA1u);
  }

  operator delete[]();
}

void sub_1001880F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  if (v10)
  {
    __cxa_free_exception(v9);
  }

  __cxa_end_catch();
  operator delete[]();
}

void sub_100188138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  operator delete[]();
}

void sub_100188178(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100188180);
  }

  sub_100002A4C(a1);
}

__n128 sub_100188194(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001881D0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = bswap32(*(a1 + 16));
  *(a2 + 20) = bswap32(*(a1 + 20));
  *(a2 + 24) = bswap32(*(a1 + 24));
  *(a2 + 28) = bswap32(*(a1 + 28));
  *(a2 + 32) = bswap32(*(a1 + 32));
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 52) = bswap32(*(a1 + 52));
  *(a2 + 56) = bswap64(*(a1 + 56));
  *(a2 + 64) = bswap64(*(a1 + 64));
  *(a2 + 72) = bswap32(*(a1 + 72));
  return a2 + 76;
}

const void **sub_100188274(uint64_t a1, char *a2)
{
  v3 = (*(*&a2[*(*a2 - 40)] + 16))(&a2[*(*a2 - 40)]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_100001860(exception, "Image contains crypto format but info class is missing EncryptionInfo", 0x16u);
  }

  v4 = v3;
  v5 = *(a1 + 24);
  if (v5 == 128)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = 3;
  if (*(a1 + 16) == 5)
  {
    v7 = v6;
  }

  *(v3 + 8) = v7;
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
  }

  *(v3 + 16) = v5;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *(a1 + 36));
  v8 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v8;
  if (*(v4 + 32))
  {
    CFRelease(*(v4 + 32));
    v8 = v12;
  }

  *(v4 + 32) = v8;
  v12 = 0;
  sub_100023024(&v12);
  return sub_100023A5C(&v13);
}

void sub_1001883AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100023024(&a9);
  sub_100023A5C(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001883D0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *v5;
  a1[4] = *(v5 + 16);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *a2;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *(v6 + 24);
  a1[7] = *(v6 + 40);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8[0] = a1;
  v8[1] = a1;
  sub_10018BEA0(v8, *a1, (a1 + 8));
  return a1;
}

void sub_100188498(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 48) = v8;
    operator delete(v8);
  }

  sub_1001A3EA4(v3, v1, v4);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001884D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  sub_1001885B8(*(v3 + 24), (a1 + 2));
  v5 = *a1;
  if (*(*a1 + 16) == 5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 8 * *(v5 + 12);
  }

  sub_1001885B8(v6, (a1 + 5));
  v8[0] = a1;
  v8[1] = a1;
  sub_10018BEA0(v8, *a1, (a1 + 8));
  return a1;
}

void sub_10018856C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    sub_10000367C(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001885B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 >= 8)
  {
    sub_10018BF68(a2, a1 >> 3);
    v4 = *a2;
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_10017E404(v4, v3 - v4);
}

void sub_10018860C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10018862C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10018C0A0(a2, a1[3] + a1[6] - (a1[2] + a1[5]) + 5);
  v4 = *result;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v6 - v5;
  if (v6 != v5)
  {
    result = memmove(*result, v5, v6 - v5);
  }

  v8 = &v4[v7];
  v9 = a1[5];
  v10 = a1[6];
  v11 = v10 - v9;
  if (v10 != v9)
  {
    result = memmove(v8, v9, v10 - v9);
  }

  strcpy(&v8[v11], "CKIE");
  return result;
}

void sub_100188784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  v12 = *(v10 - 24);
  if (v12)
  {
    sub_10000367C(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001887A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  v10 = 0;
  *&v11 = v4;
  *(&v11 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10017F9F8(&v9, &v7);
  if (v8)
  {
    *a2 = v9;
    *(a2 + 16) = v10;
    v9 = 0uLL;
    v10 = 0;
    *(a2 + 24) = v11;
    v5 = 1;
    v11 = 0uLL;
  }

  else
  {
    v5 = 0;
    *a2 = v7;
  }

  *(a2 + 40) = v5;
  return sub_100035E1C(&v9);
}

void sub_10018884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100035E1C(va);
  _Unwind_Resume(a1);
}

void sub_100188860(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  v15 = off_10022FA80;
  v16 = &v17;
  v7 = *a2;
  v6 = a2[1];
  *&v19 = a1;
  *(&v19 + 1) = v7;
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v9 = a3[1];
  v23 = a3;
  v24 = v8;
  v25[0] = 0;
  v26 = 0;
  if (v8 != v9)
  {
    do
    {
      sub_100188A38(&v15, *(v8 + 4), *(v8 + 12));
      sub_1000312E4(&v23, v21);
      if (v22[640] == 1)
      {
        sub_100035E5C(v22);
      }

      v8 = v24;
    }

    while (v23 != a3 || v24 != a3[1]);
    if (v26)
    {
      sub_100035E5C(v25);
    }
  }

  v12 = v16;
  v11 = v17;
  *a4 = off_10022FA80;
  *(a4 + 8) = v12;
  *(a4 + 16) = v11;
  v13 = a4 + 16;
  v14 = v18;
  *(a4 + 24) = v18;
  if (v14)
  {
    v11[2] = v13;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v11 = 0;
  }

  else
  {
    *(a4 + 8) = v13;
  }

  *(a4 + 32) = v19;
  *(a4 + 48) = v20;
  *(&v19 + 1) = 0;
  v20 = 0;
  *(a4 + 56) = 1;
  v15 = off_10022FA80;
  sub_1000085B4(&v16, v11);
}

void sub_100188A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x560]) == 1)
  {
    sub_100035E5C(v9 + 16);
  }

  sub_10018C114(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_100188A38(uint64_t **result, unint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3 + a2;
  v11 = 2;
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = sub_10000BB3C((result + 1), v10);
    if (v5)
    {
      v12 = v4;
      sub_10000BE50(v3 + 1, &v12);
      return sub_10000BF50(v3 + 1, &v12);
    }

    else
    {
      v6 = sub_10000C534((v3 + 1), v10);
      v7 = *v6;
      if (*v6)
      {
        do
        {
          v8 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (v9);
      }

      return sub_10000BAF4(v3 + 1, v10, v8);
    }
  }

  return result;
}

double sub_100188AF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018862C(*(a1 + 32), &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100188B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = malloc_type_valloc(0x4CuLL, 0x8B7C732DuLL);
  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  v14 = off_10022FC30;
  *(&v16 + 1) = &v14;
  v21 = v4;
  sub_1000DF1F8(v22, &v14);
  sub_1000298F0(&v14);
  sub_1001881D0(**(a1 + 32), v21);
  v5 = v21;
  v6 = *(sub_10019E2E8() + 1);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = xmmword_1001D5AC0;
  v17 = 76;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v14);
  if (v7 == 76)
  {
    v8 = 1;
  }

  else
  {
    if (v7 <= 0)
    {
      v9 = -v7;
    }

    else
    {
      v9 = 5;
    }

    v10 = std::generic_category();
    v8 = 0;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  *(a2 + 16) = v8;
  if (v15)
  {
    sub_10000367C(v15);
  }

  sub_10002986C(&v21, 0);
  return sub_1000298F0(v22);
}

void sub_100188CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  sub_10002986C((v11 - 80), 0);
  sub_1000298F0(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100188D18@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = **(a1 + 32);
  if (*(v5 + 72) >= 0x14u)
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_100188F9C(v21, &v19);
    sub_1000026BC(v23, "Cannot edit crypto header that has more than ", 45);
    std::ostream::operator<<();
    sub_1000026BC(v23, " auth entries", 13);
    std::ostream::~ostream();
    sub_10018C4E0(v21);
LABEL_22:
    std::ios::~ios();
    result = make_error_code(161);
    *a4 = result;
    *(a4 + 8) = v18;
    *(a4 + 32) = 0;
    return result;
  }

  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  if (v8 == (a1 + 16) || v8[4] >= a2 + 476)
  {
    v10 = 476;
  }

  else
  {
    v10 = v8[5];
    v11 = v8[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v8[2];
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (!v13);
    }

    if (v12 != v9)
    {
      do
      {
        if (v12[4] - v10 >= a2)
        {
          break;
        }

        v14 = v12[1];
        v15 = v12;
        if (v14)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v13 = *v16 == v15;
            v15 = v16;
          }

          while (!v13);
        }

        v10 = v12[5];
        v12 = v16;
      }

      while (v16 != v9);
    }
  }

  if (v10 + a2 > *(v5 + 64))
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_100189108(v21, &v19);
    sub_1000026BC(v23, "No room to add new auth entry", 29);
    std::ostream::~ostream();
    sub_10018CC78(v21);
    goto LABEL_22;
  }

  *v21 = a3;
  *&v21[4] = v10;
  *&v21[12] = a2;
  v21[20] = 1;
  v22 = a1;
  (*(*a1 + 40))(a1);
  *a4 = *v21;
  *(a4 + 13) = *&v21[13];
  *(a4 + 24) = a1;
  v21[20] = 0;
  *(a4 + 32) = 1;
  return sub_100036B7C(v21);
}

void sub_100188F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100189230(va);
  _Unwind_Resume(a1);
}

void *sub_100188F9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194850(a1, a2);
  *a1 = off_10022FCB8;
  a1[45] = &off_10022FDB8;
  a1[46] = &off_10022FDE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022FCB8;
  a1[45] = off_10022FD40;
  a1[46] = off_10022FD68;
  return a1;
}

void sub_1001890A0(_Unwind_Exception *a1)
{
  sub_10018C4E0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001890C4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018C4E0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100189108(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194918(a1, a2);
  *a1 = off_10022FED8;
  a1[45] = &off_10022FFD8;
  a1[46] = &off_100230000;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022FED8;
  a1[45] = off_10022FF60;
  a1[46] = off_10022FF88;
  return a1;
}

void sub_10018920C(_Unwind_Exception *a1)
{
  sub_10018CC78(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100189230(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018CC78(a1);
  std::ios::~ios();
  return a1;
}

uint64_t **sub_100189274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3 + a2;
  v5 = 2;
  return sub_1001949E0((a1 + 8), v4);
}

void sub_1001892AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2[1] - *a2;
  sub_100188D18(a1, v7, a3, v23);
  if (v25 == 1)
  {
    v8 = *a2;
    v9 = *&v23[4];
    v10 = *(sub_10019E2E8() + 1);
    v15 = v8;
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v7;
    v18 = v9;
    v19 = v7;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v15);
    if (v7 == v11)
    {
      *a4 = *v23;
      *(a4 + 13) = *&v23[13];
      *(a4 + 24) = v24;
      v12 = v23[20];
      if (v23[20] == 1)
      {
        v23[20] = 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      if (v11 <= 0)
      {
        v13 = -v11;
      }

      else
      {
        v13 = 5;
      }

      v14 = std::generic_category();
      v12 = 0;
      *a4 = v13;
      *(a4 + 8) = v14;
    }

    *(a4 + 32) = v12;
    if (v16)
    {
      sub_10000367C(v16);
    }

    if (v25)
    {
      sub_100036B7C(v23);
    }
  }

  else
  {
    *a4 = *v23;
    *(a4 + 32) = 0;
  }
}

void sub_1001893F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000367C(a11);
  }

  if (*(v11 - 56) == 1)
  {
    sub_100036B7C(v11 - 88);
  }

  _Unwind_Resume(exception_object);
}

void sub_100189428(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036D48(__p, 616);
  sub_10017F068(a2, __p[0]);
  sub_1001892AC(a1, __p, 1, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10018949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001894B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036D48(__p, 564);
  sub_10017EA1C(a2, __p[0]);
  sub_1001892AC(a1, __p, 2, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10018952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100189548(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036D48(__p, 556);
  sub_10017F5C4(a2, __p[0]);
  sub_1001892AC(a1, __p, 4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001895BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001895D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = *a2;
    goto LABEL_18;
  }

  v8 = v6 - v5;
  v9 = malloc_type_valloc(v6 - v5, 0x8B7C732DuLL);
  if (!v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_alloc::bad_alloc(exception);
  }

  v22 = off_10022FC30;
  v25 = &v22;
  v30 = v9;
  sub_1000DF1F8(v31, &v22);
  sub_1000298F0(&v22);
  v10 = *a2;
  if (*a2 != a2[1])
  {
    v11 = 0;
    do
    {
      sub_10017F730(v10 + v11, v30 + v11);
      v11 += 20;
    }

    while (v10 + v11 != a2[1]);
  }

  v12 = v30;
  v13 = *(sub_10019E2E8() + 1);
  v22 = v12;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v8;
  v25 = 76;
  v26 = v8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v22);
  v15 = v14;
  if (v8 != v14)
  {
    if (v14 <= 0)
    {
      v16 = -v14;
    }

    else
    {
      v16 = 5;
    }

    v17 = std::generic_category();
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
  }

  if (v23)
  {
    sub_10000367C(v23);
  }

  sub_10002986C(&v30, 0);
  result = sub_1000298F0(v31);
  if (v8 == v15)
  {
    v5 = *a2;
    v19 = a2[1];
LABEL_18:
    *(**(a1 + 32) + 72) = -858993459 * ((v19 - v5) >> 2);
    return sub_100188B40(a1, a3);
  }

  return result;
}

void sub_1001897F8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a3)
  {
    sub_10000367C(a3);
  }

  sub_10002986C(va, 0);
  sub_1000298F0(v15 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100189838(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = **(a1 + 48);
  v11 = *(v10 + 52);
  if (*(a1 + 392))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = v12 + a4;
  v14 = *(a1 + 24);
  v15 = *(sub_10019E2E8() + 1);
  v20 = a2;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v11 * a3;
  v23 = v13;
  v24 = v11 * a3;
  v25 = 0;
  v26[0] = 0;
  v27 = 0;
  if (*(a5 + 56))
  {
    sub_10008A2D0(v26, a5);
    v27 = 1;
  }

  v16 = (*(*v14 + 128))(v14, &v20);
  if (v21)
  {
    sub_10000367C(v21);
  }

  if ((v16 & 0x80000000) != 0)
  {
    *&v18 = "crypto_format_backend::read_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
    *(&v18 + 1) = 35;
    v19 = 16;
    sub_100189A8C(&v20, &v18);
    sub_1000026BC(v29, "Crypto couldn't read from inner backend @ ", 42);
    std::ostream::operator<<();
    sub_1000026BC(v29, "/", 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10018D410(&v20);
    std::ios::~ios();
  }

  else
  {
    sub_100027480(&v20, a1 + 216);
    v28 = v11;
    v16 = sub_10014EC04(&v20, a2, a3, a4);
    sub_10002752C(&v20);
  }

  return v16;
}

void sub_100189A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100189BB4(va);
  _Unwind_Resume(a1);
}

void *sub_100189A8C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194B9C(a1, a2);
  *a1 = off_1002300F8;
  a1[45] = &off_1002301F8;
  a1[46] = &off_100230220;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002300F8;
  a1[45] = off_100230180;
  a1[46] = off_1002301A8;
  return a1;
}

void sub_100189B90(_Unwind_Exception *a1)
{
  sub_10018D410(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100189BB4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018D410(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100189BF8(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = sub_100189838(a1, v13, 1uLL, v8, v18);
    if (result)
    {
      return result;
    }

    v14 = v9;
    if (v6 >= (v7 - v9))
    {
      v15 = v7 - v9;
    }

    else
    {
      v15 = v6;
    }

    memcpy(v4, (*(a1 + 384) + v14), v15);
    v6 -= v15;
    v4 += v15;
    v8 += v7;
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    sub_10008A2D0(v18, (a2 + 6));
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v18[0] = 0;
  }

  v19 = v10;
  result = sub_100189838(a1, v4, v6 / v7, v8, v18);
  if (!result)
  {
    v12 = v6 % v7;
    if (!(v6 % v7))
    {
      return *(a2 + 4);
    }

    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v16 = v6 - v12;
    v17 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = sub_100189838(a1, v17, 1uLL, v16 + v8, v18);
    if (!result)
    {
      memcpy(&v4[v16], *(a1 + 384), v12);
      return *(a2 + 4);
    }
  }

  return result;
}

uint64_t sub_100189D84(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **(a1 + 48);
  if (*(a1 + 392))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 52);
  sub_100027480(&v21, a1 + 64);
  v29 = v12;
  v13 = sub_10014EC04(&v21, a2, a3, a4);
  sub_10002752C(&v21);
  if (!v13)
  {
    v14 = *(a1 + 24);
    v15 = v11 + a4;
    v16 = *(sub_10019E2E8() + 1);
    v17 = v12 * a3;
    v21 = a2;
    v22 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v17;
    v24 = v15;
    v25 = v17;
    v26 = 0;
    v27[0] = 0;
    v28 = 0;
    if (*(a5 + 56))
    {
      sub_10008A2D0(v27, a5);
      v28 = 1;
    }

    v13 = (*(*v14 + 120))(v14, &v21);
    if (v22)
    {
      sub_10000367C(v22);
    }

    if ((v13 & 0x80000000) != 0)
    {
      *&v19 = "crypto_format_backend::write_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v19 + 1) = 36;
      v20 = 16;
      sub_100189FD4(&v21, &v19);
      sub_1000026BC(v30, "Crypto couldn't write to inner backend @ ", 41);
      std::ostream::operator<<();
      sub_1000026BC(v30, "/", 1);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10018DBA8(&v21);
      std::ios::~ios();
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_100189F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018A0FC(va);
  _Unwind_Resume(a1);
}

void *sub_100189FD4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194C64(a1, a2);
  *a1 = off_100230318;
  a1[45] = &off_100230418;
  a1[46] = &off_100230440;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230318;
  a1[45] = off_1002303A0;
  a1[46] = off_1002303C8;
  return a1;
}

void sub_10018A0D8(_Unwind_Exception *a1)
{
  sub_10018DBA8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018A0FC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018DBA8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018A140(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100189838(a1, v13, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v14 = v6 >= (v7 - v9) ? v7 - v9 : v6;
    memcpy(*(a1 + 384), &v4[v9], v14);
    v15 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100189D84(a1, v15, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v6 -= v14;
    v4 += v14;
    v8 += v14;
  }

  if (a2[5])
  {
    if (v6 >= v7)
    {
      v16 = 0;
      while (1)
      {
        memcpy(*(a1 + 384), &v4[v16], v7);
        v17 = *(a1 + 384);
        if ((a2[13] & 1) != 0 && *(a2 + 12))
        {
          sub_10008A29C((a2 + 6), a2[3], v16, v21);
          sub_10008A2D0(v22, v21);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v22[0] = 0;
        }

        v23 = v18;
        result = sub_100189D84(a1, v17, 1uLL, v8 + v16, v22);
        if (result)
        {
          return result;
        }

        v6 -= v7;
        v16 += v7;
        if (v6 < v7)
        {
          v4 += v16;
          v8 += v16;
          break;
        }
      }
    }
  }

  else
  {
    v10 = v6 / v7;
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      sub_10008A2D0(v22, (a2 + 6));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v22[0] = 0;
    }

    v23 = v11;
    result = sub_100189D84(a1, v4, v6 / v7, v8, v22);
    if (result)
    {
      return result;
    }

    v4 += v10 * v7;
    v8 += v10 * v7;
    v6 %= v7;
  }

  if (!v6)
  {
    return *(a2 + 4);
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    return 4294967194;
  }

  v19 = *(a1 + 384);
  v22[0] = 0;
  v23 = 0;
  result = sub_100189838(a1, v19, 1uLL, v8, v22);
  if (!result)
  {
    memcpy(*(a1 + 384), v4, v6);
    v20 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100189D84(a1, v20, 1uLL, v8, v22);
    if (!result)
    {
      return *(a2 + 4);
    }
  }

  return result;
}

void sub_10018A3B8(uint64_t a1)
{
  v1 = *(a1 + 408);
  v2 = *(a1 + 416);
  if (v2 == v1)
  {
    return;
  }

  v4 = *(a1 + 432);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(a1 + 440) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(a1 + 440) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(**(a1 + 48) + 52);
  v8 = *v5 + 128 * (*(a1 + 432) & 0x1FLL);
  v9 = &v1[v4 >> 5];
  if (v2 != v1)
  {
    v10 = *(v1 + (((v4 + *(a1 + 440)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(a1 + 440)) & 0x1F);
    if (v6 == v10)
    {
      v36 = &v1[v4 >> 5];
      v37 = *v36 + 128 * (*(a1 + 432) & 0x1FLL);
      if (v37 != v8)
      {
        do
        {
          v38 = *(v37 + 112);
          if (v38)
          {
            *(v38 + 16) = 0;
          }

          v39 = *(v37 + 8);
          if (v39)
          {
            sub_10000367C(v39);
          }

          v37 += 128;
          if (v37 - *v36 == 4096)
          {
            v40 = v36[1];
            ++v36;
            v37 = v40;
          }
        }

        while (v37 != v8);
        v1 = *(a1 + 408);
        v2 = *(a1 + 416);
      }

      goto LABEL_63;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v10 = 0;
LABEL_8:
    v11 = &v1[v4 >> 5];
    if (v10 != v6)
    {
      *v5;
      v12 = ((v4 & 0x1F) << 7) >> 7;
      if (v12 < 0)
      {
        v14 = 30 - v12;
        v13 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v13 = v12 + 1;
        v11 = &v5[(v12 + 1) >> 5];
      }

      v15 = *v11;
      v6 = *v11 + 128 * (v13 & 0x1F);
      if (v6 == v10)
      {
LABEL_19:
        v6 = v10;
      }

      else
      {
        v16 = *(v8 + 24);
        v17 = *v5 + 128 * (v4 & 0x1F);
        while (1)
        {
          v16 += *(v17 + 16);
          if (v16 != *(v6 + 24) || *(v17 + 120) != *(v6 + 120))
          {
            break;
          }

          v18 = v6 + 128;
          if (v6 + 128 - v15 == 4096)
          {
            v19 = v11[1];
            ++v11;
            v15 = v19;
            v18 = v19;
          }

          v17 = v6;
          v6 = v18;
          if (v18 == v10)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v20 = (v8 + 120);
    v21 = 64;
    if (!*(v8 + 120))
    {
      v21 = 216;
    }

    sub_100027480(v59, a1 + v21);
    v60 = v7;
    v44 = *(a1 + 24);
    v51 = v9;
    v52 = v8;
    v49 = v11;
    v50 = v6;
    if (*(a1 + 392))
    {
      v45 = 0;
    }

    else
    {
      v45 = *(**(a1 + 48) + 64);
    }

    v22 = *v20;
    v23 = vm_page_size;
    sub_1001501BC(*v20, v61);
    if (v8 == v6)
    {
      v24 = 0;
      goto LABEL_50;
    }

    sub_100026638(v46, v8);
    v24 = 0;
    v25 = v48 / v23 * v23;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      sub_100026638(&v63, v26);
      if (!v62)
      {
        sub_10002870C();
      }

      if ((*(*v62 + 48))(v62, &v63))
      {
        v28 = v65 + v66 - v25;
        if (v28 % v23)
        {
          v29 = v23 - v28 % v23;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + v28;
        v24 += v30;
        v25 += v30;
      }

      else
      {
        v31 = v23;
        if (v66 % v7)
        {
          goto LABEL_36;
        }

        if (v65 % v7)
        {
          v31 = 0;
LABEL_36:
          v32 = v31 + v24;
          if ((v65 + v66) % v7)
          {
            v33 = v23;
          }

          else
          {
            v33 = 0;
          }

          v24 = v32 + v33;
          v25 = (v7 - 1 + v65 + v66) / v7 * v7;
          goto LABEL_40;
        }

        v25 = v65 + v66;
      }

LABEL_40:
      if (v64)
      {
        sub_10000367C(v64);
      }

      v26 += 128;
      if (v26 - *v27 == 4096)
      {
        v34 = v27[1];
        ++v27;
        v26 = v34;
      }

      if (v26 == v6)
      {
        if (v47)
        {
          sub_10000367C(v47);
        }

LABEL_50:
        sub_10014FD78(&v53, v24);
        sub_1000287DC(v61);
        v54 = v59;
        v55 = v44;
        v56 = v22;
        v57 = v45;
        if (v52 == v50)
        {
          v35 = 0;
        }

        else
        {
          v35 = 4 * (v49 - v51) - ((v52 - *v51) >> 7) + ((v50 - *v49) >> 7);
        }

        v58 = v35;
        is_mul_ok(3 * v35, 0x18uLL);
        operator new[]();
      }
    }
  }

LABEL_63:
  *(a1 + 440) = 0;
  v41 = v2 - v1;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v1);
      v42 = *(a1 + 416);
      v1 = (*(a1 + 408) + 8);
      *(a1 + 408) = v1;
      v41 = (v42 - v1) >> 3;
    }

    while (v41 > 2);
  }

  if (v41 == 1)
  {
    v43 = 16;
  }

  else
  {
    if (v41 != 2)
    {
      return;
    }

    v43 = 32;
  }

  *(a1 + 432) = v43;
}

void sub_10018AF60(_Unwind_Exception *a1)
{
  sub_10018B44C(&STACK[0x278]);
  sub_10002752C(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void sub_10018B128(uint64_t a1)
{
  v2 = sub_10014F738(a1);
  if (v2 < 0)
  {

    sub_100194FC8(a1 + 224, v2);
  }
}

void *sub_10018B174(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100195114(a1, a2);
  *a1 = off_100230538;
  a1[45] = &off_100230638;
  a1[46] = &off_100230660;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230538;
  a1[45] = off_1002305C0;
  a1[46] = off_1002305E8;
  return a1;
}

void sub_10018B278(_Unwind_Exception *a1)
{
  sub_10018E340(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018B29C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018E340(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018B2E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001951DC(a1, a2);
  *a1 = off_100230758;
  a1[45] = &off_100230858;
  a1[46] = &off_100230880;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230758;
  a1[45] = off_1002307E0;
  a1[46] = off_100230808;
  return a1;
}

void sub_10018B3E4(_Unwind_Exception *a1)
{
  sub_10018EAD8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018B408(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018EAD8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018B44C(uint64_t a1)
{
  sub_10014F6E8(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_100194FC8(a1 + 224, *(a1 + 304));

  return sub_100027DE8(a1);
}

uint64_t sub_10018B4C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (*(a1 + 392))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**(a1 + 48) + 64);
  }

  return (*(*v3 + 24))(v3, v4 + a2);
}

uint64_t sub_10018B510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 392);
  v4 = **(a1 + 48);
  if ((v3 & 2) == 0)
  {
    *(v4 + 56) = a2;
  }

  v5 = *(a1 + 24);
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = (*(*v5 + 56))(v5, (a2 + *(v4 + 52) - 1) / *(v4 + 52) * *(v4 + 52) + v6);
  if (!v7)
  {
    sub_1001881D0(**(a1 + 48), v18);
    v8 = *(sub_10019E2E8() + 1);
    v11 = v18;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = xmmword_1001D5AC0;
    v14 = 76;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v9 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v11);
    if (v13 == v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v12)
    {
      sub_10000367C(v12);
    }
  }

  return v7;
}

void sub_10018B668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000367C(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018B694(void *a1, uint64_t a2, uint64_t *a3)
{
  (*(**a2 + 80))(&v8);
  sub_10003B384(a1, &v8);
  if (v9)
  {
    sub_10000367C(v9);
  }

  v5 = *a3;
  v6 = a3[1];
  a1[5] = off_10020E560;
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a3;
  }

  *a1 = off_10022FAD8;
  a1[5] = off_10022FBB0;
  sub_10018B83C(v5, 0);
  sub_10018B83C(*a3, 1);
  a1[46] = sub_10014E5EC((a1 + 8));
  a1[47] = sub_10014E5EC((a1 + 27));
  v7 = *(**a3 + 52);
  operator new[]();
}

void sub_10018B7F8(_Unwind_Exception *a1)
{
  sub_10002752C((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018B83C(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = a2;
  v2 = *(a1 + 80);
  if (v2 == -1)
  {
    sub_100036CC4();
  }

  v8 = &v4;
  return (off_100230960[v2])(&v8, a1 + 64);
}

void sub_10018B8A0(void *a1, uint64_t a2, void *a3)
{
  sub_10003B384(a1, a3);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  a1[5] = off_10020E560;
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[6];
  }

  *a1 = off_10022FAD8;
  a1[5] = off_10022FBB0;
  sub_10018B83C(v5, 0);
  sub_10018B83C(a1[6], 1);
  a1[46] = sub_10014E5EC((a1 + 8));
  a1[47] = sub_10014E5EC((a1 + 27));
  v7 = *(**(a2 + 48) + 52);
  operator new[]();
}

void sub_10018B9BC(_Unwind_Exception *a1)
{
  sub_10002752C((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018BA44(uint64_t a1)
{
  if ((*(a1 + 392) & 2) != 0 || (result = *(**(a1 + 48) + 56)) == 0)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    if (*(a1 + 392))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(**(a1 + 48) + 64);
    }

    if (v3 <= v4)
    {
      return 0;
    }

    else
    {
      v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
      if (*(a1 + 392))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(**(a1 + 48) + 64);
      }

      return v5 - v6;
    }
  }

  return result;
}

void sub_10018BB1C(void *a1)
{
  sub_10018F1AC(a1);

  operator delete();
}

void sub_10018BB68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100026638(&v7, a2);
  sub_100026638(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 0;
  sub_10018F3E8((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_10018BC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000367C(a24);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10018BCA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100026638(&v7, a2);
  sub_100026638(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 1;
  sub_10018F3E8((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_10018BD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000367C(a24);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10018BDEC(uint64_t a1)
{
  sub_10018F1AC((a1 - 40));

  operator delete();
}

void sub_10018BE28(uint64_t a1)
{
  *a1 = off_10022FA80;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_1000085B4(a1 + 8, *(a1 + 16));

  operator delete();
}

void *sub_10018BEA0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 5)
  {
    v4 = *(*result + 48) - *(*result + 40);
    v8[0] = *(*result + 40);
    v8[1] = v4;
    sub_10014E4B8(&v9, v8);
    sub_10014D728(a3);
  }

  v5 = result[1];
  v6 = *(v5 + 40);
  v7 = *(v5 + 48) - v6;
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = 1;
  return result;
}

void sub_10018BF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10018BF68(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_100036CAC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_10018C0A0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100036C5C(result, a2);
  }

  return result;
}

void sub_10018C0F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018C114(uint64_t a1)
{
  *a1 = off_10022FA80;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_1000085B4(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_10018C1FC(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022FC90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018C248(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018C4E0(v1);

  return std::ios::~ios();
}

uint64_t sub_10018C294(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018C4E0(v1);

  return std::ios::~ios();
}

void sub_10018C2F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018C4E0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018C35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018C398(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018C404(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018C4E0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018C468(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018C4E0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018C4E0(uint64_t a1)
{
  *a1 = off_10022FE50;
  sub_10018C64C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018C64C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10018C7FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10018C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018C7C4(uint64_t a1)
{
  sub_10018C4E0(a1);

  operator delete();
}

int *sub_10018C7FC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 429;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 429;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018C9E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018CC78(v1);

  return std::ios::~ios();
}

uint64_t sub_10018CA2C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018CC78(v1);

  return std::ios::~ios();
}

void sub_10018CA8C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018CC78(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018CAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018CB30(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018CB9C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018CC78(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018CC00(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018CC78(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018CC78(uint64_t a1)
{
  *a1 = off_100230070;
  sub_10018CDE4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018CDE4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10018CF94((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10018CF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018CF5C(uint64_t a1)
{
  sub_10018CC78(a1);

  operator delete();
}

int *sub_10018CF94(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 437;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 437;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018D178(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018D410(v1);

  return std::ios::~ios();
}

uint64_t sub_10018D1C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018D410(v1);

  return std::ios::~ios();
}

void sub_10018D224(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018D410(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018D28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018D2C8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018D334(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018D410(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018D398(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018D410(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018D410(uint64_t a1)
{
  *a1 = off_100230290;
  sub_10018D57C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018D57C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10018D72C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10018D6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018D6F4(uint64_t a1)
{
  sub_10018D410(a1);

  operator delete();
}

int *sub_10018D72C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 525;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 525;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018D910(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018DBA8(v1);

  return std::ios::~ios();
}

uint64_t sub_10018D95C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018DBA8(v1);

  return std::ios::~ios();
}

void sub_10018D9BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018DBA8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018DA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018DA60(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018DACC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018DBA8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018DB30(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018DBA8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018DBA8(uint64_t a1)
{
  *a1 = off_1002304B0;
  sub_10018DD14(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018DD14(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10018DEC4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10018DE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018DE8C(uint64_t a1)
{
  sub_10018DBA8(a1);

  operator delete();
}

int *sub_10018DEC4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 602;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 602;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018E0A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018E340(v1);

  return std::ios::~ios();
}

uint64_t sub_10018E0F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018E340(v1);

  return std::ios::~ios();
}

void sub_10018E154(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018E340(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018E1F8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018E264(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018E340(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018E2C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018E340(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018E340(uint64_t a1)
{
  *a1 = off_1002306D0;
  sub_10018E4AC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018E4AC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10018E65C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10018E5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018E624(uint64_t a1)
{
  sub_10018E340(a1);

  operator delete();
}

int *sub_10018E65C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 758;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 758;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018E840(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018EAD8(v1);

  return std::ios::~ios();
}

uint64_t sub_10018E88C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018EAD8(v1);

  return std::ios::~ios();
}

void sub_10018E8EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018EAD8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018E990(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018E9FC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018EAD8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018EA60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018EAD8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018EAD8(uint64_t a1)
{
  *a1 = off_1002308F0;
  sub_10018EC44(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10018EC44(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10018EDF4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10018ED90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018EDBC(uint64_t a1)
{
  sub_10018EAD8(a1);

  operator delete();
}

int *sub_10018EDF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 776;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 776;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10018EFE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = v5[3] - v5[2];
  v8[0] = v5[2];
  v8[1] = v7;
  sub_10014DCB8(&v9, v6, v8, a2, *(*v5 + 52));
  sub_10014DDF4(a3);
  *(a3 + 144) = 1;
  v9 = off_100228258;
  sub_100027454(v12);
  v9 = off_100204580;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_10018F0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000273E0(va);
  _Unwind_Resume(a1);
}

void sub_10018F0B8(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = *(*a1 + 24) - *(*a1 + 16);
  v9[0] = *(*a1 + 16);
  v9[1] = v7;
  sub_10014D72C(&v10, v6, v9, a2, *(*v5 + 52));
  sub_10014D880(a3);
  *(a3 + 144) = 0;
  v10 = off_100228230;
  sub_1000273B4(v14);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    operator delete[]();
  }

  v10 = off_100204580;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_10018F198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100027320(va);
  _Unwind_Resume(a1);
}

void *sub_10018F1AC(void *a1)
{
  *a1 = off_10022FAD8;
  a1[5] = off_10022FBB0;
  if (a1[48])
  {
    operator delete[]();
  }

  sub_10018F29C(a1 + 50);
  sub_10002752C((a1 + 27));
  sub_10002752C((a1 + 8));
  a1[5] = off_10020E560;
  v2 = a1[7];
  if (v2)
  {
    sub_10000367C(v2);
  }

  *a1 = off_1002064C0;
  v3 = a1[4];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_10018F29C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 5];
    v7 = *v6 + 128 * (v5 & 0x1F);
    v8 = *(v2 + (((a1[5] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v5) & 0x1F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 14);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 1);
        if (v10)
        {
          sub_10000367C(v10);
        }

        v7 += 128;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_100029E48(a1);
}

uint64_t sub_10018F3E8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 4 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10018F4D4(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  }

  v9 = sub_100026898(v8, a2);
  *(v9 + 112) = *(a2 + 112);
  v9 += 112;
  *(a2 + 112) = 0;
  *(*v9 + 16) = v9;
  *(v9 + 8) = *(a2 + 120);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 >> 5));
  v15 = *v14 + ((v12 & 0x1F) << 7);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  return v15 - 128;
}

void *sub_10018F4D4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_100046D30(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10006BA24(a1, &v10);
}

void sub_10018F65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10018F6A8(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100230A20;
  a1[2] = off_100230A88;
  a1[1] = off_100230A48;
  return a1;
}

std::exception *sub_10018F72C(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10018F7A8(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018F844(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018F8C8(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018F968(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018FA00(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void *sub_10018FAB0(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100230B60;
  a1[2] = off_100230BC8;
  a1[1] = off_100230B88;
  return a1;
}

std::exception *sub_10018FB34(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10018FBB0(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018FC4C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018FCD0(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018FD70(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018FE08(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void *sub_10018FF2C(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100230C00;
  sub_100190024(a1 + 3, a2, a3);
  return a1;
}

void sub_10018FFA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100230C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100190024(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_100230C50;
    a1[1] = v5;
    a1[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = off_100230C50;
    a1[1] = v5;
    a1[2] = 0;
  }

  v6 = a3[1];
  a1[3] = *a3;
  a1[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1;
}

void sub_100190488(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[]();
}

void sub_10019051C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v4 = **a2;
  switch(v4)
  {
    case 4:
      sub_1001914B8(a1, a2, a3);
      break;
    case 2:
      sub_10019141C(a1, a2, a3);
      break;
    case 1:
      sub_100191380(a1, a2, a3);
      break;
    default:
      sub_100191554(a4, a1, a2, a3);
      break;
  }
}

uint64_t sub_100190554(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = v2[6];
  if (v2[4] == 5)
  {
    v4 = v2[8];
  }

  else
  {
    v4 = 8 * v2[3];
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void sub_100190584(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = v5[6];
  if (v5[4] == 5)
  {
    v7 = v5[8];
  }

  else
  {
    v7 = 8 * v5[3];
  }

  v8 = (v6 + v7) >> 3;
  if (a2[1] == v8 + 5)
  {
    v9 = *a2 + v8 + 5;
    *(&v15.__r_.__value_.__s + 23) = 4;
    LODWORD(v15.__r_.__value_.__l.__data_) = *(v9 - 5);
    v15.__r_.__value_.__s.__data_[4] = 0;
    if (!std::string::compare(&v15, "CKIE"))
    {
      v11 = *a2;
      v10 = 1;
    }

    else
    {
      *&v13 = "std::expected<std::span<std::byte>, diskimage_err> crypto::crypto_format_auth_table_reader::verify_decrypted_blob(const std::span<std::byte> &)";
      *(&v13 + 1) = 113;
      v14 = 16;
      sub_10007F7BC(v16, &v13);
      sub_1000026BC(v17, "crypto_format: cookie differs", 29);
      std::ostream::~ostream();
      sub_100085ED4(v16);
      std::ios::~ios();
      v8 = std::generic_category();
      v10 = 0;
      v11 = 35;
    }

    *a3 = v11;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15.__r_.__value_.__r.__words[0] = "std::expected<std::span<std::byte>, diskimage_err> crypto::crypto_format_auth_table_reader::verify_decrypted_blob(const std::span<std::byte> &)";
    v15.__r_.__value_.__l.__size_ = 113;
    LODWORD(v15.__r_.__value_.__r.__words[2]) = 16;
    sub_100193E84(v16, &v15);
    sub_1000026BC(v17, "crypto_format: blob length differs", 34);
    std::ostream::~ostream();
    sub_1001940B8(v16);
    std::ios::~ios();
    v12 = std::generic_category();
    *a3 = 35;
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
  }
}

void sub_100190728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10007F8E4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100190764(void *a1)
{
  *a1 = off_100230C50;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

void sub_1001907BC(void *a1)
{
  *a1 = off_100230C50;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000367C(v3);
  }

  operator delete();
}

void *sub_100190834(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      v2 = result[1] - *result;
      sub_100182664(result, a2);
    }

    sub_100036CAC();
  }

  return result;
}

void *sub_1001908F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100190A5C(a1, a2);
  *a1 = off_100230CC8;
  a1[45] = &off_100230DC8;
  a1[46] = &off_100230DF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230CC8;
  a1[45] = off_100230D50;
  a1[46] = off_100230D78;
  return a1;
}

void sub_1001909F4(_Unwind_Exception *a1)
{
  sub_100190B24(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100190A18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190B24(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100190A5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100230E60;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100190B0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100190B24(uint64_t a1)
{
  *a1 = off_100230E60;
  sub_100190F64(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100190C90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190B24(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100190D34(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100190DA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190B24(v1);

  return std::ios::~ios();
}

void sub_100190DEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190B24(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190E50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190B24(v1);

  return std::ios::~ios();
}

void sub_100190EB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190B24(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100190F2C(uint64_t a1)
{
  sub_100190B24(a1);

  operator delete();
}

uint64_t sub_100190F64(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_1001910D8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001910B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1001910D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 258;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 258;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001912BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100191338(result, a4);
  }

  return result;
}

void sub_10019131C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100191338(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_100182664(a1, a2);
  }

  sub_100036CAC();
}

uint64_t sub_100191380@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4[0] = off_100231320;
  v4[1] = a1;
  v4[3] = v4;
  sub_100191780(a2, 616, a3);
  return sub_10019310C(v4);
}

void sub_100191408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10019310C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10019141C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4[0] = off_1002313B0;
  v4[1] = a1;
  v4[3] = v4;
  sub_100191780(a2, 564, a3);
  return sub_10019310C(v4);
}

void sub_1001914A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10019310C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001914B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4[0] = off_100231430;
  v4[1] = a1;
  v4[3] = v4;
  sub_100191780(a2, 556, a3);
  return sub_10019310C(v4);
}

void sub_100191540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10019310C(va);
  _Unwind_Resume(a1);
}

void sub_100191554(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  sub_100036D48(&v30, *(*a3 + 3));
  v8 = *(a1 + 24);
  v9 = v30;
  v10 = *(*a3 + 3);
  v11 = *(*a3 + 1);
  v12 = *(sub_10019E2E8() + 1);
  v21 = v9;
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v10;
  v24 = v11;
  v25 = v10;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v13 = (*(*v8 + 128))(v8, &v21);
  if (v22)
  {
    sub_10000367C(v22);
  }

  if (*(*a3 + 3) == v13)
  {
    v14 = **a3;
    v16 = v30;
    v15 = v31;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    *a4 = a2;
    *(a4 + 8) = 15;
    *(a4 + 12) = v14;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = 0;
    sub_100036BE0(a4 + 16, v16, v15, v15 - v16);
    *(a4 + 632) = 3;
    *(a4 + 640) = 1;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *&v19 = "diskimage_err> crypto::crypto_format_auth_table_reader::read_unknown_entry(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &)";
    *(&v19 + 1) = 74;
    v20 = 16;
    sub_1001934B8(&v21, &v19);
    sub_1000026BC(v29, "Can't read custom encryption entry header, error ", 49);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001936EC(&v21);
    std::ios::~ios();
    if (v13 <= 0)
    {
      v17 = -v13;
    }

    else
    {
      v17 = 5;
    }

    v18 = std::generic_category();
    *a4 = v17;
    *(a4 + 8) = v18;
    *(a4 + 640) = 0;
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_100191728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = *(v14 - 88);
  if (v16)
  {
    *(v14 - 80) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191780@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*(*a1 + 12) == a2)
  {
    operator new[]();
  }

  *&v6 = "diskimage_err> crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &, size_t, const std::function<auth_table::entry_variant (const char *)>)";
  *(&v6 + 1) = 219;
  v7 = 16;
  sub_100191B6C(&v8, &v6);
  sub_1000026BC(v9, "encryption: header size mismatch", 32);
  std::ostream::~ostream();
  sub_100191F60(&v8);
  std::ios::~ios();
  result = make_error_code(161);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 640) = 0;
  return result;
}

void *sub_100191B6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100191E98(a1, a2);
  *a1 = off_100230EE8;
  a1[45] = &off_100230FE8;
  a1[46] = &off_100231010;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230EE8;
  a1[45] = off_100230F70;
  a1[46] = off_100230F98;
  return a1;
}

void sub_100191C70(_Unwind_Exception *a1)
{
  sub_100191F60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100191C94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100191F60(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100191CD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001926F8(a1, a2);
  *a1 = off_100231108;
  a1[45] = &off_100231208;
  a1[46] = &off_100231230;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100231108;
  a1[45] = off_100231190;
  a1[46] = off_1002311B8;
  return a1;
}

void sub_100191DDC(_Unwind_Exception *a1)
{
  sub_1001927C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100191E00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001927C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100191E44(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100191E98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100231080;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100191F48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100191F60(uint64_t a1)
{
  *a1 = off_100231080;
  sub_1001923A0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1001920CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100191F60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100192134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100192170(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1001921DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100191F60(v1);

  return std::ios::~ios();
}

void sub_100192228(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100191F60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019228C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100191F60(v1);

  return std::ios::~ios();
}

void sub_1001922EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100191F60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100192368(uint64_t a1)
{
  sub_100191F60(a1);

  operator delete();
}

uint64_t sub_1001923A0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100192514((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001924EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100192514(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 270;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 270;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001926F8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002312A0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001927A8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001927C0(uint64_t a1)
{
  *a1 = off_1002312A0;
  sub_100192C00(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10019292C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001927C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100192994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001929D0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100192A3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001927C0(v1);

  return std::ios::~ios();
}

void sub_100192A88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001927C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100192AEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001927C0(v1);

  return std::ios::~ios();
}

void sub_100192B4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001927C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100192BC8(uint64_t a1)
{
  sub_1001927C0(a1);

  operator delete();
}

uint64_t sub_100192C00(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100192D74((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100192D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100192D74(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 276;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 276;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100192FC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100231320;
  a2[1] = v2;
  return result;
}

void *sub_100192FF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10017F064(v10, *a2);
  v5 = v11;
  v6 = v15;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  v7 = v10[1];
  *(a3 + 12) = v10[0];
  *(a3 + 28) = v7;
  *(a3 + 44) = v10[2];
  *(a3 + 60) = v5;
  v8 = v13;
  *(a3 + 64) = v12;
  *(a3 + 80) = v8;
  *(a3 + 96) = v14;
  *(a3 + 112) = v6;
  result = memcpy((a3 + 116), v16, 0x200uLL);
  *(a3 + 632) = 0;
  return result;
}

uint64_t sub_1001930C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019310C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1001931FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002313B0;
  a2[1] = v2;
  return result;
}

void *sub_100193228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10017E8B8(&v8, *a2);
  v5 = v8;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  *(a3 + 12) = v5;
  v6 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = v11;
  result = memcpy((a3 + 64), v12, 0x200uLL);
  *(a3 + 632) = 1;
  return result;
}

uint64_t sub_1001932D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100193394(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100231430;
  a2[1] = v2;
  return result;
}

void *sub_1001933C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10017F5C0(&v8, *a2);
  v5 = v8;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  *(a3 + 12) = v5;
  v6 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = v11;
  result = memcpy((a3 + 56), v12, 0x200uLL);
  *(a3 + 632) = 2;
  return result;
}

uint64_t sub_10019346C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1001934B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100193624(a1, a2);
  *a1 = off_1002314B8;
  a1[45] = &off_1002315B8;
  a1[46] = &off_1002315E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002314B8;
  a1[45] = off_100231540;
  a1[46] = off_100231568;
  return a1;
}

void sub_1001935BC(_Unwind_Exception *a1)
{
  sub_1001936EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001935E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001936EC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100193624(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100231650;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001936D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001936EC(uint64_t a1)
{
  *a1 = off_100231650;
  sub_100193B2C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100193858(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001936EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001938C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001938FC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100193968(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001936EC(v1);

  return std::ios::~ios();
}

void sub_1001939B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001936EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100193A18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001936EC(v1);

  return std::ios::~ios();
}

void sub_100193A78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001936EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100193AF4(uint64_t a1)
{
  sub_1001936EC(a1);

  operator delete();
}

uint64_t sub_100193B2C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_100193CA0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100193C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100193CA0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 300;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 300;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100193E84(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100193FF0(a1, a2);
  *a1 = off_1002316D8;
  a1[45] = &off_1002317D8;
  a1[46] = &off_100231800;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002316D8;
  a1[45] = off_100231760;
  a1[46] = off_100231788;
  return a1;
}

void sub_100193F88(_Unwind_Exception *a1)
{
  sub_1001940B8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100193FAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001940B8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100193FF0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100231870;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001940A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001940B8(uint64_t a1)
{
  *a1 = off_100231870;
  sub_1001944F8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100194224(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001940B8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001942C8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100194334(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001940B8(v1);

  return std::ios::~ios();
}

void sub_100194380(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001940B8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001943E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001940B8(v1);

  return std::ios::~ios();
}

void sub_100194444(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001940B8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001944C0(uint64_t a1)
{
  sub_1001940B8(a1);

  operator delete();
}

uint64_t sub_1001944F8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100008510(a1 + 104, __p);
        sub_10019466C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100194644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10019466C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 348;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 348;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100194850(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10022FE50;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100194900(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100194918(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100230070;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001949C8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **sub_1001949E0(uint64_t **a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3)
    {
      if (v4 < v5)
      {
        return a1;
      }
    }

    else if (v5 >= v4)
    {
      return a1;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    return a1;
  }

  v7 = sub_10000C83C(a1, a2);
  v8 = sub_10000C534(a1, a2);
  if (v7 == v8)
  {
    return a1;
  }

  v9 = v8;
  v10 = *v8;
  if (*v8)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
  }

  else
  {
    v12 = v8;
    do
    {
      v11 = v12[2];
      v13 = *v11 == v12;
      v12 = v11;
    }

    while (v13);
  }

  v19 = *(v7 + 32);
  v20 = *(v7 + 48);
  sub_10000C6B4(&v19, a2, &v21);
  v19 = *(v11 + 32);
  v20 = *(v11 + 48);
  sub_10000C778(&v19, a2, &v17);
  v19 = v17;
  LOBYTE(v20) = v18;
  sub_10000C880(a1, v7, v9);
  v14 = v21;
  if (v23)
  {
    if (v23 == 3)
    {
      if (v22 < v21)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v21 >= v22)
    {
      goto LABEL_26;
    }

    v14 = v21 + 1;
  }

  if (v14 < v22)
  {
LABEL_25:
    sub_10000BB3C(a1, &v21);
  }

LABEL_26:
  v15 = v19;
  if (v20)
  {
    if (v20 == 3)
    {
      if (*(&v19 + 1) < v19)
      {
        return a1;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (v19 >= *(&v19 + 1))
    {
      return a1;
    }

    v15 = v19 + 1;
  }

  if (v15 < *(&v19 + 1))
  {
LABEL_33:
    sub_10000BB3C(a1, &v19);
  }

  return a1;
}

uint64_t sub_100194B9C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100230290;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100194C4C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100194C64(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002304B0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100194D14(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100194D2C(uint64_t result, void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  v7 = *a4;
  v8 = *a5;
  if (v5 != v6 && v7 != v8)
  {
    v10 = result;
    v11 = *a2;
    do
    {
      result = sub_10014FEB0(v10, v5, v7);
      if (result != v5[2])
      {
        result = sub_100150200(v10, v5, result, v7);
      }

      v5 += 16;
      if ((v5 - *v11) == 4096)
      {
        v12 = v11[1];
        ++v11;
        v5 = v12;
      }

      if (v5 == v6)
      {
        break;
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t sub_100194E60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_100194E6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100194F40(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_100194F7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100194FC8(uint64_t a1, int a2)
{
  *(a1 + 80) = a2;
  v2 = *(a1 + 64);
  while (v2 != *(a1 + 40))
  {
    v4 = (v2 + 112);
    if ((*(*(v2 + 112) + 4) & 1) == 0)
    {
      *&v7 = "crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/crypto/crypto_format.cpp:712:35), std::__deque_iterator<crypto_format_backend::promise_io_t, crypto_format_backend::promise_io_t *, crypto_format_backend::promise_io_t &, crypto_format_backend::promise_io_t **, long>>>::report_errors(int) [It = boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/crypto/crypto_format.cpp:712:35), std::__deque_iterator<crypto_format_backend::promise_io_t, crypto_format_backend::promise_io_t *, crypto_format_backend::promise_io_t &, crypto_format_backend::promise_io_t **, long>>]";
      *(&v7 + 1) = 431;
      v8 = 16;
      sub_10016EAA8(v9, &v7);
      sub_1000026BC(v10, "diskimageuio: report err ", 25);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10016ECDC(v9);
      std::ios::~ios();
      v5 = *v4;
      *v5 = *(a1 + 80);
      *(v5 + 4) = 1;
      sub_10002967C(v4);
      v2 = *(a1 + 64);
    }

    v2 += 128;
    *(a1 + 64) = v2;
    v6 = *(a1 + 56);
    if (v2 - *v6 == 4096)
    {
      *(a1 + 56) = v6 + 1;
      v2 = v6[1];
      *(a1 + 64) = v2;
    }
  }
}

void sub_100195100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10016EBD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100195114(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002306D0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_1001951C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001951DC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002308F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10019528C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100195330(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B9C0;
  sub_10018B8A0(a1 + 3, a2, a3);
}

void sub_10019538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  v4 = *a4;
  *a4 = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  v5 = *(a2 + 40);
  operator new();
}

void sub_1001954D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100195588(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + 16) + 7) >> 3;
  v3 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = v3 == v2 || v3 == v2 + 16;
  v5 = v4;
  if (v4)
  {
    v6 = v3 - v2;
    v7 = *(*(a1 + 8) + 8);
    v8 = *(sub_10019E2E8() + 1);
    *&v19 = v7;
    *(&v19 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = v2;
    v21 = v6;
    v22 = v2;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v9 = (*(**(a1 + 16) + 128))(*(a1 + 16), &v19);
    if (v2 != v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v17);
      sub_1000026BC(v17, "Failed reading ", 15);
      sub_100196C2C(v17, a1);
      sub_100004290(exception, v17, v9);
    }

    if (sub_1000E0464())
    {
      *&v15 = "sparse_bundles::mapped_blocks_t::load_file()";
      *(&v15 + 1) = 42;
      v16 = 2;
      sub_100195E9C(v17, &v15);
      sub_1000026BC(v18, "Found a valid file for ", 23);
      sub_100196C2C(v18, a1);
      std::ostream::~ostream();
      sub_100196F60(v17);
      std::ios::~ios();
    }

    *(a1 + 24) = 0;
    if (*(&v19 + 1))
    {
      sub_10000367C(*(&v19 + 1));
    }
  }

  else if (v3)
  {
    *&v19 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v19 + 1) = 42;
    LODWORD(v20) = 16;
    sub_100196008(v17, &v19);
    sub_1000026BC(v18, "invalid file size for ", 22);
    sub_100196C2C(v18, a1);
    sub_1000026BC(v18, ", current is ", 13);
    std::ostream::operator<<();
    sub_1000026BC(v18, " while expected is ", 19);
    std::ostream::operator<<();
    sub_1000026BC(v18, ", truncating", 12);
    std::ostream::~ostream();
    sub_1001976F8(v17);
    std::ios::~ios();
    v10 = (*(**(a1 + 16) + 56))(*(a1 + 16), 0);
    if (v10)
    {
      v11 = v10;
      v12 = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v17);
      sub_1000026BC(v17, "Failed truncating ", 18);
      sub_100196C2C(v17, a1);
      sub_100004290(v12, v17, v11);
    }
  }

  else if (sub_1000E0464())
  {
    *&v19 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v19 + 1) = 42;
    LODWORD(v20) = 2;
    sub_100196174(v17, &v19);
    sub_1000026BC(v18, "file of ", 8);
    sub_100196C2C(v18, a1);
    sub_1000026BC(v18, " was just created (truncated)", 29);
    std::ostream::~ostream();
    sub_100197E90(v17);
    std::ios::~ios();
  }

  return v5;
}

void sub_10019595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100195A08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 + a3 - 1;
  result = sub_1000E0464();
  if (result)
  {
    *&v10 = "sparse_bundles::mapped_blocks_t::map_range(uint64_t, uint64_t)";
    *(&v10 + 1) = 42;
    v11 = 2;
    sub_100196888(v12, &v10);
    sub_100196C2C(v13, a1);
    sub_1000026BC(v13, " - map_range: [", 15);
    v8 = v13[0];
    *(&v13[1] + *(v13[0] - 24)) |= 0x200u;
    *(&v13[1] + *(v8 - 24)) = *(&v13[1] + *(v8 - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_1000026BC(v13, "-", 1);
    std::ostream::operator<<();
    v9 = v13[0];
    *(&v13[1] + *(v13[0] - 24)) &= ~0x200u;
    *(&v13[1] + *(v9 - 24)) = *(&v13[1] + *(v9 - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v13, "]", 1);
    std::ostream::~ostream();
    sub_100199558(v12);
    result = std::ios::~ios();
  }

  if (a3)
  {
    result = sub_1000B1524(*(a1 + 8), a2 >> 12, v6 >> 12, 1);
    if (result)
    {
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_100195C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001969B0(va);
  _Unwind_Resume(a1);
}

void sub_100195C18(void *a1)
{
  (***a1)(*a1);
  sub_100044490(&__p);
  operator new();
}

void sub_100195CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100195DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_1001A3EE0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100195E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_1001A3EE0(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100195E9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199A58(a1, a2);
  *a1 = off_1002319F8;
  a1[45] = &off_100231AF8;
  a1[46] = &off_100231B20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002319F8;
  a1[45] = off_100231A80;
  a1[46] = off_100231AA8;
  return a1;
}

void sub_100195FA0(_Unwind_Exception *a1)
{
  sub_100196F60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100195FC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100196F60(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100196008(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199B20(a1, a2);
  *a1 = off_100231C18;
  a1[45] = &off_100231D18;
  a1[46] = &off_100231D40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100231C18;
  a1[45] = off_100231CA0;
  a1[46] = off_100231CC8;
  return a1;
}

void sub_10019610C(_Unwind_Exception *a1)
{
  sub_1001976F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100196130(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001976F8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100196174(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199BE8(a1, a2);
  *a1 = off_100231E38;
  a1[45] = &off_100231F38;
  a1[46] = &off_100231F60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100231E38;
  a1[45] = off_100231EC0;
  a1[46] = off_100231EE8;
  return a1;
}

void sub_100196278(_Unwind_Exception *a1)
{
  sub_100197E90(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019629C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100197E90(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001962EC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(*(a1 + 8) + 16) + 7;
    if ((*(**(a1 + 16) + 40))(*(a1 + 16)) == v2 >> 3 || (v3 = (*(**(a1 + 16) + 56))(*(a1 + 16), 0), !v3))
    {
      v4 = v2 >> 3;
      *(a1 + 24) = 0;
      v5 = *(a1 + 16);
      v6 = *(*(a1 + 8) + 8);
      v7 = *(sub_10019E2E8() + 1);
      v11 = v6;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v4;
      v14 = 0;
      v15 = v4;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v3 = (*(*v5 + 120))(v5, &v11);
      if (v12)
      {
        sub_10000367C(v12);
      }

      if (v4 == v3)
      {
        v3 = (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
        if (v3)
        {
          *(a1 + 24) = 1;
        }

        if (sub_1000E0464())
        {
          *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
          *(&v9 + 1) = 38;
          v10 = 2;
          sub_10019671C(&v11, &v9);
          sub_1000026BC(v19, "Flushed ", 8);
          sub_100196C2C(v19, a1);
          sub_1000026BC(v19, ", res=", 6);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_100198DC0(&v11);
          std::ios::~ios();
        }
      }

      else
      {
        *(a1 + 24) = 1;
      }
    }
  }

  else
  {
    if (sub_1000E0464())
    {
      *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
      *(&v9 + 1) = 38;
      v10 = 2;
      sub_1001965B0(&v11, &v9);
      sub_100196C2C(v19, a1);
      sub_1000026BC(v19, " is clean, skipping flush", 25);
      std::ostream::~ostream();
      sub_100198628(&v11);
      std::ios::~ios();
    }

    return 0;
  }

  return v3;
}

void sub_100196578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100196844(va);
  _Unwind_Resume(a1);
}

void *sub_1001965B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199CB0(a1, a2);
  *a1 = off_100232058;
  a1[45] = &off_100232158;
  a1[46] = &off_100232180;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232058;
  a1[45] = off_1002320E0;
  a1[46] = off_100232108;
  return a1;
}

void sub_1001966B4(_Unwind_Exception *a1)
{
  sub_100198628(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001966D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198628(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10019671C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199D78(a1, a2);
  *a1 = off_100232278;
  a1[45] = &off_100232378;
  a1[46] = &off_1002323A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232278;
  a1[45] = off_100232300;
  a1[46] = off_100232328;
  return a1;
}

void sub_100196820(_Unwind_Exception *a1)
{
  sub_100198DC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100196844(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198DC0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100196888(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199E40(a1, a2);
  *a1 = off_100232498;
  a1[45] = &off_100232598;
  a1[46] = &off_1002325C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232498;
  a1[45] = off_100232520;
  a1[46] = off_100232548;
  return a1;
}

void sub_10019698C(_Unwind_Exception *a1)
{
  sub_100199558(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001969B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100199558(a1);
  std::ios::~ios();
  return a1;
}

unint64_t sub_1001969F4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = sub_1000E0464();
  if (result)
  {
    *&v11 = "sparse_bundles::mapped_blocks_t::unmap_interval(uint64_t, uint64_t)";
    *(&v11 + 1) = 47;
    v12 = 2;
    sub_1000038C4(v13, &v11);
    sub_100196C2C(v14, a1);
    sub_1000026BC(v14, " - unmap_range: [", 17);
    v7 = v14[0];
    *(&v14[1] + *(v14[0] - 24)) |= 0x200u;
    *(&v14[1] + *(v7 - 24)) = *(&v14[1] + *(v7 - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_1000026BC(v14, "-", 1);
    std::ostream::operator<<();
    v8 = v14[0];
    *(&v14[1] + *(v14[0] - 24)) &= ~0x200u;
    *(&v14[1] + *(v8 - 24)) = *(&v14[1] + *(v8 - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v14, "]", 1);
    std::ostream::~ostream();
    sub_100003AF8(v13);
    result = std::ios::~ios();
  }

  if (a3 != a2)
  {
    v9 = a2 >> 12;
    v10 = a3 >> 12;
    if ((a2 & 0xFFF) != 0)
    {
      if (v9 == v10)
      {
        return result;
      }

      ++v9;
    }

    if ((~a3 & 0xFFF) != 0)
    {
      if (v9 == v10)
      {
        return result;
      }

      --v10;
    }

    result = sub_1000B1524(*(a1 + 8), v9, v10, 0);
    if (result)
    {
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_100196C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000039EC(va);
  _Unwind_Resume(a1);
}

void *sub_100196C2C(void *a1, uint64_t *a2)
{
  v4 = sub_1000026BC(a1, "mapped blocks of band ", 22);
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = *a2;
  v6 = std::ostream::operator<<();
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 2;
  return a1;
}

uint64_t sub_100196CC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100196F60(v1);

  return std::ios::~ios();
}

uint64_t sub_100196D14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100196F60(v1);

  return std::ios::~ios();
}

void sub_100196D74(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100196F60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100196DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100196E18(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100196E84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100196F60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100196EE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100196F60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100196F60(uint64_t a1)
{
  *a1 = off_100231B90;
  sub_1001970CC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001970CC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10019727C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100197218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100197244(uint64_t a1)
{
  sub_100196F60(a1);

  operator delete();
}

int *sub_10019727C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 89;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 89;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100197460(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001976F8(v1);

  return std::ios::~ios();
}

uint64_t sub_1001974AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001976F8(v1);

  return std::ios::~ios();
}

void sub_10019750C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001976F8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100197574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001975B0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10019761C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001976F8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100197680(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001976F8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001976F8(uint64_t a1)
{
  *a1 = off_100231DB0;
  sub_100197864(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100197864(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100197A14((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001979B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001979DC(uint64_t a1)
{
  sub_1001976F8(a1);

  operator delete();
}

int *sub_100197A14(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 93;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 93;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100197BF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100197E90(v1);

  return std::ios::~ios();
}

uint64_t sub_100197C44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100197E90(v1);

  return std::ios::~ios();
}

void sub_100197CA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100197E90(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100197D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100197D48(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100197DB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100197E90(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100197E18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100197E90(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100197E90(uint64_t a1)
{
  *a1 = off_100231FD0;
  sub_100197FFC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100197FFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1001981AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100198148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100198174(uint64_t a1)
{
  sub_100197E90(a1);

  operator delete();
}

int *sub_1001981AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 99;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 99;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100198390(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198628(v1);

  return std::ios::~ios();
}

uint64_t sub_1001983DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198628(v1);

  return std::ios::~ios();
}

void sub_10019843C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198628(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001984A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001984E0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10019854C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198628(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001985B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198628(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100198628(uint64_t a1)
{
  *a1 = off_1002321F0;
  sub_100198794(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100198794(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100198944((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001988E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019890C(uint64_t a1)
{
  sub_100198628(a1);

  operator delete();
}

int *sub_100198944(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 114;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 114;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100198B28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198DC0(v1);

  return std::ios::~ios();
}

uint64_t sub_100198B74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198DC0(v1);

  return std::ios::~ios();
}

void sub_100198BD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198DC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100198C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100198C78(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100198CE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198DC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100198D48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198DC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100198DC0(uint64_t a1)
{
  *a1 = off_100232410;
  sub_100198F2C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100198F2C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_1001990DC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100199078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001990A4(uint64_t a1)
{
  sub_100198DC0(a1);

  operator delete();
}

int *sub_1001990DC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 141;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 141;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001992C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100199558(v1);

  return std::ios::~ios();
}

uint64_t sub_10019930C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100199558(v1);

  return std::ios::~ios();
}

void sub_10019936C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100199558(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001993D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100199410(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10019947C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100199558(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001994E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100199558(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100199558(uint64_t a1)
{
  *a1 = off_100232630;
  sub_1001996C4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1001996C4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_100199874((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100199810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019983C(uint64_t a1)
{
  sub_100199558(a1);

  operator delete();
}

int *sub_100199874(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 150;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 150;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100199A58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100231B90;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100199B08(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199B20(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100231DB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100199BD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199BE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100231FD0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100199C98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199CB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002321F0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100199D60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199D78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100232410;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100199E28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199E40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100232630;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100199EF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

char *sub_100199F08(unint64_t a1)
{
  if ((atomic_load_explicit(&qword_100240C00, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_1001A3F14();
    a1 = v4;
  }

  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return &unk_100240378 + 64 * ((9 * ((v2 >> 47) ^ v2)) & 0xF);
}

char *sub_100199F94(unint64_t a1)
{
  if ((atomic_load_explicit(&qword_100240C08, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_1001A3F78();
    a1 = v4;
  }

  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return &unk_100240778 + 48 * ((9 * ((v2 >> 47) ^ v2)) & 0xF);
}

uint64_t sub_10019A024(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = off_1002326B0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_10019A054(uint64_t a1)
{
  *a1 = off_1002326B0;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (atomic_fetch_add_explicit(*(a1 + 8), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      sub_10019A218(v2);
    }
  }

  return a1;
}

void sub_10019A0C0(uint64_t a1)
{
  sub_10019A054(a1);

  operator delete();
}

atomic_ullong *sub_10019A0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  result = *(a1 + 8);
  if (v6 == 1)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      sub_10019A218(result);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);

    return sub_1000F2424(v8, a2, a3);
  }

  else
  {
    *(a3 + 16) = 0;
    *a3 = off_1002326D0;
    *(a3 + 8) = result;
    *(a3 + 24) = a2;
  }

  return result;
}

uint64_t sub_10019A1A0(uint64_t a1)
{
  *a1 = off_1002326D0;
  if (*(a1 + 16) == 1)
  {
    atomic_store(*(a1 + 24), *(a1 + 8));
    sub_10019A218(*(a1 + 8));
  }

  *(a1 + 16) = 0;

  return sub_10019A054(a1);
}

void sub_10019A218(unint64_t a1)
{
  v2 = sub_100199F08(a1);
  std::mutex::lock(v2);
  v3 = sub_100199F94(a1);
  std::condition_variable::notify_all(v3);

  std::mutex::unlock(v2);
}

void sub_10019A268(uint64_t a1)
{
  sub_10019A1A0(a1);

  operator delete();
}

std::mutex *sub_10019A2A0()
{
  result = &unk_100240738;
  v1 = -1024;
  do
  {
    std::mutex::~mutex(result);
    result = (v2 - 64);
    v1 += 64;
  }

  while (v1);
  return result;
}

std::condition_variable *sub_10019A2D8()
{
  result = &unk_100240A48;
  v1 = -768;
  do
  {
    std::condition_variable::~condition_variable(result);
    result = (v2 - 48);
    v1 += 48;
  }

  while (v1);
  return result;
}

void *sub_10019A310(void *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = "full_fsync";
    v3 = 10;
  }

  else if (a2 == 1)
  {
    v2 = "fsync";
    v3 = 5;
  }

  else if (a2)
  {
    sub_1000026BC(a1, "bad flush type (", 16);
    a1 = std::ostream::operator<<();
    v2 = ")";
    v3 = 1;
  }

  else
  {
    v2 = "barrier";
    v3 = 7;
  }

  return sub_1000026BC(a1, v2, v3);
}

void *sub_10019A3A8(void *a1, uint64_t *a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 & 0xFFFFFFB5 | 8;
  v24 = 48;
  v6 = sub_100023058(a1, &v24);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 2;
  *(v6 + *(v7 - 24) + 8) |= 0x200u;
  sub_1000026BC(v6, "sg: buffer = ", 13);
  v8 = *a2;
  v9 = std::ostream::operator<<();
  sub_1000026BC(v9, " [", 2);
  v10 = std::ostream::operator<<();
  v11 = sub_1000026BC(v10, "] ", 2);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v11 + *(v12 - 24) + 24) = 0;
  *(v11 + *(v12 - 24) + 8) &= ~0x200u;
  sub_1000026BC(v11, " size = ", 8);
  v13 = a2[2];
  v14 = std::ostream::operator<<();
  sub_1000026BC(v14, " buffer_size = ", 15);
  v15 = a2[4];
  v16 = std::ostream::operator<<();
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  v23 = 48;
  v17 = sub_100023058(v16, &v23);
  v18 = *v17;
  *(v17 + *(*v17 - 24) + 24) = 2;
  *(v17 + *(v18 - 24) + 8) |= 0x200u;
  sub_1000026BC(v17, " offset = ", 10);
  v19 = a2[3];
  v20 = std::ostream::operator<<();
  sub_1000026BC(v20, " crypto = ", 10);
  v21 = *(a2 + 104);
  *(a2 + 12);
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v5;
  return a1;
}

void *sub_10019A650(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_100232728;
  return result;
}

uint64_t sub_10019A674(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return (*(*a1 + 88))(a1);
  }

  else
  {
    return sub_100150DA8(a2, a1);
  }
}

uint64_t sub_10019A6C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    v5 = *(*a1 + 96);

    return v5();
  }

  else
  {
    v11 = 0;
    sub_10015124C(v10, a2, &v11);
    sub_100026638(v7, a2);
    if (v9 == 1)
    {
      v9 = 0;
    }

    v11 = (*(*a1 + 96))(a1, v7);
    if (v8)
    {
      sub_10000367C(v8);
    }

    sub_1001512D4(v10);
    return v11;
  }
}

void sub_10019A7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a4)
  {
    sub_10000367C(a4);
  }

  sub_1001512D4(va);
  _Unwind_Resume(a1);
}

void sub_10019A824(uint64_t a1@<X0>, char ***a2@<X8>)
{
  v4 = *a1;
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 4);
    v10[0] = *(v6 + 3);
    v10[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10019A824(v10);
    if (v8)
    {
      sub_10000367C(v8);
    }

    if (v7)
    {

      sub_10000367C(v7);
    }
  }

  else
  {
    v9 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019A930(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019A954(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  {
    v7 = *(a1 + 8);
    v12[0] = v6;
    v12[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 4);
    v10[0] = *(v6 + 3);
    v10[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10019AA90(v10, v12, &v11);
    *a2 = v11;
    if (v8)
    {
      sub_10000367C(v8);
    }

    if (v7)
    {

      sub_10000367C(v7);
    }
  }

  else
  {
    v9 = *(a1 + 8);
    *a2 = *a1;
    *(a2 + 8) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019AA6C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019AA90(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  {
    v9 = *(a1 + 8);
    v13[0] = v8;
    v13[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v8 + 4);
    v12[0] = *(v8 + 3);
    v12[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10019AA90(v12, v13);
    if (v10)
    {
      sub_10000367C(v10);
    }

    if (v9)
    {

      sub_10000367C(v9);
    }
  }

  else
  {
    v11 = a2[1];
    *a3 = *a2;
    a3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019ABA4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019ABC8(uint64_t a1, char ***a2, uint64_t *a3)
{
  v4 = *a1;
  if (v4 == *a2)
  {
    return 4294967274;
  }

  if (!v4)
  {
    return 4294967294;
  }

  v7 = **v4;
  if (!v8)
  {
    return 4294967294;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(v8 + 3);
  v11 = *(v8 + 4);
  v17[0] = v10;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10 == *a2)
  {
    v15 = *a3;
    v14 = a3[1];
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v8 + 4);
    *(v8 + 3) = v15;
    *(v8 + 4) = v14;
    if (v16)
    {
      sub_10000367C(v16);
    }

    v12 = 0;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = sub_10019ABC8(v17, a2, a3);
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  sub_10000367C(v11);
LABEL_11:
  if (v9)
  {
    sub_10000367C(v9);
  }

  return v12;
}

void sub_10019AD04(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019AD28(uint64_t a1@<X0>, char ***a2@<X8>)
{
  v4 = *a1;
  {
    v7 = v6;
    v8 = *(a1 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7[3];
    v9 = v7[4];
    *a2 = v10;
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (v8)
    {

      sub_10000367C(v8);
    }
  }

  else
  {
    v11 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019AE10(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002064C0;
  v3 = a2[1];
  a1[3] = *a2;
  a1[4] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_1002327F8;
  a1[5] = a3;
  sub_10019D8D0();
}

void sub_10019B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100081A88(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    sub_10000367C(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10019B26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 40);
  if (v15)
  {
    sub_10000367C(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10019B2B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10019DA3C(a1, a2);
  *a1 = off_100232A18;
  a1[45] = &off_100232B18;
  a1[46] = &off_100232B40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232A18;
  a1[45] = off_100232AA0;
  a1[46] = off_100232AC8;
  return a1;
}

void sub_10019B3B4(_Unwind_Exception *a1)
{
  sub_10019C408(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019B3D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019C408(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10019B41C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (v4)
  {
    *&v6 = "int BackendSG::truncate(uint64_t)";
    *(&v6 + 1) = 23;
    v7 = 16;
    sub_10019B550(v8, &v6);
    sub_1000026BC(v9, "BackendSG: truncating the inner backend failed, error = ", 56);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10019CBA0(v8);
    std::ios::~ios();
  }

  else
  {
    sub_1000587B8(v8, a1 + 64, a2, 0, *(a1 + 88), *(a1 + 96));
    sub_100024B78(a1 + 64, v8);
    if (*(&v8[0] + 1))
    {
      sub_10000367C(*(&v8[0] + 1));
    }
  }

  return v4;
}

void sub_10019B528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10019B550(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10019DB04(a1, a2);
  *a1 = off_100232C38;
  a1[45] = &off_100232D38;
  a1[46] = &off_100232D60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232C38;
  a1[45] = off_100232CC0;
  a1[46] = off_100232CE8;
  return a1;
}

void sub_10019B654(_Unwind_Exception *a1)
{
  sub_10019CBA0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019B678(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019CBA0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10019B6BC(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002064C0;
  v5 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_1002327F8;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100026638(a1 + 64, a2 + 64);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_10019B76C(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10019B7D0(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002064C0;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *a1 = off_1002328D0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_100036D48((a1 + 104), a3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_10019B884(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10019B8A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a1 + 104);
  v5 = v3 % (*(a1 + 112) - v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v3 != v5 && *(a2 + 104) == 1 && *(a2 + 48))
  {
    *&v9 = "BufferedWriteBackend::reset_last_offset(const sg_entry &)";
    *(&v9 + 1) = 39;
    v10 = 16;
    sub_1000BE578(&v11, &v9);
    sub_1000026BC(v19, "BufferedWriteBackend doesn't support per io crypto", 50);
    std::ostream::~ostream();
    sub_1000C70A8(&v11);
    std::ios::~ios();
    return 4294967194;
  }

  v6 = *(sub_10019E2E8() + 1);
  v11 = v4;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v5;
  v14 = v3 - v5;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v7 = (*(*a1 + 128))(a1, &v11);
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v5 == v7)
  {
LABEL_8:
    v7 = 0;
    *(a1 + 128) = v3;
    *(a1 + 136) = 1;
  }

  return v7;
}

void sub_10019B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000BE6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10019BA24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    std::mutex::lock((a1 + 40));
    if ((*(a1 + 136) & 1) != 0 || (v14 = sub_10019B8A4(a1, a2), !v14))
    {
      v5 = *(a1 + 128);
      v6 = *(a1 + 104);
      v7 = *(a1 + 112) - v6;
      v8 = v5 % v7;
      if (v5 % v7)
      {
        v9 = v7 - v8;
        if (v9 >= *(a2 + 16))
        {
          v10 = *(a2 + 16);
        }

        else
        {
          v10 = v9;
        }

        memcpy((v6 + v8), *a2, v10);
        v11 = *(a1 + 104);
        v7 = *(a1 + 112) - v11;
        if (v10 + v8 == v7)
        {
          v12 = *(sub_10019E2E8() + 1);
          v19 = v11;
          v20 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = v10 + v8;
          v22 = v5 - v8;
          v23 = v10 + v8;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v14 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
          v13 = v21;
          if (v20)
          {
            sub_10000367C(v20);
          }

          if (v13 != v14)
          {
            goto LABEL_28;
          }

          v7 = *(a1 + 112) - *(a1 + 104);
        }
      }

      else
      {
        v10 = 0;
      }

      v14 = *(a2 + 16);
      v15 = (v14 - v10) / v7 * v7;
      if (v14 - v10 != (v14 - v10) % v7)
      {
        sub_10008A548(&v19, a2, v15, v10, *(a2 + 24) + v10, *(a2 + 32) - v10);
        v14 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
        if (v20)
        {
          sub_10000367C(v20);
        }

        if (v15 != v14)
        {
          goto LABEL_28;
        }

        v10 += v15;
        v14 = *(a2 + 16);
      }

      if (v14 > v10)
      {
        memcpy(*(a1 + 104), (*a2 + v10), v14 - v10);
        v14 = *(a2 + 16);
      }

      *(a1 + 128) += v14;
    }

LABEL_28:
    std::mutex::unlock((a1 + 40));
    return v14;
  }

  *&v17 = "int BufferedWriteBackend::write(const sg_entry &)";
  *(&v17 + 1) = 31;
  v18 = 16;
  sub_10019BCE8(&v19, &v17);
  sub_1000026BC(v27, "BufferedWriteBackend doesn't support per io crypto", 50);
  std::ostream::~ostream();
  sub_10019D338(&v19);
  std::ios::~ios();
  return 4294967194;
}

void sub_10019BCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  std::mutex::unlock((v13 + 40));
  _Unwind_Resume(a1);
}

void *sub_10019BCE8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10019DCB4(a1, a2);
  *a1 = off_100232E58;
  a1[45] = &off_100232F58;
  a1[46] = &off_100232F80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232E58;
  a1[45] = off_100232EE0;
  a1[46] = off_100232F08;
  return a1;
}

void sub_10019BDEC(_Unwind_Exception *a1)
{
  sub_10019D338(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019BE10(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019D338(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10019BE54(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 40));
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112) - v4;
    v6 = *(a1 + 128) % v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    bzero((v4 + v6), v5 - v6);
    v7 = *(a1 + 128);
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(sub_10019E2E8() + 1);
    v16 = v8;
    v17 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9 - v8;
    v19 = v7 - v6;
    v20 = v9 - v8;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v11 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v16);
    v12 = v11;
    v13 = v11 >= 0 ? 4294967291 : v11;
    v14 = v18;
    if (v17)
    {
      sub_10000367C(v17);
    }

    if (v14 == v12)
    {
LABEL_11:
      v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2);
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock((a1 + 40));
  return v13;
}

void sub_10019BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  std::mutex::unlock((v10 + 40));
  _Unwind_Resume(a1);
}

void sub_10019BFCC(uint64_t a1)
{
  sub_10019D838(a1);

  operator delete();
}

void *sub_10019C024(void *a1)
{
  *a1 = off_1002327F8;
  v2 = a1[9];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_10000367C(v3);
  }

  *a1 = off_1002064C0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10019C0B0(void *a1)
{
  *a1 = off_1002327F8;
  v2 = a1[9];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_10000367C(v3);
  }

  *a1 = off_1002064C0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

uint64_t sub_10019C170(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019C408(v1);

  return std::ios::~ios();
}

uint64_t sub_10019C1BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019C408(v1);

  return std::ios::~ios();
}

void sub_10019C21C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019C408(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10019C2C0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10019C32C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019C408(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10019C390(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019C408(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019C408(uint64_t a1)
{
  *a1 = off_100232BB0;
  sub_10019C574(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10019C574(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10019C724((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10019C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019C6EC(uint64_t a1)
{
  sub_10019C408(a1);

  operator delete();
}

int *sub_10019C724(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 163;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 163;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10019C908(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019CBA0(v1);

  return std::ios::~ios();
}

uint64_t sub_10019C954(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019CBA0(v1);

  return std::ios::~ios();
}

void sub_10019C9B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019CBA0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019CA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10019CA58(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10019CAC4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019CBA0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10019CB28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019CBA0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019CBA0(uint64_t a1)
{
  *a1 = off_100232DD0;
  sub_10019CD0C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10019CD0C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10019CEBC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10019CE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019CE84(uint64_t a1)
{
  sub_10019CBA0(a1);

  operator delete();
}

int *sub_10019CEBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 185;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 185;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10019D0A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019D338(v1);

  return std::ios::~ios();
}

uint64_t sub_10019D0EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019D338(v1);

  return std::ios::~ios();
}

void sub_10019D14C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019D338(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10019D1F0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10019D25C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019D338(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10019D2C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019D338(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019D338(uint64_t a1)
{
  *a1 = off_100232FF0;
  sub_10019D4A4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10019D4A4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100003368(v2, __p);
        sub_10019D654((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10019D5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019D61C(uint64_t a1)
{
  sub_10019D338(a1);

  operator delete();
}

int *sub_10019D654(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 233;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 233;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10019D838(uint64_t a1)
{
  *a1 = off_1002328D0;
  sub_10019BE54(a1, 1);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 40));
  *a1 = off_1002064C0;
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_10019D954(void *a1, uint64_t *a2, unsigned int *a3, unint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100233070;
  sub_1001556A8((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_10019D9DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100233070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10019DA3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100232BB0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10019DAEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10019DB04(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100232DD0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10019DBB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10019DC58(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100216B10;
  sub_10019B6BC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_10019DCB4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100232FF0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10019DD64(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10019DD7C(char *__s, void *a2)
{
  v3 = &v17;
  sub_100003410(&v17, __s);
  v4 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  v6 = v17.__r_.__value_.__r.__words[0];
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = (&v17 + HIBYTE(v17.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v8 = (v17.__r_.__value_.__r.__words[0] + v17.__r_.__value_.__l.__size_);
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v17.__r_.__value_.__r.__words[0];
  }

  if (v3 != v8)
  {
    do
    {
      v3->__r_.__value_.__s.__data_[0] = __tolower(v3->__r_.__value_.__s.__data_[0]);
      v3 = (v3 + 1);
    }

    while (v3 != v8);
    v4 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    size = v17.__r_.__value_.__l.__size_;
    v6 = v17.__r_.__value_.__r.__words[0];
    v5 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  if (v5 >= 0)
  {
    v9 = &v17;
  }

  else
  {
    v9 = v6;
  }

  if (v5 < 0)
  {
    v4 = size;
  }

  if (v4 >= 2)
  {
    v10 = v9 + v4;
    v11 = v9;
    while (1)
    {
      v12 = memchr(v11, 48, v4 - 1);
      if (!v12)
      {
        goto LABEL_22;
      }

      if (LOWORD(v12->__r_.__value_.__l.__data_) == 30768)
      {
        break;
      }

      v11 = (&v12->__r_.__value_.__l.__data_ + 1);
      v4 = v10 - v11;
      if (v10 - v11 < 2)
      {
        goto LABEL_22;
      }
    }

    if (v12 == v9)
    {
      v13 = std::string::erase(&v17, 0, 2uLL);
      std::string::operator=(&v17, v13);
    }
  }

LABEL_22:
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_10019E0F8(&v17, &v14);
  if (a2)
  {
    *a2 = v15 - v14;
  }

  operator new[]();
}

void sub_10019DF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  switch(a2)
  {
    case 3:
      __cxa_begin_catch(exception_object);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v20 = std::generic_category();
      exception[1] = 22;
      exception[2] = v20;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Does not contain an even number of hex digits.";
    case 2:
      __cxa_begin_catch(exception_object);
      v21 = __cxa_allocate_exception(0x40uLL);
      *v21 = &off_100233158;
      v22 = std::generic_category();
      v21[1] = 22;
      v21[2] = v22;
      *(v21 + 24) = 0;
      *(v21 + 48) = 0;
      v21[7] = "Contains non-hexadecimal characters.";
    case 1:
      __cxa_begin_catch(exception_object);
      v23 = __cxa_allocate_exception(0x40uLL);
      *v23 = &off_100233158;
      v24 = std::generic_category();
      v23[1] = 22;
      v23[2] = v24;
      *(v23 + 24) = 0;
      *(v23 + 48) = 0;
      v23[7] = "Decoding error.";
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019E0F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  v4 = *a1;
  if (v3 >= 0)
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    v3 = *(a1 + 8);
  }

  v7 = v4;
  if (v3)
  {
    v5 = v4 + v3;
    do
    {
      a2 = sub_10019EAB0(&v7, v5, a2, sub_10019EC80);
    }

    while (v7 != v5);
  }

  return a2;
}

uint64_t sub_10019E174(char *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return sub_1000A0C94(v3, a1, a2);
}

void *sub_10019E1D0(void *a1, unsigned int *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = strlen(v4);
  v6 = sub_1000026BC(a1, v4, v5);
  sub_1000026BC(v6, " (error code ", 13);
  v7 = a2[2];
  v8 = std::ostream::operator<<();
  sub_1000026BC(v8, ")", 1);
  return a1;
}

uint64_t sub_10019E268(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    result = a1 + 56;
    return *result;
  }

  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_10019E2E8()
{
  if ((atomic_load_explicit(qword_100240C20, memory_order_acquire) & 1) == 0)
  {
    sub_1001A3FEC();
  }

  if (atomic_load_explicit(qword_100240C10, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(qword_100240C10, &v2, sub_1001A04C0);
  }

  return &unk_100240C30;
}

uint64_t sub_10019E368(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

uint64_t sub_10019E398()
{
  if (byte_100240A78 == 1)
  {
    v0 = 0;
    atomic_compare_exchange_strong(&unk_100240C58, &v0, 1u);
    if (!v0)
    {
      *&v2 = "void process_terminator::terminate()";
      *(&v2 + 1) = 34;
      v3 = 16;
      sub_10003C4BC(v4, &v2);
      sub_1000026BC(v5, "Terminating due to unrecoverable I/O error", 42);
      std::ostream::~ostream();
      sub_10003F284(v4);
      std::ios::~ios();
      return raise(15);
    }
  }

  return result;
}

void sub_10019E44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C5E4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10019E460(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 208);
  v6 = a4[1];
  if (*a4 - (v5 - v6) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a4 - (v5 - v6);
  }

  v8 = v5 - v6;
  if (v5 == v6)
  {
    goto LABEL_69;
  }

  sub_100026714(&v45, a1);
  sub_1000249F0(&v45, v7 + v8);
  sub_1000240A0(v48);
  sub_100026714(v32, a1);
  sub_100025558(v32, a2, a4[1], v7 + v8, 0xFFFFFFFFFFFFFFFFLL, &v35);
  if (v34)
  {
    sub_10000367C(v34);
  }

  if (v33)
  {
    sub_10000367C(v33);
  }

  sub_1000246F4(&v35, v61);
  sub_100024B78(&v45, v61);
  v47 = v62;
  v48[0] = v63;
  v48[1] = v64;
  v48[2] = v65;
  v49 = v66;
  v11 = v67;
  v67 = 0uLL;
  v12 = *(&v50 + 1);
  v50 = v11;
  if (v12)
  {
    sub_10000367C(v12);
    v51 = v68;
    v52 = v69;
    v53 = v70;
    if (*(&v67 + 1))
    {
      sub_10000367C(*(&v67 + 1));
    }
  }

  else
  {
    v51 = v68;
    v52 = v69;
    v53 = v70;
  }

  if (*(&v61[0] + 1))
  {
    sub_10000367C(*(&v61[0] + 1));
  }

  sub_1000249F0(&v45, v8);
  sub_100024448(&v35, v29);
  sub_100026714(&__src, &v45);
  sub_100026714(&v20, a1);
  sub_100026714(&__dst, &v20);
  v13 = 0;
  v58 = 0;
  while (!sub_1000242EC(&__src, v29))
  {
    sub_1000266C4(&v26);
    v14 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v28)
    {
      sub_100024C18(&__src);
      v17 = 2;
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v15 = v56;
    if (v25 < v56)
    {
      v15 = v25;
    }

    if (v15 >= v28)
    {
      v16 = v28;
    }

    else
    {
      v16 = v15;
    }

    if (!v15)
    {
      *&v59 = "trim_data(const sg_vec::iterator &, const sg_vec::iterator &, size_t, const io_result_t &)::(anonymous class)::operator()(const auto &, const auto &, size_t) const [src:auto = sg_vec_ns::details::sg_vec_iterator, dst:auto = sg_vec_ns::details::sg_vec_iterator]";
      *(&v59 + 1) = 121;
      v60 = 16;
      sub_100073454(v61, &v59);
      sub_1000026BC(v71, "Trimming: Written ", 18);
      std::ostream::operator<<();
      sub_1000026BC(v71, ", dest buffer_size ", 19);
      std::ostream::operator<<();
      sub_1000026BC(v71, " src size ", 10);
      std::ostream::operator<<();
      sub_1000026BC(v71, ", trimmed size", 14);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100079AE0(v61);
      std::ios::~ios();
      memmove(__dst, __src, v16);
LABEL_34:
      *&v59 = "transform(Fn &&, sg_vec_ref::iterator, const sg_vec_ref::iterator &, sg_vec_ref::iterator) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/utils.cpp:180:13)]";
      *(&v59 + 1) = 97;
      v60 = 16;
      sub_10003A658(v61, &v59);
      sub_1000026BC(v71, "IO error with sg: ", 18);
      sub_10019A3A8(v71, &__src);
      sub_1000026BC(v71, " dest ", 6);
      sub_10019A3A8(v71, &__dst);
      sub_1000026BC(v71, " returned status ", 17);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10003A88C(v61);
      std::ios::~ios();
      v17 = 1;
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_10000367C(v14);
      goto LABEL_29;
    }

    memmove(__dst, __src, v16);
    if (v16 <= 0)
    {
      goto LABEL_34;
    }

    sub_1000249F0(&__src, v16);
    sub_100024AB4(&__dst, v16);
    v17 = 0;
    v13 += v16;
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_29:
    if ((v17 | 2) != 2)
    {
      goto LABEL_37;
    }
  }

  sub_100024AB4(&v20, v13);
LABEL_37:
  if (v57)
  {
    sub_10000367C(v57);
  }

  if (v55)
  {
    sub_10000367C(v55);
  }

  if (v22)
  {
    sub_10000367C(v22);
  }

  if (v21)
  {
    sub_10000367C(v21);
  }

  if (v27)
  {
    sub_10000367C(v27);
  }

  if (v24)
  {
    sub_10000367C(v24);
  }

  if (v31)
  {
    sub_10000367C(v31);
  }

  if (v30)
  {
    sub_10000367C(v30);
  }

  if (v44)
  {
    sub_10000367C(v44);
  }

  if (v43)
  {
    sub_10000367C(v43);
  }

  if (v42)
  {
    sub_10000367C(v42);
  }

  if (v41)
  {
    sub_10000367C(v41);
  }

  if (v39)
  {
    sub_10000367C(v39);
  }

  if (v37)
  {
    sub_10000367C(v37);
  }

  if (*(&v50 + 1))
  {
    sub_10000367C(*(&v50 + 1));
  }

  if (v46)
  {
    sub_10000367C(v46);
  }

LABEL_69:
  sub_100026714(&v35, a1);
  sub_1000249F0(&v35, v7);
  sub_1000240A0(v38);
  v18 = *(a1 + 208);
  if (v40)
  {
    sub_10000367C(v40);
  }

  if (v36)
  {
    sub_10000367C(v36);
  }

  return v7;
}

void sub_10019E990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&STACK[0x738]);
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_100002440(&a66);
  sub_100025620(&STACK[0x388]);
  sub_100002440(&STACK[0x658]);
  _Unwind_Resume(a1);
}

void sub_10019EA78(std::exception *a1)
{
  sub_1000023D4(a1);

  operator delete();
}

uint64_t sub_10019EAB0(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t))
{
  v8 = 0;
  v9 = *a1;
  v10 = 1;
  do
  {
    v11 = v10;
    if (a4(v9, a2))
    {
      v24 = 0u;
      v25 = 0u;
      DWORD2(v25) = -1;
      v23[0] = off_1002331C0;
      v23[1] = off_1002331F0;
      sub_10019EC8C(v23);
    }

    v12 = sub_10019ED38(**a1);
    v10 = 0;
    v8 = v12 + 16 * v8;
    v9 = *a1 + 1;
    *a1 = v9;
  }

  while ((v11 & 1) != 0);
  v14 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v14 >= v13)
  {
    v16 = *a3;
    v17 = &v14[-*a3];
    v18 = (v17 + 1);
    if ((v17 + 1) < 0)
    {
      sub_100036CAC();
    }

    v19 = v13 - v16;
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      operator new();
    }

    v21 = &v14[-*a3];
    *v17 = v8;
    v15 = v17 + 1;
    memcpy(0, v16, v21);
    *a3 = 0;
    *(a3 + 8) = v17 + 1;
    *(a3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 1;
  }

  *(a3 + 8) = v15;
  return a3;
}

void sub_10019EC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10019ECE8(va);
  _Unwind_Resume(a1);
}

void sub_10019EC8C(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_10019EE54(exception, a1);
}

std::exception *sub_10019ECE8(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 + 8) = &off_100233210;
  sub_10019F088((v2 + 16));
  return a1;
}

uint64_t sub_10019ED38(int a1)
{
  v1 = a1 - 48;
  if ((a1 - 48) >= 0xA)
  {
    if ((a1 - 65) > 5)
    {
      if ((a1 - 97) > 5)
      {
        sub_10019F3C8();
      }

      return (a1 - 87);
    }

    else
    {
      return (a1 - 55);
    }
  }

  return v1;
}

void sub_10019EE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10019F144(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10019EE54(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &off_100233210;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = off_1002331C0;
  *(a1 + 8) = off_1002331F0;
  return a1;
}

void sub_10019EF2C(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v1 + 8) = &off_100233210;
  sub_10019F088((v1 + 16));

  operator delete();
}

uint64_t *sub_10019EF9C(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &off_100233210;
  v2 = (v1 + 16);

  return sub_10019F088(v2);
}

void sub_10019F000(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &off_100233210;
  sub_10019F088(v1 + 2);

  operator delete();
}

uint64_t *sub_10019F088(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10019F0E4(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_10019F194(exception, a1);
}

std::exception *sub_10019F144(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 + 8) = &off_100233210;
  sub_10019F088((v2 + 16));
  return a1;
}

uint64_t sub_10019F194(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &off_100233210;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = off_100233258;
  *(a1 + 8) = off_100233288;
  return a1;
}

void sub_10019F26C(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v1 + 8) = &off_100233210;
  sub_10019F088((v1 + 16));

  operator delete();
}

uint64_t *sub_10019F2DC(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &off_100233210;
  v2 = (v1 + 16);

  return sub_10019F088(v2);
}

void sub_10019F340(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &off_100233210;
  sub_10019F088(v1 + 2);

  operator delete();
}

void sub_10019F52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019F558(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void sub_10019F664(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10019F994(&v18, ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL));
  if (v18)
  {
    v4 = v18;
  }

  else
  {
    v4 = ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL);
  }

  sub_100003410(&v14, v4);
  free(v18);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5.__i_ = &v14;
  }

  else
  {
    v5.__i_ = v14.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v14, v5, 91);
  v15 = v14;
  memset(&v14, 0, sizeof(v14));
  v6 = std::string::append(&v15, "] = ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100002148(&v18);
  v22 = *(a1 + 8);
  sub_1000026BC(&v18, &v22, 1);
  sub_100003368(&v18, v12);
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v13 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v12[1];
  }

  v10 = std::string::append(&v16, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 10);
  *a2 = v17;
  memset(&v17, 0, sizeof(v17));
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_10019F8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

char **sub_10019F994(char **a1, char *lpmangled)
{
  status = 0;
  v4 = 0;
  *a1 = __cxa_demangle(lpmangled, 0, &v4, &status);
  return a1;
}

void sub_10019FA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A405C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019FA68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10019FAA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10019FAD0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019FB10(uint64_t a1, const char *a2)
{
  if (a2)
  {
    sub_100002148(&v16);
    v4 = strlen(a2);
    sub_1000026BC(&v16, a2, v4);
    v5 = *(a1 + 8);
    if (v5 != (a1 + 16))
    {
      do
      {
        (**v5[5])(__p);
        if (v15 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if (v15 >= 0)
        {
          v7 = HIBYTE(v15);
        }

        else
        {
          v7 = __p[1];
        }

        sub_1000026BC(&v16, v6, v7);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = v5[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != (a1 + 16));
    }

    sub_100003368(&v16, __p);
    v11 = v15;
    v12 = *__p;
    *__p = *(a1 + 32);
    v15 = *(a1 + 48);
    *(a1 + 32) = v12;
    *(a1 + 48) = v11;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    std::locale::~locale(v18);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  result = a1 + 32;
  if (*(a1 + 55) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_10019FD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1001A0078(a1 + 8, a2);
  if ((a1 + 16) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[6];
    *a3 = result[5];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_10019FDE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_1001A0168(a1 + 8, a3);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 48);
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;
  if (v8)
  {
    sub_10000367C(v8);
  }

  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }
}

BOOL sub_10019FE90(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  *(a1 + 56) = v1;
  if (a1 && !v1)
  {
    sub_1001A02B4(a1);
    operator delete();
  }

  return v1 == 0;
}

void *sub_1001A0078(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = sub_1001A00EC(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = v4[4];
  if (*a2 != v6 && strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL)) < 0)
  {
    return v3;
  }

  return v5;
}

void *sub_1001A00EC(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = v5[4];
      if (v7 == v6)
      {
        a4 = v5;
      }

      else
      {
        v8 = strcmp((*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
        if (v8 >= 0)
        {
          a4 = v5;
        }

        v5 = (v5 + ((v8 >> 28) & 8));
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t sub_1001A0168(uint64_t a1, uint64_t *a2)
{
  v2 = *sub_1001A0204(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1001A0204(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *a3;
    v7 = v5[4];
    if (*a3 != v7)
    {
      v8 = *(v6 + 8);
      do
      {
        v9 = *(v7 + 8);
        if (strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
        {
          v10 = *v5;
          v4 = v5;
          if (!*v5)
          {
            break;
          }
        }

        else
        {
          if ((strcmp((v9 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
          {
            break;
          }

          v4 = v5 + 1;
          v10 = v5[1];
          if (!v10)
          {
            break;
          }
        }

        v7 = v10[4];
        v5 = v10;
      }

      while (v6 != v7);
    }
  }

  else
  {
    v5 = (a1 + 8);
  }

  *a2 = v5;
  return v4;
}

uint64_t sub_1001A02B4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100056314(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1001A035C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A405C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A0378(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001A03B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001A03E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A0420(uint64_t a1, uint64_t *a2)
{
  v2 = *sub_1001A0204(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1001A0594(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A05C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001A05F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1001A0618(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *frk_unwrapped_symmetric_key_with_shipping_private_key(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 objectForKey:@"com.apple.wkms.fcs-response"];
  v7 = v6;
  if (!v5)
  {
    v26 = a3;
    v38 = NSLocalizedDescriptionKey;
    v39 = @"ERROR: Shipping private key is NULL.";
    v12 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = 26;
LABEL_14:
    v15 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:v18 userInfo:v12];
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v8 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (!v6)
  {
    v26 = a3;
    v36 = NSLocalizedDescriptionKey;
    v37 = @"ERROR: This archive does not contain a shipping key response.";
    v12 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v18 = 25;
    goto LABEL_14;
  }

  v29 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v29];
  v9 = v29;
  if (!v8)
  {
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v16 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v26 = a3;
  v10 = [v8 objectForKey:@"wrapped-key"];
  v11 = [v8 objectForKey:@"enc-request"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = NSLocalizedDescriptionKey;
    v35 = @"ERROR: Response dictionary is missing required keys. Will fail";
    v12 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:23 userInfo:v12];

    v14 = 0;
    goto LABEL_16;
  }

  v12 = [[NSData alloc] initWithBase64EncodedString:v10 options:0];
  v13 = [[NSData alloc] initWithBase64EncodedString:v11 options:0];
  v25 = v13;
  if (!v12)
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"ERROR: shipping key wrapped-key failed base64 decode";
    v22 = &v33;
    v23 = &v32;
LABEL_24:
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1, v13];
    v24 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:19 userInfo:v15];

    v17 = v24;
    v14 = 0;
    v16 = 0;
    goto LABEL_25;
  }

  if (!v13)
  {
    v30 = NSLocalizedDescriptionKey;
    v31 = @"ERROR: shipping key enc-request failed base64 decode";
    v22 = &v31;
    v23 = &v30;
    goto LABEL_24;
  }

  v28 = v9;
  v14 = [_TtC16FetchRestoreKeys16CryptoKitWrapper convertPrivateKeyTox963WithPemPrivateKey:v5 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v27 = v15;
  v16 = [_TtC16FetchRestoreKeys16CryptoKitWrapper unwrapEncryptionKeyWithWrappedKey:v12 encapsulatedKey:v25 privateKey:v14 error:&v27];
  v17 = v27;
LABEL_25:

  v15 = v17;
LABEL_26:

LABEL_17:
  v9 = v15;
  a3 = v26;
  if (v26)
  {
LABEL_18:
    v19 = v9;
    *a3 = v9;
  }

LABEL_19:
  v20 = v16;

  return v16;
}

id frk_metadata_from_aea_auth_data(AEAAuthData_impl *a1, void *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  EntryCount = AEAAuthDataGetEntryCount(a1);
  if (!EntryCount)
  {
LABEL_12:
    v16 = [v4 copy];
    v17 = 0;
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v6 = EntryCount;
  v7 = 0;
  while (1)
  {
    data_size = 0;
    key_length = 0;
    if (AEAAuthDataGetEntry(a1, v7, 0, 0, &key_length, 0, 0, &data_size))
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Failed to parse auth data blob.";
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v18];

      goto LABEL_22;
    }

    if (!key_length)
    {
      v38 = NSLocalizedDescriptionKey;
      v39 = @"Failed to parse key in KVS (zero size key).";
      v19 = &v39;
      v20 = &v38;
LABEL_20:
      v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v13];
      goto LABEL_21;
    }

    v8 = ++key_length;
    if (!data_size)
    {
      v36 = NSLocalizedDescriptionKey;
      v37 = @"Failed to parse key in KVS (zero size data).";
      v19 = &v37;
      v20 = &v36;
      goto LABEL_20;
    }

    v9 = malloc_type_calloc(1uLL, v8, 0x7A69EC4uLL);
    if (!v9)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"KVS keyBuffer allocation failure.";
      v19 = &v35;
      v20 = &v34;
      goto LABEL_20;
    }

    v10 = v9;
    v11 = malloc_type_calloc(1uLL, data_size, 0x5189DB6BuLL);
    if (!v11)
    {
      free(v10);
      v32 = NSLocalizedDescriptionKey;
      v33 = @"KVS dataBuffer allocation failure.";
      v19 = &v33;
      v20 = &v32;
      goto LABEL_20;
    }

    v12 = v11;
    if (AEAAuthDataGetEntry(a1, v7, key_length, v10, &key_length, data_size, v11, &data_size))
    {
      free(v10);
      free(v12);
      v30 = NSLocalizedDescriptionKey;
      v31 = @"KVS data fetch failure.";
      v19 = &v31;
      v20 = &v30;
      goto LABEL_20;
    }

    v13 = [[NSString alloc] initWithUTF8String:v10];
    v14 = [NSData alloc];
    v15 = [v14 initWithBytesNoCopy:v12 length:data_size freeWhenDone:1];
    free(v10);
    if (!v13 || !v15)
    {
      break;
    }

    [v4 setObject:v15 forKey:v13];

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v28 = NSLocalizedDescriptionKey;
  v29 = @"KVS key value - parse failure.";
  v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v23];

LABEL_21:
LABEL_22:
  v16 = 0;
  if (a2)
  {
LABEL_23:
    v21 = v17;
    *a2 = v17;
  }

LABEL_24:

  return v16;
}

Class sub_1001A0F84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v6 = a3;
  v7 = sub_1001A40E0();
  v9 = v8;

  v10 = a5(v7, v9);
  v12 = v11;
  sub_1001A2DFC(v7, v9);
  v13.super.isa = sub_1001A40C0().super.isa;
  sub_1001A2DFC(v10, v12);

  return v13.super.isa;
}

id CryptoKitWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CryptoKitWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id CryptoKitWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001A1428(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1001A4280();
  sub_1001A4250();
  v6 = sub_1001A4290();

  return sub_1001A14A0(a1, a2, v6);
}

unint64_t sub_1001A14A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1001A4270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1001A1558@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v5 = v3;
    if (!v4)
    {
      v6 = a3;
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v13 = v12;
      v14 = v12 + BYTE6(a2);
      goto LABEL_10;
    }

    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    a1 = a1;
    v8 = v9;
    return sub_1001A16D4(a1, v8, a3);
  }

  if (v4 == 2)
  {
    v7 = *(a1 + 24);
    a1 = *(a1 + 16);
    v8 = v7;
    return sub_1001A16D4(a1, v8, a3);
  }

  v6 = a3;
  memset(v12, 0, 14);
  v13 = v12;
  v14 = v12;
  v5 = v3;
LABEL_10:
  sub_1001A2F00();
  result = sub_1001A4130();
  if (!v5)
  {
    *v6 = result;
    v6[1] = v11;
  }

  return result;
}

uint64_t sub_1001A16D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1001A4080();
  if (result)
  {
    result = sub_1001A40A0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1001A4090();
  sub_1001A2F00();
  result = sub_1001A4130();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

unint64_t sub_1001A1798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A2E50(&qword_100240AD8, &unk_1001D79F0);
    v3 = sub_1001A4260();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001A2F54(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1001A1428(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001A2FC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001A18A8(uint64_t a1, unint64_t a2)
{
  isa = v2;
  v6 = sub_1001A4240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1001A41E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16, v17);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = a1;
  v29 = a2;
  sub_1001A2FD4(a1, a2);
  sub_1001A41D0();
  if (!v2)
  {
    v30 = 0;
    sub_1001A41B0();
    sub_1001A4230();
    isa = sub_1001A4210();
    v21 = v20;

    (*(v7 + 8))(v12, v6);
    if (v21 >> 60 == 15)
    {
      sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001D7970;
      *(inited + 32) = sub_1001A4200();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v23;
      *(inited + 48) = 0xD000000000000017;
      *(inited + 56) = 0x80000001001E95F0;
      v24 = @"com.apple.internal.fetchrestorekeys";
      sub_1001A1798(inited);
      swift_setDeallocating();
      sub_1001A2E98(inited + 32);
      v25 = objc_allocWithZone(NSError);
      isa = sub_1001A41F0().super.isa;

      [v25 initWithDomain:v24 code:31 userInfo:isa];

      swift_willThrow();
    }

    (*(v14 + 8))(v19, v13);
  }

  return isa;
}

unint64_t sub_1001A1BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A2E50(&qword_100240AC8, &qword_1001D79E8);
    v3 = sub_1001A4260();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1001A1428(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1001A1CE0()
{
  v1 = v0;
  v2 = sub_1001A4240();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4, v5);
  v6 = sub_1001A41E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9, v10);
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1001A4230();
  v12 = sub_1001A4220();
  if (v13)
  {
    __chkstk_darwin(v12, v13, v14);
    sub_1001A41A0();
    if (!v0)
    {
      (*(v7 + 32))(&v20[-v11], &v20[-v11], v6);
      v1 = sub_1001A41C0();
      (*(v7 + 8))(&v20[-v11], v6);
    }
  }

  else
  {
    sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D7970;
    *(inited + 32) = sub_1001A4200();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v16;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x80000001001E95F0;
    v17 = @"com.apple.internal.fetchrestorekeys";
    sub_1001A1798(inited);
    swift_setDeallocating();
    sub_1001A2E98(inited + 32);
    v1 = objc_allocWithZone(NSError);
    isa = sub_1001A41F0().super.isa;

    [v1 initWithDomain:v17 code:31 userInfo:isa];

    swift_willThrow();
  }

  return v1;
}

__CFString *sub_1001A1FB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (&type metadata accessor for HPKE)
  {
    v7 = &nominal type descriptor for HPKE == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || &type metadata for HPKE == 0)
  {
    sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D7970;
    *(inited + 32) = sub_1001A4200();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x80000001001E95C0;
    v17 = @"com.apple.internal.fetchrestorekeys";
    sub_1001A1798(inited);
    swift_setDeallocating();
    sub_1001A2E98(inited + 32);
    v11 = objc_allocWithZone(NSError);
    isa = sub_1001A41F0().super.isa;

    [v11 initWithDomain:v17 code:12 userInfo:isa];

    swift_willThrow();
  }

  else
  {
    v61 = a2;
    v62 = a3;
    v65 = a4;
    v60 = a1;
    v15 = sub_1001A41E0();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15, v18, v19);
    v20 = (&v17->info + 7) & 0xFFFFFFFFFFFFFFF0;
    v21 = &v48 - v20;
    v63 = a5;
    v64 = a6;
    sub_1001A2FD4(a5, a6);
    sub_1001A41D0();
    if (!v6)
    {
      v57 = &v48;
      v22 = sub_1001A4100();
      v56 = &v48;
      v23 = *(v22 - 8);
      v58 = v15;
      v59 = v23;
      v24 = v16;
      v25 = *(v23 + 64);
      __chkstk_darwin(v22, v26, v27);
      v53 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
      v28 = &v48 - v53;
      sub_1001A40F0();
      v29 = sub_1001A4170();
      v55 = &v48;
      v49 = v29;
      v48 = *(v29 - 8);
      v30 = *(v48 + 64);
      v33 = __chkstk_darwin(v29, v31, v32);
      v35 = &v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = &v48;
      __chkstk_darwin(v33, v36, v37);
      v54 = v24;
      v38 = (*(v24 + 16))(&v48 - v20, &v48 - v20, v58);
      v51 = &v48;
      __chkstk_darwin(v38, v39, v40);
      v41 = *(v59 + 16);
      v42 = &v48 - v53;
      v53 = v22;
      v41(v42, v28, v22);
      sub_1001A2FD4(v62, v65);
      v50 = v35;
      sub_1001A4150();
      v43 = v48;
      v44 = v49;
      v45 = v59;
      v63 = v60;
      v64 = v61;
      sub_1001A3028();
      v46 = v50;
      v17 = sub_1001A4160();
      (*(v43 + 8))(v46, v44);
      (*(v45 + 8))(v28, v53);
      (*(v54 + 8))(v21, v58);
    }
  }

  return v17;
}

__SecKey *sub_1001A25C8(unint64_t a1, uint64_t a2, SecCertificateRef certificate)
{
  if (&type metadata accessor for HPKE)
  {
    v4 = &nominal type descriptor for HPKE == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &type metadata for HPKE == 0)
  {
    sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D7970;
    *(inited + 32) = sub_1001A4200();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x80000001001E95C0;
    v8 = @"com.apple.internal.fetchrestorekeys";
    sub_1001A1798(inited);
    swift_setDeallocating();
    sub_1001A2E98(inited + 32);
    v9 = objc_allocWithZone(NSError);
    isa = sub_1001A41F0().super.isa;

    [v9 initWithDomain:v8 code:12 userInfo:isa];

    swift_willThrow();
    return v8;
  }

  result = SecCertificateCopyKey(certificate);
  if (result)
  {
    v14 = result;
    v70 = a1;
    v73 = a2;
    result = SecKeyCopyExternalRepresentation(result, 0);
    if (result)
    {
      v15 = result;
      v16 = sub_1001A4190();
      v17 = *(v16 - 8);
      v8 = *(v17 + 64);
      __chkstk_darwin(v16, v18, v19);
      v20 = (&v8->info + 7) & 0xFFFFFFFFFFFFFFF0;
      v71 = sub_1001A40E0();
      v72 = v21;
      sub_1001A4180();
      if (v3)
      {
      }

      else
      {
        v62 = v14;
        v66 = &v54;
        v68 = sub_1001A4100();
        v64 = &v54;
        v22 = *(v68 - 8);
        v67 = &v54 - v20;
        v60 = v22;
        v69 = v16;
        v23 = v17;
        v24 = *(v22 + 64);
        __chkstk_darwin(v68, v25, v26);
        v27 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1001A40F0();
        v28 = sub_1001A4140();
        v63 = &v54;
        v58 = v28;
        v57 = *(v28 - 8);
        v29 = *(v57 + 64);
        v32 = __chkstk_darwin(v28, v30, v31);
        v34 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = &v54;
        __chkstk_darwin(v32, v35, v36);
        v65 = v23;
        v37 = (*(v23 + 16))(&v54 - v20, v67, v69);
        v59 = &v54;
        __chkstk_darwin(v37, v38, v39);
        v40 = v60;
        (*(v60 + 16))(v27, v27, v68);
        v41 = v34;
        v42 = v69;
        sub_1001A4110();
        v56 = v27;
        v43 = v40;
        sub_1001A1558(v70, v73, &v71);
        v44 = v62;
        v73 = v71;
        v70 = v72;
        v59 = sub_1001A40D0(0);
        v61 = v45;
        v55 = v41;
        v46 = sub_1001A4120();
        v48 = v47;
        v54 = sub_1001A40D0(0);
        v49 = v42;
        v51 = v50;
        sub_1001A2DFC(v46, v48);
        sub_1001A2E50(&qword_100240AB8, &qword_1001D79D8);
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_1001D7980;
        *(v52 + 32) = 0x2D64657070617277;
        *(v52 + 40) = 0xEB0000000079656BLL;
        v53 = v61;
        *(v52 + 48) = v59;
        *(v52 + 56) = v53;
        *(v52 + 64) = 0x757165722D636E65;
        *(v52 + 72) = 0xEB00000000747365;
        *(v52 + 80) = v54;
        *(v52 + 88) = v51;
        v8 = sub_1001A1BCC(v52);
        swift_setDeallocating();
        sub_1001A2E50(&qword_100240AC0, &qword_1001D79E0);
        swift_arrayDestroy();

        sub_1001A2DFC(v73, v70);
        (*(v43 + 8))(v56, v68);
        (*(v65 + 8))(v67, v49);
        (*(v57 + 8))(v55, v58);
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A2DFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001A2E50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001A2E98(uint64_t a1)
{
  v2 = sub_1001A2E50(&qword_100240AB0, &qword_1001D79D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A2F00()
{
  result = qword_100240AD0;
  if (!qword_100240AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100240AD0);
  }

  return result;
}

uint64_t sub_1001A2F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A2E50(&qword_100240AB0, &qword_1001D79D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1001A2FC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1001A2FD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1001A3028()
{
  result = qword_100240AE0;
  if (!qword_100240AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100240AE0);
  }

  return result;
}

uint64_t sub_1001A307C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 16))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

void sub_1001A310C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 8);
  if (*(a3 + 89) == 1)
  {
    v5 = v4;
    sub_10000B8AC(a3);
    v4 = v5;
    *(a3 + 89) = 0;
  }

  *a3 = v4;
  __cxa_end_catch();
}

void sub_1001A3264(int a1, _BYTE *__src, _BYTE *__dst, unint64_t a4)
{
  if (!a4)
  {
    return;
  }

  v7 = __dst - __src;
  if (__dst == __src)
  {
    v8 = 8 * a4;
  }

  else
  {
    if (a4 <= v7 >> 3)
    {
      v10 = 8 * a4;
      v11 = &__dst[-8 * a4];
      memmove(__dst, v11, 8 * a4);
      if (v11 != __src)
      {
        memmove(&__dst[-(v11 - __src)], __src, v11 - __src);
      }

      v9 = __src;
      v8 = v10;
      goto LABEL_12;
    }

    if (__src)
    {
      memmove(&__src[8 * a4], __src, __dst - __src);
    }

    bzero(__src, v7);
    v8 = 8 * (a4 - (v7 >> 3));
  }

  v9 = __dst;
LABEL_12:

  bzero(v9, v8);
}

void sub_1001A3344(void **a1, char *__dst, char *a3, char *__src, uint64_t a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = __dst;
  if (*a1)
  {
    v12 = __dst;
    if (__dst)
    {
      v12 = __dst;
      if (v10 != __src)
      {
        memmove(__dst, v10, __src - v10);
        v12 = &__dst[__src - v10];
      }
    }
  }

  if (a5)
  {
    bzero(v12, 8 * a5);
  }

  if (__src)
  {
    v13 = &v10[8 * v11];
    if (v13 != __src && v12 != 0)
    {
      memmove(&v12[8 * a5], __src, v13 - __src);
    }
  }

  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v15 = a1[1] + a5;
  *a1 = __dst;
  a1[1] = v15;
  a1[2] = a3;
}

void sub_1001A3434(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      sub_10000367C(v5);
    }

    a1 += 152;
  }

  while (a1 != a2);
}

void sub_1001A3498(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;

  __cxa_end_catch();
}

void sub_1001A34E0()
{
  if (__cxa_guard_acquire(&qword_100240B38))
  {
    __cxa_atexit(std::error_category::~error_category, &off_100240080, &_mh_execute_header);

    __cxa_guard_release(&qword_100240B38);
  }
}

void sub_1001A3548(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  sub_10006C1D4(v1);
  __cxa_end_catch();
}

void sub_1001A35FC()
{
  if (__cxa_guard_acquire(&qword_1002400A0))
  {
    *&xmmword_100240088 = qword_10023FE60;
    *(&xmmword_100240088 + 1) = qword_10023FE60;
    LOBYTE(qword_100240098) = 2;

    __cxa_guard_release(&qword_1002400A0);
  }
}

void sub_1001A36A4(uint64_t a1, uint64_t a2, void *a3, std::__shared_weak_count **a4)
{
  v8 = *(a1 + 128);
  if (v8)
  {
    sub_10000367C(v8);
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    sub_10000367C(v9);
  }

  *a3 = a2;
  v10 = *a4;
  if (*a4)
  {

    sub_10000367C(v10);
  }
}

void sub_1001A3740()
{
  if (__cxa_guard_acquire(&qword_1002400B8))
  {
    qword_1002400B0 = &a0123456789abcd[off_1002400A8];

    __cxa_guard_release(&qword_1002400B8);
  }
}

uint64_t sub_1001A3804(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1001A384C(void **a1, _OWORD *__dst, char *a3, char *__src, uint64_t a5, _OWORD *a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = __dst;
  if (*a1)
  {
    v14 = __dst;
    if (__dst)
    {
      v14 = __dst;
      if (v12 != __src)
      {
        memmove(__dst, v12, __src - v12);
        v14 = (__dst + __src - v12);
      }
    }
  }

  *v14 = *a6;
  if (__src)
  {
    v15 = &v12[16 * v13];
    if (v15 != __src && v14 != 0)
    {
      memmove(&v14[a5], __src, v15 - __src);
    }
  }

  if (v12 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v17 = a1[1] + a5;
  *a1 = __dst;
  a1[1] = v17;
  a1[2] = a3;
}

void sub_1001A3928(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1001A3970(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 32;
  v4 = (a1 - 32);
  v5 = (a1 - 32);
  do
  {
    v6 = *v5;
    v5 -= 4;
    result = (*v6)(v4);
    v3 -= 32;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void sub_1001A39DC()
{
  sub_1001227D0();
  do
  {
    v2 = v1[51];
    if (v2)
    {
      sub_10000367C(v2);
    }

    v3 = v1[29];
    if (v3)
    {
      sub_10000367C(v3);
    }

    v4 = v1[23];
    if (v4)
    {
      sub_10000367C(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      sub_10000367C(v5);
    }

    v1 += 56;
  }

  while (v1 != v0);
}

void (***sub_1001A3A38())(void)
{
  sub_1001227D0();
  v3 = v2;
  do
  {
    v4 = *v3;
    v3 += 3;
    (*v4)();
    v1 += 24;
    result = v3;
  }

  while (v3 != v0);
  return result;
}

uint64_t *sub_1001A3AD4(uint64_t a1, uint64_t **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    v3 = sub_10006C1E4(result);
    return (*(v4 + 40))(v3);
  }

  return result;
}

void sub_1001A3B4C(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a1 + 192);
    if (v4)
    {
      sub_10000367C(v4);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      sub_10000367C(v5);
    }

    a1 += 208;
  }

  while (a1 != a2);
}

void sub_1001A3B94()
{
  if (__cxa_guard_acquire(&qword_1002401E0))
  {
    __cxa_atexit(sub_10012C630, &qword_1002401D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1002401E0);
  }
}

void sub_1001A3C00(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }
}

void sub_1001A3C38()
{
  if (__cxa_guard_acquire(&qword_100240BF8))
  {
    __cxa_atexit(std::error_category::~error_category, &off_100240370, &_mh_execute_header);

    __cxa_guard_release(&qword_100240BF8);
  }
}

void sub_1001A3CA0(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *a2;
  if (*a2)
  {

    sub_10000367C(v4);
  }
}

void sub_1001A3CF0(void **a1, char *__dst, char *a3, char *__src, uint64_t a5, void *a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = __dst;
  if (*a1)
  {
    v14 = __dst;
    if (__dst)
    {
      v14 = __dst;
      if (v12 != __src)
      {
        memmove(__dst, v12, __src - v12);
        v14 = &__dst[__src - v12];
      }
    }
  }

  if (a5)
  {
    memmove(v14, a6, 16 * a5);
  }

  if (__src)
  {
    v15 = &v12[16 * v13];
    if (v15 != __src && v14 != 0)
    {
      memmove(&v14[16 * a5], __src, v15 - __src);
    }
  }

  if (v12 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v17 = a1[1] + a5;
  *a1 = __dst;
  a1[1] = v17;
  a1[2] = a3;
}

void sub_1001A3DDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  __cxa_end_catch();
}

uint64_t sub_1001A3E18(void *a1, unint64_t a2, uint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = a1[12];
  v4 = (a2 + v3 - 1) / v3 * v3;
  if (a2 > v4 || v4 >= a3 + a2)
  {
    return 0;
  }

  v6 = a2 - v4 + a3;
  v7 = v6 / v3 * v3;
  if (v6 == v6 % v3)
  {
    return 0;
  }

  v8 = 4294967262;
  if (__CFADD__(v4, v7))
  {
    return v8;
  }

  v10 = a1[9];
  if (v4 > v10 || v7 + v4 > v10)
  {
    return v8;
  }

  return madvise((a1[8] + v4), v7, 5);
}

void sub_1001A3EA4(void **a1, std::__shared_weak_count **a2, void *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = v4;
    operator delete(v4);
  }

  if (*a2)
  {
    sub_10000367C(*a2);
  }
}

void sub_1001A3F14()
{
  if (__cxa_guard_acquire(&qword_100240C00))
  {
    __cxa_atexit(sub_10019A2A0, 0, &_mh_execute_header);

    __cxa_guard_release(&qword_100240C00);
  }
}

void sub_1001A3F78()
{
  if (__cxa_guard_acquire(&qword_100240C08))
  {
    __cxa_atexit(sub_10019A2D8, 0, &_mh_execute_header);

    __cxa_guard_release(&qword_100240C08);
  }
}

void sub_1001A3FEC()
{
  if (__cxa_guard_acquire(qword_100240C20))
  {
    __cxa_atexit(sub_10019E368, &unk_100240C30, &_mh_execute_header);

    __cxa_guard_release(qword_100240C20);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}