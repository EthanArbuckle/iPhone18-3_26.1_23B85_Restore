@interface CUBonjourAdvertiser
- (CUBonjourAdvertiser)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activateLocked;
- (void)_activateSafeInvokeBlock:(id)block;
- (void)_updateLocked;
- (void)_updateTXTDictionary;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setAdvertiseFlags:(unint64_t)flags;
- (void)setDomain:(id)domain;
- (void)setInterfaceIndex:(unsigned int)index;
- (void)setInterfaceName:(id)name;
- (void)setLabel:(id)label;
- (void)setName:(id)name;
- (void)setPort:(int)port;
- (void)setServiceType:(id)type;
- (void)setTxtDictionary:(id)dictionary;
@end

@implementation CUBonjourAdvertiser

- (void)_updateTXTDictionary
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_txtDictionary)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3010000000;
    v32 = 0uLL;
    v31 = "";
    TXTRecordCreate(&v32, 0x100u, buffer);
    txtDictionary = self->_txtDictionary;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__CUBonjourAdvertiser__updateTXTDictionary__block_invoke;
    v26[3] = &unk_1E73A4700;
    v26[4] = self;
    v26[5] = &v28;
    [(NSDictionary *)txtDictionary enumerateKeysAndObjectsUsingBlock:v26];
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBonjourAdvertiser _updateTXTDictionary]", 0x1Eu, "Update TXT: %##@\n", v8, v9, v10, v11, self->_txtDictionary);
    }

LABEL_9:
    bonjourAdvertiser = self->_bonjourAdvertiser;
    BytesPtr = TXTRecordGetBytesPtr(v29 + 2);
    Length = TXTRecordGetLength(v29 + 2);
    v21 = BonjourAdvertiserSetTXTRecord(bonjourAdvertiser, BytesPtr, Length);
    if (!v21)
    {
      goto LABEL_14;
    }

    v22 = self->_ucat;
    if (v22->var0 > 60)
    {
      goto LABEL_14;
    }

    if (v22->var0 == -1)
    {
      if (!_LogCategory_Initialize(v22, 0x3Cu))
      {
        goto LABEL_14;
      }

      v22 = self->_ucat;
    }

    LogPrintF(v22, "[CUBonjourAdvertiser _updateTXTDictionary]", 0x3Cu, "### Set TXT record failed: %#m\n", v17, v18, v19, v20, v21);
LABEL_14:
    TXTRecordDeallocate(v29 + 2);
    _Block_object_dispose(&v28, 8);
    return;
  }

  v13 = self->_ucat;
  if (v13->var0 <= 30)
  {
    if (v13->var0 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x1Eu))
      {
        goto LABEL_16;
      }

      v13 = self->_ucat;
    }

    LogPrintF(v13, "[CUBonjourAdvertiser _updateTXTDictionary]", 0x1Eu, "Update TXT: <none>\n", v2, v3, v4, v5, v25);
  }

LABEL_16:
  v23 = self->_bonjourAdvertiser;
  v24 = *(v23 + 20);
  if (v24)
  {
    free(v24);
  }

  *(v23 + 20) = 0;
  *(v23 + 84) = 0;
  *(v23 + 170) = 1;
}

void __43__CUBonjourAdvertiser__updateTXTDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    if (v7 >= 0x100)
    {
      v31 = *(*(a1 + 32) + 32);
      if (*v31 > 60)
      {
        goto LABEL_24;
      }

      if (*v31 == -1)
      {
        if (!_LogCategory_Initialize(v31, 0x3Cu))
        {
          goto LABEL_24;
        }

        v31 = *(*(a1 + 32) + 32);
      }

      LogPrintF(v31, "[CUBonjourAdvertiser _updateTXTDictionary]_block_invoke", 0x3Cu, "### TXT item '%@', '%@' value too long\n", v8, v9, v10, v11, v33);
      goto LABEL_24;
    }

    if (TXTRecordSetValue((*(*(a1 + 40) + 8) + 32), [v33 UTF8String], v7, v6))
    {
      v16 = *(*(a1 + 32) + 32);
      if (*v16 <= 60)
      {
        if (*v16 != -1)
        {
LABEL_6:
          LogPrintF(v16, "[CUBonjourAdvertiser _updateTXTDictionary]_block_invoke", 0x3Cu, "### Set TXT item '%@', '%@' failed: %#m\n", v12, v13, v14, v15, v33);
          goto LABEL_24;
        }

        if (_LogCategory_Initialize(v16, 0x3Cu))
        {
          v16 = *(*(a1 + 32) + 32);
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 BOOLValue])
    {
      if (TXTRecordSetValue((*(*(a1 + 40) + 8) + 32), [v33 UTF8String], 0, 0))
      {
        v21 = *(*(a1 + 32) + 32);
        if (*v21 <= 60)
        {
          if (*v21 == -1)
          {
            if (!_LogCategory_Initialize(v21, 0x3Cu))
            {
              goto LABEL_24;
            }

            v21 = *(*(a1 + 32) + 32);
          }

          LogPrintF(v21, "[CUBonjourAdvertiser _updateTXTDictionary]_block_invoke", 0x3Cu, "### Set TXT item '%@', true failed: %#m\n", v17, v18, v19, v20, v33);
        }
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = *(*(a1 + 32) + 32);
        if (*v32 > 60)
        {
          goto LABEL_24;
        }

        if (*v32 == -1)
        {
          if (!_LogCategory_Initialize(v32, 0x3Cu))
          {
            goto LABEL_24;
          }

          v32 = *(*(a1 + 32) + 32);
        }

        LogPrintF(v32, "[CUBonjourAdvertiser _updateTXTDictionary]_block_invoke", 0x3Cu, "### TXT item '%@', unsupported value '%@'\n", v22, v23, v24, v25, v33);
        goto LABEL_24;
      }

      if (TXTRecordSetValue((*(*(a1 + 40) + 8) + 32), [v33 UTF8String], 0, 0))
      {
        v30 = *(*(a1 + 32) + 32);
        if (*v30 <= 60)
        {
          if (*v30 == -1)
          {
            if (!_LogCategory_Initialize(v30, 0x3Cu))
            {
              goto LABEL_24;
            }

            v30 = *(*(a1 + 32) + 32);
          }

          LogPrintF(v30, "[CUBonjourAdvertiser _updateTXTDictionary]_block_invoke", 0x3Cu, "### Set TXT item '%@', null failed: %#m\n", v26, v27, v28, v29, v33);
        }
      }
    }
  }

LABEL_24:
}

- (void)_updateLocked
{
  bonjourAdvertiser = self->_bonjourAdvertiser;
  if (!bonjourAdvertiser)
  {
    return;
  }

  advertiseFlagsChanged = self->_advertiseFlagsChanged;
  if (advertiseFlagsChanged)
  {
    *(bonjourAdvertiser + 13) = self->_advertiseFlags;
    self->_advertiseFlagsChanged = 0;
  }

  if (self->_domainChanged)
  {
    if (!ReplaceDifferentString(bonjourAdvertiser + 12, [(NSString *)self->_domain UTF8String]))
    {
      goto LABEL_10;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_10;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x3Cu))
      {
        goto LABEL_10;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBonjourAdvertiser _updateLocked]", 0x3Cu, "### Set domain '%@' failed: %#m\n", v5, v6, v7, v8, self->_domain);
LABEL_10:
    self->_domainChanged = 0;
    advertiseFlagsChanged = 1;
  }

  if (self->_interfaceIndexChanged)
  {
    *(self->_bonjourAdvertiser + 28) = self->_interfaceIndex;
    self->_interfaceIndexChanged = 0;
    advertiseFlagsChanged = 1;
  }

  if (self->_interfaceNameChanged)
  {
    [(NSString *)self->_interfaceName UTF8String];
    __strlcpy_chk();
    self->_interfaceNameChanged = 0;
    advertiseFlagsChanged = 1;
  }

  if (self->_nameChanged)
  {
    ReplaceDifferentString(self->_bonjourAdvertiser + 17, [(NSString *)self->_name UTF8String]);
    self->_nameChanged = 0;
    advertiseFlagsChanged = 1;
  }

  if (self->_portChanged)
  {
    *(self->_bonjourAdvertiser + 37) = self->_port;
    self->_portChanged = 0;
    advertiseFlagsChanged = 1;
  }

  if (self->_serviceTypeChanged)
  {
    ReplaceDifferentString(self->_bonjourAdvertiser + 19, [(NSString *)self->_serviceType UTF8String]);
    self->_serviceTypeChanged = 0;
    advertiseFlagsChanged = 1;
  }

  if (self->_txtDictionaryChanged)
  {
    [(CUBonjourAdvertiser *)self _updateTXTDictionary];
    self->_txtDictionaryChanged = 0;
    if (!self->_started)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!self->_started)
    {
LABEL_29:
      v12 = self->_bonjourAdvertiser;
      CFRetain(v12);
      dispatch_async_f(*(v12 + 3), v12, _BonjourAdvertiserStart);
      self->_started = 1;
      return;
    }

    if (!advertiseFlagsChanged)
    {
      return;
    }
  }

  v10 = self->_bonjourAdvertiser;
  CFRetain(v10);
  v11 = *(v10 + 3);

  dispatch_async_f(v11, v10, _BonjourAdvertiserUpdate);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CUBonjourAdvertiser_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __33__CUBonjourAdvertiser_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if ((*(v8 + 24) & 1) == 0)
  {
    *(v8 + 24) = 1;
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    if (*v11 > 30)
    {
      goto LABEL_6;
    }

    if (*v11 == -1)
    {
      v12 = _LogCategory_Initialize(v11, 0x1Eu);
      v10 = *(a1 + 32);
      if (!v12)
      {
LABEL_6:
        v13 = *(v10 + 16);
        if (v13)
        {
          CFRetain(*(v10 + 16));
          dispatch_async_f(v13[3], v13, _BonjourAdvertiserStop);
          CFRelease(*(*(a1 + 32) + 16));
          *(*(a1 + 32) + 16) = 0;
        }

        return;
      }

      v11 = *(v10 + 32);
    }

    LogPrintF(v11, "[CUBonjourAdvertiser invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v14);
    v10 = *(a1 + 32);
    goto LABEL_6;
  }
}

- (void)_activateSafeInvokeBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (blockCopy[2](blockCopy) && selfCopy->_activated && !selfCopy->_invalidateCalled && !selfCopy->_updatePending)
  {
    selfCopy->_updatePending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__CUBonjourAdvertiser__activateSafeInvokeBlock___block_invoke;
    block[3] = &unk_1E73A4F68;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

void __48__CUBonjourAdvertiser__activateSafeInvokeBlock___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 40) = 0;
  [*(a1 + 32) _updateLocked];
  objc_sync_exit(obj);
}

- (void)_activateLocked
{
  p_bonjourAdvertiser = &self->_bonjourAdvertiser;
  if (self->_bonjourAdvertiser)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe(ucat, "[CUBonjourAdvertiser _activateLocked]", 0x1Eu, "Activate name=%@, service=%@, domain=%@, port=%d, ifname=%@, ifindex=%u, flags=0x%llX", v2, v3, v4, v5, self->_name);
  }

LABEL_7:
  v9 = BonjourAdvertiserCreate(p_bonjourAdvertiser);
  if (v9)
  {
    v14 = v9;
    v15 = self->_ucat;
    if (v15->var0 > 60)
    {
      return;
    }

    if (v15->var0 == -1)
    {
      if (!_LogCategory_Initialize(v15, 0x3Cu))
      {
        return;
      }

      v15 = self->_ucat;
    }

    LogPrintF(v15, "[CUBonjourAdvertiser _activateLocked]", 0x3Cu, "### Create advertiser failed: %#m\n", v10, v11, v12, v13, v14);
    return;
  }

  label = self->_label;
  if (label)
  {
    v17 = *p_bonjourAdvertiser;
    [(NSString *)label UTF8String];
    LogCategoryReplaceF(v17 + 2, "%s-%s", v18, v19, v20, v21, v22, v23, qword_1EADE8EA0);
  }

  BonjourAdvertiserSetDispatchQueue(self->_bonjourAdvertiser, self->_dispatchQueue);

  [(CUBonjourAdvertiser *)self _updateLocked];
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CUBonjourAdvertiser_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

void __31__CUBonjourAdvertiser_activate__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 8) = 1;
  [*(a1 + 32) _activateLocked];
  objc_sync_exit(obj);
}

- (void)setTxtDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CUBonjourAdvertiser_setTxtDictionary___block_invoke;
  v6[3] = &unk_1E73A30D8;
  v7 = dictionaryCopy;
  selfCopy = self;
  v5 = dictionaryCopy;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v6];
}

uint64_t __40__CUBonjourAdvertiser_setTxtDictionary___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 120);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {

    return 0;
  }

  if ((v3 != 0) != (v4 == 0))
  {
    v6 = [v3 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = [*(a1 + 32) copy];
  v9 = *(a1 + 40);
  v10 = *(v9 + 120);
  *(v9 + 120) = v8;

  result = 1;
  *(*(a1 + 40) + 48) = 1;
  return result;
}

- (void)setServiceType:(id)type
{
  typeCopy = type;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__CUBonjourAdvertiser_setServiceType___block_invoke;
  v6[3] = &unk_1E73A30D8;
  v7 = typeCopy;
  selfCopy = self;
  v5 = typeCopy;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v6];
}

uint64_t __38__CUBonjourAdvertiser_setServiceType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 112);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {

    return 0;
  }

  if ((v3 != 0) != (v4 == 0))
  {
    v6 = [v3 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = [*(a1 + 32) copy];
  v9 = *(a1 + 40);
  v10 = *(v9 + 112);
  *(v9 + 112) = v8;

  result = 1;
  *(*(a1 + 40) + 47) = 1;
  return result;
}

- (void)setPort:(int)port
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__CUBonjourAdvertiser_setPort___block_invoke;
  v3[3] = &unk_1E73A3100;
  portCopy = port;
  v3[4] = self;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v3];
}

BOOL __31__CUBonjourAdvertiser_setPort___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v1 != v3)
  {
    *(v2 + 56) = v1;
    *(*(a1 + 32) + 46) = 1;
  }

  return v1 != v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CUBonjourAdvertiser_setName___block_invoke;
  v6[3] = &unk_1E73A30D8;
  v7 = nameCopy;
  selfCopy = self;
  v5 = nameCopy;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v6];
}

uint64_t __31__CUBonjourAdvertiser_setName___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 104);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {

    return 0;
  }

  if ((v3 != 0) != (v4 == 0))
  {
    v6 = [v3 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = [*(a1 + 32) copy];
  v9 = *(a1 + 40);
  v10 = *(v9 + 104);
  *(v9 + 104) = v8;

  result = 1;
  *(*(a1 + 40) + 45) = 1;
  return result;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE9568;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)setInterfaceName:(id)name
{
  nameCopy = name;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CUBonjourAdvertiser_setInterfaceName___block_invoke;
  v6[3] = &unk_1E73A30D8;
  v7 = nameCopy;
  selfCopy = self;
  v5 = nameCopy;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v6];
}

uint64_t __40__CUBonjourAdvertiser_setInterfaceName___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 88);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {

    return 0;
  }

  if ((v3 != 0) != (v4 == 0))
  {
    v6 = [v3 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = [*(a1 + 32) copy];
  v9 = *(a1 + 40);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  result = 1;
  *(*(a1 + 40) + 44) = 1;
  return result;
}

- (void)setInterfaceIndex:(unsigned int)index
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CUBonjourAdvertiser_setInterfaceIndex___block_invoke;
  v3[3] = &unk_1E73A3100;
  indexCopy = index;
  v3[4] = self;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v3];
}

BOOL __41__CUBonjourAdvertiser_setInterfaceIndex___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 52);
  if (v1 != v3)
  {
    *(v2 + 52) = v1;
    *(*(a1 + 32) + 43) = 1;
  }

  return v1 != v3;
}

- (void)setDomain:(id)domain
{
  domainCopy = domain;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CUBonjourAdvertiser_setDomain___block_invoke;
  v6[3] = &unk_1E73A30D8;
  v7 = domainCopy;
  selfCopy = self;
  v5 = domainCopy;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v6];
}

uint64_t __33__CUBonjourAdvertiser_setDomain___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 80);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {

    return 0;
  }

  if ((v3 != 0) != (v4 == 0))
  {
    v6 = [v3 isEqual:v4];

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v8 = [*(a1 + 32) copy];
  v9 = *(a1 + 40);
  v10 = *(v9 + 80);
  *(v9 + 80) = v8;

  result = 1;
  *(*(a1 + 40) + 42) = 1;
  return result;
}

- (void)setAdvertiseFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CUBonjourAdvertiser_setAdvertiseFlags___block_invoke;
  v3[3] = &unk_1E73A30B0;
  v3[4] = self;
  v3[5] = flags;
  [(CUBonjourAdvertiser *)self _activateSafeInvokeBlock:v3];
}

BOOL __41__CUBonjourAdvertiser_setAdvertiseFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  if (v1 != v3)
  {
    *(v2 + 64) = v1;
    *(*(a1 + 32) + 41) = 1;
  }

  return v1 != v3;
}

- (id)descriptionWithLevel:(int)level
{
  v65 = 0;
  NSAppendPrintF(&v65, "CUBonjourAdvertiser %@", *&level, v3, v4, v5, v6, v7, self->_serviceType);
  v10 = v65;
  v17 = v10;
  name = self->_name;
  if (name)
  {
    v64 = v10;
    NSAppendPrintF(&v64, ", Name '%@'", v11, v12, v13, v14, v15, v16, name);
    v19 = v64;

    v17 = v19;
  }

  v63 = v17;
  NSAppendPrintF(&v63, ", Port %d", v11, v12, v13, v14, v15, v16, self->_port);
  v20 = v63;

  advertiseFlags = self->_advertiseFlags;
  if (advertiseFlags)
  {
    v62 = v20;
    NSAppendPrintF(&v62, ", AdvFlags 0x%llX", v21, v22, v23, v24, v25, v26, advertiseFlags);
    v28 = v62;

    v20 = v28;
  }

  domain = self->_domain;
  if (domain)
  {
    v61 = v20;
    NSAppendPrintF(&v61, ", Domain '%@'", v21, v22, v23, v24, v25, v26, domain);
    v30 = v61;

    v20 = v30;
  }

  interfaceIndex = self->_interfaceIndex;
  if (interfaceIndex)
  {
    v60 = v20;
    NSAppendPrintF(&v60, ", IfIndex %u", v21, v22, v23, v24, v25, v26, interfaceIndex);
    v32 = v60;

    v20 = v32;
  }

  interfaceName = self->_interfaceName;
  if (interfaceName)
  {
    v59 = v20;
    NSAppendPrintF(&v59, ", IfName '%@'", v21, v22, v23, v24, v25, v26, interfaceName);
    v34 = v59;

    v20 = v34;
  }

  if (level < 50)
  {
    txtDictionary = self->_txtDictionary;
    if (txtDictionary)
    {
      v57 = v20;
      v44 = &v57;
      NSAppendPrintF(&v57, ", TXT %##@", v21, v22, v23, v24, v25, v26, txtDictionary);
    }

    else
    {
      v56 = v20;
      v44 = &v56;
      NSAppendPrintF(&v56, ", TXT <None>", v21, v22, v23, v24, v25, v26, v53);
    }

    v45 = *v44;

    if (level > 20)
    {
      goto LABEL_19;
    }

    v55 = v45;
    v36 = &v55;
    NSAppendPrintF(&v55, "\n", v46, v47, v48, v49, v50, v51, v54);
    v20 = v45;
  }

  else
  {
    v58 = v20;
    v35 = [(NSDictionary *)self->_txtDictionary count];
    v36 = &v58;
    NSAppendPrintF(&v58, ", TXT %d item(s)", v37, v38, v39, v40, v41, v42, v35);
  }

  v45 = *v36;

LABEL_19:

  return v45;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUBonjourAdvertiser;
  [(CUBonjourAdvertiser *)&v4 dealloc];
}

- (CUBonjourAdvertiser)init
{
  v4.receiver = self;
  v4.super_class = CUBonjourAdvertiser;
  v2 = [(CUBonjourAdvertiser *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUBonjourAdvertiser;
  }

  return v2;
}

@end