@interface CUNetLinkManager
- (CUNetLinkManager)init;
- (id)descriptionWithLevel:(int)level;
- (void)_invalidate;
- (void)_invalidated;
- (void)_monitorEnsureStarted;
- (void)_monitorEnsureStopped;
- (void)_monitorReadPacket:(int)packet;
- (void)_monitorSendPacketToEndpoint:(id)endpoint;
- (void)_monitorSetupSocket:(int)socket;
- (void)_update;
- (void)_updateARP;
- (void)_updateEndpoint:(id)endpoint state:(int)state;
- (void)_updateEndpoints;
- (void)_updateNDP;
- (void)activate;
- (void)addEndpoint:(id)endpoint;
- (void)dealloc;
- (void)invalidate;
- (void)removeEndpoint:(id)endpoint;
- (void)setLabel:(id)label;
@end

@implementation CUNetLinkManager

- (void)_monitorSendPacketToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = *(endpointCopy + 17) + 1;
  *(endpointCopy + 17) = v5;
  v18 = v5;
  v6 = (endpointCopy + 8);
  v7 = endpointCopy[9];
  if (v7 == 30)
  {
    v8 = 28;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 == 2;
  v10 = 48;
  if (v9)
  {
    v10 = 32;
    v11 = 16;
  }

  else
  {
    v11 = v8;
  }

  if (sendto(*(&self->super.isa + v10), &v18, 4uLL, 0, v6, v11) == 4 || *__error() && !*__error())
  {
    ++self->_txCount;
    ucat = self->_ucat;
    if (ucat->var0 <= 20)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x14u))
        {
          goto LABEL_19;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUNetLinkManager _monitorSendPacketToEndpoint:]", 0x14u, "Probe sent: %##a, S# %u, T# %u, E# %u\n", v12, v13, v14, v15, v6);
    }
  }

  else
  {
    ++self->_txErrors;
    v17 = self->_ucat;
    if (v17->var0 <= 50)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize(v17, 0x32u))
        {
          goto LABEL_19;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "[CUNetLinkManager _monitorSendPacketToEndpoint:]", 0x32u, "### Probe send failed: %##a, S# %u, T# %u, E# %u, %#m\n", v12, v13, v14, v15, v6);
    }
  }

LABEL_19:
}

- (void)_monitorReadPacket:(int)packet
{
  v13 = 0;
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  if (!SocketRecvFrom(packet, &v13, 4, &v12, v10, 0x1Cu, 0, 0, 0, 0))
  {
    ++self->_rxCount;
    ucat = self->_ucat;
    if (ucat->var0 > 9)
    {
      return;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 9u))
      {
        return;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUNetLinkManager _monitorReadPacket:]", 9u, "Probe recv: %##a, %zu bytes, R# %u, S# %u\n", v4, v5, v6, v7, v10);
    return;
  }

  v8 = self->_ucat;
  if (v8->var0 <= 90)
  {
    if (v8->var0 != -1)
    {
LABEL_4:
      LogPrintF(v8, "[CUNetLinkManager _monitorReadPacket:]", 0x5Au, "### Probe recv failed: R# %u, %#m\n", v4, v5, v6, v7, self->_rxCount);
      return;
    }

    if (_LogCategory_Initialize(v8, 0x5Au))
    {
      v8 = self->_ucat;
      goto LABEL_4;
    }
  }
}

- (void)_monitorSetupSocket:(int)socket
{
  v7 = *&socket;
  memset(v68, 0, 28);
  if (socket == 2)
  {
    v9 = "IPv4";
    v10 = 40;
    v11 = 32;
  }

  else
  {
    if (socket != 30)
    {
      ucat = self->_ucat;
      if (ucat->var0 > 90)
      {
        return;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket bad family: %d\n", v3, v4, v5, v6, v7);
      return;
    }

    v9 = "IPv6";
    v10 = 56;
    v11 = 48;
  }

  v12 = self->_ucat;
  if (v12->var0 <= 30)
  {
    if (v12->var0 == -1)
    {
      if (!_LogCategory_Initialize(v12, 0x1Eu))
      {
        goto LABEL_12;
      }

      v12 = self->_ucat;
    }

    LogPrintF(v12, "[CUNetLinkManager _monitorSetupSocket:]", 0x1Eu, "Monitor setup socket %s\n", v3, v4, v5, v6, v9);
  }

LABEL_12:
  v14 = socket(v7, 2, 17);
  if (v14 < 0 && (!*__error() || *__error()))
  {
    v24 = self->_ucat;
    if (v24->var0 > 90)
    {
      return;
    }

    if (v24->var0 == -1)
    {
      if (!_LogCategory_Initialize(v24, 0x5Au))
      {
        return;
      }

      v24 = self->_ucat;
    }

    LogPrintF(v24, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket create failed (%s): %#m\n", v15, v16, v17, v18, v9);
    return;
  }

  if (SocketSetNonBlocking(v14, 1))
  {
    v23 = self->_ucat;
    if (v23->var0 <= 90)
    {
      if (v23->var0 != -1)
      {
LABEL_18:
        LogPrintF(v23, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket NonBlock failed (%s): %#m\n", v19, v20, v21, v22, v9);
        goto LABEL_23;
      }

      if (_LogCategory_Initialize(v23, 0x5Au))
      {
        v23 = self->_ucat;
        goto LABEL_18;
      }
    }
  }

LABEL_23:
  v67 = 1;
  if (setsockopt(v14, 0xFFFF, 4130, &v67, 4u) && (!*__error() || *__error()))
  {
    v29 = self->_ucat;
    if (v29->var0 <= 90)
    {
      if (v29->var0 != -1)
      {
LABEL_28:
        LogPrintF(v29, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket SO_NOSIGPIPE failed (%s): %#m\n", v25, v26, v27, v28, v9);
        goto LABEL_30;
      }

      if (_LogCategory_Initialize(v29, 0x5Au))
      {
        v29 = self->_ucat;
        goto LABEL_28;
      }
    }
  }

LABEL_30:
  v66 = 1;
  if (setsockopt(v14, 0xFFFF, 0x10000, &v66, 4u) && (!*__error() || *__error()))
  {
    v34 = self->_ucat;
    if (v34->var0 <= 90)
    {
      if (v34->var0 != -1)
      {
LABEL_35:
        LogPrintF(v34, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket SO_NOWAKEFROMSLEEP failed (%s): %#m\n", v30, v31, v32, v33, v9);
        goto LABEL_37;
      }

      if (_LogCategory_Initialize(v34, 0x5Au))
      {
        v34 = self->_ucat;
        goto LABEL_35;
      }
    }
  }

LABEL_37:
  v65 = 1;
  if (setsockopt(v14, 0xFFFF, 512, &v65, 4u) && (!*__error() || *__error()))
  {
    v39 = self->_ucat;
    if (v39->var0 <= 90)
    {
      if (v39->var0 != -1)
      {
LABEL_44:
        LogPrintF(v39, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket SO_REUSEPORT failed (%s): %#m\n", v35, v36, v37, v38, v9);
        goto LABEL_46;
      }

      if (_LogCategory_Initialize(v39, 0x5Au))
      {
        v39 = self->_ucat;
        goto LABEL_44;
      }
    }
  }

LABEL_46:
  if (v7 == 2)
  {
    *&v68[0].sa_len = 2316173840;
    *&v68[0].sa_data[6] = 0;
    v40 = v14;
    v41 = 16;
    goto LABEL_62;
  }

  if (v7 != 30)
  {
    goto LABEL_71;
  }

  v64 = 1;
  if (setsockopt(v14, 41, 27, &v64, 4u) && (!*__error() || *__error()))
  {
    v46 = self->_ucat;
    if (v46->var0 <= 90)
    {
      if (v46->var0 == -1)
      {
        if (!_LogCategory_Initialize(v46, 0x5Au))
        {
          goto LABEL_61;
        }

        v46 = self->_ucat;
      }

      LogPrintF(v46, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket IPV6_V6ONLY failed (%s): %#m\n", v42, v43, v44, v45, v9);
    }
  }

LABEL_61:
  *&v68[0].sa_data[10] = 0uLL;
  *&v68[0].sa_data[2] = 0;
  *&v68[0].sa_len = -1978786276;
  *&v68[0].sa_data[6] = *MEMORY[0x1E69E99B8];
  v40 = v14;
  v41 = 28;
LABEL_62:
  if (bind(v40, v68, v41) && (!*__error() || *__error()))
  {
    v51 = self->_ucat;
    if (v51->var0 <= 90)
    {
      if (v51->var0 != -1)
      {
LABEL_69:
        LogPrintF(v51, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket bind failed (%s): %#m\n", v47, v48, v49, v50, v9);
        goto LABEL_71;
      }

      if (_LogCategory_Initialize(v51, 0x5Au))
      {
        v51 = self->_ucat;
        goto LABEL_69;
      }
    }
  }

LABEL_71:
  v52 = dispatch_source_create(MEMORY[0x1E69E96F8], v14, 0, self->_dispatchQueue);
  if (v52)
  {
    v57 = v52;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__CUNetLinkManager__monitorSetupSocket___block_invoke;
    handler[3] = &unk_1E73A42A0;
    handler[4] = self;
    v63 = v14;
    dispatch_source_set_event_handler(v52, handler);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __40__CUNetLinkManager__monitorSetupSocket___block_invoke_2;
    v61[3] = &unk_1E73A3FC8;
    v61[5] = self + v11;
    v61[6] = self + v10;
    v61[4] = self;
    dispatch_source_set_cancel_handler(v57, v61);
    dispatch_activate(v57);
    *(&self->super.isa + v11) = v14;
    v58 = *(&self->super.isa + v10);
    *(&self->super.isa + v10) = v57;
    v59 = v57;

    return;
  }

  v60 = self->_ucat;
  if (v60->var0 <= 90)
  {
    if (v60->var0 == -1)
    {
      if (!_LogCategory_Initialize(v60, 0x5Au))
      {
        goto LABEL_79;
      }

      v60 = self->_ucat;
    }

    LogPrintF(v60, "[CUNetLinkManager _monitorSetupSocket:]", 0x5Au, "### Probe socket create read source failed (%s): %#m\n", v53, v54, v55, v56, v9);
  }

LABEL_79:
  if ((v14 & 0x80000000) == 0 && close(v14))
  {
    if (*__error())
    {
      __error();
    }
  }
}

uint64_t __40__CUNetLinkManager__monitorSetupSocket___block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 40);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    **(a1 + 40) = -1;
  }

  v3 = *(a1 + 48);
  v4 = *v3;
  *v3 = 0;

  v5 = *(a1 + 32);

  return [v5 _invalidated];
}

- (void)_monitorEnsureStopped
{
  if (!self->_pollTimer)
  {
    goto LABEL_8;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "[CUNetLinkManager _monitorEnsureStopped]", 0x1Eu, "Monitor stop\n", v2, v3, v4, v5, v13);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  pollTimer = self->_pollTimer;
  if (pollTimer)
  {
    v9 = pollTimer;
    dispatch_source_cancel(v9);
    v10 = self->_pollTimer;
    self->_pollTimer = 0;
  }

LABEL_8:
  probeSourceV4 = self->_probeSourceV4;
  if (probeSourceV4)
  {
    dispatch_source_cancel(probeSourceV4);
  }

  probeSourceV6 = self->_probeSourceV6;
  if (probeSourceV6)
  {

    dispatch_source_cancel(probeSourceV6);
  }
}

- (void)_monitorEnsureStarted
{
  if (self->_hasIPv4Endpoint && !self->_probeSourceV4)
  {
    [(CUNetLinkManager *)self _monitorSetupSocket:2];
  }

  if (self->_hasIPv6Endpoint && !self->_probeSourceV6)
  {
    [(CUNetLinkManager *)self _monitorSetupSocket:30];
  }

  if (!self->_pollTimer)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUNetLinkManager _monitorEnsureStarted]", 0x1Eu, "Monitor start\n", v2, v3, v4, v5, v13);
    }

LABEL_12:
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    pollTimer = self->_pollTimer;
    self->_pollTimer = v8;

    v10 = self->_pollTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__CUNetLinkManager__monitorEnsureStarted__block_invoke;
    handler[3] = &unk_1E73A4F68;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    v11 = self->_pollTimer;
    v12 = dispatch_time(0, 13000000000);
    dispatch_source_set_timer(v11, v12, 0x306DC4200uLL, 0xB2D05E00uLL);
    dispatch_activate(self->_pollTimer);
  }
}

- (void)_updateEndpoint:(id)endpoint state:(int)state
{
  endpointCopy = endpoint;
  v11 = endpointCopy;
  if (*(endpointCopy + 9) == state)
  {
    goto LABEL_10;
  }

  ucat = self->_ucat;
  v16 = v11;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_6:
      LogPrintF(ucat, "[CUNetLinkManager _updateEndpoint:state:]", 0x1Eu, "Endpoint state changed: %##a: %s -> %s\n", v7, v8, v9, v10, (v11 + 1));
      v11 = v16;
      goto LABEL_7;
    }

    v13 = _LogCategory_Initialize(ucat, 0x1Eu);
    v11 = v16;
    if (v13)
    {
      ucat = self->_ucat;
      goto LABEL_6;
    }
  }

LABEL_7:
  *(v11 + 9) = state;
  ++*(v11 + 18);
  v14 = _Block_copy(v11[5]);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14);
  }

  v11 = v16;
LABEL_10:

  MEMORY[0x1EEE66BB8](endpointCopy, v11);
}

- (void)_updateNDP
{
  v38 = *MEMORY[0x1E69E9840];
  *v36 = xmmword_191FF9540;
  v37 = 0x40000000009;
  v34 = 0;
  v33 = 0;
  v25 = sysctl_copy(v36, &v34, &v33);
  if (!v25)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      return;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        return;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUNetLinkManager _updateNDP]", 0x5Au, "### Get IPv6 route info failed: %#m\n", v3, v4, v5, v6, v33);
    return;
  }

  v32.tv_sec = 0;
  *&v32.tv_usec = 0;
  gettimeofday(&v32, 0);
  if (v34 >= 1)
  {
    v7 = v25;
    v8 = v25 + v34;
    v26 = v25 + v34;
    while (1)
    {
      v9 = *(v7 + 136) ? (*(v7 + 136) + 3) & 0x1FC : 4;
      v10 = v7 + v9 + 136;
      v11 = *v7;
      if (v10[1] == 18 && v10[6] == 6)
      {
        break;
      }

LABEL_25:
      v7 = (v7 + v11);
      if (v7 >= v8)
      {
        goto LABEL_26;
      }
    }

    v27 = *v7;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = self->_endpoints;
    v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = v13;
    v15 = *v29;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v28 + 1) + 8 * v16);
      if (*(v17 + 9) != 30)
      {
        goto LABEL_20;
      }

      if (SockAddrCompareAddrEx(v17 + 8, (v7 + 68), 1))
      {
        goto LABEL_20;
      }

      *(v17 + 48) = *(v7 + 14);
      *(v17 + 64) = 1;
      v22 = self->_ucat;
      if (v22->var0 > 9)
      {
        goto LABEL_20;
      }

      if (v22->var0 == -1)
      {
        if (!_LogCategory_Initialize(v22, 9u))
        {
          goto LABEL_20;
        }

        v22 = self->_ucat;
      }

      LogPrintF(v22, "[CUNetLinkManager _updateNDP]", 9u, "ARP/NDP poll %##a: RxExp %llu (%lld), TxExp %llu, RtExp %d, Now %ld\n", v18, v19, v20, v21, v17 + 8);
LABEL_20:
      if (v14 == ++v16)
      {
        v23 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v28 objects:v35 count:16];
        v14 = v23;
        if (!v23)
        {
LABEL_24:

          v8 = v26;
          v11 = v27;
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_26:
  free(v25);
}

- (void)_updateARP
{
  v47 = *MEMORY[0x1E69E9840];
  *v45 = xmmword_191FF9550;
  v46 = 0x40000000009;
  v43 = 0;
  v42 = 0;
  v3 = sysctl_copy(v45, &v43, &v42);
  if (v3)
  {
    v8 = v3;
    v41.tv_sec = 0;
    *&v41.tv_usec = 0;
    gettimeofday(&v41, 0);
    if (v43 < 1)
    {
      goto LABEL_30;
    }

    v13 = 0;
    v14 = v8 + v43;
    v15 = 0uLL;
    v16 = v8;
    while (1)
    {
      v17 = v16;
      while (1)
      {
        v18 = *(v17 + 136) ? (*(v17 + 136) + 3) & 0x1FC : 4;
        v19 = v17 + v18 + 136;
        v16 = (v17 + *v17);
        if (v19[1] == 18 && v19[6] == 6)
        {
          break;
        }

        v17 = (v17 + *v17);
        if (v16 >= v14)
        {
          if (v13)
          {
            goto LABEL_34;
          }

LABEL_30:
          ucat = self->_ucat;
          if (ucat->var0 > 50)
          {
            goto LABEL_34;
          }

          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize(ucat, 0x32u))
            {
              goto LABEL_34;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[CUNetLinkManager _updateARP]", 0x32u, "updateARP: no AF_LINK", v9, v10, v11, v12, v34);
          goto LABEL_34;
        }
      }

      v35 = v14;
      v36 = v8;
      v39 = v15;
      v40 = v15;
      v37 = v15;
      v38 = v15;
      v20 = self->_endpoints;
      v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v21)
      {
        goto LABEL_27;
      }

      v26 = v21;
      v27 = *v38;
      do
      {
        v28 = 0;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v20);
          }

          v29 = *(*(&v37 + 1) + 8 * v28);
          if (*(v29 + 9) == 2 && *(v29 + 12) == *(v17 + 35))
          {
            *(v29 + 48) = *(v17 + 14);
            *(v29 + 64) = 1;
            v30 = self->_ucat;
            if (v30->var0 <= 9)
            {
              if (v30->var0 != -1)
              {
                goto LABEL_21;
              }

              if (_LogCategory_Initialize(v30, 9u))
              {
                v30 = self->_ucat;
LABEL_21:
                LogPrintF(v30, "[CUNetLinkManager _updateARP]", 9u, "ARP/NDP poll %##a: RxExp %llu (%lld), TxExp %llu, RtExp %d, Now %ld\n", v22, v23, v24, v25, v29 + 8);
              }
            }
          }

          ++v28;
        }

        while (v26 != v28);
        v31 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v37 objects:v44 count:16];
        v26 = v31;
      }

      while (v31);
LABEL_27:

      v13 = 1;
      v14 = v35;
      v8 = v36;
      v15 = 0uLL;
      if (v16 >= v35)
      {
LABEL_34:
        free(v8);
        return;
      }
    }
  }

  v33 = self->_ucat;
  if (v33->var0 <= 90)
  {
    if (v33->var0 != -1)
    {
LABEL_38:
      LogPrintF(v33, "[CUNetLinkManager _updateARP]", 0x5Au, "### Get IPv4 route info failed: %#m\n", v4, v5, v6, v7, v42);
      return;
    }

    if (_LogCategory_Initialize(v33, 0x5Au))
    {
      v33 = self->_ucat;
      goto LABEL_38;
    }
  }
}

- (void)_updateEndpoints
{
  v35 = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUNetLinkManager _updateEndpoints]", 9u, "Update endpoints\n", v2, v3, v4, v5, v24);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 9u))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_endpoints;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        *(*(*(&v29 + 1) + 8 * i) + 64) = 0;
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  if (self->_hasIPv4Endpoint)
  {
    [(CUNetLinkManager *)self _updateARP];
  }

  if (self->_hasIPv6Endpoint)
  {
    [(CUNetLinkManager *)self _updateNDP];
  }

  v28.tv_sec = 0;
  *&v28.tv_usec = 0;
  gettimeofday(&v28, 0);
  v13 = mach_absolute_time();
  tv_sec = v28.tv_sec;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = self->_endpoints;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        v21 = *(v20 + 64);
        if (v21 != 1 || *(v20 + 48) - tv_sec < -16)
        {
          v23 = *(v20 + 56);
          if (!v23)
          {
            *(v20 + 56) = v13;
            v23 = v13;
          }

          if (*(v20 + 36) != 3 && (!v21 || UpTicksToSeconds(v13 - v23) >= 0x1F))
          {
            ++self->_unreachableCount;
            [(CUNetLinkManager *)self _updateEndpoint:v20 state:3, v24];
          }

          [(CUNetLinkManager *)self _monitorSendPacketToEndpoint:v20, v24];
        }

        else
        {
          if (*(v20 + 36) == 3)
          {
            ++self->_reReachableCount;
          }

          *(v20 + 56) = 0;
          [(CUNetLinkManager *)self _updateEndpoint:v20 state:2, v24];
        }
      }

      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v17);
  }
}

- (void)_update
{
  v17 = *MEMORY[0x1E69E9840];
  *&self->_hasIPv4Endpoint = 0;
  p_hasIPv4Endpoint = &self->_hasIPv4Endpoint;
  p_hasIPv6Endpoint = &self->_hasIPv6Endpoint;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_endpoints;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(*(&v12 + 1) + 8 * v9) + 9);
        v11 = p_hasIPv4Endpoint;
        if (v10 == 2)
        {
          goto LABEL_9;
        }

        if (v10 == 30)
        {
          v11 = p_hasIPv6Endpoint;
LABEL_9:
          *v11 = 1;
        }

        if (*p_hasIPv4Endpoint && *p_hasIPv6Endpoint)
        {
          goto LABEL_14;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

LABEL_14:

  if (*p_hasIPv4Endpoint || *p_hasIPv6Endpoint)
  {
    [(CUNetLinkManager *)self _monitorEnsureStarted];
  }

  else
  {
    [(CUNetLinkManager *)self _monitorEnsureStopped];
  }
}

- (void)removeEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CUNetLinkManager_removeEndpoint___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __35__CUNetLinkManager_removeEndpoint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUNetLinkManager removeEndpoint:]_block_invoke", 0x1Eu, "Remove endpoint: %##a\n", a5, a6, a7, a8, *(a1 + 40) + 8);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 80);
      goto LABEL_3;
    }
  }

LABEL_5:
  [*(v9 + 8) removeObject:*(a1 + 40)];
  ++*(*(a1 + 32) + 16);
  v12 = *(a1 + 40);
  if (*(v12 + 36) != 1)
  {
    *(v12 + 36) = 1;
    v13 = _Block_copy(*(*(a1 + 40) + 40));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }

  v15 = *(a1 + 32);

  return [v15 _update];
}

- (void)addEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CUNetLinkManager_addEndpoint___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v8 = endpointCopy;
  selfCopy = self;
  v6 = endpointCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __32__CUNetLinkManager_addEndpoint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 9);
  if (v10 == 30 || v10 == 2)
  {
    *(v9 + 10) = -30194;
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 80);
  if (*v13 <= 30)
  {
    if (*v13 != -1)
    {
LABEL_9:
      LogPrintF(v13, "[CUNetLinkManager addEndpoint:]_block_invoke", 0x1Eu, "Add endpoint: %##a\n", a5, a6, a7, a8, *(a1 + 32) + 8);
      v12 = *(a1 + 40);
      goto LABEL_11;
    }

    v14 = _LogCategory_Initialize(v13, 0x1Eu);
    v12 = *(a1 + 40);
    if (v14)
    {
      v13 = *(v12 + 80);
      goto LABEL_9;
    }
  }

LABEL_11:
  v15 = *(v12 + 8);
  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = *(a1 + 40);
    v18 = *(v17 + 8);
    *(v17 + 8) = v16;

    v15 = *(*(a1 + 40) + 8);
  }

  [v15 addObject:*(a1 + 32)];
  ++*(*(a1 + 40) + 16);
  [*(a1 + 40) _update];
  v19 = *(a1 + 40);

  return [v19 _updateEndpoints];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_pollTimer && !self->_probeSourceV4 && !self->_probeSourceV6)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

    self->_invalidationHandler = 0;

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

      LogPrintF(ucat, "[CUNetLinkManager _invalidated]", 0x1Eu, "Invalidated\n", v5, v6, v7, v8, v11);
    }
  }
}

- (void)_invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled)
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
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUNetLinkManager _invalidate]", 0x1Eu, "Invalidate\n", v2, v3, v4, v5, v16);
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CUNetLinkManager *)self _monitorEnsureStopped];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_endpoints;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        *(v13 + 36) = 1;
        v14 = _Block_copy(*(v13 + 40));
        v15 = v14;
        if (*(v13 + 40))
        {
          (*(v14 + 2))(v14);
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(CUNetLinkManager *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUNetLinkManager_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUNetLinkManager_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__CUNetLinkManager_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[10];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUNetLinkManager activate]_block_invoke", 0x1Eu, "Activate: poll %d secs (+/- %d), reach %d secs, unreach %d secs\n", a5, a6, a7, a8, 13);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[10];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v9 _update];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE9F38;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (id)descriptionWithLevel:(int)level
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v5 = [(NSMutableSet *)self->_endpoints count];
  NSAppendPrintF(&v44, "CUNetLinkManager %d EP(s), EPCh %u, PrRx/Tx/Err %u/%u/%u, Un/Re %u/%u", v6, v7, v8, v9, v10, v11, v5);
  v12 = v44;
  v19 = v12;
  if (level <= 20)
  {
    v43 = v12;
    NSAppendPrintF(&v43, "\n", v13, v14, v15, v16, v17, v18, v37);
    v20 = v43;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = self->_endpoints;
    v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      if (level >= 11)
      {
        v25 = 50;
      }

      else
      {
        v25 = 30;
      }

      do
      {
        v26 = 0;
        v27 = v20;
        do
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v39 + 1) + 8 * v26);
          v38 = v27;
          v29 = CUDescriptionWithLevel(v28, v25);
          NSAppendPrintF(&v38, "    %@\n", v30, v31, v32, v33, v34, v35, v29);
          v20 = v38;

          ++v26;
          v27 = v20;
        }

        while (v23 != v26);
        v23 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v23);
    }

    v19 = v20;
  }

  return v19;
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
  v4.super_class = CUNetLinkManager;
  [(CUNetLinkManager *)&v4 dealloc];
}

- (CUNetLinkManager)init
{
  v6.receiver = self;
  v6.super_class = CUNetLinkManager;
  v2 = [(CUNetLinkManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_probeSocketV4 = -1;
    v3->_probeSocketV6 = -1;
    v3->_ucat = &gLogCategory_CUNetLinkManager;
    v4 = v3;
  }

  return v3;
}

@end