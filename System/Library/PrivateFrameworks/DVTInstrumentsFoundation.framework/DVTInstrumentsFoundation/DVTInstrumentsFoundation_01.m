void sub_247F938E4()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = *(MEMORY[0x277D036D0] + 1080);
  v7[0] = @"uuid_t";
  v7[1] = @"iec-bytes";
  v1 = *(MEMORY[0x277D036D0] + 312);
  v8[0] = v0;
  v8[1] = v1;
  v2 = *(MEMORY[0x277D036D0] + 1776);
  v7[2] = @"errno";
  v7[3] = @"bitrate";
  v3 = *(MEMORY[0x277D036D0] + 752);
  v8[2] = v2;
  v8[3] = v3;
  v7[4] = @"time_t";
  v8[4] = *(MEMORY[0x277D036D0] + 1720);
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = qword_27EE842A8;
  qword_27EE842A8 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void sub_247F939B4()
{
  v0 = os_log_create([@"com.apple.dt.Instruments" UTF8String], objc_msgSend(@"heartbeat", "UTF8String"));
  v1 = qword_27EE842B8;
  qword_27EE842B8 = v0;

  v4 = [objc_alloc(MEMORY[0x277D24458]) initWithName:@"com.apple.dt.Instruments"];
  if (v4)
  {
    v2 = [objc_alloc(MEMORY[0x277D24450]) initWithName:@"heartbeat" subsystem:v4];
    v3 = v2;
    if (v2)
    {
      [v2 setPersistedLevel:0];

      return;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_24802D194();
  }
}

void sub_247F93AAC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x247F93A80);
}

uint64_t sub_247F93AE0(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      sub_247F93BE0();
    }

    result = (*(*v4 + 48))(v4, *(a1 + 16));
    if (**(a1 + 16) != 4)
    {
      break;
    }

    result = (**a1)(a1);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t sub_247F93B74(uint64_t a1)
{
  do
  {
    do
    {
      result = sub_247F93F24(*(a1 + 16));
      v3 = **(a1 + 16);
    }

    while (v3 == 1);
    if (v3 != 4)
    {
      break;
    }

    result = (**a1)(a1);
  }

  while ((result & 1) != 0);
  return result;
}

void sub_247F93BE0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_247F93C9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A181F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_247F93CDC(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18268))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247F93D28()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_247F93D5C(uint64_t result, unsigned int a2)
{
  if (a2 != 255 && *(result + 66) > a2)
  {
    return sub_247F93D94(result, (a2 << 8) | 0x65, 0, 1);
  }

  *result = 5;
  return result;
}

uint64_t sub_247F93D94(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (*result != 5 || a2 == 100)
  {
    v4 = *(result + 16);
    if (v4 >= *(result + 24))
    {
      *(result + 72) = *result;
      *result = 4;
    }

    else
    {
      if (*(result + 8) > v4)
      {
        sub_24802D208();
      }

      *v4 = bswap32(a2) >> 16;
      *(result + 16) = v4 + 1;
      v5 = a4 - a3 + *(result + 66);
      if (v5 < 0)
      {
        sub_24802D1DC();
      }

      *(result + 66) = v5;
      *result = 3;
      if (a2 == 102)
      {
        *(result + 68) = BYTE1(a2);
      }

      else if (a2 == 100)
      {
        ++*(result + 64);
        *(result + 66) = 0;
        *(result + 68) = 0;
      }
    }
  }

  return result;
}

BOOL sub_247F93E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_247F93EA4(uint64_t a1)
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

uint64_t sub_247F93F24(uint64_t result)
{
  v1 = result;
  v2 = *result;
  if (*result == 4)
  {
    v2 = *(result + 72);
    *result = v2;
  }

  if (v2 <= 5)
  {
    v3 = 1 << v2;
    if ((v3 & 0xD) != 0)
    {
      *(result + 48) = 0;
      result = sub_247F940B4(result);
    }

    else if ((v3 & 0x30) != 0)
    {
      return result;
    }
  }

  v4 = *(v1 + 16);
  if (v4 >= *(v1 + 24))
  {
    *(v1 + 72) = *v1;
    *v1 = 4;
  }

  else
  {
    v6 = *(v1 + 32);
    v5 = *(v1 + 40);
    v7 = v5 - v6;
    v8 = *(v1 + 48);
    if (v8 >= 8 * (v5 - v6))
    {
      if (v5 != v6)
      {
        sub_24802D234();
      }

      v15 = *(v1 + 68);
      ++*(v1 + 66);
      *v1 = 2;
      if (*(v1 + 8) > v4)
      {
        sub_24802D208();
      }

      LOWORD(v16) = v15 | (v15 << 8) | 0xC000;
    }

    else
    {
      v9 = 8 * v7;
      __dst = 16843009 * *(v1 + 68);
      v10 = (v6 + (v8 >> 3));
      v11 = v7 - (v8 >> 3);
      if (v10 + 4 <= v5)
      {
        v12 = 4;
      }

      else
      {
        v12 = v11;
      }

      result = memcpy(&__dst, v10, v12);
      v13 = __dst;
      *(v1 + 48) = v8 + 14;
      if (v8 + 14 >= v9 || v8 + 14 >= *(v1 + 56))
      {
        *v1 = 2;
        ++*(v1 + 66);
        v14 = 49152;
      }

      else
      {
        *v1 = 1;
        v14 = 0x8000;
      }

      if (*(v1 + 8) > v4)
      {
        sub_24802D208();
      }

      v16 = v14 | (bswap32(v13) << (v8 & 7) >> 18);
    }

    *v4 = v16;
    *(v1 + 16) = v4 + 1;
  }

  return result;
}

uint64_t sub_247F940B4(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = (v1 + 1);
  if (&v2[-v1 - 1] < 0)
  {
    v6 = 8 * &v2[-v1];
  }

  else
  {
    v4 = *(result + 40);
    while (v4 != v3)
    {
      v5 = *--v4;
      if (v5 != *(result + 68))
      {
        goto LABEL_8;
      }
    }

    v4 = (v1 + 1);
LABEL_8:
    if (v4 != v3 || v4 == v2)
    {
      if (v4 != v2 && v4 + 1 != v2 && v4[1] != *(result + 68))
      {
        sub_24802D28C();
      }

      v6 = 8 * &v4[-v1] + 8;
    }

    else
    {
      if (v3 == v2)
      {
        sub_24802D260();
      }

      v7 = *(result + 48);
      if (((*v3 ^ *(result + 68)) & 3) != 0)
      {
        v6 = v7 + 16;
      }

      else
      {
        v6 = v7 + 14;
      }
    }
  }

  *(result + 56) = v6;
  return result;
}

uint64_t sub_247F94220(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A182E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F94308(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18368))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F943C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18388;
  a2[1] = v2;
  return result;
}

uint64_t sub_247F94404(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A183E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F94450(uint64_t result, unsigned int a2)
{
  if (a2 != 255 && *(result + 66) >= a2)
  {
    return sub_247F93D94(result, (a2 << 8) | 0x69, a2, 1);
  }

  *result = 5;
  return result;
}

uint64_t sub_247F944F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18408;
  a2[1] = v2;
  return result;
}

uint64_t sub_247F94534(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18468))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F94580(uint64_t a1, unsigned __int16 *a2)
{
  if (*a2 != *(a1 + 64))
  {
    sub_24802D040();
  }

  v3 = (*(a1 + 66) - a2[1]);

  return sub_247F93D94(a1, 0xFF69u, v3, 1);
}

uint64_t sub_247F94638(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18488;
  a2[1] = v2;
  return result;
}

uint64_t sub_247F94688(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A184E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F94770(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18568))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_247F94830(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285A18588;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_247F94884(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A185E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F9496C(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18668))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247F949B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_247F94A2C(result, a4);
  }

  return result;
}

void sub_247F94A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_247F94A2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_247F94A68(a1, a2);
  }

  sub_247F85814();
}

void sub_247F94A68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_247F93D28();
}

uint64_t sub_247F94AB0(uint64_t a1, const char **a2, unsigned int a3)
{
  v4 = *(a1 + 16);
  v10 = *(v4 + 64);
  if (!a3)
  {
    return sub_247F8D190(a1, &v10);
  }

  v6 = a3;
  while (1)
  {
    v7 = *a2;
    v8 = strnlen(*a2, 0xFFuLL);
    *(v4 + 32) = v7;
    *(v4 + 40) = &v7[v8 + 1];
    result = sub_247F93B74(a1);
    v4 = *(a1 + 16);
    if (*v4 != 2)
    {
      break;
    }

    ++a2;
    if (!--v6)
    {
      return sub_247F8D190(a1, &v10);
    }
  }

  return result;
}

uint64_t sub_247F94BBC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18688;
  a2[1] = v2;
  return result;
}

uint64_t sub_247F94C0C(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A186E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247F94C58(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277D24458]) initWithName:v5];
  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x277D24450]);
        v14 = [v13 initWithName:v12 subsystem:{v7, v18}];
        v15 = v14;
        if (!v14)
        {
          break;
        }

        if (*(a1 + 40) == 1)
        {
          v16 = *(a1 + 32);
          if (v16 == 1)
          {
            if ((*(a1 + 41) & 1) == 0)
            {
              [v14 setSignpostPersisted:1];
            }

            [v15 setSignpostEnabled:1];
          }

          else if (!v16)
          {
            if (![v14 enabledLevel])
            {
              [v15 setEnabledLevel:2];
            }

            if ((*(a1 + 41) & 1) == 0)
            {
              [v15 setPersistedLevel:4];
            }
          }
        }

        else
        {
          [v14 reset];
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247F94E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  sub_247F94EEC(a1, a2);
  *a1 = &unk_285A18708;
  objc_initWeak((a1 + 56), v5);

  return a1;
}

uint64_t sub_247F94EEC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285A18758;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_247F951C8((a1 + 32), 3uLL);
  return a1;
}

void sub_247F94F58(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_247F94F74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  WeakRetained[505] = 1;
  if (*(WeakRetained + 10) && (WeakRetained[509] & 1) == 0)
  {
    WeakRetained[509] = 1;
    v4 = [WeakRetained delegate];
    [v4 logLoaderNeedsFetchNow:v3];
  }

  while (v3[505] == 1)
  {
    if (v3[506] != 1)
    {
      goto LABEL_13;
    }

    if (*(v3 + 44))
    {
      [v3 _welcomeAgent:?];
      v5 = *(v3 + 44);
      *(v3 + 44) = 0;
    }

    pthread_cond_wait((v3 + 136), (v3 + 184));
  }

  if (**(a1 + 16) == 4)
  {
    if (*(v3 + 34) != *(v3 + 35))
    {
      __assert_rtn("replaceTape", "DTOSLogLoader.mm", 372, "loader->_encoder.outputTape().start == loader->_encoder.outputTape().head");
    }

    v3[509] = 0;
    v6 = 1;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  return v6;
}

uint64_t sub_247F950F8(uint64_t a1)
{
  objc_destroyWeak((a1 + 56));
  *a1 = &unk_285A18758;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_247F95150(uint64_t a1)
{
  objc_destroyWeak((a1 + 56));
  *a1 = &unk_285A18758;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1C2910);
}

void *sub_247F951C8(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_247F85814();
  }

  return result;
}

void *sub_247F95298(void *a1)
{
  *a1 = &unk_285A18758;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_247F952E8(void *a1)
{
  *a1 = &unk_285A18758;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1C2910);
}

uint64_t *sub_247F95358(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = *a2 ^ (2 * v3);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 ^ (2 * v3);
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == *a2 && *(result + 6) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_247F9541C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2 ^ (2 * v2);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2 ^ (2 * v2);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || *(v8 + 6) != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_247F9567C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_247F9576C(a1, prime);
    }
  }
}

void sub_247F9576C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_247F93D28();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_247F958D0(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_247F95934(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_247F95990(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_247F95990(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_247F959DC(uint64_t a1)
{
  sub_247F95990(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id DTUVServiceError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = &stru_285A19CB8;
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277CCA450];
  v20[0] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = [v14 errorWithDomain:@"com.apple.dt.ultraviolet.service" code:0 userInfo:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id DTUVServiceErrorWithUnderlying(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = a1;
  v13 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v14 = &stru_285A19CB8;
  if (v13)
  {
    v14 = v13;
  }

  v15 = v14;

  v16 = MEMORY[0x277CCA9B8];
  v17 = *MEMORY[0x277CCA7E8];
  v22[0] = *MEMORY[0x277CCA450];
  v22[1] = v17;
  v23[0] = v15;
  v23[1] = v12;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v19 = [v16 errorWithDomain:@"com.apple.dt.ultraviolet.service" code:0 userInfo:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id DTUVRenderingServiceErrorWithDescription(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = &stru_285A19CB8;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = MEMORY[0x277CCA9B8];
  v20 = *MEMORY[0x277CCA450];
  v21[0] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [v15 errorWithDomain:@"com.apple.dt.ultraviolet.service" code:a1 userInfo:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void sub_247F9609C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_247F960DC(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138543362;
    v5 = objc_opt_class();
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Connection to daemon interrupted", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_247F96190(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Connection to daemon invalidated", &v5, 0xCu);
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _disconnectServiceConnection];

  v4 = *MEMORY[0x277D85DE8];
}

void sub_247F96258(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] DTX channel disconnected.", &v5, 0xCu);
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _disconnectServiceConnection];

  v4 = *MEMORY[0x277D85DE8];
}

void sub_247F96B04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancel];
  v5 = *(a1 + 40);
  v6 = [v4 error];

  (*(v5 + 16))(v5, v6);
}

void sub_247F970F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F97110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F97128(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[5];
      v16 = 138543874;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v4;
      v8 = MEMORY[0x277D86220];
      v9 = "[%{public}@] Failed to buy product using purchase configuration for %{public}@: %{public}@";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_247F67000, v8, v10, v9, &v16, v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = objc_opt_class();
    v14 = a1[5];
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v8 = MEMORY[0x277D86220];
    v9 = "[%{public}@] Successfully bought product using purchase configuration for %{public}@";
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 22;
    goto LABEL_6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_247F97464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F9747C(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[5];
      v8 = a1[6];
      v18 = 138544130;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v4;
      v9 = MEMORY[0x277D86220];
      v10 = "[%{public}@] Failed to add purchase intent for product with ID %{public}@ for %{public}@: %{public}@";
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 42;
LABEL_6:
      _os_log_impl(&dword_247F67000, v9, v11, v10, &v18, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[4];
    v14 = objc_opt_class();
    v15 = a1[5];
    v16 = a1[6];
    v18 = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v9 = MEMORY[0x277D86220];
    v10 = "[%{public}@] Successfully added purchase intent for product with ID %{public}@ for %{public}@";
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 32;
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_247F977A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F977C4(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[7];
      v8 = a1[5];
      v18 = 138544130;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v4;
      v9 = MEMORY[0x277D86220];
      v10 = "[%{public}@] Failed to change auto-renew status for transaction with ID %lu for %{public}@: %{public}@";
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 42;
LABEL_6:
      _os_log_impl(&dword_247F67000, v9, v11, v10, &v18, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[4];
    v14 = objc_opt_class();
    v15 = a1[7];
    v16 = a1[5];
    v18 = 138543874;
    v19 = v14;
    v20 = 2048;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v9 = MEMORY[0x277D86220];
    v10 = "[%{public}@] Successfully changed auto-renew status for transaction with ID %lu for %{public}@";
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 32;
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_247F97AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F97B1C(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[7];
      v8 = a1[5];
      v18 = 138544130;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v4;
      v9 = MEMORY[0x277D86220];
      v10 = "[%{public}@] Failed to complete Ask to Buy transaction with ID %lu for %{public}@: %{public}@";
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 42;
LABEL_6:
      _os_log_impl(&dword_247F67000, v9, v11, v10, &v18, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[4];
    v14 = objc_opt_class();
    v15 = a1[7];
    v16 = a1[5];
    v18 = 138543874;
    v19 = v14;
    v20 = 2048;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v9 = MEMORY[0x277D86220];
    v10 = "[%{public}@] Successfully completed Ask to Buy transaction with ID %lu for %{public}@";
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 32;
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_247F97E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F97E20(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[5];
      v16 = 138543874;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v4;
      v8 = MEMORY[0x277D86220];
      v9 = "[%{public}@] Failed to delete all transactions for %{public}@: %{public}@";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_247F67000, v8, v10, v9, &v16, v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = objc_opt_class();
    v14 = a1[5];
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v8 = MEMORY[0x277D86220];
    v9 = "[%{public}@] Successfully deleted all transactions for %{public}@";
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 22;
    goto LABEL_6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_247F98168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_247F98190(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = a1[5];
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v6;
      v11 = MEMORY[0x277D86220];
      v12 = "[%{public}@] Failed to fetch transaction data for %{public}@: %{public}@";
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_247F67000, v11, v13, v12, &v19, v14);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[4];
    v16 = objc_opt_class();
    v17 = a1[5];
    v19 = 138543618;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v11 = MEMORY[0x277D86220];
    v12 = "[%{public}@] Successfully fetched transaction data for %{public}@";
    v13 = OS_LOG_TYPE_DEBUG;
    v14 = 22;
    goto LABEL_6;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_247F98488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F984A0(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[5];
      v16 = 138543874;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v4;
      v8 = MEMORY[0x277D86220];
      v9 = "[%{public}@] Failed to remove configuration file for %{public}@: %{public}@";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
LABEL_6:
      _os_log_impl(&dword_247F67000, v8, v10, v9, &v16, v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = objc_opt_class();
    v14 = a1[5];
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v8 = MEMORY[0x277D86220];
    v9 = "[%{public}@] Successfully removed configuration file for %{public}@";
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 22;
    goto LABEL_6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_247F988C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F98C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F98FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_247F9900C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_247F99348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F99370(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = a1[7];
      v8 = a1[8];
      v9 = a1[5];
      v20 = 138544386;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      v28 = 2114;
      v29 = v4;
      v10 = MEMORY[0x277D86220];
      v11 = "[%{public}@] Failed to perform action %ld with transaction %lu for %{public}@: %{public}@";
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 52;
LABEL_6:
      _os_log_impl(&dword_247F67000, v10, v12, v11, &v20, v13);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[4];
    v15 = objc_opt_class();
    v16 = a1[7];
    v17 = a1[8];
    v18 = a1[5];
    v20 = 138544130;
    v21 = v15;
    v22 = 2048;
    v23 = v16;
    v24 = 2048;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v10 = MEMORY[0x277D86220];
    v11 = "[%{public}@] Successfully performed action %ld with transaction %lu for %{public}@";
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 42;
    goto LABEL_6;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_247F996E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_247F99710(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = a1[5];
      v19 = 138543874;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v6;
      v11 = MEMORY[0x277D86220];
      v12 = "[%{public}@] Failed to start observing transaction for %{public}@: %{public}@";
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_247F67000, v11, v13, v12, &v19, v14);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[4];
    v16 = objc_opt_class();
    v17 = a1[5];
    v19 = 138543618;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v11 = MEMORY[0x277D86220];
    v12 = "[%{public}@] Successfully started observing transactions for %{public}@";
    v13 = OS_LOG_TYPE_DEBUG;
    v14 = 22;
    goto LABEL_6;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_247F99A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_247F99A7C(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v7;
      v9 = MEMORY[0x277D86220];
      v10 = "[%{public}@] Failed to discover StoreKit testing apps: %{public}@";
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_247F67000, v9, v11, v10, &v15, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[4];
    v15 = 138543362;
    v16 = objc_opt_class();
    v9 = MEMORY[0x277D86220];
    v10 = "[%{public}@] Successfully discovered StoreKit testing apps";
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 12;
    goto LABEL_6;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_247F9A138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F9A150(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Received error trying to fetch proxy: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_247F9A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F9A540(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v13 intValue];
      if (*(a1 + 40) < v7)
      {
        v8 = v7;
        v9 = *(*(a1 + 32) + 8);
        v12 = *(v9 + 40);
        v10 = (v9 + 40);
        v11 = v12;
        if (v12)
        {
          if (v8 >= [v11 intValue])
          {
            goto LABEL_8;
          }

          v10 = (*(*(a1 + 32) + 8) + 40);
        }

        objc_storeStrong(v10, a2);
      }
    }
  }

LABEL_8:
}

void sub_247F9AE44(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) statusHandler];
  v2 = [*(a1 + 40) status];
  v3 = [*(a1 + 40) timestamp];
  v4 = [*(a1 + 40) notice];
  v5 = [*(a1 + 40) info];
  v6[2](v6, v2, v3, v4, v5);
}

void sub_247F9AEFC(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) statusHandler];
  v2 = [*(a1 + 40) status];
  v3 = [*(a1 + 40) timestamp];
  v4 = [*(a1 + 40) notice];
  v5 = [*(a1 + 40) info];
  v6[2](v6, v2, v3, v4, v5);
}

void sub_247F9AFB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) bulkDataReceiver];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  if (v2)
  {
    v8 = [*(v3 + 24) bulkDataReceiver];
    [v6 sendDataMemo:v4 toBulkReceiver:v8];
  }

  else
  {
    v7 = *(v3 + 32);

    MEMORY[0x2821F9670](v7, sel_sendDataMemo_toClientUsingConfig_);
  }
}

void sub_247F9B068(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) bulkDataReceiver];

  v3 = *(a1 + 32);
  if (v2)
  {
    v7 = [*(v3 + 24) bulkDataReceiver];
    [v7 sendHeartbeatTime:{objc_msgSend(*(a1 + 40), "timestamp")}];
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = *(v3 + 24);
    v5 = *(v3 + 32);

    MEMORY[0x2821F9670](v5, sel_sendHeartbeatMemo_toClientUsingConfig_);
  }
}

void sub_247F9B238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F9B250(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = [a2 kdebugFilter];
    *(*(*(a1 + 32) + 8) + 24) = [v5 containsClass:3 subclassID:1];
  }
}

BOOL DTFillDefaultKDebugBacktraceFilter()
{
  v0 = 0;
  v1 = 0;
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = *(&unk_24803D798 + v0);
    v5 = kperf_kdebug_filter_add_class();
    v2 = 0;
    v1 |= v5;
    v0 = 1;
  }

  while ((v3 & 1) != 0);
  for (i = 0; i != 8; ++i)
  {
    v7 = dword_24803D7A0[i];
    v1 |= kperf_kdebug_filter_add_class_subclass();
  }

  for (j = 0; j != 6; ++j)
  {
    v9 = dword_24803D7C0[j];
    v1 |= kperf_kdebug_filter_add_class_subclass_fn();
  }

  return v1 == 0;
}

BOOL DTKDebugFilterMatchesEvent(uint64_t a1, int a2)
{
  if (a1 && (n_filters = kperf_kdebug_filter_get_n_filters()) != 0)
  {
    v4 = n_filters;
    v5 = 0;
    v6 = 1;
    do
    {
      kperf_kdebug_filter_get_filter();
      if ((a2 & 0xFF000000) == 0)
      {
        break;
      }

      v6 = ++v5 < v4;
    }

    while (v4 != v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

id sub_247F9BFF8()
{
  if (qword_27EE842D0 != -1)
  {
    sub_24802D500();
  }

  v1 = qword_27EE842C8;

  return v1;
}

uint64_t sub_247F9C03C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_247F9BFF8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_INFO, "releasing assertion for pid %d", v6, 8u);
  }

  result = [*(a1 + 32) invalidate];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247F9C0EC()
{
  v0 = os_log_create("com.apple.dt.Instruments", "RBSAssertion");
  v1 = qword_27EE842C8;
  qword_27EE842C8 = v0;
}

uint64_t sub_247F9D3B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247F9D3CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_247F9D8B4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  v5 = *(a1[4] + 24);
  v6 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v6, v5);
}

void sub_247F9DA28(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 24);

  objc_storeStrong(v3, v2);
}

uint64_t sub_247F9DDC4(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  *(*(result + 32) + 12) = *(*(result + 32) + 12) & 0xFFFD | v1;
  return result;
}

uint64_t sub_247F9DF80(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = 0;
  }

  else
  {
    v1 = 4;
  }

  *(*(result + 32) + 12) = *(*(result + 32) + 12) & 0xFFFB | v1;
  return result;
}

void sub_247F9E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247F9E1C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 272) != v1)
  {
    objc_storeStrong((v2 + 272), v1);
  }
}

void sub_247F9E408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247F9E42C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = socket(a2, 1, 0);
  v7 = v6;
  if (v6 == -1)
  {
    v9 = [*(a1 + 32) errnoErrorWithReason:@"Error in socket() function"];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    goto LABEL_15;
  }

  if (fcntl(v6, 4, 4) == -1)
  {
    v12 = *(a1 + 32);
    v8 = @"Error enabling non-blocking IO on socket (fcntl)";
LABEL_14:
    v13 = [v12 errnoErrorWithReason:v8];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    close(v7);
    v7 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  if (fcntl(v7, 2, 0x1000000) == -1)
  {
    v12 = *(a1 + 32);
    v8 = @"Error enabling close-on-exec on socket (fcntl)";
    goto LABEL_14;
  }

  v17 = 1;
  if (setsockopt(v7, 0xFFFF, 4, &v17, 4u) == -1)
  {
    v8 = @"Error enabling address reuse (setsockopt)";
    goto LABEL_13;
  }

  if (bind(v7, [v5 bytes], objc_msgSend(v5, "length")) == -1)
  {
    v8 = @"Error in bind() function";
    goto LABEL_13;
  }

  if (listen(v7, 1024) == -1)
  {
    v8 = @"Error in listen() function";
LABEL_13:
    v12 = *(a1 + 32);
    goto LABEL_14;
  }

LABEL_15:

  return v7;
}

void sub_247F9E5C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));

  v4 = *(a1 + 32);
  if (!WeakRetained)
  {
    v6 = @"Attempting to accept without a delegate. Set a delegate first.";
    goto LABEL_11;
  }

  if (!*(v4 + 24))
  {
    v6 = @"Attempting to accept without a delegate queue. Set a delegate queue first.";
    goto LABEL_11;
  }

  v5 = *(v4 + 12);
  if ((~v5 & 3) != 0)
  {
    v7 = [v4 isDisconnected];
    v4 = *(a1 + 32);
    if ((v7 & 1) == 0)
    {
      v6 = @"Attempting to accept while connected or accepting connections. Disconnect first.";
      goto LABEL_11;
    }

    [*(v4 + 128) removeAllObjects];
    [*(*(a1 + 32) + 136) removeAllObjects];
    v54 = 0;
    v55 = 0;
    [*(a1 + 32) getInterfaceAddress4:&v55 address6:&v54 fromDescription:*(a1 + 40) port:*(a1 + 72)];
    v8 = v55;
    v9 = v54;
    v10 = v9;
    if (!(v8 | v9))
    {
      v11 = *(a1 + 32);
      v12 = @"Unknown interface. Specify valid interface by name (e.g. en1) or IP address.";
LABEL_19:
      v16 = [v11 badParamError:v12];
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

LABEL_20:
      goto LABEL_12;
    }

    if ((v5 & 1) != 0 && !v9)
    {
      v11 = *(a1 + 32);
      v12 = @"IPv4 has been disabled and specified interface doesn't support IPv6.";
      goto LABEL_19;
    }

    if ((v5 & 2) != 0 && !v8)
    {
      v11 = *(a1 + 32);
      v12 = @"IPv6 has been disabled and specified interface doesn't support IPv4.";
      goto LABEL_19;
    }

    if (v9)
    {
      v19 = (v5 & 2) != 0;
    }

    else
    {
      v19 = 1;
    }

    if (v5 & 1 | (v8 == 0))
    {
      if (v19)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(*(a1 + 32) + 32) = (*(*(a1 + 48) + 16))();
      v20 = *(a1 + 32);
      v21 = *(v20 + 32);
      if (v21 == -1)
      {
        goto LABEL_20;
      }

      if (v19)
      {
        goto LABEL_34;
      }

      if (!*(a1 + 72))
      {
        *([v10 mutableBytes] + 2) = __rev16(objc_msgSend(*(a1 + 32), "localPort4"));
      }
    }

    *(*(a1 + 32) + 36) = (*(*(a1 + 48) + 16))();
    v20 = *(a1 + 32);
    if (*(v20 + 36) == -1)
    {
      v40 = *(v20 + 32);
      if (v40 != -1)
      {
        close(v40);
      }

      goto LABEL_20;
    }

    if (v5 & 1 | (v8 == 0))
    {
LABEL_35:
      v31 = dispatch_source_create(MEMORY[0x277D85D28], *(v20 + 36), 0, *(v20 + 64));
      v32 = *(a1 + 32);
      v33 = *(v32 + 80);
      *(v32 + 80) = v31;

      v34 = *(a1 + 32);
      v35 = *(v34 + 36);
      v36 = *(v34 + 80);
      objc_initWeak(&location, *(a1 + 32));
      v37 = *(*(a1 + 32) + 80);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_247F9EB58;
      v43[3] = &unk_278EF2800;
      objc_copyWeak(&v45, &location);
      v44 = v36;
      v46 = v35;
      v38 = v36;
      dispatch_source_set_event_handler(v37, v43);
      v39 = *(*(a1 + 32) + 80);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_247F9EBE4;
      v41[3] = &unk_278EF2820;
      v42 = v35;
      dispatch_source_set_cancel_handler(v39, v41);
      dispatch_resume(*(*(a1 + 32) + 80));

      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);
LABEL_36:
      v20 = *(a1 + 32);
      goto LABEL_37;
    }

    v21 = *(v20 + 32);
LABEL_34:
    v22 = dispatch_source_create(MEMORY[0x277D85D28], v21, 0, *(v20 + 64));
    v23 = *(a1 + 32);
    v24 = *(v23 + 72);
    *(v23 + 72) = v22;

    v25 = *(a1 + 32);
    v26 = *(v25 + 32);
    v27 = *(v25 + 72);
    objc_initWeak(&location, *(a1 + 32));
    v28 = *(*(a1 + 32) + 72);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_247F9EAC4;
    handler[3] = &unk_278EF2800;
    objc_copyWeak(&v51, &location);
    v50 = v27;
    v52 = v26;
    v29 = v27;
    dispatch_source_set_event_handler(v28, handler);
    v30 = *(*(a1 + 32) + 72);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_247F9EB50;
    v47[3] = &unk_278EF2820;
    v48 = v26;
    dispatch_source_set_cancel_handler(v30, v47);
    dispatch_resume(*(*(a1 + 32) + 72));

    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
    v20 = *(a1 + 32);
    if (v19)
    {
LABEL_37:
      *(v20 + 8) |= 1u;
      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_20;
    }

    goto LABEL_35;
  }

  v6 = @"Both IPv4 and IPv6 have been disabled. Must enable at least one protocol first.";
LABEL_11:
  v13 = [v4 badConfigError:v6];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_12:
  objc_autoreleasePoolPop(v2);
}

void sub_247F9EAC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    data = dispatch_source_get_data(*(a1 + 32));
    v5 = 1;
    do
    {
      if ([WeakRetained doAccept:*(a1 + 48)])
      {
        v6 = v5 >= data;
      }

      else
      {
        v6 = 1;
      }

      ++v5;
    }

    while (!v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247F9EB58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    data = dispatch_source_get_data(*(a1 + 32));
    v5 = 1;
    do
    {
      if ([WeakRetained doAccept:*(a1 + 48)])
      {
        v6 = v5 >= data;
      }

      else
      {
        v6 = 1;
      }

      ++v5;
    }

    while (!v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247F9EDB0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) newSocketQueueForConnectionFromAddress:*(a1 + 40) onSocket:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  v5 = [[_DT_GCDAsyncSocket alloc] initWithDelegate:*(a1 + 32) delegateQueue:*(*(a1 + 48) + 24) socketQueue:v4];
  v6 = 36;
  if (*(a1 + 60))
  {
    v6 = 32;
  }

  *(&v5->super.isa + v6) = *(a1 + 56);
  v5->flags = 3;
  socketQueue = v5->socketQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_247F9EF04;
  v13 = &unk_278EF1260;
  v8 = v5;
  v14 = v8;
  v15 = *(a1 + 56);
  dispatch_async(socketQueue, &v10);
  v9 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) socket:*(a1 + 48) didAcceptNewSocket:{v8, v10, v11, v12, v13}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247F9EF04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setupReadAndWriteSourcesForNewlyConnectedSocket:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247F9F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_247F9F340(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) length];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 56) + 8);
    v22 = *(v6 + 40);
    v7 = [v4 preConnectWithInterface:v5 error:&v22];
    objc_storeStrong((v6 + 40), v22);
    if (v7)
    {
      *(*(a1 + 40) + 8) |= 1u;
      v8 = [*(a1 + 32) copy];
      v9 = *(a1 + 40);
      v10 = v9[10];
      objc_initWeak(&location, v9);
      v11 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247F9F4FC;
      block[3] = &unk_278EF28E8;
      v12 = v8;
      v17 = v12;
      v20 = *(a1 + 80);
      objc_copyWeak(&v18, &location);
      v19 = v10;
      dispatch_async(v11, block);
      [*(a1 + 40) startConnectTimeout:*(a1 + 72)];
      *(*(*(a1 + 64) + 8) + 24) = 1;
      objc_destroyWeak(&v18);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v13 = [v4 badParamError:@"Invalid host parameter (nil or "];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247F9F4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247F9F4FC(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 52);
  v39 = 0;
  v5 = [_DT_GCDAsyncSocket lookupHost:v3 port:v4 error:&v39];
  v6 = v39;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  if (v6)
  {
    v9 = WeakRetained[8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F9F7CC;
    block[3] = &unk_278EF2898;
    v36 = WeakRetained;
    v38 = *(a1 + 48);
    v37 = v6;
    dispatch_async(v9, block);

    v10 = v36;
    goto LABEL_22;
  }

  v24 = v5;
  v25 = v2;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v12)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = 0;
  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v31 + 1) + 8 * i);
      if (!v14 && [_DT_GCDAsyncSocket isIPv4Address:*(*(&v31 + 1) + 8 * i)])
      {
        v14 = v18;
LABEL_15:
        v19 = v18;
        continue;
      }

      if (v15)
      {
        continue;
      }

      if ([_DT_GCDAsyncSocket isIPv6Address:v18])
      {
        v15 = v18;
        goto LABEL_15;
      }

      v15 = 0;
    }

    v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
  }

  while (v13);
LABEL_21:

  v20 = v8[8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_247F9F814;
  v26[3] = &unk_278EF28C0;
  v21 = v8;
  v30 = *(a1 + 48);
  v27 = v21;
  v28 = v14;
  v29 = v15;
  v22 = v15;
  v10 = v14;
  dispatch_async(v20, v26);

  v5 = v24;
  v2 = v25;
  v6 = 0;
LABEL_22:

LABEL_23:
  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_247F9F7CC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) lookup:*(a1 + 48) didFail:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247F9F814(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) lookup:*(a1 + 56) didSucceedWithAddress4:*(a1 + 40) address6:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_247F9FA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_247F9FA88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) length] >= 0x10)
  {
    v3 = *([*(a1 + 32) bytes] + 1);
    if (v3 == 30)
    {
      if ([*(a1 + 32) length] == 28)
      {
        v6 = 0;
        v5 = *(a1 + 32);
        v4 = v5;
        goto LABEL_8;
      }
    }

    else if (v3 == 2 && [*(a1 + 32) length] == 16)
    {
      v4 = 0;
      v5 = *(a1 + 32);
      v6 = v5;
LABEL_8:
      v7 = v5;
      goto LABEL_10;
    }
  }

  v4 = 0;
  v6 = 0;
LABEL_10:
  v8 = *(a1 + 40);
  if (!(v6 | v4))
  {
    v9 = @"A valid IPv4 or IPv6 address was not given";
LABEL_18:
    v11 = [v8 badParamError:v9];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    goto LABEL_19;
  }

  v10 = v8[6];
  if (v6 && (v10 & 1) != 0)
  {
    v9 = @"IPv4 has been disabled and an IPv4 address was passed.";
    goto LABEL_18;
  }

  if ((v10 & 2) != 0 && v4)
  {
    v9 = @"IPv6 has been disabled and an IPv6 address was passed.";
    goto LABEL_18;
  }

  v14 = *(a1 + 48);
  v15 = *(*(a1 + 56) + 8);
  obj = *(v15 + 40);
  v16 = [v8 preConnectWithInterface:v14 error:&obj];
  objc_storeStrong((v15 + 40), obj);
  if (v16)
  {
    v17 = *(a1 + 40);
    v18 = *(*(a1 + 56) + 8);
    v20 = *(v18 + 40);
    v19 = [v17 connectWithAddress4:v6 address6:v4 error:&v20];
    objc_storeStrong((v18 + 40), v20);
    if (v19)
    {
      *(*(a1 + 40) + 8) |= 1u;
      [*(a1 + 40) startConnectTimeout:*(a1 + 72)];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0074(uint64_t a1)
{
  v2 = connect(*(a1 + 48), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v2)
    {
      v5 = [WeakRetained errnoErrorWithReason:@"Error in connect() function"];
      v6 = v4[8];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FA0238;
      block[3] = &unk_278EF2898;
      v7 = v4;
      v13 = *(a1 + 52);
      v11 = v7;
      v12 = v5;
      v8 = v5;
      dispatch_async(v6, block);
    }

    else
    {
      v9 = WeakRetained[8];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_247FA01F0;
      v14[3] = &unk_278EF1260;
      v15 = WeakRetained;
      v16 = *(a1 + 52);
      dispatch_async(v9, v14);
      v8 = v15;
    }
  }
}

void sub_247FA01F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) didConnect:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0238(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) didNotConnect:*(a1 + 48) error:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0530(uint64_t a1)
{
  v2 = [*(a1 + 32) createReadAndWriteStream];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([*(a1 + 32) registerForStreamCallbacksIncludingReadWrite:0])
    {
      return;
    }

    v6 = *(a1 + 32);
    v4 = [v6 otherError:@"Error in CFStreamSetClient"];
    v5 = v6;
  }

  else
  {
    v4 = [*(a1 + 32) otherError:@"Error creating CFStreams"];
    v5 = v3;
  }

  v7 = v4;
  [v5 closeWithError:?];
}

void sub_247FA05E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == v3[10])
  {
    v4 = [v3 addStreamsToRunLoop];
    v5 = *(a1 + 32);
    if (v4)
    {
      if ([*(a1 + 32) openStreams])
      {
        return;
      }

      v8 = *(a1 + 32);
      v6 = [v8 otherError:@"Error creating CFStreams"];
      v7 = v8;
    }

    else
    {
      v6 = [*(a1 + 32) otherError:@"Error in CFStreamScheduleWithRunLoop"];
      v7 = v5;
    }

    v9 = v6;
    [v7 closeWithError:?];
  }
}

void sub_247FA06A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) didConnectToHost:*(a1 + 48) port:*(a1 + 64)];
  v3 = *(*(a1 + 40) + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA0760;
  block[3] = &unk_278EF1C50;
  v5 = *(a1 + 56);
  dispatch_async(v3, block);

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0760(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0950(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained doConnectTimeout];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0D54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socketDidDisconnect:*(a1 + 40) withError:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0E48(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[8])
  {
    [v3 closeWithError:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0F0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    *(v3 + 8) = v4 | 0x24;
    [*(a1 + 32) maybeClose];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA0FDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    *(v3 + 8) = v4 | 0x44;
    [*(a1 + 32) maybeClose];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA10AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    *(v3 + 8) = v4 | 0x64;
    [*(a1 + 32) maybeClose];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA1AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FA1BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FA1D24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[8] == -1)
  {
    if (v3[9] == -1)
    {
      goto LABEL_6;
    }

    v4 = [v3 connectedHostFromSocket6:?];
  }

  else
  {
    v4 = [v3 connectedHostFromSocket4:?];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

LABEL_6:

  objc_autoreleasePoolPop(v2);
}

_DWORD *sub_247FA1EC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == -1)
  {
    if (result[9] == -1)
    {
      return result;
    }

    result = [result connectedPortFromSocket6:?];
  }

  else
  {
    result = [result connectedPortFromSocket4:?];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_247FA2058(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[8] == -1)
  {
    if (v3[9] == -1)
    {
      goto LABEL_6;
    }

    v4 = [v3 localHostFromSocket6:?];
  }

  else
  {
    v4 = [v3 localHostFromSocket4:?];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

LABEL_6:

  objc_autoreleasePoolPop(v2);
}

_DWORD *sub_247FA21F8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == -1)
  {
    if (result[9] == -1)
    {
      return result;
    }

    result = [result localPortFromSocket6:?];
  }

  else
  {
    result = [result localPortFromSocket4:?];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_247FA293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FA2954(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3 != -1)
  {
    *&v15.sa_len = 0;
    *&v15.sa_data[6] = 0;
    v14 = 16;
    if (!getpeername(v3, &v15, &v14))
    {
      v4 = objc_alloc(MEMORY[0x277CBEA90]);
      v5 = [v4 initWithBytes:&v15 length:v14];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    v2 = *(a1 + 32);
  }

  v8 = *(v2 + 36);
  if (v8 != -1)
  {
    *&v15.sa_len = 0;
    *&v15.sa_data[6] = 0;
    v17 = 0;
    v16 = 0;
    v14 = 28;
    if (!getpeername(v8, &v15, &v14))
    {
      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      v10 = [v9 initWithBytes:&v15 length:v14];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_247FA2B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FA2B98(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3 != -1)
  {
    *&v15.sa_len = 0;
    *&v15.sa_data[6] = 0;
    v14 = 16;
    if (!getsockname(v3, &v15, &v14))
    {
      v4 = objc_alloc(MEMORY[0x277CBEA90]);
      v5 = [v4 initWithBytes:&v15 length:v14];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    v2 = *(a1 + 32);
  }

  v8 = *(v2 + 36);
  if (v8 != -1)
  {
    *&v15.sa_len = 0;
    *&v15.sa_data[6] = 0;
    v17 = 0;
    v16 = 0;
    v14 = 28;
    if (!getsockname(v8, &v15, &v14))
    {
      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      v10 = [v9 initWithBytes:&v15 length:v14];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_247FA356C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    data = dispatch_source_get_data(*(WeakRetained + 12));
    v4[20] = data;
    if (data)
    {
      [v4 doReadData];
    }

    else
    {
      [v4 doReadEOF];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA35E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[2] |= 0x80u;
    [WeakRetained doWriteData];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_247FA3644(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24) - 1;
  *(v1 + 24) = v2;
  if (!v2)
  {
    return close(*(result + 40));
  }

  return result;
}

uint64_t sub_247FA3668(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24) - 1;
  *(v1 + 24) = v2;
  if (!v2)
  {
    return close(*(result + 40));
  }

  return result;
}

void sub_247FA38DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 8) & 5) == 1)
  {
    [*(v3 + 128) addObject:*(a1 + 40)];
    [*(a1 + 32) maybeDequeueRead];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA3A5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 8) & 5) == 1)
  {
    [*(v3 + 128) addObject:*(a1 + 40)];
    [*(a1 + 32) maybeDequeueRead];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA3C2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 8) & 5) == 1)
  {
    [*(v3 + 128) addObject:*(a1 + 40)];
    [*(a1 + 32) maybeDequeueRead];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_247FA3D98(uint64_t result)
{
  v1 = result;
  if (*(*(result + 32) + 144) && (objc_opt_class(), result = objc_opt_isKindOfClass(), (result & 1) != 0))
  {
    v2 = *(v1[4] + 144);
    v3 = v2[3];
    v4 = v2[6];
    v5 = v1[6];
    if (v5)
    {
      *v5 = v2[10];
    }

    v6 = v1[7];
    if (v6)
    {
      *v6 = v3;
    }

    v7 = v1[8];
    if (v7)
    {
      *v7 = v4;
    }

    if (v4)
    {
      v8 = v3 / v4;
    }

    else
    {
      v8 = 1.0;
    }
  }

  else
  {
    v9 = v1[6];
    if (v9)
    {
      *v9 = 0;
    }

    v10 = v1[7];
    if (v10)
    {
      *v10 = 0;
    }

    v11 = v1[8];
    if (v11)
    {
      *v11 = 0;
    }

    v8 = NAN;
  }

  *(*(v1[5] + 8) + 24) = v8;
  return result;
}

void sub_247FA419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FA41C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(*(*(a1 + 40) + 8) + 24) = [*(v2 + 240) availableBytes] + v3;
  bufferSize = 0;
  result = SSLGetBufferedReadSize(*(*(a1 + 32) + 232), &bufferSize);
  *(*(*(a1 + 40) + 8) + 24) += bufferSize;
  return result;
}

void sub_247FA4B9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) didReadPartialDataOfLength:*(a1 + 48) tag:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA4DDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socketDidCloseReadStream:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA4FD4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) didReadData:*(a1 + 48) withTag:*(*(a1 + 56) + 80)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA518C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained doReadTimeout];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA52E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) shouldTimeoutReadWithTag:*(*(a1 + 48) + 80) elapsed:*(*(a1 + 48) + 24) bytesDone:*(*(a1 + 48) + 40)];
  v3 = *(a1 + 40);
  v4 = *(v3 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FA5390;
  v6[3] = &unk_278EF13C0;
  v6[4] = v3;
  v6[5] = v5;
  dispatch_async(v4, v6);
  objc_autoreleasePoolPop(v2);
}

void sub_247FA5390(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) doReadTimeoutWithExtension:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA5594(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 8) & 5) == 1)
  {
    [*(v3 + 136) addObject:*(a1 + 40)];
    [*(a1 + 32) maybeDequeueWrite];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_247FA5700(uint64_t result)
{
  v1 = result;
  if (*(*(result + 32) + 152) && (objc_opt_class(), result = objc_opt_isKindOfClass(), (result & 1) != 0))
  {
    v2 = *(v1[4] + 152);
    v3 = *(v2 + 16);
    result = [*(v2 + 8) length];
    v4 = v1[6];
    if (v4)
    {
      *v4 = *(*(v1[4] + 152) + 24);
    }

    v5 = v1[7];
    if (v5)
    {
      *v5 = v3;
    }

    v6 = v1[8];
    if (v6)
    {
      *v6 = result;
    }

    v7 = v3 / result;
  }

  else
  {
    v8 = v1[6];
    if (v8)
    {
      *v8 = 0;
    }

    v9 = v1[7];
    if (v9)
    {
      *v9 = 0;
    }

    v10 = v1[8];
    if (v10)
    {
      *v10 = 0;
    }

    v7 = NAN;
  }

  *(*(v1[5] + 8) + 24) = v7;
  return result;
}

void sub_247FA5DE0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) maybeDequeueWrite];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA5E24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) didWritePartialDataOfLength:*(a1 + 48) tag:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA5F58(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) didWriteDataWithTag:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA610C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained doWriteTimeout];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA6264(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) shouldTimeoutWriteWithTag:*(*(a1 + 48) + 24) elapsed:*(*(a1 + 48) + 16) bytesDone:*(*(a1 + 48) + 32)];
  v3 = *(a1 + 40);
  v4 = *(v3 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FA630C;
  v6[3] = &unk_278EF13C0;
  v6[4] = v3;
  v6[5] = v5;
  dispatch_async(v4, v6);
  objc_autoreleasePoolPop(v2);
}

void sub_247FA630C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) doWriteTimeoutWithExtension:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA6508(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 8) & 0x405) == 1)
  {
    [*(v3 + 128) addObject:*(a1 + 40)];
    [*(*(a1 + 32) + 136) addObject:*(a1 + 40)];
    *(*(a1 + 32) + 8) |= 0x400u;
    [*(a1 + 32) maybeDequeueRead];
    [*(a1 + 32) maybeDequeueWrite];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_247FA73D0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!dispatch_get_specific(v5[33]))
  {
    sub_24802DFC4();
  }

  v6 = [v5 sslReadWithBuffer:a2 length:a3];

  return v6;
}

uint64_t sub_247FA7434(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!dispatch_get_specific(v5[33]))
  {
    sub_24802E050();
  }

  v6 = [v5 sslWriteWithBuffer:a2 length:a3];

  return v6;
}

void sub_247FA7800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_247FA7834(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socketDidSecure:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA7878(uint64_t a1, char a2)
{
  v4 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA793C;
  block[3] = &unk_278EF2A78;
  v5 = *(a1 + 32);
  block[4] = *(a1 + 40);
  objc_copyWeak(&v7, (a1 + 48));
  v9 = a2;
  v8 = *(a1 + 56);
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);
  objc_autoreleasePoolPop(v4);
}

void sub_247FA793C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained ssl_shouldTrustPeer:*(a1 + 52) stateIndex:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA79C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socket:*(a1 + 40) didReceiveTrust:*(*(*(a1 + 56) + 8) + 24) completionHandler:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA7BBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) socketDidSecure:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_247FA7E98()
{
  qword_27EE842E8 = 0;
  v0 = dispatch_queue_create("_DT_GCDAsyncSocket-CFStreamThreadSetup", 0);
  v1 = qword_27EE842F0;
  qword_27EE842F0 = v0;
}

void sub_247FA7EE0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!qword_27EE842E8++)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:*(a1 + 32) selector:sel_cfstreamThread object:0];
    v5 = qword_27EE842F8;
    qword_27EE842F8 = v4;

    [qword_27EE842F8 start];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA7FB0()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_27EE842E8)
  {
    if (!--qword_27EE842E8)
    {
      [qword_27EE842F8 cancel];
      v1 = qword_27EE842F8;
      v2 = [MEMORY[0x277CBEB68] null];
      [_DT_GCDAsyncSocket performSelector:sel_ignore_ onThread:v1 withObject:v2 waitUntilDone:0];

      v3 = qword_27EE842F8;
      qword_27EE842F8 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
}

void sub_247FA8554(__CFReadStream *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 2)
  {
    v7 = v5[8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FA9604;
    block[3] = &unk_278EF13C0;
    v17 = v5;
    v18 = a1;
    dispatch_async(v7, block);
    v8 = v17;
  }

  else
  {
    v9 = CFReadStreamCopyError(a1);
    v10 = v9;
    if (a2 == 16 && !v9)
    {
      v10 = [v6 connectionClosedError];
    }

    v11 = v6[8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FA9694;
    v12[3] = &unk_278EF2A50;
    v14 = v10;
    v15 = a1;
    v13 = v6;
    v8 = v10;
    dispatch_async(v11, v12);
  }
}

void sub_247FA86A4(__CFWriteStream *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 4)
  {
    v7 = v5[8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FA9704;
    block[3] = &unk_278EF13C0;
    v17 = v5;
    v18 = a1;
    dispatch_async(v7, block);
    v8 = v17;
  }

  else
  {
    v9 = CFWriteStreamCopyError(a1);
    v10 = v9;
    if (a2 == 16 && !v9)
    {
      v10 = [v6 connectionClosedError];
    }

    v11 = v6[8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FA9794;
    v12[3] = &unk_278EF2A50;
    v14 = v10;
    v15 = a1;
    v13 = v6;
    v8 = v10;
    dispatch_async(v11, v12);
  }
}

uint64_t sub_247FA8B88(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = 0;
  }

  else
  {
    v1 = 8;
  }

  *(*(result + 32) + 12) = *(*(result + 32) + 12) & 0xFFF7 | v1;
  return result;
}

void sub_247FA9604(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  if (v4 == *(a1 + 40))
  {
    v5 = *(v3 + 8);
    if ((~v5 & 0x1800) != 0)
    {
      *(v3 + 8) = v5 | 0x80000;
      [*(a1 + 32) doReadData];
    }

    else if (CFReadStreamHasBytesAvailable(v4))
    {
      *(*(a1 + 32) + 8) |= 0x80000u;
      [*(a1 + 32) cf_finishSSLHandshake];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA9694(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (*(v3 + 216) == a1[6])
  {
    v4 = a1[5];
    if ((~*(v3 + 8) & 0x1800) != 0)
    {
      [v3 closeWithError:v4];
    }

    else
    {
      [v3 cf_abortSSLHandshake:v4];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA9704(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  if (v4 == *(a1 + 40))
  {
    v5 = *(v3 + 8);
    if ((~v5 & 0x1800) != 0)
    {
      *(v3 + 8) = v5 | 0x80;
      [*(a1 + 32) doWriteData];
    }

    else if (CFWriteStreamCanAcceptBytes(v4))
    {
      *(*(a1 + 32) + 8) |= 0x80u;
      [*(a1 + 32) cf_finishSSLHandshake];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_247FA9794(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (*(v3 + 224) == a1[6])
  {
    v4 = a1[5];
    if ((~*(v3 + 8) & 0x1800) != 0)
    {
      [v3 closeWithError:v4];
    }

    else
    {
      [v3 cf_abortSSLHandshake:v4];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *sub_247FABA7C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_247FABB70(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_247FABC14(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_247FABBC8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_247FABC14(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_247FABDB0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_247FABDB0(a1, *a2);
    sub_247FABDB0(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_247FAC010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = DTKPSession;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

id sub_247FAC0A8(void *a1, int a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"DTKPSession" code:a2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

char *sub_247FAC4F4(int a1)
{
  v1 = &off_278EF2B10;
  v2 = 5;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      sub_24802E708();
    }
  }

  return *v1;
}

uint64_t sub_247FACDDC(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_247FACDF4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_247FAEB44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FAEB5C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_247FAEB70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_247FAEB84(uint64_t a1, void *a2)
{
  v5 = [a2 uuid];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v5];
    *(*(*(a1 + 40) + 48) + 4 * *(*(*(a1 + 48) + 8) + 24)) = [v4 intValue];
  }

  else
  {
    *(*(*(a1 + 40) + 48) + 4 * *(*(*(a1 + 48) + 8) + 24)) = -1;
    NSLog(&cfstr_ATriggerUuidWa.isa, v5);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

void sub_247FAEEBC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FAEFAC;
  v8[3] = &unk_278EF2BD0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 64);
  v7 = [v3 initWithBytesNoCopy:v4 length:v5 deallocator:v8];
  *(*(*(a1 + 48) + 8) + 24) = [v2 write:v7 error:*(a1 + 72)];
}

uint64_t sub_247FAEFAC(void *a1)
{
  result = (*(a1[5] + 16))();
  *(a1[4] + 24) += a1[6];
  return result;
}

uint64_t sub_247FAF0C8(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 8) write:*(a1 + 40) error:*(a1 + 56)];
  result = [*(a1 + 40) length];
  *(*(a1 + 32) + 24) += result;
  return result;
}

uint64_t sub_247FAF20C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FAF224(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
  v2 = [*(*(*(a1 + 40) + 8) + 40) createNextStream:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  *(*(a1 + 32) + 24) = 0;
}

void sub_247FAF59C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (sub_247FAF688() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    *v8 = 138412546;
    *&v8[4] = v3;
    *&v8[12] = 2048;
    *&v8[14] = v4;
    v5 = v3;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ channel for (service %p) disconnected: releasing claims on assertions", v8, 0x16u);
  }

  v6 = [DTAssertionManager sharedInstance:*v8];
  [v6 removeClaimsHeldByClient:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FAF688()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DTProcessControlServiceLog"];

  return v1;
}

void sub_247FAF784(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v2 = dispatch_source_create(MEMORY[0x277D85D20], *(a1 + 48), 0x4000000uLL, *(*(a1 + 32) + 40));
    if (v2)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FAF9B4;
      handler[3] = &unk_278EF2788;
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      v13 = v3;
      v14 = v4;
      v5 = v2;
      v15 = v5;
      dispatch_source_set_event_handler(v5, handler);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_247FAFCA8;
      v10[3] = &unk_278EF1550;
      v6 = *(a1 + 40);
      v10[4] = *(a1 + 32);
      v11 = v6;
      dispatch_source_set_cancel_handler(v5, v10);
      dispatch_resume(v5);
      [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
      [*(*(a1 + 32) + 24) addObject:v5];
      v7 = +[DTAssertionManager sharedInstance];
      [v7 takeAssertionsForPid:*(a1 + 48) onBehalfOfClient:*(a1 + 32) withOptions:0];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) intValue];
      *buf = 67109120;
      v17 = v8;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to start observing process with pid %i", buf, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FAF9B4(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) intValue];
    *buf = 67109120;
    LODWORD(v20) = v2;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process with pid %i exited", buf, 8u);
  }

  v3 = [MEMORY[0x277D03668] messageWithSelector:sel_pidDiedCallback_ objectArguments:{*(a1 + 32), 0}];
  v4 = [*(a1 + 40) channel];
  v5 = [v4 _connection];
  v6 = [v5 remoteCapabilityVersion:@"com.apple.instruments.client.processcontrol.capability.terminationCallback"];

  if (v6 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v7 = *(a1 + 48);
    if (!dispatch_source_get_extended_data())
    {
      sub_24802E854();
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:BYTE1(v18)];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = 0;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Exit code: %{public}@, crashing signal: %{public}@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277D03668] messageWithSelector:sel_processWithPID_terminatedWithExitCode_orCrashingSignal_ typesAndArguments:{11, *(a1 + 32), 11, v8, 11, 0, 0}];

    v3 = v9;
  }

  v10 = [*(a1 + 40) channel];
  [v10 sendControlAsync:v3 replyHandler:0];

  [*(a1 + 40) cleanupPid:{objc_msgSend(*(a1 + 32), "intValue")}];
  v11 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FAFC9C;
  block[3] = &unk_278EF1550;
  v14 = *(a1 + 32);
  v12 = v14.i64[0];
  v16 = vextq_s8(v14, v14, 8uLL);
  dispatch_async(v11, block);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_247FAFCA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) indexOfObject:*(a1 + 40)];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2;
    [*(*(a1 + 32) + 16) removeObjectAtIndex:v2];
    [*(*(a1 + 32) + 24) removeObjectAtIndex:v3];
    v4 = +[DTAssertionManager sharedInstance];
    [v4 removeAssertionsForPid:objc_msgSend(*(a1 + 40) onBehalfOfClient:{"intValue"), *(a1 + 32)}];
  }
}

id DTProcessControlEventUnarchive(void *a1)
{
  v1 = MEMORY[0x277CCAAC8];
  v2 = MEMORY[0x277CBEB98];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v2 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  v8 = [v1 unarchivedObjectOfClasses:v7 fromData:v3 error:0];

  return v8;
}

void sub_247FB0B88(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277CCA7E8];
    v9[0] = *MEMORY[0x277CCA450];
    v9[1] = v5;
    v10[0] = @"Failed to insert view debugging libraries";
    v10[1] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.dt.instruments" code:-1 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  mach_port_deallocate(*MEMORY[0x277D85F48], *(a1 + 40));
  [*(a1 + 32) invokeCompletionWithReturnValue:0 error:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void sub_247FB107C(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (v6)
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
    [v4 removeObjectForKey:v5];
  }
}

uint64_t sub_247FB1144(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 40);
  return MEMORY[0x2821F9670](*(a1 + 32), sel_handleRedirectionIterationForFileDescriptor_forPid_withDispatchSource_);
}

uint64_t sub_247FB1154(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 40);
  return MEMORY[0x2821F9670](*(a1 + 32), sel_handleRedirectionIterationForFileDescriptor_forPid_withDispatchSource_);
}

void sub_247FB1164(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 40);

  dispatch_resume(v5);
}

void sub_247FB12B8(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = open([*(a1 + 32) UTF8String], 0x1000000);
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) UTF8String];
      v12 = __error();
      v13 = strerror(*v12);
      v22 = 136315394;
      *v23 = v11;
      *&v23[8] = 2080;
      *&v23[10] = v13;
      v8 = MEMORY[0x277D86220];
      v9 = "Failed to open the I/O redirection file '%s' for reading: %s";
      v10 = 22;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = v2;
    v4 = malloc_type_malloc(0x2000uLL, 0xC97EC206uLL);
      ;
    }

    free(v4);
    if (close(v3))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 56);
        v6 = __error();
        v7 = strerror(*v6);
        v22 = 67109378;
        *v23 = v5;
        *&v23[4] = 2080;
        *&v23[6] = v7;
        v8 = MEMORY[0x277D86220];
        v9 = "failed to close I/O redirection read-side file for pid %d: %s\n";
LABEL_7:
        v10 = 18;
LABEL_10:
        _os_log_impl(&dword_247F67000, v8, OS_LOG_TYPE_ERROR, v9, &v22, v10);
      }
    }

    else
    {
      if (unlink([*(a1 + 32) UTF8String]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 56);
        v16 = __error();
        v17 = strerror(*v16);
        v22 = 67109378;
        *v23 = v15;
        *&v23[4] = 2080;
        *&v23[6] = v17;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to remove I/O redirection read-side file for pid %d: %s\n", &v22, 0x12u);
      }

      v18 = *(a1 + 48);
      if (v18 && rmdir([v18 UTF8String]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 56);
        v20 = __error();
        v21 = strerror(*v20);
        v22 = 67109378;
        *v23 = v19;
        *&v23[4] = 2080;
        *&v23[6] = v21;
        v8 = MEMORY[0x277D86220];
        v9 = "failed to remove I/O redirection read-side file directory for pid %d: %s\n";
        goto LABEL_7;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void DTProcessControlOptionsSetEvent(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
    [v5 setObject:v4 forKeyedSubscript:@"launchevent"];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"DTProcessControlOptionsSetEvent" format:{@"Event is not an NSDictionary or a DTProcessControlEvent. It is a '%@'.", objc_opt_class()}];
  }
}

id DTProcessControlOptionsGetEvent(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"launchevent"];
  v3 = v2;
  if (v2)
  {
    v4 = DTProcessControlEventUnarchive(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void DTProcessControlSendEventToPid(void *a1, void *a2, uint64_t a3)
{
  v10 = a1;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v7 = MEMORY[0x277D03668];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v9 = [v7 messageWithSelector:sel_sendProcessControlEvent_toPid_ objectArguments:{v6, v8, 0}];

    [v10 sendControlAsync:v9 replyHandler:0];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"DTProcessControlSendEventToPid" format:{@"Event is not an NSDictionary or a DTProcessControlEvent. It is a '%@'.", objc_opt_class()}];
  }
}

void sub_247FB1D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FB1D94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FB1DAC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_247FB1DC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = v6;
  if (a4)
  {
    [a4 instantiateServiceWithChannel:v6];
  }

  else
  {
    NSLog(&cfstr_CouldNotCreate_0.isa, a3);
    [v7 cancel];
  }
}

void sub_247FB1E38(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = [v3 UTF8String];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "publishing services in image path %s", &v5, 0xCu);
  }

  [*(a1 + 32) publishServicesInImagePath:v3];

  v4 = *MEMORY[0x277D85DE8];
}

void sub_247FB250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_247FB253C()
{
  v0 = objc_opt_new();
  v1 = qword_27EE84328;
  qword_27EE84328 = v0;

  v2 = objc_opt_new();
  v3 = qword_27EE84330;
  qword_27EE84330 = v2;
}

void sub_247FB2598(uint64_t a1)
{
  [*(a1 + 48) _taskInvalid:objc_msgSend(*(*(*(a1 + 40) + 8) + 40) forPid:{"intValue"), *(a1 + 56)}];
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void sub_247FB2B40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_247FB2B6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = WeakRetained[1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_24802E8DC(v6, v3);
    }
  }
}

uint64_t sub_247FB2BD8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained clearStatusBar];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_247FB2D34(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBarAssertion];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247FB2DF8;
  v4[3] = &unk_278EF1238;
  objc_copyWeak(&v5, (a1 + 48));
  [v2 acquireWithHandler:v3 invalidationHandler:v4];

  objc_destroyWeak(&v5);
}

void sub_247FB2DF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[1];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24802E974(v2);
  }

  [WeakRetained clearStatusBar];
}

id DTSKServiceErrorWithDescription(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = &stru_285A19CB8;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = MEMORY[0x277CCA9B8];
  v20 = *MEMORY[0x277CCA450];
  v21[0] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [v15 errorWithDomain:@"com.apple.dt.storekit.service" code:a1 userInfo:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id DTSKServiceErrorByAppendingDescription(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = a1;
  v13 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v14 = &stru_285A19CB8;
  if (v13)
  {
    v14 = v13;
  }

  v15 = v14;

  v16 = MEMORY[0x277CCA9B8];
  v17 = [v12 domain];
  v18 = [v12 code];
  v25 = *MEMORY[0x277CCA450];
  v19 = [v12 localizedDescription];

  v20 = [v19 stringByAppendingString:v15];
  v26[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v22 = [v16 errorWithDomain:v17 code:v18 userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void DTKPSetupLogging()
{
  if (qword_27EE84340 != -1)
  {
    sub_24802EB48();
  }
}

void sub_247FB36B0()
{
  v0 = dispatch_queue_create("com.apple.dt.Instruments.DTKP.logQueue", 0);
  v1 = sDTKPLogQueue;
  sDTKPLogQueue = v0;

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"DTKPLogLevel"];

  if (v3 >= 1)
  {
    v4 = os_log_create("com.apple.dt.Instruments", "DTKP");
    v5 = sDTKPLogClient;
    sDTKPLogClient = v4;

    v6 = sDTKPLogClient;
    if (os_log_type_enabled(sDTKPLogClient, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_INFO, "DTKPLogging: Enabled", v7, 2u);
    }
  }
}

uint64_t DTKPSetErrorAndOrLogWithFileAndLine(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!a3)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v12 = *MEMORY[0x277CCA450];
  v24[0] = v9;
  v13 = *MEMORY[0x277CCA470];
  v23[0] = v12;
  v23[1] = v13;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error #%d (%s): %@", a4, DTKPGetConstantNameOfStatusCode(a4), v9];
  v24[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  *a3 = [v10 errorWithDomain:v11 code:a4 userInfo:v15];

  if (a1)
  {
LABEL_3:
    v16 = sDTKPLogQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FB394C;
    block[3] = &unk_278EF1408;
    v21 = a2;
    v22 = a4;
    v20 = v9;
    dispatch_async(v16, block);
  }

  v17 = *MEMORY[0x277D85DE8];
  return a4;
}

void sub_247FB394C(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sDTKPLogClient;
  if (os_log_type_enabled(sDTKPLogClient, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = v2;
    v6 = DTKPGetConstantNameOfStatusCode(v4);
    v7 = [*(a1 + 32) UTF8String];
    v9 = 136315906;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    _os_log_impl(&dword_247F67000, v5, OS_LOG_TYPE_INFO, "%s: Error #%d (%s): %s", &v9, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_247FB3BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FB3BF0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = *(a1 + 32);
    v6 = 138412290;
    v7 = objc_opt_class();
    v3 = v7;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: DTX channel disconnected.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _disconnectServiceConnection];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_247FB3ED4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v7 = *(a1 + 32);
    *v14 = 138412546;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 2112;
    *&v14[14] = v6;
    v8 = *&v14[4];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%@: available condition inducers request failed with error: %@", v14, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v5 count];
    *v14 = 138412546;
    *&v14[4] = v10;
    *&v14[12] = 2048;
    *&v14[14] = v12;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: Found %lu available condition inducers", v14, 0x16u);
  }

  [*(a1 + 40) invokeCompletionWithReturnValue:v5 error:{v6, *v14, *&v14[16], v15}];

  v13 = *MEMORY[0x277D85DE8];
}

void sub_247FB4184(uint64_t a1, uint64_t a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *v18 = 138412290;
      *&v18[4] = objc_opt_class();
      v8 = *&v18[4];
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: active condition disabled successfully", v18, 0xCu);
    }
  }

  else
  {
    if (!v5)
    {
      v9 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"There was a problem disabling the condition inducer.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v6 = [v9 errorWithDomain:@"DTConditionInducerService" code:4 userInfo:v10];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [v6 localizedDescription];
      *v18 = 138412546;
      *&v18[4] = v12;
      *&v18[12] = 2112;
      *&v18[14] = v14;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@: failed to disable active condition with error: %@", v18, 0x16u);
    }
  }

  v15 = *(a1 + 40);
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{a2, *v18}];
  [v15 invokeCompletionWithReturnValue:v16 error:v6];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_247FB44E8(void *a1, uint64_t a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = a1[4];
      v8 = objc_opt_class();
      v9 = a1[5];
      *v21 = 138412546;
      *&v21[4] = v8;
      *&v21[12] = 2112;
      *&v21[14] = v9;
      v10 = v8;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: condition disabled successfully: %@", v21, 0x16u);
    }
  }

  else
  {
    if (!v5)
    {
      v11 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"There was a problem disabling the condition inducer.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v6 = [v11 errorWithDomain:@"DTConditionInducerService" code:4 userInfo:v12];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = objc_opt_class();
      v15 = a1[5];
      v16 = v14;
      v17 = [v6 localizedDescription];
      *v21 = 138412802;
      *&v21[4] = v14;
      *&v21[12] = 2112;
      *&v21[14] = v15;
      *&v21[22] = 2112;
      v22 = v17;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@: failed to disable %@ with error: %@", v21, 0x20u);
    }
  }

  v18 = a1[6];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{a2, *v21, *&v21[16]}];
  [v18 invokeCompletionWithReturnValue:v19 error:v6];

  v20 = *MEMORY[0x277D85DE8];
}

void sub_247FB48A0(void *a1, uint64_t a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = a1[4];
      v8 = objc_opt_class();
      v9 = a1[5];
      v10 = a1[6];
      *v23 = 138412802;
      *&v23[4] = v8;
      *&v23[12] = 2112;
      *&v23[14] = v9;
      *&v23[22] = 2112;
      v24 = v10;
      v11 = v8;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: condition enabled successfully: %@ / %@", v23, 0x20u);
    }
  }

  else
  {
    if (!v5)
    {
      v12 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = @"There was a problem enabling the condition inducer.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v6 = [v12 errorWithDomain:@"DTConditionInducerService" code:3 userInfo:v13];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = objc_opt_class();
      v16 = a1[5];
      v17 = a1[6];
      v18 = v15;
      v19 = [v6 localizedDescription];
      *v23 = 138413058;
      *&v23[4] = v15;
      *&v23[12] = 2112;
      *&v23[14] = v16;
      *&v23[22] = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@: failed to enable %@ / %@ with error: %@", v23, 0x2Au);
    }
  }

  v20 = a1[7];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{a2, *v23, *&v23[16], v24}];
  [v20 invokeCompletionWithReturnValue:v21 error:v6];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FB4C50(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_247FB4E1C(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"There was a problem enabling the condition inducer.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v6 errorWithDomain:@"DTConditionInducerService" code:3 userInfo:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FB50A8(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"There was a problem disabling the condition inducer.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v6 errorWithDomain:@"DTConditionInducerService" code:4 userInfo:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FB5320(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"There was a problem disabling the condition inducer.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v6 errorWithDomain:@"DTConditionInducerService" code:4 userInfo:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FB6B38(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FA0];
  v4 = a2;
  v5 = [v3 predicateMatchingProcessTypeApplication];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setStateDescriptor:v7];

  [v4 setServiceClass:25];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_247FB6C74;
  v9[3] = &unk_278EF2EA0;
  v9[4] = *(a1 + 32);
  [v4 setUpdateHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void sub_247FB6C74(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = @"pid";
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 numberWithInt:{objc_msgSend(v8, "pid")}];
  v26[0] = v9;
  v25[1] = @"state_description";
  v10 = [v7 state];

  v11 = [v10 taskState] - 1;
  v12 = @"Unknown";
  if (v11 <= 3u)
  {
    v12 = off_278EF2EE8[v11];
  }

  v26[1] = v12;
  v25[2] = @"mach_absolute_time";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
  v26[2] = v13;
  v25[3] = @"appName";
  v14 = [v8 name];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"Unknown";
  }

  v26[3] = v16;
  v25[4] = @"execName";
  v17 = [v8 bundle];

  v18 = [v17 path];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"Unknown";
  }

  v26[4] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v22 = [MEMORY[0x277D03668] messageWithSelector:sel_applicationStateNotification_ objectArguments:{v21, 0, v25[0]}];
  v23 = [*(a1 + 32) channel];
  [v23 sendControlAsync:v22 replyHandler:0];

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FB701C()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = qword_27EE84348;
  qword_27EE84348 = v0;

  v2 = qword_27EE84348;

  return [v2 addObject:@"com.apple.safetykit.severe-vehicular-crash-simulated"];
}

void sub_247FB7340(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = recv(*(a1 + 48), v10, 0xD818uLL, 0);
  if (v2 == -1)
  {
    NSLog(&cfstr_ErrorEncounter.isa);
    dispatch_source_cancel(*(a1 + 32));
  }

  else
  {
    v3 = v2;
    if (v2 >= 1)
    {
      v4 = 0;
      v5 = v10;
      do
      {
        if (v4 + *&v10[v4] > v3)
        {
          break;
        }

        if (v5[1] == 1 && v5[2] == 3 && v5[3] == 3)
        {
          v6 = v5[5];
          if ((v6 - 1) < 3)
          {
            v7 = *(a1 + 40);
LABEL_12:
            [v7 _memoryNotification:? pid:?];
            goto LABEL_13;
          }

          if (v6 == 4)
          {
            v7 = *(a1 + 40);
            v8 = v5[6];
            goto LABEL_12;
          }
        }

LABEL_13:
        v4 += *&v10[v4];
        v5 = &v10[v4];
      }

      while (v4 < v3);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FB7BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FB7BF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleHARExternalNotificationChange];
}

uint64_t sub_247FB7ED0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = dispatch_walltime(0, 55000000000);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sub_24802ECF8();
  }

  return [*(a1 + 32) updateHARLogPrefsWithIsEnabled:1];
}

void sub_247FB8B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FB8BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleStopOfHARRecordingCausedByUser];
    WeakRetained = v2;
  }
}

void sub_247FB9C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FB9C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FB9CA8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_247FBA058()
{
  v0 = objc_alloc_init(GCFGameServicesClient);
  v1 = qword_27EE84358;
  qword_27EE84358 = v0;
}

void sub_247FBA190(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.gamed" options:256];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    [*(*(a1 + 32) + 16) setExportedObject:?];
    v5 = +[GKDTClientInterface interface];
    [*(*(a1 + 32) + 16) setExportedInterface:v5];

    v6 = +[GKDTDaemonInterface interface];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v6];

    [*(*(a1 + 32) + 16) setDelegate:?];
    [*(*(a1 + 32) + 16) setInterruptionHandler:&unk_285A188D0];
    objc_initWeak(&location, *(a1 + 32));
    v7 = *(*(a1 + 32) + 16);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = sub_247FBA324;
    v11 = &unk_278EF1238;
    objc_copyWeak(&v12, &location);
    [v7 setInvalidationHandler:&v8];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void sub_247FBA300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FBA324(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnectServiceConnection];
}

void sub_247FBA428(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FBA57C;
  aBlock[3] = &unk_278EF2550;
  aBlock[4] = v9;
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:v2];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FBA5C4;
  v6[3] = &unk_278EF2F70;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 gameServicesRemoteCall:v5 completionHandler:v6];

  _Block_object_dispose(v9, 8);
}

void sub_247FBA564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FBA6A0(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FBA804;
  aBlock[3] = &unk_278EF2550;
  aBlock[4] = v10;
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:v2];

  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FBA84C;
  v7[3] = &unk_278EF2FC0;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v4 setDebugMode:v5 bundleID:v6 reply:v7];

  _Block_object_dispose(v10, 8);
}

void sub_247FBA7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FBA8D0(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setConnection:0];
}

__CFString *sub_247FBAB8C()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);

  return v1;
}

void sub_247FBADB0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 copyWithZone:v5];
  [*(*(a1 + 32) + 8) setObject:v7 forKey:v6];
}

void sub_247FBBBCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_opt_new();
  [v6 setKind:7];
  [v6 setRunningMetadata:v3];

  v4 = *(*(a1 + 32) + 8);
  v5 = [MEMORY[0x277D03668] messageWithObject:v6];
  [v4 sendMessage:v5];
}

uint64_t sub_247FBCF0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_247FBED98(a1, a2);
  }

  else
  {
    sub_247FBECE4(a1, a2);
    result = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_247FBCF4C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_247FBF258(a1, a2);
  }

  else
  {
    sub_247FBF1F0(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_247FBD0EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    if (v4)
    {
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
      v6 = v3[2];
      v3[2] = v5;

      v7 = *(a1 + 32);
      if (v7[66])
      {
        v8 = 100000000;
      }

      else
      {
        v8 = 1000000;
      }

      v9 = [v7 device];
      v10 = [v9 vendorName];
      v11 = [v10 lowercaseString];

      if ([v11 rangeOfString:@"amd"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v8;
      }

      else
      {
        v12 = 100000000;
      }

      v13 = v3[2];
      v14 = dispatch_time(0, v12);
      dispatch_source_set_timer(v13, v14, v12, v12);
      v15 = v3[2];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FBD2FC;
      handler[3] = &unk_278EF30D8;
      objc_copyWeak(&v20, (a1 + 40));
      dispatch_source_set_event_handler(v15, handler);
      v16 = v3[2];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_247FBD360;
      v17[3] = &unk_278EF30D8;
      objc_copyWeak(&v18, (a1 + 40));
      dispatch_source_set_cancel_handler(v16, v17);
      dispatch_resume(v3[2]);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
    }
  }
}

void sub_247FBD2FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _sampleCounters];
  }
}

void sub_247FBD360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

NSObject *sub_247FBD400(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 16);
  if (result)
  {
    dispatch_source_cancel(result);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    *(*(a1 + 32) + 56) = mach_absolute_time();
    [*(a1 + 32) _sampleCounters];
    result = [*(*(a1 + 32) + 24) stop];
    v2 = *(a1 + 32);
  }

  *(v2 + 64) = 0;
  return result;
}

void sub_247FBD500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[9];
  v3 = v1[10];
  if (v2 != v3)
  {
    if (!v1[7])
    {
      *(*(a1 + 32) + 56) = mach_absolute_time();
      v1 = *(a1 + 32);
      v2 = v1[9];
      v3 = v1[10];
    }

    if (v3 != v2)
    {
      v5 = 0;
      do
      {
        v6 = (v2 + 24 * v5);
        v7 = *v6;
        v20 = v6;
        if (v6[1] != *v6)
        {
          v8 = 0;
          v19 = MEMORY[0x277D85DD0];
          v9 = 96;
          do
          {
            v10 = *(a1 + 32);
            v11 = *(a1 + 40);
            v12 = *(v10 + 40);
            v13 = *(v10 + 56);
            v26[0] = v19;
            v26[1] = 3221225472;
            v26[2] = sub_247FBD890;
            v26[3] = &unk_278EF3150;
            v27 = v11;
            v28 = (v7 + v9 - 96);
            v29 = v8;
            v30 = v5;
            sub_247FBD798(v28, v12, v13, v26);
            *(v7 + v9 - 56) = *(v7 + v9 - 64);
            sub_247FBEBFC((v7 + v9 - 64), *(v7 + v9 - 96) * *(v7 + v9 - 88));
            v14 = (v7 + v9);
            *(v14 - 10) = 0;
            *(v14 - 9) = 0;
            v15 = *(a1 + 32);
            v16 = *(v15 + 40);
            v17 = *(v15 + 56);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = sub_247FBD8BC;
            v21[3] = &unk_278EF3150;
            v22 = *(a1 + 40);
            v23 = v7 + v9 - 96;
            v24 = v8;
            v25 = v5;
            sub_247FBD798((v7 + v9 - 40), v16, v17, v21);
            *v14 = *(v14 - 1);
            sub_247FBEBFC(v14 - 1, *(v7 + v9 - 40) * *(v14 - 4));
            v18 = v7 + v9;
            *(v18 - 24) = 0;
            *(v18 - 16) = 0;

            ++v8;
            v7 = *v20;
            v9 += 112;
          }

          while (v8 < 0x6DB6DB6DB6DB6DB7 * ((v20[1] - *v20) >> 4));
          v1 = *(a1 + 32);
        }

        ++v5;
        v2 = v1[9];
      }

      while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v1[10] - v2) >> 3));
    }
  }
}

void sub_247FBD798(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    v13 = 0;
    v14 = 0;
    sub_247FBE2B8(a1, a2, a3, &v14, &v13);
    if (v14 < v13)
    {
      v9 = ((v13 - v14) >> 3) / *a1;
      v8[2](v8);
      v10 = a1[3];
      if (v10)
      {
        if (v14 > a1[4] + 8 * v10)
        {
          v11 = v10 / *a1;
          v8[2](v8);
        }
      }
    }
  }

  else
  {
    if (a1[2] >= a1[1])
    {
      v12 = a1[1];
    }

    else
    {
      v12 = a1[2];
    }

    (v7[2])(v7, a1[4], v12);
  }
}

uint64_t sub_247FBD890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 8 * a3 * **(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  return (*(*(a1 + 32) + 16))(*(a1 + 32));
}

uint64_t sub_247FBD8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 8 * a3 * *(*(a1 + 40) + 56);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  return (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_247FBD978(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v6 = *(v4 + 80);
  while (v6 != v5)
  {
    v6 -= 3;
    v7 = v6;
    sub_247FBF570(&v7);
  }

  *(v4 + 80) = v5;
}

void sub_247FBDAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v11) = a6;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  [WeakRetained readyToSendData:a2 sampleCount:0 length:a3 dataSource:*(a1 + 32) sampleType:a4 ringBufferIndex:a5 sourceIndex:v11];
}

void sub_247FBDB64(uint64_t a1, char *__src, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 80) - v8) >> 3) > a7)
  {
    v12 = (v8 + 24 * a7);
    v11 = *v12;
    if (0x6DB6DB6DB6DB6DB7 * ((v12[1] - *v12) >> 4) > a6)
    {
      if (a5 == 2)
      {
        LODWORD(v29) = a7;
        WeakRetained = objc_loadWeakRetained((v7 + 120));
        [WeakRetained readyToSendData:__src sampleCount:1 length:8 * a3 dataSource:*(a1 + 32) sampleType:2 ringBufferIndex:a6 sourceIndex:v29];
      }

      else
      {
        v17 = (v11 + 112 * a6);
        if (a5 == 1)
        {
          v22 = v17[7] - 1;
          if (v22 <= a3)
          {
            v23 = 0;
            v24 = a3 / v22;
            do
            {
              sub_247FBDEB8(v17 + 7, &__src[8 * (v17[7] - 1) * v23], a4);
              v25 = *(a1 + 32);
              if ((*(v25 + 40) + 1) <= 1 && v17[9] == v17[8])
              {
                v26 = objc_loadWeakRetained((v25 + 120));

                if (v26)
                {
                  v27 = *(*(a1 + 32) + 40);
                  v28 = mach_absolute_time();
                  v31[0] = MEMORY[0x277D85DD0];
                  v31[1] = 3221225472;
                  v31[2] = sub_247FBE0B8;
                  v31[3] = &unk_278EF31C8;
                  v31[4] = *(a1 + 32);
                  v31[5] = v17;
                  v32 = a6;
                  v33 = a7;
                  sub_247FBD798(v17 + 7, v27, v28, v31);
                  v17[12] = v17[11];
                  sub_247FBEBFC(v17 + 11, v17[7] * v17[8]);
                  v17[9] = 0;
                  v17[10] = 0;
                }
              }

              ++v23;
            }

            while (v23 < v24);
          }
        }

        else if (!a5)
        {
          sub_247FBDEB8((v11 + 112 * a6), __src, a4);
          v18 = *(a1 + 32);
          if ((*(v18 + 40) + 1) <= 1 && v17[2] == v17[1])
          {
            v19 = objc_loadWeakRetained((v18 + 120));

            if (v19)
            {
              v20 = *(*(a1 + 32) + 40);
              v21 = mach_absolute_time();
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = sub_247FBE020;
              v34[3] = &unk_278EF31C8;
              v34[4] = *(a1 + 32);
              v34[5] = v17;
              v35 = a6;
              v36 = a7;
              sub_247FBD798(v17, v20, v21, v34);
              v17[5] = v17[4];
              sub_247FBEBFC(v17 + 4, *v17 * v17[1]);
              v17[2] = 0;
              v17[3] = 0;
            }
          }
        }
      }
    }
  }
}

void *sub_247FBDEB8(void *a1, void *__src, uint64_t a3)
{
  if (a1[2] >= a1[1])
  {
    v9 = (a1[4] + 8 * a1[3]);
    *v9 = a3;
    result = memcpy(v9 + 1, __src, 8 * *a1 - 8);
    a1[3] = (*a1 + a1[3]) % ((a1[5] - a1[4]) >> 3);
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    if (v7 >= v6)
    {
      v11 = a1[4];
      v12 = v7 - v11;
      v13 = (v7 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        sub_247F85814();
      }

      v15 = v6 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
      v17 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        sub_247FBEC9C((a1 + 4), v17);
      }

      v18 = v13;
      v19 = (8 * v13);
      v20 = &v19[-v18];
      *v19 = a3;
      v8 = (v19 + 1);
      memcpy(v20, v11, v12);
      v21 = a1[4];
      a1[4] = v20;
      a1[5] = v8;
      a1[6] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v7 = a3;
      v8 = v7 + 8;
    }

    a1[5] = v8;
    result = sub_247FBF6D4(a1 + 4, v8, __src, __src + 8 * *a1 - 8, (8 * *a1 - 8) >> 3);
    ++a1[2];
  }

  return result;
}

void sub_247FBE020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  LODWORD(v7) = *(a1 + 52);
  v8 = WeakRetained;
  [WeakRetained readyToSendData:a2 sampleCount:a3 length:8 * a3 * **(a1 + 40) dataSource:*(a1 + 32) sampleType:0 ringBufferIndex:*(a1 + 48) sourceIndex:v7];
}

void sub_247FBE0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  LODWORD(v7) = *(a1 + 52);
  v8 = WeakRetained;
  [WeakRetained readyToSendData:a2 sampleCount:a3 length:8 * a3 * *(*(a1 + 40) + 56) dataSource:*(a1 + 32) sampleType:1 ringBufferIndex:*(a1 + 48) sourceIndex:v7];
}

unint64_t sub_247FBE2B8(void *a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = mach_timebase_info(&info);
  v12 = a1[3];
  v11 = a1[4];
  v13 = a1[2] * *a1;
  v14 = v11 + 8 * v13;
  if (v12 >= v13)
  {
    v16 = v11 + 8 * v13;
    v17 = (v11 + 8 * v12);
LABEL_11:
    if (!a4)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a4 = v17;
    goto LABEL_13;
  }

  v15 = (v11 + 8 * v12);
  v16 = v11 + 8 * v13;
  while ((a3 - *v15) * info.numer / info.denom >= a2)
  {
    v17 = &v15[*a1];
    if (v17 >= v16)
    {
      if (!v12)
      {
        goto LABEL_11;
      }

      result = v11 + 8 * v12;
      v15 = a1[4];
      if (v16 != v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = v16;
      v15 += *a1;
    }

    v16 = result;
    v17 = v15;
    if (v15 >= result)
    {
      goto LABEL_11;
    }
  }

  v17 = v15;
  if (a4)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (a5)
  {
    *a5 = v16;
  }

  return result;
}

uint64_t sub_247FBEB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2 + 1;
  *(a1 + 8) = a3;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0;
  sub_247FBEBFC((a1 + 32), (a2 + 1) * a3);
  return a1;
}

void sub_247FBEBE0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_247FBEBFC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_247FBEC9C(result, a2);
    }

    sub_247F85814();
  }

  return result;
}

void sub_247FBEC9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_247F93D28();
}

uint64_t sub_247FBECE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  sub_247FBEF3C(v4 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(v4 + 88) = 0;
  *(v4 + 56) = v6;
  *(v4 + 72) = v7;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  result = sub_247FBEF3C(v4 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  *(a1 + 8) = v4 + 112;
  return result;
}

void sub_247FBED70(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 40) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_247FBED98(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_247F85814();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_247FBEFF4(a1, v6);
  }

  v7 = 112 * v2;
  v18 = 0;
  v19 = v7;
  v20 = (112 * v2);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = 112 * v2;
  *(v9 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  sub_247FBEF3C(v9 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  *(v7 + 88) = 0;
  *(v7 + 56) = v10;
  *(v7 + 72) = v11;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_247FBEF3C(v7 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  *&v20 = v20 + 112;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  sub_247FBF050(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_247FBF15C(&v18);
  return v17;
}

void sub_247FBEF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 40) = v7;
    operator delete(v7);
  }

  sub_247FBF15C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_247FBEF3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_247FBEFB8(result, a4);
  }

  return result;
}

void sub_247FBEF9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_247FBEFB8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_247FBEC9C(a1, a2);
  }

  sub_247F85814();
}

void sub_247FBEFF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_247F93D28();
}

void sub_247FBF050(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      v8 = *(v6 + 7);
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 56) = v8;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 11);
      *(a4 + 104) = v6[13];
      v6[11] = 0;
      v6[12] = 0;
      v6[13] = 0;
      v6 += 14;
      a4 += 112;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_247FBF104(v5);
      v5 += 14;
    }
  }
}

void sub_247FBF104(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_247FBF15C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_247FBF104((i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_247FBF1AC(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_247FBF1F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_247FBF39C(v3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_247FBF258(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_247F85814();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_247FBF5F4(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_247FBF39C(24 * v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_247FBF64C(&v14);
  return v8;
}

void sub_247FBF388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_247FBF64C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_247FBF39C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_247FBF424(result, a4);
  }

  return result;
}

void sub_247FBF404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_247FBF570(&a9);
  _Unwind_Resume(a1);
}

void sub_247FBF424(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_247FBEFF4(a1, a2);
  }

  sub_247F85814();
}

uint64_t sub_247FBF474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7 + 16);
      *v9 = *(a2 + v7);
      *(v9 + 16) = v10;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(a4 + v7 + 32) = 0;
      sub_247FBEF3C(a4 + v7 + 32, *(a2 + v7 + 32), *(a2 + v7 + 40), (*(a2 + v7 + 40) - *(a2 + v7 + 32)) >> 3);
      v11 = *(a2 + v7 + 56);
      v12 = *(a2 + v7 + 72);
      *(v9 + 88) = 0;
      v13 = a4 + v7 + 88;
      *(v13 - 32) = v11;
      *(v13 - 16) = v12;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      sub_247FBEF3C(v13, *(v8 + 88), *(v8 + 96), (*(v8 + 96) - *(v8 + 88)) >> 3);
      v7 += 112;
    }

    while (v8 + 112 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_247FBF524(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 + v2 - 112);
    v5 = -v2;
    do
    {
      sub_247FBF104(v4);
      v4 -= 14;
      v5 += 112;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_247FBF570(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 14;
        sub_247FBF104(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_247FBF5F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_247F93D28();
}

void **sub_247FBF64C(void **a1)
{
  sub_247FBF680(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_247FBF680(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_247FBF570(&v5);
  }
}

char *sub_247FBF6D4(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_247F85814();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_247FBEC9C(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void sub_247FBF8D4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_247FBF570(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_247FC07E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 description];
  v7 = v6;
  v8 = &stru_285A19CB8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v5 stringByAppendingString:@"="];

  v16 = [v10 stringByAppendingString:v9];

  v11 = v16;
  v12 = strdup([v16 UTF8String]);
  v13 = *(a1 + 40);
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 24);
  *(v14 + 24) = v15 + 1;
  *(v13 + 8 * v15) = v12;
}

void sub_247FC0A0C()
{
  v0 = objc_opt_new();
  v1 = sTapFactory;
  sTapFactory = v0;
}

void sub_247FC1244(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = 0;
LABEL_13:
    [v4 sendControlAsync:*(a1 + 40) replyHandler:*(a1 + 48)];
    goto LABEL_14;
  }

  v31 = -1;
  v6 = *(a1 + 56);
  v30 = 0;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 resourcePath];
  v9 = [v8 stringByAppendingPathComponent:@"LeakAgent"];

  if (v9)
  {
    v10 = [DTInstrumentServer taskForPid:v6];
    if ((v10 - 1) < 0xFFFFFFFE)
    {
      v4 = DVTLaunchHelperProcess(v9, v6, &v31, v10, &v30);
      [v4 resume];
      mach_port_deallocate(*MEMORY[0x277D85F48], v10);
      goto LABEL_9;
    }

    v14 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to acquire required task port (%d:%d)", v6, v10];
    v35[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v30 = [v14 errorWithDomain:@"DTLeaksService" code:-1 userInfo:v16];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to locate resource: 'LeakAgent'"];
    v35[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v30 = [v11 errorWithDomain:@"DTLeaksService" code:-1 userInfo:v13];
  }

  v4 = 0;
LABEL_9:

  v17 = v30;
  v5 = v17;
  if (v4)
  {
    v18 = *(*(a1 + 32) + 32);
    v19 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
    [v18 setObject:v4 forKeyedSubscript:v19];

    if (v31 >= 1)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInt:?];
      v21 = *(*(a1 + 32) + 40);
      v22 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
      [v21 setObject:v20 forKeyedSubscript:v22];
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_247FC1698;
    v28[3] = &unk_278EF1260;
    v28[4] = *(a1 + 32);
    v29 = *(a1 + 56);
    [v4 registerDisconnectHandler:v28];
    goto LABEL_13;
  }

  if (!v17)
  {
    v24 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"an unknown error occurred launching the helper task"];
    v33 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v5 = [v24 errorWithDomain:@"DTLeaksService" code:-1 userInfo:v26];
  }

  v27 = *(a1 + 48);
  v4 = [MEMORY[0x277D03668] messageWithError:v5];
  (*(v27 + 16))(v27, v4);
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_247FC1698(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FC1720;
  v3[3] = &unk_278EF1260;
  v3[4] = v1;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_247FC1720(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  [v4 removeObjectForKey:v5];
}

void sub_247FC1944(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.memgraph", *(a1 + 64), *(a1 + 60)];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = [v5 UTF8String];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "preserved to: %s", buf, 0xCu);
  }

  [v2 setFd:{open(objc_msgSend(v5, "UTF8String"), 16778754, 384)}];
  [v2 setSize:{objc_msgSend(*(a1 + 32), "length")}];
  [v2 setToken:*(a1 + 56)];
  [v2 setMetaDict:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  [v6 setObject:v2 forKeyedSubscript:v7];

  unlink([v5 UTF8String]);
  v8 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:objc_msgSend(v2 closeOnDealloc:{"fd"), 0}];
  [v8 writeData:*(a1 + 32)];

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FC1BEC(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"no preserved graph could be found for token: %#llx", *(a1 + 48)];
    v31[0] = v13;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v31;
    v16 = &v30;
LABEL_8:
    v23 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v24 = [v11 errorWithDomain:@"DTLeaksService" code:-1 userInfo:v23];
    [v12 invokeCompletionWithReturnValue:0 error:v24];

    goto LABEL_9;
  }

  v5 = [v4 token];
  v6 = *(a1 + 48);
  if (v5 != v6)
  {
    v17 = *(a1 + 40);
    v18 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"preserved graph token already invalidated by later request: %#llx", v6];
    v29 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = [v18 errorWithDomain:@"DTLeaksService" code:-1 userInfo:v20];
    [v17 invokeCompletionWithReturnValue:0 error:v21];

    goto LABEL_9;
  }

  v7 = mmap(0, [v4 size], 1, 2, objc_msgSend(v4, "fd"), 0);
  if (v7 == -1)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *(a1 + 40);
    v22 = *(a1 + 48);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to mmap preserved graph for token: %#llx", v22, *MEMORY[0x277CCA450]];
    v27 = v13;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v27;
    v16 = &v26;
    goto LABEL_8;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v7 length:objc_msgSend(v4 deallocator:{"size"), &unk_285A18930}];
  v9 = [v4 metaDict];
  v10 = [v9 mutableCopy];

  [v10 setObject:v8 forKeyedSubscript:DTLeaksServiceSerializedGraphKey];
  [*(a1 + 40) invokeCompletionWithReturnValue:v10 error:0];

LABEL_9:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_247FC2104(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 object];
  v4 = [*(a1 + 32) objectForKeyedSubscript:DTLeaksServiceOptionRetrieveGraphAsTokenKey];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [*(a1 + 40) _preserveDict:v3 forPid:*(a1 + 56)];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  if (v3)
  {
    v6 = [v3 copy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  v8 = *(a1 + 48);
  v9 = [v10 error];
  [v8 invokeCompletionWithReturnValue:v7 error:v9];
}

void sub_247FC2340(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 object];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  v7 = [v8 error];
  [v6 invokeCompletionWithReturnValue:v5 error:v7];
}

void sub_247FC2510(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 object];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  v7 = [v8 error];
  [v6 invokeCompletionWithReturnValue:v5 error:v7];
}

void sub_247FC26F8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 intValue] >= 1)
  {
    kill([v3 intValue], 9);
  }
}

uint64_t sub_247FC3414(void *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *a3;
  result = [a1 cStringUsingEncoding:1];
  *v4 = result;
  *a3 = v4 + 1;
  return result;
}

uint64_t sub_247FC3B5C(uint64_t a1, void *a2)
{
  result = [a2 errorStatus];
  if (result)
  {
    *(*(a1 + 32) + 16) = 0;
  }

  return result;
}

void sub_247FC3F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FC401C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v3 errorStatus] == 2)
    {
      v5 = [WeakRetained serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FC4100;
      block[3] = &unk_278EF1070;
      v7 = WeakRetained;
      dispatch_async(v5, block);
    }

    else
    {
      [WeakRetained messageReceived:v3];
    }
  }
}

void sub_247FC4114(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 errorStatus] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802EFF8(v3);
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if ([v3 errorStatus] == 2)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_24802EFBC(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_247FC4254(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 72) messageReceived:*(a1 + 40)];
  v2 = [*(a1 + 32) memoHandler];
  v3 = [v2 handleMemo:v4];
}

void sub_247FC4444(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    NSLog(&cfstr_ExceptionCaugh.isa);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_247FC44A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 errorStatus] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802F0BC(v3);
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if ([v3 errorStatus] == 2)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_24802F080(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_247FC46B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 errorStatus] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802F180(v3);
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if ([v3 errorStatus] == 2)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_24802F144(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_247FC4838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FC48B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 errorStatus] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802F244(v3);
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if ([v3 errorStatus] == 2)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_24802F208(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_247FC4A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FC4AA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 errorStatus] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      sub_24802F308(v3);
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  if ([v3 errorStatus] == 2)
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      sub_24802F2CC(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_247FC4CA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_247FC4CC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_247FC52F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FC5328(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FC5340(uint64_t a1, void *a2, char a3)
{
  v12 = a2;
  if ((*(a1 + 64) | 2) != 2)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {
    sub_24802F650();
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    sub_24802F67C();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 32) config], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "discardHeartbeatsWhenPossible"), v5, v6))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
LABEL_7:
    v7 = [*(a1 + 32) memoHandler];
    v8 = [v7 handleMemo:v12];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (a3)
    {
      v11 = *(*(a1 + 48) + 8);
      if (*(v11 + 24) == 1)
      {
        sub_24802F6A8();
      }

      *(v11 + 24) = 1;
    }

    else
    {
      [*(*(*(a1 + 56) + 8) + 40) waitUntilFinished];
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_247FC558C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

CFMutableDictionaryRef DTNStatSourceMapInitialize(CFMutableDictionaryRef *a1)
{
  result = CFDictionaryCreateMutable(0, 1000, 0, MEMORY[0x277CBF150]);
  *a1 = result;
  a1[1] = 0;
  return result;
}

void DTNStatSourceMapDestroy(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

void DTNStatSourceMapAddSource(uint64_t a1, const void *a2)
{
  v4 = objc_alloc_init(DTNStatSourceMapEntry);
  v5 = *(a1 + 8);
  *(a1 + 8) = v5 + 1;
  value = v4;
  v4->_serialNumber = v5;
  [(DTNStatSourceMapEntry *)v4 setPid:0xFFFFFFFFLL];
  v6 = [[XRNetworkingServiceObservationTuple alloc] initWithKind:2 count:11];
  [(DTNStatSourceMapEntry *)value setLastStats:v6];

  CFDictionaryAddValue(*a1, a2, value);
}

void DTNStatSourceMapRemoveSource(__CFDictionary **a1, const void *a2)
{
  v2 = *a1;
  if (v2)
  {
    CFDictionaryRemoveValue(v2, a2);
  }
}

id sub_247FC5D88(void *a1, int a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"DTKPKTraceFileAgregator" code:a2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_247FC663C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_247FC6AC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_247FC6A28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_247FC6AC0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_247FC6B34((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_247FC6B34(uint64_t a1)
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

uint64_t sub_247FC6BB4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_247FC6CA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A189C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_247FC6CD0(uint64_t a1)
{
  result = kperf_sample_off();
  *(**(a1 + 8) + 16) = 0;
  return result;
}

uint64_t sub_247FC6D00(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18A30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247FC6DBC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18A50;
  a2[1] = v2;
  return result;
}

uint64_t sub_247FC6DE8(uint64_t a1)
{
  result = kperf_sample_off();
  *(**(a1 + 8) + 16) = 0;
  return result;
}

uint64_t sub_247FC6E18(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18AB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247FC6EF0(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18B30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247FC7200(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sDTTapLogClient();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 12);
    v8 = 67109120;
    v9 = v3;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_INFO, "DTTap: (%d) start API: Began running", &v8, 8u);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 32))
  {
    if (*(v4 + 8))
    {
      NSLog(&cfstr_TryingToStartA.isa);
    }

    else
    {
      *(v4 + 8) = 1;
      [*(a1 + 32) _start];
    }
  }

  else
  {
    NSLog(&cfstr_TryingToStartA_0.isa);
  }

  v5 = sDTTapLogClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 12);
    v8 = 67109120;
    v9 = v6;
    _os_log_impl(&dword_247F67000, v5, OS_LOG_TYPE_INFO, "DTTap: (%d) start API: Finished running", &v8, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_247FC74D0(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sDTTapLogClient();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 12);
    v10 = 67109120;
    v11 = v3;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_INFO, "DTTap: (%d) stop API: Began running", &v10, 8u);
  }

  [*(a1 + 32) _stop];
  v4 = [*(a1 + 32) _fetchDataForReason:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = sDTTapLogClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 32) + 12);
    v10 = 67109120;
    v11 = v8;
    _os_log_impl(&dword_247F67000, v7, OS_LOG_TYPE_INFO, "DTTap: (%d) stop API: Finished running", &v10, 8u);
  }

  *(*(a1 + 32) + 8) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FC7794(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sDTTapLogClient();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 12);
    v7 = 67109120;
    v8 = v3;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_INFO, "DTTap: (%d) pause API: Began running", &v7, 8u);
  }

  [*(a1 + 32) _pause];
  v4 = sDTTapLogClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 12);
    v7 = 67109120;
    v8 = v5;
    _os_log_impl(&dword_247F67000, v4, OS_LOG_TYPE_INFO, "DTTap: (%d) pause API: Finished running", &v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_247FC7A2C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sDTTapLogClient();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 12);
    v7 = 67109120;
    v8 = v3;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_INFO, "DTTap: (%d) unpause API: Began running", &v7, 8u);
  }

  [*(a1 + 32) _unpause];
  v4 = sDTTapLogClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 12);
    v7 = 67109120;
    v8 = v5;
    _os_log_impl(&dword_247F67000, v4, OS_LOG_TYPE_INFO, "DTTap: (%d) unpause API: Finished running", &v7, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_247FC7C74(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sDTTapLogClient();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 12);
    *buf = 67109120;
    v12 = v3;
    _os_log_impl(&dword_247F67000, v2, OS_LOG_TYPE_INFO, "DTTap: (%d) fetchDataNow API: Began running", buf, 8u);
  }

  v4 = [*(a1 + 32) _fetchDataForReason:1];
  if (v4)
  {
    v5 = MEMORY[0x277D036B8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247FC7E14;
    v9[3] = &unk_278EF1070;
    v10 = *(a1 + 40);
    [v5 runWhenOperationFinishes:v4 block:v9];
  }

  else
  {
    [*(a1 + 40) start];
  }

  v6 = sDTTapLogClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 12);
    *buf = 67109120;
    v12 = v7;
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_INFO, "DTTap: (%d) fetchDataNow API: Finished running", buf, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_247FC8AA8(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v1 + 896));
  objc_exception_rethrow();
}

void sub_247FC8C1C(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v1 + 896));
  objc_exception_rethrow();
}

uint64_t sub_247FC9434(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t sub_247FC9478(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_247FC9658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FC9670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FC9688(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 name];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_247FC98AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FC98C8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 name];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v9 = [v11 alias];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_247FC9AEC(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [v8 name];
  [v3 addObject:v4];

  v5 = [v8 alias];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 alias];
    [v6 addObject:v7];
  }
}

void sub_247FC9DCC()
{
  v0 = sub_247FC9E10(&unk_27EE82C50, 74);
  v1 = qword_27EE84390;
  qword_27EE84390 = v0;
}

id sub_247FC9E10(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = objc_opt_new();
  if (v2)
  {
    v2 = v2;
    v5 = (a1 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      [v4 addObject:v7];

      --v2;
    }

    while (v2);
  }

  return v4;
}

void sub_247FC9EE8()
{
  v0 = sub_247FC9E10(&unk_27EE830F0, 37);
  v1 = qword_27EE843A0;
  qword_27EE843A0 = v0;
}

void sub_247FC9F70()
{
  v0 = sub_247FC9E10(&unk_27EE83340, 11);
  v1 = qword_27EE843B0;
  qword_27EE843B0 = v0;
}

void sub_247FC9FF8()
{
  v0 = sub_247FCA03C(&unk_27EE82C50, 0x4Au);
  v1 = qword_27EE843C0;
  qword_27EE843C0 = v0;
}

id sub_247FCA03C(uint64_t a1, unsigned int a2)
{
  v4 = objc_opt_new();
  if (a2)
  {
    v5 = (a1 + 8);
    v6 = a2;
    do
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:*(v5 - 2)];
      v8 = *v5;
      v5 += 2;
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      [v4 setObject:v7 forKeyedSubscript:v9];

      --v6;
    }

    while (v6);
  }

  return v4;
}

void sub_247FCA13C()
{
  v0 = sub_247FCA03C(&unk_27EE830F0, 0x25u);
  v1 = qword_27EE843D0;
  qword_27EE843D0 = v0;
}

void sub_247FCA1C4()
{
  v0 = sub_247FCA03C(&unk_27EE83340, 0xBu);
  v1 = qword_27EE843E0;
  qword_27EE843E0 = v0;
}

void sub_247FCB3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DTGPUAGXCounterSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_247FCBB10(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_247FCD450(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_247FCBBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained pullAndDrainCounters];
  }
}

void sub_247FCC118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, uint64_t a15, char a16)
{
  __p = &a16;
  sub_247FCDB30(&__p);

  _Unwind_Resume(a1);
}

void sub_247FCC470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, char a18)
{
  a15 = &a18;
  sub_247FCDB30(&a15);

  _Unwind_Resume(a1);
}

void sub_247FCD450(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_247F85814();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_247FCD5BC(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_247FCD614(v18);
  }
}

void sub_247FCD5BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_247F93D28();
}

uint64_t sub_247FCD614(uint64_t a1)
{
  sub_247FCD64C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_247FCD64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *sub_247FCD6AC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_247FCD720(result, a2);
  }

  return result;
}

void sub_247FCD704(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_247FCD720(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_247F85814();
}

void sub_247FCD770(char **a1, size_t a2)
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
      sub_247F85814();
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

uint64_t sub_247FCD8A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_247FCD930(result, a4);
  }

  return result;
}

void sub_247FCD910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_247FCDB30(&a9);
  _Unwind_Resume(a1);
}

void sub_247FCD930(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_247FCD5BC(a1, a2);
  }

  sub_247F85814();
}

void *sub_247FCD97C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_247FCDA2C(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_247FCDAA8(v8);
  return v4;
}

uint64_t sub_247FCDA2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_247FCD720(result, a4);
  }

  return result;
}

void sub_247FCDA8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_247FCDAA8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_247FCDAE0(a1);
  }

  return a1;
}

void sub_247FCDAE0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_247FCDB30(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_247FCDB84(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_247FCDB84(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

char *sub_247FCDBDC(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_247F85814();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_247FBEC9C(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &a4[v5];
      v25 = &a4[v5 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_247FCE314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FCE338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FCE350(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t DTIntegerSysctlByName(const char *a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  result = sysctlbyname(a1, 0, &v7, 0, 0);
  if (!result)
  {
    if (v7 == 4)
    {
      v5 = &v8;
    }

    else
    {
      if (v7 != 8)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = &v9;
    }

    result = sysctlbyname(a1, v5, &v7, 0, 0);
    if (!result)
    {
      if (v5 == &v8)
      {
        v6 = v8;
      }

      else
      {
        if (v5 != &v9)
        {
          return 0;
        }

        v6 = v9;
      }

      result = 0;
      *a2 = v6;
    }
  }

  return result;
}

uint64_t DTGetCoreCount()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *v4 = 0x300000006;
  v2 = 4;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL DTCoreIs64BitCapable()
{
  v2 = -1;
  if (DTIntegerSysctlByName("hw.cpu64bit_capable", &v2))
  {
    v0 = 1;
  }

  else
  {
    v0 = v2 == 0;
  }

  return !v0;
}

uint64_t DTGetPhysicalMemorySize()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *v4 = 0x1800000006;
  v2 = 8;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DTProcessIs64Bit(int a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v36 = 1;
  v37 = 0x10000000ELL;
  v38 = a1;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v4 = 648;
  v1 = sysctl(&v36, 4u, v5, &v4, 0, 0);
  result = 0;
  if (!v1 && v4)
  {
    result = (v6 >> 2) & 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DTProcessIsTranslated(int a1)
{
  v39 = *MEMORY[0x277D85DE8];
  *v36 = 0xE00000001;
  v37 = 1;
  v38 = a1;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v4 = 648;
  v1 = sysctl(v36, 4u, v5, &v4, 0, 0);
  result = 0;
  if (!v1 && v4)
  {
    result = (BYTE2(v6) >> 1) & 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DTArchitectureOfProcess(int a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *v37 = 0xE00000001;
    v38 = 1;
    v39 = a1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    memset(v6, 0, sizeof(v6));
    v5 = 648;
    v1 = sysctl(v37, 4u, v6, &v5, 0, 0);
    result = 0xFFFFFFFFLL;
    if (!v1 && v5)
    {
      if ((v7 & 4) != 0)
      {
        v3 = 16777228;
      }

      else
      {
        v3 = 12;
      }

      if ((v7 & 0x20000) != 0)
      {
        result = 16777223;
      }

      else
      {
        result = v3;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL DTProcessIsSigStopped(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 13, 0, buffer, 64) <= 0)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (result)
    {
      v3 = __error();
      v4 = strerror(*v3);
      v6[0] = 67109378;
      v6[1] = a1;
      v7 = 2082;
      v8 = v4;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to retrieve process info for pid %d: %{public}s", v6, 0x12u);
      result = 0;
    }
  }

  else
  {
    result = HIDWORD(buffer[0]) == 4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DTNetworkLastInterfaceIndex()
{
  v6 = *MEMORY[0x277D85DE8];
  *v4 = xmmword_24803DA30;
  v5 = 1;
  v3 = 4;
  v2 = 0;
  if (sysctl(v4, 5u, &v2, &v3, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v2;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void DTNetworkInterfaceNameAtIndex(int a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *v9 = xmmword_24803CDC0;
  v9[4] = a1;
  v9[5] = 1;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 180;
  v2 = a2;
  if (sysctl(v9, 6u, v7, &v6, 0, 0))
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v4 = v7;
    v3 = v2;
  }

  (*(v2 + 2))(v3, v4);

  v5 = *MEMORY[0x277D85DE8];
}

BOOL DTHostInDeveloperMode()
{
  v2 = -1;
  if (DTIntegerSysctlByName("security.mac.amfi.developer_mode_status", &v2))
  {
    v0 = 1;
  }

  else
  {
    v0 = v2 == 0;
  }

  return !v0;
}

void sub_247FCFFB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_opt_new();
  v7 = [v6 unsignedIntegerValue];

  [v8 setPid:v7];
  [v8 setAttributes:v5];

  [*(a1 + 32) addObject:v8];
}

void sub_247FD0054(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_opt_new();
  v7 = [v6 unsignedIntegerValue];

  [v8 setCid:v7];
  [v8 setAttributes:v5];

  [*(a1 + 32) addObject:v8];
}

void sub_247FD00F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [DTSysmonCPUUsageEntry alloc];
  v16 = [v3 objectForKeyedSubscript:@"CPU_TotalLoad"];
  [v16 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKeyedSubscript:@"CPU_UserLoad"];
  [v7 doubleValue];
  v9 = v8;
  v10 = [v3 objectForKeyedSubscript:@"CPU_SystemLoad"];
  [v10 doubleValue];
  v12 = v11;
  v13 = [v3 objectForKeyedSubscript:@"CPU_NiceLoad"];

  [v13 doubleValue];
  v15 = [(DTSysmonCPUUsageEntry *)v4 initWithTotal:v6 user:v9 system:v12 nice:v14];
  [v2 addObject:v15];
}

void sub_247FD032C(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___DTCPRemoteCache;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = qword_27EE843F0;
  qword_27EE843F0 = v1;
}

void sub_247FD0830(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(*(v2 + 8) + 8 * v1));
  objc_exception_rethrow();
}

uint64_t sub_247FD0B68(uint64_t result)
{
  if (!atomic_load((*(result + 32) + 40)))
  {
    atomic_store(1u, (*(result + 32) + 40));
    return MEMORY[0x2821F9670](*(result + 32), sel__runBlock);
  }

  return result;
}

uint64_t sub_247FD0DD0(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 40));
  if (v1 == 3)
  {
    atomic_store(1u, (*(result + 32) + 40));
    return MEMORY[0x2821F9670](*(result + 32), sel__runBlock);
  }

  return result;
}

void sub_247FD0F40(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;

  operator delete(v2);
}

void sub_247FD10AC(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_247FD1224()
{
  v0 = objc_opt_new();
  v1 = qword_27EE84410;
  qword_27EE84410 = v0;
}

uint64_t sub_247FD13F4()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DTXPCServiceControllerLog"];

  return v1;
}

void sub_247FD2C4C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FD2CA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FD2CB8(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_247FD311C;
  v31[3] = &unk_278EF3468;
  v2 = *(a1 + 32);
  v32 = *(a1 + 40);
  v35 = *(a1 + 96);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v33 = v3;
  v34 = v4;
  [v2 _matchRemove:v31];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 96)];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 32) + 8);
      v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 96)];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    if (*(a1 + 104) == 1)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      *__str = 0u;
      v39 = 0u;
      if ((*(a1 + 105) & 1) != 0 || *(a1 + 106) == 1)
      {
        if (([MEMORY[0x277CCAC38] isAppleInternal] & 1) == 0)
        {
          v12 = *(a1 + 64);
          v13 = *(a1 + 40);
          v14 = *(a1 + 96);
          v15 = MEMORY[0x277CCA9B8];
          v36 = *MEMORY[0x277CCA450];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Launching a Daemon or Agent is not supported on iOS devices."];
          v37 = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v18 = [v15 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v17];
          (*(v12 + 16))(v12, v13, 0, v14, 0xFFFFFFFFLL, v18);

LABEL_29:
          goto LABEL_30;
        }

        snprintf(__str, 0x200uLL, "system/%s", [*(a1 + 56) UTF8String]);
        v10 = *(*(a1 + 32) + 16);
        v11 = xpc_service_create_from_specifier();
      }

      else
      {
        v19 = *(a1 + 100);
        [*(a1 + 40) UTF8String];
        v20 = *(a1 + 96) & ~(*(a1 + 96) >> 31);
        v21 = *(*(a1 + 32) + 16);
        v11 = xpc_service_create();
      }

      v22 = *(*(a1 + 80) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v11;
    }

    v24 = sub_247FD13F4();
    v25 = *(a1 + 104);
    if (!v24 || (*(a1 + 104) & 1) != 0)
    {
      if ((*(a1 + 104) & 1) == 0)
      {
LABEL_17:
        v26 = xpc_connection_create("com.apple.dt.instruments.dtsecurity.xpc", 0);
        v27 = 0;
LABEL_20:
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), v26);
        if ((v27 & 1) == 0)
        {
        }

        if (*(*(*(a1 + 80) + 8) + 40) || *(*(*(a1 + 88) + 8) + 40))
        {
          v28 = objc_opt_new();
          [v28 setServiceIdentifier:*(a1 + 40)];
          [v28 setClient:*(a1 + 48)];
          v29 = *(*(*(a1 + 80) + 8) + 40);
          if (!v29)
          {
            v29 = *(*(*(a1 + 88) + 8) + 40);
          }

          [v28 setXpcObject:v29];
          if (*(a1 + 107) == 1)
          {
            [v28 setOneshotHandler:*(a1 + 64)];
          }

          [v7 addObject:v28];
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *__str = 136315138;
        *&__str[4] = "com.apple.dt.instruments.dtsecurity.xpc";
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: calling xpc_connection_create: serviceName=%s", __str, 0xCu);
      }

      if ((*(a1 + 104) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v26 = 0;
    v27 = 1;
    goto LABEL_20;
  }

LABEL_30:

  v30 = *MEMORY[0x277D85DE8];
}