void *PFUserCreate(char *a1, char *a2, NSObject *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = 0;
  if (PFManagerLogOpen())
  {
    goto LABEL_16;
  }

  if (!a1 || !a2 || !a3)
  {
    PFManagerErrorLog();
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v7 = kPFInternetSharing;
  v8 = kPFAirDrop;
  v9 = kPFServerFirewall;
  v10 = kPFThreadBR;
  if (kPFInternetSharing != a1 && kPFNLC != a1 && kPFVPN != a1 && kPFFTPProxy != a1 && kPFAirDrop != a1 && kPFApplicationFirewall != a1 && kPFServerFirewall != a1 && kPFThreadBR != a1 || (*(v19 + 24) = 1, kPFBase != a2) && (v7 != a1 || kPFPortMapping != a2) && (v7 != a1 || kPFBase_v4 != a2) && (v7 != a1 || kPFBase_v6 != a2) && (v7 != a1 || kPFBase_nat64 != a2) && (v7 != a1 || kPFBase_nat66 != a2) && (v7 != a1 || kPFShared_v4 != a2) && (v7 != a1 || kPFShared_v6 != a2) && (v7 != a1 || kPFHost_v4 != a2) && (v7 != a1 || kPFHost_v6 != a2) && (v7 != a1 || kPFNetworkIsolation != a2) && (v8 != a1 || kPFMDNS != a2) && (v9 != a1 || kPFDefaultFirewall != a2) && (v9 != a1 || kPFAdaptiveFirewall != a2) && (v9 != a1 || kPFCustomFirewall != a2) && (v10 != a1 || kPFThreadBR_nat64 != a2))
  {
    PFManagerErrorLog();
    v6 = 0;
    *(v19 + 24) = 0;
    goto LABEL_16;
  }

  v12 = *MEMORY[0x277CBECE8];
  if (!__pfUserTypeID)
  {
    pthread_once(&__pfUserTypeInit, __PFUserRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (!Instance)
  {
    PFManagerErrorLog();
    goto LABEL_16;
  }

  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 24) = a1;
  *(Instance + 32) = a2;
  *(Instance + 40) = a3;
  dispatch_retain(a3);
  valueCallBacks = *byte_286FBD2A8;
  v14 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], &valueCallBacks);
  v6[6] = v14;
  if (!v14 || (Queue = PFManagerGetQueue()) == 0)
  {
    PFManagerErrorLog();
    CFRelease(v6);
    goto LABEL_15;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __PFUserCreate_block_invoke;
  block[3] = &unk_2799FAC38;
  block[4] = &v18;
  block[5] = v6;
  block[6] = a1;
  block[7] = a2;
  block[8] = Queue;
  dispatch_sync(Queue, block);
  if (!*(v19 + 24))
  {
    v6 = 0;
  }

LABEL_16:
  _Block_object_dispose(&v18, 8);
  return v6;
}

void __PFUserCreate_block_invoke(void *a1)
{
  *(a1[5] + 16) = PFManagerCreate();
  v2 = a1[5];
  v3 = v2[2];
  if (v3)
  {
    *(*(a1[4] + 8) + 24) = PFManagerAddUser(v3, v2);
    if (*(*(a1[4] + 8) + 24))
    {
      v6 = a1[7];
      v7 = a1[8];
      v5 = *(a1 + 5);
      PFManagerDebugLog();
      return;
    }

    PFManagerErrorLog();
    v4 = a1[5];
  }

  else
  {
    PFManagerErrorLog();
    v4 = a1[5];
    *(*(a1[4] + 8) + 24) = 0;
  }

  CFRelease(v4);
}

uint64_t PFUserBeginRules(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -1;
  if (a1 && (Queue = PFManagerGetQueue()) != 0 && (v3 = Queue, (v4 = xpc_array_create(0, 0)) != 0))
  {
    v5 = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __PFUserBeginRules_block_invoke;
    v8[3] = &unk_2799FAC60;
    v8[6] = a1;
    v8[7] = v4;
    v8[4] = v13;
    v8[5] = &v9;
    dispatch_sync(v3, v8);
    xpc_release(v5);
  }

  else
  {
    PFManagerErrorLog();
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
  return v6;
}

void __PFUserBeginRules_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%lld", __pfDictIdentifier);
    if (v2)
    {
      v3 = v2;
      xpc_retain(*(a1 + 56));
      CFDictionaryAddValue(*(*(a1 + 48) + 48), v3, *(a1 + 56));
      v4 = __pfDictIdentifier;
      *(*(*(a1 + 40) + 8) + 24) = __pfDictIdentifier;
      __pfDictIdentifier = v4 + 1;

      CFRelease(v3);
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

uint64_t PFUserAddRule(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a1 && a3 && MEMORY[0x25F8A7FD0](a3) == MEMORY[0x277D86468] && (a2 & 0x8000000000000000) == 0 && (Queue = PFManagerGetQueue()) != 0 && (v9 = Queue, (v10 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v11 = v10;
    v12 = PFCheckRule(a3, v10);
    *(v15 + 24) = v12;
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __PFUserAddRule_block_invoke;
      block[3] = &unk_2799FAC88;
      block[4] = &v14;
      block[5] = a1;
      block[6] = a2;
      block[7] = v11;
      dispatch_sync(v9, block);
    }

    else
    {
      PFManagerErrorLog();
    }

    xpc_release(v11);
  }

  else
  {
    PFManagerErrorLog();
  }

  v6 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

void __PFUserAddRule_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 40));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    TransArray = __PFUserGetTransArray(*(a1 + 40), *(a1 + 48));
    if (TransArray)
    {
      v3 = *(a1 + 56);

      xpc_array_append_value(TransArray, v3);
    }

    else
    {
      v4 = *(a1 + 48);
      PFManagerErrorLog();
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

const void *__PFUserGetTransArray(uint64_t a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%lld", a2);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(*(a1 + 48), v3);
    CFRelease(v4);
    return Value;
  }

  else
  {
    PFManagerErrorLog();
    return 0;
  }
}

uint64_t PFUserCommitRules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserCommitRules_block_invoke;
    block[3] = &unk_2799FACD8;
    block[6] = a1;
    block[7] = a2;
    block[4] = a4;
    block[5] = &v11;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __PFUserCommitRules_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    TransArray = __PFUserGetTransArray(*(a1 + 48), *(a1 + 56));
    if (TransArray)
    {
      v3 = TransArray;
      v11 = *(a1 + 48);
      PFManagerInfoLog();
      v4 = *(a1 + 48);
      v5 = *(v4 + 24);
      v6 = *(v4 + 32);
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = v13;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 0x40000000;
        v13[2] = __PFUserCommitRules_block_invoke_2;
        v13[3] = &unk_2799FACB0;
        v13[4] = v7;
        v13[5] = v4;
      }

      else
      {
        v8 = 0;
      }

      *(*(*(a1 + 40) + 8) + 24) = PFManagerSendMessage(v3, v5, v6, 1003, 0xFFFFFFFFuLL, v8);
      if (!*(a1 + 32) && *(*(*(a1 + 40) + 8) + 24) == 1)
      {
        v10 = PFXPCGetResponse();
        xpc_release(v10);
      }

      result = __PFUserRemoveTransArray(*(a1 + 48), *(a1 + 56));
      if (*(a1 + 32))
      {
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          return CFRetain(*(a1 + 48));
        }
      }
    }

    else
    {
      v12 = *(a1 + 56);
      result = PFManagerErrorLog();
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

void __PFUserCommitRules_block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  PFManagerInfoLog();
  v5 = v3[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCCommitRulesResponseHandler_block_invoke;
  block[3] = &unk_2799FB1A0;
  block[4] = v4;
  v7 = a2;
  dispatch_async(v5, block);
  CFRelease(v3);
}

BOOL __PFUserRemoveTransArray(uint64_t a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%lld", a2);
  if (v3)
  {
    CFDictionaryRemoveValue(*(a1 + 48), v3);
    CFRelease(v3);
  }

  else
  {
    PFManagerErrorLog();
  }

  return v3 != 0;
}

uint64_t PFUserClearRules(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserClearRules_block_invoke;
    block[3] = &unk_2799FAD00;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __PFUserClearRules_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 40));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (__PFUserGetTransArray(*(a1 + 40), *(a1 + 48)))
    {
      result = __PFUserRemoveTransArray(*(a1 + 40), *(a1 + 48));
      *(*(*(a1 + 32) + 8) + 24) = result;
    }

    else
    {
      v3 = *(a1 + 48);
      result = PFManagerErrorLog();
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

uint64_t PFUserDeleteRules(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a1 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserDeleteRules_block_invoke;
    block[3] = &unk_2799FAD50;
    block[5] = &v9;
    block[6] = a1;
    block[4] = a3;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __PFUserDeleteRules_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v9 = *(a1 + 48);
    PFManagerInfoLog();
    v2 = *(a1 + 48);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v10;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = __PFUserDeleteRules_block_invoke_2;
      v10[3] = &unk_2799FAD28;
      v10[4] = v5;
      v10[5] = v2;
    }

    else
    {
      v6 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = PFManagerSendMessage(0, v3, v4, 1004, 0xFFFFFFFFuLL, v6);
    v7 = *(a1 + 40);
    if (*(a1 + 32))
    {
      goto LABEL_9;
    }

    if (*(*(v7 + 8) + 24) == 1)
    {
      v8 = PFXPCGetResponse();
      xpc_release(v8);
      if (*(a1 + 32))
      {
        v7 = *(a1 + 40);
LABEL_9:
        if (*(*(v7 + 8) + 24) == 1)
        {
          CFRetain(*(a1 + 48));
        }
      }
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

void __PFUserDeleteRules_block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  PFManagerInfoLog();
  v5 = v3[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCDeleteRulesResponseHandler_block_invoke;
  block[3] = &unk_2799FB1C8;
  block[4] = v4;
  v7 = a2;
  dispatch_async(v5, block);
  CFRelease(v3);
}

uint64_t PFUserRelease(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserRelease_block_invoke;
    block[3] = &unk_2799FAD78;
    block[5] = &v8;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __PFUserRelease_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = _Block_copy(v2);
      v4 = *(a1 + 48);
      v4[7] = v3;
    }

    else
    {
      v4 = *(a1 + 48);
    }

    v5 = PFManagerReleaseUser(v4[2], v4);
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v5;

    CFRelease(v6);
  }

  else
  {

    PFManagerErrorLog();
  }
}

uint64_t PFUserInsertRule(uint64_t a1, void *a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (a1 && a2 && MEMORY[0x25F8A7FD0](a2) == MEMORY[0x277D86468] && a5 && (v11 = xpc_dictionary_create(0, 0, 0)) != 0)
  {
    v12 = v11;
    v13 = PFCheckRule(a2, v11);
    *(v18 + 24) = v13;
    if ((v13 & 1) != 0 && (Queue = PFManagerGetQueue()) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __PFUserInsertRule_block_invoke;
      block[3] = &unk_2799FADC8;
      block[6] = a1;
      block[7] = v12;
      v16 = a3;
      block[4] = a5;
      block[5] = &v17;
      dispatch_sync(Queue, block);
    }

    else
    {
      PFManagerErrorLog();
    }

    xpc_release(v12);
  }

  else
  {
    PFManagerErrorLog();
  }

  v9 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v9;
}

CFTypeRef __PFUserInsertRule_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    PFManagerInfoLog();
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    v6 = *(a1 + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __PFUserInsertRule_block_invoke_2;
    v10[3] = &unk_2799FADA0;
    v10[4] = *(a1 + 32);
    v10[5] = v3;
    result = PFManagerSendMessage(v2, v4, v5, 1001, v6, v10);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      return CFRetain(*(a1 + 48));
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

void __PFUserInsertRule_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  PFManagerInfoLog();
  if (a3)
  {
    xpc_retain(a3);
  }

  v7 = v5[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCInsertRuleResponseHandler_block_invoke;
  block[3] = &unk_2799FB1F0;
  v9 = a2;
  block[4] = v6;
  block[5] = a3;
  dispatch_async(v7, block);
  CFRelease(v5);
}

uint64_t PFUserInsertRule_S(uint64_t a1, void *a2, __int16 a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a1 && a2 && MEMORY[0x25F8A7FD0](a2) == MEMORY[0x277D86468] && (v8 = xpc_dictionary_create(0, 0, 0)) != 0)
  {
    v9 = v8;
    v10 = PFCheckRule(a2, v8);
    *(v19 + 24) = v10;
    if ((v10 & 1) != 0 && (Queue = PFManagerGetQueue()) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __PFUserInsertRule_S_block_invoke;
      block[3] = &unk_2799FADF0;
      block[6] = a1;
      block[7] = v9;
      v13 = a3;
      block[4] = &v18;
      block[5] = &v14;
      dispatch_sync(Queue, block);
    }

    else
    {
      PFManagerErrorLog();
    }

    xpc_release(v9);
  }

  else
  {
    PFManagerErrorLog();
  }

  v6 = v15[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

uint64_t PFUserDeleteRule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1 && (Queue = PFManagerGetQueue()) != 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __PFUserDeleteRule_block_invoke;
    v9[3] = &unk_2799FAE40;
    v9[6] = a1;
    v9[7] = a2;
    v9[4] = a3;
    v9[5] = &v10;
    dispatch_sync(Queue, v9);
  }

  else
  {
    PFManagerErrorLog();
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __PFUserDeleteRule_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    PFManagerInfoLog();
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = __PFUserDeleteRule_block_invoke_2;
      v12[3] = &unk_2799FAE18;
      v12[4] = v6;
      v12[5] = v3;
    }

    else
    {
      v7 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = PFManagerSendMessage(0, v4, v5, 1002, v2, v7);
    v8 = *(a1 + 40);
    if (*(a1 + 32))
    {
      goto LABEL_9;
    }

    if (*(*(v8 + 8) + 24) == 1)
    {
      v9 = PFXPCGetResponse();
      xpc_release(v9);
      if (*(a1 + 32))
      {
        v8 = *(a1 + 40);
LABEL_9:
        if (*(*(v8 + 8) + 24) == 1)
        {
          CFRetain(*(a1 + 48));
        }
      }
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

void __PFUserDeleteRule_block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  PFManagerInfoLog();
  v5 = v3[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCDeleteRuleResponseHandler_block_invoke;
  block[3] = &unk_2799FB218;
  block[4] = v4;
  v7 = a2;
  dispatch_async(v5, block);
  CFRelease(v3);
}

uint64_t PFTableCreate(uint64_t a1, const char *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (!a1 || !a2 || (Queue = PFManagerGetQueue()) == 0)
  {
    PFManagerErrorLog();
    goto LABEL_9;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __PFTableCreate_block_invoke;
  v8[3] = &unk_2799FAE68;
  v8[4] = &v9;
  v8[5] = a1;
  dispatch_sync(Queue, v8);
  if (*(v10 + 24) != 1)
  {
LABEL_9:
    Instance = 0;
    goto LABEL_10;
  }

  v5 = *MEMORY[0x277CBECE8];
  if (!__pfTableTypeID)
  {
    pthread_once(&__pfTableTypeInit, __PFTableRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a1;
  strlcpy((Instance + 24), a2, 0x20uLL);
LABEL_10:
  _Block_object_dispose(&v9, 8);
  return Instance;
}

CFTypeRef __PFTableCreate_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 40));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = *(a1 + 40);

    return CFRetain(v2);
  }

  else
  {

    return PFManagerErrorLog();
  }
}

uint64_t PFTableBegin(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -1;
  if (a1 && (Queue = PFManagerGetQueue()) != 0 && (v3 = Queue, (v4 = xpc_array_create(0, 0)) != 0))
  {
    v5 = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __PFTableBegin_block_invoke;
    v8[3] = &unk_2799FAE90;
    v8[6] = a1;
    v8[7] = v4;
    v8[4] = v13;
    v8[5] = &v9;
    dispatch_sync(v3, v8);
    xpc_release(v5);
  }

  else
  {
    PFManagerErrorLog();
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
  return v6;
}

void __PFTableBegin_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(*(a1 + 48) + 16));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%lld", __pfDictIdentifier);
    if (v2)
    {
      v3 = v2;
      xpc_retain(*(a1 + 56));
      CFDictionaryAddValue(*(*(*(a1 + 48) + 16) + 48), v3, *(a1 + 56));
      v4 = __pfDictIdentifier;
      *(*(*(a1 + 40) + 8) + 24) = __pfDictIdentifier;
      __pfDictIdentifier = v4 + 1;

      CFRelease(v3);
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

uint64_t PFTableAddAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1 && a3 && MEMORY[0x25F8A7FD0](a3) == MEMORY[0x277D864C0] && (a2 & 0x8000000000000000) == 0 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFTableAddAddress_block_invoke;
    block[3] = &unk_2799FAEB8;
    block[4] = &v10;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __PFTableAddAddress_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = PFManagerCheckUserExists(*(a1[5] + 16));
  if (*(*(a1[4] + 8) + 24))
  {
    TransArray = __PFUserGetTransArray(*(a1[5] + 16), a1[6]);
    if (TransArray)
    {
      v3 = a1[7];

      xpc_array_append_value(TransArray, v3);
    }

    else
    {
      v4 = a1[6];
      PFManagerErrorLog();
      *(*(a1[4] + 8) + 24) = 0;
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

uint64_t PFTableCommit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (!a1)
  {
    PFManagerErrorLog();
    goto LABEL_13;
  }

  if (a2 < 0 || (v7 = xpc_dictionary_create(0, 0, 0)) == 0)
  {
    PFManagerErrorLog();
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = v7;
  Queue = PFManagerGetQueue();
  if (Queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFTableCommit_block_invoke;
    block[3] = &unk_2799FAF08;
    block[6] = a1;
    block[7] = a2;
    block[8] = v8;
    block[4] = a4;
    block[5] = &v14;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  xpc_release(v8);
  if (!a4)
  {
LABEL_11:
    v10 = *(a1 + 16);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 16) = 0;
    }
  }

LABEL_13:
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t __PFTableCommit_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(*(a1 + 48) + 16));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    TransArray = __PFUserGetTransArray(*(*(a1 + 48) + 16), *(a1 + 56));
    if (TransArray)
    {
      v3 = TransArray;
      v13 = *(a1 + 48);
      PFManagerInfoLog();
      xpc_dictionary_set_value(*(a1 + 64), pfXPCKeyTableAddressArray, v3);
      xpc_dictionary_set_string(*(a1 + 64), pfXPCKeyTableName, (*(a1 + 48) + 24));
      v4 = *(a1 + 64);
      v5 = *(a1 + 48);
      v6 = *(v5 + 16);
      v7 = *(v6 + 24);
      v8 = *(v6 + 32);
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 0x40000000;
        v15[2] = __PFTableCommit_block_invoke_2;
        v15[3] = &unk_2799FAEE0;
        v15[4] = v9;
        v15[5] = v5;
      }

      else
      {
        v10 = 0;
      }

      *(*(*(a1 + 40) + 8) + 24) = PFManagerSendMessage(v4, v7, v8, 1008, 0xFFFFFFFFuLL, v10);
      if (!*(a1 + 32) && *(*(*(a1 + 40) + 8) + 24) == 1)
      {
        v12 = PFXPCGetResponse();
        xpc_release(v12);
      }

      result = __PFUserRemoveTransArray(*(*(a1 + 48) + 16), *(a1 + 56));
      if (*(a1 + 32))
      {
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          return CFRetain(*(a1 + 48));
        }
      }
    }

    else
    {
      v14 = *(a1 + 56);
      result = PFManagerErrorLog();
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

void __PFTableCommit_block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  PFManagerInfoLog();
  v5 = *(v3[2] + 5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCCommitTableResponseHandler_block_invoke;
  block[3] = &unk_2799FB240;
  block[4] = v4;
  v7 = a2;
  dispatch_async(v5, block);
  CFRelease(v3[2]);
  v3[2] = 0;
  CFRelease(v3);
}

uint64_t PFTableClear(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFTableClear_block_invoke;
    block[3] = &unk_2799FAF30;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __PFTableClear_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = PFManagerCheckUserExists(*(a1[5] + 16));
  if (*(*(a1[4] + 8) + 24))
  {
    if (__PFUserGetTransArray(*(a1[5] + 16), a1[6]))
    {
      result = __PFUserRemoveTransArray(*(a1[5] + 16), a1[6]);
      *(*(a1[4] + 8) + 24) = result;
    }

    else
    {
      v3 = a1[6];
      result = PFManagerErrorLog();
      *(*(a1[4] + 8) + 24) = 0;
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

BOOL PFTableDelete(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  if (!a1)
  {
    PFManagerErrorLog();
    goto LABEL_10;
  }

  Queue = PFManagerGetQueue();
  if (Queue && (v5 = Queue, (v6 = xpc_string_create((a1 + 24))) != 0))
  {
    v7 = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __PFTableDelete_block_invoke;
    v10[3] = &unk_2799FAF80;
    v10[6] = a1;
    v10[7] = v6;
    v10[4] = a2;
    v10[5] = v11;
    dispatch_sync(v5, v10);
    xpc_release(v7);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    PFManagerErrorLog();
    if (a2)
    {
      goto LABEL_10;
    }
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

LABEL_10:
  _Block_object_dispose(v11, 8);
  return a1 != 0;
}

void __PFTableDelete_block_invoke(uint64_t a1)
{
  v11 = *(a1 + 48) + 24;
  PFManagerInfoLog();
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(v3 + 16);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __PFTableDelete_block_invoke_2;
    v12[3] = &unk_2799FAF58;
    v12[4] = v7;
    v12[5] = v3;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = PFManagerSendMessage(v2, v5, v6, 1009, 0xFFFFFFFFuLL, v8);
  v9 = *(a1 + 40);
  if (*(a1 + 32))
  {
    goto LABEL_5;
  }

  if (*(*(v9 + 8) + 24) == 1)
  {
    v10 = PFXPCGetResponse();
    xpc_release(v10);
    if (*(a1 + 32))
    {
      v9 = *(a1 + 40);
LABEL_5:
      if (*(*(v9 + 8) + 24) == 1)
      {
        CFRetain(*(a1 + 48));
      }
    }
  }
}

void __PFTableDelete_block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  PFManagerInfoLog();
  v5 = *(v3[2] + 5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCDeleteTableResponseHandler_block_invoke;
  block[3] = &unk_2799FB268;
  block[4] = v4;
  v7 = a2;
  dispatch_async(v5, block);
  CFRelease(v3[2]);
  v3[2] = 0;
  CFRelease(v3);
}

uint64_t PFUserGetRules(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && a2 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserGetRules_block_invoke;
    block[3] = &unk_2799FAFD0;
    block[5] = &v8;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

CFTypeRef __PFUserGetRules_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = *(a1 + 48);
    PFManagerInfoLog();
    v2 = *(a1 + 48);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __PFUserGetRules_block_invoke_2;
    v7[3] = &unk_2799FAFA8;
    v7[4] = *(a1 + 32);
    v7[5] = v2;
    result = PFManagerSendMessage(0, v3, v4, 1005, 0xFFFFFFFFuLL, v7);
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      return CFRetain(*(a1 + 48));
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

void __PFUserGetRules_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  PFManagerInfoLog();
  if (a3)
  {
    xpc_retain(a3);
  }

  v7 = v5[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCGetRulesResponseHandler_block_invoke;
  block[3] = &unk_2799FB290;
  v9 = a2;
  block[4] = v6;
  block[5] = a3;
  dispatch_async(v7, block);
  CFRelease(v5);
}

uint64_t PFUserCopyRules_S(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a1 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserCopyRules_S_block_invoke;
    block[3] = &unk_2799FAFF8;
    block[4] = v10;
    block[5] = &v6;
    block[6] = a1;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v3;
}

uint64_t PFUserClearStates(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && (Queue = PFManagerGetQueue()) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __PFUserClearStates_block_invoke;
    block[3] = &unk_2799FB048;
    block[5] = &v8;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(Queue, block);
  }

  else
  {
    PFManagerErrorLog();
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __PFUserClearStates_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 48));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v9 = *(a1 + 48);
    PFManagerInfoLog();
    v2 = *(a1 + 48);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v10;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = __PFUserClearStates_block_invoke_2;
      v10[3] = &unk_2799FB020;
      v10[4] = v5;
      v10[5] = v2;
    }

    else
    {
      v6 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = PFManagerSendMessage(0, v3, v4, 1007, 0xFFFFFFFFuLL, v6);
    v7 = *(a1 + 40);
    if (*(a1 + 32))
    {
      goto LABEL_9;
    }

    if (*(*(v7 + 8) + 24) == 1)
    {
      v8 = PFXPCGetResponse();
      xpc_release(v8);
      if (*(a1 + 32))
      {
        v7 = *(a1 + 40);
LABEL_9:
        if (*(*(v7 + 8) + 24) == 1)
        {
          CFRetain(*(a1 + 48));
        }
      }
    }
  }

  else
  {

    PFManagerErrorLog();
  }
}

void __PFUserClearStates_block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  PFManagerInfoLog();
  v5 = v3[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCClearStatesResponseHandler_block_invoke;
  block[3] = &unk_2799FB2B8;
  block[4] = v4;
  v7 = a2;
  dispatch_async(v5, block);
  CFRelease(v3);
}

uint64_t PFUserNATLook(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1 && a3 && a2 && (Queue = PFManagerGetQueue()) != 0 && (v6 = Queue, (v7 = xpc_dictionary_create(0, 0, 0)) != 0) && (v8 = v7, v9 = PFCheckNATRule(a2, v7), (*(v14 + 24) = v9) != 0))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __PFUserNATLook_block_invoke;
    v12[3] = &unk_2799FB090;
    v12[4] = &v13;
    v12[5] = a1;
    v12[6] = v8;
    v12[7] = a2;
    dispatch_sync(v6, v12);
  }

  else
  {
    PFManagerErrorLog();
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

CFTypeRef __PFUserNATLook_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = PFManagerCheckUserExists(*(a1 + 40));
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = *(a1 + 40);
    PFManagerInfoLog();
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __PFUserNATLook_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_67;
    v8[4] = *(a1 + 56);
    v8[5] = v3;
    result = PFManagerSendMessage(v2, v4, v5, 1006, 0xFFFFFFFFuLL, v8);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      return CFRetain(*(a1 + 40));
    }
  }

  else
  {

    return PFManagerErrorLog();
  }

  return result;
}

void __PFUserNATLook_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  PFManagerInfoLog();
  if (a3)
  {
    xpc_retain(a3);
  }

  v7 = v5[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____PFUserXPCNatLookResponseHandler_block_invoke;
  block[3] = &unk_2799FB2E0;
  v9 = a2;
  block[4] = v6;
  block[5] = a3;
  dispatch_async(v7, block);
  CFRelease(v5);
}

uint64_t PFUserNATLook_S(uint64_t a1, void *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (a1 && a2 && (Queue = PFManagerGetQueue()) != 0 && (v5 = Queue, (v6 = xpc_dictionary_create(0, 0, 0)) != 0) && (v7 = v6, v8 = PFCheckNATRule(a2, v6), (*(v17 + 24) = v8) != 0))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __PFUserNATLook_S_block_invoke;
    v11[3] = &unk_2799FB0B8;
    v11[6] = a1;
    v11[7] = v7;
    v11[4] = &v16;
    v11[5] = &v12;
    dispatch_sync(v5, v11);
  }

  else
  {
    PFManagerErrorLog();
  }

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t PFQueryGatewayAddrAndPortForDescriptor(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a2 && PFManagerCreate() && !PFManagerLogOpen())
  {
    if (a1 && (~*(a1 + 8) & 0x14) == 0 && (Queue = PFManagerGetQueue()) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __PFQueryGatewayAddrAndPortForDescriptor_block_invoke;
      block[3] = &unk_2799FB0E0;
      block[4] = &v8;
      block[5] = a1;
      block[6] = a2;
      dispatch_sync(Queue, block);
    }

    else
    {
      PFManagerErrorLog();
    }
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __PFQueryGatewayAddrAndPortForDescriptor_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v4, pfXPCLANAddress, (v2 + 24), 4uLL);
  xpc_dictionary_set_uint64(v4, pfXPCLANPort, *(v2 + 44));
  v5 = *(v2 + 8);
  if ((v5 & 8) != 0)
  {
    xpc_dictionary_set_data(v4, pfXPCEXTLANAddress, (v2 + 40), 4uLL);
    v5 = *(v2 + 8);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v2 + 8) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  xpc_dictionary_set_uint64(v4, pfXPCEXTLANPort, *(v2 + 46));
  if ((*(v2 + 8) & 2) != 0)
  {
LABEL_4:
    xpc_dictionary_set_uint64(v4, pfXPCIPProto, *(v2 + 10));
  }

LABEL_5:
  PFManagerInfoLog();
  v6 = PFManagerSendMessage(v4, 0, 0, 3001, 0, 0);
  PFManagerDebugLog();
  if (!v6)
  {
    PFManagerNoticeLog();
    v7 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = PFXPCGetResponse();
  length = 0;
  data = xpc_dictionary_get_data(v7, pfXPCResponseV4GatewayAddress, &length);
  if (data)
  {
    if (length == 4)
    {
      *v3 = *data;
      uint64 = xpc_dictionary_get_uint64(v7, pfXPCResponseGatewayPort);
      if (uint64)
      {
        *(v3 + 4) = uint64;
        if (!v4)
        {
          goto LABEL_16;
        }

LABEL_15:
        xpc_release(v4);
        goto LABEL_16;
      }
    }
  }

  PFManagerErrorLog();
  if (v4)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v7)
  {
    xpc_release(v7);
  }

  *(*(a1[4] + 8) + 24) = v6;
}

uint64_t PFFindStatesByDescriptor(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = PFManagerCreate();
  if (v6 && !PFManagerLogOpen())
  {
    if (a1)
    {
      if (MEMORY[0x25F8A7FD0](a1) == MEMORY[0x277D86468])
      {
        Queue = PFManagerGetQueue();
        if (Queue)
        {
          v9 = Queue;
          dispatch_retain(a1);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __PFFindStatesByDescriptor_block_invoke;
          block[3] = &unk_2799FB158;
          block[5] = a1;
          block[6] = a2;
          block[4] = a3;
          dispatch_async(v9, block);
          return 1;
        }
      }
    }

    PFManagerErrorLog();
  }

  PFManagerRelease(v6);
  return 0;
}

void __PFFindStatesByDescriptor_block_invoke(uint64_t a1)
{
  v2 = PFManagerCreate();
  if (v2)
  {
    v3 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __PFFindStatesByDescriptor_block_invoke_2;
    v6[3] = &unk_2799FB130;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6[4] = *(a1 + 32);
    v6[5] = v5;
    PFManagerSendMessage(v4, 0, 0, 3000, 0, v6);
    PFManagerRelease(v3);
  }

  dispatch_release(*(a1 + 40));
}

void __PFFindStatesByDescriptor_block_invoke_2(uint64_t a1, char a2, xpc_object_t object)
{
  if (object)
  {
    xpc_retain(object);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __PFFindStatesByDescriptor_block_invoke_3;
  block[3] = &unk_2799FB108;
  v8 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = object;
  dispatch_async(v6, block);
}

uint64_t __PFFindStatesByDescriptor_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (MEMORY[0x25F8A7FD0](v2) != MEMORY[0x277D86468])
  {
    v3 = MEMORY[0x25F8A7FD0](v2);
    xpc_type_get_name(v3);
LABEL_5:
    PFManagerErrorLog();
    goto LABEL_6;
  }

  value = xpc_dictionary_get_value(v2, pfXPCResponseArray);
  if (!value)
  {
    goto LABEL_5;
  }

  v5 = value;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86440])
  {
    goto LABEL_5;
  }

  xpc_retain(v5);
  v8 = *(a1 + 48);
LABEL_6:
  xpc_release(*(a1 + 40));
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

uint64_t PFStateQueryAppendTrafficDescriptor(xpc_object_t *a1, const void *a2, const unsigned __int8 *a3)
{
  if (*a1)
  {
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = xpc_dictionary_create(0, 0, 0);
    PFManagerInfoLog();
  }

  value = xpc_dictionary_get_value(*a1, pfXPCTrafficDescriptors);
  if (value)
  {
    empty = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86440])
    {
LABEL_7:
      PFManagerErrorLog();
      return 0;
    }
  }

  else
  {
    empty = xpc_array_create_empty();
    xpc_dictionary_set_value(*a1, pfXPCTrafficDescriptors, empty);
    PFManagerInfoLog();
    xpc_release(empty);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v9, pfXPCTrafficDescriptor, a2, 0x30uLL);
  xpc_dictionary_set_uuid(v9, pfXPCTrafficDescriptorId, a3);
  xpc_array_append_value(empty, v9);
  xpc_release(v9);
  return 1;
}

uint64_t PFGetDescriptorStateDetails(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_5;
  }

  if (a3 != 40)
  {
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a1, pfXPCResponseDescriptorId);
  if (!value)
  {
    goto LABEL_5;
  }

  v7 = value;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864D0])
  {
    goto LABEL_5;
  }

  bytes = xpc_uuid_get_bytes(v7);
  uuid_copy((a2 + 16), bytes);
  v10 = xpc_dictionary_get_value(a1, pfXPCResponseStatesFound);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86448])
  {
    goto LABEL_5;
  }

  *(a2 + 32) = xpc_BOOL_get_value(v11);
  v12 = xpc_dictionary_get_value(a1, pfXPCResponsePacketCountIn);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v12;
  v14 = MEMORY[0x25F8A7FD0]();
  v15 = MEMORY[0x277D864C8];
  if (v14 == MEMORY[0x277D864C8] && (*a2 = xpc_uint64_get_value(v13), (v16 = xpc_dictionary_get_value(a1, pfXPCResponsePacketCountOut)) != 0) && (v17 = v16, MEMORY[0x25F8A7FD0]() == v15))
  {
    *(a2 + 8) = xpc_uint64_get_value(v17);
    return 1;
  }

  else
  {
LABEL_5:
    PFManagerErrorLog();
    return 0;
  }
}

uint64_t __PFUserRegister()
{
  result = _CFRuntimeRegisterClass();
  __pfUserTypeID = result;
  return result;
}

uint64_t __PFUserRelease(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ____PFUserRelease_block_invoke;
    block[3] = &__block_descriptor_tmp_90;
    block[4] = a1;
    dispatch_async(v2, block);
    _Block_release(*(a1 + 56));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PFManagerRelease(v5);
    *(a1 + 16) = 0;
  }

  return PFManagerInfoLog();
}

uint64_t __PFTableRegister()
{
  result = _CFRuntimeRegisterClass();
  __pfTableTypeID = result;
  return result;
}

void __PFTableRelease(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t PFManagerLogOpen()
{
  v0 = __pfLogError;
  if (!__pfLog && (__pfLogError & 1) == 0)
  {
    do
    {
      pthread_once(&__pfLogInit, __PFManagerLogCreate);
      v0 = __pfLogError;
      if (__pfLog)
      {
        v1 = 0;
      }

      else
      {
        v1 = __pfLogError == 0;
      }
    }

    while (v1);
  }

  if (v0)
  {
    return 22;
  }

  else
  {
    return 0;
  }
}

void __PFManagerLogCreate()
{
  __pfLog = os_log_create(pfLogSubsystem, "framework");
  if (!__pfLog)
  {
    __pfLogError = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __PFManagerLogCreate_cold_1();
    }
  }
}

uint64_t PFManagerGetQueue()
{
  result = __pfQueue;
  if (!__pfQueue && (__pfQueueError & 1) == 0)
  {
    do
    {
      pthread_once(&__pfQueueInit, __PFManagerQueueCreate);
      result = __pfQueue;
      if (__pfQueue)
      {
        break;
      }

      sleep(1u);
      result = __pfQueue;
    }

    while (!__pfQueue && __pfQueueError == 0);
  }

  return result;
}

void __PFManagerQueueCreate()
{
  v3 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x2AuLL, "com.apple.framework.pf.%p", &__pfManager);
  __str[41] = 0;
  __pfQueue = dispatch_queue_create(__str, 0);
  if (!__pfQueue)
  {
    goto LABEL_4;
  }

  snprintf(label, 0x2EuLL, "com.apple.framework.pf.xpc.%p", &__pfManager);
  label[45] = 0;
  __pfXpcQueue = dispatch_queue_create(label, 0);
  if (!__pfXpcQueue)
  {
    dispatch_release(__pfQueue);
    __pfQueue = 0;
LABEL_4:
    __pfQueueError = 1;
  }

  v0 = *MEMORY[0x277D85DE8];
}

CFTypeRef PFManagerCreate()
{
  v0 = __pfManager;
  if (__pfManager)
  {

    return CFRetain(v0);
  }

  else
  {
    v2 = *MEMORY[0x277CBECE8];
    if (!__pfManagerTypeID)
    {
      pthread_once(&__pfManagerTypeInit, __PFManagerRegister);
    }

    Instance = _CFRuntimeCreateInstance();
    __pfManager = Instance;
    if (Instance)
    {
      *(Instance + 16) = 0;
      Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
      result = __pfManager;
      *(__pfManager + 16) = Mutable;
      if (!Mutable)
      {
        PFManagerErrorLog();
        CFRelease(__pfManager);
        result = 0;
        __pfManager = 0;
      }
    }

    else
    {
      PFManagerErrorLog();
      return __pfManager;
    }
  }

  return result;
}

BOOL PFManagerCheckUserExists(const void *a1)
{
  result = 0;
  if (a1 && __pfManager)
  {
    if (CFArrayGetCount(*(__pfManager + 16)) < 1)
    {
      return 0;
    }

    else
    {
      v3 = *(__pfManager + 16);
      v4.length = CFArrayGetCount(v3);
      v4.location = 0;
      return CFArrayContainsValue(v3, v4, a1) != 0;
    }
  }

  return result;
}

uint64_t PFManagerSendMessage(void *a1, const char *a2, const char *a3, int a4, uint64_t a5, uint64_t a6)
{
  if (__pfManager)
  {
    return PFXPCSetupAndSend(__pfQueue, __pfXpcQueue, a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t __PFManagerRegister()
{
  result = _CFRuntimeRegisterClass();
  __pfManagerTypeID = result;
  return result;
}

uint64_t __PFManagerRelease(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 16)))
  {
    __PFManagerRelease_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  PFXPCCleanup();
  result = PFManagerDebugLog();
  __pfManager = 0;
  return result;
}

uint64_t PFCheckRule(void *a1, void *a2)
{
  v57 = -1;
  value = xpc_dictionary_get_value(a1, kPFAction);
  if (!value)
  {
    goto LABEL_3;
  }

  v5 = value;
  v6 = MEMORY[0x25F8A7FD0]();
  v7 = MEMORY[0x277D864C8];
  if (v6 != MEMORY[0x277D864C8])
  {
    goto LABEL_3;
  }

  v9 = xpc_uint64_get_value(v5);
  v10 = v9;
  if (v9 > 0xE || ((1 << v9) & 0x7B3F) == 0)
  {
    goto LABEL_3;
  }

  xpc_dictionary_set_uint64(a2, kPFAction, v9);
  if (v10 > 0xE || ((1 << v10) & 0x7B3F) == 0)
  {
    return 0;
  }

  uint64 = xpc_dictionary_get_uint64(a1, kPFAction);
  v14 = xpc_dictionary_get_value(a1, kPFDirection);
  if (v14)
  {
    result = __PFDirCheck(v14, a2);
    if (!result)
    {
      return result;
    }
  }

  v15 = xpc_dictionary_get_value(a1, kPFProtocol);
  if (v15)
  {
    result = __PFProtocolCheck(v15, a2);
    if (!result)
    {
      return result;
    }
  }

  v16 = xpc_dictionary_get_value(a1, kPFFamily);
  if (v16)
  {
    result = __PFFamilyCheck(v16, a2, &v57);
    if (!result)
    {
      return result;
    }
  }

  v17 = xpc_dictionary_get_value(a1, kPFReturnOptions);
  if (v17)
  {
    v18 = v17;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
    {
      goto LABEL_3;
    }

    v19 = xpc_dictionary_get_value(v18, kPFSubReturnType);
    if (!v19)
    {
      goto LABEL_3;
    }

    v20 = v19;
    if (MEMORY[0x25F8A7FD0]() != v7)
    {
      goto LABEL_3;
    }

    v21 = xpc_uint64_get_value(v20);
    v22 = v21;
    if (v21 >= 9)
    {
      goto LABEL_3;
    }

    xpc_dictionary_set_uint64(a2, kPFSubReturnType, v21);
    v23 = xpc_dictionary_get_value(v18, kPFSubReturnTTL);
    if (v23)
    {
      v24 = v23;
      if (MEMORY[0x25F8A7FD0]() != v7)
      {
        goto LABEL_3;
      }

      if (v22 != 1)
      {
        goto LABEL_3;
      }

      v25 = xpc_uint64_get_value(v24);
      if (v25 > 0xFF)
      {
        goto LABEL_3;
      }

      xpc_dictionary_set_uint64(a2, kPFSubReturnTTL, v25);
    }

    v26 = xpc_dictionary_get_value(v18, kPFSubReturnICMPCode);
    if (v26)
    {
      v27 = v26;
      if (MEMORY[0x25F8A7FD0]() != v7)
      {
        goto LABEL_3;
      }

      if (v22 != 4)
      {
        goto LABEL_3;
      }

      v28 = xpc_uint64_get_value(v27);
      if (v28 > 0xFF)
      {
        goto LABEL_3;
      }

      xpc_dictionary_set_uint64(a2, kPFSubReturnICMPCode, v28);
    }

    v29 = xpc_dictionary_get_value(v18, kPFSubReturnICMP6Code);
    if (v29)
    {
      v30 = v29;
      if (MEMORY[0x25F8A7FD0]() != v7)
      {
        goto LABEL_3;
      }

      if (v22 != 4)
      {
        goto LABEL_3;
      }

      v31 = xpc_uint64_get_value(v30);
      if (v31 > 0xFF)
      {
        goto LABEL_3;
      }

      xpc_dictionary_set_uint64(a2, kPFSubReturnICMP6Code, v31);
    }
  }

  v32 = xpc_dictionary_get_value(a1, kPFQuick);
  if (v32)
  {
    v33 = v32;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86448])
    {
      goto LABEL_3;
    }

    v34 = kPFQuick;
    v35 = xpc_BOOL_get_value(v33);
    xpc_dictionary_set_BOOL(a2, v34, v35);
  }

  v36 = xpc_dictionary_get_value(a1, kPFInterface);
  if (!v36)
  {
    goto LABEL_56;
  }

  v37 = v36;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0] || (string_ptr = xpc_string_get_string_ptr(v37), (__PFInterfaceExists(string_ptr) & 1) == 0))
  {
LABEL_3:
    PFManagerErrorLog();
    return 0;
  }

  xpc_dictionary_set_string(a2, kPFInterface, string_ptr);
LABEL_56:
  v39 = xpc_dictionary_get_value(a1, kPFFrom);
  if (v39)
  {
    result = __PFAddressCheck(v39, a2, kPFFrom, &v57);
    if (!result)
    {
      return result;
    }
  }

  v40 = xpc_dictionary_get_value(a1, kPFTo);
  if (v40)
  {
    result = __PFAddressCheck(v40, a2, kPFTo, &v57);
    if (!result)
    {
      return result;
    }
  }

  v41 = xpc_dictionary_get_value(a1, kPFNATRDRAddress);
  if (!v41)
  {
    goto LABEL_66;
  }

  if (uint64 == 13)
  {
    v57 = -1;
    result = __PFAddressCheck(v41, a2, kPFNATRDRAddress, &v57);
    if (!result)
    {
      return result;
    }

    goto LABEL_66;
  }

  if ((__PFAddressCheck(v41, a2, kPFNATRDRAddress, &v57) & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  v42 = xpc_dictionary_get_value(a1, kPFFlags);
  if (!v42 || (result = __PFFlagsCheck(v42, a2), result))
  {
    v43 = xpc_dictionary_get_value(a1, kPFUser);
    if (!v43 || (result = __PFUserCheck(v43, a2), result))
    {
      v44 = xpc_dictionary_get_value(a1, kPFGroup);
      if (!v44 || (result = __PFGroupCheck(v44, a2), result))
      {
        v45 = xpc_dictionary_get_value(a1, kPFLog);
        if (!v45 || (result = __PFLogCheck(v45, a2), result))
        {
          v46 = xpc_dictionary_get_value(a1, kPFICMP);
          if (!v46 || (result = __PFICMPCheck(v46, a2), result))
          {
            v47 = xpc_dictionary_get_value(a1, kPFTagDict);
            if (!v47 || (result = __PFTagCheck(v47, a2), result))
            {
              v48 = xpc_dictionary_get_value(a1, kPFScrubOptions);
              if (!v48 || (result = __PFScrubOptionsCheck(v48, a2), result))
              {
                v49 = xpc_dictionary_get_value(a1, kPFKeepState);
                if (!v49 || (result = __PFStateCheck(v49, a2), result))
                {
                  v50 = xpc_dictionary_get_value(a1, kPFAllowOpts);
                  if (!v50 || (result = __PFAllowOptsCheck(v50, a2), result))
                  {
                    v51 = xpc_dictionary_get_value(a1, kPFExtFilter);
                    if (!v51 || (result = __PFExtFilterCheck(v51, a2), result))
                    {
                      v52 = xpc_dictionary_get_value(a1, kPFExtMap);
                      if (!v52 || (result = __PFExtMapCheck(v52, a2), result))
                      {
                        v53 = xpc_dictionary_get_value(a1, kPFRTableID);
                        if (!v53 || (result = __PFRTableCheck(v53, a2), result))
                        {
                          v54 = xpc_dictionary_get_value(a1, kPFNATPass);
                          if (!v54 || (result = __PFNatPassCheck(v54, a2), result))
                          {
                            v55 = xpc_dictionary_get_value(a1, kPFMaxStates);
                            if (!v55 || (result = __PFMaxStatesCheck(v55, a2), result))
                            {
                              v56 = xpc_dictionary_get_value(a1, kPFDummyNet);
                              if (!v56 || (result = __PFDummyNetCheck(v56, a2), result))
                              {
                                if (uint64 > 0xCu || ((1 << uint64) & 0x1803) == 0 || (result = __PFFilterConsistencyCheck(a2), result))
                                {
                                  if ((uint64 & 0xFE) != 8 || (result = __PFRDRConsistencyCheck(a2), result))
                                  {
                                    if (uint64 - 11 > 1)
                                    {
                                      return 1;
                                    }

                                    result = __PFDummyNetConsistencyCheck(a2);
                                    if (result)
                                    {
                                      return 1;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __PFDirCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8] && (value = xpc_uint64_get_value(a1), value <= 2))
  {
    xpc_dictionary_set_uint64(a2, kPFDirection, value);
    return 1;
  }

  else
  {
    PFManagerErrorLog();
    return 0;
  }
}

uint64_t __PFProtocolCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(a1);
    v5 = getprotobyname(string_ptr);
    if (!v5)
    {
LABEL_7:
      PFManagerErrorLog();
      return 0;
    }

    v6 = kPFProtocol;
    p_proto = v5->p_proto;
  }

  else
  {
    if (MEMORY[0x25F8A7FD0](a1) != MEMORY[0x277D864C8])
    {
      goto LABEL_7;
    }

    p_proto = xpc_uint64_get_value(a1);
    if (p_proto > 0xFF)
    {
      goto LABEL_7;
    }

    v6 = kPFProtocol;
  }

  xpc_dictionary_set_uint64(a2, v6, p_proto);
  return 1;
}

BOOL __PFFamilyCheck(void *a1, void *a2, _DWORD *a3)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(a1);
    v8 = value;
    v6 = value == 30 || value == 2;
    if (value == 30 || value == 2)
    {
      xpc_dictionary_set_uint64(a2, kPFFamily, value);
      *a3 = v8;
    }

    else
    {
      PFManagerErrorLog();
    }
  }

  else
  {
    PFManagerErrorLog();
    return 0;
  }

  return v6;
}

uint64_t __PFAddressCheck(void *a1, void *a2, const char *a3, int *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v54 = -1;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubAddressLabel);
  if (value)
  {
    v11 = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
      goto LABEL_2;
    }

    string_ptr = xpc_string_get_string_ptr(v11);
    if (string_ptr)
    {
      v27 = strlen(kPFAny);
      if (strncmp(string_ptr, kPFAny, v27))
      {
        goto LABEL_2;
      }
    }

    snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubAddressLabel);
    v28 = a2;
    v29 = string_ptr;
    goto LABEL_23;
  }

  v12 = xpc_dictionary_get_value(a1, kPFSubAddress);
  if (v12)
  {
    v13 = v12;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
      goto LABEL_2;
    }

    v14 = xpc_string_get_string_ptr(v13);
    v15 = strrchr(v14, 47);
    if (v15)
    {
      v16 = v15;
      __endptr[0] = 0;
      v17 = v15 + 1;
      v18 = strtol(v15 + 1, __endptr, 0);
      if (!__endptr[0])
      {
        goto LABEL_2;
      }

      v19 = __endptr[0] != v17 && *__endptr[0] == 0;
      if (!v19 || v18 >= 129)
      {
        goto LABEL_2;
      }

      v20 = strlen(v14);
      v21 = strlen(v16);
      v22 = malloc_type_malloc(v20 - v21 + 1, 0xFFBF5E7AuLL);
      if (!v22)
      {
        v52 = __error();
        strerror(*v52);
        goto LABEL_2;
      }

      v23 = v22;
      v24 = strlen(v14);
      v25 = strlen(v16);
      strlcpy(v23, v14, v24 - v25 + 1);
LABEL_41:
      if (__PFIPAddressCheck(v23, &v54))
      {
        v42 = v54;
        if (v54 != -1)
        {
          v43 = *a4;
          if (*a4 != -1 && v54 != v43)
          {
            goto LABEL_61;
          }

          if (v43 == -1)
          {
            xpc_dictionary_set_uint64(a2, kPFFamily, v54);
            *a4 = v42;
          }
        }

        free(v23);
        snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubAddress);
        v28 = a2;
        v29 = v14;
        goto LABEL_23;
      }

LABEL_61:
      PFManagerErrorLog();
      v50 = v23;
      goto LABEL_76;
    }

    v23 = strndup(v14, 0x40uLL);
    if (v23)
    {
      goto LABEL_41;
    }

LABEL_63:
    v51 = __error();
    strerror(*v51);
    goto LABEL_2;
  }

  v37 = xpc_dictionary_get_value(a1, kPFSubDynInterface);
  if (v37)
  {
    v38 = v37;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
      goto LABEL_2;
    }

    v44 = xpc_string_get_string_ptr(v38);
    v45 = strndup(v44, 0x40uLL);
    if (v45)
    {
      v46 = v45;
      v53 = v44;
      v47 = strrchr(v45, 58);
      if (v47)
      {
        v48 = v47;
        v49 = 0;
        while (1)
        {
          if (!strcmp(v48 + 1, "network"))
          {
            v49 |= 1u;
          }

          else if (!strcmp(v48 + 1, "broadcast"))
          {
            v49 |= 2u;
          }

          else if (!strcmp(v48 + 1, "peer"))
          {
            v49 |= 4u;
          }

          else if (v48[1] != 48 || v48[2])
          {
            free(v46);
            goto LABEL_2;
          }

          *v48 = 0;
          v48 = strrchr(v46, 58);
          if (!v48)
          {
            goto LABEL_66;
          }
        }
      }

      LOBYTE(v49) = 0;
LABEL_66:
      if (v49 & (v49 - 1) & 6) == 0 && (__PFInterfaceExists(v46))
      {
        free(v46);
        snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubDynInterface);
        v28 = a2;
        v29 = v53;
        goto LABEL_23;
      }

      PFManagerErrorLog();
      v50 = v46;
LABEL_76:
      free(v50);
      goto LABEL_3;
    }

    goto LABEL_63;
  }

  v39 = xpc_dictionary_get_value(a1, kPFSubTable);
  if (!v39)
  {
    goto LABEL_2;
  }

  v40 = v39;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
  {
    PFManagerErrorLog();
  }

  v41 = xpc_string_get_string_ptr(v40);
  snprintf(__endptr, 0x40uLL, "%s", v41);
  snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubTable);
  v29 = __endptr;
  v28 = a2;
LABEL_23:
  xpc_dictionary_set_string(v28, __str, v29);
  v30 = xpc_dictionary_get_value(a1, kPFSubLowPort);
  if (v30)
  {
    v31 = v30;
    snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubLowPort);
    result = __PFPortCheck(v31, a2, __str);
    if (!result)
    {
      goto LABEL_4;
    }

    v32 = xpc_dictionary_get_value(a1, kPFSubHighPort);
    if (v32)
    {
      snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubHighPort);
      result = __PFPortCheck(v32, a2, __str);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    v33 = xpc_dictionary_get_value(a1, kPFSubPortOperator);
    if (v33)
    {
      v34 = v33;
      snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubPortOperator);
      if ((__PFOperatorCheck(v34, 1, v32 != 0, a2, __str) & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_29;
    }

LABEL_2:
    PFManagerErrorLog();
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

LABEL_29:
  v35 = xpc_dictionary_get_value(a1, kPFSubNegated);
  if (!v35 || (v36 = v35, snprintf(__str, 0x40uLL, "%s%s", a3, kPFSubNegated), result = __PFNegatedCheck(v36, a2, __str), result))
  {
    result = 1;
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PFFlagsCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
  {
    goto LABEL_2;
  }

  string_ptr = xpc_string_get_string_ptr(a1);
  v6 = strndup(string_ptr, 0x40uLL);
  if (!v6)
  {
    v13 = __error();
    strerror(*v13);
LABEL_2:
    PFManagerErrorLog();
    return 0;
  }

  v7 = v6;
  v8 = strrchr(v6, 47);
  if (!v8)
  {
LABEL_10:
    v11 = __PFParseFlags(v7);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = &kPFFlags;
LABEL_15:
      xpc_dictionary_set_uint64(a2, *v12, v11);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = v8;
  if (v8 == v7)
  {
    v11 = __PFParseFlags(v8 + 1);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = &kPFFlagSet;
      goto LABEL_15;
    }

LABEL_17:
    PFManagerErrorLog();
    free(v7);
    return 0;
  }

  if (v8 > v7)
  {
    v10 = __PFParseFlags(v8 + 1);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    xpc_dictionary_set_uint64(a2, kPFFlagSet, v10);
    *v9 = 0;
    goto LABEL_10;
  }

LABEL_16:
  free(v7);
  return 1;
}

uint64_t __PFUserCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubUserName);
  if (value)
  {
    v7 = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
LABEL_2:
      PFManagerErrorLog();
      return 0;
    }

    string_ptr = xpc_string_get_string_ptr(v7);
    v13 = getpwnam(string_ptr);
    if (v13)
    {
      pw_uid = v13->pw_uid;
      v15 = kPFUnknown;
    }

    else
    {
      v15 = kPFUnknown;
      v20 = strlen(kPFUnknown);
      if (strncmp(string_ptr, kPFUnknown, v20))
      {
        goto LABEL_2;
      }

      pw_uid = -1;
    }

    v16 = strlen(v15);
    if (!strncmp(string_ptr, v15, v16))
    {
      v17 = a2;
      v18 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = a2;
      v18 = pw_uid;
    }

    xpc_dictionary_set_uint64(v17, kPFSubLowUserID, v18);
    LODWORD(v21) = 0;
  }

  else
  {
    v8 = xpc_dictionary_get_value(a1, kPFSubLowUserID);
    if (!v8)
    {
      goto LABEL_2;
    }

    v9 = v8;
    v10 = MEMORY[0x25F8A7FD0]();
    v11 = MEMORY[0x277D864C8];
    if (v10 != MEMORY[0x277D864C8])
    {
      goto LABEL_2;
    }

    v19 = xpc_uint64_get_value(v9);
    if (v19 >= 0x7FFFFFFF)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_uint64(a2, kPFSubLowUserID, v19);
    v23 = xpc_dictionary_get_value(a1, kPFSubHighUserID);
    v21 = v23;
    if (v23)
    {
      if (MEMORY[0x25F8A7FD0](v23) != v11)
      {
        goto LABEL_2;
      }

      v24 = xpc_uint64_get_value(v21);
      if (v24 > 0x7FFFFFFE)
      {
        goto LABEL_2;
      }

      xpc_dictionary_set_uint64(a2, kPFSubHighUserID, v24);
      LODWORD(v21) = 1;
    }
  }

  v22 = xpc_dictionary_get_value(a1, kPFSubUserOperator);
  if (!v22)
  {
    goto LABEL_2;
  }

  v4 = 1;
  if ((__PFOperatorCheck(v22, 1, v21, a2, kPFSubUserOperator) & 1) == 0)
  {
    goto LABEL_2;
  }

  return v4;
}

uint64_t __PFGroupCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubGroupName);
  if (value)
  {
    v7 = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
LABEL_2:
      PFManagerErrorLog();
      return 0;
    }

    string_ptr = xpc_string_get_string_ptr(v7);
    v13 = getgrnam(string_ptr);
    if (v13)
    {
      gr_gid = v13->gr_gid;
      v15 = kPFUnknown;
    }

    else
    {
      v15 = kPFUnknown;
      v20 = strlen(kPFUnknown);
      if (strncmp(string_ptr, kPFUnknown, v20))
      {
        goto LABEL_2;
      }

      gr_gid = -1;
    }

    v16 = strlen(v15);
    if (!strncmp(string_ptr, v15, v16))
    {
      v17 = a2;
      v18 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = a2;
      v18 = gr_gid;
    }

    xpc_dictionary_set_uint64(v17, kPFSubLowGroupID, v18);
    LODWORD(v21) = 0;
  }

  else
  {
    v8 = xpc_dictionary_get_value(a1, kPFSubLowGroupID);
    if (!v8)
    {
      goto LABEL_2;
    }

    v9 = v8;
    v10 = MEMORY[0x25F8A7FD0]();
    v11 = MEMORY[0x277D864C8];
    if (v10 != MEMORY[0x277D864C8])
    {
      goto LABEL_2;
    }

    v19 = xpc_uint64_get_value(v9);
    if (v19 >= 0x7FFFFFFF)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_uint64(a2, kPFSubLowGroupID, v19);
    v23 = xpc_dictionary_get_value(a1, kPFSubHighGroupID);
    v21 = v23;
    if (v23)
    {
      if (MEMORY[0x25F8A7FD0](v23) != v11)
      {
        goto LABEL_2;
      }

      v24 = xpc_uint64_get_value(v21);
      if (v24 > 0x7FFFFFFE)
      {
        goto LABEL_2;
      }

      xpc_dictionary_set_uint64(a2, kPFSubHighGroupID, v24);
      LODWORD(v21) = 1;
    }
  }

  v22 = xpc_dictionary_get_value(a1, kPFSubGroupOperator);
  if (!v22)
  {
    goto LABEL_2;
  }

  v4 = 1;
  if ((__PFOperatorCheck(v22, 1, v21, a2, kPFSubGroupOperator) & 1) == 0)
  {
    goto LABEL_2;
  }

  return v4;
}

uint64_t __PFLogCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubLogFlags);
  if (value)
  {
    v6 = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C8])
    {
      goto LABEL_2;
    }

    v8 = xpc_uint64_get_value(v6);
    if ((v8 & 7) == 0)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_uint64(a2, kPFSubLogFlags, v8);
    v7 = xpc_dictionary_get_value(a1, kPFSubLogTo);
    if (!v7)
    {
      return 1;
    }
  }

  else
  {
    v7 = xpc_dictionary_get_value(a1, kPFSubLogTo);
    if (!v7)
    {
LABEL_2:
      PFManagerErrorLog();
      return 0;
    }
  }

  v9 = v7;
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
  {
    goto LABEL_2;
  }

  string_ptr = xpc_string_get_string_ptr(v9);
  if (strncmp(string_ptr, "pflog", 5uLL))
  {
    goto LABEL_2;
  }

  v12 = 0;
  v11 = __PFRuleStrToNum(string_ptr + 5, &v12);
  if (v12)
  {
    goto LABEL_2;
  }

  xpc_dictionary_set_uint64(a2, kPFSubLogTo, v11);
  return 1;
}

uint64_t __PFICMPCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubICMPType);
  if (!value)
  {
    goto LABEL_2;
  }

  v6 = value;
  v7 = MEMORY[0x25F8A7FD0]();
  v8 = MEMORY[0x277D864C8];
  if (v7 != MEMORY[0x277D864C8])
  {
    goto LABEL_2;
  }

  v9 = xpc_uint64_get_value(v6);
  if (v9 >= 0x100)
  {
    goto LABEL_2;
  }

  xpc_dictionary_set_uint64(a2, kPFSubICMPType, v9);
  v10 = xpc_dictionary_get_value(a1, kPFSubICMPCode);
  if (v10)
  {
    v11 = v10;
    if (MEMORY[0x25F8A7FD0]() == v8)
    {
      v12 = xpc_uint64_get_value(v11);
      if (v12 <= 0xFF)
      {
        xpc_dictionary_set_uint64(a2, kPFSubICMPCode, v12);
        return 1;
      }
    }

LABEL_2:
    PFManagerErrorLog();
    return 0;
  }

  return 1;
}

uint64_t __PFTagCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  if (xpc_dictionary_get_value(a1, kPFSubTag))
  {
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
      goto LABEL_2;
    }

    string = xpc_dictionary_get_string(a1, kPFSubTag);
    if (strnlen(string, 0x41uLL) > 0x40)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_string(a2, kPFSubTag, string);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFSubTagged))
  {
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C0])
    {
      goto LABEL_2;
    }

    v7 = xpc_dictionary_get_string(a1, kPFSubTagged);
    if (strnlen(v7, 0x41uLL) > 0x40)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_string(a2, kPFSubTagged, v7);
    v5 = 1;
  }

  value = xpc_dictionary_get_value(a1, kPFSubNotTagged);
  if (value)
  {
    v9 = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86448])
    {
LABEL_2:
      PFManagerErrorLog();
      return 0;
    }

    v10 = kPFSubNotTagged;
    v11 = xpc_BOOL_get_value(v9);
    xpc_dictionary_set_BOOL(a2, v10, v11);
  }

  else if (!v5)
  {
    goto LABEL_2;
  }

  return 1;
}

uint64_t __PFScrubOptionsCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubScrubFlags);
  if (value)
  {
    v6 = value;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C8])
    {
      goto LABEL_2;
    }

    v8 = xpc_uint64_get_value(v6) & 0x1F00;
    if (!v8)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_uint64(a2, kPFSubScrubFlags, v8);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = xpc_dictionary_get_value(a1, kPFSubScrubMinTTL);
  if (v9)
  {
    v10 = v9;
    if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C8])
    {
      goto LABEL_2;
    }

    v11 = xpc_uint64_get_value(v10);
    if (v11 > 0xFF)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_uint64(a2, kPFSubScrubMinTTL, v11);
    v7 = 1;
  }

  v12 = xpc_dictionary_get_value(a1, kPFSubScrubMaxMSS);
  if (v12)
  {
    v13 = v12;
    if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8])
    {
      v14 = xpc_uint64_get_value(v13);
      if (!(v14 >> 16))
      {
        xpc_dictionary_set_uint64(a2, kPFSubScrubMaxMSS, v14);
        return 1;
      }
    }

LABEL_2:
    PFManagerErrorLog();
    return 0;
  }

  if (!v7)
  {
    goto LABEL_2;
  }

  return 1;
}

uint64_t __PFStateCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8] && (value = xpc_uint64_get_value(a1), value <= 3))
  {
    xpc_dictionary_set_uint64(a2, kPFKeepState, value);
    return 1;
  }

  else
  {
    PFManagerErrorLog();
    return 0;
  }
}

BOOL __PFAllowOptsCheck(void *a1, void *a2)
{
  v4 = MEMORY[0x25F8A7FD0]();
  v5 = MEMORY[0x277D86448];
  if (v4 == MEMORY[0x277D86448])
  {
    v6 = kPFAllowOpts;
    value = xpc_BOOL_get_value(a1);
    xpc_dictionary_set_BOOL(a2, v6, value);
  }

  else
  {
    PFManagerErrorLog();
  }

  return v4 == v5;
}

uint64_t __PFExtFilterCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8] && (value = xpc_uint64_get_value(a1), value - 1 <= 2))
  {
    xpc_dictionary_set_uint64(a2, kPFExtFilter, value);
    return 1;
  }

  else
  {
    PFManagerErrorLog();
    return 0;
  }
}

uint64_t __PFExtMapCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8] && (value = xpc_uint64_get_value(a1), value - 1 <= 2))
  {
    xpc_dictionary_set_uint64(a2, kPFExtMap, value);
    return 1;
  }

  else
  {
    PFManagerErrorLog();
    return 0;
  }
}

uint64_t __PFRTableCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(a1);
  }

  else
  {
    if (MEMORY[0x25F8A7FD0](a1) != MEMORY[0x277D864C0])
    {
      PFManagerErrorLog();
      return 0;
    }

    string_ptr = xpc_string_get_string_ptr(a1);
    value = if_nametoindex(string_ptr);
  }

  xpc_dictionary_set_uint64(a2, kPFRTableID, value);
  return 1;
}

BOOL __PFNatPassCheck(void *a1, void *a2)
{
  v4 = MEMORY[0x25F8A7FD0]();
  v5 = MEMORY[0x277D86448];
  if (v4 == MEMORY[0x277D86448])
  {
    v6 = kPFNATPass;
    value = xpc_BOOL_get_value(a1);
    xpc_dictionary_set_BOOL(a2, v6, value);
  }

  else
  {
    PFManagerErrorLog();
  }

  return v4 == v5;
}

BOOL __PFMaxStatesCheck(void *a1, void *a2)
{
  v4 = MEMORY[0x25F8A7FD0]();
  v5 = MEMORY[0x277D864C8];
  if (v4 == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(a1);
    xpc_dictionary_set_uint64(a2, kPFMaxStates, value);
  }

  else
  {
    PFManagerErrorLog();
  }

  return v4 == v5;
}

uint64_t __PFDummyNetCheck(void *a1, void *a2)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86468])
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(a1, kPFSubDummyNetPipe);
  v6 = value;
  if (value)
  {
    if (MEMORY[0x25F8A7FD0](value) != MEMORY[0x277D864C8])
    {
      goto LABEL_2;
    }

    v7 = xpc_uint64_get_value(v6);
    if (v7 - 1 > 0xFFFE)
    {
      goto LABEL_2;
    }

    xpc_dictionary_set_uint64(a2, kPFSubDummyNetPipe, v7);
  }

  v8 = xpc_dictionary_get_value(a1, kPFSubDummyNetPipeType);
  if (!v8 || (v9 = v8, MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C8]) || xpc_uint64_get_value(v9) != 0x4000 || (xpc_dictionary_set_uint64(a2, kPFSubDummyNetPipeType, 0x4000uLL), !v6))
  {
LABEL_2:
    PFManagerErrorLog();
    return 0;
  }

  return 1;
}

uint64_t __PFFilterConsistencyCheck(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (xpc_dictionary_get_value(a1, kPFAction))
  {
    uint64 = xpc_dictionary_get_uint64(a1, kPFAction);
  }

  else
  {
    uint64 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFProtocol))
  {
    v3 = xpc_dictionary_get_uint64(a1, kPFProtocol);
  }

  else
  {
    v3 = 0;
  }

  snprintf(__str, 0x40uLL, "%s%s", kPFFrom, kPFSubPortOperator);
  if (xpc_dictionary_get_value(a1, __str))
  {
    v4 = xpc_dictionary_get_uint64(a1, __str) != 0;
  }

  else
  {
    v4 = 0;
  }

  snprintf(__str, 0x40uLL, "%s%s", kPFTo, kPFSubPortOperator);
  if (xpc_dictionary_get_value(a1, __str))
  {
    v5 = xpc_dictionary_get_uint64(a1, __str) != 0;
  }

  else
  {
    v5 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFAllowOpts))
  {
    v6 = xpc_dictionary_get_BOOL(a1, kPFAllowOpts);
  }

  else
  {
    v6 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFFamily))
  {
    v7 = xpc_dictionary_get_uint64(a1, kPFFamily);
  }

  else
  {
    v7 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFKeepState))
  {
    v8 = xpc_dictionary_get_uint64(a1, kPFKeepState) != 0;
  }

  else
  {
    v8 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFReturnOptions))
  {
    v9 = xpc_dictionary_get_uint64(a1, kPFReturnOptions);
  }

  else
  {
    v9 = 0;
  }

  if (v3 != 6 && v3 != 17 && (v4 || v5) || v6 && (uint64 > 0xC || ((1 << uint64) & 0x1801) == 0) || v3 == 1 && v7 == 30 || v3 == 58 && v7 == 2 || v3 != 1 && v3 != 58 && (xpc_dictionary_get_value(a1, kPFSubICMPType) || xpc_dictionary_get_value(a1, kPFSubICMPCode)) || !v7 && (xpc_dictionary_get_value(a1, kPFSubICMPType) || xpc_dictionary_get_value(a1, kPFSubICMPCode)) || uint64 == 1 && v8 || v3 != 6 && v9 == 1 || (result = 1, v9) && uint64 != 1)
  {
    PFManagerErrorLog();
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PFRDRConsistencyCheck(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (xpc_dictionary_get_value(a1, kPFProtocol))
  {
    uint64 = xpc_dictionary_get_uint64(a1, kPFProtocol);
  }

  else
  {
    uint64 = 0;
  }

  snprintf(__str, 0x40uLL, "%s%s", kPFFrom, kPFSubPortOperator);
  if (xpc_dictionary_get_value(a1, __str))
  {
    v3 = xpc_dictionary_get_uint64(a1, __str) != 0;
  }

  else
  {
    v3 = 0;
  }

  snprintf(__str, 0x40uLL, "%s%s", kPFTo, kPFSubPortOperator);
  if (xpc_dictionary_get_value(a1, __str))
  {
    v4 = xpc_dictionary_get_uint64(a1, __str) != 0;
  }

  else
  {
    v4 = 0;
  }

  snprintf(__str, 0x40uLL, "%s%s", kPFNATRDRAddress, kPFSubPortOperator);
  if (xpc_dictionary_get_value(a1, __str))
  {
    v5 = xpc_dictionary_get_uint64(a1, __str) != 0;
  }

  else
  {
    v5 = 0;
  }

  result = 1;
  if (uint64 != 6 && uint64 != 17 && (v3 || v4 || v5))
  {
    PFManagerErrorLog();
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PFDummyNetConsistencyCheck(void *a1)
{
  if (xpc_dictionary_get_value(a1, kPFAction))
  {
    uint64 = xpc_dictionary_get_uint64(a1, kPFAction);
  }

  else
  {
    uint64 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFDirection))
  {
    v3 = xpc_dictionary_get_uint64(a1, kPFDirection) != 0;
  }

  else
  {
    v3 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFSubDummyNetPipe))
  {
    v4 = xpc_dictionary_get_uint64(a1, kPFSubDummyNetPipe);
  }

  else
  {
    v4 = 0;
  }

  if (xpc_dictionary_get_value(a1, kPFKeepState) && xpc_dictionary_get_uint64(a1, kPFKeepState) || uint64 == 11 && (v4 - 0x10000) < 0xFFFF0001 || (uint64 == 11 ? (v5 = v4 == 0) : (v5 = 1), !v5 ? (v6 = 0) : (v6 = 1), ((v6 | v3) & 1) == 0 || (result = 1, uint64 == 12) && v4))
  {
    PFManagerErrorLog();
    return 0;
  }

  return result;
}

BOOL PFCheckNATRule(void *a1, void *a2)
{
  v11 = -1;
  value = xpc_dictionary_get_value(a1, kPFDirection);
  v5 = value != 0;
  if (value && !__PFDirCheck(value, a2))
  {
    return 0;
  }

  v6 = xpc_dictionary_get_value(a1, kPFProtocol);
  if (v6)
  {
    if (!__PFProtocolCheck(v6, a2))
    {
      return 0;
    }

    v5 = 1;
  }

  v7 = xpc_dictionary_get_value(a1, kPFFamily);
  if (v7)
  {
    if (!__PFFamilyCheck(v7, a2, &v11))
    {
      return 0;
    }

    v5 = 1;
  }

  v8 = xpc_dictionary_get_value(a1, kPFFrom);
  if (v8)
  {
    if (!__PFAddressCheck(v8, a2, kPFFrom, &v11))
    {
      return 0;
    }

    v5 = 1;
  }

  v9 = xpc_dictionary_get_value(a1, kPFTo);
  if (v9)
  {
    return __PFAddressCheck(v9, a2, kPFTo, &v11) != 0;
  }

  return v5;
}

uint64_t __PFInterfaceExists(const char *a1)
{
  v5 = 0;
  if (getifaddrs(&v5) < 0)
  {
    v4 = __error();
    strerror(*v4);
    PFManagerErrorLog();
  }

  else
  {
    v2 = &v5;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (!strncmp(v2[1], a1, 0x10uLL))
      {
        MEMORY[0x25F8A7CA0](v5);
        return 1;
      }
    }

    MEMORY[0x25F8A7CA0](v5);
  }

  return 0;
}

uint64_t __PFIPAddressCheck(const char *a1, int *a2)
{
  v8 = 0;
  memset(&v9, 0, sizeof(v9));
  v9.ai_flags = 4;
  if (getaddrinfo(a1, 0, &v9, &v8))
  {
    return 0;
  }

  v4 = v8;
  ai_family = v8->ai_family;
  if (ai_family == 30 || ai_family == 2)
  {
    *a2 = ai_family;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  freeaddrinfo(v4);
  return v3;
}

uint64_t __PFPortCheck(void *a1, void *a2, const char *a3)
{
  if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(a1);
    v7 = getservbyname(string_ptr, "tcp");
    if (v7 || (v7 = getservbyname(string_ptr, "udp")) != 0)
    {
      s_port = v7->s_port;
LABEL_8:
      xpc_dictionary_set_uint64(a2, a3, s_port);
      return 1;
    }
  }

  else if (MEMORY[0x25F8A7FD0](a1) == MEMORY[0x277D864C8])
  {
    s_port = xpc_uint64_get_value(a1);
    if (!(s_port >> 16))
    {
      goto LABEL_8;
    }
  }

  PFManagerErrorLog();
  return 0;
}

uint64_t __PFOperatorCheck(void *a1, int a2, int a3, void *a4, const char *a5)
{
  if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D864C8])
  {
    goto LABEL_2;
  }

  value = xpc_uint64_get_value(a1);
  if (value - 2 <= 5)
  {
    if (!a2 || a3)
    {
      goto LABEL_2;
    }

    goto LABEL_12;
  }

  if (value - 8 < 2)
  {
LABEL_10:
    if (!a2 || (a3 & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_12:
    xpc_dictionary_set_uint64(a4, a5, value);
    return 1;
  }

  if (value)
  {
    if (value != 1)
    {
LABEL_2:
      PFManagerErrorLog();
      return 0;
    }

    goto LABEL_10;
  }

  return 1;
}

BOOL __PFNegatedCheck(void *a1, void *a2, const char *a3)
{
  v6 = MEMORY[0x25F8A7FD0]();
  v7 = MEMORY[0x277D86448];
  if (v6 == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(a1);
    xpc_dictionary_set_BOOL(a2, a3, value);
  }

  else
  {
    PFManagerErrorLog();
  }

  return v6 == v7;
}

uint64_t __PFParseFlags(_BYTE *a1)
{
  v1 = *a1;
  if (*a1)
  {
    LODWORD(v2) = 0;
    v3 = a1 + 1;
    do
    {
      v4 = memchr("FSRPAUEW", v1, 9uLL);
      if (!v4)
      {
        return 0xFFFFFFFFLL;
      }

      v2 = v2 | (1 << (v4 - "FSRPAUEW"));
      v5 = *v3++;
      v1 = v5;
    }

    while (v5);
    if (v2)
    {
      return v2;
    }
  }

  return 255;
}

unint64_t __PFRuleStrToNum(const char *a1, const char **a2)
{
  v18 = 0;
  __endptr = 0;
  v16 = "invalid";
  v15 = 22;
  v14 = "too small";
  v13 = 34;
  v12 = "too large";
  v11 = 34;
  v17 = *__error();
  *__error() = 0;
  v4 = strtoll(a1, &__endptr, 10);
  v5 = v4;
  if (__endptr == a1 || *__endptr)
  {
    v6 = 0;
    v7 = &v15;
    v8 = &v16;
    goto LABEL_4;
  }

  if (v4 == 0x8000000000000000)
  {
    __error();
LABEL_15:
    v6 = 0;
    v7 = &v13;
    v8 = &v14;
    goto LABEL_4;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __error();
LABEL_17:
    v6 = 0;
    v7 = &v11;
    v8 = &v12;
    goto LABEL_4;
  }

  if (v4 >= 0x100)
  {
    goto LABEL_17;
  }

  v7 = &v17;
  v8 = &v18;
  v6 = 1;
LABEL_4:
  if (a2)
  {
    *a2 = *v8;
  }

  v9 = *v7;
  *__error() = v9;
  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t PFXPCSetupAndSend(NSObject *a1, NSObject *a2, void *a3, const char *a4, const char *a5, int a6, uint64_t a7, uint64_t a8)
{
  if (!__pfconnection)
  {
    __pfconnection = xpc_connection_create_mach_service(pfXPCService, a2, 2uLL);
    if (__pfconnection)
    {
      if (MEMORY[0x25F8A7FD0]() == MEMORY[0x277D86450])
      {
        xpc_connection_set_event_handler(__pfconnection, &__block_literal_global);
        xpc_connection_resume(__pfconnection);
        goto LABEL_2;
      }

      if (__pfconnection)
      {
        xpc_release(__pfconnection);
        v18 = 0;
        __pfconnection = 0;
        return v18;
      }
    }

    return 0;
  }

LABEL_2:
  v15 = xpc_dictionary_create(0, 0, 0);
  if (!v15)
  {
LABEL_15:
    PFManagerErrorLog();
    return 0;
  }

  v16 = v15;
  xpc_dictionary_set_uint64(v15, pfXPCKeyType, a6);
  if (a4 && a5)
  {
    xpc_dictionary_set_string(v16, pfXPCKeyAppType, a4);
    xpc_dictionary_set_string(v16, pfXPCKeyAppSubType, a5);
  }

  if (a6 > 1007)
  {
    if (a6 <= 2999)
    {
      if (a6 == 1008)
      {
        v20 = pfXPCKeyTableName;
        string = xpc_dictionary_get_string(a3, pfXPCKeyTableName);
        xpc_dictionary_set_string(v16, v20, string);
        v22 = pfXPCKeyTableAddressArray;
        array = xpc_dictionary_get_array(a3, pfXPCKeyTableAddressArray);
        v24 = v16;
        v19 = v22;
LABEL_37:
        xpc_dictionary_set_value(v24, v19, array);
        goto LABEL_38;
      }

      if (a6 != 1009)
      {
        goto LABEL_38;
      }

      v19 = pfXPCKeyTableName;
LABEL_36:
      v24 = v16;
      array = a3;
      goto LABEL_37;
    }

    if (a6 != 3000)
    {
      if (a6 != 3001)
      {
        goto LABEL_38;
      }

      v19 = pfXPCKeyGatewayQuery;
      goto LABEL_36;
    }

    if (xpc_dictionary_get_value(a3, pfXPCTrafficDescriptors))
    {
      if (MEMORY[0x25F8A7FD0]() != MEMORY[0x277D86440])
      {
        PFManagerErrorLog();
      }

      v19 = pfXPCKeyTrafficDescriptors;
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  if (a6 > 1002)
  {
    if (a6 == 1003)
    {
      v19 = pfXPCKeyRuleArray;
    }

    else
    {
      if (a6 != 1006)
      {
        goto LABEL_38;
      }

      v19 = pfXPCKeyRule;
    }

    goto LABEL_36;
  }

  if (a6 == 1001)
  {
    xpc_dictionary_set_value(v16, pfXPCKeyRule, a3);
    v17 = pfXPCKeyPriority;
    goto LABEL_29;
  }

  if (a6 == 1002)
  {
    v17 = pfXPCKeyInsertID;
LABEL_29:
    xpc_dictionary_set_uint64(v16, v17, a7);
  }

LABEL_38:
  if (a8)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ____PFXPCSendMessage_block_invoke;
    handler[3] = &unk_2799FB328;
    handler[4] = a8;
    xpc_connection_send_message_with_reply(__pfconnection, v16, a1, handler);
    v18 = 1;
  }

  else
  {
    v25 = xpc_connection_send_message_with_reply_sync(__pfconnection, v16);
    v18 = __PFXPCResponseHandler(v25, 0);
  }

  xpc_release(v16);
  return v18;
}

BOOL PFXPCCleanup()
{
  v0 = __pfconnection;
  if (__pfconnection)
  {
    xpc_connection_cancel(__pfconnection);
    xpc_release(__pfconnection);
    __pfconnection = 0;
  }

  return v0 != 0;
}

uint64_t __PFXPCResponseHandler(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = MEMORY[0x25F8A7FD0]();
    if (v4 == MEMORY[0x277D86468])
    {
      uint64 = xpc_dictionary_get_uint64(v3, pfXPCKeyType);
      if (uint64 != 2000)
      {
        if (uint64 == 2001)
        {
          if (!a2)
          {
            __pfresponse = v3;
            return 1;
          }

          v5 = 1;
          goto LABEL_17;
        }

        if (uint64 != 2002)
        {
          v5 = 0;
          if (!a2)
          {
            return v5;
          }

          goto LABEL_17;
        }

        PFManagerErrorLog();
        PFXPCCleanup();
      }

      if (a2)
      {
LABEL_16:
        v5 = 0;
LABEL_17:
        (*(a2 + 16))(a2, v5, v3);
        return v5;
      }
    }

    else
    {
      if (v4 == MEMORY[0x277D86480])
      {
        xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      }

      PFManagerErrorLog();
      PFXPCCleanup();
      if (a2)
      {
        v3 = 0;
        goto LABEL_16;
      }
    }

    xpc_release(v3);
LABEL_20:
    v5 = 0;
    __pfresponse = 0;
    return v5;
  }

  PFXPCCleanup();
  if (!a2)
  {
    PFManagerErrorLog();
    goto LABEL_20;
  }

  PFManagerErrorLog();
  (*(a2 + 16))(a2, 0, 0);
  return 0;
}

uint64_t PFManagerAddUser(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = a2[3];
    v6 = a2[4];
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      goto LABEL_9;
    }

    v8 = Count;
    v9 = 0;
    for (i = 0; i != v8; v9 = i >= v8)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      if (ValueAtIndex[3] == v5 && ValueAtIndex[4] == v6)
      {
        break;
      }

      ++i;
    }

    if (v9)
    {
LABEL_9:
      CFArrayAppendValue(*(a1 + 16), a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PFManagerReleaseUser(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (CFArrayGetCount(*(a1 + 16)) < 1 || CFArrayGetCount(*(a1 + 16)) < 1)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      while (CFArrayGetValueAtIndex(*(a1 + 16), v5) != a2)
      {
        if (++v5 >= CFArrayGetCount(*(a1 + 16)))
        {
          return 0;
        }
      }

      CFArrayRemoveValueAtIndex(*(a1 + 16), v5);
      PFManagerDebugLog();
      return 1;
    }
  }

  return result;
}

uint64_t PFManagerRelease(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }

  return 0;
}