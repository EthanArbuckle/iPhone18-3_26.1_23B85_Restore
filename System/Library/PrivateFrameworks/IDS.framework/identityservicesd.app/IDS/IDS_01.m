uint64_t sub_100028A48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100028A98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100936038();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100028BA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100936038();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100028C4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028C84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028CBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028CF4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028D3C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100028DE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100028E24()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100028E64()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100706B30(&qword_100CB6320);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100028E94()
{
  v1 = sub_100936038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1007156D8(*(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100028F84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028FBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028FF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029040()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029078(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100936038();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100029124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100936038();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000291C8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100029220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000292CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100029370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100936038();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002941C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100936038();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000294C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002957C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100029804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100706B30(&qword_100CB4AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100936038();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100029934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_100706B30(&qword_100CB4AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100936038();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100029A64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029AA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029AF0()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100029B48()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100029BA0()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100029C08()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029C58()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029CA8()
{
  v1 = sub_100936038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 28) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100029D30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029D70()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100029DA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029DE0()
{
  v1 = sub_100706B30(&qword_100CBA370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100029E74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029EAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029EEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029F44()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100029FAC()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002A00C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002A178(mach_port_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t *a5, void *a6, unsigned int *a7)
{
  v19 = 1;
  v20 = a3;
  v21 = 16777472;
  v22 = a4;
  v23 = NDR_record;
  v24 = __PAIR64__(a4, a2);
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x3Cu, 0x48u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v16 = 4294966988;
  }

  else if (msg.msgh_id == 1300)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v16 = 4294966996;
      if (v19 == 1 && msg.msgh_size == 64 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
      {
        v17 = v22;
        if (v22 == v25)
        {
          *a5 = v24;
          *a6 = v20;
          *a7 = v17;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v16 = 4294966996;
      if (HIDWORD(v20))
      {
        if (msg.msgh_remote_port)
        {
          v16 = 4294966996;
        }

        else
        {
          v16 = HIDWORD(v20);
        }
      }
    }

    else
    {
      v16 = 4294966996;
    }
  }

  else
  {
    v16 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v16;
}

uint64_t sub_10002A374(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = 1;
  v13 = a4;
  v14 = 16777472;
  v15 = a5;
  v16 = NDR_record;
  v17 = a2;
  v18 = a3;
  v19 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x44u, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v9;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v9;
  }

  if (msg.msgh_id != 1301)
  {
    v9 = 4294966995;
    goto LABEL_18;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v9 = HIDWORD(v13);
  if (HIDWORD(v13))
  {
    goto LABEL_18;
  }

  return v9;
}

uint64_t sub_10002A4F4(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v18 = 1;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = NDR_record;
  v23 = a2;
  v24 = a3;
  v25 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x44u, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v13;
  }

  if (msg.msgh_id == 71)
  {
    v15 = 4294966988;
  }

  else if (msg.msgh_id == 1302)
  {
    if ((msg.msgh_bits & 0x80000000) != 0)
    {
      v15 = 4294966996;
      if (v18 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
      {
        v16 = v21;
        if (v21 == v23)
        {
          *a6 = v19;
          *a7 = v16;
          return 0;
        }
      }
    }

    else if (msg.msgh_size == 36)
    {
      v15 = 4294966996;
      if (HIDWORD(v19))
      {
        if (msg.msgh_remote_port)
        {
          v15 = 4294966996;
        }

        else
        {
          v15 = HIDWORD(v19);
        }
      }
    }

    else
    {
      v15 = 4294966996;
    }
  }

  else
  {
    v15 = 4294966995;
  }

  mach_msg_destroy(&msg);
  return v15;
}

uint64_t sub_10002A6EC(mach_port_t a1, unsigned int a2, uint64_t a3)
{
  v10 = NDR_record;
  v11 = a2;
  v12 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(&msg, 3, 0x2Cu, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v7;
  }

  if (v6)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v7;
  }

  else
  {
    if (msg.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      v7 = 4294966996;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v7 = v11;
        if (!v11)
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&msg);
    return v7;
  }
}

uint64_t sub_10002A920()
{
  result = (*(v3 + 8 * (v0 + 49)))(v2);
  *(v1 + 4) = 0;
  return result;
}

void sub_10002AAD4(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (801985777 * ((2 * (a1 & 0x3D6FE1E) - a1 + 2083062241) ^ 0x9B5855C0));
  v2 = *a1;
  v3 = **(&off_100BEC6B0 + v1 - 59);
  strcpy(v6, "com.apple.absd");
  v4 = *(&off_100BEC6B0 + (v1 ^ 0x39));
  v5 = *(v4 + 8 * ((((*(v4 + 8 * (v1 ^ 0x50)))(v3, v6, v2) == 0) * ((v1 + 24) ^ 0x3D)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002AD30()
{
  result = (*(v3 + 8 * (v4 + v0 + 6)))(*(v1 + 8 * (v0 ^ (v5 + 52))), nullsub_22);
  *v2 = -1793105400;
  return result;
}

uint64_t sub_10002BE48(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_10002C0A8(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_10002C23C(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_10002C430(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_10002C5B0(int a1)
{
  v1 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC0B0) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((dword_100CBC1F0 + dword_100CBC0B0) ^ 0xDF))] ^ 0xAD]) + 340);
  v2 = *(v1 - 4);
  v3 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - v2) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 - v2) ^ 0xDF))] ^ 0x21]) + 72);
  v4 = &v7[*v3 - v2];
  *(v1 - 4) = 2054362027 * v4 + 0xB4207763EF64BDFLL;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v5 = 1824088897 * ((((2 * v8) | 0x8AE3169E) - v8 - 1165069135) ^ 0x1D18582D);
  v8[0] = a1 - ((2 * a1) & 0xEEEA6432) - v5 + 2004169241;
  v8[1] = 4588 - v5;
  LOBYTE(v3) = -85 * (*(v1 - 4) ^ 0xDF ^ *v3);
  (*(*(&off_100BFFA10 + ((-85 * (dword_100CBC0B0 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC0B0 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xD9]) + 49) + (byte_1009C9D6C[(byte_1009E331C[v3 - 12] ^ 0x71) - 12] ^ v3) + 9490))(v8);
  return (v8[2] - 16257999);
}

uint64_t sub_10002C7DC()
{
  v0 = *(&off_100BFFA10 + ((-85 * (dword_100CBC0B8 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC0B8 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x71]) - 153);
  v1 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + *v0) ^ 0xDF))] ^ 0x71] ^ (-85 * ((dword_100CBC1F0 + *v0) ^ 0xDF))) + 42);
  v2 = 2054362027 * (&v4[*v1 - *v0] ^ 0xB4207763EF64BDFLL);
  *v0 = v2;
  *v1 = v2;
  LODWORD(v2) = 2048652491 * ((-1408681008 - (v5 | 0xAC093BD0) + (v5 | 0x53F6C42F)) ^ 0xE247532A);
  v5[1] = v2 + 6464;
  v5[2] = v2 ^ 0x31E6DAA;
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  (*(*(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC0B8) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 + dword_100CBC0B8) ^ 0xDF))] ^ 0xEE]) + 163) + (v1 ^ byte_1009C9D60[byte_1009E3310[v1] ^ 0xE2]) + 9566))(v5);
  return (v5[0] - 16257999);
}

uint64_t sub_10002CBF4(uint64_t a1)
{
  v1 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBEA8) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - dword_100CBBEA8) ^ 0xDF))] ^ 0x6D]) + 263);
  v2 = *(v1 - 4);
  v3 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * (v2 ^ dword_100CBC1F0 ^ 0xDF))] ^ 0x71] ^ (-85 * (v2 ^ dword_100CBC1F0 ^ 0xDF))) + 42);
  v4 = (*v3 - v2) ^ &v6;
  *(v1 - 4) = 2054362027 * (v4 - 0xB4207763EF64BDFLL);
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v8 = a1;
  v7 = 1358806181 * ((&v7 - 1785614571 - 2 * (&v7 & 0x9591AF15)) ^ 0xAABEC396) + 3363;
  LODWORD(v3) = 2054362027 * ((*v3 - *(v1 - 4)) ^ 0x3EF64BDF);
  return (*(*(&off_100BFFA10 + ((-85 * (dword_100CBBEA8 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * (dword_100CBBEA8 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x67]) + 221) + (v3 ^ byte_1009C9D60[byte_1009E3310[v3] ^ 0xB1]) + 9614))(&v7);
}

uint64_t sub_10002CDDC(uint64_t a1)
{
  v1 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC0E0) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((dword_100CBC1F0 - dword_100CBC0E0) ^ 0xDF))] ^ 0x80]) + 160);
  v2 = *(v1 - 4);
  v3 = *(&off_100BFFA10 + (byte_1009C9D6C[(byte_1009E331C[(-85 * ((dword_100CBC1F0 - v2) ^ 0xDF)) - 12] ^ 0xD9) - 12] ^ (-85 * ((dword_100CBC1F0 - v2) ^ 0xDF))) - 29);
  v4 = 2054362027 * (((*v3 ^ v2) - &v6) ^ 0xB4207763EF64BDFLL);
  *(v1 - 4) = v4;
  *v3 = v4;
  v8 = a1;
  v7 = 1710126949 * (((&v7 | 0x4F7BBA73) + (~&v7 | 0xB084458C)) ^ 0x7D60E1E2) + 8752;
  LOBYTE(v3) = -85 * ((*v3 - *(v1 - 4)) ^ 0xDF);
  return (*(*(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC0E0) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - dword_100CBC0E0) ^ 0xDF))] ^ 0x1F]) + 191) + (byte_1009DB0B8[(byte_1009D41D0[v3] ^ 0x2A) - 8] ^ v3) + 9490))(&v7);
}

uint64_t sub_10002CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(&off_100BFFA10 + ((-85 * (dword_100CBC338 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9B60[byte_1009E3210[(-85 * (dword_100CBC338 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xDD]) - 23);
  v5 = *(v4 - 4);
  v6 = *(&off_100BFFA10 + (byte_1009C9D6C[(byte_1009E331C[(-85 * ((dword_100CBC1F0 - v5) ^ 0xDF)) - 12] ^ 0xD9) - 12] ^ (-85 * ((dword_100CBC1F0 - v5) ^ 0xDF))) - 29);
  v7 = v5 - &v9 + *v6;
  *(v4 - 4) = 2054362027 * v7 + 0x1FC86B74B1533AF5;
  *v6 = 2054362027 * (v7 ^ 0xB4207763EF64BDFLL);
  v12 = a3;
  v13 = a2;
  v11 = a1;
  v15 = a4;
  v14 = (31943069 * ((-1345080899 - (&v10 | 0xAFD3B1BD) + (&v10 | 0x502C4E42)) ^ 0x3385083A)) ^ 0x1649;
  LOBYTE(v6) = -85 * ((*v6 - *(v4 - 4)) ^ 0xDF);
  (*(*(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC338) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - dword_100CBC338) ^ 0xDF))] ^ 0x71]) + 120) + (byte_1009DAFB8[(byte_1009D40D8[v6 - 8] ^ 0x6D) - 8] ^ v6) + 9599))(&v10);
  return (v10 - 16257999);
}

uint64_t sub_10002D27C(uint64_t a1)
{
  v2 = *(&off_100BFFA10 + ((-85 * (dword_100CBC238 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC238 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xB1]) + 152);
  v3 = *(v2 - 4);
  v4 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[(-85 * ((dword_100CBC1F0 - v3) ^ 0xDF)) - 8] ^ 0x6D) - 8] ^ (-85 * ((dword_100CBC1F0 - v3) ^ 0xDF))) + 184);
  v5 = 2054362027 * ((*v4 - v3 - &v8) ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v10) = (2048652491 * ((&v9 - 1498806199 - 2 * (&v9 & 0xA6AA0849)) ^ 0x171B9F4C)) ^ 0x505;
  v9 = a1;
  LOBYTE(v5) = -85 * (*(v2 - 4) ^ 0xDF ^ *v4);
  v6 = *(&off_100BFFA10 + ((-85 * (dword_100CBC238 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * (dword_100CBC238 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x67]) + 221) - 8;
  (*&v6[8 * (byte_1009C9D6C[(byte_1009E331C[v5 - 12] ^ 0xB1) - 12] ^ v5) + 77680])(&v9);
  HIDWORD(v9) = 3673 - 1875091903 * ((&v9 - 468934885 - 2 * (&v9 & 0xE40C9F1B)) ^ 0xD2791C98);
  v10 = a1;
  (*&v6[8 * (byte_1009D3FDC[(byte_1009C9A60[(-85 * ((*v4 - *(v2 - 4)) ^ 0xDF))] ^ 0xEE) - 12] ^ (-85 * ((*v4 - *(v2 - 4)) ^ 0xDF))) + 76848])(&v9);
  return (v9 - 16257999);
}

uint64_t sub_10002D540(uint64_t a1)
{
  v1 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC0D8) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((dword_100CBC1F0 - dword_100CBC0D8) ^ 0xDF))] ^ 0xAD]) + 339);
  v2 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - *v1) ^ 0xDF))] ^ 0x71] ^ (-85 * ((dword_100CBC1F0 - *v1) ^ 0xDF))) + 42);
  v3 = (*v2 - *v1) ^ &v5;
  *v1 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v7 = a1;
  v8 = 4383 - 33731311 * ((((&v6 | 0xDF4467CC) ^ 0xFFFFFFFE) - (~&v6 | 0x20BB9833)) ^ 0x194D5210);
  LOBYTE(v2) = -85 * ((*v2 + *v1) ^ 0xDF);
  (*(*(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC0D8) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - dword_100CBC0D8) ^ 0xDF))] ^ 0x1F]) + 191) + (v2 ^ byte_1009C9D60[byte_1009E3310[v2] ^ 0xE9]) + 9416))(&v6);
  return v6;
}

uint64_t sub_10002D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x280] = v8 - 208;
  v9 = STACK[0x2A8];
  STACK[0x2B0] = *(STACK[0x2A8] + 8 * (v6 - 3756));
  LODWORD(STACK[0x270]) = (a6 ^ 0xB20) + 191781780;
  LODWORD(STACK[0x290]) = a6 + 4099;
  return (*(v9 + 8 * ((46 * (((v6 + 69 + v6 + 70) ^ (*v7 == 0)) & 1)) ^ (v6 + 4166))))(9798, 0xAB3042D228875C41, 0x9508DCB2F33ECE2BLL, a4, 0x5963B6C555D97F1FLL);
}

uint64_t sub_10002DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = 1824088897 * ((-1644784137 - (&a14 | 0x9DF695F7) + (&a14 | 0x62096A08)) ^ 0x3A60B96A);
  a16 = a13;
  a17 = &a11;
  a15 = v23 - 793139351;
  a18 = -654855621 - v23;
  a19 = v23 + v20 + 1674575641;
  v24 = (*(v19 + 8 * (v20 ^ 0x2819u)))(&a14);
  return (*(v19 + 8 * (((a14 == v22) * (25 * (v20 ^ (v21 + 868) ^ (v21 + 3822)) - 976)) ^ v20)))(v24);
}

uint64_t sub_10002DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v71 + 8 * (v72 ^ 0x3247)))();
  v74 = STACK[0x85C];
  STACK[0x628] = STACK[0x628] + ((a71 - 6015) | 0x301u) - 917;
  return (*(v71 + 8 * ((418 * (v74 == 16257999)) ^ (a71 - 3969))))(v73);
}

uint64_t sub_10002DCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, uint64_t *a20)
{
  a19 = (v21 - 1814) ^ (1710126949 * ((&a15 - 1186890583 - 2 * (&a15 & 0xB9417CA9)) ^ 0x8B5A2739));
  a20 = &a9;
  a17 = a14;
  a18 = &a13;
  (*(v20 + 8 * ((v21 - 2021) ^ 0x2958)))(&a15);
  a16 = (v21 - 1920) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  a17 = a14;
  a18 = &a11;
  (*(v20 + 8 * ((v21 - 2021) ^ 0x295E)))(&a15);
  a17 = a14;
  LODWORD(a18) = v21 - 2021 - 2008441969 * (((&a15 | 0x6B1A8DA2) - (&a15 & 0x6B1A8DA2)) ^ 0x2383D9AC) + 2534;
  v23 = (*(v20 + 8 * (v21 + 4479)))(&a15);
  return (*(v20 + 8 * (((a15 == v22) * ((v21 - 2021) ^ 0x15DD)) ^ (v21 - 2021))))(v23);
}

uint64_t sub_10002DE40(uint64_t a1)
{
  LODWORD(STACK[0x714]) = v3;
  STACK[0x8B8] = *(v2 + 8 * (v1 - 5546));
  STACK[0x5B8] = &STACK[0x8F8];
  v4 = STACK[0x8F8];
  STACK[0x4E0] = STACK[0x8F8];
  return (*(v2 + 8 * (((v4 == 0) * ((((v1 - 5507) | 0x2125) - 2978) ^ 0x1691 ^ (11 * (((v1 - 5507) | 0x2125) ^ 0x2342)))) ^ ((v1 - 5507) | 0x2125))))(a1, 197499219);
}

uint64_t sub_10002DECC(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  *a2 = 0;
  *a3 = 0;
  a13 = 476323082 - 1710126949 * ((((&a13 | 0x604B9BC4) ^ 0xFFFFFFFE) - (~&a13 | 0x9FB4643B)) ^ 0xADAF3FAB);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((4775 * (a14 == 16257999)) ^ 0xEACu)))(v15);
}

uint64_t sub_10002DF94()
{
  v2 = (*(v1 + 8 * (v0 + 3394)))(32, 0x103004054B5FA7DLL);
  STACK[0x7C0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0xFA3) - 4428) ^ 0x69B)) ^ v0)))();
}

uint64_t sub_10002E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = 1317436891 * (((&a17 | 0x2FADFC9A) - &a17 + (&a17 & 0xD0520360)) ^ 0x9FAE64EC) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((7887 * (a18 == ((v21 + 1935) ^ 0x891))) ^ v19)))(v22);
}

uint64_t sub_10002E120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = v16 - 3792 - 1710126949 * ((2085322980 - (&a14 | 0x7C4B80E4) + (&a14 | 0x83B47F1B)) ^ 0xB1AF248B) + 476321169;
  v17 = (*(v15 + 8 * ((v16 - 3792) ^ 0x22DD)))(&a14);
  return (*(v15 + 8 * (((a15 == 16257999) * (((v16 - 9) | 0x24) - 5583)) ^ (v16 - 3792))))(v17);
}

uint64_t sub_10002E23C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2 + 688;
  (*(a1 + 8 * (v2 + 5957)))(a2);
  v4 = STACK[0x3E8];
  *(STACK[0x500] + 24) = 0;
  v5 = (*(v4 + 8 * (v3 + 5269)))();
  STACK[0x500] = 0;
  return sub_10017D8D8(v5, v6, v7);
}

uint64_t sub_10002E358(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3F8] - 8603;
  LODWORD(STACK[0x330]) = 17168;
  return sub_100162C60(a1, a2, v2);
}

uint64_t sub_10002E388()
{
  (*(v1 + 8 * (v2 ^ 0x3247)))();
  *(v0 + 24) = 0;
  (*(v1 + 8 * ((v2 ^ 0x1327) + 8352)))(STACK[0x7C0]);
  return sub_100034AA8();
}

uint64_t sub_10002E3E0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x908] = *(v2 + 8 * v1);
  LODWORD(STACK[0xB44]) = -213646401;
  STACK[0xB48] = &STACK[0x7E8];
  return (*(v2 + 8 * ((238 * (((((v1 - 58) ^ 0xB1) + 26) ^ (a1 == 0)) & 1)) ^ (v1 + 4806))))();
}

uint64_t sub_10002E46C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int64x2_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, int8x16_t a39, int8x16_t a40, int64x2_t a41, int8x16_t a42, int64x2_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, int64x2_t a47, int8x16_t a48, uint64_t a49, uint64_t a50, int8x16_t a51)
{
  v62 = a1 - 16;
  *&STACK[0x360] = *(a5 + v62 - 16);
  v63.i64[0] = a5 + v62 - 1;
  v63.i64[1] = v52 + v62;
  v64.i64[0] = a5 + v62 - 3;
  v64.i64[1] = a5 + v62 - 4;
  v65.i64[0] = a5 + v62 - 5;
  v65.i64[1] = a5 + v62 - 6;
  v66.i64[0] = a5 + v62 - 7;
  v66.i64[1] = a5 + v62 - 8;
  v67.i64[0] = a5 + v62 - 9;
  v67.i64[1] = a5 + v62 - 10;
  v68.i64[0] = a5 + v62 - 11;
  v68.i64[1] = a5 + v62 - 12;
  v69.i64[0] = a5 + v62 - 13;
  v69.i64[1] = a5 + v62 - 14;
  v70.i64[0] = a5 + v62 - 15;
  v70.i64[1] = a5 + v62 - 16;
  v71.i64[0] = a4 + v62 - 15;
  v71.i64[1] = a4 + v62 - 16;
  *&STACK[0x310] = v71;
  v72 = vandq_s8(v70, a38);
  v73 = vandq_s8(v69, a38);
  v74 = vandq_s8(v68, a38);
  v75 = vandq_s8(v67, a38);
  v76 = vandq_s8(v66, a38);
  v77 = vandq_s8(v65, a38);
  v78 = vandq_s8(v64, a38);
  v79 = vandq_s8(v63, a38);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), *&STACK[0x280]);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), *&STACK[0x280]);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), *&STACK[0x280]);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), *&STACK[0x280]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), *&STACK[0x280]);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), *&STACK[0x280]);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), *&STACK[0x280]);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), *&STACK[0x280]);
  v88 = veorq_s8(v87, *&STACK[0x270]);
  v89 = veorq_s8(v86, *&STACK[0x270]);
  v90 = veorq_s8(v85, *&STACK[0x270]);
  v91 = veorq_s8(v84, *&STACK[0x270]);
  v92 = veorq_s8(v83, *&STACK[0x270]);
  v93 = veorq_s8(v82, *&STACK[0x270]);
  v94 = veorq_s8(v81, *&STACK[0x270]);
  v95 = veorq_s8(v80, *&STACK[0x270]);
  v96 = veorq_s8(v80, *&STACK[0x260]);
  v97 = veorq_s8(v81, *&STACK[0x260]);
  v98 = veorq_s8(v82, *&STACK[0x260]);
  v99 = veorq_s8(v83, *&STACK[0x260]);
  v100 = veorq_s8(v84, *&STACK[0x260]);
  v101 = veorq_s8(v85, *&STACK[0x260]);
  v102 = veorq_s8(v86, *&STACK[0x260]);
  v103 = veorq_s8(v87, *&STACK[0x260]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x250]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97), *&STACK[0x250]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v98), *&STACK[0x250]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v99), *&STACK[0x250]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v100), *&STACK[0x250]);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v101), *&STACK[0x250]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v102), *&STACK[0x250]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v103), *&STACK[0x250]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v113 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v114 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v115 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v116 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v117 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v118 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v119 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v119);
  v128 = vaddq_s64(v126, v118);
  v129 = vaddq_s64(v125, v117);
  v130 = vaddq_s64(v124, v116);
  v131 = vaddq_s64(v123, v115);
  v132 = vaddq_s64(v122, v114);
  v133 = vaddq_s64(v121, v113);
  v134 = vaddq_s64(v120, v112);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), *&STACK[0x240]), v134), *&STACK[0x230]), *&STACK[0x220]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), *&STACK[0x240]), v133), *&STACK[0x230]), *&STACK[0x220]);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), *&STACK[0x240]), v132), *&STACK[0x230]), *&STACK[0x220]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), *&STACK[0x240]), v131), *&STACK[0x230]), *&STACK[0x220]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), *&STACK[0x240]), v130), *&STACK[0x230]), *&STACK[0x220]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), *&STACK[0x240]), v129), *&STACK[0x230]), *&STACK[0x220]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), *&STACK[0x240]), v128), *&STACK[0x230]), *&STACK[0x220]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x240]), v127), *&STACK[0x230]), *&STACK[0x220]);
  v143 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v147 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v148 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v149 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v150 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v151 = veorq_s8(v138, v146);
  v152 = veorq_s8(v137, v145);
  v153 = veorq_s8(v136, v144);
  v154 = veorq_s8(v135, v143);
  v155 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v154);
  v163 = vaddq_s64(v161, v153);
  v164 = vaddq_s64(v160, v152);
  v165 = vaddq_s64(v159, v151);
  v166 = vaddq_s64(v158, v150);
  v167 = vaddq_s64(v157, v149);
  v168 = vaddq_s64(v156, v148);
  v169 = vaddq_s64(v155, v147);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x210]), v169), *&STACK[0x200]), a51);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), *&STACK[0x210]), v168), *&STACK[0x200]), a51);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), *&STACK[0x210]), v167), *&STACK[0x200]), a51);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), *&STACK[0x210]), v166), *&STACK[0x200]), a51);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), *&STACK[0x210]), v165), *&STACK[0x200]), a51);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), *&STACK[0x210]), v164), *&STACK[0x200]), a51);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), *&STACK[0x210]), v163), *&STACK[0x200]), a51);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x210]), v162), *&STACK[0x200]), a51);
  v178 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v182 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v183 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v184 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v185 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v186 = veorq_s8(v173, v181);
  v187 = veorq_s8(v172, v180);
  v188 = veorq_s8(v171, v179);
  v189 = veorq_s8(v170, v178);
  v190 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v189);
  v198 = vaddq_s64(v196, v188);
  v199 = vaddq_s64(v195, v187);
  v200 = vaddq_s64(v194, v186);
  v201 = vaddq_s64(v193, v185);
  v202 = vaddq_s64(v192, v184);
  v203 = vaddq_s64(v191, v183);
  v204 = vaddq_s64(v190, v182);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), a48), v204), a47), a46);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), a48), v203), a47), a46);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), a48), v202), a47), a46);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), a48), v201), a47), a46);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), a48), v200), a47), a46);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199, v199), a48), v199), a47), a46);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), a48), v198), a47), a46);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), a48), v197), a47), a46);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v214 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v215 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v216 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v217 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v218 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v219 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v220 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v221 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v220);
  v229 = veorq_s8(vaddq_s64(v221, v213), *&STACK[0x370]);
  v230 = veorq_s8(vaddq_s64(v222, v214), *&STACK[0x370]);
  v231 = veorq_s8(vaddq_s64(v223, v215), *&STACK[0x370]);
  v232 = veorq_s8(vaddq_s64(v224, v216), *&STACK[0x370]);
  v233 = veorq_s8(vaddq_s64(v225, v217), *&STACK[0x370]);
  v234 = veorq_s8(vaddq_s64(v226, v218), *&STACK[0x370]);
  v235 = veorq_s8(vaddq_s64(v227, v219), *&STACK[0x370]);
  v236 = veorq_s8(v228, *&STACK[0x370]);
  v237 = *&STACK[0x370];
  v238 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v245 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v246 = veorq_s8(v235, v244);
  v247 = veorq_s8(v234, v243);
  v248 = veorq_s8(v233, v242);
  v249 = veorq_s8(v232, v241);
  v250 = veorq_s8(v231, v240);
  v251 = veorq_s8(v230, v239);
  v252 = veorq_s8(v229, v238);
  v253 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v257 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v252);
  v261 = veorq_s8(vaddq_s64(v253, v245), a45);
  v262 = veorq_s8(vaddq_s64(v254, v246), a45);
  v263 = veorq_s8(vaddq_s64(v255, v247), a45);
  v264 = veorq_s8(vaddq_s64(v256, v248), a45);
  v265 = veorq_s8(vaddq_s64(v257, v249), a45);
  v266 = veorq_s8(vaddq_s64(v258, v250), a45);
  v267 = veorq_s8(vaddq_s64(v259, v251), a45);
  v268 = veorq_s8(v260, a45);
  v269 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v270 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v273 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v274 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v275 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v276 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v277 = veorq_s8(v264, v272);
  v278 = veorq_s8(v263, v271);
  v279 = veorq_s8(v262, v270);
  v280 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v281 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v286 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v250.i64[0] = a4 + v62 - 7;
  v250.i64[1] = a4 + v62 - 8;
  v287 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), veorq_s8(v261, v269));
  v249.i64[0] = a4 + v62 - 5;
  v249.i64[1] = a4 + v62 - 6;
  v288 = vaddq_s64(v286, v279);
  v71.i64[0] = a4 + v62 - 3;
  v71.i64[1] = a4 + v62 - 4;
  *&STACK[0x2C0] = v71;
  v289 = vaddq_s64(v285, v278);
  v290.i64[0] = a4 + v62 - 1;
  v290.i64[1] = a6 + v62;
  *&STACK[0x2E0] = v290;
  v291 = vaddq_s64(v284, v277);
  v292 = vaddq_s64(v283, v276);
  v293 = vaddq_s64(v282, v275);
  v294 = vaddq_s64(v281, v274);
  v295 = vaddq_s64(v280, v273);
  v296 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v289, v289), a44), v289), a43);
  v297 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v293, v293), a44), v293), a43);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v294, v294), a44), v294), a43), a42);
  v299 = vandq_s8(vshlq_n_s64(v67, 3uLL), a37);
  *&STACK[0x2F0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v287, v287), a44), v287), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), a37)));
  *&STACK[0x300] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), a44), v288), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), a37)));
  v300 = vshlq_u64(veorq_s8(v296, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), a37)));
  v301 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v291, v291), a44), v291), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v66, 3uLL), a37)));
  *&STACK[0x340] = vshlq_u64(veorq_s8(v297, a42), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a37)));
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v292, v292), a44), v292), a43), a42), vnegq_s64(v299));
  *&STACK[0x320] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v295, v295), a44), v295), a43), a42), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a37)));
  *&STACK[0x330] = vshlq_u64(v298, vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a37)));
  v302 = vandq_s8(v290, a38);
  v303 = vandq_s8(v71, a38);
  v304 = vandq_s8(v249, a38);
  v305 = vandq_s8(v250, a38);
  v306 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL);
  v310 = vorrq_s8(vaddq_s64(v306, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v311 = vorrq_s8(vaddq_s64(v307, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v312 = vorrq_s8(vaddq_s64(v308, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v313 = vorrq_s8(vsubq_s64(*&STACK[0x390], v306), *&STACK[0x380]);
  v314 = vorrq_s8(vsubq_s64(*&STACK[0x390], v307), *&STACK[0x380]);
  v315 = vorrq_s8(vsubq_s64(*&STACK[0x390], v308), *&STACK[0x380]);
  *&STACK[0x2D0] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v309), *&STACK[0x380]), vorrq_s8(vaddq_s64(v309, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v316 = vaddq_s64(v315, v312);
  v317 = vsubq_s64(a41, vaddq_s64(v313, v310));
  v318 = vsubq_s64(a41, vaddq_s64(v314, v311));
  v319 = vsubq_s64(a41, v316);
  v320 = veorq_s8(v318, a40);
  v321 = veorq_s8(v317, a40);
  v322 = veorq_s8(v317, a39);
  v323 = veorq_s8(v318, a39);
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v323);
  v325 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v326 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v325, v325), a36), v325), a35), a34);
  v327 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v324, v324), a36), v324), a35), a34);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v329 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v330 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), a33);
  v331 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v329), a33);
  v332 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v333 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL));
  v334 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v335 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), v333);
  v336 = vdupq_n_s64(v60);
  v337 = veorq_s8(vaddq_s64(v334, v332), v336);
  v338 = veorq_s8(v335, v336);
  v339 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL));
  v340 = veorq_s8(v337, vsraq_n_u64(vshlq_n_s64(v332, 3uLL), v332, 0x3DuLL));
  v341 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v340);
  v343 = vaddq_s64(v341, v339);
  v344 = vdupq_n_s64(v59);
  v345 = veorq_s8(v343, v344);
  v346 = veorq_s8(v342, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v348 = veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v349 = veorq_s8(v345, v347);
  v350 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v351 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v349);
  v352 = v237;
  v353 = veorq_s8(vaddq_s64(v350, v348), v237);
  v354 = veorq_s8(v351, v237);
  v355 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v356 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v357 = vdupq_n_s64(v53);
  v358 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v355), v357);
  v359 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), v356), v357);
  v360 = v357;
  v361 = vdupq_n_s64(v54);
  v362 = vdupq_n_s64(a7);
  v363 = vdupq_n_s64(v55);
  v364 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v358, v361), vorrq_s8(v358, v362)), v362), v363);
  v365 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v359, v361), vorrq_s8(v359, v362)), v362), v363);
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL)));
  v367 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL)));
  v368 = vdupq_n_s64(v56);
  v369 = vsubq_s64(vandq_s8(vaddq_s64(v367, v367), v368), v367);
  v370 = vsubq_s64(vandq_s8(vaddq_s64(v366, v366), v368), v366);
  v371 = vdupq_n_s64(v57);
  v372 = vaddq_s64(v370, v371);
  v373 = vdupq_n_s64(v58);
  v466.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v369, v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v250, 3uLL), a37))), v301);
  v466.val[2] = veorq_s8(vshlq_u64(veorq_s8(v372, v373), vnegq_s64(vandq_s8(vshlq_n_s64(v249, 3uLL), a37))), v300);
  v374 = veorq_s8(v319, a40);
  v375 = veorq_s8(v319, a39);
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v375);
  v377 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v376, v376), a36), v376), a35), a34);
  v378 = veorq_s8(v377, vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL));
  v379 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v378), a33);
  v380 = veorq_s8(v379, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  *&STACK[0x290] = v336;
  *&STACK[0x2A0] = v344;
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL), v380), v336);
  v382 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL));
  v383 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382), v344);
  v384 = veorq_s8(v383, vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL));
  v385 = v352;
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL), v384), v352);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL));
  *&STACK[0x2B0] = v360;
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v360);
  v389 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v388, v361), vorrq_s8(v388, v362)), v362), v363);
  v301.i64[0] = a4 + v62 - 13;
  v301.i64[1] = a4 + v62 - 14;
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL)));
  v358.i64[0] = a4 + v62 - 11;
  v358.i64[1] = a4 + v62 - 12;
  v391 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v390, v390), v368), v390), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a37)));
  v390.i64[0] = a4 + v62 - 9;
  v390.i64[1] = a4 + v62 - 10;
  *&STACK[0x2C0] = v390;
  v392 = vsubq_s64(a41, *&STACK[0x2D0]);
  v466.val[1] = veorq_s8(v391, *&STACK[0x300]);
  v393 = veorq_s8(v392, a40);
  v394 = veorq_s8(v392, a39);
  v395 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v394);
  v396 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v395, v395), a36), v395), a35), a34);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v398 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL), v397), a33);
  v399 = veorq_s8(v398, vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL));
  v400 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v399), v336);
  v401 = veorq_s8(v400, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  v402 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL), v401), v344);
  v403 = veorq_s8(v402, vsraq_n_u64(vshlq_n_s64(v401, 3uLL), v401, 0x3DuLL));
  v404 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v403), v385);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v406 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v405), v360);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v406, v361), vorrq_s8(v406, v362)), v362), v363);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL));
  v409 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v410 = vandq_s8(v390, a38);
  v411 = vaddq_s64(v409, v408);
  v412 = vandq_s8(v358, a38);
  v413 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v411, v411), v368), v411), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2E0], 3uLL), a37)));
  v414 = vandq_s8(v301, a38);
  v466.val[0] = veorq_s8(v413, *&STACK[0x2F0]);
  v415 = vandq_s8(*&STACK[0x310], a38);
  v416 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL);
  v420 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v416), *&STACK[0x380]), vorrq_s8(vaddq_s64(v416, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v421 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v417), *&STACK[0x380]), vorrq_s8(vaddq_s64(v417, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v417.i64[0] = vqtbl4q_s8(v466, a32).u64[0];
  v466.val[0] = veorq_s8(v421, a40);
  v466.val[1] = veorq_s8(v420, a40);
  v422 = veorq_s8(v420, a39);
  v466.val[2] = veorq_s8(v421, a39);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL), v466.val[2]);
  v466.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v422);
  v466.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466.val[1], v466.val[1]), a36), v466.val[1]), a35), a34);
  v466.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v466.val[0], v466.val[0]), a36), v466.val[0]), a35), a34);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v423 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v423), a33);
  v466.val[0] = veorq_s8(v466.val[0], a33);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v424 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v424), *&STACK[0x290]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x290]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v425 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v425), *&STACK[0x2A0]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x2A0]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL);
  v426 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v426), *&STACK[0x370]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x370]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v427 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v466.val[1] = veorq_s8(vaddq_s64(v466.val[3], v427), *&STACK[0x2B0]);
  v466.val[0] = veorq_s8(v466.val[0], *&STACK[0x2B0]);
  v466.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466.val[1], v361), vorrq_s8(v466.val[1], v362)), v362), v363);
  v466.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466.val[0], v361), vorrq_s8(v466.val[0], v362)), v362), v363);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL);
  v428 = veorq_s8(v466.val[0], vsraq_n_u64(vshlq_n_s64(v466.val[2], 3uLL), v466.val[2], 0x3DuLL));
  v466.val[2] = veorq_s8(v466.val[1], v466.val[3]);
  v466.val[3] = vsraq_n_u64(vshlq_n_s64(v466.val[0], 0x38uLL), v466.val[0], 8uLL);
  v466.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466.val[1], 0x38uLL), v466.val[1], 8uLL), v466.val[2]);
  v429 = vaddq_s64(v466.val[3], v428);
  v430 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v418), *&STACK[0x380]), vorrq_s8(vaddq_s64(v418, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v466.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v429, v429), v368), v429), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), a37))), *&STACK[0x320]);
  v466.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v466.val[0], v466.val[0]), v368), v466.val[0]), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v301, 3uLL), a37))), *&STACK[0x330]);
  v431 = veorq_s8(v430, a40);
  v432 = veorq_s8(v430, a39);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), a36), v433), a35), a34);
  v435 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v436 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v435), a33);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437), *&STACK[0x290]);
  v439 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v440 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v439), *&STACK[0x2A0]);
  v441 = veorq_s8(v440, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v442 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v441), *&STACK[0x370]);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v444 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v443), *&STACK[0x2B0]);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, v361), vorrq_s8(v444, v362)), v362), v363);
  v446 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL)));
  v447 = vsubq_s64(a41, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v419), *&STACK[0x380]), vorrq_s8(vaddq_s64(v419, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v466.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v446, v446), v368), v446), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(v358, 3uLL), a37))), *&STACK[0x340]);
  v448 = veorq_s8(v447, a40);
  v449 = veorq_s8(v447, a39);
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v449);
  v451 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v450, v450), a36), v450), a35), a34);
  v452 = veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v453 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v452), a33);
  v454 = veorq_s8(v453, vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL));
  v455 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454), *&STACK[0x290]);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v457 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456), *&STACK[0x2A0]);
  v458 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v459 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v458), *&STACK[0x370]);
  v460 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL));
  v461 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), v460), *&STACK[0x2B0]);
  v462 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v461, v361), vorrq_s8(v461, v362)), v362), v363);
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL)));
  v466.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v463, v463), v368), v463), v371), v373), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), a37))), *&STACK[0x350]);
  v417.i64[1] = vqtbl4q_s8(v466, a32).u64[0];
  v464 = vrev64q_s8(v417);
  *(a4 + v62 - 16) = veorq_s8(vextq_s8(v464, v464, 8uLL), *&STACK[0x360]);
  return (*(v61 + 8 * (((a3 == v62) * v51) ^ a2)))();
}

uint64_t sub_10002E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, ...)
{
  va_start(va, a8);
  v10 = (*(v9 + 8 * (v8 + 3417)))(a8, a2, va) == 0;
  return (*(v9 + 8 * ((v10 * (634 * (v8 ^ 0x1866) + 10397)) ^ v8)))();
}

uint64_t sub_10002E52C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = v4 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((a1 + 1316268477) & 0x1DAB2FCE ^ 0xC66) != (v2 & 0xFFFFFFE0);
  return (*(v3 + 8 * (((4 * v6) | (8 * v6)) ^ (a1 + 1814028345))))();
}

uint64_t sub_10002E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v26 = 1875091903 * ((-622441221 - (&a17 | 0xDAE64CFB) + (&a17 | 0x2519B304)) ^ 0x136C3087);
  a18 = (v23 ^ 0xF83DF7EF) + ((2 * v23) & 0xF07BEFDE) + ((v25 - 1424) | 0x608) + 668905517 + v26;
  a19 = v25 + 4118 + v26;
  a20 = a14;
  (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  v27 = 1875091903 * (&a17 ^ 0x36758383);
  a20 = a14;
  a18 = v27 + ((v22 >> ((v25 - 25) & 0xF7 ^ 0xD5)) ^ 0xF27EF6AF) + ((2 * (v22 >> ((v25 - 25) & 0xF7 ^ 0xD5))) & 0xE4FDED5E) + 765313019;
  a19 = v25 + 4118 + v27;
  (*(v24 + 8 * (v25 + 6039)))(&a17);
  v28 = 1875091903 * ((2 * (&a17 & 0x12F63890) - &a17 - 318126227) ^ 0xDB7C44EE);
  a20 = a14;
  a18 = (v22 ^ 0xE2BEB6BE) + ((2 * v22) & 0xC57D6D7C) + 1029570540 + v28;
  a19 = v25 + 4118 + v28;
  (*(v24 + 8 * (v25 + 6039)))(&a17);
  v29 = 1875091903 * ((426359305 - (&a17 | 0x1969BA09) + (&a17 | 0xE69645F6)) ^ 0xD0E3C675);
  a20 = a14;
  a18 = (v21 ^ 0xA21DF7BA) + ((2 * v21) & 0x443BEF74) + 2113847024 + v29;
  a19 = v25 + 4118 + v29;
  (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  v30 = 1875091903 * ((((&a17 | 0xD826A5F4) ^ 0xFFFFFFFE) - (~&a17 | 0x27D95A0B)) ^ 0x11ACD988);
  a20 = a14;
  a18 = (v20 ^ 0x61DDF7BE) + ((2 * v20) & 0xC3BBEF7C) - 1103184148 + v30;
  a19 = v25 + 4118 + v30;
  v31 = (*(v24 + 8 * (v25 ^ 0x2BBB)))(&a17);
  return (*(v24 + 8 * ((152 * (a17 != 16257999)) ^ v25)))(v31);
}

uint64_t sub_10002E984(uint64_t a1)
{
  *v3 = a1;
  *v2 = v7;
  v5 = (v1 ^ 0xDAC) + 1124;
  v12 = ((v1 ^ 0xDAC) + 2393) ^ (1824088897 * ((&v10 & 0xEEEAEBF | ~(&v10 | 0xEEEAEBF)) ^ 0xA9788222));
  v11 = v8;
  (*(v4 + 8 * (v1 ^ 0x3F61)))(&v10);
  v11 = v9;
  v12 = (v5 + 1269) ^ (1824088897 * (((&v10 | 0x8BD7EBF5) + (~&v10 | 0x7428140A)) ^ 0xD3BE3896));
  (*(v4 + 8 * (v5 ^ 0x3E29)))(&v10);
  return 0;
}

uint64_t sub_10002EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x330];
  v74 = *(a72 + 8 * (v72 - 5489));
  v75 = *STACK[0x3A0];
  v76 = __ROR8__((v75 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = (v76 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v78 = __ROR8__((v76 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v79 = (0xE13B7065743737B0 - ((v78 + v77) | 0xE13B7065743737B0) + ((v78 + v77) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (0xEA42215FB09D0055 - ((v81 + v80) | 0xEA42215FB09D0055) + ((v81 + v80) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (0xFBC8962DEA5A1818 - ((v86 + v85) | 0xFBC8962DEA5A1818) + ((v86 + v85) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((2 * (v89 + v88)) & 0x95D159776768EC9ALL) - (v89 + v88) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0xD800CF627F7DCE02) - (v92 + v91) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  *(v75 + 4) = BYTE1(LODWORD(STACK[0x330])) ^ 0x98 ^ (((((2 * (v95 + v94)) & 0x4CC31BBC7D14A244) - (v95 + v94) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v75 + 4) & 7)));
  v96 = __ROR8__((v75 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((2 * (v96 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v96 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v98 = v97 ^ 0x56CD15ABE79E9D29;
  v97 ^= 0xFE8BF03C7E68EC75;
  v99 = __ROR8__(v98, 8);
  v100 = (((2 * (v99 + v97)) & 0x42379E9795A534D6) - (v99 + v97) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v101 = v100 ^ __ROR8__(v97, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) | 0xF087926224A8E20ALL) - (v102 + v101) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x5963B6C555D97F1FLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x61459D2AF01F24F7;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x8BD1FBA0C354CF8ELL) - (v109 + v108) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x1A2AEBE44253AF03;
  v113 = __ROR8__(v112, 8) + (v112 ^ __ROR8__(v111, 61));
  *(v75 + 5) = v73 ^ 0x9E ^ (((0xE4BAC51C5A42204CLL - (v113 | 0xE4BAC51C5A42204CLL) + (v113 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v75 + 5) & 7)));
  return v74();
}

uint64_t sub_10002EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v18 + 8 * ((240 * (*(a1 + 52) + v16 == (((v17 ^ 0x335C) - 1122058173) & 0x42E139FF ^ 0x4E4FAE0) + (v17 ^ 0x335C) + 3236)) ^ v17 ^ 0x335C));
  STACK[0x400] = v18;
  STACK[0x3F8] = v17;
  return v19(a1, 0x100004077774924, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10002F044()
{
  v2 = *(STACK[0x848] + 24);
  STACK[0x778] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * ((869 * (v0 ^ 0x20DD)) ^ 0x17F1)) ^ v0)))();
}

uint64_t sub_10002F094()
{
  v4 = (((*(v2 + 16) ^ 0x9E487F21) + 389820292) ^ (((v1 + 3986) | 0x301) + 563511752 + (*(v2 + 16) ^ 0xA8E2C928)) ^ ((*(v2 + 16) ^ 0xC95549F6) + 1075910997)) + 571796026;
  v5 = v0 - 1734305384 > v4;
  v6 = (v0 > 0x675F6667) ^ (v4 < 0x98A09998);
  v7 = v5;
  if (v6)
  {
    v8 = v0 > 0x675F6667;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((7 * v8) ^ v1)))();
}

uint64_t sub_10002F234(uint64_t a1, int a2)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v4 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (-81 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v6 + 8 * ((2 * (v7 != 0)) | (4 * (v7 != 0)) | (a2 - 2637))))();
}

void sub_10002F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || a4 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10002F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, unsigned int a27)
{
  if (a13 == 925652384)
  {
    v30 = -654855621;
  }

  else
  {
    v30 = 1032869496;
  }

  v31 = ((2 * (&a22 & 0x20AF998) - &a22 + 2113209958) ^ 0x259CD504) * v27;
  a24 = a18;
  a25 = &a20;
  a23 = v31 - 1099733909;
  a26 = v30 - v31;
  a27 = v31 + v29 + 1674574807;
  v32 = (*(v28 + 8 * (v29 ^ 0x355Bu)))(&a22);
  return (*(v28 + 8 * (((a22 == (((v29 - 4223) | 0x400) ^ 0xF8179B)) * (((v29 - 211) | 0x5C0) ^ 0x15F3)) ^ v29)))(v32);
}

uint64_t sub_10002F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15)
{
  v17 = 1875091903 * (&a12 ^ 0x36758383);
  a15 = a10;
  a13 = (v15 ^ 0xB55FF6FF) + ((2 * v15) & 0x6ABFEDFE) + 1790754731 + v17;
  a14 = v17 + 7724;
  v18 = (*(v16 + 77160))(&a12);
  return (*(v16 + 8 * ((1909 * (a12 == 16257999)) ^ 0x10A6u)))(v18);
}

uint64_t sub_10002F670@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned __int8 a30, int a31, unsigned __int8 a32, int a33, unsigned __int8 a34, int a35, int a36, int a37, unsigned __int8 a38, uint64_t a39, unsigned __int8 a40, uint64_t a41, uint64_t a42, unsigned __int8 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = a2 - 72;
  LODWORD(a14) = *(a45 + (a1 ^ 0xF5)) + (a1 ^ 0xFFFFFF22);
  LODWORD(a16) = *(a45 + (a1 ^ 0x57)) + (a1 ^ 0x80);
  LODWORD(a21) = *(a45 + (a1 ^ 5)) + (a1 ^ 0xD2);
  LODWORD(a19) = *(a45 + (a1 ^ 0x23)) + (a1 ^ 0xFFFFFFF4);
  LODWORD(a18) = *(a45 + (a1 ^ 0xD6)) + (a1 ^ 0xFFFFFF01);
  LODWORD(a20) = *(a45 + (a1 ^ 0x41)) + (a1 ^ 0xFFFFFF96);
  v51 = *(a45 + (a1 ^ 0x63));
  LODWORD(a17) = (a1 ^ 0xFFFFFF88 ^ (v51 + (~(2 * v51) | 0xFFFFFF87) + 61)) + 2 * (v51 & (a1 ^ 0xFFFFFFB4));
  LODWORD(a15) = *(a45 + (a1 ^ 0xBBLL)) + (a1 ^ 0x6C);
  v52 = *(a45 + (a1 ^ 0x14)) + (a1 ^ 0xC3);
  v55 = *(a45 + (a36 ^ 0xA5)) + (a36 ^ 0x72);
  v56 = *(a45 + (a38 ^ 0xA5));
  v57 = (a38 ^ 0x72) & 2;
  if ((v56 & v57) != 0)
  {
    v57 = -v57;
  }

  v58 = ((v57 + v56) ^ (a38 ^ 0x72) & 0xFD) + 2 * (v56 & (a38 ^ 0x72));
  v53 = *(a45 + (a30 ^ 0xA5)) + (a30 ^ 0x72);
  v54 = *(a45 + (a32 ^ 0xA5)) + a23;
  v59 = ((((((*(a45 + (a34 ^ 0xA5)) + (a34 ^ 0x72)) ^ a19) << 8) ^ 0x1F50F516) & (((v53 ^ a21) << 16) ^ 0x3FDEFFB7) | ((v53 ^ a21) << 16) & 0xAF0000) ^ 0x6F776AAB) & ((v54 ^ a18) ^ 0x7FFFFFBF) | (v54 ^ a18) & 0x42;
  v60 = ((*(a45 + (a40 ^ 0xA5)) + (a40 ^ 0x72)) ^ v52) ^ 0xFFFFFFF7;
  v61 = ((*(a45 + (a40 ^ 0xA5)) + (a40 ^ 0x72)) ^ v52) & 0x6A;
  v62 = *(v49 + 8 * (a43 & 7 ^ 0x70u));
  v63 = *(v49 + 8 * (((1 << ((v50 + 64) ^ 0xCB)) + (a43 & 7)) ^ 0x70u));
  v64 = a28 ^ 0x12CEFE74FA34B469 ^ v63 ^ (v63 >> 4);
  *(v48 + 8 * (a43 >> 3)) = a28 ^ 0x12CEFE74FA34B469 ^ v62 ^ (v62 >> 4) ^ (v62 >> 1);
  *(v48 + 8 * ((a43 >> 3) ^ 1u)) = v64 ^ (v63 >> 1);
  return (*(a48 + 8 * v50))(v64, ((v58 ^ a15) << 8) & 0xDFFF, v60, v61, (a20 ^ v55 ^ 0xFFFFFFF9) << 24, v59 ^ 0x8FC86040, v59 & 0x635070E, (v50 + 4416), a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10002FD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  v29 = *(v27 + 8);
  *(v28 - 148) = (a19 + 85) ^ (33731311 * (((((v28 - 152) | 0xE6B1C25C) ^ 0xFFFFFFFE) - (~(v28 - 152) | 0x194E3DA3)) ^ 0x20B8F780));
  *(v28 - 144) = v29;
  *(v28 - 136) = &a25;
  (*(v26 + 8 * (a19 ^ 0x292E)))(v28 - 152);
  v30 = *(v27 + 8);
  *(v28 - 136) = a19 - 2008441969 * (((((v28 - 152) | 0xBC3A7A5E) ^ 0xFFFFFFFE) - (~(v28 - 152) | 0x43C585A1)) ^ 0xB5CD1AF) + 2518;
  *(v28 - 144) = v30;
  v31 = (*(v26 + 8 * (a19 ^ 0x29DC)))(v28 - 152);
  return (*(v26 + 8 * ((7170 * (*(v28 - 152) == (a19 ^ 0x17FA ^ v25))) ^ a19)))(v31);
}

uint64_t sub_10002FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  a9 = 4;
  v16 = (*(v14 + 8 * (v13 + 480)))(*(v15 + 4), 23, 0, 0, &a13, &a9);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = a9 == 4;
  }

  v18 = !v17;
  return (*(v14 + 8 * ((v18 * (((v13 - 1781222647) & 0x6A2B2DBC ^ 0x7FB) + ((v13 - 8010) | 0x10))) ^ v13)))(v16);
}

uint64_t sub_10002FF68(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x6F8] = a1;
  STACK[0x530] = *(v2 + 8 * v1);
  return sub_100149B00(a1);
}

uint64_t sub_10002FF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v18 + 1317436891 * ((1582353783 - (&a15 | 0x5E50CD77) + (&a15 | 0xA1AF3288)) ^ 0x11ACAAFE) + 4370;
  a15 = &a11;
  v20 = (*(v17 + 8 * (v18 + 5853)))(&a15);
  return (*(v17 + 8 * (((a16 == v19 + ((v18 + 1439793461) & 0x1EBB) - 3769) * (((v18 - 1170221201) & 0xAA39DDE9) + 1439060815)) ^ v18)))(v20);
}

uint64_t sub_100030068(uint64_t a1, uint64_t a2, int a3)
{
  v8 = (v6 - 32);
  v9 = (a2 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v5 == 32) * a3) ^ (v3 + v4 + 3925))))();
}

uint64_t sub_100030264()
{
  *(v6 - 224) = v5 ^ (((-2135139389 - ((v6 - 232) | 0x80BC5BC3) + ((v6 - 232) | 0x7F43A43C)) ^ 0x53BF1547) * v4);
  v7 = (*(v0 + 8 * (v1 + 390)))(v6 - 232);
  v8 = STACK[0x400];
  *(v2 + 8) = *(v6 - 232) ^ v3;
  return (*(v8 + 8 * ((v1 - 7774) ^ 0x2F)))(v7);
}

void sub_100030300(uint64_t a1)
{
  v1 = *(a1 + 36) ^ (1317436891 * (((a1 | 0x351550A7) - (a1 | 0xCAEAAF58) - 890589352) ^ 0x8516C8D1));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000303F0@<X0>(int8x16_t *a1@<X0>, int a2@<W8>)
{
  v4.i64[0] = 0x7878787878787878;
  v4.i64[1] = 0x7878787878787878;
  v5.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v5.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  a1[2] = vaddq_s8(vsubq_s8(v3[2], vandq_s8(vaddq_s8(v3[2], v3[2]), v4)), v5);
  return (*(v2 + 8 * ((10586 * (((a2 + 316) ^ 0xC19) == 16)) ^ a2)))();
}

uint64_t sub_100030454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = v3 ^ 0xDD ^ *(a2 + v6);
  return (*(v5 + 8 * ((7273 * (v6 == 0)) ^ (v2 + v3 + 242))))();
}

uint64_t sub_1000306A4@<X0>(int a1@<W8>)
{
  STACK[0xB70] = v1;
  v3 = STACK[0x820];
  STACK[0xB78] = STACK[0x820];
  return (*(v2 + 8 * (((v1 - v3 > (a1 ^ 0x124Au) - 657) * ((a1 + 401845337) & 0xE80C66F6 ^ 0x105B)) ^ a1)))();
}

uint64_t sub_1000307B8(uint64_t a1)
{
  v2 = 1824088897 * ((2 * (a1 & 0x14529C38) - a1 + 1806525383) ^ 0x33C4B0A5);
  v3 = *(a1 + 28) - v2;
  v4 = *(a1 + 4) - v2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = 1259475733 * (*(a1 + 24) + v2) + 202674402;
  v8 = 2048652491 * (((v10 | 0xEC5E9A02) - v10 + (v10 & 0x13A165F8)) ^ 0x5DEF0D07);
  v13 = v4 ^ ((v4 ^ 0x85BB2D04) + 222263695) ^ ((v4 ^ 0xEFF7C890) + 1735629851) ^ ((v4 ^ 0x62C8B01E) - 364059499) ^ ((v4 ^ 0x7FFFFEFF) - 142890378) ^ v8 ^ 0x7CBE3226;
  v10[0] = v8 ^ v7;
  v10[2] = v8 ^ (v3 - 1674573492);
  v11 = v6;
  v12 = v5;
  result = (*(*(&off_100BFFA10 + v3 - 1674578835) + (v3 ^ 0x63D02944) - 1))(v10);
  *a1 = v10[1];
  return result;
}

uint64_t sub_100030990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17)
{
  a16 = a10;
  a17 = v18 - 2008441969 * (&a15 ^ 0x4899540E) + 4516;
  v20 = (*(v17 + 8 * (v18 + 8482)))(&a15);
  return (*(v17 + 8 * (((a15 == (v18 ^ 0x331 ^ (v19 + 184))) * (((v18 - 1668887994) & 0x13FF9) - 140)) ^ v18)))(v20);
}

uint64_t sub_100030A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, int a19, char a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, char *a26)
{
  a25 = (v26 - 1323) ^ (1710126949 * ((2 * (&a21 & 0x24A2E888) - &a21 + 1532827511) ^ 0x69464CE7));
  a26 = &a17;
  a23 = a12;
  a24 = &a20;
  (*(v27 + 8 * (v26 + 4926)))(&a21);
  a22 = (v26 - 1429) ^ (33731311 * ((((2 * &a21) | 0x56A94D18) - &a21 - 726967948) ^ 0x12A26CAF));
  a23 = a12;
  a24 = &a15;
  (*(v27 + 8 * (v26 ^ 0x3758)))(&a21);
  a23 = a12;
  LODWORD(a24) = v26 - 2008441969 * ((224533977 - (&a21 ^ 0x6CD6B34C | 0xD621DD9) + (&a21 ^ 0x6CD6B34C | 0xF29DE226)) ^ 0xD6D20564) + 1004;
  v28 = (*(v27 + 8 * (v26 ^ 0x37AA)))(&a21);
  return (*(v27 + 8 * (((a21 == 16257999) * (((v26 ^ 0xAF) - 3662) ^ 0xAEC)) ^ v26)))(v28);
}

uint64_t sub_100030BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, int a24)
{
  v28 = 1358806181 * (((&a21 | 0x49013954) - (&a21 | 0xB6FEC6AB) - 1224816981) ^ 0x762E55D7);
  a22 = (v27 | 0x28) ^ v28;
  a21 = v24;
  a23 = v25 - v28 + 5000;
  v29 = (*(v26 + 8 * (v25 + 8677)))(&a21);
  return (*(v26 + 8 * (((a24 == 16257999) * (14 * (((v25 + 520) | 0x900) ^ 0xE7E) + 5754)) ^ v25)))(v29);
}

void sub_100030D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || a3 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100030DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14)
{
  v17 = 79 * ((v14 + 3557) ^ 0x1702);
  a14 = (v14 + 6002) ^ ((((&a12 | 0x893693E3) - (&a12 & 0x893693E3)) ^ 0xD15F4081) * v16);
  a13 = a11;
  (*(v15 + 8 * (v14 + 7268)))(&a12);
  a13 = a10;
  a14 = (v17 + 7161) ^ (((&a12 + 1730452353 - 2 * (&a12 & 0x67249B81)) ^ 0x3F4D48E3) * v16);
  v18 = (*(v15 + 8 * (v17 + 8427)))(&a12);
  return sub_100046B88(v18);
}

void sub_100030E90()
{
  LODWORD(STACK[0x66C]) = v2;
  STACK[0x598] = STACK[0x618];
  STACK[0x8B8] = *(v1 + 8 * (((v0 + 114152046) & 0xF9323FDB) - 5575));
  JUMPOUT(0x10002DE84);
}

uint64_t sub_100030F4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  HIDWORD(v22) = v19 ^ 0x8E21CFAD;
  LODWORD(v22) = v20 ^ 0xDF1E87CE;
  return sub_100074D94((a19 - 146417860) & 0x8BA37E7 ^ 0x15B6u, a2, a3, ((a19 - 146417860) & 0x8BA37E7 ^ 0x15B6) + a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v22);
}

uint64_t sub_100030FB0(uint64_t a1)
{
  if (v1)
  {
    v4 = ((2 * v2) & 0xFFB649DC) + (v2 ^ 0xFFDB24EE) == -2415378;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((457 * v5) ^ 0x18F3u)))(a1);
}

uint64_t sub_100031000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, int a19, int a20, char a21, uint64_t a22, char *a23, int a24, char a25, int a26, unsigned int a27, char *a28, char *a29, char *a30, char *a31)
{
  a28 = a23;
  a29 = &a25;
  LODWORD(a30) = (v31 - 1349) ^ (1710126949 * ((2 * (&a26 & 0x9A887F8) - &a26 - 162039806) ^ 0xC44C2392));
  a31 = &a18;
  (*(v32 + 8 * (v31 + 4900)))(&a26);
  a28 = &a16;
  a30 = a23;
  LODWORD(a29) = v31 + 956911519 * ((((2 * &a26) | 0x4C663028) - &a26 + 1506600940) ^ 0x4CA26811) + 4605;
  (*(v32 + 8 * (v31 + 4939)))(&a26);
  a28 = a23;
  a29 = &a21;
  a27 = (v31 - 1455) ^ (33731311 * ((2 * (&a26 & 0x6C2F6598) - &a26 + 332438117) ^ 0x2A265046));
  (*(v32 + 8 * (v31 + 4894)))(&a26);
  LODWORD(a29) = v31 - 2008441969 * ((&a26 - 1079935626 - 2 * (&a26 & 0xBFA17D76)) ^ 0xF7382978) + 978;
  a28 = a23;
  v33 = (*(v32 + 8 * (v31 + 4944)))(&a26);
  return (*(v32 + 8 * ((60 * (a26 == ((599 * (v31 ^ 0x124E)) ^ 0xF8187C))) ^ v31)))(v33);
}

uint64_t sub_1000312BC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v3 = a1;
  *v2 = a2;
  return sub_100064718();
}

uint64_t sub_1000312C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFB47 ^ (v4 - 3057)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((2207 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100031318()
{
  v4 = (*(v1 + 8 * (v3 + 2329)))(*v2, *(v0 + 8 * (v3 - 7235)) - 4);
  **(v0 + 8 * (v3 ^ 0x1CBB)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((((v3 - 5407) | 0x807) ^ 0xFFFFEEA0) + ((v3 + 1502716697) & 0xA66E5F7F))) ^ v3)))();
}

uint64_t sub_1000313A4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x3DB6));

  return v3(v1);
}

uint64_t sub_1000313D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16, unsigned int a17, uint64_t a18, int *a19)
{
  a17 = (v20 - 331) ^ (33731311 * (&a16 ^ 0x39F6CA23));
  a18 = a11;
  a19 = &a13;
  v21 = (*(v19 + 8 * (v20 + 6018)))(&a16);
  return (*(v19 + 8 * (((a13 != 0) * (((v20 - 3555) | 0x2051) - 8176)) ^ (v20 + 1742))))(v21);
}

uint64_t sub_1000314C0(uint64_t a1)
{
  v3 = v1 ^ 0x30EA;
  v4 = (*(v2 + 8 * ((v1 ^ 0x30EA) + 1203)))(a1, 2632289750) == 0;
  return (*(v2 + 8 * ((v4 * ((v3 - 1572) ^ (v3 - 1558))) ^ v3)))();
}

void sub_100031578()
{
  LODWORD(STACK[0xAD4]) = 16215976;
  STACK[0x628] = v1;
  LODWORD(STACK[0x81C]) = 16215976;
  STACK[0x8B8] = *(v2 + 8 * (v0 ^ 0x1746));
  JUMPOUT(0x10002DE84);
}

uint64_t sub_1000315D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = v19 + 1317436891 * (((&a17 | 0x3685EDEB) - (&a17 & 0x3685EDEB)) ^ 0x8686759D) + 6108;
  v22 = (*(v20 + 8 * (v19 + 7591)))(&a17);
  return (*(v20 + 8 * ((3240 * (a18 == ((3 * (v19 ^ 0x4DF)) ^ (v21 + v19 - 289)))) ^ v19)))(v22);
}

uint64_t sub_100031690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v24 = ((&a17 & 0x7F08D079 | ~(&a17 | 0x7F08D079)) ^ 0xD89EFCE4) * v22;
  a21 = -654855621 - v24;
  a22 = v24 + a9 + 1674574348;
  a19 = a13;
  a20 = &a12;
  a18 = v24 - 1946289782;
  v25 = (*(v23 + 8 * (a9 ^ 0x3716u)))(&a17);
  return (*(v23 + 8 * (((a17 == 16257999) * (((1248 * (a9 ^ 0x129D) - 3231) | 0x1030) ^ 0x23E3)) ^ a9)))(v25);
}

uint64_t sub_100031764(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19, int *a20)
{
  v22 = 2048652491 * ((((2 * &a18) | 0xCB0F4A66) - &a18 + 444095181) ^ 0x54363236);
  a18 = (a1 ^ 0x77F933EF) + v22 + ((2 * a1) & 0xEFF267DE) + (((v21 ^ 0x32B5) - 2973) ^ 0x88FEDA3A);
  a19 = (v21 ^ 0x32B5) - v22 + 2753;
  a20 = &a11;
  (*(v20 + 8 * (v21 ^ 0x63D)))(&a18);
  return sub_1000AA788();
}

uint64_t sub_1000317FC(uint64_t a1)
{
  v2 = 1358806181 * ((((2 * a1) | 0x17272C214689DF5ALL) - a1 + 0x746C69EF5CBB1053) ^ 0xDE4926039C6B832ELL);
  result = (*(*(&off_100BFFA10 + v2 + *(a1 + 32) + 1631615317) - 4))(v2 ^ *(a1 + 28) ^ 0xC91495AF, v2 ^ *(a1 + 8) ^ 0x5771A9AFF3F1E84FLL, (*(a1 + 40) - v2 - 774302606), *(a1 + 48), (v2 + *(a1 + 24) - 499851591), *(a1 + 16), *a1);
  *(a1 + 36) = (result ^ 0x50FA93FF) - 1342341168 + ((2 * result) & 0xA1F527FE);
  return result;
}

uint64_t sub_100031918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = v16 + 1317436891 * (((&a12 | 0x6EE403A4) - &a12 + (&a12 & 0x911BFC58)) ^ 0xDEE79BD2) + 3578;
  a12 = &a11;
  v17 = (*(v14 + 8 * (v16 + 5061)))(&a12);
  return (*(v14 + 8 * (((a13 != v15) * ((v16 ^ 0xC) - 4576)) ^ v16)))(v17);
}

void sub_1000319A8(uint64_t a1)
{
  v1 = *(a1 + 4) + 1358806181 * ((2 * (a1 & 0x7EFA1611) - a1 + 17164782) ^ 0x3E2A856D);
  v2 = *(&off_100BFFA10 + (v1 ^ 0xE5C)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x2AE9)])(16, 0x20040A4A59CD2) == 0) * (v1 - 8227 + ((v1 + 958500523) & 0xC6DE72F9))) ^ v1)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100031B20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v19 = (a7 + (a6 ^ 0x6AE8EB13) + *(v14 + 4 * a7) * v17 + 103853426) * v9 - a2 - 1878774459;
  v20 = ((a8 ^ a4 ^ (v19 + (v19 - (((v19 * v15) >> 32) >> 11) * v16) * v8)) + v13) ^ v10;
  v21 = a4 - v20;
  v22 = a8 - v20;
  v23 = v20 ^ v13;
  v24 = v23 + a5 + ((a4 - v20) ^ __ROR4__(v20, 31) ^ v22);
  v25 = v24 + v22;
  v26 = v21 - v24;
  v27 = v24 ^ v23;
  HIDWORD(v28) = v24;
  LODWORD(v28) = v24;
  v29 = (((v28 >> 31) + v26 - v25) ^ v27) + v12;
  v30 = v29 ^ v26;
  v31 = v29 + v25 + (v29 ^ v27) + (v30 ^ __ROR4__(v29, 29));
  return (*(v18 + 8 * ((10824 * (a7 == 73)) ^ a6)))(a1, v31 ^ v11, a3, v31 ^ v11 ^ v30);
}

uint64_t sub_100031C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, void *a6)
{
  v9 = 2383 * ((3 * (v6 ^ 0x1038)) ^ 0xD30);
  *a6 = a1;
  *a5 = v14;
  v10 = 96 * (v9 ^ 0x12B9);
  v16 = v12;
  v17 = (v9 + 3580) ^ ((((&v15 | 0xF7945D8A) - &v15 + (&v15 & 0x86BA270)) ^ 0xAFFD8EE8) * v7);
  (*(v8 + 8 * (v9 + 4846)))(&v15);
  v16 = v13;
  v17 = (v10 + 4602) ^ ((((&v15 | 0x71892B0) - &v15 + (&v15 & 0xF8E76D48)) ^ 0x5F7141D2) * v7);
  (*(v8 + 8 * (v10 + 5868)))(&v15);
  return 0;
}

uint64_t sub_100031D54()
{
  (*(v2 + 8 * ((v0 + 1844304799) & 0x92120C5E ^ 0x299A)))();
  *(v1 + 40) = 0;
  return sub_1000800CC();
}

uint64_t sub_100031E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = STACK[0x5A0];
  *(STACK[0x5A0] + (a1 ^ 0x2DD2E) % 0x3C1) = -13;
  *(a16 + (((0x2DBC7 * v16) >> 64) >> 7) * v17) = -14;
  return (*(v18 + 8 * a1))(a1, v19, 0, a4, a5, a1 ^ 0x1356, 187335, a16, a9, a10, a11);
}

uint64_t sub_100031EB8@<X0>(int a1@<W1>, char a2@<W8>)
{
  v14.val[1].i64[0] = (v6 + 13) & 0xF;
  v14.val[1].i64[1] = (v6 + 12) & 0xF;
  v14.val[2].i64[0] = (v6 + 11) & 0xF;
  v14.val[2].i64[1] = (v6 + 10) & 0xF;
  v14.val[3].i64[0] = (v6 + 9) & 0xF;
  v14.val[3].i64[1] = a2 & 0xF ^ 3;
  v15.val[0].i64[0] = (v6 + 7) & 0xF;
  v15.val[0].i64[1] = (v6 + 6) & 0xF;
  v15.val[1].i64[0] = (v6 + 5) & 0xF;
  v15.val[1].i64[1] = (v6 + 4) & 0xF;
  v15.val[2].i64[0] = (v6 + 3) & 0xF;
  v15.val[2].i64[1] = (v6 + 2) & 0xF;
  v8 = *(v7 - 136);
  v15.val[3].i64[0] = (v6 + 1) & 0xF;
  v15.val[3].i64[1] = v6 & 0xF;
  v9.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v9.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v10.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v10.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v11 = ((a1 - 1053) | 0x10Eu) - 2831 + v6;
  v14.val[0].i64[0] = v11 & 0xF;
  v14.val[0].i64[1] = (v6 + 14) & 0xF;
  v12.i64[0] = vqtbl4q_s8(v14, xmmword_1009E3440).u64[0];
  v12.i64[1] = vqtbl4q_s8(v15, xmmword_1009E3440).u64[0];
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v2 - 15 + v11), *(v4 + v14.val[0].i64[0] - 15)), veorq_s8(*(v5 + v14.val[0].i64[0] + 1 - 15), *(v3 + v14.val[0].i64[0] + 1 - 15))));
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15.val[0], v15.val[0], 8uLL), v10), vmulq_s8(v12, v9)));
  *(*(v7 - 144) - 15 + v11) = vextq_s8(v15.val[0], v15.val[0], 8uLL);
  return (*(v8 + 8 * ((5412 * ((v6 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_100032034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, int a24)
{
  v26 = 1824088897 * ((((&a19 | 0xFC4A173C) ^ 0xFFFFFFFE) - (~&a19 | 0x3B5E8C3)) ^ 0x5BDC3BA1);
  a21 = a17;
  a22 = &a14;
  a23 = -1574372683 - v26;
  a24 = v26 + 1674577224 + v24;
  a20 = v26 - 1619556640;
  v27 = (*(v25 + 8 * (v24 ^ 0x22EA)))(&a19);
  return (*(v25 + 8 * (((a19 == (((v24 - 1881) | 0xC00) ^ 0xF81FC6)) * (((v24 - 158079331) & 0x5D7E767E) - 1410482056)) ^ v24)))(v27);
}

uint64_t sub_100032120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 843188657) & 0x706E1F3F ^ 0xFFFFFFFFFFFFEFE1) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((498 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v3 - 1565513264))))();
}

uint64_t sub_100032198@<X0>(int a1@<W8>)
{
  STACK[0x9E8] = v1;
  v4 = STACK[0x6C0];
  STACK[0x9F0] = STACK[0x6C0];
  return (*(v3 + 8 * (((v1 - v4 > ((262 * v2) ^ 0x31BuLL)) * ((869 * (a1 ^ 0xA2D)) ^ 0x16F3)) ^ a1)))();
}

uint64_t sub_100032274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v21 = a1 + 16;
  v22 = (v21 ^ a5 ^ v19) + v17;
  v23 = v22 & 0xF;
  v25.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v25.i64[1] = a12;
  v26 = vrev64q_s8(vmulq_s8(v25, a13));
  *(a4 + v22) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v23 - 15), *(a2 + v22)), veorq_s8(*(v15 + v23 - 15), *(v16 + v23 - 15))), vextq_s8(v26, v26, 8uLL));
  return (*(v20 + 8 * (((v14 == v21) * a6) ^ v18)))();
}

uint64_t sub_100032584@<X0>(unint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + v3) = 0;
  v7 = v3 >= a1 || v3 + 840616316 >= v2;
  return (*(v5 + 8 * ((7 * v7) ^ v4)))();
}

uint64_t sub_1000325C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x55C];
  v11 = (a8 + 837833564) ^ (LODWORD(STACK[0x570]) + 552306858);
  v12 = a8 + LODWORD(STACK[0x55C]) + (v11 ^ 0xF169DEBF);
  v13 = a3 + LODWORD(STACK[0x560]);
  v14 = STACK[0x56C];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x2AC]) - LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x404]) = LODWORD(STACK[0x2A8]) - v9;
  v15 = v8 ^ 0xF169DEBF ^ (a3 + 522586324);
  LODWORD(STACK[0x41C]) = LODWORD(STACK[0x2A0]) + v15;
  v13 -= 1125522620;
  v16 = v15 + v13 + 1381925760;
  LODWORD(STACK[0x584]) = v12 - 401106135;
  LODWORD(STACK[0x400]) = LODWORD(STACK[0x298]) - a8 + 1240147798;
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x294]) - (((v11 ^ 0x330AF639) - 760156044) ^ ((v11 ^ 0x4A57209D) - 1410521384) ^ ((v11 ^ 0x8834081B) + 1770917458));
  LODWORD(STACK[0x590]) = v16;
  LODWORD(STACK[0x588]) = v15 ^ v9 ^ v16;
  LODWORD(STACK[0x580]) = a8 + 1936462500;
  LODWORD(STACK[0x57C]) = (a8 + v10 - 1230725037) ^ 0xBF243D3E;
  LODWORD(STACK[0x58C]) = v14 ^ 0xF169DEBF ^ v11 ^ (v12 + 151200723);
  LODWORD(STACK[0x56C]) = v13 ^ 0xBF243D3E;
  LODWORD(STACK[0x5A8]) = a3 + 1936462500;
  STACK[0x320] = STACK[0x328];
  return sub_1000E8A04();
}

uint64_t sub_1000327F4()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((((v3 - 232) | 0x3FD401DF) - ((v3 - 232) & 0x3FD401DF)) ^ 0x1328B0A4));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *(v1 + 8) = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * (v0 - 4528)))(v4);
}

uint64_t sub_1000328D4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = v18 + a12 + a13 + a15 - a11;
  STACK[0x3B0] = v19 + 0x32040020C880805;
  STACK[0x3A0] = v19 + 0x32040020C8807FELL;
  STACK[0x390] = v19 + 0x32040020C8807FFLL;
  STACK[0x380] = v19 + 0x32040020C880800;
  STACK[0x370] = v19 + 0x32040020C880801;
  STACK[0x360] = v19 + 0x32040020C880802;
  STACK[0x350] = v19 + 0x32040020C880803;
  STACK[0x340] = v19 + v15;
  STACK[0x330] = v19 + v16;
  STACK[0x310] = a15 & 0xFFFFFFF8;
  STACK[0x320] = a11 - (a15 & 0xFFFFFFF8) + 8;
  v20 = v17 + a15 - a11;
  v21.i64[0] = v20 - 5;
  v21.i64[1] = v20 - 6;
  v22.i64[0] = v20 - 3;
  v22.i64[1] = v20 - 4;
  v23.i64[0] = v20 - 1;
  v23.i64[1] = v20 - 2;
  v24 = STACK[0x3C0];
  v25 = ((LODWORD(STACK[0x3C0]) - 1658) | 0x584u) ^ 0xFFFFFFFFFFFFFA7CLL;
  v26.i64[0] = v20 - 7;
  v26.i64[1] = v20 + v25;
  v27.i64[0] = STACK[0x3A0];
  v27.i64[1] = STACK[0x3B0] + v25;
  v28.i64[0] = STACK[0x330];
  v28.i64[1] = STACK[0x350];
  v29.i64[0] = STACK[0x360];
  v29.i64[1] = STACK[0x370];
  v30.i64[0] = STACK[0x380];
  v30.i64[1] = STACK[0x390];
  v31 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v32 = vdupq_n_s64(0x38uLL);
  LODWORD(v19) = STACK[0x320] == 0;
  v33 = vandq_s8(v26, v31);
  v34 = vandq_s8(v23, v31);
  v35 = vandq_s8(v22, v31);
  v36 = vandq_s8(v21, v31);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v41 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v42 = vaddq_s64(v40, v41);
  v43 = vaddq_s64(v39, v41);
  v44 = vaddq_s64(v38, v41);
  v45 = vaddq_s64(v37, v41);
  v46 = vdupq_n_s64(0x4CFAC71E5A50EC49uLL);
  v47 = vdupq_n_s64(a4);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(v45, v46), vorrq_s8(v45, v47)), v47);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(v44, v46), vorrq_s8(v44, v47)), v47);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(v43, v46), vorrq_s8(v43, v47)), v47);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v42, v46), vorrq_s8(v42, v47)), v47);
  v52 = vdupq_n_s64(0x513852535460B9BuLL);
  v53 = veorq_s8(v51, v52);
  v54 = veorq_s8(v50, v52);
  v55 = veorq_s8(v49, v52);
  v56 = veorq_s8(v48, v52);
  v57 = vdupq_n_s64(0xAD5560B2ACB07AC7);
  v58 = veorq_s8(v48, v57);
  v59 = veorq_s8(v49, v57);
  v60 = veorq_s8(v50, v57);
  v61 = veorq_s8(v51, v57);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v64 = vaddq_s64(v62, v58);
  v65 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v66 = veorq_s8(v64, v65);
  v67 = veorq_s8(v63, v65);
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v60), v65);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v61), v65);
  v70 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v72 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v73 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v74 = veorq_s8(v66, v70);
  v75 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v74);
  v79 = vaddq_s64(v75, v71);
  v80 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v81 = veorq_s8(v79, v80);
  v82 = veorq_s8(vaddq_s64(v76, v72), v80);
  v83 = veorq_s8(vaddq_s64(v77, v73), v80);
  v84 = veorq_s8(v78, v80);
  v85 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v88 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v89 = veorq_s8(v83, v87);
  v90 = veorq_s8(v82, v86);
  v91 = veorq_s8(v81, v85);
  v92 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v91);
  v96 = vaddq_s64(v94, v90);
  v97 = vaddq_s64(v93, v89);
  v98 = vaddq_s64(v92, v88);
  v99 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v100 = vdupq_n_s64(0x343B3FDCD10949FuLL);
  v101 = vdupq_n_s64(0x5A20053898C9EB80uLL);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v99)), v100), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v99)), v100), v101);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v99)), v100), v101);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v99)), v100), v101);
  v106 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v109 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v110 = veorq_s8(v104, v108);
  v111 = veorq_s8(v103, v107);
  v112 = veorq_s8(v102, v106);
  v113 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v112);
  v117 = vaddq_s64(v115, v111);
  v118 = vaddq_s64(v114, v110);
  v119 = vdupq_n_s64(0x20842EAD28A8535AuLL);
  v120 = vaddq_s64(v113, v109);
  v121 = vdupq_n_s64(a3);
  v122 = vsubq_s64(vorrq_s8(v116, v119), vorrq_s8(v116, v121));
  v123 = vsubq_s64(vorrq_s8(v117, v119), vorrq_s8(v117, v121));
  v124 = vsubq_s64(vorrq_s8(v118, v119), vorrq_s8(v118, v121));
  v125 = vaddq_s64(vsubq_s64(vorrq_s8(v120, v119), vorrq_s8(v120, v121)), v121);
  v126 = vdupq_n_s64(0x41C1B387D8B777ADuLL);
  v127 = veorq_s8(vaddq_s64(v122, v121), v126);
  v128 = veorq_s8(vaddq_s64(v123, v121), v126);
  v129 = veorq_s8(vaddq_s64(v124, v121), v126);
  v130 = veorq_s8(v125, v126);
  v131 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v134 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v135 = veorq_s8(v128, v132);
  v136 = veorq_s8(v127, v131);
  v137 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v136);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v135);
  v141 = vaddq_s64(v138, v134);
  v142 = vaddq_s64(v137, v133);
  v143 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v144 = vdupq_n_s64(a5);
  v145 = vaddq_s64(vsubq_s64(vorrq_s8(v142, v143), vorrq_s8(v142, v144)), v144);
  v146 = vaddq_s64(vsubq_s64(vorrq_s8(v141, v143), vorrq_s8(v141, v144)), v144);
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v143), vorrq_s8(v140, v144)), v144);
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v139, v143), vorrq_s8(v139, v144)), v144);
  v149 = vdupq_n_s64(0xF9A2B6AA6A94F821);
  v150 = veorq_s8(v148, v149);
  v151 = veorq_s8(v147, v149);
  v152 = veorq_s8(v146, v149);
  v153 = veorq_s8(v145, v149);
  v154 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v157), v161);
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v158), v161);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v159), v161);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160), v161);
  v166 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v169 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), veorq_s8(v162, v166));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), veorq_s8(v163, v167));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), veorq_s8(v164, v168));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v169);
  v174 = vdupq_n_s64(0x170BF460A85E9EEEuLL);
  v175 = vdupq_n_s64(0xF47A05CFABD0B088);
  v176 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), v174), v173), v175), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v174), v172), v175), v176);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v174), v171), v175), v176);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v174), v170), v175), v176);
  v181 = vandq_s8(vshlq_n_s64(v21, 3uLL), v32);
  v182 = vandq_s8(vshlq_n_s64(v22, 3uLL), v32);
  v183 = vshlq_u64(v180, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v32)));
  v184 = vshlq_u64(v179, vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v32)));
  v185 = vshlq_u64(v178, vnegq_s64(v182));
  v186 = vshlq_u64(v177, vnegq_s64(v181));
  v187 = vandq_s8(v30, v31);
  v188 = vandq_s8(v29, v31);
  v189 = vandq_s8(v28, v31);
  v190 = vandq_s8(v27, v31);
  v191 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v195 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v196 = vaddq_s64(v194, v195);
  v197 = vaddq_s64(v193, v195);
  v198 = vaddq_s64(v192, v195);
  v199 = vaddq_s64(v191, v195);
  v200 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v201 = vsubq_s64(v200, v191);
  v202 = vsubq_s64(v200, v192);
  v203 = vsubq_s64(v200, v193);
  v204 = vsubq_s64(v200, v194);
  v205 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v206 = vaddq_s64(vandq_s8(v201, v205), v199);
  v207 = vaddq_s64(vandq_s8(v202, v205), v198);
  v208 = vaddq_s64(vandq_s8(v203, v205), v197);
  v209 = vaddq_s64(vandq_s8(v204, v205), v196);
  v210 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v211 = vsubq_s64(v209, vandq_s8(v196, v210));
  v212 = vsubq_s64(v208, vandq_s8(v197, v210));
  v213 = vsubq_s64(v207, vandq_s8(v198, v210));
  v214 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v215 = vsubq_s64(v206, vandq_s8(v199, v210));
  v216 = veorq_s8(v215, v214);
  v217 = veorq_s8(v213, v214);
  v218 = veorq_s8(v212, v214);
  v219 = vdupq_n_s64(0xDB58A1A949065591);
  v220 = veorq_s8(v211, v214);
  v221 = veorq_s8(v211, v219);
  v222 = veorq_s8(v212, v219);
  v223 = veorq_s8(v213, v219);
  v224 = veorq_s8(v215, v219);
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v222);
  v227 = vdupq_n_s64(0xBC7AB44B3A189480);
  v228 = veorq_s8(vaddq_s64(v225, v221), v227);
  v229 = veorq_s8(v226, v227);
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v223), v227);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v224), v227);
  v232 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v233 = vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v232), v228);
  v234 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v235 = vaddq_s64(v233, v234);
  v236 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), v232), v229), v234);
  v237 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v230, v230), v232), v230), v234);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v231, v231), v232), v231), v234);
  v239 = vdupq_n_s64(0x4553883189103385uLL);
  v240 = veorq_s8(v238, v239);
  v241 = veorq_s8(v237, v239);
  v242 = veorq_s8(v236, v239);
  v243 = veorq_s8(v235, v239);
  v244 = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v245 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v246 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v247 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v248 = veorq_s8(v241, v245);
  v249 = veorq_s8(v240, v244);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v249);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v248);
  v254 = vaddq_s64(v251, v247);
  v255 = vaddq_s64(v250, v246);
  v256 = vdupq_n_s64(0x78DE71CD2967B0CEuLL);
  v257 = vdupq_n_s64(0xBC6F38E694B3D867);
  v258 = vaddq_s64(vsubq_s64(v252, vandq_s8(vaddq_s64(v252, v252), v256)), v257);
  v259 = vaddq_s64(vsubq_s64(v253, vandq_s8(vaddq_s64(v253, v253), v256)), v257);
  v260 = vaddq_s64(vsubq_s64(v254, vandq_s8(vaddq_s64(v254, v254), v256)), v257);
  v261 = vaddq_s64(vsubq_s64(v255, vandq_s8(vaddq_s64(v255, v255), v256)), v257);
  v262 = vdupq_n_s64(0xF4B101A286E9DA33);
  v263 = veorq_s8(v261, v262);
  v264 = veorq_s8(v260, v262);
  v265 = veorq_s8(v259, v262);
  v266 = veorq_s8(v258, v262);
  v267 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v268 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v269 = vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL);
  v270 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v271 = veorq_s8(v265, v269);
  v272 = veorq_s8(v264, v268);
  v273 = veorq_s8(v263, v267);
  v274 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v273);
  v278 = vaddq_s64(v274, v270);
  v279 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v280 = veorq_s8(v278, v279);
  v281 = veorq_s8(vaddq_s64(v275, v271), v279);
  v282 = veorq_s8(vaddq_s64(v276, v272), v279);
  v283 = veorq_s8(v277, v279);
  v284 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v286 = vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL);
  v287 = veorq_s8(v283, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v288 = veorq_s8(v282, v286);
  v289 = veorq_s8(v281, v285);
  v290 = veorq_s8(v280, v284);
  v291 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v292 = vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL);
  v293 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v294 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v290);
  v295 = vaddq_s64(v293, v289);
  v296 = vaddq_s64(v292, v288);
  v297 = vaddq_s64(v291, v287);
  v298 = vdupq_n_s64(0xD02B2EB47D7683C6);
  v299 = vdupq_n_s64(0x6815975A3EBB41E3uLL);
  v300 = vdupq_n_s64(0x9A77953CE1639F61);
  v301 = veorq_s8(vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v298)), v299), v300);
  v302 = veorq_s8(vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v298)), v299), v300);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(v295, vandq_s8(vaddq_s64(v295, v295), v298)), v299), v300);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v294, vandq_s8(vaddq_s64(v294, v294), v298)), v299), v300);
  v305 = vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v308 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v309 = veorq_s8(v303, v307);
  v310 = veorq_s8(v302, v306);
  v311 = veorq_s8(v301, v305);
  v312 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL);
  v315 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v311);
  v316 = vaddq_s64(v314, v310);
  v317 = vaddq_s64(v313, v309);
  v318 = vdupq_n_s64(0xDBAE1F50DA30D8EFLL);
  v319 = vaddq_s64(v312, v308);
  v320 = vdupq_n_s64(a6);
  v321 = vsubq_s64(vorrq_s8(v315, v318), vorrq_s8(v315, v320));
  v322 = vsubq_s64(vorrq_s8(v316, v318), vorrq_s8(v316, v320));
  v323 = vsubq_s64(vorrq_s8(v317, v318), vorrq_s8(v317, v320));
  v324 = vaddq_s64(vsubq_s64(vorrq_s8(v319, v318), vorrq_s8(v319, v320)), v320);
  v325 = vdupq_n_s64(0x6210EF9D5C6DF912uLL);
  v326 = veorq_s8(vaddq_s64(v321, v320), v325);
  v327 = veorq_s8(vaddq_s64(v322, v320), v325);
  v328 = veorq_s8(vaddq_s64(v323, v320), v325);
  v329 = veorq_s8(v324, v325);
  v330 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v331 = vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL);
  v333 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL));
  v334 = veorq_s8(v328, v332);
  v335 = veorq_s8(v327, v331);
  v336 = veorq_s8(v326, v330);
  v337 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v339 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v340 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v336);
  v341 = vaddq_s64(v338, v334);
  v342 = vaddq_s64(v337, v333);
  v343 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v344 = veorq_s8(v342, v343);
  v345 = veorq_s8(v341, v343);
  v346 = veorq_s8(vaddq_s64(v339, v335), v343);
  v347 = veorq_s8(v340, v343);
  v348 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v349 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL)));
  v351 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v352 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), veorq_s8(v345, v349)), v351), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v32)));
  v353 = vshlq_u64(veorq_s8(v350, v351), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v32)));
  v355.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL))), v351), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v32))), v186);
  v355.val[1] = veorq_s8(v353, v185);
  v355.val[0] = veorq_s8(v352, v184);
  v355.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), veorq_s8(v344, v348)), v351), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v32))), v183);
  *STACK[0x340] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v355, xmmword_1009E3420)), *(v20 - 8));
  return (*(STACK[0x400] + 8 * ((249 * v19) ^ v24)))();
}

uint64_t sub_1000339D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a15;
  a21 = 1317436891 * ((1257936296 - (&a19 | 0x4AFA95A8) + (&a19 | 0xB5056A57)) ^ 0x506F221) + 8154;
  v22 = (*(v21 + 77096))(&a19);
  return (*(v21 + 8 * ((15386 * (a20 == 16257999)) ^ 0x18C3)))(v22);
}

uint64_t sub_100033AA8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x340] = a1 & 0xFFFFFFF8;
  STACK[0x3B0] = a15 - (a1 & 0xFFFFFFF8) + 8;
  v77 = v72 + a17 + v69 + a16 + a1 - a15;
  STACK[0x3A0] = v77 + 0x6154020981223457;
  v78 = v74 + a1 - a15;
  STACK[0x390] = v77 + 0x6154020981223458;
  STACK[0x380] = v77 + 0x6154020981223459;
  STACK[0x370] = v77 + 0x615402098122345ALL;
  STACK[0x360] = v77 + 0x615402098122345BLL;
  STACK[0x350] = v77 + 0x615402098122345CLL;
  v79.i64[0] = v78 - 7;
  v79.i64[1] = v78 - 8;
  v80.i64[0] = v78 - 5;
  v80.i64[1] = v78 - 6;
  v81.i64[0] = v78 - 3;
  v81.i64[1] = v78 - 4;
  v82 = (a2 - 1801);
  v83.i64[0] = v78 + (v82 ^ 0xFFFFFFFFFFFFF2B7);
  v83.i64[1] = v78 - 2;
  v84.i64[0] = STACK[0x390];
  v84.i64[1] = STACK[0x3A0];
  v85.i64[0] = STACK[0x370];
  v85.i64[1] = STACK[0x380];
  v86.i64[0] = STACK[0x350];
  v86.i64[1] = STACK[0x360];
  v87.i64[0] = v77 + 0x615402098122345FLL + (v82 ^ 0xFFFFFFFFFFFFF2B7);
  v87.i64[1] = v77 + 0x615402098122345DLL;
  v88 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v89 = vdupq_n_s64(0x38uLL);
  v90 = vandq_s8(v83, v88);
  v91 = vandq_s8(v81, v88);
  v92 = vandq_s8(v80, v88);
  v93 = vandq_s8(v79, v88);
  v94 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v98 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v99 = vaddq_s64(v97, v98);
  v100 = vaddq_s64(v96, v98);
  v101 = vaddq_s64(v95, v98);
  v102 = vaddq_s64(v94, v98);
  v103 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v104 = veorq_s8(v102, v103);
  v105 = veorq_s8(v101, v103);
  v106 = veorq_s8(v100, v103);
  v107 = veorq_s8(v99, v103);
  v108 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v109 = veorq_s8(v99, v108);
  v110 = veorq_s8(v100, v108);
  v111 = veorq_s8(v101, v108);
  v112 = veorq_s8(v102, v108);
  v113 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v115 = vaddq_s64(v113, v109);
  v116 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v117 = veorq_s8(v115, v116);
  v118 = veorq_s8(v114, v116);
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v111), v116);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v112), v116);
  v121 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v124 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v125 = veorq_s8(v118, v122);
  v126 = veorq_s8(v117, v121);
  v127 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v126);
  v131 = vaddq_s64(v129, v125);
  v132 = vaddq_s64(v128, v124);
  v133 = vaddq_s64(v127, v123);
  v134 = vdupq_n_s64(0x444F902103838ADEuLL);
  v135 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v134), v130), v135);
  v137 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), v134), v131), v135);
  v138 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), v134), v132), v135);
  v139 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v134), v133), v135);
  v140 = vdupq_n_s64(0x578539A934117766uLL);
  v141 = veorq_s8(v139, v140);
  v142 = veorq_s8(v138, v140);
  v143 = veorq_s8(v137, v140);
  v144 = veorq_s8(v136, v140);
  v145 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v148 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v149 = veorq_s8(v143, v147);
  v150 = veorq_s8(v142, v146);
  v151 = veorq_s8(v141, v145);
  v152 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v151);
  v156 = vaddq_s64(v152, v148);
  v157 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v158 = veorq_s8(v156, v157);
  v159 = veorq_s8(vaddq_s64(v153, v149), v157);
  v160 = veorq_s8(vaddq_s64(v154, v150), v157);
  v161 = veorq_s8(v155, v157);
  v162 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v165 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v166 = veorq_s8(v160, v164);
  v167 = veorq_s8(v159, v163);
  v168 = veorq_s8(v158, v162);
  v169 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v168);
  v173 = vaddq_s64(v169, v165);
  v174 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v175 = veorq_s8(v173, v174);
  v176 = veorq_s8(vaddq_s64(v170, v166), v174);
  v177 = veorq_s8(vaddq_s64(v171, v167), v174);
  v178 = veorq_s8(v172, v174);
  v179 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v182 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v183 = veorq_s8(v177, v181);
  v184 = veorq_s8(v176, v180);
  v185 = veorq_s8(v175, v179);
  v186 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v185);
  v190 = vaddq_s64(v188, v184);
  v191 = vaddq_s64(v187, v183);
  v192 = vaddq_s64(v186, v182);
  v193 = vdupq_n_s64(0x953D53DE148E1D56);
  v194 = vdupq_n_s64(0xB5615610F5B8F155);
  v195 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192, v192), v193), v192), v194), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191, v191), v193), v191), v194), v195);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v190, v190), v193), v190), v194), v195);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), v193), v189), v194), v195);
  v200 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v203 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v204 = veorq_s8(v198, v202);
  v205 = veorq_s8(v197, v201);
  v206 = veorq_s8(v196, v200);
  v207 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v206);
  v211 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v212 = veorq_s8(vaddq_s64(v207, v203), v211);
  v213 = veorq_s8(vaddq_s64(v208, v204), v211);
  v214 = veorq_s8(vaddq_s64(v209, v205), v211);
  v215 = veorq_s8(v210, v211);
  v216 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v219 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v220 = veorq_s8(v212, v216);
  v221 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v220);
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), veorq_s8(v213, v217));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, v218));
  v225 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v226 = vaddq_s64(v221, v219);
  v227 = vdupq_n_s64(v70);
  v228 = vaddq_s64(vsubq_s64(vorrq_s8(v226, v225), vorrq_s8(v226, v227)), v227);
  v229 = vaddq_s64(vsubq_s64(vorrq_s8(v224, v225), vorrq_s8(v224, v227)), v227);
  v230 = vaddq_s64(vsubq_s64(vorrq_s8(v223, v225), vorrq_s8(v223, v227)), v227);
  v231 = vaddq_s64(vsubq_s64(vorrq_s8(v222, v225), vorrq_s8(v222, v227)), v227);
  v232 = vdupq_n_s64(0xE1F014810C505D35);
  v233 = veorq_s8(v231, v232);
  v234 = veorq_s8(v230, v232);
  v235 = veorq_s8(v229, v232);
  v236 = veorq_s8(v228, v232);
  v237 = vandq_s8(vshlq_n_s64(v79, 3uLL), v89);
  v238 = vandq_s8(vshlq_n_s64(v80, 3uLL), v89);
  v239 = vshlq_u64(v236, vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v89)));
  v240 = vshlq_u64(v235, vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v89)));
  v241 = vshlq_u64(v234, vnegq_s64(v238));
  v242 = vshlq_u64(v233, vnegq_s64(v237));
  v243 = vandq_s8(v87, v88);
  v244 = vandq_s8(v86, v88);
  v245 = vandq_s8(v85, v88);
  v246 = vandq_s8(v84, v88);
  v247 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v251 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v252 = vaddq_s64(vaddq_s64(v247, v247), v251);
  v253 = vaddq_s64(vaddq_s64(v248, v248), v251);
  v254 = vaddq_s64(vaddq_s64(v249, v249), v251);
  v255 = vaddq_s64(vaddq_s64(v250, v250), v251);
  v256 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v257 = vsubq_s64(v250, vandq_s8(v255, v256));
  v258 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v259 = vaddq_s64(v257, v258);
  v260 = vaddq_s64(vsubq_s64(v249, vandq_s8(v254, v256)), v258);
  v261 = vaddq_s64(vsubq_s64(v248, vandq_s8(v253, v256)), v258);
  v262 = vaddq_s64(vsubq_s64(v247, vandq_s8(v252, v256)), v258);
  v263 = vdupq_n_s64(0xCF99C25E83E78D67);
  v264 = veorq_s8(v262, v263);
  v265 = veorq_s8(v261, v263);
  v266 = veorq_s8(v260, v263);
  v267 = veorq_s8(v259, v263);
  v268 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v269 = veorq_s8(v259, v268);
  v270 = veorq_s8(v260, v268);
  v271 = veorq_s8(v261, v268);
  v272 = veorq_s8(v262, v268);
  v273 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v270);
  v275 = vaddq_s64(v273, v269);
  v276 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v277 = veorq_s8(v275, v276);
  v278 = veorq_s8(v274, v276);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v271), v276);
  v280 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v272), v276);
  v281 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v284 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v285 = veorq_s8(v279, v283);
  v286 = veorq_s8(v278, v282);
  v287 = veorq_s8(v277, v281);
  v288 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v289 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL);
  v291 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v287);
  v292 = vaddq_s64(v290, v286);
  v293 = vaddq_s64(v289, v285);
  v294 = vaddq_s64(v288, v284);
  v295 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v296 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v297 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v291, v291), v295), v291), v296);
  v298 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v292, v292), v295), v292), v296);
  v299 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v293, v293), v295), v293), v296);
  v300 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v294, v294), v295), v294), v296);
  v301 = vdupq_n_s64(v75);
  v302 = veorq_s8(v300, v301);
  v303 = veorq_s8(v299, v301);
  v304 = veorq_s8(v298, v301);
  v305 = veorq_s8(v297, v301);
  v306 = vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v309 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v310 = veorq_s8(v304, v308);
  v311 = veorq_s8(v303, v307);
  v312 = veorq_s8(v302, v306);
  v313 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v315 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL), v312);
  v317 = vaddq_s64(v315, v311);
  v318 = vaddq_s64(v314, v310);
  v319 = vaddq_s64(v313, v309);
  v320 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  v321 = vdupq_n_s64(v71);
  v322 = vsubq_s64(vorrq_s8(v316, v320), vorrq_s8(v316, v321));
  v323 = vaddq_s64(vsubq_s64(vorrq_s8(v319, v320), vorrq_s8(v319, v321)), v321);
  v324 = vaddq_s64(vsubq_s64(vorrq_s8(v318, v320), vorrq_s8(v318, v321)), v321);
  v325 = vaddq_s64(vsubq_s64(vorrq_s8(v317, v320), vorrq_s8(v317, v321)), v321);
  v326 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v327 = veorq_s8(vaddq_s64(v322, v321), v326);
  v328 = veorq_s8(v325, v326);
  v329 = veorq_s8(v324, v326);
  v330 = veorq_s8(v323, v326);
  v331 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v333 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v334 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL));
  v335 = veorq_s8(v328, v332);
  v336 = veorq_s8(v327, v331);
  v337 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v339 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v336);
  v340 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v335);
  v341 = vaddq_s64(v338, v334);
  v342 = vaddq_s64(v337, v333);
  v343 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  v344 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v345 = vaddq_s64(vsubq_s64(v339, vandq_s8(vaddq_s64(v339, v339), v343)), v344);
  v346 = vaddq_s64(vsubq_s64(v340, vandq_s8(vaddq_s64(v340, v340), v343)), v344);
  v347 = vaddq_s64(vsubq_s64(v341, vandq_s8(vaddq_s64(v341, v341), v343)), v344);
  v348 = vaddq_s64(vsubq_s64(v342, vandq_s8(vaddq_s64(v342, v342), v343)), v344);
  v349 = vdupq_n_s64(v73);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(v346, v349);
  v353 = veorq_s8(v345, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v357 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v358 = veorq_s8(v352, v356);
  v359 = veorq_s8(v351, v355);
  v360 = veorq_s8(v350, v354);
  v361 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v362 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v363 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v360);
  v365 = vaddq_s64(v363, v359);
  v366 = vaddq_s64(v362, v358);
  v367 = vaddq_s64(v361, v357);
  v368 = vdupq_n_s64(v76);
  v369 = vdupq_n_s64(a6);
  v370 = vaddq_s64(vsubq_s64(v364, vandq_s8(vaddq_s64(v364, v364), v368)), v369);
  v371 = vaddq_s64(vsubq_s64(v365, vandq_s8(vaddq_s64(v365, v365), v368)), v369);
  v372 = vaddq_s64(vsubq_s64(v366, vandq_s8(vaddq_s64(v366, v366), v368)), v369);
  v373 = vaddq_s64(vsubq_s64(v367, vandq_s8(vaddq_s64(v367, v367), v368)), v369);
  v374 = vdupq_n_s64(a7);
  v375 = veorq_s8(v373, v374);
  v376 = veorq_s8(v372, v374);
  v377 = veorq_s8(v371, v374);
  v378 = veorq_s8(v370, v374);
  v379 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL);
  v381 = vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL);
  v382 = veorq_s8(v378, vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL));
  v383 = veorq_s8(v377, v381);
  v384 = veorq_s8(v376, v380);
  v385 = veorq_s8(v375, v379);
  v386 = vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL);
  v387 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v388 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v389 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v385);
  v390 = vaddq_s64(v386, v382);
  v391 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v392 = veorq_s8(v390, v391);
  v393 = veorq_s8(vaddq_s64(v387, v383), v391);
  v394 = veorq_s8(vaddq_s64(v388, v384), v391);
  v395 = veorq_s8(v389, v391);
  v396 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v397 = vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL);
  v398 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL)));
  v399 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  v400 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, v397)), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v89)));
  v402.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL))), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v89))), v242);
  v402.val[2] = veorq_s8(vshlq_u64(veorq_s8(v398, v399), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v89))), v241);
  v402.val[1] = veorq_s8(v400, v240);
  v402.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), veorq_s8(v392, v396)), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v89))), v239);
  *(STACK[0x390] + (v82 ^ 0xFFFFFFFFFFFFF2B7)) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v402, xmmword_1009E3420)), *(v78 + (v82 ^ 0xFFFFFFFFFFFFF2B7) - 7));
  return (*(a69 + 8 * ((3227 * (STACK[0x3B0] == 0)) ^ a2)))();
}

uint64_t sub_100034894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  STACK[0x360] = 0x68235AD15D1B0815;
  STACK[0x368] = 0xA401B620023EF62BLL;
  STACK[0x350] = 0x68235AD15D1B0815;
  STACK[0x358] = 0xA401B620023EF62BLL;
  if (v27)
  {
    v28 = a4 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  return (*(a2 + 8 * ((((v26 - 3205) ^ 0x4E4) * v29) ^ (v26 - 1413))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100034910()
{
  v3 = 10 * (v0 ^ 0x9D8);
  v9 = v6;
  v10 = (v3 + 6906) ^ ((((&v8 | 0x4F31F97D) - &v8 + (&v8 & 0xB0CE0680)) ^ 0x17582A1F) * v2);
  (*(v1 + 8 * (v3 ^ 0x202C)))(&v8);
  v10 = (v3 + 6906) ^ (((&v8 & 0x8A04F962 | ~(&v8 | 0x8A04F962)) ^ 0x2D92D5FF) * v2);
  v9 = v5;
  (*(v1 + 8 * (v3 + 8172)))(&v8);
  return (v7 ^ 0x4FF1FEF) - 67570720 + ((v7 << (10 * (v0 ^ 0xD8) + 97)) & 0x9FE3FDEu) - 16257999;
}

uint64_t sub_100034AA8()
{
  LODWORD(STACK[0x5FC]) = v2;
  STACK[0x7C8] = STACK[0x8E0];
  STACK[0x580] = *(v0 + 8 * (v1 - 5627));
  return sub_1000A52AC();
}

uint64_t sub_100034ADC@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1417;
  v4 = (*(v1 + 8 * (a1 + 3263)))();
  LODWORD(STACK[0xAD4]) = v2;
  STACK[0x628] -= 32;
  return (*(v1 + 8 * ((55 * (v2 == ((v3 + 66974237) & 0xFC0203F7 ^ 0xF81353) + ((v3 - 2770) | 0x1B))) ^ v3)))(v4, 197499219);
}

uint64_t sub_100034BCC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((199 * (v6 != ((v4 - 23217089) & 0xF94ADBDF) - 2844)) ^ (a2 + v4 + 3433))))();
}

uint64_t sub_100034C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, char a19, __int16 a20, char a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, uint64_t a26, char *a27)
{
  a25 = (v28 + 2120) ^ ((((&a24 | 0x4B5E1217) - (&a24 & 0x4B5E1217)) ^ 0x72A8D834) * v27);
  a26 = a22;
  a27 = &a21;
  v30 = (*(v29 + 8 * (v28 + 8469)))(&a24);
  return sub_1001480AC(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_100034D28@<X0>(unint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24)
{
  *a24 = v25 + v24;
  v31 = (((a2 - v26 - 1229334454) | 0x10948218) ^ 0xE0F8A1FE) & (((v28 >> (v27 ^ 0xB)) ^ v28) << 7) ^ (v28 >> (v27 ^ 0xB)) ^ v28;
  *(*a20 + a1) ^= v29 & (v31 << 15) ^ v31 ^ ((v29 & (v31 << 15) ^ v31) >> 18);
  return (*(v30 + 8 * (a2 ^ (63 * (a1 > 0x1FB)))))();
}

uint64_t sub_100034DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a17;
  a21 = v24 + 1317436891 * (((&a19 | 0x22B95B5) - (&a19 & 0x22B95B5)) ^ 0xB2280DC3) + 6068;
  v25 = (*(v23 + 8 * (v24 + 7551)))(&a19);
  return (*(v23 + 8 * (((a20 == (v24 ^ v21 ^ 0x54EA77B1)) * (v22 + ((v24 + 335689806) | 0x4010240A) - 3747)) ^ v24)))(v25);
}

uint64_t sub_100034EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a4 + v17 - 0xFF5FFDEFCF5F7AFLL;
  v23 = v13 ^ 0x11;
  v24 = v11 - 1;
  v25 = __ROR8__((a3 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v23 + 986514384) & 0xC532E5EF ^ 0xFFFFFFFFFFFFFA75) - ((v25 + 0x1508DCB2F33ECE2BLL) | 0xE79B7CAD81EAE601) - ((0x6AF7234D0CC131D4 - v25) | v9);
  v27 = v26 ^ a6;
  v28 = v26 ^ a7;
  v29 = (__ROR8__(v27, 8) + v28) ^ v16;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((a8 & (2 * (v31 + v30))) - (v31 + v30) + v20) ^ v21, 8);
  v33 = ((a8 & (2 * (v31 + v30))) - (v31 + v30) + v20) ^ v21 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ v14;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v15;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((v38 + v37) & 0x7DD8ADA57006DB0 ^ v8) + ((v38 + v37) ^ v10) - (((v38 + v37) ^ v10) & 0x7DD8ADA57006DB0)) ^ v12;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x1A2AEBE44253AF03;
  *(a1 + v24 + v22) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ v19) >> (8 * ((a3 + v24) & 7))) ^ *(a3 + v24);
  return (*(v18 + 8 * (((v24 != 0) | (16 * (v24 != 0))) ^ v23)))();
}

uint64_t sub_100035050@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4C8]) = 0;
  v6 = (a1 - 1587);
  STACK[0x570] = v6;
  v7 = 345 * v1 - 1335554723 - 961 * ((((345 * v1 - 1335554723) * v5) >> 32) >> 9);
  v8 = STACK[0x5A0];
  v9 = (v2 + v1 - v4 + (v6 ^ 0x2718C10E));
  v10 = *v9 ^ *(STACK[0x5A0] + v7);
  *(STACK[0x5A0] + v7) = v10;
  v11 = (2 * v9) & 0x3DDCBE3A82F268D8;
  v9 -= 0x6111A0E2BE86CB94uLL;
  v12 = ((&v9[-v11] >> 3 << 59) ^ 0x9F546FEBD08FF01) & ((&v9[-v11] >> 8) ^ 0xFF63A1A0E2EE862BLL) | (&v9[-v11] >> 8) & 0xAB90142F700FELL;
  LODWORD(v11) = 345 * v1 - 1335522983 - 961 * ((((345 * v1 - 1335522983) * v5) >> 32) >> 9);
  v13 = (((v12 ^ 0xF5E546FBFEBDCF7CLL) - 0x48D1AF89B98829A9) ^ ((v12 ^ 0x3F61602B17E5FAFDLL) + 0x7DAA76A6AF2FE3D8) ^ ((v12 ^ 0xAB7BC82F5411CAB4) - 0x164F215D13242C61)) - 0x5DFDD8AC454263FBLL;
  v14 = (v13 ^ 0xCFD1BCED22FC6B55) & (2 * (v13 & 0xCFD1BCED32FD4C06)) ^ v13 & 0xCFD1BCED32FD4C06;
  v15 = ((2 * (v13 ^ 0x52F19CAD62A6E355)) ^ 0x3A404080A0B75EA6) & (v13 ^ 0x52F19CAD62A6E355) ^ (2 * (v13 ^ 0x52F19CAD62A6E355)) & 0x9D202040505BAF52;
  v16 = v15 ^ 0x852020405048A151;
  v17 = (v15 ^ 0x1800000000130000) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x74808101416EBD4CLL) & v16 ^ (4 * v16) & 0x9D202040505BAF50;
  v19 = (v18 ^ 0x14000000404AAD40) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x8920204010110213)) ^ 0xD202040505BAF530) & (v18 ^ 0x8920204010110213) ^ (16 * (v18 ^ 0x8920204010110213)) & 0x9D202040505BAF50;
  v21 = (v20 ^ 0x90000000001AA500) & (v19 << 8) ^ v19;
  v22 = (((v20 ^ 0xD20204050410A43) << 8) ^ 0x202040505BAF5300) & (v20 ^ 0xD20204050410A43) ^ ((v20 ^ 0xD20204050410A43) << 8) & 0x9D202040505BAF00;
  v23 = v21 ^ 0x9D202040505BAF53 ^ (v22 ^ 0x200040500B0000) & (v21 << 16);
  v24 = v13 ^ (2 * ((v23 << 32) & 0x1D20204000000000 ^ v23 ^ ((v23 << 32) ^ 0x505BAF5300000000) & (((v22 ^ 0x9D0020000050AC53) << 16) & 0x1D20204000000000 ^ 0x1D20200000000000 ^ (((v22 ^ 0x9D0020000050AC53) << 16) ^ 0x2040505B00000000) & (v22 ^ 0x9D0020000050AC53))));
  v10 &= 0x3Du;
  v25 = (((v10 ^ 0xD6) + 3) ^ ((v10 ^ 0x43) - 104) ^ ((v10 ^ 0x99) + 78)) + (((v10 ^ 0xCA) - 108) ^ ((v10 ^ 0xDF) - 121) ^ ((v10 ^ 0x24) + 126)) - 4;
  LOBYTE(v22) = v25 & 0x7C ^ 0xDD;
  v26 = v25 ^ (2 * ((v25 ^ 0x42) & (2 * ((v25 ^ 0x42) & (2 * ((v25 ^ 0x42) & (2 * ((v25 ^ 0x42) & (2 * (((2 * (v22 ^ v25 & 0x3E)) ^ 4) & (v25 ^ 0x42) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xE2;
  v27 = __ROR8__(v24 ^ 0x33E729FA063B12DELL, 8);
  v28 = (((v24 ^ 0x5473552DBD3FDC0) + 0x5B0EAE50420D3353) ^ ((v24 ^ 0xDB80A38191EB94CLL) + 0x53F1913A80C077DFLL) ^ ((v24 ^ 0x3CC1242BA667C0A2) + 0x6288BF293FB90E31)) - 0x5D845DF4CA5F1770 + (((v27 ^ 0x843B62D818CB75A6) + 0x61C89FEE5DBAC074) ^ ((v27 ^ 0x51B95CC8373BBA25) - 0x4BB55E018DB5F00FLL) ^ ((v27 ^ 0x792DA1C7030BA864) - 0x6321A30EB985E24ELL));
  v29 = v28 ^ ((v28 ^ 0x96A43F4E51946849) + 0x3F14458132CB9237) ^ ((v28 ^ 0xE99BD835CEBA7145) + 0x402BA2FAADE58B3BLL) ^ ((v28 ^ 0xD689A534F0336913) + 0x7F39DFFB936C936DLL) ^ ((v28 ^ 0xFFF9C77FF3BD759FLL) + 0x5649BDB090E28FE1) ^ 0x664F057400979514;
  v30 = ((v24 ^ 0x343E1B4164AA842ELL) >> (~v26 & 0x90) >> (v26 & 0x6F ^ 0xEu)) ^ (8 * v24) ^ v29;
  v31 = v30 ^ 0x75946F568C40D628;
  v32 = __ROR8__(v29, 8);
  v33 = (((v32 ^ 0x8856E28C3109F910) + 0x2F0BB8CD63426477) ^ ((v32 ^ 0x4E9B8CCE2BFA44E2) - 0x16392970864E267BLL) ^ ((v32 ^ 0x2C19F3B581E8B7DDLL) - 0x74BB560B2C5CD544)) + (((v30 ^ 0xA4F6F1103BB34132) + 0x2E9D61B9480C68E6) ^ ((v30 ^ 0x3612B477FFCEBDF3) - 0x4386DB21738E6BDBLL) ^ ((v30 ^ 0xE78968F7FA23F25BLL) + 0x6DE2F85E899CDB8DLL)) - 0x363493916C725C7DLL;
  v34 = ((v33 ^ 0xAC6F5BB3A04F3CBBLL) + 0x45CB5512F50FA160) ^ v33 ^ ((v33 ^ 0xC8D6488BDB9FCF82) + 0x2172462A8EDF5267) ^ ((v33 ^ 0xFB1DBC943E90E294) + 0x12B9B2356BD07F71) ^ ((v33 ^ 0x89FF5EF2EFFF73B6) + 0x605B5053BABFEE53);
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34 ^ 0xBB15F87A5BC4AE26, 8);
  v37 = (((v35 ^ 0x31AC982D5BCA4747) + 0x778EAA1368AA6A99) ^ ((v35 ^ 0xFAE9044FBDAA4F42) - 0x4334C98E71359D62) ^ ((v35 ^ 0x2F768AB069F91D87) + 0x6954B88E5A993059)) + 0x79668C640E9BD9E8 + (((v36 ^ 0x8E935AF95FEDFB99) - 0x5D14E7DBF2D4BC7) ^ ((v36 ^ 0xD3EB7179BE8087BLL) + 0x79835C6C84D747DBLL) ^ ((v36 ^ 0xB7F501165941589CLL) - 0x3CB71592B981E8C2));
  v38 = v37 ^ ((v37 ^ 0x8E74F3C3C91DADACLL) + 0x2DD7B4E878F2A576) ^ ((v37 ^ 0x1E6A7E4B2498C774) - 0x4236C69F6A883052) ^ ((v37 ^ 0x3AF5470250EA6355) - 0x66A9FFD61EFA9473) ^ ((v37 ^ 0xF6B7725EF37FFEABLL) + 0x551435754290F673) ^ 0xB53561688AB568ACLL;
  v39 = v38 ^ __ROR8__(v35 ^ 0xB9DDCDC1CC9FD220, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v39 ^ 0xD65C634C04BBB089) - 0x335AF8B042892AFBLL) ^ ((v39 ^ 0x59ACFD4201D7656CLL) + 0x43559941B81A00E2) ^ ((v39 ^ 0xD08C29ED8C260862) - 0x358AB211CA149210)) + (((v40 ^ 0xBF8E4F3420562166) - 0xFA778FDF3F5A043) ^ ((v40 ^ 0xA6D81C0CB9033E2DLL) - 0x16F12BC56AA0BF08) ^ ((v40 ^ 0x8CE65957E0C463ABLL) - 0x3CCF6E9E3367E28ELL)) + 0x182FA92BA14F0B85;
  v42 = ((v41 ^ 0xEC274004ED811BEBLL) + 0x2BC4809E35DD21E0) ^ v41 ^ ((v41 ^ 0x8CE7D2FD93FA4AABLL) + 0x4B0412674BA670A0) ^ ((v41 ^ 0xE7235241862F6364) + 0x20C092DB5E735951) ^ ((v41 ^ 0xBFFFFFDDDFF7F7EFLL) + 0x781C3F4707ABCDDCLL);
  v43 = __ROR8__(v39 ^ 0xE5069BFC46329A72, 61);
  v44 = v42 ^ v43 ^ 0x4D936B0654C73B97;
  v45 = (((v42 ^ v43 ^ 0xC645F202B38AD797) + 0x742966FB18B21400) ^ ((v42 ^ v43 ^ 0xC376EFD2CBB2E3DDLL) + 0x711A7B2B608A27B6) ^ ((v42 ^ v43 ^ 0x8FBBDF61D446EADBLL) + 0x3DD74B987F7E2EB4)) + ((((v42 >> 8) ^ 0x39DB92AF9D73DAF1) - 0x4D577940F69E0DD1) ^ (((v42 >> 8) ^ 0x988A86A1E942EDB1) + 0x13F992B17D50C56FLL) ^ (((v42 >> 8) ^ 0xA1084DAC3BE68BA1) + 0x2A7B59BCAFF4A37FLL)) + ((((v42 << 56) ^ 0x6C6F65B9031124CELL) - 0x408342D5AA5C29D3) ^ (((v42 << 56) ^ 0xA3741EC18EB8511FLL) + 0x7067C652D80AA3FELL) ^ (((v42 << 56) ^ 0xF31B7B788DA975D1) + 0x2008A3EBDB1B8734)) - 0x6A2F45681715158FLL;
  v46 = ((v45 ^ 0x78223A0757217746) - 0x30D10D217588FBCBLL) ^ v45 ^ ((v45 ^ 0x7EBA1FF83B72F386) - 0x364928DE19DB7F0BLL) ^ ((v45 ^ 0xB684AD60B10D77E6) + 0x18865B96C5B0495) ^ ((v45 ^ 0xF8EFBFB9FFF77FABLL) + 0x4FE3776022A10CDALL);
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46 ^ 0xB36B4E8CE5377F2, 8);
  v49 = (((v47 ^ 0xFB66640E8503901DLL) - 0x40121459EF779C1FLL) ^ ((v47 ^ 0x56EB3F91D3168F1CLL) + 0x1260B039469D7CE2) ^ ((v47 ^ 0xB9603D04C1F765D6) - 0x2144D53AB8369D4)) - 0x3FDA42AEC41FD435 + (((v48 ^ 0x702BA5EF919CEAE1) + 0x75BCF3F65325F081) ^ ((v48 ^ 0x67CCC53A0F7003A8) + 0x625B9323CDC919CALL) ^ ((v48 ^ 0x4C0664A5270976CLL) + 0x157305390C98D0ELL));
  v50 = (v49 ^ 0xD0B2E2F5AB0AF6B0) & (2 * (v49 & 0xD8C308F5B390E6C5)) ^ v49 & 0xD8C308F5B390E6C5;
  v51 = ((2 * (v49 ^ 0xC134F214CB2AFF30)) ^ 0x33EFF5C2F17433EALL) & (v49 ^ 0xC134F214CB2AFF30) ^ (2 * (v49 ^ 0xC134F214CB2AFF30)) & 0x19F7FAE178BA19F4;
  v52 = v51 ^ 0x8100A21088A0815;
  v53 = (v51 ^ 0x10460C050001120) & (4 * v50) ^ v50;
  v54 = ((4 * v52) ^ 0x67DFEB85E2E867D4) & v52 ^ (4 * v52) & 0x19F7FAE178BA19F4;
  v55 = (v54 ^ 0x1D7EA8160A801D0) & (16 * v53) ^ v53;
  v56 = ((16 * (v54 ^ 0x1820106018121821)) ^ 0x9F7FAE178BA19F50) & (v54 ^ 0x1820106018121821) ^ (16 * (v54 ^ 0x1820106018121821)) & 0x19F7FAE178BA19F0;
  v57 = (v56 ^ 0x1977AA0108A01900) & (v55 << 8) ^ v55;
  v58 = (((v56 ^ 0x8050E0701A00A5) << 8) ^ 0xF7FAE178BA19F500) & (v56 ^ 0x8050E0701A00A5) ^ ((v56 ^ 0x8050E0701A00A5) << 8) & 0x19F7FAE178BA1900;
  v59 = v57 ^ 0x19F7FAE178BA19F5 ^ (v58 ^ 0x11F2E06038180000) & (v57 << 16);
  v60 = v49 ^ (2 * ((v59 << 32) & 0x19F7FAE100000000 ^ v59 ^ ((v59 << 32) ^ 0x78BA19F500000000) & (((v58 ^ 0x8051A8140A208F5) << 16) & 0x19F7FAE100000000 ^ 0x116824100000000 ^ (((v58 ^ 0x8051A8140A208F5) << 16) ^ 0x7AE178BA00000000) & (v58 ^ 0x8051A8140A208F5)))) ^ 0xFBB231AA4D47F10DLL;
  v61 = v60 ^ __ROR8__(v47 ^ 0xBB7470576A740C02, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((v62 ^ 0x17B7D8BBFCE2845) - 0x4F3DB0F5F50CEB76) ^ ((v62 ^ 0x114865E994005D14) - 0x5F0EA897DEC29E27) ^ ((v62 ^ 0x3108C874908385DALL) - 0x7F4E050ADA4146E9)) + (((v61 ^ 0x62EE7FBB4345DD5FLL) - 0x6F38B77033A6271ELL) ^ ((v61 ^ 0xFFB807BD8084E498) + 0xD9130890F98E127) ^ ((v61 ^ 0xDA4ED8DA6282044BLL) + 0x2867EFEEED9E01F6)) - 0x41F3768280F0903ALL;
  *(v8 + v11) ^= (v63 ^ ((v63 ^ 0xEBA0961341018D0CLL) + 0x179E6A10052106B3) ^ ((v63 ^ 0x55E331703BE97D0DLL) - 0x5622328C8036094CLL) ^ ((v63 ^ 0xE2717923BF19978DLL) + 0x1E4F8520FB391C34) ^ ((v63 ^ 0x5FF3DDBC7E2E13CDLL) - 0x5C32DE40C5F1678CLL) ^ 0xA8F1412E93582800) >> ((8 * (v9 & 7)) ^ 0x20u);
  return (*(v3 + 8 * ((115 * ((v1 + 655934856) < 0x40)) ^ a1)))();
}

uint64_t sub_100036488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  v27 = *(v24 + 8);
  v28 = *(v27 + 8);
  v29 = 1824088897 * ((-876983240 - (&a20 | 0xCBBA4C38) + (&a20 | 0x3445B3C7)) ^ 0x6C2C60A5);
  a22 = (*v27 ^ 0xEFEEEFEE) - v29 + ((2 * *v27) & 0xDFDDDFDC) + 1588984476;
  a20 = v26 - 1410487761 + v29;
  a23 = v28;
  a24 = a18;
  (*(v25 + 8 * (v26 ^ 0x541241E1)))(&a20);
  v30 = *(v24 + 8);
  v31 = *(v30 + 24);
  v32 = 1824088897 * ((&a20 + 183836943 - 2 * (&a20 & 0xAF5210F)) ^ 0x529CF26D);
  a22 = (*(v30 + 16) ^ 0xFFBDFA8F) - v32 + (((82 * (v26 ^ (v26 - 21))) ^ 0xFF7BF240) & (2 * *(v30 + 16))) + 1323757563;
  a20 = v26 - 1410487761 + v32;
  a23 = v31;
  a24 = a18;
  v33 = (*(v25 + 8 * (v26 - 1410481887)))(&a20);
  return (*(v25 + 8 * ((3872 * (*(v24 + 16) > 1u)) ^ (a14 + v26 - 3308))))(v33);
}

uint64_t sub_100036644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a13;
  a16 = v17 + 1317436891 * (&a14 ^ 0xB0039876) + 4357;
  v18 = (*(v16 + 8 * (v17 + 5840)))(&a14);
  return (*(v16 + 8 * (((a15 == ((v17 - 954961928) ^ 0xC7EC6D02)) * ((151 * (v17 ^ 0xEC2)) ^ 0x1605)) ^ v17)))(v18);
}

uint64_t sub_1000366DC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v2 + 8 * ((v3 - 3894) ^ 0x2D2F)))(16, 0x20040A4A59CD2) == 0;
  return (*(v2 + 8 * ((39 * (((v3 + 60) ^ v4) & 1)) ^ (v3 - 3894))))();
}

uint64_t sub_100036758(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA60] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x109F7CFA) - 278887674) ^ ((v1 ^ 0x1AF41999) - 452204953) ^ (((v2 + 1060390928) & 0xC0CBB7EF ^ 0xFE51141B) + (v1 ^ 0x1AEFC30))) + 197499229;
  v5 = (*(v3 + 8 * ((v2 + 3176) ^ 0x191u)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * (((2 * (v5 == 0)) | (8 * (v5 == 0))) ^ (v2 + 3176))))();
}

uint64_t sub_100036838(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = v5 ^ 0xC5354E34 ^ v6;
  v11 = LODWORD(STACK[0x58C]) + 646405207;
  v12 = LODWORD(STACK[0x590]) + 1893317045;
  v13 = v7 + 1;
  v14 = LODWORD(STACK[0x550]) + 13;
  v15 = LODWORD(STACK[0x54C]) + 13;
  v16 = LODWORD(STACK[0x55C]) + 13;
  LODWORD(STACK[0x5B0]) = v13;
  LODWORD(STACK[0x550]) = v14;
  LODWORD(STACK[0x54C]) = v15;
  v17 = v15 % 0x10E;
  LODWORD(STACK[0x55C]) = v16;
  v18 = v16 % 0x10E;
  v19 = STACK[0x5A8];
  v20 = *(STACK[0x5A8] + 4 * ((13 * v13 + 702) % 0x10Eu)) ^ 0x32AE50E;
  v21 = 13 * v13;
  v22 = *(STACK[0x5A8] + 4 * ((13 * v13 + 1573) % 0x10Eu));
  v23 = v22 >> LODWORD(STACK[0x548]);
  HIDWORD(v25) = v22 ^ 0x1B1D2;
  LODWORD(v25) = v22 ^ 0x43C0000;
  v24 = v25 >> 18;
  HIDWORD(v25) = v22 ^ 0x52;
  LODWORD(v25) = v22 ^ 0x43DB180;
  v26 = v25 >> 7;
  v27 = *(STACK[0x5A8] + 4 * ((13 * v13 + 1742) % 0x10Eu));
  HIDWORD(v25) = *(STACK[0x5A8] + 4 * ((13 * v13 + 871) % 0x10Eu)) ^ 0x32AE50E;
  LODWORD(v25) = HIDWORD(v25);
  v28 = (v20 >> 3) ^ __ROR4__(v20, 7) ^ __ROR4__(v20, 18);
  v29 = v23 ^ v26 ^ v24 ^ 0x87B63A;
  v30 = (v25 >> 17) ^ (HIDWORD(v25) >> 10) ^ __ROR4__(HIDWORD(v25), 19);
  HIDWORD(v25) = v27 ^ 0x1B1D2;
  LODWORD(v25) = v27 ^ 0x43C0000;
  v31 = v25 >> 17;
  v32 = v10 ^ (a4 - ((2 * (a4 + 653072418)) & 0x703CB11E) + 1594585265) ^ v29;
  v33 = (((v28 + 868358040 - ((2 * v28) & 0x67842F30)) ^ a5) - (a5 ^ 0x33C21798)) ^ ((v32 ^ v28) - v32) ^ (((v28 + 1514530160 - ((2 * v28) & 0xB48BCAE0)) ^ v9) - (v9 ^ 0x5A45E570));
  HIDWORD(v25) = v27 ^ 0x5B1D2;
  LODWORD(v25) = v27 ^ 0x4380000;
  v34 = (v27 >> 10) ^ 0x10F6C ^ v31 ^ (v25 >> 19);
  v35 = (v8 ^ 0xA7EDE5D3) & (2 * (v8 & 0x87EDF1D8)) ^ v8 & 0x87EDF1D8;
  v36 = ((2 * (v8 ^ 0xAF34E653)) ^ 0x51B22F16) & (v8 ^ 0xAF34E653) ^ (2 * (v8 ^ 0xAF34E653)) & 0x28D9178A;
  v37 = v36 ^ 0x28491089;
  v38 = (v36 ^ 0x901708) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0xA3645E2C) & v37 ^ (4 * v37) & 0x28D91788;
  v40 = (v39 ^ 0x20401600) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x8990183)) ^ 0x8D9178B0) & (v39 ^ 0x8990183) ^ (16 * (v39 ^ 0x8990183)) & 0x28D91780;
  v42 = v40 ^ 0x28D9178B ^ (v41 ^ 0x8911000) & (v40 << 8);
  v43 = v9 ^ v8 ^ (2 * ((v42 << 16) & 0x28D90000 ^ v42 ^ ((v42 << 16) ^ 0x178B0000) & (((v41 ^ 0x2048070B) << 8) & 0x28D90000 ^ 0x20C80000 ^ (((v41 ^ 0x2048070B) << 8) ^ 0x59170000) & (v41 ^ 0x2048070B)))) ^ 0x8D083BBE;
  v44 = ((v9 ^ 0x4ED6B3B) - 82668347) ^ ((v9 ^ 0xA5A5F10B) + 1515851509) ^ ((v9 ^ 0xFB0D7F40) + 83001536);
  v45 = v44 - 2092505732;
  v46 = (v5 ^ 0xFC4A8053) & (2 * (v5 & 0xFD6CC913)) ^ v5 & 0xFD6CC913;
  v47 = ((2 * (v5 ^ 0x2CDA9073)) ^ 0xA36CB2C0) & (v5 ^ 0x2CDA9073) ^ (2 * (v5 ^ 0x2CDA9073)) & 0xD1B65960;
  v48 = v47 ^ 0x50924920;
  v49 = (v47 ^ 0x81240160) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0x46D96580) & v48 ^ (4 * v48) & 0xD1B65960;
  v51 = (v50 ^ 0x40904100) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x91261860)) ^ 0x1B659600) & (v50 ^ 0x91261860) ^ (16 * (v50 ^ 0x91261860)) & 0xD1B65960;
  v53 = v51 ^ 0xD1B65960 ^ (v52 ^ 0x11241000) & (v51 << 8);
  v54 = v5 ^ (a4 - 2 * ((a4 + 653072418) & 0x102723FB ^ a4 & 1) + 924072988) ^ (2 * ((v53 << 16) & 0x51B60000 ^ v53 ^ ((v53 << 16) ^ 0x59600000) & (((v52 ^ 0xC0924960) << 8) & 0x51B60000 ^ 0x41A60000 ^ (((v52 ^ 0xC0924960) << 8) ^ 0x36590000) & (v52 ^ 0xC0924960)))) ^ 0xEC675829;
  v55 = (v10 ^ (a4 - ((2 * (a4 + 1341003822)) & 0x703CB11E) - 2012450627)) - (a4 + 1341003822);
  v56 = ((v44 - 2 * ((v44 - 2092505732) & 0x33C2179B ^ v44 & 3) - 1224147692) ^ a5) - (v44 - 2092505732);
  v57 = v12 + (v10 ^ 0xC7E1A770) - v55 - v54 - 1567496124;
  v58 = (v34 ^ v56) - v56;
  v59 = ((v44 - 2092505732) ^ 0x4E2A50DB ^ v34) - ((v44 - 2092505732) ^ 0x4E2A50DB);
  v60 = (v34 ^ (a4 + 1341003822) ^ 0x4E2A50DB ^ v55 ^ v30) - ((a4 + 1341003822) ^ 0x4E2A50DB ^ v55 ^ v30);
  v61 = v11 - 320584287 + (a5 ^ 0xCC3DE867) - v56 - v43 + 1;
  v55 ^= 0xF72E3395;
  LODWORD(STACK[0x588]) = v55;
  v62 = (a4 + 1341003822) ^ 0x63E48859;
  LODWORD(STACK[0x584]) = v62;
  v63 = v57 - (v62 + v55);
  v64 = (v59 ^ v58 ^ v60) - v61;
  LODWORD(STACK[0x57C]) = v56 ^ 0xF72E3395;
  v65 = *(v19 + 4 * ((v21 + 2418) % 0x10Eu));
  LODWORD(STACK[0x580]) = v21;
  v66 = ((v65 ^ 0x82279D11) + 2111333103) ^ ((v65 ^ 0x34CAE02D) - 885710893) ^ ((v65 ^ 0xB2D0CCEE) + 1294938898);
  v67 = *(v19 + 4 * ((v21 + 2535) % 0x10Eu));
  LODWORD(STACK[0x570]) = v45 ^ 0x63E48859;
  v68 = v61 - ((v45 ^ 0x63E48859) + (v56 ^ 0xF72E3395));
  LODWORD(STACK[0x58C]) = v68;
  v69 = v68 ^ v43;
  LODWORD(STACK[0x560]) = v69;
  LODWORD(STACK[0x590]) = v63;
  LODWORD(STACK[0x56C]) = v63 ^ v54;
  v70 = v12 + v29 + v66 + v30 + (((v67 ^ 0x7C95D989) - 2090195337) ^ ((v67 ^ 0x8E933A9) - 149500841) ^ ((v67 ^ 0x70415BF2) - 1883331570)) + v57;
  *(v19 + 4 * ((v21 + 2626) % 0x10Eu)) = (v70 + 2054286044) ^ (((v70 + 2054286044) ^ 0x7D107F56) - 146604958) ^ (((v70 + 2054286044) ^ 0x7F4D9269) - 182513313) ^ (((v70 + 2054286044) ^ 0xD8476E00) + 1377168696) ^ (((v70 + 2054286044) ^ 0xAFB7FFF7) + 635796673) ^ 0x7190CD1A;
  v71 = v70 + (v63 ^ v54) + 1585156161;
  v72 = v33 - v11 + (((*(v19 + 4 * v18) ^ 0xFF6263B1) + 10329167) ^ ((*(v19 + 4 * v18) ^ 0xA2F2275F) + 1561188513) ^ ((*(v19 + 4 * v18) ^ 0x59ADF53C) - 1504572732)) + (((*(v19 + 4 * v17) ^ 0xFE87EAA) - 266895018) ^ ((*(v19 + 4 * v17) ^ 0xB5A69D9B) + 1247371877) ^ ((*(v19 + 4 * v17) ^ 0xBE7352E3) + 1099738397)) + v64;
  v73 = ((v72 - 1015462265) ^ 0xC557657A) & (2 * ((v72 - 1015462265) & 0xC997757B)) ^ (v72 - 1015462265) & 0xC997757B;
  v74 = ((2 * ((v72 - 1015462265) ^ 0xC677C53C)) ^ 0x1FC1608E) & ((v72 - 1015462265) ^ 0xC677C53C) ^ (2 * ((v72 - 1015462265) ^ 0xC677C53C)) & 0xFE0B046;
  v75 = v74 ^ 0x209041;
  v76 = (v74 ^ 0xEC02004) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0x3F82C11C) & v75 ^ (4 * v75) & 0xFE0B044;
  v78 = v76 ^ 0xFE0B047 ^ (v77 ^ 0xF808000) & (16 * v76);
  v79 = (16 * (v77 ^ 0x603043)) & 0xFE0B040 ^ 0x1E0B007 ^ ((16 * (v77 ^ 0x603043)) ^ 0xFE0B0470) & (v77 ^ 0x603043);
  v80 = (v78 << 8) & 0xFE0B000 ^ v78 ^ ((v78 << 8) ^ 0xE0B04700) & v79;
  *(v19 + 4 * (v14 % 0x10E)) = (v72 - 1015462265) ^ (2 * ((v80 << 16) & 0xFE00000 ^ v80 ^ ((v80 << 16) ^ 0x30470000) & ((v79 << 8) & 0xFE00000 ^ 0xF400000 ^ ((v79 << 8) ^ 0x60B00000) & v79))) ^ 0xD3ABA427;
  v81 = v72 - v69 - 24487423;
  v82 = *(STACK[0x5A0] + (158 * (v71 >> 4) + 14694) % 0x3C9u);
  v83 = (4 * a4) & (2 * (a4 & 4)) ^ a4 & 8;
  v84 = ((((((*(STACK[0x5A0] + (158 * (HIBYTE(v71) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * (v71 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(STACK[0x5A0] + (158 * (BYTE2(v71) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * ((v71 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(STACK[0x5A0] + (158 * ((v71 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19) ^ (16 * (*(STACK[0x5A0] + (158 * (v71 >> 12) + 14694) % 0x3C9u) ^ 0x19))) << v83 << (v83 ^ 8);
  v85 = *(STACK[0x5A0] + (158 * (v71 & 0xF) + 14694) % 0x3C9u) ^ 0x19 ^ v84;
  v86 = v82 ^ (v85 >> 4);
  LOBYTE(v11) = ((158 * (v71 & 0xF) + 14694) % 0x3C9u) & 0x3C;
  v87 = v81 >> (((v82 & 0x96 ^ 0x86) + (v82 & 0x96 ^ 0x10)) & 0xFE ^ ((v11 ^ 0x3C) + v11) ^ 0xB2);
  v88 = ((*(STACK[0x5A0] + (158 * (v87 & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * (v87 >> 4) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v89 = ((v88 | *(STACK[0x5A0] + (158 * (BYTE2(v81) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * ((v81 >> 20) & 0xF) + 13725) % 0x3C9u) ^ 0x19) << 12);
  LOBYTE(v17) = *(STACK[0x5A0] + (158 * (v81 >> 4) + 14694) % 0x3C9u);
  LOWORD(v30) = (158 * (v81 & 0xF) + 14694) % 0x3C9u;
  v90 = ((v89 | *(STACK[0x5A0] + (158 * ((v81 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * (v81 >> 12) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v91 = *(STACK[0x5A0] + v30) ^ 0x19;
  v92 = v85 & 0xF;
  LOBYTE(v54) = v17 ^ ((v90 | v91) >> 4) ^ 0x19;
  v93 = 158 * (v92 & 0xFFFFFF0F | (16 * (v91 & 0xF)));
  v94 = 158 * (*(STACK[0x5A0] + (v93 + 70942 - 969 * ((4432371 * (v93 + 70942)) >> 32))) ^ LODWORD(STACK[0x540]));
  LOBYTE(v82) = v86 ^ 0x19;
  v95 = *(STACK[0x5A0] + (v94 + 70942 - 969 * ((4432371 * (v94 + 70942)) >> 32)));
  v96 = *(STACK[0x5A0] + (v94 + 18644 - 969 * ((4432371 * (v94 + 18644)) >> 32)));
  v97 = 158 * ((((v96 >> 4) ^ 1) + ((v96 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(STACK[0x5A0] + (v93 + 18644 - 969 * (((v93 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v98 = 158 * (v82 & 0xF | (16 * (v54 & 0xF)));
  v99 = *(STACK[0x5A0] + (v98 + 70942 - 969 * ((4432371 * (v98 + 70942)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v97 - 969 * ((4432371 * v97) >> 32))) ^ 0x19)) ^ 0x19;
  v100 = *(STACK[0x5A0] + (v98 + 18644 - 969 * (((v98 + 18644) & 0xFFFEu) / 0x3C9)));
  LOBYTE(v98) = v95 ^ 0x19;
  v101 = v95 ^ 0x19 ^ (16 * (*(STACK[0x5A0] + (v99 + 449 + (v99 + 449) * (((3646 - v99) | 0xFFFFF031) - ((-450 - v99) & 0xFF9B8FCE) + ((((v99 + 449) & 0xC) + ((-450 - v99) & 0x7D99800C)) | 0xA60A106C))) % 0x3C9) ^ 0x19));
  v102 = (*(STACK[0x5A0] + (158 * v99 + 18644 - 969 * ((4432371 * (158 * v99 + 18644)) >> 32))) >> 4) ^ 1;
  v103 = 158 * ((v102 - ((2 * v102) & 0xF3) + 25) ^ v100) + 70942;
  v104 = 158 * (v54 & 0xF0 | (v82 >> 4));
  v105 = 158 * (*(STACK[0x5A0] + (v104 + 70942 - 969 * ((4432371 * (v104 + 70942)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v103 - 969 * ((4432371 * v103) >> 32))) ^ 0x19)) ^ 0x19);
  v106 = *(STACK[0x5A0] + (v105 + 70942 - 969 * ((4432371 * (v105 + 70942)) >> 32)));
  v107 = *(STACK[0x5A0] + (v105 + 18644 - 969 * ((4432371 * (v105 + 18644)) >> 32)));
  v108 = 158 * ((((v107 >> 4) ^ 0x21) + ((v107 >> 3) & 0x12 ^ 0xFD) - 6) ^ *(STACK[0x5A0] + (v104 + 18644 - 969 * (((v104 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v109 = 158 * ((v90 >> 8) & 0xF0 | (v84 >> 12));
  v110 = *(STACK[0x5A0] + (v109 + 18644 - 969 * (((v109 + 18644) & 0xFFFEu) / 0x3C9)));
  v111 = 158 * (*(STACK[0x5A0] + (v109 + 70942 - 969 * ((4432371 * (v109 + 70942)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v108 - 969 * ((4432371 * v108) >> 32))) ^ 0x19)) ^ 0x19);
  v112 = ((*(STACK[0x5A0] + (v111 + 70942 - 969 * ((4432371 * (v111 + 70942)) >> 32))) ^ 0x19) << 12) ^ ((v106 ^ 0x19) << 8);
  v113 = *(STACK[0x5A0] + (v111 + 18644 - 969 * ((4432371 * (v111 + 18644)) >> 32))) >> 4;
  v114 = 158 * (((v113 ^ 1) - 2 * ((v113 ^ 1) & 0xFD ^ v113 & 4) + 25) ^ v110) + 70942;
  v115 = (v90 >> 12) & 0xF0 | HIWORD(v84) & 0xF;
  v116 = 158 * ((((BYTE2(v90) & 0xD ^ 0x110D) + (BYTE2(v90) & 0xD)) ^ 0x117B) + v115);
  v117 = 158 * (*(STACK[0x5A0] + (158 * v115 + 70942 - 969 * ((4432371 * (158 * v115 + 70942)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v114 - 969 * ((4432371 * v114) >> 32))) ^ 0x19)) ^ 0x19);
  v118 = v117 + 70942 - 969 * ((4432371 * (v117 + 70942)) >> 32);
  v119 = 158 * ((v89 >> 8) & 0xF0 | (v84 >> 20) & 0xF);
  v120 = (*(STACK[0x5A0] + (v117 + 18644 - 969 * ((4432371 * (v117 + 18644)) >> 32))) >> 4) ^ 1;
  v121 = 158 * ((v120 - ((2 * v120) & 0xF3) + 25) ^ *(STACK[0x5A0] + v116 % 0x3C9u)) + 70942;
  LOBYTE(v110) = *(STACK[0x5A0] + (v119 + 18644 - 969 * (((v119 + 18644) & 0xFFFEu) / 0x3C9)));
  v122 = 158 * (*(STACK[0x5A0] + (v119 + 70942 - 969 * ((4432371 * (v119 + 70942)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v121 - 969 * ((4432371 * v121) >> 32))) ^ 0x19)) ^ 0x19);
  v123 = v122 + 70942;
  v124 = (*(STACK[0x5A0] + (v122 + 18644 - 969 * ((4432371 * (v122 + 18644)) >> 32))) >> 4) ^ 1;
  v125 = v123 - 969 * ((4432371 * v123) >> 32);
  v126 = 158 * ((v124 + (~(2 * v124) | 0xED) + 26) ^ v110) + 70942;
  v127 = v126 - 969 * ((4432371 * v126) >> 32);
  v128 = 158 * ((v89 >> 12) & 0xF0 | HIBYTE(v84) & 0xF);
  v129 = 158 * (*(STACK[0x5A0] + (v128 + 70942 - 969 * ((4432371 * (v128 + 70942)) >> 32))) ^ 0x19 ^ ((*(STACK[0x5A0] + v127) ^ 0x19u) << ((v127 & 9) - 5 + (v127 & 9 ^ 9))));
  v130 = (158 * (v101 & 0xF0 | v82 & 0xFu) + 111706) % (((((158 * (v101 & 0xF0 | v82 & 0xF) + 111706) & 0x22784) + ((150436 - 158 * (v101 & 0xF0 | v82 & 0xF)) & 0x22784)) ^ (((v84 >> 28) & 0xFFFFFFFD ^ 0x2404D) + ((v84 >> 28) & 0xFFFFFFFD))) & 0x20BCB);
  v131 = (*(STACK[0x5A0] + (v129 + 18644) % 0x3C9u) >> 4) ^ 1;
  v132 = 158 * ((v131 + (~(2 * v131) | 0xED) + 26) ^ *(STACK[0x5A0] + (v128 + 18644 - 969 * (((v128 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v133 = 158 * ((v88 >> 8) & 0xF0 | (v84 >> 28)) + 70942;
  v134 = 158 * (*(STACK[0x5A0] + (v133 - 969 * ((4432371 * v133) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v132 - 969 * ((4432371 * v132) >> 32))) ^ 0x19)) ^ 0x19) + 70942;
  v135 = v112 ^ v101;
  v136 = *(STACK[0x5A0] + v125) ^ 0x19;
  v137 = v112 ^ v101 ^ ((*(STACK[0x5A0] + v118) ^ 0x19) << 16);
  v138 = v137 ^ (v136 << 20);
  v139 = v138 ^ ((*(STACK[0x5A0] + (v129 + 70942) % 0x3C9u) ^ 0x19) << 24) ^ ((*(STACK[0x5A0] + (v134 - 969 * ((4432371 * v134) >> 32))) ^ 0xFFFFFFF9) << 28);
  v140 = 158 * (v92 & 0xFFFFFF0F | (16 * (v98 & 0xF))) + 111706;
  v141 = *(STACK[0x5A0] + (v140 - 969 * ((4432371 * v140) >> 32)));
  v142 = 158 * ((v82 >> 4) | (16 * (((v110 & 0xF ^ 6) + (v110 & 0xF ^ 9)) & (v135 >> 8)))) + 111706;
  v143 = 158 * ((v112 >> 8) & 0xF0 | (v84 >> 12)) + 111706;
  v144 = ((*(STACK[0x5A0] + (v142 - 969 * ((4432371 * v142) >> 32))) ^ 0x19) << 8) ^ (16 * (*(STACK[0x5A0] + v130) ^ 0x19));
  v145 = 158 * ((v137 >> 12) & 0xF0 | HIWORD(v84) & 0xF) + 111706;
  v146 = 158 * (HIWORD(v138) & 0xF0 | (v84 >> 20) & 0xF) + 111706;
  v147 = v146 - 969 * ((4432371 * v146) >> 32);
  v148 = v141 ^ 0x19 ^ v144;
  v149 = v148 ^ ((*(STACK[0x5A0] + (v143 - 969 * ((4432371 * v143) >> 32))) ^ 0x19) << 12);
  v150 = v149 ^ ((*(STACK[0x5A0] + (v145 - 969 * ((4432371 * v145) >> 32))) ^ 0x19) << 16);
  v151 = v150 ^ ((*(STACK[0x5A0] + v147) ^ 0x19) << 20);
  v152 = 158 * (HIBYTE(v139) & 0xF0 | (v84 >> 28)) + 111706;
  v153 = ((*(STACK[0x5A0] + (v152 - 969 * ((4432371 * v152) >> 32))) ^ 0xFFFFFFF9) << 28) ^ ((*(STACK[0x5A0] + (158 * (((HIBYTE(v139) & 0xF) << (116 * (((v84 >> 20) & 5 ^ 0xF5) + ((v84 >> 20) & 5)))) ^ HIBYTE(v84) & 0xF) + 111706) % 0x3C9) ^ 0x19) << 24) ^ v151;
  v154 = ((((*(STACK[0x5A0] + 158 * (HIWORD(v150) & 0xF) % ((((158 * (BYTE2(v150) & 0xF)) & 0x3C8) - ((158 * (BYTE2(v150) & 0xF)) | 0x437)) & 0x7FFu)) ^ 0x19 | ((*(STACK[0x5A0] + (158 * (HIBYTE(v153) & 0xF) - 969 * (((683982 * (HIBYTE(v153) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * (v153 >> 28) - 969 * (((683982 * (v153 >> 28)) >> 16) >> 6))) ^ 0x19) << 12)) << 8) ^ ((*(STACK[0x5A0] + (158 * ((v151 >> 20) & 0xF) - 969 * (((683982 * ((v151 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x19) << 12) | *(STACK[0x5A0] + (158 * ((v144 >> 8) & 0xF) - 969 * (((683982 * ((v144 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * (v149 >> 12) - 969 * (((683982 * (v149 >> 12)) >> 16) >> 6))) ^ 0x19) << 12);
  v155 = (LODWORD(STACK[0x584]) - LODWORD(STACK[0x56C])) ^ 0x43DB1D2 ^ v71;
  v156 = STACK[0x580];
  v157 = STACK[0x5A8];
  *(STACK[0x5A8] + 4 * ((v156 + 897) % 0x10Eu)) = (LODWORD(STACK[0x570]) - LODWORD(STACK[0x560])) ^ 0x32AE50E ^ (16 * (*(STACK[0x5A0] + (158 * (v148 >> 4) - 969 * (((683982 * (v148 >> 4)) >> 16) >> 6))) ^ 0x19)) ^ (v154 | *(STACK[0x5A0] + (158 * (v141 & 0xF ^ 9) - 969 * (((683982 * (v141 & 0xF ^ 9u)) >> 16) >> 6))) ^ 0x19);
  *(v157 + 4 * ((v156 + 1768) % 0x10Eu)) = v155;
  return (*(STACK[0x598] + 8 * ((2379 * (LODWORD(STACK[0x5B0]) == 63)) ^ LODWORD(STACK[0x4B0]))))();
}

uint64_t sub_1000368BC@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v36 = v32 - 1803886957;
  v37 = a4 + v29 + 717382682;
  LODWORD(STACK[0x500]) = v37 + 722124153;
  LODWORD(STACK[0x520]) = (v28 - a3) ^ (a1 - 1732751232);
  LODWORD(STACK[0x524]) = v27 + 722124153;
  LODWORD(STACK[0x510]) = (v28 ^ v30) + v27 + 722124153;
  LODWORD(STACK[0x4FC]) = (v36 ^ 0x7198830F) - 7642611;
  LODWORD(STACK[0x504]) = v37 + (a2 ^ 0xD19CBFAF ^ v31) + 620671939;
  LODWORD(STACK[0x508]) = (a1 - 1732751232) ^ 0x7198830F;
  LODWORD(STACK[0x518]) = ((a2 ^ 0xD19CBFAF) - v29) ^ v36;
  LODWORD(STACK[0x590]) = 229 * (LODWORD(STACK[0x590]) ^ 0x1A77);
  LODWORD(STACK[0x588]) = v33 + 1;
  LODWORD(STACK[0x584]) = v33 + 3;
  LODWORD(STACK[0x580]) = v33 + 4;
  LODWORD(STACK[0x57C]) = v33 + 5;
  LODWORD(STACK[0x56C]) = v33 + 6;
  LODWORD(STACK[0x560]) = v33 + 7;
  LODWORD(STACK[0x55C]) = v33 + 8;
  LODWORD(STACK[0x550]) = v33 + 9;
  LODWORD(STACK[0x54C]) = v33 + 10;
  LODWORD(STACK[0x548]) = v33 + 11;
  LODWORD(STACK[0x540]) = v33 + 12;
  LODWORD(STACK[0x53C]) = v33 + 13;
  LODWORD(STACK[0x538]) = v33 + 14;
  LODWORD(STACK[0x534]) = v33 + 15;
  STACK[0x528] = a15 - 0x19CB3BDEFC824E1DLL;
  v38 = (LODWORD(STACK[0x590]) - 1587);
  v39 = STACK[0x590];
  v40 = STACK[0x58C];
  v41 = STACK[0x528];
  v42 = STACK[0x528] + LODWORD(STACK[0x58C]);
  STACK[0x570] = v38;
  *(&v43 + 1) = (v42 + 489757184 - ((v42 << (v38 + 120)) & 0x3A6234FE) + 127) & 0xF8 ^ 0x78u;
  *&v43 = (v42 - 0x261798B4E2CEE600 - ((v42 << (v38 + 120)) & 0xB3D0CE963A6234FELL) + 127) ^ 0xD9E8674B1D311A00;
  v44 = (v43 >> 8) - 0x6AF7234D0CC131D5;
  v45 = v44 ^ 0x49E9423B6F16E7D2;
  v46 = v44 ^ v35;
  v47 = (__ROR8__(v45, 8) + v46) ^ v34;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (v48 + __ROR8__(v47, 8)) ^ 0xF5A2F1B9B5D0B209;
  *&v43 = __ROR8__(v48, 61);
  v50 = v49 ^ v43;
  v51 = ((v49 ^ v43) + (v49 >> 8) + (v49 << 56)) ^ 0x5963B6C555D97F1FLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x61459D2AF01F24F7;
  v54 = v53 ^ (v52 >> 61) ^ (v52 << ((v52 & 3 ^ 3) + (v52 & 3)));
  v55 = (v54 + __ROR8__(v53, 8)) ^ 0x64C31C027084DE6CLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = v56 + __ROR8__(v55, 8);
  v58 = v41 + LODWORD(STACK[0x588]);
  v59 = v58 + 0x4E91BA105EB417EELL + (~(2 * v58) | 0x62DC8BDF4297D025);
  v60 = (((v59 >> 3 << 59) ^ 0x12FFFFFFFFFFFFFFLL) & ((v59 >> 8) ^ 0xFABE7C3F1CED0DBBLL) ^ 0xFAF0ED850CB3B9ACLL) - 0x6AF7234D0CC131D5;
  *&v43 = __ROR8__(v60 ^ 0x49E9423B6F16E7D2, 8);
  v61 = v60 ^ v35;
  v62 = (v43 + v61) ^ v34;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (v63 + __ROR8__(v62, 8)) ^ 0xF5A2F1B9B5D0B209;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (v65 + __ROR8__(v64, 8)) ^ 0x5963B6C555D97F1FLL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x61459D2AF01F24F7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (v69 + __ROR8__(v68, 8)) ^ 0x64C31C027084DE6CLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (v71 + __ROR8__(v70, 8)) ^ 0x1A2AEBE44253AF03;
  v73 = STACK[0x5A0];
  *(STACK[0x5A0] + 556) ^= *v42;
  LODWORD(STACK[0x5B0]) = 0;
  v73[583] ^= (((v57 ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v56, 61)) + ((v57 ^ 0x1A2AEBE44253AF03uLL) >> 8) + ((v57 ^ 0x1A2AEBE44253AF03) << ((v57 & 0x38 ^ 0x38) + (v57 & 0x38)))) ^ 0xAB3042D228875C41) >> (~(8 * (v42 - ((v42 << (v38 + 120)) & 0xFE)) - 72) & 0x38);
  v73[901] ^= *v58;
  v73[928] ^= (((v72 ^ __ROR8__(v71, 61)) + __ROR8__(v72, 8)) ^ 0xAB3042D228875C41) >> ((8 * (v58 - 18 + (~(2 * v58) | 0x25))) & 0x38 ^ 0x28);
  v74 = v41 + (v40 + v39 - 2746);
  v73[(345 * (((8 * v59) & 0x18 ^ 8) + ((8 * v59) & 0x18 ^ 0x216u)) + 690) % 0x3C1] = *v74 ^ v73[285];
  v75 = v74 - ((2 * v74) & 0x3839E09361956) + 0x1C1CF049B0CABLL;
  v76 = ((((v75 << 56) | 0x1FFFFFFFFFFFFFFFLL) & ((v75 >> 8) ^ 0x22C9E8474930D83ALL) | (v75 << 56) & 0xD800000000000000) ^ 0xAAC9E98686344336) - 0x6AF7234D0CC131D5;
  *&v43 = __ROR8__(v76 ^ 0x49E9423B6F16E7D2, 8);
  v77 = v76 ^ v35;
  v78 = (v43 + v77) ^ v34;
  *&v43 = __ROR8__(v77, 61);
  v79 = v78 ^ v43;
  LOBYTE(v77) = (v78 ^ v43) & 0x4B;
  *&v43 = __ROR8__(v78, 8);
  v80 = v79 + v43;
  v81 = (v77 ^ 0x4B) + v77;
  LOBYTE(v59) = (v79 + v43) & 0x4B;
  v82 = v41 + LODWORD(STACK[0x584]);
  v83 = v82 - ((2 * v82) & 0x17507B80606EEECALL) + 0xBA83DC030377765;
  v84 = ((v83 << 56) & 0xF800000000000000 ^ 0x6000000000000000) - 0x3EAAD18BE5A11ACALL + ((((v83 >> 8) ^ 0x2CD2B6C63BBABEF6) - 0x954F3ADCAA9E8ALL) ^ (((v83 >> 8) ^ 0xCB2023294855A851) + 0x1898252A50BA77D3) ^ (((v83 >> 8) ^ 0xE7F93DD2B3DF21D0) + 0x34413BD1AB30FE54));
  *&v43 = __ROR8__(v84 ^ 0x49E9423B6F16E7D2, 8);
  v84 ^= 0xE1AFA7ACF6E0968ELL;
  v85 = (v43 + v84) ^ v34;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xF5A2F1B9B5D0B209;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x5963B6C555D97F1FLL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x61459D2AF01F24F7;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (v92 + __ROR8__(v91, 8)) ^ 0x64C31C027084DE6CLL;
  v94 = v93 ^ __ROR8__(v92, 61);
  *&v43 = __ROR8__(v93, 8);
  v95 = (v94 ^ v43) + 2 * (v43 & v94);
  v96 = v41 + LODWORD(STACK[0x580]);
  v97 = (((v96 - 0x2929FBFF84D1698 - ((2 * v96) & 0xFADAC0800F65D2D0)) >> 8) ^ 0xFD6D604007B2E9) - 0x6AF7234D0CC131D5 + (((v96 - 0x2929FBFF84D1698 - ((2 * v96) & 0xFADAC0800F65D2D0)) & 0xFFFFFFFFFFFFFFF8 ^ 0xFD6D604007B2E968) << 56);
  *&v43 = __ROR8__(v97 ^ 0x49E9423B6F16E7D2, 8);
  v97 ^= 0xE1AFA7ACF6E0968ELL;
  v98 = __ROR8__((v43 + v97) ^ 0xE49D77DF873DBF7ELL, 8);
  v99 = (v43 + v97) ^ 0xE49D77DF873DBF7ELL ^ __ROR8__(v97, 61);
  v100 = (v98 + v99) ^ 0xF5A2F1B9B5D0B209;
  v101 = v100 ^ __ROR8__(v99, 61);
  *&v43 = __ROR8__(v100, 8);
  v102 = (v101 + v43) ^ 0x5963B6C555D97F1FLL;
  v103 = (v102 << (v102 & 0x38 | (v101 + v43) & 0x38 ^ 0x20)) | (v102 >> 8);
  v104 = v102 ^ __ROR8__(v101, 61);
  v105 = v41 + LODWORD(STACK[0x57C]);
  *(&v43 + 1) = (v105 - 2045340928 - ((2 * v105) & 0xC2D26A0) + 80) & 0xF8 ^ 0x50u;
  *&v43 = (v105 + 0x161AEADC86169300 - ((2 * v105) & 0x2C35D5B90C2D26A0) + 80) ^ 0x161AEADC86169300;
  v106 = v43 >> 8;
  v107 = (v79 << (((v59 ^ 0x4B) + v59) ^ v81 | 3)) & 0xFFFFFFFFFFFFFFF8 | (v79 >> 61);
  *&v43 = __ROR8__(v104, 61);
  v108 = (v103 + v104) ^ 0x61459D2AF01F24F7;
  v109 = v108 ^ v43;
  v110 = (v108 ^ v43) + (v108 << 56) + (v108 >> ((105 * ((v43 & 0xC8 ^ 0xC8) + (v43 & 0xC8))) & 0xF8));
  v111 = v80 ^ 0xF5A2F1B9B5D0B209 ^ v107;
  v112 = (__ROR8__(v80 ^ 0xF5A2F1B9B5D0B209, 8) + v111) ^ 0x5963B6C555D97F1FLL;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (v113 + __ROR8__(v112, 8)) ^ 0x61459D2AF01F24F7;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (v115 + __ROR8__(v114, 8)) ^ 0x64C31C027084DE6CLL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x1A2AEBE44253AF03;
  v110 ^= 0x64C31C027084DE6CuLL;
  v119 = v110 ^ __ROR8__(v109, 61);
  v120 = (__ROR8__(v110, 8) + v119) ^ 0x1A2AEBE44253AF03;
  v121 = v120 ^ __ROR8__(v119, 61);
  v73[312] ^= ((__ROR8__(v118, 8) + (v118 ^ __ROR8__(v117, 61))) ^ 0xAB3042D228875C41) >> ((8 * (v75 & 7)) ^ 0x18);
  LODWORD(v75) = LODWORD(STACK[0x5B0]) + 188025;
  v122 = (v106 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v123 = (__ROR8__((v106 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v122) ^ 0xE49D77DF873DBF7ELL;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xF5A2F1B9B5D0B209;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (v126 + __ROR8__(v125, 8)) ^ 0x5963B6C555D97F1FLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (v128 + __ROR8__(v127, 8)) ^ 0x61459D2AF01F24F7;
  v130 = v129 ^ __ROR8__(v128, 61);
  v73[v75 % 0x3C1] ^= *v82;
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x64C31C027084DE6CLL;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = v41 + LODWORD(STACK[0x56C]);
  v73[657] ^= ((__ROR8__(v95 ^ 0x1A2AEBE44253AF03, 8) + (v95 ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v94, 61))) ^ 0xAB3042D228875C41) >> ((8 * (v83 & 7)) ^ 0x28);
  v73[(v75 + 345) % 0x3C1u] ^= *v96;
  v134 = (v132 + __ROR8__(v131, 8)) ^ 0x1A2AEBE44253AF03;
  v135 = (((((v133 - 0x6744E11710320F6CLL - ((2 * v133) & 0x31763DD1DF9BE128)) << 56) & 0xF9FFFFFFFFFFFFFFLL ^ 0x7FFFFFFFFFFFFFFFLL) & (((v133 - 0x6744E11710320F6CLL - ((2 * v133) & 0x31763DD1DF9BE128)) >> 8) ^ 0xAA177AAF7113A85FLL) | ((v133 - 0x6744E11710320F6CLL - ((2 * v133) & 0x31763DD1DF9BE128)) << 56) & 0x5000000000000000) ^ 0xBA8FC1B199FC65AFLL) - 0x6AF7234D0CC131D5;
  v136 = __ROR8__(v135 ^ 0x49E9423B6F16E7D2, 8);
  v135 ^= 0xE1AFA7ACF6E0968ELL;
  v137 = (v136 + v135) ^ 0xE49D77DF873DBF7ELL;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (v138 + __ROR8__(v137, 8)) ^ 0xF5A2F1B9B5D0B209;
  v140 = v139 ^ __ROR8__(v138, 61);
  v73[41] ^= ((v121 + __ROR8__(v120, 8)) ^ 0xAB3042D228875C41) >> (8 * (v96 & 7u));
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x5963B6C555D97F1FLL;
  v73[(v75 + 690) % 0x3C1u] ^= *v105;
  *&v43 = __ROR8__(v140, 61);
  v142 = ((__ROR8__(v134, 8) + (v134 ^ __ROR8__(v132, 61))) ^ 0xAB3042D228875C41) >> (8 * (v105 & 7u));
  v143 = ((v141 ^ v43) + __ROR8__(v141, 8)) ^ 0x61459D2AF01F24F7;
  v144 = v143 ^ __ROR8__(v141 ^ v43, 61);
  v145 = (v144 + __ROR8__(v143, 8)) ^ 0x64C31C027084DE6CLL;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = v41 + LODWORD(STACK[0x560]);
  v149 = v148 - 0x3D5AE82E953E8C00 - ((2 * v148) & 0x854A2FA2D582E9FALL) + 253;
  *(&v43 + 1) = ~(v148 + 1791063040 - ((2 * v148) & 0xD582E9FA) + 253) & 0xF8;
  *&v43 = v149 ^ 0xC2A517D16AC17400;
  v73[386] ^= v142;
  v150 = (v43 >> 8) - 0x6AF7234D0CC131D5;
  *&v43 = __ROR8__(v150 ^ 0x49E9423B6F16E7D2, 8);
  v150 ^= 0xE1AFA7ACF6E0968ELL;
  v151 = (v43 + v150) ^ 0xE49D77DF873DBF7ELL;
  v152 = v151 ^ __ROR8__(v150, 61);
  v73[(v75 + 1035) % 0x3C1u] ^= *v133;
  v73[731] ^= ((__ROR8__((v146 + v147) ^ 0x1A2AEBE44253AF03, 8) + ((v146 + v147) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v146, 61))) ^ 0xAB3042D228875C41) >> ((8 * ((v133 - 108) & 7)) ^ 0x20);
  v73[(v75 + 1380) % 0x3C1u] ^= *v148;
  v153 = (__ROR8__(v151, 8) + v152) ^ 0xF5A2F1B9B5D0B209;
  v154 = v153 ^ __ROR8__(v152, 61);
  *&v43 = __ROR8__(v154, 61);
  v155 = __ROR8__(v153, 8) + v154;
  v156 = (v155 + v43 - 2 * (v155 & v43)) ^ 0x5963B6C555D97F1FLL;
  v157 = (v156 + __ROR8__(v155 ^ 0x5963B6C555D97F1FLL, 8)) ^ 0x61459D2AF01F24F7;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0x64C31C027084DE6CLL;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0x1A2AEBE44253AF03;
  v73[115] ^= ((__ROR8__(v161, 8) + (v161 ^ __ROR8__(v160, 61))) ^ 0xAB3042D228875C41) >> ((8 * (v149 & 7)) ^ 0x28);
  v162 = v41 + LODWORD(STACK[0x55C]);
  v73[(v75 + 1725) % 0x3C1u] ^= *v162;
  v163 = v162 - ((2 * v162) & 0xDA6B60A33B34F5EELL) + 0x6D35B0519D9A7AF7;
  v164 = ((((v163 << 56) | 0x1FFFFFFFFFFFFFFFLL) & ((v163 >> 8) ^ 0xE25FB91FE038B1F7) & 0xE7FFFFFFFFFFFFFFLL | (((v163 >> 3) & 3) << 59)) ^ 0xF2328CAFB1A52B8DLL) - 0x6AF7234D0CC131D5;
  v165 = v164 ^ 0x49E9423B6F16E7D2;
  v164 ^= 0xE1AFA7ACF6E0968ELL;
  v166 = (__ROR8__(v165, 8) + v164) ^ 0xE49D77DF873DBF7ELL;
  v167 = v166 ^ __ROR8__(v164, 61);
  v168 = (v167 + __ROR8__(v166, 8)) ^ 0xF5A2F1B9B5D0B209;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = (v169 + __ROR8__(v168, 8)) ^ 0x5963B6C555D97F1FLL;
  v171 = v170 ^ __ROR8__(v169, 61);
  v172 = (v171 + __ROR8__(v170, 8)) ^ 0x61459D2AF01F24F7;
  v173 = v172 ^ __ROR8__(v171, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ 0x64C31C027084DE6CLL;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = (__ROR8__(v174, 8) + v175) ^ 0x1A2AEBE44253AF03;
  v73[460] ^= (((v176 ^ __ROR8__(v175, 61)) + __ROR8__(v176, 8)) ^ 0xAB3042D228875C41) >> (~(8 * v163) & 0x38);
  v177 = v41 + LODWORD(STACK[0x550]);
  v73[(v75 + 2070) % 0x3C1u] ^= *v177;
  v178 = (v177 - ((2 * v177) & 0x10CA0B315465CC4CLL));
  v179 = (((v178 - 0x779AFA6755CD19DALL) << 56) & 0xF800000000000000 ^ 0x2000000000000000) - 0x273AAD878D84B74BLL + (((((v178 - 0x779AFA6755CD19DALL) >> 8) ^ 0x7D18F71CBD132A2ELL) - 0x3E2CE7DC5A856242) ^ ((((v178 - 0x779AFA6755CD19DALL) >> 8) ^ 0xEEC3A51A58A8774) - 0x4DD82A91421CCF18) ^ ((((v178 - 0x779AFA6755CD19DALL) >> 8) ^ 0x737CA84880339FBCLL) - 0x3048B88867A5D7D0));
  v180 = v179 ^ 0x49E9423B6F16E7D2;
  v179 ^= 0xE1AFA7ACF6E0968ELL;
  v181 = (__ROR8__(v180, 8) + v179) ^ 0xE49D77DF873DBF7ELL;
  v182 = v181 ^ __ROR8__(v179, 61);
  v183 = (v182 + __ROR8__(v181, 8)) ^ 0xF5A2F1B9B5D0B209;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = (v184 + __ROR8__(v183, 8)) ^ 0x5963B6C555D97F1FLL;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = (__ROR8__(v185, 8) + v186) ^ 0x61459D2AF01F24F7;
  v188 = v187 ^ __ROR8__(v186, 61);
  v189 = (v188 + __ROR8__(v187, 8)) ^ 0x64C31C027084DE6CLL;
  *&v43 = __ROR8__(v188, 61);
  v190 = v189 ^ v43;
  v191 = ((v189 ^ v43) + (v189 << 56) + (v189 >> 8)) ^ 0x1A2AEBE44253AF03;
  v192 = __ROR8__(v191, 8) + (v191 ^ __ROR8__(v190, 61));
  v193 = v41 + LODWORD(STACK[0x54C]);
  v194 = v193 - ((2 * v193) & 0xDD265C6A321E77DELL) - 0x116CD1CAE6F0C411;
  v195 = ((((v194 << 56) | 0x3FFFFFFFFFFFFFFLL) & ((v194 >> 8) ^ 0x23A5B9CA755DA257) | (v194 << 56) & 0xD800000000000000) ^ 0xEB4B2AE44044AD6CLL) - 0x6AF7234D0CC131D5;
  *&v43 = __ROR8__((0x49E9423B6F16E7D2 - ~(((BYTE1(v194) ^ 0x3B) + 43) | (-76 - (((BYTE1(v194) ^ 0x72) - 105) ^ ((BYTE1(v194) ^ 4) - 31) ^ ((BYTE1(v194) ^ 0x4D) - 86))))) ^ v195, 8);
  LOBYTE(v178) = v73[805] ^ ((v192 ^ 0xAB3042D228875C41) >> ((8 * v178 - 16) & 0x38 ^ 0x30u));
  v195 ^= 0xE1AFA7ACF6E0968ELL;
  v196 = 8 * v195 + (v195 >> (v178 & 0x3D ^ 0xC | v178 & 0x3D ^ 0x31u));
  v197 = (v43 + v195) ^ 0xE49D77DF873DBF7ELL;
  *&v43 = __ROR8__(v197, 8);
  v198 = v196 ^ v197;
  v199 = (v198 + v43) ^ 0xF5A2F1B9B5D0B209;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = (v200 + __ROR8__(v199, 8)) ^ 0x5963B6C555D97F1FLL;
  v202 = v201 ^ __ROR8__(v200, 61);
  v73[805] = v178;
  v73[(v75 + 2415) % 0x3C1u] ^= *v193;
  v203 = (v202 + __ROR8__(v201, 8)) ^ 0x61459D2AF01F24F7;
  v204 = __ROR8__(v203, 8);
  v205 = v203 ^ __ROR8__(v202, 61);
  v206 = ((v205 ^ v204) + 2 * (v204 & v205)) ^ 0x64C31C027084DE6CLL;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = (__ROR8__(v206, 8) + v207) ^ 0x1A2AEBE44253AF03;
  v73[189] ^= (((__ROR8__(__ROR8__(v208 ^ __ROR8__(v207, 61), 43) ^ 0x2CEC86F3CEECEE05, 21) ^ 0x6770296764379E77) + __ROR8__(v208, 8)) ^ 0xAB3042D228875C41) >> (~(8 * v194) & 0x38);
  v209 = v41 + LODWORD(STACK[0x548]);
  v73[(v75 + 2760) % 0x3C1u] ^= *v209;
  v210 = v209 + 0x684BB23E464FD600 - ((2 * v209) & 0xD097647C8C9FADFCLL) + 254;
  *(&v43 + 1) = ~v210 & 0xF8;
  *&v43 = v210 ^ 0x684BB23E464FD600;
  v211 = (v43 >> 8) - 0x6AF7234D0CC131D5;
  v212 = v211 ^ 0xE1AFA7ACF6E0968ELL;
  v213 = (__ROR8__(v211 ^ 0x49E9423B6F16E7D2, 8) + (v211 ^ 0xE1AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v214 = __ROR8__(v213, 8);
  v215 = v213 ^ __ROR8__(v212, 61);
  v216 = v214 + v215;
  v217 = v216 ^ __ROR8__(v215, 61);
  v218 = v217 ^ 0xF5A2F1B9B5D0B209;
  *&v43 = __ROR8__(v216 ^ 0xF5A2F1B9B5D0B209, 8);
  v219 = (v217 ^ 0xF5A2F1B9B5D0B209) + v43;
  v220 = ((v218 & 0x1E01A577631F45D0) + (v210 & 0x20021109E0B03941 ^ 0xDFFC4DE7B6BBE9AFLL ^ (v210 & 0x3B62114DF2BA394FLL ^ 0xF7BE5CEA5401D0E0) & (v210 & 0x3B62114DF2BA394FLL ^ 0xECDEDEBE464BD0EELL)) + (v217 & 0x1E01A577631F45D0 ^ 0xA010446420F45D0)) ^ (v218 + v43);
  v221 = __ROR8__(v218, 61) ^ 0x5963B6C555D97F1FLL ^ v219;
  v222 = (v221 + (v220 >> 8) + (v220 << 56)) ^ 0x61459D2AF01F24F7;
  v223 = v222 ^ __ROR8__(v221, 61);
  v224 = (v223 + __ROR8__(v222, 8)) ^ 0x64C31C027084DE6CLL;
  v225 = v224 ^ __ROR8__(v223, 61);
  v226 = (v225 + __ROR8__(v224, 8)) ^ 0x1A2AEBE44253AF03;
  v227 = (((v226 ^ __ROR8__(v225, 61)) + __ROR8__(v226, 8)) ^ 0xAB3042D228875C41) >> ((8 * (v210 & 7)) ^ 0x30);
  v228 = LODWORD(STACK[0x540]);
  v73[534] ^= v227;
  v229 = (v41 + v228);
  v73[(v75 + 3105) % 0x3C1u] ^= *v229;
  v230 = &v229[-((2 * v229) & 0x6277BC1BCCFC037ELL) - 0x4EC421F21981FE41];
  v231 = ((v230 >> 3 << 59) ^ 0xB800000000000000) - 0x22DE2854446B3FB1 + ((((v230 >> 8) ^ 0x308349B4ACB71166) - 0x782A889269049D43) ^ (((v230 >> 8) ^ 0xB341BE9D1F3F15CDLL) + 0x417804425736618) ^ (((v230 >> 8) ^ 0x8373CCF7BE6E7AAALL) + 0x3425F22E84220971));
  *&v43 = __ROR8__(v231 ^ 0x49E9423B6F16E7D2, 8);
  v231 ^= 0xE1AFA7ACF6E0968ELL;
  v232 = (v43 + v231) ^ 0xE49D77DF873DBF7ELL;
  v233 = v232 ^ __ROR8__(v231, 61);
  v234 = v233 + __ROR8__(v232, 8);
  v235 = ((v234 ^ 0xF5A2F1B9B5D0B209) << 56) & 0xF500000000000000;
  v236 = v234 ^ __ROR8__(v233, 61) ^ ((v235 ^ 0xF5A2F1B9B5D0B209) + v235);
  *&v43 = __ROR8__(v234 ^ 0xF5A2F1B9B5D0B209, 8);
  v237 = (v236 + v43) ^ 0x5963B6C555D97F1FLL ^ (v236 << ((((v234 ^ 0xB209) >> 8) & 3 ^ 3) + (((v234 ^ 0xB209) >> 8) & 3u)));
  *&v43 = __ROR8__((v236 + v43) ^ 0x5963B6C555D97F1FLL, 8);
  v238 = v237 ^ (v236 >> 61);
  v239 = (v238 + v43) ^ 0x61459D2AF01F24F7;
  v240 = v239 ^ __ROR8__(v238, 61);
  v241 = (v240 + __ROR8__(v239, 8)) ^ 0x64C31C027084DE6CLL;
  v242 = v241 ^ __ROR8__(v240, 61);
  v243 = (__ROR8__(v241, 8) + v242) ^ 0x1A2AEBE44253AF03;
  v73[879] ^= ((__ROR8__(v243, 8) + (v243 ^ __ROR8__(v242, 61))) ^ 0xAB3042D228875C41) >> (~(8 * v230) & 0x38);
  v244 = v41 + LODWORD(STACK[0x53C]);
  v73[(v75 + 3450) % 0x3C1u] ^= *v244;
  v245 = v244 - ((2 * v244) & 0x15EDD71C90C7BF74) + 0xAF6EB8E4863DFBALL;
  v246 = ((((v245 << 56) | 0xFFFFFFFFFFFFFFFLL) & ((v245 >> 8) ^ 0x1207181288CAC26ALL) | (v245 << 56) & 0xE800000000000000) ^ 0xBA0DEEF90682A1B5) - 0x6AF7234D0CC131D5;
  v247 = v246 ^ 0x49E9423B6F16E7D2;
  v246 ^= 0xE1AFA7ACF6E0968ELL;
  v248 = (__ROR8__(v247, 8) + v246) ^ 0xE49D77DF873DBF7ELL;
  v249 = v248 ^ __ROR8__(v246, 61);
  v250 = (v249 + __ROR8__(v248, 8)) ^ 0xF5A2F1B9B5D0B209;
  v251 = v250 ^ __ROR8__(v249, 61);
  v252 = (v251 + __ROR8__(v250, 8)) ^ 0x5963B6C555D97F1FLL;
  v253 = v252 ^ __ROR8__(v251, 61);
  v254 = (__ROR8__(v252, 8) + v253) ^ 0x61459D2AF01F24F7;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = v255 + __ROR8__(v254, 8);
  v257 = v256 ^ 0x64C31C027084DE6CLL;
  LOBYTE(v178) = ((v245 & 0x78 ^ 0x40) + (v245 & 0x78 ^ 0x38)) ^ 0x24 ^ (((v256 ^ 0x93) & (v256 ^ 0x6C)) + 84);
  LODWORD(v69) = STACK[0x5B0];
  LODWORD(v256) = LODWORD(STACK[0x5B0]) + 223215;
  *&v43 = __ROR8__(v255, 61);
  v258 = (((v257 >> v178) ^ (v257 << 56)) + (v257 ^ v43)) ^ 0x1A2AEBE44253AF03;
  v73[v256 % 0x3C1] ^= (((v258 ^ __ROR8__(v257 ^ v43, 61)) + __ROR8__(v258, 8)) ^ 0xAB3042D228875C41) >> ((8 * (v245 & 7)) ^ 0x10);
  v259 = v41 + LODWORD(STACK[0x538]);
  v73[(v75 + 3795) % 0x3C1u] ^= *v259;
  v260 = v259 - 0x18E85FB758AC300 - ((2 * v259) & 0xFCE2F40914EA7AFCLL) + 126;
  *(&v43 + 1) = (v259 - ((2 * v259) & 0xFC) + 126) & 0xF8 ^ 0x78u;
  *&v43 = v260 ^ 0xFE717A048A753D00;
  v261 = (v43 >> 8) - 0x6AF7234D0CC131D5;
  v262 = v261 ^ 0xE1AFA7ACF6E0968ELL;
  v263 = (__ROR8__(v261 ^ 0x49E9423B6F16E7D2, 8) + (v261 ^ 0xE1AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v264 = v263 ^ __ROR8__(v262, 61);
  v265 = (v264 + __ROR8__(v263, 8)) ^ 0xF5A2F1B9B5D0B209;
  *&v43 = __ROR8__(v264, 61);
  v266 = v265 ^ v43;
  v267 = ((v265 ^ v43) + (v265 >> 8) + (v265 << 56)) ^ 0x5963B6C555D97F1FLL;
  v268 = v267 ^ __ROR8__(v266, 61);
  v269 = (v268 + __ROR8__(v267, 8)) ^ 0x61459D2AF01F24F7;
  v270 = v269 ^ __ROR8__(v268, 61);
  v271 = (__ROR8__(v269, 8) + v270) ^ 0x64C31C027084DE6CLL;
  v272 = v271 ^ __ROR8__(v270, 61);
  v273 = (v272 + __ROR8__(v271, 8)) ^ 0x1A2AEBE44253AF03;
  v73[(v256 + 345) % 0x3C1u] ^= (((v273 ^ __ROR8__(v272, 61)) + __ROR8__(v273, 8)) ^ 0xAB3042D228875C41) >> ((8 * (v260 & 7)) ^ 0x30);
  v274 = v41 + LODWORD(STACK[0x534]);
  v73[(v69 + 192165) % 0x3C1u] ^= *v274;
  v275 = v274 + 0x4AA2D0443D34B400 - ((2 * v274) & 0x9545A0887A6969CELL) + 231;
  *(&v43 + 1) = (v274 - ((2 * v274) & 0xCE) - 25) & 0xF8 ^ 0xE0u;
  *&v43 = v275 ^ 0x4AA2D0443D34B400;
  v276 = (v43 >> 8) - 0x6AF7234D0CC131D5;
  v277 = v276 ^ 0xE1AFA7ACF6E0968ELL;
  v278 = (__ROR8__(v276 ^ 0x49E9423B6F16E7D2, 8) + (v276 ^ 0xE1AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v279 = __ROR8__(v278, 8);
  v280 = v278 ^ __ROR8__(v277, 61);
  v281 = (v280 + v279) ^ 0xF5A2F1B9B5D0B209;
  v282 = v281 ^ __ROR8__(v280, 61);
  v283 = (v282 + __ROR8__(v281, 8)) ^ 0x5963B6C555D97F1FLL;
  v284 = v283 ^ __ROR8__(v282, 61);
  v285 = (v284 + __ROR8__(v283, 8)) ^ 0x61459D2AF01F24F7;
  v286 = v285 ^ __ROR8__(v284, 61);
  v287 = (__ROR8__(v285, 8) + v286) ^ 0x64C31C027084DE6CLL;
  v288 = v287 ^ __ROR8__(v286, 61);
  v289 = (v288 + __ROR8__(v287, 8)) ^ 0x1A2AEBE44253AF03;
  v73[(v256 + 690) % (1729018864 - ((v256 + 690) & 0xB820 ^ 0x670CB82E | (v256 + 690) & 0x2B821u))] = v73[(v256 + 690) % 0x3C1u] ^ ((((v289 ^ __ROR8__(v288, 61)) + __ROR8__(v289, 8)) ^ 0xAB3042D228875C41) >> (~(8 * v275) & 0x38));
  return (*(STACK[0x598] + 8 * (LODWORD(STACK[0x590]) ^ 0x10C7)))(1728886830, v73, 36, 2288265615, v235 ^ 0xF5A2F1B9B5D0B209, v41, 220384, 0x5963B6C555D97F1FLL, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_100038414@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a3 + a4;
  v21 = a3 + a4 + 9;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (a2 - 4456) + v22 - ((v18 + 2 * v22) & a1) - 0x58D9B5B1C39396E1;
  v24 = __ROR8__(v23 ^ v11, 8);
  v25 = v23 ^ v10;
  v26 = (v24 + v25) ^ v14;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v13;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v16;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) | v9) - ((v32 + v31) | v8) + v8) ^ v7;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((v5 | (2 * (v35 + v34))) - (v35 + v34) + v6) ^ v4;
  v37 = a3 - 1;
  v38 = v36 ^ __ROR8__(v34, 61);
  v39 = (__ROR8__(v36, 8) + v38) ^ v17;
  *(v20 + 9) = *(v12 + v37) ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ v15) >> (8 * (v21 & 7u))) ^ 0x3C;
  return (*(v19 + 8 * ((849 * (v37 == 0)) ^ a2)))();
}

uint64_t sub_10003856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t *a17, uint64_t *a18, unsigned int a19, unsigned int a20)
{
  v22 = 1875091903 * ((2 * (&a15 & 0x765F9DA0) - &a15 + 161505883) ^ 0x3FD5E1D8);
  a18 = a11;
  a16 = ((2 * v20) & 0xD33BFFFE) + (v20 ^ 0xE99DFFFF) + 914273963 + v22;
  LODWORD(a17) = v22 + 7724;
  (*(v21 + 77160))(&a15);
  v23 = 1824088897 * ((-896023202 - (&a15 | 0xCA97C55E) + (&a15 | 0x35683AA1)) ^ 0x6D01E9C3);
  a19 = -654855621 - v23;
  a20 = v23 + 1674579114;
  a16 = v23 + 1095103343;
  a17 = a11;
  a18 = &a9;
  v24 = (*(v21 + 76864))(&a15);
  return (*(v21 + 8 * (((16 * (a15 == 16257999)) | (32 * (a15 == 16257999))) ^ 0xCDDu)))(v24);
}

uint64_t sub_1000386F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((2 * (&a12 & 0x1290DF98) - &a12 + 1835999330) ^ 0x5F747BF2);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((497 * (a13 == 16257999)) ^ 0x4A1)))(v14);
}

void sub_1000387A4(uint64_t a1)
{
  v2 = *v1;
  *a1 = 0;
  *(a1 + 8) = 0x1A2B28D61A2B28D6;
  *(a1 + 16) = 0xA11037FD51F1E714;
  *(a1 + 24) = 16257999;
  *v2 = a1;
  JUMPOUT(0x10002D94CLL);
}

uint64_t sub_10003888C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (v8)
  {
    v10 = a7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || v7 == 0;
  return (*(v9 + 8 * ((v12 * (((a1 ^ 0x1E3B) + 5601) ^ 0x317F ^ (421 * (a1 ^ 0x1E3B)))) ^ a1)))();
}

uint64_t sub_100038918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((((2 * &a12) | 0xCA05C378) - &a12 - 1694687676) ^ 0x5719BA2C);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((10238 * (a13 == 16257999)) ^ 0x3EDu)))(v14);
}

void sub_1000389A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

void sub_100038A7C(uint64_t a1)
{
  v1 = 2008441969 * (((a1 | 0xA48528A) - a1 + (a1 & 0xF5B7AD75)) ^ 0x42D10684);
  v2 = *a1 - v1;
  v4 = (*(a1 + 4) + v1) == 8 || *(*(&off_100BFFA10 + v2 - 7064) - 3) == 0;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100038B3C(uint64_t a1, int a2)
{
  v4 = STACK[0x830];
  v5 = STACK[0x728];
  v6 = STACK[0x3DC];
  STACK[0x7B8] = *(v2 + 8 * (v3 - 5313));
  STACK[0x8E8] = v4;
  LODWORD(STACK[0x3CC]) = v6;
  STACK[0x5C8] = v5;
  STACK[0x8C8] = 0;
  LODWORD(STACK[0x44C]) = a2;
  STACK[0x748] = 0x431A33AA2E6D965FLL;
  STACK[0x770] = 0;
  v7 = (*(v2 + 8 * ((v3 - 83) ^ 0x32D2)))(16, 0x20040A4A59CD2);
  STACK[0x880] = v7;
  return (*(v2 + 8 * (((v7 == 0) * (v3 - 2219 + ((v3 - 83) ^ 0xB3) - 9710)) ^ (v3 - 83))))();
}

void sub_100038BF4()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBE88) ^ 0xDF)) ^ byte_1009DB0B0[byte_1009D41D0[(-85 * ((dword_100CBC1F0 - dword_100CBBE88) ^ 0xDF))] ^ 0x2A]) - 138);
  v1 = -85 * ((dword_100CBC1F0 + *v0) ^ 0xDF);
  v2 = *(&off_100BFFA10 + (byte_1009C9D6C[(byte_1009E331C[v1 - 12] ^ 0xD9) - 12] ^ v1) - 29);
  v3 = *v2 - *v0 - &v5;
  *v0 = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((-774253516 - (v6 | 0xD1D9D434) + (v6 | 0x2E262BCB)) ^ 0x1C3D705B);
  LOBYTE(v2) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBE88) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - dword_100CBBE88) ^ 0xDF))] ^ 0x9B]) + 206) - 8;
  (*&v4[8 * (byte_1009DAFB8[(byte_1009D40D8[v2 - 8] ^ 0x6D) - 8] ^ v2) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100038E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a14 = ((v14 | 0xBE944010) + v17) ^ ((((&a12 | 0x6B11EA24) - &a12 + (&a12 & 0x94EE15D8)) ^ 0x33783946) * v16);
  a13 = a11;
  v18 = (*(v15 + 8 * ((v14 | 0xBE944010) + v17 + 1266)))(&a12);
  return sub_10009290C(v18);
}

uint64_t sub_100038F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15, _BYTE *a16, uint64_t a17, uint64_t a18, _BYTE *a19, uint64_t a20, _BYTE *a21, uint64_t a22, _BYTE *a23, uint64_t a24, _BYTE *a25, _BYTE *a26, _DWORD *a27, unsigned __int8 **a28, uint64_t *a29, _BYTE *a30, _BYTE *a31, unsigned __int8 *a32, _BYTE *a33, _BYTE *a34, _BYTE *a35, _BYTE *a36, _BYTE *a37, _BYTE *a38, uint64_t a39, uint64_t a40, int a41, unsigned int a42, uint64_t a43, uint64_t a44, unsigned __int8 *a45)
{
  v310 = 1163 * (a8 ^ 0x723u);
  v50 = ((v46 ^ 0xBE03E7B1D98ABD2CLL) - ((a12 - 0x1B00000000) ^ 0x962AE85AD98ABD2CLL ^ v46)) ^ (0x86E5C9E5C29CF9AELL - ((((a12 - 0x1B00000000) ^ 0x4409E5BB03B2EE38) - 0x153ADC4A3ED1E86ALL) ^ (((a12 - 0x1B00000000) ^ 0xDCE4AD37121224C3) + 0x72286B39D08EDD6FLL) ^ (((a12 - 0x1B00000000) ^ 0xB0C4476711A0CAFBLL) + 0x1E088169D33C3357)));
  v51 = a11 & 0x800;
  if ((((a12 ^ 0x652 ^ (v50 - ((2 * v50) & 0xCA4) + 1618)) + (v46 ^ 0xBD2C)) & a11 & 0x800) != 0)
  {
    v51 = -v51;
  }

  v52 = (v51 + ((a12 - 0x1B00000000) ^ 0x513339F13D630652 ^ (v50 - ((2 * v50) & 0xF2346C347AC60CA4) + 0x791A361A3D630652)) + (v46 ^ 0xBE03E7B1D98ABD2CLL)) ^ a11 & 0xFFFFFFFFFFFFF7FFLL;
  v53 = (v52 ^ 0x5E8CC683F9A37215) & (v48 ^ v47 ^ 0xB29C02C232C43F86);
  v54 = ((2 * (0x572D8A8965037D5 - v53)) & 0xF51A4EAED35F9056) + ((0x572D8A8965037D5 - v53) ^ 0xFA8D275769AFC82BLL);
  v55 = v48 ^ v45 ^ (1163 * (a8 ^ 0x723u)) ^ 0x8456B9BB096D46A0;
  v56 = ((v55 - (v55 ^ v53)) ^ ((v54 ^ -v54 ^ (v53 - (v54 ^ v53))) + v53)) + v55;
  v57 = (((v56 ^ 0xB73927F7504FC0F2) >> 7) ^ ((v56 ^ 0xB73927F7504FC0F2) >> 41) | ((v56 ^ 0xB73927F7504FC0F2) << 57)) ^ v56 ^ 0xB73927F7504FC0F2 ^ __ROR8__(((0x5B28529A5F41FC49 - (((v56 ^ 0xB73927F7504FC0F2) & 0x1FFFFFFFFFFLL) << 21)) ^ (((v56 ^ 0xB73927F7504FC0F2) & 0x1FFFFFFFFFFLL) << 21) ^ 0x5B28529A5F41FC49 ^ -((((v56 ^ 0xB73927F7504FC0F2) & 0x1FFFFFFFFFFLL) << 21) ^ 0x5B28529A5F41FC49)) + 0x5B28529A5F41FC49, 62);
  v58 = v48 ^ v47 ^ 0x4D63FD3DCD3BC079;
  v59 = ((v52 ^ 0x5E8CC683F9A37215) - 0x6DE2E58410530ECCLL - ((2 * (v52 ^ 0x5E8CC683F9A37215)) & 0x243A34F7DF59E268)) ^ v49;
  v60 = v59 ^ 0x629A61E2FE92CDE4;
  v61 = (v59 ^ 0x629A61E2FE92CDE4) & (v52 ^ 0xA173397C065C8DEALL) ^ v58;
  v62 = v56 ^ v61 ^ 0xF38BFF733C051F6;
  v63 = ((v62 >> 28) ^ (v62 >> 19) | (v56 ^ v61) & 0x8000000000000000) ^ v62 & 0x7FFFFFFFFFFFFFFFLL;
  v64 = (v63 & 8 | (v62 << 36) & 0x3388207000000000) ^ (v62 << 45) ^ (v63 & 0xCC77DF8E0961D1C3 ^ (v62 << 36) & 0xCC77DF8000000000 | v63 & 0x33882071F69E2E34) ^ v57;
  v65 = v45 ^ 0xFB843825F0AB5DEALL ^ (v59 - ((2 * v59) & 0x449579155FFC5488) + 0x224ABC8AAFFE2A44);
  if (v59 == 0x9D659E1D016D321BLL)
  {
    v65 = v45 ^ 0xBB54E54DA1C7BA4ALL;
  }

  v66 = v52 ^ v61 ^ 0xD4323EFF71ABBEA0 ^ v65 & (v59 ^ 0x9D659E1D016D321BLL);
  v67 = *(a13 + (((v66 >> 61) + 238) ^ 0xA9));
  v68 = v66 ^ (8 * v66) ^ ((((v67 >> 6) | (4 * v67)) ^ (((v67 >> 6) | (4 * v67)) >> 4) ^ (((v67 >> 6) | (4 * v67)) >> 3)) ^ (v66 >> 39) | (v66 << 25));
  v69 = v55 & (v45 ^ 0x44AB1AB25E3845B5) ^ v60;
  v70 = v68 ^ 0x1B;
  *(&v71 + 1) = v70;
  *&v71 = v68;
  v72 = v45 ^ v58 & (v48 ^ v45 ^ 0x7BA94644F692B049) ^ 0xACB07798A52DD9DLL ^ v69;
  v73 = v72 ^ (v72 << 54) ^ (v72 << 47) ^ (v72 >> 10) ^ (v72 >> 17);
  v74 = v69 ^ 0x92CFC162FD513143 ^ ((v69 ^ 0x92CFC162FD513143) << 58) ^ ((v69 ^ 0x92CFC162FD513143) >> 1) ^ ((v69 ^ 0x92CFC162FD513143) << 63) ^ ((v69 ^ 0x92CFC162FD513143) >> 6) ^ v68 ^ 0x1B;
  v75 = v64 ^ (__ROR8__((v71 >> 44) ^ 0x9F30103AAFD2BBA2, 20) ^ 0xD445D60CFEFC5502) & v74;
  *&v71 = __ROR8__(__ROR8__(v73 & ~v74 ^ v70 ^ v75, 49) ^ 0x7E646E4D7DC1C81DLL, 15);
  v76 = v71 ^ 0xC77D3D9E3BCF5555 ^ (8 * (v71 ^ 0xC77D3D9E3BCF5555)) ^ ((v71 ^ 0xC77D3D9E3BCF5555) >> 39) ^ (((v71 ^ 0xC77D3D9E3BCF5555) >> 61) | ((v71 ^ 0xC77D3D9E3BCF5555) << 25));
  *(&v71 + 1) = v57 & ~v73 ^ v74;
  *&v71 = *(&v71 + 1) ^ 0x6F45779FA95FC03ALL;
  v77 = __ROR8__(__ROR8__(((v71 >> 1) ^ *(&v71 + 1) ^ 0x6F45779FA95FC03ALL) & ((*(&v71 + 1) ^ 0x6F45779FA95FC03AuLL) >> 6), 54) ^ (((v71 >> 1) ^ *(&v71 + 1) ^ 0x6F45779FA95FC03ALL | ((*(&v71 + 1) ^ 0x6F45779FA95FC03AuLL) >> 6)) >> 54) ^ (((v71 >> 1) ^ *(&v71 + 1) ^ 0x6F45779FA95FC03ALL | ((*(&v71 + 1) ^ 0x6F45779FA95FC03AuLL) >> 6)) << 10) ^ 0xF89DF7EBD7350CF4, 10) ^ ((*(&v71 + 1) ^ 0x6F45779FA95FC03ALL) << 58);
  v78 = v57 ^ v73;
  v79 = v70 & ~v64 ^ v78;
  v80 = v79 ^ 0x9A383CF881807545 ^ __ROR8__(v79 ^ 0x9A383CF881807545, 41) ^ ((v79 ^ 0x9A383CF881807545) << 57) ^ ((v79 ^ 0x9A383CF881807545) >> 7);
  v81 = v64 & ~v78 ^ v73 ^ *(&v71 + 1);
  v82 = v81 + v81 - (v81 ^ 0x28FA59BDD48D0B6) - 8 * ((v81 - (v81 ^ 0x28FA59BDD48D0B6)) >> 2) - 4;
  v83 = (v82 >> 10) & 2;
  v84 = v82 ^ (v82 >> 17);
  if ((v83 & v84) != 0)
  {
    v83 = -v83;
  }

  v85 = (v82 << 47) ^ (v82 << 54) ^ (v82 >> 10) & 0x3BC043E10C73ADLL ^ ((v83 + v84) & 0xD2043FBC1EF38C50 ^ (v82 >> 10) & 0x43FBC1EF38C50 | (v83 + v84) & 0x2DFBC043E10C73AFLL);
  v86 = v77 ^ v76 ^ 0x3D3E277DFAF5CD43;
  v87 = v80 & ~v85 ^ v86;
  v88 = ((v87 ^ 0x7955EAEC4D48B80CLL) + (v65 & 1) - 2 * (v87 & v65 & 1u)) >> (v84 & 1) >> !(v84 & 1);
  v89 = v75 ^ v79 ^ 0xAC7C0FF4012565E3 ^ ((v75 ^ v79 ^ 0xAC7C0FF4012565E3) << 36) ^ v80 ^ (((v75 ^ v79 ^ 0xAC7C0FF4012565E3) >> 19) ^ ((v75 ^ v79 ^ 0xAC7C0FF4012565E3) >> 28) | ((v75 ^ v79 ^ 0xAC7C0FF4012565E3) << 45));
  v90 = v86 & ~v76 ^ v89;
  v91 = v90 ^ v76 ^ v85 & (v77 ^ v76 ^ 0xC2C1D882050A32BCLL);
  v92 = v91 ^ 0x3278F838FE43D2BCLL;
  v93 = (v92 << 25) ^ (8 * v92) ^ (v92 >> 39) ^ ((v91 >> 61) & 1 ^ (v91 ^ 0x3278F838FE43D2BCLL) & 0x107199643042311 | (v91 ^ 0x3278F838FE43D2BCLL) & 0x8204028B40B5000 | (v91 ^ 0x3278F838FE43D2BCLL) & 0xF6D8A64108F08CEELL ^ (v91 >> 61) & 6);
  v94 = ((((v87 << 63) | 0x3000000000000000) ^ (v87 << 58)) & 0xFC00000000000000 | ((v87 ^ 0x7955EAEC4D48B80CLL) >> 6)) ^ v87 ^ 0x7955EAEC4D48B80CLL ^ v88;
  v95 = v85 ^ v80;
  v96 = v95 ^ v76 & ~v89;
  v97 = v96 & 0x40000000;
  v98 = (v96 & 0x40000000 & v90) == 0;
  v99 = v90 ^ 0x6E04C15915AB860ALL;
  if (!v98)
  {
    v97 = -v97;
  }

  v100 = (v97 + v99) ^ v96 & 0xFFFFFFFFBFFFFFFFLL;
  v101 = v96 - ((2 * v96) & 0x4D2E9630A03C5628) + 0x26974B18501E2B14;
  v102 = v101 ^ (v101 << 23) ^ ((v101 >> 7) & 0x813122E36B0107 ^ (v101 >> 41) & 0x6B0107 | (v101 >> 41) & 0x14FEF8 ^ (v101 >> 7) & 0x17ECEDD1C94FEF8 | (v101 << 57));
  v103 = v93 ^ 1;
  v104 = (v93 ^ 0xFFFFFFFFFFFFFFFELL) & v94;
  v105 = v103 ^ v94;
  v106 = __ROR8__(__ROR8__(v105, 30) ^ 0x9D4643B58D8B06FCLL, 34);
  v107 = v85 ^ v89 & ~v95 ^ v87 ^ 0x7370AC685030CB36;
  v108 = v107 ^ __ROR8__(v107, 10) ^ (v107 << 47) ^ (v107 >> 17);
  v109 = v100 ^ (v100 << 36) ^ (v100 >> 19) ^ ((v100 >> 28) | (v100 << 45)) ^ v102;
  v110 = v109 ^ v104 ^ v103 ^ (v106 - ((2 * v106) & 0x393A7C81B15CDE24) - 0x6362C1BF275190EELL) & v108;
  v111 = 32;
  if ((((v109 ^ v104 ^ v103) ^ (v106 - ((2 * v106) & 0x24) + 18) & v108) & 0x20) != 0)
  {
    v111 = -32;
  }

  v112 = (v111 + v110) ^ 0x425764BB5877DA05 ^ (((v111 + v110) ^ 0x425764BB5877DA05uLL) >> 39) ^ (8 * ((v111 + v110) ^ 0x425764BB5877DA05)) ^ (((v111 + v110) ^ 0x425764BB5877DA05) << 25) ^ (((v111 + v110) ^ 0x425764BB5877DA05uLL) >> 61);
  v113 = v102 & ~v108 ^ v105;
  v114 = v102 ^ v108;
  v115 = v108 ^ v109 & ~v114 ^ v113 ^ 0x44C9D571A5C4A51CLL;
  v116 = v115 ^ __ROR8__(v115, 10) ^ (v115 << 47) ^ (v115 >> 17);
  v117 = v113 ^ 0xD3DA1E3360BF843ALL ^ (v113 << 63) ^ ((v113 ^ 0xD3DA1E3360BF843ALL) << 58) ^ ((v113 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v113 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v118 = v103 & ~v109 ^ v114;
  v119 = __ROR8__(__ROR8__(v118 ^ v109 ^ v104, 55) ^ 0xD44FD452E265E9A5, 9) ^ 0x451C800FDF99C77ELL;
  v120 = __ROR8__(__ROR8__(v118 ^ 0x70C7A8D3F3643DFDLL, 59) & 0xFFFFC0000000001FLL ^ __ROR8__(((v118 ^ 0x70C7A8D3F3643DFDLL ^ ((v118 ^ 0x70C7A8D3F3643DFDLL) << 23)) & 0xFA602581871C3E5CLL ^ ((v118 ^ 0x70C7A8D3F3643DFDuLL) >> 7) & 0x602581871C3E5CLL | (v118 ^ 0x70C7A8D3F3643DFDLL ^ ((v118 ^ 0x70C7A8D3F3643DFDLL) << 23)) & 0x59FDA7E78E3C1A3 ^ ((v118 ^ 0x70C7A8D3F3643DFDuLL) >> 7) & 0x19FDA7E78E3C1A3) ^ (v118 << 57) ^ 0xFA00000000000000, 18) ^ 0x43D90E7BE482DFCELL, 46) ^ 0x39EF920B7F390F64;
  v121 = __ROR8__(v119 ^ (v119 >> 19) ^ (((v119 << 45) ^ (v119 << 36)) & 0xFFFFFFF000000000 | (v119 >> 28)) ^ v120, 16);
  v122 = v112 ^ v117;
  v123 = v116 & ~(v112 ^ v117) ^ v112;
  v124 = __ROR8__(v121 ^ 0xBB8A60791BBF05DFLL, 48);
  v125 = v117 & ~v112 ^ v124;
  v126 = v123 ^ v125 ^ 0x7CA58A4F840B38 ^ (8 * (v123 ^ v125 ^ 0x7CA58A4F840B38)) ^ (((v123 ^ v125 ^ 0x7CA58A4F840B38) >> 39) ^ ((v123 ^ v125) >> 61) | ((v123 ^ v125 ^ 0x7CA58A4F840B38) << 25));
  v127 = (v124 ^ 0x9F86E440FA204475) & v112 ^ v120 ^ v116;
  v128 = __ROR8__(__ROR8__(v125 ^ v127 ^ 0x694538FC1EA96F95, 8) ^ 0x9EBDA1A26D392766, 56);
  v129 = v128 ^ 0x2FD7CB8D3927669ELL ^ ((((v128 ^ 0xBDA1A26D3927669ELL) << 45) ^ (v128 << 36)) & 0xFFFFFFF000000000 | ((v128 ^ 0xBDA1A26D3927669ELL) >> 28));
  v130 = v129 & 0xA9D1A0A934E25B7FLL ^ ((v128 ^ 0xBDA1A26D3927669ELL) >> 19) & 0xA934E25B7FLL | v129 & 0x562E5F56CB1DA480 ^ ((v128 ^ 0xBDA1A26D3927669ELL) >> 19) & 0x1F56CB1DA480;
  v131 = v127 ^ 0x2DB5B6AF87F64351 ^ ((v127 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v127 ^ 0x2DB5B6AF87F64351) << 23) ^ (((v127 ^ 0x2DB5B6AF87F64351) >> 41) | ((v127 ^ 0x2DB5B6AF87F64351) << 57));
  v132 = (v124 ^ 0x60791BBF05DFBB8ALL) & ~(v120 ^ v116) ^ v116;
  v133 = v122 ^ v120 & ~v116;
  *(&v134 + 1) = v132 ^ v133 ^ 0xF374A001D380BDC2;
  *&v134 = v132 ^ v133;
  v135 = *(&v134 + 1) ^ ((v132 ^ v133) >> 17) ^ (v134 >> 10) ^ (*(&v134 + 1) << 47);
  v136 = __ROR8__(v133 ^ 0x6DC4FB0BD4FFFF44, 10) & 0xF03FFFFFFFFFFFFFLL;
  *&v134 = __ROR8__(((v133 << 63) | 0x135EF29F1134CBA0) ^ __ROR8__(__ROR8__(v133 ^ 0x6DC4FB0BD4FFFF44, 30) & 0xFFFFFFFBFFFFFFFFLL ^ __ROR8__(v133 ^ 0x6DC4FB0BD4FFFF44, 29) ^ 0x89A65D009AF794F8, 35), 4);
  v137 = (((v136 ^ v134 ^ 0xA599B9336B66C3B2) << (v92 & 4) << (v92 & 4 ^ 4)) + ((v136 ^ v134 ^ 0xA599B9336B66C3B2) >> 60)) ^ v126 ^ 0x599B9336B66C3B2ALL;
  v138 = ((v133 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (0xFC00000000000000 * (v133 ^ 0x6DC4FB0BD4FFFF44)) ^ (v137 - (v137 ^ ((v133 ^ 0x6DC4FB0BD4FFFF44) << 58)));
  v139 = (v138 ^ v137) + 2 * (v138 & v137);
  v140 = v130 ^ v131;
  v141 = v139 & (~(2 * v126) + v126);
  v142 = (v130 ^ v131) & 0x2000000000000000;
  if ((v141 & v142) != 0)
  {
    v142 = -v142;
  }

  v143 = (v142 + v141) ^ v140 & 0xDFFFFFFFFFFFFFFFLL;
  v144 = v135 ^ 0x3CA492507409EFLL ^ v131;
  v145 = v126 & ~v140 ^ v144;
  v146 = v145 ^ 0x69309AC4CAE2F93 ^ v143;
  v147 = __ROR8__(v146, 26);
  v148 = ((((v147 - ((2 * v147) & 0x5E630B601F75BCF8) + 0x2F3185B00FBADE7CLL) << 26) ^ (v146 << 45)) & 0xFFFFFFFFFC000000 | ((v147 - ((2 * v147) & 0x5E630B601F75BCF8uLL) + 0x2F3185B00FBADE7CLL) >> 38)) ^ 0xC03EEB79F0BCC616;
  v149 = (v148 ^ -v148 ^ ((v146 << 36) - (v148 ^ (v146 << 36)))) + (v146 << 36);
  v150 = (v146 >> 28) ^ (v146 >> 19) ^ v149;
  a15[1] = v150;
  a32[9] = BYTE3(v150);
  *a30 = BYTE1(v150);
  v151 = v145 ^ ((v145 ^ 0x3096EC2D0511544CLL) << 23) ^ (((v145 ^ 0x3096EC2D0511544CLL) >> 41) ^ ((v145 ^ 0x3096EC2D0511544CLL) >> 7) | ((v145 ^ 0x3096EC2D0511544CLL) << 57));
  v152 = (~(2 * v139) + v139) & (v135 ^ 0x3CA492507409EFLL) ^ v126 ^ v143;
  v153 = v152 ^ 0x62030E578F798D5ALL;
  v154 = v152 ^ __ROR8__(v152 ^ 0x62030E578F798D5ALL, 39);
  v155 = __ROR8__(v153, 61);
  a15[15] = (BYTE2(v150) + ((2 * BYTE2(v150)) & 0x80) + 64) ^ 0x40;
  v156 = *(a14 + 9 + ((((BYTE4(v150) >> (v151 & 7 ^ 4)) >> (v151 & 7 ^ 3)) + 2 * BYTE4(v150)) ^ 0x64));
  a15[2] = ((((v154 ^ v155) >> 8) ^ 0x8D) - ((2 * (((v154 ^ v155) >> 8) ^ 0x8D)) & 0xCF) + 103) ^ 0x67;
  a16[3] = (BYTE6(v149) - ((2 * BYTE6(v149)) & 0xDF) + 111) ^ 0x6F;
  a16[13] = (v156 ^ 9) + 108;
  *a31 = ((v154 ^ v155) >> 16) ^ 0x79;
  a16[2] = (HIBYTE(v149) - ((2 * HIBYTE(v149)) & 0x26) + 19) ^ 0x13;
  *a37 = ((v154 ^ v155) >> 48) ^ 3;
  a15[6] = ((((v154 ^ v155) >> 32) ^ 0x57) - ((2 * (((v154 ^ v155) >> 32) ^ 0x57)) & 0x83) + 65) ^ 0x41;
  *a35 = BYTE5(v150) ^ 0x91;
  v158 = v139 ^ (v135 ^ 0xFFC35B6DAF8BF610) & v131;
  v159 = ((v158 ^ 0xC39D9869C05A48AELL) + (v158 << 63)) ^ (v158 >> 1) ^ ((v158 ^ 0xC39D9869C05A48AELL) << 58) ^ ((v158 ^ 0xC39D9869C05A48AELL) >> 6);
  a16[18] = ((((v158 ^ 0xC05A48AE ^ (v158 >> 1) ^ ((v158 ^ 0xC39D9869C05A48AELL) >> 6) ^ 0xEC35A4E7) >> 24) ^ 0xC) - ((2 * (((v158 ^ 0xC05A48AE ^ (v158 >> 1) ^ ((v158 ^ 0xC39D9869C05A48AELL) >> 6) ^ 0xEC35A4E7) >> 24) ^ 0xC)) & 0x8F) + 71) ^ 0x47;
  a32[20] = v154 ^ v155 ^ 0x5A;
  *a19 = v158 ^ 0xAE ^ (v158 >> 1) ^ ((v158 ^ 0xC39D9869C05A48AELL) >> 6) ^ 0xC6;
  *a36 = BYTE4(v159) ^ 0x34;
  *a34 = ((v158 ^ 0x48AE ^ (v158 >> 1) ^ ((v158 ^ 0xC39D9869C05A48AELL) >> 6) ^ 0xA4E7) >> 8) ^ 0x11;
  v160 = (((v154 ^ v155) >> 32) >> 8) | 0xBF;
  v161 = (((v154 ^ v155) >> 32) >> 8) & 0xBF;
  a15[5] = ((BYTE6(v159) ^ 0xCE) - ((2 * (BYTE6(v159) ^ 0xCE)) & 0xA) - 123) ^ 0x85;
  a32[10] = ((v154 ^ v155) >> 56) ^ 0x62;
  a16[14] = ((((v154 ^ v155) >> 24) ^ 0x8F) - ((2 * (((v154 ^ v155) >> 24) ^ 0x8F)) & 0xF0) - 8) ^ 0xF8;
  a16[6] = (((v161 ^ 0x4E) & v160) - 2 * ((v161 ^ 0x4E) & v160 & 0x6B ^ (((v154 ^ v155) >> 32) >> 8) & 1) + 106) ^ 0x6A;
  a15[7] = ((HIBYTE(v159) ^ 0x61) - 2 * ((HIBYTE(v159) ^ 0x61) & 0xF9 ^ HIBYTE(v159) & 8) + 113) ^ 0x71;
  *a38 = ((v158 ^ 0xC05A48AE ^ (v158 >> 1) ^ ((v158 ^ 0xC39D9869C05A48AELL) >> 6) ^ 0xEC35A4E7) >> 16) ^ 0x89;
  v162 = v135 ^ v140 & ~v144 ^ 0x4F291F609169E9BCLL ^ v158;
  v163 = ((v162 >> 17) ^ (v162 >> 10) | (v162 << 54)) ^ v162;
  v164 = v163 & 0x2B7E8E52D6356D9BLL ^ (v162 << 47) & 0x2B7E800000000000 | v163 & 0xD48171AD29CA9264 ^ (v162 << 47) & 0xD481000000000000;
  v165 = v164 - ((2 * v164) & 0x449579155FFC5488) + 0x224ABC8AAFFE2A44;
  a15[12] = v165 ^ 0x44;
  a16[11] = ((((((v159 & 0x100000000000 | 0xEC35A4E7) ^ v159 & 0xFFFFEFFFFFFFFFFFLL) >> 32) >> 8) ^ 0xCC) - ((2 * (((((v159 & 0x100000000000 | 0xEC35A4E7) ^ v159 & 0xFFFFEFFFFFFFFFFFLL) >> 32) >> 8) ^ 0xCC)) & 0xCC) + 102) ^ 0x66;
  v166 = *(a14 + 9 + (((v165 >> 7) & 0xFE | (v163 >> 15) & 1) ^ 0x30));
  *a15 = v151 ^ 0x4C;
  a15[13] = ((BYTE6(v165) ^ 0x4A) + (~(2 * (BYTE6(v165) ^ 0x4A)) | 0xA1) - 80) ^ 0xAF;
  a16[16] = ((BYTE3(v165) ^ 0xAF) - ((2 * (BYTE3(v165) ^ 0xAF)) & 0x42) + 33) ^ 0x21;
  *a16 = ((HIBYTE(v165) ^ 0x22) - ((2 * (HIBYTE(v165) ^ 0x22)) & 0x78) - 68) ^ 0xBC;
  a15[4] = ((BYTE2(v151) ^ 0x11) - ((2 * BYTE2(v151)) & 0x94) + 74) ^ 0x4A;
  a32[13] = BYTE2(v165) ^ 0xFE;
  a15[8] = ((BYTE4(v165) ^ 0x8A) - ((2 * BYTE4(v165)) & 0xA8) + 84) ^ 0x54;
  a15[3] = ((BYTE1(v151) ^ 0x54) - 2 * (BYTE1(v151) & 3) + 3) ^ 3;
  *a25 = HIBYTE(v151) ^ 0xA1;
  *a26 = BYTE5(v151) ^ 0x7D;
  *a21 = BYTE4(v151) ^ 0xBC;
  LOBYTE(v144) = (((v166 ^ 0x8F) + 94) ^ ((v166 ^ 0xF6) + 37) ^ ((v166 ^ 0x70) - 93)) - 91;
  v167 = v144 & 0x3B ^ 0x28;
  a32[11] = BYTE3(v151) ^ 5;
  *a23 = v144 ^ (2 * ((v144 ^ 0x6A) & (2 * ((v144 ^ 0x6A) & (2 * ((v144 ^ 0x6A) & (2 * ((v144 ^ 0x6A) & (2 * ((v144 ^ 0x6A) & (2 * ((v144 ^ 0xC3) & (2 * v144) & 0x56 ^ v167)) ^ v167)) ^ v167)) ^ v167)) ^ v167)) ^ v167)) ^ 0xAA;
  a16[8] = ((BYTE6(v151) ^ 0x96) - 2 * ((BYTE6(v151) ^ 0x96) & 0xF) + 15) ^ 0xF;
  a32[23] = BYTE5(v165) ^ 0xBC;
  *a27 = a17 + 1;
  v168 = a32;
  v169 = v168[19] - ((2 * v168[19]) & 0x5C) + 3374;
  v170 = (((v169 ^ 0xFF9029EE42F8D79ALL) - 0x22661FFDCD19E8B9) ^ ((v169 ^ 0xF11DD885E0A3E2CFLL) - 0x2CEBEE966F42DDECLL) ^ ((v169 ^ 0xE8DF16BA21B387BLL) + 0x2C843887D205F8A8)) - 0xB37335CAB21339ALL;
  v171 = ((v169 ^ 0x69E57E09581F90D3) - 0x3F769EF9465BC638) ^ ((v169 ^ 0xA961900DD20C93FBLL) + 0xD8F0233B73AF0) ^ ((v169 ^ 0x3F7B11FB75D30E06) - 0x69E8F10B6B9758EDLL);
  v313 = (v171 + v170 - 0x6D66777FE3B93E94) * (v170 - v171 + 0x35266E500416894ELL) + 0xA9ADC1055278094 * (v171 + v170);
  v172 = *a28;
  v173 = (((*a28)[5] - ((2 * (*a28)[5]) & 0x1A2)) << 8) - 0x533AE571FC522F00;
  v174 = *a29;
  v175 = ((*(*a29 + 11) - ((2 * *(*a29 + 11)) & 0x120)) << 24) - 0x7E9DC99D70000000;
  LODWORD(a31) = *(a32 + 1);
  LODWORD(v155) = __ROR4__(a31 ^ 0xE3C7A28C, 13) ^ 0x8B565DFE;
  HIDWORD(v155) = v155;
  LODWORD(v163) = 177708928 - ((((v155 >> 19) ^ 0x3B73002E) - 540829898) ^ (((v155 >> 19) ^ 0xF74B726A) + 335275378) ^ (((v155 >> 19) ^ 0xE44001A2) + 15767226));
  LODWORD(a38) = ((v163 ^ 0x4C8445D9) - 1900740440) ^ v163 ^ ((v163 ^ 0xEAFA22C8) + 684418999) ^ ((v163 ^ 0x645F235E) - 1502714335) ^ ((v163 ^ 0xFFEFFECE) + 1038007217);
  v176 = ((v174[16] - ((2 * v174[16]) & 0x160u) + 315800764) << 32) - 0xC00000000;
  v177 = *a28;
  v178 = v172[4] - ((2 * v172[4]) & 0x26) - 0x765034A32ABFD5EDLL;
  v179 = (((v168[8] - ((2 * v168[8]) & 0x15Eu) + 9702072) << 40) - 0x90000000000) ^ v176 & 0x1240B09000000000 ^ (v175 & 0x100242DE5000000 ^ 0x93E1B19D1D2F8775 ^ (((v173 ^ 0x63A2DDED29EC8DB4) & (*a33 ^ 0xFFFFFFFFFFFFFF2CLL) & 0xF45ABF2965030C38 | *a33 & 8) ^ 0x119D1D25A0FE554BLL ^ ((((v172[15] - ((2 * v172[15]) & 0x80)) << 16) - 0x342D757E17C00000) ^ 0xC077CA5772BCF3C7) & (((v173 ^ 0x63A2DDED29EC8DB4) & (*a33 ^ 0xFFFFFFFFFFFFFF2CLL) | *a33 & 0x4B) ^ 0x3098389CD5BEA74ALL)) & (v175 ^ 0x7E9DC99D6FFFFFFFLL)) & (v176 ^ 0xED2D434FFFFFFFFFLL);
  v180 = ((v174[18] - ((2 * v174[18]) & 0xFFF3u) + 3836) << 48) - 0x3000000000000;
  v181 = (v179 & 0xE7538EB2988A35D1 ^ v180 & 0x53000000000000 ^ 0x19ED754D6F75DA3ELL) & (v180 & 0xAC000000000000 ^ 0x53C925440C315E93 ^ v179 & 0x18AC714D6775CA2ELL) | (v179 & 0xE7538EB2988A35D1 ^ v180 & 0x53000000000000) & 0xA4128AB2908A2140;
  v182 = ((((v178 << 56) & 0x1000000000000000 ^ 0xD7761240FF65586DLL) + 0x596C6FB9BADF1BF9) ^ (((v178 << 56) & 0x1000000000000000 ^ 0x1A2EB307480FFDF1) - 0x6BCB3101F24A419BLL) ^ (((v178 << 56) & 0x1000000000000000 ^ 0xDD58A147B76AA59CLL) + 0x5342DCBEF2D0E60ALL)) - 0x5392C013C5024ED6 + (((v181 ^ 0x85C743209D19407ELL) + 0x7EAFBC5324D8D05BLL) ^ ((v181 ^ 0xDF0833C13CE89C78) + 0x2460CCB285290C5DLL) ^ ((v181 ^ 0x812E055A2AECABDDLL) + 0x7A46FA29932D3BFALL));
  v183 = *(&off_100BFFA10 + a8 - 1756);
  v312 = v183 + 788;
  v185 = a32[26];
  v186 = v185 + 118;
  v187 = (v185 + 118) & 0x44 ^ 0xDB;
  v188 = (v185 + 118) ^ 0x56;
  LOBYTE(v153) = v188 & (2 * (v188 & (2 * (v188 & (2 * (v188 & (2 * (v188 & (2 * (v187 ^ (9 - v185) & 0x12)) ^ v187)) ^ v187)) ^ v187)) ^ v187));
  v189 = (v182 ^ 0x40EC26534D4B327BLL) & (2 * (v182 & 0x94EEB7524C6B2340)) ^ v182 & 0x94EEB7524C6B2340;
  v190 = ((2 * (v182 ^ 0x41E54AF3C51D307BLL)) ^ 0xAA17FB4312EC2676) & (v182 ^ 0x41E54AF3C51D307BLL) ^ (2 * (v182 ^ 0x41E54AF3C51D307BLL)) & 0xD50BFDA18976133ALL;
  v191 = (v190 ^ 0x8003F90100640200) & (4 * v189) ^ v189;
  v192 = ((4 * (v190 ^ 0x550804A089121109)) ^ 0x542FF68625D84CECLL) & (v190 ^ 0x550804A089121109) ^ (4 * (v190 ^ 0x550804A089121109)) & 0xD50BFDA189761338;
  v193 = (v192 ^ 0x540BF48001500020) & (16 * v191) ^ v191;
  v194 = ((16 * (v192 ^ 0x8100092188261313)) ^ 0x50BFDA18976133B0) & (v192 ^ 0x8100092188261313) ^ (16 * (v192 ^ 0x8100092188261313)) & 0xD50BFDA189761330;
  v195 = (v194 ^ 0x500BD80081601300) & (v193 << 8) ^ v193;
  v196 = (((v194 ^ 0x850025A10816000BLL) << 8) ^ 0xBFDA18976133B00) & (v194 ^ 0x850025A10816000BLL) ^ ((v194 ^ 0x850025A10816000BLL) << 8) & 0xD50BFDA189761300;
  v197 = v195 ^ 0xD50BFDA18976133BLL ^ (v196 ^ 0x109A18100120000) & (v195 << 16);
  *(&v198 + 1) = ((v182 ^ 0xBA42A679) + 2721095) ^ v182 ^ ((v182 ^ 0x86F8244C) + 1247092) ^ ((v182 ^ 0x15170A) + 4076598) ^ ((v182 ^ 0x3B49FF) + 1075905);
  *&v198 = v182 ^ (2 * ((v197 << 32) & 0x550BFDA100000000 ^ v197 ^ ((v197 << 32) ^ 0x976133B00000000) & (((v196 ^ 0xD4025C208964003BLL) << 16) & 0x550BFDA100000000 ^ 0xA748100000000 ^ (((v196 ^ 0xD4025C208964003BLL) << 16) ^ 0x7DA1897600000000) & (v196 ^ 0xD4025C208964003BLL))));
  v199 = v183 - 8;
  LOBYTE(v183) = v186 ^ (2 * (v153 ^ v187));
  v200 = -124 - (((v183 ^ 0x2B) - 89) ^ ((v183 ^ 1) - 115) ^ ((v183 ^ 0xF5) + 121));
  v201 = v200 & 0x8D ^ 0x63;
  LOBYTE(v168) = -92 - (((v183 ^ 0xE9) + 81) ^ ((v183 ^ 0x3E) - 120) ^ ((v183 ^ 0xB8) + 2));
  LOBYTE(v149) = v168 & 0xBD ^ 0x6D;
  v202 = v200 ^ v186 ^ v168 ^ (2 * (v149 ^ v153 ^ v187 ^ v201 ^ (v200 ^ 0x4E) & (2 * ((v200 ^ 0x4E) & (2 * ((v200 ^ 0x4E) & (2 * ((v200 ^ 0x4E) & (2 * ((v200 ^ 0x4E) & (2 * (((2 * (v200 & 0xF)) ^ 0x42) & (v200 ^ 0x4E) ^ v201)) ^ v201)) ^ v201)) ^ v201)) ^ v201)) ^ (v168 ^ 0x62) & (2 * ((v168 ^ 0x62) & (2 * ((v168 ^ 0x62) & (2 * ((v168 ^ 0x62) & (2 * ((v168 ^ 0x62) & (2 * (((2 * v168) & 0x46 ^ 0x5E) & (v168 ^ 0x42) ^ v149)) ^ v149)) ^ v149)) ^ v149)) ^ v149))));
  v314 = (v178 << 34) & 0x3BC00000000 ^ 0x376DDB32CCB3D77BLL ^ (v198 >> 22);
  v203 = v174[17] - ((2 * v174[17]) & 0x24);
  v204 = ((v202 ^ 0xA7) + 118) ^ ((v202 ^ 0x99) + 76) ^ ((v202 ^ 0xD1) + 4);
  v205 = ((v313 - 0x5C86CF5D598F76F7) ^ 0x5FCC720574B40476) & (2 * ((v313 - 0x5C86CF5D598F76F7) & 0x5C0E7B5166A14967)) ^ (v313 - 0x5C86CF5D598F76F7) & 0x5C0E7B5166A14967;
  v206 = ((2 * ((v313 - 0x5C86CF5D598F76F7) ^ 0x4FD0E2A5F0F406BCLL)) ^ 0x27BD33E92CAA9FB6) & ((v313 - 0x5C86CF5D598F76F7) ^ 0x4FD0E2A5F0F406BCLL) ^ (2 * ((v313 - 0x5C86CF5D598F76F7) ^ 0x4FD0E2A5F0F406BCLL)) & 0x13DE99F496554FDALL;
  v207 = (v206 ^ 0x1811C004000F90) & (4 * v205) ^ v205;
  v208 = ((4 * (v206 ^ 0x1042881492554049)) ^ 0x4F7A67D259553F6CLL) & (v206 ^ 0x1042881492554049) ^ (4 * (v206 ^ 0x1042881492554049)) & 0x13DE99F496554FD8;
  v209 = (v208 ^ 0x35A01D010550F40) & (16 * v207) ^ v207;
  v210 = ((16 * (v208 ^ 0x1084982486004093)) ^ 0x3DE99F496554FDB0) & (v208 ^ 0x1084982486004093) ^ (16 * (v208 ^ 0x1084982486004093)) & 0x13DE99F496554FD0;
  v211 = (v210 ^ 0x11C8994004544D00) & (v209 << 8) ^ v209;
  v212 = (((v210 ^ 0x21600B49201024BLL) << 8) ^ 0xDE99F496554FDB00) & (v210 ^ 0x21600B49201024BLL) ^ ((v210 ^ 0x21600B49201024BLL) << 8) & 0x13DE99F496554F00;
  v213 = v211 ^ 0x13DE99F496554FDBLL ^ (v212 ^ 0x1298909414450000) & (v211 << 16);
  v214 = (v313 - 0x5C86CF5D598F76F7) ^ (2 * ((v213 << 32) & 0x13DE99F400000000 ^ v213 ^ ((v213 << 32) ^ 0x16554FDB00000000) & (((v212 ^ 0x1460960821004DBLL) << 16) & 0x13DE99F400000000 ^ 0x20A09A000000000 ^ (((v212 ^ 0x1460960821004DBLL) << 16) ^ 0x19F4965500000000) & (v212 ^ 0x1460960821004DBLL))));
  v215 = *(v312 + (v183 ^ 0x1ALL)) + v204 - 49;
  LOBYTE(v174) = v215 & 0x95 ^ 0x39;
  LOBYTE(v174) = v215 ^ (2 * ((v215 ^ 0x22) & (2 * ((v215 ^ 0x22) & (2 * ((v215 ^ 0x22) & (2 * ((v215 ^ 0x22) & (2 * ((v215 ^ 0x22) & (2 * (((2 * v215) & 0x46 ^ 0x36) & (v215 ^ 0x22) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ v174)) ^ 0x4B;
  v216 = ((a32[3] - ((2 * a32[3]) & 0x140u) + 4216240) << 40) - 0x100000000000;
  v217 = ((v177[9] - ((2 * v177[9]) & 0xB0u) + 1023824019) << 32) - 0x3B00000000;
  LOBYTE(v174) = ((((v174 >> 1) | (v174 << 7)) ^ 0xA9) - 87) ^ ((((v174 >> 1) | (v174 << 7)) ^ 0x8F) - 113) ^ ((((v174 >> 1) | (v174 << 7)) ^ 0xE4) - 26);
  v218 = ((v177[22] - ((2 * v177[22]) & 0x5555)) << 16) + 0x51E66F8828AA0000;
  v311 = *a29;
  LOBYTE(v197) = -124 - v174;
  LOBYTE(v174) = v174 + 123;
  LOBYTE(v197) = (v197 & 0xC1 | 6) ^ v174 & 0x8E;
  LOBYTE(v174) = v174 ^ (2 * ((v174 ^ 0x40) & (2 * ((v174 ^ 0x40) & (2 * ((v174 ^ 0x40) & (2 * ((v174 ^ 0x40) & (2 * ((v174 ^ 0x40) & (2 * (v174 & (2 * v197) ^ v197)) ^ v197)) ^ v197)) ^ v197)) ^ v197)) ^ v197));
  v220 = (v218 & 0x4245882EFC0000 ^ 0x22075745FB875627 ^ (((v174 & 0xFE ^ 0xFFFFFFFFFFFFFFA0) & ((((v177[17] - ((2 * v177[17]) & 0x1DA)) << 8) + 0x2A7016FC7448ED00) ^ 0xEB58A7D6700DE5EALL) | v174 & 0x15) ^ 0x349D8B1A1546F2B7) & (v218 ^ 0xAE199077D755FFFFLL)) & (v217 ^ 0xC2F9AFA7FFFFFFFFLL) ^ v217 & 0x2806570200000000;
  v221 = ((((v177[7] - 2 * (v177[7] & 1)) << 8) - 0x50224681F1A2FF00) ^ 0xD7F2A883D846E6CCLL) & ((v203 - 0x280A47E1159B8EEELL) ^ 0x280A47E1159B8EEELL) ^ (v203 - 0x280A47E1159B8EEELL) & 0x8640880008201833;
  v222 = ((a32[28] - ((2 * a32[28]) & 0xFF7F)) << 16) + 0x10B1E61179BF0000;
  v223 = v214 ^ 0xB2F49F6F8439221;
  v224 = 0xAF938A23415F6016 - (((v214 ^ 0xCC90823ADB8A96E9) + 0x38403433DC36FB38) ^ ((v214 ^ 0xE034AA64F7F49CC1) + 0x14E41C6DF048F120) ^ ((v214 ^ 0x73BF73466675DCF9) - 0x78903AB09E364ED8));
  v225 = (v224 ^ 0xFD3B68EF8D1550F0) & (2 * (v224 & 0xFC3862EE0C585AFALL)) ^ v224 & 0xFC3862EE0C585AFALL;
  v226 = ((2 * (v224 ^ 0x751BA8BB95A57540)) ^ 0x124794AB33FA5F74) & (v224 ^ 0x751BA8BB95A57540) ^ (2 * (v224 ^ 0x751BA8BB95A57540)) & 0x8923CA5599FD2FBALL;
  v227 = (v226 ^ 0x3800011E00F30) & (4 * v225) ^ v225;
  v228 = ((4 * (v226 ^ 0x89204A548805208ALL)) ^ 0x248F295667F4BEE8) & (v226 ^ 0x89204A548805208ALL) ^ (4 * (v226 ^ 0x89204A548805208ALL)) & 0x8923CA5599FD2FB8;
  v229 = (v228 ^ 0x3085401F42EA0) & (16 * v227) ^ v227;
  v230 = ((16 * (v228 ^ 0x8920C20198090112)) ^ 0x923CA5599FD2FBA0) & (v228 ^ 0x8920C20198090112) ^ (16 * (v228 ^ 0x8920C20198090112)) & 0x8923CA5599FD2FB0;
  v231 = (v230 ^ 0x8020805199D02B00) & (v229 << 8) ^ v229;
  v232 = (((v230 ^ 0x9034A04002D041ALL) << 8) ^ 0x23CA5599FD2FBA00) & (v230 ^ 0x9034A04002D041ALL) ^ ((v230 ^ 0x9034A04002D041ALL) << 8) & 0x8923CA5599FD2F00;
  v233 = v232 ^ 0x88218A4400D005BALL;
  v234 = v231 ^ 0x8923CA5599FD2FBALL ^ (v232 ^ 0x1024011992D0000) & (v231 << 16);
  v235 = (((v220 ^ 0x55C300B27E3CB8C9) + 0x253EE817266E43DELL) ^ ((v220 ^ 0x7AB9789DB63D1E4BLL) + 0xA449038EE6FE560) ^ ((v220 ^ 0xD08C00D20A2D0AFDLL) - 0x5F8E1788AD800E16)) - (((v220 ^ v223 ^ 0xE594C3A2A1BC8661) - 0x6A96D4F80611828ALL) ^ ((v220 ^ v223 ^ 0xA4BF4F901F7F9150) - 0x2BBD58CAB8D295BBLL) ^ ((v220 ^ v223 ^ 0xEAE9E621CEA7FFBELL) - 0x65EBF17B690AFB55)) + 0x5E23C2CA44EB1095;
  v236 = (v235 ^ 0xCE09AFCA68CA83D3) & (2 * (v235 & 0xEE102F9348CCAB9BLL)) ^ v235 & 0xEE102F9348CCAB9BLL;
  v237 = ((2 * (v235 ^ 0xCA09E7EE68DB96C1)) ^ 0x483390FA402E7AB4) & (v235 ^ 0xCA09E7EE68DB96C1) ^ (2 * (v235 ^ 0xCA09E7EE68DB96C1)) & 0x2419C87D20173D5ALL;
  v238 = (v237 ^ 0x1805800063810) & (4 * v236) ^ v236;
  v239 = ((4 * (v237 ^ 0x240848052011054ALL)) ^ 0x906721F4805CF568) & (v237 ^ 0x240848052011054ALL) ^ (4 * (v237 ^ 0x240848052011054ALL)) & 0x2419C87D20173D58;
  v240 = (v239 ^ 0x1007400143540) & (16 * v238) ^ v238;
  v241 = ((16 * (v239 ^ 0x2418C80920030812)) ^ 0x419C87D20173D5A0) & (v239 ^ 0x2418C80920030812) ^ (16 * (v239 ^ 0x2418C80920030812)) & 0x2419C87D20173D50;
  v242 = (v241 ^ 0x18805000131500) & (v240 << 8) ^ v240;
  v243 = (((v241 ^ 0x2401482D2004285ALL) << 8) ^ 0x19C87D20173D5A00) & (v241 ^ 0x2401482D2004285ALL) ^ ((v241 ^ 0x2401482D2004285ALL) << 8) & 0x2419C87D20173D00;
  v244 = v243 ^ 0x2411805D2002255ALL;
  v245 = v242 ^ 0x2419C87D20173D5ALL ^ (v243 ^ 0x8482000150000) & (v242 << 16);
  v246 = ((a32[15] - ((2 * a32[15]) & 0x38u) + 1462903619) << 32) - 0x2700000000;
  v247 = v224 ^ v223 ^ v235 ^ (2 * ((v234 << 32) & 0x923CA5500000000 ^ v234 ^ ((v234 << 32) ^ 0x19FD2FBA00000000) & ((v233 << 16) & 0x8923CA5500000000 ^ 0x122420000000000 ^ ((v233 << 16) ^ 0xCA5599FD00000000) & v233) ^ v245 ^ (v245 << 32) & 0x2419C87D00000000 ^ ((v245 << 32) ^ 0x20173D5A00000000) & ((v244 << 16) & 0x2419C87D00000000 ^ 0x2400C86800000000 ^ ((v244 << 16) ^ 0x487D201700000000) & v244)));
  v248 = (((v220 ^ 0xFD35E4D7DF738DF4) - 0x7237F38D78DE891FLL) ^ ((v220 ^ 0x43C77A728787DDBLL) + 0x74C19F02702A86D0) ^ ((v220 ^ 0x6FFEB8D35275C50) + 0x760203286D75A745)) - 0x6645B9C4AA13C12FLL + (((v247 ^ 0x360F7529A6FBEBFDLL) + 0x60DE56E9ABAE3A04) ^ ((v247 ^ 0x2C58997BC5DEFEBDLL) + 0x7A89BABBC88B2F44) ^ ((v247 ^ 0x545FB300E62D8511) + 0x28E90C0EB7854F0));
  v249 = (v248 ^ 0x3E46AEDD27B0A15ALL) & (2 * (v248 & 0xBE60ACD987382813)) ^ v248 & 0xBE60ACD987382813;
  v250 = ((2 * (v248 ^ 0x4287A64C23C0F178)) ^ 0xF9CE152B49F1B2D6) & (v248 ^ 0x4287A64C23C0F178) ^ (2 * (v248 ^ 0x4287A64C23C0F178)) & 0xFCE70A95A4F8D96ALL;
  v251 = (v250 ^ 0xF886000000E08040) & (4 * v249) ^ v249;
  v252 = ((4 * (v250 ^ 0x4210A94A4084929)) ^ 0xF39C2A5693E365ACLL) & (v250 ^ 0x4210A94A4084929) ^ (4 * (v250 ^ 0x4210A94A4084929)) & 0xFCE70A95A4F8D968;
  v253 = (v252 ^ 0xF0840A1480E04120) & (16 * v251) ^ v251;
  v254 = ((16 * (v252 ^ 0xC63008124189843)) ^ 0xCE70A95A4F8D96B0) & (v252 ^ 0xC63008124189843) ^ (16 * (v252 ^ 0xC63008124189843)) & 0xFCE70A95A4F8D960;
  v255 = (v254 ^ 0xCC60081004889000) & (v253 << 8) ^ v253;
  v256 = (((v254 ^ 0x30870285A070494BLL) << 8) ^ 0xE70A95A4F8D96B00) & (v254 ^ 0x30870285A070494BLL) ^ ((v254 ^ 0x30870285A070494BLL) << 8) & 0xFCE70A95A4F8D900;
  v257 = v255 ^ 0xFCE70A95A4F8D96BLL ^ (v256 ^ 0xE4020084A0D80000) & (v255 << 16);
  v258 = v248 ^ (2 * ((v257 << 32) & 0x7CE70A9500000000 ^ v257 ^ ((v257 << 32) ^ 0x24F8D96B00000000) & (((v256 ^ 0x18E50A110420906BLL) << 16) & 0x7CE70A9500000000 ^ 0x74620A0500000000 ^ (((v256 ^ 0x18E50A110420906BLL) << 16) ^ 0xA95A4F800000000) & (v256 ^ 0x18E50A110420906BLL))));
  v259 = ((v177[20] - ((2 * v177[20]) & 0x2Eu) + 47130) << 48) - 0x3000000000000;
  v260 = (v222 ^ 0xEF4E19EE86005FB4) & ((((a32[27] - ((2 * a32[27]) & 0x12)) << 24) - 0x12E0A839F7000000) ^ 0xEE1EB19856845FB4) ^ v222 & 0x10B00001207B0000;
  v261 = v260 ^ 0xEC4E19A08040A04BLL;
  LODWORD(v222) = *a32 - 104;
  LODWORD(v234) = v222 & 0xFFFFFF9A ^ 0x33;
  v262 = v222 ^ (2 * ((v222 ^ 0x34) & (2 * ((v222 ^ 0x34) & (2 * ((v222 ^ 0x34) & (2 * ((v222 ^ 0x34) & (2 * ((v222 ^ 0x34) & (2 * (v234 ^ v222 & 0x2E)) ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ v234));
  v263 = v221 ^ 0x5FA65DA8B1D69ECLL;
  if (v258 != 0xE6EA9F0CEC99AC5)
  {
    v263 = v260 & 0x1C662C850ABD1704 ^ 0xF7D3F4A755263E7ALL ^ (v260 ^ 0xEC4E19A08040A04BLL) & (v221 ^ 0x1DF64A872B79BF6DLL);
  }

  v264 = (v263 ^ 0xFB95FC2755269E32) & (v260 ^ 0xEDD1357E6C18EC1ELL);
  v265 = v263 & 0xFE60D32113A7B3AALL;
  v266 = ((a32[14] - ((2 * a32[14]) & 0x98u) + 1095016) << 40) - 0x1C0000000000;
  v267 = v260 & 0x8745BAA7B7725E04;
  v268 = (v259 ^ 0x47E8FF4E10171B1ELL) & (v216 ^ 0xD4DF994E10171B1ELL);
  v269 = v259 & 0x2B75000000000000;
  v270 = (v267 ^ v261 & (v221 ^ 0x86D5DCA596B6D62FLL) ^ v265 ^ v264 ^ 0xB566FF595C3CB76CLL) & (v246 ^ 0xA8CDDCE3FFFFFFFFLL) ^ v246 & 0x432237D800000000;
  v271 = (((v266 ^ 0xB7C00D894F4C7E92) + 0x3D44EE1460F5044ALL) ^ ((v266 ^ 0x37EF91DFAF9036E0) - 0x42948DBD7FD6B3C4) ^ ((v266 ^ 0x909AD056E0DC4872) + 0x1A1E33CBCF6532AALL)) - (((v270 ^ 0xCBC07299B6D234A0 ^ v266 ^ 0x62975A218B240C5) - 0x735269C0C8F4C5E1) ^ ((v270 ^ 0xCBC07299B6D234A0 ^ v266 ^ 0xD9B4B56FAC526E91) + 0x533056F283EB144BLL) ^ ((v270 ^ 0xCBC07299B6D234A0 ^ v266 ^ 0x7317156B3097404FLL) - 0x66C0909E0D1C56BLL)) - 0x581CF6FE988A4A2ALL;
  v272 = (v271 ^ 0xD3F0791C12DCE2AFLL) & (2 * (v271 & 0xE3F97D9D149EE40FLL)) ^ v271 & 0xE3F97D9D149EE40FLL;
  v273 = ((2 * (v271 ^ 0x9432512C12F962ABLL)) ^ 0xEF9659620CCF0D48) & (v271 ^ 0x9432512C12F962ABLL) ^ (2 * (v271 ^ 0x9432512C12F962ABLL)) & 0x77CB2CB1066786A4;
  v274 = (v273 ^ 0x782082004470000) & (4 * v272) ^ v272;
  v275 = ((4 * (v273 ^ 0x10492491022082A4)) ^ 0xDF2CB2C4199E1A90) & (v273 ^ 0x10492491022082A4) ^ (4 * (v273 ^ 0x10492491022082A4)) & 0x77CB2CB1066786A4;
  v276 = (v275 ^ 0x5708208000060280) & (16 * v274) ^ v274;
  v277 = ((16 * (v275 ^ 0x20C30C3106618424)) ^ 0x7CB2CB1066786A40) & (v275 ^ 0x20C30C3106618424) ^ (16 * (v275 ^ 0x20C30C3106618424)) & 0x77CB2CB1066786A0;
  v278 = (v277 ^ 0x7482081006600200) & (v276 << 8) ^ v276;
  v279 = (((v277 ^ 0x34924A1000784A4) << 8) ^ 0xCB2CB1066786A400) & (v277 ^ 0x34924A1000784A4) ^ ((v277 ^ 0x34924A1000784A4) << 8) & 0x77CB2CB106678600;
  v280 = v278 ^ 0x77CB2CB1066786A4 ^ (v279 ^ 0x4308200006060000) & (v278 << 16);
  v281 = a32[2] - ((2 * a32[2]) & 0xFFFB) - 0x2D49A79CDBDCF803;
  v282 = a31 - 1406432676 + (((a38 ^ 0x850CFFAE) + 143563202) ^ ((a38 ^ 0x6F8A6488) - 502791448) ^ ((a38 ^ 0xD74821A7) + 1523206089));
  v219 = ((*(v311 + 14) - ((2 * *(v311 + 14)) & 0x58u) + 95) << 56) - 0x3300000000000000;
  v283 = v219 & 0x3333333333333333 ^ (v269 ^ 0x70F149B309B6C982 ^ v268) & (v219 ^ 0xD3FFFFFFFFFFFFFFLL) ^ 0xE200D90DD7684859 ^ v258;
  v284 = 0x6C14DA4F2EDA0929 - (((v270 ^ 0xF428B4473C81C49FLL) - 0x3FE8C6DE8A53F03FLL) ^ ((v270 ^ 0x9A1B9BFDF856173CLL) - 0x51DBE9644E84239CLL) ^ ((v270 ^ 0x19CCC485F6728918) + 0x2DF349E3BF5F4248));
  v285 = v284 ^ v270 ^ 0xCBC07299B6D234A0 ^ ((v284 ^ 0xB8912794139DC49DLL) + 0x6F3AAB9E5F334C27) ^ ((v284 ^ 0xF2A43C0D6A3FAC39) + 0x250FB00726912483) ^ ((v284 ^ 0x1DAED593B91EE04FLL) - 0x35FAA6660A4F970BLL) ^ ((v284 ^ 0x7FCFBDFF73EDFFAFLL) - 0x579BCE0AC0BC88EBLL) ^ v271 ^ (2 * ((v280 << 32) & 0x77CB2CB100000000 ^ v280 ^ ((v280 << 32) ^ 0x66786A400000000) & (((v279 ^ 0x34C30CB1006102A4) << 16) & 0x77CB2CB100000000 ^ 0x534A289000000000 ^ (((v279 ^ 0x34C30CB1006102A4) << 16) ^ 0x2CB1066700000000) & (v279 ^ 0x34C30CB1006102A4))));
  v286 = (((v262 ^ 0xFFFFFFCA) + 51) ^ (v262 - 7) ^ ((v262 ^ 0xFFFFFFFB) + 4)) + *(v312 + (v262 ^ 0xC4));
  v287 = (v286 - 6) & 0xFFFFFF98 ^ 0x36;
  v288 = ((a32[22] - ((2 * a32[22]) & 0x44)) << 16) - 0x7D1E66F925DE0000;
  v289 = (((v266 ^ 0x31A69BED488EE761) - 0x44DD878F98C86245) ^ ((v266 ^ 0x7676E937CE07BF90) - 0x30DF5551E413AB4) ^ ((v266 ^ 0x57653EDA868958F1) - 0x221E22B856CFDDD5)) + 0x12FF4F79F4CA2D4FLL + (((v285 ^ 0x1AE544495AD0FDD4) - 0x1E6CF5768895177CLL) ^ ((v285 ^ 0x1D20C92824D8B67DLL) - 0x19A97817F69D5CD5) ^ ((v285 ^ 0x93474A8D517FBBB1) + 0x6831044D7CC5AEE7));
  v290 = (v289 ^ 0xD090773EDC8E7AD5) & (2 * (v289 & 0xE2DA77BCD8AE7285)) ^ v289 & 0xE2DA77BCD8AE7285;
  v291 = ((2 * (v289 ^ 0xD004165E5CC2DEDDLL)) ^ 0x65BCC3C508D958B0) & (v289 ^ 0xD004165E5CC2DEDDLL) ^ (2 * (v289 ^ 0xD004165E5CC2DEDDLL)) & 0x32DE61E2846CAC58;
  v292 = (v291 ^ 0x9841C000480810) & (4 * v290) ^ v290;
  v293 = ((4 * (v291 ^ 0x124220228424A448)) ^ 0xCB79878A11B2B160) & (v291 ^ 0x124220228424A448) ^ (4 * (v291 ^ 0x124220228424A448)) & 0x32DE61E2846CAC58;
  v294 = (v293 ^ 0x25801820020A040) & (16 * v292) ^ v292;
  v295 = ((16 * (v293 ^ 0x30866060844C0C18)) ^ 0x2DE61E2846CAC580) & (v293 ^ 0x30866060844C0C18) ^ (16 * (v293 ^ 0x30866060844C0C18)) & 0x32DE61E2846CAC50;
  v296 = (v295 ^ 0x20C6002004488400) & (v294 << 8) ^ v294;
  v297 = (((v295 ^ 0x121861C280242858) << 8) ^ 0xDE61E2846CAC5800) & (v295 ^ 0x121861C280242858) ^ ((v295 ^ 0x121861C280242858) << 8) & 0x32DE61E2846CAC00;
  v298 = v296 ^ 0x32DE61E2846CAC58 ^ (v297 ^ 0x12406080042C0000) & (v296 << 16);
  v299 = (v298 << 32) & 0x32DE61E200000000 ^ v298 ^ ((v298 << 32) ^ 0x46CAC5800000000) & (((v297 ^ 0x209E01628040A458) << 16) & 0x32DE61E200000000 ^ 0x121C618200000000 ^ (((v297 ^ 0x209E01628040A458) << 16) ^ 0x61E2846C00000000) & (v297 ^ 0x209E01628040A458));
  v300 = ((a32[1] - ((2 * a32[1]) & 0x1B0u) + 890086150) << 32) - 0x2E00000000;
  v301 = v282 ^ a31 ^ ((v282 ^ 0x500D504B) - 209008384) ^ ((v282 ^ 0xC064373C) + 1675865993) ^ ((v282 ^ 0xB3EEFF87) + 275343156) ^ ((v282 ^ 0x7FFFFFBB) - 596089072);
  HIDWORD(v302) = v286;
  LODWORD(v302) = ((((v286 - 6) ^ 0x3C) & (2 * (((v286 - 6) ^ 0x3C) & (2 * (((v286 - 6) ^ 0x3C) & (2 * (((v286 - 6) ^ 0x3C) & (2 * (((v286 - 6) ^ 0x3C) & (2 * v287) ^ v287)) ^ v287)) ^ v287)) ^ v287)) ^ v287) << 25) ^ ((v286 - 6) << 24);
  LODWORD(v280) = ((((v302 >> 25) ^ 0xFFFFFFE3) - 83) ^ (((v302 >> 25) ^ 0xFFFFFF8A) - 58) ^ (((v302 >> 25) ^ 0xFFFFFF88) - 56)) - 89;
  v304 = v280 & 0x5A ^ 0xD8;
  v305 = (((v280 ^ (2 * ((v280 ^ 0x28) & (2 * ((v280 ^ 0x28) & (2 * ((v280 ^ 0x28) & (2 * ((v280 ^ 0x28) & (2 * (v280 & (2 * v280) & 0x54 ^ v304)) ^ v304)) ^ v304)) ^ v304)) ^ v304))) << 24) ^ 0x52D07EC7BD46B117) & (v300 ^ 0xE6DDDD37FF4FBD7FLL) | v300 & 0x250D813800000000;
  v306 = v305 & 0x42D8A27E17003114 ^ (((a32[21] - ((2 * a32[21]) & 0x16C) + 0x65FFEFC7FAF771B6) ^ 0x65FFEFC7FAF771B6) << (~(-35 - v203) & 8) << ((v203 + 18) & 0x20) << (~(v203 + 18) & 0x28)) ^ (v305 ^ 0x8822012018B94EE8) & (v288 & 0x8040800483DB0000 ^ 0x7EC2A4E736D9E082 ^ (v288 ^ 0x7D1E66F925DDFFFFLL) & (v281 & 0x200020000058CFLL ^ 0x5C5809C192B3897CLL ^ ((((a32[12] - ((2 * a32[12]) & 0xFFC7)) << 8) - 0x5A0C15ACB90D1D00) ^ 0xBA2E9AD088654430) & (v281 ^ 0x2D49A79CDBDCF88ELL)));
  v307 = __ROR8__(v314, 42) ^ 0xF1C854B7EBEDD777;
  if (((2 * ((v301 ^ 0x5C78674A) & (a38 ^ 0x10DCEFC) ^ v301 & 0x3CC3747D)) ^ 0x3880C890) + (a38 ^ 0x61B6DDCB ^ v301) <= 1)
  {
    v308 = 1;
  }

  else
  {
    v308 = ((2 * ((v301 ^ 0x5C78674A) & (a38 ^ 0x10DCEFC) ^ v301 & 0x3CC3747D)) ^ 0x3880C890) + (a38 ^ 0x61B6DDCB ^ v301);
  }

  LODWORD(v313) = v308;
  v303 = ((a32[24] - ((2 * a32[24]) & 0x30u) + 24646) << 48) - 0x2E000000000000;
  return (*(a40 + 8 * ((v310 + 1662924001) & 0x9CE1DBFE)))(v283, (((a32[16] - ((2 * a32[16]) & 0xFFF3u) + 175) << 56) - 0x3600000000000000) ^ (((a32[17] - ((2 * a32[17]) & 0x1A4u) + 24290) << 48) - 0x10000000000000) ^ v289 ^ (2 * v299) ^ 0xA02CF4F9D0772A35, (((a32[25] - 2 * (a32[25] & 3u) + 148) << 56) - 0x1100000000000000) ^ 0xC9E7FF674FF5CF52 ^ ((v306 & 0x4AFDDE0357C10F7ALL ^ v303 & 0xFD000000000000 ^ 0x350221FCA83EF0C5) & (v306 & 0x350221FCA83EF085 ^ (v303 & 0x2000000000000 | 0x3540D6B9A20B3E45)) | (v306 & 0x4AFDDE0357C10F7ALL ^ v303 & 0xFD000000000000) & 0x4ABD080255C0013ALL), ((v310 + 1662924001) & 0x9CE1DBFE) - 4320, (*a45 + 0xF0523ABE6CAA289 - ((2 * *a45) & 0x112)) ^ 0xF0523ABE6CAA289 ^ v307, 2327, 0, v199 + 533, a9, v310, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v311, v177, v312, a31, a32, a33, a34, 0x425764BB5877DA25, v313, (((v301 ^ 0xE226C16C) << 32) ^ 0xDE3C5B1E495A6FF2) & ~a42 | a42 & 0xB6A5900D, a38);
}

uint64_t sub_10003D298(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v31 = a15 - 8;
  v32.i64[0] = a16 + v31 - 5;
  v32.i64[1] = a16 + v31 - 6;
  v33.i64[0] = a16 + v31 - 3;
  v33.i64[1] = a16 + v31 - 4;
  v34.i64[0] = a16 + v31 - 1;
  v34.i64[1] = a16 + v31 - 2;
  v35.i64[0] = a16 + v31 + a10 - 3320;
  v35.i64[1] = a16 + v31 - 8;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vaddq_s64(v41, a3);
  v45 = vandq_s8(vaddq_s64(v40, a3), a4);
  v46 = vandq_s8(v44, a4);
  v47 = veorq_s8(v46, a5);
  v48 = veorq_s8(v45, a5);
  v49 = veorq_s8(v45, a6);
  v50 = veorq_s8(v46, a6);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a7);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v54 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(v57, vandq_s8(vaddq_s64(v57, v57), a8)), v19), v20);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v56, vandq_s8(vaddq_s64(v56, v56), a8)), v19), v20);
  v60 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v21);
  v66 = veorq_s8(v64, v21);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v22);
  v73 = veorq_s8(v71, v22);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v23);
  v80 = veorq_s8(v78, v23);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), v24), v80), v25), v26);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), v24), v79), v25), v26);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), v27);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84), v27);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vandq_s8(vaddq_s64(v42, a3), a4);
  v93 = vaddq_s64(v91, v89);
  v94 = veorq_s8(vaddq_s64(v90, v88), v30);
  v127.val[2] = vshlq_u64(veorq_s8(v93, v30), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v127.val[1] = vshlq_u64(v94, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v95 = veorq_s8(v92, a5);
  v96 = veorq_s8(v92, a6);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), a7);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), a8)), v19), v20);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v21);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v22);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v23);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v24), v106), v25), v26);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v27);
  v110 = vandq_s8(vaddq_s64(v43, a3), a4);
  v127.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v111 = veorq_s8(v110, a5);
  v112 = veorq_s8(v110, a6);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), a7);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), a8)), v19), v20);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v21);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v22);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v23);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v24), v122), v25), v26);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v27);
  v127.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  *v35.i64[1] = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v16 + v31)), v29), *&vqtbl4q_s8(v127, v28)));
  return (*(v18 + 8 * (((a14 == v31) * v17) ^ a12)))();
}

uint64_t sub_10003D2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1824088897 * (((&a15 | 0x635E22E1) - (&a15 & 0x635E22E1)) ^ 0x3B37F183);
  a15 = v23 + 3757;
  a17 = ((2 * v20) & 0xDFDDF75E) - v23 + (v20 ^ 0xEFEEFBAF) + 1588981467;
  a18 = v19;
  a19 = a12;
  v24 = (*(v21 + 77048))(&a15);
  return (*(v21 + 8 * ((7199 * (a16 == v22)) ^ 0x92Fu)))(v24);
}

uint64_t sub_10003D3A4@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0xA3C26C2F) - 1684009419) ^ ((*(v1 + 16) ^ 0x4EED3616) + 1989104654) ^ ((*(v1 + 16) ^ 0x12D0A5C6) + 716359646)) + 1385299976;
  v5 = (a1 > 0xE5D06212) ^ (v4 < 0x1A2F9DED);
  v6 = (((v2 - 1759) | 0x1582) ^ 0x1A2F8A2E) + a1 > v4;
  if (v5)
  {
    v6 = a1 > 0xE5D06212;
  }

  return (*(v3 + 8 * ((22 * !v6) ^ v2)))();
}

uint64_t sub_10003D558@<X0>(int a1@<W8>)
{
  v5 = 25 * (a1 ^ 0x8D5);
  (*(v3 + 8 * (a1 ^ 0x2D11)))();
  *(v2 + 24) = 0;
  (*(v3 + 8 * (v5 + 8004)))(v2);
  return v1(*(v4 - 216));
}

uint64_t sub_10003D5BC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1001447C0(0);
}

uint64_t sub_10003D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = v11 - 1;
  v21 = (__ROR8__((v10 + v20) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v22 = v21 ^ (((v9 + v12) & v13) + a1);
  v23 = v21 ^ v15;
  v24 = (__ROR8__(v22, 8) + v23) ^ v16;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - (a2 & (2 * (v26 + v25))) + a3) ^ a4;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v14;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x61459D2AF01F24F7;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((a6 | (2 * ((v33 + v32) ^ a5))) - ((v33 + v32) ^ a5) + a7) ^ a8 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(((a6 | (2 * ((v33 + v32) ^ a5))) - ((v33 + v32) ^ a5) + a7) ^ a8, 8) + v34) ^ 0x1A2AEBE44253AF03;
  *(v10 + v20) = *(a9 + v20) ^ (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ v19) >> (8 * ((v10 + v20) & 7))) ^ 0x3C;
  return (*(v18 + 8 * (((v20 == 0) * v17) ^ v9)))();
}

uint64_t sub_10003D8F4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v29.i64[0] = v16 + v14 - 15;
  v29.i64[1] = v16 + v14 - 16;
  v30.i64[0] = v16 + v14 - 13;
  v30.i64[1] = v16 + v14 - 14;
  v31.i64[0] = v16 + v14 - 7;
  v31.i64[1] = v16 + v14 - 8;
  v32.i64[0] = v16 + v14 - 5;
  v32.i64[1] = v16 + v14 - 6;
  v33.i64[0] = v16 + v14 - 3;
  v33.i64[1] = v16 + v14 - 4;
  v34 = (v18 + 3235) + v16 + a10;
  v35.i64[0] = v14 + v34;
  v35.i64[1] = v16 + v14 - 2;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v33, a1);
  v38 = vandq_s8(v32, a1);
  v39 = vandq_s8(v31, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vaddq_s64(v41, a3);
  v45 = vaddq_s64(v40, a3);
  v46 = veorq_s8(v45, a4);
  v47 = veorq_s8(v44, a4);
  v48 = veorq_s8(v44, a5);
  v49 = veorq_s8(v45, a5);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v50, a6), vorrq_s8(v50, a7)), a7), a8);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v51, a6), vorrq_s8(v51, a7)), a7), a8);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), v19);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), v19);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, v20), vorrq_s8(v62, v21)), v21), v22);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v20), vorrq_s8(v63, v21)), v21), v22);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v23);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), v23);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), v24);
  v76 = veorq_s8(v74, v24);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v26);
  v83 = veorq_s8(v81, v26);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v78.i64[0] = v16 + v14 - 11;
  v78.i64[1] = v16 + v14 - 12;
  v85 = vaddq_s64(v42, a3);
  v179.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v84), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v179.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v86 = veorq_s8(v85, a4);
  v87 = veorq_s8(v85, a5);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, a6), vorrq_s8(v88, a7)), a7), a8);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), v19);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, v20), vorrq_s8(v93, v21)), v21), v22);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v23);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v24);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v26);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v100.i64[0] = v16 + v14 - 9;
  v100.i64[1] = v16 + v14 - 10;
  v103 = vaddq_s64(v102, v101);
  v104 = vandq_s8(v100, a1);
  v105 = vaddq_s64(v43, a3);
  v179.val[1] = vshlq_u64(veorq_s8(v103, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v106 = veorq_s8(v105, a4);
  v107 = veorq_s8(v105, a5);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, a6), vorrq_s8(v108, a7)), a7), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v19);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v20), vorrq_s8(v113, v21)), v21), v22);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v23);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v26);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v78, a1);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v30, a1);
  v179.val[0] = vshlq_u64(veorq_s8(v124, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v126 = vandq_s8(v29, a1);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), a3);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), a3);
  v126.i64[0] = vqtbl4q_s8(v179, v28).u64[0];
  v179.val[0] = veorq_s8(v130, a4);
  v179.val[1] = veorq_s8(v129, a4);
  v131 = veorq_s8(v129, a5);
  v132 = veorq_s8(v130, a5);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL), v132);
  v179.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v131);
  v179.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179.val[0], a6), vorrq_s8(v179.val[0], a7)), a7), a8);
  v179.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179.val[1], a6), vorrq_s8(v179.val[1], a7)), a7), a8);
  v133 = veorq_s8(v179.val[1], vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v179.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v133), v19);
  v179.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL), v134), v19);
  v179.val[2] = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v135 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v136 = veorq_s8(v179.val[1], v179.val[2]);
  v179.val[2] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v136);
  v179.val[1] = vaddq_s64(v179.val[2], v135);
  v179.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179.val[0], v20), vorrq_s8(v179.val[0], v21)), v21), v22);
  v179.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179.val[1], v20), vorrq_s8(v179.val[1], v21)), v21), v22);
  v137 = veorq_s8(v179.val[1], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v179.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v137), v23);
  v179.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL), v138), v23);
  v179.val[2] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v139 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v140 = veorq_s8(v179.val[1], v179.val[2]);
  v179.val[2] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v140);
  v179.val[1] = veorq_s8(vaddq_s64(v179.val[2], v139), v24);
  v179.val[0] = veorq_s8(v179.val[0], v24);
  v179.val[2] = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v141 = veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v142 = veorq_s8(v179.val[1], v179.val[2]);
  v179.val[2] = vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL);
  v179.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), v142);
  v179.val[1] = veorq_s8(vaddq_s64(v179.val[2], v141), v26);
  v179.val[0] = veorq_s8(v179.val[0], v26);
  v143 = vaddq_s64(v127, a3);
  v179.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[1], 0x38uLL), v179.val[1], 8uLL), veorq_s8(v179.val[1], vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v179.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179.val[0], 0x38uLL), v179.val[0], 8uLL), veorq_s8(v179.val[0], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v144 = veorq_s8(v143, a4);
  v145 = veorq_s8(v143, a5);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v146, a6), vorrq_s8(v146, a7)), a7), a8);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v19);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, v20), vorrq_s8(v151, v21)), v21), v22);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v23);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v24);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v26);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL)));
  v160 = vaddq_s64(v128, a3);
  v179.val[1] = vshlq_u64(veorq_s8(v159, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), a2)));
  v161 = veorq_s8(v160, a4);
  v162 = veorq_s8(v160, a5);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, a6), vorrq_s8(v163, a7)), a7), a8);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v19);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, v20), vorrq_s8(v168, v21)), v21), v22);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v23);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v24);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v26);
  v179.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v100, 3uLL), a2)));
  v126.i64[1] = vqtbl4q_s8(v179, v28).u64[0];
  v176 = vrev64q_s8(*(v14 + v34 - 15));
  v177 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v176, v176, 8uLL), v25), v126));
  *(v15 - 15 + v34) = vextq_s8(v177, v177, 8uLL);
  return (*(v17 + 8 * (((v16 == 16) * a14) ^ v18)))();
}

uint64_t sub_10003E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = 476323082 - 1710126949 * ((1004914631 - (&a16 | 0x3BE5C7C7) + (&a16 | 0xC41A3838)) ^ 0xF60163A8);
  v18 = (*(v17 + 77088))(&a16);
  return (*(v17 + 8 * ((4882 * (a17 == 16257999)) ^ 0xC30u)))(v18);
}

uint64_t sub_10003E2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((-2052023863 - (&a14 ^ 0x9EA9FB97 | 0x85B099C9) + (&a14 ^ 0x9EA9FB97 | 0x7A4F6636)) ^ 0xBC8F4EC3) * v19;
  a15 = v23 - 909575210;
  a16 = a10;
  a17 = &a12;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674573073;
  v24 = (*(v20 + 8 * (v22 + 3567)))(&a14);
  return (*(v20 + 8 * (((a14 == v21) * ((((v22 - 693) | 0xB12) - 1393) ^ v22 ^ 0x3D2)) ^ v22)))(v24);
}

uint64_t sub_10003E388@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_1001106B8();
}

void sub_10003E3A4()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBBE80) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 + dword_100CBBE80) ^ 0xDF))] ^ 0xBF]) - 138);
  v1 = *(&off_100BFFA10 + (byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - *v0) ^ 0xDF))] ^ 1] ^ (-85 * ((dword_100CBC1F0 - *v0) ^ 0xDF))) + 14);
  v2 = (*v1 ^ *v0) - &v4;
  *v0 = 2054362027 * (v2 - 0xB4207763EF64BDFLL);
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * (((v5 | 0xE933A545) - (v5 & 0xE933A545)) ^ 0xDB28FED5);
  LOBYTE(v1) = -85 * (*v0 ^ 0xDF ^ *v1);
  v3 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBE80) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 - dword_100CBBE80) ^ 0xDF))] ^ 0xEE]) + 163) - 8;
  (*&v3[8 * (v1 ^ byte_1009DAFB0[byte_1009D40D0[v1] ^ 0xBF]) + 75368])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003E5AC()
{
  v5 = v1 - 1;
  *(v0 + v5) = *(v4 + v5) ^ 0x3C;
  return (*(v3 + 8 * (((v5 == 0) * (v2 - 7121)) ^ v2)))();
}

uint64_t sub_10003E5DC()
{
  (*(v2 + 8 * (v0 ^ 0x2DB3)))();
  *(v1 + 24) = 0;
  return sub_1000A58C0();
}

void sub_10003E610(_DWORD *a1)
{
  v1 = *a1 ^ (956911519 * (((a1 | 0x8A3058F6) - (a1 | 0x75CFA709) + 1976542985) ^ 0x60A128F3));
  __asm { BRAA            X9, X17 }
}

void sub_10003E6E0()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC230) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((dword_100CBC1F0 - dword_100CBC230) ^ 0xDF))] ^ 0x80]) + 258);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009C9D6C[(byte_1009E331C[(-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF)) - 12] ^ 0x1F) - 12] ^ (-85 * (v1 ^ dword_100CBC1F0 ^ 0xDF))) + 113);
  v3 = (*v2 ^ v1) - &v5;
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC230) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC230) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (byte_1009D42DC[(byte_1009C9C64[v2 - 4] ^ 0x80) - 12] ^ v2) + 76280])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003E8F0()
{
  v3 = (v2 - 3528) | 0x800;
  v4 = (v9 ^ 0x33FB9FDF) - 855870480 + ((v9 << ((v2 + 56) ^ 0x42)) & 0x67F73FBE);
  v5 = (v3 - 1580925509) & 0x5E3AFECB;
  v12 = (v3 + 4695) ^ (((((2 * &v10) | 0xE05A0A40) - &v10 + 265485024) ^ 0xA844D642) * v1);
  v11 = v7;
  (*(v0 + 8 * (v3 ^ 0x2BCF)))(&v10);
  v11 = v8;
  v12 = (v5 + 5584) ^ ((&v10 ^ 0x5869D362) * v1);
  (*(v0 + 8 * (v5 + 6850)))(&v10);
  return (v4 - 16257999);
}

void sub_10003EA30()
{
  v4 = v0[1] - v2;
  v5 = (v4 ^ 0xDFDA4114) & (2 * (v4 & 0xDFE34956)) ^ v4 & 0xDFE34956;
  v6 = ((2 * (v4 ^ (2 * (v3 ^ 0x1256)) ^ 0x51D85DB0)) ^ 0x1C761594) & (v4 ^ (2 * (v3 ^ 0x1256)) ^ 0x51D85DB0) ^ (2 * (v4 ^ (2 * (v3 ^ 0x1256)) ^ 0x51D85DB0)) & 0x8E3B0ACA;
  v7 = v6 ^ 0x82090A4A;
  v8 = (v6 ^ 0xC120080) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x38EC2B28) & v7 ^ (4 * v7) & 0x8E3B0AC8;
  v10 = (v9 ^ 0x8280A00) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x861300C2)) ^ 0xE3B0ACA0) & (v9 ^ 0x861300C2) ^ (16 * (v9 ^ 0x861300C2)) & 0x8E3B0AC0;
  v12 = v10 ^ 0x8E3B0ACA ^ (v11 ^ 0x82300800) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0xE3B0000 ^ v12 ^ ((v12 << 16) ^ 0xACA0000) & (((v11 ^ 0xC0B024A) << 8) & 0x8E3B0000 ^ 0x4310000 ^ (((v11 ^ 0xC0B024A) << 8) ^ 0x3B0A0000) & (v11 ^ 0xC0B024A))));
  *v14 = (HIBYTE(v13) ^ 0xD7) - ((2 * (HIBYTE(v13) ^ 0xD7)) & 0x78) + 60;
  v14[1] = (BYTE2(v13) ^ 0x81) - ((v13 >> 15) & 0x78) + 60;
  v14[2] = (BYTE1(v13) ^ 0x5C) - 2 * ((BYTE1(v13) ^ 0x5C) & 0x3F ^ BYTE1(v13) & 3) + 60;
  v14[3] = v13 ^ 0xFE;
  *v0 = *(v1 + 24);
}

uint64_t sub_10003EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v24 = 1824088897 * ((2 * (&a16 & 0x7B704FF8) - &a16 + 76525568) ^ 0x5CE66362);
  a16 = v24 + v23 - 4080;
  a18 = (v22 ^ 0xCEACFF9E) + ((2 * v22) & 0x9D59FF3C) - v24 + 2146953964;
  a19 = v21;
  a20 = a13;
  v25 = (*(v20 + 8 * (v23 + 1794)))(&a16);
  return (*(v20 + 8 * (((a17 == 16257999) * (240 * (v23 ^ 0x1E90) - 3083)) ^ v23)))(v25);
}

uint64_t sub_10003EE2C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  *a4 = a1;
  *a7 = a2;
  return sub_10004E61C();
}

uint64_t sub_10003EE9C()
{
  v8 = 869295389 * (((~&v8 & 0xDF8EA2F0) - (~&v8 | 0xDF8EA2F1)) ^ 0x6EDA8EA2) - 379703319 + v0;
  result = (*(v2 + 8 * (v0 ^ 0x2565)))(&v8);
  v4 = v7;
  if (v9 == 33)
  {
    v4 = v1;
  }

  if (*v4 == 96)
  {
    v5 = 16215950;
  }

  else
  {
    v5 = 16257999;
  }

  *(v6 + 4) = v5;
  return result;
}

uint64_t sub_10003EF6C()
{
  v2 = STACK[0x538];
  STACK[0x7C0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 + 7402) | 0x583) ^ 0x244A) - 444)) ^ ((v0 + 7402) | 0x583))))();
}

uint64_t sub_10003F0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = ~v5 + a2;
  v11 = *(v9 + v10 - 15);
  v12 = *(v9 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 + v6 + v3 != v2) * v7) ^ (v4 + 3609))))();
}

uint64_t sub_10003F164@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W8>)
{
  v7.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v7.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v8 = a1 + v4 - 1;
  v9 = veorq_s8(*(v3 + v4 - 1 - 31), v7);
  *(v8 - 15) = veorq_s8(*(v3 + v4 - 1 - 15), v7);
  *(v8 - 31) = v9;
  return (*(v6 + 8 * ((2167 * ((v5 ^ (a2 - 1742) ^ 0x1B1BLL) == (v4 & 0xFFFFFFE0))) ^ (a3 + v5 + 383))))();
}

uint64_t sub_10003F1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v10 = 199 * (v6 ^ 0xAE8);
  *v12 = a1;
  *a6 = v7;
  v17 = (v10 + 6953) ^ (1824088897 * ((2 * (&v15 & 0xCF084B0) - &v15 - 217089205) ^ 0xAB66A829));
  v16 = v13;
  (*(v8 + 8 * (v10 ^ 0x20FD)))(&v15);
  v16 = v14;
  v17 = (v10 + 6953) ^ (1824088897 * ((&v15 - 458001650 - 2 * (&v15 & 0xE4B3730E)) ^ 0xBCDAA06C));
  (*(v8 + 8 * ((v10 + 2159) ^ 0x286C)))(&v15);
  return (v9 - 16257999);
}

uint64_t sub_10003F3A8@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v131 = (v43 + 609611704) | 0x808F05C;
  v130 = a1[8];
  v45 = a1[7];
  v129 = a1[9];
  v46 = a1[6];
  v47 = a1[12];
  v48 = a1[11];
  v49 = a1[13];
  v132 = a1[10];
  v50 = a1[14];
  v51 = a1[15];
  v52 = v44[8];
  v53 = *v44 ^ *a1;
  v54 = v44[1] ^ a1[1];
  v55 = v44[10];
  v56 = v44[2] ^ a1[2];
  v57 = v44[5] ^ a1[5];
  v58 = v44[3] ^ a1[3];
  v59 = v44[15];
  v60 = v44[4] ^ a1[4];
  v61 = v44[12];
  v62 = v44[6] ^ v46;
  v63 = v44[14];
  v64 = v44[7] ^ v45;
  v65 = v44[13] ^ v49;
  v66 = v44[9] ^ v129;
  v67 = v52 ^ v130;
  v68 = v44[11] ^ v48;
  v69 = v61 ^ v47;
  v70 = v63 ^ v50;
  v71 = v55 ^ v132;
  v72 = v59 ^ v51;
  v73 = *(&off_100BFFA10 + (v131 ^ 0x2C5EF506)) - 4;
  v74 = *&v73[8 * (v53 ^ 0x70)];
  v75 = *&v73[8 * (v54 ^ 0x171)];
  v76 = v75 ^ v74;
  v77 = (v74 >> 4) ^ v74 ^ v75;
  v78 = *&v73[8 * (v56 ^ 0x172)];
  v79 = v77 ^ (v75 >> 4) ^ v78;
  v80 = v78 >> 4;
  LODWORD(v78) = (v76 >> 1) ^ (v78 >> 1);
  v81 = *&v73[8 * (v58 ^ (v131 + 23))];
  v82 = v79 ^ v78;
  LODWORD(v78) = v80 ^ v81 ^ (v81 >> 1);
  v83 = *&v73[8 * (v60 ^ 0x174)];
  LODWORD(v78) = v78 ^ (v81 >> 4);
  v84 = v83 >> 4;
  v85 = v82 ^ v78;
  LODWORD(v78) = v83 ^ (v83 >> 1);
  v86 = *&v73[8 * (v57 ^ 0x75)];
  LODWORD(v78) = v78 ^ v84 ^ v86 ^ (v86 >> 1);
  v87 = *&v73[8 * (v62 ^ 0x176)];
  v88 = v85 ^ v78;
  v89 = v87 >> 4;
  LODWORD(v86) = (v86 >> 4) ^ v87 ^ (v87 >> 1);
  v90 = *&v73[8 * (v64 ^ 0x77)];
  LODWORD(v89) = v86 ^ v89;
  v91 = v90 >> 4;
  v92 = v88 ^ v89 ^ v90 ^ (v90 >> 1);
  v93 = *&v73[8 * (v66 ^ 0x71)];
  v94 = v91 ^ *&v73[8 * ((v52 ^ v130) ^ 0x170)] ^ (*&v73[8 * ((v52 ^ v130) ^ 0x170)] >> 1) ^ (*&v73[8 * ((v52 ^ v130) ^ 0x170)] >> 4) ^ v93 ^ (v93 >> 1);
  v95 = *&v73[8 * (v71 ^ 0x72)];
  v96 = v95 >> 4;
  v97 = *&v73[8 * (v68 ^ 0x173)];
  v98 = v92 ^ v94 ^ (v93 >> 4);
  v99 = v95 ^ (v95 >> 1);
  v100 = v97 >> 4;
  v101 = v99 ^ v96;
  v102 = v97 >> 1;
  LODWORD(v97) = v101 ^ v97;
  v103 = *&v73[8 * (v69 ^ 0x174)];
  LODWORD(v97) = v97 ^ v102;
  v104 = v103 >> 4;
  LODWORD(v97) = v97 ^ v100;
  v105 = *&v73[8 * (v65 ^ 0x175)];
  LODWORD(v97) = v97 ^ v103 ^ (v103 >> 1);
  v106 = v105 >> 4;
  v107 = v98 ^ v97;
  v108 = v105 >> 1;
  LODWORD(v105) = v104 ^ v105;
  v109 = *&v73[8 * (v70 ^ 0x176)];
  LODWORD(v108) = v105 ^ v108 ^ v106;
  v110 = *&v73[8 * (v72 ^ 0x177)];
  v111 = v58 ^ v53 ^ v57 ^ v54 ^ v67 ^ v56 ^ v60 ^ v71 ^ v64 ^ v66 ^ v72 ^ v69 ^ v70 ^ v65 ^ v68 ^ v107 ^ v108 ^ v109 ^ (v109 >> 1) ^ (v109 >> 4) ^ v110 ^ (v110 >> 1) ^ (v110 >> 4) ^ v62;
  return (*(a43 + 8 * (v131 - 744414210)))(v111, 368, v72, v70, v65, v60, v56, v57, a2, a3, &STACK[0x270], a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, a1, v54, v71 ^ 0x72, v53, v58, v60, v64, 0x101010101010101 * ((v111 ^ 0x8D) - *(*(&off_100BFFA10 + v131 - 744420162) + (v111 ^ 0xA5))), v57, v67, v71, v66, v68, v70, v65);
}

uint64_t sub_10003F8B0()
{
  v2 = *STACK[0x830];
  STACK[0x7D0] = 0;
  STACK[0x6C0] = 0;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 10071 + ((v0 + 1253363724) & 0xB54B37E3))) ^ v0)))();
}

void sub_10003F90C()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC100) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC100) ^ 0xDF))] ^ 0xB1]) + 46);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009D42DC[(byte_1009C9C64[(-85 * ((dword_100CBC1F0 + v1) ^ 0xDF)) - 4] ^ 0x80) - 12] ^ (-85 * ((dword_100CBC1F0 + v1) ^ 0xDF))) + 100);
  v3 = v1 - &v5 + *v2;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC100) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - dword_100CBC100) ^ 0xDF))] ^ 0xD9]) + 49) - 8;
  (*&v4[8 * (byte_1009D3FDC[(byte_1009C9A60[v2] ^ 0xEE) - 12] ^ v2) + 76160])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003FB64(uint64_t a1)
{
  v3 = STACK[0x8F8];
  STACK[0x6E0] = *(v2 + 8 * (v1 - 5151));
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 6077) | 0x88) - 127)) ^ (v1 + 83))))(a1, 197499219);
}

uint64_t sub_10003FBC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19.i64[0] = a2 + 13;
  v19.i64[1] = a2 + 12;
  *&STACK[0x3E0] = v19;
  v20.i64[0] = a2 + 11;
  v20.i64[1] = a2 + 10;
  v21.i64[0] = a2 + 17;
  v21.i64[1] = a2 + 16;
  v22.i64[0] = a2 + 15;
  v22.i64[1] = a2 + 14;
  v23.i64[0] = a2 + 21;
  v23.i64[1] = a2 + 20;
  v24.i64[0] = a2 + 19;
  v24.i64[1] = a2 + 18;
  v25.i64[0] = a2 + 25;
  v25.i64[1] = a2 + 24;
  v26.i64[0] = a2 + 23;
  v26.i64[1] = a2 + 22;
  v27 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v28 = vdupq_n_s64(v16);
  v29 = vdupq_n_s64(a1);
  v30 = vdupq_n_s64(0xA7264A4E3C6C6C6ELL);
  v31 = vdupq_n_s64(v9);
  v32 = vdupq_n_s64(v8);
  v33 = vdupq_n_s64(v7);
  v34 = vdupq_n_s64(v6);
  v35 = vdupq_n_s64(v5);
  v36 = vdupq_n_s64(v3);
  v37 = vandq_s8(v26, v27);
  v38 = vandq_s8(v25, v27);
  v39 = vandq_s8(v24, v27);
  v40 = vandq_s8(v23, v27);
  v41 = vandq_s8(v22, v27);
  v42 = vandq_s8(v21, v27);
  v43 = vandq_s8(v20, v27);
  v44 = vandq_s8(v19, v27);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v53 = vaddq_s64(vaddq_s64(v45, v45), v28);
  v54 = vaddq_s64(vaddq_s64(v46, v46), v28);
  v55 = vandq_s8(vaddq_s64(vaddq_s64(v50, v50), v28), v29);
  v56 = vandq_s8(vaddq_s64(vaddq_s64(v49, v49), v28), v29);
  v57 = vandq_s8(vaddq_s64(vaddq_s64(v48, v48), v28), v29);
  v58 = vandq_s8(vaddq_s64(vaddq_s64(v47, v47), v28), v29);
  v59 = vaddq_s64(vsubq_s64(v52, vandq_s8(vaddq_s64(vaddq_s64(v52, v52), v28), v29)), v30);
  v60 = vaddq_s64(vsubq_s64(v51, vandq_s8(vaddq_s64(vaddq_s64(v51, v51), v28), v29)), v30);
  v61 = vaddq_s64(vsubq_s64(v50, v55), v30);
  v62 = vaddq_s64(vsubq_s64(v49, v56), v30);
  v63 = vaddq_s64(vsubq_s64(v48, v57), v30);
  v64 = vaddq_s64(vsubq_s64(v47, v58), v30);
  v65 = vaddq_s64(vsubq_s64(v46, vandq_s8(v54, v29)), v30);
  v66 = vaddq_s64(vsubq_s64(v45, vandq_s8(v53, v29)), v30);
  v67 = veorq_s8(v66, v31);
  v68 = veorq_s8(v65, v31);
  v69 = veorq_s8(v64, v31);
  v70 = veorq_s8(v63, v31);
  v71 = veorq_s8(v62, v31);
  v72 = veorq_s8(v61, v31);
  v73 = veorq_s8(v60, v31);
  v74 = veorq_s8(v59, v31);
  v75 = veorq_s8(v59, v32);
  v76 = veorq_s8(v60, v32);
  v77 = veorq_s8(v61, v32);
  v78 = veorq_s8(v62, v32);
  v79 = veorq_s8(v63, v32);
  v80 = veorq_s8(v64, v32);
  v81 = veorq_s8(v65, v32);
  v82 = veorq_s8(v66, v32);
  v83 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v85 = vdupq_n_s64(v12);
  v86 = veorq_s8(vaddq_s64(v83, v75), v85);
  v87 = veorq_s8(v84, v85);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v77), v85);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v78), v85);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v79), v85);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v80), v85);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v81), v85);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v82), v85);
  v94 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v101 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v102 = veorq_s8(v92, v100);
  v103 = veorq_s8(v91, v99);
  v104 = veorq_s8(v90, v98);
  v105 = veorq_s8(v89, v97);
  v106 = veorq_s8(v88, v96);
  v107 = veorq_s8(v87, v95);
  v108 = veorq_s8(v86, v94);
  v109 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v108);
  v117 = vaddq_s64(v115, v107);
  v118 = vaddq_s64(v109, v101);
  v119 = vdupq_n_s64(v11);
  v120 = veorq_s8(v118, v119);
  v121 = veorq_s8(vaddq_s64(v110, v102), v119);
  v122 = veorq_s8(vaddq_s64(v111, v103), v119);
  v123 = veorq_s8(vaddq_s64(v112, v104), v119);
  v124 = veorq_s8(vaddq_s64(v113, v105), v119);
  v125 = veorq_s8(vaddq_s64(v114, v106), v119);
  v126 = veorq_s8(v117, v119);
  v127 = veorq_s8(v116, v119);
  v128 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v135 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v136 = veorq_s8(v126, v134);
  v137 = veorq_s8(v125, v133);
  v138 = veorq_s8(v124, v132);
  v139 = veorq_s8(v123, v131);
  v140 = veorq_s8(v122, v130);
  v141 = veorq_s8(v121, v129);
  v142 = veorq_s8(v120, v128);
  v143 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v142);
  v151 = vaddq_s64(v143, v135);
  v152 = vdupq_n_s64(v14);
  v153 = veorq_s8(v151, v152);
  v154 = veorq_s8(vaddq_s64(v144, v136), v152);
  v155 = veorq_s8(vaddq_s64(v145, v137), v152);
  v156 = veorq_s8(vaddq_s64(v146, v138), v152);
  v157 = veorq_s8(vaddq_s64(v147, v139), v152);
  v158 = veorq_s8(vaddq_s64(v148, v140), v152);
  v159 = veorq_s8(vaddq_s64(v149, v141), v152);
  v160 = veorq_s8(v150, v152);
  v161 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v164 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v165 = veorq_s8(v159, v163);
  v166 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v167 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v168 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v169 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v170 = veorq_s8(v154, v162);
  v171 = veorq_s8(v153, v161);
  v172 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v171);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v170);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v169);
  v179 = vaddq_s64(v175, v168);
  v180 = vaddq_s64(v174, v167);
  v181 = vaddq_s64(v173, v166);
  v182 = vaddq_s64(v172, v165);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v164);
  v184 = vorrq_s8(v183, v33);
  v185 = vorrq_s8(v182, v33);
  v186 = vorrq_s8(v181, v33);
  v187 = vsubq_s64(vorrq_s8(v176, v33), vorrq_s8(v176, v34));
  v188 = vsubq_s64(vorrq_s8(v177, v33), vorrq_s8(v177, v34));
  v189 = vsubq_s64(vorrq_s8(v178, v33), vorrq_s8(v178, v34));
  v190 = vorrq_s8(v180, v33);
  v191 = vaddq_s64(vsubq_s64(vorrq_s8(v179, v33), vorrq_s8(v179, v34)), v34);
  v192 = vaddq_s64(v189, v34);
  v193 = vaddq_s64(v188, v34);
  v194 = veorq_s8(vaddq_s64(v187, v34), v35);
  v195 = veorq_s8(v193, v35);
  v196 = veorq_s8(v192, v35);
  v197 = veorq_s8(v191, v35);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v190, vorrq_s8(v180, v34)), v34), v35);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(v186, vorrq_s8(v181, v34)), v34), v35);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(v185, vorrq_s8(v182, v34)), v34), v35);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v184, vorrq_s8(v183, v34)), v34), v35);
  v202 = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v206 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v207 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v208 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v209 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v210 = veorq_s8(v197, v205);
  v211 = veorq_s8(v196, v204);
  v212 = veorq_s8(v195, v203);
  v213 = veorq_s8(v194, v202);
  v214 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v213);
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v212);
  v221 = vaddq_s64(v218, v211);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v210);
  v223 = vaddq_s64(v217, v209);
  v224 = vaddq_s64(v216, v208);
  v225 = vaddq_s64(v215, v207);
  v226 = vaddq_s64(v214, v206);
  v227 = vorrq_s8(vaddq_s64(v219, v219), v36);
  v228 = vorrq_s8(vaddq_s64(v220, v220), v36);
  v229 = vorrq_s8(vaddq_s64(v221, v221), v36);
  v230 = vorrq_s8(vaddq_s64(v222, v222), v36);
  v231 = vorrq_s8(vaddq_s64(v223, v223), v36);
  v232 = vorrq_s8(vaddq_s64(v225, v225), v36);
  v233 = vsubq_s64(vorrq_s8(vaddq_s64(v226, v226), v36), v226);
  v234 = vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), v36), v224);
  v235 = vsubq_s64(v231, v223);
  v236 = vsubq_s64(v230, v222);
  v237 = vsubq_s64(v229, v221);
  v238 = vsubq_s64(v228, v220);
  v239 = vsubq_s64(v227, v219);
  v240 = vdupq_n_s64(v4);
  v241 = vaddq_s64(v239, v240);
  v242 = vaddq_s64(v238, v240);
  v243 = vaddq_s64(v237, v240);
  v244 = vaddq_s64(v236, v240);
  v245 = vaddq_s64(v235, v240);
  v246 = vaddq_s64(v234, v240);
  v247 = vaddq_s64(vsubq_s64(v232, v225), v240);
  v248 = vaddq_s64(v233, v240);
  v249 = vdupq_n_s64(v2);
  v250 = veorq_s8(v248, v249);
  v251 = veorq_s8(v247, v249);
  v252 = veorq_s8(v246, v249);
  v253 = veorq_s8(v245, v249);
  v254 = veorq_s8(v244, v249);
  v255 = veorq_s8(v243, v249);
  v256 = veorq_s8(v242, v249);
  v257 = veorq_s8(v241, v249);
  v258 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  v261 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v262 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v265 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v266 = veorq_s8(v256, v264);
  v267 = veorq_s8(v255, v263);
  v268 = veorq_s8(v254, v262);
  v269 = veorq_s8(v253, v261);
  v270 = veorq_s8(v252, v260);
  v271 = veorq_s8(v251, v259);
  v272 = veorq_s8(v250, v258);
  v273 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v272);
  v281 = vaddq_s64(v279, v271);
  v282 = vaddq_s64(v278, v270);
  v283 = vaddq_s64(v277, v269);
  v284 = vaddq_s64(v276, v268);
  v285 = vaddq_s64(v275, v267);
  v286 = vaddq_s64(v274, v266);
  v287 = vdupq_n_s64(v15);
  v288 = veorq_s8(vaddq_s64(v273, v265), v287);
  v289 = veorq_s8(v286, v287);
  v290 = veorq_s8(v285, v287);
  v291 = veorq_s8(v284, v287);
  v292 = veorq_s8(v283, v287);
  v293 = veorq_s8(v282, v287);
  v294 = veorq_s8(v281, v287);
  v295 = veorq_s8(v280, v287);
  v296 = vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL);
  v297 = vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL);
  v298 = vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL);
  v299 = vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL);
  v300 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v301 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v302 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v303 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v304 = veorq_s8(v288, v296);
  v305 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v306 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v303);
  v307 = vdupq_n_s64(v13);
  v308 = veorq_s8(vaddq_s64(v305, v302), v307);
  v309 = veorq_s8(v306, v307);
  v310 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), veorq_s8(v293, v301)), v307);
  v311 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), veorq_s8(v292, v300)), v307);
  v312 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), veorq_s8(v291, v299)), v307);
  v313 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), veorq_s8(v290, v298)), v307);
  v314 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), veorq_s8(v289, v297)), v307);
  v315 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v304), v307);
  v316 = vdupq_n_s64(0x38uLL);
  v317 = vuzp1q_s16(vuzp1q_s32(vshlq_u64(v310, vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v316))), vshlq_u64(v311, vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v316)))), vuzp1q_s32(vshlq_u64(v308, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v316))), vshlq_u64(v309, vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v316)))));
  v20.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v20.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v318 = vrev64q_s8(veorq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v314, vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v316))), vshlq_u64(v315, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v316)))), vuzp1q_s32(vshlq_u64(v312, vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v316))), vshlq_u64(v313, vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v316))))), v317), v20));
  *(a2 + 10) = veorq_s8(vextq_s8(v318, v318, 8uLL), *v10);
  STACK[0x6B0] = 0;
  STACK[0x540] = *(v18 + 8 * ((v17 - 6004) ^ 0xFE3));
  return sub_100152998();
}

uint64_t sub_1000405AC(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v7 + 32;
  v11 = (a2 ^ v10) + v3;
  v12 = *(v4 + v11 - 15);
  v13 = *(v4 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v8 == v10) * a3) ^ (v5 + v6 + 3211))))();
}

uint64_t sub_1000405B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16, uint64_t a17, unsigned int a18)
{
  *v20 = a1;
  *v19 = a15;
  v22 = 4 * (((v18 + 4386) | 0x501) ^ 0x1E86);
  a17 = a11;
  a18 = ((((v18 + 4386) | 0x501) ^ 0x126E) + 4787) ^ (1824088897 * (((&a16 | 0x1E594F05) - &a16 + (&a16 & 0xE1A6B0F8)) ^ 0x46309C67));
  (*(v21 + 8 * (((v18 + 4386) | 0x501) ^ 0x3A05)))(&a16);
  a17 = a10;
  a18 = (v22 + 7262) ^ (1824088897 * ((-2076742582 - (&a16 | 0x84376C4A) + (&a16 | 0x7BC893B5)) ^ 0x23A140D7));
  (*(v21 + 8 * (v22 ^ 0x21B0)))(&a16);
  return sub_100064B14();
}

uint64_t sub_1000406C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, int a14)
{
  a14 = 1317436891 * ((&a12 - 1792064213 - 2 * (&a12 & 0x952F452B)) ^ 0x252CDD5D) + 8154;
  a12 = &a9;
  v15 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((2397 * (a13 == 16257999)) ^ 0x152Cu)))(v15);
}

uint64_t sub_100040858@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a3 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v4 + 2036529913) ^ 0x1C92)) | (a2 + v4 + 2403))))();
}

uint64_t sub_1000408AC()
{
  v3 = *(v1 + 8);
  STACK[0x730] = v3;
  return (*(v2 + 8 * (((((v0 - 1363060212) & 0x513E9DBD) + ((v0 - 8544) | 0x840) - 8319) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_100040908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v44 = (*(a39 + 4 * (v39 - v41)) ^ a32) + ((v42 + 1232691366) ^ 0xFFFFFFFD);
  if (((v39 | ~(v42 + 1232691366)) & (v42 + 1232691366 - v39) | v39 & ~(v42 + 1232691366)) > ((v42 + 1232699734) ^ 0xFFFFDF4C))
  {
    ++v44;
  }

  *(a39 + 4 * (v39 - v41)) = v44 + 1;
  return (*(v43 + 8 * ((757 * (v40 == 1)) ^ (v42 + 1232699734))))();
}

uint64_t sub_1000409F8()
{
  v5 = v3 - 3467;
  v6.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v6.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v7 = (((v5 - 360) | 0x261u) ^ 0xFFFFFFFFFFFFF59ELL) + v2;
  v8 = *(v1 + v7 - 15);
  v9 = *(v1 + v7 - 31);
  v10 = v0 + v7;
  *(v10 - 15) = veorq_s8(v8, v6);
  *(v10 - 31) = veorq_s8(v9, v6);
  return (*(v4 + 8 * ((7 * ((v2 & 0x7FFFFFE0) == 32)) ^ v5)))(0, (v2 & 0x7FFFFFE0) - 32, -2658);
}

uint64_t sub_100040A68(uint64_t a1)
{
  v5 = (v1 - 1352058101) & 0x5096D1BA;
  *v4 = a1;
  *v3 = v8;
  v6 = (v5 + 1261708089) & 0xB4CBDE3F;
  v13 = (v5 + 4064) ^ (1824088897 * ((2 * (&v11 & 0x3B174ED0) - &v11 - 991383249) ^ 0x9C81624D));
  v12 = v9;
  (*(v2 + 8 * (v5 ^ 0x3536)))(&v11);
  v12 = v10;
  v13 = (v6 + 3687) ^ (1824088897 * (((&v11 ^ 0x1AB7EAF5) & 0xB2F9B61E | ~(&v11 ^ 0x1AB7EAF5 | 0xB2F9B61E)) ^ 0xFD87076));
  (*(v2 + 8 * (v6 ^ 0x37BF)))(&v11);
  return 0;
}

uint64_t sub_100040BC4@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v6 = v3 - 4738 + ((v4 + 836412774) & 0x55021F93);
  *(a1 + v6) = *(a3 + v6);
  return (*(v5 + 8 * ((7776 * (v6 == 0)) ^ (a2 + v4 + 1804))))();
}

uint64_t sub_100040C14()
{
  *(v1 - 224) = (v0 - 2140796923) ^ (914963389 * ((v1 - 232) ^ 0x2CFCB17B));
  (*(v2 + 8 * (v0 ^ 0x268B)))(v1 - 232);
  v3 = *(STACK[0x9A0] + 8);
  STACK[0x4D0] = *(STACK[0x400] + 8 * v0);
  return sub_1001CF524(v3);
}

uint64_t sub_100040C9C()
{
  v6 = v1 - v0;
  *(v5 - 136) = v1 + 1710126949 * ((v5 - 136) ^ 0x321B5B90) + 550;
  *(v3 + 8) = v4;
  v7 = (*(v2 + 8 * (v1 + 5877)))(v5 - 136);
  return (*(v2 + 8 * ((6891 * (*(v5 - 120) == ((v6 - 2048009714) ^ v1 ^ 0x16B2))) ^ v1)))(v7);
}

uint64_t sub_100040D30()
{
  v6 = ((160990574 - ((v5 - 136) | 0x998856E) + ((v5 - 136) | 0xF6677A91)) ^ 0x1CF60A94) * v0;
  *(v5 - 116) = v6 ^ 0x969C3F74;
  *(v2 + 8) = v3;
  *(v5 - 136) = 554685624 - v6;
  *(v5 - 132) = v6 + v4 + 3341;
  v7 = (*(v1 + 8 * (v4 + 3587)))(v5 - 136);
  return (*(v1 + 8 * ((181 * (*(v5 - 120) == (v4 ^ 0xF80BCE))) ^ v4)))(v7);
}

uint64_t sub_100040DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  *v19 = a19;
  if (a12)
  {
    v22 = a18 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;
  return (*(v21 + 8 * (((((((v20 - 96) & 0xB3) + 0x80) ^ v23) & 1) * ((57 * ((v20 + 1434506912) & 0x4D2F5EB3 ^ 0x1CD4)) ^ 0x12E8)) ^ (v20 + 1434506912) & 0x4D2F5EB3)))();
}

uint64_t sub_100040E6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  v48 = a1 - 3222;
  (*(v46 + 8 * (a1 ^ 0x3E65)))();
  LODWORD(STACK[0x2B0]) = a46 - 3178;
  return (*(v46 + 8 * (((*(v47 - 192) == 0) * (323 * (v48 ^ 0xF4E) - 1144)) ^ (v48 + 4476))))(*(v46 + 8 * (v48 - 3170)));
}

uint64_t sub_100040F6C@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W4>, int a5@<W5>, __int16 a6@<W8>)
{
  v13 = a3 ^ (16 * *(v11 + (v8 + (v7 >> 4) * a2 - (((((v8 + (v7 >> 4) * a2) & 0xFFFEu) * v9) >> 16) >> 7) * a1)));
  v14 = (*(v11 + (v8 + (v7 & 0xF) * a2 - (((((v8 + (v7 & 0xF) * a2) & 0xFFFE) * v9) >> 16) >> 7) * a1)) ^ 0x24 ^ (v13 - ((2 * v13) & 0x20) + 25)) * a4 + 204088;
  LOWORD(v14) = a6 + (*(v12 + (v14 + 299 - ((4549754 * (v14 + 299)) >> 32) * a5)) ^ 0xC5) * a2;
  *(v11 + v7 * a2 + 111706 - (v7 * a2 + 111706) / 0x3C9 * a1) = *(v11 + (v14 - ((((v14 & 0xFFFEu) * v9) >> 16) >> 7) * a1));
  return (*(v10 + 8 * ((35 * (v7 != 255)) ^ v6)))();
}

uint64_t sub_100041068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = v6 + 32;
  v11 = (((v5 ^ (v3 + 1921)) - 1728) ^ v10) + v4;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * v8) ^ (v2 + v5 + 1060))))();
}

uint64_t sub_100041114(uint64_t a1)
{
  v2 = *(a1 + 12) + 869295389 * ((((2 * a1) | 0xC7441892) - a1 - 1671564361) ^ 0xD2F6201A);
  v3 = 1358806181 * (v5 ^ 0x3F2F6C83);
  v5[0] = v2 + 656020488 - v3;
  v5[1] = v3 ^ 0x2F8BE52;
  v6 = *(&off_100BFFA10 + v2 + 656012602) - 8;
  result = (*(*(&off_100BFFA10 + (v2 ^ 0xD8E60A27)) + v2 + 656022181))(v5);
  *(a1 + 8) = v5[2];
  return result;
}

void sub_10004122C()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC250) ^ 0xDF)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * ((dword_100CBC1F0 + dword_100CBC250) ^ 0xDF))] ^ 0x80]) + 218);
  v1 = -85 * (*v0 ^ dword_100CBC1F0 ^ 0xDF);
  v2 = *(&off_100BFFA10 + (byte_1009C9D6C[(byte_1009E331C[v1 - 12] ^ 0x71) - 12] ^ v1) + 42);
  v3 = *v0 - &v5 + *v2;
  *v0 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0xEE294B43) - (v6 & 0xEE294B43)) ^ 0xDC3210D3);
  LOBYTE(v2) = -85 * ((*v2 - *v0) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC250) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - dword_100CBC250) ^ 0xDF))] ^ 0xE2]) + 249) - 8;
  (*&v4[8 * (byte_1009C9B60[byte_1009E3218[v2 - 8] ^ 0xDD] ^ v2) + 75144])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000414A4(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v33 = v30 + 32;
  v34 = ((v29 - 6542) ^ v33) + v27;
  v35 = *(a26 + v34 - 15);
  v36 = *(a26 + v34 - 31);
  v37 = v26 + v34;
  *(v37 - 15) = vaddq_s8(vsubq_s8(v35, vandq_s8(vaddq_s8(v35, v35), a4)), a5);
  *(v37 - 31) = vaddq_s8(vsubq_s8(v36, vandq_s8(vaddq_s8(v36, v36), a4)), a5);
  return (*(v32 + 8 * (((4 * (v31 == v33)) | (32 * (v31 == v33))) ^ v28)))();
}

uint64_t sub_100041578(int a1)
{
  v5 = v3 + (a1 - 1077) - 1150;
  *(v1 + v5) = *(v2 + v5) ^ 0x3C;
  return (*(v4 + 8 * ((7350 * (v5 == 0)) ^ a1)))();
}

uint64_t sub_1000415AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  v21 = 1875091903 * ((&a13 & 0xAA9796D0 | ~(&a13 | 0xAA9796D0)) ^ 0x631DEAAC);
  a14 = v21 + (v19 ^ 0xA47DBEAB) + 2074015743 + ((2 * v19) & 0x48FB7D56);
  a15 = v21 + 7724;
  a16 = a10;
  (*(v20 + 77160))(&a13);
  v22 = 1824088897 * ((1136218413 - (&a13 | 0x43B9512D) + (&a13 | 0xBC46AED2)) ^ 0xE42F7DB0);
  a13 = v22 + 3757;
  a15 = (v18 ^ 0xFFA6EEBA) + ((2 * v18) & 0xFF4DDD74) - v22 + 1325267920;
  a16 = v17;
  a17 = a10;
  v23 = (*(v20 + 77048))(&a13);
  return (*(v20 + 8 * ((14 * (a14 != 16257999)) ^ 0x1412u)))(v23);
}

uint64_t sub_100041768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x3F8] + 31071;
  v4 = STACK[0x3F8] - 5153;
  v5 = LOWORD(STACK[0xA0E]);
  STACK[0x500] = STACK[0xA10];
  return (*(STACK[0x400] + 8 * ((7264 * (v5 == (v3 & 0x7FE7 ^ 0x5E77))) ^ v4)))(a1, a2, a3, 16215638);
}

uint64_t sub_100041834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, unsigned int a25)
{
  v29 = ((2 * (&a20 & 0x731C3E70) - &a20 + 216252814) ^ 0x548A12EC) * v28;
  a21 = v29 + 1083140860;
  a22 = a16;
  a23 = &a18;
  a24 = -654855621 - v29;
  a25 = v29 + v25 + 1674574884;
  v30 = (*(v27 + 8 * (v25 ^ 0x350E)))(&a20);
  return (*(v27 + 8 * ((13065 * (a20 == (((v25 - 4182) | 0x1448) ^ (v26 + 1134)))) ^ v25)))(v30);
}

void sub_100041994()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC108) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 + dword_100CBC108) ^ 0xDF))] ^ 0x6D]) + 173);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - v1) ^ 0xDF))] ^ 0x6D] ^ (-85 * ((dword_100CBC1F0 - v1) ^ 0xDF))) + 184);
  v3 = &v5[*v2 - v1];
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((2 * v6) | 0x7AB38DC0) - v6 - 1029293792) ^ 0xF429D70);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * (dword_100CBC108 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC108 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (v2 ^ byte_1009DAFB0[byte_1009D40D0[v2] ^ 0xBF]) + 75368])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100041BA4@<X0>(void *a1@<X3>, uint64_t a2@<X4>, unsigned int a3@<W8>)
{
  if (a2)
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * ((a3 + 1158010654) ^ 0x4505F8C8)) ^ a3)))();
}

uint64_t sub_100041D44@<X0>(uint64_t a1@<X1>, int a2@<W3>, unsigned int a3@<W4>, int a4@<W5>, __int16 a5@<W6>, unsigned int a6@<W7>, int a7@<W8>)
{
  v21 = v10 + 1;
  v22 = v9 < a3;
  v23 = LODWORD(STACK[0x5B0]) + (v11 + 1 + (*(v8 + (v7 + 1)) ^ v13) + (a5 & (2 * *(v8 + (v7 + 1))))) * v14 + v18;
  v24 = ((a2 + v12 + ((v23 - 257 * (((v23 * a6) >> 32) >> 8)) ^ v23)) ^ v15) + a4;
  v25 = v24 ^ v12;
  v26 = v24 + a2;
  HIDWORD(v27) = v24;
  LODWORD(v27) = v24;
  v28 = (v24 ^ v12) + (v27 >> 29);
  v29 = v24 + v15;
  v30 = ((v28 - v26) ^ v29) + v16;
  v31 = v30 ^ v26;
  v32 = v30 ^ v25;
  HIDWORD(v27) = v30;
  LODWORD(v27) = v30;
  v33 = v30 + v29;
  HIDWORD(v27) = (((v27 >> 30) - (v31 + v32)) ^ v33) + v17;
  LODWORD(v27) = HIDWORD(v27);
  v34 = (v31 - HIDWORD(v27));
  v35 = (HIDWORD(v27) + v32 + v34 + (v27 >> 30)) ^ HIDWORD(v27) ^ v33;
  LODWORD(STACK[0x5B0]) = v35 + v20;
  v36 = (v35 + a1);
  if (v22 == v21 < a3)
  {
    v22 = v21 < v9;
  }

  return (*(v19 + 8 * ((127 * v22) ^ (a7 + 2452))))(v34, a1, v36, (v36 + v34));
}

uint64_t sub_100041D58(uint64_t a1, int a2, int a3)
{
  v7 = v4 + v5 + (((a2 ^ 0xA736BC6A) + 1489585046) ^ ((a2 ^ 0x9DDF2611) + 1646320111) ^ ((a2 ^ 0xAB42FA29) + 1421673943)) + 8 + 37 * (a3 ^ 0x1CF1) + 611484724;
  v8 = v6 + 1547258025;
  v9 = (v8 < 0x7664717F) ^ (v7 < 0x7664717F);
  v10 = v7 > v8;
  if (v9)
  {
    v10 = v7 < 0x7664717F;
  }

  return (*(v3 + 8 * ((53 * !v10) ^ a3)))();
}

uint64_t sub_100041E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 - 128) = a15;
  *(v19 - 120) = &a12;
  *(v19 - 132) = (v16 + 749) ^ ((((v15 | 0x5A997BB5) + (~v15 | 0xA566844A)) ^ 0x636FB197) * v17);
  (*(v18 + 8 * (v16 + 7098)))(v19 - 136);
  *(v19 - 128) = a15;
  *(v19 - 120) = v16 - 2008441969 * ((((v15 | 0x925D76EA) ^ 0xFFFFFFFE) - (~v15 | 0x6DA28915)) ^ 0x253BDD1B) + 3182;
  v20 = (*(v18 + 8 * (v16 ^ 0x2C34)))(v19 - 136);
  return (*(v18 + 8 * (((*(v19 - 136) == 16257999) * ((v16 + 1794625998) & 0xBD4DA7D7 ^ 0x2845AFAF)) ^ v16)))(v20);
}

uint64_t sub_100041F30()
{
  v17 = v1 - 16;
  v18.i64[0] = v7 + v17 + 25;
  v18.i64[1] = v7 + v17 + 24;
  v19 = v18;
  *&STACK[0x380] = v18;
  v20.i64[0] = v7 + v17 + 23;
  v20.i64[1] = v6 + v17 - 3255;
  v21.i64[0] = v7 + v17 + 21;
  v21.i64[1] = v7 + v17 + 20;
  v22.i64[0] = v7 + v17 + 19;
  v22.i64[1] = v7 + v17 + 18;
  v18.i64[0] = v7 + v17 + 17;
  v18.i64[1] = v7 + v17 + 16;
  *&STACK[0x3E0] = v18;
  v18.i64[0] = v7 + v17 + 15;
  v18.i64[1] = v7 + v17 + 14;
  *&STACK[0x3D0] = v18;
  v23 = vandq_s8(v22, *&STACK[0x3C0]);
  v24 = vandq_s8(v21, *&STACK[0x3C0]);
  v25 = vandq_s8(v20, *&STACK[0x3C0]);
  v26 = vandq_s8(v19, *&STACK[0x3C0]);
  v27 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v28 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v29 = *&STACK[0x350];
  v30 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), *&STACK[0x350]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), *&STACK[0x350]);
  v32 = veorq_s8(v31, *&STACK[0x340]);
  v33 = veorq_s8(v30, *&STACK[0x340]);
  v34 = *&STACK[0x340];
  v35 = *&STACK[0x330];
  v36 = veorq_s8(v30, *&STACK[0x330]);
  v37 = veorq_s8(v31, *&STACK[0x330]);
  v38 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v36), v9);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v37), v9);
  v40 = veorq_s8(v39, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v41 = veorq_s8(v38, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v42 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41);
  v44 = vaddq_s64(v42, v40);
  v46 = *&STACK[0x300];
  v45 = *&STACK[0x310];
  v47 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v44, v44), *&STACK[0x310]), v44), *&STACK[0x300]), v10);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v43, v43), *&STACK[0x310]), v43), *&STACK[0x300]), v10);
  v49 = vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL);
  v50 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v51 = veorq_s8(v47, v49);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v51);
  v54 = vaddq_s64(v52, v50);
  v56 = *&STACK[0x2D0];
  v55 = *&STACK[0x2E0];
  v57 = veorq_s8(vaddq_s64(vsubq_s64(v54, vandq_s8(vaddq_s64(v54, v54), *&STACK[0x2E0])), *&STACK[0x2D0]), v14);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(v53, vandq_s8(vaddq_s64(v53, v53), *&STACK[0x2E0])), *&STACK[0x2D0]), v14);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v60 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60);
  v63 = *&STACK[0x2B0];
  v64 = veorq_s8(vaddq_s64(v61, v59), *&STACK[0x2B0]);
  v65 = veorq_s8(v62, *&STACK[0x2B0]);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = *&STACK[0x3B0];
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0x3B0]), vorrq_s8(v70, v13)), v13), v8);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x3B0]), vorrq_s8(v71, v13)), v13), v8);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v75), v12);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76), v12);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v80.i64[0] = v7 + v17 + 13;
  v80.i64[1] = v7 + v17 + 12;
  *&STACK[0x370] = v80;
  v81 = vaddq_s64(v28, v29);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL))), *&STACK[0x290]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), veorq_s8(v77, v79)), *&STACK[0x290]);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v15), vorrq_s8(v83, *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v16)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v15), vorrq_s8(v82, *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v16)));
  v84 = v34;
  v85 = veorq_s8(v81, v34);
  v86 = veorq_s8(v81, v35);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), v9);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), v45), v89), v46), v10);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(v92, vandq_s8(vaddq_s64(v92, v92), v55)), v56), v14);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v63);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v72), vorrq_s8(v97, v13)), v13), v8);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v12);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v99.i64[0] = v7 + v17 + 11;
  v99.i64[1] = v7 + v17 + 10;
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), *&STACK[0x290]);
  v103 = vandq_s8(v99, *&STACK[0x3C0]);
  v104 = vaddq_s64(v27, v29);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v15), vorrq_s8(v102, *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v16)));
  v105 = veorq_s8(v104, v34);
  v106 = veorq_s8(v104, v35);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v9);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v45), v109), v46), v10);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v55)), v56), v14);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v63);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, v72), vorrq_s8(v117, v13)), v13), v8);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v12);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v80, *&STACK[0x3C0]);
  v124 = veorq_s8(vaddq_s64(v122, v121), *&STACK[0x290]);
  v125 = vandq_s8(*&STACK[0x3D0], *&STACK[0x3C0]);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v15), vorrq_s8(v124, *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v16)));
  v126 = vandq_s8(*&STACK[0x3E0], *&STACK[0x3C0]);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v29);
  v130 = vaddq_s64(v128, v29);
  v128.i64[0] = vqtbl4q_s8(v178, *&STACK[0x390]).u64[0];
  v178.val[0] = veorq_s8(v130, v84);
  v178.val[1] = veorq_s8(v129, v84);
  v178.val[2] = veorq_s8(v129, v35);
  v178.val[3] = veorq_s8(v130, v35);
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v9);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v9);
  v131 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v131);
  v132 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v132, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), v45), v178.val[1]), v46), v10);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), v45), v178.val[0]), v46), v10);
  v133 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v133);
  v134 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v134, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[1], vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), v55)), v56), v14);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[0], vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), v55)), v56), v14);
  v135 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v135);
  v136 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v136, v178.val[2]), v63);
  v178.val[0] = veorq_s8(v178.val[0], v63);
  v137 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v137);
  v138 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v138, v178.val[2]);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178.val[0], *&STACK[0x3B0]), vorrq_s8(v178.val[0], v13)), v13), *&STACK[0x3A0]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178.val[1], *&STACK[0x3B0]), vorrq_s8(v178.val[1], v13)), v13), *&STACK[0x3A0]);
  v178.val[2] = veorq_s8(v178.val[1], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v12);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v12);
  v139 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v139);
  v140 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v29);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v140, v178.val[2]), *&STACK[0x290]);
  v178.val[0] = veorq_s8(v178.val[0], *&STACK[0x290]);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178.val[0], v15), vorrq_s8(v178.val[0], *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v99, 3uLL), v16)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178.val[1], v15), vorrq_s8(v178.val[1], *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v16)));
  v142 = veorq_s8(v141, v84);
  v143 = veorq_s8(v141, v35);
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v9);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v45), v146), v46), v10);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(v149, vandq_s8(vaddq_s64(v149, v149), v55)), v56), v14);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v63);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, *&STACK[0x3B0]), vorrq_s8(v154, v13)), v13), *&STACK[0x3A0]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v12);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL))), *&STACK[0x290]);
  v159 = vaddq_s64(v127, v29);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, v15), vorrq_s8(v158, *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v16)));
  v160 = veorq_s8(v159, v84);
  v161 = veorq_s8(v159, v35);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v9);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), v45), v164), v46), v10);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(v167, vandq_s8(vaddq_s64(v167, v167), v55)), v56), v14);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v63);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, *&STACK[0x3B0]), vorrq_s8(v172, v13)), v13), *&STACK[0x3A0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v12);
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL))), *&STACK[0x290]);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v15), vorrq_s8(v176, *&STACK[0x250])), *&STACK[0x250]), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v16)));
  v128.i64[1] = vqtbl4q_s8(v178, *&STACK[0x390]).u64[0];
  v178.val[0] = vrev64q_s8(*(v0 + v17));
  v178.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v178.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v178.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v178.val[0], v178.val[0], 8uLL), v178.val[1]), v128));
  *v99.i64[1] = vextq_s8(v178.val[0], v178.val[0], 8uLL);
  return (*(v3 + 8 * (((v5 == v17) * v2) ^ v4)))();
}

uint64_t sub_100041F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 932 * (STACK[0x3F8] ^ 0x2424);
  v4 = STACK[0x3F8] - 6668;
  v5 = LOWORD(STACK[0x9BE]);
  STACK[0x968] = STACK[0x9C0];
  return (*(STACK[0x400] + 8 * ((7833 * (v5 == ((v3 + 13440) & 0xFFFC))) ^ v4)))(a1, a2, a3, 16215638);
}

void sub_100041FA8(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * (((a1 | 0xB7CB8FA8) - (a1 & 0xB7CB8FA8)) ^ 0x8E3D458B);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100042054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, unsigned int a53)
{
  *a1 = 0;
  a1[1] = 0;
  HIDWORD(a25) = 197499219;
  return (*(v55 + 8 * (((v54 != 0) * (((v53 - 3387) | 0x1025) + ((v53 - 3184) ^ 0xFFFFF0A3))) ^ (v53 + 2438))))(a1, a2, a3, a4, a5, a53, a7, a8, a9, 0x431A33AA2E6D965FLL, a11, a12, a13, a14, 0, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1000420DC(_DWORD *a1)
{
  v2 = 956911519 * ((2 * (a1 & 0xD5B2C0AE) - a1 + 709705553) ^ 0xC0DC4F54);
  v3 = a1[2] + v2;
  v11 = v3 - 1875091903 * ((((&v10 | 0x43D04236) ^ 0xFFFFFFFE) - (~&v10 | 0xBC2FBDC9)) ^ 0x8A5A3E4A) - 1907261644;
  v4 = *(&off_100BFFA10 + (v3 + 1427038150)) - 8;
  (*&v4[8 * (v3 + 1427047537)])(&v10);
  v5 = 1875091903 * (((&v10 | 0x81915946) - &v10 + (&v10 & 0x7E6EA6B8)) ^ 0xB7E4DAC5);
  v10 = v5 ^ (v3 + 1307371159);
  v11 = v5 ^ 0x5D845C70;
  result = (*&v4[8 * (v3 + 1427047536)])(&v10);
  v7 = 1664650993;
  if ((v12 - 203186112) > 5 || ((1 << (v12 + 64)) & 0x25) == 0)
  {
    goto LABEL_57;
  }

  v8 = *a1 ^ v2;
  if (v8 > 467318526)
  {
    if (v8 > 1500116343)
    {
      if (v8 <= 1761632707)
      {
        if (v8 > 1617957869)
        {
          if (v8 == 1617957870)
          {
            goto LABEL_56;
          }

          v9 = 1728744403;
        }

        else
        {
          if (v8 == 1500116344)
          {
            goto LABEL_56;
          }

          v9 = 1527869797;
        }
      }

      else if (v8 <= 1879095002)
      {
        if (v8 == 1761632708)
        {
          goto LABEL_56;
        }

        v9 = 1876134228;
      }

      else
      {
        if (v8 == 1879095003 || v8 == 1906718328)
        {
          goto LABEL_56;
        }

        v9 = 2139150445;
      }
    }

    else if (v8 <= 870419356)
    {
      if (v8 > 662356328)
      {
        if (v8 == 662356329)
        {
          goto LABEL_56;
        }

        v9 = 806515757;
      }

      else
      {
        if (v8 == 467318527)
        {
          goto LABEL_56;
        }

        v9 = 588449115;
      }
    }

    else if (v8 <= 1092924710)
    {
      if (v8 == 870419357)
      {
        goto LABEL_56;
      }

      v9 = 916933250;
    }

    else
    {
      if (v8 == 1092924711 || v8 == 1117232407)
      {
        goto LABEL_56;
      }

      v9 = 1279847372;
    }
  }

  else if (v8 > -796606212)
  {
    if (v8 <= -282715558)
    {
      if (v8 > -544821632)
      {
        if (v8 == -544821631)
        {
          goto LABEL_56;
        }

        v9 = -442677138;
      }

      else
      {
        if (v8 == -796606211)
        {
          goto LABEL_56;
        }

        v9 = -786722895;
      }
    }

    else if (v8 <= 126909006)
    {
      if (v8 == -282715557)
      {
        goto LABEL_56;
      }

      v9 = -184479722;
    }

    else
    {
      if (v8 == 126909007 || v8 == 239474056)
      {
        goto LABEL_56;
      }

      v9 = 458265758;
    }
  }

  else if (v8 <= -1780703655)
  {
    if (v8 > -1943617367)
    {
      if (v8 == -1943617366)
      {
        goto LABEL_56;
      }

      v9 = -1857238231;
    }

    else
    {
      if (v8 == -2120144904)
      {
        goto LABEL_56;
      }

      v9 = -1944916404;
    }
  }

  else
  {
    if (v8 > -1721798696)
    {
      if (v8 != -1721798695 && v8 != -1468078902)
      {
        v9 = -1170950417;
        goto LABEL_54;
      }

LABEL_56:
      v7 = 1664650994;
      goto LABEL_57;
    }

    if (v8 == -1780703654)
    {
      goto LABEL_56;
    }

    v9 = -1762287927;
  }

LABEL_54:
  v7 = 1664650994;
  if (v8 != v9)
  {
    v7 = 1664650993;
  }

LABEL_57:
  a1[1] = v7;
  return result;
}

uint64_t sub_100042620()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC378) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 - dword_100CBC378) ^ 0xDF))] ^ 0xE2]) + 170);
  v1 = -85 * ((dword_100CBC1F0 - *v0) ^ 0xDF);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[v1 - 8] ^ 0xBF) - 8] ^ v1) - 14);
  v3 = *v2 - *v0 - &v9;
  v4 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  v5 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v5) = -85 * (*v0 ^ 0xDF ^ v5);
  v6 = *(&off_100BFFA10 + (byte_1009D3FDC[(byte_1009C9A60[v5] ^ 0x21) - 12] ^ v5) + 147);
  *v6 = 16257999;
  v12 = 4383 - 33731311 * (&v10 ^ 0x39F6CA23);
  v11 = *(&off_100BFFA10 + (byte_1009C9D60[byte_1009E3310[(-85 * (*v0 ^ 0xDF ^ *v2))] ^ 0x71] ^ (-85 * (*v0 ^ 0xDF ^ *v2))) - 95);
  v7 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC378) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBC378) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v7[8 * ((-85 * ((*v2 - *v0) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((*v2 - *v0) ^ 0xDF))] ^ 0xB1]) + 76128])(&v10);
  v11 = *(&off_100BFFA10 + ((-85 * ((*v2 + *v0) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((*v2 + *v0) ^ 0xDF))] ^ 0xE2]) + 264);
  v12 = 4383 - 33731311 * (((&v10 | 0x26359291) - &v10 + (&v10 & 0xD9CA6D68)) ^ 0x1FC358B2);
  result = (*&v7[8 * ((-85 * (*v0 ^ 0xDF ^ *v2)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (*v0 ^ 0xDF ^ *v2))] ^ 0xE2]) + 76248])(&v10);
  *v6 = (v10 ^ 0xAAFB3BDF) + 1442633712 + ((2 * v10) & 0x55F677BE);
  return result;
}

uint64_t sub_10004298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unint64_t a18, uint64_t a19, int a20)
{
  v24 = 956911519 * (((v20 | 0x49EB17DC643BA54DLL) - (v20 | 0xB614E8239BC45AB2) - 0x49EB17DC643BA54ELL) ^ 0xCDD62008EAAD548);
  a18 = v21 - ((2 * v21) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a19 = a13;
  a17 = v24 ^ 0x3FE;
  v25 = (*(v22 + 76792))(&a17);
  return (*(v22 + 8 * ((7204 * (a20 == ((v23 + 2656) ^ 0xDE0))) ^ 0x571u)))(v25);
}

void sub_100042A84(uint64_t a1)
{
  v1 = *(a1 + 8) - 1875091903 * (((a1 | 0xB339D39) - (a1 | 0xF4CC62C6) - 187931962) ^ 0x3D461EBA);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100042BAC()
{
  v8 = v5;
  v9 = (v1 + 4313) ^ (((((2 * &v7) | 0x35883C98) - &v7 + 1698423220) ^ 0xC2ADCD2E) * v2);
  (*(v3 + 8 * (v1 + 5579)))(&v7);
  v8 = v6;
  v9 = ((v1 ^ 0x1FFF) + 4188) ^ (((&v7 - 1948278392 - 2 * (&v7 & 0x8BDFA188)) ^ 0xD3B672EA) * v2);
  (*(v3 + 8 * ((v1 ^ 0x1FFF) + 5454)))(&v7);
  return (v0 - 16257999);
}

uint64_t sub_100042CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = (v18 + 405184561) & 0x95B7B;
  v20 = v19 ^ 0x1626;
  a16 = (v19 + 5503) ^ (((&a14 & 0x749D12C6 | ~(&a14 | 0x749D12C6)) ^ 0xD30B3E5B) * v17);
  a15 = a11;
  (*(v16 + 8 * (v19 ^ 0x2E97)))(&a14);
  a16 = (v20 + 861) ^ (((2 * (&a14 & 0x4E40FC0) - &a14 + 2065428538) ^ 0x23722358) * v17);
  a15 = a10;
  v21 = (*(v16 + 8 * (v20 + 2127)))(&a14);
  return sub_1000E8188(v21);
}

void sub_100042DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100042E1C@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((53 * (v7 != ((v3 + v5 + 3126) ^ 0x10A3))) ^ (a2 + v5 + 349))))();
}

uint64_t sub_100042E60@<X0>(int a1@<W8>)
{
  v2 = (*(v1 + 8 * (a1 + 3816)))();
  STACK[0x440] = 0;
  return (STACK[0x838])(v2, 197499219);
}

uint64_t sub_100042E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = v10 - 1;
  v22 = __ROR8__((v9 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((v22 + v20) | v13) - ((v22 + v20) | (((v17 + 1054979409) & 0xC11E57CF) - 0x7F50B0EAB20D88EALL)) + v14;
  v24 = __ROR8__(v23 ^ v15, 8);
  v25 = ((a1 | (2 * (v24 + (v23 ^ v16)))) - (v24 + (v23 ^ v16)) + a2) ^ a3;
  v26 = v25 ^ __ROR8__(v23 ^ v16, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((a4 & (2 * (v27 + v26))) - (v27 + v26) + a5) ^ a6;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((a8 & (2 * (v32 + v31))) - (v32 + v31) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(((a8 & (2 * (v32 + v31))) - (v32 + v31) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60, 8) + v33) ^ 0x2E769D09049CAA6ALL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * ((v36 + v35) ^ 0xB26D991E94D41A74)) | 0x113E4DE7F9261D5ELL) - ((v36 + v35) ^ 0xB26D991E94D41A74) - 0x89F26F3FC930EAFLL) ^ 0x703A61C38953CBECLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__((a9 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = __ROR8__(v37, 8);
  v41 = ((v39 - 0x6AF7234D0CC131D5) & 0x2047A9C1DE29E45FLL ^ 0x44520400020E41ELL) + ((v39 - 0x6AF7234D0CC131D5) & 0xDBB8563E21D61BA0 ^ 0x38403E00000281) - 1;
  v42 = v41 ^ 0x499422456F36014CLL;
  v41 ^= 0xE1D2C7D2F6C07010;
  v43 = v40 + v38 - ((2 * (v40 + v38)) & 0x1B79F8777AE58672);
  v44 = (__ROR8__(v42, 8) + v41) ^ 0xE49D77DF873DBF7ELL;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v12;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x5963B6C555D97F1FLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x61459D2AF01F24F7;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x64C31C027084DE6CLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v11;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  *(a9 + v21) = (((v43 + 0xDBCFC3BBD72C339) ^ 0x6A785729F20EEA42uLL) >> (8 * ((v9 + v21) & 7))) ^ (((v19 - ((v56 + v55) | v19) + ((v56 + v55) | 0x6D6EFEEB143C2D7CLL)) ^ 0xC65EBC393CBB713DLL) >> (8 * ((a9 + v21) & 7))) ^ *(v9 + v21);
  return (*(v18 + 8 * ((7029 * (v21 == 0)) ^ v17)))();
}

uint64_t sub_100043204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, int a17)
{
  v20 = ((2 * (&a12 & 0x303E5D10) - &a12 + 1338090216) ^ 0x17A8718A) * v17;
  a13 = v20 + 820107253;
  a14 = a11;
  a15 = &a9;
  a16 = -654855621 - v20;
  a17 = v20 + 1674575378 + v19;
  v21 = (*(v18 + 8 * (v19 + 5872)))(&a12);
  return (*(v18 + 8 * (((a12 == (((v19 - 3412) | 0x10A8) ^ 0xF80223)) * (((v19 - 3704) | 0x1198) + 1271)) ^ v19)))(v21);
}

uint64_t sub_1000432D4()
{
  v2 = STACK[0x858];
  STACK[0x7C0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 != 0) * (((873 * (v0 ^ 0x369)) ^ 0x244A) - 444)) ^ (873 * (v0 ^ 0x369)))))();
}

uint64_t sub_100043304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * (((&a17 | 0x2E50882D) + (~&a17 | 0xD1AF77D2)) ^ 0x9E53105A) + 8154;
  a17 = &a13;
  v20 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((23 * ((((a18 == 16257999) ^ 0x59082CB2) & 1) == 0)) ^ 0xDADu)))(v20);
}

uint64_t sub_1000434BC(uint64_t a1)
{
  v3 = v2 + 4;
  v5 = (*(v1 + 8 * (v3 + 6263)))() == *(&off_100BFFA10 + (v3 ^ 0xD85)) - 4;
  return (*(v1 + 8 * ((v5 * ((1305 * (v3 ^ 0xD56)) ^ 0xD85)) ^ v3)))(a1);
}

uint64_t sub_100043534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a15;
  a19 = 1317436891 * ((2 * (&a17 & 0x7711FFC0) - &a17 + 149815353) ^ 0xB8ED984F) + 8154;
  v21 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((7202 * (a18 == 16257999)) ^ v20)))(v21);
}

uint64_t sub_100043610@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v46 = v44 + 744418841;
  v47 = a1[1];
  v48 = a1[2];
  v49 = a1[3];
  v50 = a1[6];
  v51 = a1[7];
  v81 = a1[4];
  v52 = a1[5];
  v80 = a1[9];
  v53 = a1[8];
  v54 = a1[10];
  v79 = a1[12];
  v55 = a1[11];
  v56 = a1[13];
  v57 = a1[14];
  v58 = a1[15];
  LODWORD(a20) = v44 + 804;
  v59 = *v45 ^ *a1;
  v60 = v45[1] ^ v47;
  v61 = v45[3] ^ v49;
  v62 = v45[6] ^ v50;
  v63 = v45[4] ^ v81;
  v64 = v45[7] ^ v51;
  v65 = v45[5] ^ v52;
  v66 = v45[8] ^ v53;
  v67 = v45[10] ^ v54;
  v68 = v45[11] ^ v55;
  LOBYTE(v50) = v45[12] ^ v79;
  v69 = v45[13] ^ v56;
  v70 = v45[15] ^ v58;
  v71 = *(&off_100BFFA10 + (v46 ^ 0x2C5EF51F)) - 4;
  v72 = *&v71[8 * ((v45[3] ^ v49) ^ 0xC2)];
  LODWORD(a21) = v46 - 744412976;
  v73 = 56538221 * *&v71[8 * ((v45[14] ^ v57) ^ 0xC7)];
  v74 = (56538221 * *&v71[8 * ((v45[1] ^ v47) ^ 0x1C0)]) ^ (56538221 * *&v71[8 * (v59 ^ 0xC1)]) ^ (56538221 * *&v71[8 * ((v45[2] ^ v48) ^ 0x1C3)]) ^ (v72 * ((v46 - 744412976) ^ 0x35EA941)) ^ (56538221 * *&v71[8 * (v63 ^ 0x1C5)]) ^ (56538221 * *&v71[8 * (v65 ^ 0x1C4)]) ^ (56538221 * *&v71[8 * (v62 ^ 0xC7)]) ^ (56538221 * *&v71[8 * (v64 ^ 0x1C6)]) ^ (56538221 * *&v71[8 * (v66 ^ 0xC1)]) ^ (56538221 * *&v71[8 * ((v45[9] ^ v80) ^ 0x1C0)]) ^ (56538221 * *&v71[8 * (v67 ^ 0x1C3)]) ^ (56538221 * *&v71[8 * (v68 ^ 0x1C2)]) ^ (56538221 * *&v71[8 * (v50 ^ 0xC5)]) ^ (56538221 * *&v71[8 * (v69 ^ 0x1C4)]) ^ v73 ^ (56538221 * *&v71[8 * (v70 ^ 0x1C6)]);
  v77 = v45[2] ^ v48;
  v78 = v45[9] ^ v80;
  v75 = v60 ^ v61 ^ v64 ^ v77 ^ v65 ^ v63 ^ v78;
  return (*(a43 + 8 * (v46 - 744418724)))(v75 ^ v59 ^ v68 ^ v69 ^ v66 ^ v45[14] ^ v57 ^ v62 ^ v70 ^ v67 ^ v74 ^ (v74 >> 4) & 0x3A, v67, 59, v73, 0xD10BA1A4035EB46DLL, 450, 452, 454, a2, &STACK[0x250], &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, &a44, a20, a21, v60, *(*(&off_100BFFA10 + v46 - 744420437) + ((v75 ^ v59 ^ v68 ^ v69 ^ v66 ^ v45[14] ^ v57 ^ v62 ^ v70 ^ v67 ^ v74 ^ (v74 >> 4) & 0x3A ^ (v50 - ((2 * v50) & 0x8A) + 69)) ^ 0x18) - 4), v67, v61, v77, v63, v65, v78, v66, v62, v64, v69, v68);
}

uint64_t sub_100043BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, int a17, char a18, uint64_t a19, uint64_t a20, char a21, __int16 a22, char a23, int a24, unsigned int a25, uint64_t a26, char *a27, unsigned int a28, char *a29)
{
  a26 = a20;
  a27 = &a23;
  a29 = &a18;
  a28 = (v30 + 200) ^ (((((2 * &a24) | 0x5AB569F2) - &a24 - 760919289) ^ 0x1F41EF69) * v31);
  (*(v29 + 8 * (v30 + 6449)))(&a24);
  a29 = &a16;
  a26 = a20;
  a27 = &a21;
  a28 = (v30 + 200) ^ (((2 * (&a24 & 0x77904300) - &a24 - 2005943042) ^ 0xBA74E76E) * v31);
  (*(v29 + 8 * (v30 + 6449)))(&a24);
  a25 = (v30 + 94) ^ (33731311 * ((2 * (&a24 & 0x43D3D508) - &a24 + 1009527540) ^ 0x5DAE0D7));
  a26 = a20;
  a27 = &a14;
  (*(v29 + 8 * (v30 + 6443)))(&a24);
  LODWORD(a27) = v30 - 2008441969 * (&a24 ^ 0x4899540E) + 2527;
  a26 = a20;
  v32 = (*(v29 + 8 * (v30 ^ 0x29A5)))(&a24);
  return (*(v29 + 8 * ((4501 * (a24 == (v30 ^ 0x1D3B) + 16253642)) ^ v30)))(v32);
}

uint64_t sub_1000444E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  LODWORD(v28) = (*(a13 + 24) ^ v22) - 1796930139;
  if (v28 >= 0xFFFFFFFE)
  {
    v26 = 0;
  }

  else
  {
    v26 = 12;
  }

  HIDWORD(v28) = *(v24 + 16);
  HIDWORD(a17) = (2 * v25) ^ 0x5AA2;
  return sub_10018DCC8(a1, a2, a3, v26, 3953782941, 3904377628, 2443927634, a8, a9, a10, a11, v28, a13, a14, v25 - 7952, 0x5BDE3A46u, HIDWORD(v28) + (v23 ^ 0x9EC5B19u), a17, a18, a19, a20, a21, a22, 0);
}

void sub_100044710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100044870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v28 = (((&a17 | 0x82809D8A) - &a17 + (&a17 & 0x7D7F6270)) ^ 0xDAE94EE8) * v25;
  a20 = v22;
  a21 = a15;
  a19 = (v23 ^ 0xCEE5EADF) - v28 + ((v23 << ((v21 - 12) & 0x98 ^ 0x89)) & 0x9DCBD5BE) + 2143223723;
  a17 = v28 + v21 + 2738;
  v29 = (*(v26 + 8 * v24))(&a17);
  return (*(v26 + 8 * ((6905 * (a18 == v27)) ^ v21)))(v29);
}

uint64_t sub_10004493C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(a2 + v7);
  v8 = v7 == 487 * (v4 ^ (v5 + 1188)) - 5357;
  return (*(v6 + 8 * ((4 * v8) | (32 * v8) | (v2 + v4 + 3448))))();
}

uint64_t sub_100044988@<X0>(unint64_t a1@<X8>)
{
  v6 = LOWORD(STACK[0x934]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
LABEL_5:
      STACK[0x3C0] = 0;
      LODWORD(STACK[0x448]) = 197499219;
      return (*(v3 + 8 * (((v4 == (((v5 - 5826) | 0x1884) ^ 0xF80A4A)) * (((2 * v5) ^ 0xD3C) - 8869)) ^ (v5 - 4984))))();
    }

LABEL_4:
    STACK[0x3F0] = a1;
    v4 = 16215638;
    goto LABEL_5;
  }

  v8 = STACK[0x498];
  STACK[0x3F0] = a1;
  LODWORD(STACK[0x448]) = v1;
  STACK[0x220] = v8;
  return (*(v3 + 8 * (((v8 + v2 == 0) * (2383 * (v5 ^ 0x17C7) - 9081)) ^ (v5 - 244))))();
}

uint64_t sub_100044AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v25 = ((&a15 + 1869519326 - 2 * (&a15 & 0x6F6E99DE)) ^ 0x37074ABC) * v19;
  a18 = v20;
  a19 = a13;
  a15 = v25 + 3757;
  a17 = (v21 ^ 0xDFBFFFAE) - v25 + ((2 * v21) & 0xBF7FFF5C) + 1860496092;
  v26 = (*(v23 + 77048))(&a15);
  return (*(v23 + 8 * ((6695 * (a16 == v24)) ^ v22)))(v26);
}

uint64_t sub_100044B98()
{
  v5 = *(v1 + 4 * (v3 - 1));
  *(v1 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v3)) - v3;
  v6 = v4 - 152;
  v7 = 2048652491 * ((~((v4 - 152) | 0x83C171318A82D9A1) + ((v4 - 152) & 0x83C171318A82D9A1)) ^ 0xA8DA0142C4CCB15BLL);
  *(v4 - 112) = v7 ^ 1;
  *(v6 + 32) = (v3 + 1) ^ v7;
  *(v6 + 8) = 623 - v7;
  v8 = v0 - 1971202715 + v7;
  *(v4 - 128) = ((v0 - 1971202715) ^ 0x16) + v7;
  *(v4 - 124) = v8 + 667;
  *(v4 - 152) = (v0 - 1317022489) ^ v7;
  *(v4 - 136) = v8;
  v9 = (*(v2 + 8 * (v0 ^ 0xB686BA8C)))(v4 - 152);
  return (*(v2 + 8 * *(v4 - 132)))(v9);
}

uint64_t sub_100044DCC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x538] = a1;
  STACK[0x4D0] = *(v2 + 8 * v1);
  return sub_1001CF524(a1);
}

uint64_t sub_100044E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x793u) - 2260) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((12184 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100044E98()
{
  v5 = v0 & 0x61377FCB;
  *(v4 - 224) = ((v0 & 0x61377FCB) - 2140802193) ^ (((v4 - 232) ^ 0x2CFCB17B) * v2);
  v6 = (*(v3 + 8 * ((v0 & 0x61377FCB) + 3555)))(v4 - 232);
  *v1 = *(v4 - 232) ^ 0xAC;
  return (*(v3 + 8 * ((v5 + 2056) ^ 0x2A)))(v6);
}

uint64_t sub_100044F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  v14 = v12 + 5978;
  v15 = (*(v13 + 8 * (v14 + 529)))(a12, 0x100004077774924) != 0;
  return (*(v13 + 8 * ((v15 * (v14 ^ 0x23A1)) ^ v14)))();
}

uint64_t sub_100044F80()
{
  v2 = STACK[0x8F8];
  v3 = STACK[0x628];
  v4 = &STACK[0xB20] + STACK[0x628];
  STACK[0x5A8] = v4;
  v5 = v4 + 16;
  STACK[0x5F0] = (v4 + 16);
  STACK[0x908] = (v4 + 48);
  STACK[0x628] = v3 - 6003 + ((32 * v0) ^ 0x1D423u);
  (*(v1 + 8 * (v0 + 5985)))();
  v6 = (*(v1 + 8 * (v0 + 5985)))(v5, 0, 32);
  STACK[0x438] = 0;
  STACK[0x5B0] = 0;
  LODWORD(STACK[0x554]) = 197499219;
  STACK[0x648] = 0;
  LODWORD(STACK[0x46C]) = 197499219;
  STACK[0x798] = v2;
  return (*(v1 + 8 * ((93 * (v2 != 0)) ^ v0)))(v6);
}

uint64_t sub_100045038(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8)
{
  v15 = v13 + 1;
  v16 = STACK[0x570];
  v17 = STACK[0x55C];
  LODWORD(STACK[0x588]) = STACK[0x58C];
  v18 = STACK[0x54C];
  v19 = STACK[0x560];
  v20 = STACK[0x590];
  LODWORD(STACK[0x534]) = STACK[0x548];
  LODWORD(STACK[0x590]) = a4;
  LODWORD(STACK[0x58C]) = STACK[0x550];
  v21 = LODWORD(STACK[0x524]);
  v22 = STACK[0x580];
  LODWORD(STACK[0x5B0]) = v15;
  LODWORD(STACK[0x538]) = STACK[0x57C];
  v23 = v22;
  v24 = STACK[0x584];
  v26 = v12;
  v27 = v12 >> LODWORD(STACK[0x4DC]);
  v28 = (v27 & 0x15 ^ 0x15) + (v27 & 0x15);
  v29 = v19 & v26;
  HIDWORD(v31) = v26;
  LODWORD(v31) = v26;
  v30 = v31 >> 11;
  v32 = __PAIR64__(v21, __ROR4__(v26, 6));
  v33 = v30 ^ v32 ^ (v27 + (v26 << 7));
  LODWORD(STACK[0x570]) = v19;
  v34 = v21 & v19;
  LODWORD(STACK[0x54C]) = v26;
  v35 = v17;
  LODWORD(v32) = v21;
  LODWORD(STACK[0x548]) = v16;
  LODWORD(v19) = (v32 >> 25) ^ __ROR4__(v21, 6) ^ ((v21 << v28) | (v21 >> 11));
  LODWORD(STACK[0x55C]) = v18;
  STACK[0x560] = v21;
  v36 = v35 ^ v26 & v16 ^ v29 ^ v21 & (v18 ^ v35);
  v37 = v17 & v26 ^ v16 ^ v18 & v26 ^ v34 ^ v21 & v16;
  v38 = v9 - v11;
  LODWORD(STACK[0x4F0]) = ((v11 ^ v33) - v11) ^ ((a6 ^ v33) - a6) ^ ((a7 ^ v10 ^ v19 ^ v33) - (a7 ^ v10 ^ v19));
  LODWORD(v21) = a5 - a3;
  v39 = v10 - a5 + a7;
  v40 = v14 - v9;
  v41 = (v9 - v11 + 1462556114) ^ (v11 + 1064731195);
  v42 = a3 - a7 + 1462556114;
  v43 = v42 ^ (a7 + 1064731195);
  v44 = a6 - (v14 - v9) - v38;
  LODWORD(STACK[0x4E8]) = ((v36 ^ v44) - v44) ^ ((v36 ^ v41) - v41) ^ ((v43 ^ v39 ^ v37 ^ v36) - (v43 ^ v39 ^ v37));
  v45 = v43 + 316859888;
  v46 = v14 - v9 - 1907136865 + v38 + 1462556114 + v44;
  v47 = v41 + 316859888;
  v48 = v21 - 1907136865 + v42 + v39;
  STACK[0x528] = (7 * (v15 ^ 0x35)) % 0xC0u;
  v49 = v44 + 1270557942;
  v50 = v21 - (v43 + 316859888);
  LODWORD(STACK[0x4FC]) = v50;
  LOWORD(v34) = (65 * v15 + 8970) % 0x116u;
  v51 = STACK[0x4D0];
  v52 = v14;
  v53 = v45 - (v39 + 1270557942);
  v54 = STACK[0x5A8];
  v55 = STACK[0x590];
  HIDWORD(v32) = STACK[0x590];
  LODWORD(v32) = STACK[0x590];
  v56 = v32 >> 2;
  v57 = a5 + 1005679639 + v21 + v8 + v37 + v19 + *(STACK[0x5A8] + 4 * ((65 * v15 + 4550) % 0x116u)) + (*(STACK[0x4D0] + 4 * ((7 * (LOWORD(STACK[0x5B0]) ^ 0xA) + 497) % 0xC0u)) ^ 0x661C8BFE);
  LODWORD(STACK[0x4F4]) = v57;
  v59 = __PAIR64__(a8, __ROR4__(v55, 13));
  v58 = v56 ^ v59;
  LODWORD(v59) = a8;
  v60 = v58 ^ __ROR4__(v55, 22);
  LODWORD(STACK[0x510]) = v60;
  v61 = (v59 >> 13) ^ __ROR4__(a8, 2) ^ __ROR4__(a8, 22);
  v62 = STACK[0x58C];
  v63 = v55 & v24 ^ v20 & a8 ^ (v55 ^ v20) & v23 ^ STACK[0x58C] & v24 ^ STACK[0x58C] & a8;
  LODWORD(STACK[0x518]) = v63;
  LODWORD(STACK[0x584]) = a8;
  LODWORD(STACK[0x580]) = v24;
  LODWORD(STACK[0x57C]) = v23;
  LODWORD(STACK[0x550]) = v20;
  v64 = v23 & v24 ^ v24 & a8 ^ v23 & a8 ^ v62 & v20 ^ (v62 ^ v20) & v55;
  v65 = (v53 ^ (v39 + 1270557942) ^ v60 ^ v61) - (v53 ^ (v39 + 1270557942) ^ v60);
  v66 = v48 ^ (v39 + 1270557942);
  v67 = v66 + v53;
  LODWORD(STACK[0x520]) = (((v47 - v49) ^ v61) - (v47 - v49)) ^ ((v49 ^ v61) - v49) ^ v65;
  v68 = (v39 + 1270557942) ^ 0xE06EED75;
  v69 = (((2 * (v68 + 101452214)) & 0xF3E7EC94) + ((v68 + 101452214) ^ 0xF9F3F64A)) ^ 0xB54CFFD6;
  v70 = v66 + v53 + v68;
  v71 = v46 ^ v49;
  LODWORD(v21) = (v46 ^ v49) + v47 - v49;
  v72 = v49 ^ 0xE06EED75 ^ v64 ^ 0xB54CFFD6;
  v73 = v21 + (v49 ^ 0xE06EED75);
  v49 ^= 0x552212A3u;
  LODWORD(STACK[0x500]) = ((v64 ^ v73) - v73) ^ (v72 - v49) ^ ((v69 ^ v70 ^ v63 ^ v64) - (v69 ^ v70 ^ v63));
  v74 = v50 - v67 - 1047613219;
  LODWORD(STACK[0x508]) = v74;
  v75 = v66 - 2114608464;
  LODWORD(v19) = v74 + v66 - 2114608464;
  v76 = (v69 + v74) ^ v19;
  v77 = v19 ^ v75;
  v78 = v77 + (v70 ^ 0xDCBAC1FE);
  v79 = STACK[0x548];
  v80 = (v78 ^ LODWORD(STACK[0x548]) ^ v76 ^ v35) - (v78 ^ LODWORD(STACK[0x548]) ^ v76);
  LODWORD(STACK[0x504]) = v40 - v47;
  v81 = v40 - v47 - v21;
  LODWORD(STACK[0x4F8]) = v81;
  v71 -= 2114608464;
  v82 = v81 - 1047613219 + v71;
  LODWORD(v21) = (v81 - 1047613219 + v49) ^ v82;
  v83 = v82 ^ v71;
  v84 = v83 + (v73 ^ 0xDCBAC1FE);
  v85 = v77 - v76;
  LODWORD(STACK[0x540]) = v78;
  LODWORD(STACK[0x548]) = v79 + 376414692 + v19;
  v86 = v19 + 112493408 + v85;
  v87 = v85 + (v78 ^ 0xA4B7ED78);
  v88 = (-112493408 - v19 + v76 + (v78 ^ 0xC4E3DD87) + 1) ^ v78 ^ 0xA4B7ED78;
  LODWORD(STACK[0x53C]) = v88;
  v89 = -112493408 - v82 + v21 - (v84 ^ 0x3B1C2278);
  v90 = STACK[0x588];
  v91 = ((LODWORD(STACK[0x538]) ^ 0x9FABCF00 ^ v84 ^ 0x3B1C2278) - (v84 ^ 0xA4B7ED78)) ^ ((v89 ^ LODWORD(STACK[0x538])) - v89) ^ ((v88 ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x538])) - (v88 ^ LODWORD(STACK[0x588])));
  LODWORD(STACK[0x538]) = (v80 ^ ((v21 ^ v35) - v21) ^ ((v84 ^ v35) - v84)) - v82;
  v92 = v82 + 112493408 + v83 - v21;
  v93 = (v84 ^ 0xA4B7ED78) + v83 - v21;
  LODWORD(STACK[0x524]) = v89 ^ v84 ^ 0xA4B7ED78;
  v94 = LODWORD(STACK[0x534]) - v52 - v40;
  v95 = (-808671215 * *(v51 + 4 * STACK[0x528])) ^ 0xF06C1078;
  LODWORD(v51) = *(v54 + 4 * v34);
  LODWORD(STACK[0x534]) = v87 ^ v86;
  v96 = v94 + v51;
  LODWORD(STACK[0x4EC]) = v93 ^ v92;
  LODWORD(v51) = (v87 ^ 0x4B2D8BD9) - 1587030060;
  LODWORD(STACK[0x588]) = v51;
  v97 = v86 + v90 + v51 + v57;
  v98 = v93 ^ 0x4B2D8BD9;
  v99 = v96 + LODWORD(STACK[0x4E8]) + LODWORD(STACK[0x4F0]) + 1192713572 + v95;
  LODWORD(STACK[0x4E8]) = v99;
  v100 = STACK[0x5A0];
  v101 = ((*(STACK[0x5A0] + (345 * (HIBYTE(v97) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v97) & 0xF) + 178365)) >> 32))) ^ 0xFFFFFFF3) << 8) ^ ((*(STACK[0x5A0] + (345 * (v97 >> 28) + 178365 - 961 * ((4469269 * (345 * (v97 >> 28) + 178365)) >> 32))) ^ 3) << 12) | *(STACK[0x5A0] + (345 * (HIWORD(v97) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v97) & 0xF) + 178365)) >> 32))) ^ 0xF3;
  LODWORD(STACK[0x528]) = v97;
  v102 = (((506 - (v97 >> 4)) & 0x159) + (((v97 >> 4) + 517) & 0xF9F9F9F9)) * ((v97 >> 4) + 517);
  v103 = v91 - (v98 + v92) + 1587030060 + v99;
  v104 = ((*(v100 + (345 * (HIBYTE(v103) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v103) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(v100 + (345 * (v103 >> 28) + 178365 - 961 * ((4469269 * (345 * (v103 >> 28) + 178365)) >> 32))) ^ 0xF3) << 12);
  v105 = *(v100 + (345 * (v97 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v97 & 0xF) + 178365)) >> 32))) ^ 0xF3;
  v106 = (((*(v100 + (345 * ((v97 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v97 >> 20) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 20) | ((*(v100 + (345 * ((v97 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v97 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8)) ^ ((*(v100 + (345 * (v97 >> 12) + 178365 - 961 * ((4469269 * (345 * (v97 >> 12) + 178365)) >> 32))) ^ 0xF3) << 12) ^ (v101 << 16);
  v107 = (v106 | v105) ^ (16 * (*(v100 + (v102 - 961 * ((4469269 * v102) >> 32))) ^ 0xF3));
  v108 = 345 * (v103 >> 4) + 178365 - 961 * ((4469269 * (345 * (v103 >> 4) + 178365)) >> 32);
  v109 = ((v104 | *(v100 + (345 * (HIWORD(v103) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v103) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(v100 + (345 * ((v103 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v103 >> 20) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 12);
  v110 = v109 ^ (16 * (*(v100 + (345 * (v103 >> 12) + 178365 - 961 * ((4469269 * (345 * (v103 >> 12) + 178365)) >> 32))) ^ 0xF3));
  LODWORD(v51) = *(v100 + (345 * ((v103 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v103 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3 ^ v110;
  v111 = *(v100 + (345 * (v103 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v103 & 0xF) + 178365)) >> 32))) ^ 0xF3;
  LOBYTE(v108) = *(v100 + v108) ^ ((v111 | (v51 << 8)) >> 4);
  v112 = v105 & 0xF;
  v113 = 345 * (v112 | (16 * (v111 & 0xF)));
  v114 = v113 - 961 * ((4469269 * v113) >> 32);
  v115 = 345 * (*(v100 + (v113 + 88665 - 961 * ((4469269 * (v113 + 88665)) >> 32))) ^ LODWORD(STACK[0x4E0]) ^ 0xF3);
  v116 = v115 + 88665 - 961 * ((4469269 * (v115 + 88665)) >> 32);
  v117 = ~*(v100 + (v115 - 961 * ((4469269 * v115) >> 32)));
  v118 = 345 * (((v117 >> 4) - ((v117 >> 3) & 6) - 13) ^ *(v100 + v114)) + 88665;
  v119 = *(v100 + (v118 - 961 * ((4469269 * v118) >> 32)));
  LOBYTE(v108) = v108 ^ 0xF3;
  v120 = v107 >> ((v119 & 4 ^ 4) + (v119 & 4));
  v121 = 345 * (v120 & 0xF | (16 * (v108 & 0xF)));
  LODWORD(v19) = 345 * (*(v100 + (v121 + 88665 - 961 * ((4469269 * (v121 + 88665)) >> 32))) ^ (16 * (v119 ^ 0xF3)) ^ 0xF3);
  v122 = v19 + 88665 - 961 * ((4469269 * (v19 + 88665)) >> 32);
  LODWORD(v19) = ~*(v100 + (v19 - 961 * ((4469269 * v19) >> 32)));
  LODWORD(v19) = 345 * (((v19 >> 4) - ((v19 >> 3) & 6) - 13) ^ *(v100 + (v121 - 961 * ((4469269 * v121) >> 32)))) + 88665;
  v123 = 345 * (v108 & 0xF0 | (v120 >> 4));
  v124 = v123 - 961 * ((4469269 * v123) >> 32);
  LODWORD(v19) = 345 * (*(v100 + (v123 + 88665 - 961 * ((4469269 * (v123 + 88665)) >> 32))) ^ (16 * (*(v100 + (v19 - 961 * ((4469269 * v19) >> 32))) ^ 0xF3)) ^ 0xF3);
  v125 = 16 * (*(v100 + v122) ^ 0xF3);
  v126 = *(v100 + v116) ^ 0xF3;
  v127 = (*(v100 + (v19 + 88665 - 961 * ((4469269 * (v19 + 88665)) >> 32))) ^ 0xF3) << 8;
  v128 = v125 ^ v126;
  v129 = v127 + (v125 ^ v126) - 2 * (v127 & v125);
  v130 = ~*(v100 + (v19 - 961 * ((4469269 * v19) >> 32)));
  v131 = 345 * (((v130 >> 4) - ((v130 >> 3) & 6) - 13) ^ *(v100 + v124)) + 88665;
  LODWORD(v51) = 345 * (v51 & 0xF0 | (v120 >> 8) & 0xF);
  v132 = v51 - 961 * ((4469269 * v51) >> 32);
  v133 = 345 * (*(v100 + (v51 + 88665 - 961 * ((4469269 * (v51 + 88665)) >> 32))) ^ (16 * (*(v100 + (v131 - 961 * ((4469269 * v131) >> 32))) ^ 0xF3)) ^ 0xF3);
  v134 = v133 + 88665 - 961 * ((4469269 * (v133 + 88665)) >> 32);
  v135 = ~*(v100 + (v133 - 961 * ((4469269 * v133) >> 32)));
  v136 = ((v135 >> 4) - ((v135 >> 3) & 6) - 13) ^ *(v100 + v132);
  v137 = -1177473323 * (v136 + 257) * (((v136 + 257) | (-258 - v136)) & 0xF7403275);
  if (v137 >= 0x928CD514)
  {
    v137 += 1836264172;
  }

  v138 = 345 * ((v110 >> 4) & 0xF0 | (v120 >> 12));
  v139 = v138 - 961 * ((4469269 * v138) >> 32);
  v140 = 345 * (*(v100 + (v138 + 88665 - 961 * ((4469269 * (v138 + 88665)) >> 32))) ^ (16 * (*(v100 + v137 % 0x3C1) ^ 0xF3)) ^ 0xF3);
  v141 = v140 + 88665 - 961 * ((4469269 * (v140 + 88665)) >> 32);
  v142 = ~*(v100 + (v140 - 961 * ((4469269 * v140) >> 32)));
  v143 = 345 * (((v142 >> 4) - ((v142 >> 3) & 6) - 13) ^ *(v100 + v139)) + 88665;
  v144 = 345 * ((v109 >> 8) & 0xF0 | HIWORD(v120) & 0xF);
  v145 = v144 - 961 * ((4469269 * v144) >> 32);
  v146 = 345 * (*(v100 + (v144 + 88665 - 961 * ((4469269 * (v144 + 88665)) >> 32))) ^ (16 * (*(v100 + (v143 - 961 * ((4469269 * v143) >> 32))) ^ 0xF3)) ^ 0xF3);
  v147 = v146 + 88665 - 961 * ((4469269 * (v146 + 88665)) >> 32);
  v148 = ~*(v100 + (v146 - 961 * ((4469269 * v146) >> 32)));
  v149 = 345 * (((v148 >> 4) - ((v148 >> 3) & 6) - 13) ^ *(v100 + v145)) + 88665;
  v150 = 345 * ((v109 >> 12) & 0xF0 | (v120 >> 20) & 0xF);
  v151 = v150 - 961 * ((4469269 * v150) >> 32);
  v152 = 345 * (*(v100 + (v150 + 88665 - 961 * ((4469269 * (v150 + 88665)) >> 32))) ^ (16 * (*(v100 + (v149 - 961 * ((4469269 * v149) >> 32))) ^ 0xF3)) ^ 0xF3);
  v153 = v152 + 88665 - 961 * ((4469269 * (v152 + 88665)) >> 32);
  v154 = ~*(v100 + (v152 - 961 * ((4469269 * v152) >> 32)));
  v155 = 345 * (((v154 >> 4) - ((v154 >> 3) & 6) - 13) ^ *(v100 + v151)) + 88665;
  v156 = 345 * ((v104 >> 8) & 0xF0 | HIBYTE(v120) & 0xF) + 88665;
  v157 = 345 * (*(v100 + (v156 - 961 * ((4469269 * v156) >> 32))) ^ (16 * (*(v100 + (v155 - 961 * ((4469269 * v155) >> 32))) ^ 0xF3)) ^ 0xF3) + 88665;
  v158 = v157 - 961 * ((4469269 * v157) >> 32);
  v159 = 345 * (v112 & 0xFFFFFF0F | (16 * (v126 & 0xF))) + 242190;
  v160 = v159 - 961 * ((4469269 * v159) >> 32);
  v161 = 345 * (v128 & 0xF0 | (v107 >> 4)) + 242190;
  v162 = v161 - 961 * ((4469269 * v161) >> 32);
  v163 = v129 ^ ((*(v100 + v134) ^ 0xF3) << 12);
  v164 = 345 * ((v129 >> 4) & 0xF0 | (v107 >> 8) & 0xF) + 242190;
  v165 = v163 ^ ((*(v100 + v141) ^ 0xF3) << 16);
  v166 = 345 * ((v163 >> 8) & 0xF0 | ((((*(v100 + (345 * ((v97 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v97 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(v100 + (345 * (v97 >> 12) + 178365 - 961 * ((4469269 * (345 * (v97 >> 12) + 178365)) >> 32))) ^ 0xF3) << 12)) >> 12)) + 242190;
  v167 = v165 ^ ((*(v100 + v147) ^ 0xF3) << 20);
  v168 = 345 * ((v165 >> 12) & 0xF0 | HIWORD(v106) & 0xF) + 242190;
  v169 = v167 ^ ((*(v100 + v153) ^ 0xFFFFFFF3) << 24);
  v170 = 345 * (HIWORD(v167) & 0xF0 | (v106 >> 20) & 0xF) + 242190;
  v171 = v170 - 961 * ((4469269 * v170) >> 32);
  v172 = ((*(v100 + (v168 - 961 * ((4469269 * v168) >> 32))) ^ 0xF3) << 16) ^ ((*(v100 + (v166 - 961 * ((4469269 * v166) >> 32))) ^ 0xF3) << 12);
  v173 = v169 ^ ((*(v100 + v158) ^ 3) << 28);
  v174 = 345 * ((v169 >> 20) & 0xF0 | HIBYTE(v106) & 0xF) + 242190;
  v175 = v174 - 961 * ((4469269 * v174) >> 32);
  v176 = 345 * (HIBYTE(v173) & 0xF0 | (v101 >> 12)) + 242190;
  v177 = v176 - 961 * ((4469269 * v176) >> 32);
  v178 = *(v100 + v160);
  v179 = *(v100 + (v164 - 961 * ((4469269 * v164) >> 32)));
  v180 = v178 ^ (16 * (*(v100 + v162) ^ 0xF3)) ^ 0xF3;
  v181 = v180 ^ ((v179 ^ 0xF3) << 8);
  v182 = (v181 | ((*(v100 + v171) ^ 0xF3) << 20)) ^ v172;
  v183 = v182 ^ ((*(v100 + v175) ^ 0xFFFFFFF3) << 24);
  v184 = 345 * ((v183 ^ ((*(v100 + v177) ^ 3) << 28)) >> 28) + 209760;
  v185 = ((((*(v100 + (345 * (HIBYTE(v183) & 0xF) + 209760 - 961 * ((4469269 * (345 * (HIBYTE(v183) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 8) ^ ((*(v100 + (v184 - 961 * ((4469269 * v184) >> 32))) ^ 0xF3) << 12) | *(v100 + (345 * (HIWORD(v172) & 0xF) + 209760 - 961 * ((4469269 * (345 * (HIWORD(v172) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 8) ^ ((*(v100 + (345 * ((v182 >> 20) & 0xF) + 209760 - 961 * ((4469269 * (345 * ((v182 >> 20) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 12) ^ (16 * (*(v100 + (345 * (v182 >> 12) + 209760 - 961 * ((4469269 * (345 * (v182 >> 12) + 209760)) >> 32))) ^ 0xF3));
  v186 = v98 - 1587030060;
  v187 = LODWORD(STACK[0x4EC]) + (v84 ^ 0xE36EB54C);
  v188 = v186 ^ LODWORD(STACK[0x4EC]);
  v189 = *(v100 + (345 * ((v181 >> 8) & 0xF) + 209760 - 961 * ((4469269 * (345 * ((v181 >> 8) & 0xF) + 209760)) >> 32)));
  v190 = v187 + LODWORD(STACK[0x524]);
  LODWORD(STACK[0x4F0]) = v187;
  LODWORD(STACK[0x524]) = v190 ^ (16 * (*(v100 + (345 * (v180 >> 4) + 209760 - 961 * ((4469269 * (345 * (v180 >> 4) + 209760)) >> 32))) ^ 0xF3)) ^ (*(v100 + (345 * (v178 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v178 & 0xF ^ 3u) + 209760)) >> 32))) ^ 0xF3 | ((v189 ^ 0xF3 ^ v185) << 8));
  LODWORD(STACK[0x4EC]) = v190 + v188 - (v186 ^ v187);
  return (*(STACK[0x598] + 8 * ((6163 * (LODWORD(STACK[0x5B0]) == 63)) | LODWORD(STACK[0x56C]))))();
}

uint64_t sub_100045084@<X0>(int a1@<W8>)
{
  STACK[0xA58] = v2;
  v4 = STACK[0x590];
  STACK[0xA60] = STACK[0x590];
  return (*(v3 + 8 * (((v2 - v4 > 9) * (v1 ^ 0x2433)) ^ a1)))();
}

uint64_t sub_100045248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = *(v27 - 192);
  *(v27 - 208) = 0;
  return (*(v26 + 8 * ((v28 != 0) | (v25 - 2219))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1000452C4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, char a4@<W5>, char a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v56 = (a12 - 101660862) & 0x60F3FA5;
  v57 = v48 ^ 0x91;
  v90 = v48 ^ 0xFFFFFFE9;
  v89 = v48 ^ 0xFFFFFFBE;
  v58 = v48 ^ 0x41;
  v59 = v48 ^ (a12 + 66) & 0xA5 ^ 0xAB;
  v60 = v48 ^ 0x21;
  v61 = v51 ^ 0xD;
  v62 = v48 ^ a4;
  v88 = v48 ^ 0xFFFFFFAF;
  v63 = v48 ^ a5;
  v64 = v48 ^ 0xA2;
  v65 = v48 ^ 0x55;
  v66 = v48 ^ 0xB;
  v87 = v48 ^ 0xFFFFFFE7;
  v91 = a6 ^ v49;
  v67 = *(a45 + (v48 ^ 0x44));
  if ((v67 & 0x20) != 0)
  {
    v68 = -32;
  }

  else
  {
    v68 = 32;
  }

  v69 = v68 + v67;
  v70 = *(a45 + (a3 ^ 0x67));
  v71 = *(a45 + (v55 ^ 0x67)) ^ *(a45 + (v60 ^ 0xB2));
  v72 = (((v70 - (v70 ^ 0xE5)) ^ 0xFE) + v70) ^ *(a45 + (v66 ^ 0xEFLL));
  v73 = *(a45 + (a32 ^ 0x67)) ^ *(a45 + (v65 ^ 0x7CLL));
  LODWORD(v88) = *(a45 + (v88 ^ 0x43));
  v74 = *(a45 + (v89 ^ 0x73));
  LODWORD(v87) = *(a45 + (v87 ^ 0x5DLL));
  LODWORD(v89) = *(a45 + (v61 ^ 0x95));
  LODWORD(a25) = *(a45 + (v57 ^ 0xCALL));
  LODWORD(v90) = *(a45 + (v90 ^ 0xA3));
  v75 = *(a45 + (a34 ^ 0x67));
  v76 = *(a45 + (a38 ^ 0x67));
  v77 = *(a45 + (a36 ^ 0x67));
  v78 = *(a45 + (v53 ^ 0x67)) ^ v69;
  v79 = *(a45 + (a33 ^ 0x67)) ^ *(a45 + (v64 ^ 0x1BLL));
  v80 = *(a45 + (v54 ^ 0x67)) ^ *(a45 + (v59 ^ 0x2DLL));
  v79 <<= 16;
  LODWORD(a39) = ((((v72 << 24) ^ 0x257E004F) & (v71 ^ 0xFF7E09CF) | v71 & 0xB0) ^ 0xB8B3737B) & ((v73 << 16) ^ 0xFFEDFBFF) & 0xFEA061B7 | (v73 << 16) & 0x200000;
  LODWORD(a36) = (*(a45 + (a1 ^ 0x67)) ^ *(a45 + (v58 ^ 0x14))) << 24;
  LODWORD(a35) = ~v79;
  LODWORD(a34) = v79 & 0x1D0000;
  LODWORD(a38) = v80 ^ 0xFFFF97FF;
  LODWORD(a37) = v80 & 0x26;
  v81 = (v75 ^ *(a45 + (v63 ^ 0xF0))) << 8;
  LODWORD(a33) = v81 ^ 0xFFFF9FFF;
  LODWORD(a32) = v81 & 0x6F00;
  v82 = ((((v74 ^ v77 ^ 0x99999999) << 24) ^ 0x4BDDAC44) & (v76 ^ *(a45 + (v62 ^ 0xBALL)) ^ 0xFFFFFF77) | (v76 ^ *(a45 + (v62 ^ 0xBALL))) & 0x89) ^ 0x2D220089;
  v83 = (a31 >> 3) ^ 6;
  v84 = (a31 >> 3) ^ 7;
  v85 = v91 ^ 0x7CAB9A452A9A9FDFLL ^ (((a31 & 7 ^ 0x70A00E1C) & 0xFFFFFFF7 ^ 0x70A00FC6) + 0x15FA199DED1823C2) ^ *(v52 + 8 * ((a31 & 7 ^ 0x70A00E1C) & 0xFFFFFFF7 ^ 0x70A00F9D));
  *(v50 + 8 * v83) = v91 ^ 0x7CAB9A452A9A9FDFLL ^ ((a31 & 7 ^ 0x1DA) + 0x15FA199DED1823C2) ^ *(v52 + 8 * (a31 & 7 ^ 0x70A00E1C ^ (((v56 - 724309951) & 0x2B2C17BAu) + 1889531901)));
  *(v50 + 8 * v84) = v85;
  return (*(a48 + 8 * v56))(v83, a2, v78, v84, v85, 0x15FA199DED1823C2, v82, 14006, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v87, v88, v89, v90, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10004595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = v17 + 1317436891 * ((&a14 + 711177883 - 2 * (&a14 & 0x2A63B69B)) ^ 0x9A602EED) + 2422;
  v18 = (*(v16 + 8 * (v17 + 3905)))(&a14);
  return (*(v16 + 8 * ((2740 * (a15 == ((((v17 + 255025285) ^ 0xF337C12) + 16251531) ^ (v17 + 255025285) & 0xF0CC9F5F))) ^ v17)))(v18);
}

uint64_t sub_100045A18@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  *v11 = 0;
  v12 = a1 + v10 + 1182;
  a8 = v10 - 1710126949 * (&a8 ^ 0x321B5B90) + 1525485520;
  v13 = (*(v9 + 8 * (v10 ^ 0xC177289E)))(&a8);
  return (*(v9 + 8 * ((118 * (a9 == v10 + 1065420437)) ^ v12)))(v13);
}

uint64_t sub_100045A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = ((v5 - 168751362 + (*(v4 + 16) ^ 0x28A6CE08)) ^ ((*(v4 + 16) ^ 0x2AEF5C96) + ((v5 - 1870) ^ 0xF7B88CE6)) ^ ((*(v4 + 16) ^ 0xFDB66D61) + 551663629)) - 1378578605;
  v9 = v3 - 797132314 > v8;
  v10 = (v3 > 0x2F834619) ^ (v8 < 0xD07CB9E6);
  v11 = v9;
  if (v10)
  {
    v12 = v3 > 0x2F834619;
  }

  else
  {
    v12 = v11;
  }

  return (*(v7 + 8 * ((26 * v12) ^ v5)))(a1, a2, a3, (v6 + 5));
}

uint64_t sub_100045BA8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (((v10 - 3995) | v11) ^ a2) + v9;
  *(v8 + v13) = *(a8 + v13) - ((2 * *(a8 + v13)) & 0x78) + 60;
  return (*(v12 + 8 * (((v13 == 0) * a3) | v10)))();
}

uint64_t sub_100045CE8(uint64_t a1)
{
  v7 = LOWORD(STACK[0x98A]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 != 33980)
  {
    if (v7 != 20706)
    {
LABEL_5:
      STACK[0x700] = 0;
      LODWORD(STACK[0x6B4]) = v4;
      return sub_1001655EC(a1);
    }

LABEL_4:
    STACK[0x478] = v2;
    goto LABEL_5;
  }

  v9 = STACK[0x678];
  STACK[0x478] = v2;
  LODWORD(STACK[0x6B4]) = v1;
  return (*(v5 + 8 * (((v9 + v3 != 0) * (v6 - 5590)) ^ (v6 - 2781))))(a1);
}

uint64_t sub_100045D78()
{
  v3 = STACK[0x4C8];
  STACK[0x938] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((v1 + 16 - v3 < 0x10) * ((15 * (v0 ^ 0x248)) ^ 0xAA2)) ^ (15 * (v0 ^ 0x248)))))(0x8E237DE192A9CA6ALL, 0x38EE410F36AB1ACBLL, 0xF9D62AAA5A604418, 0x7381049A069EAA6, 0xFC63F7DB2FCB0AACLL, 0xF8C85E9088759E58, 0x87C30A0A7B081733, 0x295CF5CC1B28F7C6);
}

uint64_t sub_100045EF8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8C0];
  v3 = *STACK[0x618];
  STACK[0x780] = *(v1 + 8 * a1);
  STACK[0x900] = v3;
  LODWORD(STACK[0x4AC]) = 1;
  STACK[0x488] = v2;
  return (*(v1 + 8 * ((1911 * (((v2 == 0) ^ (a1 + 9)) & 1)) ^ (a1 + 2195))))();
}

uint64_t sub_100045FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int8x16_t a46, int8x16_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int8x16_t a60, uint64_t a61, uint64_t a62, int8x16_t a63)
{
  v76 = v67 - 16;
  v77.i64[0] = v71 + v76 - 15;
  v77.i64[1] = v71 + v76 - 16;
  v257 = v77;
  v77.i64[0] = v71 + v76 - 13;
  v77.i64[1] = v71 + v76 - 14;
  v256 = v77;
  v77.i64[0] = v71 + v76 - 11;
  v77.i64[1] = v71 + v76 - 12;
  v78 = v77;
  v254 = v77;
  v79.i64[0] = v71 + v76 - 7;
  v79.i64[1] = v71 + v76 - 8;
  v80.i64[0] = v71 + v76 - 5;
  v80.i64[1] = v71 + v76 - 6;
  v81.i64[0] = v71 + v76 - 3;
  v81.i64[1] = v71 + v76 - 4;
  v82.i64[0] = v71 + v76 + (v70 ^ v65);
  v82.i64[1] = v71 + v76 - 2;
  v83 = vandq_s8(v82, a46);
  v84 = vandq_s8(v81, a46);
  v85 = vandq_s8(v80, a46);
  v86 = vandq_s8(v79, a46);
  v87 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v92 = *(v73 - 256);
  v91 = *(v73 - 240);
  v255 = vaddq_s64(vorrq_s8(vsubq_s64(v91, v90), v92), vorrq_s8(vaddq_s64(v90, *&STACK[0x290]), *&STACK[0x280]));
  v93 = vaddq_s64(vorrq_s8(vsubq_s64(v91, v89), v92), vorrq_s8(vaddq_s64(v89, *&STACK[0x290]), *&STACK[0x280]));
  v94 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v91, v87), v92), vorrq_s8(vaddq_s64(v87, *&STACK[0x290]), *&STACK[0x280])));
  v95 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v91, v88), v92), vorrq_s8(vaddq_s64(v88, *&STACK[0x290]), *&STACK[0x280])));
  v96 = veorq_s8(v95, *&STACK[0x260]);
  v97 = veorq_s8(v94, *&STACK[0x260]);
  v98 = veorq_s8(v94, *&STACK[0x250]);
  v99 = veorq_s8(v95, *&STACK[0x250]);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), *&STACK[0x240]);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v99), *&STACK[0x240]);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v104 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v103);
  v106 = vaddq_s64(v104, v102);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x230]), v106), *&STACK[0x220]), *&STACK[0x210]);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), *&STACK[0x230]), v105), *&STACK[0x220]), *&STACK[0x210]);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v110 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v111 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v113 = veorq_s8(vaddq_s64(v111, v109), *&STACK[0x200]);
  v114 = veorq_s8(v112, *&STACK[0x200]);
  v115 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v116 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v117 = veorq_s8(v113, v115);
  v118 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v117);
  v120 = veorq_s8(vaddq_s64(v118, v116), *&STACK[0x2B0]);
  v121 = veorq_s8(v119, *&STACK[0x2B0]);
  v122 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v123 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v124 = veorq_s8(v120, v122);
  v125 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v124);
  v127 = vaddq_s64(v125, v123);
  v128 = veorq_s8(v127, a65);
  v129 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v127, v74), a64), v128), vandq_s8(v128, v74));
  v130 = veorq_s8(v126, a65);
  v131 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v126, v74), a64), v130), vandq_s8(v130, v74)), a63);
  v132 = veorq_s8(v129, a63);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v134 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v75);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v134), v75);
  v137 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v138 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v139 = veorq_s8(v135, v137);
  v140 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v142 = vdupq_n_s64(a7);
  v143 = vsubq_s64(*&STACK[0x270], v93);
  v258.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v141, v139), a60), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v142)));
  v258.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v140, v138), a60), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v142)));
  v144 = veorq_s8(v143, *&STACK[0x260]);
  v145 = veorq_s8(v143, *&STACK[0x250]);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), *&STACK[0x240]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), *&STACK[0x230]), v148), *&STACK[0x220]), *&STACK[0x210]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), *&STACK[0x200]);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), *&STACK[0x2B0]);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(v155, a65);
  v157 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v155, v74), a64), v156), vandq_s8(v156, v74)), a63);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v75);
  v156.i64[0] = v71 + v76 - 9;
  v156.i64[1] = v71 + v76 - 10;
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL)));
  v161 = vandq_s8(v156, a46);
  v162 = vsubq_s64(*&STACK[0x270], v255);
  v258.val[1] = vshlq_u64(veorq_s8(v160, a60), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v142)));
  v163 = veorq_s8(v162, *&STACK[0x260]);
  v164 = veorq_s8(v162, *&STACK[0x250]);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), *&STACK[0x240]);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0x230]), v167), *&STACK[0x220]), *&STACK[0x210]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), *&STACK[0x200]);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), *&STACK[0x2B0]);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(v174, a65);
  v176 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v174, v74), a64), v175), vandq_s8(v175, v74)), a63);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v75);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vandq_s8(v78, a46);
  v182 = vaddq_s64(v180, v179);
  v183 = vandq_s8(v256, a46);
  v258.val[0] = vshlq_u64(veorq_s8(v182, a60), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v142)));
  v184 = vandq_s8(v257, a46);
  v185 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v189 = *(v73 - 240);
  v190 = vaddq_s64(vorrq_s8(vsubq_s64(v189, v188), v92), vorrq_s8(vaddq_s64(v188, *&STACK[0x290]), *&STACK[0x280]));
  v191 = vaddq_s64(vorrq_s8(vsubq_s64(v189, v186), v92), vorrq_s8(vaddq_s64(v186, *&STACK[0x290]), *&STACK[0x280]));
  v192 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v189, v185), v92), vorrq_s8(vaddq_s64(v185, *&STACK[0x290]), *&STACK[0x280])));
  v193 = vsubq_s64(*&STACK[0x270], v191);
  v185.i64[0] = vqtbl4q_s8(v258, a47).u64[0];
  v194 = veorq_s8(v193, *&STACK[0x260]);
  v258.val[0] = veorq_s8(v192, *&STACK[0x260]);
  v258.val[1] = veorq_s8(v192, *&STACK[0x250]);
  v258.val[2] = veorq_s8(v193, *&STACK[0x250]);
  v258.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), v258.val[1]), *&STACK[0x240]);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v258.val[2]), *&STACK[0x240]);
  v196 = vsraq_n_u64(vshlq_n_s64(v258.val[1], 3uLL), v258.val[1], 0x3DuLL);
  v258.val[1] = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v258.val[2], 3uLL), v258.val[2], 0x3DuLL));
  v258.val[2] = veorq_s8(v258.val[0], v196);
  v197 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), v258.val[2]);
  v258.val[0] = vaddq_s64(v197, v258.val[1]);
  v258.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v258.val[0], v258.val[0]), *&STACK[0x230]), v258.val[0]), *&STACK[0x220]), *&STACK[0x210]);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), *&STACK[0x230]), v198), *&STACK[0x220]), *&STACK[0x210]);
  v200 = vsraq_n_u64(vshlq_n_s64(v258.val[1], 3uLL), v258.val[1], 0x3DuLL);
  v258.val[1] = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v258.val[2], 3uLL), v258.val[2], 0x3DuLL));
  v258.val[2] = veorq_s8(v258.val[0], v200);
  v201 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), v258.val[2]);
  v258.val[0] = veorq_s8(vaddq_s64(v201, v258.val[1]), *&STACK[0x200]);
  v203 = veorq_s8(v202, *&STACK[0x200]);
  v204 = vsraq_n_u64(vshlq_n_s64(v258.val[1], 3uLL), v258.val[1], 0x3DuLL);
  v258.val[1] = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v258.val[2], 3uLL), v258.val[2], 0x3DuLL));
  v258.val[2] = veorq_s8(v258.val[0], v204);
  v205 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), v258.val[2]);
  v258.val[0] = veorq_s8(vaddq_s64(v205, v258.val[1]), *&STACK[0x2B0]);
  v207 = veorq_s8(v206, *&STACK[0x2B0]);
  v208 = vsraq_n_u64(vshlq_n_s64(v258.val[1], 3uLL), v258.val[1], 0x3DuLL);
  v258.val[1] = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v258.val[2], 3uLL), v258.val[2], 0x3DuLL));
  v258.val[2] = veorq_s8(v258.val[0], v208);
  v209 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), v258.val[2]);
  v258.val[0] = vaddq_s64(v209, v258.val[1]);
  v211 = veorq_s8(v258.val[0], a65);
  v258.val[0] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v258.val[0], v74), a64), v211), vandq_s8(v211, v74));
  v212 = veorq_s8(v210, a65);
  v213 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v210, v74), a64), v212), vandq_s8(v212, v74)), a63);
  v258.val[0] = veorq_s8(v258.val[0], a63);
  v258.val[1] = veorq_s8(v258.val[0], vsraq_n_u64(vshlq_n_s64(v258.val[1], 3uLL), v258.val[1], 0x3DuLL));
  v258.val[2] = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v258.val[2], 3uLL), v258.val[2], 0x3DuLL));
  v258.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), v258.val[1]), v75);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v258.val[2]), v75);
  v215 = vsraq_n_u64(vshlq_n_s64(v258.val[1], 3uLL), v258.val[1], 0x3DuLL);
  v258.val[1] = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v258.val[2], 3uLL), v258.val[2], 0x3DuLL));
  v216 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v189, v187), v92), vorrq_s8(vaddq_s64(v187, *&STACK[0x290]), *&STACK[0x280])));
  v258.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258.val[0], 0x38uLL), v258.val[0], 8uLL), veorq_s8(v258.val[0], v215)), a60), vnegq_s64(vandq_s8(vshlq_n_s64(v257, 3uLL), v142)));
  v258.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v258.val[1]), a60), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), v142)));
  v217 = veorq_s8(v216, *&STACK[0x260]);
  v218 = veorq_s8(v216, *&STACK[0x250]);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), *&STACK[0x240]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v221, v221), *&STACK[0x230]), v221), *&STACK[0x220]), *&STACK[0x210]);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), *&STACK[0x200]);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), *&STACK[0x2B0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(v228, a65);
  v230 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v228, v74), a64), v229), vandq_s8(v229, v74)), a63);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v75);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL)));
  v234 = vsubq_s64(*&STACK[0x270], v190);
  v258.val[0] = vshlq_u64(veorq_s8(v233, a60), vnegq_s64(vandq_s8(vshlq_n_s64(v254, 3uLL), v142)));
  v235 = veorq_s8(v234, *&STACK[0x260]);
  v236 = veorq_s8(v234, *&STACK[0x250]);
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), *&STACK[0x240]);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v239, v239), *&STACK[0x230]), v239), *&STACK[0x220]), *&STACK[0x210]);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), *&STACK[0x200]);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), *&STACK[0x2B0]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(v246, a65);
  v248 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v246, v74), a64), v247), vandq_s8(v247, v74)), a63);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249), v75);
  v251 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL))), a60), vnegq_s64(vandq_s8(vshlq_n_s64(v156, 3uLL), v142)));
  v185.i64[1] = vqtbl4q_s8(v258, a47).u64[0];
  v258.val[0] = vrev64q_s8(v185);
  *(v69 + (v70 ^ v65) + v76) = veorq_s8(vextq_s8(v258.val[0], v258.val[0], 8uLL), *(v71 + v76 + (v70 ^ v65) - 15));
  v252 = *(v68 + 8 * (((v72 == v76) * v66) ^ (a5 - 1486)));
  return v252(a1, a2, a3, a4, a5, v252, v156.i64[0], a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46.i64[0], a46.i64[1], a47.i64[0], a47.i64[1], a48, a49, a50, a51);
}

uint64_t sub_100046028()
{
  v2 = STACK[0x280];
  *(v1 - 240) = v0;
  *v2 = v0;
  return (STACK[0x2B0])();
}

uint64_t sub_100046040@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3)
{
  a3 = a1 - 1358806181 * ((2 * (&a3 & 0x287BF28) - &a3 + 2105032913) ^ 0x42572C52) - 42;
  v4 = (*(v3 + 8 * (a1 ^ 0x3206u)))(&a3);
  return sub_1000460B0(v4);
}

uint64_t sub_1000460B0()
{
  v7 = *v3;
  v6 = v4 + 1358806181 * ((&v6 + 534885444 - 2 * (&v6 & 0x1FE1B444)) ^ 0x20CED8C7) - 3149;
  result = (*(v1 + 8 * (v4 + 3148)))(&v6);
  *(v0 + 16) = v2;
  return result;
}

uint64_t sub_10004614C(void *a1)
{
  v3 = 2 * (v1 ^ 0x816);
  v4 = (v3 - 354003025) & 0x1519BFD7;
  *a1 = 0;
  a1[1] = 0;
  STACK[0x7F8] = *(v2 + 8 * v3);
  v5 = (*(v2 + 8 * (v4 + 3551)))(112, 0x100004098D10E67);
  STACK[0x8F0] = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((23 * (v4 ^ 0x1698)) ^ 0x1F26)) ^ (v4 + 2643))))();
}

uint64_t sub_100046224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  a12 = **(&off_100BFFA10 + v14 - 8239);
  a10 = v14 + 1710126949 * (&a10 ^ 0x321B5B90) + 449;
  (*(v12 + 8 * (v14 + 1360)))(&a10);
  a11 = (v14 - 1451040408) ^ (956911519 * (((&a10 | 0xF8728A29) + (~&a10 | 0x78D75D6)) ^ 0x12E3FA2D));
  v15 = (*(v12 + 8 * (v14 ^ 0x5C8)))(&a10);
  return (*(v12 + 8 * (((a10 == ((v14 + 1112850296) & 0xBDAB24DB ^ 0x2015AA2F)) * (((v14 + 542237089) | 0x708084E) ^ (v13 + 1954))) ^ v14)))(v15);
}

void sub_100046344()
{
  v0 = *(&off_100BFFA10 + ((-85 * (dword_100CBC380 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC380 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xE2]) + 158);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[(-85 * ((dword_100CBC1F0 + v1) ^ 0xDF)) - 8] ^ 0x9B) - 8] ^ (-85 * ((dword_100CBC1F0 + v1) ^ 0xDF))) + 128);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((2 * v6) | 0x8D78727A) - v6 + 960743107) ^ 0xF4A762AD);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBC380) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 + dword_100CBC380) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v4[8 * (byte_1009DB0B8[(byte_1009D41D0[v2] ^ 0x2A) - 8] ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000465B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v20 - 722) ^ (33731311 * ((((2 * &a15) | 0x3105B79A) - &a15 + 1736254515) ^ 0xA17411EE));
  a17 = a11;
  a18 = &a13;
  (*(v19 + 8 * (v20 + 5627)))(&a15);
  a17 = a11;
  LODWORD(a18) = v20 - 2008441969 * (((&a15 | 0xDEA0554D) - (&a15 & 0xDEA0554D)) ^ 0x96390143) + 1711;
  v21 = (*(v19 + 8 * (v20 ^ 0x2AF5)))(&a15);
  return (*(v19 + 8 * (((a15 == v18) * (v20 + 3953)) ^ v20)))(v21);
}

uint64_t sub_1000466D0(uint64_t a1)
{
  v5 = (((v1 - 61562302) & 0x3AB4EEF) + 933593497) & 0xC85A7FF1;
  *v8 = a1;
  *v9 = v10;
  v6 = 82 * (v5 ^ 0xFAE);
  v14 = v11;
  v15 = (v5 + 4329) ^ (((&v13 + 1836689581 - 2 * (&v13 & 0x6D79A8AD)) ^ 0x35107BCF) * v2);
  (*(v3 + 8 * (v5 + 5595)))(&v13);
  v14 = v12;
  v15 = (v6 + 5804) ^ ((&v13 ^ 0x5869D362) * v2);
  (*(v3 + 8 * (v6 + 7070)))(&v13);
  return (v4 - 16257999);
}

uint64_t sub_100046808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned int a18)
{
  a17 = a13;
  a18 = (v18 + 3455) ^ ((((&a16 | 0x2283497C) - &a16 + (&a16 & 0xDD7CB680)) ^ 0x7AEA9A1E) * v19);
  (*(v20 + 8 * (v18 ^ 0x3697)))(&a16);
  a17 = a14;
  a18 = ((v18 ^ 0x15F0) + 6575) ^ (((2 * (&a16 & 0x78C89580) - &a16 + 121072254) ^ 0x5F5EB91C) * v19);
  v21 = (*(v20 + 8 * (v18 ^ 0x3697)))(&a16);
  return sub_1000468D4(v21);
}

void sub_100046994(uint64_t a1)
{
  v1 = *(a1 + 4) - 2048652491 * ((-2 - ((a1 | 0x418F9A29) + (~a1 | 0xBE7065D6))) ^ 0xFC1F2D3);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100046BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a4 + 8);
  *(a4 + 8) = v4;
  return sub_100155F00(a1, a2, a3);
}

uint64_t sub_100046C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (&a14 ^ 0x5869D362) * v20;
  a15 = v22 + 1542371418;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574926;
  a16 = a10;
  a17 = &a12;
  v23 = (*(v19 + 8 * (v21 ^ 0x35D4)))(&a14);
  return (*(v19 + 8 * ((60 * (a14 == 3 * (v21 ^ 0x172F) + 7 * (v21 ^ 0x125E) + 16248680)) ^ v21)))(v23);
}

uint64_t sub_100046D1C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x58C]) = v9;
  v10 = (LODWORD(STACK[0x588]) - 694354100) & 0x2962F3FC;
  LODWORD(STACK[0x588]) = v5 - 1707705392;
  v11 = LODWORD(STACK[0x590]) + 30028750 + v10;
  v12 = v11 < 0x2C0B376;
  v13 = (-257 * ((((*STACK[0x398] ^ 0xF2CEBDBC) + (((2 * (v10 ^ 0x13CE)) ^ 0x57C) & (2 * *STACK[0x398])) + 221332036) * v7 - v8 - 975910153) / 0x101) - LODWORD(STACK[0x5B0])) ^ v6 ^ v4;
  v14 = v6 - (v13 ^ v2);
  v15 = LODWORD(STACK[0x5B0]) - (v13 ^ v2);
  HIDWORD(v16) = v13 ^ v2;
  LODWORD(v16) = v13 ^ v2;
  v17 = (((v16 >> 29) - v15 + v14) ^ v13) + v1;
  v18 = v17 ^ v15;
  v19 = v17 + v13;
  v20 = v17 ^ v14;
  HIDWORD(v16) = v17;
  LODWORD(v16) = v17;
  v21 = (((v16 >> 28) - (v20 + v18)) ^ v19) + v3;
  v22 = __ROR4__(__ROR4__(v21 ^ v18, 3) ^ 0xBA187B78, 29) ^ 0xD0C3DBC5;
  v23 = (v21 ^ v20) + a1 - (v21 + v19) + (v22 ^ __ROR4__(v21, 28));
  if (v11 >= 0x2C0B376)
  {
    v12 = v11 > 0x2C0B377;
  }

  LODWORD(STACK[0x5B0]) = v23 ^ v22;
  return (*(STACK[0x598] + 8 * ((13710 * v12) ^ v10)))();
}

uint64_t sub_100046EB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAB8] = v65;
  v66 = STACK[0x4E8];
  STACK[0xAC0] = STACK[0x4E8];
  return (*(a65 + 8 * ((326 * (v65 - v66 > ((a1 - 1445) ^ 0x14DFu) - 6074)) ^ a1)))();
}

uint64_t sub_100046FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a10;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((4675 * (a13 == v16)) ^ v15)))(v17);
}

uint64_t sub_100047128(uint64_t a1)
{
  v2 = *a1 - 869295389 * (((a1 | 0x86E0A434) - a1 + (a1 & 0x791F5BCB)) ^ 0x37B48867);
  v5 = v2 + 379709487 - 914963389 * (((v4 | 0xC4CF1BC) - (v4 & 0xC4CF1BC)) ^ 0x20B040C7);
  result = (*(*(&off_100BFFA10 + (v2 ^ 0xE95E3165)) + v2 + 379712806))(v4);
  *(a1 + 4) = v4[0];
  return result;
}

uint64_t sub_100047284(uint64_t a1)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v3 + 1012794078) & 0x335E0DF5 ^ 0x6F5)) ^ (v2 + v3 + 1982))))();
}

void sub_1000472D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_100BFFA10 + ((-85 * (dword_100CBC1F8 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * (dword_100CBC1F8 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x80]) - 61);
  v5 = *(&off_100BFFA10 + (byte_1009DAFB0[byte_1009D40D0[(-85 * (*v4 ^ dword_100CBC1F0 ^ 0xDF))] ^ 0x6D] ^ (-85 * (*v4 ^ dword_100CBC1F0 ^ 0xDF))) + 184);
  v6 = (*v5 - *v4) ^ &v11;
  *v4 = 2054362027 * v6 + 0x1FC86B74B1533AF5;
  *v5 = 2054362027 * (v6 ^ 0xB4207763EF64BDFLL);
  v9 = 0;
  v12 = 869295389 * ((((&v12 | 0x63E1E0CC) ^ 0xFFFFFFFE) - (~&v12 | 0x9C1E1F33)) ^ 0x2D4A3360) + 1903876051;
  v13 = &v9;
  v7 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBC1F8) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((dword_100CBC1F0 - dword_100CBC1F8) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v7[8 * ((-85 * ((*v5 + *v4) ^ 0xDF)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * ((*v5 + *v4) ^ 0xDF))] ^ 0x9B]) + 76472])(&v12);
  v10 = 0;
  v13 = &v10;
  v12 = 869295389 * (((&v12 | 0xE5A128E) - (&v12 & 0xE5A128E)) ^ 0xBF0E3EDD) + 1903876051;
  v8 = -85 * (*v4 ^ 0xDF ^ *v5);
  (*&v7[8 * (byte_1009D42DC[(byte_1009C9C64[v8 - 4] ^ 0x80) - 12] ^ v8) + 76248])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100047614()
{
  *(v3 - 136) = v1 + 675641766 - 956911519 * ((v3 - 1886939832 - 2 * ((v3 - 136) & 0x8F8795D0)) ^ 0x6516E5D5) - 1177010681;
  *(v0 + 8) = &v6;
  (*(v2 + 8 * (v1 + 7192)))(v3 - 136);
  return (v5 ^ 0xB0FD57DF) + ((2 * v5) & 0x61FAAFBE) + ((v1 + 675641766) ^ 0x67BF38A5) - 16257999;
}

uint64_t sub_100047704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W7>, unint64_t a4@<X8>)
{
  v18 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v19 = vdupq_n_s64(0x38uLL);
  *&STACK[0x390] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x370] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x380] = vdupq_n_s64(v12);
  *&STACK[0x350] = vdupq_n_s64(v13);
  *&STACK[0x360] = vdupq_n_s64(v4);
  *&STACK[0x330] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x340] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x310] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x320] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x300] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  v20 = vdupq_n_s64(v11);
  *&STACK[0x2D0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x290] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x270] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x280] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x260] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  v21 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v22 = vdupq_n_s64(0x63585D3A03AB4AB4uLL);
  v23 = vdupq_n_s64(0xCB1EB8AD9A5D3BE8);
  v24 = vdupq_n_s64(0xF382F877F675E8D6);
  v25 = vdupq_n_s64(0x863E83C404C50B95);
  v26 = vdupq_n_s64(0x9D5C0BE47C074B15);
  v27 = vdupq_n_s64(v14);
  *&STACK[0x250] = xmmword_1009E3420;
  v28 = ((a3 + 3990) ^ 0xFFFFFFFFFFFFE920) - v17;
  v29.i64[0] = v15 + a2 - v17 - 7;
  v29.i64[1] = v15 + a2 + v28;
  v30.i64[0] = v15 + a2 - v17 - 1;
  v30.i64[1] = v15 + a2 - v17 - 2;
  v31.i64[0] = v15 + a2 - v17 - 3;
  v31.i64[1] = v15 + a2 - v17 - 4;
  v32.i64[0] = v15 + a2 - v17 - 5;
  v32.i64[1] = v15 + a2 - v17 - 6;
  v33.i64[0] = a1 + a2 - v17 - 5;
  v33.i64[1] = a1 + a2 - v17 - 6;
  v34.i64[0] = a1 + a2 - v17 - 3;
  v34.i64[1] = a1 + a2 - v17 - 4;
  v35.i64[0] = a1 + a2 - v17 - 1;
  v35.i64[1] = a1 + a2 - v17 - 2;
  v36.i64[0] = a1 + a2 - v17 - 7;
  v36.i64[1] = a1 + a2 + v28;
  v37 = vandq_s8(v32, v18);
  v38 = vandq_s8(v31, v18);
  v39 = vandq_s8(v30, v18);
  v40 = vandq_s8(v29, v18);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x3A0]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x3A0]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), *&STACK[0x3A0]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x3A0]);
  v45 = veorq_s8(v44, *&STACK[0x390]);
  v46 = veorq_s8(v43, *&STACK[0x390]);
  v47 = veorq_s8(v42, *&STACK[0x390]);
  v48 = veorq_s8(v41, *&STACK[0x390]);
  v49 = veorq_s8(v41, *&STACK[0x380]);
  v50 = veorq_s8(v42, *&STACK[0x380]);
  v51 = veorq_s8(v43, *&STACK[0x380]);
  v52 = veorq_s8(v44, *&STACK[0x380]);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), *&STACK[0x370]);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), *&STACK[0x370]);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v51), *&STACK[0x370]);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v52), *&STACK[0x370]);
  v57 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v60 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v61 = veorq_s8(v55, v59);
  v62 = veorq_s8(v54, v58);
  v63 = veorq_s8(v53, v57);
  v64 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v66 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v63);
  v68 = vaddq_s64(v66, v62);
  v69 = vaddq_s64(v65, v61);
  v70 = vaddq_s64(v64, v60);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x360]), v70), *&STACK[0x350]), *&STACK[0x340]);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x360]), v69), *&STACK[0x350]), *&STACK[0x340]);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), *&STACK[0x360]), v68), *&STACK[0x350]), *&STACK[0x340]);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), *&STACK[0x360]), v67), *&STACK[0x350]), *&STACK[0x340]);
  v75 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v78 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v79 = veorq_s8(v73, v77);
  v80 = veorq_s8(v72, v76);
  v81 = veorq_s8(v71, v75);
  v82 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v81);
  v86 = vaddq_s64(v84, v80);
  v87 = vaddq_s64(v83, v79);
  v88 = vaddq_s64(v82, v78);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v88, v88), *&STACK[0x330]), v88), *&STACK[0x320]), *&STACK[0x310]);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), *&STACK[0x330]), v87), *&STACK[0x320]), *&STACK[0x310]);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), *&STACK[0x330]), v86), *&STACK[0x320]), *&STACK[0x310]);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), *&STACK[0x330]), v85), *&STACK[0x320]), *&STACK[0x310]);
  v93 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v96 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v97 = veorq_s8(v91, v95);
  v98 = veorq_s8(v90, v94);
  v99 = veorq_s8(v89, v93);
  v100 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v99);
  v104 = vaddq_s64(v102, v98);
  v105 = vaddq_s64(v101, v97);
  v106 = vaddq_s64(v100, v96);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x300]), v106), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), *&STACK[0x300]), v105), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), *&STACK[0x300]), v104), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x300]), v103), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v111 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v114 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v115 = veorq_s8(v109, v113);
  v116 = veorq_s8(v108, v112);
  v117 = veorq_s8(v107, v111);
  v118 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v117);
  v122 = veorq_s8(vaddq_s64(v118, v114), v20);
  v123 = veorq_s8(vaddq_s64(v119, v115), v20);
  v124 = veorq_s8(vaddq_s64(v120, v116), v20);
  v125 = veorq_s8(v121, v20);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v129 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v130 = veorq_s8(v124, v128);
  v131 = veorq_s8(v123, v127);
  v132 = veorq_s8(v122, v126);
  v133 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v132);
  v137 = veorq_s8(vaddq_s64(v133, v129), *&STACK[0x2D0]);
  v138 = veorq_s8(vaddq_s64(v134, v130), *&STACK[0x2D0]);
  v139 = veorq_s8(vaddq_s64(v135, v131), *&STACK[0x2D0]);
  v140 = veorq_s8(v136, *&STACK[0x2D0]);
  v141 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v144 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, v141));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, v142));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, v143));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), *&STACK[0x2C0]), v148), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), *&STACK[0x2C0]), v147), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), *&STACK[0x2C0]), v146), *&STACK[0x2B0]), *&STACK[0x2A0]);
  *&STACK[0x3B0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v145, v145), *&STACK[0x2C0]), v145), *&STACK[0x2B0]), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v19)));
  v152 = vshlq_u64(v151, vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v19)));
  v153 = vshlq_u64(v150, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v19)));
  v154 = vshlq_u64(v149, vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v19)));
  v155 = vandq_s8(v36, v18);
  v156 = vandq_s8(v35, v18);
  v157 = vandq_s8(v34, v18);
  v158 = vandq_s8(v33, v18);
  v159 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v163 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v162), *&STACK[0x260]), vorrq_s8(vaddq_s64(v162, *&STACK[0x290]), *&STACK[0x280]));
  v164 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v161), *&STACK[0x260]), vorrq_s8(vaddq_s64(v161, *&STACK[0x290]), *&STACK[0x280]));
  v165 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v160), *&STACK[0x260]), vorrq_s8(vaddq_s64(v160, *&STACK[0x290]), *&STACK[0x280]));
  v166 = vsubq_s64(v21, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v159), *&STACK[0x260]), vorrq_s8(vaddq_s64(v159, *&STACK[0x290]), *&STACK[0x280])));
  v167 = vsubq_s64(v21, v165);
  v168 = vsubq_s64(v21, v164);
  v169 = veorq_s8(v167, v22);
  v170 = veorq_s8(v166, v22);
  v171 = veorq_s8(v166, v23);
  v172 = veorq_s8(v167, v23);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v172);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v174, v174), v24), v174), v25), v26);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), v24), v173), v25), v26);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v178 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v179 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v178);
  v181 = veorq_s8(vaddq_s64(v179, v177), v27);
  v182 = veorq_s8(v180, v27);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v184 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v185 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v184);
  v187 = vaddq_s64(v185, v183);
  v188 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v189 = veorq_s8(v187, v188);
  v190 = veorq_s8(v186, v188);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v192 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v193 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v192);
  v195 = vaddq_s64(v193, v191);
  v196 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v197 = veorq_s8(v195, v196);
  v198 = veorq_s8(v194, v196);
  v199 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v200 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v201 = veorq_s8(v197, v199);
  v202 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v201);
  v204 = veorq_s8(vaddq_s64(v202, v200), v20);
  v205 = veorq_s8(v203, v20);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v207 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v207);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v210 = vdupq_n_s64(v5);
  v211 = veorq_s8(v209, v210);
  v212 = vdupq_n_s64(v6);
  v213 = veorq_s8(v208, v210);
  v214 = vdupq_n_s64(a4);
  v215 = vaddq_s64(vsubq_s64(vorrq_s8(v213, v212), vorrq_s8(v213, v214)), v214);
  v216 = vdupq_n_s64(v7);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211, v212), vorrq_s8(v211, v214)), v214), v216);
  v218 = veorq_s8(v215, v216);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL)));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL)));
  v221 = vdupq_n_s64(v8);
  v222 = vsubq_s64(vandq_s8(vaddq_s64(v220, v220), v221), v220);
  v223 = vdupq_n_s64(v9);
  v224 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v219, v219), v221), v219), v223);
  v225 = vdupq_n_s64(v10);
  v261.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v222, v223), v225), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v19))), v154);
  v261.val[1] = veorq_s8(vshlq_u64(veorq_s8(v224, v225), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v19))), v153);
  v226 = veorq_s8(v168, v22);
  v227 = veorq_s8(v168, v23);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v24), v228), v25), v26);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v27);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v188);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234), v196);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v20);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v210);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v239, v212), vorrq_s8(v239, v214)), v214), v216);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL)));
  v242 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v241, v241), v221), v241), v223), v225), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v19)));
  v243 = vsubq_s64(v21, v163);
  v261.val[0] = veorq_s8(v242, v152);
  v244 = veorq_s8(v243, v22);
  v245 = veorq_s8(v243, v23);
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v246, v246), v24), v246), v25), v26);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), v27);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v251 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250), v188);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), v196);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v255 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v20);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v210);
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v257, v212), vorrq_s8(v257, v214)), v214), v216);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL)));
  v261.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v259, v259), v221), v259), v223), v225), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v19))), *&STACK[0x3B0]);
  *(a1 + a2 - v17 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v261, *&STACK[0x250])), *(v15 + a2 - v17 - 8));
  return (*(v16 + 8 * ((60 * (8 - (a2 & 0xFFFFFFF8) == -v17)) ^ a3)))();
}

uint64_t sub_1000483D4()
{
  v5 = v4 + v0;
  v16 = v4 + v0 - 2008441969 * (((&v14 | 0x8D25A98E) - &v14 + (&v14 & 0x72DA5670)) ^ 0xC5BCFD80);
  v15 = v13;
  (*(v1 + 8 * (v4 + v0 + 3966)))(&v14);
  if (v14 == v3 + v0 + 754610459 + 1368)
  {
    v6 = 922670079;
  }

  else
  {
    v6 = 503011295;
  }

  if (v14 == v3 + v0 + 754610459 + 1368)
  {
    v7 = 1845340158;
  }

  else
  {
    v7 = 1006022590;
  }

  if (v14 == v3 + v0 + 754610459 + 1368)
  {
    v8 = -906412080;
  }

  else
  {
    v8 = -486753296;
  }

  v9 = (v6 ^ v11) + v8 + (v7 & (2 * v11));
  v15 = v13;
  v16 = (v5 + 2685) ^ ((((&v14 | 0x94082D9B) - &v14 + (&v14 & 0x6BF7D260)) ^ 0xCC61FEF9) * v2);
  (*(v1 + 8 * (v0 ^ 0xD305BE99)))(&v14);
  v15 = v12;
  v16 = (v0 + 754615685) ^ ((((&v14 | 0x86FC24F9) + (~&v14 | 0x7903DB06)) ^ 0xDE95F79A) * v2);
  (*(v1 + 8 * ((v0 + 754610459) ^ 0x29BC)))(&v14);
  return (v9 - 16257999);
}

void sub_1000485BC(uint64_t a1)
{
  v1 = *(a1 + 12) - 1317436891 * ((a1 + 503694825 - 2 * (a1 & 0x1E05C5E9)) ^ 0xAE065D9F);
  v2 = *(&off_100BFFA10 + v1 - 7875) - 8;
  v3 = *&v2[8 * ((39 * ((*&v2[8 * (v1 ^ 0x3A78)])(32, 0x101004023FF3BD5) != 0)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

void sub_10004867C(uint64_t a1)
{
  v1 = *(a1 + 24) - 1824088897 * (((a1 | 0xAC93D2C6) - (a1 | 0x536C2D39) + 1399598393) ^ 0xF4FA01A4);
  __asm { BRAA            X9, X17 }
}

_DWORD *sub_100048778@<X0>(_DWORD *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  **(result + 2) = (v4 + v3 - 1591) ^ a2;
  *(a3 + 16) = v5;
  return sub_100065F84(result);
}

uint64_t sub_1000487CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v27 = ((2 * (&a17 & 0x2159E9F8) - &a17 - 559540733) ^ 0x86CFC561) * v22;
  a17 = v27 + v21 + 2364;
  a19 = (v24 ^ 0x7FB4FABB) - v27 + ((v24 << (v21 ^ 0x70)) & 0xFF69F576) - 823136305;
  a20 = v23;
  a21 = a13;
  v28 = (*(v25 + 8 * (v21 + 8238)))(&a17);
  return (*(v25 + 8 * (((a18 == v26) * ((v21 + 2016131178) & 0x476F ^ 0x1A95)) ^ v21)))(v28);
}

uint64_t sub_100048910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, _DWORD *a39)
{
  v44 = a32 & 0xFD4D3FBF;
  *a39 ^= a38 ^ ((((v44 ^ 0x1B23) - ((~(v39 + 1232691366) + v40) ^ (v42 - (v39 + 1232691366)))) | (~(v39 + 1232691366) + v40)) >> 63);
  return (*(v43 + 8 * ((109 * (v41 - 1 != v44 - 1232698310 + ((v44 + 880934122) | 0x82048750) - 1829584570)) ^ v44)))(a1, a2, a3, 1232696482);
}

uint64_t sub_10004897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * (((&a14 | 0xB2CF11BF) - &a14 + (&a14 & 0x4D30EE40)) ^ 0x2CC89C9) + 8154;
  a14 = &a10;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((4475 * (a15 == v17)) ^ 0xE0Eu)))(v18);
}

uint64_t sub_100048A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t (*a33)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a8 == 17168)
  {
    return (*(STACK[0x2A8] + 8 * (v35 ^ (11002 * (v34 == v33 + 4)))))(a1, a2, a3, a4, a5, a6, a7, 17168);
  }

  if (a8 == 20706 || a8 == 33980)
  {
    return (*(STACK[0x2A8] + 8 * ((((a6 ^ 0x9EB) + 7936) * (a8 == 17168)) ^ (a6 - 2412))))();
  }

  return a33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100048AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((123 * ((((v4 + v2) ^ (v6 == 0)) & 1) == 0)) ^ (v4 + v2 + 3774))))();
}

uint64_t sub_100048B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>)
{
  v11 = a2 + a3;
  v12 = veorq_s8(*(a5 + v11), a6);
  v13 = (a1 + v11);
  v13[-1] = veorq_s8(*(a5 + v11 - 16), a6);
  *v13 = v12;
  return (*(v10 + 8 * (((v9 + v8 == 0) * a4) ^ (v7 + v6))))();
}

uint64_t sub_100048CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, unsigned int *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  *a29 = a42 + 1;
  v45 = *a30;
  v46 = v44 - 152;
  v47 = 2048652491 * ((v44 + 0x121EB88571CA76EALL - 2 * ((v44 - 152) & 0x121EB88571CA7782)) ^ 0xC6FA3709C07BE087);
  v48 = v42 - 970059808 + v47;
  *(v44 - 128) = ((v42 - 970059808) ^ 0xA7) + v47;
  *(v44 - 124) = v48 - 744;
  *(v46 + 8) = 5119 - v47;
  *(v46 + 32) = v45 ^ v47;
  *(v44 - 112) = v47 ^ 1;
  *(v44 - 136) = v48;
  *(v44 - 152) = (v42 - 1317022489) ^ v47;
  v49 = (*(v43 + 8 * (v42 ^ 0xB686BA8C)))(v44 - 152);
  return (*(v43 + 8 * *(v44 - 132)))(v49);
}

uint64_t sub_100048DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned int a17)
{
  a16 = a11;
  a17 = (v18 + 3815) ^ (1824088897 * ((&a15 & 0xFA965264 | ~(&a15 | 0xFA965264)) ^ 0x5D007EF9));
  v19 = (*(v17 + 8 * (v18 + 5081)))(&a15);
  return sub_100070834(v19);
}

uint64_t sub_100048DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, _BYTE *a16, uint64_t a17, int a18, unsigned int a19, char *a20, char *a21, _BYTE *a22)
{
  a22 = a16;
  LODWORD(a21) = v22 + 956911519 * (&a18 ^ 0xEA917005) + 4992;
  a20 = &a15;
  (*(v24 + 8 * (v22 ^ 0x355E)))(&a18);
  a19 = (v22 - 1068) ^ (33731311 * ((2 * (&a18 & 0x34132630) - &a18 - 873670195) ^ 0xF21A13EE));
  a20 = a16;
  a21 = &a13;
  (*(v24 + 8 * (v22 ^ 0x35A1)))(&a18);
  a20 = a16;
  LODWORD(a21) = v22 - 2008441969 * (&a18 ^ 0x4899540E) + 1365;
  v25 = (*(v24 + 8 * (v22 + 5331)))(&a18);
  return (*(v24 + 8 * ((324 * (a18 == v23)) ^ v22)))(v25);
}

uint64_t sub_100048EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v9 + v8;
  v19 = v9 + v8 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v21 = __ROR8__(v20 ^ 0x49E9423B6F16E7D2, 8);
  v20 ^= 0xE1AFA7ACF6E0968ELL;
  v22 = (v21 + v20) ^ v16;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = __ROR8__(((a8 & (2 * (v24 + v23))) - (v24 + v23) + v12) ^ a4, 8);
  v26 = ((a8 & (2 * (v24 + v23))) - (v24 + v23) + v12) ^ a4 ^ __ROR8__(v23, 61);
  v27 = (v25 + v26 - (a5 & (2 * (v25 + v26))) + a6) ^ a7;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v15;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x74116C981532F660 - ((v31 + v30) | 0x74116C981532F660) + ((v31 + v30) | a3)) ^ a2;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1A2AEBE44253AF03;
  v35 = v9 - 6084 + v10 + 4735;
  v36 = (__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ v13;
  *(v18 + 9) = *(v11 + v35) ^ (((0x6FD00DA82B5215D6 - (v36 | 0x6FD00DA82B5215D6) + (v36 | a1)) ^ v14) >> (8 * (v19 & 7u))) ^ 0x3C;
  return (*(v17 + 8 * ((26 * (v35 != 0)) ^ v10)))();
}

uint64_t sub_100049064(int a1, int a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v25 = v9 - 16;
  v26.i64[0] = v25 + v10 + 15;
  v26.i64[1] = v25 + v10 + 14;
  v27.i64[0] = v25 + v10 + 13;
  v27.i64[1] = v11 - 16 + v10 - 1731;
  v28.i64[0] = v25 + v10 + 11;
  v28.i64[1] = v25 + v10 + 10;
  v29.i64[0] = v25 + v10 + 9;
  v29.i64[1] = v25 + v10 + 8;
  *&v30 = v25 + v10 + 7;
  *(&v30 + 1) = v25 + v10 + 6;
  *&STACK[0x3B0] = v30;
  *&v30 = v25 + v10 + 5;
  *(&v30 + 1) = v25 + v10 + 4;
  *&STACK[0x3A0] = v30;
  v31 = *&STACK[0x320];
  v32 = vandq_s8(v29, *&STACK[0x320]);
  v33 = vandq_s8(v28, *&STACK[0x320]);
  v34 = vandq_s8(v27, *&STACK[0x320]);
  v35 = vandq_s8(v26, *&STACK[0x320]);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = *&STACK[0x380];
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x390]);
  v41 = vaddq_s64(v38, *&STACK[0x390]);
  v42 = vaddq_s64(v37, *&STACK[0x390]);
  v43 = vaddq_s64(v36, *&STACK[0x390]);
  *&STACK[0x340] = vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), *&STACK[0x380]), v43);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), v39), v40), v24);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), v39), v41), v24);
  v46 = veorq_s8(v45, a8);
  v47 = veorq_s8(v44, a8);
  v48 = veorq_s8(v44, v17);
  v49 = veorq_s8(v45, v17);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v53 = *&STACK[0x2A0];
  v52 = *&STACK[0x2B0];
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), v14), v51), v15), *&STACK[0x2B0]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), v14), v50), v15), *&STACK[0x2B0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v57);
  v61 = *&STACK[0x370];
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), *&STACK[0x2A0]), v60), *&STACK[0x370]), v16);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v59, v59), *&STACK[0x2A0]), v59), *&STACK[0x370]), v16);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = *&STACK[0x280];
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, *&STACK[0x280]), vorrq_s8(v67, v19)), v19), v18);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, *&STACK[0x280]), vorrq_s8(v68, v19)), v19), v18);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v74 = *&STACK[0x360];
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72), *&STACK[0x360]);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73), *&STACK[0x360]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), v20), v81), v21), v22);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), v20), v80), v21), v22);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v23);
  v89 = veorq_s8(v87, v23);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v95.i64[0] = v25 + v10 + 3;
  v95.i64[1] = v25 + v10 + 2;
  *&STACK[0x330] = v95;
  v96 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), v39), v42), v24);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v94, v92), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v13)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v93, v91), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v13)));
  v97 = veorq_s8(v96, a8);
  v98 = veorq_s8(v96, v17);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v14), v99), v15), v52);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v53), v102), v61), v16);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v69), vorrq_s8(v105, v19)), v19), v18);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v74);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v20), v110), v21), v22);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v23);
  v28.i64[0] = v25 + v10 + 1;
  v28.i64[1] = v25 + v10;
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL)));
  v115 = vandq_s8(v28, v31);
  v116 = vaddq_s64(*&STACK[0x340], v24);
  v199.val[1] = vshlq_u64(veorq_s8(v114, *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v13)));
  v117 = veorq_s8(v116, a8);
  v118 = veorq_s8(v116, v17);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v14), v119), v15), v52);
  v121 = v52;
  v122 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v53), v123), v61), v16);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v69), vorrq_s8(v126, v19)), v19), v18);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v74);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v20), v131), v21), v22);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v23);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v137 = vandq_s8(v95, v31);
  v138 = vaddq_s64(v136, v135);
  v139 = vandq_s8(*&STACK[0x3A0], v31);
  v199.val[0] = vshlq_u64(veorq_s8(v138, *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v13)));
  v140 = vandq_s8(*&STACK[0x3B0], v31);
  v141 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), *&STACK[0x390]);
  v145 = vaddq_s64(v143, *&STACK[0x390]);
  v146 = vaddq_s64(v142, *&STACK[0x390]);
  v147 = vaddq_s64(v141, *&STACK[0x390]);
  v148 = vsubq_s64(vorrq_s8(vaddq_s64(v147, v147), *&STACK[0x380]), v147);
  v149 = vsubq_s64(vorrq_s8(vaddq_s64(v146, v146), *&STACK[0x380]), v146);
  v150 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), *&STACK[0x380]), v144), v24);
  v151 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), *&STACK[0x380]), v145), v24);
  v147.i64[0] = vqtbl4q_s8(v199, *&STACK[0x350]).u64[0];
  v199.val[0] = veorq_s8(v151, a8);
  v199.val[1] = veorq_s8(v150, a8);
  v199.val[2] = veorq_s8(v150, v17);
  v199.val[3] = veorq_s8(v151, v17);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v14), v199.val[1]), v15), v121);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v14), v199.val[0]), v15), v121);
  v152 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v152);
  v153 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v153, v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v53), v199.val[1]), *&STACK[0x370]), v16);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v53), v199.val[0]), *&STACK[0x370]), v16);
  v154 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v154);
  v155 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v155, v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v69), vorrq_s8(v199.val[0], v19)), v19), v18);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v69), vorrq_s8(v199.val[1], v19)), v19), v18);
  v199.val[2] = veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]), *&STACK[0x360]);
  v199.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]), *&STACK[0x360]);
  v156 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v156);
  v157 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v157, v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v20), v199.val[1]), v21), v22);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v20), v199.val[0]), v21), v22);
  v158 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v158);
  v159 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = veorq_s8(vaddq_s64(v159, v199.val[2]), v23);
  v199.val[0] = veorq_s8(v199.val[0], v23);
  v160 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v161 = vaddq_s64(v149, v24);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), veorq_s8(v199.val[1], v160)), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v13)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v13)));
  v162 = veorq_s8(v161, a8);
  v163 = veorq_s8(v161, v17);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), v14), v164), v15), v121);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v53), v167), *&STACK[0x370]), v16);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, v69), vorrq_s8(v170, v19)), v19), v18);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), *&STACK[0x360]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v20), v175), v21), v22);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v23);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL)));
  v180 = vaddq_s64(v148, v24);
  v199.val[1] = vshlq_u64(veorq_s8(v179, *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v13)));
  v181 = veorq_s8(v180, a8);
  v182 = veorq_s8(v180, v17);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v14), v183), v15), v121);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v53), v186), *&STACK[0x370]), v16);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189, v69), vorrq_s8(v189, v19)), v19), v18);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191), *&STACK[0x360]);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194, v194), v20), v194), v21), v22);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v23);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL))), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v13)));
  v147.i64[1] = vqtbl4q_s8(v199, *&STACK[0x350]).u64[0];
  v199.val[0] = vrev64q_s8(v147);
  *v28.i64[1] = vextq_s8(v199.val[0], v199.val[0], 8uLL);
  return (*(v12 + 8 * (((v8 == 16) * a2) ^ a1)))();
}

uint64_t sub_1000490A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  v6 = *(a2 + ((*(v3 + (776 * v4 + a3) % 0x3C9u) ^ 0xB4u) * (v5 - 3808) + 83142) % 0x3A0);
  *(v3 + (776 * v4 + 204088) % 0x3C9u) = v6 ^ ((v6 ^ 0x7D) >> 2) ^ ((v6 ^ 0x7D) >> 1) ^ 0xD8;
  return (*(a1 + 8 * ((4149 * (v4 == 15)) ^ v5)))();
}

uint64_t sub_10004919C()
{
  STACK[0x360] = &STACK[0xB80];
  STACK[0x348] = &STACK[0xFA0];
  v3 = *(v1 + 40) ^ STACK[0x2B8];
  return (*(v2 + 8 * ((1426 * ((((v3 ^ 0xB448B204) + 1270304252) ^ ((v3 ^ 0x6C768E3B) - 1819708987) ^ ((v3 ^ ((v0 ^ 0xEF) - 577312858)) + 577310051)) == -94948994)) ^ v0)))(3362771362, 1902370367, 1708388018, 1708388018, 1902370367, 1281797710);
}

uint64_t sub_1000492C8@<X0>(int a1@<W8>)
{
  v7 = (a1 - 4662) | 0xA02;
  v8 = STACK[0x6D0];
  v9 = 1358806181 * ((((v6 - 232) | 0x33F7C55F) - (v6 - 232) + ((v6 - 232) & 0xCC083AA0)) ^ 0xCD8A9DC);
  *(v6 - 224) = v9 + a1 + 142;
  *(v6 - 220) = (v4 ^ 0x7F68DBB7) - v9 + ((2 * v4) & 0xFED1B76E) - 301990818;
  *(v6 - 232) = v1;
  *(v6 - 216) = v2;
  *(v6 - 208) = v1;
  *(v6 - 192) = v8;
  *(v6 - 200) = ((v7 - 1113733505) ^ v3) + v9;
  v10 = (*(v5 + 8 * (a1 ^ 0x37DC)))(v6 - 232);
  return (*(v5 + 8 * ((7849 * (*(v6 - 196) == ((6 * (v7 ^ 0x995)) ^ 0xF805B5))) ^ v7)))(v10);
}

uint64_t sub_100049414@<X0>(uint64_t a1@<X0>, char a2@<W6>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) ^ 0x3C;
  return (*(v6 + 8 * ((19 * (((v5 ^ a2) ^ (v7 == 0)) & 1)) ^ (a3 + v5 + 2652))))();
}

void sub_100049454()
{
  v0 = *(&off_100BFFA10 + ((-85 * (dword_100CBBEB0 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBBEB0 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xD9]) - 83);
  v1 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + *v0) ^ 0xDF)) ^ byte_1009D3FD0[byte_1009C9A60[(-85 * ((dword_100CBC1F0 + *v0) ^ 0xDF))] ^ 0x21]) + 72);
  v2 = &v4[*v0 + *v1];
  *v0 = (2054362027 * v2) ^ 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((2 * (v5 & 0x76A1F610) - v5 + 157157869) ^ 0x3B45527D);
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  v3 = *(&off_100BFFA10 + ((-85 * (dword_100CBBEB0 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009DAFB0[byte_1009D40D0[(-85 * (dword_100CBBEB0 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x6D]) + 262) - 8;
  (*&v3[8 * (byte_1009C9B60[byte_1009E3218[v1 - 8] ^ 0xDD] ^ v1) + 75144])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100049688(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t a43, int a44, int a45, int a46, unint64_t a47, uint64_t a48)
{
  LODWORD(a28) = 0;
  LODWORD(a33) = (v56 + 542432432) | 0xC0A000C;
  v58 = v49 ^ 0xCFF03F73 ^ (a7 & (v55 ^ 0xFF76ACCD) ^ v52 ^ (a33 - 2036097802)) & v53;
  v59 = *(&off_100BFFA10 + (v56 ^ 0x170Du));
  v60 = v59 + 8 * (*(a12 + (v58 >> 24)) ^ a2);
  v61 = a34 ^ 0x49D3D1C1 ^ (a39 ^ 0x94A3854F ^ ((a37 & (a38 ^ 0xB2E20469) | a36) ^ 0x78A11B0) & a40) & a35;
  v62 = *(a12 + (v61 >> 24));
  v63 = a41 ^ 0x1F4CD8B1 ^ ((v56 - 4846) ^ (a3 << 8) ^ 0x15FBAFA) & a42;
  v64 = v54 ^ 0x6B57F379 ^ v51 & (v50 ^ 0x3373F2EFu);
  v65 = *(a12 + (v54 ^ 0x79 ^ v51 & (v50 ^ 0xEFu)));
  v66 = *(a12 + BYTE1(v61));
  v67 = *(a12 + BYTE2(v61));
  v68 = *(a12 + (v63 >> 24));
  v69 = *(a12 + BYTE1(v58));
  v70 = *(v59 + 8 * (*(a12 + BYTE1(v63)) ^ a2)) >> 16;
  v71 = (*(v59 + 8 * (*(a12 + BYTE2(v63)) ^ a2)) ^ ((*(a12 + BYTE2(v63)) ^ 0x5CLL) - (*(a12 + BYTE2(v63)) ^ 0x2FFBF42515uLL))) >> 8;
  v72 = (*(v59 + 8 * (v62 ^ a2)) >> 24) ^ (*(v59 + 8 * (*(a12 + (a41 ^ 0xB1 ^ ((v56 + 18) ^ 0xFAu) & a42)) ^ a2)) >> 16) ^ *(v59 + 8 * (*(a12 + BYTE2(v58)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(a12 + (v64 >> 24)) ^ a2)) ^ ((*(a12 + (v64 >> 24)) ^ 0x5CLL) - (*(a12 + (v64 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0xEF269417;
  v73 = *(a12 + (((*(v59 + 8 * (v62 ^ a2)) >> 24) ^ WORD1(*(v59 + 8 * (*(a12 + (a41 ^ 0xB1 ^ ((v56 + 18) ^ 0xFAu) & a42)) ^ a2))) ^ *(v59 + 8 * (*(a12 + BYTE2(v58)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(a12 + (v64 >> 24)) ^ a2)) ^ ((*(a12 + (v64 >> 24)) ^ 0x5C) - (*(a12 + (v64 >> 24)) ^ 0xFBF42515))) >> 8) ^ 0x9417) >> 8));
  v74 = *(v60 + 4) ^ (*(v59 + 8 * (*(a12 + (a34 ^ 0xC1 ^ (a39 ^ 0x4F ^ ((a37 & (a38 ^ 0x69) | a36) ^ 0xB0u) & a40) & a35)) ^ a2)) >> 24) ^ ((*(v59 + 8 * (v65 ^ a2)) ^ ((v65 ^ 0x5C) - (v65 ^ 0x2FFBF42515uLL))) >> 8) ^ v70 ^ 0x2B2DE1C5;
  v75 = *(v59 + 8 * (*(a12 + BYTE1(v64)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + v58) ^ a2)) >> 24) ^ v71 ^ (*(v59 + 8 * (v66 ^ a2)) >> 16) ^ 0x27A8B167;
  v76 = (*(v59 + 8 * (v68 ^ a2)) >> 24) ^ (*(v59 + 8 * (*(a12 + BYTE2(v64)) ^ a2)) >> 16) ^ *(v59 + 8 * (v67 ^ a2) + 4) ^ ((*(v59 + 8 * (v69 ^ a2)) ^ ((v69 ^ 0x5C) - (v69 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x25AE54BC;
  v77 = *(a12 + (*(v60 + 4) ^ BYTE3(*(v59 + 8 * (*(a12 + (a34 ^ 0xC1 ^ (a39 ^ 0x4F ^ ((a37 & (a38 ^ 0x69) | a36) ^ 0xB0u) & a40) & a35)) ^ a2))) ^ (((*(v59 + 8 * (v65 ^ a2)) ^ ((v65 ^ 0x5C) - (v65 ^ 0x2515))) >> 8) ^ v70) ^ 0xC5));
  v78 = *(a12 + BYTE2(v72));
  v79 = *(a12 + (v72 >> 24));
  v80 = *(a12 + (v75 >> 24));
  v81 = *(a12 + BYTE1(v74));
  v82 = *(a12 + v76);
  v83 = *(a12 + v75);
  v84 = *(a12 + v72);
  v85 = *(a12 + BYTE1(v76));
  v86 = *(a12 + BYTE1(v75));
  v87 = v59 + 8 * (*(a12 + BYTE2(v75)) ^ a2);
  v88 = (*(v59 + 8 * (*(a12 + BYTE2(v76)) ^ a2)) ^ ((((*(a12 + BYTE2(v76)) ^ 0x5CLL) - (*(a12 + BYTE2(v76)) ^ 0x8643452FFBF42515)) ^ 1) + 1)) >> 8;
  v89 = *(v59 + 8 * (v77 ^ a2));
  v90 = v59 + 8 * (v80 ^ a2);
  v91 = *(v59 + 8 * (v78 ^ a2)) >> 16;
  v92 = *(v59 + 8 * (v83 ^ a2)) >> 24;
  v93 = *(v59 + 8 * (v86 ^ a2)) >> 16;
  v94 = *(v90 + 4) ^ (v89 >> 24) ^ ((*(v59 + 8 * (*(a12 + (v76 >> 24)) ^ a2)) ^ ((*(a12 + (v76 >> 24)) ^ 0x5CLL) - (*(a12 + (v76 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ v91 ^ 0xB7520EEC;
  v95 = (*(v59 + 8 * (*(a12 + (v74 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v73 ^ a2)) >> 16) ^ *(v87 + 4) ^ v88 ^ 0xA1E6025E;
  v96 = *(a12 + (((*(v59 + 8 * (*(a12 + (v74 >> 24)) ^ a2)) >> 24) ^ WORD1(*(v59 + 8 * (v73 ^ a2))) ^ *(v87 + 4) ^ v88 ^ 0x25E) >> 8));
  v97 = *(v59 + 8 * (v84 ^ a2) + 4) ^ (*(v59 + 8 * (v85 ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(a12 + BYTE2(v74)) ^ a2)) ^ ((*(a12 + BYTE2(v74)) ^ 0x5CLL) - (*(a12 + BYTE2(v74)) ^ 0x2FFBF42515uLL))) >> 8) ^ v93 ^ 0x9F1771EA;
  v98 = *(a12 + BYTE1(v97));
  v99 = *(v59 + 8 * (v82 ^ a2) + 4) ^ v92 ^ ((*(v59 + 8 * (v79 ^ a2)) ^ ((v79 ^ 0x5C) - (v79 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v81 ^ a2)) >> 16) ^ 0x7B658EE4;
  v100 = *(a12 + (v97 >> 24));
  v101 = *(a12 + BYTE2(v95));
  v102 = *(a12 + BYTE2(v97));
  v103 = *(a12 + v99);
  v104 = *(a12 + (v95 >> 24));
  v105 = *(a12 + v97);
  v106 = *(a12 + v95);
  v107 = *(a12 + BYTE1(v99));
  v108 = (*(v59 + 8 * (v104 ^ a2)) ^ ((v104 ^ 0x5C) - (v104 ^ 0x2FFBF42515uLL))) >> 8;
  v109 = *(v59 + 8 * (*(a12 + BYTE1(v94)) ^ a2)) >> 16;
  v110 = *(v59 + 8 * (v105 ^ a2)) >> 24;
  v111 = (v107 ^ 0x5C) - (v107 ^ 0x8643452FFBF42515);
  LODWORD(v104) = ((*(v59 + 8 * (v98 ^ a2)) ^ ((v98 ^ 0x5C) - (v98 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x3A2D1430;
  v112 = (*(v59 + 8 * (v107 ^ a2)) ^ v111) >> 16;
  v113 = (*(v59 + 8 * (*(a12 + (v94 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v96 ^ a2)) >> 16) ^ *(v59 + 8 * (*(a12 + BYTE2(v99)) ^ a2) + 4) ^ v104;
  v114 = (*(v59 + 8 * (*(a12 + (v99 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(a12 + v94) ^ a2)) >> 16) ^ *(v59 + 8 * (v102 ^ a2) + 4) ^ ((*(v59 + 8 * (v101 ^ a2)) ^ ((v101 ^ 0x5C) - (v101 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x8E355DF4;
  v115 = *(v59 + 8 * (v106 ^ a2) + 4) ^ v110 ^ ((*(v59 + 8 * (*(a12 + BYTE2(v94)) ^ a2)) ^ ((*(a12 + BYTE2(v94)) ^ 0x5CLL) - (*(a12 + BYTE2(v94)) ^ 0x2FFBF42515uLL))) >> 8) ^ v112 ^ 0x41C73323;
  v116 = *(v48 + BYTE2(v115));
  v117 = *(v59 + 8 * (v100 ^ a2) + 4) ^ (*(v59 + 8 * (v103 ^ a2)) >> 24) ^ v108 ^ v109 ^ 0xF0D6095D;
  v118 = *(v48 + BYTE2(v117));
  v119 = *(v48 + BYTE1(v115));
  v120 = *(v48 + v117);
  v121 = *(v48 + (v117 >> 24));
  v122 = *(v48 + BYTE2(v113));
  v123 = *(v48 + (v115 >> 24));
  v124 = *(v48 + (v114 >> (v111 & 0x10) >> (v111 & 0x10 ^ 0x10)));
  v125 = *(v48 + (v113 >> 24));
  v126 = *(v48 + v115);
  v127 = *(v48 + v113);
  v128 = v59 + 8 * (*(v48 + BYTE1(v113)) ^ a2);
  v129 = *(v48 + BYTE1(v117));
  v130 = *(v48 + (v114 >> 24));
  v131 = __ROR8__(__ROR8__(*(v59 + 8 * (v123 ^ a2)) ^ 0x47673A74000000, 34) ^ 0x4E4000000019A6BCLL, 30);
  v132 = ((*(v59 + 8 * (*(v48 + v114) ^ a2)) ^ ((*(v48 + v114) ^ 0x5CLL) - (*(v48 + v114) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v128 + 4) ^ (*(v59 + 8 * (v118 ^ a2)) >> 16) ^ (*(v59 + 8 * (v119 ^ a2)) >> 24) ^ 0xE094DB40;
  v133 = (*(v59 + 8 * (v121 ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + BYTE1(v114)) ^ a2)) >> 16) ^ *(v59 + 8 * (v116 ^ a2) + 4) ^ ((*(v59 + 8 * (v122 ^ a2)) ^ ((v122 ^ 0x5C) - (v122 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x3A3F80C5;
  v134 = *(v59 + 8 * (v127 ^ a2) + 4) ^ (*(v59 + 8 * (v126 ^ a2)) >> 24) ^ ((*(v59 + 8 * (v130 ^ a2)) ^ ((v130 ^ 0x5C) - (v130 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v129 ^ a2)) >> 16) ^ 0x30097C3A;
  v135 = *(v48 + (BYTE3(*(v59 + 8 * (v121 ^ a2))) ^ BYTE2(*(v59 + 8 * (*(v48 + BYTE1(v114)) ^ a2))) ^ *(v59 + 8 * (v116 ^ a2) + 4) ^ ((*(v59 + 8 * (v122 ^ a2)) ^ ((v122 ^ 0x5C) - (v122 ^ 0x2515))) >> 8) ^ 0xC5));
  v136 = *(v59 + 8 * (v125 ^ a2) + 4) ^ (*(v59 + 8 * (v120 ^ a2)) >> 16) ^ ((*(v59 + 8 * (v124 ^ a2)) ^ ((v124 ^ 0x5C) - (v124 ^ 0x2FFBF42515uLL))) >> 8) ^ 0xCF2E7EAF ^ (v131 >> 24);
  v137 = *(v48 + (v136 >> 24));
  v138 = *(v48 + ((*(v59 + 8 * (v125 ^ a2) + 4) ^ WORD1(*(v59 + 8 * (v120 ^ a2))) ^ ((*(v59 + 8 * (v124 ^ a2)) ^ ((v124 ^ 0x5C) - (v124 ^ 0x2515))) >> 8)) ^ 0xAFu ^ BYTE3(v131)));
  v139 = *(v48 + BYTE1(v134));
  v140 = *(v48 + BYTE1(v136));
  v141 = *(v48 + BYTE2(v134));
  v142 = *(v48 + BYTE1(v133));
  v143 = *(v48 + (v134 >> 24));
  v144 = *(v48 + BYTE1(v132));
  v145 = *(v48 + v134);
  LOBYTE(v116) = *(v48 + BYTE2(v132));
  v146 = *(v48 + BYTE2(v136));
  LODWORD(v114) = *(v59 + 8 * (v135 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + (v132 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v139 ^ a2)) >> 16);
  LODWORD(v136) = ((*(v59 + 8 * (v142 ^ a2)) ^ ((v142 ^ 0x5C) - (v142 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v141 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + v132) ^ a2) + 4) ^ (*(v59 + 8 * (v138 ^ a2)) >> 16);
  v147 = v114 ^ 0x6700C266 ^ ((*(v59 + 8 * (v137 ^ a2)) + (v137 ^ 0x5C) - (v137 ^ 0x8643452FFBF42515) - 2 * (*(v59 + 8 * (v137 ^ a2)) & ((v137 ^ 0x5C) - (v137 ^ 0x8643452FFBF42515)))) >> 8);
  v148 = *(v48 + (v114 ^ 0x66u ^ ((*(v59 + 8 * (v137 ^ a2)) + (v137 ^ 0x5C) - (v137 ^ 0x2515) - 2 * (*(v59 + 8 * (v137 ^ a2)) & ((v137 ^ 0x5C) - (v137 ^ 0x2515)))) >> 8)));
  v149 = v136 ^ 0xEF5F3BBB;
  v150 = ((*(v59 + 8 * (v143 ^ a2)) ^ ((v143 ^ 0x5C) - (v143 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v144 ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + BYTE2(v133)) ^ a2)) >> 24) ^ *(v59 + 8 * (v140 ^ a2) + 4) ^ 0x2DE22623;
  v151 = *(v48 + ((((*(v59 + 8 * (v143 ^ a2)) ^ ((v143 ^ 0x5C) - (v143 ^ 0xFBF42515))) >> 8) ^ WORD1(*(v59 + 8 * (v144 ^ a2))) ^ (*(v59 + 8 * (*(v48 + BYTE2(v133)) ^ a2)) >> 24) ^ *(v59 + 8 * (v140 ^ a2) + 4) ^ 0x2623) >> 8));
  v152 = (*(v59 + 8 * ((v116 & 0x80 ^ 0xF790DFAA2840C0FFLL) & (v116 & 0x7F ^ 0x1790DFAA2A40C8C3) ^ 0xF790DFAA2840C0E9)) >> 24) ^ (*(v59 + 8 * (v145 ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + (v133 >> 24)) ^ a2) + 4) ^ ((*(v59 + 8 * (v146 ^ a2)) ^ ((v146 ^ 0x5C) - (v146 ^ 0x2FFBF42515uLL))) >> 8) ^ 0xC5A75DBC;
  v153 = *(v48 + BYTE2(v152));
  v154 = *(v48 + BYTE1(v147));
  v155 = *(v48 + v152);
  v156 = *(v48 + (v150 >> 24));
  v157 = (*(v59 + 8 * (*(v48 + BYTE2(v150)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + BYTE2(v149)) ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + (v152 >> 24)) ^ a2) + 4) ^ ((*(v59 + 8 * (v154 ^ a2)) ^ ((v154 ^ 0x5C) - (v154 ^ 0x2FFBF42515uLL))) >> 8);
  v158 = (((BYTE3(*(v59 + 8 * (v156 ^ a2))) << 27) ^ 0x8226754A) & ((*(v59 + 8 * (v156 ^ a2)) >> 29) & 0x7FFFFFFLL ^ 0xF984C1E8) | (*(v59 + 8 * (v156 ^ a2)) >> 29) & 0x5D98AB5) ^ (((*(v59 + 8 * (v155 ^ a2)) >> 5) & 0xF8000000 ^ 0x9F851CB9) & ((*(v59 + 8 * (v155 ^ a2)) >> 37) ^ 0xFA93E6CDLL) | (*(v59 + 8 * (v155 ^ a2)) >> 37) & 0x7AE346);
  LODWORD(v158) = ((32 * v158) ^ 0xBB1DC040 | (v158 >> 27) ^ 0x1C) ^ (*(v59 + 8 * (*(v48 + (v149 >> 24)) ^ a2)) >> 16) ^ ((*(v59 + 8 * (*(v48 + BYTE2(v147)) ^ a2)) ^ ((*(v48 + BYTE2(v147)) ^ 0x5CLL) - (*(v48 + BYTE2(v147)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v140) = (*(v59 + 8 * (*(v48 + v149) ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + ((((*(v59 + 8 * (v143 ^ a2)) ^ ((v143 ^ 0x5C) - (v143 ^ 0x2515))) >> 8) ^ WORD1(*(v59 + 8 * (v144 ^ a2))) ^ BYTE3(*(v59 + 8 * (*(v48 + BYTE2(v133)) ^ a2))) ^ *(v59 + 8 * (v140 ^ a2) + 4)) ^ 0x23u)) ^ a2) + 4);
  v159 = *(v59 + 8 * (*(v48 + BYTE1(v149)) ^ a2) + 4) ^ ((*(v59 + 8 * (v151 ^ a2)) ^ ((v151 ^ 0x5C) - (v151 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v148 ^ a2)) >> 24) ^ (*(v59 + 8 * (v153 ^ a2)) >> 16) ^ 0xC58ED1BD;
  v160 = *(v48 + (*(v59 + 8 * (*(v48 + BYTE1(v149)) ^ a2) + 4) ^ ((*(v59 + 8 * (v151 ^ a2)) ^ ((v151 ^ 0x5C) - (v151 ^ 0x2515))) >> 8) ^ BYTE3(*(v59 + 8 * (v148 ^ a2))) ^ BYTE2(*(v59 + 8 * (v153 ^ a2))) ^ 0xBD));
  v161 = (-(v158 ^ 0x9A725621) ^ 0x10614F8D ^ (1223721385 - (v158 ^ 0xD282D788)) ^ ((v158 ^ 0x9A725621) + 274812813 - 2 * ((v158 ^ 0x9A725621) & 0x10614F9D ^ v158 & 0x10))) + 1223721385;
  v162 = ((*(v59 + 8 * (*(v48 + BYTE1(v152)) ^ a2)) ^ ((*(v48 + BYTE1(v152)) ^ 0x5CLL) - (*(v48 + BYTE1(v152)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(v48 + (v147 >> 24)) ^ a2)) >> 16) ^ v140 ^ 0xFBAC403D;
  v163 = *(v48 + ((v157 ^ 0x1A6B) >> 8));
  v164 = *(v48 + ((-(v158 ^ 0x21) ^ 0x8D ^ (-87 - (v158 ^ 0x88)) ^ ((v158 ^ 0x21) - 115 - 2 * ((v158 ^ 0x21) & 0x9D ^ v158 & 0x10))) - 87));
  v165 = *(v48 + BYTE2(v161));
  v166 = *(v48 + (v161 >> 24));
  v167 = *(v48 + BYTE1(v159));
  v168 = *(v48 + BYTE2(v159));
  v169 = *(v48 + BYTE1(v162));
  v170 = *(v48 + v162);
  v171 = *(v48 + ((v157 ^ 0x69FD1A6B) >> 16));
  v172 = *(v48 + BYTE1(v161));
  v173 = *(v59 + 8 * (v160 ^ a2));
  v174 = *(v48 + (BYTE3(v157) ^ 0x69));
  v175 = *(v59 + 8 * (*(v48 + (v157 ^ 0x6Bu)) ^ a2)) >> 24;
  LODWORD(v157) = *(v59 + 8 * (v165 ^ a2) + 4);
  v176 = *(v59 + 8 * (v163 ^ a2));
  v177 = v163 ^ 0x2FFBF42515;
  v178 = v163 ^ 0x5C;
  LODWORD(v163) = v175 ^ (v173 >> 16) ^ ((*(v59 + 8 * (*(v48 + (v162 >> 24)) ^ a2)) ^ ((*(v48 + (v162 >> 24)) ^ 0x5CLL) - (*(v48 + (v162 >> 24)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v159) = *(v59 + 8 * (*(v48 + (v159 >> 24)) ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + BYTE2(v162)) ^ a2)) >> 24) ^ ((*(v59 + 8 * (v174 ^ a2)) ^ ((v174 ^ 0x5C) - (v174 ^ 0x2FFBF42515uLL))) >> 8);
  v179 = *(v59 + 8 * (v172 ^ a2)) ^ ((v172 ^ 0x5C) - (v172 ^ 0x8643452FFBF42515));
  v180 = v163 ^ 0x7E514157 ^ v157;
  v181 = ((v176 ^ (v178 - v177)) >> 8) ^ (*(v59 + 8 * (v170 ^ a2)) >> 24) ^ *(v59 + 8 * (v167 ^ a2) + 4) ^ 0xECFA85CC ^ (*(v59 + 8 * (v166 ^ a2)) >> 16);
  v182 = *(v59 + 8 * (v169 ^ a2) + 4) ^ ((*(v59 + 8 * (v168 ^ a2)) ^ ((v168 ^ 0x5C) - (v168 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v171 ^ a2)) >> 16) ^ 0xC6D4B027 ^ (*(v59 + 8 * (v164 ^ a2)) >> 24);
  v183 = v159 ^ 0xD72CBAA1 ^ (v179 >> 16);
  v184 = *(v48 + (v182 >> (v179 & 0x10) >> (v179 & 0x10 ^ 0x10)));
  v185 = *(v48 + (v182 >> 24));
  v186 = *(v48 + BYTE1(v183));
  v187 = *(v48 + BYTE2(v181));
  v188 = *(v48 + BYTE2(v183));
  v189 = *(v48 + BYTE2(v180));
  v190 = *(v48 + (v183 >> 24));
  v191 = *(v48 + v182);
  LODWORD(v179) = ((*(v59 + 8 * (*(v48 + v180) ^ a2)) ^ ((*(v48 + v180) ^ 0x5CLL) - (*(v48 + v180) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (*(v48 + v183) ^ a2) + 4);
  v192 = (*(v59 + 8 * (v185 ^ a2)) >> 24) ^ (*(v59 + 8 * (v187 ^ a2)) >> 16) ^ *(v59 + 8 * (v188 ^ a2) + 4) ^ ((*(v59 + 8 * (v189 ^ a2)) ^ ((v189 ^ 0x5C) - (v189 ^ 0x2FFBF42515uLL))) >> 8) ^ 0xFF51F086;
  v193 = *(v48 + (BYTE3(*(v59 + 8 * (v185 ^ a2))) ^ BYTE2(*(v59 + 8 * (v187 ^ a2))) ^ *(v59 + 8 * (v188 ^ a2) + 4) ^ ((*(v59 + 8 * (v189 ^ a2)) ^ ((v189 ^ 0x5C) - (v189 ^ 0x2515))) >> 8) ^ 0x86));
  v194 = ((*(v59 + 8 * (v191 ^ a2)) ^ ((v191 ^ 0x5C) - (v191 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v190 ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + (v180 >> 24)) ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + (v181 >> 24)) ^ a2) + 4) ^ 0x3C39B03C;
  v195 = *(v59 + 8 * (*(v48 + BYTE1(v181)) ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + BYTE1(v180)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v186 ^ a2)) >> 16) ^ 0x86A5F4E2 ^ ((*(v59 + 8 * (v184 ^ a2)) ^ ((v184 ^ 0x5C) - (v184 ^ 0x2FFBF42515uLL))) >> 8);
  v196 = v179 ^ (*(v59 + 8 * (*(v48 + v181) ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + BYTE1(v182)) ^ a2)) >> 24) ^ 0x546DBE4B;
  v197 = *(v48 + (((*(v59 + 8 * (v185 ^ a2)) >> 24) ^ WORD1(*(v59 + 8 * (v187 ^ a2))) ^ *(v59 + 8 * (v188 ^ a2) + 4) ^ ((*(v59 + 8 * (v189 ^ a2)) ^ ((v189 ^ 0x5C) - (v189 ^ 0xFBF42515))) >> 8) ^ 0xF086) >> 8));
  v198 = *(v48 + (v179 ^ WORD1(*(v59 + 8 * (*(v48 + v181) ^ a2))) ^ BYTE3(*(v59 + 8 * (*(v48 + BYTE1(v182)) ^ a2))) ^ 0x4B));
  v199 = *(v48 + BYTE2(v196));
  v200 = *(v48 + BYTE2(v195));
  v201 = (*(v59 + 8 * (v193 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + v194) ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + v195) ^ a2)) >> 16) ^ ((*(v59 + 8 * (v198 ^ a2)) ^ ((v198 ^ 0x5C) - (v198 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x89436B47;
  v202 = (*(v59 + 8 * (*(v48 + BYTE1(v194)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v197 ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + ((v179 ^ WORD1(*(v59 + 8 * (*(v48 + v181) ^ a2))) ^ (*(v59 + 8 * (*(v48 + BYTE1(v182)) ^ a2)) >> 24) ^ 0xBE4B) >> 8)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(v48 + BYTE1(v195)) ^ a2)) ^ ((*(v48 + BYTE1(v195)) ^ 0x5CLL) - (*(v48 + BYTE1(v195)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0x786A6060;
  v203 = (*(v59 + 8 * (*(v48 + (v195 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + (v196 >> 24)) ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + (v192 >> 24)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(v48 + (v194 >> 24)) ^ a2)) ^ ((*(v48 + (v194 >> 24)) ^ 0x5CLL) - (*(v48 + (v194 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0x6CCC183A;
  v204 = *(v59 + 8 * (v199 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + BYTE2(v194)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + BYTE2(v192)) ^ a2)) >> 16) ^ 0x939C7CA6 ^ (((-*(v59 + 8 * (v200 ^ a2)) ^ ((v200 ^ 0x5C) - (v200 ^ 0x8643452FFBF42515) - (*(v59 + 8 * (v200 ^ a2)) ^ ((v200 ^ 0x5C) - (v200 ^ 0x8643452FFBF42515)))) ^ 0x442BB06BDALL ^ (*(v59 + 8 * (v200 ^ a2)) - ((2 * *(v59 + 8 * (v200 ^ a2))) & 0x117F9E885760D7B4) - 0x774030BBD44F9426)) + (v200 ^ 0x5C) - (v200 ^ 0x8643452FFBF42515)) >> 8);
  LODWORD(v198) = *(v48 + v202);
  v205 = *(v48 + (v203 >> 24));
  v206 = *(v48 + BYTE2(v203));
  v207 = *(v48 + (v204 >> 24));
  v208 = *(v48 + v204);
  v209 = *(v48 + BYTE1(v203));
  v210 = *(v48 + (v201 >> 24));
  v211 = *(v48 + v203);
  v212 = *(v48 + BYTE1(v204));
  LODWORD(v206) = ((*(v59 + 8 * (*(v48 + BYTE1(v201)) ^ a2)) ^ ((*(v48 + BYTE1(v201)) ^ 0x5CLL) - (*(v48 + BYTE1(v201)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(v48 + BYTE2(v204)) ^ a2)) >> 24) ^ *(v59 + 8 * (v206 ^ a2) + 4);
  LODWORD(v194) = ((*(v59 + 8 * (*(v48 + BYTE1(v202)) ^ a2)) ^ ((*(v48 + BYTE1(v202)) ^ 0x5CLL) - (*(v48 + BYTE1(v202)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v205 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + BYTE2(v201)) ^ a2) + 4);
  LODWORD(v209) = ((*(v59 + 8 * (*(v48 + v201) ^ a2)) ^ ((*(v48 + v201) ^ 0x5CLL) - (*(v48 + v201) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (v209 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + (v202 >> 24)) ^ a2)) >> 16);
  v213 = v194 ^ 0x3C4FA6E ^ (*(v59 + 8 * (v207 ^ a2)) >> 16);
  v214 = v206 ^ 0x24F8B05 ^ (*(v59 + 8 * (v198 & 0xE6 ^ 0xF962B3F2 ^ ((v198 & 0x19 ^ 0x18) + ((2 * v198) | 0xFFFFFFDF) - 110971935 - 2 * (((v198 & 0x19 ^ 0x18) + ((2 * v198) | 0xFFFFFFDF) + 17) & 0x7962B3D8 ^ (v198 & 0x19 ^ 0x18) & 8)))) >> 16);
  v215 = ((*(v59 + 8 * (v211 ^ a2)) ^ ((v211 ^ 0x5C) - (v211 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v210 ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + BYTE2(v202)) ^ a2)) >> 24) ^ 0x913D5F55 ^ *(v59 + 8 * (v208 ^ a2) + 4);
  v216 = *(v48 + ((v194 ^ 0xFA6E ^ WORD1(*(v59 + 8 * (v207 ^ a2)))) >> 8));
  v217 = v209 ^ 0x52E56307 ^ (*(v59 + 8 * (v212 ^ a2)) >> 24);
  v218 = *(v48 + v217);
  v219 = *(v48 + ((((*(v59 + 8 * (v211 ^ a2)) ^ ((v211 ^ 0x5C) - (v211 ^ 0xFBF42515))) >> 8) ^ WORD1(*(v59 + 8 * (v210 ^ a2))) ^ (*(v59 + 8 * (*(v48 + BYTE2(v202)) ^ a2)) >> 24) ^ 0x5F55 ^ *(v59 + 8 * (v208 ^ a2) + 4)) >> 8));
  v220 = *(v48 + BYTE2(v213));
  v221 = *(v48 + BYTE1(v217));
  v222 = *(v48 + (v214 >> 24));
  v223 = *(v48 + (v215 >> 24));
  v224 = *(v48 + BYTE2(v215));
  v225 = *(v48 + BYTE2(v217));
  v226 = *(v48 + v214);
  v227 = *(v48 + (v213 >> 24));
  v228 = *(v48 + v213);
  v229 = *(v48 + BYTE1(v214));
  v230 = *(v48 + (v217 >> 24));
  v231 = *(v48 + v215);
  v232 = (*(v59 + 8 * (v216 ^ a2)) >> 24) ^ *(v59 + 8 * (v219 ^ a2) + 4) ^ ((*(v59 + 8 * (v218 ^ a2)) ^ ((v218 ^ 0x5C) - (v218 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x7C44721B ^ (*(v59 + 8 * (*(v48 + BYTE2(v214)) ^ a2)) >> 16);
  LODWORD(v228) = ((*(v59 + 8 * (v230 ^ a2)) ^ ((v230 ^ 0x5C) - (v230 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v228 ^ a2)) >> 24) ^ *(v59 + 8 * (v231 ^ a2) + 4);
  v233 = (*(v59 + 8 * (v224 ^ a2)) >> 24) ^ (*(v59 + 8 * (v220 ^ a2)) >> 16) ^ *(v59 + 8 * (v221 ^ a2) + 4) ^ 0x91F3625F ^ ((*(v59 + 8 * (v222 ^ a2)) ^ ((v222 ^ 0x5C) - (v222 ^ 0x2FFBF42515uLL))) >> 8);
  v234 = *(v48 + (((*(v59 + 8 * (v216 ^ a2)) >> 24) ^ *(v59 + 8 * (v219 ^ a2) + 4) ^ ((*(v59 + 8 * (v218 ^ a2)) ^ ((v218 ^ 0x5C) - (v218 ^ 0xFBF42515))) >> 8) ^ 0x721B ^ WORD1(*(v59 + 8 * (*(v48 + BYTE2(v214)) ^ a2)))) >> 8));
  LODWORD(v227) = *(v59 + 8 * (v225 ^ a2) + 4) ^ (*(v59 + 8 * (v223 ^ a2)) >> 24) ^ (*(v59 + 8 * (v227 ^ a2)) >> 16) ^ 0xC7AF54F7;
  v235 = *(v48 + (BYTE3(*(v59 + 8 * (v224 ^ a2))) ^ BYTE2(*(v59 + 8 * (v220 ^ a2))) ^ *(v59 + 8 * (v221 ^ a2) + 4) ^ 0x5F ^ ((*(v59 + 8 * (v222 ^ a2)) ^ ((v222 ^ 0x5C) - (v222 ^ 0x2515))) >> 8)));
  v236 = v227 ^ ((*(v59 + 8 * (v226 ^ a2)) ^ ((v226 ^ 0x5C) - (v226 ^ 0x2FFBF42515uLL))) >> 8);
  v237 = v228 ^ 0x4B26EEE6 ^ (*(v59 + 8 * (v229 ^ a2)) >> 16);
  v238 = *(v48 + (v236 >> 24));
  v239 = *(v48 + BYTE1(v233));
  v240 = *(v48 + (v228 ^ 0xE6u ^ BYTE2(*(v59 + 8 * (v229 ^ a2)))));
  v241 = *(v48 + ((v228 ^ 0xEEE6 ^ WORD1(*(v59 + 8 * (v229 ^ a2)))) >> 8));
  v242 = *(v48 + (v233 >> 24));
  v243 = *(v48 + BYTE2(v233));
  v244 = *(v48 + BYTE1(v236));
  LODWORD(v235) = *(v59 + 8 * (v235 ^ a2) + 4) ^ (*(v59 + 8 * (v234 ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(v48 + BYTE2(v236)) ^ a2)) ^ ((*(v48 + BYTE2(v236)) ^ 0x5CLL) - (*(v48 + BYTE2(v236)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v229) = *(v59 + 8 * (v241 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + v236) ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(v48 + (v232 >> 24)) ^ a2)) ^ ((*(v48 + (v232 >> 24)) ^ 0x5CLL) - (*(v48 + (v232 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v243 ^ a2)) >> 16);
  v245 = *(v59 + 8 * (v242 ^ a2)) >> 16;
  v246 = v235 ^ (*(v59 + 8 * (*(v48 + (v237 >> 24)) ^ a2)) >> 16) ^ 0x18CF8FB;
  v247 = v229 ^ 0x9A2B8DDD;
  v248 = *(v48 + (v235 ^ WORD1(*(v59 + 8 * (*(v48 + (v237 >> 24)) ^ a2))) ^ 0xFB));
  v249 = ((*(v59 + 8 * (v239 ^ a2)) ^ ((v239 ^ 0x5C) - (v239 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v238 ^ a2)) >> 16) ^ (*(v59 + 8 * (v240 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + BYTE2(v232)) ^ a2) + 4) ^ 0x75FDA48E;
  v250 = ((*(v59 + 8 * (*(v48 + v232) ^ a2)) ^ ((*(v48 + v232) ^ 0x5CLL) - (*(v48 + v232) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (*(v48 + BYTE2(v237)) ^ a2) + 4) ^ v245 ^ (*(v59 + 8 * (v244 ^ a2)) >> 24) ^ 0x862CEADC;
  v251 = *(v48 + v250);
  v252 = *(v48 + BYTE2(v249));
  v253 = *(v48 + BYTE1(v250));
  v254 = *(v48 + ((v235 ^ WORD1(*(v59 + 8 * (*(v48 + (v237 >> 24)) ^ a2))) ^ 0xF8FB) >> 8));
  v255 = *(v48 + (v229 ^ 0xDDu));
  v256 = *(v48 + BYTE2(v246));
  v257 = *(v48 + BYTE2(v250));
  v258 = *(v48 + (v249 >> 24));
  v259 = *(v48 + (v250 >> 24));
  v260 = *(v48 + v249);
  LODWORD(v249) = *(v59 + 8 * (*(v48 + BYTE1(v249)) ^ a2) + 4) ^ (*(v59 + 8 * (v248 ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(v48 + BYTE2(v247)) ^ a2)) ^ ((*(v48 + BYTE2(v247)) ^ 0x5CLL) - (*(v48 + BYTE2(v247)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v256) = *(v59 + 8 * (v257 ^ a2) + 4) ^ (*(v59 + 8 * (v255 ^ a2)) >> 24) ^ ((*(v59 + 8 * (v256 ^ a2)) ^ ((v256 ^ 0x5C) - (v256 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v258 ^ a2)) >> 16) ^ 0x422B4B91;
  LODWORD(v260) = (*(v59 + 8 * (*(v48 + (v246 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v259 ^ a2)) >> 16) ^ *(v59 + 8 * (v260 ^ a2) + 4);
  v261 = v249 ^ (*(v59 + 8 * (v251 ^ a2)) >> 16) ^ 0xE410230;
  v262 = *(a12 + (v249 ^ WORD1(*(v59 + 8 * (v251 ^ a2))) ^ 0x30));
  v263 = (*(v59 + 8 * (*(v48 + (v247 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v252 ^ a2)) >> 16) ^ *(v59 + 8 * (v253 ^ a2) + 4) ^ ((*(v59 + 8 * (v254 ^ a2)) ^ ((v254 ^ 0x5C) - (v254 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x256061CB;
  LODWORD(v131) = __ROR4__(__ROR4__(((v256 & 0x210337AE ^ 0x1771F20B) & (v256 & 0xDEFCC851 ^ 0x6593B7AE) | v256 & 0xC88C0850) ^ 0x4D3B6968, 16) ^ 0x70121A74, 16);
  v264 = v131 ^ 0x2CB76C87;
  v265 = v260 ^ ((*(v59 + 8 * (*(v48 + BYTE1(v247)) ^ a2)) ^ ((*(v48 + BYTE1(v247)) ^ 0x5CLL) - (*(v48 + BYTE1(v247)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0xC5AB868B;
  LODWORD(v251) = *(a12 + BYTE2(v265));
  v266 = *(a12 + BYTE2(v261));
  LODWORD(v257) = *(a12 + (v131 ^ 0x87u));
  v267 = *(a12 + (v260 ^ ((*(v59 + 8 * (*(v48 + BYTE1(v247)) ^ a2)) ^ ((*(v48 + BYTE1(v247)) ^ 0x5C) - (*(v48 + BYTE1(v247)) ^ 0x2515))) >> 8) ^ 0x8B));
  v268 = *(a12 + (v261 >> 24));
  v269 = *(a12 + v263) - ((2 * *(a12 + v263)) & 0xB8u) + 92;
  LODWORD(v251) = ((*(v59 + 8 * (v269 ^ 0x76)) ^ (v269 - (v269 ^ 0x452FFBF42549uLL))) >> 16) ^ ((*(v59 + 8 * (v262 ^ a2)) ^ ((v262 ^ 0x5C) - (v262 ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * ((-(v251 ^ 0x5C) ^ 0xE83A238 ^ (118 - (v251 ^ a2)) ^ ((v251 ^ 0x5C) + 243507768 - ((2 * (v251 ^ 0x5C)) & 0x70))) + 118) + 4);
  LODWORD(v255) = ((*(v59 + 8 * (*(a12 + BYTE1(v263)) ^ a2)) ^ ((*(a12 + BYTE1(v263)) ^ 0x5CLL) - (*(a12 + BYTE1(v263)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(a12 + (v265 >> 24)) ^ a2)) >> 24) ^ *(v59 + 8 * (*(a12 + BYTE1(v261)) ^ a2) + 4);
  v270 = *(v59 + 8 * ((((v257 ^ 0x5C) - (v257 ^ a2)) ^ 0xFFFFFFFC) + (v257 ^ 0x5C))) >> 24;
  v271 = v251 ^ 0xACD3F28D ^ (*(v59 + 8 * (*(a12 + BYTE2(v264)) ^ a2)) >> 24);
  v272 = *(a12 + BYTE2(v271));
  v273 = v255 ^ 0x1868EFDE ^ (*(v59 + 8 * (*(a12 + (v264 >> 24)) ^ a2)) >> 16);
  v274 = *(v59 + 8 * (v267 ^ a2) + 4) ^ ((*(v59 + 8 * (v266 ^ a2)) ^ ((v266 ^ 0x5C) - (v266 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(a12 + BYTE2(v263)) ^ a2)) >> 16) ^ 0xD9D77D13 ^ v270;
  v275 = *(a12 + ((v255 ^ 0xEFDE ^ WORD1(*(v59 + 8 * (*(a12 + (v264 >> 24)) ^ a2)))) >> 8));
  v276 = ((*(v59 + 8 * (v268 ^ a2)) ^ ((v268 ^ 0x5C) - (v268 ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (*(a12 + BYTE1(v265)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + (v263 >> 24)) ^ a2)) >> 16) ^ 0x38BF578D ^ (*(v59 + 8 * (*(a12 + BYTE1(v264)) ^ a2)) >> 24);
  v277 = *(a12 + ((((*(v59 + 8 * (v268 ^ a2)) ^ ((v268 ^ 0x5C) - (v268 ^ 0x2515))) >> 8) ^ *(v59 + 8 * (*(a12 + BYTE1(v265)) ^ a2) + 4) ^ WORD1(*(v59 + 8 * (*(a12 + (v263 >> 24)) ^ a2)))) ^ 0x8D ^ BYTE3(*(v59 + 8 * (*(a12 + BYTE1(v264)) ^ a2)))));
  v278 = *(a12 + (v251 ^ 0x8D ^ BYTE3(*(v59 + 8 * (*(a12 + BYTE2(v264)) ^ a2)))));
  LODWORD(v255) = *(v59 + 8 * (*(a12 + BYTE2(v273)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + BYTE1(v276)) ^ a2)) >> 16) ^ (*(v59 + 8 * (*(a12 + (v271 >> 24)) ^ a2)) >> 24);
  LODWORD(v264) = *(v59 + 8 * (*(a12 + BYTE2(v276)) ^ a2) + 4) ^ ((*(v59 + 8 * (v278 ^ a2)) ^ ((v278 ^ 0x5C) - (v278 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(a12 + (v273 >> 24)) ^ a2)) >> 16) ^ (*(v59 + 8 * (*(a12 + v274) ^ a2)) >> 24);
  LODWORD(v268) = *(v59 + 8 * (*(a12 + BYTE1(v271)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + (v276 >> 24)) ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(a12 + v273) ^ a2)) ^ ((*(a12 + v273) ^ 0x5CLL) - (*(a12 + v273) ^ 0x2FFBF42515uLL))) >> 8);
  v279 = ((*(v59 + 8 * (v272 ^ a2)) ^ ((v272 ^ 0x5C) - (v272 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v275 ^ a2)) >> 16) ^ *(v59 + 8 * (v277 ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + BYTE2(v274)) ^ a2)) >> 24) ^ 0x95EC20FC;
  v280 = *(v59 + 8 * (*(a12 + BYTE1(v274)) ^ a2)) >> 16;
  v281 = v264 ^ 0xFB042A9;
  v282 = ((*(v59 + 8 * (*(a12 + (v274 >> 24)) ^ a2)) ^ ((*(a12 + (v274 >> 24)) ^ 0x5CLL) - (*(a12 + (v274 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ v255 ^ 0x51FD8BCB;
  v283 = v268 ^ 0xD7323396 ^ ((v280 ^ 0xBAD0040B) + 1145333659 - 2 * ((v280 ^ 0xBAD0040B) & 0x4444679F ^ v280 & 4));
  LODWORD(v251) = *(a12 + ((((*(v59 + 8 * (v272 ^ a2)) ^ ((v272 ^ 0x5C) - (v272 ^ 0xFBF42515))) >> 8) ^ WORD1(*(v59 + 8 * (v275 ^ a2))) ^ *(v59 + 8 * (v277 ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + BYTE2(v274)) ^ a2)) >> 24) ^ 0x20FC) >> 8));
  LODWORD(v277) = *(a12 + ((((*(v59 + 8 * (*(a12 + (v274 >> 24)) ^ a2)) ^ ((*(a12 + (v274 >> 24)) ^ 0x5C) - (*(a12 + (v274 >> 24)) ^ 0xFBF42515))) >> 8) ^ v255 ^ 0x8BCB) >> 8));
  LODWORD(v268) = *(a12 + (v281 >> 24)) | (*(a12 + (v282 >> 24)) << 8) | (*(a12 + BYTE2(v283)) << 24);
  LODWORD(v282) = (*(a12 + BYTE2(v279)) << 24) | (*(a12 + BYTE2(v281)) << 8) | (*(a12 + BYTE2(v282)) << 16);
  LODWORD(v271) = v268 | (*(a12 + (v279 >> 24)) << 16);
  LODWORD(v279) = (*(a12 + v281) << 24) | (*(a12 + v279) << 8) | *(a12 + (((*(v59 + 8 * (*(a12 + (v274 >> 24)) ^ a2)) ^ ((*(a12 + (v274 >> 24)) ^ 0x5C) - (*(a12 + (v274 >> 24)) ^ 0x2515))) >> 8) ^ v255 ^ 0xCBu)) | (*(a12 + (v283 >> 24)) << 16);
  LODWORD(v268) = *(a12 + BYTE1(v281)) | (*(a12 + v283) << 24) | (v251 << 16);
  v284 = __ROR8__(a47 & 0xFFFFFFFFFFFFFFF8, 8) - 0x2607A7720729A79;
  v285 = __ROR8__(v284 ^ 0xDE361A1E0EB919D3, 8);
  v284 ^= 0x32CA3658F2D235ECuLL;
  v286 = (v285 + v284) ^ 0x3EC7945A9334A12DLL;
  v287 = v286 ^ __ROR8__(v284, 61);
  v288 = __ROR8__(v286, 8) + v287;
  v289 = v288 ^ __ROR8__(v287, 61);
  v290 = ((v289 ^ 0x4ABA94BA7BE94F4) + __ROR8__(v288 ^ 0x4ABA94BA7BE94F4, 8)) ^ 0x87C30A0A7B081733;
  *(&v291 + 1) = v289 ^ 0x4ABA94BA7BE94F4;
  *&v291 = v289;
  v292 = v290 ^ (v291 >> 61);
  v293 = (v292 + __ROR8__(v290, 8)) ^ 0x257DF8190A0FAA7CLL;
  v294 = v293 ^ __ROR8__(v292, 61);
  v295 = (__ROR8__(v293, 8) + v294) ^ 0x2E769D09049CAA6ALL;
  v296 = __ROR8__(v295, 8);
  v297 = v295 ^ __ROR8__(v294, 61);
  v298 = (v296 + v297) ^ 0xCAC8DE2EE114DF37;
  v299 = __ROR8__(v298, 8);
  v300 = (__ROR8__(a47 + 8, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v301 = v298 ^ __ROR8__(v297, 61);
  v302 = v300 ^ 0x32CA3658F2D235ECLL;
  v303 = (__ROR8__(v300 ^ 0xDE361A1E0EB919D3, 8) + (v300 ^ 0x32CA3658F2D235ECLL)) ^ 0x3EC7945A9334A12DLL;
  v304 = v303 ^ __ROR8__(v302, 61);
  v305 = (__ROR8__(v303, 8) + v304) ^ 0x4ABA94BA7BE94F4;
  *&v291 = __ROR8__(v304, 61);
  v306 = v305 ^ v291;
  v307 = ((v305 ^ v291) + (v305 << 56) + (v305 >> 8)) ^ 0x87C30A0A7B081733;
  v308 = v307 ^ __ROR8__(v306, 61);
  v309 = (__ROR8__(v307, 8) + v308) ^ 0x257DF8190A0FAA7CLL;
  v310 = v309 ^ __ROR8__(v308, 61);
  v311 = (__ROR8__(v309, 8) + v310) ^ 0x2E769D09049CAA6ALL;
  v312 = v311 ^ __ROR8__(v310, 61);
  v313 = (v312 + __ROR8__(v311, 8)) ^ 0xCAC8DE2EE114DF37;
  v314 = (__ROR8__(a47 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v315 = v314 ^ 0xDE361A1E0EB919D3;
  v314 ^= 0x32CA3658F2D235ECuLL;
  v316 = (__ROR8__(v315, 8) + v314) ^ 0x3EC7945A9334A12DLL;
  v317 = v316 ^ __ROR8__(v314, 61);
  v318 = (__ROR8__(v316, 8) + v317) ^ 0x4ABA94BA7BE94F4;
  v319 = v318 ^ __ROR8__(v317, 61);
  v320 = (__ROR8__(v318, 8) + v319) ^ 0x87C30A0A7B081733;
  v321 = v320 ^ __ROR8__(v319, 61);
  v322 = (__ROR8__(v320, 8) + v321) ^ 0x257DF8190A0FAA7CLL;
  v323 = v322 ^ __ROR8__(v321, 61);
  v324 = (v323 + __ROR8__(v322, 8)) ^ 0x2E769D09049CAA6ALL;
  v325 = ((v313 ^ __ROR8__(v312, 61)) + __ROR8__(v313, 8)) ^ 0x67C4AB124F7C297BLL;
  LOBYTE(v313) = 8 * (a47 & 7);
  v326 = ((v301 + v299) ^ 0x67C4AB124F7C297BLL) >> v313;
  v327 = v326 + 16 * (v325 << (v313 ^ 0x3Cu));
  v328 = v324 ^ __ROR8__(v323, 61);
  v329 = v328 + __ROR8__(v324, 8);
  v330 = (v325 >> v313) + 16 * (((__ROR8__(v329 ^ 0xCAC8DE2EE114DF37, 8) + (v329 ^ __ROR8__(v328, 61) ^ 0xAC8DE2EE114DF37)) ^ 0x7C4AB124F7C297BLL) << (v313 ^ 0x3Cu));
  v363 = HIDWORD(v330);
  v364 = v326;
  LODWORD(v275) = (v282 | *(a12 + BYTE1(v283))) ^ 0xF97DAAAC;
  LOBYTE(v283) = *(a48 + (v326 ^ a45 ^ 0x89)) ^ BYTE3(v275);
  v362 = v327 >> 8;
  v361 = v327 >> 16;
  v360 = HIDWORD(v327);
  LODWORD(v271) = v271 ^ 0x142ED2CE;
  LOBYTE(v254) = *(a48 + (BYTE4(v327) ^ a45 ^ 0xEBu)) ^ BYTE1(v271);
  v359 = HIWORD(v327);
  LOBYTE(v272) = *(a48 + (BYTE6(v327) ^ a45 ^ 0x15u)) ^ BYTE3(v271);
  v354 = HIBYTE(v327);
  v355 = v325 >> v313;
  LOBYTE(v326) = *(a48 + (HIBYTE(v327) ^ a45 ^ 0x51u)) ^ BYTE2(v271);
  LODWORD(v274) = v279 ^ 0x76337F68;
  LOBYTE(v251) = *(a48 + (((v325 >> v313) ^ a45) ^ 0x30u)) ^ ((v279 ^ 0x76337F68) >> 24);
  v357 = v327 >> 24;
  LOBYTE(v279) = v275 ^ *(a48 + (BYTE3(v327) ^ a45 ^ 0xA9u)) ^ 0x3B;
  v353 = v327 >> 40;
  LOBYTE(v327) = v271 ^ *(a48 + ((BYTE5(v327) ^ a45) ^ 0xCFu)) ^ 0x3B;
  v356 = v330 >> 8;
  v358 = v330 >> 16;
  LOBYTE(v313) = *(a48 + (BYTE1(v330) ^ a45 ^ 0x31u)) ^ BYTE2(v274);
  LOBYTE(v329) = *(a48 + ((BYTE2(v330) ^ a45) ^ 0xF3u)) ^ BYTE1(v274);
  v352 = v330 >> 24;
  LOBYTE(v275) = v274 ^ *(a48 + (BYTE3(v330) ^ a45 ^ 0x73u)) ^ 0x3B;
  v351 = v330 >> 40;
  v350 = HIWORD(v330);
  LOBYTE(v253) = *(a48 + (HIBYTE(v330) ^ a45 ^ 0xB8u));
  v331 = *(&off_100BFFA10 + v56 - 5989);
  v332 = *(v331 + (v283 ^ 0x3Bu));
  v333 = v279;
  v334 = *(v331 + ((*(a48 + (BYTE1(v327) ^ a45 ^ 0xD6u)) ^ BYTE2(v275)) ^ 0x3Bu));
  v335 = *(v331 + ((*(a48 + (BYTE2(v327) ^ a45 ^ 0xB6u)) ^ BYTE1(v275)) ^ 0x3Bu));
  v336 = *(v331 + v333);
  LODWORD(v324) = (v268 | (v277 << 8)) ^ 0xAA50052B;
  v337 = *(v331 + (v254 ^ 0x3Bu));
  v338 = *(v331 + v327);
  LODWORD(v277) = *(a48 + (((a45 ^ -a45 ^ (BYTE4(v330) - (a45 ^ BYTE4(v330)))) + BYTE4(v330)) ^ 0x5ALL)) ^ BYTE3(v324);
  LODWORD(v269) = *(a48 + (BYTE6(v330) ^ a45 ^ 0x6Du)) ^ (v324 >> 8);
  v339 = *(v331 + (v272 ^ 0x3Bu));
  v340 = *(v331 + (v326 ^ 0x3Bu));
  v341 = *(v331 + (v251 ^ 0x3Bu));
  LOBYTE(v253) = v324 ^ v253 ^ 0x3B;
  v342 = *(v331 + (v313 ^ 0x3Bu));
  v343 = *(v331 + (v329 ^ 0x3Bu));
  v344 = *(v331 + v275);
  v345 = *(v331 + ((*(a48 + ((BYTE5(v330) ^ a45) ^ 0xEFu)) ^ BYTE2(v324)) ^ 0x3Bu));
  LODWORD(v313) = *(v331 + (v277 ^ 0x3Bu));
  LODWORD(v275) = *(v331 + (v269 ^ 0x3Bu));
  LODWORD(v331) = *(v331 + v253);
  *(a47 + 12) = v313 ^ (v313 >> 4) ^ 0x75;
  *(a47 + 14) = v275 ^ (v275 >> 4) ^ 0x75;
  *(a47 + 15) = v331 ^ (v331 >> 4) ^ 0x75;
  if (a13 < 0xB6FFED01 != (a46 - 1224741615) < 0xB6FFED01)
  {
    v346 = a13 < 0xB6FFED01;
  }

  else
  {
    v346 = a46 - 1224741615 < a13;
  }

  *a47 = v332 ^ (v332 >> 4) ^ 0x75;
  *(a47 + 4) = v337 ^ (v337 >> 4) ^ 0x75;
  *(a47 + 1) = v334 ^ (v334 >> 4) ^ 0x75;
  *(a47 + 2) = v335 ^ (v335 >> 4) ^ 0x75;
  *(a47 + 3) = v336 ^ (v336 >> 4) ^ 0x75;
  *(a47 + 6) = v339 ^ (v339 >> 4) ^ 0x75;
  *(a47 + 5) = v338 ^ (v338 >> 4) ^ 0x75;
  v347 = v340 ^ (v340 >> 4) ^ 0x75;
  *(a47 + 7) = v347;
  v348 = v342 ^ (v342 >> 4) ^ 0x75;
  *(a47 + 9) = v348;
  *(a47 + 8) = v341 ^ (v341 >> 4) ^ 0x75;
  *(a47 + 10) = v343 ^ (v343 >> 4) ^ 0x75;
  *(a47 + 11) = v344 ^ (v344 >> 4) ^ 0x75;
  *(a47 + 13) = v345 ^ (v345 >> 4) ^ 0x75;
  LODWORD(a16) = v56 - 4846;
  return (*(v57 + 8 * (v56 ^ (14128 * v346))))(v334 ^ (v334 >> 4) ^ 0x75, a2, v344, v345, v335 ^ (v335 >> 4) ^ 0x75, v347, v348, 117, a9, a10, a11, a12, a13, a14, a15, a16, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, a28, v361, v362, v363, v364, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

void sub_10004BEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  a17 = a14;
  a19 = (v21 + v19 + 2046) ^ (1358806181 * ((-2041468252 - (&a16 | 0x8651AAA4) + (&a16 | 0x79AE555B)) ^ 0x468139D8));
  a16 = 0;
  (*(v20 + 8 * (v19 ^ 0xD305BEDA)))(&a16);
  JUMPOUT(0x1000483D8);
}

void sub_10004BF38()
{
  if (v3 == 203186117 || v3 == 203186114)
  {
    *(v4 - 128) = ((v2 - 57) & 0x9F ^ 0x35) + (HIBYTE(v1) ^ 0xB4) - 2 * ((((v2 + 115) | 0x82) + 107) & HIBYTE(v1) ^ (HIBYTE(v1) ^ 0xB4) & 0x3E);
    *(v4 - 127) = (BYTE6(v1) ^ 0x6E) - 2 * ((BYTE6(v1) ^ 0x6E) & 0x3D ^ BYTE6(v1) & 1) + 60;
    *(v4 - 126) = (BYTE5(v1) ^ 0x31) - ((2 * (BYTE5(v1) ^ 0x31)) & 0x78) + 60;
    *(v4 - 125) = (BYTE4(v1) ^ 0x7E) + (~(2 * (BYTE4(v1) ^ 0x7E)) | 0x87) + 61;
    *(v4 - 124) = (BYTE3(v1) ^ 0x75) - ((2 * (BYTE3(v1) ^ 0x75)) & 0x78) + 60;
    *(v4 - 123) = (BYTE2(v1) ^ 0x35) - ((2 * (BYTE2(v1) ^ 0x35)) & 0x78) + 60;
    *(v4 - 122) = (BYTE1(v1) ^ 0xB0) + ~(2 * ((BYTE1(v1) ^ 0xB0) & 0x3F ^ BYTE1(v1) & 3)) + 61;
    *(v4 - 121) = v1 ^ 0x48;
    (*(v0 + 8 * ((7938 * ((((v2 - 57) & 0x9F ^ 0x35) + (HIBYTE(v1) ^ 0xB4) - 2 * ((((v2 + 115) | 0x82) + 107) & HIBYTE(v1) ^ (HIBYTE(v1) ^ 0xB4) & 0x3E)) == 60)) ^ (v2 - 2713))))();
  }

  else
  {
    sub_100105F7C();
  }
}

uint64_t sub_10004C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, uint64_t a21, int a22, char a23, __int16 a24, char a25, int a26, int a27, unsigned int a28, uint64_t a29, char *a30, unsigned int a31, char *a32)
{
  a31 = (v32 + 1305605459) ^ (1358806181 * ((&a27 & 0xE1200228 | ~(&a27 | 0xE1200228)) ^ 0x21F09154));
  a29 = a16;
  a30 = &a25;
  a32 = &a23;
  (*(v34 + 8 * (v32 + 7008)))(&a27);
  a31 = (v32 + 660) ^ (1710126949 * (((&a27 | 0x6D4AAB21) - &a27 + (&a27 & 0x92B554D8)) ^ 0x5F51F0B1));
  a29 = a16;
  a30 = &a18;
  a32 = &a20;
  (*(v34 + 8 * (v32 ^ 0x2F1D)))(&a27);
  a28 = (v32 + 554) ^ (33731311 * (&a27 ^ 0x39F6CA23));
  a29 = a16;
  a30 = &a15;
  (*(v34 + 8 * (v32 ^ 0x2F1B)))(&a27);
  LODWORD(a30) = v32 - 2008441969 * ((((2 * (&a27 ^ 0x3AA158AD)) | 0x4BA54DA2) - (&a27 ^ 0x3AA158AD) + 1512921391) ^ 0xD7EAAA72) + 2987;
  a29 = a16;
  v35 = (*(v34 + 8 * (v32 + 6953)))(&a27);
  return (*(v34 + 8 * ((6460 * (a27 == ((v32 - 358) ^ v33) + v32 - 22)) ^ v32)))(v35);
}

uint64_t sub_10004C4E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return sub_10008EBFC(a1, 197499219);
}

void sub_10004C500(_DWORD *a1)
{
  v1 = 33731311 * ((2 * (a1 & 0xC4FEB5) - a1 + 2134573386) ^ 0x46CDCB69);
  v2 = a1[3] - v1;
  v3 = a1[2] - v1;
  v4 = *a1 ^ v1;
  v5 = a1[4] + v1;
  v6 = a1[1] + v1;
  v7 = *(&off_100BFFA10 + (v2 ^ 0x85D));
  *(v7 - 1) = v3;
  *v7 = v4;
  v7[1] = v5;
  v7[2] = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = 1934676430 - 33731311 * (&a10 ^ 0x39F6CA23);
  v12 = (*(v11 + 76984))(&a10);
  return (*(v11 + 8 * ((5449 * (a10 == 16257999)) ^ 0x7CAu)))(v12);
}

uint64_t sub_10004C6D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(v6 + 8 * (v4 + 7755));
  v9 = v7(v5);
  return sub_100173328(v9, v10, v11, a4);
}

uint64_t sub_10004C718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v25 = ((((2 * &a16) | 0x25AEAC8) - &a16 - 19756388) ^ 0x5944A606) * v21;
  a20 = -654855621 - v25;
  a21 = v25 + v24 + 1674571962;
  a17 = v25 - 1940530245;
  a18 = a14;
  a19 = &a12;
  v26 = (*(v23 + 8 * (v24 ^ 0x3E78)))(&a16);
  return (*(v23 + 8 * ((14905 * (a16 == ((10 * (v24 ^ 0x1B91)) ^ (v22 - 970)))) ^ v24)))(v26);
}

uint64_t sub_10004C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  v22 = v21 & 0x2FCD;
  v23 = 1875091903 * (((&a13 | 0xA51219CB) - &a13 + (&a13 & 0x5AEDE630)) ^ 0x93679A48);
  a14 = (v19 ^ 0xAD9EB7BA) + ((2 * v19) & 0x5B3D6F74) + 1920859888 + v23;
  a15 = v23 + v22 + 4707;
  a16 = a11;
  (*(v20 + 8 * (v22 + 6628)))(&a13);
  v24 = 1824088897 * (((&a13 | 0x91B03F5F) + (~&a13 | 0x6E4FC0A0)) ^ 0xC9D9EC3C);
  a16 = v17;
  a17 = a11;
  a15 = ((2 * v18) & 0xBF69F5FE) - v24 + (v18 ^ 0x5FB4E95C ^ (v22 + 2010)) - 286265461;
  a13 = v24 + v22 + 740;
  v25 = (*(v20 + 8 * (v22 ^ 0x2E56u)))(&a13);
  return (*(v20 + 8 * ((12246 * (a14 == 16257999)) ^ v22)))(v25);
}

uint64_t sub_10004CA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, int a22)
{
  *a6 = 0;
  *a7 = 0;
  a21 = 476323082 - 1710126949 * ((&a21 & 0x46939D0C | ~(&a21 | 0x46939D0C)) ^ 0x8B773963);
  v23 = (*(v22 + 77088))(&a21);
  return (*(v22 + 8 * ((3407 * (a22 == 16257999)) ^ 0x15C0u)))(v23);
}

uint64_t sub_10004CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 290 * (v4 ^ 0x1F97);
  STACK[0x978] = v5;
  v7 = STACK[0x3F0];
  STACK[0x980] = STACK[0x3F0];
  return (*(a4 + 8 * (((v5 - v7 > 9) * (5 * (v6 ^ 0x5DE) + 5730)) ^ v6)))();
}

uint64_t sub_10004CC10(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 17168)
  {
    return (*(a71 + 8 * ((v74 + 63) ^ (15069 * (v71 == a2 + 4)))))();
  }

  if (v72 == 20706 || v72 == 33980)
  {
    return sub_100080640(a1);
  }

  return (*(a71 + 8 * ((5209 * (v73 == 13 * ((v74 - 959594696) & 0x39322B1F ^ 0x72) + 16249978)) ^ (v74 - 2801))))();
}

uint64_t sub_10004CD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((((&a14 | 0xEE129C44) ^ 0xFFFFFFFE) - (~&a14 | 0x11ED63BB)) ^ 0xA1EEFBCD) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((8873 * (a15 == 16257999)) ^ v17)))(v18);
}

uint64_t sub_10004CD98(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB48] = v1 ^ 0xBC59953u;
  *(a1 + 16) = ((v2 - 2046132745) & 0x79F577DB) + 197499219 + (((v1 ^ 0x9C7D4E64) + 1669509532) ^ ((v1 ^ 0xE7EF5CE6) + 403743514) ^ ((v1 ^ 0x70578BD1) - 1884794865 + (v2 ^ 0x28A8))) - 593;
  v5 = (*(v3 + 8 * (v2 ^ 0x292A)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((86 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_10004D06C()
{
  v3 = STACK[0x740];
  v4 = &STACK[0xB60] + STACK[0x740];
  STACK[0x6D8] = (v4 + 32);
  STACK[0x680] = (v4 + 48);
  STACK[0x740] = ((v1 - 344) ^ (v1 - 848984910) & 0x329A67FFu ^ 0x129ELL) + v3;
  v5 = (*(v2 + 8 * (v1 + 3165)))(v4, 0, 32);
  STACK[0x8A8] = 0;
  STACK[0x5A0] = v0;
  return (*(v2 + 8 * (v1 | (8 * (v0 == 0)))))(v5);
}

uint64_t sub_10004D0F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = LODWORD(STACK[0x340]);
  if (v74 == 17168)
  {
    return (*(a72 + 8 * ((v73 - 1558) ^ (2096 * (v72 == a4 + 4)))))();
  }

  if (v74 == 20706)
  {
    return (*(a72 + 8 * ((2390 * (v72 == 166 * (v73 ^ 0x17DF) + 197494579)) ^ (v73 - 1558))))();
  }

  if (v74 != 33980)
  {
    return sub_100034AA8();
  }

  STACK[0x5C0] = STACK[0x588] + STACK[0x2A0];
  return sub_100053030(2 * (v73 ^ 0x19CCu));
}

uint64_t sub_10004D230(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 ^ 0x6F0)))(26, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((869 * ((v1 + 2005381796) & 0x88782F7F ^ 0x571)) ^ 0x17CF)) ^ v1)))();
}

uint64_t sub_10004D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a13;
  a18 = &a11;
  a16 = (v20 - 2175) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  (*(v18 + 8 * ((v20 - 1065) ^ 0x359B)))(&a15);
  LODWORD(a18) = v20 - 1065 - 2008441969 * (((&a15 | 0xE368383B) - &a15 + (&a15 & 0x1C97C7C0)) ^ 0xABF16C35) + 1323;
  a17 = a13;
  v21 = (*(v18 + 8 * (v20 + 4224)))(&a15);
  return (*(v18 + 8 * (((a15 == v19) * (v20 ^ 0x1C24)) ^ (v20 - 1065))))(v21);
}

uint64_t sub_10004D3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (v25 + 1347) ^ (((((2 * &a20) | 0x8A89DA6E) - &a20 + 985338569) ^ 0xF75FB6A7) * v28);
  a25 = &a18;
  a22 = a11;
  a23 = &a13;
  (*(v26 + 8 * (v25 + 7596)))(&a20);
  a21 = (v25 + 1241) ^ (33731311 * (((&a20 | 0xF58CCE3B) + (~&a20 | 0xA7331C4)) ^ 0xCC7A0419));
  a22 = a11;
  a23 = &a16;
  (*(v26 + 8 * (v25 ^ 0x22AA)))(&a20);
  a22 = a11;
  LODWORD(a23) = v25 - 2008441969 * ((2 * (&a20 & 0x49839AB0) - &a20 + 914122057) ^ 0x7EE53147) + 3674;
  v29 = (*(v26 + 8 * (v25 ^ 0x2258)))(&a20);
  return (*(v26 + 8 * ((45 * (a20 != ((v25 - 594) ^ (v27 + 751)))) ^ v25)))(v29);
}

uint64_t sub_10004D500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, char *a21)
{
  a18 = a9;
  a19 = &a10;
  a21 = &a12;
  a20 = (v22 + 1305601260) ^ (1358806181 * (((&a16 | 0xB144C984) - (&a16 & 0xB144C984)) ^ 0x8E6BA507));
  (*(v21 + 8 * (v22 + 2809)))(&a16);
  a17 = (v22 - 3645) ^ (33731311 * ((((2 * &a16) | 0x2BE0538A) - &a16 + 1779422779) ^ 0xAC06E3E6));
  a18 = a9;
  a19 = &a14;
  (*(v21 + 8 * (v22 + 2704)))(&a16);
  LODWORD(a19) = v22 - 1476 - 2008441969 * ((2 * (&a16 & 0x451A000) - &a16 - 72458242) ^ 0xB3370BF0) + 264;
  a18 = a9;
  v23 = (*(v21 + 8 * ((v22 - 1476) ^ 0x308E)))(&a16);
  return (*(v21 + 8 * ((2414 * (a16 == ((v22 - 5825) ^ 0x1EC1) + ((v22 - 5825) | 0x10E0) + 16245758)) ^ (v22 - 1476))))(v23);
}

uint64_t sub_10004D8BC(uint64_t a1)
{
  v3 = STACK[0x3F8] - 8438;
  v4 = STACK[0x3F8] - 59;
  LODWORD(STACK[0x84C]) = v1;
  return (*(v2 + 8 * ((1984 * (((v3 ^ (a1 == 0)) & 1) == 0)) ^ v4)))();
}

uint64_t sub_10004D904()
{
  v2 = STACK[0x3F8] ^ 0x2B9E;
  v3 = (*(v1 + 8 * (v2 + 5604)))((((v2 - 3006) | 0x2020u) + 197489971) ^ LODWORD(STACK[0x964]), 0x100004077774924);
  v4 = STACK[0x400];
  STACK[0xA68] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v0 - 5;
  }

  LODWORD(STACK[0xA74]) = v5;
  return (*(v4 + 8 * (((v3 == 0) * ((v2 - 1292162763) & 0x4D04D7EF ^ 0x10AC)) ^ v2)))();
}

uint64_t sub_10004D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  *(v12 - 116) = v11 - 1875091903 * ((((v12 - 120) | 0xCB082F71) + (~(v12 - 120) | 0x34F7D08E)) ^ 0xFD7DACF3) + 960663670;
  (*(v10 + 8 * (v11 ^ 0x35CD)))(v12 - 120);
  v13 = 1875091903 * ((((v12 - 120) | 0xE7344200) - (v12 - 120) + ((v12 - 120) & 0x18CBBDF8)) ^ 0xD141C183);
  *(v12 - 120) = (v11 - 119670823) ^ v13;
  *(v12 - 116) = v13 ^ 0x5D845C70;
  v14 = (*(v10 + 8 * (v11 ^ 0x35CE)))(v12 - 120);
  return (*(v10 + 8 * ((((a10 >> 7) ^ 1) * (((304 * (v11 ^ 0x1009) - 1203767081) & 0x47C00720) - 1786)) ^ v11)))(v14);
}

uint64_t sub_10004DAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v25 = ((&a18 & 0xE31E131 | ~(&a18 | 0xE31E131)) ^ 0xA9A7CDAC) * v23;
  a22 = -654855621 - v25;
  a23 = v25 + a12 + 1674575388;
  a19 = v25 + 739404086;
  a20 = a15;
  a21 = &a14;
  v26 = (*(v24 + 8 * (a12 + 5882)))(&a18);
  return (*(v24 + 8 * (((a18 == (a12 ^ 0xF81D41)) * (((a12 - 3198) | 0x4E5) ^ 0x2AFF)) ^ a12)))(v26);
}

uint64_t sub_10004DBEC()
{
  v5 = *(v0 + 8);
  v6 = 1875091903 * ((2 * ((v4 - 120) & 0x45C0B2B0) - (v4 - 120) - 1170256565) ^ 0x8C4ACEC8);
  *(v4 - 120) = (v2 - 119670970) ^ v6;
  *(v4 - 116) = v6 ^ (v3 + 450324997);
  v7 = (*(v1 + 8 * (v2 ^ 0x3563)))(v4 - 120);
  return (*(v1 + 8 * (((*v5 >> 7) ^ 1 | (4 * ((*v5 >> 7) ^ 1))) ^ (v2 + 3408))))(v7);
}

void sub_10004DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10004DC68@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - (~((v1 - 1411 + ((a1 + 588548505) ^ (v1 - 1412))) ^ (((a1 + 588548505) ^ 8) + 9) ^ (8 - ((a1 + 588548505) ^ 6))) & 0xF);
  LODWORD(STACK[0x668]) = v3;
  return (*(v2 + 8 * ((3392 * ((a1 ^ 0x7A7FBFFFCBA13F97) + ((2 * a1) & 0x197427F2ELL) + ((2 * v3) & 0xFFFFFFFFFFFFFFEFLL) + (v3 ^ 0x5FEBFD6CCC8D7C37) + 0x2594429367D14432 < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_10004DDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 + 1398595235) - 6182 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((v4 + v3 + 1168) | (8 * ((v2 & 0xFFFFFFE0) != 32)))))();
}

uint64_t sub_10004DE04()
{
  v5 = STACK[0x994];
  STACK[0x790] = v0;
  LODWORD(STACK[0xA08]) = v3;
  LOWORD(STACK[0xA0E]) = v2;
  LODWORD(STACK[0xA10]) = v5;
  LODWORD(STACK[0xA14]) = STACK[0x8B4];
  STACK[0xA18] = STACK[0x540];
  STACK[0x5D8] = STACK[0x5C0];
  return (*(v4 + 8 * (((((v0 == 0) ^ (v1 + 105)) & 1) * (((v1 - 4477) | 0x1200) ^ 0x17CA)) | v1)))();
}

uint64_t sub_10004DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0xCu) + 1065 - 3676) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  v7 = ((v4 ^ 0xFFFFF5C6) & v2) - 8 != v3;
  return (*(v5 + 8 * (((4 * v7) | (8 * v7)) ^ v4 ^ 0xC)))();
}

uint64_t sub_10004DED8()
{
  v1 = (STACK[0x3F8] + 111728285) & 0xF9571F6F;
  LODWORD(STACK[0x46C]) = v0;
  v2 = STACK[0x400];
  STACK[0x440] = STACK[0x9F0];
  v4 = LODWORD(STACK[0x9E4]) != 197499219 || LOWORD(STACK[0x9EA]) != (((v1 - 5095) | 0x1118) ^ 0x93E2);
  return (*(v2 + 8 * ((124 * v4) ^ v1)))();
}

uint64_t sub_10004DF08()
{
  v4 = (v0 - 1764045386) & 0x69253FEB;
  v9 = v7;
  v10 = (v0 + 6226) ^ ((((&v8 | 0x2817D5D5) + (~&v8 | 0xD7E82A2A)) ^ 0x707E06B6) * v2);
  (*(v1 + 8 * (v0 ^ 0x2DC4)))(&v8);
  v10 = (v4 + 2736) ^ (((1689196937 - (&v8 | 0x64AF1989) + (&v8 | 0x9B50E676)) ^ 0xC3393514) * v2);
  v9 = v6;
  (*(v1 + 8 * (v4 + 4002)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_10004E028@<X0>(int a1@<W8>)
{
  v2 = STACK[0x438];
  STACK[0x530] = *(v1 + 8 * a1);
  return sub_100149B00(v2);
}

uint64_t sub_10004E05C()
{
  v2 = *(STACK[0x3E8] + 24);
  STACK[0x438] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 168468899) & 0xF5F54D7E) + 3661) ^ 0x17C9)) | v0)))();
}

uint64_t sub_10004E18C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4B8] = a1;
  v3 = (*(v2 + 8 * (v1 ^ 0x22BB)))(32, 0x103004054B5FA7DLL);
  STACK[0x7F0] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 1073599322) & 0x3FFDEF76) - 8959)) ^ v1)))();
}

uint64_t sub_10004E23C()
{
  v8 = v5;
  v9 = (v3 + 6812) ^ (((2 * (&v7 & 0x68455680) - &v7 + 398109049) ^ 0x4FD37A1B) * v1);
  (*(v0 + 8 * (v3 ^ 0x2072u)))(&v7);
  v9 = ((v3 ^ 0x1190) + 3116) ^ (((((&v7 | 0xA688A716) ^ 0xFFFFFFFE) - (~&v7 | 0x597758E9)) ^ 0x11E8B8B) * v1);
  v8 = v6;
  (*(v0 + 8 * ((v3 ^ 0x1190u) + 4382)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_10004E348@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v19 = a1 + 799180585;
  v20 = ((a1 + 799180585) ^ 0x98319708) & (2 * ((a1 + 799180585) & 0xC2B5D7A9)) ^ (a1 + 799180585) & 0xC2B5D7A9;
  v21 = ((2 * ((a1 + 799180585) ^ 0x19519358)) ^ 0xB7C889E2) & ((a1 + 799180585) ^ 0x19519358) ^ (2 * ((a1 + 799180585) ^ 0x19519358)) & 0xDBE444F0;
  v22 = v21 ^ 0x48244411;
  v23 = (v21 ^ 0x13C000E0) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x6F9113C4) & v22 ^ (4 * v22) & 0xDBE444F0;
  v25 = (v24 ^ 0x4B8000C0) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x90644431)) ^ 0xBE444F10) & (v24 ^ 0x90644431) ^ (16 * (v24 ^ 0x90644431)) & 0xDBE444F0;
  v27 = v25 ^ 0xDBE444F1 ^ (v26 ^ 0x9A444400) & (v25 << 8);
  v28 = a2 ^ 0x3D549628 ^ (v17 - ((2 * v15) & 0xB5A30002) + 1294589651);
  v29 = v14 == LODWORD(STACK[0x4A8]);
  v30 = a2 ^ 0x357916B8;
  LODWORD(STACK[0x508]) = v30;
  LODWORD(STACK[0x510]) = v30 + v13 + v28;
  LODWORD(STACK[0x520]) = v28 + 2098573322;
  LODWORD(STACK[0x518]) = (v19 ^ (2 * ((v27 << 16) & 0x5BE40000 ^ v27 ^ ((v27 << 16) ^ 0x44F10000) & (((v26 ^ 0x41A000E1) << 8) & 0x5BE40000 ^ 0x1BA00000 ^ (((v26 ^ 0x41A000E1) << 8) ^ 0x64440000) & (v26 ^ 0x41A000E1)))) ^ 0x2FA0165B ^ (v16 - ((2 * v16) & 0xB63A9020) - 618838000)) + 2098573322;
  return (*(v18 + 8 * (((((((a13 ^ 0x2084) - 8704) | 0x8B0) ^ 0xFFFFF8F2) + (((a13 ^ 0x2084) - 1322178063) & 0x4ECEBFCE)) * v29) ^ a13 ^ 0x2084)))();
}

uint64_t sub_10004E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, unsigned int a23)
{
  a22 = a19;
  a23 = (v23 + 4039) ^ (1824088897 * ((&a21 & 0xF74FE41D | ~(&a21 | 0xF74FE41D)) ^ 0x50D9C880));
  v25 = (*(v24 + 8 * (v23 ^ 0x355F)))(&a21);
  return sub_10004E688(v25);
}

uint64_t sub_10004E688()
{
  v7 = (v2 + 2778) ^ ((((v6 | 0xA4D38B2B) + (~v6 | 0x5B2C74D4)) ^ 0xFCBA5848) * v1);
  v6[1] = v5;
  (*(v3 + 8 * (v2 ^ 0x304C)))(v6);
  return (v0 - 16257999);
}

uint64_t sub_10004E728@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 ^ 0xA50;
  (*(v2 + 8 * (v1 ^ 0x34CD)))(a1);
  v4 = STACK[0x400];
  *(STACK[0x8A0] + 24) = 0;
  v5 = (*(v4 + 8 * (v3 ^ 0x3E9D)))();
  v6 = STACK[0x400];
  STACK[0x8A0] = 0;
  return (*(v6 + 8 * ((((63 * (((v3 ^ 0x166F) - 546559351) & 0x2093DDBF ^ 0x1528)) ^ 0x83D) * (*(STACK[0x5D8] + 5) == 0)) ^ v3 ^ 0x166F)))(v5);
}

uint64_t sub_10004E7CC(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int64x2_t a8)
{
  v28 = v10 - 8;
  v29.i64[0] = v11 + v28 + v13 + 8;
  v29.i64[1] = v11 + v28 + 12;
  v30.i64[0] = v11 + v28 + 17;
  v30.i64[1] = v11 + v28 + 16;
  v31.i64[0] = v11 + v28 + 15;
  v31.i64[1] = v11 + v28 + 14;
  v32.i64[0] = v11 + v28 + 11;
  v32.i64[1] = v11 + v28 + 10;
  v33 = vandq_s8(v32, a1);
  v34 = vandq_s8(v31, a1);
  v35 = vandq_s8(v30, a1);
  v36 = vandq_s8(v29, a1);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), a3);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a3);
  v41 = veorq_s8(v40, a4);
  v42 = veorq_s8(v39, a4);
  v43 = veorq_s8(v39, a5);
  v44 = veorq_s8(v40, a5);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43), a6);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44), a6);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v48 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v49 = veorq_s8(v45, v47);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), a7), v51), a8), v15);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), a7), v50), a8), v15);
  v54 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = vaddq_s64(v57, v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v59, vandq_s8(vaddq_s64(v59, v59), v16)), v17), v18);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(v58, vandq_s8(vaddq_s64(v58, v58), v16)), v17), v18);
  v62 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), v19);
  v68 = veorq_s8(v66, v19);
  v69 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, v20), vorrq_s8(v73, v21)), v21), v22);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, v20), vorrq_s8(v74, v21)), v21), v22);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), v23);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78), v23);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v86 = vaddq_s64(v38, a3);
  v87 = veorq_s8(vaddq_s64(v84, v82), v24);
  v88 = veorq_s8(vaddq_s64(v85, v83), v24);
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, v25), vorrq_s8(v88, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, v25), vorrq_s8(v87, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v89 = veorq_s8(v86, a4);
  v90 = veorq_s8(v86, a5);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), a6);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), a7), v93), a8), v15);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v16)), v17), v18);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v19);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v20), vorrq_s8(v101, v21)), v21), v22);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v23);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL))), v24);
  v106 = vaddq_s64(v37, a3);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v25), vorrq_s8(v105, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v107 = veorq_s8(v106, a4);
  v108 = veorq_s8(v106, a5);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a6);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), a7), v111), a8), v15);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v16)), v17), v18);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v19);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v20), vorrq_s8(v119, v21)), v21), v22);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v23);
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL))), v24);
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v25), vorrq_s8(v123, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  *(v11 + v28 + 10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v12 + v28)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v125, *&STACK[0x3E0])));
  return (*(STACK[0x400] + 8 * (((v9 == v28) * v14) ^ v8)))();
}

uint64_t sub_10004E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, char a16, int a17, uint64_t a18, char *a19, int a20, char *a21)
{
  a20 = (v22 + 1470) ^ (((&a17 - 1842658280 - 2 * (&a17 & 0x922B4418)) ^ 0xA0301F88) * v23);
  a21 = &a13;
  a18 = a10;
  a19 = &a16;
  v24 = (*(v21 + 8 * (v22 + 7719)))(&a17);
  return (*(v21 + 8 * ((9053 * (a17 == ((v22 + 1905) ^ 0xF81D76))) ^ v22)))(v24);
}

uint64_t sub_10004E884()
{
  v6 = (v0 - 32);
  v7 = (v2 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 != 32) * v4) ^ v3)))();
}

uint64_t sub_10004E894@<X0>(uint64_t a1@<X1>, int a2@<W5>, unsigned int a3@<W8>)
{
  v10 = v9 + (v6 & 0xF) * v7 - ((4469269 * (v9 + (v6 & 0xFu) * v7)) >> 32) * a2;
  v11 = STACK[0x94C];
  LOBYTE(STACK[0x94C]) = *(a1 + v10);
  *(a1 + v10) = v11;
  LOBYTE(v10) = STACK[0xAA5];
  v12 = v9 + a3 % 0xF * v7 + 345 - ((4469269 * (v9 + a3 % 0xF * v7 + 345)) >> 32) * a2;
  LOBYTE(STACK[0xAA5]) = *(a1 + v12);
  v13 = (v5 % 0xE) | 0x220;
  *(STACK[0x5A0] + v12) = v10;
  LOBYTE(v10) = STACK[0x83D];
  v14 = a3 + 1320393833;
  LOBYTE(STACK[0x83D]) = *(STACK[0x5A0] + (v13 * v7 - ((4469269 * (v13 * v7)) >> 32) * a2));
  v15 = (((v5 % 0xE) & 9 ^ v7) + ((v5 % 0xE) & 9)) * v13;
  *(STACK[0x5A0] + (v15 - ((4469269 * v15) >> 32) * a2)) = v10;
  v16 = 345 * (v4 % 0xD) + 188025 - 961 * ((4469269 * (345 * (v4 % 0xD) + 188025)) >> 32);
  v17 = v6 ^ v5;
  LOBYTE(v15) = STACK[0x996];
  v18 = v6 - 1659356021;
  LOBYTE(STACK[0x996]) = *(STACK[0x5A0] + v16);
  *(STACK[0x5A0] + v16) = v15;
  v19 = v4 - a3;
  v20 = v17 + v18;
  LOBYTE(v16) = STACK[0x72E];
  v21 = v18 - v14;
  v22 = v20 + v14;
  v23 = 345 * ((v18 - v14) % 0xCu) + 188370 - 961 * ((4469269 * (345 * ((v18 - v14) % 0xCu) + 188370)) >> 32);
  v24 = (v20 + v14) % 0xB;
  v25 = v19 - 1319245151;
  LOBYTE(STACK[0x72E]) = *(STACK[0x5A0] + v23);
  *(STACK[0x5A0] + v23) = v16;
  v26 = 345 * v24 + 188715 - 961 * ((4469269 * (345 * v24 + 188715)) >> 32);
  LOBYTE(v15) = STACK[0x887];
  LOBYTE(STACK[0x887]) = *(STACK[0x5A0] + v26);
  v27 = v20 + v21;
  v28 = v22 + v20 + v21;
  *(STACK[0x5A0] + v26) = v15;
  v29 = 345 * (v20 % 0xA) + 189060 - 961 * ((4469269 * (345 * (v20 % 0xA) + 189060)) >> 32);
  LOBYTE(v23) = STACK[0x9E0];
  LOBYTE(STACK[0x9E0]) = *(STACK[0x5A0] + v29);
  *(STACK[0x5A0] + v29) = v23;
  v30 = v22 ^ v21;
  v31 = (v22 ^ v25) + v28;
  LOBYTE(v22) = STACK[0x778];
  v32 = 345 * (v25 % 9) + 189405 - 961 * ((4469269 * (345 * (v25 % 9) + 189405)) >> 32);
  LOBYTE(STACK[0x778]) = *(STACK[0x5A0] + v32);
  *(STACK[0x5A0] + v32) = v22;
  LOBYTE(v15) = STACK[0x8D1];
  v33 = 345 * ((v30 - v31) & 7) + 189750 - 961 * ((4469269 * (345 * ((v30 - v31) & 7) + 189750)) >> 32);
  *(STACK[0x5A0] + (v21 & 0x1B1 ^ 0x1B1) + (v21 & 0x1B1)) = *(STACK[0x5A0] + v33);
  *(STACK[0x5A0] + v33) = v15;
  v34 = 345 * ((v28 ^ 0x28632A02u) % 7) + 190095 - 961 * ((4469269 * (345 * ((v28 ^ 0x28632A02u) % 7) + 190095)) >> 32);
  v35 = (v30 - v31) ^ v30 ^ v27;
  LOBYTE(v25) = STACK[0xA2A];
  LOBYTE(STACK[0xA2A]) = *(STACK[0x5A0] + v34);
  *(STACK[0x5A0] + v34) = v25;
  v36 = STACK[0x5A0];
  v37 = 345 * ((v30 ^ v27) % 6) + 190440 - 961 * ((4469269 * (345 * ((v30 ^ v27) % 6) + 190440)) >> 32);
  LOBYTE(v33) = STACK[0x7C2];
  LOBYTE(STACK[0x7C2]) = *(STACK[0x5A0] + v37);
  *(v36 + v37) = v33;
  LOBYTE(v37) = STACK[0x91B];
  v38 = 345 * (v31 % 5) + 190785 - 961 * ((4469269 * (345 * (v31 % 5) + 190785)) >> 32);
  LOBYTE(v31) = ((v30 - v31) ^ v30 ^ v27) + v31;
  LOBYTE(STACK[0x91B]) = *(v36 + v38);
  *(v36 + v38) = v37;
  v39 = 345 * ((v31 + v35) & 3) + 191130;
  v40 = v39 - 961 * ((4469269 * v39) >> 32);
  LOBYTE(v15) = STACK[0xA74];
  LOBYTE(STACK[0xA74]) = *(v36 + v40);
  *(v36 + v40) = v15;
  v41 = v3 ^ 0x1B07;
  LOBYTE(v27) = v31 + (v30 ^ ~v27);
  v42 = 345 * (((v28 ^ 0x28632A02u) + 1224649944 + v35) % 3) + 191475 - 961 * ((4469269 * (345 * (((v28 ^ 0x28632A02u) + 1224649944 + v35) % 3) + 191475)) >> 32);
  LOBYTE(v21) = STACK[0x80C];
  LOBYTE(STACK[0x80C]) = *(v36 + v42);
  *(v36 + v42) = v21;
  v43 = STACK[0x965];
  v44 = (v27 & 1) == 0;
  v45 = 581;
  if (!v44)
  {
    v45 = 926;
  }

  LOBYTE(STACK[0x965]) = *(v36 + v45);
  *(v36 + v45) = v43;
  v46 = *(v36 + ((1585 * (v41 ^ 0x1446)) ^ 0x3489Fu) % 0x3C1);
  v47 = 923 * (*(v36 + 583) ^ 0x2B ^ (((32 * v46) ^ 0x9F) + ((16 * v46) ^ 0x30) - 12)) + 14768;
  v48 = v47 - 928 * ((4628198 * v47) >> 32);
  v49 = *(&off_100BFFA10 + (v41 ^ 0x14AA)) - 12;
  *(v36 + 253) = *(v36 + (345 * (((v49[v48] >> 4) | (16 * v49[v48])) ^ 0xA1u) + 186029) % 0x3C1);
  return (*(v8 + 8 * v41))();
}

uint64_t sub_10004EED8@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 ^ 0x2DA9)))();
  STACK[0x6C8] = 0;
  return v1(v3);
}

uint64_t sub_10004EF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v20)
  {
    v21 = a4 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  LODWORD(a16) = v19 ^ 0x13CB;
  return (*(a2 + 8 * (((v19 ^ 0x73B ^ (v19 - 1856224986) & 0x6EA3B7FB) * v22) ^ v19)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_10004FA28()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x3971)))(*v2, *(v0 + 8 * (v3 ^ 0x1CE3)) - 4);
  **(v0 + 8 * (v3 ^ 0x1CD9)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((v3 + 623) ^ 0x1876 ^ ((v3 - 5513) | 0x3B))) ^ v3)))();
}

uint64_t sub_10004FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = STACK[0x310];
  v12 = (LODWORD(STACK[0x310]) - 648);
  STACK[0x5B0] = v12;
  v13 = (v12 ^ 0x70372194) + a8 + v8 - v10;
  v14 = v8 + 1847734611 < v13;
  if (v8 > 0x91DDCEAC != v13 < 0x6E223153)
  {
    v14 = v13 < 0x6E223153;
  }

  return (*(v9 + 8 * ((30 * v14) ^ v11)))(0xF5A2F1B9B5D0B209, 0xAB3042D228875C41, 0x9508DCB2F33ECE2BLL, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, 0x5963B6C555D97F1FLL);
}

void sub_10004FC48()
{
  v0 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 - dword_100CBBEC0) ^ 0xDF)) ^ byte_1009DB0B0[byte_1009D41D0[(-85 * ((dword_100CBC1F0 - dword_100CBBEC0) ^ 0xDF))] ^ 0x2A]) + 62);
  v1 = -85 * ((dword_100CBC1F0 - *v0) ^ 0xDF);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[v1 - 8] ^ 0xBF) - 8] ^ v1) - 14);
  v3 = *v0 ^ &v5 ^ *v2;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 + 164749135 - 2 * (v6 & 0x9D1DF4F)) ^ 0x3BCA84DF);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * ((dword_100CBC1F0 + dword_100CBBEC0) ^ 0xDF)) ^ byte_1009C9D60[byte_1009E3310[(-85 * ((dword_100CBC1F0 + dword_100CBBEC0) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_1009D3FDC[(byte_1009C9A60[v2] ^ 0x21) - 12] ^ v2) + 76056])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004FF14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(a16 + 40) = STACK[0x440];
  *(a16 + 24) = 108;
  LODWORD(STACK[0x7EC]) = 16257999;
  return (*(v16 + 8 * (((7 * ((a1 + 5434) ^ 0x1AE0) != 6083) * (a1 - 1068)) ^ (a1 + 5434))))();
}

uint64_t sub_10004FF7C@<X0>(int a1@<W8>)
{
  (*(v1 + 8 * (a1 ^ 0x3897)))();
  *(v2 + 24) = 0;
  return sub_100117740();
}

uint64_t sub_10004FFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  HIDWORD(a9) = 16257999;
  *(v23 - 216) = a1;
  *(v23 - 192) = a1;
  return (*(v22 + 8 * ((((((((v21 + 1056) | 0x848) + 1964781620) & 0x8AE3CFD3) - 163319640) & 0x9BC0F4F) + 8134) ^ (((v21 + 1056) | 0x848) + 1964781620) & 0x8AE3CFD3)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_10004FFC4(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3F8] - 8632;
  LODWORD(STACK[0x380]) = 17168;
  return sub_100162C60(a1, a2, v2);
}

void sub_10004FFE4(id a1)
{
  v1 = *(&off_100BFFA10 + ((-85 * (dword_100CBC0C0 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC0C0 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xE2]) + 113);
  v2 = -85 * ((dword_100CBC1F0 + *v1) ^ 0xDF);
  v3 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[v2 - 8] ^ 0x6D) - 8] ^ v2) + 184);
  v4 = (*v3 - *v1) ^ &v6;
  *v1 = 2054362027 * v4 + 0x1FC86B74B1533AF5;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v5 = 167987495 - 1317436891 * (&v5 ^ 0xB0039876);
  LOBYTE(v3) = -85 * ((*v3 + *v1) ^ 0xDF);
  (*(*(&off_100BFFA10 + ((-85 * (dword_100CBC0C0 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC0C0 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xD9]) + 49) + (byte_1009C9D6C[(byte_1009E331C[v3 - 12] ^ 0xD9) - 12] ^ v3) + 9459))(&v5);
}

uint64_t sub_1000501B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (*(v70 + 8 * (v71 + 3551)))((v71 - 5410) ^ (v69 + 671) ^ LODWORD(STACK[0x6B4]), 0x100004077774924);
  STACK[0xA98] = v72;
  if (v72)
  {
    a69 = 16257999;
  }

  LODWORD(STACK[0xAA4]) = a69;
  return (*(v70 + 8 * (((v72 == 0) * ((v71 + 1005) ^ 0x1BD2)) ^ (v71 - 534))))();
}

void sub_100050234()
{
  v0 = *(&off_100BFFA10 + ((-85 * (dword_100CBC370 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009D42D0[byte_1009C9C60[(-85 * (dword_100CBC370 ^ 0xDF ^ dword_100CBC1F0))] ^ 0x80]) + 16);
  v1 = *(v0 - 4);
  v2 = *(&off_100BFFA10 + (byte_1009DAFB8[(byte_1009D40D8[(-85 * ((dword_100CBC1F0 + v1) ^ 0xDF)) - 8] ^ 1) - 8] ^ (-85 * ((dword_100CBC1F0 + v1) ^ 0xDF))) + 14);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 - 1144590568 - 2 * (v6 & 0xBBC6EF18)) ^ 0x89DDB488);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100BFFA10 + ((-85 * (dword_100CBC370 ^ 0xDF ^ dword_100CBC1F0)) ^ byte_1009C9D60[byte_1009E3310[(-85 * (dword_100CBC370 ^ 0xDF ^ dword_100CBC1F0))] ^ 0xB1]) + 234) - 8;
  (*&v4[8 * (byte_1009C9D6C[(byte_1009E331C[v2 - 12] ^ 0xD9) - 12] ^ v2) + 75248])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000504BC(uint64_t a1)
{
  v5 = (v4 + 250626959) & 0xF10FA7C1;
  v6 = (*(v2 + 8 * (v5 ^ 0x22D7)))(v1, a1, 0);
  *(v3 - 0x18487EF8CB592F80) = v6;
  return (*(v2 + 8 * (((v6 == 0) * ((v5 - 735914696) & 0x2BDD3F76 ^ 0x1974)) | v5)))();
}

uint64_t sub_100050544()
{
  STACK[0x868] = 0;
  STACK[0x440] = 0;
  return (*(v0 + 8 * ((676 * (((v1 - 3903) | 0x1101) ^ 0x1980) + 114) ^ (v1 - 661))))();
}

void sub_100050594(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X9, X17 }
}