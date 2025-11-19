void *sub_1000013D0(const char *a1, uint64_t a2)
{
  result = sub_10000141C(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *sub_10000141C(uint64_t a1)
{
  pthread_mutex_lock(&stru_100031A28);
  Mutable = qword_100031CF8;
  if (!qword_100031CF8)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    qword_100031CF8 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    if (a1 > 2)
    {
      if (a1 > 4)
      {
        if (a1 == 5)
        {
          v4 = CPSystemRootDirectory();
          v10 = @"VisualVoicemail";
          v5 = @"VisualVoicemail.framework";
        }

        else
        {
          if (a1 != 6)
          {
            goto LABEL_24;
          }

          v4 = CPSystemRootDirectory();
          v10 = @"AccessoryAudio";
          v5 = @"AccessoryAudio.framework";
        }
      }

      else
      {
        v4 = CPSystemRootDirectory();
        if (a1 == 3)
        {
          v10 = @"FrontBoardServices";
          v5 = @"FrontBoardServices.framework";
        }

        else
        {
          v10 = @"CarKit";
          v5 = @"CarKit.framework";
        }
      }

LABEL_18:
      v6 = @"PrivateFrameworks";
LABEL_21:
      v7 = [NSString pathWithComponents:[NSArray arrayWithObjects:v4, @"System", @"Library", v6, v5, v10, 0]];
      if (v7)
      {
        v8 = dlopen([(NSString *)v7 UTF8String], 1);
        if (v8)
        {
          Value = v8;
          CFDictionarySetValue(qword_100031CF8, a1, v8);
          goto LABEL_25;
        }
      }

LABEL_24:
      NSLog(@"Could not load source: %ld", a1);
      Value = 0;
      goto LABEL_25;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_24;
        }

        v4 = CPSystemRootDirectory();
        v10 = @"SpringBoardServices";
        v5 = @"SpringBoardServices.framework";
        goto LABEL_18;
      }

      v4 = CPSystemRootDirectory();
      v10 = @"MobileCoreServices";
      v5 = @"MobileCoreServices.framework";
    }

    else
    {
      v4 = CPSystemRootDirectory();
      v10 = @"UIKit";
      v5 = @"UIKit.framework";
    }

    v6 = @"Frameworks";
    goto LABEL_21;
  }

LABEL_25:
  pthread_mutex_unlock(&stru_100031A28);
  return Value;
}

Class sub_1000016A4(NSString *a1, uint64_t a2)
{
  result = sub_10000141C(a2);
  if (result)
  {

    return NSClassFromString(a1);
  }

  return result;
}

uint64_t sub_10000172C()
{
  result = BTDeviceGetAddressString();
  if (!result)
  {
    return BTDeviceAddressFromString();
  }

  return result;
}

void sub_1000017A8(unint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a2;
  if (a3 == 1)
  {
    if (a4 == 12)
    {
      sub_10001883C(1, @"INFO - %s:%s - %d disconnecting port for device 0x%hhx with service 0x%X", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "BTServiceCallback", 123, a1, a2);
      kdebug_trace();

      sub_100001C48(a1, v5);
    }
  }

  else if (!a3 && a4 == 11 && !a5)
  {
    sub_10001883C(1, @"INFO - %s:%s - %d connecting new port for device 0x%hhx with service 0x%X", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "BTServiceCallback", 110, a1, a2);
    kdebug_trace();

    sub_1000018E0(a1);
  }
}

uint64_t sub_1000018E0(unint64_t a1)
{
  v9 = -86;
  if (BTDeviceGetConnectedServices())
  {
    sub_10001883C(1, @"WARNING - %s:%s - %d no connected service for this BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "CreateBTPort", 235);
    v9 = 0;
  }

  if (BTDeviceGetSupportedServices())
  {
    sub_10001883C(1, @"WARNING - %s:%s - %d no supported service for this BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "CreateBTPort", 240);
  }

  v2 = sub_10000172C();
  pthread_mutex_lock(&stru_100031A68);
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_6;
  }

  v3 = qword_100031E50;
  if (!qword_100031E50)
  {
    goto LABEL_22;
  }

  v4 = &qword_100031E50;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a1;
    v7 = v5 < a1;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == &qword_100031E50 || v4[4] > a1)
  {
LABEL_22:
    if (!v2)
    {
      memset(__s, 170, 6);
      if ((sub_100004774(__s) & 1) == 0)
      {
        operator new();
      }
    }

    sub_10001883C(1, @"WARNING - %s:%s - %d creating port to locked out BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "CreateBTPort", 273);
    BTDeviceDisconnectServices();
  }

  else
  {
LABEL_6:
    sub_10001883C(1, @"WARNING - %s:%s - %d trying to create port to a non-iAP BT device OR for an already connected iAP BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "CreateBTPort", 304);
  }

  return pthread_mutex_unlock(&stru_100031A68);
}

void sub_100001C48(uint64_t a1, int a2)
{
  v7 = -21846;
  v6 = -1431655766;
  sub_10000172C();
  v5 = -1431655766;
  if (BTDeviceGetSupportedServices())
  {
    sub_10001883C(1, @"WARNING - %s:%s - %d no supported service for this BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "DeleteBTPorts", 422);
    v5 = 0;
  }

  if (a2 == 128)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000022F0;
    v4[3] = &unk_10002CA90;
    v4[4] = a1;
    pthread_mutex_lock(&stru_100031AA8);
    sub_1000022F0(v4);
    pthread_mutex_unlock(&stru_100031AA8);
  }
}

void sub_100001E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    if (BTLocalDeviceGetModulePower())
    {
      NSLog(@"ERROR - %s:%s - %d failed getting power state of local BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "BTLocalDeviceCallback", 157);
      sub_10001883C(1, @"INFO - %s:%s - %d BT local device powering off", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "BTLocalDeviceCallback", 163);
      sub_100001C48(0, 128);
    }
  }
}

void sub_100001ED0(void (*a1)(void, uint64_t), uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[6] = v3;
  v6[7] = v3;
  v6[4] = v3;
  v6[5] = v3;
  v6[2] = v3;
  v6[3] = v3;
  v6[0] = v3;
  v6[1] = v3;
  if (qword_100031E40 && !BTLocalDeviceGetDefault())
  {
    if (BTLocalDeviceGetConnectedDevices())
    {
      NSLog(@"ERROR - %s:%s - %d failed getting connected BT devices", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "FindKnownDevices", 202);
    }

    else
    {
      for (i = 0; i < 0xAAAAAAAAAAAAAAAALL; ++i)
      {
        a1(*(v6 + i), a2);
      }
    }
  }

  else
  {
    NSLog(@"ERROR - %s:%s - %d failed getting local BT device", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "FindKnownDevices", 195);
  }
}

void sub_100001FFC(uint64_t a1)
{
  if (*(a1 + 112) == -1)
  {
    NSLog(@"ERROR - %s:%s - %d invalid m_comPort(%d)", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "StartRecvThread", 786, 0xFFFFFFFFLL);
  }

  else
  {
    pthread_cond_init((a1 + 664), 0);
    pthread_mutex_init((a1 + 712), 0);
    v2 = pthread_create((a1 + 136), 0, sub_100002B64, a1);
    if (v2)
    {
      NSLog(@"ERROR - %s:%s - %d pthread_create failed %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "StartRecvThread", 771, v2);
      close(*(a1 + 112));
      pthread_cond_destroy((a1 + 664));
      pthread_mutex_destroy((a1 + 712));
      *(a1 + 112) = -1;
    }

    else
    {
      v4 = 0xAAAAAAAAAAAAAAAALL;
      v3 = -1431655766;
      pthread_getschedparam(*(a1 + 136), &v3, &v4);
      *(a1 + 776) = v4.sched_priority;
    }
  }
}

void sub_100002110(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10001A74C();
    }
  }

  else
  {
    *(a1 + 780) = a2;
  }
}

uint64_t sub_100002160(void *a1)
{
  sub_10001883C(1, @"INFO - %s:%s - %d disconnecting locked out device 0x%hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "LockoutPort", 347, a1[15]);
  (*(*a1 + 96))(&v5, a1);
  sub_100004604(&v5, v2);
  v3 = a1[15];
  return BTDeviceDisconnectServices();
}

void sub_1000021F8(uint64_t a1)
{
  if (*(a1 + 780) <= 9)
  {
    v3 = (a1 + 120);
    v2 = *(a1 + 120);
    if (BTDeviceSetHIDProperties())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_10001A7E4(v3, (a1 + 780));
      }
    }
  }
}

void sub_100002274(uint64_t a1)
{
  if (*(a1 + 780) <= 9)
  {
    v3 = (a1 + 120);
    v2 = *(a1 + 120);
    if (BTDeviceSetHIDProperties())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_10001A884(v3, (a1 + 780));
      }
    }
  }
}

void sub_1000022F0(uint64_t a1)
{
  v1 = qword_100031E70;
  while (v1 != &qword_100031E68)
  {
    if ((*(*v1[2] + 80))(v1[2]) == 2)
    {
      v3 = v1[2];
      {
        sub_10001A924();
      }

      v6 = v5;
      pthread_mutex_lock((v5 + 48));
      if (v6[132] == 1)
      {
        v7 = *(a1 + 32);
        if (!v7 || *(v6 + 15) == v7)
        {
          v6[132] = 0;
          pthread_mutex_unlock((v6 + 48));
          sub_10001883C(1, @"INFO - %s:%s - %d port 0x%hhx for device 0x%hhx to be deleted", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "DeleteBTPorts_block_invoke", 466, v6, *(v6 + 15));
          v8 = *v1;
          v9 = v1[1];
          *(v8 + 8) = v9;
          *v9 = v8;
          --qword_100031E78;
          operator delete(v1);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000024E4;
          block[3] = &unk_10002CA90;
          block[4] = v6;
          dispatch_async(&_dispatch_main_q, block);
          v1 = v9;
          continue;
        }
      }

      pthread_mutex_unlock((v6 + 48));
    }

    v1 = v1[1];
  }
}

uint64_t sub_1000024E4(uint64_t a1)
{
  sub_100002528(*(a1 + 32));

  return kdebug_trace();
}

void sub_100002528(char **a1)
{
  sub_10001883C(1, @"INFO - %s:%s - %d delete transport 0x%hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "DeleteTransport", 926, a1);
  if (a1 && (*(*a1 + 10))(a1) == 2)
  {
    pthread_mutex_lock(&stru_100031A68);
    v2 = **a1;
    if (!v3)
    {
      sub_10001A924();
    }

    v4 = v3;
    if ((*(v3 + 132) & 1) == 0)
    {
      v5 = v3[15];
      sub_100011860(v3);
      (*(*v4 + 8))(v4);
      sub_1000036E4(&qword_100031E48, &v5);
    }

    pthread_mutex_unlock(&stru_100031A68);
  }
}

uint64_t sub_100002668(int a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000026F8;
  v2[3] = &unk_10002CAB0;
  v3 = a1;
  pthread_mutex_lock(&stru_100031AA8);
  sub_1000026F8(v2);
  return pthread_mutex_unlock(&stru_100031AA8);
}

uint64_t sub_1000026F8(uint64_t result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    do
    {
      result = (*(**(v1 + 16) + 80))(*(v1 + 16));
      if (result == 2)
      {
        v3 = *(v1 + 16);
        {
          sub_10001A924();
        }

        v5 = *(v2 + 32);
        if (v5 == 3)
        {
          goto LABEL_12;
        }

        if (v5 != 2)
        {
          if (v5 != 1 || (*(result + 8) & 1) != 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          v6 = *(result + 120);
          result = BTDeviceDisconnectServices();
          goto LABEL_13;
        }

        if (*(result + 8) == 1)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      v1 = *(v1 + 8);
    }

    while (v1 != &qword_100031E68);
  }

  return result;
}

void sub_100002810(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136316162;
    *&buf[4] = off_100031CF0;
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm";
    *&buf[22] = 2080;
    v7 = "BTSessionCallback";
    v8 = 1024;
    v9 = 574;
    v10 = 1024;
    v11 = a3;
    v4 = "[#%s] ERROR - %s:%s - %d called with a BTResult of %d";
    v5 = 44;
    goto LABEL_4;
  }

  if (a2 == 2)
  {
    qword_100031E40 = 0;
    sub_100001C48(0, 128);
    if (([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")] & 1) == 0)
    {

      sub_100002A7C();
    }
  }

  else if (!a2)
  {
    if (a1)
    {
      qword_100031E40 = a1;
      if (!BTLocalDeviceGetDefault())
      {
        *&buf[8] = 0uLL;
        *buf = sub_100001E28;
        BTLocalDeviceAddCallbacks();
      }

      sub_100001ED0(sub_1000018E0, 0);
      BTServiceAddCallbacks();
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = off_100031CF0;
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm";
      *&buf[22] = 2080;
      v7 = "BTSessionCallback";
      v8 = 1024;
      v9 = 552;
      v4 = "[#%s] ERROR - %s:%s - %d called with a NULL BTSession";
      v5 = 38;
LABEL_4:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, buf, v5);
    }
  }
}

BOOL sub_100002A7C()
{
  qword_100031E40 = 0;
  signal(30, nullsub_7);
  v0 = [NSString stringWithFormat:@"com.apple.iaptransportd-%d", getpid()];
  if (qword_100031D40 != -1)
  {
    sub_10001A940();
  }

  [(NSString *)v0 cStringUsingEncoding:4];
  v1 = BTSessionAttachWithQueue();
  if (v1)
  {
    NSLog(@"ERROR - %s:%s - %d failed attaching to BT server", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "AttachToBTServer", 905, sub_100002810);
  }

  return v1 == 0;
}

void sub_100002D18(uint64_t a1, int a2)
{
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      LODWORD(buf.__sig) = 136315138;
      *(&buf.__sig + 4) = off_100031CF0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#%s] Changing bt receive queue priority to high priority", &buf, 0xCu);
    }

    v8 = 0xAAAAAAAAAAAAAAAALL;
    v7 = -1431655766;
    pthread_getschedparam(*(a1 + 136), &v7, &v8);
    v8.sched_priority = 63;
    NSLog(@"Setting BT m_recvThread sched_priority to new priority %d", 63);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf.__opaque[24] = v5;
    *&buf.__opaque[40] = v5;
    *&buf.__sig = v5;
    *&buf.__opaque[8] = v5;
    pthread_attr_init(&buf);
    pthread_attr_setschedparam(&buf, &v8);
    dispatch_sync(qword_100031E60, &stru_10002CAF0);
  }

  else
  {
    if (v4)
    {
      LODWORD(buf.__sig) = 136315138;
      *(&buf.__sig + 4) = off_100031CF0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#%s] Changing bt receive queue priority back to default priority", &buf, 0xCu);
    }

    v8 = 0xAAAAAAAAAAAAAAAALL;
    v7 = -1431655766;
    pthread_getschedparam(*(a1 + 136), &v7, &v8);
    v8.sched_priority = *(a1 + 776);
    NSLog(@"Setting BT m_recvThread sched_priority back to default %d", v8.sched_priority);
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf.__opaque[24] = v6;
    *&buf.__opaque[40] = v6;
    *&buf.__sig = v6;
    *&buf.__opaque[8] = v6;
    pthread_attr_init(&buf);
    pthread_attr_setschedparam(&buf, &v8);
    dispatch_set_target_queue(qword_100031E60, 0);
  }
}

void sub_100002EF0(id a1)
{
  v1 = qword_100031E60;
  v2 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];

  dispatch_set_target_queue(v1, v2);
}

uint64_t sub_100002F3C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100003F0C(a1, 0, 0);
  *v6 = off_10002CB20;
  *(v6 + 112) = -1;
  *(v6 + 120) = a2;
  *(v6 + 128) = a3;
  *(v6 + 132) = 1;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0u;
  v7 = (v6 + 152);
  *(v6 + 780) = 10;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0u;
  *(v6 + 424) = 0u;
  *(v6 + 440) = 0u;
  *(v6 + 456) = 0u;
  *(v6 + 472) = 0u;
  *(v6 + 488) = 0u;
  *(v6 + 504) = 0u;
  *(v6 + 520) = 0u;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 648) = 0u;
  *(v6 + 806) = 0;
  *(v6 + 800) = 0;
  *(v6 + 784) = 0u;
  if (a2)
  {
    sub_10000172C();
  }

  *(a1 + 136) = 0;
  pthread_mutex_init((a1 + 48), 0);
  v8 = *(a1 + 120);
  v9 = *(a1 + 128);
  if (BTDeviceGetComPortForServiceWithSandboxExtension() || sandbox_consume_fs_extension())
  {
    NSLog(@"ERROR - %s:%s - %d failed getting BT port (token: %s)", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "CIapPortBT", 712, v7);
    v7[30] = 0u;
    v7[31] = 0u;
    v7[28] = 0u;
    v7[29] = 0u;
    v7[26] = 0u;
    v7[27] = 0u;
    v7[24] = 0u;
    v7[25] = 0u;
    v7[22] = 0u;
    v7[23] = 0u;
    v7[20] = 0u;
    v7[21] = 0u;
    v7[18] = 0u;
    v7[19] = 0u;
    v7[16] = 0u;
    v7[17] = 0u;
    v7[14] = 0u;
    v7[15] = 0u;
    v7[12] = 0u;
    v7[13] = 0u;
    v7[10] = 0u;
    v7[11] = 0u;
    v7[8] = 0u;
    v7[9] = 0u;
    v7[6] = 0u;
    v7[7] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
  }

  else
  {
    v11 = open(byte_100031D00, 131074);
    *(a1 + 112) = v11;
    if (v11 == -1)
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      NSLog(@"ERROR - %s:%s - %d open %s failed: %d (%s)", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "CIapPortBT", 720, byte_100031D00, v12, v14);
    }
  }

  return a1;
}

void *sub_100003178(uint64_t a1)
{
  *a1 = off_10002CB20;
  pthread_mutex_destroy((a1 + 48));
  if (*(a1 + 152))
  {
    sandbox_release_fs_extension();
  }

  v2 = *(a1 + 112);
  if (v2 != -1)
  {
    *(a1 + 112) = -1;
    pthread_kill(*(a1 + 136), 30);
    pthread_join(*(a1 + 136), 0);
    close(v2);
    pthread_cond_destroy((a1 + 664));
    pthread_mutex_destroy((a1 + 712));
    v3 = *(a1 + 144);
    if (v3)
    {
      sub_100019D34(v3);
      *(a1 + 144) = 0;
    }
  }

  return sub_100003F80(a1);
}

void sub_100003250(uint64_t a1)
{
  sub_100003178(a1);

  operator delete();
}

uint64_t sub_1000032BC(uint64_t a1, const void *a2, size_t __nbyte)
{
  if (!a2)
  {
    return 22;
  }

  if ((write(*(a1 + 112), a2, __nbyte) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  sub_10001883C(1, @"ERROR - %s:%s - %d write failed: %d (%s)", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortBT.mm", "PortTransmitData", 814, v4, v6);
  return 5;
}

uint64_t sub_100003350@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 120))
  {
    *a2 = *(result + 808);
    *(a2 + 4) = *(result + 812);
  }

  else
  {
    *(a2 + 4) = 0;
    *a2 = 0;
  }

  return result;
}

void sub_1000033D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000033D0(a1, *a2);
    sub_1000033D0(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_100003424(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_1000034F0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_100003548(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100003548(uint64_t *result, uint64_t *a2)
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

uint64_t sub_1000036E4(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_100003768(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_100003768(uint64_t **a1, uint64_t *a2)
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
  sub_1000037DC(v6, a2);
  return v3;
}

uint64_t *sub_1000037DC(uint64_t *result, uint64_t *a2)
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

uint64_t sub_100003B94()
{
  qword_100031E58 = 0;
  qword_100031E50 = 0;
  qword_100031E48 = &qword_100031E50;
  return __cxa_atexit(sub_1000016F0, &qword_100031E48, &_mh_execute_header);
}

void sub_100003CD8(void *a1, int a2, unsigned int a3)
{
  if (!a2)
  {
    NSLog(@"ERROR - %s:%s - %d service is NULL", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportManager.mm", "__accessoryPortManagerInterest", 32);
    return;
  }

  if (a3 >> 4 == 239073280)
  {
    v4 = a3 + 469794816;

_objc_msgSend$_setAccResistorID_:
    [a1 _setAccResistorID:v4];
    return;
  }

  if (a3 == -469794799)
  {
    v4 = 0xFFFFFFFFLL;

    goto _objc_msgSend$_setAccResistorID_;
  }
}

uint64_t sub_100003EAC(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100003EB8(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_100003ED4(uint64_t a1)
{
  *(a1 + 8) = 0;
  result = MGGetBoolAnswer();
  *(a1 + 9) = result ^ 1;
  return result;
}

uint64_t sub_100003F0C(uint64_t a1, int a2, int a3)
{
  *a1 = off_10002CBE8;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
  *(a1 + 12) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    *(a1 + 8) = 256;
  }

  return a1;
}

void *sub_100003F80(void *a1)
{
  *a1 = off_10002CBE8;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000405C;
  v5[3] = &unk_10002CA90;
  v5[4] = a1;
  pthread_mutex_lock(&stru_100031AA8);
  sub_10000405C(v5);
  pthread_mutex_unlock(&stru_100031AA8);
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100019D34(v3);
    a1[4] = 0;
  }

  return a1;
}

void *sub_100004090(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_10000541C(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_10000538C(v10);
}

void sub_100004148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000538C(va);
  _Unwind_Resume(a1);
}

NSObject *sub_100004164(int64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void *a5)
{
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a4);
  if (v9)
  {
    v10 = dispatch_walltime(0, a1);
    dispatch_source_set_timer(v9, v10, a2, a3);
    dispatch_source_set_event_handler(v9, a5);
    dispatch_resume(v9);
  }

  return v9;
}

uint64_t sub_1000041F4(int a1)
{
  if ((a1 - 4) >= 0xFFFFFFFE)
  {
    sub_10001A924();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (qword_100031D70 != -1)
  {
    sub_10001A954();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000042D4;
  v4[3] = &unk_10002CC68;
  v5 = a1;
  v4[4] = &v6;
  dispatch_sync(qword_100031D68, v4);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

_BYTE *sub_1000042D4(uint64_t a1)
{
  result = qword_100031D60;
  if (!qword_100031D60)
  {
    result = malloc_type_calloc(0xCuLL, 0x10uLL, 0x10800403DA8C3A5uLL);
    qword_100031D60 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = result[16 * *(a1 + 40)];
  return result;
}

void sub_100004338(int a1)
{
  if ((a1 - 4) >= 0xFFFFFFFE)
  {
    sub_10001A924();
  }

  if (qword_100031D70 != -1)
  {
    sub_10001A97C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000043E0;
  block[3] = &unk_10002CAB0;
  v3 = a1;
  dispatch_sync(qword_100031D68, block);
}

_DWORD *sub_1000043E0(_DWORD *result)
{
  v1 = result;
  v2 = qword_100031D60;
  if (!qword_100031D60)
  {
    result = malloc_type_calloc(0xCuLL, 0x10uLL, 0x10800403DA8C3A5uLL);
    v2 = result;
    qword_100031D60 = result;
  }

  v3 = (v2 + 16 * v1[8]);
  if ((*v3 & 1) == 0)
  {
    *v3 = 1;
    if (qword_100031D70 != -1)
    {
      sub_10001A97C();
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000044F4;
    v4[3] = &unk_10002CC88;
    v4[4] = v2;
    v5 = v1[8];
    result = sub_100004164(360000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL, qword_100031D68, v4);
    *(v2 + 16 * v1[8] + 8) = result;
  }

  return result;
}

void sub_1000044F4(uint64_t a1)
{
  v2 = *(a1 + 32) + 16 * *(a1 + 40);
  if (*v2 == 1)
  {
    *v2 = 0;
    dispatch_source_cancel(*(v2 + 8));
    v4 = *(*(a1 + 32) + 16 * *(a1 + 40) + 8);

    dispatch_release(v4);
  }
}

void sub_10000455C(uint64_t a1)
{
  v2 = (*(*a1 + 80))(a1);
  if (v2 == 2)
  {
    (*(*a1 + 96))(&v4, a1);
    sub_100004604(&v4, v3);
  }

  else
  {

    sub_100004338(v2);
  }
}

void sub_100004604(uint64_t a1, uint8x8_t a2)
{
  a2.i32[0] = *a1;
  v3 = vmovl_u8(a2).u64[0];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  if (qword_100031D70 != -1)
  {
    v6 = v3;
    sub_10001A97C();
    v3 = v6;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000048C8;
  block[3] = &unk_10002CD10;
  block[4] = a1;
  v8 = vuzp1_s8(v3, 3321888768).u32[0];
  v9 = v4;
  v10 = v5;
  dispatch_sync(qword_100031D68, block);
}

uint64_t sub_1000046CC(uint64_t a1)
{
  v2 = (*(*a1 + 80))(a1);
  if (v2 == 2)
  {
    (*(*a1 + 96))(&v4, a1);
    return sub_100004774(&v4);
  }

  else
  {

    return sub_1000041F4(v2);
  }
}

uint64_t sub_100004774(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v1.i32[1] = 32;
  v14 = 0x2020000000;
  v15 = 0;
  v1.i32[0] = *a1;
  v2 = vmovl_u8(v1).u64[0];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  if (qword_100031D70 != -1)
  {
    v7 = v2;
    sub_10001A954();
    v2 = v7;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100004864;
  block[3] = &unk_10002CCB0;
  block[4] = &v12;
  v9 = vuzp1_s8(v2, 3321888768).u32[0];
  v10 = v3;
  v11 = v4;
  dispatch_sync(qword_100031D68, block);
  v5 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t *sub_100004864(uint64_t a1)
{
  result = sub_100005490(&qword_100031D48, (a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result != &qword_100031D50;
  return result;
}

uint64_t sub_1000048B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 44) = *(a2 + 44);
  *(result + 40) = v2;
  return result;
}

void *sub_1000048C8(uint64_t a1)
{
  if (qword_100031D70 != -1)
  {
    sub_10001A97C();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10000499C;
  v4[3] = &unk_10002CCE0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v2 = sub_100004164(360000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL, qword_100031D68, v4);
  result = sub_100004A34(&qword_100031D48, *(a1 + 32));
  *result = v2;
  return result;
}

void sub_10000499C(uint64_t a1)
{
  v1 = sub_100005490(&qword_100031D48, (a1 + 32));
  if (v1 != &qword_100031D50)
  {
    v2 = v1;
    dispatch_source_cancel(*(v1 + 40));
    dispatch_release(*(v2 + 40));
    sub_100003768(&qword_100031D48, v2);

    operator delete(v2);
  }
}

uint64_t sub_100004A1C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 36) = *(a2 + 36);
  *(result + 32) = v2;
  return result;
}

uint64_t sub_100004A34(uint64_t a1, unsigned int *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *sub_100005520(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 40;
}

void sub_100004AD0(BOOL a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "enable", a1);
  xpc_dictionary_set_uint64(v2, "portManagerNumber", 6uLL);
  xpc_dictionary_set_string(v2, "requestType", "hasAdaptor");
  if (+[IAPTransportServer supportsIAPD])
  {
    [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  }

  xpc_release(v2);
}

void sub_100004B78(BOOL a1)
{
  if (sub_1000116BC())
  {

    sub_100004AD0(a1);
  }
}

void sub_100004BC0(BOOL a1)
{
  if (!sub_1000116BC())
  {

    sub_100004AD0(a1);
  }
}

void sub_100004C08(uint64_t a1, char *a2, unsigned int a3)
{
  if (*(a1 + 10) != 1)
  {
    return;
  }

  v6 = +[IAPTransportServer supportsIAPD];
  if ((*(*a1 + 80))(a1) != 11)
  {
    if (*(a1 + 9))
    {
      goto LABEL_5;
    }

    memset(v41, 170, sizeof(v41));
    v37 = v6;
    if (a2 && a3)
    {
      v11 = dispatch_data_create(a2, a3, &_dispatch_main_q, 0);
      v12 = v11;
      v13 = *(a1 + 24);
      if (v13)
      {
        *(a1 + 24) = dispatch_data_create_concat(*(a1 + 24), v11);
        dispatch_release(v13);
        dispatch_release(v12);
        goto LABEL_25;
      }

      v15 = 0;
      *(a1 + 24) = v11;
    }

    else
    {
      if (*(a1 + 40) != 1 || (v14 = *(a1 + 24)) == 0)
      {
LABEL_25:
        v15 = 0;
        if (!a2)
        {
          goto LABEL_70;
        }

        goto LABEL_28;
      }

      size_ptr = 0;
      buffer_ptr = 0;
      v15 = dispatch_data_create_map(v14, &buffer_ptr, &size_ptr);
      a2 = buffer_ptr;
      a3 = size_ptr;
      if (!buffer_ptr)
      {
        goto LABEL_70;
      }
    }

LABEL_28:
    if (!a3 || *(a1 + 40) != 1)
    {
LABEL_70:
      if (v15)
      {
        dispatch_release(v15);
      }

      return;
    }

    gettimeofday(&v41[1], 0);
    v16 = 1000 * v41[1] + SLODWORD(v41[2]) / 1000;
    while (1)
    {
      v41[0] = 0;
      v17 = *(a1 + 32);
      if (!v17)
      {
        sub_100019550();
      }

      HIBYTE(v38) = *(a1 + 8);
      v18 = sub_100019664(v17, v16, a2, a3, v41, &v38 + 7);
      *(a1 + 8) = (*(a1 + 8) | HIBYTE(v38)) & 1;
      if (v18 > 59)
      {
        if (v18 == 60)
        {
          v33 = *(a1 + 24);
          if (v33)
          {
            dispatch_release(v33);
            *(a1 + 24) = 0;
          }

          sub_100019D34(*(a1 + 32));
          *(a1 + 32) = 0;
          v41[0] = a3;
        }

        else if (v18 == 102)
        {
          sub_100019D34(*(a1 + 32));
          *(a1 + 32) = 0;
          v41[0] = 0;
          v23 = *(a1 + 24);
          if (v23)
          {
            size = dispatch_data_get_size(*(a1 + 24));
            subrange = dispatch_data_create_subrange(v23, size - a3, a3);
            dispatch_release(*(a1 + 24));
            *(a1 + 24) = subrange;
          }
        }

        goto LABEL_67;
      }

      if (v18)
      {
        if (v18 == 36)
        {
          v19 = *(a1 + 32);
          if (v19)
          {
            if (*(v19 + 112) <= 1u && (*(v19 + 119) & 1) == 0)
            {
              v20 = *(a1 + 24);
              if (v20)
              {
                v21 = a3 - v41[0];
                if (a3 > v41[0])
                {
                  v22 = dispatch_data_get_size(*(a1 + 24));
                  v36 = dispatch_data_create_subrange(v20, v22 - v21, v21);
                  v20 = *(a1 + 24);
                }

                else
                {
                  v36 = 0;
                }

                dispatch_release(v20);
                *(a1 + 24) = v36;
              }
            }
          }
        }
      }

      else
      {
        v26 = *(a1 + 24);
        if (v26)
        {
          *(a1 + 9) = 1;
          size_ptr = 0;
          buffer_ptr = 0;
          v27 = dispatch_data_create_map(v26, &buffer_ptr, &size_ptr);
          v28 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v28, "portNumber", *(a1 + 16));
          xpc_dictionary_set_uint64(v28, "portManagerNumber", *(a1 + 20));
          v29 = (*(*a1 + 80))(a1);
          xpc_dictionary_set_uint64(v28, "portType", v29);
          xpc_dictionary_set_uint64(v28, "portID", a1);
          if ((*(*a1 + 88))(a1))
          {
            WORD2(v38) = -21846;
            LODWORD(v38) = -1431655766;
            (*(*a1 + 96))(&v38, a1);
            xpc_dictionary_set_data(v28, "macAddr", &v38, 6uLL);
          }

          if ((*(*a1 + 104))(a1))
          {
            v30 = (*(*a1 + 112))(a1);
            xpc_dictionary_set_uint64(v28, "usbDevID", v30);
          }

          xpc_dictionary_set_data(v28, "data", buffer_ptr, size_ptr);
          xpc_dictionary_set_string(v28, "requestType", "dataArrived");
          if (((*(a1 + 8) | v37 ^ 1) & 1) == 0)
          {
            v31 = sub_1000116B0();
            if (!sub_1000116BC())
            {
              sub_100004AD0(v31);
            }
          }

          if (*(a1 + 8) == 1)
          {
            v32 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
            goto LABEL_62;
          }

          if (v37)
          {
            v32 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
LABEL_62:
            [v32 sendMessage:v28];
          }

          xpc_release(v28);
          dispatch_release(v27);
          v41[0] = a3;
          v34 = *(a1 + 32);
          if (v34)
          {
            sub_100019D34(v34);
            *(a1 + 32) = 0;
          }

          v35 = *(a1 + 24);
          if (v35)
          {
            dispatch_release(v35);
            *(a1 + 24) = 0;
          }
        }
      }

LABEL_67:
      a2 += v41[0];
      a3 -= LODWORD(v41[0]);
      if (!a3)
      {
        goto LABEL_70;
      }
    }
  }

  *(a1 + 8) = 257;
LABEL_5:
  if (a2 && a3)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "portNumber", *(a1 + 16));
    xpc_dictionary_set_uint64(v7, "portManagerNumber", *(a1 + 20));
    v8 = (*(*a1 + 80))(a1);
    xpc_dictionary_set_uint64(v7, "portType", v8);
    xpc_dictionary_set_uint64(v7, "portID", a1);
    if ((*(*a1 + 88))(a1))
    {
      WORD2(v41[1]) = -21846;
      LODWORD(v41[1]) = -1431655766;
      (*(*a1 + 96))(&v41[1], a1);
      xpc_dictionary_set_data(v7, "macAddr", &v41[1], 6uLL);
    }

    if ((*(*a1 + 104))(a1))
    {
      v9 = (*(*a1 + 112))(a1);
      xpc_dictionary_set_uint64(v7, "usbDevID", v9);
    }

    xpc_dictionary_set_data(v7, "data", a2, a3);
    xpc_dictionary_set_string(v7, "requestType", "dataArrived");
    if (*(a1 + 8) == 1)
    {
      v10 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    }

    else
    {
      if (!v6)
      {
LABEL_20:
        xpc_release(v7);
        return;
      }

      v10 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    }

    [v10 sendMessage:v7];
    goto LABEL_20;
  }
}

void *sub_10000538C(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_10000541C(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t sub_100005490(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = bswap64(*a2 | (*(a2 + 2) << 32));
  v6 = v2;
  do
  {
    v7 = bswap64(*(v3 + 32) | (*(v3 + 36) << 32));
    v8 = v7 >= v5;
    v9 = v7 > v5;
    v10 = !v8;
    v11 = v9 - v10;
    if (v11 >= 0)
    {
      v6 = v3;
    }

    v3 = *(v3 + ((v11 >> 28) & 8));
  }

  while (v3);
  if (v6 == v2 || bswap64(*a2 | (*(a2 + 2) << 32)) < bswap64(*(v6 + 32) | (*(v6 + 36) << 32)))
  {
    return v2;
  }

  return v6;
}

void *sub_100005520(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3 | (*(a3 + 2) << 32));
    do
    {
      while (1)
      {
        v7 = v4;
        if (v6 >= bswap64(*(v4 + 8) | (*(v4 + 18) << 32)))
        {
          break;
        }

        v4 = *v4;
        result = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (bswap64(*(v4 + 8) | (*(v4 + 18) << 32)) >= bswap64(*a3 | (*(a3 + 2) << 32)))
      {
        break;
      }

      result = v4 + 1;
      v4 = v4[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

uint64_t sub_1000055A8()
{
  qword_100031D58 = 0;
  qword_100031D50 = 0;
  qword_100031D48 = &qword_100031D50;
  __cxa_atexit(sub_100003E58, &qword_100031D48, &_mh_execute_header);
  qword_100031E68 = &qword_100031E68;
  qword_100031E70 = &qword_100031E68;
  qword_100031E78 = 0;

  return __cxa_atexit(sub_100003E84, &qword_100031E68, &_mh_execute_header);
}

intptr_t sub_100005664(intptr_t result)
{
  if (result)
  {
    v1 = result;
    result = (*(*result + 80))(result);
    if (result == 10)
    {
      sub_100011860(v1);
      *(v1 + 200) = 1;
      v2 = *(v1 + 192);

      return dispatch_semaphore_signal(v2);
    }
  }

  return result;
}

uint64_t sub_1000056E4(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_semaphore_create(0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  global_queue = dispatch_get_global_queue(2, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000057CC;
  v8[3] = &unk_10002CD78;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = v4;
  v8[7] = &v9;
  dispatch_async(global_queue, v8);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v4);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1000058BC(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if ((*(a1 + 200) & 1) == 0)
  {
    do
    {
      v10[3] = 0;
      v2 = *(a1 + 88);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005A5C;
      block[3] = &unk_10002CDA0;
      block[4] = &v9;
      block[5] = a1;
      dispatch_sync(v2, block);
      v3 = v10[3];
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          v5 = *(v3 + 16);
          if (v5)
          {
            sub_100004C08(a1, v4, v5);
            free(*(v10[3] + 8));
            *(v10[3] + 8) = 0;
            *(v10[3] + 16) = 0;
            v6 = *(a1 + 80);
            v7[0] = _NSConcreteStackBlock;
            v7[1] = 3221225472;
            v7[2] = sub_100005AAC;
            v7[3] = &unk_10002CDA0;
            v7[4] = &v9;
            v7[5] = a1;
            dispatch_sync(v6, v7);
          }
        }
      }

      else
      {
        dispatch_semaphore_wait(*(a1 + 192), 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    while (!*(a1 + 200));
  }

  _Block_object_dispose(&v9, 8);
}

void sub_100005A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005A5C(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1[23];
  if (v2)
  {
    v3 = v1[22];
    *(*(*(result + 32) + 8) + 24) = *(*(v1[19] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
    v1[22] = v3 + 1;
    v1[23] = v2 - 1;
    return sub_100006448((v1 + 18), 1);
  }

  return result;
}

void sub_100005AC0(void *a1)
{
  v2 = sub_100003F0C(a1, 0, 0);
  *v2 = &off_10002CDD0;
  *(v2 + 96) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 200) = 0;
  a1[24] = dispatch_semaphore_create(0);
  a1[10] = dispatch_queue_create("com.apple.iaptransportd.ClientPortStackLock", 0);
  a1[11] = dispatch_queue_create("com.apple.iaptransportd.ClientPortQueueLock", 0);
  operator new[]();
}

void sub_100005C60(_Unwind_Exception *a1)
{
  sub_1000062E8(v3);
  sub_1000062E8(v2);
  sub_100003F80(v1);
  _Unwind_Resume(a1);
}

void *sub_100005CA0(uint64_t a1)
{
  *a1 = &off_10002CDD0;
  v2 = *(a1 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005DE0;
  block[3] = &unk_10002CA90;
  block[4] = a1;
  dispatch_sync(v2, block);
  dispatch_sync(*(a1 + 64), &stru_10002CE78);
  dispatch_release(*(a1 + 64));
  if (*(a1 + 72))
  {
    operator delete[]();
  }

  *(a1 + 72) = 0;
  dispatch_release(*(a1 + 88));
  dispatch_release(*(a1 + 80));
  dispatch_release(*(a1 + 192));

  sub_1000062E8((a1 + 144));
  sub_1000062E8((a1 + 96));
  return sub_100003F80(a1);
}

uint64_t sub_100005DE0(uint64_t result)
{
  for (i = *(result + 32); ; result = sub_100006448(i + 144, 1))
  {
    v2 = *(i + 184);
    if (!v2)
    {
      break;
    }

    ++*(i + 176);
    *(i + 184) = v2 - 1;
  }

  return result;
}

void sub_100005E30(uint64_t a1)
{
  sub_100005CA0(a1);

  operator delete();
}

uint64_t sub_100005E9C(uint64_t a1, const void *a2, unsigned int a3)
{
  if (a2)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v6, "data", a2, a3);
    xpc_dictionary_set_string(v6, "IAPClientPortUUIDStr", [*(a1 + 48) UTF8String]);
    xpc_dictionary_set_string(v6, "requestType", "transmitData");
    xpc_connection_send_message(*(a1 + 56), v6);
    xpc_release(v6);
    return 0;
  }

  else
  {
    NSLog(@"CIapPortClientPort::PortTransmitData ERROR: NULL packet");
    return 14;
  }
}

void sub_100005F80(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v6 = [[NSData alloc] initWithBytes:a2 length:a3];
  v7 = *(a1 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006030;
  v8[3] = &unk_10002CEC8;
  v8[5] = a1;
  v8[6] = a2;
  v9 = v3;
  v8[4] = v6;
  dispatch_async(v7, v8);
}

void sub_100006030(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(v2 + 200) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 56))
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v6[0] = 0;
          v6[1] = v6;
          v6[2] = 0x2020000000;
          v6[3] = 0;
          v4 = *(v2 + 80);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100006104;
          block[3] = &unk_10002CEA0;
          block[5] = v6;
          block[6] = v2;
          block[4] = v3;
          dispatch_sync(v4, block);
          _Block_object_dispose(v6, 8);
        }
      }
    }
  }
}

void sub_100006104(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 136);
  if (v3)
  {
    v4 = v3 - 1;
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(v2 + 104) + (((*(v2 + 128) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 128) + v4) & 0x1FF));
    *(v2 + 136) = v4;
    sub_100006B84((v2 + 96), 1);
  }

  else
  {
    NSLog(@"CIapPortClientPort::ProcessIncomingData dropped data due to full packet queue!!");
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = [*(a1 + 32) length];
    *(*(*(*(a1 + 40) + 8) + 24) + 8) = malloc_type_malloc(v5, 0x100004077774924uLL);
    memcpy(*(*(*(*(a1 + 40) + 8) + 24) + 8), [*(a1 + 32) bytes], v5);
    *(*(*(*(a1 + 40) + 8) + 24) + 16) = v5;
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v8.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v8, 0);
    **(*(*(a1 + 40) + 8) + 24) = 1000 * v8.tv_sec + v8.tv_usec / 1000;
    v6 = *(v2 + 88);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000062BC;
    v7[3] = &unk_10002CDA0;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    dispatch_sync(v6, v7);
    dispatch_semaphore_signal(*(v2 + 192));
  }
}

uint64_t sub_1000062E8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = *v6;
    v8 = *v6 + 8 * (v5 & 0x1FF);
    while (v8 != *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF))
    {
      v8 += 8;
      if (v8 - v7 == 4096)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
        v8 = v9;
      }
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  a1[4] = v11;
LABEL_15:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1000063F8(a1);
}

uint64_t sub_1000063F8(uint64_t a1)
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

uint64_t sub_100006448(uint64_t a1, int a2)
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

void *sub_1000064A8(void *result, void *a2)
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
    result = sub_100006530(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_100006530(void *a1)
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
    sub_100006B3C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100006704(a1, &v10);
}

void sub_1000066B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100006704(void *result, void *a2)
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

      sub_100006B3C(result, v11);
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

const void **sub_10000680C(const void **result, void *a2)
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

      sub_100006B3C(result, v9);
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

void *sub_100006918(void *result, void *a2)
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

      sub_100006B3C(result[4], v11);
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

const void **sub_100006A20(const void **result, void *a2)
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

      sub_100006B3C(result[4], v9);
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

void sub_100006B3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100006B2C();
}

uint64_t sub_100006B84(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

uint64_t sub_100006BF4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006CB8;
  block[3] = &unk_10002CEA0;
  block[4] = a1;
  block[5] = &v8;
  block[6] = a2;
  dispatch_sync(global_queue, block);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_100006D30(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006DB4;
  block[3] = &unk_10002CA90;
  block[4] = a1;
  dispatch_sync(global_queue, block);
}

uint64_t sub_100006DB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100006DE4(id a1)
{
  qword_100031FD8 = dispatch_queue_create("com.apple.iaptransportd.attachedAIDBAccessoryCacheQueue", 0);
  v1 = CFPreferencesCopyValue(@"attachedAIDBAccessoriesCache", @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if (v1 && (v2 = v1, DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v1, 2uLL), CFRelease(v2), DeepCopy))
  {
    qword_100031FE0 = DeepCopy;
  }

  else
  {
    qword_100031FE0 = objc_alloc_init(NSMutableDictionary);
    CFPreferencesSetValue(@"attachedAIDBAccessoriesCache", qword_100031FE0, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    if (!CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost))
    {
      CStringPtr = CFStringGetCStringPtr(@"com.apple.iaptransportd", 0x8000100u);
      syslog(3, "%s CFPrefsSynchronize sync to %s failed !\n", "InitializeAttachedAIDBAccessoriesCache_block_invoke", CStringPtr);
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s s_attachedAIDBAccessoryCacheDict: %@\n", "InitializeAttachedAIDBAccessoriesCache_block_invoke", qword_100031FE0);
  }
}

BOOL sub_100006F48(io_registry_entry_t a1)
{
  v1 = sub_10001A990(a1);
  if (v1 == 3 && byte_100031D98 == 1)
  {
    syslog(4, "%s skipping authentication on attach of eACCTransportIOAccessoryAuthCPInternal_TouchController\n", "SkipAuthenticationOnServiceAttach");
  }

  return v1 == 3;
}

uint64_t sub_100006FB0(void *a1, io_registry_entry_t entry)
{
  v13 = entry;
  entryID = 0xAAAAAAAAAAAAAAAALL;
  IORegistryEntryGetRegistryEntryID(entry, &entryID);
  v3 = [NSNumber alloc];
  v4 = [v3 initWithUnsignedLongLong:entryID];
  v5 = sub_10000716C(a1, sub_100007318, 0, &v13, 0);
  if (!v5)
  {
    v6 = sub_10000716C(a1, sub_100007318, 0, &unk_100024CA8, 3);
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = a1;
    }
  }

  v7 = *(v5 + 128);
  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    *(v5 + 128) = v7;
  }

  if ([v7 objectForKey:v4])
  {
    syslog(3, "Already registered for notifications from AppleAuthCP entryID\n");
  }

  else
  {
    syslog(3, "no notification for entryID=0x%llx\n", entryID);
    notification = -1431655766;
    if (IOServiceAddInterestNotification(*(*(v5 + 48) + 32), v13, "IOGeneralInterest", sub_10000732C, a1, &notification))
    {
      syslog(3, "ERROR: Failed to register for notification from AppleAuthCP entryID:0x%llx, fail status:0x%llx\n");
    }

    else
    {
      syslog(3, "registered notification for entryID=0x%llx\n", entryID);
      v9 = [NSNumber alloc];
      v10 = [v9 initWithUnsignedInt:notification];
      [*(v5 + 128) setObject:v10 forKey:v4];
    }
  }

  syslog(3, "registration done for entryID\n");
  return v5;
}

uint64_t sub_10000716C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (a3)
  {
    v6 = (a3 & 1 | a2) == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 || a2 != 0;
  if (a4 && v8)
  {
    if (a5 & 1) != 0 || ((v14 = (a1 + (a3 >> 1)), (a3) ? (v15 = (*(*v14 + a2))(v14, a4)) : (v15 = (a2)(v14, a4)), *(v21 + 24) = v15, !v15))
    {
      v16 = *(a1 + 112);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100008EA4;
      block[3] = &unk_10002D0A0;
      v19 = a5;
      block[6] = a1;
      block[7] = a2;
      block[8] = a3;
      block[9] = a4;
      block[4] = &v20;
      block[5] = &v24;
      dispatch_sync(v16, block);
      v5 = v25[3];
    }

    else
    {
      v25[3] = a1;
      v5 = a1;
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v5;
}

void sub_1000072F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10000732C(uint64_t a1, io_object_t object, int a3)
{
  if (a3 == -469794816 && a1 != 0 && object != 0)
  {
    v12 = v3;
    v13 = v4;
    IOObjectRetain(object);
    v9 = *(*(a1 + 48) + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001B750;
    v10[3] = &unk_10002CC88;
    v10[4] = a1;
    v11 = object;
    dispatch_async(v9, v10);
  }
}

uint64_t sub_1000073DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100003F0C(a1, 0, 0);
  *v6 = off_10002CF30;
  v6[11] = v6 + 11;
  v6[12] = v6 + 11;
  v6[13] = 0;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPort:%hhx, pAIDBStaticData:%hhx, pAIDBRoot:%hhx, certCacheRefCount:%02X\n", "CIapPortAppleIDBus", a1, a3, *a3, byte_100031FD0);
  }

  v7 = dispatch_queue_create("com.apple.iaptd.aidbListLock", 0);
  *(a1 + 112) = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000754C;
  block[3] = &unk_10002D010;
  block[5] = a1;
  block[6] = a3;
  block[4] = a2;
  dispatch_sync(v7, block);
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBPort:%hhx, bIsRoot:%d\n", "CIapPortAppleIDBus", a1, *(a1 + 238));
  }

  return a1;
}

void sub_10000752C(_Unwind_Exception *a1)
{
  sub_10000538C(v2);
  sub_100003F80(v1);
  _Unwind_Resume(a1);
}

void sub_10000754C(void *a1)
{
  v1 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v3 = a1[5];
  v2 = a1[6];
  v26[3] = v3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v4 = *v2;
  if (!*v2)
  {
    v4 = v3;
  }

  v25 = v4;
  *(v3 + 48) = v2;
  *(v3 + 124) = 0;
  *(v3 + 128) = 0;
  *(v3 + 238) = v3 == v4;
  if (v3 == v4)
  {
    *v2 = v4;
    *(a1[6] + 32) = IONotificationPortCreate(kIOMasterPortDefault);
    *(a1[6] + 40) = 0;
    v6 = a1[6];
    *(v6 + 48) = 0;
    *(v6 + 64) = 0;
    *(a1[6] + 72) = 0;
    v7 = dispatch_queue_create("com.apple.iaptransportd.authQue", &_dispatch_queue_attr_concurrent);
    v8 = a1[6];
    *(v8 + 56) = v7;
    *(v8 + 80) = 0;
    v9 = a1[6];
    *(v9 + 88) = 0;
    if (v9 == &xmmword_100031EE8)
    {
      qword_100031F48 = 10000000000;
    }

    else
    {
      *(v9 + 96) = 30000000000;
    }

    v10 = v23[3];
    if (v10 == xmmword_100031E80 || v10 == xmmword_100031EE8)
    {
      if (!byte_100031FD0++)
      {
        qword_100031FB8 = a1[4];
        qword_100031FC0 = dispatch_queue_create("com.apple.iaptransportd.certQue", 0);
        v12 = CFPreferencesCopyValue(@"authCertCache", @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
        if (v12 && (MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v12), CFRelease(v12), MutableCopy))
        {
          qword_100031FC8 = MutableCopy;
          sub_100007AA8();
        }

        else
        {
          qword_100031FC8 = objc_alloc_init(NSMutableDictionary);
          CFPreferencesSetValue(@"authCertCache", qword_100031FC8, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
          if (!CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost))
          {
            CStringPtr = CFStringGetCStringPtr(@"com.apple.iaptransportd", 0x8000100u);
            syslog(3, "%s CFPrefsSynchronize sync to %s failed !\n", "CIapPortAppleIDBus_block_invoke", CStringPtr);
          }
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_100007BE8, @"com.apple.iapd.LoggingPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        byte_100031D98 = CFPreferencesGetAppBooleanValue(@"AppleIDBusEventLogging", @"com.apple.iaptransportd", 0) != 0;
        byte_100031D80 = 0;
        byte_100031D99 = 0;
        if (MGGetBoolAnswer() && (MGGetBoolAnswer() & 1) == 0)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AppleIDAuthAlwaysPasses", @"com.apple.iaptransportd", 0);
          byte_100031D80 = AppBooleanValue != 0;
          if (byte_100031D98 == 1)
          {
            syslog(4, "CIapPortAppleIDBus Auth flag gbAuthAlwaysPasses:%d\n", AppBooleanValue != 0);
          }

          v17 = CFPreferencesGetAppBooleanValue(@"AppleIDAuthCertNotCached", @"com.apple.iaptransportd", 0);
          byte_100031D99 = v17 != 0;
          if (byte_100031D98 == 1)
          {
            syslog(4, "CIapPortAppleIDBus Auth flag gbAuthCertNotCached:%d\n", v17 != 0);
          }

          AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AppleIDAuthMaxTryCount", @"com.apple.iaptransportd", 0);
          if (AppIntegerValue)
          {
            byte_100031AE8 = AppIntegerValue;
          }

          if (byte_100031D98 == 1)
          {
            syslog(4, "CIapPortAppleIDBus Auth flag gAuthMaxTryCount:%02X\n", byte_100031AE8);
          }
        }
      }

      if (qword_100031D78 != -1)
      {
        sub_10001B7A0();
      }
    }

    v1 = -1;
  }

  *(v3 + 120) = v1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 56) = 0;
  *(v3 + 80) = 0;
  *(v3 + 224) = 0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 226) = 0;
  *(v3 + 233) = 0;
  *(v3 + 237) = 0;
  *(v3 + 239) = 0;
  *(v3 + 144) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 148) = 0u;
  *(v3 + 164) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 264) = dispatch_queue_create("com.apple.iaptransportd.aidbAccAttachLock", 0);
  if (v3 == xmmword_100031E80)
  {
    ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
    sub_100007C30(v3, ServiceWithPrimaryPort, 1);
  }

  v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  *(v3 + 136) = v20;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100007CDC;
  handler[3] = &unk_10002CFE8;
  handler[4] = &v22;
  handler[5] = v26;
  dispatch_source_set_event_handler(v20, handler);
  dispatch_source_set_timer(*(v3 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v3 + 136));
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);
}

void sub_100007A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100007AA8()
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR\n", "AuthCertValidateCache");
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B470;
  block[3] = &unk_10002CFE8;
  block[4] = &v6;
  block[5] = &v2;
  dispatch_sync(qword_100031FC0, block);
  if (byte_100031D98 == 1)
  {
    v0 = v7[3];
    syslog(4, "%s EXIT certCountOnEntry:%02lX, certCountDeleted:%02lX\n", "AuthCertValidateCache", v0, v3[3]);
  }

  _Block_object_dispose(&v2, 8);
  _Block_object_dispose(&v6, 8);
}

void sub_100007BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007BE8()
{
  NSLog(@"Logging preferences changed! (IapPortAppleIDBus)");
  result = CFPreferencesGetAppBooleanValue(@"AppleIDBusEventLogging", @"com.apple.iaptransportd", 0);
  byte_100031D98 = result != 0;
  return result;
}

void sub_100007C30(uint64_t a1, io_object_t object, int a3)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPort:%hhx, bIsRoot:%d, ioService:%04X, ioAccPortID:%04X\n", "HandleIOAccPortAttach", a1, *(a1 + 238), object, a3);
  }

  *(a1 + 60) = object;
  IOObjectRetain(object);
  *(a1 + 56) = a3;
  *(a1 + 16) = a3;
  *(a1 + 20) = a3;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBPort:%hhx\n", "HandleIOAccPortAttach", a1);
  }
}

void sub_100007CDC(uint64_t a1)
{
  v2 = sub_10000716C(*(*(*(a1 + 32) + 8) + 24), sub_100007E10, 0, *(*(*(a1 + 40) + 8) + 24), 0);
  if (v2)
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    if (v2 == v3)
    {
      syslog(4, "CIapPortAppleIDBus: Auth timer timeout completed on pAIDBPort:%hhx, portID:%02X downstream port\n", *(*(*(a1 + 40) + 8) + 24), *(v3 + 56));
      v4 = *(a1 + 40);
      if (*(*(*(a1 + 32) + 8) + 24) != xmmword_100031E80)
      {
        v5 = *(*(v4 + 8) + 24);
        if (*(v5 + 237) == 1)
        {
          [IAPTDPostAlert PostAccessoryNotification:@"ACCESSORY_UNSUPPORTED" forMsg:0 withArg:0 forDefaultButton:@"DISMISS_STRING" withAlternateButton:0 forNotification:v5 + 216 withCallback:0.0 andTimeout:nullsub_16];
          v4 = *(a1 + 40);
        }
      }

      v6 = *(*(v4 + 8) + 24);

      sub_100007E20(v6, 1, 0, 0);
    }
  }
}

void sub_100007E20(uint64_t a1, int a2, int a3, _OWORD *a4)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPortUpstream:%hhx, bIsRoot:%d, oldAuthState:%02X, newAuthState:%02X, pkAccAuthCaps:%hhx\n", "AuthStateUpdate", a1, *(a1 + 238), *(a1 + 148), a2, a4);
  }

  if ((a2 - 1) >= 2)
  {
    sub_10001A924();
  }

  sub_10000A9A4(a1, a2, a4);
  if (a2 == 2 && a3)
  {
    sub_10000716C(a1, sub_100009010, 0, &unk_100024CA8, 3);
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT authStateDownstream:%02X, newAuthState:%02X\n", "AuthStateUpdate", *(a1 + 148), a2);
  }
}

void *sub_100007F28(uint64_t a1)
{
  *a1 = off_10002CF30;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPort:%hhx, bIsRoot:%d, certCacheRefCount:%02X\n", "~CIapPortAppleIDBus", a1, *(a1 + 238), byte_100031FD0);
  }

  sub_100008064(a1);
  v2 = *(a1 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008174;
  block[3] = &unk_10002CA90;
  block[4] = a1;
  dispatch_sync(v2, block);
  dispatch_release(*(a1 + 112));
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBPort:%hhx\n", "~CIapPortAppleIDBus", a1);
  }

  sub_10000538C((a1 + 88));
  return sub_100003F80(a1);
}

void sub_100008044(_Unwind_Exception *a1)
{
  sub_10000538C(v1 + 11);
  sub_100003F80(v1);
  _Unwind_Resume(a1);
}

void sub_100008064(uint64_t a1)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPort:%hhx, bIsRoot:%d, bAuthTimerRunning:%d, pAccNotification:%hhx, aidbAttachUID:%02X\n", "HandleIOAccPortDetach", a1, *(a1 + 238), *(a1 + 144), *(a1 + 216), *(a1 + 224));
  }

  dispatch_source_set_timer(*(a1 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v2 = *(a1 + 216);
  *(a1 + 144) = 0;
  if (v2)
  {
    [IAPTDPostAlert TearDownAccessoryNotification:a1 + 216];
    *(a1 + 216) = 0;
  }

  *(a1 + 148) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  ++*(a1 + 224);
  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 248) = 0;
  }

  *(a1 + 256) = 0;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBPort:%hhx, aidbAttachUID:%02X\n", "HandleIOAccPortDetach", a1, *(a1 + 224));
  }
}

void sub_100008174(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((sub_1000046CC(v1) & 1) == 0)
  {
    while (1)
    {
      v29 = *(v1 + 104);
      if (!v29)
      {
        break;
      }

      v30 = *(v1 + 96);
      v31 = v30[2];
      if (v31)
      {
        (*(*v31 + 8))(v30[2]);
        v30 = *(v1 + 96);
        v29 = *(v1 + 104);
      }

      v33 = *v30;
      v32 = v30[1];
      *(v33 + 8) = v32;
      *v32 = v33;
      *(v1 + 104) = v29 - 1;
      operator delete(v30);
    }
  }

  dispatch_source_cancel(*(v1 + 136));
  dispatch_release(*(v1 + 136));
  *(v1 + 136) = 0;
  v2 = *(v1 + 120);
  if (v2 + 1 >= 2)
  {
    IOObjectRelease(v2);
    *(v1 + 120) = 0;
  }

  if (*(v1 + 72))
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, *(v1 + 72), kCFRunLoopCommonModes);
    *(v1 + 72) = 0;
  }

  v4 = *(v1 + 80);
  if (v4)
  {
    IOObjectRelease(v4);
    *(v1 + 80) = 0;
  }

  v5 = *(v1 + 60);
  if (v5)
  {
    IOObjectRelease(v5);
    *(v1 + 60) = 0;
  }

  v6 = *(v1 + 64);
  if (v6)
  {
    IOObjectRelease(v6);
    *(v1 + 64) = 0;
  }

  v7 = *(v1 + 68);
  if (v7)
  {
    IOObjectRelease(v7);
    *(v1 + 68) = 0;
  }

  v8 = *(v1 + 124);
  if (v8)
  {
    IOObjectRelease(v8);
    *(v1 + 124) = 0;
  }

  v9 = *(v1 + 128);
  if (v9)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          IOObjectRelease([objc_msgSend(*(v1 + 128) objectForKey:{*(*(&v34 + 1) + 8 * i)), "unsignedIntValue"}]);
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    *(v1 + 128) = 0;
  }

  dispatch_sync(*(v1 + 264), &stru_10002D030);
  dispatch_release(*(v1 + 264));
  if (*(v1 + 12))
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = +[IAPTransportServer sharedIAPTransportServer];
    xpc_dictionary_set_uint64(v15, "portID", v1);
    xpc_dictionary_set_string(v15, "requestType", "transportLeft");
    if (sub_100011744() && *(v1 + 8) == 1)
    {
      [objc_msgSend(v16 "iap2d_connection")];
    }

    if (sub_1000116BC() && (*(v1 + 8) & 1) == 0)
    {
      [objc_msgSend(v16 "iapd_connection")];
    }

    xpc_release(v15);
    IOObjectRelease(*(v1 + 12));
    *(v1 + 12) = 0;
  }

  if (*(v1 + 238) == 1)
  {
    v17 = *(v1 + 48);
    if (*(v17 + 24))
    {
      v18 = CFRunLoopGetMain();
      CFRunLoopRemoveSource(v18, *(*(v1 + 48) + 24), kCFRunLoopCommonModes);
      v17 = *(v1 + 48);
      *(v17 + 24) = 0;
    }

    if (*(v17 + 40))
    {
      v19 = CFRunLoopGetMain();
      CFRunLoopRemoveSource(v19, *(*(v1 + 48) + 40), kCFRunLoopCommonModes);
      v17 = *(v1 + 48);
      *(v17 + 40) = 0;
    }

    IOObjectRelease(*(v17 + 48));
    v20 = *(v1 + 48);
    *(v20 + 48) = 0;
    IOObjectRelease(*(v20 + 52));
    v21 = *(v1 + 48);
    *(v21 + 52) = 0;
    if (*(v21 + 64))
    {
      v22 = CFRunLoopGetMain();
      CFRunLoopRemoveSource(v22, *(*(v1 + 48) + 64), kCFRunLoopCommonModes);
      v21 = *(v1 + 48);
      *(v21 + 64) = 0;
    }

    v23 = *(v21 + 56);
    if (v23)
    {
      dispatch_release(v23);
      v21 = *(v1 + 48);
      *(v21 + 56) = 0;
    }

    IOObjectRelease(*(v21 + 72));
    v24 = *(v1 + 48);
    *(v24 + 72) = 0;
    IOObjectRelease(*(v24 + 76));
    v25 = *(v1 + 48);
    *(v25 + 76) = 0;
    if (*(v25 + 80))
    {
      v26 = CFRunLoopGetMain();
      CFRunLoopRemoveSource(v26, *(*(v1 + 48) + 80), kCFRunLoopCommonModes);
      v25 = *(v1 + 48);
      *(v25 + 80) = 0;
    }

    IOObjectRelease(*(v25 + 88));
    v27 = *(v1 + 48);
    *(v27 + 88) = 0;
    IOObjectRelease(*(v27 + 92));
    v28 = *(v1 + 48);
    *(v28 + 92) = 0;
    IONotificationPortDestroy(*(v28 + 32));
    *(*(v1 + 48) + 32) = 0;
    if (!--byte_100031FD0)
    {
      if (qword_100031FC0)
      {
        dispatch_release(qword_100031FC0);
        qword_100031FC0 = 0;
      }

      qword_100031FC8 = 0;
    }
  }
}

void sub_1000085D4(uint64_t a1)
{
  sub_100007F28(a1);

  operator delete();
}

void sub_100008640(uint64_t a1, int a2, uint64_t a3)
{
  connect = 0;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR this:%hhx, bIsRoot:%d, authStateDownstream:%02X\n", "HandleIOAccMgrEvent", a1, *(a1 + 238), *(a1 + 148));
  }

  if (*(a1 + 148))
  {
    goto LABEL_17;
  }

  switch(a2)
  {
    case -469794724:
      v8 = @"ACCESSORY_UNSUPPORTED";
LABEL_12:
      [IAPTDPostAlert PostAccessoryNotification:v8 forMsg:0 withArg:0 forDefaultButton:@"OKAY_STRING" withAlternateButton:0 forNotification:a1 + 216 withCallback:0.0 andTimeout:nullsub_16];
LABEL_16:
      syslog(3, "%s setting iap9PinAuthStateFail state\n", "HandleIOAccMgrEvent");
      sub_100007E20(a1, 1, 0, 0);
      break;
    case -469794722:
      if (![qword_100031FB8 bOSInternalBuild])
      {
        break;
      }

      v8 = @"This connector orientation is wrong and must be inverted";
      goto LABEL_12;
    case -469794723:
      v6 = [qword_100031FB8 iDeviceClass] - 1;
      v7 = v6 >= 3 ? &stru_10002E218 : off_10002D348[v6];
      v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ACCESSORY_UNRELIABLE%@", v7);
      if (v9)
      {
        v10 = v9;
        [IAPTDPostAlert PostAccessoryNotification:v9 forMsg:0 withArg:0 forDefaultButton:@"DISMISS_STRING" withAlternateButton:0 forNotification:a1 + 216 withCallback:0.0 andTimeout:nullsub_16];
        CFRelease(v10);
        goto LABEL_16;
      }

      break;
  }

LABEL_17:
  if (*(a3 + 8) != *(a1 + 234))
  {
    v11 = IOServiceOpen(*(a1 + 60), mach_task_self_, 0, &connect);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = connect == 0;
    }

    if (v12)
    {
      syslog(3, "%s IOServiceOpen fail status:%02X, ioConn:%04X\n", "HandleIOAccMgrEvent", v11, connect);
    }

    else
    {
      v13 = *(a1 + 234);
      v14 = IOAccessoryManagerSetBatteryPackMode();
      if (v14)
      {
        if (v14 == -536870183)
        {
          syslog(6, "%s IOAccessoryManagerSetBatteryPackMode not attached. status %02X\n");
        }

        else
        {
          syslog(3, "%s IOAccessoryManagerSetBatteryPackMode fail status %02X\n");
        }
      }

      IOServiceClose(connect);
    }
  }

  if (*a3 != *(a1 + 226) || *(a3 + 8) != *(a1 + 234))
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = sub_1000116BC();
    v18 = sub_100011744();
    xpc_dictionary_set_string(v16, "requestType", "IAPDigitalIDState");
    xpc_dictionary_set_data(v16, "IAPDigitalIDData", (a1 + 226), 0xAuLL);
    if (v17 && +[IAPTransportServer supportsIAPD])
    {
      [objc_msgSend(qword_100031FB8 "iapd_connection")];
    }

    if (v18)
    {
      [objc_msgSend(qword_100031FB8 "iap2d_connection")];
    }

    xpc_release(v16);
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT this:%hhx\n", "HandleIOAccMgrEvent", a1);
  }
}

void sub_1000089C8(_BYTE *a1, char *a2)
{
  v4 = byte_100031D98;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR this:%hhx, bIsRoot:%d\n", "HandleIDBusStateUpdate", a1, a1[238]);
    v4 = byte_100031D98;
  }

  v5 = *a2;
  v6 = (*a2 >> 3) & 3;
  v7 = a2[1];
  v8 = a2[2];
  v9 = (*a2 & 4) != 0;
  a1[226] = (*a2 & 0x20) != 0;
  a1[227] = v6;
  a1[228] = v9;
  a1[229] = v5 & 3;
  a1[230] = v7 >> 4;
  a1[231] = (v7 & 2) != 0;
  a1[232] = v7 & 1;
  a1[233] = v8 >> 7;
  a1[234] = (v8 & 0x40) != 0;
  a1[235] = (v8 & 0x10) != 0;
  if (v4)
  {
    syslog(4, "%s EXIT this:%hhx\n", "HandleIDBusStateUpdate", a1);
  }
}

void *sub_100008B0C(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_10000541C(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_10000538C(v10);
}

void sub_100008BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000538C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100008BD8(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 112);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008E90;
  v4[3] = &unk_10002CDA0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100008C84(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008D40;
    block[3] = &unk_10002D078;
    block[5] = a1;
    block[6] = a2;
    block[4] = &v6;
    dispatch_sync(v2, block);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void *sub_100008D40(void *result)
{
  v1 = result[5];
  v2 = v1 + 88;
  v3 = *(v1 + 96);
  if (v3 != v1 + 88)
  {
    v4 = result;
    do
    {
      v5 = *(v3 + 16);
      if (v5 == v4[6])
      {
        sub_100008B0C(v2, v4 + 6);
        result = v4[6];
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        *(*(v4[4] + 8) + 24) = 1;
      }

      else
      {
        result = sub_100008BD8(v5);
        if (result)
        {
          result = sub_100008C84(*(v3 + 16), v4[6]);
          *(*(v4[4] + 8) + 24) = result;
        }
      }

      if (*(*(v4[4] + 8) + 24) == 1)
      {
        break;
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return result;
}

void *sub_100008E18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 88);
  for (i = *(v1 + 96); i != v2; i = i[1])
  {
    v4 = i[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return sub_10000538C(v2);
}

uint64_t sub_100008EA4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = v1 + 88;
  v3 = *(v1 + 96);
  if (v3 != v1 + 88)
  {
    v4 = result;
    v5 = *(result + 80);
    while (1)
    {
      v6 = *(v4 + 56);
      v7 = *(v4 + 64);
      v8 = (*(v3 + 16) + (v7 >> 1));
      if (v7)
      {
        v6 = *(*v8 + v6);
      }

      result = v6(v8, *(v4 + 72));
      *(*(*(v4 + 32) + 8) + 24) = result;
      if (*(*(*(v4 + 32) + 8) + 24) == 1)
      {
        result = *(v3 + 16);
      }

      else
      {
        if ((v5 & 2) != 0)
        {
          goto LABEL_11;
        }

        result = sub_100008BD8(*(v3 + 16));
        if (!result)
        {
          goto LABEL_11;
        }

        result = sub_10000716C(*(v3 + 16), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80));
      }

      *(*(*(v4 + 40) + 8) + 24) = result;
LABEL_11:
      if (!*(*(*(v4 + 40) + 8) + 24))
      {
        v3 = *(v3 + 8);
        if (v3 != v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100009010(uint64_t a1)
{
  if ((*(a1 + 240) & 1) == 0 && !*(a1 + 120))
  {
    if (byte_100031D98 == 1)
    {
      syslog(4, "%s About to enable acc. power for CIapPortAppleIDBus instance:%hhx\n", "EnableAccPowerForTransport", a1);
    }

    sub_100011538(*(a1 + 60), 3);
    *(a1 + 240) = 1;
  }

  return 0;
}

uint64_t sub_100009090(uint64_t a1, void *a2)
{
  v4 = sub_100003EAC(a1);
  IOAccessoryPortGetServiceWithPort();
  ManagerService = IOAccessoryPortGetManagerService();
  v13 = ManagerService;
  do
  {
    v6 = ManagerService;
    ManagerService = IOAccessoryManagerGetUpstreamService();
  }

  while (ManagerService);
  v7 = sub_100003EB8(a1);
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pIapPort:%hhx, ioAccPortID:%02X, ioAccPortMgrID:%02X, ioSvcMgrRoot:%04X\n", "GetAuthStateByPortInstance", a1, v4, v7, v6);
  }

  if (xmmword_100031E80)
  {
    if (*(xmmword_100031E80 + 60) == v6)
    {
      v8 = xmmword_100031E80;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
  }

  if (xmmword_100031EE8)
  {
    if (*(xmmword_100031EE8 + 60) == v6)
    {
      v8 = xmmword_100031EE8;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_16:
  if (byte_100031D98 == 1)
  {
    if (v8 == xmmword_100031E80)
    {
      v9 = "E75";
    }

    else
    {
      v9 = "CON";
    }

    if (!v8)
    {
      v9 = "NULL";
    }

    syslog(4, "%s ioSvcMgrRoot:%04X matches pAIDBRoot:%hhx (%s)\n", "GetAuthStateByPortInstance", v6, v8, v9);
  }

  if (v8 && sub_10000716C(v8, sub_100008FB8, 0, &v13, 0))
  {
    DigitalID = IOAccessoryManagerGetDigitalID();
    v11 = DigitalID ? 0 : -86;
    if (byte_100031D98 == 1)
    {
      syslog(4, "%s IOAccMgrGetDigitalID kernStatus:%02X, bAIDBulkData:%d, portAuthState:%02X, pkPortAuthCaps:%hhx\n", "GetAuthStateByPortInstance", DigitalID, v11 & 1, 0, 0);
    }
  }

  *a2 = 0;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pIapPort:%hhx, pAIDBRoot:%hhx, portAuthState:%02X, pkPortAuthCaps:%hhx\n", "GetAuthStateByPortInstance", a1, v8, 0, 0);
  }

  return 0;
}

id sub_1000092CC()
{
  v0 = IOServiceMatching("IOMikeyBusDevice");
  if (!v0 || ((existing = 0, !IOServiceGetMatchingServices(kIOMasterPortDefault, v0, &existing)) ? (v1 = existing == 0) : (v1 = 1), v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = IOIteratorNext(existing);
    if (v3)
    {
      v4 = v3;
      do
      {
        properties = 0;
        v5 = IORegistryEntryCreateCFProperties(v4, &properties, 0, 0);
        v2 = 0;
        v6 = properties;
        if (!v5 && properties)
        {
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s IOMikeyBusDevice properties: %@\n", "GetAccMikeyBusModelNumber", properties);
            v6 = properties;
          }

          v2 = [-[__CFDictionary objectForKey:](v6 objectForKey:{@"ModelNumber", "copy"}];
          v6 = properties;
        }

        if (v6)
        {
          CFRelease(v6);
        }

        IOObjectRelease(v4);
        v7 = IOIteratorNext(existing);
        if (!v7)
        {
          break;
        }

        v4 = v7;
      }

      while (!v2);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(existing);
  }

  return v2;
}

uint64_t sub_10000940C(uint64_t a1, int a2)
{
  v14 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = sub_10000716C(a1, sub_100007318, 0, &v14, 0);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = a1;
  }

  if (v4)
  {
    v5 = *(v4 + 264);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009530;
    block[3] = &unk_10002D108;
    v9 = v14;
    block[4] = &v10;
    block[5] = v4;
    dispatch_sync(v5, block);
  }

  else
  {
    syslog(4, "%s pAIDBPort == NULL\n", "LogAIDBAccessoryAttach");
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_100009530(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(v1 + 256) & 1) == 0 && *(v1 + 148) == 2 && *(v1 + 248))
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = &off_10002D0C0[4 * v3];
      v7 = *v6;
      if (![*(*(a1 + 40) + 248) caseInsensitiveCompare:*v6])
      {
        v8 = v6[1];
        v9 = sub_1000092CC();
        if (!v9)
        {
          syslog(4, "%s accMikeyBusModelNumber == NULL: %@\n", "LogAIDBAccessoryAttach_block_invoke", 0);
LABEL_11:
          v11 = 0;
LABEL_12:
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s calling ADClientAddValueForScalarKey with string: %@\n", "LogAIDBAccessoryAttach_block_invoke", v8);
          }

          ADClientAddValueForScalarKey();
          *(*(a1 + 40) + 256) = 1;
          v12 = v6[2];
          if (v12)
          {
            v13 = v11;
          }

          else
          {
            v13 = 1;
          }

          if ((v13 & 1) == 0)
          {
            v14 = sub_10001A4C4(*(a1 + 48));
            if (v14)
            {
              v15 = v14;
              sub_1000096D4(*(*(a1 + 40) + 248), v14, v12);
              CFRelease(v15);
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_21;
        }

        v10 = v9;
        if (![v9 caseInsensitiveCompare:v7])
        {
          goto LABEL_11;
        }

        if (![v10 caseInsensitiveCompare:@"A1748"])
        {
          v11 = 1;
          v8 = @"com.apple.iap.b225.attach";
          goto LABEL_12;
        }

        syslog(4, "%s Accessory attach was not logged due to a model number mismatch\n", "LogAIDBAccessoryAttach_block_invoke");
      }

LABEL_21:
      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_1000096D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR aidbAccModelNumberStr: %@ aidbAccSerialNumberStr: %@, uniqueAIDBAccessoryLogStr: %@\n", "AddAttachedAIDBAccessoryToCache", a1, a2, a3);
  }

  if (a1 && a2 && a3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B6D8;
    block[3] = &unk_10002D1C8;
    block[6] = a2;
    block[7] = a3;
    block[4] = &v9;
    block[5] = a1;
    dispatch_sync(qword_100031FD8, block);
    if (byte_100031D98 == 1)
    {
      syslog(4, "%s EXIT bEntryAdded:%d\n", "AddAttachedAIDBAccessoryToCache", *(v10 + 24));
    }

    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    syslog(4, "%s bad params\n", "AddAttachedAIDBAccessoryToCache");
    v6 = 0;
  }

  return v6 & 1;
}

void sub_100009840(int a1, _BYTE *a2, _BYTE *a3, _DWORD *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    return;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 31;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = dispatch_semaphore_create(0);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __buf[0] = v9;
  __buf[1] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B614;
  v15[3] = &unk_10002D1A0;
  v15[6] = &v20;
  v15[7] = &v16;
  v15[4] = v8;
  v15[5] = &v24;
  arc4random_buf(__buf, 0x20uLL);
  v10 = [NSData dataWithBytes:__buf length:32];
  v11 = +[ACCHWComponentAuth sharedManager];
  switch(a1)
  {
    case 1:
      [v11 authenticateBatteryWithChallenge:v10 completionHandler:v15];
      break;
    case 2:
      [v11 authenticateVeridianWithChallenge:v10 completionHandler:v15];
      v12 = 40;
      goto LABEL_12;
    case 3:
      [v11 authenticateTouchControllerWithChallenge:v10 completionHandler:v15];
      break;
    default:
      syslog(3, "%s: unknown module type: %x", "AuthProcessInternalModule", a1);
      goto LABEL_21;
  }

  v12 = 25;
LABEL_12:
  v13 = dispatch_time(0, 1000000000 * v12);
  if (dispatch_semaphore_wait(v8, v13))
  {
    syslog(3, "%s: Component(%d) Auth not completed within %d secs. Timeout has occurred", "AuthProcessInternalModule", a1, v12);
    *(v21 + 6) = 15;
  }

  if (!*(v25 + 24))
  {
    v14 = 3;
    goto LABEL_18;
  }

  if (byte_100031D98 == 1)
  {
    v14 = 6;
LABEL_18:
    syslog(v14, "%s: authPassed:%d", "AuthProcessInternalModule", *(v25 + 24));
  }

  *a2 = *(v25 + 24);
  *a3 = *(v17 + 24);
  *a4 = *(v21 + 6);
LABEL_21:
  if (v8)
  {
    dispatch_release(v8);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_100009AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009B1C(CFStringRef theString, uint64_t a2)
{
  if (byte_100031D98 == 1)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    syslog(4, "%s ENTR Serial number string:[%s], ppCFCertData:%hhx\n", "AuthCertDataFromHash", CStringPtr, a2);
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = sub_10000AF24;
  v12[4] = sub_10000AF34;
  v12[5] = theString;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AF40;
  block[3] = &unk_10002D150;
  block[4] = v12;
  block[5] = &v8;
  block[6] = a2;
  dispatch_sync(qword_100031FC0, block);
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT bCertMatch:%d\n", "AuthCertDataFromHash", *(v9 + 24));
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);
  return v5;
}

void sub_100009C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009CB0(CFStringRef theString, uint64_t a2)
{
  if (byte_100031D98 == 1)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    syslog(4, "%s ENTR Serial number string:[%s], pkCertData:%hhx\n", "AuthCertAddHashDataEntry", CStringPtr, a2);
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = sub_10000AF24;
  v12[4] = sub_10000AF34;
  v12[5] = theString;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B018;
  block[3] = &unk_10002D150;
  block[5] = &v8;
  block[6] = a2;
  block[4] = v12;
  dispatch_sync(qword_100031FC0, block);
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT bEntryAdded:%d\n", "AuthCertAddHashDataEntry", *(v9 + 24));
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);
  return v5;
}

void sub_100009E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009E44(CFStringRef theString)
{
  if (byte_100031D98 == 1)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    syslog(4, "%s ENTR certHash:[%s]\n", "AuthCertIncHashDataUsage", CStringPtr);
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_10000AF24;
  v18[4] = sub_10000AF34;
  v18[5] = theString;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B2C8;
  block[3] = &unk_10002D178;
  block[4] = v18;
  block[5] = &v10;
  block[6] = &v6;
  block[7] = &v14;
  dispatch_sync(qword_100031FC0, block);
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT certUsageOld:%02lX, certUsageNew:%02lX, bEntryInc:%d\n", "AuthCertIncHashDataUsage", v11[3], v7[3], *(v15 + 24));
  }

  v3 = *(v15 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  return v3;
}

void sub_100009FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A034(CFStringRef theString)
{
  if (byte_100031D98 == 1)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    syslog(4, "%s ENTR certHash:[%s]\n", "AuthCertDelHashDataEntry", CStringPtr);
  }

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = sub_10000AF24;
  v10[4] = sub_10000AF34;
  v10[5] = theString;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B228;
  block[3] = &unk_10002CFE8;
  block[4] = v10;
  block[5] = &v6;
  dispatch_sync(qword_100031FC0, block);
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT bEntryDeleted:%d\n", "AuthCertDelHashDataEntry", *(v7 + 24));
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v3;
}

void sub_10000A198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A1BC(uint64_t a1, io_service_t a2, int a3, __int16 a4, _OWORD *a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  v10 = a7;
  v35 = a3;
  service = a2;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR authCPService:%04X, pkAccAuthCaps:%hhx, bAuthPassed:%d, bAuthSvcFail:%d, aidbAttachUID:%02X\n", "AuthProcessFinish", a2, a5, a7, a8, a9);
  }

  v14 = xmmword_100031EE8;
  v15 = sub_10000716C(a1, sub_100008FB8, 0, &v35, 0);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = a1;
  }

  v17 = sub_10000716C(a1, sub_100007318, 0, &service, 0);
  if (!v17)
  {
    v18 = sub_10000716C(v16, sub_100007318, 0, &unk_100024CA8, 3);
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      v17 = v16;
    }
  }

  connect = -1431655766;
  v19 = IOServiceOpen(service, mach_task_self_, 0, &connect);
  if (v19)
  {
    syslog(4, "%s: IOServiceOpen() failed (ret=0x%x)\n", "AuthProcessFinish", v19);
  }

  else
  {
    v20 = sub_10001A658(connect, 1u);
    if (v20)
    {
      syslog(4, "%s: cpSetAuthFullPass() failed (ret=0x%x)\n", "AuthProcessFinish", v20);
    }

    IOServiceClose(connect);
  }

  sub_100006FB0(a1, service);
  v21 = v14 == a1;
  v22 = v14 == a1;
  if (v21 && *(a1 + 224) != a9 || a8 && *(v16 + 144) != 1)
  {
    dispatch_source_set_timer(*(v16 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(v16 + 144) = 0;
    *(v16 + 148) = 0;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0u;
    syslog(4, "%s Auth cancelled bIsRootCON:%d, aidbAttachUID:%02X, m_aidbAttachUID:%02X, bAuthSvcFail:%d, bAuthTimerRunning:%d\n", "AuthProcessFinish", v22, a9, *(a1 + 224), a8, 0);
    v29 = 0;
    p_weak_ivar_lyt = (&IAPEventLogger__classData + 56);
    goto LABEL_45;
  }

  p_weak_ivar_lyt = &IAPEventLogger__classData.weak_ivar_lyt;
  if (v10)
  {
    goto LABEL_21;
  }

  if (byte_100031D80 == 1)
  {
    if (byte_100031D98 == 1)
    {
      syslog(4, "%s Auth failed, gbAuthAlwaysPasses auth pass override !\n", "AuthProcessFinish");
    }

LABEL_21:
    v24 = *(v16 + 152);
    if (v24)
    {
      CFRelease(v24);
    }

    *(v16 + 152) = a6;
    v25 = service;
    *(v17 + 120) = service;
    IOObjectRetain(v25);
    sub_100007E20(v16, 2, 0, a5);
    sub_10000A6B8(v17);
    v26 = sub_10000E9B0(*(v16 + 56));
    if (v26)
    {
      v27 = v26;
      if (byte_100031D98 == 1)
      {
        syslog(4, "%s Start data pass-thru on upstream primaryPortID:%02X\n", "AuthProcessFinish", *(v16 + 56));
      }

      sub_10000F0EC(v27, *(v27 + 40));
    }

    if (byte_100031D98 == 1)
    {
      syslog(4, "%s Enabling Accessory Power on primaryPortID=%02X, ioService:%04X\n", "AuthProcessFinish", *(v17 + 56), *(v17 + 60));
    }

    v28 = sub_100011538(*(v17 + 60), 3);
    if (v28)
    {
      syslog(3, "%s ERROR: EnableAccessoryPowerForPortService ioService:%04X, fail status:%02X\n", "AuthProcessFinish", *(v17 + 60), v28);
    }

    else
    {
      *(v17 + 240) = 1;
    }

    if (IsAppleAccessory())
    {
      sub_10000940C(a1, service);
    }

    v29 = 1;
    goto LABEL_45;
  }

  syslog(3, "%s Auth fail; lock out primary port ID:%02X\n", "AuthProcessFinish", *(v17 + 56));
  if ((a4 & 0xFFFE) == 2 && v17 == a1)
  {
    sub_100004338(1);
    sub_100004338(0);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000A7E0;
    v33[3] = &unk_10002D050;
    v33[4] = &qword_100031E68;
    v33[5] = 0;
    pthread_mutex_lock(&stru_100031AA8);
    sub_10000A7E0(v33);
    pthread_mutex_unlock(&stru_100031AA8);
  }

  v30 = *(v16 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E18;
  block[3] = &unk_10002CA90;
  block[4] = v16;
  dispatch_sync(v30, block);
  if ((a8 & 1) == 0)
  {
    *(v16 + 225) = a9;
    [IAPTDPostAlert PostAccessoryNotification:@"ACCESSORY_UNSUPPORTED" forMsg:0 withArg:0 forDefaultButton:@"DISMISS_STRING" withAlternateButton:0 forNotification:v16 + 216 withCallback:0.0 andTimeout:nullsub_16];
  }

  sub_100007E20(v16, 1, 0, 0);
  v29 = 0;
LABEL_45:
  if (*(p_weak_ivar_lyt + 3480) == 1)
  {
    syslog(4, "%s EXIT authCPService:%04X, bAuthPassed:%d, bIsAccAttached:%d, pAIDBUpstream:%hhx\n", "AuthProcessFinish", service, v29, *(v17 + 237), v16);
  }

  return v16;
}

void sub_10000A6B8(uint64_t a1)
{
  if (byte_100031D98 == 1)
  {
    v2 = *(a1 + 48);
    v3 = *v2;
    if (v2 == &xmmword_100031E80)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBPort:%hhx, pAIDBRoot:%hhx (%s)\n", "EAServiceAccDetect", a1, v3, v4);
  }

  v5 = IOServiceMatching("IOAccessoryEAInterface");
  if (v5)
  {
    existing = 0;
    MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v5, &existing);
    v7 = existing;
    if (MatchingServices)
    {
      v8 = 1;
    }

    else
    {
      v8 = existing == 0;
    }

    if (!v8)
    {
      if (byte_100031D98 == 1)
      {
        syslog(4, "%s Call EAServicePublishCallback eaIterator:%04X\n", "EAServiceAccDetect", existing);
        v7 = existing;
      }

      sub_10000D0A4(**(a1 + 48), v7);
      v7 = existing;
    }

    IOObjectRelease(v7);
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBPort:%hhx\n", "EAServiceAccDetect", a1);
  }
}

void sub_10000A7E0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4 != v3)
  {
    do
    {
      if (*(a1 + 40))
      {
        break;
      }

      if ((*(**(v4 + 16) + 80))(*(v4 + 16)) == 1 || !(*(**(v4 + 16) + 80))(*(v4 + 16)))
      {
        (*(**(v4 + 16) + 32))(*(v4 + 16));
        [v2 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(v4 + 16))}];
      }

      v4 = *(v4 + 8);
    }

    while (v4 != *(a1 + 32));
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v2);
        }

        sub_100011860([*(*(&v9 + 1) + 8 * v8) unsignedLongLongValue]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_10000A9A4(uint64_t a1, int a2, _OWORD *a3)
{
  v4 = a2;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPortUpstream:%hhx, bIsRoot:%d, oldAuthState:%02X, newAuthState:%02X, pkAccAuthCaps:%hhx\n", "AuthStateUpdateInternal", a1, *(a1 + 238), *(a1 + 148), a2, a3);
  }

  dispatch_source_set_timer(*(a1 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  *(a1 + 144) = 0;
  if (v4 == 2)
  {
    goto LABEL_4;
  }

  if (byte_100031D80 == 1)
  {
    if (byte_100031D98 == 1)
    {
      syslog(4, "%s Auth failed, gbAuthAlwaysPasses auth pass override !\n", "AuthStateUpdateInternal");
    }

LABEL_4:
    v4 = 2;
  }

  if (!*(a1 + 148))
  {
    connect = 0;
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = &unk_100024CB0;
    }

    *(a1 + 148) = v4;
    if (v4 == 2)
    {
      v7 = v6[1];
      *(a1 + 160) = *v6;
      *(a1 + 176) = v7;
    }

    if (qword_100031D88 != -1)
    {
      sub_10001B7C8();
    }

    if (byte_100031D81 == 1)
    {
      v8 = *(a1 + 60);
      v9 = IOAccessoryManagerCopyDeviceInfo();
      if (v9)
      {
        syslog(3, "%s Unable to get accessory serial number for ioAccService:%04X, status:%04X\n", "AuthStateUpdateInternal", *(a1 + 60), v9);
      }
    }

    v10 = IOServiceOpen(*(a1 + 60), mach_task_self_, 0, &connect);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = connect == 0;
    }

    if (v11)
    {
      syslog(3, "%s IOServiceOpen fail status:%02X or NULL ioConn:%04X\n", "AuthStateUpdateInternal", v10, connect);
    }

    else
    {
      if (v4 == 1)
      {
        v17 = 0;
        v16 = 0xFFFF;
      }

      else if (v4 == 2)
      {
        v12 = CanChargeHighVoltage();
        if (v12)
        {
          v13 = 65;
        }

        else
        {
          v13 = 81;
        }

        if (v12)
        {
          v14 = 65470;
        }

        else
        {
          v14 = 65454;
        }

        v15 = CanUseAccPwrUHPM();
        if (v15)
        {
          v16 = v13 & 0xFFFFFFF0;
        }

        else
        {
          v16 = v13;
        }

        v17 = v14 | v15;
        if (CanUseAccPwrLoV())
        {
          v16 &= 0x11u;
          v17 |= 0x40u;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (byte_100031D98 == 1)
      {
        v18 = "FAILED";
        if (v4 == 2)
        {
          v18 = "PASSED";
        }

        syslog(4, "%s AUTH [%s], authCertCaps0:%08llX -> ioAccFeatMaskRevoke:%08X, ioAccFeatMaskAllow:%08X\n", "AuthStateUpdateInternal", v18, *v6, v16, v17);
      }

      v19 = connect;
      if (v16)
      {
        v20 = IOAccessoryManagerRevokeFeatures();
        v19 = connect;
        if (v20)
        {
          syslog(3, "%s IOAccMgrRevokeFeatures ioConnect:%04X, kernStatus:%02X\n", "AuthStateUpdateInternal", connect, v20);
          v19 = connect;
        }
      }

      if (v17)
      {
        v21 = IOAccessoryManagerAllowFeatures();
        if (v21)
        {
          syslog(3, "%s IOAccMgrAllowFeatures ioConnect:%04X, kernStatus:%02X\n", "AuthStateUpdateInternal", connect, v21);
        }

        v19 = connect;
      }

      IOServiceClose(v19);
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT authStateDownstream:%02X, newAuthState:%02X\n", "AuthStateUpdateInternal", *(a1 + 148), v4);
  }
}

void sub_10000ACF8(id a1)
{
  byte_100031D81 = 0;
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    byte_100031D81 = CFEqual(v1, @"Internal") != 0;

    CFRelease(v2);
  }

  else
  {
    byte_100031D81 = 0;
  }
}

void sub_10000AD70(uint64_t a1, int a2, int a3, _OWORD *a4)
{
  v13 = -1431655766;
  if ((a2 - 1) >= 2)
  {
    sub_10001A924();
  }

  v7 = a1;
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v8 = "E75";
    }

    else
    {
      v8 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s), newAuthState:%02X, ioAccPortID:%02X\n", "AuthStateUpdateByPortID", a1, v8, a2, a3);
  }

  if ((a3 - 1) > 1)
  {
    syslog(3, "%s Ignored unrecognized port ID:%02X\n", "AuthStateUpdateByPortID", a3);
    goto LABEL_17;
  }

  ServiceWithPort = IOAccessoryPortGetServiceWithPort();
  if (!ServiceWithPort)
  {
LABEL_17:
    LODWORD(v7) = 0;
    goto LABEL_18;
  }

  v10 = ServiceWithPort;
  UpstreamService = IOAccessoryManagerGetUpstreamService();
  v13 = UpstreamService;
  IOObjectRelease(v10);
  if (UpstreamService)
  {
    IOObjectRelease(UpstreamService);
    v12 = sub_10000716C(v7, sub_100008FB8, 0, &v13, 0);
    if (v12)
    {
      v7 = v12;
    }
  }

  if (v7)
  {
    if (!*(v7 + 148) || (v7 = sub_10000716C(v7, sub_100008FCC, 0, &unk_100024CE0, 0)) != 0)
    {
      sub_100007E20(v7, a2, 1, a4);
    }
  }

LABEL_18:
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBUpstream:%hhx\n", "AuthStateUpdateByPortID", v7);
  }
}

void sub_10000AF40(void *a1)
{
  v2 = [*(*(a1[4] + 8) + 40) lengthOfBytesUsingEncoding:4];
  if (v2 - 8 > 0x18)
  {
    syslog(3, "%s Unsupported certHashLen:%02X\n", "AuthCertDataFromHash_block_invoke", v2);
  }

  else
  {
    v3 = [objc_msgSend(qword_100031FC8 objectForKey:{*(*(a1[4] + 8) + 40)), "objectAtIndex:", 1}];
    if (v3)
    {
      v4 = a1[6];
      *(*(a1[5] + 8) + 24) = 1;
      if (v4)
      {
        *a1[6] = CFDataCreate(0, [v3 bytes], objc_msgSend(v3, "length"));
      }
    }
  }
}

uint64_t sub_10000B018(uint64_t a1)
{
  v2 = [NSData alloc];
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  v4 = [v2 initWithBytes:BytePtr length:CFDataGetLength(*(a1 + 48))];
  v5 = [NSNumber numberWithUnsignedLong:1];
  v6 = objc_alloc_init(NSMutableArray);
  [v6 insertObject:v5 atIndex:0];
  [v6 insertObject:v4 atIndex:1];
  if ([qword_100031FC8 count] >= 0x10)
  {
    v7 = [qword_100031FC8 keyEnumerator];
    v8 = [v7 nextObject];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [objc_msgSend(qword_100031FC8 objectForKey:{v9), "objectAtIndex:", 0}];
      v13 = v12;
      if (!v10 || [v12 compare:v10] == -1)
      {
        v11 = v9;
        v10 = v13;
      }

      v9 = [v7 nextObject];
    }

    while (v9);
    if (!v11)
    {
LABEL_13:
      sub_10001A924();
    }

    if (byte_100031D98 == 1)
    {
      syslog(4, "%s Deleting cert hash:[%s], certUsageCnt:%02lX\n", "AuthCertAddHashDataEntry_block_invoke", [v11 cStringUsingEncoding:4], objc_msgSend(v10, "longValue"));
    }

    [qword_100031FC8 removeObjectForKey:v11];
  }

  [qword_100031FC8 setObject:v6 forKey:*(*(*(a1 + 32) + 8) + 40)];
  CFPreferencesSetValue(@"authCertCache", qword_100031FC8, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  result = CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_10000B228(uint64_t a1)
{
  [qword_100031FC8 removeObjectForKey:*(*(*(a1 + 32) + 8) + 40)];
  CFPreferencesSetValue(@"authCertCache", qword_100031FC8, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  result = CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_10000B2C8(void *a1)
{
  v2 = [qword_100031FC8 objectForKey:*(*(a1[4] + 8) + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = objc_alloc_init(NSMutableArray);
    [v4 addObjectsFromArray:v3];
    *(*(a1[5] + 8) + 24) = [objc_msgSend(v3 objectAtIndex:{0), "longValue"}];
    v5 = [NSNumber numberWithUnsignedLong:*(*(a1[5] + 8) + 24) + 1];
    *(*(a1[6] + 8) + 24) = [(NSNumber *)v5 longValue];
    if ([v4 count] == 2)
    {
      [v4 replaceObjectAtIndex:0 withObject:v5];
      [qword_100031FC8 setObject:v4 forKey:*(*(a1[4] + 8) + 40)];
      CFPreferencesSetValue(@"authCertCache", qword_100031FC8, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
      *(*(a1[7] + 8) + 24) = CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost) != 0;
    }

    else if (byte_100031D98 == 1)
    {
      syslog(4, "%s pArrayMut count != gkIndexCertArrayCount\n");
    }
  }

  else if (byte_100031D98 == 1)
  {
    syslog(4, "%s pkArray is nil\n");
  }
}

void sub_10000B470(uint64_t a1)
{
  v2 = [objc_msgSend(qword_100031FC8 "allKeys")];
  *(*(*(a1 + 32) + 8) + 24) = [qword_100031FC8 count];
  v3 = [v2 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [qword_100031FC8 objectForKey:v4];
      v6 = [v5 objectAtIndex:0];
      v7 = [v5 objectAtIndex:1];
      v8 = [v4 lengthOfBytesUsingEncoding:4];
      v9 = [v5 count];
      v10 = [v6 unsignedIntegerValue];
      v11 = [v7 length];
      if ((v8 - 33) < 0xFFFFFFFFFFFFFFE7 || (v9 == 2 ? (v12 = v10 == 0) : (v12 = 1), v12 || (v11 - 2049) <= 0xFFFFFFFFFFFFF9FELL))
      {
        [qword_100031FC8 removeObjectForKey:v4];
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      v4 = [v2 nextObject];
    }

    while (v4);
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    CFPreferencesSetValue(@"authCertCache", qword_100031FC8, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    if (!CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost))
    {
      syslog(3, "%s CFPreferencesSynchronize failed !\n", "AuthCertValidateCache_block_invoke");
    }
  }
}

intptr_t sub_10000B614(void *a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v8 = a2;
  if (a2 && (a5 & 1) != 0)
  {
    syslog(6, "%s: bAuthPassed:%d, fdrValidationStatus:%d, authError:0x%x");
  }

  else
  {
    syslog(3, "%s: bAuthPassed:%d, fdrValidationStatus:%d, authError:0x%x");
  }

  *(*(a1[5] + 8) + 24) = v8;
  *(*(a1[6] + 8) + 24) = a6;
  *(*(a1[7] + 8) + 24) = a5;
  v10 = a1[4];

  return dispatch_semaphore_signal(v10);
}

uint64_t sub_10000B6D8(void *a1)
{
  v2 = [qword_100031FE0 objectForKey:a1[5]];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableArray);
  }

  if ([v2 count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v2 objectAtIndex:v3];
      if (v4)
      {
        v5 = v4;
        v6 = a1[6];
        v9.length = CFStringGetLength(v4);
        v9.location = 0;
        result = CFStringCompareWithOptions(v5, v6, v9, 1uLL);
        if (!result)
        {
          break;
        }
      }

      if (++v3 >= [v2 count])
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    [v2 addObject:a1[6]];
    [qword_100031FE0 setObject:v2 forKey:a1[5]];
    v8 = a1[7];
    ADClientAddValueForScalarKey();
    CFPreferencesSetValue(@"attachedAIDBAccessoriesCache", qword_100031FE0, @"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    result = CFPreferencesSynchronize(@"com.apple.iaptransportd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    *(*(a1[4] + 8) + 24) = result != 0;
  }

  return result;
}

void sub_10000B85C(char *a1, uint64_t a2)
{
  if (byte_100031D98 == 1)
  {
    if (a1)
    {
      v4 = *a1;
    }

    else
    {
      v4 = 0;
    }

    syslog(4, "%s ENTR pAIDBPort:%hhx, pIOAccBuff:%hhx, buffLen:%04X\n", "PortReceiveBuff", a2, a1, v4);
  }

  if (!a1 || !a2 || !*a1)
  {
    if (byte_100031D98 == 1)
    {
      if (a1)
      {
        v6 = *a1;
      }

      syslog(4, "%s Buffer ignored pAIDBPort:%hhx, pIOAccBuff:%hhx, buffLen:%04X\n");
    }

    goto LABEL_29;
  }

  if (!xmmword_100031E80)
  {
    v5 = 0;
LABEL_17:
    if (xmmword_100031EE8)
    {
      v5 = sub_10000716C(xmmword_100031EE8, sub_100007E10, 0, a2, 0);
    }

    goto LABEL_19;
  }

  v5 = sub_10000716C(xmmword_100031E80, sub_100007E10, 0, a2, 0);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (v5 != a2)
  {
    v7 = byte_100031D98;
    goto LABEL_22;
  }

  v8 = sub_1000046CC(a2);
  v7 = byte_100031D98;
  if (v8)
  {
LABEL_22:
    if (v7)
    {
      if (v5)
      {
        sub_1000046CC(v5);
      }

      syslog(4, "%s Buffer ignored pAIDBPort:%hhx != pAIDBTemp:%hhx, bLockedOut:%d\n");
    }

    goto LABEL_29;
  }

  if (byte_100031D98)
  {
    syslog(4, "%s pBuff:%hhx, buffLen:%04X\n", "PortReceiveBuff", a1 + 2, *a1);
  }

  sub_100004C08(a2, a1 + 2, *a1);
LABEL_29:
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "PortReceiveBuff");
  }
}

uint64_t sub_10000BA40(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pTxdData:%hhx, dataLen:%04X, accIOConn:%04X\n", "PortTransmitData", a2, a3, *(a1 + 12));
  }

  v6 = sub_1000046CC(a1);
  v7 = 96;
  if (a3 && a2 && !v6)
  {
    if (*(a1 + 12))
    {
      if (byte_100031D98 == 1)
      {
        syslog(4, "%s pBuff:%hhx, buffLen:%04X\n", "PortTransmitData", a2, a3);
        v8 = *(a1 + 12);
      }

      v7 = IOAccessoryPortTransmitData();
    }

    else
    {
      v7 = 96;
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT status:%02X\n", "PortTransmitData", v7);
  }

  return v7;
}

void sub_10000BB54(void *a1)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v2 = "E75";
    }

    else
    {
      v2 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s)\n", "EnableIOAccMgrMatchNotifications", a1, v2);
  }

  v3 = a1[6];
  v4 = *(v3 + 32);
  v5 = IOServiceMatching("IOAccessoryManager");
  v6 = IOServiceAddMatchingNotification(v4, "IOServiceFirstPublish", v5, sub_10000BD18, a1, (v3 + 48));
  v7 = *(v3 + 48);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    syslog(3, "%s IOServiceAddMatchingNotification publish fail status:0x%02X, iter:0x%02X\n", "EnableIOAccMgrMatchNotifications", v6, v7);
  }

  else
  {
    sub_10000BD18(a1, v7);
    v9 = *(v3 + 32);
    v10 = IOServiceMatching("IOAccessoryManager");
    v11 = IOServiceAddMatchingNotification(v9, "IOServiceTerminate", v10, sub_10000C130, a1, (v3 + 52));
    v12 = *(v3 + 52);
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == 0;
    }

    if (v13)
    {
      syslog(3, "%s IOServiceAddMatchingNotification terminate fail status:0x%02X, iter:0x%02X\n", "EnableIOAccMgrMatchNotifications", v11, v12);
    }

    else
    {
      sub_10000C130(a1, v12);
    }

    Main = CFRunLoopGetMain();
    RunLoopSource = IONotificationPortGetRunLoopSource(*(v3 + 32));
    CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EnableIOAccMgrMatchNotifications");
  }
}

void sub_10000BD18(uint64_t a1, io_iterator_t iterator)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s), ioAccMgrIter:%04X\n", "IOAccMgrMatchPublishCallback", a1, v4, iterator);
  }

  if (a1)
  {
    if (iterator)
    {
      v5 = *(*(a1 + 48) + 16);
      PrimaryPort = -1431655766;
      v6 = IOIteratorNext(iterator);
      if (v6)
      {
        v7 = v6;
        do
        {
          PrimaryPort = IOAccessoryManagerGetPrimaryPort();
          UpstreamService = v7;
          do
          {
            v9 = UpstreamService;
            UpstreamService = IOAccessoryManagerGetUpstreamService();
          }

          while (UpstreamService);
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s ioService:%04X, aidbPortRootSvc:%04X, ioAccPortID:%02X, ioServiceRoot:0x%02X\n", "IOAccMgrMatchPublishCallback", v7, v9, PrimaryPort, v5);
          }

          if (PrimaryPort && v9 == v5)
          {
            v10 = *(a1 + 56);
            if (v10)
            {
              if (v10 != PrimaryPort && !sub_10000716C(a1, sub_100008FA4, 0, &PrimaryPort, 0))
              {
                v11 = sub_100006BF4(qword_100031FB8, *(a1 + 48));
                if (!v11)
                {
                  sub_10001A924();
                }

                v12 = v11;
                sub_100007C30(v11, v7, PrimaryPort);
                *(v12 + 64) = IOAccessoryManagerGetUpstreamService();
                v13 = sub_10000716C(a1, sub_100008FB8, 0, v12 + 64, 0);
                if (v13)
                {
                  v14 = v13;
                }

                else
                {
                  v14 = a1;
                }

                v15 = *(v14 + 112);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100008AA8;
                block[3] = &unk_10002D050;
                block[4] = v14;
                block[5] = v12;
                dispatch_sync(v15, block);
                v16 = *(v12 + 64);
                DigitalID = IOAccessoryManagerGetDigitalID();
                if (DigitalID)
                {
                  syslog(4, "%s IOAccMgrGetDigitalID failed kernStatus:%02X\n", "IOAccMgrMatchPublishCallback", DigitalID);
                }

                sub_10000C2C4(v12);
                if (byte_100031D98 == 1)
                {
                  syslog(4, "%s pAIDBPort:%hhx, ioService:%04X\n", "IOAccMgrMatchPublishCallback", v12, *(v12 + 60));
                }
              }
            }

            else
            {
              sub_100007C30(a1, v7, PrimaryPort);
            }
          }

          else if (byte_100031D98 == 1)
          {
            syslog(4, "%s Ignored ioService:%04X, ioAccPortID:%02X, aidbPortRootSvc:%04X != ioServiceRoot:%04X\n", "IOAccMgrMatchPublishCallback", v7, PrimaryPort, v9, v5);
          }

          IOObjectRelease(v7);
          v7 = IOIteratorNext(iterator);
        }

        while (v7);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "IOAccMgrMatchPublishCallback");
  }
}

void sub_10000C130(uint64_t a1, io_iterator_t iterator)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s), ioAccMgrIter:%04X\n", "IOAccMgrMatchTerminateCallback", a1, v4, iterator);
  }

  if (a1)
  {
    if (iterator)
    {
      for (object = IOIteratorNext(iterator); object; object = IOIteratorNext(iterator))
      {
        v5 = sub_10000716C(a1, sub_100008FB8, 0, &object, 0);
        v6 = v5;
        if (byte_100031D98 == 1)
        {
          if (v5)
          {
            v7 = *(v5 + 56);
          }

          else
          {
            v7 = 0;
          }

          syslog(4, "%s ioService:%04X matched pAIDBPort:%hhx, ioAccPortID:%02X\n", "IOAccMgrMatchTerminateCallback", object, v5, v7);
        }

        if (v6)
        {
          sub_100008064(v6);
          v8 = sub_10000716C(a1, sub_100008FB8, 0, v6 + 64, 0);
          if (v8)
          {
            sub_100008064(v8);
          }

          if (v6 != a1)
          {
            sub_100008C84(a1, v6);
          }
        }

        IOObjectRelease(object);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "IOAccMgrMatchTerminateCallback");
  }
}

void sub_10000C2C4(uint64_t a1)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR pAIDBPort:%hhx m_ioAccMgrPrimaryPortID:%04X\n", "EnableIOAccMgrEventNotifications", a1, *(a1 + 56));
  }

  connect = 0;
  v2 = IOServiceOpen(*(a1 + 60), mach_task_self_, 0, &connect);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = connect == 0;
  }

  if (v3)
  {
    syslog(3, "%s IOServiceOpen fail kernStatus:%02X, ioConn:%02X\n", "EnableIOAccMgrEventNotifications", v2, connect);
  }

  else
  {
    v4 = *(a1 + 48);
    *(a1 + 80) = 0;
    v5 = IOServiceAddInterestNotification(*(v4 + 32), *(a1 + 60), "IOGeneralInterest", sub_10000C438, a1, (a1 + 80));
    if (v5)
    {
      syslog(3, "%s IOServiceAddInterestNotification fail status:%02X\n", "EnableIOAccMgrEventNotifications", v5);
    }

    else if (*(a1 + 238) == 1)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(*(v4 + 32));
      *(v4 + 40) = RunLoopSource;
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, *(v4 + 40), kCFRunLoopCommonModes);
      }
    }

    IOServiceClose(connect);
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EnableIOAccMgrEventNotifications");
  }
}

void sub_10000C438(uint64_t a1, int a2, int a3)
{
  UpstreamService = a2;
  do
  {
    v7 = UpstreamService;
    UpstreamService = IOAccessoryManagerGetUpstreamService();
  }

  while (UpstreamService);
  v8 = &xmmword_100031E80;
  if (dword_100031E90 != v7 && (v8 = &xmmword_100031EE8, dword_100031EF8 != v7) || (v9 = *v8) == 0)
  {
    LODWORD(v11) = 0;
LABEL_15:
    syslog(3, "%s pAIDBPort:%hhx or ioService:%02X is NULL !\n", "IOAccMgrEventNotificationCallback", v11, a2);
    return;
  }

  v10 = sub_10000716C(*v8, sub_100007E10, 0, a1, 0);
  v11 = v10;
  if (!a2 || !v10)
  {
    goto LABEL_15;
  }

  v12 = qword_100031FB8;
  v28 = -21846;
  v27 = -1431655766;
  if (a3 > -469794726)
  {
    if ((a3 + 469794724) < 3)
    {
LABEL_18:
      if (byte_100031D98 == 1)
      {
        switch(a3)
        {
          case -469794726:
            v13 = "AccIDDigitalNoID";
            break;
          case -469794724:
            v13 = "AccIDDigitalUnsupported";
            break;
          case -469794723:
            v13 = "AccIDDigitalUnreliable";
            break;
          default:
            v13 = "AccIDDigitalWrongOrientation";
            break;
        }

        syslog(4, "%s pAIDBPort:%hhx, bIsRoot:%d, IOAccMgrMsg: %s\n", "IOAccMgrEventNotificationCallback", v10, *(v10 + 238), v13);
      }

      v17 = &unk_100024CE4;
      v16 = 1;
LABEL_56:
      v25 = *(v11 + 226);
      v26 = *(v11 + 234);
      sub_1000089C8(v11, v17);
      sub_100008640(v11, a3, &v25);
      if (*(v11 + 237) != (v16 & 1))
      {
        if (v16)
        {
          if (a3 != -469794793)
          {
            v21 = *(*(v11 + 48) + 96);
            if (byte_100031D98 == 1)
            {
              syslog(4, "%s pAIDBPort:%hhx, AppleID accessory attach, start auth timer (%02lld secs)\n", "IOAccMgrEventNotificationCallback", v11, v21 / 0x3B9ACA00);
            }

            *(v11 + 144) = 1;
            v22 = *(v11 + 136);
            v23 = dispatch_time(0, v21);
            dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
          }
        }

        else
        {
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s AppleID accessory detach, stop auth timer, reset auth state\n", "IOAccMgrEventNotificationCallback");
          }

          sub_100008064(v11);
          v24 = *(v11 + 112);
          cf2[0] = _NSConcreteStackBlock;
          cf2[1] = 3221225472;
          cf2[2] = sub_100008E18;
          cf2[3] = &unk_10002CA90;
          cf2[4] = v11;
          dispatch_sync(v24, cf2);
        }

        *(v11 + 237) = v16 & 1;
      }

      return;
    }

    if (a3 == -469794725)
    {
LABEL_34:
      if (byte_100031D98 == 1)
      {
        v18 = "ConfigChange";
        if (a3 == -469794725)
        {
          v18 = "AccIDDigitalID";
        }

        syslog(4, "%s pAIDBPort:%hhx, bIsRoot:%d, IOAccMgrMsg: %s\n", "IOAccMgrEventNotificationCallback", v10, *(v10 + 238), v18);
      }

      v16 = (a3 == -469794725) | *(v11 + 237);
      if (IOAccessoryManagerGetDigitalID())
      {
        v17 = &unk_100024CE4;
      }

      else
      {
        v17 = &v27;
      }

      goto LABEL_56;
    }

    v14 = -32668;
    goto LABEL_26;
  }

  if (a3 <= -469794797)
  {
    if (a3 == -536870608)
    {
      cf2[0] = 0;
      if (!IOAccessoryManagerCopyDeviceInfo())
      {
        v19 = *(v11 + 248);
        v20 = cf2[0];
        if (v19)
        {
          if (CFEqual(v19, cf2[0]))
          {
            CFRelease(cf2[0]);
          }

          else
          {
            CFRelease(*(v11 + 248));
            *(v11 + 248) = cf2[0];
          }
        }

        else
        {
          *(v11 + 248) = cf2[0];
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s kIOMessageServicePropertyChange setting m_accAIDBModelNumber: %@\n", "IOAccMgrEventNotificationCallback", v20);
          }

          if (IsAppleAccessory())
          {
            sub_10000940C(v9, *(v11 + 120));
          }
        }
      }

      return;
    }

    v14 = -32751;
LABEL_26:
    if (a3 != (v14 | 0xE3FF0000))
    {
      return;
    }

    if (byte_100031D98 == 1)
    {
      v15 = "AccIDNoneConnected";
      if (a3 == -469794799)
      {
        v15 = "Detach";
      }

      syslog(4, "%s pAIDBPort:%hhx, bIsRoot:%d, IOAccMgrMsg: %s\n", "IOAccMgrEventNotificationCallback", v10, *(v10 + 238), v15);
    }

    if (*(v11 + 216))
    {
      [IAPTDPostAlert TearDownAccessoryNotification:v11 + 216];
    }

    v16 = 0;
    ++*(v9 + 224);
    v17 = &unk_100024CE4;
    goto LABEL_56;
  }

  if (a3 != -469794796)
  {
    if (a3 != -469794793)
    {
      if (a3 != -469794726)
      {
        return;
      }

      goto LABEL_18;
    }

    goto LABEL_34;
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s pAIDBPort:%hhx, bIsRoot:%d, IOAccMgrMsg: USBConnChange\n", "IOAccMgrEventNotificationCallback", v10, *(v10 + 238));
  }

  LODWORD(cf2[0]) = 0;
  LOBYTE(v25) = 0;
  if (!IOAccessoryManagerGetUSBConnectType() && LODWORD(cf2[0]) != [v12 iap9PinUSBConnState])
  {
    [v12 setIap9PinUSBConnState:LOBYTE(cf2[0])];
  }
}

uint64_t sub_10000C9EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 56) == 256)
    {
      return sub_100011538(*(result + 60), a2);
    }
  }

  return result;
}

void sub_10000CA08(void *a1)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v2 = "E75";
    }

    else
    {
      v2 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s)\n", "EnableAuthCPServiceNotifications", a1, v2);
  }

  v3 = IOServiceMatching("AppleAuthCP");
  if (v3)
  {
    v4 = v3;
    v5 = a1[6];
    CFRetain(v3);
    v6 = IOServiceAddMatchingNotification(*(v5 + 32), "IOServiceFirstPublish", v4, sub_10000CBC8, a1, (v5 + 72));
    v7 = *(v5 + 72);
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      syslog(3, "%s IOServiceAddMatchingNotification publish fail status:%02X, ioIter:%04X\n", "EnableAuthCPServiceNotifications", v6, v7);
      CFRelease(v4);
    }

    else
    {
      sub_10000CBC8(a1, v7);
      v9 = IOServiceAddMatchingNotification(*(v5 + 32), "IOServiceTerminate", v4, sub_10000CDF0, a1, (v5 + 76));
      v10 = *(v5 + 76);
      if (v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        syslog(3, "%s IOServiceAddMatchingNotification terminate fail status:%02X, ioIter:%04X\n", "EnableAuthCPServiceNotifications", v9, v10);
      }

      else
      {
        sub_10000CDF0(a1, v10);
        *(v5 + 64) = IONotificationPortGetRunLoopSource(*(v5 + 32));
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, *(v5 + 64), kCFRunLoopCommonModes);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EnableAuthCPServiceNotifications");
  }
}

void sub_10000CBC8(uint64_t a1, io_iterator_t iterator)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s), authCPIter:%04X\n", "AuthCPServicePublishCallback", a1, v4, iterator);
  }

  if (a1)
  {
    if (iterator)
    {
      v5 = *(a1 + 48);
      v6 = *(v5 + 16);
      v7 = IOIteratorNext(iterator);
      if (v7)
      {
        v8 = v7;
        do
        {
          UpstreamService = v8;
          do
          {
            v10 = UpstreamService;
            UpstreamService = IOAccessoryManagerGetUpstreamService();
          }

          while (UpstreamService);
          v11 = xmmword_100031E80 == a1 || xmmword_100031EE8 == a1;
          v12 = v11;
          v13 = v11 || v8 != v10;
          syslog(6, "%s expectsManager:%d authRootService:0x%x, portRootService:0x%x, self:0x%x runLoopSrc:0x%x\n", "AuthCPServicePublishCallback", v12, v10, v6, v8, *(v5 + 64));
          v14 = v12 ^ 1;
          if (v10 != v6)
          {
            v14 = 1;
          }

          if (v14 == 1 && v13)
          {
            syslog(4, "%s Ignore publish authRootService:%04X != portRootService:%04X\n", "AuthCPServicePublishCallback", v10, v6);
          }

          else
          {
            if (byte_100031D98 == 1)
            {
              syslog(4, "%s Call AuthProcessStart authCPService:%04X\n", "AuthCPServicePublishCallback", v8);
            }

            IOObjectRetain(v8);
            v15 = *(v5 + 56);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000CFB4;
            block[3] = &unk_10002D1E8;
            v17 = v8;
            v18 = 0;
            block[4] = a1;
            dispatch_async(v15, block);
          }

          IOObjectRelease(v8);
          v8 = IOIteratorNext(iterator);
        }

        while (v8);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT pAIDBRoot:%hhx\n", "AuthCPServicePublishCallback", a1);
  }
}

void sub_10000CDF0(uint64_t a1, io_iterator_t iterator)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s)\n", "AuthCPServiceTerminateCallback", a1, v4);
  }

  if (xmmword_100031F50 != a1)
  {
    v5 = 0;
    if (a1 && iterator)
    {
      v6 = xmmword_100031EE8;
      for (object = IOIteratorNext(iterator); object; object = IOIteratorNext(iterator))
      {
        v7 = sub_10000716C(a1, sub_100007318, 0, &object, 0);
        v8 = v7;
        if (v7 || v6 != a1)
        {
          if (v7)
          {
LABEL_15:
            if (v6 == a1)
            {
              sub_100008064(v8);
            }

            *(v8 + 148) = 0;
            v9 = *(v8 + 120);
            if (v9 == object)
            {
              IOObjectRelease(v9);
              *(v8 + 120) = 0;
            }
          }
        }

        else
        {
          v8 = a1;
          if (*(a1 + 144))
          {
            goto LABEL_15;
          }

          LODWORD(v8) = 0;
        }

        v10 = object;
        if (byte_100031D98 == 1)
        {
          syslog(4, "%s authCPService:%04X matched pAIDBPort:%hhx\n", "AuthCPServiceTerminateCallback", object, v8);
          v10 = object;
        }

        IOObjectRelease(v10);
      }

      v5 = v6 == a1;
    }

    if (byte_100031D98 == 1)
    {
      syslog(4, "%s EXIT pAIDBRoot:%hhx bIsRootCON:%d\n", "AuthCPServiceTerminateCallback", a1, v5);
    }
  }
}

uint64_t sub_10000CFB4(uint64_t a1)
{
  if (sub_100006F48(*(a1 + 40)) || (*(a1 + 44) & 1) != 0)
  {
    connect = -1431655766;
    v2 = IOServiceOpen(*(a1 + 40), mach_task_self_, 0, &connect);
    if (v2)
    {
      syslog(4, "%s: IOServiceOpen() failed (ret=0x%x)\n", "AuthCPServicePublishCallback_block_invoke", v2);
    }

    else
    {
      v3 = sub_10001A658(connect, 1u);
      if (v3)
      {
        syslog(4, "%s: cpSetAuthFullPass() failed (ret=0x%x)\n", "AuthCPServicePublishCallback_block_invoke", v3);
      }

      IOServiceClose(connect);
    }

    v4 = sub_100006FB0(*(a1 + 32), *(a1 + 40));
    if (v4)
    {
      v5 = *(a1 + 40);
      *(v4 + 120) = v5;
      IOObjectRetain(v5);
    }
  }

  else
  {
    sub_10001AA40(*(a1 + 32), *(a1 + 40));
  }

  return IOObjectRelease(*(a1 + 40));
}

void sub_10000D0A4(uint64_t a1, io_iterator_t iterator)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s)\n", "EAServicePublishCallback", a1, v4);
  }

  if (a1)
  {
    if (iterator)
    {
      v5 = *(*(a1 + 48) + 16);
      parent[0] = 0;
      entryID = 0;
      v35 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0;
      v6 = IOIteratorNext(iterator);
      if (v6)
      {
        v7 = v6;
        v8 = v27;
        do
        {
          UpstreamService = v7;
          do
          {
            v10 = UpstreamService;
            UpstreamService = IOAccessoryManagerGetUpstreamService();
          }

          while (UpstreamService);
          if (v10 != v5 && qword_100031ED0)
          {
            if (byte_100031D98 == 1)
            {
              syslog(4, "%s Ignored EA service eaPortRootService:%04X != eaRootService:%04X\n", "EAServicePublishCallback", v10, v5);
            }

            goto LABEL_23;
          }

          RegistryEntryID = IORegistryEntryGetRegistryEntryID(v7, &entryID);
          ParentEntry = IORegistryEntryGetParentEntry(v7, "IOService", parent);
          v13 = ParentEntry;
          v35 = parent[0];
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s eaFuncGrpSvc:%04X, eaDeviceID:%04llX, eaFunctGrpDevID:%04llX, kernStats:%d, additionalKernStatus:%d\n", "EAServicePublishCallback", v7, parent[0], entryID, RegistryEntryID, ParentEntry);
          }

          if (RegistryEntryID | v13)
          {
            goto LABEL_23;
          }

          v14 = sub_10000716C(a1, sub_100008FE0, 0, &v35, 0);
          v32 = -1431655766;
          v32 = IOAccessoryManagerGetUpstreamService();
          IORegistryEntryGetRegistryEntryID(v32, &v33);
          if (byte_100031D98 == 1)
          {
            syslog(4, "ioAccMgrUpstreamServiceID = %04llX, ioAccMgrSvcUpstream = %04X", v33, v32);
          }

          if (v14)
          {
            NSLog(@"pAIDBPort != NULL!, nothing is happening");
            goto LABEL_23;
          }

          v15 = v32;
          if (v32)
          {
            IOObjectRelease(v32);
            v15 = sub_10000716C(a1, sub_100008FB8, 0, &v32, 0);
            v16 = v15;
            if (v15)
            {
              v15 = sub_10000716C(v15, sub_100008FE0, 0, &unk_100024CA8, 3);
              if (v15)
              {
                v17 = v15;
              }

              else
              {
                v15 = sub_10000716C(v16, sub_100008FE0, 0, &unk_100024CEC, 3);
                if (v15)
                {
                  v17 = v15;
                }

                else
                {
                  v17 = v16;
                }
              }

              goto LABEL_31;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = 0;
LABEL_31:
          if (byte_100031D98 == 1)
          {
            if (v16)
            {
              v18 = *(v16 + 148);
            }

            else
            {
              v18 = 255;
            }

            syslog(4, "%s eaFuncGrpSvc:%04X matches pAIDBPort:%hhx, pAIDBUpstream:%hhx, authStateUpstream:%02X\n", "EAServicePublishCallback", v7, v17, v16, v18);
          }

          if (!v16)
          {
            goto LABEL_23;
          }

          if (!v17)
          {
            goto LABEL_23;
          }

          v19 = entryID;
          if (!entryID)
          {
            goto LABEL_23;
          }

          v20 = *(v16 + 148);
          if ((*(v17 + 238) & 1) == 0)
          {
            v25 = v8;
            if (v20 == 2)
            {
              *(v17 + 192) = v35;
              *(v17 + 200) = v19;
              *(v17 + 208) = v33;
            }

            v21 = IOAccessoryEAInterfaceCopyDeviceModelNumber();
            v22 = [v21 UTF8String];
            NSLog(@"pAccModel = %@", v21);
            if (v22 && (!strncmp(v22, "A1468", 6uLL) || !strncmp(v22, "A1450", 6uLL)))
            {
              if (byte_100031D98 == 1)
              {
                syslog(4, "%s B139 or B164 (%s), set m_bIsE75To30PinAdapter: %d->%d\n", "EAServicePublishCallback", v22, *(v17 + 236), 1);
              }

              *(v17 + 236) = 1;
            }

            v28 = 0;
            v29 = &v28;
            v30 = 0x2020000000;
            v31 = 0;
            v23 = *(v17 + 56);
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v8 = v25;
            v27[0] = sub_10000DAC4;
            v27[1] = &unk_10002D210;
            v27[2] = &v28;
            v27[3] = v17;
            sub_10000E66C(v23, v26);
            if ((v29[3] & 1) == 0 && byte_100031D98 == 1)
            {
              syslog(4, "%s couldn't find matching port (%s)", "EAServicePublishCallback", v22);
            }

            _Block_object_dispose(&v28, 8);
            if (*(v16 + 148) != 2)
            {
              goto LABEL_23;
            }

            goto LABEL_57;
          }

          if (v20 == 2)
          {
            *(v17 + 200) = 0;
            *(v17 + 208) = 0;
            *(v17 + 192) = 0xFFFFFFFFLL;
LABEL_57:
            v24 = entryID;
            if (byte_100031D98 == 1)
            {
              syslog(4, "%s Call EAServiceStateUpdate, eaDeviceID:%04llX, eaFunctGrpDevID:%04llX, true\n", "EAServicePublishCallback", v35, entryID);
              v24 = entryID;
            }

            sub_10000D610(v15, v35, v24, v33, 1);
          }

LABEL_23:
          IOObjectRelease(v7);
          v7 = IOIteratorNext(iterator);
        }

        while (v7);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EAServicePublishCallback");
  }
}

void sub_10000D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BOOL4 a5)
{
  v5 = a5;
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR eaDeviceID:%04llX, eaFunctGrpDevID:%04llX, bEAArrived:%d\n", "EAServiceStateUpdate", a2, a3, a5);
  }

  if (a3 | a2)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, "requestType", "EAProtocolTransportNotification");
    xpc_dictionary_set_BOOL(v9, "EAProtocolTransportConnectedState", v5);
    xpc_dictionary_set_uint64(v9, "EAProtocolTransportRegistryID", a3);
    xpc_dictionary_set_uint64(v9, "EAProtocolTransportUpstreamRegistryID", a4);
    [objc_msgSend(qword_100031FB8 "iap2d_connection")];
    xpc_release(v9);
  }

  else
  {
    syslog(3, "%s EAServiceStateUpdate trying to send eaDeviceID = %llu and eaFunctGrpDevID %llu to iap2, which is invalid\n", "EAServiceStateUpdate", 0, 0);
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EAServiceStateUpdate");
  }
}

void sub_10000D748(void *a1)
{
  if (byte_100031D98 == 1)
  {
    syslog(4, "%s ENTR\n", "EnableEAServiceNotifications");
  }

  v2 = IOServiceMatching("IOAccessoryEAInterface");
  if (v2)
  {
    v3 = v2;
    v4 = a1[6];
    CFRetain(v2);
    v5 = IOServiceAddMatchingNotification(*(v4 + 32), "IOServicePublish", v3, sub_10000D0A4, a1, (v4 + 88));
    v6 = *(v4 + 88);
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      syslog(3, "%s IOServiceAddMatchingNotification publish fail status:%02X, ioIter:%04X\n", "EnableEAServiceNotifications", v5, v6);
      CFRelease(v3);
    }

    else
    {
      sub_10000D0A4(a1, v6);
      v8 = IOServiceAddMatchingNotification(*(v4 + 32), "IOServiceTerminate", v3, sub_10000D8E4, a1, (v4 + 92));
      v9 = *(v4 + 92);
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        syslog(3, "%s IOServiceAddMatchingNotification terminate fail status:%02X, ioIter:%04X\n", "EnableEAServiceNotifications", v8, v9);
      }

      else
      {
        sub_10000D8E4(a1, v9);
        *(v4 + 80) = IONotificationPortGetRunLoopSource(*(v4 + 32));
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, *(v4 + 80), kCFRunLoopCommonModes);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EnableEAServiceNotifications");
  }
}

void sub_10000D8E4(uint64_t a1, io_iterator_t iterator)
{
  if (byte_100031D98 == 1)
  {
    if (xmmword_100031E80 == a1)
    {
      v4 = "E75";
    }

    else
    {
      v4 = "CON";
    }

    syslog(4, "%s ENTR pAIDBRoot:%hhx (%s), eaIterator:%04X\n", "EAServiceTerminateCallback", a1, v4, iterator);
  }

  if (a1)
  {
    if (iterator)
    {
      v5 = IOIteratorNext(iterator);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = 0;
        do
        {
          entryID = 0;
          v9 = 0;
          if (!IORegistryEntryGetRegistryEntryID(v6, &entryID) && entryID)
          {
            v10 = sub_10000716C(a1, sub_100008FF4, 0, &entryID, 0);
            v7 = v10;
            if (v10)
            {
              v9 = v10[24];
              entryID = v10[25];
              v8 = v10[26];
            }

            else
            {
              v9 = 0;
            }
          }

          v11 = IOObjectRelease(v6);
          if (!v7)
          {
            v7 = a1;
          }

          if (byte_100031D98 == 1)
          {
            syslog(4, "%s eaFunctGrpDevSvc:%04X matches pAIDBPort:%hhx\n", "EAServiceTerminateCallback", v6, v7);
          }

          if (v7 == a1)
          {
            v12 = 0;
          }

          else
          {
            v12 = 4294967294;
          }

          v7[24] = v12;
          if (byte_100031D98 == 1)
          {
            syslog(4, "%s Call EAServiceStateUpdate, eaDeviceID:%04llX, eaFunctGrpDevID:%04llX, false\n", "EAServiceTerminateCallback", v9, entryID);
          }

          sub_10000D610(v11, v9, entryID, v8, 0);
          v7[24] = 0;
          v7[25] = 0;
          v7[26] = 0;
          v6 = IOIteratorNext(iterator);
        }

        while (v6);
      }
    }
  }

  if (byte_100031D98 == 1)
  {
    syslog(4, "%s EXIT\n", "EAServiceTerminateCallback");
  }
}

void sub_10000DAC4(uint64_t a1, uint64_t a2)
{
  if (byte_100031D98 == 1)
  {
    v4 = *(*(a1 + 40) + 236);
    v5 = sub_100003EAC(a2);
    v6 = sub_100003EB8(a2);
    syslog(4, "%s Call StartPort, bIsE75To30PinAdapter:%d portNum:%d portMgrNum:%d, bCanPassData:%d\n", "EAServicePublishCallback_block_invoke", v4, v5, v6, *(a2 + 40));
  }

  sub_10000F0EC(a2, *(*(a1 + 40) + 236));
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_10000DCC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 2)
  {
    v3 = *(a1 + 12);
    v4 = IOAccessoryPortSetUSBRoleSwitchMask();
    if (v4)
    {
      NSLog(@"%s:%s ERROR, couldn't set role switch mask for port number %d, error = %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", "void CIapPortIOKit::SetRoleSwapMaskForUSBPort(UInt16, UInt16)", *(a1 + 16), v4);
    }
  }

  else
  {
    NSLog(@"%s:%s ERROR, accessoryPortNumber != kIOAccessoryPortIDUSB, it is %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", "void CIapPortIOKit::SetRoleSwapMaskForUSBPort(UInt16, UInt16)", v1);
  }
}

uint64_t sub_10000DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F0C(a1, a2, a3);
  *(v6 + 44) = 0;
  v7 = (v6 + 44);
  *v6 = off_10002D370;
  *(v6 + 64) = 0;
  v8 = (v6 + 64);
  *(v6 + 52) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = a2;
  *(v6 + 40) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  ServiceWithPort = IOAccessoryPortGetServiceWithPort();
  *v7 = ServiceWithPort;
  if (ServiceWithPort && !IOServiceOpen(ServiceWithPort, mach_task_self_, 0, (a1 + 12)))
  {
    v10 = *(a1 + 12);
    *v8 = IOAccessoryPortCreateRunLoopSource();
    v11 = IONotificationPortCreate(kIOMasterPortDefault);
    *(a1 + 48) = v11;
    if (*(a1 + 64))
    {
      if (v11)
      {
        if (!IOServiceAddInterestNotification(v11, *(a1 + 44), "IOGeneralInterest", sub_10000E0F8, a1, (a1 + 56)))
        {
          RunLoopSource = IONotificationPortGetRunLoopSource(*(a1 + 48));
          *(a1 + 72) = RunLoopSource;
          if (RunLoopSource)
          {
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, *(a1 + 72), kCFRunLoopCommonModes);
            v14 = CFRunLoopGetMain();
            CFRunLoopAddSource(v14, *v8, kCFRunLoopCommonModes);
            *(a1 + 80) = 1;
          }
        }
      }
    }

    if (*(a1 + 16) == 2)
    {
      *(a1 + 104) = [[IAPCarPlayConnectionObserver alloc] initWithPort:a1];
    }
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    NSLog(@"ERROR - %s:%s - %d could not create port 0x%x:0x%x", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", "CIapPortIOKit", 214, a2, a3);
  }

  return a1;
}

void sub_10000E03C(unsigned __int16 *a1, uint64_t a2)
{
  if (a1 && a2 && *a1 && (sub_1000046CC(a2) & 1) == 0)
  {
    v4 = malloc_type_malloc(*a1, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      v6 = *a1;
      memcpy(v4, a1 + 1, *a1);
      sub_100004C08(a2, v5, v6);

      free(v5);
    }

    else
    {
      NSLog(@"CIapPortIOKit::PortReceiveBuffer failed to copy buffer.");
    }
  }
}

void sub_10000E0F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a1;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a3 >> 4 == 239073280)
  {
    goto LABEL_3;
  }

  if (a3 <= -469794785)
  {
    if (a3 == -536870896)
    {
      NSLog(@"%s:%s - %d Got ServiceIsTerminated(%d) argument=%hhx, portID:%02X/%02X, ioSvc:%04X", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", "PortNotifyEvent", 588, 3758096400, a4, *(a1 + 16), *(a1 + 20), a2);
      sub_10000EB1C(v17[3]);
    }

    else if (a3 == -536870608)
    {
      sub_10000EC04(a1, a2);
    }
  }

  else
  {
    if (a3 == -469794784)
    {
      [+[NSDate date](NSDate timeIntervalSince1970];
      v11 = v17[3];
      if (*(v11 + 88) <= 0.0)
      {
        *(v11 + 88) = v10;
        v12 = 100000000;
      }

      else
      {
        v12 = 1;
      }

      v13 = dispatch_time(0, v12);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000EE64;
      v14[3] = &unk_10002D460;
      v14[4] = &v16;
      dispatch_after(v13, &_dispatch_main_q, v14);
      goto LABEL_6;
    }

    if (a3 != -469794782)
    {
      if (a3 != -469794716 || !sub_1000116BC())
      {
        goto LABEL_6;
      }

LABEL_3:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EE50;
      block[3] = &unk_10002D460;
      block[4] = &v16;
      dispatch_async(&_dispatch_main_q, block);
      v5 = xpc_dictionary_create(0, 0, 0);
      v6 = sub_100003EAC(v17[3]);
      xpc_dictionary_set_uint64(v5, "portNumber", v6);
      v7 = sub_100003EB8(v17[3]);
      xpc_dictionary_set_uint64(v5, "portManagerNumber", v7);
      v8 = (*(*v17[3] + 80))(v17[3]);
      xpc_dictionary_set_uint64(v5, "portType", v8);
      xpc_dictionary_set_uint64(v5, "portID", v17[3]);
      xpc_dictionary_set_uint64(v5, "resistorID", (a3 + 469794816));
      xpc_dictionary_set_string(v5, "requestType", "resistorArrived");
      v9 = sub_1000116B0();
      sub_100004BC0(v9);
      if (+[IAPTransportServer supportsIAPD])
      {
        [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
      }

      xpc_release(v5);
      goto LABEL_6;
    }

    if (a4 && *(a1 + 16) == 2 && !*(a4 + 4) && *(a4 + 2) == 1 && [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
    {
      NSLog(@"%s:%s Stark accessory role switch", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", "PortNotifyEvent");
    }
  }

LABEL_6:
  _Block_object_dispose(&v16, 8);
}

void *sub_10000E4AC(uint64_t a1)
{
  *a1 = off_10002D370;

  *(a1 + 80) = 0;
  if (*(a1 + 64))
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, *(a1 + 64), kCFRunLoopCommonModes);
    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  if (*(a1 + 72))
  {
    v3 = CFRunLoopGetMain();
    CFRunLoopRemoveSource(v3, *(a1 + 72), kCFRunLoopCommonModes);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    IOObjectRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    IONotificationPortDestroy(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 12);
  if (v6)
  {
    IOServiceClose(v6);
    *(a1 + 12) = 0;
  }

  v7 = *(a1 + 44);
  if (v7)
  {
    IOObjectRelease(v7);
    *(a1 + 44) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    sub_100019D34(v8);
    *(a1 + 32) = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 24) = 0;
  }

  return sub_100003F80(a1);
}

void sub_10000E5CC(uint64_t a1)
{
  sub_10000E4AC(a1);

  operator delete();
}

uint64_t sub_10000E638(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 12) || *(a1 + 40) != 1)
  {
    return 6;
  }

  if (a2)
  {
    return IOAccessoryPortTransmitData();
  }

  return 22;
}

uint64_t sub_10000E66C(int a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000E76C;
  v3[3] = &unk_10002D410;
  v4 = a1;
  v3[4] = a2;
  return sub_10000E6DC(v3);
}

uint64_t sub_10000E6DC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F1A8;
  v2[3] = &unk_10002D488;
  v2[4] = a1;
  pthread_mutex_lock(&stru_100031AA8);
  sub_10000F1A8(v2);
  return pthread_mutex_unlock(&stru_100031AA8);
}

uint64_t sub_10000E76C(uint64_t a1, char **a2, _BYTE *a3)
{
  *a3 = 1;
  result = sub_100003EB8(a2);
  if (result == *(a1 + 40))
  {
    if (a2)
    {
      v7 = **a2;
    }

    result = (*(*(a1 + 32) + 16))();
    *a3 = 1;
  }

  return result;
}

uint64_t sub_10000E834(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000E8F4;
  v3[3] = &unk_10002D438;
  v4 = a1;
  v3[4] = &v5;
  sub_10000E6DC(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_10000E8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E8F4(uint64_t a1, char **a2, _BYTE *a3)
{
  *a3 = 1;
  result = sub_100003EAC(a2);
  if (result == *(a1 + 40))
  {
    if (a2)
    {
      v7 = **a2;
    }

    else
    {
      result = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_10000E9B0(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EA70;
  v3[3] = &unk_10002D438;
  v4 = a1;
  v3[4] = &v5;
  sub_10000E6DC(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_10000EA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EA70(uint64_t a1, char **a2, _BYTE *a3)
{
  *a3 = 1;
  result = sub_100003EB8(a2);
  if (result == *(a1 + 40))
  {
    if (a2)
    {
      v7 = **a2;
    }

    else
    {
      result = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = result;
    *a3 = 0;
  }

  return result;
}

void sub_10000EB1C(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    *(a1 + 96) = 1;
    [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    v2 = dispatch_time(0, 110000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EBD4;
    block[3] = &unk_10002CA90;
    block[4] = a1;
    dispatch_after(v2, &_dispatch_main_q, block);
  }
}

uint64_t sub_10000EBD4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10000EC04(uint64_t a1, uint64_t a2)
{
  Port = IOAccessoryPortGetPort();
  ManagerPrimaryPort = IOAccessoryPortGetManagerPrimaryPort();
  TransportType = IOAccessoryPortGetTransportType();
  v7 = *(a1 + 44);
  v8 = sub_100003EAC(a1);
  v9 = v8;
  if (v7 == a2)
  {
    if (v8 == Port)
    {
      if (sub_100003EB8(a1) != ManagerPrimaryPort)
      {
        v10 = *(a1 + 44);
        v11 = sub_100003EAC(a1);
        v12 = sub_100003EB8(a1);
        NSLog(@"%s:%d (%d-%d/%d) service=%d type=%d newPort=%d newPortMgr=%d", "UpdatePortProperty", 483, v10, v11, v12, a2, TransportType, Port, ManagerPrimaryPort);
        *(a1 + 20) = ManagerPrimaryPort;
      }
    }

    else
    {
      v13 = *(a1 + 44);
      v14 = sub_100003EAC(a1);
      v16 = sub_100003EB8(a1);
      NSLog(@"%s:%d ERROR: Unexpeced port number Change! (%d-%d/%d) service=%d type=%d newPort=%d newPortMgr=%d", "UpdatePortProperty", 477, v13, v14, v16, a2, TransportType, Port, ManagerPrimaryPort);
    }
  }

  else
  {
    v15 = sub_100003EB8(a1);
    NSLog(@"%s:%d ERROR: service mismatch! (%d-%d/%d) service=%d type=%d newPort=%d newPortMgr=%d", "UpdatePortProperty", 493, v7, v9, v15, a2, TransportType, Port, ManagerPrimaryPort);
  }
}

void sub_10000ED60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if (a2 == 128)
  {
    v7 = [v6 service];
    if (a3 == 100)
    {
      v8 = -469794716;
    }

    else
    {
      v8 = a3 - 469794816;
    }
  }

  else
  {
    if (a2 != 8)
    {
      NSLog(@"%s:%s - %d Can't process eventType=%d event=%d", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortIOKit.mm", "PortNotifyEvent", 536, a2, a3);
      return;
    }

    v7 = [v6 service];
    v8 = -469794784;
  }

  sub_10000E0F8(a1, v7, v8, 0);
}

uint64_t sub_10000EE64(uint64_t result)
{
  v7 = *(*(*(result + 32) + 8) + 24);
  if (*(v7 + 88) <= 0.0)
  {
    return result;
  }

  v13 = v2;
  v14 = v1;
  v8 = result;
  *(v7 + 88) = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "portID", *(*(*(v8 + 32) + 8) + 24));
  xpc_dictionary_set_string(v9, "requestType", "transportLeft");
  if (sub_100011744() && *(*(*(*(v8 + 32) + 8) + 24) + 8) == 1)
  {
    [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    if (sub_1000116BC())
    {
      v10 = *(*(*(v8 + 32) + 8) + 24);
      if (!(*(*v10 + 80))(v10))
      {
        if (+[IAPTransportServer supportsIAPD])
        {
          [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
          sub_1000116BC();
          goto LABEL_16;
        }
      }
    }
  }

  if (!sub_1000116BC())
  {
    goto LABEL_16;
  }

  v11 = *(*(*(v8 + 32) + 8) + 24);
  if ((v11[8] & 1) == 0)
  {
    if (+[IAPTransportServer supportsIAPD])
    {
LABEL_15:
      [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer sharedIAPTransportServer];
      goto LABEL_16;
    }

    v11 = *(*(*(v8 + 32) + 8) + 24);
  }

  if (!(*(*v11 + 80))(v11) && +[IAPTransportServer supportsIAPD])
  {
    goto LABEL_15;
  }

LABEL_16:
  xpc_release(v9);
  v12 = *(*(*(v8 + 32) + 8) + 24);

  return sub_100003ED4(v12);
}

uint64_t sub_10000F034(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    return 1;
  }

  if (sub_100003EB8(a1) == 256)
  {
    return 11;
  }

  if (sub_100003EB8(a1) >= 6)
  {
    sub_100003EB8(a1);
  }

  return 0;
}

BOOL sub_10000F09C(uint64_t a1)
{
  if (sub_100003EC4(*(a1 + 16)))
  {
    return 1;
  }

  v3 = *(a1 + 20);

  return sub_100003EC4(v3);
}

void sub_10000F0EC(uint64_t a1, int a2)
{
  v4 = sub_100003EAC(a1);
  v5 = sub_100003EB8(a1);
  NSLog(@"StartPort (%d/%d)", v4, v5);
  if ((*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
    sub_100004C08(a1, 0, 0);
    sub_100011660(a1, 3);
  }

  if (a2)
  {
    v6 = +[IAPTransportServer sharedIAPTransportServer];

    [v6 setHasAdaptor:1];
  }
}

uint64_t sub_10000F1A8(uint64_t result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    do
    {
      v4 = 1;
      v3 = v1[2];
      result = (*(*(v2 + 32) + 16))();
      if ((v4 & 1) == 0)
      {
        break;
      }

      v1 = v1[1];
    }

    while (v1 != &qword_100031E68);
  }

  return result;
}

void sub_10000F344(void *a1)
{
  if (a1)
  {
    if ((*(*a1 + 80))(a1) == 1)
    {
      v2 = a1[36];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F3F4;
      block[3] = &unk_10002CA90;
      block[4] = a1;
      dispatch_async(v2, block);
    }
  }
}

intptr_t sub_10000F3F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 278) = 1;
  return dispatch_semaphore_signal(*(v1 + 200));
}

uint64_t sub_10000F408(uint64_t a1, char a2, char a3, char a4, char a5, __int16 a6, __int16 a7, __int16 a8)
{
  v16 = dispatch_semaphore_create(0);
  v19[0] = a1;
  v19[1] = dispatch_queue_create("com.apple.iaptransportd.usbHostPortQ", 0);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = v16;
  LOWORD(v26) = a8;
  v28 = &v29;
  v29 = 0;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_create(&v18, 0, sub_10000F4F8, v19))
  {
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v16);
  }

  return v29;
}

void sub_10000F4F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2020000000;
  operator new();
}

void sub_10000F5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F608(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ((*(a1 + 278) & 1) == 0)
  {
    do
    {
      v8[3] = 0;
      v2 = *(a1 + 184);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F7DC;
      block[3] = &unk_10002CDA0;
      block[4] = &v7;
      block[5] = a1;
      dispatch_sync(v2, block);
      v3 = v8[3];
      if (v3)
      {
        sub_100004C08(a1, *(v3 + 16), *(v3 + 8));
        v4 = *(a1 + 128);
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_10000F86C;
        v5[3] = &unk_10002CDA0;
        v5[4] = &v7;
        v5[5] = a1;
        dispatch_sync(v4, v5);
      }

      else
      {
        dispatch_semaphore_wait(*(a1 + 200), 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    while (!*(a1 + 278));
  }

  _Block_object_dispose(&v7, 8);
}

void sub_10000F75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F774(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);

  dispatch_release(v3);
}

uint64_t sub_10000F7DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = sub_1000046CC(v2);
  if ((result & 1) == 0)
  {
    v4 = v2[22];
    if (v4)
    {
      v5 = v2[21];
      *(*(*(a1 + 32) + 8) + 24) = *(*(v2[18] + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF));
      v2[21] = v5 + 1;
      v2[22] = v4 - 1;

      return sub_100006448((v2 + 17), 1);
    }
  }

  return result;
}

uint64_t sub_10000F880(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F0C(a1, 2, 1);
  *v4 = &off_10002D4E0;
  *(v4 + 48) = *a2;
  *(v4 + 80) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 208) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 8;
  *(v4 + 242) = *(a2 + 20);
  *(v4 + 244) = *(a2 + 17);
  *(v4 + 245) = 0;
  *(v4 + 248) = xmmword_100024D30;
  *(v4 + 264) = 0;
  *(v4 + 268) = 0;
  *(v4 + 272) = *(a2 + 22);
  *(v4 + 274) = *(a2 + 24);
  *(v4 + 276) = *(a2 + 18);
  *(v4 + 277) = *(a2 + 19);
  *(v4 + 278) = 0;
  v5 = *(a2 + 8);
  *(a1 + 280) = 0;
  *(a1 + 288) = v5;
  v25 = -1431655766;
  dispatch_retain(v5);
  *(a1 + 200) = dispatch_semaphore_create(0);
  *(a1 + 128) = dispatch_queue_create("com.apple.iapd.usbStackLock", 0);
  *(a1 + 184) = dispatch_queue_create("com.apple.iapd.usbQueueLock", 0);
  *(a1 + 192) = dispatch_queue_create("com.apple.iapd.usbWriteLock", 0);
  global_queue = dispatch_get_global_queue(0, 0);
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
  *(a1 + 208) = v7;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000FCA0;
  handler[3] = &unk_10002CA90;
  handler[4] = a1;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_source_set_timer(*(a1 + 208), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(a1 + 208));
  if (!(*(**(a1 + 48) + 168))(*(a1 + 48), &v25))
  {
    RegistryEntryID = IORegistryEntryGetRegistryEntryID(v25, (a1 + 56));
    if (RegistryEntryID)
    {
      NSLog(@"%s Error getting usb device ID: %u", "CIapPortUSBHost", RegistryEntryID);
    }
  }

  v9 = *(a1 + 272);
  if (*(a1 + 252) < v9)
  {
    if (v9 >= 0x1000)
    {
      v9 = 4096;
    }

    *(a1 + 252) = v9;
  }

  v22 = 8;
  v23 = 0;
  v10 = sysctlbyname("hw.cachelinesize", &v23, &v22, 0, 0);
  if (v10)
  {
    v11 = 64;
  }

  else
  {
    v11 = v23;
  }

  if (v10)
  {
    v12 = -64;
  }

  else
  {
    v12 = -v23;
  }

  v13 = v11 + *(a1 + 252) + 24;
  v14 = 8239;
  if (*(a2 + 16) == 2)
  {
    v14 = 65919;
  }

  v15 = (v13 + v14) / v13;
  *(a1 + 72) = v15;
  v16 = *(a1 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FDD8;
  block[3] = &unk_10002D580;
  block[4] = a1;
  block[5] = v13 * v15;
  block[6] = v11;
  block[7] = v12;
  block[8] = v13;
  dispatch_sync(v16, block);
  if (*(a1 + 244) && *(a1 + 242))
  {
    v17 = *(a1 + 240);
    operator new[]();
  }

  *(a1 + 268) = 120;
  v18 = (*(**(a1 + 48) + 32))(*(a1 + 48), a1 + 216);
  if (v18)
  {
    NSLog(@"CIapPortUSBHost::CIapPortUSBHost ERROR: Asynchronous event source create fail status: %08X\n", v18);
    *(a1 + 278) = 1;
  }

  else
  {
    *(a1 + 224) = 0;
    v19 = objc_alloc_init(USBHostHelper);
    *(a1 + 296) = v19;
    [(USBHostHelper *)v19 setUsbHostPort:a1];
    [*(a1 + 296) start];
    if (*(a1 + 245) == 1)
    {
      --*(a1 + 248);
      sub_10000FF38(a1, 0);
    }

    else
    {
      sub_10000FCEC(a1, 0);
    }
  }

  return a1;
}

void sub_10000FC74(_Unwind_Exception *a1)
{
  sub_1000062E8(v3);
  sub_1000062E8(v2);
  sub_100003F80(v1);
  _Unwind_Resume(a1);
}

void sub_10000FCA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(*(v1 + 208), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

  sub_10000FCEC(v1, 0);
}

void sub_10000FCEC(uint64_t a1, int a2)
{
  if ((*(a1 + 278) & 1) == 0)
  {
    v4 = *(a1 + 252) == a2 || *(a1 + 245) == 0;
    v9[4] = v2;
    v9[5] = v3;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v5 = *(a1 + 128);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100010AD4;
    v6[3] = &unk_10002D5F0;
    v6[5] = v9;
    v6[6] = a1;
    v7 = v4;
    v6[4] = v8;
    dispatch_sync(v5, v6);
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v9, 8);
  }
}

uint64_t sub_10000FDD8(uint64_t a1)
{
  result = sub_1000046CC(*(a1 + 32));
  if ((result & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    operator new[]();
  }

  return result;
}

void sub_10000FF38(uint64_t a1, int a2)
{
  if (a1 && (*(a1 + 278) & 1) == 0)
  {
    if (!a2)
    {
      v3 = *(a1 + 128);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011234;
      block[3] = &unk_10002CA90;
      block[4] = a1;
      dispatch_sync(v3, block);
      sub_10000FCEC(a1, 0);
    }

    v4 = (*(**(a1 + 48) + 264))(*(a1 + 48), *(a1 + 244), *(*(a1 + 232) + 16), *(a1 + 240), sub_10000FF38, a1);
    if (v4)
    {
      NSLog(@"CIapPortUSBHost::USBIntrPipeReadDone ERROR: ReadPipeAsync intr IN pipe read fail status: %08X\n", v4);
    }
  }
}

uint64_t sub_10001001C(uint64_t a1)
{
  *a1 = &off_10002D4E0;
  v2 = *(a1 + 184);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000103A4;
  block[3] = &unk_10002CA90;
  block[4] = a1;
  dispatch_sync(v2, block);
  v3 = *(a1 + 128);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000103F8;
  v22[3] = &unk_10002CA90;
  v22[4] = a1;
  dispatch_sync(v3, v22);
  v4 = *(a1 + 216);
  if (v4)
  {
    CFRunLoopSourceInvalidate(v4);
    CFRelease(*(a1 + 216));
    *(a1 + 216) = 0;
    v5 = *(a1 + 224);
    if (v5)
    {
      CFRunLoopStop(v5);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    sub_100019D34(v6);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 232))
  {
    operator delete[]();
  }

  *(a1 + 232) = 0;
  if (*(a1 + 64))
  {
    operator delete[]();
  }

  *(a1 + 64) = 0;
  v7 = *(a1 + 208);
  if (v7)
  {
    dispatch_source_cancel(v7);
    dispatch_release(*(a1 + 208));
    *(a1 + 208) = 0;
  }

  v8 = *(a1 + 280);
  if (v8)
  {

    *(a1 + 280) = 0;
  }

  *(a1 + 244) = 0;
  *(a1 + 242) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  dispatch_release(*(a1 + 192));
  dispatch_release(*(a1 + 184));
  dispatch_sync(*(a1 + 128), &stru_10002D5A0);
  dispatch_release(*(a1 + 128));
  dispatch_release(*(a1 + 200));
  dispatch_release(*(a1 + 288));
  v9 = objc_autoreleasePoolPush();
  v10 = +[NSMutableArray array];
  context = v9;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = qword_100031DA8;
  v12 = [qword_100031DA8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(qword_100031DA8 objectForKey:{v15), "isEqualToNumber:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a1)}])
        {
          [v10 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v12);
  }

  [qword_100031DA8 removeObjectsForKeys:v10];
  objc_autoreleasePoolPop(context);

  sub_1000062E8((a1 + 136));
  sub_1000062E8((a1 + 80));
  sub_100003F80(a1);
  return a1;
}

uint64_t sub_1000103A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1000046CC(v1);
  if ((result & 1) == 0)
  {
    while (1)
    {
      v3 = *(v1 + 176);
      if (!v3)
      {
        break;
      }

      ++*(v1 + 168);
      *(v1 + 176) = v3 - 1;
      result = sub_100006448(v1 + 136, 1);
    }
  }

  return result;
}

uint64_t sub_1000103F8(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 48))
  {
    sub_100010458(*(result + 32), kCFBooleanFalse);
    (*(**(v1 + 48) + 72))(*(v1 + 48));
    result = (*(**(v1 + 48) + 24))(*(v1 + 48));
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_100010458(uint64_t a1, void *a2)
{
  entry = 0;
  v4 = (*(**(a1 + 48) + 168))(*(a1 + 48), &entry);
  v5 = entry;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = entry == 0;
  }

  if (v6)
  {
    NSLog(@"CIapPortUSBHost::SignalUSBDriver ERROR: GetDevice fail status: %08X\n", v4);
    return;
  }

  if (*(a1 + 280))
  {
    if ([*(a1 + 280) count])
    {
      v7 = *(a1 + 280);
      values[0] = a2;
      values[1] = v7;
      keys[0] = @"Authenticated";
      keys[1] = @"InterfaceProperties";
      v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      IORegistryEntrySetCFProperties(entry, v8);
      CFRelease(v8);
      return;
    }

    v5 = entry;
  }

  IORegistryEntrySetCFProperty(v5, @"Authenticated", a2);
}

void sub_100010584(uint64_t a1)
{
  sub_10001001C(a1);

  operator delete();
}

uint64_t sub_1000105F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = a4;
  v5 = *(a1 + 288);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000106C0;
  block[3] = &unk_10002D5C8;
  block[7] = a1;
  block[8] = a2;
  block[4] = a5;
  block[5] = v9;
  block[6] = &v11;
  dispatch_sync(v5, block);
  v6 = *(v12 + 6);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1000106C0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 48) && *(v2 + 277) && (*(v2 + 278) & 1) == 0 && *(a1 + 64))
  {
    xpc_retain(*(a1 + 32));
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 32), "data", &length);
    v4 = *(v2 + 192);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000108FC;
    block[3] = &unk_10002CDA0;
    block[4] = *(a1 + 40);
    block[5] = v2;
    dispatch_sync(v4, block);
    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      operator new();
    }

    v5 = (*(**(v2 + 48) + 320))(*(v2 + 48), *(v2 + 277), data, length, 1000, 2000);
    xpc_release(*(a1 + 32));
    if (v5)
    {
      NSLog(@"CIapPortUSBHost::PortTransmitData ERROR: WritePipe(Async)TO bulk OUT write fail status: %08X\n", v5);
      *(*(*(a1 + 48) + 8) + 24) = 5;
    }

    v6 = *(v2 + 192);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000109E8;
    v7[3] = &unk_10002CA90;
    v7[4] = v2;
    dispatch_sync(v6, v7);
  }

  else
  {
    NSLog(@"CIapPortUSBHost::PortTransmitData ERROR: Bulk OUT pipe or iAP packet not initialized\n");
    *(*(*(a1 + 48) + 8) + 24) = 6;
  }
}

uint64_t sub_1000108FC(uint64_t result)
{
  v1 = *(result + 40);
  if (++*(v1 + 264) > *(v1 + 268))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void *sub_100010930(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result && (*(v2 + 278) & 1) == 0)
    {
      v3 = *(v2 + 192);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000112B0;
      block[3] = &unk_10002CA90;
      block[4] = v2;
      dispatch_sync(v3, block);
    }

    v4 = v1[1];
    if (v4)
    {
      xpc_release(v4);
    }

    operator delete();
  }

  return result;
}

BOOL sub_1000109FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSNumber numberWithUnsignedLongLong:a1];
  v4 = [qword_100031DA8 objectForKey:v3] != 0;
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_100010A58(uint64_t a1)
{
  v1 = *(a1 + 184);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010ACC;
  block[3] = &unk_10002CA90;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_100010AD4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 248) || *(a1 + 56) == 1)
  {
    do
    {
      v3 = *(v2 + 120);
      if (v3)
      {
        v4 = v3 - 1;
        *(*(*(a1 + 32) + 8) + 24) = *(*(*(v2 + 88) + (((*(v2 + 112) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 112) + v4) & 0x1FF));
        *(v2 + 120) = v4;
        sub_100006B84((v2 + 80), 1);
        *(*(*(a1 + 40) + 8) + 24) = *(v2 + 120);
        if ((*(a1 + 56) & 1) == 0)
        {
          v5 = *(v2 + 248) - 1;
          goto LABEL_8;
        }

        if ((*(v2 + 245) & 1) == 0)
        {
          v5 = 0;
LABEL_8:
          *(v2 + 248) = v5;
        }
      }

      v6 = *(v2 + 48);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        if (v6)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = (*(**(v2 + 48) + 328))(*(v2 + 48), *(v2 + 276), *(*(*(*(a1 + 32) + 8) + 24) + 16), *(v2 + 252), *(v2 + 256), *(v2 + 260), sub_100010C94);
          if (v8 != -536870208 && v8 != 0)
          {
            NSLog(@"CIapPortUSBHost::HandleBulkReadComplete ERROR: ReadPipeAsyncTO bulk IN fail status: %08X\n", v8);
          }

          objc_autoreleasePoolPop(v7);
        }
      }

      else if (v6)
      {
        if (*(a1 + 56) == 1)
        {
          ++*(v2 + 248);
        }

        v10 = *(v2 + 208);
        v11 = dispatch_time(0, 16000000);
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }

    while (*(*(*(a1 + 40) + 8) + 24) && (*(v2 + 278) & 1) == 0 && !*(v2 + 245));
  }
}

void sub_100010C94(uint64_t a1, int a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = objc_autoreleasePoolPush();
  if (sub_1000109FC(a1))
  {
    v7 = [objc_msgSend(qword_100031DA8 objectForKey:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a1)), "unsignedLongLongValue"}];
    objc_autoreleasePoolPop(v6);
    if (v7 && (*(v7 + 278) & 1) == 0)
    {
      if (a2)
      {
        v3 = 0;
      }

      else
      {
        v3 = v3;
      }

      if (v3)
      {
        v12.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        *&v12.tv_usec = 0xAAAAAAAAAAAAAAAALL;
        gettimeofday(&v12, 0);
        *a1 = 1000 * v12.tv_sec + v12.tv_usec / 1000;
        *(a1 + 8) = v3;
        if ((*(v7 + 278) & 1) == 0)
        {
          v8 = *(v7 + 23);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100011248;
          block[3] = &unk_10002D050;
          block[4] = v7;
          block[5] = a1;
          dispatch_sync(v8, block);
          dispatch_semaphore_signal(*(v7 + 25));
        }
      }

      else if ((*(v7 + 278) & 1) == 0)
      {
        v9 = *(v7 + 16);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10001129C;
        v10[3] = &unk_10002D050;
        v10[4] = v7;
        v10[5] = a1;
        dispatch_sync(v9, v10);
      }

      sub_10000FCEC(v7, v3);
    }
  }

  else
  {

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100010E98(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v16 = 0;
    v5 = (*(**(a1 + 48) + 168))(*(a1 + 48), &v16);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v16 == 0;
    }

    if (v6)
    {
      NSLog(@"%s:%s ERROR: GetDevice fail status: %08X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortUSBHost.mm", "HandleNCMSupport", v5);
    }

    else
    {
      valuePtr = 0x20000000;
      keys = @"NetworkInterfaceFlags";
      values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      v7 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v8 = *(a1 + 280);
      if (!v8)
      {
        v9 = [[NSMutableArray alloc] initWithCapacity:a3 + 1];
        *(a1 + 280) = v9;
        sub_100011038(v9, 0, a3 + 1);
        v8 = *(a1 + 280);
      }

      v10 = a3;
      if ([v8 count] <= a3)
      {
        v12 = a3 + 1;
        v11 = [[NSMutableArray alloc] initWithCapacity:v12];
        [v11 setArray:*(a1 + 280)];
        sub_100011038(v11, [*(a1 + 280) count], v12);

        *(a1 + 280) = v11;
      }

      else
      {
        v11 = *(a1 + 280);
      }

      [v11 replaceObjectAtIndex:v10 withObject:v7];
      CFRelease(values);
      CFRelease(v7);
    }
  }
}

void sub_100011038(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      v6 = objc_alloc_init(NSDictionary);
      [a1 insertObject:v6 atIndex:v4];

      ++v4;
    }

    while (a3 != v4);
  }
}

void sub_1000110AC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a3 > 9)
  {
    syslog(4, "%s:%s-%d invalid HID function %d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IapPortUSBHost.mm", "AddInterfaceAndHIDFunction", 1000, a3);
  }

  else
  {
    v10 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a3), +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", "IAPHIDAccessoryCategory", 4), 0}];
    v5 = *(a1 + 280);
    if (!v5)
    {
      v6 = [[NSMutableArray alloc] initWithCapacity:a2 + 1];
      *(a1 + 280) = v6;
      sub_100011038(v6, 0, a2 + 1);
      v5 = *(a1 + 280);
    }

    v7 = a2;
    if ([v5 count] <= a2)
    {
      v9 = a2 + 1;
      v8 = [[NSMutableArray alloc] initWithCapacity:v9];
      [v8 setArray:*(a1 + 280)];
      sub_100011038(v8, [*(a1 + 280) count], v9);

      *(a1 + 280) = v8;
    }

    else
    {
      v8 = *(a1 + 280);
    }

    [v8 replaceObjectAtIndex:v7 withObject:v10];
  }
}

uint64_t sub_100011248(uint64_t a1)
{
  result = sub_1000041F4(1);
  if ((result & 1) == 0)
  {
    v3 = (*(a1 + 32) + 136);

    return sub_1000112DC(v3, (a1 + 40));
  }

  return result;
}

void *sub_1000112DC(void *result, void *a2)
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
    result = sub_100011364(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_100011364(void *a1)
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
    sub_100006B3C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100006704(a1, &v10);
}

void sub_1000114EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100011538(io_service_t a1, uint64_t a2)
{
  connect = 0;
  v4 = IOServiceOpen(a1, mach_task_self_, 0, &connect);
  if (v4)
  {
    v5 = v4;
    NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x, didn't set powerMode(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "EnableAccessoryPowerForPortService", 249, v4, a2);
  }

  else
  {
    if (a1)
    {
        ;
      }

      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      if (a2 == 1 && PrimaryPort == 256)
      {
        goto LABEL_9;
      }
    }

    if (a2 != 1 && ([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")] & 1) != 0)
    {
LABEL_9:
      v5 = 0;
    }

    else
    {
      v7 = IOAccessoryManagerConfigurePower();
      v5 = v7;
      if (v7)
      {
        NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerConfigurePower failed %#x, didn't set powerMode(%d)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportServer.mm", "EnableAccessoryPowerForPortService", 279, v7, a2);
      }
    }

    IOServiceClose(connect);
  }

  return v5;
}

id sub_100011660(uint64_t a1, uint64_t a2)
{
  result = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if (result)
  {
    return (sub_100011538([result service], a2) == 0);
  }

  return result;
}

BOOL sub_1000116BC()
{
  out_token = 0;
  state64 = 0;
  v0 = 0;
  if (!notify_register_check("com.apple.iapd.notify.availability", &out_token))
  {
    check = 0;
    notify_check(out_token, &check);
    if (check)
    {
      notify_get_state(out_token, &state64);
      v0 = state64 != 0;
    }

    else
    {
      v0 = 0;
    }

    notify_cancel(out_token);
  }

  return v0;
}

BOOL sub_100011744()
{
  out_token = 0;
  state64 = 0;
  v0 = 0;
  if (!notify_register_check("com.apple.iap2d.notify.availability", &out_token))
  {
    check = 0;
    notify_check(out_token, &check);
    if (check)
    {
      notify_get_state(out_token, &state64);
      v0 = state64 != 0;
    }

    else
    {
      v0 = 0;
    }

    notify_cancel(out_token);
  }

  return v0;
}

uint64_t sub_1000117D0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100016E20;
  v2[3] = &unk_10002CA90;
  v2[4] = a1;
  pthread_mutex_lock(&stru_100031AA8);
  (sub_100016E20)(v2);
  return pthread_mutex_unlock(&stru_100031AA8);
}

uint64_t sub_100011860(_BYTE *a1)
{
  if ((*(*a1 + 24))(a1))
  {
    sub_1000119B4(a1);
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "portID", a1);
  xpc_dictionary_set_string(v2, "requestType", "transportLeft");
  if (sub_1000116BC() && (a1[8] & 1) == 0 && +[IAPTransportServer supportsIAPD])
  {
    [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  }

  if (sub_100011744() && a1[8] == 1)
  {
    [objc_msgSend(+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  }

  xpc_release(v2);
  result = sub_100003EB8(a1);
  if (result == 6)
  {
    byte_100031DB0 = 0;
    sub_100004B78(0);
    notify_set_state(dword_100031DB4, byte_100031DB0);

    return notify_post("com.apple.iapd.adaptor.AvailableChanged");
  }

  return result;
}

uint64_t sub_1000119B4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100016F4C;
  v2[3] = &unk_10002CA90;
  v2[4] = a1;
  pthread_mutex_lock(&stru_100031AA8);
  sub_100016F4C(v2);
  return pthread_mutex_unlock(&stru_100031AA8);
}

uint64_t sub_100011BE4(void *a1, io_iterator_t a2)
{
  [a1 updatePortManagers];
  result = IOIteratorNext(a2);
  if (result)
  {
    v5 = result;
    while (1)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"IOAccessoryDevicePort", kCFAllocatorDefault, 0);
      v7 = IORegistryEntryCreateCFProperty(v5, @"IOAccessoryPortManagerPrimaryPort", kCFAllocatorDefault, 0);
      v8 = v7;
      if (CFProperty && v7 != 0)
      {
        break;
      }

      if (CFProperty)
      {
        goto LABEL_22;
      }

      if (v7)
      {
        goto LABEL_10;
      }

LABEL_11:
      IOObjectRelease(v5);
      result = IOIteratorNext(a2);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    valuePtr = 0;
    Value = CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr + 4);
    if (Value && CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
    {
      v11 = sub_10000E834(SHIDWORD(valuePtr));
      if (v11 && (sub_10000EB1C(v11), (v12 = sub_10000E834(SHIDWORD(valuePtr))) != 0))
      {
        v13 = v12;
        v14 = sub_100003EAC(v12);
        v15 = sub_100003EB8(v13);
        NSLog(@"%s WARNING: after ProcessTermiante, transport still found!!! (%d/%d) service=%04X", "__AccessoryManagerPortAdded", v14, v15, v13[11]);
        if (((*(*v13 + 24))(v13) & 1) == 0)
        {
          sub_100011660(v13, 3);
        }
      }

      else
      {
        if ([objc_msgSend(a1 "iapPortManagers")])
        {
          operator new();
        }

        NSLog(@"%s:%d NULL iapPortManager! portNumber=%d portManagerNumber=%d transport=%hhx", "__AccessoryManagerPortAdded", 1435, HIDWORD(valuePtr), valuePtr, 0);
      }
    }

LABEL_22:
    CFRelease(CFProperty);
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v8);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000120B8(uint64_t a1, io_iterator_t a2)
{
  v41 = 0;
  theInterface = 0;
  theScore = 0;
  v39 = 0;
  result = sub_1000041F4(1);
  if ((result & 1) == 0)
  {
    result = IOIteratorNext(a2);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        parent = 0;
        v37 = 1;
        if (IORegistryEntryGetParentEntry(v4, "IOService", &parent))
        {
          NSLog(@"__iAPInterfaceDeviceArrivedCallback: IORegistryEntryGetParentEntry, error: %08x %8p\n", v5, theInterface);
        }

        else
        {
          v36 = 0;
          v14 = parent;
          v15 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
          v16 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
          if (!IOCreatePlugInInterfaceForService(v14, v15, v16, &v36, &theScore))
          {
            v17 = v36;
            if (v36)
            {
              v35 = 0;
              QueryInterface = (*v36)->QueryInterface;
              v19 = CFUUIDGetConstantUUIDWithBytes(0, 0x15u, 0x2Fu, 0xC4u, 0x96u, 0x48u, 0x91u, 0x11u, 0xD5u, 0x9Du, 0x52u, 0, 0xAu, 0x27u, 0x80u, 0x1Eu, 0x86u);
              v20 = CFUUIDGetUUIDBytes(v19);
              if ((QueryInterface)(v17, *&v20.byte0, *&v20.byte8, &v35))
              {
                v21 = 1;
              }

              else
              {
                v21 = v35 == 0;
              }

              if (!v21)
              {
                v5 = (*(*v35 + 144))();
                (*(*v35 + 24))(v35);
                if (v5)
                {
                  NSLog(@"__iAPInterfaceDeviceArrivedCallback: Unable to get bus speed, error: %08x %8p\n", v5, v35);
                  goto LABEL_26;
                }
              }

              ((*v36)->Release)(v36);
            }
          }
        }

        v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
        v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
        v5 = IOCreatePlugInInterfaceForService(v4, v6, v7, &theInterface, &theScore);
        IOObjectRelease(v4);
        v8 = theInterface;
        if (v5 || !theInterface)
        {
          NSLog(@"__iAPInterfaceDeviceArrivedCallback: Unable to create a plug-in, error: %08x %8p\n", v5, theInterface);
        }

        else
        {
          v9 = (*theInterface)->QueryInterface;
          v10 = CFUUIDGetConstantUUIDWithBytes(0, 0x49u, 0x23u, 0xACu, 0x4Cu, 0x48u, 0x96u, 0x11u, 0xD5u, 0x92u, 8u, 0, 0xAu, 0x27u, 0x80u, 0x1Eu, 0x86u);
          v11 = CFUUIDGetUUIDBytes(v10);
          v12 = (v9)(v8, *&v11.byte0, *&v11.byte8, &v41);
          ((*theInterface)->Release)(theInterface);
          if (v12 || !v41)
          {
            NSLog(@"__iAPInterfaceDeviceArrivedCallback: could not create a device interface for the interface: 0x%016lx\n", v12);
            v5 = 0;
          }

          else
          {
            v13 = (*(*v41 + 64))(v41);
            if (v13)
            {
              v5 = v13;
              NSLog(@"__iAPInterfaceDeviceArrivedCallback: unable to open interface (%08x)\n", v13);
            }

            else
            {
              v22 = (*(*v41 + 152))(v41, &v39);
              if (!v22)
              {
                v23 = 0;
                v30 = 0;
                v31 = 0;
                v24 = 0;
                v25 = 0;
                v26 = 0;
                v27 = -1;
                do
                {
                  LOBYTE(v35) = -86;
                  v34 = -86;
                  v33 = -86;
                  v32 = -86;
                  LOWORD(v36) = -21846;
                  v28 = (*(*v41 + 208))(v41, (v27 + 1), &v35, &v34, &v32, &v36, &v33);
                  v5 = v28;
                  if (v28)
                  {
                    NSLog(@"__iAPInterfaceDeviceArrivedCallback: unable to get properties of pipe %d (%08x)\n", v27 + 1, v28);
                  }

                  else if (v32 == 3 && v35 == 1)
                  {
                    v24 = v36;
                    v26 = v27 + 1;
                  }

                  else if (v32 == 2 && v35 == 1)
                  {
                    v30 = v36;
                    v31 = v27 + 1;
                  }

                  else if (v32 == 2 && v35 == 0)
                  {
                    v25 = v27 + 1;
                    v23 = v36;
                  }

                  ++v27;
                }

                while (v27 < v39);
                if (v31 && v25 && v30)
                {
                  if (v23)
                  {
                    sub_100016284();
                    qword_100031DF8 = sub_10000F408(v41, v37, v26, v31, v25, v24, v30, v23);
                    sub_1000117D0(qword_100031DF8);
                  }
                }

                goto LABEL_26;
              }

              v5 = v22;
              NSLog(@"__iAPInterfaceDeviceArrivedCallback: unable to get number of endpoints (%08x)\n", v22);
              (*(*v41 + 72))(v41);
            }

            (*(*v41 + 24))(v41);
          }
        }

LABEL_26:
        result = IOIteratorNext(a2);
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_100012624(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    do
    {
      sub_100016284();
      v5 = IOObjectRelease(v4);
      if (v5)
      {
        NSLog(@"__iAPInterfaceDeviceRemovedCallback: Could not release bulk device object: 0x%08x", v5);
      }

      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_10001275C(uint64_t a1)
{
  *(*(a1 + 32) + 136) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 128));
  dispatch_source_set_event_handler(*(*(a1 + 32) + 136), &stru_10002D648);
  dispatch_source_set_timer(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(*(a1 + 32) + 136));
  if (!*(*(a1 + 32) + 136))
  {
    sub_10001A924();
  }
}

void sub_1000127E8(id a1)
{
  v1 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if (v1)
  {

    dispatch_sync(v1, &stru_10002D668);
  }
}

void sub_100012830(id a1)
{
  if (([+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")] & 1) == 0)
  {
    sub_10001289C(3, 0);
    [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    v1 = +[IAPTransportServer sharedIAPTransportServer];

    [v1 sendValidAccResistorIDToIAPD];
  }
}

id sub_10001289C(uint64_t a1, int a2)
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (!a2 || !IOAccessoryManagerGetPowerDuringSleep())
  {
    sub_100011538(ServiceWithPrimaryPort, a1);
  }

  IOObjectRelease(ServiceWithPrimaryPort);
  result = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if (a1 != 1 && result)
  {
    v6 = qword_100031DD8;

    return sub_10000C9EC(v6, a1);
  }

  return result;
}

void sub_100012A08(uint64_t a1)
{
  *(*(a1 + 32) + 152) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 128));
  v2 = *(*(a1 + 32) + 152);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100012AE4;
  handler[3] = &unk_10002CAB0;
  v4 = *(a1 + 40);
  dispatch_source_set_event_handler(v2, handler);
  dispatch_source_set_timer(*(*(a1 + 32) + 152), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(*(a1 + 32) + 152));
  if (!*(*(a1 + 32) + 152))
  {
    sub_10001A924();
  }
}

void sub_100012AE4(uint64_t a1)
{
  v2 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012B74;
    block[3] = &unk_10002CAB0;
    v4 = *(a1 + 32);
    dispatch_sync(v2, block);
  }
}

id sub_100012B74(uint64_t a1)
{
  result = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if ((result & 1) == 0)
  {
    NSLog(@"%s:%d Turning Acc Power ON for portService: %u", "[IAPTransportServer startAccPowerTimer:ForPortService:]_block_invoke_3", 1811, *(a1 + 32));
    sub_100011538(*(a1 + 32), 3);
    [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
    v3 = +[IAPTransportServer sharedIAPTransportServer];

    return [v3 sendValidAccResistorIDToIAPD];
  }

  return result;
}

void sub_100012CA4(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = qword_100031DC8;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v2 = *(a1 + 32);
  v17 = v2[189];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = qword_100031DD0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = v2[191];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = qword_100031DD8;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = v2[190];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = sub_100012FBC;
  v9[4] = sub_100012FCC;
  v9[5] = +[IAPTransportServer sharedIAPTransportServer];
  *(*(a1 + 32) + 168) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 128));
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_100012FBC;
  v3 = *(*(a1 + 32) + 168);
  v8[4] = sub_100012FCC;
  v8[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012FD8;
  v7[3] = &unk_10002D708;
  v7[4] = v9;
  v7[5] = v16;
  v7[6] = v18;
  v7[7] = v10;
  v7[8] = v12;
  v7[9] = v13;
  v7[10] = v15;
  v7[11] = v8;
  dispatch_source_set_event_handler(v3, v7);
  v4 = *(*(a1 + 32) + 168);
  v5 = dispatch_time(0, 1000000 * *(a1 + 40));
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(*(a1 + 32) + 168));
  if (!*(*(a1 + 32) + 168))
  {
    _os_assert_log();
    v6 = _os_crash();
    sub_10001B804(v6);
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void sub_100012F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100012FD8(uint64_t a1)
{
  v2 = [+[IAPTransportServer sharedIAPTransportServer](IAPTransportServer "sharedIAPTransportServer")];
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013098;
    block[3] = &unk_10002D6E0;
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    dispatch_sync(v2, block);
  }

  dispatch_source_set_timer(*(*(*(a1 + 88) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

id sub_100013098(void *a1)
{
  result = [*(*(a1[4] + 8) + 40) isShuttingDown];
  if ((result & 1) == 0)
  {
    [*(*(a1[4] + 8) + 40) _listenForAccessoryPortChanges];
    sub_10001289C(3, 0);
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      sub_10000CA08(*(*(a1[6] + 8) + 24));
      sub_10000D748(*(*(a1[6] + 8) + 24));
    }

    if (*(*(a1[7] + 8) + 24) == 1)
    {
      sub_10000CA08(*(*(a1[8] + 8) + 24));
      sub_10000D748(*(*(a1[8] + 8) + 24));
      sub_10000C9EC(*(*(a1[8] + 8) + 24), 3);
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      sub_10000CA08(*(*(a1[10] + 8) + 24));
    }

    [*(*(a1[4] + 8) + 40) checkXPCConnections];
    v3 = *(*(a1[4] + 8) + 40);

    return [v3 sendValidAccResistorIDToIAPD];
  }

  return result;
}

id sub_100013234(uint64_t a1)
{
  out_token = -1;
  result = notify_register_check("com.apple.iapd.notify.availability", &out_token);
  if (!result)
  {
    v4 = 0;
    notify_get_state(out_token, &v4);
    if (v4 == 1)
    {
      notify_set_state(out_token, 0);
      notify_post("com.apple.iapd.notify.availability");
    }

    result = notify_cancel(out_token);
  }

  if ((*(*(a1 + 32) + 209) & 1) == 0)
  {
    v3 = +[IAPTransportServer sharedIAPTransportServer];
    if (+[IAPTransportServer supportsIAPD])
    {
      [*(*(a1 + 32) + 216) setDisconnectBlock:0];

      *(*(a1 + 32) + 216) = 0;
    }

    [v3 cleanupPhysicalConnectorConnections];
    sub_100002668(1);
    [v3 cleanupStaleClientPorts:1];
    sub_10001289C(1, 0);
    return [v3 startAccPowerTimer:1250];
  }

  return result;
}

id sub_1000133B0(uint64_t a1)
{
  out_token = -1;
  result = notify_register_check("com.apple.iap2d.notify.availability", &out_token);
  if (!result)
  {
    v4 = 0;
    notify_get_state(out_token, &v4);
    if (v4 == 1)
    {
      notify_set_state(out_token, 0);
      notify_post("com.apple.iap2d.notify.availability");
    }

    result = notify_cancel(out_token);
  }

  if ((*(*(a1 + 32) + 209) & 1) == 0)
  {
    v3 = +[IAPTransportServer sharedIAPTransportServer];
    [*(*(a1 + 32) + 224) setDisconnectBlock:0];

    *(*(a1 + 32) + 224) = 0;
    [v3 cleanupPhysicalConnectorConnections];
    sub_100002668(2);
    [v3 cleanupStaleClientPorts:2];
    sub_10001289C(1, 0);
    return [v3 startAccPowerTimer:1250];
  }

  return result;
}

uint64_t sub_10001364C(uint64_t result)
{
  v1 = qword_100031E70;
  if (qword_100031E70 != &qword_100031E68)
  {
    v2 = result;
    do
    {
      v3 = v1[2];
      if (!(*(*v3 + 80))(v3) || (result = (*(*v3 + 80))(v3), result == 1))
      {
        result = sub_100003ED4(v3);
        v3[10] = *(v2 + 32);
      }

      v1 = v1[1];
    }

    while (v1 != &qword_100031E68);
  }

  return result;
}

uint64_t sub_100013778(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001380C;
  v2[3] = &unk_10002D690;
  v2[4] = *(a1 + 32);
  pthread_mutex_lock(&stru_100031AA8);
  sub_10001380C(v2);
  return pthread_mutex_unlock(&stru_100031AA8);
}

void sub_10001380C(uint64_t a1)
{
  for (i = qword_100031E70; i != &qword_100031E68; i = i[1])
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = i[2];
    if (!(*(*v8 + 80))(v8) || (*(*v6[3] + 80))(v6[3]) == 1)
    {
      v3 = *(*(a1 + 32) + 232);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100013968;
      block[3] = &unk_10002D460;
      block[4] = &v5;
      dispatch_async(v3, block);
    }

    _Block_object_dispose(&v5, 8);
  }
}

void sub_100013950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100013968(uint64_t a1)
{
  v2 = +[IAPTransportServer sharedIAPTransportServer];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 detachIOKitPort:v3];
}

id sub_100013BEC(uint64_t a1, uint64_t a2)
{
  v3 = +[IAPTransportServer sharedIAPTransportServer];

  return [v3 radioPreferencesChanged:a2];
}

uint64_t sub_100014310()
{
  NSLog(@"Logging preferences changed! (IAPTransportServer)");

  return sub_100018890();
}

void sub_100014908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014928(IONotificationPort **a1, io_iterator_t iterator)
{
  v3 = *a1;
  notification = -1431655766;
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      sub_100017074(v5);
      IOServiceAddInterestNotification(v3, v5, "IOGeneralInterest", sub_100017160, 0, &notification);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_1000149C4(uint64_t a1, xpc_object_t object)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    xpc_connection_set_target_queue(object, v3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001717C;
    handler[3] = &unk_10002D8B0;
    handler[4] = object;
    handler[5] = v3;
    xpc_connection_set_event_handler(object, handler);
    xpc_connection_resume(object);
  }

  else if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    NSLog(@"_xpc_iaptransportd_handle_incoming_request connection error: %s\n", string);
  }

  else
  {
    v5 = xpc_copy_description(object);
    NSLog(@"_xpc_iaptransportd_handle_incoming_request unexpected event: %s\n", v5);

    free(v5);
  }
}

void sub_100014AF0(int a1, int a2, int a3, intptr_t notificationID)
{
  switch(a3)
  {
    case -536870288:
      v5 = dword_100031DE4;

      IOAllowPowerChange(v5, notificationID);
      break;
    case -536870144:
      sub_10001289C(3, 0);
      v4 = +[IAPTransportServer sharedIAPTransportServer];

      [v4 sendValidAccResistorIDToIAPD];
      break;
    case -536870272:
      IOAllowPowerChange(dword_100031DE4, notificationID);
      if (!sub_1000116BC() && !sub_100011744())
      {

        sub_10001289C(1, 1);
      }

      break;
  }
}

void sub_1000151FC(id a1)
{
  v1 = +[IAPTransportServer sharedIAPTransportServer];

  [v1 iapDisconnect];
}

void sub_10001522C(id a1)
{
  v1 = +[IAPTransportServer sharedIAPTransportServer];

  [v1 iap2Disconnect];
}