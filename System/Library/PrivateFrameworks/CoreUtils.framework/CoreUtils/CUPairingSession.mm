@interface CUPairingSession
- (CUPairedPeer)pairedPeer;
- (CUPairingSession)init;
- (NSDictionary)appInfoPeer;
- (NSDictionary)groupInfoPeer;
- (id)openStreamWithName:(id)name type:(int)type error:(id *)error;
- (int)deriveKeyWithSaltPtr:(const void *)ptr saltLen:(unint64_t)len infoPtr:(const void *)infoPtr infoLen:(unint64_t)infoLen keyLen:(unint64_t)keyLen outputKeyPtr:(void *)keyPtr;
- (unint64_t)peerAppFlags;
- (void)_activate;
- (void)_cleanup;
- (void)_completed:(id)_completed;
- (void)_receivedData:(id)data flags:(unsigned int)flags;
- (void)_tryPIN:(id)n;
- (void)activate;
- (void)closeStream:(id)stream;
- (void)dealloc;
- (void)invalidate;
- (void)receivedData:(id)data;
- (void)receivedMessageData:(id)data;
- (void)setLabel:(id)label;
- (void)setSelfAppFlags:(unint64_t)flags;
- (void)tryPIN:(id)n;
@end

@implementation CUPairingSession

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUPairingSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__CUPairingSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUPairingSession invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v22);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 24);
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = *(v9 + 8);
  if (v12)
  {
    CFRelease(v12);
    *(*(a1 + 32) + 8) = 0;
    v9 = *(a1 + 32);
  }

  [*(v9 + 16) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_6600];
  v13 = *(a1 + 32);
  v14 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A768];
  v23 = *MEMORY[0x1E696A578];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, -6723, 0, 0)}];
  v17 = v16;
  v18 = @"?";
  if (v16)
  {
    v18 = v16;
  }

  v24[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = [v14 errorWithDomain:v15 code:-6723 userInfo:v19];
  [v13 _completed:v20];

  return [*(a1 + 32) _cleanup];
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  showPINHandlerEx = self->_showPINHandlerEx;
  self->_showPINHandlerEx = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;

  sendDataHandler = self->_sendDataHandler;
  self->_sendDataHandler = 0;

  sendMessageDataHandler = self->_sendMessageDataHandler;
  self->_sendMessageDataHandler = 0;

  signDataHandler = self->_signDataHandler;
  self->_signDataHandler = 0;

  verifySignatureHandler = self->_verifySignatureHandler;
  self->_verifySignatureHandler = 0;

  copyIdentityHandler = self->_copyIdentityHandler;
  self->_copyIdentityHandler = 0;

  findPeerHandler = self->_findPeerHandler;
  self->_findPeerHandler = 0;

  savePeerHandler = self->_savePeerHandler;
  self->_savePeerHandler = 0;

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  [(CUPairingSession *)self _cleanup];
  v4.receiver = self;
  v4.super_class = CUPairingSession;
  [(CUPairingSession *)&v4 dealloc];
}

- (int)deriveKeyWithSaltPtr:(const void *)ptr saltLen:(unint64_t)len infoPtr:(const void *)infoPtr infoLen:(unint64_t)infoLen keyLen:(unint64_t)keyLen outputKeyPtr:(void *)keyPtr
{
  pairingSession = self->_pairingSession;
  if (!pairingSession)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:]", 0x5Au, "### Derive key before activate\n", infoPtr, infoLen, keyLen, keyPtr, v18);
    }

LABEL_11:
    LODWORD(v14) = -6745;
    return v14;
  }

  v14 = PairingSessionDeriveKey(pairingSession);
  if (v14)
  {
    v17 = self->_ucat;
    if (v17->var0 <= 90)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize(v17, 0x5Au))
        {
          return v14;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "[CUPairingSession deriveKeyWithSaltPtr:saltLen:infoPtr:infoLen:keyLen:outputKeyPtr:]", 0x5Au, "### Derive key failed: %#m\n", v10, v11, v12, v13, v14);
    }
  }

  return v14;
}

- (void)closeStream:(id)stream
{
  name = [stream name];
  ucat = self->_ucat;
  v11 = name;
  if (*ucat <= 30)
  {
    if (*ucat != -1)
    {
LABEL_3:
      ucat = LogPrintF(ucat, "[CUPairingSession closeStream:]", 0x1Eu, "Close stream '%@'\n", v5, v6, v7, v8, name);
      name = v11;
      goto LABEL_5;
    }

    ucat = _LogCategory_Initialize(ucat, 0x1Eu);
    name = v11;
    if (ucat)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (name)
  {
    v10 = [(NSMutableDictionary *)self->_pairingStreams objectForKeyedSubscript:v11];
    [v10 _cleanup];
  }

  MEMORY[0x1EEE66BE0](ucat);
}

- (id)openStreamWithName:(id)name type:(int)type error:(id *)error
{
  v6 = *&type;
  v66 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v64 = 0;
  __s = 0;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUPairingSession openStreamWithName:type:error:]", 0x1Eu, "Open stream '%@'\n", v8, v9, v10, v11, nameCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (![nameCopy length])
  {
    v50 = "EmptyName";
    v51 = 4294960552;
LABEL_24:
    NSErrorWithOSStatusF(v51, v50, v14, v15, v16, v17, v18, v19, v61);
    v49 = LABEL_25:;
    v23 = 0;
    goto LABEL_26;
  }

  v20 = [(NSMutableDictionary *)self->_pairingStreams objectForKeyedSubscript:nameCopy];

  if (v20)
  {
    NSErrorWithOSStatusF(4294960575, "Stream '%@' already used", v14, v15, v16, v17, v18, v19, nameCopy);
    goto LABEL_25;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v21 = &kCryptoAEADDescriptorAESGCM;
      goto LABEL_11;
    }

    v61 = v6;
    v50 = "Bad stream type: %d";
    v51 = 4294960591;
    goto LABEL_24;
  }

  v21 = kCryptoAEADDescriptorChaCha20Poly1305;
LABEL_11:
  v22 = *v21;
  v23 = objc_alloc_init(CUPairingStream);
  [(CUPairingStream *)v23 setAuthTagLength:16];
  [(CUPairingStream *)v23 setName:nameCopy];
  v30 = self->_sessionType - 1;
  if (v30 > 0xC)
  {
    v32 = "ClientEncrypt-%@";
    v31 = "ServerEncrypt-%@";
  }

  else
  {
    v31 = off_1E73A3A38[v30];
    v32 = off_1E73A3AA0[v30];
  }

  ASPrintF(&__s, v31, v24, v25, v26, v27, v28, v29, nameCopy);
  v39 = __s;
  if (!__s)
  {
    v60 = "CreateEncryptInfoFailed";
LABEL_44:
    v43 = 4294960568;
    goto LABEL_50;
  }

  v40 = [(CUPairingSession *)self deriveKeyWithSaltPtr:"" saltLen:0 infoPtr:__s infoLen:strlen(__s) keyLen:32 outputKeyPtr:v65];
  v64 = v40;
  free(v39);
  __s = 0;
  if (v40)
  {
    v60 = "DeriveEncryptKeyFailed";
    v43 = v40;
LABEL_50:
    v49 = NSErrorWithOSStatusF(v43, v60, v33, v34, v35, v36, v37, v38, v62);
LABEL_26:
    memset_s(v65, 0x20uLL, 0, 0x20uLL);
    if (!v49)
    {
      goto LABEL_33;
    }

    v56 = self->_ucat;
    if (v56->var0 <= 60)
    {
      if (v56->var0 != -1)
      {
LABEL_29:
        LogPrintF(v56, "[CUPairingSession openStreamWithName:type:error:]", 0x3Cu, "### Open stream '%@' failed: %{error}\n", v52, v53, v54, v55, nameCopy);
        goto LABEL_31;
      }

      if (_LogCategory_Initialize(v56, 0x3Cu))
      {
        v56 = self->_ucat;
        goto LABEL_29;
      }
    }

LABEL_31:
    if (error)
    {
      v57 = v49;
      v48 = 0;
      *error = v49;
      goto LABEL_34;
    }

LABEL_33:
    v48 = 0;
    goto LABEL_34;
  }

  v41 = CryptoAEADCreate(v22, 1, v65, 32, &v64);
  v23->_encryptAEAD = v41;
  if (!v41)
  {
    if (v64)
    {
      v43 = v64;
    }

    else
    {
      v43 = 4294960596;
    }

    v60 = "CreateEncryptAEADFailed";
    goto LABEL_50;
  }

  ASPrintF(&__s, v32, v33, v34, v35, v36, v37, v38, nameCopy);
  v42 = __s;
  if (!__s)
  {
    v60 = "CreateDecryptInfoFailed";
    goto LABEL_44;
  }

  v64 = [(CUPairingSession *)self deriveKeyWithSaltPtr:"" saltLen:0 infoPtr:__s infoLen:strlen(__s) keyLen:32 outputKeyPtr:v65];
  free(v42);
  __s = 0;
  v43 = v64;
  if (v64)
  {
    v60 = "DeriveDecryptKeyFailed";
    goto LABEL_50;
  }

  v44 = CryptoAEADCreate(v22, 2, v65, 32, &v64);
  v23->_decryptAEAD = v44;
  if (!v44)
  {
    if (v64)
    {
      v43 = v64;
    }

    else
    {
      v43 = 4294960596;
    }

    v60 = "CreateDecryptAEADFailed";
    goto LABEL_50;
  }

  pairingStreams = self->_pairingStreams;
  if (!pairingStreams)
  {
    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = self->_pairingStreams;
    self->_pairingStreams = v46;

    pairingStreams = self->_pairingStreams;
  }

  [(NSMutableDictionary *)pairingStreams setObject:v23 forKeyedSubscript:nameCopy];
  v48 = v23;
  memset_s(v65, 0x20uLL, 0, 0x20uLL);
  v49 = 0;
  v23 = v48;
LABEL_34:
  v58 = v48;

  return v48;
}

- (void)_tryPIN:(id)n
{
  v29[1] = *MEMORY[0x1E69E9840];
  nCopy = n;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUPairingSession _tryPIN:]", 0x1Eu, "Try PIN\n", v4, v5, v6, v7, v27);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  pairingSession = self->_pairingSession;
  if (!pairingSession)
  {
    v16 = self->_ucat;
    if (v16->var0 <= 90)
    {
      if (v16->var0 == -1)
      {
        if (!_LogCategory_Initialize(v16, 0x5Au))
        {
          goto LABEL_17;
        }

        v16 = self->_ucat;
      }

      LogPrintF(v16, "[CUPairingSession _tryPIN:]", 0x5Au, "Try PIN without activate\n", v4, v5, v6, v7, v27);
    }

LABEL_17:
    LODWORD(v17) = -6745;
    goto LABEL_18;
  }

  v11 = ReplaceString(pairingSession + 50, pairingSession + 51, [nCopy UTF8String], 0xFFFFFFFFFFFFFFFFLL);
  if (!v11)
  {
    [(CUPairingSession *)self _receivedData:0 flags:0];
    goto LABEL_8;
  }

  v17 = v11;
  v18 = self->_ucat;
  if (v18->var0 <= 90)
  {
    if (v18->var0 == -1)
    {
      if (!_LogCategory_Initialize(v18, 0x5Au))
      {
        goto LABEL_18;
      }

      v18 = self->_ucat;
    }

    LogPrintF(v18, "[CUPairingSession _tryPIN:]", 0x5Au, "### Set PIN failed: %#m\n", v12, v13, v14, v15, v17);
  }

LABEL_18:
  v19 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696A768];
  v21 = v17;
  v28 = *MEMORY[0x1E696A578];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v17, 0, 0)}];
  v23 = v22;
  v24 = @"?";
  if (v22)
  {
    v24 = v22;
  }

  v29[0] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v26 = [v19 errorWithDomain:v20 code:v21 userInfo:v25];
  [(CUPairingSession *)self _completed:v26];

LABEL_8:
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__CUPairingSession_tryPIN___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_receivedData:(id)data flags:(unsigned int)flags
{
  v4 = *&flags;
  v70[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = dataCopy;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  pairingSession = self->_pairingSession;
  if (!pairingSession)
  {
    v68 = -6745;
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_39;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        goto LABEL_39;
      }

      ucat = self->_ucat;
    }

    v54 = "### Use before activate\n";
    v55 = 90;
    goto LABEL_57;
  }

  bytes = [dataCopy bytes];
  v14 = [v11 length];
  v17 = PairingSessionExchange(pairingSession, bytes, v14, &v67, &v66, &v65, v15, v16);
  v68 = v17;
  if (v17)
  {
    v52 = v17;
    if (v17 == -6771)
    {
      v68 = 0;
      ucat = self->_ucat;
      if (ucat->var0 > 30)
      {
        goto LABEL_39;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_39;
        }

        ucat = self->_ucat;
      }

      v54 = "Waiting for user input\n";
    }

    else
    {
      ucat = self->_ucat;
      if (ucat->var0 > 30)
      {
        goto LABEL_39;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_39;
        }

        ucat = self->_ucat;
      }

      v64 = v52;
      v54 = "### Pairing failed: %#m\n";
    }

    v55 = 30;
LABEL_57:
    LogPrintF(ucat, "[CUPairingSession _receivedData:flags:]", v55, v54, v7, v8, v9, v10, v64);
    goto LABEL_39;
  }

  v18 = v67;
  if (!v67)
  {
    if (!v65)
    {
      goto LABEL_41;
    }

LABEL_38:
    [(CUPairingSession *)self _completed:0];
    goto LABEL_39;
  }

  v19 = objc_alloc(MEMORY[0x1E695DEF0]);
  v20 = [v19 initWithBytesNoCopy:v18 length:v66 freeWhenDone:1];
  v67 = 0;
  if (!self->_sendMessageDataHandler)
  {
    sendDataHandler = self->_sendDataHandler;
    if (sendDataHandler)
    {
      sendDataHandler[2](sendDataHandler, v4, v20);
    }

LABEL_37:

    if (!v65)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(__CFString *)v21 setObject:v20 forKeyedSubscript:@"_pd"];
  if (v4)
  {
    v22 = self->_languageCode;
    if (v22)
    {
      firstObject = v22;
LABEL_8:
      [(__CFString *)v21 setObject:firstObject forKeyedSubscript:@"_lc"];
      goto LABEL_17;
    }

    if (self->_localize)
    {
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      firstObject = [preferredLanguages firstObject];

      if (firstObject)
      {
        goto LABEL_8;
      }
    }

    else
    {
      firstObject = 0;
    }

LABEL_17:
    v26 = self->_localeIdentifier;
    if (v26)
    {
      localeIdentifier = v26;
    }

    else
    {
      if (!self->_localize)
      {
        localeIdentifier = 0;
        goto LABEL_24;
      }

      autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
      localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];

      if (!localeIdentifier)
      {
        goto LABEL_24;
      }
    }

    [(__CFString *)v21 setObject:localeIdentifier forKeyedSubscript:@"_li"];
LABEL_24:
    if (self->_pinType)
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [(__CFString *)v21 setObject:v29 forKeyedSubscript:@"_pt"];
    }

    if (self->_localize)
    {
      v30 = MEMORY[0x1E696AD98];
      peerDeviceClass = self->_peerDeviceClass;
      if (peerDeviceClass <= 0)
      {
        if (GestaltGetDeviceClass_sOnce != -1)
        {
          v63 = MEMORY[0x1E696AD98];
          dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
          v30 = v63;
        }

        peerDeviceClass = GestaltGetDeviceClass_deviceClass;
      }

      v32 = [v30 numberWithInt:peerDeviceClass];
      [(__CFString *)v21 setObject:v32 forKeyedSubscript:@"_pdc"];

      peerProductType = self->_peerProductType;
      if (peerProductType)
      {
        [(__CFString *)v21 setObject:peerProductType forKeyedSubscript:@"_ppt"];
      }

      else
      {
        v34 = MGCopyAnswer();
        [(__CFString *)v21 setObject:v34 forKeyedSubscript:@"_ppt"];
      }
    }
  }

  DataMutable = OPACKEncoderCreateDataMutable(v21, 0, &v68);
  if (DataMutable)
  {
    v43 = DataMutable;
    (*(self->_sendMessageDataHandler + 2))();

    goto LABEL_37;
  }

  if (v68)
  {
    v56 = v68;
  }

  else
  {
    v56 = 4294960596;
  }

  v68 = v56;
  v57 = self->_ucat;
  if (v57->var0 > 30)
  {
    goto LABEL_71;
  }

  if (v57->var0 == -1)
  {
    if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      goto LABEL_71;
    }

    v57 = self->_ucat;
    v56 = v68;
  }

  v58 = NSPrintF("%#m", v36, v37, v38, v39, v40, v41, v42, v56);
  LogPrintF(v57, "[CUPairingSession _receivedData:flags:]", 0x1Eu, "### Encode message failed: %@", v59, v60, v61, v62, v58);

LABEL_71:
LABEL_39:
  if (v67)
  {
    free(v67);
  }

LABEL_41:
  v44 = v68;
  if (v68)
  {
    v45 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A768];
    v69 = *MEMORY[0x1E696A578];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v68, 0, 0)}];
    v48 = v47;
    v49 = @"?";
    if (v47)
    {
      v49 = v47;
    }

    v70[0] = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v51 = [v45 errorWithDomain:v46 code:v44 userInfo:v50];
    [(CUPairingSession *)self _completed:v51];
  }
}

- (void)receivedData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CUPairingSession_receivedData___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)receivedMessageData:(id)data
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CUPairingSession_receivedMessageData___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(dispatchQueue, v7);
}

void __40__CUPairingSession_receivedMessageData___block_invoke(uint64_t a1)
{
  HIDWORD(v31) = -6700;
  v7 = OPACKDecodeData(*(a1 + 32), 8u, &v31 + 1);
  if (!v7)
  {
    v26 = *(a1 + 40);
    v27 = *MEMORY[0x1E696A768];
    if (HIDWORD(v31))
    {
      v28 = HIDWORD(v31);
    }

    else
    {
      v28 = 4294960596;
    }

    v29 = "Decode message failed";
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = *(a1 + 40);
    v27 = *MEMORY[0x1E696A768];
    v29 = "Not a dictionary";
    v28 = 4294960540;
LABEL_25:
    v14 = NSErrorF_safe(v27, v28, v29, v2, v3, v4, v5, v6, v31);
    [v26 _completed:v14];
    goto LABEL_19;
  }

  TypeID = CFDataGetTypeID();
  v14 = CFDictionaryGetTypedValue(v7, @"_pd", TypeID, 0);
  if (v14)
  {
    v15 = CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue(v7, @"_lc", v15, 0);
    if (v16)
    {
      objc_storeStrong((*(a1 + 40) + 152), v16);
    }

    v17 = CFStringGetTypeID();
    v18 = CFDictionaryGetTypedValue(v7, @"_li", v17, 0);
    if (v18)
    {
      objc_storeStrong((*(a1 + 40) + 160), v18);
    }

    Value = CFDictionaryGetValue(v7, @"_pt");
    if (Value)
    {
      v32 = 0;
      v20 = CFGetInt64(Value, &v32);
      if (v20)
      {
        *(*(a1 + 40) + 44) = v20;
        v21 = *(*(a1 + 40) + 8);
        if (v21)
        {
          PairingSessionSetProperty(v21, @"setupCodeType", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
        }
      }
    }

    v22 = CFDictionaryGetValue(v7, @"_pdc");
    if (v22)
    {
      v33 = 0;
      v23 = CFGetInt64(v22, &v33);
      if (v23 >= 1)
      {
        *(*(a1 + 40) + 40) = v23;
      }
    }

    v24 = CFStringGetTypeID();
    v25 = CFDictionaryGetTypedValue(v7, @"_ppt", v24, 0);
    if (v25)
    {
      objc_storeStrong((*(a1 + 40) + 176), v25);
    }

    [*(a1 + 40) _receivedData:v14 flags:0];
  }

  else
  {
    v30 = *(a1 + 40);
    v16 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No pairing data", v9, v10, v11, v12, v13, v31);
    [v30 _completed:v16];
  }

LABEL_19:
}

- (void)_completed:(id)_completed
{
  _completedCopy = _completed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (_completedCopy)
  {
    p_completionHandler = &self->_completionHandler;
    if (!self->_completionHandler)
    {
      goto LABEL_19;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 50)
    {
      goto LABEL_18;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x32u))
      {
        goto LABEL_18;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUPairingSession _completed:]", 0x32u, "### Pairing failed: %{error}\n", v4, v5, v6, v7, _completedCopy);
LABEL_18:
    (*(*p_completionHandler + 2))();
    v16 = *p_completionHandler;
    *p_completionHandler = 0;

    goto LABEL_19;
  }

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    v11 = *(pairingSession + 35);
    if (v11)
    {
      CFRetain(*(pairingSession + 35));
    }

    aclActual = self->_aclActual;
    self->_aclActual = v11;

    v13 = PairingSessionCopyPeerInfo(self->_pairingSession, 0);
    peerInfo = self->_peerInfo;
    self->_peerInfo = v13;
  }

  p_completionHandler = &self->_completionHandler;
  if (self->_completionHandler)
  {
    v15 = self->_ucat;
    if (v15->var0 <= 30)
    {
      if (v15->var0 == -1)
      {
        if (!_LogCategory_Initialize(v15, 0x1Eu))
        {
          goto LABEL_18;
        }

        v15 = self->_ucat;
      }

      LogPrintF(v15, "[CUPairingSession _completed:]", 0x1Eu, "Pairing completed\n", v4, v5, v6, v7, v17);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_activate
{
  v64[1] = *MEMORY[0x1E69E9840];
  memset(v62, 0, sizeof(v62));
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    sessionType = self->_sessionType;
    if (sessionType > 0xE)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1E73A4CA0[sessionType];
    }

    v10 = CUPrintFlags(self->_flags, byte_191FFADB4, 1);
    v11 = CUPrintFlags(self->_extraFlags, byte_191FF9E2A, 1);
    [(NSString *)self->_fixedPIN length];
    LogPrintF_safe(ucat, "[CUPairingSession _activate]", 0x1Eu, "Activate: sessionType=%s, flags=%@, extraFlags=%@, pinType=%s, fixedPIN=%s", v12, v13, v14, v15, v9);
  }

LABEL_9:
  if (!self->_completionHandler)
  {
    v44 = self->_ucat;
    if (v44->var0 <= 90)
    {
      if (v44->var0 == -1)
      {
        if (!_LogCategory_Initialize(v44, 0x5Au))
        {
          goto LABEL_86;
        }

        v44 = self->_ucat;
      }

      v45 = "### No completionHandler\n";
      goto LABEL_76;
    }

LABEL_86:
    LODWORD(v46) = -6745;
    goto LABEL_87;
  }

  if (!self->_sendDataHandler && !self->_sendMessageDataHandler)
  {
    v44 = self->_ucat;
    if (v44->var0 <= 90)
    {
      if (v44->var0 == -1)
      {
        if (!_LogCategory_Initialize(v44, 0x5Au))
        {
          goto LABEL_86;
        }

        v44 = self->_ucat;
      }

      v45 = "### No sendDataHandler\n";
LABEL_76:
      LogPrintF(v44, "[CUPairingSession _activate]", 0x5Au, v45, v2, v3, v4, v5, v59);
      goto LABEL_86;
    }

    goto LABEL_86;
  }

  memset(&v62[8], 0, 64);
  *v62 = self;
  if (self->_promptForPINHandler)
  {
    *&v62[24] = _promptForPIN;
  }

  if ((self->_flags & 0x80) != 0)
  {
    *&v62[8] = _showPIN;
LABEL_21:
    *&v62[16] = _hidePIN;
    goto LABEL_22;
  }

  if (self->_showPINHandler || self->_showPINHandlerEx)
  {
    *&v62[8] = _showPIN;
  }

  if (self->_hidePINHandler)
  {
    goto LABEL_21;
  }

LABEL_22:
  v16 = PairingSessionCreate(&self->_pairingSession, v62, self->_sessionType);
  if (v16)
  {
    LODWORD(v46) = v16;
    v47 = self->_ucat;
    if (v47->var0 <= 90)
    {
      if (v47->var0 == -1)
      {
        if (!_LogCategory_Initialize(v47, 0x5Au))
        {
          goto LABEL_87;
        }

        v47 = self->_ucat;
      }

      v48 = self->_sessionType;
      if (v48 > 0xE)
      {
        v49 = "?";
      }

      else
      {
        v49 = off_1E73A4CA0[v48];
      }

      LogPrintF(v47, "[CUPairingSession _activate]", 0x5Au, "### Create pairing session type %s failed: %#m\n", v17, v18, v19, v20, v49);
    }
  }

  else
  {
    is_recovery = os_variant_is_recovery();
    pairingSession = self->_pairingSession;
    flags = self->_flags;
    if (!is_recovery)
    {
      flags |= 4u;
    }

    *(pairingSession + 25) = flags;
    *(pairingSession + 13) = self->_extraFlags;
    *(pairingSession + 2) = self->_ucat;
    if ([(NSDictionary *)self->_acl count])
    {
      PairingSessionSetACL(self->_pairingSession, self->_acl);
    }

    if (![(NSString *)self->_fixedPIN length]|| (v24 = ReplaceString(self->_pairingSession + 50, self->_pairingSession + 51, [(NSString *)self->_fixedPIN UTF8String], 0xFFFFFFFFFFFFFFFFLL), !v24))
    {
      additionalPeerInfo = self->_additionalPeerInfo;
      if (additionalPeerInfo)
      {
        PairingSessionSetAdditionalPeerInfo(self->_pairingSession, additionalPeerInfo);
      }

      additionalSelfInfo = self->_additionalSelfInfo;
      if (additionalSelfInfo)
      {
        PairingSessionSetAdditionalSelfInfo(self->_pairingSession, additionalSelfInfo);
      }

      v31 = self->_allowedMACAddresses;
      if (v31)
      {
        PairingSessionSetProperty(self->_pairingSession, @"allowedMACAddresses", v31);
      }

      v32 = self->_appInfoSelf;
      if (v32)
      {
        PairingSessionSetProperty(self->_pairingSession, @"appInfoSelf", v32);
      }

      v33 = self->_groupInfoSelf;
      if (v33)
      {
        PairingSessionSetProperty(self->_pairingSession, @"groupInfoSelf", v33);
      }

      if (self->_pinType)
      {
        PairingSessionSetProperty(self->_pairingSession, @"setupCodeType", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
      }

      myAppleID = self->_myAppleID;
      if (myAppleID)
      {
        PairingSessionSetMyAppleID(self->_pairingSession, myAppleID);
      }

      myAppleIDInfoClient = self->_myAppleIDInfoClient;
      if (myAppleIDInfoClient)
      {
        PairingSessionSetMyAppleIDInfoClient(self->_pairingSession, myAppleIDInfoClient);
      }

      peerAppleID = self->_peerAppleID;
      if (peerAppleID)
      {
        PairingSessionSetPeerAppleID(self->_pairingSession, peerAppleID);
      }

      selfAppFlags = self->_selfAppFlags;
      if (selfAppFlags)
      {
        *(self->_pairingSession + 27) = selfAppFlags;
      }

      if (self->_signDataHandler)
      {
        v38 = self->_pairingSession;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __29__CUPairingSession__activate__block_invoke;
        v61[3] = &unk_1E73A39B0;
        v61[4] = self;
        PairingSessionSetSignBytesHandler_b(v38, v61);
      }

      if (self->_verifySignatureHandler)
      {
        v39 = self->_pairingSession;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __29__CUPairingSession__activate__block_invoke_2;
        v60[3] = &unk_1E73A39B0;
        v60[4] = self;
        PairingSessionSetVerifySignatureHandler_b(v39, v60);
      }

      v40 = _Block_copy(self->_copyIdentityHandler);
      if (v40)
      {
        PairingSessionSetCopyIdentityHandler_b(self->_pairingSession, v40);
      }

      v41 = _Block_copy(self->_findPeerHandler);
      if (v41)
      {
        PairingSessionSetFindPeerHandler_b(self->_pairingSession, v41);
      }

      v42 = _Block_copy(self->_savePeerHandler);
      if (v42)
      {
        PairingSessionSetSavePeerHandler_b(self->_pairingSession, v42);
      }

      v43 = self->_sessionType;
      if (v43 <= 0xD && ((1 << v43) & 0x2A2A) != 0)
      {
        [(CUPairingSession *)self _receivedData:0 flags:1];
      }

      return;
    }

    v46 = v24;
    v50 = self->_ucat;
    if (v50->var0 <= 90)
    {
      if (v50->var0 == -1)
      {
        if (!_LogCategory_Initialize(v50, 0x5Au))
        {
          goto LABEL_87;
        }

        v50 = self->_ucat;
      }

      LogPrintF(v50, "[CUPairingSession _activate]", 0x5Au, "### Set fixed PIN failed: %#m\n", v25, v26, v27, v28, v46);
    }
  }

LABEL_87:
  v51 = MEMORY[0x1E696ABC0];
  v52 = *MEMORY[0x1E696A768];
  v53 = v46;
  v63 = *MEMORY[0x1E696A578];
  v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v46, 0, 0)}];
  v55 = v54;
  v56 = @"?";
  if (v54)
  {
    v56 = v54;
  }

  v64[0] = v56;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v58 = [v51 errorWithDomain:v52 code:v53 userInfo:v57];
  [(CUPairingSession *)self _completed:v58];
}

uint64_t __29__CUPairingSession__activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v9 = _Block_copy(*(*(a1 + 32) + 296));
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
    v20 = 0;
    v11 = v9[2](v9, a2, v10, &v20);
    v12 = v20;
    v13 = v12;
    if (v11)
    {
      if ([v11 length] == 64)
      {
        v14 = [v11 bytes];
        v15 = 0;
        v16 = v14[3];
        v18 = *v14;
        v17 = v14[1];
        a5[2] = v14[2];
        a5[3] = v16;
        *a5 = v18;
        a5[1] = v17;
      }

      else
      {
        v15 = 4294960553;
      }
    }

    else if (v12)
    {
      v15 = NSErrorToOSStatusEx(v12, 0);
    }

    else
    {
      v15 = 4294960596;
    }
  }

  else
  {
    v15 = 4294960573;
  }

  return v15;
}

uint64_t __29__CUPairingSession__activate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = _Block_copy(*(*(a1 + 32) + 304));
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a4];
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a5 length:64];
    v17 = 0;
    v12 = v9[2](v9, a2, v10, v11, &v17);
    v13 = v17;
    v14 = v13;
    if (v12)
    {
      v15 = 0;
    }

    else if (v13)
    {
      v15 = NSErrorToOSStatusEx(v13, 0);
    }

    else
    {
      v15 = 4294960596;
    }
  }

  else
  {
    v15 = 4294960573;
  }

  return v15;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUPairingSession_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (NSDictionary)groupInfoPeer
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    v3 = PairingSessionCopyProperty(pairingSession, @"groupInfoPeer", 0);
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)appInfoPeer
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    v3 = PairingSessionCopyProperty(pairingSession, @"appInfoPeer", 0);
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelfAppFlags:(unint64_t)flags
{
  self->_selfAppFlags = flags;
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    *(pairingSession + 27) = flags;
  }
}

- (unint64_t)peerAppFlags
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    return *(pairingSession + 26);
  }

  else
  {
    return 0;
  }
}

- (CUPairedPeer)pairedPeer
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    v3 = *(pairingSession + 34);
    if (v3)
    {
      v4 = v3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE88F0;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (CUPairingSession)init
{
  v4.receiver = self;
  v4.super_class = CUPairingSession;
  v2 = [(CUPairingSession *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUPairingSession;
  }

  return v2;
}

@end