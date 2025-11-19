@interface CURangingSession
- (CURangingSession)init;
- (void)_invalidate;
- (void)_invalidated;
- (void)_update;
- (void)_updateInitiator;
- (void)_updatePeers;
- (void)_updateResponder;
- (void)activate;
- (void)addSample:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)session:(id)a3 didChangeProximitySensorState:(unint64_t)a4;
- (void)session:(id)a3 didEstimateScores:(id)a4;
- (void)session:(id)a3 didFailwithError:(id)a4;
- (void)setLabel:(id)a3;
- (void)setPeers:(id)a3;
@end

@implementation CURangingSession

- (void)session:(id)a3 didChangeProximitySensorState:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  v7 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  prRangingSession = self->_prRangingSession;

  if (prRangingSession != v7)
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
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    if (a4 > 3)
    {
      v14 = "?";
    }

    else
    {
      v14 = off_1E73A3B58[a4];
    }

    LogPrintF(ucat, "[CURangingSession session:didChangeProximitySensorState:]", 0x1Eu, "PR sensor state changed: %s\n", v9, v10, v11, v12, v14);
  }

LABEL_11:
  statusFlags = self->_statusFlags;
  if (a4 == 3)
  {
    v16 = (statusFlags & 0xFFFFFFFE) + 1;
  }

  else
  {
    v16 = statusFlags & 0xFFFFFFFE;
  }

  if (v16 == statusFlags)
  {
    v17 = self->_ucat;
    if (v17->var0 > 10)
    {
      return;
    }

    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0xAu))
      {
        return;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[CURangingSession session:didChangeProximitySensorState:]", 0xAu, "Status unchanged: %#{flags}\n", v9, v10, v11, v12, statusFlags);
    return;
  }

  self->_statusFlags = v16;
  v18 = self->_ucat;
  if (v18->var0 > 30)
  {
    goto LABEL_24;
  }

  if (v18->var0 == -1)
  {
    if (!_LogCategory_Initialize(v18, 0x1Eu))
    {
      goto LABEL_24;
    }

    v18 = self->_ucat;
  }

  LogPrintF(v18, "[CURangingSession session:didChangeProximitySensorState:]", 0x1Eu, "Status changed: %#{flags} -> %#{flags}\n", v9, v10, v11, v12, statusFlags);
LABEL_24:
  v19 = _Block_copy(self->_statusChangedHandler);
  if (v19)
  {
    v20 = v19;
    v19[2]();
    v19 = v20;
  }
}

- (void)session:(id)a3 didFailwithError:(id)a4
{
  v18 = a4;
  dispatchQueue = self->_dispatchQueue;
  v7 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  prRangingSession = self->_prRangingSession;

  v13 = v18;
  if (prRangingSession != v7)
  {
    goto LABEL_9;
  }

  self->_prRangingInitiated = 0;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    v15 = v18;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
      v15 = v18;
    }

    LogPrintF(ucat, "[CURangingSession session:didFailwithError:]", 0x5Au, "### PR Ranging failed: %{error}\n", v9, v10, v11, v12, v15);
  }

LABEL_6:
  v16 = _Block_copy(self->_errorHandler);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v18);
  }

  v13 = v18;
LABEL_9:
}

- (void)session:(id)a3 didEstimateScores:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_prRangingSession != v6)
  {
    goto LABEL_30;
  }

  v8 = _Block_copy(self->_measurementHandlerEx);
  if (!v8)
  {
    goto LABEL_29;
  }

  v40 = self;
  v39 = mach_absolute_time();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = v7;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v38 = *v42;
  do
  {
    v11 = 0;
    do
    {
      if (*v42 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v41 + 1) + 8 * v11);
      v13 = objc_alloc_init(CURangingPeer);
      v14 = [v12 btAddress];
      [(CURangingPeer *)v13 setDeviceAddress:v14];

      v15 = objc_alloc_init(CURangingMeasurement);
      [(CURangingMeasurement *)v15 setTimestampTicks:v39];
      if (objc_opt_respondsToSelector())
      {
        v16 = [v12 scoreId];
      }

      else
      {
        v16 = 0;
      }

      v35 = v16;
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu"];
      [(CURangingMeasurement *)v15 setIdentifier:v17];

      v18 = [v12 range];
      v19 = v18;
      if (v18)
      {
        [v18 measurement];
        [(CURangingMeasurement *)v15 setDistanceMeters:?];
        [v19 uncertainty];
        [(CURangingMeasurement *)v15 setDistanceError:?];
        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v12 angle];
      v22 = v21;
      if (v21)
      {
        [v21 measurement];
        [(CURangingMeasurement *)v15 setHorizontalAngle:?];
        [v22 uncertainty];
        [(CURangingMeasurement *)v15 setHorizontalError:?];
        v20 |= 2u;
      }

      [v12 score];
      [(CURangingMeasurement *)v15 setPtsScore:?];
      [(CURangingMeasurement *)v15 setFlags:v20 | 8u];
      ucat = v40->_ucat;
      if (ucat->var0 <= 10)
      {
        if (ucat->var0 != -1)
        {
          goto LABEL_18;
        }

        if (_LogCategory_Initialize(v40->_ucat, 0xAu))
        {
          ucat = v40->_ucat;
LABEL_18:
          v24 = [(CURangingPeer *)v13 deviceAddress];
          LogPrintF(ucat, "[CURangingSession session:didEstimateScores:]", 0xAu, "Ranging measurement: peer %@, %@\n", v25, v26, v27, v28, v24);
        }
      }

      v8[2](v8, v13, v15);

      ++v11;
    }

    while (v10 != v11);
    v29 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    v10 = v29;
  }

  while (v29);
LABEL_24:

  v7 = v36;
  if (![obj count])
  {
    v34 = v40->_ucat;
    if (v34->var0 <= 10)
    {
      if (v34->var0 != -1)
      {
        goto LABEL_27;
      }

      if (_LogCategory_Initialize(v34, 0xAu))
      {
        v34 = v40->_ucat;
LABEL_27:
        LogPrintF(v34, "[CURangingSession session:didEstimateScores:]", 0xAu, "Ranging measurement: no devices\n", v30, v31, v32, v33, v35);
      }
    }
  }

LABEL_29:

LABEL_30:
}

- (void)_updatePeers
{
  v96 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v63 = v2;
  obj = v2->_peersRanging;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v86 objects:v95 count:16];
  v4 = 0;
  if (v3)
  {
    v59 = *v87;
    do
    {
      v61 = v3;
      for (i = 0; i != v61; ++i)
      {
        if (*v87 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v86 + 1) + 8 * i);
        v7 = [v6 contactKey];
        if (v7)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v8 = v63->_peers;
          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v82 objects:v94 count:16];
          if (v9)
          {
            v10 = *v83;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v83 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = [*(*(&v82 + 1) + 8 * j) deviceAddress];
                v13 = [v12 isEqual:v7];

                if (v13)
                {

                  goto LABEL_19;
                }
              }

              v9 = [(NSArray *)v8 countByEnumeratingWithState:&v82 objects:v94 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

          v14 = v4;
          if (!v4)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v4 = v14;
          [v14 addObject:v6];
        }

LABEL_19:
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v3);
  }

  v55 = v4;

  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obja = v63->_peers;
  v15 = [(NSArray *)obja countByEnumeratingWithState:&v78 objects:v93 count:16];
  v16 = 0;
  if (v15)
  {
    v60 = *v79;
    do
    {
      v62 = v15;
      for (k = 0; k != v62; ++k)
      {
        if (*v79 != v60)
        {
          objc_enumerationMutation(obja);
        }

        v18 = [*(*(&v78 + 1) + 8 * k) deviceAddress];
        if (v18)
        {
          v19 = [objc_alloc(getPRTrustedContactClass[0]()) initWithContactKey:v18];
          if (v19)
          {
            [(NSArray *)v56 addObject:v19];
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v20 = v63->_peersRanging;
            v21 = [(NSArray *)v20 countByEnumeratingWithState:&v74 objects:v92 count:16];
            if (v21)
            {
              v22 = *v75;
              while (2)
              {
                for (m = 0; m != v21; ++m)
                {
                  if (*v75 != v22)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = [*(*(&v74 + 1) + 8 * m) contactKey];
                  v25 = [v24 isEqual:v18];

                  if (v25)
                  {

                    goto LABEL_40;
                  }
                }

                v21 = [(NSArray *)v20 countByEnumeratingWithState:&v74 objects:v92 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

            v26 = v16;
            if (!v16)
            {
              v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v16 = v26;
            [v26 addObject:v19];
          }

LABEL_40:
        }
      }

      v15 = [(NSArray *)obja countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v15);
  }

  peersRanging = v63->_peersRanging;
  v63->_peersRanging = v56;

  v28 = v16;
  objc_sync_exit(v63);

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v29 = v55;
  v30 = [v29 countByEnumeratingWithState:&v70 objects:v91 count:16];
  if (!v30)
  {
    goto LABEL_56;
  }

  v31 = *v71;
  do
  {
    v32 = 0;
    do
    {
      if (*v71 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v33 = *(*(&v70 + 1) + 8 * v32);
      v38 = [v33 contactKey];
      p_var0 = &v63->_ucat->var0;
      if (*p_var0 <= 30)
      {
        if (*p_var0 != -1)
        {
          goto LABEL_50;
        }

        if (_LogCategory_Initialize(p_var0, 0x1Eu))
        {
          p_var0 = &v63->_ucat->var0;
LABEL_50:
          LogPrintF(p_var0, "[CURangingSession _updatePeers]", 0x1Eu, "Responder remove peer: %@\n", v34, v35, v36, v37, v38);
        }
      }

      prResponder = v63->_prResponder;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __32__CURangingSession__updatePeers__block_invoke;
      v69[3] = &unk_1E73A40B8;
      v69[4] = v63;
      v69[5] = v38;
      [(PRContactAllowlist *)prResponder removeTrustedContact:v33 withCompletionHandler:v69];

      ++v32;
    }

    while (v30 != v32);
    v41 = [v29 countByEnumeratingWithState:&v70 objects:v91 count:16];
    v30 = v41;
  }

  while (v41);
LABEL_56:

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v42 = v28;
  v43 = [v42 countByEnumeratingWithState:&v65 objects:v90 count:16];
  if (!v43)
  {
    goto LABEL_69;
  }

  v44 = *v66;
  while (2)
  {
    v45 = 0;
    while (2)
    {
      if (*v66 != v44)
      {
        objc_enumerationMutation(v42);
      }

      v46 = *(*(&v65 + 1) + 8 * v45);
      v51 = [v46 contactKey];
      v52 = &v63->_ucat->var0;
      if (*v52 <= 30)
      {
        if (*v52 != -1)
        {
          goto LABEL_63;
        }

        if (_LogCategory_Initialize(v52, 0x1Eu))
        {
          v52 = &v63->_ucat->var0;
LABEL_63:
          LogPrintF(v52, "[CURangingSession _updatePeers]", 0x1Eu, "Responder add peer: %@\n", v47, v48, v49, v50, v51);
        }
      }

      v53 = v63->_prResponder;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __32__CURangingSession__updatePeers__block_invoke_2;
      v64[3] = &unk_1E73A40B8;
      v64[4] = v63;
      v64[5] = v51;
      [(PRContactAllowlist *)v53 addTrustedContact:v46 withCompletionHandler:v64];

      if (v43 != ++v45)
      {
        continue;
      }

      break;
    }

    v54 = [v42 countByEnumeratingWithState:&v65 objects:v90 count:16];
    v43 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_69:
}

uint64_t __32__CURangingSession__updatePeers__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (!v5 && (a2 & 1) != 0)
  {
    goto LABEL_7;
  }

  v5 = *(*(a1 + 32) + 48);
  if (*v5 > 90)
  {
    goto LABEL_7;
  }

  v12 = v10;
  if (*v5 != -1)
  {
    goto LABEL_5;
  }

  v5 = _LogCategory_Initialize(v5, 0x5Au);
  v10 = v12;
  if (v5)
  {
    v5 = *(*(a1 + 32) + 48);
LABEL_5:
    v5 = LogPrintF(v5, "[CURangingSession _updatePeers]_block_invoke", 0x5Au, "### Responder remove peer failed: %@, %{error}\n", v6, v7, v8, v9, *(a1 + 40));
    v10 = v12;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v5, v10);
}

uint64_t __32__CURangingSession__updatePeers__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (!v5 && (a2 & 1) != 0)
  {
    goto LABEL_7;
  }

  v5 = *(*(a1 + 32) + 48);
  if (*v5 > 90)
  {
    goto LABEL_7;
  }

  v12 = v10;
  if (*v5 != -1)
  {
    goto LABEL_5;
  }

  v5 = _LogCategory_Initialize(v5, 0x5Au);
  v10 = v12;
  if (v5)
  {
    v5 = *(*(a1 + 32) + 48);
LABEL_5:
    v5 = LogPrintF(v5, "[CURangingSession _updatePeers]_block_invoke_2", 0x5Au, "### Responder add peer failed: %@, %{error}\n", v6, v7, v8, v9, *(a1 + 40));
    v10 = v12;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v5, v10);
}

- (void)_updateResponder
{
  if (!self->_prResponder)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CURangingSession _updateResponder]", 0x1Eu, "PR ranging responder start\n", v2, v3, v4, v5, v10);
    }

LABEL_6:
    v8 = objc_alloc_init(getPRContactAllowlistClass[0]());
    prResponder = self->_prResponder;
    self->_prResponder = v8;
  }

  if (self->_peersChanged)
  {
    self->_peersChanged = 0;

    [(CURangingSession *)self _updatePeers];
  }
}

- (void)_updateInitiator
{
  prRangingSession = self->_prRangingSession;
  if (!prRangingSession)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CURangingSession _updateInitiator]", 0x1Eu, "PR ranging initiator start\n", v2, v3, v4, v5, v12);
    }

LABEL_6:
    v9 = [objc_alloc(getPRSharingSessionClass[0]()) initWithDelegate:self delegateQueue:self->_dispatchQueue];
    v10 = self->_prRangingSession;
    self->_prRangingSession = v9;
  }

  if ((self->_flags & 1) == 0 && !self->_prRangingInitiated)
  {
    if (!prRangingSession)
    {
      goto LABEL_14;
    }

    v11 = self->_ucat;
    if (v11->var0 > 30)
    {
      goto LABEL_14;
    }

    if (v11->var0 == -1)
    {
      if (!_LogCategory_Initialize(v11, 0x1Eu))
      {
        goto LABEL_14;
      }

      v11 = self->_ucat;
    }

    LogPrintF(v11, "[CURangingSession _updateInitiator]", 0x1Eu, "PR ranging initiator restart\n", v2, v3, v4, v5, v12);
LABEL_14:
    [(PRSharingSession *)self->_prRangingSession startInitiating];
    self->_prRangingInitiated = 1;
  }
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    if (self->_flags)
    {
      [(CURangingSession *)self _updateResponder];
    }

    else
    {
      [(CURangingSession *)self _updateInitiator];
    }
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateCalled = 1;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    measurementHandler = self->_measurementHandler;
    self->_measurementHandler = 0;

    measurementHandlerEx = self->_measurementHandlerEx;
    self->_measurementHandlerEx = 0;

    statusChangedHandler = self->_statusChangedHandler;
    self->_statusChangedHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CURangingSession _invalidated]", 0x1Eu, "Invalidated\n", v9, v10, v11, v12, v15);
    }
  }
}

- (void)_invalidate
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_prRangingInitiated)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CURangingSession _invalidate]", 0x1Eu, "PR ranging initiator stop\n", v2, v3, v4, v5, v25);
    }

LABEL_6:
    [(PRSharingSession *)self->_prRangingSession stopInitiating];
    self->_prRangingInitiated = 0;
  }

  prRangingSession = self->_prRangingSession;
  self->_prRangingSession = 0;

  if (self->_prResponder)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_peersRanging;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = v10;
    v12 = *v28;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v19 = [v14 contactKey];
        v20 = self->_ucat;
        if (v20->var0 <= 30)
        {
          if (v20->var0 != -1)
          {
            goto LABEL_15;
          }

          if (_LogCategory_Initialize(v20, 0x1Eu))
          {
            v20 = self->_ucat;
LABEL_15:
            LogPrintF(v20, "[CURangingSession _invalidate]", 0x1Eu, "Responder remove peer on invalidate: %@\n", v15, v16, v17, v18, v19);
          }
        }

        prResponder = self->_prResponder;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __31__CURangingSession__invalidate__block_invoke;
        v26[3] = &unk_1E73A40B8;
        v26[4] = self;
        v26[5] = v19;
        [(PRContactAllowlist *)prResponder removeTrustedContact:v14 withCompletionHandler:v26];

        ++v13;
      }

      while (v11 != v13);
      v22 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v11 = v22;
      if (!v22)
      {
LABEL_21:

        v23 = self->_prResponder;
        self->_prResponder = 0;

        break;
      }
    }
  }

  peersRanging = self->_peersRanging;
  self->_peersRanging = 0;

  [(CURangingSession *)self _invalidated];
}

uint64_t __31__CURangingSession__invalidate__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (!v5 && (a2 & 1) != 0)
  {
    goto LABEL_7;
  }

  v5 = *(*(a1 + 32) + 48);
  if (*v5 > 90)
  {
    goto LABEL_7;
  }

  v12 = v10;
  if (*v5 != -1)
  {
    goto LABEL_5;
  }

  v5 = _LogCategory_Initialize(v5, 0x5Au);
  v10 = v12;
  if (v5)
  {
    v5 = *(*(a1 + 32) + 48);
LABEL_5:
    v5 = LogPrintF(v5, "[CURangingSession _invalidate]_block_invoke", 0x5Au, "### Responder remove peer failed: %@, %{error}\n", v6, v7, v8, v9, *(a1 + 40));
    v10 = v12;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v5, v10);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CURangingSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__CURangingSession_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 9))
  {
    return result;
  }

  v11 = result;
  *(v10 + 9) = 1;
  v12 = *(result + 32);
  v13 = v12[6];
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      v14 = _LogCategory_Initialize(v13, 0x1Eu);
      v12 = *(v11 + 32);
      if (!v14)
      {
        goto LABEL_6;
      }

      v13 = v12[6];
    }

    LogPrintF(v13, "[CURangingSession invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:

  return [v12 _invalidate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CURangingSession_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__CURangingSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CURangingSession activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 48);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v9 + 8) = 1;
  v12 = *(a1 + 32);

  return [v12 _update];
}

- (void)addSample:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CURangingSession_addSample___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __30__CURangingSession_addSample___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 32) + 48);
  if (*v9 <= 10)
  {
    if (*v9 != -1)
    {
LABEL_3:
      LogPrintF(v9, "[CURangingSession addSample:]_block_invoke", 0xAu, "Add sample: %@\n", a5, a6, a7, a8, *(a1 + 40));
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v9, 0xAu))
    {
      v9 = *(*(a1 + 32) + 48);
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = [*(a1 + 40) deviceAddress];
  if (v10)
  {
    v11 = [*(a1 + 40) deviceModel];
    if (!v11)
    {
LABEL_13:

      goto LABEL_14;
    }

    v12 = *(*(a1 + 32) + 40);
    v13 = [*(a1 + 40) rawRSSI];
    v14 = [*(a1 + 40) channel];
    v22 = 0;
    v15 = [v12 addRssiSample:v14 channel:v10 forPeer:v11 peerDeviceModel:&v22 withError:v13];
    v20 = v22;
    if ((v15 & 1) == 0)
    {
      v21 = *(*(a1 + 32) + 48);
      if (*v21 <= 90)
      {
        if (*v21 == -1)
        {
          if (!_LogCategory_Initialize(v21, 0x5Au))
          {
            goto LABEL_12;
          }

          v21 = *(*(a1 + 32) + 48);
        }

        LogPrintF(v21, "[CURangingSession addSample:]_block_invoke", 0x5Au, "### Add sample failed: %@, %{error}\n", v16, v17, v18, v19, *(a1 + 40));
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
}

- (void)setPeers:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  peers = v6->_peers;
  v8 = v5;
  v9 = peers;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_14;
  }

  if ((v8 != 0) != (v9 == 0))
  {
    v11 = [(NSArray *)v8 isEqual:v9];

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  ucat = v6->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(v6->_ucat, 0x1Eu))
      {
        goto LABEL_11;
      }

      ucat = v6->_ucat;
    }

    v13 = [(NSArray *)v6->_peers count];
    [(NSArray *)v8 count];
    LogPrintF(ucat, "[CURangingSession setPeers:]", 0x1Eu, "Update peers: %d -> %d total\n", v14, v15, v16, v17, v13);
  }

LABEL_11:
  objc_storeStrong(&v6->_peers, v5);
  if (!v6->_peersChanged)
  {
    v6->_peersChanged = 1;
    if (v6->_activateCalled)
    {
      dispatchQueue = v6->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__CURangingSession_setPeers___block_invoke;
      block[3] = &unk_1E73A4F68;
      block[4] = v6;
      dispatch_async(dispatchQueue, block);
    }
  }

LABEL_14:
  objc_sync_exit(v6);
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA078;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
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
  v4.super_class = CURangingSession;
  [(CURangingSession *)&v4 dealloc];
}

- (CURangingSession)init
{
  v5.receiver = self;
  v5.super_class = CURangingSession;
  v2 = [(CURangingSession *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CURangingSession;
    v3 = v2;
  }

  return v2;
}

@end