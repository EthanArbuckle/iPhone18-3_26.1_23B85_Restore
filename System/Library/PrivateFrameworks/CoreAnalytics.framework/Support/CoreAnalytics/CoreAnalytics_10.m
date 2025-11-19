uint64_t sub_1000BC3CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BC418(uint64_t a1)
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

dispatch_group_t **sub_1000BC498(dispatch_group_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

void sub_1000BC4F8(uint64_t a1)
{
  v1 = a1;
  object = 0xAAAAAAAAAAAAAAAALL;
  sub_1000EB73C(*(*(a1 + 8) + 128), &object);
}

void sub_1000BC584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_1000BC498(&a10);
  _Unwind_Resume(a1);
}

void sub_1000BC5AC(uint64_t a1)
{
  v1 = a1;
  object = 0xAAAAAAAAAAAAAAAALL;
  sub_1000EB73C(*(*(a1 + 8) + 128), &object);
}

void sub_1000BC638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_1000BC498(&a10);
  _Unwind_Resume(a1);
}

void sub_1000BC660(uint64_t a1)
{
  v1 = a1;
  object = 0xAAAAAAAAAAAAAAAALL;
  sub_1000EB030(*(*(a1 + 8) + 128), &object);
}

void sub_1000BC6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_1000BC498(&a10);
  _Unwind_Resume(a1);
}

void sub_1000BC714(uint64_t a1)
{
  v1 = a1;
  object = 0xAAAAAAAAAAAAAAAALL;
  sub_1000EB030(*(*(a1 + 8) + 128), &object);
}

void sub_1000BC7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_1000BC498(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000BC7C8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BC848(uint64_t a1)
{
  v4 = a1;
  if (xpc_get_type(*(a1 + 16)) == &_xpc_type_dictionary)
  {
    remote_connection = xpc_dictionary_get_remote_connection(*(a1 + 16));
    xpc_connection_send_message(remote_connection, *(a1 + 16));
  }

  return sub_1000BC7C8(&v4);
}

uint64_t *sub_1000BC8E4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BC964(uint64_t a1)
{
  v4 = a1;
  if (xpc_get_type(*(a1 + 16)) == &_xpc_type_dictionary)
  {
    remote_connection = xpc_dictionary_get_remote_connection(*(a1 + 16));
    xpc_connection_send_message(remote_connection, *(a1 + 16));
  }

  return sub_1000BC8E4(&v4);
}

uint64_t *sub_1000BCA00(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BCA80(uint64_t a1)
{
  v2 = a1;
  sub_1000BCAF8(a1 + 8);
  return sub_1000BCA00(&v2);
}

void sub_1000BCAF8(uint64_t a1)
{
  v1 = (a1 + 8);
  if (xpc_get_type(*(a1 + 8)) == &_xpc_type_dictionary)
  {
    v4 = xpc_BOOL_create(1);
    if (!v4)
    {
      v4 = xpc_null_create();
    }

    v3[0] = v1;
    v3[1] = "disable-sampling";
    sub_10001B168(v3, &v4, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v4);
    v4 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*v1);
    xpc_connection_send_message(remote_connection, *v1);
  }
}

void sub_1000BCBC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000BCBE4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BCC64(uint64_t a1)
{
  v2 = a1;
  sub_1000BCAF8(a1 + 8);
  return sub_1000BCBE4(&v2);
}

uint64_t *sub_1000BCCDC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BCD5C(uint64_t a1)
{
  v2 = a1;
  sub_1000BCDD4(a1 + 8);
  return sub_1000BCCDC(&v2);
}

void sub_1000BCDD4(uint64_t a1)
{
  v1 = (a1 + 8);
  if (xpc_get_type(*(a1 + 8)) == &_xpc_type_dictionary)
  {
    v4 = xpc_BOOL_create(1);
    if (!v4)
    {
      v4 = xpc_null_create();
    }

    v3[0] = v1;
    v3[1] = "reenable-sampling";
    sub_10001B168(v3, &v4, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v4);
    v4 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*v1);
    xpc_connection_send_message(remote_connection, *v1);
  }
}

void sub_1000BCE9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000BCEC0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BCF40(uint64_t a1)
{
  v2 = a1;
  sub_1000BCDD4(a1 + 8);
  return sub_1000BCEC0(&v2);
}

void sub_1000BCFB8(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      sub_10000BC18(a1, v4);
    }

    v5 = (16 * v1);
    sub_100006C9C(16 * v1);
  }

  sub_10002C63C();
}

void sub_1000BD0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD184(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100014894(result, a4);
  }

  return result;
}

void sub_1000BD21C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_100004E54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BD23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a4;
  v8[0] = a1;
  v8[1] = &v6;
  v8[2] = &v7;
  v9 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    sub_100006C9C(a4);
  }

  LOBYTE(v9) = 1;
  sub_10000BCC4(v8);
  return a4;
}

void sub_1000BD2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000BCC4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000BD310(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BD390(uint64_t a1)
{
  v2 = a1;
  sub_1000BD408((a1 + 8));
  return sub_1000BD310(&v2);
}

void sub_1000BD408(xpc_object_t *a1)
{
  v2 = a1 + 1;
  if (xpc_get_type(a1[1]) == &_xpc_type_dictionary)
  {
    v5 = xpc_BOOL_create(1);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v4[0] = v2;
    v4[1] = "rollover";
    sub_10001B168(v4, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
    v5 = 0;
    remote_connection = xpc_dictionary_get_remote_connection(*a1);
    xpc_connection_send_message(remote_connection, a1[1]);
  }
}

void sub_1000BD4D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000BD4F8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000BD578(uint64_t a1)
{
  v2 = a1;
  sub_1000BD408((a1 + 8));
  return sub_1000BD4F8(&v2);
}

uint64_t sub_1000BD5F0(uint64_t a1, const void **a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100004728(a1, v3, a2);
  if (!result)
  {
    memset(&v3[1], 170, 24);
    sub_1000BD6A8();
  }

  return result;
}

void sub_1000BD73C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100061DE0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1000BD818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_1001255EC(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000BD850(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100187CE0;
  a1[3] = sub_10005F828();
  a1[7] = 0;
  return a1;
}

void sub_1000BD8A0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  nullsub_13(v1);
  _Unwind_Resume(a1);
}

void sub_1000BD8C0(uint64_t a1@<X8>)
{
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D3B68("cadence", &v63);
  if (v63 != 1)
  {
LABEL_116:
    *(a1 + 153) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    goto LABEL_168;
  }

  v70 = "bootToken";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v2;
  v72 = v2;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (!sub_10000DD7C(buf, &v65))
  {
    v3 = sub_10000DB44(buf);
LABEL_6:
    if (*v3 - 5 < 3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = sub_100016CD8();
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v3 = 0;
LABEL_8:
  v70 = "lastSubmission";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v4;
  v72 = v4;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (!sub_10000DD7C(buf, &v65))
  {
    v5 = sub_10000DB44(buf);
LABEL_12:
    if (*v5 - 5 < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = sub_100016CD8();
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  v5 = 0;
LABEL_14:
  v62 = v5;
  v70 = "nextSubmission";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v6;
  v72 = v6;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (!sub_10000DD7C(buf, &v65))
  {
    v7 = sub_10000DB44(buf);
LABEL_18:
    if (*v7 - 5 < 3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = sub_100016CD8();
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:
  v7 = 0;
LABEL_20:
  v61 = v7;
  v70 = "rolloverContainsPartialData";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v8;
  v72 = v8;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v9 = sub_100016CD8();
    if (!v9)
    {
      v60 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v9 = sub_10000DB44(buf);
  }

  v11 = *v9;
  v10 = v9 + 8;
  if (v11 == 4)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v60 = v12;
LABEL_28:
  v70 = "osVersion";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v13;
  v72 = v13;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v14 = sub_100016CD8();
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v14 = sub_10000DB44(buf);
  }

  if (*v14 == 3)
  {
    v15 = *(v14 + 8);
    goto LABEL_35;
  }

LABEL_34:
  v15 = 0;
LABEL_35:
  v70 = "lastOSVersion";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v16;
  v72 = v16;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v17 = sub_100016CD8();
    if (!v17)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v17 = sub_10000DB44(buf);
  }

  if (*v17 == 3)
  {
    v18 = *(v17 + 8);
    goto LABEL_42;
  }

LABEL_41:
  v18 = 0;
LABEL_42:
  v70 = "basebandFirmwareVersion";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v19;
  v72 = v19;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v20 = sub_100016CD8();
    if (!v20)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v20 = sub_10000DB44(buf);
  }

  if (*v20 == 3)
  {
    v59 = *(v20 + 8);
    goto LABEL_49;
  }

LABEL_48:
  v59 = 0;
LABEL_49:
  v70 = "lastBasebandFirmwareVersion";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v21;
  v72 = v21;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v22 = sub_100016CD8();
    if (!v22)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v22 = sub_10000DB44(buf);
  }

  if (*v22 == 3)
  {
    v58 = *(v22 + 8);
    goto LABEL_56;
  }

LABEL_55:
  v58 = 0;
LABEL_56:
  v70 = "osProductNameWithVersion";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v23;
  v72 = v23;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v24 = sub_100016CD8();
    if (!v24)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v24 = sub_10000DB44(buf);
  }

  if (*v24 == 3)
  {
    v57 = *(v24 + 8);
    goto LABEL_63;
  }

LABEL_62:
  v57 = 0;
LABEL_63:
  v70 = "lastOSProductNameWithVersion";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v25;
  v72 = v25;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v26 = sub_100016CD8();
    if (!v26)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v26 = sub_10000DB44(buf);
  }

  if (*v26 == 3)
  {
    v27 = *(v26 + 8);
    goto LABEL_70;
  }

LABEL_69:
  v27 = 0;
LABEL_70:
  v70 = "lastOSChangeDaySeen";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v28;
  v72 = v28;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (!sub_10000DD7C(buf, &v65))
  {
    v29 = sub_10000DB44(buf);
LABEL_74:
    if (*v29 - 5 < 3)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v29 = sub_100016CD8();
  if (v29)
  {
    goto LABEL_74;
  }

LABEL_75:
  v29 = 0;
LABEL_76:
  v70 = "lastDailyDaySeen";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v30;
  v72 = v30;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (!sub_10000DD7C(buf, &v65))
  {
    v31 = sub_10000DB44(buf);
LABEL_80:
    if (*v31 - 5 < 3)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v31 = sub_100016CD8();
  if (v31)
  {
    goto LABEL_80;
  }

LABEL_81:
  v31 = 0;
LABEL_82:
  v70 = "last91stDaySeen";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v32;
  v72 = v32;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (!sub_10000DD7C(buf, &v65))
  {
    v33 = sub_10000DB44(buf);
LABEL_86:
    if (*v33 - 5 < 3)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v33 = sub_100016CD8();
  if (v33)
  {
    goto LABEL_86;
  }

LABEL_87:
  v33 = 0;
LABEL_88:
  v70 = "Daily";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v34;
  v72 = v34;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v35 = sub_100016CD8();
    if (!v35)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v35 = sub_10000DB44(buf);
  }

  if (*v35 == 3)
  {
    v36 = *(v35 + 8);
    goto LABEL_95;
  }

LABEL_94:
  v36 = 0;
LABEL_95:
  v70 = "90Day";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v37;
  v72 = v37;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  v56 = v29;
  if (sub_10000DD7C(buf, &v65))
  {
    v38 = sub_100016CD8();
    if (!v38)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v38 = sub_10000DB44(buf);
  }

  if (*v38 == 3)
  {
    v39 = *(v38 + 8);
    goto LABEL_102;
  }

LABEL_101:
  v39 = 0;
LABEL_102:
  v70 = "pastDueLegacy";
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v40;
  v72 = v40;
  sub_10000BD10(&v63, &v70, buf);
  v65 = &v63;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x8000000000000000;
  sub_10000DCFC(&v65);
  if (sub_10000DD7C(buf, &v65))
  {
    v41 = sub_100016CD8();
    if (!v41)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v41 = sub_10000DB44(buf);
  }

  if (*v41 - 5 >= 3)
  {
LABEL_107:
    v41 = 0;
  }

  if (!v3 || !v62 || !v61 || !v15)
  {
    v43 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[CadenceManager] Retrieved cadence but did not match schema. Treating as no-data.", buf, 2u);
    }

    goto LABEL_116;
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(v3, buf);
  *a1 = *buf;
  if (*(v15 + 23) < 0)
  {
    sub_1000078D8((a1 + 8), *v15, *(v15 + 1));
  }

  else
  {
    v42 = *v15;
    *(a1 + 24) = *(v15 + 2);
    *(a1 + 8) = v42;
  }

  if (v18)
  {
    if (*(v18 + 23) < 0)
    {
      sub_1000078D8((a1 + 32), *v18, *(v18 + 1));
    }

    else
    {
      v44 = *v18;
      *(a1 + 48) = *(v18 + 2);
      *(a1 + 32) = v44;
    }
  }

  else
  {
    sub_10000459C((a1 + 32), "");
  }

  if (v59)
  {
    if (*(v59 + 23) < 0)
    {
      sub_1000078D8((a1 + 56), *v59, *(v59 + 1));
    }

    else
    {
      v45 = *v59;
      *(a1 + 72) = *(v59 + 2);
      *(a1 + 56) = v45;
    }
  }

  else
  {
    sub_10000459C((a1 + 56), "");
  }

  if (v58)
  {
    if (*(v58 + 23) < 0)
    {
      sub_1000078D8((a1 + 80), *v58, *(v58 + 1));
    }

    else
    {
      v46 = *v58;
      *(a1 + 96) = *(v58 + 2);
      *(a1 + 80) = v46;
    }
  }

  else
  {
    sub_10000459C((a1 + 80), "");
  }

  if (v57)
  {
    if (*(v57 + 23) < 0)
    {
      sub_1000078D8((a1 + 104), *v57, *(v57 + 1));
    }

    else
    {
      v47 = *v57;
      *(a1 + 120) = *(v57 + 2);
      *(a1 + 104) = v47;
    }
  }

  else
  {
    sub_10000459C((a1 + 104), "");
  }

  if (v27)
  {
    if (*(v27 + 23) < 0)
    {
      sub_1000078D8((a1 + 128), *v27, *(v27 + 1));
    }

    else
    {
      v48 = *v27;
      *(a1 + 144) = *(v27 + 2);
      *(a1 + 128) = v48;
    }
  }

  else
  {
    sub_10000459C((a1 + 128), "");
  }

  *buf = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(v62, buf);
  *(a1 + 152) = std::chrono::system_clock::from_time_t(*buf);
  *buf = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(v61, buf);
  *(a1 + 160) = std::chrono::system_clock::from_time_t(*buf);
  v49 = v60;
  if (v60)
  {
    v49 = *v60;
  }

  *(a1 + 168) = v49 & 1;
  if (v36)
  {
    if (*(v36 + 23) < 0)
    {
      sub_1000078D8((a1 + 176), *v36, *(v36 + 1));
    }

    else
    {
      v50 = *v36;
      *(a1 + 192) = *(v36 + 2);
      *(a1 + 176) = v50;
    }
  }

  else
  {
    sub_10000459C((a1 + 176), "");
  }

  if (v39)
  {
    if (*(v39 + 23) < 0)
    {
      sub_1000078D8((a1 + 200), *v39, *(v39 + 1));
    }

    else
    {
      v51 = *v39;
      *(a1 + 216) = *(v39 + 2);
      *(a1 + 200) = v51;
    }
  }

  else
  {
    sub_10000459C((a1 + 200), "");
  }

  if (v33)
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    sub_10001D684(v33, buf);
    v52 = *buf;
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 224) = v52;
  if (v31)
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    sub_10001D684(v31, buf);
    v53 = *buf;
  }

  else
  {
    v53 = 0;
  }

  *(a1 + 232) = v53;
  if (v56)
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    sub_10001D684(v56, buf);
    v54 = *buf;
  }

  else
  {
    v54 = 0;
  }

  *(a1 + 240) = v54;
  if (v41)
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    sub_10001D684(v41, buf);
    v55 = *buf;
  }

  else
  {
    v55 = 0;
  }

  *(a1 + 248) = v55;
LABEL_168:
  sub_10000298C(&v63);
  sub_1000048FC(&v64, v63);
}

void sub_1000BE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 + 199) < 0)
  {
    operator delete(*(v9 + 176));
  }

  if (*(v9 + 151) < 0)
  {
    operator delete(*(v9 + 128));
  }

  if (*(v9 + 127) < 0)
  {
    operator delete(*(v9 + 104));
  }

  if (*(v9 + 103) < 0)
  {
    operator delete(*(v9 + 80));
  }

  if (*(v9 + 79) < 0)
  {
    operator delete(*(v9 + 56));
  }

  if (*(v9 + 55) < 0)
  {
    operator delete(*(v9 + 32));
  }

  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_1000BE680()
{
  v0[0] = 0xAAAAAAAAAAAAAAAALL;
  v0[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(v0, 0, 0, 0, 1);
}

void sub_1000BEEBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  sub_10002C5F4((v2 - 72));
  _Unwind_Resume(a1);
}

std::chrono::system_clock::time_point sub_1000BEFB4()
{
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (result.__d_.__rep_ % 86400000000 > 0)
  {
    return (86400000000 * (result.__d_.__rep_ / 86400000000) + 86400000000);
  }

  return result;
}

void sub_1000BF008(uint64_t a1, uint64_t a2)
{
  sub_1000BFA9C(a1 + 32, a2);
  sub_100006028(&handler, (a1 + 8));
  v4 = handler;
  v3 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    sub_10000786C(v3);
  }

  v5 = qword_100192D38;
  if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEBUG))
  {
    sub_100125624(v5);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1000BF374;
  v10[3] = &unk_100187D20;
  v10[4] = v4;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  handler = _NSConcreteStackBlock;
  v13 = 0x40000000;
  v14 = sub_1000BF680;
  v15 = &unk_100187E00;
  v17 = "com.apple.CoreAnalytics.2Hours";
  v18 = 7200;
  v16 = v10;
  xpc_activity_register("com.apple.CoreAnalytics.2Hours", XPC_ACTIVITY_CHECK_IN, &handler);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_1000BF4A4;
  v8[3] = &unk_100187D50;
  v8[4] = v4;
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  handler = _NSConcreteStackBlock;
  v13 = 0x40000000;
  v14 = sub_1000BF680;
  v15 = &unk_100187E00;
  v17 = "com.apple.CoreAnalytics.6Hours";
  v18 = 21600;
  v16 = v8;
  xpc_activity_register("com.apple.CoreAnalytics.6Hours", XPC_ACTIVITY_CHECK_IN, &handler);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1000BF528;
  v6[3] = &unk_100187D80;
  v6[4] = v4;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  handler = _NSConcreteStackBlock;
  v13 = 0x40000000;
  v14 = sub_1000BF680;
  v15 = &unk_100187E00;
  v17 = "com.apple.CoreAnalytics.Daily";
  v18 = 86400;
  v16 = v6;
  xpc_activity_register("com.apple.CoreAnalytics.Daily", XPC_ACTIVITY_CHECK_IN, &handler);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000BF310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BF374(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 56))
      {
        sub_1000BF3F8(v5 + 32, 0);
      }

      sub_10000786C(v4);
    }
  }
}

uint64_t sub_1000BF3F8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002B200();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000BF478(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000BF494(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1000BF4A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 56))
      {
        sub_1000BF3F8(v5 + 32, 1);
      }

      sub_10000786C(v4);
    }
  }
}

void sub_1000BF528(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5 && *(v5 + 56))
      {
        sub_1000BF3F8(v5 + 32, 2);
      }

      sub_10000786C(v4);
    }
  }
}

uint64_t sub_1000BF5AC(void *a1)
{
  *a1 = off_100187CE0;
  sub_100037C40((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return nullsub_13(a1);
}

void sub_1000BF60C(void *a1)
{
  *a1 = off_100187CE0;
  sub_100037C40((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  nullsub_13(a1);

  operator delete();
}

void sub_1000BF680(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  v5 = xpc_activity_copy_criteria(activity);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v6 = v5;
  if (state == 2)
  {
    v11 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v16 = 136315138;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Cadence] *** Timer action! (%s)", &v16, 0xCu);
    }

    dispatch_async(&_dispatch_main_q, *(a1 + 32));
  }

  else if (!state)
  {
    type = xpc_get_type(v5);
    v8 = qword_100192D38;
    v9 = os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEFAULT);
    if (type == &_xpc_type_null)
    {
      if (v9)
      {
        v13 = *(a1 + 40);
        v16 = 136315138;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Cadence] Creating new timer (%s)", &v16, 0xCu);
      }

      v14 = xpc_dictionary_create(0, 0, 0);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_release(v6);
      v15 = *(a1 + 48);
      xpc_dictionary_set_BOOL(v14, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_int64(v14, XPC_ACTIVITY_INTERVAL, v15);
      xpc_dictionary_set_int64(v14, XPC_ACTIVITY_DELAY, v15);
      xpc_dictionary_set_int64(v14, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
      xpc_dictionary_set_string(v14, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v14, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_activity_set_criteria(activity, v14);
      v6 = v14;
    }

    else if (v9)
    {
      v10 = *(a1 + 40);
      v16 = 136315138;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Cadence] Resuming timer (%s)", &v16, 0xCu);
    }
  }

  xpc_release(v6);
}

void sub_1000BF918(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

uint64_t *sub_1000BF95C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_1000BF9F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000BFA2C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000BFA5C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BFA9C(uint64_t a1, uint64_t a2)
{
  sub_1000BFB20(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000BFB20(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_1000BFD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NetworkStateRelay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000BFDDC(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return [result removeObserver:? forKeyPath:?];
  }

  return result;
}

void sub_1000BFFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000C0004(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) path];
  v3 = v2;
  if (v2 && ([v2 interface], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 interface];
    [WeakRetained updatePrimaryNetworkInterfaceType:{objc_msgSend(v5, "type"), 1}];
  }

  else
  {
    [WeakRetained updatePrimaryNetworkInterfaceType:{0, 0}];
  }
}

void sub_1000C02A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C036C()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000459C(byte_100192C70, "wiFiRadioTech");
  __cxa_atexit(&std::string::~string, byte_100192C70, &_mh_execute_header);
  sub_10000459C(byte_100192C88, "wiFiLQM");
  __cxa_atexit(&std::string::~string, byte_100192C88, &_mh_execute_header);
  sub_10000459C(byte_100192CA0, "primaryNetworkInterface");
  __cxa_atexit(&std::string::~string, byte_100192CA0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void *sub_1000C04C8(void *a1, void *a2)
{
  v4 = dispatch_queue_create("analyticsd.DeviceKeyManagerQueue", 0);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v4;
  *a1 = off_100187EB8;
  v5 = a2[1];
  a1[4] = *a2;
  a1[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000D52EC((a1 + 6));
  return a1;
}

void sub_1000C0550(_Unwind_Exception *a1)
{
  v4 = *(v2 + 40);
  if (v4)
  {
    sub_10000786C(v4);
  }

  sub_10002CDDC(v1);
  _Unwind_Resume(a1);
}

void sub_1000C0570(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = a2;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a3;
  v6 = sub_100006020((a1 + 24));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C0ED8;
  v10[3] = &unk_100181AF0;
  v10[4] = a1 + 8;
  v10[5] = v8;
  v11 = objc_retainBlock(v10);
  v7 = v6;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0FD4;
  block[3] = &unk_1001818D8;
  block[4] = a4;
  block[5] = &v11;
  dispatch_sync(v7, block);
}

void sub_1000C06C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000C06CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = sub_100006020((a1 + 24));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C1064;
  v7[3] = &unk_100181AF0;
  v7[4] = a1 + 8;
  v7[5] = &v6;
  v8 = objc_retainBlock(v7);
  v5 = v4;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0FD4;
  block[3] = &unk_1001818D8;
  block[4] = a2;
  block[5] = &v8;
  dispatch_sync(v5, block);
}

void sub_1000C0810(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000C081C(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v6 = a3;
  if ((a3[24] & 1) == 0)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p.count = v10;
    *__p.hash = v10;
    sub_1000C09F8(a1, a2, &__p);
    v11 = __p.hash[1];
    v12 = __p.hash[1];
    if (LOBYTE(__p.hash[1]) == 1)
    {
      if (SHIBYTE(__p.hash[0]) < 0)
      {
        sub_1000078D8(a5, __p.count[0], __p.count[1]);
        if ((__p.hash[1] & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_6;
      }

      *&a5->__r_.__value_.__l.__data_ = *__p.count;
      a5->__r_.__value_.__r.__words[2] = __p.hash[0];
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (SHIBYTE(__p.hash[0]) < 0)
    {
      operator delete(__p.count[0]);
    }

LABEL_8:
    if (v11)
    {
      return;
    }
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  md[2] = v13;
  md[3] = v13;
  md[0] = v13;
  md[1] = v13;
  *&__p.wbuf[12] = v13;
  *&__p.wbuf[14] = v13;
  *&__p.wbuf[8] = v13;
  *&__p.wbuf[10] = v13;
  *&__p.wbuf[6] = v13;
  *&__p.wbuf[2] = v13;
  *&__p.wbuf[4] = v13;
  *&__p.hash[6] = v13;
  *__p.wbuf = v13;
  *&__p.hash[2] = v13;
  *&__p.hash[4] = v13;
  *__p.count = v13;
  *__p.hash = v13;
  CC_SHA512_Init(&__p);
  v14 = *(a1 + 71);
  if (v14 < 0)
  {
    v15 = *(a1 + 48);
    v14 = *(a1 + 56);
  }

  else
  {
    v15 = (a1 + 48);
  }

  CC_SHA512_Update(&__p, v15, v14);
  if (v6[24] == 1)
  {
    v16 = v6[23];
    if (v16 < 0)
    {
      v17 = v6;
      v6 = *v6;
      v16 = *(v17 + 1);
    }

    CC_SHA512_Update(&__p, v6, v16);
  }

  if (a2 >= 1)
  {
    data = a4 / a2;
    CC_SHA512_Update(&__p, &data, 8u);
  }

  CC_SHA512_Final(md, &__p);
  sub_1000E4758(md, 20, a5);
}

void sub_1000C09C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C09F8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 90:
      if (!sub_1000369A8(*(a1 + 32)))
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 32);
      sub_10000459C(__p, "90Day");
      sub_100036AE8(v7, __p, &v11);
      break;
    case 1:
      if (!sub_100036868(*(a1 + 32)))
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 32);
      sub_10000459C(__p, "Daily");
      sub_100036AE8(v6, __p, &v11);
      break;
    case -1:
      v8 = +[OSASystemConfiguration sharedInstance];
      v5 = [v8 crashReporterKey];
      sub_10000459C(a3, [v5 UTF8String]);
      *(a3 + 24) = 1;

      return;
    default:
LABEL_13:
      *a3 = 0;
      *(a3 + 24) = 0;
      return;
  }

  *a3 = v11;
  *(a3 + 16) = v12;
  v12 = 0;
  v11 = 0uLL;
  *(a3 + 24) = 1;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000C0B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C0BCC(uint64_t a1)
{
  sub_1000C0C04(a1);

  operator delete();
}

uint64_t sub_1000C0C04(uint64_t a1)
{
  *a1 = off_100187EB8;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_10002CDDC(a1 + 8);
  return a1;
}

void sub_1000C0D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_1000C0D64(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C0D64(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_1000C0EAC);
}

void sub_1000C0DCC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000C0E04(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_1000C0EAC);
}

uint64_t sub_1000C0E6C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C0EAC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1000C0ED8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = sub_10003606C(*(*v3 + 32));
  v6 = *(v3 + 16);
  LODWORD(v3) = **(v3 + 8);
  sub_10009B928(__p, v6);
  sub_1000C081C(v4, v3, __p, v5 / 86400000000, a2);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000C0FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000C0FD4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

void sub_1000C1064(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = **(a1 + 40);
  sub_10000459C(__p, "");
  v7 = 1;
  v4 = sub_10005972C();
  sub_1000C081C(v3, 1, __p, v4, a2);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p[0]);
  }
}

BOOL sub_1000C1140()
{
  result = os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_100017DF0(&__p);
  }

  return result;
}

BOOL sub_1000C1240()
{
  result = os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_INFO);
  if (result)
  {
    sub_100017DF0(&__p);
  }

  return result;
}

uint64_t sub_1000C1340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_INFO))
  {
    sub_100017DF0(&__p);
  }

  return sub_10001FE6C(a1 + 8, a3);
}

uint64_t sub_1000C1458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
  {
    sub_100017DF0(&__p);
  }

  return sub_10001FE6C(a1 + 24, a3);
}

uint64_t sub_1000C1574(uint64_t a1)
{
  *a1 = off_100187FB8;
  sub_10000298C((a1 + 24));
  sub_1000048FC((a1 + 32), *(a1 + 24));
  sub_10000298C((a1 + 8));
  sub_1000048FC((a1 + 16), *(a1 + 8));

  return nullsub_13(a1);
}

void sub_1000C15E8(uint64_t a1)
{
  *a1 = off_100187FB8;
  sub_10000298C((a1 + 24));
  sub_1000048FC((a1 + 32), *(a1 + 24));
  sub_10000298C((a1 + 8));
  sub_1000048FC((a1 + 16), *(a1 + 8));
  nullsub_13(a1);

  operator delete();
}

uint64_t sub_1000C1670@<X0>(const char *a1@<X0>, const char **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  sub_100080640(a1, v16);
  if (v16[0] == -1)
  {
    sub_100117660(v4, 0, &v17);
    if (v17 <= 1)
    {
      v9 = "file does not exist";
    }

    else
    {
      sub_100117660(v4, 0, &v17);
      if (v17 == 2)
      {
        v9 = "file exists but could not be read";
      }

      else
      {
        v9 = "path exists but is not a file";
      }
    }

    *a2 = v9;
    v10 = qword_100192BA0;
    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      if (!*a2)
      {
        v12 = "unknown";
      }

      if (v4[23] >= 0)
      {
        v13 = v4;
      }

      else
      {
        v13 = *v4;
      }

      *buf = 136446466;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[ConfigUtils] ERROR: Failed to load buffer from file: error='%{public}s', path='%{public}s'", buf, 0x16u);
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_1000C1924(v16, a2, a3);
    v6 = *a3;
    v7 = qword_100192BA0;
    if (!v6 && os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      if (!*a2)
      {
        v14 = "unknown";
      }

      if (v4[23] >= 0)
      {
        v15 = v4;
      }

      else
      {
        v15 = *v4;
      }

      *buf = 136446466;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[ConfigUtils] ERROR: Failed to load config: error='%{public}s', path='%{public}s'", buf, 0x16u);
      v7 = qword_100192BA0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4[23] >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *v4;
      }

      *buf = 136446210;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ConfigUtils] Successfully loaded config from path='%{public}s", buf, 0xCu);
    }
  }

  return sub_10008063C(v16);
}

void sub_1000C18EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *v10 = "filesystem error";
    __cxa_end_catch();
    JUMPOUT(0x1000C17BCLL);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C1924@<X0>(void *result@<X0>, const char **a2@<X1>, void *a3@<X8>)
{
  if (*result == -1)
  {
    v4 = "invalid buffer";
  }

  else
  {
    if (result[1] < 0x40000001uLL)
    {
      v5 = 0xAAAAAAAAAAAAAAAALL;
      v6 = 0xAAAAAAAAAAAAAAAALL;
      sub_100111874();
    }

    v4 = "too large";
  }

  *a2 = v4;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

void sub_1000C1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  nullsub_13(&a10);
  sub_10002C5F4(&a12);
  if (a15)
  {
    sub_10000786C(a15);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000C1B80(const char *a1)
{
  sub_100117660(a1, 0, v5);
  if (LODWORD(v5[0]) < 2 || (sub_100117660(a1, 0, v5), LODWORD(v5[0]) != 2))
  {
    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      sub_10012576C();
    }

    return 1;
  }

  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  sub_100118274(a1, v5);
  if ((v6 & 1) == 0 || v6 == 1 && !LODWORD(v5[0]))
  {
    v2 = qword_100192BA0;
    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[ConfigUtils] Remove task config from disk: success", buf, 2u);
    }

    return 1;
  }

  v4 = qword_100192BA0;
  result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1001257D8(v5, v4);
    return 0;
  }

  return result;
}

void sub_1000C1CE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1000C1CEC@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, a1);
    }

    v4 = *(a1 + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return ((*v4)[4])(v4, *a1);
}

uint64_t sub_1000C1D3C(_BYTE *a1)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  memset(__p, 170, sizeof(__p));
  sub_1000C200C(a1, __p);
  sub_100117660(__p, 0, &buf);
  if (LODWORD(buf.__r_.__value_.__l.__data_) <= 1 && (sub_100117C54(__p, v9), (v10 & 1) != 0) && (v10 != 1 || LODWORD(v9[0])))
  {
    v2 = qword_100192BA0;
    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      v4 = SHIBYTE(__p[2]);
      v5 = __p[0];
      sub_1000C1CEC(v9, &buf);
      v6 = __p;
      if (v4 < 0)
      {
        v6 = v5;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *v13 = 136446466;
      v14 = v6;
      v15 = 2082;
      v16 = p_buf;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[Tasked Config] ERROR: Save task config: failed to create parent directory %{public}s (%{public}s)", v13, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    sub_100117660(__p, 0, &buf);
    if (LODWORD(buf.__r_.__value_.__l.__data_) == 3)
    {
      v13[0] = 1;
      sub_100118274(a1, v9);
      v12 = 0;
      operator new();
    }

    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      sub_100125890(__p);
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1000C1FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000C200C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_100118DF4(a1);

  return sub_100052DF0(a2, v3, &v3[v4], v4);
}

uint64_t sub_1000C2078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

_BYTE *sub_1000C2144@<X0>(int __errnum@<W1>, _BYTE *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_10000459C(a2, v4);
}

const char *sub_1000C2190(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

BOOL sub_1000C2204(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    if (*(a3 + 8) == 0xB2AB117A257EDFD2)
    {
      return *a1 + 1000 * (*(a1 + 8) % 0x1FFFF7uLL) == a2;
    }

    return 0;
  }

  if (!v3)
  {
    return !a2 && *(a3 + 8) == 0xB2AB117A257EDFD1;
  }

  if (*a1 != a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = v6 == a3;
  if (v7)
  {
    return *(a3 + 8) == v7;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1000C22D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  *(a5 + 8) = 0;
  *a5 = 0;
  sub_10000298C(a5);
  sub_10000298C(a5);
  sub_100003538(v11, a3);
  sub_1000C23F0(a1, a2, v11, a4, v12);
  sub_1000C2488(v12, 1, a5);
  sub_1000C3858(&v13);
  sub_100004FBC(v12);
  return sub_100004FBC(v11);
}

void sub_1000C23B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1000C3858(v3 + 40);
  sub_100004FBC(va1);
  sub_100004FBC(va);
  sub_10002C5F4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C23F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_1000035D0(v9, a3);
  sub_1000C29B4(a5, &v8, v9, a4);
  return sub_100004FBC(v9);
}

void sub_1000C2474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100004FBC(va);
  _Unwind_Resume(a1);
}

void sub_1000C2488(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    v36 = v6;
    v37 = v6;
    *&v35[16] = v6;
    *&v35[32] = v6;
    *v35 = v6;
    sub_100003538(v34, a1);
    sub_100040040(v35, a3, v34, *(a1 + 184));
    sub_100004FBC(v34);
    sub_1000C389C(a1, v35);
    sub_10000298C(a3);
    if (a2)
    {
      v7 = sub_1000C2AC4((a1 + 40));
      *(a1 + 32) = v7;
      if (v7 != 15)
      {
        v8 = *(a1 + 72);
        sub_1000C423C(a1 + 40, &v33);
        v29 = *(a1 + 72);
        v30 = *(a1 + 88);
        sub_10000459C(v26, "value");
        sub_1000C4320(a1, 0xFu, v26, &__p);
        sub_10003F76C(101, &v29, &__p, &v31);
        sub_10003F51C(v35, v8, &v33, &v31);
        v31.__vftable = off_100181438;
        std::runtime_error::~runtime_error(&v32);
        std::exception::~exception(&v31);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    if (BYTE8(v38) == 1)
    {
      v24[0] = 9;
      v9 = v24;
      v25 = 0;
      sub_10000298C(v24);
      sub_10000298C(v24);
      v10 = *a3;
      *a3 = v24[0];
      v24[0] = v10;
      v11 = *(a3 + 8);
      *(a3 + 8) = v25;
      v25 = v11;
      sub_10000298C(a3);
      sub_10000298C(v24);
      v12 = v24[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        sub_100042FE8(v35);
        return;
      }

      v22[0] = 0;
      v9 = v22;
      v23 = 0;
      sub_10000298C(v22);
      sub_10000298C(v22);
      sub_10000298C(v22);
      v18 = *a3;
      *a3 = v22[0];
      v22[0] = v18;
      v19 = *(a3 + 8);
      *(a3 + 8) = v23;
      v23 = v19;
      sub_10000298C(a3);
      sub_10000298C(v22);
      v12 = v22[0];
    }

    sub_1000048FC(v9 + 1, v12);
    goto LABEL_27;
  }

  v13 = *(a1 + 184);
  *&v35[40] = 0xAAAAAAAAAAAAAA00;
  *v35 = a3;
  memset(&v35[8], 0, 32);
  v35[41] = v13;
  sub_1000C4760(a1, v35);
  sub_10000298C(a3);
  if (a2)
  {
    v14 = sub_1000C2AC4((a1 + 40));
    *(a1 + 32) = v14;
    if (v14 != 15)
    {
      v15 = *(a1 + 72);
      sub_1000C423C(a1 + 40, &v33);
      v29 = *(a1 + 72);
      v30 = *(a1 + 88);
      sub_10000459C(v26, "value");
      sub_1000C4320(a1, 0xFu, v26, &__p);
      sub_10003F76C(101, &v29, &__p, &v31);
      sub_10003FED4(v35, v15, &v33, &v31);
      v31.__vftable = off_100181438;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v35[40] == 1)
  {
    v20[0] = 9;
    v21 = 0;
    sub_10000298C(v20);
    sub_10000298C(v20);
    v16 = *a3;
    *a3 = v20[0];
    v20[0] = v16;
    v17 = *(a3 + 8);
    *(a3 + 8) = v21;
    v21 = v17;
    sub_10000298C(a3);
    sub_10000298C(v20);
    sub_1000048FC(&v21, v20[0]);
  }

  if (*&v35[8])
  {
    *&v35[16] = *&v35[8];
    operator delete(*&v35[8]);
  }
}

void sub_1000C28B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_10003FE80(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C29B4(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = sub_100003538(a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0;
  *(v7 + 144) = "";
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 152) = 0;
  *(a1 + 176) = sub_1000C2A68();
  *(a1 + 184) = a4;
  *(a1 + 32) = sub_1000C2AC4((a1 + 40));
  return a1;
}

void sub_1000C2A4C(_Unwind_Exception *a1)
{
  sub_1000C3858(v1 + 40);
  sub_100004FBC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C2A68()
{
  v0 = localeconv();
  if (!v0)
  {
    __assert_rtn("get_decimal_point", "lexer.hpp", 136, "loc != nullptr");
  }

  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t sub_1000C2AC4(int64x2_t *a1)
{
  if (!a1[2].i64[0] && !sub_1000C2D30(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    a1[6].i64[1] = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      sub_100125694(a1);
      v2 = a1[1].i64[0];
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v8[0] = 1819047278;
            v5 = a1;
            v6 = 4;
            v7 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v8[0] = 1702195828;
            v5 = a1;
            v6 = 4;
            v7 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v8, "false", 5);
          v5 = a1;
          v6 = 5;
          v7 = 2;
        }

        return sub_1000C2D94(v5, v8, v6, v7);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return sub_1000C2E18(a1);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return sub_1000C32E0(a1);
    default:
      goto LABEL_47;
  }
}

BOOL sub_1000C2D30(int64x2_t *a1)
{
  if (sub_100125694(a1) == 239)
  {
    return sub_100125694(a1) == 187 && sub_100125694(a1) == 191;
  }

  else
  {
    sub_1000C3678(a1);
    return 1;
  }
}

uint64_t sub_1000C2D94(int64x2_t *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != a1[1].u8[0])
  {
    sub_10011B1AC();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = sub_100125694(a1);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    a1[6].i64[1] = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t sub_1000C2E18(uint64_t a1)
{
  sub_1000C36E0(a1);
  if (*(a1 + 16) != 34)
  {
    sub_10011B1D8();
  }

  while (2)
  {
    v2 = sub_100125694(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        LOBYTE(v9) = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v12 = sub_100125694(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v12 <= 113)
        {
          if (v12 > 97)
          {
            switch(v12)
            {
              case 'b':
                LOBYTE(v9) = 8;
                break;
              case 'f':
                LOBYTE(v9) = 12;
                break;
              case 'n':
                LOBYTE(v9) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v12)
            {
              case '""':
                LOBYTE(v9) = 34;
                break;
              case '/':
                LOBYTE(v9) = 47;
                break;
              case '\\':
                LOBYTE(v9) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v12 != 117)
        {
          if (v12 == 114)
          {
            LOBYTE(v9) = 13;
          }

          else
          {
            if (v12 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v9) = 9;
          }

          goto LABEL_7;
        }

        v13 = sub_1000C376C(a1);
        if (v13 == -1)
        {
          goto LABEL_86;
        }

        v9 = v13;
        if ((v13 & 0xFFFFFC00) != 0xD800)
        {
          if ((v13 & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (v13 >= 0x110000)
          {
            sub_10011B274();
          }

          if (v13 > 0x7F)
          {
            if (v13 > 0x7FF)
            {
              if (HIWORD(v13))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 80), (v13 >> 12) | 0xE0);
              std::string::push_back((a1 + 80), (v9 >> 6) & 0x3F | 0x80);
              LOBYTE(v9) = v9 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 80), (v13 >> 6) | 0xC0);
              LOBYTE(v9) = v9 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 80), v9);
          continue;
        }

        if (sub_100125694(a1) != 92 || sub_100125694(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v14 = sub_1000C376C(a1);
        if (v14 != -1)
        {
          if (v14 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v9 = v14 + (v9 << 10) - 56613888;
LABEL_25:
          sub_10011B204(v9, (a1 + 80), &v15);
          LOBYTE(v9) = v15;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 104) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        v15 = xmmword_100146FB0;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = &xmmword_100147010;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = &xmmword_100147030;
        goto LABEL_5;
      case 238:
        v7 = &xmmword_100147050;
LABEL_5:
        v8 = v7[1];
        v15 = *v7;
        v16 = v8;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v10 = &xmmword_100147070;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v10 = &xmmword_1001470A0;
        goto LABEL_13;
      case 245:
        v10 = &xmmword_1001470D0;
LABEL_13:
        v11 = v10[1];
        v15 = *v10;
        v16 = v11;
        v17 = v10[2];
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((sub_1000C37D4(v5, &v15, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

uint64_t sub_1000C32E0(uint64_t a1)
{
  sub_1000C36E0(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) >= 9)
  {
    if (v2 == 48)
    {
      std::string::push_back((a1 + 80), 48);
      v5 = 5;
    }

    else
    {
      if (v2 != 45)
      {
        sub_10011B324();
      }

      v4 = (a1 + 80);
      std::string::push_back((a1 + 80), 45);
      v16 = sub_100125694(a1);
      if ((v16 - 49) < 9)
      {
        v2 = *v3;
        v5 = 6;
        goto LABEL_3;
      }

      if (v16 != 48)
      {
        v19 = "invalid number; expected digit after '-'";
        goto LABEL_55;
      }

      std::string::push_back((a1 + 80), *v3);
      v5 = 6;
    }

    v17 = sub_100125694(a1);
    if (v17 == 101 || v17 == 69)
    {
      v6 = (a1 + 80);
      goto LABEL_42;
    }

    if (v17 != 46)
    {
      goto LABEL_9;
    }

    v6 = (a1 + 80);
    goto LABEL_34;
  }

  v4 = (a1 + 80);
  v5 = 5;
LABEL_3:
  std::string::push_back(v4, v2);
  v6 = (a1 + 80);
  while (1)
  {
    v7 = sub_100125694(a1);
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    std::string::push_back((a1 + 80), *v3);
  }

  if (v7 != 46)
  {
    if (v7 != 69 && v7 != 101)
    {
LABEL_9:
      sub_1000C3678(a1);
      v25 = 0;
      *__error() = 0;
      v8 = (a1 + 80);
      v9 = *(a1 + 103);
      v10 = (a1 + 80);
      if (v5 == 5)
      {
        if (v9 < 0)
        {
          v10 = *v8;
        }

        v11 = strtoull(v10, &v25, 10);
        v12 = *(a1 + 103);
        if (v12 < 0)
        {
          v8 = *(a1 + 80);
          v12 = *(a1 + 88);
        }

        if (v25 != v8 + v12)
        {
          sub_10011B2CC();
        }

        if (!*__error())
        {
          result = 5;
          v14 = 120;
LABEL_24:
          *(a1 + v14) = v11;
          return result;
        }
      }

      else
      {
        if (v9 < 0)
        {
          v10 = *v8;
        }

        v11 = strtoll(v10, &v25, 10);
        v15 = *(a1 + 103);
        if (v15 < 0)
        {
          v8 = *(a1 + 80);
          v15 = *(a1 + 88);
        }

        if (v25 != v8 + v15)
        {
          sub_10011B2A0();
        }

        if (!*__error())
        {
          result = 6;
          v14 = 112;
          goto LABEL_24;
        }
      }

      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_34:
  std::string::push_back(v6, *(a1 + 136));
  if ((sub_100125694(a1) - 48) > 9)
  {
    v19 = "invalid number; expected digit after '.'";
    goto LABEL_55;
  }

  v6 = (a1 + 80);
  do
  {
    std::string::push_back((a1 + 80), *(a1 + 16));
    v18 = sub_100125694(a1);
  }

  while ((v18 - 48) < 0xA);
  if (v18 != 101 && v18 != 69)
  {
    goto LABEL_45;
  }

LABEL_42:
  std::string::push_back(v6, *(a1 + 16));
  v20 = sub_100125694(a1);
  if ((v20 - 48) >= 0xA)
  {
    if (v20 == 45 || v20 == 43)
    {
      v21 = (a1 + 80);
      std::string::push_back((a1 + 80), *(a1 + 16));
      if ((sub_100125694(a1) - 48) < 0xA)
      {
        goto LABEL_44;
      }

      v19 = "invalid number; expected digit after exponent sign";
    }

    else
    {
      v19 = "invalid number; expected '+', '-', or digit after exponent";
    }

LABEL_55:
    *(a1 + 104) = v19;
    return 14;
  }

  v21 = (a1 + 80);
LABEL_44:
  sub_100125914(a1, (a1 + 16), v21);
LABEL_45:
  sub_1000C3678(a1);
  v25 = 0;
  *__error() = 0;
LABEL_46:
  v22 = (a1 + 80);
  v23 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v23 = *v22;
  }

  *(a1 + 128) = strtod(v23, &v25);
  v24 = *(a1 + 103);
  if (v24 < 0)
  {
    v22 = *(a1 + 80);
    v24 = *(a1 + 88);
  }

  if (v25 != v22 + v24)
  {
    sub_10011B2F8();
  }

  return 7;
}

void sub_1000C366C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C3678(uint64_t result)
{
  v1 = (result + 40);
  v2 = *(result + 40);
  *(result + 24) = 1;
  --*(result + 32);
  if (v2 || (v1 = (result + 48), (v2 = *(result + 48)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 64);
    if (*(result + 56) == v3)
    {
      sub_10011B350();
    }

    *(result + 64) = v3 - 1;
  }

  return result;
}

void sub_1000C36E0(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    **(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
  }

  v2 = *(a1 + 56);
  v1 = a1 + 56;
  *(v1 + 8) = v2;
  v3 = *(v1 - 40);
  sub_100003650(v1, &v3);
}

void sub_1000C3760(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000C376C(int64x2_t *a1)
{
  if (a1[1].i64[0] != 117)
  {
    sub_10011B37C();
  }

  sub_100125978(a1, a1[1].i64, &v2);
  return v2;
}

uint64_t sub_1000C37D4(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    sub_10011B4BC();
  }

  sub_100125A98(a2, a3, a1, a3, &v4);
  return v4;
}

uint64_t sub_1000C3858(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000C389C(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          sub_100041FAC(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          sub_100042594(a2);
        }

        else
        {
          v32.__vftable = *(a1 + 160);
          sub_100042878(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        sub_100041CB4(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        sub_100041CB4(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 152);
        sub_10004229C(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 72);
          sub_1000C423C(a1 + 40, &v34);
          sub_1000C423C(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          sub_100040A24(406, v30, &v32);
          v13 = sub_10003F51C(a2, v23, &v34, &v32);
          sub_100040B9C(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 168);
        sub_1000419B8(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_1000406D4(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = sub_1000C2AC4((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_1000408CC(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    sub_1000077C4(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 72);
      sub_1000C423C(a1 + 40, &v34);
      *v30 = *(a1 + 72);
      v31 = *(a1 + 88);
      sub_10000459C(&v28, "value");
      sub_1000C4320(a1, 0, &v28, &__p);
      sub_10003F76C(101, v30, &__p, &v32);
      v16 = sub_10003F51C(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = off_100181438;
      std::runtime_error::~runtime_error(&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 72);
    sub_1000C423C(a1 + 40, &v34);
    *v30 = *(a1 + 72);
    v31 = *(a1 + 88);
    sub_10000459C(&v28, "value");
    sub_1000C4320(a1, 0x10u, &v28, &__p);
    sub_10003F76C(101, v30, &__p, &v32);
    v16 = sub_10003F51C(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((sub_100040150(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = sub_1000C2AC4((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_100040554();
    }

    goto LABEL_64;
  }

  v6 = sub_100040340(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_1000C2AC4((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_1000C2AC4((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 72);
        sub_1000C423C(a1 + 40, &v34);
        *v30 = *(a1 + 72);
        v31 = *(a1 + 88);
        sub_10000459C(&v28, "array");
        sub_1000C4320(a1, 0xAu, &v28, &__p);
        sub_10003F76C(101, v30, &__p, &v32);
        v19 = sub_10003F51C(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!sub_1000408CC(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = sub_1000C2AC4((a1 + 40));
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 72);
      sub_1000C423C(a1 + 40, &v34);
      *v30 = *(a1 + 72);
      v31 = *(a1 + 88);
      sub_10000459C(&v28, "object");
      sub_1000C4320(a1, 0xBu, &v28, &__p);
      sub_10003F76C(101, v30, &__p, &v32);
      v19 = sub_10003F51C(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!sub_100040340(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = sub_1000C2AC4((a1 + 40));
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_100040554();
  }

LABEL_64:
  v22 = *(a1 + 72);
  sub_1000C423C(a1 + 40, &v34);
  *v30 = *(a1 + 72);
  v31 = *(a1 + 88);
  sub_10000459C(&v28, "object key");
  sub_1000C4320(a1, 4u, &v28, &__p);
  sub_10003F76C(101, v30, &__p, &v32);
  v19 = sub_10003F51C(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  sub_10003FE80(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_1000C40F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::runtime_error a30)
{
  sub_10003FE80(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  v32 = *(v30 - 64);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_1000C423C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_1000C4300(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C4320(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(a4, 170, sizeof(std::string));
  sub_10000459C(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    sub_10000459C(&v36, *(a1 + 144));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000C423C(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = sub_100042FC4(v13);
  sub_10000459C(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = sub_100042FC4(a2);
  sub_10000459C(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1000C4680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C4760(uint64_t a1, void *a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = (a1 + 120);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v38.__vftable = *(a1 + 152);
        sub_10002739C(a2, &v38);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v29 = *(a1 + 72);
          sub_1000C423C(a1 + 40, &v40);
          sub_1000C423C(a1 + 40, &v34);
          v30 = std::string::insert(&v34, 0, "number overflow parsing '");
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          v32 = std::string::append(&__p, "'");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v37 = v32->__r_.__value_.__r.__words[2];
          *v36 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          sub_100040A24(406, v36, &v38);
          v18 = sub_10003FED4(a2, v29, &v40, &v38);
          sub_100040B9C(&v38);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_51;
        }

        v38.__vftable = *(a1 + 168);
        sub_10001B2A0(a2, &v38);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v40.__r_.__value_.__s.__data_[0] = 2;
        v38.__vftable = sub_100004CB0(a2, &v40);
        sub_100004654((a2 + 1), &v38);
        v10 = sub_1000C2AC4((a1 + 40));
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          a2[2] -= 8;
          goto LABEL_26;
        }

        LOBYTE(v38.__vftable) = 1;
        sub_1000077C4(&v41, &v38);
        break;
      case 9:
        v40.__r_.__value_.__s.__data_[0] = 1;
        v38.__vftable = sub_100004CB0(a2, &v40);
        sub_100004654((a2 + 1), &v38);
        v6 = sub_1000C2AC4((a1 + 40));
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_59:
          v27 = *(a1 + 72);
          sub_1000C423C(a1 + 40, &v40);
          *v36 = *(a1 + 72);
          v37 = *(a1 + 88);
          sub_10000459C(&v34, "object key");
          sub_1000C4320(a1, 4u, &v34, &__p);
          sub_10003F76C(101, v36, &__p, &v38);
          v24 = sub_10003FED4(a2, v27, &v40, &v38);
          goto LABEL_63;
        }

        v7 = *(*(a2[2] - 8) + 8);
        v38.__vftable = v4;
        a2[4] = sub_100005F50(v7, &v4->~runtime_error) + 56;
        v8 = sub_1000C2AC4((a1 + 40));
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_62;
        }

        LOBYTE(v38.__vftable) = 0;
        sub_1000077C4(&v41, &v38);
        v9 = sub_1000C2AC4((a1 + 40));
LABEL_41:
        *(a1 + 32) = v9;
        break;
      case 14:
        v20 = *(a1 + 72);
        sub_1000C423C(a1 + 40, &v40);
        *v36 = *(a1 + 72);
        v37 = *(a1 + 88);
        sub_10000459C(&v34, "value");
        sub_1000C4320(a1, 0, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v21 = sub_10003FED4(a2, v20, &v40, &v38);
LABEL_50:
        v18 = v21;
        v38.__vftable = off_100181438;
        std::runtime_error::~runtime_error(&v39);
        std::exception::~exception(&v38);
        goto LABEL_51;
      default:
LABEL_49:
        v22 = *(a1 + 72);
        sub_1000C423C(a1 + 40, &v40);
        *v36 = *(a1 + 72);
        v37 = *(a1 + 88);
        sub_10000459C(&v34, "value");
        sub_1000C4320(a1, 0x10u, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v21 = sub_10003FED4(a2, v22, &v40, &v38);
        goto LABEL_50;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v38.__vftable = 0;
      sub_100025844(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_100006D64(a2);
      }

      v38.__vftable = *(a1 + 160);
      sub_1000079C0(a2, &v38);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v38.__vftable) = 1;
    sub_100006ABC(a2, &v38);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  LOBYTE(v38.__vftable) = 0;
  sub_100006ABC(a2, &v38);
LABEL_26:
  v11 = v42;
  if (!v42)
  {
LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    if ((*&v41[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = sub_1000C2AC4((a1 + 40));
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_40;
      }

      if (v12 != 10)
      {
        v23 = *(a1 + 72);
        sub_1000C423C(a1 + 40, &v40);
        *v36 = *(a1 + 72);
        v37 = *(a1 + 88);
        sub_10000459C(&v34, "array");
        sub_1000C4320(a1, 0xAu, &v34, &__p);
        sub_10003F76C(101, v36, &__p, &v38);
        v24 = sub_10003FED4(a2, v23, &v40, &v38);
        goto LABEL_63;
      }

      a2[2] -= 8;
      v13 = v42;
      if (!v42)
      {
        v25 = 383;
        goto LABEL_61;
      }

      goto LABEL_35;
    }

    v14 = sub_1000C2AC4((a1 + 40));
    *(a1 + 32) = v14;
    if (v14 == 13)
    {
      break;
    }

    if (v14 != 11)
    {
      v26 = *(a1 + 72);
      sub_1000C423C(a1 + 40, &v40);
      *v36 = *(a1 + 72);
      v37 = *(a1 + 88);
      sub_10000459C(&v34, "object");
      sub_1000C4320(a1, 0xBu, &v34, &__p);
      sub_10003F76C(101, v36, &__p, &v38);
      v24 = sub_10003FED4(a2, v26, &v40, &v38);
      goto LABEL_63;
    }

    a2[2] -= 8;
    v13 = v42;
    if (!v42)
    {
      v25 = 439;
LABEL_61:
      __assert_rtn("sax_parse_internal", "parser.hpp", v25, "not states.empty()");
    }

LABEL_35:
    v11 = v13 - 1;
    v42 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  v15 = sub_1000C2AC4((a1 + 40));
  *(a1 + 32) = v15;
  if (v15 != 4)
  {
    goto LABEL_59;
  }

  v16 = *(*(a2[2] - 8) + 8);
  v38.__vftable = v4;
  a2[4] = sub_100005F50(v16, &v4->~runtime_error) + 56;
  v17 = sub_1000C2AC4((a1 + 40));
  *(a1 + 32) = v17;
  if (v17 == 12)
  {
LABEL_40:
    v9 = sub_1000C2AC4((a1 + 40));
    goto LABEL_41;
  }

LABEL_62:
  v28 = *(a1 + 72);
  sub_1000C423C(a1 + 40, &v40);
  *v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  sub_10000459C(&v34, "object separator");
  sub_1000C4320(a1, 0xCu, &v34, &__p);
  sub_10003F76C(101, v36, &__p, &v38);
  v24 = sub_10003FED4(a2, v28, &v40, &v38);
LABEL_63:
  v18 = v24;
  sub_10003FE80(&v38);
LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (v41)
  {
    operator delete(v41);
  }

  return v18;
}

void sub_1000C4FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::runtime_error a30)
{
  sub_10003FE80(&a30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_1000C51DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100188080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1000C52B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001880D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000C52F0(uint64_t a1)
{
  memset(v6, 170, sizeof(v6));
  v2 = *(a1 + 8);
  if (*(v2 + 23) < 0)
  {
    v3 = *v2;
  }

  sub_1000C5538(v6);
  if (v6[16])
  {
    v4 = *(a1 + 16);
    sub_1000AE0F0(v6);
  }

  if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
  {
    sub_100125BA0((a1 + 8));
  }

  **(a1 + 24) = 0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000C5474(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR))
    {
      sub_100125B34();
    }

    **(v2 + 24) = 0;
    __cxa_end_catch();
    JUMPOUT(0x1000C5398);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C54EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***sub_1000C5538(void (__cdecl ***a1)(std::ofstream *__hidden this)))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1000C56C0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000C579C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

uint64_t sub_1000C57DC(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_queue_create("analyticsd.DaemonPerfManagerQueue", 0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = v4;
    dispatch_retain(v4);
    dispatch_release(v5);
  }

  sub_1000564F4(a1 + 24, a2);
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 112) = std::chrono::system_clock::now();
  *(a1 + 120) = 1;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_1000D4CB4(&v7);
  sub_10000298C(&v7);
  sub_1000048FC(&v8, v7);
  return a1;
}

void sub_1000C58C4(_Unwind_Exception *a1)
{
  sub_1000C7248(v2);
  sub_10000E910(v1 + 24);
  sub_100044430(v1);
  _Unwind_Resume(a1);
}

void sub_1000C58EC(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, a1);
  operator new();
}

void sub_1000C5A0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C5A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000C7380;
  v4[3] = &unk_1001881A0;
  v4[4] = a1;
  v4[5] = &v3;
  v5 = v4;
  v7 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008854;
  block[3] = &unk_1001881C0;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(v1, block);
  return v7;
}

uint64_t sub_1000C5B18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000C738C;
  v4[3] = &unk_1001881E0;
  v4[4] = a1;
  v4[5] = &v3;
  v5 = v4;
  v7 = -86;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008854;
  block[3] = &unk_1001881C0;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(v1, block);
  return v7;
}

BOOL sub_1000C5C14(uint64_t a1)
{
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v3 = *(a1 + 112);
  if (v2.__d_.__rep_ >= v3)
  {
    sub_1000D4CB4(v7);
    sub_10000459C(__p, "perf_check_throttle");
    *(a1 + 112) = v2.__d_.__rep_ + 1000000 * sub_1000C5D24(v7, __p, &unk_1001473C8);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000298C(v7);
    sub_1000048FC(&v8, v7[0]);
  }

  return v2.__d_.__rep_ < v3;
}

void sub_1000C5CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C5D24(unsigned __int8 *a1, const void **a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_10002CB3C(a1);
    sub_10000459C(v13, v10);
    v11 = std::string::insert(v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&v16 = *(&v11->__r_.__value_.__l + 2);
    v15 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(306, &v15, exception);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v5;
  v16 = v5;
  sub_10000F1F4(a1, a2, &v15);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, a1);
  sub_10000DCFC(v13);
  if (sub_10000DD7C(&v15, v13))
  {
    return *a3;
  }

  v8 = sub_10000DB44(&v15);
  *&v13[0] = 0xAAAAAAAAAAAAAAAALL;
  sub_10001D684(v8, v13);
  return *&v13[0];
}

__n128 sub_1000C5EF0(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1000C7398(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

uint64_t *sub_1000C5F7C(void *a1)
{
  v2 = a1[11];
  v3 = a1[8];
  v4 = (v3 + 8 * (v2 >> 8));
  if (a1[9] == v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = (*v4 + 16 * v2);
    v6 = *(v3 + (((a1[12] + v2) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 96) + v2);
    if (v5 != v6)
    {
      while (!sub_1000C75BC(*v5, v5[1]))
      {
        v5 += 2;
        if ((v5 - *v4) == 4096)
        {
          v7 = v4[1];
          ++v4;
          v5 = v7;
        }

        if (v5 == v6)
        {
          goto LABEL_18;
        }
      }
    }

    if (v5 != v6)
    {
      v8 = v5;
      v9 = v4;
      while (1)
      {
        v8 += 2;
        if ((v8 - *v9) == 4096)
        {
          v10 = v9[1];
          ++v9;
          v8 = v10;
        }

        if (v8 == v6)
        {
          break;
        }

        if (!sub_1000C75BC(*v8, v8[1]))
        {
          *v5 = *v8;
          v5 += 2;
          if ((v5 - *v4) == 4096)
          {
            v11 = v4[1];
            ++v4;
            v5 = v11;
          }
        }
      }

      v6 = v5;
    }
  }

LABEL_18:
  v12 = a1[11] + a1[12];
  v13 = a1[8];
  v14 = (v13 + 8 * (v12 >> 8));
  if (a1[9] == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 16 * v12;
  }

  return sub_1000C60CC(a1 + 7, v4, v6, v14, v15);
}

uint64_t *sub_1000C60CC(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 >> 8));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 16 * v7;
  }

  v36 = v9;
  v37 = v10;
  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 4) + 32 * (a2 - v9) - ((v10 - *v9) >> 4);
  }

  v12 = sub_1000C76D0(&v36, v11);
  v14 = v13;
  v35.n128_u64[0] = v12;
  v35.n128_u64[1] = v13;
  if (v6 >= 1)
  {
    if (v11 <= (a1[5] - v6) >> 1)
    {
      v21 = v36;
      v22 = v37;
      v23 = sub_1000C76D0(&v35, v6);
      v24.n128_u64[0] = 0xAAAAAAAAAAAAAAAALL;
      v24.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
      v38 = v24;
      v39 = v24;
      sub_1000C77FC(v21, v22, v12, v14, v23, v25, &v38);
      v26 = v37;
      if (v37 != v39.n128_u64[1])
      {
        v27 = v36;
        do
        {
          v26 += 16;
          v37 = v26;
          if (v26 - *v27 == 4096)
          {
            v28 = v27[1];
            ++v27;
            v26 = v28;
            v36 = v27;
            v37 = v28;
          }
        }

        while (v26 != v39.n128_u64[1]);
      }

      v29 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v29;
        ;
      }
    }

    else
    {
      v15 = sub_1000C76D0(&v35, v6);
      v17 = a1[4] + a1[5];
      v18 = a1[1];
      v19 = (v18 + 8 * (v17 >> 8));
      if (a1[2] == v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = &(*v19)[16 * v17];
      }

      v38 = v35;
      sub_1000C7A10(v15, v16, v19, v20, &v38);
      a1[5] -= v6;
        ;
      }
    }
  }

  v30 = a1[4];
  v31 = a1[1];
  v32 = (v31 + 8 * (v30 >> 8));
  if (a1[2] == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32 + 16 * v30;
  }

  v38.n128_u64[0] = v32;
  v38.n128_u64[1] = v33;
  return sub_1000C76D0(&v38, v11);
}

BOOL sub_1000C6344(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100125CE4();
    return 0;
  }

  v2 = sub_10005F8C8();
  v3 = sub_1000E4804();
  sub_1000D4CB4(v25);
  sub_10000459C(__p, "restart_allow_scale_memory_limit");
  v4 = sub_1000C67DC(v25, __p, &unk_1001473D0);
  if ((v28[9] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v5 = v4 * v3;
  sub_10000298C(v25);
  sub_1000048FC(&v26, v25[0]);
  v6 = sub_1000C69A8(a1);
  v7 = qword_100192DA8;
  if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 96);
    v9 = (*(*(a1 + 64) + (((v8 + *(a1 + 88) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v8 + *(a1 + 88) - 1));
    v10 = *v9;
    LODWORD(v9) = v9[1];
    *__p = 67110656;
    *&__p[4] = v10;
    *&__p[8] = 1024;
    *&__p[10] = v9;
    *v28 = 2048;
    *&v28[2] = v2;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v6;
    v33 = 1024;
    v34 = v3;
    v35 = 2048;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Daemon perf] Current: {Memory footprint: %d, Peak: %d, Process uptime: %ld, Samples in window: %lu, Memory Moving Average: %f, Jetsam Limit: %d, Restart Limit: %f}", __p, 0x3Cu);
  }

  if (*(a1 + 121) == 1)
  {
    v11 = qword_100192DA8;
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v13 = "[Daemon perf] No restart queued. Restart already in progress";
LABEL_14:
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 2;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v14, v15, v13, __p, v16);
    return 0;
  }

  if (*(a1 + 120) == 1)
  {
    v11 = qword_100192DA8;
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v13 = "[Daemon perf] No restart queued. Restarts are suspended";
    goto LABEL_14;
  }

  if (v6 < 0.0)
  {
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100125C84();
      return 0;
    }

    return result;
  }

  if (v3 < 0)
  {
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100125C24();
      return 0;
    }

    return result;
  }

  v17 = *(a1 + 96);
  sub_1000D4CB4(v25);
  sub_10000459C(__p, "restart_allow_minumum_samples");
  v18 = sub_1000C6A30(v25, __p, &unk_1001473D8);
  if ((v28[9] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  sub_10000298C(v25);
  sub_1000048FC(&v26, v25[0]);
  if (v17 < v18)
  {
    v19 = qword_100192DA8;
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v20 = *(a1 + 96);
    *__p = 134217984;
    *&__p[4] = v20;
    v13 = "[Daemon perf] No restart queued. Not enough samples to evaluate average memory: {Samples in window: %lu}";
    v14 = v19;
    goto LABEL_27;
  }

  if (v6 > v5)
  {
    v21.__d_.__rep_ = std::chrono::system_clock::from_time_t(v2).__d_.__rep_;
    sub_1000D4CB4(v25);
    sub_10000459C(__p, "restart_allow_after");
    v22 = 1000000 * sub_1000C5D24(v25, __p, &unk_1001473E0);
    if ((v28[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_10002C5F4(v25);
    if (v22 < v21.__d_.__rep_)
    {
      return 1;
    }

    v24 = qword_100192DA8;
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *__p = 134217984;
    *&__p[4] = v2;
    v13 = "[Daemon perf] No restart queued. Process hasn't been alive for long enough to attempt a retart. {Process Uptime: %ld}";
    v14 = v24;
LABEL_27:
    v15 = OS_LOG_TYPE_INFO;
    v16 = 12;
    goto LABEL_15;
  }

  v23 = qword_100192DA8;
  result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *__p = 134218240;
    *&__p[4] = v6;
    *&__p[12] = 2048;
    *v28 = v5;
    v13 = "[Daemon perf] No restart queued. Operating below memory limit. {Average memory: %f, Restart Limit: %f}";
    v14 = v23;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
    goto LABEL_15;
  }

  return result;
}

void sub_1000C6798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a9);
  _Unwind_Resume(a1);
}

double sub_1000C67DC(unsigned __int8 *a1, const void **a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_10002CB3C(a1);
    sub_10000459C(v13, v10);
    v11 = std::string::insert(v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&v16 = *(&v11->__r_.__value_.__l + 2);
    v15 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(306, &v15, exception);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v5;
  v16 = v5;
  sub_10000F1F4(a1, a2, &v15);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, a1);
  sub_10000DCFC(v13);
  if (sub_10000DD7C(&v15, v13))
  {
    return *a3;
  }

  v8 = sub_10000DB44(&v15);
  *&v13[0] = -1;
  sub_100025F58(v8, v13);
  return *v13;
}

double sub_1000C69A8(void *a1)
{
  v1 = a1[12];
  if (!v1)
  {
    return -1.0;
  }

  v2 = a1[8];
  v3 = 0.0;
  if (a1[9] != v2)
  {
    v4 = a1[11];
    v5 = (v2 + 8 * (v4 >> 8));
    v6 = *v5;
    v7 = &(*v5)[16 * v4];
    v8 = *(v2 + (((v4 + v1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + v1);
    if (v7 != v8)
    {
      v9 = 0;
      do
      {
        v11 = *v7;
        v7 += 16;
        v10 = v11;
        if (v7 - v6 == 4096)
        {
          v12 = v5[1];
          ++v5;
          v6 = v12;
          v7 = v12;
        }

        v9 += v10;
      }

      while (v7 != v8);
      v3 = v9;
    }
  }

  return v3 / v1;
}

uint64_t sub_1000C6A30(unsigned __int8 *a1, const void **a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_10002CB3C(a1);
    sub_10000459C(v13, v10);
    v11 = std::string::insert(v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&v16 = *(&v11->__r_.__value_.__l + 2);
    v15 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(306, &v15, exception);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v5;
  v16 = v5;
  sub_10000F1F4(a1, a2, &v15);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v6;
  v13[1] = v6;
  sub_10000DEC4(v13, a1);
  sub_10000DCFC(v13);
  if (sub_10000DD7C(&v15, v13))
  {
    return *a3;
  }

  v8 = sub_10000DB44(&v15);
  *&v13[0] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000C7BCC(v8, v13);
  return *&v13[0];
}

BOOL sub_1000C6BFC(uint64_t a1)
{
  sub_1000D4CB4(&__t);
  rep_low = LOBYTE(__t.__d_.__rep_);
  sub_10000298C(&__t);
  sub_1000048FC(&v7, LOBYTE(__t.__d_.__rep_));
  if (!rep_low)
  {
    return 0;
  }

  if (sub_1000C5C14(a1))
  {
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_100125D44();
    return 0;
  }

  v4 = sub_10002A5A8();
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v5 = std::chrono::system_clock::to_time_t(&__t);
  return sub_1000C6CE4(a1, v4, v5);
}

BOOL sub_1000C6CE4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1000D4CB4(&v10);
  v6 = v10.n128_u8[0];
  sub_10000298C(&v10);
  sub_1000048FC(&v10.n128_i64[1], v10.n128_u8[0]);
  if (!v6)
  {
    return 0;
  }

  v10.n128_u64[0] = a2;
  v10.n128_u64[1] = a3;
  if (a2 == -1)
  {
    result = os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100125DB0();
      return 0;
    }
  }

  else
  {
    sub_1000C5EF0(a1 + 56, &v10);
    sub_1000C5F7C(a1);
    result = sub_1000C6344(a1);
    if (result)
    {
      v8 = qword_100192DA8;
      if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_DEFAULT))
      {
        v10.n128_u16[0] = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Daemon perf] Restart being queued. Operating above memory limit and been alive for long enough", &v10, 2u);
      }

      sub_1000C6E60(a1);
      *(a1 + 121) = 1;
      v9 = *(a1 + 48);
      if (!v9)
      {
        sub_10002B200();
      }

      (*(*v9 + 48))(v9);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000C6E60(uint64_t a1)
{
  v1 = *(a1 + 121);
  if (v1 == 1)
  {
    if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR))
    {
      sub_100125E10();
    }
  }

  else if ((*(a1 + 120) & 1) == 0)
  {
    v3 = qword_100192DA8;
    if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Daemon perf] Ability to restart suspended", v5, 2u);
    }

    *(a1 + 120) = 1;
  }

  return v1 ^ 1u;
}

uint64_t sub_1000C6F50(uint64_t a1)
{
  v1 = *(a1 + 121);
  if (v1 == 1)
  {
    if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_ERROR))
    {
      sub_100125E70();
    }
  }

  else if (*(a1 + 120) == 1)
  {
    v3 = qword_100192DA8;
    if (os_log_type_enabled(qword_100192DA8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Daemon perf] Ability to restart resumed", v5, 2u);
    }

    *(a1 + 120) = 0;
  }

  return v1 ^ 1u;
}

uint64_t *sub_1000C7040(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000C7248((v1 + 56));
    sub_10000E910(v1 + 24);
    sub_100044430(v1);
    operator delete();
  }

  return result;
}

void sub_1000C7114(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000C71E8);
  __cxa_rethrow();
}

void sub_1000C7154(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000C71A8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C71E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000C7248((result + 56));
    sub_10000E910(v1 + 24);
    sub_100044430(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1000C7248(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1000588D0(a1);
}

uint64_t *sub_1000C72F4(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_1000C6BFC(*v1);
  sub_100046828(&v4);
  return sub_1000120B8(&v3);
}

void sub_1000C7364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100046828(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

void *sub_1000C7398(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    sub_100003C10(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100058048(a1, &v10);
}

void sub_1000C7568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000C75BC(int a1, time_t __t)
{
  v2.__d_.__rep_ = std::chrono::system_clock::from_time_t(__t).__d_.__rep_;
  sub_1000D4CB4(v8);
  sub_10000459C(__p, "window_samples_expire_after");
  v3 = sub_1000C5D24(v8, __p, "\b\a");
  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000298C(v8);
  sub_1000048FC(&v9, v8[0]);
  return v2.__d_.__rep_ + 1000000 * v3 < v4.__d_.__rep_;
}

void sub_1000C7698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002C5F4(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000C76D0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 4);
    if (v4 < 1)
    {
      result -= (255 - v4) >> 8;
      v6 = *result;
    }

    else
    {
      result += v4 >> 8;
      v5 = *result;
    }
  }

  return result;
}

uint64_t sub_1000C772C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000C778C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__n128 sub_1000C77FC@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    memset(v19, 170, sizeof(v19));
    sub_1000C7954(a2, a4, a5, a6, v19);
  }

  else
  {
    v12 = *a3;
    memset(v19, 170, sizeof(v19));
    sub_1000C7954(v12, a4, a5, a6, v19);
    v13 = v19[1];
    v14 = v19[2];
    for (i = a3 - 1; i != a1; --i)
    {
      v16 = *i;
      memset(v19, 170, sizeof(v19));
      sub_1000C7954(v16, v16 + 4096, v13, v14, v19);
      v13 = v19[1];
      v14 = v19[2];
    }

    v17 = *i;
    memset(v19, 170, sizeof(v19));
    sub_1000C7954(a2, v17 + 4096, v13, v14, v19);
  }

  result = *&v19[1];
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1000C7954@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a1) >> 4;
      }

      v11 -= 16 * v13;
      a4 -= 16 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 16 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_1000C7A10(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000C7B00(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000C7B00(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1000C7B00(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1000C7B00@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 4 >= v11 >> 4 ? v11 >> 4 : (a3 - v9) >> 4;
      if (v12)
      {
        __src = memmove(__dst, v9, 16 * v12);
      }

      v9 += 16 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 16 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

unsigned __int8 *sub_1000C7BCC(unsigned __int8 *result, unint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(v2);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 1);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1000C7CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

_BYTE *sub_1000C7D60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*a1 + 24))(a1) - 1;
  if (v3 > 2)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_100188338[v3];
  }

  return sub_10000459C(a2, v4);
}

uint64_t sub_1000C7DD4(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    *(result + 128) = 0;
  }

  if (*(result + 136) == 1)
  {
    *(result + 136) = 0;
  }

  return result;
}

uint64_t sub_1000C7DF8(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    return *(a1 + 124);
  }

  else
  {
    return 0;
  }
}

void sub_1000C7E1C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
  {
    v9 = sub_10001C33C(a1);
    if (*(v9 + 23) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    v11 = sub_100016734(a1);
    if (*(v11 + 23) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *v11;
    }

    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    v15 = (*a4 + 16);
    if (*(*a4 + 39) < 0)
    {
      v15 = *v15;
    }

    buf[0] = 136447234;
    *&buf[1] = v10;
    v20 = 2082;
    v21 = v12;
    v22 = 2080;
    v23 = v13;
    v24 = 2080;
    v25 = v14;
    v26 = 2080;
    v27 = v15;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Transform] Error: Transform '%{public}s' with uuid=%{public}s error with reason='%s' and context='%s' with event='%s'", buf, 0x34u);
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_100075FE0(v18);
}

void sub_1000C827C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000C8288(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
  {
    v9 = sub_10001C33C(a1);
    if (*(v9 + 23) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    v11 = sub_100016734(a1);
    if (*(v11 + 23) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *v11;
    }

    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    v15 = (*a4 + 16);
    if (*(*a4 + 39) < 0)
    {
      v15 = *v15;
    }

    buf[0] = 136447234;
    *&buf[1] = v10;
    v20 = 2082;
    v21 = v12;
    v22 = 2080;
    v23 = v13;
    v24 = 2080;
    v25 = v14;
    v26 = 2080;
    v27 = v15;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Transform] FAULT: Transform '%{public}s'  with uuid=%{public}s hit unrecoverable error with reason='%s' and context='%s' with event='%s'", buf, 0x34u);
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  sub_100075FE0(v18);
}

void sub_1000C8784(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000C8790(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    __assert_rtn("createMessage", "Transform.cpp", 273, "initialized()");
  }

  memset(&__p, 170, sizeof(__p));
  v8 = sub_10001C33C(a1);
  if (*(v8 + 23) < 0)
  {
    sub_1000078D8(&__p, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    __p.__r_.__value_.__r.__words[2] = *(v8 + 16);
    *&__p.__r_.__value_.__l.__data_ = v9;
  }

  memset(&__dst, 170, sizeof(__dst));
  v10 = sub_100016734(a1);
  if (*(v10 + 23) < 0)
  {
    sub_1000078D8(&__dst, *v10, *(v10 + 8));
  }

  else
  {
    v11 = *v10;
    __dst.__r_.__value_.__r.__words[2] = *(v10 + 16);
    *&__dst.__r_.__value_.__l.__data_ = v11;
  }

  v12 = sub_100012C84(a1);
  v34 = 0xAAAAAAAAAAAAAA00;
  v35 = 0;
  sub_10000298C(&v34);
  sub_10000298C(&v34);
  v13 = *(a1 + 32);
  v14 = *v13;
  if (*v13)
  {
    if (v14 == 1)
    {
      if (!*(*(v13 + 1) + 16))
      {
        goto LABEL_22;
      }
    }

    else if (v14 == 2 && !((*(*(v13 + 1) + 8) - **(v13 + 1)) >> 4))
    {
      goto LABEL_22;
    }

    v31[4] = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v31 = v15;
    *&v31[2] = v15;
    sub_10000DEC4(v31, v13);
    sub_10000DF14(v31);
    v16 = sub_10000DB44(v31);
    sub_10000FF70(v32, v16);
    sub_10000298C(v32);
    v17 = v34;
    LOBYTE(v34) = v32[0];
    v32[0] = v17;
    v18 = v35;
    v35 = v33;
    v33 = v18;
    sub_10000298C(&v34);
    sub_10000298C(v32);
    sub_1000048FC(&v33, v32[0]);
    v31[4] = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v31 = v19;
    *&v31[2] = v19;
    sub_10003EA28(&v34, "message", v31);
    *&v29.__r_.__value_.__l.__data_ = &v34;
    v29.__r_.__value_.__r.__words[2] = 0;
    *&v30 = 0;
    *(&v30 + 1) = 0x8000000000000000;
    sub_1000137F8(&v29);
    if (!sub_100013878(v31, &v29))
    {
      v20 = sub_10001CF44(v31);
      sub_100010390(v20, &v29);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v29;
    }

    sub_10003EA28(&v34, "uuid", &v29);
    v21 = v29.__r_.__value_.__r.__words[0];
    *&v31[1] = *&v29.__r_.__value_.__r.__words[1];
    *&v31[3] = v30;
    *&v29.__r_.__value_.__l.__data_ = &v34;
    v29.__r_.__value_.__r.__words[2] = 0;
    *&v30 = 0;
    *(&v30 + 1) = 0x8000000000000000;
    v31[0] = v21;
    sub_1000137F8(&v29);
    if (!sub_100013878(v31, &v29))
    {
      v22 = sub_10001CF44(v31);
      sub_100010390(v22, &v29);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = v29;
    }
  }

LABEL_22:
  v23 = sub_1000C8C34(&v34, a3, &v29);
  v24 = *(a1 + 132);
  v25 = *(a1 + 96);
  v26 = *(a1 + 104);
  v27 = *(*(a1 + 40) + 88);
  v28 = sub_1000C8F90(v23, &v34);
  sub_1000C910C(&v34, v38);
  (*(*v27 + 16))(v31, v27, v28, v38);
  v41 = *v31;
  v42 = v31[2];
  memset(v31, 0, 24);
  v43 = 1;
  sub_1000C9898(a4, a2, &__p, &__dst, &v29, v24, v12, v26, v25, (a1 + 112), &v41);
  if (v43 == 1 && SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v31[2]) < 0)
  {
    operator delete(v31[0]);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38[0]);
  }

  sub_10000298C(&v29);
  sub_1000048FC(&v29.__r_.__value_.__l.__size_, v29.__r_.__value_.__s.__data_[0]);
  sub_10000298C(&v34);
  sub_1000048FC(&v35, v34);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000C8C28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

unsigned __int8 *sub_1000C8C34@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*a1 == 1)
  {
    *&v9 = "fields";
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[0] = v6;
    v11[1] = v6;
    sub_10000BD10(a1, &v9, v11);
    v10[0] = a1;
    memset(&v10[1], 0, 24);
    v10[4] = 0x8000000000000000;
    sub_10000DCFC(v10);
    if (sub_10000DD7C(v11, v10))
    {
      v7 = sub_100016CD8();
      if (!v7)
      {
LABEL_11:
        *a3 = *a2;
        *(a3 + 8) = *(a2 + 8);
        sub_10000298C(a2);
        *a2 = 0;
        *(a2 + 8) = 0;
        return sub_10000298C(a3);
      }
    }

    else
    {
      v7 = sub_10000DB44(v11);
    }

    if (*v7 == 2)
    {
      *a3 = 0xAAAAAAAAAAAAAAAALL;
      *(a3 + 8) = 0xAAAAAAAAAAAAAAAALL;
      sub_100013CA0(a3, 0, 0, 0, 1);
    }

    goto LABEL_11;
  }

  *a3 = *a2;
  *(a3 + 8) = *(a2 + 8);
  sub_10000298C(a2);
  *a2 = 0;
  *(a2 + 8) = 0;

  return sub_10000298C(a3);
}

void sub_1000C8F80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C8F90(uint64_t a1, std::string *a2)
{
  memset(&__p, 170, sizeof(__p));
  sub_1000C96A8(a2, &__p);
  memset(&v11, 170, sizeof(v11));
  sub_1000C9798(&__p, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = v11.__r_.__value_.__r.__words[0];
    if (v11.__r_.__value_.__l.__size_ != 5)
    {
      v9 = 1;
      goto LABEL_23;
    }

    if (*v11.__r_.__value_.__l.__data_ != 1702257998 || *(v11.__r_.__value_.__r.__words[0] + 4) != 114)
    {
      goto LABEL_13;
    }

    v9 = 0xFFFFFFFFLL;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_20:
      v3 = v11.__r_.__value_.__r.__words[0];
LABEL_23:
      operator delete(v3);
    }
  }

  else
  {
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) != 5)
    {
      v9 = 1;
      goto LABEL_26;
    }

    if (LODWORD(v11.__r_.__value_.__l.__data_) != 1702257998 || v11.__r_.__value_.__s.__data_[4] != 114)
    {
      v3 = &v11;
LABEL_13:
      v5 = bswap64(LODWORD(v3->__r_.__value_.__l.__data_) | (v3->__r_.__value_.__s.__data_[4] << 32));
      v6 = v5 >= 0x3930446179000000;
      v7 = v5 > 0x3930446179000000;
      v8 = !v6;
      if (v7 == v8)
      {
        v9 = 90;
      }

      else
      {
        v9 = 1;
      }

      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    v9 = 0xFFFFFFFFLL;
  }

LABEL_26:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1000C90E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C910C(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 != 1)
  {
    goto LABEL_10;
  }

  v12 = "correlation_group_uuid";
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v4;
  v10[1] = v4;
  sub_10000BD10(a1, &v12, v10);
  v9[0] = a1;
  memset(&v9[1], 0, 24);
  v9[4] = 0x8000000000000000;
  sub_10000DCFC(v9);
  if (sub_10000DD7C(v10, v9))
  {
    v5 = sub_100016CD8();
    if (!v5)
    {
LABEL_10:
      v8 = 0;
      *a2 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = sub_10000DB44(v10);
  }

  if (*v5 != 3)
  {
    goto LABEL_10;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_10;
  }

  if (*(v6 + 23) < 0)
  {
    sub_1000078D8(a2, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    *(a2 + 16) = *(v6 + 2);
    *a2 = v7;
  }

  v8 = 1;
LABEL_11:
  *(a2 + 24) = v8;
}

void sub_1000C9228(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_1000C9234@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a1 + 24);
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v4;
  v27[1] = v4;
  sub_10000DEC4(v27, v3);
  sub_10000DF14(v27);
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = v5;
  v25[1] = v5;
  sub_10000DEC4(v25, v3);
  sub_10000DCFC(v25);
  while (1)
  {
    result = sub_10000DD7C(v27, v25);
    if (result)
    {
      break;
    }

    v7 = sub_10000DB44(v27);
    v8 = sub_10000DFA0(v7, "event");
    sub_100010390(v8, &__p);
    v10 = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v10 >= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10002C63C();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v13;
      }

      v29[4] = a2;
      if (v15)
      {
        sub_10002E2FC(a2, v15);
      }

      v16 = 24 * v12;
      v17 = *&__p.__r_.__value_.__l.__data_;
      *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v16 = v17;
      memset(&__p, 0, sizeof(__p));
      v18 = 24 * v12 + 24;
      v19 = *(a2 + 8) - *a2;
      v20 = 24 * v12 - v19;
      memcpy((v16 - v19), *a2, v19);
      v21 = *a2;
      *a2 = v20;
      *(a2 + 8) = v18;
      v22 = *(a2 + 16);
      *(a2 + 16) = 0;
      v29[2] = v21;
      v29[3] = v22;
      v29[0] = v21;
      v29[1] = v21;
      sub_10002E354(v29);
      v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *(a2 + 8) = v18;
      if (v23 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v11 = *&__p.__r_.__value_.__l.__data_;
      *(v10 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v10 = v11;
      *(a2 + 8) = v10 + 24;
    }

    sub_100012BFC(v27);
  }

  return result;
}

void sub_1000C9440(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000C9450@<W0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = v4;
  v25[1] = v4;
  sub_10000DEC4(v25, a1);
  sub_10000DF14(v25);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v5;
  v23[1] = v5;
  sub_10000DEC4(v23, a1);
  sub_10000DCFC(v23);
  for (result = sub_10000DD7C(v25, v23); !result; result = sub_10000DD7C(v25, v23))
  {
    v7 = sub_10000DB44(v25);
    v29 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28[0] = v8;
    v28[1] = v8;
    sub_100015F0C(v7, "name", v28);
    memset(&v27[1], 0, 24);
    v27[0] = v7;
    v27[4] = 0x8000000000000000;
    sub_10000DCFC(v27);
    if (sub_10000DD7C(v28, v27))
    {
      v9 = "<illegal-name>";
    }

    else
    {
      v9 = "<illegal-name>";
      if (*sub_1000760D0(v28) == 3)
      {
        v10 = sub_10000DB44(v28);
        v9 = *(v10 + 1);
        v11 = *v10 == 3 ? *(v10 + 1) : 0;
        if (*(v11 + 23) < 0)
        {
          v9 = *v11;
        }
      }
    }

    v13 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v13 >= v12)
    {
      v15 = (v13 - *a2) >> 3;
      if ((v15 + 1) >> 61)
      {
        sub_10002C63C();
      }

      v16 = v12 - *a2;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        sub_1000C9C10(a2, v18);
      }

      v19 = (8 * v15);
      *v19 = v9;
      v14 = 8 * v15 + 8;
      v20 = *(a2 + 8) - *a2;
      v21 = v19 - v20;
      memcpy(v19 - v20, *a2, v20);
      v22 = *a2;
      *a2 = v21;
      *(a2 + 8) = v14;
      *(a2 + 16) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = v9;
      v14 = (v13 + 1);
    }

    *(a2 + 8) = v14;
    sub_100012BFC(v25);
  }

  return result;
}

void sub_1000C9688(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000C96A8@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  if (result->__r_.__value_.__s.__data_[0] != 1)
  {
    goto LABEL_5;
  }

  v3 = result;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v4;
  v9[1] = v4;
  sub_100015F0C(result, "sink", v9);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v5;
  v7[1] = v5;
  sub_10000DEC4(v7, v3);
  sub_10000DCFC(v7);
  result = sub_10000DD7C(v9, v7);
  if (result)
  {
    goto LABEL_5;
  }

  result = sub_1000760D0(v9);
  if (result->__r_.__value_.__s.__data_[0] == 3)
  {
    v6 = sub_10000DB44(v9);
    return sub_100010390(v6, a2);
  }

  else
  {
LABEL_5:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  return result;
}

std::string *sub_1000C9798@<X0>(const std::string *a1@<X0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  result = sub_10000459C(a2, "Daily");
  v5 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    if (a1->__r_.__value_.__l.__size_ == 5 && *a1->__r_.__value_.__l.__data_ == 1631858745 && *(a1->__r_.__value_.__r.__words[0] + 4) == 121)
    {
      return std::string::operator=(a2, a1);
    }

    if (a1->__r_.__value_.__l.__size_ != 5)
    {
      return result;
    }

    v7 = a1->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v5 != 5)
    {
      return result;
    }

    v6 = LODWORD(a1->__r_.__value_.__l.__data_) == 1631858745 && a1->__r_.__value_.__s.__data_[4] == 121;
    v7 = a1;
    if (v6)
    {
      return std::string::operator=(a2, a1);
    }
  }

  v9 = *v7;
  v10 = *(v7 + 4);
  if (v9 == 1702257998 && v10 == 114)
  {
    return std::string::operator=(a2, a1);
  }

  return result;
}

void sub_1000C987C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C9898(uint64_t a1, int a2, __int128 *a3, __int128 *a4, uint64_t a5, int a6, char a7, int a8, double a9, void *a10, __int128 *a11)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_1000078D8((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v18 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v18;
  }

  if (*(a4 + 23) < 0)
  {
    sub_1000078D8((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v19 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v19;
  }

  *(a1 + 56) = *a5;
  *(a1 + 64) = *(a5 + 8);
  sub_10000298C(a5);
  *a5 = 0;
  *(a5 + 8) = 0;
  sub_10000298C((a1 + 56));
  *(a1 + 72) = a8;
  *(a1 + 80) = *a10;
  sub_10009B928(a1 + 88, a11);
  *(a1 + 120) = a6;
  *(a1 + 128) = a9;
  *(a1 + 136) = a7;
  return a1;
}

void sub_1000C99A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C99E4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000C9A30();
}

uint64_t sub_1000C9A8C(unsigned __int8 *a1, unsigned int a2)
{
  LOBYTE(v5) = 4;
  v6 = a2;
  sub_10000298C(&v5);
  sub_10000298C(&v5);
  v3 = sub_10000EC1C(a1, &v5);
  sub_10000298C(&v5);
  sub_1000048FC(&v6, v5);
  return v3;
}

uint64_t sub_1000C9B9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001882C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000C9BC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000C9C10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100025BBC();
}

void sub_1000CA1B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CA1E0(void *a1@<X8>)
{
  if (objc_opt_class())
  {
    operator new();
  }

  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[LocationManager] WARNING: Failed to get CLLocationManager class", v3, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1000CA2D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000CA308(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_queue_create("analyticsd.LocationStateResolverQueue", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100188360;
  *(a1 + 24) = v4;
  *(a1 + 32) = off_1001883A8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 112) = 0;
  return a1;
}

uint64_t sub_1000CA3A8(uint64_t a1)
{
  *a1 = off_100188360;
  *(a1 + 32) = off_1001883A8;
  v2 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[LocationManager] Destructor called", v7, 2u);
  }

  sub_1000CA500(a1);
  sub_1000CA564(a1);
  sub_1000CA5C8(a1);
  sub_1000CC014((a1 + 112), 0);
  v3 = *(a1 + 104);
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = *(a1 + 88);
  *(a1 + 88) = 0;

  v5 = *(a1 + 80);
  *(a1 + 80) = 0;

  sub_1000CC2E0(a1 + 40);
  sub_1000CA61C(a1 + 8);
  return a1;
}

void sub_1000CA4F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000CA500(uint64_t a1)
{
  v1 = (a1 + 80);
  if (*(a1 + 80))
  {
    v2 = sub_100006020((a1 + 80));
    dispatch_source_cancel(v2);

    v3 = *v1;
    *v1 = 0;
  }
}

void sub_1000CA564(uint64_t a1)
{
  v1 = (a1 + 88);
  if (*(a1 + 88))
  {
    v2 = sub_100006020((a1 + 88));
    dispatch_source_cancel(v2);

    v3 = *v1;
    *v1 = 0;
  }
}

id **sub_1000CA5C8(id **result)
{
  v2 = result + 14;
  v1 = result[14];
  if (v1)
  {
    nw_path_monitor_cancel(*v1);

    return sub_1000CC014(v2, 0);
  }

  return result;
}

uint64_t sub_1000CA61C(uint64_t a1)
{
  sub_100090FEC((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1000CA660(uint64_t a1)
{
  sub_1000CA3A8(a1);

  operator delete();
}

void sub_1000CA698(uint64_t a1)
{
  sub_1000CA3A8(a1 - 32);

  operator delete();
}

void sub_1000CA6D4(void *a1@<X8>)
{
  sub_10000459C(v3, off_100192800[0]);
  sub_10000459C(v4, off_100192808[0]);
  sub_10000459C(v5, "location");
  sub_10000459C(v6, "market");
  sub_10000459C(v7, "locationServicesEnabled");
  sub_10000459C(v8, "signalEnvironment");
  sub_10000459C(v9, "locationAuthorizationStatus");
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10003C198(a1, v3, &v10, 7uLL);
  for (i = 0; i != -168; i -= 24)
  {
    if (v9[i + 23] < 0)
    {
      operator delete(*&v9[i]);
    }
  }
}

void sub_1000CA80C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v33 = &a32;
  v34 = -168;
  v35 = &a32;
  while (1)
  {
    v36 = *v35;
    v35 -= 24;
    if (v36 < 0)
    {
      operator delete(*(v33 - 23));
    }

    v33 = v35;
    v34 += 24;
    if (!v34)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1000CA874(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_1000CA988(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CA9A0(uint64_t a1)
{
  sub_100027044(a1, 0, &group);
  v2 = sub_100006020((a1 + 24));
  operator new();
}

void sub_1000CAA6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000CAA78(uint64_t a1)
{
  v2 = +[CLLocationManager locationServicesEnabled];
  v3 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    if (v2)
    {
      v4 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[LocationManager] Location services enabled: %s", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  sub_10000459C(buf, "locationServicesEnabled");
  v8[0] = 0;
  v9 = 0;
  sub_10000298C(v8);
  sub_10000298C(v8);
  v6[0] = 4;
  v7 = v2;
  sub_10000298C(v6);
  sub_10000298C(v6);
  (*(*v5 + 24))(v5, buf, v8, v6, -1, 1);
  sub_10000298C(v6);
  sub_1000048FC(&v7, v6[0]);
  sub_10000298C(v8);
  sub_1000048FC(&v9, v8[0]);
  if (v11 < 0)
  {
    operator delete(*buf);
  }
}

void sub_1000CAC18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CAC24(uint64_t a1)
{
  v2 = sub_1000272FC(a1);
  v3 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    if (v2)
    {
      v4 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[LocationManager] Location authorized: %s", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  sub_10000459C(buf, "locationAuthorizationStatus");
  v8[0] = 0;
  v9 = 0;
  sub_10000298C(v8);
  sub_10000298C(v8);
  v6[0] = 4;
  v7 = v2;
  sub_10000298C(v6);
  sub_10000298C(v6);
  (*(*v5 + 24))(v5, buf, v8, v6, -1, 1);
  sub_10000298C(v6);
  sub_1000048FC(&v7, v6[0]);
  sub_10000298C(v8);
  sub_1000048FC(&v9, v8[0]);
  if (v11 < 0)
  {
    operator delete(*buf);
  }
}

void sub_1000CADBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CADC8(uint64_t a1@<X0>, char *a2@<X1>, dispatch_group_t *a3@<X8>)
{
  v6 = dispatch_group_create();
  *a3 = v6;
  v8[3] = a1;
  v9 = *a2;
  *__p = *(a2 + 8);
  v11 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v12 = *(a2 + 8);
  v7 = v6;
  v13 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v8, (a1 + 8));
  operator new();
}

void sub_1000CAF7C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CAF9C(uint64_t a1@<X0>, dispatch_group_t *a2@<X8>)
{
  v4 = dispatch_group_create();
  *a2 = v4;
  v5 = v4;
  if (v5)
  {
    dispatch_group_enter(v5);
  }

  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v6, (a1 + 8));
  operator new();
}

void sub_1000CB0E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CB108(uint64_t a1)
{
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[LocationManager] Purging all location data", buf, 2u);
  }

  sub_100026EB4(&v11);
  v3 = v11;
  v4 = v12;
  if (v11 != v12)
  {
    do
    {
      v5 = *v3++;
      buf[0] = 0;
      v20 = v5;
      sub_100028170(a1, buf);
    }

    while (v3 != v4);
    v3 = v11;
  }

  if (v3)
  {
    v12 = v3;
    operator delete(v3);
  }

  v13[0] = 0;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v17 = -1;
  sub_1000CB41C(a1, v13);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  v6 = *(a1 + 96);
  sub_10000459C(buf, "location");
  (*(*v6 + 32))(v6, buf);
  if (v19 < 0)
  {
    operator delete(*buf);
  }

  v7 = *(a1 + 96);
  sub_10000459C(buf, off_100192800[0]);
  (*(*v7 + 32))(v7, buf);
  if (v19 < 0)
  {
    operator delete(*buf);
  }

  v8 = *(a1 + 96);
  sub_10000459C(buf, off_100192808[0]);
  (*(*v8 + 32))(v8, buf);
  if (v19 < 0)
  {
    operator delete(*buf);
  }

  v9 = *(a1 + 96);
  sub_10000459C(buf, "market");
  (*(*v9 + 32))(v9, buf);
  if (v19 < 0)
  {
    operator delete(*buf);
  }

  v10 = *(a1 + 96);
  sub_10000459C(buf, "signalEnvironment");
  (*(*v10 + 32))(v10, buf);
  if (v19 < 0)
  {
    operator delete(*buf);
  }
}

void sub_1000CB3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000CB3E8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000CB41C(uint64_t a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, 0, &v5);
  v3 = v5;
  *(v5 + 48) = *a2;
  std::string::operator=((v3 + 56), (a2 + 8));
  *(v3 + 80) = *(a2 + 32);
  v4 = v6;
  if (v6)
  {

    sub_10000786C(v4);
  }
}

void sub_1000CB4E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_1000CB4F0(uint64_t a1)
{
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[LocationManager] Starting location services", v4, 2u);
  }

  sub_1000CB5B0(a1);
  sub_1000CB6E0(a1);
  return sub_1000CB810(a1);
}

void sub_1000CB5A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CB5B0(uint64_t a1)
{
  v1 = (a1 + 80);
  if (!*(a1 + 80))
  {
    v3 = *(a1 + 24);
    v9[4] = a1;
    v10 = v3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100026DEC;
    v9[3] = &unk_1001857F0;
    sub_1000CBAEC(&v10, 600, v9, &v11);
    v4 = v11;
    v11 = 0;

    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    v6 = v11;
    v11 = 0;

    v7 = v10;
    v10 = 0;

    v8 = sub_100006020(v1);
    dispatch_resume(v8);
  }
}

void sub_1000CB6E0(uint64_t a1)
{
  v1 = (a1 + 88);
  if (!*(a1 + 88))
  {
    v3 = *(a1 + 24);
    v9[4] = a1;
    v10 = v3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000CBC38;
    v9[3] = &unk_1001857F0;
    sub_1000CBAEC(&v10, 28800, v9, &v11);
    v4 = v11;
    v11 = 0;

    v5 = *(a1 + 88);
    *(a1 + 88) = v4;

    v6 = v11;
    v11 = 0;

    v7 = v10;
    v10 = 0;

    v8 = sub_100006020(v1);
    dispatch_resume(v8);
  }
}

uint64_t sub_1000CB810(uint64_t result)
{
  if (!*(result + 112))
  {
    v1 = result;
    v2 = nw_path_monitor_create();
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_100029EE8;
    update_handler[3] = &unk_1001883D0;
    update_handler[4] = v1;
    nw_path_monitor_set_update_handler(v2, update_handler);
    v3 = sub_100006020((v1 + 24));
    nw_path_monitor_set_queue(v2, v3);

    v4 = v2;
    operator new();
  }

  return result;
}

void sub_1000CB9E8(id **a1)
{
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[LocationManager] Stopping location services", &v6, 2u);
  }

  sub_1000CA500(a1);
  sub_1000CA564(a1);
  sub_1000CA5C8(a1);
  sub_100026EB4(&v6);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    do
    {
      v5 = *v3++;
      sub_1000294E4(a1, v5);
    }

    while (v3 != v4);
    v3 = v6;
  }

  if (v3)
  {
    v7 = v3;
    operator delete(v3);
  }
}

void sub_1000CBAE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000CBAEC(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, id *a4@<X8>)
{
  v7 = a3;
  v8 = sub_100006020(a1);
  *a4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);

  v9 = sub_100006020(a4);
  dispatch_source_set_timer(v9, 0, 1000000000 * a2, 1000000000 * a2);

  v10 = sub_100006020(a4);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100026EA4;
  v12[3] = &unk_100188478;
  v13 = v7;
  v11 = v7;
  dispatch_source_set_event_handler(v10, v12);
}

void sub_1000CBC40(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, a2, &v6);
  v4 = v7;
  v5 = *(v6 + 32);
  *a3 = *(v6 + 16);
  a3[1] = v5;
  if (v4)
  {

    sub_10000786C(v4);
  }
}

void sub_1000CBCEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  sub_10002722C(a1, 0, &v7);
  v3 = v7;
  *a2 = *(v7 + 48);
  v4 = (a2 + 8);
  if (*(v3 + 79) < 0)
  {
    sub_1000078D8(v4, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    v5 = *(v3 + 56);
    *(a2 + 24) = *(v3 + 72);
    *v4 = v5;
  }

  *(a2 + 32) = *(v3 + 80);
  v6 = v8;
  if (v8)
  {

    sub_10000786C(v6);
  }
}

void sub_1000CBDD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

double sub_1000CBDDC@<D0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a2 = v3;
  *(a2 + 16) = v3;
  *a2 = 0;
  *(a2 + 24) = 0;
  switch(a1)
  {
    case 8:
      sub_10000459C(&v5, "MarketErrorNoneFound");
      goto LABEL_7;
    case 2:
      sub_10000459C(&v5, "MarketErrorNetwork");
      goto LABEL_7;
    case 0:
      sub_10000459C(&v5, "MarketErrorNoLocation");
LABEL_7:
      *&v3 = v5;
      *a2 = v5;
      *(a2 + 16) = v6;
      *(a2 + 24) = 1;
      break;
  }

  return *&v3;
}

BOOL sub_1000CBEA8(uint64_t a1, const void **a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v3;
  v7[1] = v3;
  v8 = 0xAAAAAAAAFFFFFFFFLL;
  sub_10000459C(v9, "MarketErrorNoLocation");
  sub_10000459C(v10, "MarketErrorNoneFound");
  sub_10000459C(v11, "MarketErrorNetwork");
  sub_1000CE17C(v7, v9, 3);
  for (i = 0; i != -72; i -= 24)
  {
    if (v11[i + 23] < 0)
    {
      operator delete(*&v11[i]);
    }
  }

  v5 = sub_10001E21C(v7, a2) != 0;
  sub_100043CD8(v7);
  return v5;
}

void sub_1000CBFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = (v15 + 71);
  v18 = -72;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 24;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 24;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

id **sub_1000CC014(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

void sub_1000CC128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_1000CC170(&a12, v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CC170(uint64_t a1, id *a2)
{
  v3 = sub_100006020(a2 + 3);
  dispatch_barrier_async_f(v3, a2, sub_1000CC2B4);
}

void sub_1000CC1D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000CC210(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100006020(v1 + 3);
  dispatch_barrier_async_f(v2, v1, sub_1000CC2B4);
}

uint64_t sub_1000CC274(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CC2B4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000CC2E0(uint64_t a1)
{
  sub_1000CC31C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000CC31C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000CC360((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1000CC360(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000786C(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1000CC3B4(uint64_t **a1)
{
  v21 = a1;
  v1 = **a1;
  sub_100026EB4(&v22);
  if (v22 != v23)
  {
    v20 = &qword_100192D38;
    v15 = kCLLocationAccuracyAggressivePrecisionReduction;
    v2 = kCLLocationAccuracyAggressivePrecisionReduction;
    v18 = unk_100147880;
    v19 = xmmword_100147870;
    v17 = xmmword_100147890;
    memset(v16, 170, sizeof(v16));
    v3 = *v22;
    v4 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      v5 = v15;
      if (v3)
      {
        v5 = 0xBFF0000000000000;
      }

      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[LocationManager] Initializing accuracy manager with accuracy: %f", buf, 0xCu);
    }

    *&buf[12] = HIDWORD(v19);
    v25 = v18;
    v26 = v17;
    v27[0] = *&v16[1];
    *buf = 0;
    *&buf[8] = v3;
    LOBYTE(v25) = 0;
    HIDWORD(v26) = v3;
    LOBYTE(v27[0]) = 0;
    v28 = 0uLL;
    v27[1] = 0;
    v29 = 0xAAAAAAAAFFFFFFFFLL;
    v30 = 0u;
    v31 = 0u;
    v6 = [[CALocationDelegateProxy alloc] initWithDelegate:v1 + 32 withAccuracy:v3];
    v7 = *(&v31 + 1);
    *(&v31 + 1) = v6;

    v8 = [CLLocationManager alloc];
    v9 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/WirelessDiagnostics.bundle"];
    v10 = *(&v31 + 1);
    v11 = &_dispatch_main_q;
    v12 = [v8 initWithEffectiveBundle:v9 delegate:v10 onQueue:&_dispatch_main_q];
    v13 = *buf;
    *buf = v12;

    if (v3)
    {
      v14 = -1.0;
    }

    else
    {
      v14 = v2;
    }

    [*buf setDesiredAccuracy:v14];
    [*buf setDelegate:*(&v31 + 1)];
    sub_1000CC794();
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  operator delete();
}

void sub_1000CC6F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_1000CCFE4(&a42);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_1000CC800(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100188508;
  sub_1000CC95C((a1 + 3), a2);
  return a1;
}

void sub_1000CC87C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100188508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000CC8D0(uint64_t a1)
{
  v2 = (a1 + 112);
  sub_1000CCC84(&v2);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }
}

uint64_t sub_1000CC95C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 79) < 0)
  {
    sub_1000078D8((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  v7 = *(a2 + 80);
  *(a1 + 88) = 0;
  *(a1 + 80) = v7;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_1000CCA34(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t sub_1000CCA34(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000CCAEC(result, a4);
  }

  return result;
}

void sub_1000CCACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_1000CCC84(va);
  _Unwind_Resume(a1);
}

void sub_1000CCAEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10008C978(a1, a2);
  }

  sub_10002C63C();
}

void *sub_1000CCB28(uint64_t a1, void **a2, void **a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v12[0] = a1;
  v12[1] = &v10;
  v12[2] = &v11;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v11;
    do
    {
      v8 = *v6++;
      *v4 = v8;
      v4 = ++v7;
    }

    while (v6 != a3);
    v11 = v7;
  }

  LOBYTE(v13) = 1;
  sub_1000CCBEC(v12);
  return v7;
}

uint64_t sub_1000CCBEC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000CCC38(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1000CCC38(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, id *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *--v6;
      *v6 = 0;
    }

    while (v6 != a5);
  }
}

void sub_1000CCC84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000295F8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **sub_1000CCCD8(void *a1, const void **a2)
{
  v4 = sub_10001357C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10001706C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_1000CCF98(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000CC360(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000CCFE4(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_1000CCC84(&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t sub_1000CD070(uint64_t a1, id *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_10002C63C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_10008C978(a1, v7);
  }

  v17 = 0uLL;
  v8 = (8 * v2);
  v15 = 0;
  v16 = v8;
  *v8 = *a2;
  *&v17 = v8 + 1;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  sub_1000CD1B0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1000CD2FC(&v15);
  return v14;
}

void sub_1000CD19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000CD2FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CD1B0(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v13[0] = a1;
  v13[1] = &v11;
  v13[2] = &v12;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      *v7 = *v8;
      v9 = *v8;
      *v8 = 0;

      ++v8;
      v7 = ++v12;
    }

    while (v8 != a3);
  }

  LOBYTE(v14) = 1;
  sub_1000CD2B0(a1, a2, a3);
  return sub_1000CCBEC(v13);
}

void sub_1000CD294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000CCBEC(va);
  _Unwind_Resume(a1);
}

void sub_1000CD2B0(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;

      v6 = *v4++;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1000CD2FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v5 = *(i - 8);
    v4 = (i - 8);
    *(a1 + 16) = v4;
    *v4 = 0;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000CD360(uint64_t *a1)
{
  v1 = *a1;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = -1;
  *&v13 = NAN;
  sub_1000CBC40(v1, 0, &v12);
  v2 = qword_100192D98;
  if (v12)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      v3 = *(&v12 + 1);
      v4 = *&v13;
      *buf = 134283777;
      *&buf[4] = *(&v12 + 1);
      *&buf[12] = 2049;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[LocationManager] Requesting market with location {Lat: %{private}f, Lng: %{private}f}", buf, 0x16u);
      v5 = v3;
      v6 = v4;
    }

    else
    {
      v5 = *(&v12 + 1);
      v6 = *&v13;
    }

    v8 = [[CLLocation alloc] initWithLatitude:v5 longitude:v6];
    v9 = [[MKReverseGeocodingRequest alloc] initWithLocation:v8];
    v10 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v9 setPreferredLocale:v10];

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000CD60C;
    v15 = &unk_100188548;
    v16 = v1;
    [v9 getMapItemsWithCompletionHandler:buf];
  }

  else
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_1001260A4(v2);
    }

    buf[0] = 0;
    v15 = 0;
    *&buf[8] = 0uLL;
    LODWORD(v16) = 0;
    (*(*v1 + 32))(&v11, v1, buf);
    v7 = v11;
    v11 = 0;

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  operator delete();
}

void sub_1000CD60C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v32 = v5;
  if (!v6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v52 objects:v51 count:{16, v5}];
    if (v11)
    {
      v12 = 0;
      v13 = *v53;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v52 + 1) + 8 * i) placemark];
          v16 = [v15 administrativeArea];
          v17 = v16 == 0;

          if (!v17)
          {
            v24 = [v15 administrativeArea];

            v12 = v24;
            goto LABEL_26;
          }

          v18 = [v15 subAdministrativeArea];
          v19 = v18 == 0;

          if (v19)
          {
            v21 = [v15 locality];
            if (v21)
            {
              v22 = v12 == 0;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            if (v23)
            {
              v12 = [v15 locality];
            }
          }

          else
          {
            v20 = [v15 subAdministrativeArea];

            v12 = v20;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v52 objects:v51 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_26:

      if (v12)
      {
        v25 = qword_100192D98;
        if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v57 = v12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[LocationManager] Market successfully fetched: %{private}@", buf, 0xCu);
        }

        v26 = v12;
        sub_10000459C(v33, [v12 UTF8String]);
        v38[0] = 1;
        if (SHIBYTE(v34) < 0)
        {
          sub_1000078D8(&v39, v33[0], v33[1]);
        }

        else
        {
          v39 = *v33;
          v40 = v34;
        }

        (*(*v7 + 32))(&v35, v7, v38);
        v30 = v35;
        v35 = 0;

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }

        if ((SHIBYTE(v34) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        v29 = v33[0];
        goto LABEL_42;
      }
    }

    else
    {
    }

    v27 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_100126128(v27);
    }

    v41[0] = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v45 = 8;
    (*(*v7 + 32))(&v36, v7, v41);
    v28 = v36;
    v36 = 0;

    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      v12 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v12 = 0;
    v29 = v42;
LABEL_42:
    operator delete(v29);
    goto LABEL_43;
  }

  v8 = qword_100192D98;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v31 = [v6 localizedDescription];
    *buf = 136315138;
    v57 = [v31 UTF8String];
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[LocationManager] Encountered error while querying market: %s", buf, 0xCu);
  }

  v46[0] = 0;
  v48 = 0;
  v49 = 0;
  __p = 0;
  v50 = [v6 code];
  (*(*v7 + 32))(&v37, v7, v46);
  v9 = v37;
  v37 = 0;

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

LABEL_44:
}

void sub_1000CDA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000CDB14(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v21[0] = *(v1 + 8);
  if (*(v1 + 39) < 0)
  {
    sub_1000078D8(&__p, *(v1 + 16), *(v1 + 24));
  }

  else
  {
    v3 = *(v1 + 16);
    v23 = *(v1 + 32);
    __p = v3;
  }

  v24 = *(v1 + 40);
  sub_1000CB41C(v2, v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (*(v1 + 8) == 1)
  {
    v4 = *(v2 + 96);
    sub_10000459C(&v25, "market");
    LOBYTE(v19) = 0;
    v20[0] = 0;
    sub_10000298C(&v19);
    sub_10000298C(&v19);
    sub_100006C9C(&v17);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(v2 + 96);
  sub_10000459C(&v25, "market");
  LOBYTE(v19) = 0;
  v20[0] = 0;
  sub_10000298C(&v19);
  sub_10000298C(&v19);
  (*(*v5 + 16))(&v17, v5, &v25, &v19);
  sub_10000298C(&v19);
  sub_1000048FC(v20, v19);
  if (SBYTE7(v26) < 0)
  {
    operator delete(v25);
  }

  v16[0] = "market";
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v6;
  v26 = v6;
  sub_10000BD10(&v17, v16, &v25);
  v19 = &v17;
  memset(v20, 0, 24);
  v20[3] = 0x8000000000000000;
  sub_10000DCFC(&v19);
  if (sub_10000DD7C(&v25, &v19))
  {
    v7 = sub_100016CD8();
    if (!v7)
    {
LABEL_20:
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v10;
      v26 = v10;
      sub_1000CBDDC(*(v1 + 40), &v25);
      if (BYTE8(v26) == 1)
      {
        v11 = *(v2 + 96);
        sub_10000459C(&v19, "market");
        LOBYTE(v16[0]) = 0;
        v16[1] = 0;
        sub_10000298C(v16);
        sub_10000298C(v16);
        sub_100006C9C(v15);
      }

      goto LABEL_22;
    }
  }

  else
  {
    v7 = sub_10000DB44(&v25);
  }

  if (*v7 != 3)
  {
    goto LABEL_20;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  if (!v9 || sub_1000CBEA8(v7, v8))
  {
    goto LABEL_20;
  }

LABEL_22:
  sub_10000298C(&v17);
  sub_1000048FC(&v18, v17);
  sub_1000CDF98(&v14);
  return sub_1000120B8(&v13);
}

void sub_1000CDEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10002C5F4(&a17);
  sub_1000CDF98(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000CDF98(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000278B4((v1 + 48));
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1000CDFF8(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1000CAC24(*v1);
  sub_1000CAA78(v2);
  if (sub_1000272FC(v2))
  {
    sub_1000CB4F0(v2);
  }

  else
  {
    sub_1000CB9E8(v2);
    sub_1000CB108(v2);
  }

  sub_1000CE0B8(&v5);
  return sub_1000120B8(&v4);
}

void sub_1000CE09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000CE0B8(va1);
  sub_1000120B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000CE0B8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000278B4((v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t sub_1000CE108(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000326F8(result, a4);
  }

  return result;
}

void sub_1000CE160(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000CE17C(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_1000436B8(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void sub_1000CE1F8(void *a1)
{
  v1 = a1;
  if (objc_opt_class())
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v2 = +[TRIAllocationStatus defaultProvider];
    v3 = +[OSASystemConfiguration sharedInstance];
    v4 = [v3 crashReporterKey];
    v38 = 0;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000CE70C;
    v35[3] = &unk_1001885D0;
    v5 = v1;
    v36 = v5;
    v37 = &v39;
    v6 = [v2 enumerateSampledActiveExperimentsForEnvironment:0 correlationID:v4 error:&v38 block:v35];
    v7 = v38;

    if ((v6 & 1) == 0)
    {
      v8 = qword_100192D38;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 localizedDescription];
        sub_1001261AC(v9, buf, v8);
      }
    }

    v10 = +[OSASystemConfiguration sharedInstance];
    v11 = [v10 crashReporterKey];
    v34 = v7;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000CEA40;
    v31[3] = &unk_1001885F8;
    v12 = v5;
    v32 = v12;
    v33 = &v43;
    v13 = [v2 enumerateSampledActiveRolloutsForCorrelationID:v11 error:&v34 block:v31];
    v14 = v34;

    if ((v13 & 1) == 0)
    {
      v15 = qword_100192D38;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v14 localizedDescription];
        sub_100126204(v16, v47, v15);
      }
    }

    v29 = 0xAAAAAAAAAAAAAA00;
    v30 = 0;
    sub_10000298C(&v29);
    sub_10000298C(&v29);
    v17 = *(v40 + 6);
    v27[0] = 6;
    v28 = v17;
    sub_10000298C(v27);
    sub_10000298C(v27);
    v18 = sub_1000071E4(&v29, "num_experiments");
    sub_10000298C(v27);
    v19 = *v18;
    *v18 = v27[0];
    v27[0] = v19;
    v20 = *(v18 + 8);
    *(v18 + 8) = v28;
    v28 = v20;
    sub_10000298C(v18);
    sub_10000298C(v27);
    sub_1000048FC(&v28, v27[0]);
    v21 = *(v44 + 6);
    v25[0] = 6;
    v26 = v21;
    sub_10000298C(v25);
    sub_10000298C(v25);
    v22 = sub_1000071E4(&v29, "num_rollouts");
    sub_10000298C(v25);
    v23 = *v22;
    *v22 = v25[0];
    v25[0] = v23;
    v24 = *(v22 + 8);
    *(v22 + 8) = v26;
    v26 = v24;
    sub_10000298C(v22);
    sub_10000298C(v25);
    sub_1000048FC(&v26, v25[0]);
    (*(v12 + 2))(v12, "com.apple.com.apple.trial.identifiers-counts", &v29);
    sub_1000D4AF0(*(v44 + 6), *(v40 + 6));
    sub_10000298C(&v29);
    sub_1000048FC(&v30, v29);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
  }
}

void sub_1000CE624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v33 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1000CE70C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7[0] = 0xAAAAAAAAAAAAAA00;
  v7[1] = 0;
  sub_10000298C(v7);
  sub_10000298C(v7);
  v3 = [v2 experimentId];
  v4 = v3;
  v5 = [v3 UTF8String];
  sub_10001AAEC(v6);
}