@interface MediaControlClient
- (MediaControlClient)init;
- (void)dealloc;
- (void)ensureConnected;
- (void)ensureDisconnected;
- (void)getProperty:(id)property qualifier:(id)qualifier completionQueue:(id)queue completionBlock:(id)block;
- (void)getSlideshowFeaturesWithOptions:(unsigned int)options completionQueue:(id)queue completionBlock:(id)block;
- (void)getSlideshowInfoWithOptions:(unsigned int)options completionQueue:(id)queue completionBlock:(id)block;
- (void)invalidate;
- (void)performRemoteAction:(id)action withParams:(id)params completionQueue:(id)queue completionBlock:(id)block;
- (void)sendPhotoData:(id)data options:(id)options completionQueue:(id)queue completionBlock:(id)block;
- (void)setEventHandlerQueue:(id)queue eventHandlerBlock:(id)block;
- (void)setHost:(id)host;
- (void)setPassword:(id)password;
- (void)setProperty:(id)property qualifier:(id)qualifier value:(id)value completionQueue:(id)queue completionBlock:(id)block;
- (void)setSlideshowInfo:(id)info completionQueue:(id)queue completionBlock:(id)block;
- (void)startPresentation:(id)presentation completionQueue:(id)queue completionBlock:(id)block;
@end

@implementation MediaControlClient

- (void)setSlideshowInfo:(id)info completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__MediaControlClient_setSlideshowInfo_completionQueue_completionBlock___block_invoke;
  v10[3] = &unk_27989A8C0;
  v10[4] = self;
  v10[5] = info;
  v10[6] = queue;
  v10[7] = block;
  dispatch_async(queue, v10);
}

void __71__MediaControlClient_setSlideshowInfo_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = (v2 + 279600);
  if (!*(v2 + 844680) || !*(v2 + 844688))
  {
    APSLogErrorAt();
    v18 = 0;
    v10 = 0;
    Data = 0;
    v14 = -6745;
    goto LABEL_16;
  }

  v4 = *(a1 + 40);
  v5 = MediaControlClient_EnsureConnected(*(*(a1 + 32) + 16));
  if (v5)
  {
    v14 = v5;
LABEL_39:
    APSLogErrorAt();
    v18 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v6 = _MediaControlClient_EnsureReverseConnected(v2, (v2 + 563288));
  if (v6)
  {
    v14 = v6;
    goto LABEL_39;
  }

  Value = CFDictionaryGetValue(v4, @"state");
  if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()) && CFStringCompare(v8, @"playing", 0) == kCFCompareEqualTo)
  {
    if (*(v2 + 844720) == 0.0)
    {
      *(v2 + 844720) = CFAbsoluteTimeGetCurrent();
      UUIDGet();
      *(v2 + 844748) = 0;
      *(v2 + 844732) = 0u;
      if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    _MediaControlClient_EnsureMirroringSuspended(v2);
    v10 = 1;
  }

  else
  {
    _MediaControlClient_LogSlideshowEnded(v2);
    _MediaControlClient_EnsureMirroringResumed(v2);
    v10 = 0;
  }

  Data = CFPropertyListCreateData(0, v4, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    HTTPHeader_InitRequest();
    HTTPHeader_SetField();
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(Data);
    v14 = _MediaControlClient_DoTransaction(0x32u, v2, v2 + 416, BytePtr, Length);
    CFRelease(Data);
    if (v14)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v15 = CFDataCreate(0, *(v2 + 279608), *(v2 + 279616));
    if (v15)
    {
      v16 = v15;
      Data = CFPropertyListCreateWithData(0, v15, 0, 0, 0);
      CFRelease(v16);
      if (Data)
      {
        v17 = CFGetTypeID(Data);
        if (v17 == CFDictionaryGetTypeID())
        {
          v14 = 0;
          v18 = Data;
LABEL_15:
          Data = 0;
          goto LABEL_16;
        }

        APSLogErrorAt();
        v18 = 0;
        v14 = -6756;
      }

      else
      {
        APSLogErrorAt();
        v18 = 0;
        v14 = -6717;
      }
    }

    else
    {
      APSLogErrorAt();
      v18 = 0;
      Data = 0;
      v14 = -6728;
    }
  }

  else
  {
    APSLogErrorAt();
    v18 = 0;
    v14 = -6700;
  }

LABEL_16:
  if (*v3)
  {
    free(*v3);
    *v3 = 0;
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (v14)
  {
    if (v10)
    {
      _MediaControlClient_EnsureMirroringResumed(v2);
    }

    if (gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__MediaControlClient_setSlideshowInfo_completionQueue_completionBlock___block_invoke_2;
    block[3] = &unk_27989A898;
    v22 = v14;
    v20 = *(a1 + 56);
    block[4] = v18;
    block[5] = v20;
    dispatch_async(v19, block);

    dispatch_release(*(a1 + 48));
  }
}

void __71__MediaControlClient_setSlideshowInfo_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 48) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)getSlideshowInfoWithOptions:(unsigned int)options completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MediaControlClient_getSlideshowInfoWithOptions_completionQueue_completionBlock___block_invoke;
  block[3] = &unk_27989A870;
  block[4] = self;
  block[5] = queue;
  block[6] = block;
  dispatch_async(queue, block);
}

void __82__MediaControlClient_getSlideshowInfoWithOptions_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = v2 + 278528;
  v4 = MediaControlClient_EnsureConnected(v2);
  if (v4)
  {
    v10 = v4;
    APSLogErrorAt();
LABEL_22:
    v11 = 0;
    goto LABEL_7;
  }

  HTTPHeader_InitRequest();
  v5 = _MediaControlClient_DoTransaction(0x32u, v2, v2 + 416, 0, 0);
  if (v5)
  {
    v10 = v5;
    goto LABEL_22;
  }

  v6 = CFDataCreate(0, *(v2 + 279608), *(v2 + 279616));
  if (v6)
  {
    v7 = v6;
    v8 = CFPropertyListCreateWithData(0, v6, 0, 0, 0);
    CFRelease(v7);
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == CFDictionaryGetTypeID())
      {
        v10 = 0;
        v11 = v8;
LABEL_7:
        v8 = 0;
        goto LABEL_8;
      }

      APSLogErrorAt();
      v11 = 0;
      v10 = -6756;
    }

    else
    {
      APSLogErrorAt();
      v11 = 0;
      v10 = -6717;
    }
  }

  else
  {
    APSLogErrorAt();
    v11 = 0;
    v8 = 0;
    v10 = -6728;
  }

LABEL_8:
  v12 = *(v3 + 1072);
  if (v12)
  {
    free(v12);
    *(v3 + 1072) = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__MediaControlClient_getSlideshowInfoWithOptions_completionQueue_completionBlock___block_invoke_2;
    block[3] = &unk_27989A898;
    v16 = v10;
    v14 = *(a1 + 48);
    block[4] = v11;
    block[5] = v14;
    dispatch_async(v13, block);

    dispatch_release(*(a1 + 40));
  }
}

void __82__MediaControlClient_getSlideshowInfoWithOptions_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 48) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)getSlideshowFeaturesWithOptions:(unsigned int)options completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__MediaControlClient_getSlideshowFeaturesWithOptions_completionQueue_completionBlock___block_invoke;
  v10[3] = &unk_27989A960;
  optionsCopy = options;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = block;
  dispatch_async(queue, v10);
}

void __86__MediaControlClient_getSlideshowFeaturesWithOptions_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || (v2 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")], !objc_msgSend(v2, "count")))
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_msgSend(v2 objectAtIndex:{0), "UTF8String"}];
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = v4 + 278528;
  v6 = MediaControlClient_EnsureConnected(v4);
  if (v6)
  {
    v12 = v6;
    APSLogErrorAt();
LABEL_29:
    v13 = 0;
    goto LABEL_14;
  }

  HTTPHeader_InitRequest();
  if (v3 && *v3)
  {
    HTTPHeader_SetField();
  }

  v7 = _MediaControlClient_DoTransaction(0x32u, v4, v4 + 416, 0, 0);
  if (v7)
  {
    v12 = v7;
    goto LABEL_29;
  }

  v8 = CFDataCreate(0, *(v4 + 279608), *(v4 + 279616));
  if (v8)
  {
    v9 = v8;
    v10 = CFPropertyListCreateWithData(0, v8, 0, 0, 0);
    CFRelease(v9);
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = 0;
        v13 = v10;
LABEL_14:
        v10 = 0;
        goto LABEL_15;
      }

      APSLogErrorAt();
      v13 = 0;
      v12 = -6756;
    }

    else
    {
      APSLogErrorAt();
      v13 = 0;
      v12 = -6717;
    }
  }

  else
  {
    APSLogErrorAt();
    v13 = 0;
    v10 = 0;
    v12 = -6728;
  }

LABEL_15:
  v14 = *(v5 + 1072);
  if (v14)
  {
    free(v14);
    *(v5 + 1072) = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MediaControlClient_getSlideshowFeaturesWithOptions_completionQueue_completionBlock___block_invoke_2;
    block[3] = &unk_27989A898;
    v18 = v12;
    v16 = *(a1 + 48);
    block[4] = v13;
    block[5] = v16;
    dispatch_async(v15, block);

    dispatch_release(*(a1 + 40));
  }
}

void __86__MediaControlClient_getSlideshowFeaturesWithOptions_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 48) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)setProperty:(id)property qualifier:(id)qualifier value:(id)value completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__MediaControlClient_setProperty_qualifier_value_completionQueue_completionBlock___block_invoke;
  v14[3] = &unk_27989A938;
  v14[4] = self;
  v14[5] = property;
  v14[6] = qualifier;
  v14[7] = value;
  v14[8] = queue;
  v14[9] = block;
  dispatch_async(queue, v14);
}

void __82__MediaControlClient_setProperty_qualifier_value_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = MediaControlClient_SetProperty(*(*(a1 + 32) + 16));
  v3 = *(a1 + 64);
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __82__MediaControlClient_setProperty_qualifier_value_completionQueue_completionBlock___block_invoke_2;
    v4[3] = &unk_27989A8E8;
    v5 = v2;
    v4[4] = *(a1 + 72);
    dispatch_async(v3, v4);
    dispatch_release(*(a1 + 64));
  }
}

void __82__MediaControlClient_setProperty_qualifier_value_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 40) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

- (void)getProperty:(id)property qualifier:(id)qualifier completionQueue:(id)queue completionBlock:(id)block
{
  dispatch_retain(queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MediaControlClient_getProperty_qualifier_completionQueue_completionBlock___block_invoke;
  block[3] = &unk_27989A848;
  block[4] = self;
  block[5] = property;
  block[6] = qualifier;
  block[7] = queue;
  block[8] = block;
  dispatch_async(queue, block);
}

void __76__MediaControlClient_getProperty_qualifier_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = MediaControlClient_CopyProperty(*(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48), &v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MediaControlClient_getProperty_qualifier_completionQueue_completionBlock___block_invoke_2;
  block[3] = &unk_27989A910;
  v5 = v6;
  v3 = *(a1 + 56);
  block[4] = *(a1 + 64);
  block[5] = v2;
  dispatch_async(v3, block);
  dispatch_release(*(a1 + 56));
}

void __76__MediaControlClient_getProperty_qualifier_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 48) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)sendPhotoData:(id)data options:(id)options completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MediaControlClient_sendPhotoData_options_completionQueue_completionBlock___block_invoke;
  block[3] = &unk_27989A848;
  block[4] = self;
  block[5] = data;
  block[6] = options;
  block[7] = queue;
  block[8] = block;
  dispatch_async(queue, block);
}

void __76__MediaControlClient_sendPhotoData_options_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) bytes];
  v4 = [*(a1 + 40) length];
  v5 = *(a1 + 48);
  v6 = MediaControlClient_EnsureConnected(v2);
  v7 = &unk_27F953000;
  if (*(v2 + 563256) == 0.0)
  {
    *(v2 + 563256) = CFAbsoluteTimeGetCurrent();
    UUIDGet();
    *(v2 + 563284) = 0;
    *(v2 + 563268) = 0u;
    if (gLogCategory_MediaControlClientCore <= 50 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v8 = v2 + 279600;
  if (v6)
  {
    goto LABEL_40;
  }

  _MediaControlClient_EnsureMirroringSuspended(v2);
  HTTPHeader_InitRequest();
  if (!v5)
  {
    v12 = 1;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(v5, @"assetAction");
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 != CFStringGetTypeID())
    {
      APSLogErrorAt();
      if (gLogCategory_MediaControlClientCore > 90 || gLogCategory_MediaControlClientCore == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }

    v12 = CFEqual(v10, @"displayCached") == 0;
    HTTPHeader_SetField();
    v8 = v2 + 279600;
  }

  else
  {
    v12 = 1;
  }

  v13 = CFDictionaryGetValue(v5, @"assetKey");
  if (v13)
  {
    v14 = CFGetTypeID(v13);
    if (v14 == CFStringGetTypeID())
    {
      HTTPHeader_SetField();
      v8 = v2 + 279600;
      goto LABEL_16;
    }

    APSLogErrorAt();
    v7 = &unk_27F953000;
    if (gLogCategory_MediaControlClientCore > 90 || gLogCategory_MediaControlClientCore == -1 && !_LogCategory_Initialize())
    {
LABEL_63:
      v6 = -6705;
      v8 = v2 + 279600;
      goto LABEL_40;
    }

LABEL_56:
    LogPrintF();
    goto LABEL_63;
  }

LABEL_16:
  if (*(v8 + 2180))
  {
    HTTPHeader_SetField();
  }

  v15 = CFDictionaryGetValue(v5, @"Transition");
  if (!v15)
  {
LABEL_21:
    Current = CFAbsoluteTimeGetCurrent();
    v18 = _MediaControlClient_DoTransaction(0x32u, v2, v2 + 416, v3, v4);
    if (v18)
    {
      v6 = v18;
    }

    else
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v12)
      {
        if (v4 && (v20 = v19 - Current, v20 > 0.0))
        {
          v21 = vcvtd_n_u64_f64(v4 / v20, 3uLL);
          v22 = *(v2 + 563268);
          if (v22)
          {
            v7 = &unk_27F953000;
            if (v4 < *(v2 + 563272))
            {
              *(v2 + 563272) = v4;
            }

            if (v4 > *(v2 + 563276))
            {
              *(v2 + 563276) = v4;
            }

            if (*(v2 + 563280) > v21)
            {
              *(v2 + 563280) = v21;
            }

            if (*(v2 + 563284) < v21)
            {
              *(v2 + 563284) = v21;
            }

            goto LABEL_39;
          }

          *(v2 + 563272) = v4;
          *(v2 + 563276) = v4;
          *(v2 + 563280) = v21;
          *(v2 + 563284) = v21;
        }

        else
        {
          v22 = *(v2 + 563268);
        }

        v7 = &unk_27F953000;
LABEL_39:
        v6 = 0;
        *(v2 + 563268) = v22 + 1;
        goto LABEL_40;
      }

      v6 = 0;
    }

    v7 = &unk_27F953000;
    goto LABEL_40;
  }

  v16 = CFGetTypeID(v15);
  if (v16 == CFStringGetTypeID())
  {
    HTTPHeader_SetField();
    goto LABEL_21;
  }

  APSLogErrorAt();
  v7 = &unk_27F953000;
  if (gLogCategory_MediaControlClientCore <= 90 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = -6705;
LABEL_40:
  if (*v8)
  {
    free(*v8);
    *v8 = 0;
  }

  if (v6)
  {
    v23 = v7[346];
    if (v23 <= 60 && (v23 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__MediaControlClient_sendPhotoData_options_completionQueue_completionBlock___block_invoke_2;
    block[3] = &unk_27989A8E8;
    v26 = v6;
    block[4] = *(a1 + 64);
    dispatch_async(v24, block);
    dispatch_release(*(a1 + 56));
  }
}

void __76__MediaControlClient_sendPhotoData_options_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 40) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

- (void)startPresentation:(id)presentation completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__MediaControlClient_startPresentation_completionQueue_completionBlock___block_invoke;
  v10[3] = &unk_27989A8C0;
  v10[4] = self;
  v10[5] = presentation;
  v10[6] = queue;
  v10[7] = block;
  dispatch_async(queue, v10);
}

void __72__MediaControlClient_startPresentation_completionQueue_completionBlock___block_invoke(void *a1)
{
  Mutable = a1[5];
  v3 = *(a1[4] + 16);
  v4 = v3 + 278528;
  v5 = MediaControlClient_EnsureConnected(v3);
  if (v5)
  {
    v9 = v5;
    APSLogErrorAt();
    Mutable = 0;
    v6 = 0;
    goto LABEL_12;
  }

  if (Mutable)
  {
    v6 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      goto LABEL_35;
    }
  }

  Mutable = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Mutable)
  {
    APSLogErrorAt();
    v12 = 0;
    v9 = -6700;
    goto LABEL_13;
  }

  HTTPHeader_InitRequest();
  HTTPHeader_SetField();
  BytePtr = CFDataGetBytePtr(Mutable);
  Length = CFDataGetLength(Mutable);
  v9 = _MediaControlClient_DoTransaction(0x32u, v3, v3 + 416, BytePtr, Length);
  CFRelease(Mutable);
  if (v9)
  {
    Mutable = 0;
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v10 = CFDataCreate(0, *(v3 + 279608), *(v3 + 279616));
  if (!v10)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_35:
    v12 = 0;
    v9 = -6728;
    goto LABEL_13;
  }

  v11 = v10;
  v12 = CFPropertyListCreateWithData(0, v10, 0, 0, 0);
  CFRelease(v11);
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFDictionaryGetTypeID())
    {
      v9 = 0;
      Mutable = v12;
      goto LABEL_12;
    }

    APSLogErrorAt();
    Mutable = 0;
    v9 = -6756;
  }

  else
  {
    APSLogErrorAt();
    Mutable = 0;
    v9 = -6717;
  }

LABEL_13:
  v14 = *(v4 + 1072);
  if (v14)
  {
    free(v14);
    *(v4 + 1072) = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9 && gLogCategory_MediaControlClientCore <= 60 && (gLogCategory_MediaControlClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = a1[6];
  if (v15)
  {
    v16 = a1[7];
    if (!v16 || (block[0] = MEMORY[0x277D85DD0], block[1] = 3221225472, block[2] = __72__MediaControlClient_startPresentation_completionQueue_completionBlock___block_invoke_2, block[3] = &unk_27989A898, v18 = v9, block[4] = Mutable, block[5] = v16, dispatch_async(v15, block), (v15 = a1[6]) != 0))
    {
      dispatch_release(v15);
    }
  }
}

void __72__MediaControlClient_startPresentation_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x277CCA9B8]);
    v3 = [v2 initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 48) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

- (void)setEventHandlerQueue:(id)queue eventHandlerBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MediaControlClient_setEventHandlerQueue_eventHandlerBlock___block_invoke;
  block[3] = &unk_27989A870;
  block[4] = queue;
  block[5] = self;
  block[6] = block;
  dispatch_async(queue, block);
}

void __61__MediaControlClient_setEventHandlerQueue_eventHandlerBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v3 + 24);
  if (v2 != v4)
  {
    if (v2)
    {
      dispatch_retain(v2);
      v3 = a1[5];
      v4 = *(v3 + 24);
    }

    if (v4)
    {
      dispatch_release(v4);
      v3 = a1[5];
    }

    v2 = a1[4];
    *(v3 + 24) = v2;
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  v5 = a1[6];
  if (v5 != *(a1[5] + 32))
  {
    v6 = v5;

    v7 = a1[6];
    *(a1[5] + 32) = v7;
    v8 = a1[5];
    v9 = *(v8 + 16) + 561152;
    v10 = v7 == 0;
    if (v7)
    {
      v11 = __eventHandler;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v8 = 0;
    }

    *(v9 + 2064) = v11;
    *(v9 + 2072) = v8;
  }
}

- (void)performRemoteAction:(id)action withParams:(id)params completionQueue:(id)queue completionBlock:(id)block
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MediaControlClient_performRemoteAction_withParams_completionQueue_completionBlock___block_invoke;
  block[3] = &unk_27989A848;
  block[4] = self;
  block[5] = action;
  block[6] = params;
  block[7] = queue;
  block[8] = block;
  dispatch_async(queue, block);
}

void __85__MediaControlClient_performRemoteAction_withParams_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v2 = MediaControlClient_DoAction(*(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48), &v9, &v8);
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 64);
    if (!v4 || (block[0] = MEMORY[0x277D85DD0], block[1] = 3221225472, block[2] = __85__MediaControlClient_performRemoteAction_withParams_completionQueue_completionBlock___block_invoke_2, block[3] = &unk_27989A820, v6 = v2, v7 = v9, block[4] = v4, block[5] = v8, dispatch_async(v3, block), (v3 = *(a1 + 56)) != 0))
    {
      dispatch_release(v3);
    }
  }
}

void __85__MediaControlClient_performRemoteAction_withParams_completionQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCA590];
  if (*(a1 + 48))
  {
    v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 48) userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 52))
  {
    v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:*v2 code:*(a1 + 52) userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)ensureDisconnected
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__MediaControlClient_ensureDisconnected__block_invoke;
    block[3] = &unk_27989A7D0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)ensureConnected
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MediaControlClient_ensureConnected__block_invoke;
  block[3] = &unk_27989A7D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setPassword:(id)password
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__MediaControlClient_setPassword___block_invoke;
  v4[3] = &unk_27989A7F8;
  v4[4] = self;
  v4[5] = password;
  dispatch_async(queue, v4);
}

uint64_t __34__MediaControlClient_setPassword___block_invoke(uint64_t a1)
{
  [*(a1 + 40) UTF8String];

  return ReplaceDifferentString();
}

- (void)setHost:(id)host
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__MediaControlClient_setHost___block_invoke;
  v4[3] = &unk_27989A7F8;
  v4[4] = self;
  v4[5] = host;
  dispatch_async(queue, v4);
}

uint64_t __30__MediaControlClient_setHost___block_invoke(uint64_t a1)
{
  [*(a1 + 40) UTF8String];

  return ReplaceDifferentString();
}

- (void)invalidate
{
  client = self->_client;
  if (client)
  {
    MediaControlClient_Cancel(client);
    [(MediaControlClient *)self ensureDisconnected];
  }

  queue = self->_queue;
  if (queue)
  {
    if (self->_client)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__MediaControlClient_invalidate__block_invoke;
      block[3] = &unk_27989A7D0;
      block[4] = self;
      dispatch_async(queue, block);
    }

    v5 = dispatch_semaphore_create(0);
    if (v5)
    {
      v6 = v5;
      dispatch_set_context(self->_queue, v5);
      dispatch_set_finalizer_f(self->_queue, __invalidateDone);
      dispatch_release(self->_queue);
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v6);
      self->_queue = 0;
    }
  }
}

- (void)dealloc
{
  CFRelease(self->_client);
  self->_client = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  eventHandlerQueue = self->_eventHandlerQueue;
  if (eventHandlerQueue)
  {
    dispatch_release(eventHandlerQueue);
    self->_eventHandlerQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = MediaControlClient;
  [(MediaControlClient *)&v5 dealloc];
}

- (MediaControlClient)init
{
  v6.receiver = self;
  v6.super_class = MediaControlClient;
  v2 = [(MediaControlClient *)&v6 init];
  if (v2 && (v3 = dispatch_queue_create("MediaControlClient", 0), (*(v2 + 1) = v3) != 0) && (Default = CFAllocatorGetDefault(), !MediaControlClient_Create(Default, 0, v2 + 2)))
  {
    MediaControlClient_SetDispatchQueue(*(v2 + 2), *(v2 + 1));
  }

  else
  {
    APSLogErrorAt();

    return 0;
  }

  return v2;
}

uint64_t ___MediaControlClient_PlaybackPaused_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 845068);
  if (result)
  {
    result = IOPMAssertionRelease(result);
    *(*(a1 + 32) + 845068) = 0;
    if (gLogCategory_MediaControlClientCore <= 40)
    {
      if (gLogCategory_MediaControlClientCore != -1 || (result = _LogCategory_Initialize(), result))
      {

        return LogPrintF();
      }
    }
  }

  return result;
}

@end