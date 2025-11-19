id sub_F94(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1908;
  v3[3] = &unk_41D0;
  v3[4] = a2;
  v3[5] = a1;
  return [a2 dispatchAsyncHighPriority:v3];
}

id sub_1004(int a1, _BYTE *__src, void *a3)
{
  __dst = 0uLL;
  v10 = 0;
  if (gLogCategory_CoreRCInterface <= 10 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_20A8(__src);
  }

  v5 = (__src[16] & 0xF) + 1;
  memcpy(&__dst, __src, (__src[16] & 0xF) + 1);
  LOBYTE(v10) = v5;
  v7 = __dst;
  v8 = v10;
  return [a3 receivedFrame:&v7];
}

id sub_10E8(uint64_t a1, char a2, char a3, __int128 *a4, void *a5)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v5 = *a4;
  v6 = a4[2];
  v7 = a4[3];
  v12 = a4[1];
  v13 = v6;
  v8 = a4[4];
  v14 = v7;
  v15 = v8;
  v10[2] = sub_1914;
  v10[3] = &unk_41F8;
  v10[4] = a5;
  v11 = v5;
  v16 = a2;
  v17 = a3;
  return [a5 dispatchAsyncHighPriority:v10];
}

id sub_11A4(uint64_t a1)
{
  v9 = 0;
  if (([*(a1 + 32) setHardwareAddressMask:objc_msgSend(*(a1 + 32) error:{"addressMask"), &v9}] & 1) == 0 && gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_2100(&v9);
  }

  v2 = *(*(a1 + 32) + 32);
  CECSnoopingEnabled = IOCECInterfaceGetCECSnoopingEnabled();
  if (CECSnoopingEnabled)
  {
    if (gLogCategory_CoreRCInterface <= 60)
    {
      v4 = CECSnoopingEnabled;
      if (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize())
      {
        v7 = "[CECIOCECInterface _open]_block_invoke";
        v8 = v4;
        v6 = *(a1 + 32);
        LogPrintF();
      }
    }
  }

  return [*(a1 + 32) setSnoopingMode:0 error:{0, v6, v7, v8}];
}

id sub_1914(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 120);
  v3 = *(a1 + 121);
  v4 = *(a1 + 56);
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  v7[4] = *(a1 + 104);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  return [v1 _updateStatusWithEDID:v7 HPD:v2 hibernate:v3];
}

id sub_1B18(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_CoreRCInterface <= 50 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    sub_21C8();
  }

  return [a3 addIOCECInterface:a2];
}

uint64_t sub_1FD4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 16);
  return LogPrintF();
}

void sub_2034()
{
  if (gLogCategory_CoreRCInterface <= 120 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}