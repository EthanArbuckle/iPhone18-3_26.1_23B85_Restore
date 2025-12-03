@interface CUNetInterfaceMonitor
- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv4Addr;
- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv6Addr;
- (CUNetInterfaceMonitor)init;
- (void)_ensureStartedNW;
- (void)_ensureStartedSC;
- (void)_ensureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)_networkInterfacesChanged:(BOOL)changed;
- (void)_primaryIPChanged:(BOOL)changed;
- (void)_primaryIPChangedNW:(BOOL)w;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation CUNetInterfaceMonitor

- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv6Addr
{
  retstr->var0 = *&self[6].var2.sin6_flowinfo;
  *(&retstr->var2.sin6_addr + 4) = *(&self[6].var2.sin6_addr + 8);
  return self;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)primaryIPv4Addr
{
  retstr->var0 = *&self[5].var2.sin6_flowinfo;
  *(&retstr->var2.sin6_addr + 4) = *(&self[5].var2.sin6_addr + 8);
  return self;
}

- (void)_primaryIPChangedNW:(BOOL)w
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = nw_path_evaluator_copy_path();
  if (!v4)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_25;
        }

        ucat = self->_ucat;
      }

      LogPrintF_safe(ucat, "[CUNetInterfaceMonitor _primaryIPChangedNW:]", 0x5Au, "### No NW path", v5, v6, v7, v8, v88);
    }

LABEL_25:
    v19 = 0;
    v20 = 0;
    v9 = 0;
    v45 = 1;
LABEL_29:
    memset(v93, 0, 28);
    memset(v92, 0, 28);
    goto LABEL_30;
  }

  v9 = v4;
  if (nw_path_get_status(v4) != nw_path_status_satisfied)
  {
    v42 = self->_ucat;
    if (v42->var0 <= 30)
    {
      if (v42->var0 == -1)
      {
        if (!_LogCategory_Initialize(v42, 0x1Eu))
        {
          goto LABEL_24;
        }

        v42 = self->_ucat;
      }

      LogPrintF_safe(v42, "[CUNetInterfaceMonitor _primaryIPChangedNW:]", 0x1Eu, "Path not satisfied", v10, v11, v12, v13, v88);
    }

LABEL_24:

    goto LABEL_25;
  }

  v14 = nw_path_copy_interface();
  if (!v14)
  {
    v43 = self->_ucat;
    if (v43->var0 <= 90)
    {
      if (v43->var0 == -1)
      {
        if (!_LogCategory_Initialize(v43, 0x5Au))
        {
          goto LABEL_27;
        }

        v43 = self->_ucat;
      }

      LogPrintF_safe(v43, "[CUNetInterfaceMonitor _primaryIPChangedNW:]", 0x5Au, "### No primary interface", v15, v16, v17, v18, v88);
    }

LABEL_27:
    v20 = MEMORY[0x193B06D30](v9, 2);
    v19 = 0;
    goto LABEL_28;
  }

  v19 = v14;
  v20 = MEMORY[0x193B06D30](v9, 2);
  name = nw_interface_get_name(v19);
  if (!name)
  {
    v44 = self->_ucat;
    if (v44->var0 <= 90)
    {
      if (v44->var0 == -1)
      {
        if (!_LogCategory_Initialize(v44, 0x5Au))
        {
          goto LABEL_28;
        }

        v44 = self->_ucat;
      }

      LogPrintF_safe(v44, "[CUNetInterfaceMonitor _primaryIPChangedNW:]", 0x5Au, "### No interface name", v22, v23, v24, v25, v88);
    }

LABEL_28:
    v45 = 0;
    goto LABEL_29;
  }

  v26 = name;
  memset(v93, 0, 28);
  memset(v92, 0, 28);
  v27 = CUGetInterfaceAddresses((self->_controlFlags >> 2) & 2, name, v93, v92, 0);
  if (!v27)
  {
    goto LABEL_87;
  }

  v35 = self->_ucat;
  if (v35->var0 > 90)
  {
    goto LABEL_87;
  }

  v36 = v27;
  if (v35->var0 == -1)
  {
    if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
    {
      goto LABEL_87;
    }

    v35 = self->_ucat;
  }

  v89 = NSPrintF("%#m", v28, v29, v30, v31, v32, v33, v34, v36);
  LogPrintF_safe(v35, "[CUNetInterfaceMonitor _primaryIPChangedNW:]", 0x5Au, "### Get interface addresses failed: interface=%s, error=%@", v37, v38, v39, v40, v26);

LABEL_87:
  v45 = 0;
LABEL_30:
  p_primaryIPv4Addr = &self->_primaryIPv4Addr;
  v47 = SockAddrCompareAddrEx(v93, &self->_primaryIPv4Addr, 1);
  v48 = v47 != 0;
  if (v47)
  {
    if (v93[0].sa_family)
    {
      if (v93[0].sa_family == 30)
      {
        p_primaryIPv4Addr->sa = v93[0];
        *(&self->_primaryIPv4Addr.v6.sin6_addr + 4) = *&v93[0].sa_data[10];
      }

      else if (v93[0].sa_family == 2)
      {
        p_primaryIPv4Addr->sa = v93[0];
      }
    }

    else
    {
      self->_primaryIPv4Addr.sa.sa_family = 0;
    }
  }

  p_primaryIPv6Addr = &self->_primaryIPv6Addr;
  if (SockAddrCompareAddrEx(v92, &self->_primaryIPv6Addr, 1))
  {
    if (BYTE1(v92[0]))
    {
      if (BYTE1(v92[0]) == 30)
      {
        p_primaryIPv6Addr->sa = v92[0];
        *(&self->_primaryIPv6Addr.v6.sin6_addr + 4) = *(v92 + 12);
      }

      else if (BYTE1(v92[0]) == 2)
      {
        p_primaryIPv6Addr->sa = v92[0];
      }
    }

    else
    {
      self->_primaryIPv6Addr.sa.sa_family = 0;
    }

    v48 = 1;
  }

  if (self->_primaryIPIsCellular != v20)
  {
    self->_primaryIPIsCellular = v20;
    v48 = 1;
  }

  v96[0] = 0;
  v96[1] = 0;
  v97 = 0;
  v91 = v19;
  if ((v45 & 1) != 0 || !nw_path_get_ipv4_network_signature())
  {
    v50 = 0;
  }

  else
  {
    v50 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v96 length:20];
  }

  primaryIPv4Signature = self->_primaryIPv4Signature;
  v52 = v50;
  v53 = primaryIPv4Signature;
  v54 = v53;
  if (v52 == v53)
  {

    v56 = v52;
  }

  else
  {
    if ((v52 != 0) != (v53 == 0))
    {
      v55 = [(NSData *)v52 isEqual:v53];

      if (v55)
      {
        goto LABEL_59;
      }
    }

    else
    {
    }

    v57 = v52;
    v56 = self->_primaryIPv4Signature;
    self->_primaryIPv4Signature = v57;
    v48 = 1;
  }

LABEL_59:
  v94[0] = 0;
  v94[1] = 0;
  v95 = 0;
  if ((v45 & 1) != 0 || !nw_path_get_ipv6_network_signature())
  {
    v58 = 0;
  }

  else
  {
    v58 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v94 length:20];
  }

  primaryIPv6Signature = self->_primaryIPv6Signature;
  v60 = v58;
  v61 = primaryIPv6Signature;
  v62 = v61;
  if (v60 == v61)
  {

    if (!v48)
    {
      v48 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    if ((v60 != 0) != (v61 == 0))
    {
      v63 = [(NSData *)v60 isEqual:v61];

      if (v63)
      {
        if (v48)
        {
          goto LABEL_73;
        }

LABEL_70:
        v71 = 20;
        goto LABEL_74;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_primaryIPv6Signature, v58);
  }

LABEL_73:
  v71 = 30;
  v48 = 1;
LABEL_74:
  v72 = self->_ucat;
  if (v71 >= v72->var0)
  {
    if (v72->var0 != -1)
    {
      v90 = v9;
LABEL_77:
      if (v48)
      {
        v73 = "changed";
      }

      else
      {
        v73 = "unchanged";
      }

      v74 = NSPrintF("%##a", v64, v65, v66, v67, v68, v69, v70, &self->_primaryIPv4Addr);
      v82 = NSPrintF("%##a", v75, v76, v77, v78, v79, v80, v81, &self->_primaryIPv6Addr);
      LogPrintF_safe(v72, "[CUNetInterfaceMonitor _primaryIPChangedNW:]", v71, "Primary IPs %s: interface=%s, IPv4=%@, IPv4Sig=%@, IPv6=%@, IPv6Sig=%@, cellular=%s, %s", v83, v84, v85, v86, v73);

      v9 = v90;
      goto LABEL_82;
    }

    if (_LogCategory_Initialize(self->_ucat, v71))
    {
      v90 = v9;
      v72 = self->_ucat;
      goto LABEL_77;
    }
  }

LABEL_82:
  if (v48)
  {
    primaryIPChangedHandler = self->_primaryIPChangedHandler;
    if (primaryIPChangedHandler)
    {
      primaryIPChangedHandler[2]();
    }
  }
}

- (void)_primaryIPChanged:(BOOL)changed
{
  scStore = self->_scStore;
  if (scStore)
  {
    memset(v46, 0, 28);
    memset(v45, 0, 28);
    PrimaryIPAddress = GetPrimaryIPAddressEx(scStore, v46, v45);
    if (PrimaryIPAddress)
    {
      v15 = PrimaryIPAddress;
      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 != -1)
        {
LABEL_5:
          LogPrintF(ucat, "[CUNetInterfaceMonitor _primaryIPChanged:]", 0x5Au, "### GetPrimaryIP failed: %#m\n", v11, v12, v13, v14, v15);
          return;
        }

        if (_LogCategory_Initialize(ucat, 0x5Au))
        {
          ucat = self->_ucat;
          goto LABEL_5;
        }
      }

      return;
    }

    if (!SockAddrCompareAddrEx(v46, &self->_primaryIPv4Addr, 1))
    {
      goto LABEL_23;
    }

    if (BYTE1(v46[0]))
    {
      if (BYTE1(v46[0]) == 30)
      {
        self->_primaryIPv4Addr.sa = v46[0];
        *(&self->_primaryIPv4Addr.v6.sin6_addr + 4) = *(v46 + 12);
      }

      else if (BYTE1(v46[0]) == 2)
      {
        self->_primaryIPv4Addr.sa = v46[0];
        if (!changed)
        {
LABEL_25:
          v23 = self->_ucat;
          if (v23->var0 <= 30)
          {
            if (v23->var0 == -1)
            {
              if (!_LogCategory_Initialize(v23, 0x1Eu))
              {
                goto LABEL_29;
              }

              v23 = self->_ucat;
            }

            LogPrintF(v23, "[CUNetInterfaceMonitor _primaryIPChanged:]", 0x1Eu, "PrimaryIPv4 changed: %##a\n", v18, v19, v20, v21, v46);
          }

LABEL_29:
          v22 = 1;
LABEL_30:
          if (!SockAddrCompareAddrEx(v45, &self->_primaryIPv6Addr, 1))
          {
            goto LABEL_38;
          }

          if (BYTE1(v45[0]))
          {
            if (BYTE1(v45[0]) == 30)
            {
              self->_primaryIPv6Addr.sa = v45[0];
              *(&self->_primaryIPv6Addr.v6.sin6_addr + 4) = *(v45 + 12);
            }

            else if (BYTE1(v45[0]) == 2)
            {
              self->_primaryIPv6Addr.sa = v45[0];
              if (!changed)
              {
LABEL_41:
                v28 = self->_ucat;
                if (v28->var0 <= 30)
                {
                  if (v28->var0 == -1)
                  {
                    if (!_LogCategory_Initialize(v28, 0x1Eu))
                    {
                      goto LABEL_45;
                    }

                    v28 = self->_ucat;
                  }

                  LogPrintF(v28, "[CUNetInterfaceMonitor _primaryIPChanged:]", 0x1Eu, "PrimaryIPv6 changed: %##a\n", v24, v25, v26, v27, v45);
                }

LABEL_45:
                v29 = _Block_copy(self->_primaryIPChangedHandler);
                v30 = v29;
                if (v29)
                {
                  (*(v29 + 2))(v29);
                }

LABEL_48:
                if (!self->_primaryNetworkChangedHandler)
                {
                  return;
                }

                active = SCNetworkSignatureCopyActiveIdentifiers();
                firstObject = [active firstObject];
                primaryNetworkSignature = self->_primaryNetworkSignature;
                v34 = firstObject;
                v35 = primaryNetworkSignature;
                v36 = v35;
                if (v34 == v35)
                {

                  v38 = v34;
LABEL_62:

                  goto LABEL_63;
                }

                if ((v34 != 0) != (v35 == 0))
                {
                  v37 = [(NSString *)v34 isEqual:v35];

                  if (v37)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {
                }

                objc_storeStrong(&self->_primaryNetworkSignature, firstObject);
                if (changed)
                {
LABEL_63:

                  return;
                }

                v43 = self->_ucat;
                if (v43->var0 <= 30)
                {
                  if (v43->var0 != -1)
                  {
LABEL_58:
                    LogPrintF(v43, "[CUNetInterfaceMonitor _primaryIPChanged:]", 0x1Eu, "PrimaryNetwork changed: %@\n", v39, v40, v41, v42, v34);
                    goto LABEL_60;
                  }

                  if (_LogCategory_Initialize(v43, 0x1Eu))
                  {
                    v43 = self->_ucat;
                    goto LABEL_58;
                  }
                }

LABEL_60:
                v44 = _Block_copy(self->_primaryNetworkChangedHandler);
                v38 = v44;
                if (v44)
                {
                  (v44[2])(v44);
                }

                goto LABEL_62;
              }

LABEL_38:
              if (!v22)
              {
                goto LABEL_48;
              }

              goto LABEL_45;
            }

            if (!changed)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          self->_primaryIPv6Addr.sa.sa_family = 0;
          if (!changed)
          {
            goto LABEL_41;
          }

          goto LABEL_38;
        }

LABEL_23:
        v22 = 0;
        goto LABEL_30;
      }

      if (!changed)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    self->_primaryIPv4Addr.sa.sa_family = 0;
    if (!changed)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v17 = self->_ucat;
  if (v17->var0 > 90)
  {
    return;
  }

  if (v17->var0 == -1)
  {
    if (!_LogCategory_Initialize(v17, 0x5Au))
    {
      return;
    }

    v17 = self->_ucat;
  }

  LogPrintF(v17, "[CUNetInterfaceMonitor _primaryIPChanged:]", 0x5Au, "### PrimaryIP changed with no SCStore\n", v3, v4, v5, v6, v48);
}

- (void)_networkInterfacesChanged:(BOOL)changed
{
  changedCopy = changed;
  v54 = *MEMORY[0x1E69E9840];
  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    if (*__error())
    {
      v15 = *__error();
      if (!v15)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v15 = 4294960596;
    }

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

    LogPrintF(ucat, "[CUNetInterfaceMonitor _networkInterfacesChanged:]", 0x5Au, "### Open socket failed: %#m\n", v11, v12, v13, v14, v15);
    return;
  }

LABEL_2:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CUNetInterfaceMonitor__networkInterfacesChanged___block_invoke;
  aBlock[3] = &__block_descriptor_36_e5_v8__0l;
  v52 = v4;
  v5 = _Block_copy(aBlock);
  v50 = 0;
  if (!getifaddrs(&v50))
  {
    v10 = 0;
LABEL_10:
    if (v50)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (!*__error())
  {
    v10 = 4294960596;
    goto LABEL_13;
  }

  v10 = *__error();
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_13:
  v16 = self->_ucat;
  if (v16->var0 > 90)
  {
    goto LABEL_21;
  }

  if (v16->var0 != -1)
  {
    goto LABEL_15;
  }

  if (_LogCategory_Initialize(v16, 0x5Au))
  {
    v16 = self->_ucat;
LABEL_15:
    LogPrintF(v16, "[CUNetInterfaceMonitor _networkInterfacesChanged:]", 0x5Au, "### Get interface list failed: %#m\n", v6, v7, v8, v9, v10);
  }

LABEL_21:
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __51__CUNetInterfaceMonitor__networkInterfacesChanged___block_invoke_2;
  v49[3] = &__block_descriptor_40_e5_v8__0l;
  v49[4] = v50;
  v18 = _Block_copy(v49);
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = v50;
  if (v50)
  {
    v21 = 0;
    while (1)
    {
      ifa_flags = v20->ifa_flags;
      if ((ifa_flags & 1) != 0 && ((ifa_flags & 8) == 0 || (self->_controlFlags & 2) != 0))
      {
        ifa_addr = v20->ifa_addr;
        if (ifa_addr)
        {
          v24 = *(ifa_addr + 1);
          if (v24 == 30 || v24 == 2)
          {
            ifa_name = v20->ifa_name;
            if (ifa_name)
            {
              break;
            }
          }
        }
      }

LABEL_44:
      v20 = v20->ifa_next;
      if (!v20)
      {
        goto LABEL_47;
      }
    }

    v48 = 0;
    SocketGetInterfaceInfo(v4, ifa_name, 0, 0, 0, 0, 0, 0, 0, &v48);
    v31 = self->_ucat;
    if (v31->var0 <= 9)
    {
      if (v31->var0 != -1)
      {
LABEL_37:
        LogPrintF(v31, "[CUNetInterfaceMonitor _networkInterfacesChanged:]", 9u, "Network interface: Nm '%s', Type %s\n", v27, v28, v29, v30, ifa_name);
        goto LABEL_38;
      }

      if (_LogCategory_Initialize(v31, 9u))
      {
        v31 = self->_ucat;
        goto LABEL_37;
      }
    }

LABEL_38:
    if ((v48 & 8) != 0)
    {
      v21 = 1;
    }

    v32 = objc_alloc_init(CUNetInterfaceInfo);
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ifa_name];
    [(CUNetInterfaceInfo *)v32 setInterfaceName:v33];
    if (*(ifa_addr + 1) == 2)
    {
      v53[0] = 0;
      SockAddrToString(ifa_addr, 1, v53);
      if (v53[0])
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v53];
        [(CUNetInterfaceInfo *)v32 setIpv4String:v34];
      }
    }

    [v19 setObject:v32 forKeyedSubscript:v33];

    goto LABEL_44;
  }

  v21 = 0;
LABEL_47:
  allValues = [v19 allValues];
  interfaces = self->_interfaces;
  self->_interfaces = allValues;

  v37 = _Block_copy(self->_interfacesChangedHandler);
  v38 = v37;
  if (v37)
  {
    (*(v37 + 2))(v37);
  }

  flags = self->_flags;
  if (v21 == flags)
  {
    goto LABEL_61;
  }

  if (!changedCopy)
  {
    v44 = self->_ucat;
    if (v44->var0 <= 30)
    {
      if (v44->var0 == -1)
      {
        if (!_LogCategory_Initialize(v44, 0x1Eu))
        {
          goto LABEL_58;
        }

        v44 = self->_ucat;
        flags = self->_flags;
      }

      LogPrintF(v44, "[CUNetInterfaceMonitor _networkInterfacesChanged:]", 0x1Eu, "Network interface flags changed: %#{flags} -> %#{flags}\n", v39, v40, v41, v42, flags);
    }

LABEL_58:
    self->_flags = v21;
    v45 = _Block_copy(self->_flagsChangedHandler);
    v46 = v45;
    if (v45)
    {
      (*(v45 + 2))(v45);
    }

    goto LABEL_61;
  }

  self->_flags = v21;
LABEL_61:

  v18[2](v18);
  v5[2](v5);
}

uint64_t __51__CUNetInterfaceMonitor__networkInterfacesChanged___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x193B06880);
  }

  return result;
}

- (void)_ensureStopped
{
  if (self->_scStore)
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

      LogPrintF_safe(ucat, "[CUNetInterfaceMonitor _ensureStopped]", 0x1Eu, "Monitoring stop SC", v2, v3, v4, v5, v10);
    }

LABEL_6:
    SCDynamicStoreSetDispatchQueue(self->_scStore, 0);
    CFRelease(self->_scStore);
    self->_scStore = 0;
  }

  if (!self->_nwPathEvaluator)
  {
    return;
  }

  v8 = self->_ucat;
  if (v8->var0 <= 30)
  {
    if (v8->var0 == -1)
    {
      if (!_LogCategory_Initialize(v8, 0x1Eu))
      {
        goto LABEL_13;
      }

      v8 = self->_ucat;
    }

    LogPrintF_safe(v8, "[CUNetInterfaceMonitor _ensureStopped]", 0x1Eu, "Monitoring stop NW", v2, v3, v4, v5, v10);
  }

LABEL_13:
  nw_path_evaluator_cancel();
  nwPathEvaluator = self->_nwPathEvaluator;
  self->_nwPathEvaluator = 0;
}

- (void)_ensureStartedNW
{
  if (!MEMORY[0x1EEE7A848] || self->_nwPathEvaluator)
  {
    return;
  }

  ucat = self->_ucat;
  if (*ucat <= 30)
  {
    if (*ucat == -1)
    {
      ucat = _LogCategory_Initialize(ucat, 0x1Eu);
      if (!ucat)
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    ucat = LogPrintF_safe(ucat, "[CUNetInterfaceMonitor _ensureStartedNW]", 0x1Eu, "Monitoring start NW", v2, v3, v4, v5, v13);
  }

LABEL_7:
  v8 = MEMORY[0x193B06C30](ucat);
  v9 = xpc_array_create(0, 0);
  xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, "NetworkExtension");
  xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, "NetworkExtension");
  v10 = xpc_array_create(0, 0);
  xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, "VPN");
  xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, "AppVPN");
  nw_parameters_set_avoided_netagent_classes();
  nw_parameters_prohibit_interface_type(v8, nw_interface_type_other);
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  nwPathEvaluator = self->_nwPathEvaluator;
  self->_nwPathEvaluator = evaluator_for_endpoint;

  if (self->_nwPathEvaluator)
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __41__CUNetInterfaceMonitor__ensureStartedNW__block_invoke;
    v16 = &unk_1E73A3BD0;
    objc_copyWeak(&v17, &location);
    nw_path_evaluator_set_update_handler();
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  [(CUNetInterfaceMonitor *)self _primaryIPChangedNW:1, v13, v14, v15, v16];
}

void __41__CUNetInterfaceMonitor__ensureStartedNW__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _primaryIPChangedNW:0];
}

- (void)_ensureStartedSC
{
  if (!self->_scStore)
  {
    v45 = v8;
    v46 = v9;
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_6;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
LABEL_6:
        context.version = 0;
        context.info = self;
        context.retain = MEMORY[0x1E695D7C8];
        context.release = MEMORY[0x1E695D7C0];
        context.copyDescription = 0;
        if (self->_label)
        {
          NSPrintF("CUNetInterfaceMonitor-%@", a2, v2, v3, v4, v5, v6, v7, self->_label);
        }

        else
        {
          v43 = getprogname();
          NSPrintF("CUNetInterfaceMonitor-%s", v12, v13, v14, v15, v16, v17, v18, v43);
        }
        v19 = ;
        v20 = SCDynamicStoreCreate(0, v19, _networkInterfacesChanged, &context);
        if (!v20)
        {
          if (!SCError())
          {
            v39 = 4294960596;
            goto LABEL_33;
          }

          v39 = SCError();
          if (v39)
          {
            goto LABEL_33;
          }
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          v39 = 4294960568;
          if (!v20)
          {
LABEL_30:
            if (!v39)
            {
              goto LABEL_38;
            }

LABEL_33:
            v41 = self->_ucat;
            if (v41->var0 <= 90)
            {
              if (v41->var0 == -1)
              {
                if (!_LogCategory_Initialize(v41, 0x5Au))
                {
                  goto LABEL_37;
                }

                v41 = self->_ucat;
              }

              LogPrintF(v41, "[CUNetInterfaceMonitor _ensureStartedSC]", 0x5Au, "### Monitoring start failed: %#m\n", v22, v23, v24, v25, v39);
            }

LABEL_37:
            [(CUNetInterfaceMonitor *)self _ensureStopped];
LABEL_38:

            return;
          }

LABEL_29:
          CFRelease(v20);
          goto LABEL_30;
        }

        v26 = Mutable;
        v27 = *MEMORY[0x1E69822F0];
        v28 = *MEMORY[0x1E69822E0];
        v29 = *MEMORY[0x1E6982338];
        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982338]);
        if (!NetworkInterfaceEntity || (v31 = NetworkInterfaceEntity, CFArrayAppendValue(v26, NetworkInterfaceEntity), CFRelease(v31), v32 = *MEMORY[0x1E6982340], (v33 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v27, v28, *MEMORY[0x1E6982340])) == 0) || (v34 = v33, CFArrayAppendValue(v26, v33), CFRelease(v34), (NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, v27, v29)) == 0) || (v36 = NetworkGlobalEntity, CFArrayAppendValue(v26, NetworkGlobalEntity), CFRelease(v36), (v37 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, v27, v32)) == 0))
        {
          v39 = 4294960568;
LABEL_28:
          CFRelease(v26);
          if (!v20)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v38 = v37;
        CFArrayAppendValue(v26, v37);
        CFRelease(v38);
        if (!SCDynamicStoreSetNotificationKeys(v20, 0, v26))
        {
          if (!SCError())
          {
LABEL_27:
            v39 = 4294960596;
            goto LABEL_28;
          }

          v40 = SCError();
          if (v40)
          {
LABEL_26:
            v39 = v40;
            goto LABEL_28;
          }
        }

        if (SCDynamicStoreSetDispatchQueue(v20, self->_dispatchQueue))
        {
LABEL_17:
          self->_scStore = v20;
          [(CUNetInterfaceMonitor *)self _networkInterfacesChanged:1];
          [(CUNetInterfaceMonitor *)self _primaryIPChanged:1];
          v20 = 0;
          v39 = 0;
          goto LABEL_28;
        }

        if (SCError())
        {
          v40 = SCError();
          if (!v40)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }

        goto LABEL_27;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUNetInterfaceMonitor _ensureStartedSC]", 0x1Eu, "Monitoring start SC", v4, v5, v6, v7, v42);
    goto LABEL_6;
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    flagsChangedHandler = self->_flagsChangedHandler;
    self->_flagsChangedHandler = 0;

    interfacesChangedHandler = self->_interfacesChangedHandler;
    self->_interfacesChangedHandler = 0;

    v7 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    primaryIPChangedHandler = self->_primaryIPChangedHandler;
    self->_primaryIPChangedHandler = 0;

    primaryNetworkChangedHandler = self->_primaryNetworkChangedHandler;
    self->_primaryNetworkChangedHandler = 0;

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_9;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUNetInterfaceMonitor _invalidated]", 0x1Eu, "Invalidated\n", v10, v11, v12, v13, v2);
LABEL_9:
    self->_invalidateDone = 1;
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v10 = v6;
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

    LogPrintF(ucat, "[CUNetInterfaceMonitor _invalidate]", 0x1Eu, "Invalidate\n", v2, v3, v4, v5, v6);
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CUNetInterfaceMonitor *)self _ensureStopped];

  [(CUNetInterfaceMonitor *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CUNetInterfaceMonitor_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CUNetInterfaceMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __48__CUNetInterfaceMonitor_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  if (*v10 > 30)
  {
    goto LABEL_5;
  }

  if (*v10 != -1)
  {
    goto LABEL_3;
  }

  v11 = _LogCategory_Initialize(*(v9 + 32), 0x1Eu);
  v9 = *(a1 + 32);
  if (v11)
  {
    v10 = *(v9 + 32);
LABEL_3:
    LogPrintF(v10, "[CUNetInterfaceMonitor activateWithCompletion:]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
    v9 = *(a1 + 32);
  }

LABEL_5:
  if ((*(v9 + 44) & 0x14) != 0)
  {
    [v9 _ensureStartedNW];
  }

  else
  {
    [v9 _ensureStartedSC];
  }

  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE8D50;
  v6 = labelCopy;
  [labelCopy UTF8String];
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
  v4.super_class = CUNetInterfaceMonitor;
  [(CUNetInterfaceMonitor *)&v4 dealloc];
}

- (CUNetInterfaceMonitor)init
{
  v6.receiver = self;
  v6.super_class = CUNetInterfaceMonitor;
  v2 = [(CUNetInterfaceMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUNetInterfaceMonitor;
    v4 = v3;
  }

  return v3;
}

@end