@interface CUSystemMonitor
- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv4Addr;
- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv6Addr;
- ($D91DDCA3822F03E96939068EA8DE741A)bluetoothAddress48;
- ($D91DDCA3822F03E96939068EA8DE741A)rotatingIdentifier48;
- (BOOL)firstUnlocked;
- (BOOL)manateeAvailable;
- (BOOL)meDeviceIsMe;
- (BOOL)meDeviceValid;
- (BOOL)powerUnlimited;
- (BOOL)primaryAppleIDIsHSA2;
- (BOOL)primaryIPIsCellular;
- (BOOL)screenLocked;
- (BOOL)screenLockedSync;
- (BOOL)screenOn;
- (BOOL)screenSaverActive;
- (CUSystemMonitor)init;
- (NSArray)familyMembers;
- (NSData)bluetoothAddressData;
- (NSData)primaryIPv4NetworkSignature;
- (NSData)primaryIPv6NetworkSignature;
- (NSData)rotatingIdentifierData;
- (NSString)meDeviceFMFDeviceID;
- (NSString)meDeviceIDSDeviceID;
- (NSString)meDeviceName;
- (NSString)primaryAppleID;
- (NSString)primaryNetworkSignature;
- (NSString)regionISOCountryCode;
- (NSString)regionMobileCountryCode;
- (NSString)regionRoutineCountry;
- (NSString)regionRoutineState;
- (NSString)systemName;
- (int)activeCallCount;
- (int)callCountIncomingConnected;
- (int)callCountIncomingUnconnected;
- (int)callCountOutgoingConnected;
- (int)callCountOutgoingUnconnected;
- (int)connectedCallCount;
- (int)manateeState;
- (int)motionOrientation;
- (int)screenState;
- (int)systemLockState;
- (int)systemLockStateSync;
- (int)wifiState;
- (unsigned)callFlags;
- (unsigned)locationVisitsFlags;
- (unsigned)motionFlags;
- (unsigned)netFlags;
- (unsigned)systemUIFlags;
- (unsigned)wifiFlags;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation CUSystemMonitor

- (BOOL)screenOn
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 512);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (BOOL)firstUnlocked
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 640);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (unsigned)wifiFlags
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 664);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (BOOL)screenSaverActive
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 520);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSString)primaryAppleID
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 392);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (BOOL)meDeviceIsMe
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 200);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)systemLockStateSync
{
  v2 = MKBGetDeviceLockState();
  if (v2 <= 4)
  {
    return 4 - v2;
  }

  else
  {
    return 0;
  }
}

- (int)systemLockState
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 608);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (BOOL)screenLocked
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 504);
  }

  else
  {
    v2 = 1;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSString)meDeviceFMFDeviceID
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 176);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSString)meDeviceIDSDeviceID
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 184);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSString)meDeviceName
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 192);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (int)activeCallCount
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 56);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (BOOL)manateeAvailable
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 140);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)wifiState
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 668);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)screenState
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 536);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)connectedCallCount
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 84);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (unsigned)netFlags
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 288);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (unsigned)systemUIFlags
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 620);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSString)systemName
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 600);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (BOOL)screenLockedSync
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  if (SpringBoardServicesLibrary_sLib)
  {
    v2 = dlsym(SpringBoardServicesLibrary_sLib, "SBSGetScreenLockStatus");
    if (v2)
    {
      LOBYTE(v2) = softLinkSBSGetScreenLockStatus(0) != 0;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (NSData)rotatingIdentifierData
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 488);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- ($D91DDCA3822F03E96939068EA8DE741A)rotatingIdentifier48
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 480) | (*(gCUSystemMonitor + 484) << 32);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSString)regionRoutineState
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 472);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSString)regionRoutineCountry
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 456);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSString)regionMobileCountryCode
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 440);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSString)regionISOCountryCode
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 432);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (BOOL)primaryIPIsCellular
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 368);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSData)primaryIPv6NetworkSignature
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 360);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSData)primaryIPv4NetworkSignature
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 352);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- (NSString)primaryNetworkSignature
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 376);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv6Addr
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v4 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    retstr->var0 = *(gCUSystemMonitor + 320);
    *(&retstr->var2.sin6_addr + 4) = *(v4 + 332);
  }

  else
  {
    *&retstr->var0.sa_len = 0;
    *retstr->var2.sin6_addr.__u6_addr8 = 0;
    retstr->var2.sin6_scope_id = 0;
    *&retstr->var2.sin6_addr.__u6_addr32[2] = 0;
  }

  return pthread_mutex_unlock(&gCUSystemMonitorLock);
}

- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv4Addr
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v4 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    *(&retstr->var2.sin6_addr + 4) = *(gCUSystemMonitor + 304);
    retstr->var0 = *(v4 + 292);
  }

  else
  {
    *&retstr->var0.sa_len = 0;
    *retstr->var2.sin6_addr.__u6_addr8 = 0;
    retstr->var2.sin6_scope_id = 0;
    *&retstr->var2.sin6_addr.__u6_addr32[2] = 0;
  }

  return pthread_mutex_unlock(&gCUSystemMonitorLock);
}

- (BOOL)primaryAppleIDIsHSA2
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 401);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (BOOL)powerUnlimited
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 388);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)motionOrientation
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 264);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (unsigned)motionFlags
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 248);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (BOOL)meDeviceValid
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 208);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)manateeState
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 144);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (unsigned)locationVisitsFlags
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 136);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSArray)familyMembers
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = [*(gCUSystemMonitor + 96) copy];
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v2;
}

- (unsigned)callFlags
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 60);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)callCountOutgoingUnconnected
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 76);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)callCountOutgoingConnected
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 72);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)callCountIncomingUnconnected
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 68);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (int)callCountIncomingConnected
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 64);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (NSData)bluetoothAddressData
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = gCUSystemMonitor;
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 32);
  }

  v3 = v2;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  return v3;
}

- ($D91DDCA3822F03E96939068EA8DE741A)bluetoothAddress48
{
  pthread_mutex_lock(&gCUSystemMonitorLock);
  if (gCUSystemMonitor)
  {
    v2 = *(gCUSystemMonitor + 24) | (*(gCUSystemMonitor + 28) << 32);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&gCUSystemMonitorLock);
  return v2;
}

- (void)invalidate
{
  self->_invalidateCalled = 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUSystemMonitor_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__CUSystemMonitor_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32);
  if ((*(v10 + 25) & 1) == 0)
  {
    *(v10 + 25) = 1;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitor invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    }

    pthread_mutex_lock(&gCUSystemMonitorLock);
    [gCUSystemMonitor removeMonitor:*(a1 + 32)];
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    v12 = *(a1 + 32);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = 0;

    v16 = *(a1 + 32);
    v17 = *(v16 + 56);
    *(v16 + 56) = 0;

    v18 = *(a1 + 32);
    v19 = *(v18 + 64);
    *(v18 + 64) = 0;

    v20 = *(a1 + 32);
    v21 = *(v20 + 72);
    *(v20 + 72) = 0;

    v22 = *(a1 + 32);
    v23 = *(v22 + 96);
    *(v22 + 96) = 0;

    v24 = *(a1 + 32);
    v25 = *(v24 + 104);
    *(v24 + 104) = 0;

    v26 = *(a1 + 32);
    v27 = *(v26 + 112);
    *(v26 + 112) = 0;

    v28 = *(a1 + 32);
    v29 = *(v28 + 120);
    *(v28 + 120) = 0;

    v30 = *(a1 + 32);
    v31 = *(v30 + 128);
    *(v30 + 128) = 0;

    v32 = *(a1 + 32);
    v33 = *(v32 + 136);
    *(v32 + 136) = 0;

    v34 = *(a1 + 32);
    v35 = *(v34 + 160);
    *(v34 + 160) = 0;

    v36 = *(a1 + 32);
    v37 = *(v36 + 168);
    *(v36 + 168) = 0;

    v38 = *(a1 + 32);
    v39 = *(v38 + 144);
    *(v38 + 144) = 0;

    v40 = *(a1 + 32);
    v41 = *(v40 + 152);
    *(v40 + 152) = 0;

    v42 = *(a1 + 32);
    v43 = *(v42 + 176);
    *(v42 + 176) = 0;

    v44 = *(a1 + 32);
    v45 = *(v44 + 184);
    *(v44 + 184) = 0;

    v46 = *(a1 + 32);
    v47 = *(v46 + 192);
    *(v46 + 192) = 0;

    v48 = *(a1 + 32);
    v49 = *(v48 + 200);
    *(v48 + 200) = 0;

    v50 = *(a1 + 32);
    v51 = *(v50 + 208);
    *(v50 + 208) = 0;

    v52 = *(a1 + 32);
    v53 = *(v52 + 216);
    *(v52 + 216) = 0;

    v54 = *(a1 + 32);
    v55 = *(v54 + 224);
    *(v54 + 224) = 0;

    v56 = *(a1 + 32);
    v57 = *(v56 + 232);
    *(v56 + 232) = 0;

    v58 = *(a1 + 32);
    v59 = *(v58 + 240);
    *(v58 + 240) = 0;

    v60 = *(a1 + 32);
    v61 = *(v60 + 248);
    *(v60 + 248) = 0;

    v62 = *(a1 + 32);
    v63 = *(v62 + 256);
    *(v62 + 256) = 0;

    v64 = *(a1 + 32);
    v65 = *(v64 + 32);
    if (v65)
    {
      v65[2]();
      v64 = *(a1 + 32);
      v65 = *(v64 + 32);
    }

    *(v64 + 32) = 0;
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CUSystemMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __42__CUSystemMonitor_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  *(v9 + 8) = 1;
  if (v10 == 1)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v11 = "Activating (again)\n";
LABEL_8:
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitor activateWithCompletion:]_block_invoke", 0x1Eu, v11, a5, a6, a7, a8, v19);
    }
  }

  else if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    v11 = "Activating\n";
    goto LABEL_8;
  }

  pthread_mutex_lock(&gCUSystemMonitorLock);
  v12 = gCUSystemMonitor;
  if (!gCUSystemMonitor)
  {
    v13 = objc_alloc_init(CUSystemMonitorImp);
    v14 = gCUSystemMonitor;
    gCUSystemMonitor = v13;

    v12 = gCUSystemMonitor;
  }

  v15 = *(a1 + 32);
  if (v10)
  {
    v16 = *(v15 + 16);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __42__CUSystemMonitor_activateWithCompletion___block_invoke_2;
    v22[3] = &unk_1E73A4FD0;
    v23 = *(a1 + 40);
    [v12 updateWithQueue:v16 completion:v22];
    v17 = v23;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__CUSystemMonitor_activateWithCompletion___block_invoke_3;
    v20[3] = &unk_1E73A49A0;
    v20[4] = v15;
    v21 = *(a1 + 40);
    [v12 addMonitor:v15 completion:v20];
    v17 = v21;
  }

  return pthread_mutex_unlock(&gCUSystemMonitorLock);
}

uint64_t __42__CUSystemMonitor_activateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitor activateWithCompletion:]_block_invoke_2", 0x1Eu, "Activated (again)\n", a5, a6, a7, a8, v11);
  }

  result = *(a1 + 32);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

uint64_t __42__CUSystemMonitor_activateWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitor activateWithCompletion:]_block_invoke_3", 0x1Eu, "Activated\n", a5, a6, a7, a8, v11);
  }

  *(*(a1 + 32) + 9) = 1;
  result = *(a1 + 40);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (CUSystemMonitor)init
{
  v6.receiver = self;
  v6.super_class = CUSystemMonitor;
  v2 = [(CUSystemMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

@end