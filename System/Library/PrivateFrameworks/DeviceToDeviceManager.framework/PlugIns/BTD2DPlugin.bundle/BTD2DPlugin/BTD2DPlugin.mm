uint64_t BTAdvertiseMgr::BluetoothAvailabilityChanged(BTAdvertiseMgr *this, char a2)
{
  result = BTTaskMgr::BluetoothAvailabilityChanged(this, a2);
  v4 = *(this + 3);
  v5 = this + 32;
  if (*(this + 16) == 1)
  {
    if (v4 != v5)
    {
      do
      {
        result = BTAdvertiseMgr::_Advertise(this, v4 + 4, v4 + 7);
        v6 = *(v4 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v4 + 2);
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  else if (v4 != v5)
  {
    do
    {
      v9 = *(*(this + 1) + 8);
      v10 = *(v4 + 5) - *(v4 + 4);
      v11 = *(v4 + 7);
      v12 = *(v4 + 8);
      result = BTLocalDeviceRemoveData();
      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v4 + 2);
          v8 = *v14 == v4;
          v4 = v14;
        }

        while (!v8);
      }

      v4 = v14;
    }

    while (v14 != v5);
  }

  return result;
}

uint64_t BTAdvertiseMgr::_Advertise(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 8);
  v5 = a2[1] - *a2;
  v6 = a3[1] - *a3;
  if (BTLocalDeviceAdvertiseData())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_91C0();
    }

    return 1;
  }

  else
  {
    v8 = *(*(a1 + 8) + 8);
    if (BTLocalDeviceGetDiscoverable() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_9230();
    }

    v9 = *(*(a1 + 8) + 8);
    if (BTLocalDeviceSetDiscoverable() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_92A0();
    }

    v10 = *(*(a1 + 8) + 8);
    if (BTLocalDeviceSetConnectable() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_9310();
    }

    return 0;
  }
}

uint64_t BTAdvertiseMgr::Advertise(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_D84(v9, a2, a3);
  v12 = v9;
  if (*(sub_F6C(a1 + 24, v9) + 80))
  {
    v12 = v9;
    v6 = sub_F6C(a1 + 24, v9);
    v7 = 0;
    ++*(v6 + 80);
  }

  else
  {
    v12 = v9;
    *(sub_F6C(a1 + 24, v9) + 80) = 1;
    v7 = BTAdvertiseMgr::_Advertise(a1, a2, a3);
  }

  if (__p[1])
  {
    *&v11 = __p[1];
    operator delete(__p[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v7;
}

uint64_t sub_B54(uint64_t a1)
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

uint64_t BTAdvertiseMgr::StopAdvertising(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *__p = 0u;
  v17 = 0u;
  *v15 = 0u;
  sub_D84(v15, a2, a3);
  v18 = v15;
  if (!*(sub_F6C(a1 + 24, v15) + 80))
  {
    goto LABEL_15;
  }

  v18 = v15;
  v6 = sub_F6C(a1 + 24, v15);
  --*(v6 + 80);
  v18 = v15;
  if (*(sub_F6C(a1 + 24, v15) + 80))
  {
    goto LABEL_15;
  }

  sub_1534((a1 + 24), v15);
  if (*(a1 + 16) != 1)
  {
    goto LABEL_15;
  }

  v7 = *(*(a1 + 8) + 8);
  v8 = a2[1] - *a2;
  v9 = *a3;
  v10 = a3[1];
  if (BTLocalDeviceRemoveData())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_9380();
    }

    v11 = 1;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v12 = *(*(a1 + 8) + 8);
  if (BTLocalDeviceSetConnectable() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_9310();
  }

  v13 = *(*(a1 + 8) + 8);
  v11 = BTLocalDeviceSetDiscoverable();
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_92A0();
    }

    goto LABEL_15;
  }

LABEL_16:
  if (__p[1])
  {
    *&v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  return v11;
}

void *sub_D84(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_DF8(a1, *a2, a2[1], a2[1] - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_DF8((a1 + 3), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_DDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_E74(result, a4);
  }

  return result;
}

void sub_E58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_E74(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_EC4();
}

void sub_EDC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_F38(exception, a1);
}

std::logic_error *sub_F38(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_F6C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v2 = *sub_1020(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_11A8();
  }

  return v2;
}

void *sub_1020(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = *a3;
    v6 = *(a3 + 8) - *a3;
    v7 = *(a3 + 24);
    v8 = *(a3 + 32) - v7;
    do
    {
      while (1)
      {
        v9 = v3;
        v11 = v3[4];
        v10 = v3[5];
        v12 = v10 - v11;
        if (v10 - v11 >= v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = v10 - v11;
        }

        v14 = memcmp(v5, v11, v13);
        v15 = v6 < v12;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (!v15)
        {
          v16 = memcmp(v11, v5, v13);
          v17 = v12 < v6;
          if (v16)
          {
            v17 = v16 < 0;
          }

          if (v17)
          {
            break;
          }

          v18 = v9[7];
          v19 = v9[8];
          v20 = v19 - v18;
          if (v19 - v18 >= v8)
          {
            v21 = v8;
          }

          else
          {
            v21 = v19 - v18;
          }

          v22 = memcmp(v7, v18, v21);
          v23 = v8 < v20;
          if (v22)
          {
            v23 = v22 < 0;
          }

          if (!v23)
          {
            break;
          }
        }

        v3 = *v9;
        v4 = v9;
        if (!*v9)
        {
          goto LABEL_32;
        }
      }

      v24 = memcmp(v11, v5, v13);
      v25 = v24 < 0;
      if (!v24)
      {
        v25 = v12 < v6;
      }

      if (!v25)
      {
        v26 = v9[7];
        v27 = v9[8];
        v28 = v27 - v26;
        v29 = v8 >= v27 - v26 ? v27 - v26 : v8;
        v30 = memcmp(v26, v7, v29);
        v31 = v28 < v8;
        if (v30)
        {
          v31 = v30 < 0;
        }

        if (!v31)
        {
          break;
        }
      }

      v4 = v9 + 1;
      v3 = v9[1];
    }

    while (v3);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_32:
  *a2 = v9;
  return v4;
}

uint64_t *sub_1228(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_1340(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_1280(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_14DC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_12CC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_DF8(a1, *a2, a2[1], a2[1] - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_DF8((a1 + 3), a2[3], a2[4], a2[4] - a2[3]);
  return a1;
}

void sub_1324(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1340(uint64_t *result, uint64_t *a2)
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

void sub_14DC(uint64_t a1)
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
}

uint64_t sub_1534(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1590(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1750(a1, v3);
  sub_14DC((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *sub_1590(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32) - v6;
  v8 = (a1 + 8);
  do
  {
    v10 = v3[4];
    v9 = v3[5];
    v11 = v9 - v10;
    if (v5 >= v9 - v10)
    {
      v12 = v9 - v10;
    }

    else
    {
      v12 = v5;
    }

    v13 = memcmp(v3[4], v4, v12);
    v14 = v11 < v5;
    if (v13)
    {
      v14 = v13 < 0;
    }

    if (v14)
    {
      ++v3;
    }

    else
    {
      v15 = memcmp(v4, v10, v12);
      v16 = v5 < v11;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (v16)
      {
        v8 = v3;
      }

      else
      {
        v17 = v3[7];
        v18 = v3[8];
        v19 = v18 - v17;
        if (v7 >= v18 - v17)
        {
          v20 = v18 - v17;
        }

        else
        {
          v20 = v7;
        }

        v21 = memcmp(v17, v6, v20);
        v22 = v19 < v7;
        if (v21)
        {
          v22 = v21 < 0;
        }

        v23 = !v22;
        v24 = 8;
        if (v23)
        {
          v24 = 0;
        }

        if (v23)
        {
          v8 = v3;
        }

        v3 = (v3 + v24);
      }
    }

    v3 = *v3;
  }

  while (v3);
  if (v8 == v2)
  {
    return v2;
  }

  v26 = v8[4];
  v25 = v8[5];
  v27 = v25 - v26;
  if (v25 - v26 >= v5)
  {
    v28 = v5;
  }

  else
  {
    v28 = v25 - v26;
  }

  v29 = memcmp(v4, v8[4], v28);
  v30 = v5 < v27;
  if (v29)
  {
    v30 = v29 < 0;
  }

  if (v30)
  {
    return v2;
  }

  v32 = memcmp(v26, v4, v28);
  v33 = v27 < v5;
  if (v32)
  {
    v33 = v32 < 0;
  }

  if (!v33)
  {
    v34 = v8[7];
    v35 = v8[8];
    v36 = v35 - v34;
    v37 = v35 - v34 >= v7 ? v7 : v35 - v34;
    v38 = memcmp(v6, v34, v37);
    v39 = v7 < v36;
    if (v38)
    {
      v39 = v38 < 0;
    }

    if (v39)
    {
      return v2;
    }
  }

  return v8;
}

uint64_t *sub_1750(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_17C4(v6, a2);
  return v3;
}

uint64_t *sub_17C4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_1B44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t BTBrowseMgr::BluetoothAvailabilityChanged(BTBrowseMgr *this, char a2)
{
  pthread_mutex_lock((this + 24));
  BTTaskMgr::BluetoothAvailabilityChanged(this, a2);
  if (*(this + 16) == 1)
  {
    if (*(this + 13) || *(this + 16))
    {
      v27 = *off_C360;
      v4 = **(this + 1);
      if (BTDiscoveryAgentCreate())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_94D0();
        }

        *(this + 20) = 0;
      }

      v5 = *(this + 11);
      if (v5 != (this + 96))
      {
        do
        {
          v6 = *(this + 20);
          v7 = *(v5 + 4);
          v8 = *(v5 + 5);
          v9 = BTDiscoveryAgentAddKey();
          if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_9540(buf, v9, &v34);
          }

          v10 = *(v5 + 1);
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
              v11 = *(v5 + 2);
              v12 = *v11 == v5;
              v5 = v11;
            }

            while (!v12);
          }

          v5 = v11;
        }

        while (v11 != (this + 96));
      }

      v13 = *(this + 14);
      if (v13 != (this + 120))
      {
        do
        {
          v14 = *(this + 20);
          v15 = *(v13 + 4);
          v16 = *(v13 + 5);
          v17 = BTDiscoveryAgentAddKey();
          if (v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_9540(v31, v17, v32);
          }

          v18 = *(v13 + 1);
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = *(v13 + 2);
              v12 = *v19 == v13;
              v13 = v19;
            }

            while (!v12);
          }

          v13 = v19;
        }

        while (v19 != (this + 120));
      }

      BTBrowseMgr::_StartBrowsing(this, 0);
    }
  }

  else
  {
    v20 = *(this + 20);
    *(this + 42) = 0;
    if (v20)
    {
      if (BTDiscoveryAgentStopScan() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_93F0();
      }

      if (BTDiscoveryAgentDestroy() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_9460();
      }

      *(this + 20) = 0;
    }

    v21 = *(this + 17);
    if (v21 != (this + 144))
    {
      do
      {
        v22 = *(v21 + 5);
        if (v22 != (v21 + 48))
        {
          *__p = 0u;
          v30 = 0u;
          v27 = 0u;
          *v28 = 0u;
          sub_42DC(&v27, 1, 0, *(v21 + 4), v22 + 4, v22 + 7);
          BTD2DPlugin::_QueueServiceEvent(*(this + 1));
        }

        v23 = *(v21 + 1);
        v24 = v21;
        if (v23)
        {
          do
          {
            v25 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v25 = *(v24 + 2);
            v12 = *v25 == v24;
            v24 = v25;
          }

          while (!v12);
        }

        sub_4C00(this + 17, v21);
        v21 = v25;
      }

      while (v25 != (this + 144));
    }
  }

  return pthread_mutex_unlock((this + 24));
}

uint64_t BTBrowseMgr::_StartBrowsing(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v4 = (a1 + 160);
  if (!*(a1 + 160))
  {
    *__p = *off_C360;
    v5 = **(a1 + 8);
    if (BTDiscoveryAgentCreate())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_94D0();
      }

      *v4 = 0;
    }
  }

  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      sub_2858(a2);
      v6 = v14 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v16 = v6;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Adding new key to browse: %s\n", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = *v4;
    v8 = *a2;
    v9 = a2[1];
    if (BTDiscoveryAgentAddKey())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_958C();
      }

      return 1;
    }
  }

  v10 = *(a1 + 168);
  if (v10 == 3)
  {
    result = 0;
    *(a1 + 168) = 2;
    return result;
  }

  if (v10)
  {
    return 0;
  }

  *(a1 + 168) = 1;
  v11 = *(a1 + 160);
  result = BTDiscoveryAgentStartScanForAdvertizedData();
  if (result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_95FC();
    }

    *(a1 + 168) = 0;
    return 1;
  }

  return result;
}

void *sub_20FC(void *a1)
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

uint64_t BTBrowseMgr::Browse(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock((a1 + 24));
  *&v13 = a2;
  v4 = sub_4C40(a1 + 88, a2);
  ++*(v4 + 56);
  if (*(a1 + 16) != 1)
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  started = BTBrowseMgr::_StartBrowsing(a1, a2);
  if (!started)
  {
    v7 = *(a1 + 136);
    if (v7 != (a1 + 144))
    {
      do
      {
        v18[0] = 0;
        v18[1] = 0;
        v17 = v18;
        BTBrowseMgr::_GetServiceInstancesOfType(started, v7[4], a2);
        v8 = v17;
        if (v17 != v18)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Browse found value matching key on known device!\n", &v13, 2u);
          }

          sub_50C4((v7 + 5), (v8 + 4));
          *__p = 0u;
          v16 = 0u;
          v13 = 0u;
          *v14 = 0u;
          sub_42DC(&v13, 0, 0, v7[4], v8 + 4, v8 + 7);
          BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
        }

        sub_5068(&v17, v18[0]);
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 144));
    }

    goto LABEL_15;
  }

  sub_4ED0((a1 + 88), a2);
  v6 = 1;
LABEL_16:
  pthread_mutex_unlock((a1 + 24));
  return v6;
}

void BTBrowseMgr::_GetServiceInstancesOfType(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_2858(a3);
    v4 = v9 >= 0 ? __p : __p[0];
    buf = 136315138;
    *buf_4 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "_GetServiceInstancesOfType - %s\n", &buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *a3;
  v6 = a3[1];
  v7 = BTDeviceMatchesAdvertisedKey();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "BTDeviceMatchesAdvertisedKey says no match! Result was %d\n", __p, 8u);
  }
}

void sub_2818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_B54(&a13);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2858(uint64_t *a1)
{
  v24 = 0;
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
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_438C(&v10);
  v2 = v10;
  v3 = &v11[-1] + *(v10 - 24);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v11[-1] + *(v10 - 24)));
    v4 = std::locale::use_facet(&v25, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v25);
    v2 = v10;
  }

  *(v3 + 36) = 48;
  *(v11 + *(v2 - 24) + 8) = 2;
  *(&v11[-1] + *(v2 - 24) + 8) = 16392;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + v6);
      v8 = std::ostream::operator<<();
      sub_46BC(v8);
      ++v6;
      v5 = *a1;
    }

    while (v6 < a1[1] - *a1);
  }

  std::stringbuf::str();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_2AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t BTBrowseMgr::_RespondToStatusEvent(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 24));
  if (a2 == 1)
  {
    v4 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v4 == 2)
    {
      BTBrowseMgr::_StartBrowsing(a1, 0);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Nothing left to browse for - scan stopped\n", v6, 2u);
      }

      BTDiscoveryAgentDestroy();
      *(a1 + 160) = 0;
      sub_5358(a1 + 136, *(a1 + 144));
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 136) = a1 + 144;
    }
  }

  else if (!a2 && *(a1 + 168) == 1)
  {
    *(a1 + 168) = 2;
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t BTBrowseMgr::_StopBrowsing(BTBrowseMgr *this)
{
  if (*(this + 13) || *(this + 16))
  {
    return 0;
  }

  v2 = *(this + 42);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_9;
    }

    v3 = 3;
  }

  *(this + 42) = v3;
LABEL_9:
  v4 = *(this + 20);
  result = BTDiscoveryAgentStopScan();
  if (result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_93F0();
    }

    return 1;
  }

  return result;
}

uint64_t BTBrowseMgr::StopBrowsing(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = sub_4F18(a1 + 88, a2);
  if (a1 + 96 == v4)
  {
    v10 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "StopBrowsing: couldn't find key! Dumping browse list...\n", __p, 2u);
    }

    v11 = *(a1 + 88);
    if (v11 != v10)
    {
      do
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_2858(v11 + 4);
          v12 = v19 >= 0 ? __p : __p[0];
          v13 = *(v11 + 14);
          *buf = 136315394;
          v21 = v12;
          v22 = 2048;
          v23 = v13;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Key - %s - count: %lu\n", buf, 0x16u);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v14 = v11[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v10);
    }
  }

  else
  {
    __p[0] = a2;
    v5 = sub_4C40(a1 + 88, a2);
    --*(v5 + 56);
    __p[0] = a2;
    if (!*(sub_4C40(a1 + 88, a2) + 56))
    {
      sub_4ED0((a1 + 88), a2);
      if (a1 + 120 == sub_4F18(a1 + 112, a2) && *(a1 + 16) == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_2858(a2);
          v6 = v19 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v21 = v6;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Removing key from browse: %s\n", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = *(a1 + 160);
        v8 = *a2;
        v9 = *(a2 + 8);
        if (BTDiscoveryAgentRemoveKey() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_9788();
        }

        BTBrowseMgr::_StopBrowsing(a1);
      }
    }
  }

  pthread_mutex_unlock((a1 + 24));
  return 0;
}

uint64_t BTBrowseMgr::StartResolving(uint64_t a1, void *a2, const void **a3)
{
  pthread_mutex_lock((a1 + 24));
  if (a1 + 120 == sub_4F18(a1 + 112, a2))
  {
    v17[0] = 0;
    v16 = &v16 + 8;
    v20[0] = a2;
    v6 = (sub_541C(a1 + 112, a2) + 56);
    if (v6 != &v16)
    {
      sub_5600(v6, v16, &v16 + 1);
    }

    sub_53B8(&v16, *(&v16 + 1));
  }

  *&v16 = a2;
  v7 = sub_541C(a1 + 112, a2);
  sub_5B30(v7 + 56, a3);
  if (*(a1 + 16) == 1)
  {
    started = BTBrowseMgr::_StartBrowsing(a1, a2);
    if (started)
    {
      *&v16 = a2;
      v9 = sub_541C(a1 + 112, a2);
      sub_4ED0((v9 + 56), a3);
    }

    else
    {
      v11 = *(a1 + 136);
      if (v11 != (a1 + 144))
      {
        do
        {
          v24[0] = 0;
          v24[1] = 0;
          v23 = v24;
          BTBrowseMgr::_GetServiceInstancesOfType(started, v11[4], a2);
          *v21 = 0u;
          v22 = 0u;
          *v20 = 0u;
          sub_D84(v20, a2, a3);
          v12 = sub_5BBC(&v23, v20);
          if (v24 != v12)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              LOWORD(v16) = 0;
              _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Resolve found matching key/value on known device!\n", &v16, 2u);
            }

            sub_50C4((v11 + 5), v20);
            *__p = 0u;
            v19 = 0u;
            v16 = 0u;
            *v17 = 0u;
            sub_42DC(&v16, 2, 0, v11[4], (v12 + 32), (v12 + 56));
            BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
          }

          if (v21[1])
          {
            *&v22 = v21[1];
            operator delete(v21[1]);
          }

          if (v20[0])
          {
            v20[1] = v20[0];
            operator delete(v20[0]);
          }

          sub_5068(&v23, v24[0]);
          if (v24 != v12)
          {
            break;
          }

          v13 = v11[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v11[2];
              v15 = *v14 == v11;
              v11 = v14;
            }

            while (!v15);
          }

          v11 = v14;
        }

        while (v14 != (a1 + 144));
      }
    }
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t BTBrowseMgr::StopResolving(uint64_t a1, uint64_t a2, const void **a3)
{
  pthread_mutex_lock((a1 + 24));
  v6 = sub_4F18(a1 + 112, a2);
  v7 = v6;
  if (a1 + 120 == v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "StopResolving: couldn't find key! Dumping resolving list...\n", __p, 2u);
    }

    v13 = *(a1 + 112);
    if (v13 != v7)
    {
      do
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_2858(v13 + 4);
          v14 = v20 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v22 = v14;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Key: %s\n", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = v13[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v13[2];
            v17 = *v16 == v13;
            v13 = v16;
          }

          while (!v17);
        }

        v13 = v16;
      }

      while (v16 != v7);
    }
  }

  else
  {
    v8 = sub_4F18(v6 + 56, a3);
    if ((v7 + 64) != v8)
    {
      sub_4F9C((v7 + 56), v8);
      if (!*(v7 + 72))
      {
        sub_1750((a1 + 112), v7);
        sub_55AC(v7 + 32);
        operator delete(v7);
        if (a1 + 96 == sub_4F18(a1 + 88, a2) && *(a1 + 16) == 1)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            sub_2858(a2);
            v9 = v20 >= 0 ? __p : __p[0];
            *buf = 136315138;
            v22 = v9;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Removing key from browse: %s\n", buf, 0xCu);
            if (v20 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v10 = *(a1 + 160);
          v11 = *a2;
          v12 = *(a2 + 8);
          if (BTDiscoveryAgentRemoveKey() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_9788();
          }

          BTBrowseMgr::_StopBrowsing(a1);
        }
      }
    }
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t BTBrowseMgr::_ResolvingServiceForDevice(BTBrowseMgr *this, unint64_t a2)
{
  pthread_mutex_lock((this + 24));
  v4 = *(this + 18);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = (this + 144);
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == (this + 144) || v5[4] > a2 || (v9 = v5[5], v10 = (v5 + 6), v9 == v5 + 6))
  {
LABEL_18:
    v15 = 0;
  }

  else
  {
    while (1)
    {
      v11 = sub_4F18(this + 112, v9 + 4);
      if ((this + 120) != v11 && (v11 + 64) != sub_4F18(v11 + 56, v9 + 7))
      {
        break;
      }

      v12 = v9[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v9[2];
          v14 = *v13 == v9;
          v9 = v13;
        }

        while (!v14);
      }

      v9 = v13;
      if (v13 == v10)
      {
        goto LABEL_18;
      }
    }

    v15 = 1;
  }

  pthread_mutex_unlock((this + 24));
  return v15;
}

void *sub_36A0(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_EC4();
  }

  return result;
}

uint64_t BTBrowseMgr::_ReportDiscoveryEvent(uint64_t a1, int a2, void *a3)
{
  pthread_mutex_lock((a1 + 24));
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    if (a2 == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "_ReportDiscoveryEvent: lost event\n", buf, 2u);
      }

      v6 = *(a1 + 144);
      if (v6)
      {
        v7 = a1 + 144;
        do
        {
          v8 = *(v6 + 32);
          v9 = v8 >= a3;
          v10 = v8 < a3;
          if (v9)
          {
            v7 = v6;
          }

          v6 = *(v6 + 8 * v10);
        }

        while (v6);
        if (v7 != a1 + 144 && *(v7 + 32) <= a3)
        {
          v11 = *(v7 + 40);
          if (v11 != v7 + 48)
          {
            *__p = 0u;
            v59 = 0u;
            *buf = 0u;
            *v57 = 0u;
            sub_42DC(buf, 1, 0, *(v7 + 32), (v11 + 32), (v11 + 56));
            BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
          }

          sub_4C00((a1 + 136), v7);
        }
      }
    }
  }

  else
  {
    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "_ReportDiscoveryEvent: found/changed event\n", buf, 2u);
    }

    v64 = 0;
    v65 = 0;
    v63 = &v64;
    v13 = *(a1 + 88);
    if (v13 != (a1 + 96))
    {
      do
      {
        BTBrowseMgr::_GetServiceInstancesOfType(v12, a3, v13 + 4);
        v14 = v13[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v13[2];
            v16 = *v15 == v13;
            v13 = v15;
          }

          while (!v16);
        }

        v13 = v15;
      }

      while (v15 != (a1 + 96));
      if (v65)
      {
        v18 = (a1 + 144);
        v17 = *(a1 + 144);
        if (!v17)
        {
          goto LABEL_34;
        }

        v19 = (a1 + 144);
        do
        {
          v20 = v17[4];
          v9 = v20 >= a3;
          v21 = v20 < a3;
          if (v9)
          {
            v19 = v17;
          }

          v17 = v17[v21];
        }

        while (v17);
        if (v19 == v18 || v19[4] > a3)
        {
LABEL_34:
          v19 = (a1 + 144);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "new service list for _browsed_ types:\n", buf, 2u);
        }

        v22 = v63;
        if (v63 != &v64)
        {
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              sub_2858(v22 + 4);
              v23 = SHIBYTE(v57[0]);
              v24 = *buf;
              sub_2858(v22 + 7);
              v25 = buf;
              if (v23 < 0)
              {
                v25 = v24;
              }

              v26 = &v60;
              if (v62 < 0)
              {
                v26 = v60;
              }

              *v71 = 136315394;
              *&v71[4] = v25;
              *&v71[12] = 2080;
              *&v71[14] = v26;
              _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "   Key: %s Value: %s\n", v71, 0x16u);
              if (SHIBYTE(v62) < 0)
              {
                operator delete(v60);
              }

              if (SHIBYTE(v57[0]) < 0)
              {
                operator delete(*buf);
              }
            }

            v27 = v22[1];
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v22[2];
                v16 = *v28 == v22;
                v22 = v28;
              }

              while (!v16);
            }

            v22 = v28;
          }

          while (v28 != &v64);
        }

        v29 = a1 + 136;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "\nold service list for _browsed_ types:\n", buf, 2u);
        }

        if (v19 == v18)
        {
          if (v63 != &v64)
          {
            *__p = 0u;
            v59 = 0u;
            *buf = 0u;
            *v57 = 0u;
            sub_42DC(buf, 0, 0, a3, v63 + 4, v63 + 7);
            BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
          }
        }

        else
        {
          v30 = v19[5];
          if (v30 != v19 + 6)
          {
            do
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                sub_2858(v30 + 4);
                v31 = SHIBYTE(v57[0]);
                v32 = *buf;
                sub_2858(v30 + 7);
                if (v31 >= 0)
                {
                  v33 = buf;
                }

                else
                {
                  v33 = v32;
                }

                v34 = &v60;
                if (v62 < 0)
                {
                  v34 = v60;
                }

                *v71 = 136315394;
                *&v71[4] = v33;
                *&v71[12] = 2080;
                *&v71[14] = v34;
                _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "   Key: %s Value: %s\n", v71, 0x16u);
                if (SHIBYTE(v62) < 0)
                {
                  operator delete(v60);
                }

                if (SHIBYTE(v57[0]) < 0)
                {
                  operator delete(*buf);
                }
              }

              v35 = v30[1];
              if (v35)
              {
                do
                {
                  v36 = v35;
                  v35 = *v35;
                }

                while (v35);
              }

              else
              {
                do
                {
                  v36 = v30[2];
                  v16 = *v36 == v30;
                  v30 = v36;
                }

                while (!v16);
              }

              v30 = v36;
            }

            while (v36 != v19 + 6);
          }

          v61 = 0;
          v62 = 0;
          v60 = &v61;
          v66[0] = v19[5];
          v69 = v63;
          v70 = v19 + 6;
          v68 = &v64;
          *v71 = &v60;
          *&v71[8] = &v61;
          sub_5C4C(v66, &v70, &v69, &v68, v71, buf);
          if (v60 != &v61)
          {
            *__p = 0u;
            v59 = 0u;
            *buf = 0u;
            *v57 = 0u;
            sub_42DC(buf, 1, 0, a3, v60 + 4, v60 + 7);
            BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
          }

          *&v71[8] = 0;
          *&v71[16] = 0;
          v37 = v19[5];
          v70 = v63;
          *v71 = &v71[8];
          v68 = v37;
          v69 = &v64;
          v67 = v19 + 6;
          v66[0] = v71;
          v66[1] = &v71[8];
          sub_5C4C(&v70, &v69, &v68, &v67, v66, buf);
          v29 = a1 + 136;
          if (*v71 != &v71[8])
          {
            *__p = 0u;
            v59 = 0u;
            *buf = 0u;
            *v57 = 0u;
            sub_42DC(buf, 0, 0, a3, (*v71 + 32), (*v71 + 56));
            BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
          }

          sub_4C00((a1 + 136), v19);
          sub_5068(v71, *&v71[8]);
          sub_5068(&v60, v61);
        }

        v60 = a3;
        *buf = &v60;
        v38 = (sub_6264(v29, &v60) + 5);
        if (v38 != &v63)
        {
          sub_6340(v38, v63, &v64);
        }
      }
    }

    sub_5068(&v63, v64);
    v64 = 0;
    v65 = 0;
    v63 = &v64;
    v40 = *(a1 + 112);
    v41 = (a1 + 120);
    if (v40 != (a1 + 120))
    {
      do
      {
        BTBrowseMgr::_GetServiceInstancesOfType(v39, a3, v40 + 4);
        v42 = v40[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v40[2];
            v16 = *v43 == v40;
            v40 = v43;
          }

          while (!v16);
        }

        v40 = v43;
      }

      while (v43 != v41);
      v44 = v63;
      if (v63 != &v64)
      {
        do
        {
          v45 = sub_4F18(a1 + 112, v44 + 4);
          v46 = v45;
          if (v41 != v45)
          {
            v47 = sub_4F18(v45 + 56, v44 + 7);
            if (v46 + 64 != v47)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                sub_2858((v46 + 32));
                v48 = SHIBYTE(v57[0]);
                v49 = *buf;
                sub_2858((v47 + 32));
                v50 = buf;
                if (v48 < 0)
                {
                  v50 = v49;
                }

                if (v62 >= 0)
                {
                  v51 = &v60;
                }

                else
                {
                  v51 = v60;
                }

                *v71 = 136315394;
                *&v71[4] = v50;
                *&v71[12] = 2080;
                *&v71[14] = v51;
                _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Resolved new service - Key: %s Value %s\n", v71, 0x16u);
                if (SHIBYTE(v62) < 0)
                {
                  operator delete(v60);
                }

                if (SHIBYTE(v57[0]) < 0)
                {
                  operator delete(*buf);
                }
              }

              v60 = a3;
              *buf = &v60;
              v52 = sub_6264(a1 + 136, &v60);
              sub_50C4((v52 + 5), (v44 + 4));
              *__p = 0u;
              v59 = 0u;
              *buf = 0u;
              *v57 = 0u;
              sub_42DC(buf, 2, 0, a3, (v46 + 32), (v47 + 32));
              BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
            }
          }

          v53 = v44[1];
          if (v53)
          {
            do
            {
              v54 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v54 = v44[2];
              v16 = *v54 == v44;
              v44 = v54;
            }

            while (!v16);
          }

          v44 = v54;
        }

        while (v54 != &v64);
      }
    }

    sub_5068(&v63, v64);
  }

  return pthread_mutex_unlock((a1 + 24));
}

void sub_4200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, void *a31)
{
  sub_5068(&a27, a28);
  sub_5068(&a30, a31);
  _Unwind_Resume(a1);
}

uint64_t sub_42DC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_DF8(a1 + 16, *a5, a5[1], a5[1] - *a5);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_DF8(a1 + 40, *a6, a6[1], a6[1] - *a6);
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  return a1;
}

void sub_435C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***sub_438C(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_44F8((a1 + 1), 16);
  return a1;
}

void sub_44D0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_44F8(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_45B4(a1);
  return a1;
}

void sub_458C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_45B4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_46BC(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_4800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x47E0);
}

uint64_t sub_4868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_4A58();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_4A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4A70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *sub_4B8C(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_DF8(a1, *a2, a2[1], a2[1] - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_DF8((a1 + 3), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_4BE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_4C00(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1750(a1, a2);
  sub_5068(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_4C40(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = *sub_4CE4(a1, &v3, a2);
  if (!result)
  {
    sub_4DC8();
  }

  return result;
}

void *sub_4CE4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8) - *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v10 = v4[4];
        v9 = v4[5];
        v11 = v9 - v10;
        if (v9 - v10 >= v7)
        {
          v12 = v7;
        }

        else
        {
          v12 = v9 - v10;
        }

        v13 = memcmp(v6, v10, v12);
        v14 = v7 < v11;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v15 = memcmp(v10, v6, v12);
      v16 = v11 < v7;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

void sub_4E50(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_4E6C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_4E6C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_4ED0(uint64_t **a1, const void **a2)
{
  v3 = sub_4F18(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_4F9C(a1, v3);
  return 1;
}

uint64_t sub_4F18(uint64_t a1, const void **a2)
{
  v3 = a1 + 8;
  v4 = sub_4FE0(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *a2;
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = a2[1] - *a2;
  v10 = v8 - v7;
  v11 = v8 - v7 >= v9 ? v9 : v8 - v7;
  v12 = memcmp(v6, v7, v11);
  v13 = v9 < v10;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return v3;
  }

  return v5;
}

uint64_t *sub_4F9C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1750(a1, a2);
  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_4FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    v7 = *(a2 + 8) - *a2;
    do
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      v10 = v9 - v8;
      if (v7 >= v9 - v8)
      {
        v11 = v9 - v8;
      }

      else
      {
        v11 = v7;
      }

      v12 = memcmp(v8, v6, v11);
      v13 = v10 < v7;
      if (v12)
      {
        v13 = v12 < 0;
      }

      v14 = !v13;
      if (v13)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        a4 = v5;
      }

      v5 = *(v5 + v15);
    }

    while (v5);
  }

  return a4;
}

void sub_5068(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_5068(a1, *a2);
    sub_5068(a1, a2[1]);
    sub_14DC((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_50C4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v2 = *sub_5160(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_51FC();
  }

  return v2;
}

void *sub_5160(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_5274(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_5274(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_5274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *a3;
  v8 = v5 - *a2;
  v9 = *(a3 + 8) - *a3;
  if (v9 >= v8)
  {
    v10 = v5 - *a2;
  }

  else
  {
    v10 = *(a3 + 8) - *a3;
  }

  v11 = memcmp(*a2, *a3, v10);
  v12 = v8 < v9;
  if (v11)
  {
    v12 = v11 < 0;
  }

  if (v12)
  {
    return 1;
  }

  v14 = memcmp(v7, v6, v10);
  v15 = v9 < v8;
  if (v14)
  {
    v15 = v14 < 0;
  }

  if (v15)
  {
    return 0;
  }

  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a3 + 24);
  v19 = *(a3 + 32);
  v20 = v17 - v16;
  v21 = v19 - v18;
  if (v19 - v18 >= v17 - v16)
  {
    v22 = v17 - v16;
  }

  else
  {
    v22 = v19 - v18;
  }

  v23 = memcmp(v16, v18, v22);
  if (v23)
  {
    return v23 < 0;
  }

  else
  {
    return v20 < v21;
  }
}

void sub_5358(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_5358(a1, *a2);
    sub_5358(a1, a2[1]);
    sub_5068((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_53B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_53B8(a1, *a2);
    sub_53B8(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_541C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v2 = *sub_4CE4(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_54D0();
  }

  return v2;
}

uint64_t sub_5560(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_55AC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_55AC(uint64_t a1)
{
  sub_53B8(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

uint64_t **sub_5600(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_5960(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          if (v8 != v9)
          {
            sub_5794(v8 + 4, v9[4], v9[5], v9[5] - v9[4]);
            v8 = v15;
          }

          v16 = 0;
          v10 = sub_58BC(v5, &v16, (v8 + 4));
          sub_1228(v5, v16, v10, v8);
          v15 = v14;
          if (v14)
          {
            v14 = sub_5960(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_59B4(&v13);
  }

  if (a2 != a3)
  {
    sub_5A0C();
  }

  return result;
}

void *sub_5794(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_E74(v6, v10);
    }

    sub_EC4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_58BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8) - *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        v8 = v4[4];
        v9 = v4[5];
        v10 = v9 - v8;
        v11 = v9 - v8 >= v7 ? v7 : v9 - v8;
        v12 = memcmp(v6, v8, v11);
        v13 = v7 < v10;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (!v13)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_14:
  *a2 = v5;
  return result;
}

void *sub_5960(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_59B4(uint64_t a1)
{
  sub_53B8(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_53B8(*a1, v2);
  }

  return a1;
}

void sub_5A0C()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_5A94();
}

void sub_5A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_4E6C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5B14(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_4E6C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_5B30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = *sub_4CE4(a1, &v3, a2);
  if (!result)
  {
    sub_5A94();
  }

  return result;
}

uint64_t sub_5BBC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_5274(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_5274(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

double sub_5C4C@<D0>(void *a1@<X0>, void **a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v8 = *a1;
  v9 = *a2;
  if (*a1 == *a2)
  {
LABEL_57:
    v9 = v8;
    goto LABEL_58;
  }

  v10 = a4;
  v11 = *a3;
  if (*a3 != *a4)
  {
    v64 = a3;
    do
    {
      v13 = v8[4];
      v12 = v8[5];
      v14 = v11[4];
      v15 = v12 - v13;
      v16 = v11[5] - v14;
      if (v16 >= v12 - v13)
      {
        v17 = v12 - v13;
      }

      else
      {
        v17 = v11[5] - v14;
      }

      v18 = memcmp(v8[4], v11[4], v17);
      v19 = v15 < v16;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (v19)
      {
        goto LABEL_10;
      }

      v26 = memcmp(v14, v13, v17);
      v27 = v16 < v15;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (v27)
      {
        goto LABEL_28;
      }

      v28 = v8[7];
      v29 = v8[8];
      v30 = v11[7];
      v31 = v11[8];
      v32 = v29 - v28;
      v33 = v31 - v30;
      if (v31 - v30 >= v29 - v28)
      {
        v34 = v29 - v28;
      }

      else
      {
        v34 = v31 - v30;
      }

      v35 = memcmp(v28, v30, v34);
      v36 = v32 < v33;
      v10 = a4;
      v6 = a5;
      v37 = v36;
      if (v35)
      {
        v37 = v35 < 0;
      }

      if (v37)
      {
LABEL_10:
        sub_5F1C(v6, (v8 + 4));
        v20 = a1;
        v21 = *a1;
        v22 = *(*a1 + 8);
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v21[2];
            v24 = *v23 == v21;
            v21 = v23;
          }

          while (!v24);
        }

        *a1 = v23;
        v25 = v64;
      }

      else
      {
LABEL_28:
        v38 = v16 < v15;
        v39 = memcmp(v14, v13, v17);
        v40 = v39 < 0;
        if (!v39)
        {
          v40 = v38;
        }

        if (v40)
        {
          goto LABEL_37;
        }

        v41 = v11[7];
        v42 = v11[8];
        v43 = v8[7];
        v44 = v8[8];
        v45 = v42 - v41;
        v46 = v44 - v43;
        if (v44 - v43 >= v42 - v41)
        {
          v47 = v42 - v41;
        }

        else
        {
          v47 = v44 - v43;
        }

        v48 = memcmp(v41, v43, v47);
        v49 = v45 < v46;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (v49)
        {
LABEL_37:
          v50 = v11[1];
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = v11[2];
              v24 = *v51 == v11;
              v11 = v51;
            }

            while (!v24);
          }

          v20 = a1;
          v25 = v64;
          *v64 = v51;
        }

        else
        {
          v52 = v8[1];
          if (v52)
          {
            do
            {
              v53 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v53 = v8[2];
              v24 = *v53 == v8;
              v8 = v53;
            }

            while (!v24);
          }

          v20 = a1;
          v25 = v64;
          *a1 = v53;
          v54 = *v64;
          v55 = *(*v64 + 8);
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v54[2];
              v24 = *v56 == v54;
              v54 = v56;
            }

            while (!v24);
          }

          *v64 = v56;
        }
      }

      v8 = *v20;
      v9 = *a2;
      if (*v20 == *a2)
      {
        goto LABEL_57;
      }

      v11 = *v25;
    }

    while (*v25 != *v10);
  }

LABEL_58:
  v57 = *v6;
  v58 = *(v6 + 8);
  v66 = 0;
  v67 = 0uLL;
  sub_61CC(v8, v9, v57, v58, &v66);
  *a6 = v66;
  result = *&v67;
  *(a6 + 8) = v67;
  return result;
}

void **sub_5F1C(void **a1, uint64_t a2)
{
  v3 = sub_5F88(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
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
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t sub_5F88(void *a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_6028(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_51FC();
  }

  return v3;
}

uint64_t *sub_6028(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_5274(a1, a5, (a2 + 4)))
  {
    if (!sub_5274(a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_5274(a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_5274(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_5160(a1, a3, a5);
}

double sub_61CC@<D0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a1;
  *&v12 = a3;
  *(&v12 + 1) = a4;
  if (a1 != a2)
  {
    do
    {
      sub_5F1C(&v12, (v5 + 4));
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

    while (v9 != a2);
    v5 = a2;
  }

  *a5 = v5;
  result = *&v12;
  *(a5 + 8) = v12;
  return result;
}

void *sub_6264(uint64_t a1, unint64_t *a2)
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

uint64_t **sub_6340(uint64_t **result, char **a2, char **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_5960(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_64C8(v8 + 4, v9 + 4);
          v16 = 0;
          v10 = sub_651C(v5, &v16, (v15 + 4));
          sub_1228(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_5960(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_6598(&v13);
  }

  if (a2 != a3)
  {
    sub_65F0();
  }

  return result;
}

char **sub_64C8(char **a1, char **a2)
{
  if (a1 != a2)
  {
    sub_5794(a1, *a2, a2[1], a2[1] - *a2);
    sub_5794(a1 + 3, a2[3], a2[4], a2[4] - a2[3]);
  }

  return a1;
}

void *sub_651C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_5274(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t sub_6598(uint64_t a1)
{
  sub_5068(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_5068(*a1, v2);
  }

  return a1;
}

void sub_65F0()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_51FC();
}

void sub_6664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1280(va);
  _Unwind_Resume(a1);
}

void BTInterestMgr::BluetoothAvailabilityChanged(BTInterestMgr *this, char a2)
{
  BTTaskMgr::BluetoothAvailabilityChanged(this, a2);
  if (*(this + 16) == 1)
  {
    v3 = **(this + 1);
    v4 = BTServiceAddCallbacksWithFilter();
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_97F8(v5);
      }
    }

    return;
  }

  pthread_mutex_lock((this + 24));
  *(this + 12) = *(this + 11);
  v6 = *(this + 15);
  v7 = *(this + 16);
  *(this + 19) = 0;
  v8 = (v7 - v6) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v9 = *(this + 16);
      v6 = (*(this + 15) + 8);
      *(this + 15) = v6;
      v8 = (v9 - v6) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v10 = 256;
    goto LABEL_12;
  }

  if (v8 == 2)
  {
    v10 = 512;
LABEL_12:
    *(this + 18) = v10;
  }

  pthread_mutex_unlock((this + 24));
}

BOOL _btServiceEventCallback(_BOOL8 result, int a2, int a3, int a4, int a5, BTInterestMgr *this)
{
  v9 = result;
  if (a3 == 1)
  {
    result = BTInterestMgr::_IsDeviceRetained(this, result);
    if (result)
    {
      if (a4 == 12 && !a5)
      {
        BTInterestMgr::RemoveInterest(this, v9);
        v10 = this;
        v11 = 1;
        goto LABEL_11;
      }

      if (a4 != 2)
      {
        v10 = this;
        v11 = 1;
        goto LABEL_24;
      }
    }
  }

  else if (!a3)
  {
    result = BTInterestMgr::_IsDeviceRetained(this, result);
    if (result)
    {
      if (a4 == 11 && !a5)
      {
        v10 = this;
        v11 = 0;
LABEL_11:
        v12 = v9;
        v13 = 0;
        goto LABEL_25;
      }

      v14 = a4 == 1 && a5 == 0;
      v15 = v14;
      if (a4 && !v15)
      {
        BTInterestMgr::_RetryConnection(this, v9);
        v10 = this;
        v11 = 0;
LABEL_24:
        v12 = v9;
        v13 = a5;
LABEL_25:

        BTInterestMgr::ReportInterestEvent(v10, v11, v12, v13);
      }
    }
  }

  return result;
}

uint64_t BTInterestMgr::Retain(BTInterestMgr *this, void *a2)
{
  pthread_mutex_lock((this + 24));
  v4 = *(this + 11);
  v5 = *(this + 12);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = *(this + 13);
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_EC4();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_7258(this + 88, v12);
      }

      *(8 * v9) = a2;
      v8 = 8 * v9 + 8;
      v13 = *(this + 11);
      v14 = *(this + 12) - v13;
      v15 = (8 * v9 - v14);
      memcpy(v15, v13, v14);
      v16 = *(this + 11);
      *(this + 11) = v15;
      *(this + 12) = v8;
      *(this + 13) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    *(this + 12) = v8;
  }

  v17 = pthread_mutex_unlock((this + 24));
  if (*(this + 16) != 1)
  {
    return 0;
  }

  v24 = 0;
  __chkstk_darwin(v17);
  v18 = v23;
  bzero(v23, 0x800uLL);
  v19 = *(*(this + 1) + 8);
  if (BTLocalDeviceGetConnectedDevices() || (v22 = v24) == 0)
  {
LABEL_21:
    v20 = BTDeviceConnectServices();
    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_9878(a2, v20);
      }

      return 1;
    }

    return 0;
  }

  while (*v18 != a2)
  {
    ++v18;
    if (!--v22)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t BTInterestMgr::RemoveInterest(BTInterestMgr *this, void *a2)
{
  pthread_mutex_lock((this + 24));
  v5 = *(this + 11);
  v4 = *(this + 12);
  if (v5 != v4)
  {
    v6 = *(this + 11);
    while (*v6 != a2)
    {
      ++v6;
      ++v5;
      if (v6 == v4)
      {
        v5 = *(this + 12);
        break;
      }
    }
  }

  v7 = (v4 - (v5 + 1));
  if (v4 != v5 + 1)
  {
    memmove(v5, v5 + 1, v4 - (v5 + 1));
  }

  *(this + 12) = &v7[v5];

  return pthread_mutex_unlock((this + 24));
}

void BTInterestMgr::ReportInterestEvent(uint64_t a1, int a2, uint64_t a3, int a4)
{
  memset(v10, 0, sizeof(v10));
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  if (a2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  sub_42DC(&v6, v5, a4 != 0, a3, v10, v10);
  BTD2DPlugin::_QueueServiceEvent(*(a1 + 8));
}

void sub_6BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_20FC(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    *(v9 - 32) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

BOOL BTInterestMgr::_IsDeviceRetained(BTInterestMgr *this, void *a2)
{
  pthread_mutex_lock((this + 24));
  v4 = *(this + 11);
  v5 = *(this + 12);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if (++v4 == v5)
      {
        v4 = *(this + 12);
        break;
      }
    }
  }

  v6 = v4 != v5;
  pthread_mutex_unlock((this + 24));
  return v6;
}

uint64_t BTInterestMgr::_RetryConnection(BTInterestMgr *this, void *a2)
{
  v18 = a2;
  pthread_mutex_lock((this + 24));
  v3 = *(this + 18);
  v4 = *(this + 15);
  v5 = (v4 + 8 * (v3 >> 9));
  if (*(this + 16) == v4)
  {
    v6 = 0;
    v9 = 0;
    v8 = (v4 + 8 * ((*(this + 19) + v3) >> 9));
  }

  else
  {
    v6 = (*v5 + 8 * (*(this + 18) & 0x1FFLL));
    v7 = *(this + 19) + v3;
    v8 = (v4 + 8 * (v7 >> 9));
    v9 = (*v8 + 8 * (v7 & 0x1FF));
  }

  LOBYTE(buf.version) = 0;
  sub_72A0(v5, v6, v8, v9, &v18);
  v11 = *(this + 15);
  if (*(this + 16) == v11)
  {
    v13 = 0;
  }

  else
  {
    v12 = *(this + 19) + *(this + 18);
    v13 = *(v11 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF);
  }

  if (v13 == v10)
  {
    if (BTInterestMgr::_ShouldRetry(this, v18))
    {
      sub_7050(this + 14, &v18);
      buf.version = 0;
      memset(&buf.retain, 0, 24);
      buf.info = this;
      Current = CFAbsoluteTimeGetCurrent();
      v15 = CFRunLoopTimerCreate(0, Current + 5.0, 0.0, 0, 0, _RetryConnectionEventTimerCallback, &buf);
      v16 = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(v16, v15, kCFRunLoopCommonModes);
      CFRelease(v15);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *v19 = 134217984;
        v20 = v18;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Retrying connection to device %p in 5 seconds...\n", v19, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.version) = 134217984;
    *(&buf.version + 4) = v18;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Already have pending retry attempt for device %p\n", &buf, 0xCu);
  }

  return pthread_mutex_unlock((this + 24));
}

BOOL BTInterestMgr::_ShouldRetry(BTInterestMgr *this, void *a2)
{
  if (BTD2DPlugin::_ResolvingServiceForDevice(*(this + 1), a2))
  {
    v9 = 0;
    __chkstk_darwin();
    v4 = v8;
    bzero(v8, 0x800uLL);
    v5 = *(*(this + 1) + 8);
    if (BTLocalDeviceGetConnectedDevices())
    {
      return 1;
    }

    v7 = v9;
    if (!v9)
    {
      return 1;
    }

    else
    {
      while (*v4 != a2)
      {
        ++v4;
        if (!--v7)
        {
          return 1;
        }
      }

      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 134217984;
        v11 = a2;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Already connected to device %p\n", buf, 0xCu);
        return 0;
      }
    }
  }

  else
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 134217984;
      v11 = a2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "No longer resolving anything for device %p\n", buf, 0xCu);
      return 0;
    }
  }

  return result;
}

void *sub_7050(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_73C4(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t BTInterestMgr::_RetryConnectionEvent(BTInterestMgr *this)
{
  pthread_mutex_lock((this + 24));
  v2 = *(this + 19);
  if (!v2)
  {
    return pthread_mutex_unlock((this + 24));
  }

  v3 = *(*(*(this + 15) + ((*(this + 18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 18) & 0x1FFLL));
  ++*(this + 18);
  *(this + 19) = v2 - 1;
  sub_79C0(this + 112, 1);
  if (BTInterestMgr::_ShouldRetry(this, v3))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Attempting to reconnect to device %p\n", &v5, 0xCu);
    }

    BTDeviceConnectServices();
    return pthread_mutex_unlock((this + 24));
  }

  return pthread_mutex_unlock((this + 24));
}

void sub_7224()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_7258(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_7224();
}

void *sub_72A0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      while (*a2 != *a5)
      {
        if (++a2 == a4)
        {
          a2 = a4;
          break;
        }
      }
    }

    if (a1)
    {
      if ((*a1 + 4096) == a2)
      {
        v5 = a1[1];
        ++a1;
      }

      return a1;
    }

    return 0;
  }

  else
  {
    v6 = *a1 + 4096;
    if (v6 == a2)
    {
      goto LABEL_20;
    }

    while (*a2 != *a5)
    {
      if (++a2 == v6)
      {
        goto LABEL_20;
      }
    }

    if (a2 != v6)
    {
      return a1;
    }

LABEL_20:
    while (1)
    {
      v8 = a1[1];
      if (a1 + 1 == a3)
      {
        break;
      }

      v7 = 0;
      ++a1;
      do
      {
        if (v8[v7] == *a5)
        {
          break;
        }

        ++v7;
      }

      while (v7 != 512);
      if (v7 != 512)
      {
        return a1;
      }
    }

    if (v8 != a4)
    {
      v9 = 0;
      v10 = a1[1];
      do
      {
        if (*v10 == *a5)
        {
          break;
        }

        v9 += 8;
        ++v10;
      }

      while (v10 != a4);
      if (v9 == 4096)
      {
        v11 = a1[2];
        a1 += 2;
        return a1;
      }
    }
  }

  return a3;
}

void *sub_73C4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_7258(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_7598(a1, &v10);
}

void sub_754C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_7598(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_7258(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_76A0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_7258(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_77AC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_7258(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_78B4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_7258(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_79C0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t BTD2D_initialize(__CFRunLoop *a1, void (*a2)(unsigned int, unsigned int, void *, unsigned int, const unsigned __int8 *, unint64_t, const unsigned __int8 *, unint64_t, void *), void *a3)
{
  v6 = sub_80B8();
  v6[160] = 0;
  *(v6 + 6) = a1;
  *(v6 + 7) = a2;
  *(v6 + 8) = a3;

  return BTD2DPlugin::Attach(v6);
}

uint64_t BTD2D_terminate(void)
{
  v0 = sub_80B8();

  return BTD2DPlugin::Terminate(v0);
}

uint64_t BTD2D_startAdvertisingPair(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_90DC(&v16, BytePtr, &v5[Length], &v5[Length] - BytePtr);
  v7 = CFDataGetBytePtr(a2);
  v8 = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(a2);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_90DC(&__p, v7, &v8[v9], &v8[v9] - v7);
  v10 = sub_80B8();
  v11 = BTAdvertiseMgr::Advertise(v10[4], &v16, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v11;
}

void sub_7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BTD2D_stopAdvertisingPair(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_90DC(&v16, BytePtr, &v5[Length], &v5[Length] - BytePtr);
  v7 = CFDataGetBytePtr(a2);
  v8 = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(a2);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_90DC(&__p, v7, &v8[v9], &v8[v9] - v7);
  v10 = sub_80B8();
  v11 = BTAdvertiseMgr::StopAdvertising(v10[4], &v16, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v11;
}

void sub_7C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BTD2D_startBrowsingForKey(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v3 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_90DC(&__p, BytePtr, &v3[Length], &v3[Length] - BytePtr);
  v5 = sub_80B8();
  v6 = BTBrowseMgr::Browse(v5[3], &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_7D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BTD2D_stopBrowsingForKey(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v3 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_90DC(&__p, BytePtr, &v3[Length], &v3[Length] - BytePtr);
  v5 = sub_80B8();
  v6 = BTBrowseMgr::StopBrowsing(v5[3], &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_7E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BTD2D_startResolvingPair(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_90DC(&v14, BytePtr, &v5[Length], &v5[Length] - BytePtr);
  v7 = CFDataGetBytePtr(a2);
  v8 = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_90DC(&__p, v7, &v8[v9], &v8[v9] - v7);
  v10 = sub_80B8();
  BTBrowseMgr::StartResolving(v10[3], &v14, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_7EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void BTD2D_stopResolvingPair(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_90DC(&v14, BytePtr, &v5[Length], &v5[Length] - BytePtr);
  v7 = CFDataGetBytePtr(a2);
  v8 = CFDataGetBytePtr(a2);
  v9 = CFDataGetLength(a2);
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_90DC(&__p, v7, &v8[v9], &v8[v9] - v7);
  v10 = sub_80B8();
  BTBrowseMgr::StopResolving(v10[3], &v14, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BTD2D_retain(void **a1)
{
  v2 = *(sub_80B8() + 5);

  return BTInterestMgr::Retain(v2, a1);
}

uint64_t BTD2D_release(void **a1)
{
  v2 = *(sub_80B8() + 5);

  return BTInterestMgr::Release(v2, a1);
}

void *sub_80B8()
{
  if ((atomic_load_explicit(&qword_100A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100A8))
  {
    BTD2DPlugin::BTD2DPlugin(&unk_10000);
  }

  return &unk_10000;
}

uint64_t BTD2DPlugin::Initialize(BTD2DPlugin *this, __CFRunLoop *a2, void (*a3)(unsigned int, unsigned int, void *, unsigned int, const unsigned __int8 *, unint64_t, const unsigned __int8 *, unint64_t, void *), void *a4)
{
  *(this + 160) = 0;
  *(this + 6) = a2;
  *(this + 7) = a3;
  *(this + 8) = a4;
  return BTD2DPlugin::Attach(this);
}

uint64_t BTD2DPlugin::Terminate(BTD2DPlugin *this)
{
  *(this + 160) = 1;
  if (!*this)
  {
    return 0;
  }

  result = BTSessionDetachWithQueue();
  if (result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_9904();
    }

    return 1;
  }

  return result;
}

void BTD2DPlugin::BTD2DPlugin(BTD2DPlugin *this)
{
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 19) = 0;
  *this = 0;
  *(this + 1) = 0;
  operator new();
}

void BTD2DPlugin::~BTD2DPlugin(BTD2DPlugin *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    sub_8F7C(v2);
    operator delete();
  }

  v3 = *(this + 4);
  if (v3)
  {
    *v3 = &off_C320;
    sub_5068(v3 + 24, *(v3 + 32));
    operator delete();
  }

  v4 = *(this + 5);
  if (v4)
  {
    sub_8FE8(v4);
    operator delete();
  }

  pthread_mutex_destroy((this + 72));
  sub_8EB0(this + 17);
}

uint64_t BTD2DPlugin::Attach(BTD2DPlugin *this)
{
  if (*(this + 160))
  {
    return 1;
  }

  *__str = 0u;
  v6 = 0u;
  v2 = getpid();
  snprintf(__str, 0x20uLL, "DeviceToDevice-%u", v2);
  v3 = *(this + 6);
  if (v3 != CFRunLoopGetMain())
  {
    sub_9974();
  }

  result = BTSessionAttachWithQueue();
  if (result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_99A0();
    }

    return 1;
  }

  return result;
}

void _btSessionEventCallback(uint64_t a1, int a2, int a3, BTD2DPlugin *this)
{
  if (a3 | a2)
  {
    *this = 0;
    *(this + 1) = 0;
    BTD2DPlugin::BluetoothStatusChanged(this, 0);
    if (a2 != 1 || a3)
    {

      _btReattach(this);
    }
  }

  else
  {
    *this = a1;
    if (BTLocalDeviceGetDefault())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_9A10();
      }
    }

    else
    {
      *(this + 1) = 0;
      if (BTLocalDeviceAddCallbacks())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_9A80();
        }
      }

      else
      {
        if (!BTLocalDeviceSupportsService())
        {
          BTLocalDeviceGetModulePower();
          BTD2DPlugin::BluetoothStatusChanged(this, 1);
          return;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_9AF0();
        }
      }
    }

    BTD2DPlugin::Cleanup(this);
    BTD2DPlugin::BluetoothStatusChanged(this, 0);
    _btReattach(this);
  }
}

uint64_t BTD2DPlugin::BluetoothStatusChanged(uint64_t this, int a2)
{
  if (*(this + 16) != a2)
  {
    v3 = this;
    *(this + 16) = a2;
    (***(this + 24))(*(this + 24));
    v4 = *(v3 + 16);
    (***(v3 + 32))();
    v5 = *(v3 + 16);
    v6 = ***(v3 + 40);

    return v6();
  }

  return this;
}

uint64_t BTD2DPlugin::Cleanup(BTD2DPlugin *this)
{
  result = *(this + 1);
  if (result)
  {
    result = BTLocalDeviceRemoveCallbacks();
    *(this + 1) = 0;
  }

  if (*this)
  {
    result = BTSessionDetachWithQueue();
    *this = 0;
  }

  return result;
}

void _btLocalDeviceCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    if (BTLocalDeviceGetModulePower())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_9BA8();
      }
    }

    else
    {
      BTD2DPlugin::BluetoothStatusChanged(a4, 1);
    }
  }
}

void BTD2DPlugin::_ReportServiceEvent(BTD2DPlugin *this)
{
  if (*(this + 7))
  {
    pthread_mutex_lock((this + 72));
    *__p = 0u;
    v5 = 0u;
    v2 = 0u;
    *v3 = 0u;
    sub_9048(&v2, (*(this + 18) + 16));
    sub_8AF8(this + 136);
    pthread_mutex_unlock((this + 72));
    if (v3[1] != v3[0])
    {
      operator new[]();
    }

    if (v5 != __p[1])
    {
      operator new[]();
    }

    (*(this + 7))(v2, DWORD1(v2), *(&v2 + 1), 0, 0, v3[1] - v3[0], 0, v5 - __p[1], *(this + 8));
    if (__p[1])
    {
      *&v5 = __p[1];
      operator delete(__p[1]);
    }

    if (v3[0])
    {
      v3[1] = v3[0];
      operator delete(v3[0]);
    }
  }
}

void sub_8A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_20FC(va);
  _Unwind_Resume(a1);
}

void sub_8AF8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  sub_8F24(v2 + 2);

  operator delete(v2);
}

void _btReattach(BTD2DPlugin *a1)
{
  v2 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_8BEC;
  block[3] = &unk_C440;
  block[4] = a1;
  dispatch_after(v2, &_dispatch_main_q, block);
}

uint64_t sub_8BF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *a1 = &off_C380;
  *(a1 + 8) = a2;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  pthread_mutex_init((a1 + 24), 0);
  return a1;
}

void sub_8C9C(_Unwind_Exception *a1)
{
  sub_5358(v3, *v6);
  sub_8CCC(v2, *v5);
  sub_53B8(v1, *v4);
  _Unwind_Resume(a1);
}

void sub_8CCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_8CCC(a1, *a2);
    sub_8CCC(a1, a2[1]);
    sub_55AC((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_8D28(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = &off_C3C0;
  *(a1 + 8) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  pthread_mutex_init((a1 + 24), 0);
  return a1;
}

void sub_8D90(_Unwind_Exception *a1)
{
  sub_8DB4(v1 + 14);
  v3 = v1[11];
  if (v3)
  {
    v1[12] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_8DB4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_8E60(a1);
}

uint64_t sub_8E60(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_8EB0(uint64_t *a1)
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
        sub_8F24(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_8F24(void *a1)
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
}

uint64_t sub_8F7C(uint64_t a1)
{
  *a1 = &off_C380;
  pthread_mutex_destroy((a1 + 24));
  sub_5358(a1 + 136, *(a1 + 144));
  sub_8CCC(a1 + 112, *(a1 + 120));
  sub_53B8(a1 + 88, *(a1 + 96));
  return a1;
}

uint64_t sub_8FE8(uint64_t a1)
{
  *a1 = &off_C3C0;
  pthread_mutex_destroy((a1 + 24));
  sub_8DB4((a1 + 112));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_9048(void *a1, void *a2)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_DF8((a1 + 2), a2[2], a2[3], a2[3] - a2[2]);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_DF8((a1 + 5), a2[5], a2[6], a2[6] - a2[5]);
  *a1 = *a2;
  a1[1] = a2[1];
  return a1;
}

void sub_90C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_90DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_E74(result, a4);
  }

  return result;
}

void sub_9134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_9540(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Call to BTDiscoveryAgentAddKey failed with error %d\n", buf, 8u);
}

void sub_966C(uint64_t a1, int a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Call to BTDeviceGetAdvertisedValueForKey with a %lu byte buffer failed with error %d\n", &v2, 0x12u);
}

void sub_96F8(unsigned __int8 a1, uint64_t a2)
{
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 2048;
  v4 = a2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Buffer error - size of next value (%u) would exceed overall buffer length (%lu)\n", v2, 0x12u);
}

void sub_97F8(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Call to BTServiceAddCallbacks failed with error %d - \n", v1, 8u);
}

void sub_9878(uint64_t a1, int a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Call to BTDeviceConnect on device %p failed with error %d\n", &v2, 0x12u);
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

void operator new()
{
    ;
  }
}