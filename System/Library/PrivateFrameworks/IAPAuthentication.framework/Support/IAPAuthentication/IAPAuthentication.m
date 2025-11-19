uint64_t start()
{
  mach_service = xpc_connection_create_mach_service("com.apple.iapauthd.xpc", 0, 1uLL);
  if (mach_service)
  {
    v2 = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_100018100);
    xpc_connection_resume(v2);
    dispatch_main();
  }

  NSLog(@"listener is not valid!\n");
  return 1;
}

void sub_100000988(id a1, OS_xpc_object *a2)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000A24;
  handler[3] = &unk_100018128;
  handler[4] = a2;
  xpc_connection_set_event_handler(a2, handler);
  if (xpc_get_type(a2) != &_xpc_type_error)
  {
    xpc_connection_resume(a2);
  }
}

void sub_100000A24(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return;
  }

  string = xpc_dictionary_get_string(object, "requestType");
  if (string)
  {
    v5 = string;
  }

  else
  {
    v5 = "<nil>";
  }

  if (!strcmp(v5, "cert"))
  {
    reply = xpc_dictionary_create_reply(object);
    if (!reply)
    {
      NSLog(@"ERROR: Client sent kXPCCertStr xpc message without a reply context");
      return;
    }

    v7 = reply;
    uint64 = xpc_dictionary_get_uint64(object, "application");
    if (uint64 >= 3)
    {
      NSLog(@"Unknown app ID %d\n", uint64);
      xpc_dictionary_set_BOOL(v7, "isValid", 0);
    }

    else
    {
      v11 = 318767107 - (uint64 & 3);
      xpc_dictionary_set_BOOL(v7, "isValid", 0);
      sub_100006828(kCFAllocatorDefault, v11);
      if (v12)
      {
        v13 = v12;
        v14 = SecCertificateCopyData(v12);
        BytePtr = CFDataGetBytePtr(v14);
        v16 = CFDataGetLength(v14);
        xpc_dictionary_set_data(v7, "certData", BytePtr, v16);
        xpc_dictionary_set_BOOL(v7, "isValid", 1);
        CFRelease(v13);
        xpc_connection_send_message(*(a1 + 32), v7);
        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_32;
      }

      NSLog(@"cert: cert %ld not found\n", v11);
    }

LABEL_31:
    xpc_connection_send_message(*(a1 + 32), v7);
LABEL_32:

    xpc_release(v7);
    return;
  }

  if (strcmp(v5, "key"))
  {
    if (strcmp(v5, "test"))
    {
      return;
    }

    v6 = xpc_dictionary_create_reply(object);
    if (!v6)
    {
      NSLog(@"ERROR: Client sent kXPCTestStr xpc message without a reply context");
      return;
    }

    v7 = v6;
    v8 = xpc_dictionary_get_uint64(object, "testCounter");
    NSLog(@"%s:%s-%d testCounter=%llu\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapauthd/iapauthd.m", "_xpc_auth_handle_connection_block_invoke", 247, v8);
    xpc_dictionary_set_uint64(v7, "testCounterReply", v8);
    goto LABEL_31;
  }

  v17 = xpc_dictionary_create_reply(object);
  if (v17)
  {
    v18 = v17;
    v19 = sub_100004FB8(kCFAllocatorDefault, 318767105);
    if (!v19)
    {
      NSLog(@"key: key %d not found\n", 318767105);
    }

    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v20;
    v41 = v20;
    v38 = v20;
    v39 = v20;
    v36 = v20;
    v37 = v20;
    v34 = v20;
    v35 = v20;
    v32 = v20;
    v33 = v20;
    v30 = v20;
    v31 = v20;
    v28 = v20;
    v29 = v20;
    *sig = v20;
    v27 = v20;
    length = 0;
    sigLen = 256;
    data = xpc_dictionary_get_data(object, "inData", &length);
    v22 = SecKeyRawSign(v19, 0x8002u, data, length, sig, &sigLen);
    v23 = v22;
    if (v22)
    {
      NSLog(@"key: SecKeyRawSign failed, status=%d\n", v22);
    }

    else
    {
      xpc_dictionary_set_data(v18, "outData", sig, sigLen);
    }

    xpc_dictionary_set_BOOL(v18, "isValid", v23 == 0);
    xpc_connection_send_message(*(a1 + 32), v18);
    if (v19)
    {
      CFRelease(v19);
    }

    xpc_release(v18);
  }

  else
  {
    NSLog(@"ERROR: Client sent kXPCKeyStr xpc message without a reply context");
  }
}

void sub_100000DFC(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 4);
  if (v1 + 1916468129 < 0)
  {
    v2 = *(*(a1 + 24) + 4);
  }

  else
  {
    v2 = 462031038 - v1;
  }

  v3 = 462031038 - *(*(a1 + 8) + 4);
  v4 = *(*(a1 + 24) + 4);
  __asm { BRAA            X11, X13 }
}

uint64_t sub_100000F10@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v15 = v13 + 948253587;
  *(&a11 + v11 + a2) = *(*(a1 + 8) + 4 * (v11 + a2));
  v16 = v11 + 726240035 < v15;
  if (v15 < -968214542 != v11 + 726240035 < -968214542)
  {
    v16 = v15 < -968214542;
  }

  return (*(v14 + 8 * (v16 + v12)))();
}

uint64_t sub_100000F94(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 + 1458300621 < -458167508 != v4 + 1236287068 < -458167508)
  {
    v7 = a4 + 1458300621 < -458167508;
  }

  else
  {
    v7 = v4 + 1236287068 < a4 + 1458300621;
  }

  return (*(v6 + 8 * (v7 + v5)))();
}

uint64_t sub_100001000@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = v12 < v10;
  *(a9 + 4 * (v9 + a1)) = v14;
  v17 = v11 + v9 + 1;
  v18 = v16 ^ (v17 < v10);
  v19 = v17 < v12;
  if (!v18)
  {
    v16 = v19;
  }

  return (*(v15 + 8 * (v16 + v13)))();
}

uint64_t sub_10000105C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 + a2) <= 0x80000000)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 + 1;
  }

  return (*(v5 + 8 * v6))(a1, a2);
}

uint64_t sub_10000109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, _DWORD *a17)
{
  v20 = (*(*(a12 + 32) + 16) - 1262982400) * (*a17 - 897970625);
  v21 = 704005591 * ((v19 - 128) ^ 0xF7D78CF0);
  *(v19 - 112) = (v18 + 3) ^ v21;
  *(v19 - 108) = (v20 ^ 0xE7DE97B5) - v21 + ((2 * v20) & 0xCFBD2F6A) + 1602222208;
  *(v19 - 120) = &a16;
  *(v19 - 128) = 231015519 - v21;
  *(v19 - 104) = a13;
  v22 = (*(&off_100019330 + v18 + 22))(v19 - 128);
  v23 = a11 + 1242427381 > 1473442901;
  if (a11 + 1242427381 < -674040748)
  {
    v23 = 1;
  }

  return (*(v17 + 8 * (v18 + 8 * !v23)))(v22);
}

uint64_t sub_1000012D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v16 - 112) = v15 + 523995289 * ((v16 - 128) ^ 0x98567068) - 10;
  *(v16 - 128) = a12;
  *(v16 - 120) = &a13;
  (*(&off_100019330 + v15 + 51))(v16 - 128);
  *(v16 - 128) = a12;
  *(v16 - 120) = v13;
  *(v16 - 112) = v15 - 1638185881 * ((v16 - 128) ^ 0x11FD620) - 11;
  v17 = (*(&off_100019330 + v15 + 24))(v16 - 128);
  return (*(v14 + 8 * (((*(v16 - 108) + 556127643) >> 31) + v15)))(v17);
}

uint64_t sub_1000013C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = a16;
  if (a16 + v17 >= 0)
  {
    v19 = 462031038 - a16;
  }

  return (*(v16 + 8 * (((v17 + v19 - 1) >> 31) + v18 + 8)))();
}

uint64_t sub_100001498@<X0>(unsigned int a1@<W8>)
{
  v6 = *(v10 + 16);
  if (a1 <= 0x80000000)
  {
    v7 = v3 - v1;
  }

  else
  {
    v7 = v1;
  }

  v11[1] = v7;
  *(v5 - 128) = v11;
  *(v5 - 120) = v6;
  *(v5 - 112) = v2 + 523995289 * ((v5 - 128) ^ 0x98567068) - 4;
  result = (*(v4 + 8 * (v2 + 57)))(v5 - 128);
  v9 = *(v5 - 96);
  return result;
}

uint64_t sub_100001540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v23 = 520147679 * ((v22 - 128) ^ 0xD061A127);
  *(v22 - 112) = v17 - v23 - 13;
  *(v22 - 120) = &a13;
  *(v22 - 128) = ((v15 ^ 0x5DF9FFF2) + ((2 * v15) & 0xBBF3FFE4) - 404771650) ^ v23;
  (*(v19 + 8 * (v17 + 12)))(v22 - 128);
  *(v22 - 112) = v17 - 2 - ((v22 - 128) ^ v21) * v20 - 11;
  *(v22 - 128) = a12;
  *(v22 - 120) = &a15;
  v24 = (*(v19 + 8 * (v17 + 22)))(v22 - 128);
  return (*(v18 + 8 * (((*(v22 - 108) + v16) >> 31) + v17 - 2)))(v24);
}

uint64_t sub_100001634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v21 - 128) = &a13;
  *(v21 - 120) = &a15;
  *(v21 - 112) = v18 - ((v21 - 128) ^ v20) * v19 - 3;
  v22 = (*(v17 + 8 * (v18 + 32)))(v21 - 128);
  return (*(v16 + 8 * (v18 + ((*(v21 - 108) + v15) >> 31))))(v22);
}

uint64_t sub_10000169C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a1 + 11;
  *(v9 - 120) = &a6;
  *(v9 - 112) = v7;
  *(v9 - 128) = (a1 - 1) ^ (56516261 * ((v9 - 128) ^ 0x15EBF17D));
  v11 = (*(&off_100019330 + a1 + 47))(v9 - 128);
  return (*(v8 + 8 * (v10 + 2 * (v6 != 1))))(v11);
}

uint64_t sub_100001764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 112) = v15 - ((v19 - 128) ^ v18) * v17 - 13;
  *(v19 - 128) = a12;
  *(v19 - 120) = &a13;
  v20 = (*(v16 + 8 * (v15 + 22)))(v19 - 128);
  if ((*(v19 - 108) + v13) <= 0x80000000)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  return (*(v14 + 8 * v21))(v20);
}

uint64_t sub_1000017E0(uint64_t a1)
{
  v1 = 1638185881 * (a1 ^ 0x11FD620);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 16) ^ v1;
  v4 = *(*(a1 + 24) + 4);
  if (v4 + 1916468129 >= 0)
  {
    v4 = 462031038 - v4;
  }

  return (*(*(&off_100019530 + v2 + 23) + 32 * ((v3 - 158609094) >= 4 * (v4 - 231015519)) + 8 * v2 - 6))();
}

uint64_t sub_1000018E8@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  *(*a1 + (a3 + a4)) = (a2 - 897970625) >> v6;
  if (a3 - 1 == v5)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  return (*(v4 + 8 * v8))();
}

uint64_t sub_100001924(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = (a4 & 0xFFFFFFFD | (2 * (a3 & 1))) + v7;
  if (v6 == 24)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  return (*(v5 + 8 * v9))(a1, a2, v4);
}

uint64_t sub_100001950(uint64_t a1)
{
  if (v1 + 755559108 < -1160909021 != v4 + 494530915 < -1160909021)
  {
    v6 = v1 + 755559108 < -1160909021;
  }

  else
  {
    v6 = v4 + 494530915 < v1 + 755559108;
  }

  return (*(v3 + 8 * (v5 + 2 * v6)))(a1, 897970625, v2);
}

uint64_t sub_100001AA8(uint64_t a1)
{
  v1 = *(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 3;
  v2 = *(*(a1 + 8) + 4);
  if (v2 + 1916468129 >= 0)
  {
    v2 = 462031038 - v2;
  }

  if ((v2 + 1916468129) <= 0x80000000)
  {
    v3 = *(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 3;
  }

  else
  {
    v3 = *(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 2;
  }

  return (*(*(&off_100019530 + (*(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 1)) + 8 * v3 - 10))();
}

void sub_100001C10()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 8) ^ (601157143 * (v0 ^ 0x5103A544));
  v2 = *(v0 + 16);
  if (*(*(v0 + 32) + 4) == 231015519)
  {
    v3 = v1 + 1;
  }

  else
  {
    v3 = *(v0 + 8) ^ (601157143 * (v0 ^ 0x5103A544));
  }

  __asm { BRAA            X10, X11 }
}

uint64_t sub_100001D40()
{
  *(v3 + 4) = v0;
  *(v6 - 144) = &v9;
  *(v6 - 136) = v3;
  *(v6 - 128) = v4 + 1 + ((v6 - 144) ^ v2) * v1 - 14;
  result = (*(v5 + 8 * (v4 + 48)))(v6 - 144);
  v8 = *(v6 - 96);
  return result;
}

void sub_100002E28(_DWORD *a1)
{
  v1 = a1[3];
  v2 = a1[2] ^ (2145031067 * (a1 ^ 0x1E282685));
  v3 = *a1;
  v4 = *(*a1 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(*a1 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  v8 = v2 - 1748787863 * (&v7 ^ 0x81BAC106) - 2;
  v7 = v3;
  (*(&off_100019330 + (v2 + 12)))(&v7);
  if ((v5 + 1916468129) <= 0x80000000)
  {
    v6 = v2;
  }

  else
  {
    v6 = v2 + 1;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_100002F28@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 10 * v1;
  if (((v4 + v3) & 0x1F) != 0xC)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  return (*(a1 + 8 * v6))();
}

uint64_t sub_100002F98@<X0>(uint64_t a1@<X8>)
{
  *(*(v4 + 8) + 4 * (v6 + v2 + v1 + 1917526983)) = *(*(v4 + 8) + 4 * (v6 - 231015520));
  if ((v5 + v6 - 1) >= 0x80000001)
  {
    v7 = v3;
  }

  else
  {
    v7 = v3 + 1;
  }

  return (*(a1 + 8 * v7))();
}

uint64_t sub_100002FFC@<X0>(uint64_t a1@<X8>)
{
  *(*(v6 + 8) + 4 * v5) = *(*(v6 + 8) + 4 * v4);
  if (v1 >= v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = v2 + 1;
  }

  return (*(a1 + 8 * v7))();
}

uint64_t sub_100003030@<X0>(uint64_t a1@<X8>)
{
  if ((v1 + 1058855) <= 0x80000000)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2 + 1;
  }

  return (*(a1 + 8 * v3))();
}

void sub_1000030F0()
{
  v5 = *(v3 + 4);
  v6 = -1627410654 - v0;
  if (v5 + v4 < 0)
  {
    v6 = v2;
  }

  *(v3 + 4) = v1 + v5 + v6 + 1;
}

uint64_t sub_100003184@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v5 + 8);
  v9 = *(v8 + 4 * (v7 - 231015520)) - 897970625;
  *(v8 + 4 * (v2 + v1)) = ((v9 >> (32 - v3)) ^ 0x3D9FF1F5) + ((2 * (v9 >> (32 - v3))) & 0x7B3FE3EA) - 135921716;
  return (*(a1 + 8 * ((((v6 + v7 - 2) >> 31) | (4 * ((v6 + v7 - 2) >> 31))) + v4 - 5)))();
}

void sub_100003358(uint64_t a1)
{
  v1 = *(a1 + 56) ^ (1685429429 * (a1 ^ 0x377F83D5));
  if (*(a1 + 24))
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = *(a1 + 56) ^ (1685429429 * (a1 ^ 0x377F83D5));
  }

  __asm { BRAA            X12, X13 }
}

uint64_t sub_1000034F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15 == 0x250197BA3C001668)
  {
    v20 = v16 + 4 * v17 + 1;
  }

  else
  {
    v20 = v16 + 4 * v17;
  }

  return (*(v19 + 8 * v20))(a1, a2, a3, a4, a5, a6, a7, a8, v18, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_10000357C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  v35 = a1 + 7;
  v36 = 1836812333 * ((v34 - 144) ^ 0x4065F266);
  *(v34 - 128) = v36 + v29 - 526058002;
  *(v34 - 136) = v28;
  *(v34 - 112) = v36 + a1 + 9;
  *(v34 - 120) = &a20;
  (*(v30 + 8 * (a1 + 16)))(v34 - 144);
  a17 = &a28;
  a18 = &a22;
  *(v34 - 128) = v32;
  *(v34 - 144) = &a17;
  v48 = v35 - 5 + 520147679 * ((v34 - 144) ^ 0xD061A127);
  *(v34 - 136) = v48;
  v47 = *(v30 + 8 * (v35 + 45));
  v47(v34 - 144);
  v46 = (v35 - 2) ^ (940831517 * ((v34 - 144) ^ 0xA299CC3C));
  *(v34 - 144) = v46;
  *(v34 - 136) = v32;
  *(v34 - 128) = &a24;
  *(v34 - 120) = &a20;
  *(v34 - 112) = &a17;
  v45 = *(v30 + 8 * (v35 + 5));
  v45(v34 - 144);
  v37 = a18;
  *(v34 - 120) = v32;
  *(v34 - 112) = v37;
  *(v34 - 136) = &a24;
  *(v34 - 128) = &a24;
  v44 = v35 - 704005591 * ((v34 - 144) ^ 0xF7D78CF0) + 17;
  *(v34 - 104) = v44;
  *(v34 - 144) = &a17;
  v43 = *(&off_100019330 + v35 + 37);
  v43(v34 - 144);
  *(v34 - 128) = &a24;
  *(v34 - 120) = a13;
  *(v34 - 144) = v32;
  *(v34 - 112) = &a24;
  *(v34 - 104) = &a17;
  v42 = (v35 + 8) ^ (601157143 * ((v34 - 144) ^ 0x5103A544));
  *(v34 - 136) = v42;
  v38 = *(&off_100019330 + v35 + 14);
  v38(v34 - 144);
  *(v34 - 128) = v33;
  *(v34 - 136) = v48;
  *(v34 - 144) = &a17;
  v47(v34 - 144);
  *(v34 - 136) = v33;
  *(v34 - 128) = &a26;
  *(v34 - 144) = v46;
  *(v34 - 120) = &a20;
  *(v34 - 112) = &a17;
  v45(v34 - 144);
  v39 = a18;
  *(v34 - 144) = &a17;
  *(v34 - 136) = &a26;
  *(v34 - 104) = v44;
  *(v34 - 120) = v33;
  *(v34 - 112) = v39;
  *(v34 - 128) = &a26;
  v43(v34 - 144);
  *(v34 - 128) = &a26;
  *(v34 - 120) = a11;
  *(v34 - 144) = v33;
  *(v34 - 112) = &a26;
  *(v34 - 104) = &a17;
  *(v34 - 136) = v42;
  v38(v34 - 144);
  *(v34 - 136) = &a24;
  *(v34 - 128) = &a26;
  *(v34 - 144) = (v35 - 5) ^ (56516261 * ((v34 - 144) ^ 0x15EBF17D));
  (*(&off_100019330 + v35 + 43))(v34 - 144);
  *(v34 - 132) = v35 - 1748787863 * ((v34 - 144) ^ 0x81BAC106) - 7;
  *(v34 - 144) = &a26;
  v40 = (*(&off_100019330 + v35 + 7))(v34 - 144);
  return (*(v31 + 8 * ((*(v34 - 136) + 1406450678 >= 0) + v35)))(v40);
}

uint64_t sub_100003950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  *(v38 - 136) = v37;
  *(v38 - 128) = v36;
  *(v38 - 144) = (v34 - 3) ^ (191237807 * ((v38 - 144) ^ 0xDBC9B6B1));
  (*(v33 + 8 * (v34 + 36)))(v38 - 144);
  v39 = a25;
  v40 = v34 - 704005591 * ((v38 - 144) ^ 0xF7D78CF0) + 19;
  *(v38 - 104) = v40;
  *(v38 - 120) = v37;
  *(v38 - 112) = v39;
  *(v38 - 136) = &a33;
  *(v38 - 128) = &a33;
  *(v38 - 144) = &a24;
  v41 = *(v33 + 8 * (v34 + 39));
  v41(v38 - 144);
  *(v38 - 128) = a19;
  *(v38 - 120) = v37;
  *(v38 - 104) = v40;
  *(v38 - 144) = &a24;
  *(v38 - 136) = &a33;
  *(v38 - 112) = &a33;
  v41(v38 - 144);
  *(v38 - 144) = a20;
  *(v38 - 128) = &a33;
  *(v38 - 136) = (v34 - 191875503) ^ (520147679 * ((v38 - 144) ^ 0xD061A127));
  (*(&off_100019330 + v34 + 42))(v38 - 144);
  *(v38 - 144) = (v34 - 3) ^ (191237807 * ((v38 - 144) ^ 0xDBC9B6B1));
  *(v38 - 136) = &a31;
  *(v38 - 128) = &a33;
  (*(&off_100019330 + v34 + 36))(v38 - 144);
  *(v38 - 144) = &a33;
  *(v38 - 136) = &a31;
  *(v38 - 128) = v34 - 4 + 523995289 * ((v38 - 144) ^ 0x98567068);
  v42 = (*(&off_100019330 + v34 + 57))(v38 - 144);
  if (a21 == 0x79046D8DC0A979F1)
  {
    v43 = v34 - 3;
  }

  else
  {
    v43 = v34 - 4;
  }

  return (*(v35 + 8 * v43))(v42);
}

uint64_t sub_100003B8C@<X0>(int a1@<W8>)
{
  v5 = 1638185881 * ((v4 - 144) ^ 0x11FD620);
  *(v4 - 144) = v8;
  *(v4 - 120) = v3;
  *(v4 - 132) = a1 - v5 - 2;
  *(v4 - 128) = (v10 - 1901752086) ^ v5;
  result = (*(v2 + 8 * (a1 + 14)))(v4 - 144);
  *v9 = v10;
  *v1 = 344250259;
  v7 = *(v4 - 96);
  return result;
}

void sub_100003C9C(uint64_t a1)
{
  v1 = 523995289 * (a1 ^ 0x98567068);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(a1 + 8);
  if ((*a1 - v1 + 1623440039) <= 0x80000000)
  {
    v4 = *(a1 + 16) ^ v1;
  }

  else
  {
    v4 = v2 + 1;
  }

  __asm { BRAA            X12, X13 }
}

uint64_t sub_100003D40@<X0>(int a1@<W8>)
{
  v5 = 520147679 * (&v8 ^ 0xD061A127);
  v10 = v5 + a1 + 1;
  v8 = v2 + v5 - ((v3 + 1099396430) & 0x50B9411A) + 153115444;
  v9 = v1;
  result = (*(&off_100019330 + a1 + 25))(&v8);
  v7 = *(v4 - 8);
  return result;
}

uint64_t sub_100003E98@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = 1383034093 * a2;
  v4 = (*(&off_100019330 + 1383034093 * a2 + 10))();
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(&off_100019330 + v3))(a1);
  return v6;
}

void sub_100003F20(uint64_t a1, int a2)
{
  if ((a2 & 0x3F000000) == 0x13000000)
  {
    v2 = 8;
  }

  else
  {
    v2 = 7;
  }

  __asm { BRAA            X10, X9 }
}

uint64_t sub_100004178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, unsigned int a20)
{
  v32 = v21;
  a20 = (v20 - 769513846) ^ (704005591 * (&a19 ^ 0xF7D78CF0));
  (*(v23 + 8 * (v22 + v20 + 745267747 + 53)))(&a19);
  if (SHIDWORD(a11) > 1291933660)
  {
    if (SHIDWORD(a11) <= 1593915355)
    {
      if (HIDWORD(a11) != 1291933661 && HIDWORD(a11) != 1291933662)
      {
        return sub_1000045E0(v24, v25, v26, v27, v28, v29, v30, 0, a9, a10, a11, a12, v32, a14, a15, 0x4DA57D9900000000, 0);
      }
    }

    else if (HIDWORD(a11) != 1593915356 && HIDWORD(a11) != 1593915357 && HIDWORD(a11) != 1593915358)
    {
      return sub_1000045E0(v24, v25, v26, v27, v28, v29, v30, 0, a9, a10, a11, a12, v32, a14, a15, 0x4DA57D9900000000, 0);
    }

    return sub_100004458();
  }

  if (SHIDWORD(a11) <= 1291925469)
  {
    if (HIDWORD(a11) != 1291925468 && HIDWORD(a11) != 1291925469)
    {
      return sub_1000045E0(v24, v25, v26, v27, v28, v29, v30, 0, a9, a10, a11, a12, v32, a14, a15, 0x4DA57D9900000000, 0);
    }

    return sub_100004458();
  }

  if (HIDWORD(a11) == 1291925470 || HIDWORD(a11) == 1291929564 || HIDWORD(a11) == 1291929565)
  {
    return sub_100004458();
  }

  return sub_1000045E0(v24, v25, v26, v27, v28, v29, v30, 0, a9, a10, a11, a12, v32, a14, a15, 0x4DA57D9900000000, 0);
}

uint64_t sub_100004458()
{
  if (malloc((*(&unk_1000190F8 + 6 * v1 + 4) - 1302691225)))
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  return (*(v0 + 8 * (v2 + 14)))();
}

uint64_t sub_1000044FC()
{
  v6 = *(v1 + 24 * v5 + 8);
  v7 = v4 + 56108922 - ((2 * v4 + 1689584846) & 0xA1FB4A2E) + 4;
  v8 = (v7 ^ 0xAF0718A8) + 2111666040 + ((2 * v7) & 0xFFF57B7E ^ 0xA1F14A2E);
  return (*(v3 + 8 * (v0 + ((v8 != v2) | (4 * (v8 != v2))))))();
}

uint64_t sub_1000045E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = a17;
  if (a8)
  {
    v21 = 1321577070;
  }

  else
  {
    a8 = a17;
    v21 = 1321535018;
  }

  if (v18 == 1321577070)
  {
    v20 = a8;
    v22 = v21;
  }

  else
  {
    v22 = v18;
  }

  if (v22 == 1321577070)
  {
    v23 = v17 - 745267754;
  }

  else
  {
    v23 = v17 - 745267755;
  }

  return (*(v19 + 8 * (v23 + 9)))(v20, a1, a2, a3, a4, a5, a6, a7, a9);
}

uint64_t sub_1000046C0@<X0>(int a1@<W8>)
{
  v4 = v1 + 56108922 - ((2 * v1 + 1689584838) & 0xA1FB4A2E);
  if ((v4 ^ 0xAF0718A8) + 2111666040 + ((2 * v4) & 0xFFF57B7E ^ 0xA1F14A2E) == v2)
  {
    ++a1;
  }

  return (*(v3 + 8 * a1))();
}

uint64_t sub_1000047C0@<X0>(int a1@<W8>)
{
  if (v3 == v1)
  {
    ++a1;
  }

  return (*(v2 + 8 * a1))();
}

uint64_t sub_10000485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*(v11 + 8 * (v10 - 9)))(a10, 3, *(&off_100019530 + v10 + 14) - 7))
  {
    v13 = v10;
  }

  else
  {
    v13 = v10 + 1;
  }

  return (*(v12 + 8 * v13))();
}

uint64_t sub_10000491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (*(a15 + (v17 - 867209358)) == 48)
  {
    v18 = v15 + 1;
  }

  else
  {
    v18 = v15;
  }

  return (*(v16 + 8 * v18))();
}

uint64_t sub_1000049C4@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 == 130)
  {
    v12 = (*(a9 + (v11 - 867209355)) | (*(a9 + (v11 - 867209356)) << 8)) + 4;
    goto LABEL_5;
  }

  if (a2 == 129)
  {
    v12 = *(a9 + (v11 - 867209356)) + 3;
LABEL_5:
    v13 = SecCertificateCreateWithBytes(a4, a1, v12) != 0;
    return (*(v10 + 8 * (4 * v13 + 25)))();
  }

  _CFRelease(v9);
  return sub_100004BB0();
}

uint64_t sub_100004AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  (*(&off_100019330 + v20 - 8))(v15, a1);
  v22 = (*(&off_100019330 + v20 - 7))(a1);
  v23 = v16 + v19 + 716333518;
  v24 = (a15 > 0xA19D0DA3) ^ (v23 < 0x5E62F25C);
  v25 = v23 < v17;
  if (v24)
  {
    v25 = a15 > 0xA19D0DA3;
  }

  return (*(v18 + 8 * (v20 + 22 * v25)))(v22);
}

uint64_t sub_100004BF8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v14 = v11 + 745267749 * a1 + 10 * v10;
  if ((*(v12 + 8 * (v14 - 17)))(a3, *(&off_100019530 + v14 + 31) - 14, va, 8, 100))
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  return (*(v13 + 8 * v15))();
}

uint64_t sub_100004EE8(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (520147679 * (a1 ^ 0xD061A127));
  v2 = *(a1 + 16);
  v6 = *a1;
  v4 = v2;
  v5 = v1 + 191875505 - 191237807 * (&v4 ^ 0xDBC9B6B1);
  return (*(&off_100019330 + v1 + 191875529))(&v4);
}

uint64_t sub_100004FB8(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = ((a2 >> 5) * a2) > 0xB7u;
  v3 = (32 * ((((((-2114445439 * (v2 | 0x20u)) >> 37) + (-2114445439 * (v2 | 0x20u) < 0)) >> 5) ^ 0x94u) > 0xC0) / -76) >> 1;
  v4 = *(&off_100019330 + ((((4 * v3 + 83) ^ 0x88888888) & 0xFD) - 211));
  v5 = -((((((v3 + 45) >> 7) ^ 0x3D) + 18) / 0x53) & ((((v3 + 45) >> 7) ^ 0x3D) + 18));
  return v4(a1, *(&off_100019530 + (((((((v5 & 0x40) - 72 * ((v5 & 0xC0) / 0x48)) & 0x10 | 0xA0) % 0xA9 % 0x1B) ^ 0xB9) / 0x6F - 97) & 0xBF) - 106) - 14, &v7, 8, 100);
}

void sub_100005194(uint64_t a1)
{
  if (a1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_1000051E4@<X0>(int a1@<W8>)
{
  v2 = 235968479 * a1 + 1;
  v3 = (*(&off_100019330 + v2))(200);
  return (*(v1 + 8 * (v2 + 2 * (v3 != 0))))();
}

uint64_t sub_10000524C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (*(v5 + 8 * (v7 + a2 * v6 - 235968469)))(a1, 0);
  if (v9 == 16)
  {
    v3 = 1398708801;
    goto LABEL_7;
  }

  if (v9 == 12)
  {
LABEL_7:
    (*(v5 + 8 * (v4 - 235968480)))(a1);
    return (1293967099 * v3 - 1334165480);
  }

  if (v9)
  {
    v3 = 1234411022;
    goto LABEL_7;
  }

  *v2 = a1;
  v3 = 362650424;
  return (1293967099 * v3 - 1334165480);
}

void sub_100005314(uint64_t a1)
{
  v1 = *a1 ^ (56516261 * (a1 ^ 0x15EBF17D));
  if (*(*(a1 + 8) + 4) == 231015519)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = *a1 ^ (56516261 * (a1 ^ 0x15EBF17D));
  }

  __asm { BRAA            X15, X16 }
}

uint64_t sub_100005394(uint64_t a1)
{
  v5 = v3 - 2 * v4;
  if (*(*(a1 + 16) + 4) == v2)
  {
    ++v5;
  }

  return (*(v1 + 8 * v5))();
}

uint64_t sub_1000053C8@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v7 = v2;
  v8 = v1 + 523995289 * (&v6 ^ 0x98567068) - 2;
  result = (*(&off_100019330 + v1 + 59))(&v6);
  *(v2 + 4) = 462031038 - *(v2 + 4);
  v5 = *(v3 - 24);
  return result;
}

uint64_t sub_100005534(uint64_t a1)
{
  v1 = 523995289 * (a1 ^ 0x98567068);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 12) ^ v1;
  v4 = *(*(a1 + 24) + 4);
  if (v4 + 1916468129 >= 0)
  {
    v4 = 462031038 - v4;
  }

  if ((v3 - 1430439603) < 4 * (v4 - 231015519))
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 + 1;
  }

  return (*(*(&off_100019530 + v2 + 37) + 8 * v5 - 6))();
}

uint64_t sub_1000055F4(void *a1)
{
  v4 = v2 - v3 + 3;
  v5 = *a1 - 0x79046D8DC0A979F1;
  return (*(v1 + 8 * (v4 + 1)))();
}

uint64_t sub_100005650@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W8>)
{
  *(v6 + (a3 + a4)) = ((a2 - 897970625) >> v7) - ((2 * ((a2 - 897970625) >> v7)) & 0xC0) + 96;
  if (a3 - 1 == v5)
  {
    v8 = a1 + 1;
  }

  else
  {
    v8 = a1;
  }

  return (*(v4 + 8 * v8))();
}

uint64_t sub_10000569C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = v6 + 8;
  v8 = a4 + a2;
  if (v7 == 32)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  return (*(v4 + 8 * v9))(a1, -3 * (v7 != 32) + v8, a3, v5);
}

uint64_t sub_1000056C8(uint64_t a1, int a2)
{
  if (v2 + 780866798 < -1135601331 != v5 - 198671456 < -1135601331)
  {
    v6 = v2 + 780866798 < -1135601331;
  }

  else
  {
    v6 = v5 - 198671456 < v2 + 780866798;
  }

  return (*(v3 + 8 * (a2 + (v6 & 0xFFFFFFFD | (2 * v6)))))(a1, a2 - 3 * !v6, 897970625, v4);
}

void sub_100005770(uint64_t a1)
{
  v1 = *(a1 + 8) - 520147679 * (a1 ^ 0xD061A127);
  v2 = *(a1 + 16);
  v3 = 59377854 - *(v2 + 4);
  v5 = **a1;
  v4 = *(*a1 + 8);
  v6 = **(v2 + 8);
  __asm { BRAA            X11, X2 }
}

uint64_t sub_1000058C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = 32 * v13 + 1197437984;
  *(a10 + 16) = -898526670 - v14;
  v20 = 1638185881 * ((v18 - 136) ^ 0x11FD620);
  *(v18 - 136) = (v15 - 21985947) ^ v20;
  *(v18 - 132) = v20 + 1311422028;
  *(v18 - 128) = v17;
  (*(&off_100019330 + v15 + 31))(v18 - 136);
  v21 = 520147679 * ((v18 - 136) ^ 0xD061A127);
  *(v18 - 120) = v15 - 5 - v21;
  *(v18 - 136) = ((v19 ^ 0xCDDDFEFD) + ((2 * v19) & 0x9BBBFDC0) + 2012982707) ^ v21;
  *(v18 - 128) = v17;
  (*(&off_100019330 + v15 + 20))(v18 - 136);
  *(v18 - 136) = a12;
  *(v18 - 128) = &a13;
  *(v18 - 120) = v15 + 523995289 * ((v18 - 136) ^ 0x98567068) - 4;
  (*(&off_100019330 + v15 + 57))(v18 - 136);
  *(v18 - 120) = v15 - 5 - v20;
  *(v18 - 136) = a12;
  *(v18 - 128) = v17;
  v22 = (*(&off_100019330 + v15 + 30))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 116) + 556127643) >> 31) + v15)))(v22);
}

uint64_t sub_100005A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  *(v15 - 120) = v13 + 523995289 * ((v15 - 136) ^ 0x98567068) - 1;
  *(v15 - 136) = v12;
  *(v15 - 128) = v10;
  v16 = (*(v14 + 8 * (v13 + 60)))(v15 - 136);
  return (*(v11 + 8 * (v13 + ((a10 < 1) | (4 * (a10 < 1))) + 20)))(v16);
}

uint64_t sub_100005B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 136) = a12;
  *(v17 - 128) = &a13;
  *(v17 - 120) = v13 + 523995289 * ((v17 - 136) ^ 0x98567068) - 10;
  (*(v16 + 8 * (v13 + 51)))(v17 - 136);
  v18 = 520147679 * ((v17 - 136) ^ 0xD061A127);
  *(v17 - 120) = v13 - 11 - v18;
  *(v17 - 136) = v18 ^ 0x45D9ACB1;
  *(v17 - 128) = v14;
  (*(v16 + 8 * (v13 + 14)))(v17 - 136);
  *(v17 - 120) = v13 - 11 - 1638185881 * ((v17 - 136) ^ 0x11FD620);
  *(v17 - 136) = a12;
  *(v17 - 128) = v14;
  v19 = (*(v16 + 8 * (v13 + 24)))(v17 - 136);
  return (*(v15 + 8 * (((*(v17 - 116) + 556127643) >> 31) + v13)))(v19);
}

uint64_t sub_100005C9C()
{
  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 1;
  }

  if (((v3 >> 1) ^ 0x7FEFFEBC) + (v3 & 0xFFDFFD78) + 1048900 <= 0x80000001)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 + 1;
  }

  return (*(v0 + 8 * v4))();
}

uint64_t sub_100005D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  if ((a11 - 1866192792) <= 0x80000001)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  return (*(v11 + 8 * v13))();
}

uint64_t sub_100005D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v18 - 112) = a13;
  *(v18 - 104) = v15;
  *(v18 - 120) = v14 + 1836812333 * ((v18 - 136) ^ 0x4065F266) + 29;
  *(v18 - 136) = v15;
  *(v18 - 128) = a11;
  v19 = (*(v17 + 8 * (v14 + 18)))(v18 - 136);
  v20 = v13 - 1865143816;
  if (v13 - 1865143816 < 0)
  {
    v20 = v13 - 1865143815;
  }

  return (*(v16 + 8 * (v14 + 19 * ((((v20 & 0xDE77AF30) + ((v20 >> 1) ^ 0xEF3BD798) + 281290856) & a10) != 0))))(v19);
}

uint64_t sub_100005E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v21 = 520147679 * ((v20 - 136) ^ 0xD061A127);
  *(v20 - 120) = v18 - v21;
  *(v20 - 136) = v21 ^ 0x45D9ACB1;
  *(v20 - 128) = v16;
  (*(v19 + 8 * (v18 + 25)))(v20 - 136);
  *(v20 - 136) = a12;
  *(v20 - 128) = &a13;
  *(v20 - 120) = v18 + 523995289 * ((v20 - 136) ^ 0x98567068) + 1;
  (*(v19 + 8 * (v18 + 62)))(v20 - 136);
  *(v20 - 136) = a12;
  *(v20 - 128) = v16;
  *(v20 - 120) = v18 - ((v20 - 136) ^ v14) * v15;
  v22 = (*(v19 + 8 * (v18 + 35)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 116) + v13) >> 31) + v18)))(v22);
}

uint64_t sub_100005FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = 520147679 * ((v18 - 136) ^ 0xD061A127);
  *(v18 - 120) = v17 - 7 - v19;
  *(v18 - 136) = ((v15 ^ 0xF5DFADF2) + ((2 * v15) & 0xEBBF5BE4) + 1341783742) ^ v19;
  *(v18 - 128) = &a13;
  (*(v16 + 8 * (v17 + 18)))(v18 - 136);
  *(v18 - 120) = v17 - 7 - 1638185881 * ((v18 - 136) ^ 0x11FD620);
  *(v18 - 136) = a12;
  *(v18 - 128) = v13;
  v20 = (*(v16 + 8 * (v17 + 28)))(v18 - 136);
  return (*(v14 + 8 * (((*(v18 - 116) + 556127643) >> 31) + v17 - 7)))(v20);
}

uint64_t sub_1000060DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v20 - 120) = v18 - ((v20 - 136) ^ v14) * v15 - 20;
  *(v20 - 136) = &a13;
  *(v20 - 128) = v16;
  v21 = (*(v19 + 8 * (v18 + 15)))(v20 - 136);
  return (*(v17 + 8 * (v18 + ((*(v20 - 116) + v13) >> 31))))(v21);
}

uint64_t sub_100006160@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 - 12;
  *(v10 - 128) = &a6;
  *(v10 - 120) = v6;
  *(v10 - 136) = (a1 - 18) ^ (56516261 * ((v10 - 136) ^ 0x15EBF17D));
  v12 = (*(v9 + 8 * (a1 + 30)))(v10 - 136);
  if (v8 == 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v11;
  }

  return (*(v7 + 8 * v13))(v12);
}

uint64_t sub_100006218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 120) = v17 - ((v19 - 136) ^ v13) * v15 - 7;
  *(v19 - 136) = a12;
  *(v19 - 128) = &a13;
  v20 = (*(v18 + 8 * (v17 + 28)))(v19 - 136);
  return (*(v16 + 8 * (v17 + 2 * ((*(v19 - 116) + v14) > 0x80000000))))(v20);
}

uint64_t sub_100006294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v21 = 520147679 * ((v20 - 136) ^ 0xD061A127);
  *(v20 - 120) = v19 - v21 - 25;
  *(v20 - 128) = &a13;
  *(v20 - 136) = ((v13 ^ 0x47DDBFF2) + ((2 * v13) & 0x8FBB7FE4) - 33821506) ^ v21;
  (*(v18 + 8 * v19))(v20 - 136);
  v22 = v19 - 20;
  *(v20 - 120) = v22 - ((v20 - 136) ^ 0x11FD620) * v14 - 5;
  *(v20 - 136) = a12;
  *(v20 - 128) = v17;
  v23 = (*(v18 + 8 * (v22 + 30)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 116) + v15) >> 31) + v22)))(v23);
}

uint64_t sub_10000639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v20 - 120) = v18 - ((v20 - 136) ^ v13) * v14 - 3;
  *(v20 - 136) = &a13;
  *(v20 - 128) = v17;
  v21 = (*(v19 + 8 * (v18 + 32)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 116) + v15) >> 31) + v18)))(v21);
}

uint64_t sub_100006400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 128) = &a13;
  *(v18 - 120) = v15;
  *(v18 - 136) = v17 ^ (56516261 * ((v18 - 136) ^ 0x15EBF17D));
  v19 = (*(v16 + 8 * (v17 + 48)))(v18 - 136);
  if (v13 == 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v17;
  }

  return (*(v14 + 8 * (v20 + 11)))(v19);
}

uint64_t sub_1000064C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 120) = v17 - ((v19 - 136) ^ v13) * v14 - 14;
  *(v19 - 136) = a12;
  *(v19 - 128) = &a13;
  v20 = (*(v18 + 8 * (v17 + 21)))(v19 - 136);
  return (*(v16 + 8 * (v17 + 11 * ((*(v19 - 116) + v15) < 0x80000001))))(v20);
}

uint64_t sub_100006544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = 520147679 * ((v18 - 136) ^ 0xD061A127);
  *(v18 - 136) = ((v13 ^ 0xDFF9AFBC) + ((2 * v13) & 0xBFF35F78) + 1709178100) ^ v19;
  *(v18 - 128) = &a13;
  *(v18 - 120) = v16 - v19 - 10;
  (*(v17 + 8 * (v16 + 15)))(v18 - 136);
  *(v18 - 120) = v16 + 1 - 1638185881 * ((v18 - 136) ^ 0x11FD620) - 11;
  *(v18 - 136) = a12;
  *(v18 - 128) = v14;
  v20 = (*(v17 + 8 * (v16 + 25)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 116) + 556127643) >> 31) + v16 + 1)))(v20);
}

uint64_t sub_100006664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v20 - 136) = &a13;
  *(v20 - 128) = v16;
  *(v20 - 120) = v19 - ((v20 - 136) ^ v13) * v15 - 17;
  v21 = (*(v18 + 8 * (v19 + 18)))(v20 - 136);
  return (*(v17 + 8 * (v19 + ((*(v20 - 116) + v14) >> 31))))(v21);
}

uint64_t sub_1000066D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 + 6;
  *(v10 - 136) = (a1 - 15) ^ (56516261 * ((v10 - 136) ^ 0x15EBF17D));
  *(v10 - 128) = &a6;
  *(v10 - 120) = v7;
  v12 = (*(v9 + 8 * (a1 + 33)))(v10 - 136);
  if (v6 == 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v11;
  }

  return (*(v8 + 8 * v13))(v12);
}

uint64_t sub_10000679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 136) = a12;
  *(v18 - 128) = &a13;
  *(v18 - 120) = v17 - ((v18 - 136) ^ 0x11FD620) * v13 - 10;
  v19 = (*(v16 + 8 * (v17 + 25)))(v18 - 136);
  return (*(v15 + 8 * (v17 + 14 * ((*(v18 - 116) + v14) > 0x80000000))))(v19);
}

void sub_100006828(uint64_t a1, int a2)
{
  if ((a2 & 0x3F000000) == 0x13000000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_10000689C@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3)
{
  v4 = (-1936509884 * a2) | 3;
  v5 = a1 & 0xFFFFFF | 0x1000000;
  HIDWORD(a3) = (v4 + 1166996050) ^ (704005591 * (&a3 ^ 0xF7D78CF0));
  v6 = (*(&off_100019330 + v4 + 1936509941))(&a3);
  if (v5 <= 16781312)
  {
    switch(v5)
    {
      case 16777217:
        v7 = 5;
        goto LABEL_17;
      case 16777218:
        v7 = 7;
        goto LABEL_17;
      case 16777219:
        v7 = 9;
        goto LABEL_17;
    }

    return (*(v3 + 24))(v6);
  }

  if (v5 > 16785409)
  {
    if (v5 == 16785410)
    {
      v7 = 2;
      goto LABEL_17;
    }

    if (v5 == 16785411)
    {
      v7 = 3;
      goto LABEL_17;
    }

    return (*(v3 + 24))(v6);
  }

  v7 = 0;
  if (v5 != 16781313)
  {
    if (v5 == 16781314)
    {
      v7 = 1;
      goto LABEL_17;
    }

    return (*(v3 + 24))(v6);
  }

LABEL_17:
  v8 = malloc((*(&unk_1000190F8 + 6 * v7 + 4) - 1302691225));
  return (*(v3 + 8 * (4 * (v8 != 0) + 8)))(v8);
}

uint64_t sub_100006BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v11 = a3 + v4 * (v9 + 14);
  v12 = v10 - 1302691229;
  if (!v3)
  {
    v12 = -4;
  }

  if (v5 == v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 4294967292;
  }

  if (v6 + 4 <= v6)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return (*(v7 + 8 * v14))(a1, a2, v13);
}

uint64_t sub_100006C88()
{
  v4 = *(v2 + 20);
  *v2 = *(v2 + 4);
  v2[1] = v4;
  if ((v0 & 0xFFFFFFE0) == 0x20)
  {
    ++v1;
  }

  return (*(v3 + 8 * v1))();
}

uint64_t sub_100006CC0()
{
  v4 = *(v1 + 4);
  *(v1 - 1) = *(v1 - 12);
  *v1 = v4;
  if (v2)
  {
    v5 = v0;
  }

  else
  {
    v5 = v0 + 1;
  }

  return (*(v3 + 8 * v5))();
}

uint64_t sub_100006CF0()
{
  if (v1 == v0)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = v2;
  }

  return (*(v3 + 8 * v4))();
}

uint64_t sub_100007100(uint64_t a1)
{
  v1 = *(a1 + 16) - 523995289 * (a1 ^ 0x98567068);
  if (*a1 == *(a1 + 8))
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = *(a1 + 16) - 523995289 * (a1 ^ 0x98567068);
  }

  return (*(*(&off_100019530 + v1 + 57) + 8 * v2 - 2))();
}

uint64_t sub_10000714C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  *(v1 + 4) = v4;
  if (v5 == 231015519)
  {
    v6 = v3;
  }

  else
  {
    v6 = v3 + 1;
  }

  return (*(v2 + 8 * v6))();
}

uint64_t sub_1000072B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unsigned int a12)
{
  v16 = a2 & 0xFFFFFF | 0x1000000;
  a12 = (v15 - 1036443534) ^ (704005591 * (&a11 ^ 0xF7D78CF0));
  v17 = (*(v12 + 8 * (v15 - 266929643)))(&a11);
  if (v16 <= 16781312)
  {
    switch(v16)
    {
      case 16777217:
        v18 = 5;
        goto LABEL_17;
      case 16777218:
        v18 = 7;
        goto LABEL_17;
      case 16777219:
        v18 = 9;
        goto LABEL_17;
    }

    return (*(v13 + 136))(v17);
  }

  if (v16 > 16785409)
  {
    if (v16 == 16785410)
    {
      v18 = 2;
      goto LABEL_17;
    }

    if (v16 == 16785411)
    {
      v18 = 3;
      goto LABEL_17;
    }

    return (*(v13 + 136))(v17);
  }

  v18 = 0;
  if (v16 != 16781313)
  {
    if (v16 == 16781314)
    {
      v18 = 1;
      goto LABEL_17;
    }

    return (*(v13 + 136))(v17);
  }

LABEL_17:
  v19 = (*(v12 + 8 * (v14 - 266929702)))((*(*(&off_100019530 + v14 - 266929642) + 24 * v18 + 5) - 1302691225));
  return (*(v13 + 8 * (v14 - 266929702 + ((v19 != 0) | (2 * (v19 != 0))) + 14)))(v19, v20, v21);
}

void sub_1000079AC(uint64_t a1)
{
  v1 = *(a1 + 12) + 1748787863 * (a1 ^ 0x81BAC106);
  v4 = *a1;
  v3[0] = (523995289 * (v3 ^ 0x98567068)) ^ (v1 + 1);
  (*(&off_100019330 + v1 + 39))(v3);
  if (v3[1] == 851002806)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = v1;
  }

  __asm { BRAA            X8, X9 }
}

void sub_100007A88()
{
  if ((*(v2 + 4) + 1916468129) <= 0x80000000)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 8) = v3;
}

uint64_t sub_100007B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 6 * v3;
  v6 = *(a1 + 24);
  if (v4 == 1534303178)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v5;
  }

  return (*(a2 + 8 * v7))();
}

void sub_100007CFC(int a1@<W6>, int a2@<W7>, uint64_t a3@<X8>)
{
  v6 = a2 + v4;
  v7 = a2 + 1;
  *(*(v3 + 8) + 4 * v6) = a1;
  v8 = v5 - 8;
  *(v3 + 4) = v7;
  v9 = 462031038 - v7;
  if (v7 + 1916468129 < 0)
  {
    v9 = v7;
  }

  __asm { BRAA            X2, X3 }
}

uint64_t sub_100007DD0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if (v2 <= 0x80000000)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 1;
  }

  return (*(a2 + 8 * v3))();
}

_DWORD *sub_100007DF0(_DWORD *result)
{
  *(v1 + 4) = v3;
  *result = v2;
  return result;
}

void sub_100007E14(uint64_t a1)
{
  v1 = *(a1 + 16) - 1836812333 * (a1 ^ 0x4065F266);
  v2 = *(a1 + 32);
  v3 = 462031038 - *(*(a1 + 24) + 4);
  if (*(*a1 + 4) == 231015519)
  {
    v4 = v1 + 1;
  }

  else
  {
    v4 = *(a1 + 16) - 1836812333 * (a1 ^ 0x4065F266);
  }

  __asm { BRAA            X13, X14 }
}

void sub_100008CB0(uint64_t a1)
{
  v1 = 704005591 * (a1 ^ 0xF7D78CF0);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(*(a1 + 24) + 4);
  v4 = 462031038 - v3;
  if (v3 + 1916468129 < 0)
  {
    v4 = *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 8) + 4) + 1916468129 < 0)
  {
    v5 = *(*(a1 + 8) + 4);
  }

  v6 = (*a1 + v1);
  v7 = *(&off_100019530 + v2 + 37);
  if ((v4 + 1916468129) > 0x80000000)
  {
    ++v2;
  }

  __asm { BRAA            X10, X2 }
}

uint64_t sub_100008DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  v8 = *(a1 + 20);
  v9 = v7 - 7;
  v10 = a5 + 1709098632;
  if (a5 + 1709098632 < -207369497 != v5 + 1709098632 < -207369497)
  {
    v11 = v10 < -207369497;
  }

  else
  {
    v11 = v5 + 1709098632 < v10;
  }

  v12 = *(a2 + 8);
  return (*(v6 + 8 * (v9 + 8 * v11)))();
}

uint64_t sub_100008EB8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v21 = v20 + 1;
  v22 = a3 < a8;
  v23 = v11 + a2 + *(v12 + 4 * v8) + v9 + (*(*(v13 + 8) + 4 * v17) + v9) * a6;
  *(v12 + 4 * v8) = (v23 ^ v14) + (v15 & (2 * v23)) + v16;
  if (v22 == v17 + 1 > v19)
  {
    v22 = v17 + v18 < a3;
  }

  return (*(v10 + 8 * (v21 + 6 * v22)))();
}

uint64_t sub_100008FA0@<X0>(int a1@<W6>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  v7 = a1 + 5;
  v8 = a5 + 403333195 < -1513134934;
  if (v8 == v5 + 403333195 < -1513134934)
  {
    v8 = v5 + 403333195 < a5 + 403333195;
  }

  v9 = *(a2 + 8);
  return (*(v6 + 8 * (v7 + 6 * v8)))();
}

uint64_t sub_10000905C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v17 = v14 - 5;
  v18 = *(v8 + 4 * v15);
  *(v8 + 4 * v15) = ((v11 + 243227186 + v18 + v9) ^ a4) + (a5 & (2 * (v11 + 243227186 + v18 + v9))) + a6;
  if ((a8 ^ ((v11 - 0x3054D7EAF180A5CELL + (v18 + v9)) >> 32)) + (v12 & ((v11 - 0x3054D7EAF180A5CELL + (v18 + v9)) >> 31)) + v13 == v16)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v17;
  }

  return (*(v10 + 8 * v19))();
}

uint64_t sub_1000090DC@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) + 813804453;
  v5 = (v2 + 813804453 < -1102663676) ^ (v4 < -1102663676);
  v6 = v2 + 813804453 > v4;
  if (v5)
  {
    v6 = v2 + 813804453 < -1102663676;
  }

  return (*(v3 + 8 * (v6 + a1)))();
}

void sub_100009154(uint64_t a1)
{
  v2 = *a1 + 1638185881 * (a1 ^ 0x11FD620);
  v3 = *(*(a1 + 24) + 4);
  if (v3 + 1916468129 < 0)
  {
    v4 = *(*(a1 + 24) + 4);
  }

  else
  {
    v4 = 462031038 - v3;
  }

  v5 = *(*(a1 + 8) + 4);
  if (v5 + 1916468129 < 0)
  {
    v6 = *(*(a1 + 8) + 4);
  }

  else
  {
    v6 = 462031038 - v5;
  }

  v10 = *(a1 + 24);
  v11 = v2 - 1748787863 * (&v10 ^ 0x81BAC106) - 6;
  (*(&off_100019330 + v2 + 8))(&v10);
  v7 = v4 + 1283520354 < v6 + 1283520354;
  if (v4 + 1283520354 < -632947775 != v6 + 1283520354 < -632947775)
  {
    v7 = v6 + 1283520354 < -632947775;
  }

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(a1 + 16);
  __asm { BRAA            X13, X15 }
}

uint64_t sub_100009304()
{
  v8 = v2 + 1564212715;
  v9 = v3 - 1;
  v10 = v8 < -352255414;
  v11 = 4 * (v5 + v4);
  v12 = *(*(v7 + 8) + v11) - *(*(v6 + 8) + v11);
  *(*(v0 + 8) + v11) = (v12 ^ 0xBF8FFBF5) + ((2 * v12) & 0x7F1FF7EA) + 1979053516;
  if (v10 == v5 + 514330435 < -352255414)
  {
    v10 = v5 + 514330435 < v8;
  }

  return (*(v1 + 8 * (v10 + v9)))(3213884405, 2132801514, 1979053516, 0xB3FFFF7FE99EEFEBLL, 0x1D33DDFD6, 0x5D578FCB9EFFFBF8, 514330435);
}

uint64_t sub_10000942C()
{
  v4 = v3 - 60981110 < -1977449239;
  if (v4 == v2 - 1110863391 < -1977449239)
  {
    v4 = v2 - 1110863391 < v3 - 60981110;
  }

  return (*(v0 + 8 * (v4 + v1)))();
}

uint64_t sub_100009494(uint64_t a1, uint64_t a2, int a3)
{
  v14 = v6 & ~__ROR4__(v10, 18);
  v15 = a3 - 14;
  v16 = *(*(v13 + 8) + 4 * (v12 + v11));
  *(*(v3 + 8) + 4 * (v12 + v11)) = ((v6 + 2002850844 + v16 - 897970625) ^ 0x7DDDF3E9) + ((2 * (v6 + 2002850844 + v16 - 897970625)) & 0xFBBBE7D2) - 1213727272;
  v17 = v5 + v12 + 1;
  v18 = (v14 < v7) ^ (v17 < v7);
  v19 = v17 < v14;
  if (v18)
  {
    v19 = v14 < v7;
  }

  return (*(v4 + 8 * (v15 + v19 * v8)))(3396996671, 2111697897, v15 + !v19 * v9, 4223395794, 3081240024, 0x3B7F8FEBAE9EEFF7, 0x15D3DDFEELL, 0xD5D7FF5FD9FFFBECLL);
}

uint64_t sub_100009588(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v4 - 943241842 < v5 + 106640439;
  if (v5 + 106640439 < -1809827690 != v4 - 943241842 < -1809827690)
  {
    v6 = v5 + 106640439 < -1809827690;
  }

  return (*(v3 + 8 * (a3 + 4 * v6)))();
}

uint64_t sub_1000095F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { SUBG            X29, X12, #0x2E0, #5 }

  v22 = a7 - 1;
  v23 = *(*(v16 + 8) + 4 * (v15 + v14));
  *(*(v7 + 8) + 4 * (v15 + v14)) = ((_X12 + v9 - v23 + 2002850845) ^ 0xF7CFFBF5) + ((2 * (_X12 + v9 - v23 + 2002850845)) & 0xEF9FF7EA) + 1035335116;
  v24 = v11 + v15 + 1;
  v25 = (v13 < v12) ^ (v24 < v12);
  v26 = v24 < v13;
  if (v25)
  {
    v26 = v13 < v12;
  }

  return (*(v8 + 8 * (v26 + v22)))(4020238314, 1035335116, 0x757FBFDBF89EFFEFLL, 0x1F13DFFDELL, 0x9BD7CF6F8FFFEBF4);
}

uint64_t sub_1000096E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (v8 == v9 - 1)
  {
    v10 = a7 + 1;
  }

  else
  {
    v10 = a7;
  }

  return (*(v7 + 8 * v10))();
}

uint64_t sub_100009748()
{
  v5 = v4 + 729328119 < -137257729;
  if (v4 + 729328119 >= -137257729)
  {
    v5 = v4 + 729328119 > 2010225920;
  }

  **(v0 + 8) = ((v2 - **(v0 + 8) + 1) ^ 0x7FF7FBE1) + ((2 * (v2 - **(v0 + 8) + 1)) & 0xFFEFF7C2) - 1248987680;
  return (*(v1 + 8 * (v3 + 6 * !v5 - 2)))(619545431);
}

void sub_10000998C(uint64_t a1)
{
  v1 = 520147679 * (a1 ^ 0xD061A127);
  v2 = *(a1 + 16) + v1;
  v3 = *(a1 + 8);
  if ((*a1 ^ v1) + 975590224 <= 0x80000000)
  {
    v4 = *(a1 + 16) + v1;
  }

  else
  {
    v4 = v2 + 1;
  }

  __asm { BRAA            X13, X14 }
}

uint64_t sub_100009A30@<X0>(int a1@<W8>)
{
  v5 = (v3 + 1951180448) & 0x6D359F58;
  v6 = 2145031067 * (&v9 ^ 0x1E282685);
  v10 = a1 ^ v6;
  v11 = v2 - v6 - v5 - 255778052;
  v9 = v1;
  result = (*(&off_100019330 + a1 + 22))(&v9);
  v8 = *(v4 - 8);
  return result;
}

void sub_100009B58(unsigned int *a1)
{
  v1 = a1[4] - 520147679 * (a1 ^ 0xD061A127);
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = 462031038 - *(v3 + 4);
  v6[0] = (523995289 * (v6 ^ 0x98567068)) ^ (v1 - 2);
  v7 = v3;
  (*(&off_100019330 + (v1 + 36)))(v6);
  if (v6[1] == 851002806)
  {
    v5 = v1 + 1;
  }

  else
  {
    v5 = v1;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_100009C60@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v5 - v4) >> 4) & 0xE6DBAFA ^ 0x2058A08) + (((v5 - v4) >> 5) ^ 0xEE743879) - 1931757750;
  if (v2 + 1850577000 < -65891129 != v6 < -65891129)
  {
    v7 = v2 + 1850577000 < -65891129;
  }

  else
  {
    v7 = v2 + 1850577000 > v6;
  }

  return (*(a1 + 8 * (v3 + 6 * v1 + v7)))();
}

uint64_t sub_100009CE8@<X0>(uint64_t a1@<X8>)
{
  v4 = -6 * (v3 ^ 1) - 2 * v3 + v2;
  if ((v1 & 0x1F) != 0xD)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  return (*(a1 + 8 * v5))();
}

uint64_t sub_100009D44@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + 1005582247;
  v7 = *(v4 + 4);
  if (v7 + v5 < 0)
  {
    v6 = 442348193 - v1;
  }

  *(v4 + 4) = v7 + v6 - 723965220;
  v8 = v2 + 923521478;
  v9 = v8 < -992946651;
  **(v4 + 8) = *(*(v4 + 8) + 4 * (v1 + 281617027));
  if (v8 >= -992946651)
  {
    v9 = v8 > 1154536998;
  }

  return (*(a1 + 8 * (!v9 + v3)))(v8 > 1154536998);
}

void sub_10000A010(uint64_t a1, int a2)
{
  if ((a2 & 0x3F000000) == 0x13000000)
  {
    v2 = 10;
  }

  else
  {
    v2 = 9;
  }

  __asm { BRAA            X10, X11 }
}

uint64_t sub_10000A1A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v10 = v8 + a1 * v7;
  v11 = (*(&off_100019330 + v10 - 8))(a7);
  return (*(v9 + 8 * (v10 + 11 * (v11 != 0))))(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10000A258@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, unsigned int a11)
{
  v14 = v12 + a1 - 4;
  a11 = (v14 + 1922602506) ^ (704005591 * (&a10 ^ 0xF7D78CF0));
  (*(&off_100019330 + v11 + v14 + 51))(&a10);
  if (a3 > 1291933660)
  {
    if (a3 <= 1593915355)
    {
      if (a3 == 1291933661)
      {
        v22 = 2;
        goto LABEL_19;
      }

      if (a3 == 1291933662)
      {
        v22 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      switch(a3)
      {
        case 1593915356:
          v22 = 4;
          goto LABEL_19;
        case 1593915357:
          v22 = 6;
          goto LABEL_19;
        case 1593915358:
          v22 = 8;
          goto LABEL_18;
      }
    }

    return (*(v13 + 152))(0, v15, v16, v17, v18, v19, v20, v21, a2);
  }

  if (a3 <= 1291925469)
  {
    if (a3 == 1291925468)
    {
      v22 = 5;
      goto LABEL_19;
    }

    if (a3 == 1291925469)
    {
      v22 = 7;
      goto LABEL_18;
    }

    return (*(v13 + 152))(0, v15, v16, v17, v18, v19, v20, v21, a2);
  }

  if (a3 == 1291925470)
  {
    v22 = 9;
    goto LABEL_19;
  }

  v22 = 0;
  if (a3 != 1291929564)
  {
    if (a3 == 1291929565)
    {
      v22 = 1;
LABEL_18:
      v11 = -1602850950;
      goto LABEL_19;
    }

    return (*(v13 + 152))(0, v15, v16, v17, v18, v19, v20, v21, a2);
  }

LABEL_19:
  v23 = (*(&off_100019330 + v11 + 1602850951))((*(*(&off_100019530 + v11 + 1602851011) + 24 * v22 + 5) - 1302691225));
  if (v23)
  {
    v31 = v11 + 1602850959;
  }

  else
  {
    v31 = v11 + 1602850960;
  }

  return (*(v13 + 8 * (v31 - 4)))(v23, v24, v25, v26, v27, v28, v29, v30, a2);
}

uint64_t sub_10000AA28@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a7 + (a1 - 1)) < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  return (*(v7 + 8 * v9))();
}

uint64_t sub_10000AA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int w8_0@<W8>, uint64_t a9, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (w8_0 == 130)
  {
    v17 = (*(a15 + (v15 - 707765925)) | (*(a15 + (v15 - 707765926)) << 8)) + 4;
    return sub_10000AAF8(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  if (w8_0 == 129)
  {
    v16 = *(a15 + (v15 - 707765926)) + 3;
    return sub_10000AAF8(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return sub_10000AC24();
}

uint64_t sub_10000AAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*(&off_100019330 + v11 - 13))(a9, a2, v9))
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  return (*(v10 + 8 * v12))();
}

uint64_t sub_10000AB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  (*(&off_100019330 + v21 - 3))(v17, a1);
  v23 = (*(&off_100019330 + v21 - 2))(a1);
  v24 = v18 + v20 + 1417158016;
  v25 = (a14 > 0x81583BD7) ^ (v24 < 0x7EA7C428);
  v26 = v24 < a17;
  if (v25)
  {
    v26 = a14 > 0x81583BD7;
  }

  return (*(v19 + 8 * (v21 + v26)))(v23);
}

uint64_t sub_10000AC24()
{
  (*(&off_100019330 + v1 - 1602850954))(v0);
  (*(&off_100019330 + v1 - 1602850959))();
  return 0;
}

void sub_10000ACC8(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4);
  if (v2 + 1916468129 < 0)
  {
    v3 = *(*(a1 + 16) + 4);
  }

  else
  {
    v3 = 462031038 - v2;
  }

  v4 = *(*a1 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(*a1 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  v1 = *(a1 + 8) + 191237807 * (a1 ^ 0xDBC9B6B1);
  __asm { BRAA            X14, X16 }
}

uint64_t sub_10000B198@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  if (*(*(a2 + 8) + 4 * (v5 + 1 + v4)) != v3)
  {
    ++a1;
  }

  return (*(v2 + 8 * a1))();
}

uint64_t sub_10000B1D4(uint64_t a1, int a2)
{
  if ((v3 + v4) <= 0x80000000)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 + 1;
  }

  return (*(v2 + 8 * v5))();
}

uint64_t sub_10000B210(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = 4 * (v15 + v14);
  v18 = (**(v16 + 8) - 897970625) * (a4 - 897970625) + *(a12 + v17) - 897970625;
  *(a12 + v17) = (v18 ^ 0xF7EFFBDB) + ((2 * v18) & 0xEFDFF7B6) + 1033237990;
  v19 = v13 + 260720805 > 491736325;
  if (v13 + 260720805 < -1655747324)
  {
    v19 = 1;
  }

  return (*(v12 + 8 * (v19 + a5 - 1)))();
}

void sub_10000B3A4(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) + 980327533;
  v3 = *(*a1 + 4) + 980327533;
  v4 = (v2 < -936140596) ^ (v3 < -936140596);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -936140596;
  }

  else
  {
    v6 = v5;
  }

  v1 = *(a1 + 16) + 1638185881 * (a1 ^ 0x11FD620);
  __asm { BRAA            X15, X16 }
}

uint64_t sub_10000B43C(uint64_t a1, int a2)
{
  v6 = (v5 ^ 1) + v3;
  v7 = v4 + 222474386;
  v8 = v7 < -1693993743;
  v9 = a2 + 222474386 < v7;
  if (a2 + 222474386 < -1693993743 != v8)
  {
    v9 = v8;
  }

  return (*(v2 + 8 * (v6 + (!v9 & 0xFFFFFFFB | (4 * !v9)))))();
}

uint64_t sub_10000B4A4(uint64_t a1, int a2)
{
  if (a2 + 1916468129 < 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 462031038 - a2;
  }

  return (*(v2 + 8 * (2 * v5 - v4 + v3 - 2 + ((v6 + 1916468128) >> 31))))(a1, (v6 - 1), (2 * v5 - v4 + v3 - 2 + (~(v6 + 1916468128) >> 31)));
}

uint64_t sub_10000B524(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = 4 * (a4 - 231015520);
  v10 = *(*(v5 + 8) + v9) + v8;
  v11 = *(*(v4 + 8) + v9) + v8;
  v12 = v10 < v7;
  v13 = v10 > v11;
  if (v12 != v11 < v7)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(v6 + 8 * ((!v14 & 0xFFFFFFFD | (2 * !v14)) + a3)))();
}

uint64_t sub_10000B590(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v11 = a3 - a7 + 2 * a8;
  v12 = a4 + v10;
  v13 = a6 + v10;
  v14 = a6 + v10 < v9;
  v15 = (v12 < v9) ^ v14;
  v16 = v12 < v13;
  if (v15)
  {
    v16 = v14;
  }

  return (*(v8 + 8 * (v11 + 2 * v16)))();
}

uint64_t sub_10000B624(uint64_t result)
{
  v1 = *(result + 8);
  **(v1 + 8) = 897970626;
  *(v1 + 4) = 231015520;
  return result;
}

uint64_t sub_10000B688(uint64_t a1, _DWORD *a2)
{
  result = 0;
  **(a1 + 24) = *a2 - ((2 * *a2) & 0x8224C6E8) + 1091724148;
  return result;
}

uint64_t sub_10000B6C4(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4);
  if (v2 + 1916468129 < 0)
  {
    v3 = *(*(a1 + 8) + 4);
  }

  else
  {
    v3 = 462031038 - v2;
  }

  v1 = (*a1 ^ (523995289 * (a1 ^ 0x98567068))) - 1;
  return (*(*(&off_100019530 + v1 + 34) + 16 * ((v3 + 1916468129) > 0x80000000) + 8 * v1 - 10))();
}

uint64_t sub_10000B768()
{
  if (*(*(v0 + 8) + 4 * v1) == 897970625)
  {
    ++v2;
  }

  return (*(v3 + 8 * v2))();
}

void sub_10000B7E4(uint64_t a1)
{
  v1 = *a1 ^ (191237807 * (a1 ^ 0xDBC9B6B1));
  if (*(*(a1 + 8) + 4) == 231015519)
  {
    v2 = *a1 ^ (191237807 * (a1 ^ 0xDBC9B6B1));
  }

  else
  {
    v2 = v1 + 1;
  }

  __asm { BRAA            X14, X15 }
}

uint64_t sub_10000B860(uint64_t a1)
{
  if (*(*(a1 + 16) + 4) == v3)
  {
    v5 = v1 + 2 * v4 + 1;
  }

  else
  {
    v5 = v1 + 2 * v4;
  }

  return (*(v2 + 8 * v5))();
}

uint64_t sub_10000B890@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v7 = v1;
  v8 = v2 + 523995289 * (&v6 ^ 0x98567068) - 1;
  result = (*(&off_100019330 + v2 + 60))(&v6);
  v5 = *(v3 - 8);
  return result;
}

uint64_t sub_10000B9D0(_DWORD *a1)
{
  v1 = 1748787863 * (a1 ^ 0x81BAC106);
  v2 = a1[2] - v1;
  v3 = a1[3] ^ v1;
  if (v3 + 1219647055 >= 0)
  {
    v3 = 1855673186 - v3;
  }

  v4 = *(*a1 + 4);
  if (v4 + 1916468129 >= 0)
  {
    v4 = 462031038 - v4;
  }

  return (*(*(&off_100019530 + (v2 + 41)) + 8 * ((v4 + 1498491483 < -417976646 || (((v3 - 927836593) >> 5) + 1729507002) < v4 + 1498491483) + v2) - 7))();
}

void sub_10000BAF4(uint64_t a1)
{
  v1 = *(a1 + 40) + 704005591 * (a1 ^ 0xF7D78CF0);
  v2 = 462031038 - *(*(a1 + 24) + 4);
  v3 = *(a1 + 8);
  if ((*(*(a1 + 32) + 4) - 231015519) * (*(*(a1 + 16) + 4) - 231015519))
  {
    v4 = *(a1 + 40) + 704005591 * (a1 ^ 0xF7D78CF0);
  }

  else
  {
    v4 = v1 + 1;
  }

  __asm { BRAA            X17, X1 }
}

int *sub_10000CA3C(int *result)
{
  if (((result[2] ^ (520147679 * (result ^ 0x5061A127))) & 0x40000000) != 0)
  {
    v1 = 335071851;
  }

  else
  {
    v1 = 335071852;
  }

  *result = v1;
  return result;
}

void sub_10000CA74(uint64_t a1)
{
  v2 = *(a1 + 24) + 56516261 * (a1 ^ 0x15EBF17D);
  v3 = *(a1 + 8);
  v4 = *(v3 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  v6 = *(*(a1 + 16) + 4);
  if (v6 + 1916468129 < 0)
  {
    v7 = *(*(a1 + 16) + 4);
  }

  else
  {
    v7 = 462031038 - v6;
  }

  v13 = v2 - 1748787863 * (&v12 ^ 0x81BAC106);
  v12 = v3;
  (*(&off_100019330 + v2 + 14))(&v12);
  v8 = v5 + 1832243934 < v7 + 1832243934;
  if (v5 + 1832243934 < -84224195 != v7 + 1832243934 < -84224195)
  {
    v8 = v7 + 1832243934 < -84224195;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = *a1;
  if ((v9 + 1916468129) <= 0x80000000)
  {
    v11 = v2;
  }

  else
  {
    v11 = v2 + 1;
  }

  __asm { BRAA            X13, X15 }
}

uint64_t sub_10000CC2C()
{
  v11 = v3 + 494334512;
  v12 = v4 - 6;
  v13 = v11 < -1422133617;
  v14 = 4 * (v9 + v5);
  v15 = v6 - 1954314156 + *(*(v10 + 8) + v14) + v7 + *(*(v8 + 8) + v14) + v7;
  *(*(v0 + 8) + v14) = (v15 ^ 0x3587F7E5) + ((2 * v15) & 0x6B0FEFCA) - 132644;
  if (v13 == v9 - 889120180 < -1422133617)
  {
    v13 = v9 - 889120180 < v11;
  }

  return (*(v1 + 8 * (v12 + v13 * v2)))(4294834652, 0xDFFFEF2E9FC3BE5ELL, 0x13F877CBCLL, 0x23D29DDDEBBFC9F6, 3405847116);
}

uint64_t sub_10000CD40()
{
  if (v3 + 1611036276 < -305431853 != v2 + 227581583 < -305431853)
  {
    v4 = v3 + 1611036276 < -305431853;
  }

  else
  {
    v4 = v2 + 227581583 < v3 + 1611036276;
  }

  return (*(v0 + 8 * (v1 + 8 * v4)))();
}

uint64_t sub_10000CDA0()
{
  v12 = v6 < v4;
  v13 = v5 + v10 + 1;
  v14 = v12 ^ (v13 < v4);
  v15 = v13 < v6;
  if (!v14)
  {
    v12 = v15;
  }

  v16 = 4 * (v10 + v7);
  v17 = v2 + v8 + *(*(v11 + 8) + v16) + v9;
  *(*(v0 + 8) + v16) = (v17 ^ 0xFD9FF9C3) + ((2 * v17) & 0xFB3FF386) + 937818110;
  return (*(v1 + 8 * (v3 + v12 + 2)))();
}

uint64_t sub_10000CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v6 - 1250431509 < v7 + 133023184;
  if (v7 + 133023184 < -1783444945 != v6 - 1250431509 < -1783444945)
  {
    v8 = v7 + 133023184 < -1783444945;
  }

  return (*(v4 + 8 * ((v8 & 0xFFFFFFFD | (2 * v8)) + v5)))((v8 + v5), a2, a3, a4, v8 + v5 + 4 * !v8);
}

uint64_t sub_10000CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a5 - 1;
  v17 = *(*(v14 + 8) + 4 * (v15 + v11));
  *(*(v5 + 8) + 4 * (v15 + v11)) = ((v7 + v12 + v17 + v13) ^ 0x7FD5FDC1) + ((2 * (v7 + v12 + v17 + v13)) & 0xFFABFB82) - 1246759936;
  v18 = v8 + v15 + 1;
  v19 = (v10 < v9) ^ (v18 < v9);
  v20 = v18 < v10;
  if (v19)
  {
    v20 = v10 < v9;
  }

  return (*(v6 + 8 * (v20 + v16)))(0x17F78FEF9F87C957, 0x13F0F92AELL, 0xEBDAFD1CEBFBBEFDLL);
}

uint64_t sub_10000CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (v6 == 0x3D28D0C8B838854)
  {
    v7 = a5 + 1;
  }

  else
  {
    v7 = a5;
  }

  return (*(v5 + 8 * v7))();
}

uint64_t sub_10000D108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 & 0xFFFFFFF7 | (8 * (v3 & 1))) + v2;
  v6 = *(a1 + 16);
  if (v4 == 1281732227)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 + 1;
  }

  return (*(a2 + 8 * v7))();
}

uint64_t sub_10000D28C@<X0>(uint64_t a1@<X8>)
{
  if (v2)
  {
    v3 = v1 + 1;
  }

  else
  {
    v3 = v1;
  }

  return (*(a1 + 8 * v3))();
}

void sub_10000D2A8(int a1@<W5>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = a2 + v4;
  v7 = a2 + 1;
  *(*(v3 + 8) + 4 * v6) = a1;
  v8 = v5 - 6;
  *(v3 + 4) = v7;
  v9 = 462031038 - v7;
  if (v7 + 1916468129 < 0)
  {
    v9 = v7;
  }

  __asm { BRAA            X2, X3 }
}

uint64_t sub_10000D37C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if (v2 <= 0x80000000)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 1;
  }

  return (*(a2 + 8 * v3))();
}

_DWORD *sub_10000D39C(_DWORD *result)
{
  *(v1 + 4) = v3;
  *result = v2;
  return result;
}

void sub_10000D3BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a2;
  v4 = ((&v9[0xFE0588DFA92FB4DFLL] + 6) * 0x2492492492492493uLL) >> 64;
  v14 = 16 * (&v9[0xFE0588DFA92FB4DFLL] - 7 * ((v4 + ((&v9[0xFE0588DFA92FB4DFLL] - v4 + 6) >> 1)) >> 2) + 6);
  v5 = **(a1 + 24);
  if ((v5 & 0x3E000000 | 0x1000000) != 0x13000000)
  {
    JUMPOUT(0x100011A5CLL);
  }

  v9[40] = 0x250197BA3C001668;
  LODWORD(v10) = 1302691225;
  v15[1] = (704005591 * (v15 ^ 0xF7D78CF0)) ^ 0xD2222699;
  nullsub_1(v15);
  v6 = v5 ^ 0x41126374;
  v13 = v5;
  if ((v5 ^ 0x41126374) > 16785409)
  {
    if (v6 <= 318767104)
    {
      if (v6 == 16785410)
      {
        v7 = 2;
      }

      else
      {
        if (v6 != 16785411)
        {
          goto LABEL_27;
        }

        v7 = 3;
      }
    }

    else
    {
      switch(v6)
      {
        case 318767105:
          v7 = 4;
          break;
        case 318767106:
          v7 = 6;
          break;
        case 318767107:
          v7 = 8;
          break;
        default:
          goto LABEL_27;
      }
    }
  }

  else if (v6 <= 16777218)
  {
    if (v6 == 16777217)
    {
      v7 = 5;
    }

    else
    {
      if (v6 != 16777218)
      {
        goto LABEL_27;
      }

      v7 = 7;
    }
  }

  else
  {
    switch(v6)
    {
      case 16777219:
        v7 = 9;
        break;
      case 16781313:
        v7 = 0;
        break;
      case 16781314:
        v7 = 1;
        break;
      default:
LABEL_27:
        JUMPOUT(0x100011344);
    }
  }

  v8 = *(&off_100018CB0 + 35 * (malloc((*(&unk_1000190F8 + 6 * v7 + 4) - 1302691225)) != 0) + 23);
  __asm { BRAA            X8, X11 }
}

uint64_t sub_10001136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  v60 = v55 + v56 * (v59 - 1);
  if (*v57 < (((2 * (8 * a55 - 1848124152)) & 0xF5DD3FF0) + ((8 * a55 - 1848124152) ^ 0x7AEE9FFE) - 2062458878))
  {
    ++v60;
  }

  return (*(v58 + 8 * v60))();
}