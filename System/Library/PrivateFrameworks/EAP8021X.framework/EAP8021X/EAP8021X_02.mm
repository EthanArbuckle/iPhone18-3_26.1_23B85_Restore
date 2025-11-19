uint64_t eapttls_eap_read_avp(uint64_t *a1, void *a2, unsigned int *a3)
{
  v5 = 0;
  v41 = *MEMORY[0x277D85DE8];
  data = 0;
  v6 = *a1;
  v7 = *a3;
  while (1)
  {
    processed = 0;
    v8 = SSLRead(*v6, &data, 8uLL, &processed);
    if (v8)
    {
      break;
    }

    if (processed != 8)
    {
      LogHandle = EAPLogGetLogHandle();
      v19 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v19))
      {
        *buf = 0;
        v20 = "EAP AVP is invalid";
        v21 = LogHandle;
        v22 = v19;
        v23 = 2;
        goto LABEL_25;
      }

LABEL_26:
      LODWORD(v14) = 0;
LABEL_27:
      if (v5)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    v9 = bswap32(HIDWORD(data));
    v10 = v9 & 0xFFFFFF;
    if ((v9 & 0xFFFFFF) <= 8)
    {
      v24 = EAPLogGetLogHandle();
      v25 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 67109376;
        *v39 = v10;
        *&v39[4] = 1024;
        *&v39[6] = 8;
        v20 = "EAP AVP is too short %d <= %d";
        v21 = v24;
        v22 = v25;
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if ((v9 & 3) != 0)
    {
      v11 = (v9 & 0xFFFFFC) - 4;
    }

    else
    {
      v11 = (v9 & 0xFFFFFF) - 8;
    }

    if (v11 > v7)
    {
      v26 = EAPLogGetLogHandle();
      v27 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 67109376;
        *v39 = v11;
        *&v39[4] = 1024;
        *&v39[6] = v7;
        v20 = "EAP AVP is too large %d > %d";
        v21 = v26;
        v22 = v27;
LABEL_24:
        v23 = 14;
LABEL_25:
        _os_log_impl(&dword_249EFB000, v21, v22, v20, buf, v23);
      }

      goto LABEL_26;
    }

    if (v5 & 1 | (data != 1325400064))
    {
      MEMORY[0x28223BE20]();
      v12 = SSLRead(*v6, &processed - ((v11 + 15) & 0x1FFFFFFF0), v11, &processed);
      if (v12)
      {
        v14 = v12;
        v29 = EAPLogGetLogHandle();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = EAPSSLErrorString(v14);
          *buf = 136315394;
          *v39 = v31;
          *&v39[8] = 1024;
          v40 = v14;
          _os_log_impl(&dword_249EFB000, v29, v30, "SSLRead failed, %s (%d)", buf, 0x12u);
        }

        if ((v5 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_28:
        result = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v13 = SSLRead(*v6, a2, v11, &processed);
      if (v13)
      {
        v14 = v13;
        v33 = EAPLogGetLogHandle();
        v34 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = EAPSSLErrorString(v14);
          *buf = 136315394;
          *v39 = v35;
          *&v39[8] = 1024;
          v40 = v14;
          _os_log_impl(&dword_249EFB000, v33, v34, "SSLRead failed, %s (%d)", buf, 0x12u);
        }

        goto LABEL_32;
      }

      *a3 = processed;
      v5 = 1;
    }
  }

  v14 = v8;
  if (v8 == -9803)
  {
    goto LABEL_27;
  }

  v15 = EAPLogGetLogHandle();
  v16 = _SC_syslog_os_log_mapping();
  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_27;
  }

  v17 = EAPSSLErrorString(v14);
  *buf = 136315394;
  *v39 = v17;
  *&v39[8] = 1024;
  v40 = v14;
  _os_log_impl(&dword_249EFB000, v15, v16, "SSLRead failed, %s (%d)", buf, 0x12u);
  if (v5)
  {
    goto LABEL_28;
  }

LABEL_32:
  result = 0;
  *(v6 + 124) = v14;
LABEL_33:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

char *eapttls_eap_process(uint64_t a1, unsigned __int8 *a2, char *a3, signed int *a4, int *a5, _BYTE *a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v36 = 0;
  *a6 = 0;
  v12 = *a2;
  if (v12 == 2)
  {
    v21 = a2[4];
    v22 = *(v11 + 296);
    if (v22)
    {
      LODWORD(v22) = EAPClientModulePluginEAPType(v22);
    }

    if (v22 != v21)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v12 == 1)
  {
    v13 = a2[4];
    if (!a2[4])
    {
      goto LABEL_26;
    }

    v15 = *(v11 + 296);
    if (v15)
    {
      LODWORD(v15) = EAPClientModulePluginEAPType(v15);
    }

    if (v15 != v13)
    {
      v16 = a2[4];
      if (v16 <= 0x1A && ((1 << v16) & 0x4000050) != 0)
      {
        eap_client_free_1(v11);
        v17 = a2[4];
        v18 = *a1;
        *(v18 + 472) = 0;
        *(v18 + 480) = 0;
        if (*(v18 + 296))
        {
          LogHandle = EAPLogGetLogHandle();
          v20 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_249EFB000, LogHandle, v20, "eap_client_init: already initialized\n", buf, 2u);
          }

          goto LABEL_15;
        }

        v29 = EAPClientModuleLookup(v17);
        if (v29)
        {
          v30 = v29;
          my_CFRelease((v18 + 456));
          my_CFRelease((v18 + 464));
          *(v18 + 448) = 0;
          *(v18 + 416) = 0u;
          *(v18 + 432) = 0u;
          *(v18 + 384) = 0u;
          *(v18 + 400) = 0u;
          *(v18 + 352) = 0u;
          *(v18 + 368) = 0u;
          *(v18 + 320) = 0u;
          *(v18 + 336) = 0u;
          *(v18 + 304) = 0u;
          *(v18 + 320) = *(a1 + 16);
          *(v18 + 344) = *(a1 + 40);
          *(v18 + 352) = *(a1 + 48);
          *(v18 + 368) = *(a1 + 64);
          *(v18 + 376) = *(a1 + 72);
          *(v18 + 384) = *(a1 + 80);
          *(v18 + 488) = EAPClientModulePluginInit(v30, v18 + 304, v18 + 456, v18 + 492);
          *(v18 + 480) = EAPClientModulePluginEAPName(v30);
          *(v18 + 472) = v17;
          if (!*(v18 + 488))
          {
            *(v18 + 296) = v30;
            goto LABEL_15;
          }
        }

        if (*(v11 + 488) == 3)
        {
          *a5 = 3;
          save_last_packet_0(v11, a2);
          goto LABEL_26;
        }

        v33 = EAPLogGetLogHandle();
        v34 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = a2[4];
          *buf = 67109120;
          v38 = v35;
          _os_log_impl(&dword_249EFB000, v33, v34, "eap_client_init type %d failed", buf, 8u);
        }

        v32 = *(v11 + 488);
      }

      else
      {
        v31 = *(v11 + 1528);
        if (v31 <= 2)
        {
          *(v11 + 1528) = v31 + 1;
          buf[0] = inner_auth_types_1[v31];
          v36 = EAPPacketCreate(a3, *a4, 2, a2[1], 3, buf, 1, a4);
          goto LABEL_26;
        }

        v32 = 5;
      }

      *a5 = v32;
      *(v11 + 104) = 2;
      goto LABEL_26;
    }
  }

LABEL_15:
  if (*(v11 + 296))
  {
    my_CFRelease((v11 + 456));
    my_CFRelease((v11 + 464));
    v23 = *a1;
    *(v23 + 344) = *(a1 + 40);
    *(v23 + 352) = *(a1 + 48);
    *(v23 + 368) = *(a1 + 64);
    *(v23 + 376) = *(a1 + 72);
    *(v23 + 324) = *(a1 + 20);
    *(v23 + 384) = *(a1 + 80);
    v24 = EAPClientModulePluginProcess(*(v23 + 296), v23 + 304, a2, &v36, v23 + 488, v23 + 492);
    v25 = v36;
    if (v36)
    {
      *a6 = 1;
      *a4 = EAPPacketGetLength(v25);
    }

    *(v11 + 464) = EAPClientModulePluginPublishProperties(*(v11 + 296), v11 + 304);
    if (v24 == 2)
    {
      *(v11 + 292) = 2;
      v26 = *(v11 + 488);
      goto LABEL_25;
    }

    if (v24 == 1)
    {
      *(v11 + 292) = 1;
    }

    else if (!v24 && *(v11 + 488) == 3)
    {
      *(v11 + 456) = EAPClientModulePluginRequireProperties(*(v11 + 296), v11 + 304);
      save_last_packet_0(v11, a2);
      v26 = *(v11 + 488);
      *(v11 + 128) = v26;
LABEL_25:
      *a5 = v26;
    }
  }

LABEL_26:
  result = v36;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void save_last_packet_0(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 496);
  if (v2 != a2)
  {
    Length = EAPPacketGetLength(a2);
    v6 = Length;
    v7 = Length < 0x401 ? (a1 + 504) : malloc_type_malloc(Length, 0x100004052888210uLL);
    *(a1 + 496) = v7;
    memcpy(v7, a2, v6);
    if (v2)
    {
      if (v2 != (a1 + 504))
      {

        free(v2);
      }
    }
  }
}

uint64_t eapttls_msk_copy_bytes(uint64_t *a1, _OWORD *a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if (!*(*a1 + 149))
  {
    return 0;
  }

  v4 = *(v3 + 150);
  v5 = *(v3 + 166);
  v6 = *(v3 + 198);
  a2[2] = *(v3 + 182);
  a2[3] = v6;
  *a2 = v4;
  a2[1] = v5;
  return 64;
}

CFArrayRef eapttls_require_props(void *a1)
{
  v1 = *a1;
  if (*(*a1 + 128) != 3)
  {
    return 0;
  }

  if ((*(v1 + 148) & 1) == 0)
  {
    v3 = @"TLSUserTrustProceedCertificateChain";
    goto LABEL_13;
  }

  if (*(v1 + 132) != 5)
  {
    if (a1[8])
    {
      return 0;
    }

    v3 = @"UserPassword";
LABEL_13:
    values = v3;
    return CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  }

  if (*(v1 + 136) != 1)
  {
    return 0;
  }

  result = *(v1 + 456);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

_BYTE *eapttls_tunnel(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a2 + 1);
  if (*(*a1 + 137))
  {
    v7 = *(v5 + 132);
    if (v7 == 4)
    {
      if (*(v5 + 76) != v6)
      {
        v30 = 0;
        processed = 0;
        data = 0;
        v18 = SSLRead(*v5, &data, 0xCuLL, &processed);
        if (v18)
        {
          v19 = v18;
          LogHandle = EAPLogGetLogHandle();
          v21 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v21))
          {
            v22 = EAPSSLErrorString(v19);
            *buf = 136315394;
            *&buf[4] = v22;
            v32 = 2048;
            v33 = v19;
            _os_log_impl(&dword_249EFB000, LogHandle, v21, "SSLRead failed, %s (%ld)", buf, 0x16u);
          }

          v17 = 0;
          *(v5 + 104) = 2;
          *(v5 + 124) = v19;
          goto LABEL_29;
        }

        if (processed == 12 && (v23 = bswap32(HIDWORD(data)), (v23 & 0x80000000) != 0) && data == 436207616 && v30 == 922812416 && (v24 = v23 & 0xFFFFFF, v24 <= 0x20000))
        {
          v26 = v24 - 12;
          *buf = v24 - 12;
          v27 = malloc_type_malloc(v24 - 12, 0x937C5DADuLL);
          if (SSLRead(*v5, v27, v26, buf) || *buf < 0x2BuLL)
          {
            v17 = 0;
            *(v5 + 104) = 2;
            if (!v27)
            {
              goto LABEL_29;
            }
          }

          else if (*v27 == *(v5 + 1588) && MSChap2AuthResponseValid(a1[8], *(a1 + 18), (v5 + 1548), (v5 + 1532), (v5 + 1572), a1[5], v27 + 1))
          {
            v17 = EAPTLSPacketCreate(2, 21, v6, 0, 0, 0);
          }

          else
          {
            v17 = 0;
            *(v5 + 104) = 2;
          }

          free(v27);
        }

        else
        {
          v17 = 0;
          *(v5 + 104) = 2;
        }

LABEL_29:
        v25 = *MEMORY[0x277D85DE8];
        return v17;
      }
    }

    else if (v7 == 5)
    {
      if (eapttls_eap())
      {
        v9 = *(a2 + 1);
        v10 = *(v5 + 120);
        v11 = *MEMORY[0x277D85DE8];
        v12 = (v5 + 40);
        v13 = (v5 + 72);
LABEL_14:

        return EAPTLSPacketCreate(2, 21, v9, v10, v12, v13);
      }

      v17 = 0;
      goto LABEL_29;
    }

    v16 = *MEMORY[0x277D85DE8];
    v9 = *(a2 + 1);
    v10 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  if (*(v5 + 76) == v6)
  {
    memoryBufferClear(v5 + 8);
  }

  if (!a1[8])
  {
    v17 = 0;
    *a3 = 3;
    goto LABEL_29;
  }

  v14 = *MEMORY[0x277D85DE8];

  return eapttls_start_inner_auth(a1, v6);
}

_BYTE *eapttls_handshake(uint64_t *a1, char a2, _DWORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*(*a1 + 278) == 1 && (*(v6 + 148) & 1) == 0)
  {
    v7 = eapttls_verify_server(a1, a2, a3);
    if (!*(v6 + 148))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = SSLHandshake(*v6);
  if (v8 != -9841)
  {
    goto LABEL_11;
  }

  if (*(v6 + 278) != 1)
  {
    *(v6 + 278) = 1;
    my_CFRelease((v6 + 280));
    EAPSSLCopyPeerCertificates(*v6, (v6 + 280));
    v7 = eapttls_verify_server(a1, a2, a3);
    if (!*(v6 + 148))
    {
      goto LABEL_35;
    }

    v8 = SSLHandshake(*v6);
LABEL_11:
    v12 = v8;
    if (v8 == -9803)
    {
      if (!*(v6 + 40))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!v8)
      {
        if ((*(v6 + 148) & 1) == 0)
        {
          my_CFRelease((v6 + 280));
          EAPSSLCopyPeerCertificates(*v6, (v6 + 280));
          v7 = eapttls_verify_server(a1, a2, a3);
          if ((*(v6 + 148) & 1) == 0)
          {
            LogHandle = EAPLogGetLogHandle();
            v10 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(LogHandle, v10))
            {
              goto LABEL_35;
            }

            *buf = 0;
            v11 = "trust_proceed is FALSE?";
            goto LABEL_8;
          }
        }

        *(v6 + 136) = 1;
        *(v6 + 149) = 0;
        v13 = *v6;
        v14 = EAPTLSComputeKeyData();
        if (v14)
        {
          v15 = v14;
          v16 = EAPLogGetLogHandle();
          v17 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 136315394;
            v29 = EAPSSLErrorString(v15);
            v30 = 2048;
            v31 = v15;
            _os_log_impl(&dword_249EFB000, v16, v17, "EAPTLSComputeSessionKey failed, %s (%ld)", buf, 0x16u);
          }
        }

        else
        {
          *(v6 + 149) = 1;
        }

        v25 = *v6;
        if (!SSLGetResumableSessionInfo())
        {
          *(v6 + 289) = 0;
        }

        if (!a1[8])
        {
          *(v6 + 128) = 3;
          *a3 = 3;
          goto LABEL_35;
        }

        started = eapttls_start_inner_auth(a1, a2);
LABEL_34:
        v7 = started;
        goto LABEL_35;
      }

      v18 = EAPLogGetLogHandle();
      v19 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 136315394;
        v29 = EAPSSLErrorString(v12);
        v30 = 2048;
        v31 = v12;
        _os_log_impl(&dword_249EFB000, v18, v19, "SSLHandshake failed, %s (%ld)", buf, 0x16u);
      }

      *(v6 + 124) = v12;
      my_CFRelease((v6 + 280));
      EAPSSLCopyPeerCertificates(*v6, (v6 + 280));
      *(v6 + 104) = 2;
      SSLClose(*v6);
      if (!*(v6 + 40))
      {
        if (v12 != -9802)
        {
          goto LABEL_35;
        }

        v21 = a2;
        v20 = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_24;
      }
    }

    v20 = *(v6 + 120);
    v21 = a2;
    v22 = (v6 + 40);
    v23 = (v6 + 72);
LABEL_24:
    started = EAPTLSPacketCreate(2, 21, v21, v20, v22, v23);
    goto LABEL_34;
  }

  LogHandle = EAPLogGetLogHandle();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v10))
  {
    *buf = 0;
    v11 = "AuthCompleted again?";
LABEL_8:
    _os_log_impl(&dword_249EFB000, LogHandle, v10, v11, buf, 2u);
  }

LABEL_35:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

double memoryBufferInit(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *memoryBufferAllocate(uint64_t a1, size_t size)
{
  result = malloc_type_malloc(size, 0xB1564394uLL);
  *a1 = result;
  *(a1 + 8) = size;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

BOOL memoryBufferAddData(uint64_t a1, const void *a2, size_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = v3 + a3;
  if (v3 + a3 <= v4)
  {
    memmove((*a1 + v3), a2, a3);
    v8 = *(a1 + 8);
    v9 = *(a1 + 16) + a3;
    *(a1 + 16) = v9;
    if (v9 == v8)
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
    }
  }

  return v5 <= v4;
}

__CFString *EAPTLSPacketCopyDescription(unsigned __int8 *a1, _BYTE *a2)
{
  Length = EAPPacketGetLength(a1);
  *a2 = 0;
  if (*a1 - 1 > 1)
  {
    return 0;
  }

  v5 = Length;
  Mutable = CFStringCreateMutable(0, 0);
  if (v5 <= 5)
  {
    CFStringAppendFormat(Mutable, 0, @"EAPTLSPacket header truncated %d < %d\n", v5, 6);
    return Mutable;
  }

  v7 = EAPTypeStr(a1[4]);
  if (*a1 == 1)
  {
    v8 = "Request";
  }

  else
  {
    v8 = "Response";
  }

  v9 = " [";
  if (!a1[5])
  {
    v9 = &unk_249F2FF71;
  }

  CFStringAppendFormat(Mutable, 0, @"%s %s: Identifier %d Length %d Flags 0x%x%s", v7, v8, a1[1], v5, a1[5], v9);
  v10 = a1[5];
  if ((v10 & 0x20) != 0)
  {
    CFStringAppendFormat(Mutable, 0, @" start");
    v10 = a1[5];
  }

  if ((v10 & 0x80) != 0)
  {
    if (v5 <= 9)
    {
      CFStringAppendFormat(Mutable, 0, @"\nEAPTLSLengthIncludedPacket header truncated %d < %d\n", v5, 10);
      return Mutable;
    }

    v11 = (a1 + 10);
    v12 = (v5 - 10);
    v13 = bswap32(*(a1 + 6));
    CFStringAppendFormat(Mutable, 0, @" length=%u", v13);
    v10 = a1[5];
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = (a1 + 6);
  v12 = (v5 - 6);
  v13 = v12;
  if ((v10 & 0x40) != 0)
  {
LABEL_14:
    CFStringAppendFormat(Mutable, 0, @" more");
    v10 = a1[5];
  }

LABEL_15:
  if (v10)
  {
    v14 = " ]";
  }

  else
  {
    v14 = &unk_249F2FF71;
  }

  CFStringAppendFormat(Mutable, 0, @"%s Data Length %d\n", v14, v12);
  if (v13 <= 0x20000)
  {
    print_data_cfstr(Mutable, v11, v12);
    *a2 = 1;
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"rejecting packet to avoid DOS attack %u > %d\n", v13, 0x20000);
  }

  return Mutable;
}

uint64_t EAPTLSSecTrustEvaluate(__SecTrust *a1, SecTrustResultType *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  error = 0;
  v4 = SecTrustEvaluateWithError(a1, &error);
  TrustResult = SecTrustGetTrustResult(a1, a2);
  if (!v4 && error)
  {
    LogHandle = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v7))
    {
      *buf = 138412290;
      v14 = error;
      _os_log_impl(&dword_249EFB000, LogHandle, v7, "SecTrustEvaluateWithError failed, %@\n", buf, 0xCu);
    }

    CFRelease(error);
  }

  if (TrustResult)
  {
    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 67109120;
      LODWORD(v14) = TrustResult;
      _os_log_impl(&dword_249EFB000, v8, v9, "SecTrustGetTrustResult failed, %d\n", buf, 8u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return TrustResult;
}

uint64_t EAPTLSCopyIdentityTrustChain(void *a1, CFDictionaryRef theDict, __CFArray **a3)
{
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"TLSIdentityHandle");
      TypeID = CFDictionaryGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        v8 = CFDictionaryGetValue(Value, @"TLSClientIdentityTrustChain");
        v9 = CFArrayGetTypeID();
        if (v8 && CFGetTypeID(v8) == v9)
        {

          return EAPSecIdentityCreateTrustChainWithPersistentCertificateRefs(a1, v8, a3);
        }

LABEL_15:
        *a3 = 0;
        return 4294967246;
      }

      v12 = CFDictionaryGetValue(theDict, @"TLSClientIdentityTrustChainCertificates");
      v13 = CFArrayGetTypeID();
      if (v12 && CFGetTypeID(v12) == v13)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        if (!Mutable)
        {
          return 4294967188;
        }

        v15 = Mutable;
        CFArrayAppendValue(Mutable, a1);
        v17.length = CFArrayGetCount(v12);
        v17.location = 0;
        CFArrayAppendArray(v15, v12, v17);
        result = 0;
        *a3 = v15;
        return result;
      }
    }

    return EAPSecIdentityCreateTrustChain(a1, a3);
  }

  else
  {
    if (!theDict)
    {
      goto LABEL_15;
    }

    v11 = CFDictionaryGetValue(theDict, @"TLSIdentityHandle");
    if (!v11)
    {
      goto LABEL_15;
    }

    return EAPSecIdentityHandleCreateSecIdentityTrustChain(v11, a3);
  }
}

void *EAPTLSSessionCreateContext(const __CFDictionary *a1, int a2, const void *a3, const __CFArray *a4, unsigned int *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  v10 = malloc_type_malloc(0x10uLL, 0xE0040E685C293uLL);
  *v10 = 0;
  v10[1] = 0;
  if (!EAPOLControlPrefsGetUseBoringSSL())
  {
    v20 = EAPTLSMemIOContextCreate(a1, 0, a3, 0, &v34);
    if (!v20 || v34)
    {
      LogHandle = EAPLogGetLogHandle();
      v27 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v27))
      {
        v28 = EAPSSLErrorString(v34);
        *buf = 136315394;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v34;
        _os_log_impl(&dword_249EFB000, LogHandle, v27, "EAPTLSMemIOContextCreate failed, %s (%ld)", buf, 0x16u);
      }

      if (!v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!a4 || CFArrayGetCount(a4) < 1 || (v34 = SSLSetCertificate(v20, a4)) == 0)
      {
        *v10 = v20;
        v16 = EAPLogGetLogHandle();
        v17 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v18 = "TLS(SecureTransport) session started";
        v19 = buf;
        goto LABEL_27;
      }

      v21 = EAPLogGetLogHandle();
      v22 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = EAPSSLErrorString(v34);
        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v34;
        _os_log_impl(&dword_249EFB000, v21, v22, "SSLSetCertificate failed, %s (%ld)", buf, 0x16u);
      }
    }

    CFRelease(v20);
    goto LABEL_28;
  }

  v36 = 0u;
  memset(buf, 0, sizeof(buf));
  v32 = 0;
  EAPBoringSSLUtilGetPreferredTLSVersions(a1, &v32 + 1, &v32);
  *&buf[16] = HIWORD(v32);
  *&buf[18] = v32;
  *&buf[24] = EAPTLSSessionMemoryIORead;
  *&v36 = EAPTLSSessionMemoryIOWrite;
  DWORD2(v36) = a2;
  v37 = a3;
  if (a4 && CFArrayGetCount(a4) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
    if (isA_SecIdentity(ValueAtIndex))
    {
      *buf = ValueAtIndex;
    }

    if (CFArrayGetCount(a4) >= 2)
    {
      Count = CFArrayGetCount(a4);
      MutableCopy = CFArrayCreateMutableCopy(0, Count, a4);
      v33 = MutableCopy;
      CFArrayRemoveValueAtIndex(MutableCopy, 0);
      *&buf[8] = MutableCopy;
    }
  }

  v14 = EAPBoringSSLSessionContextCreate(buf, 0);
  my_CFRelease(&v33);
  if (v14)
  {
    v10[1] = v14;
    EAPBoringSSLSessionStart(v14, v15);
    v16 = EAPLogGetLogHandle();
    v17 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_28;
    }

    *v31 = 0;
    v18 = "TLS(boringssl) session started";
    v19 = v31;
LABEL_27:
    _os_log_impl(&dword_249EFB000, v16, v17, v18, v19, 2u);
    goto LABEL_28;
  }

  v24 = EAPLogGetLogHandle();
  v25 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v24, v25))
  {
    *v31 = 0;
    _os_log_impl(&dword_249EFB000, v24, v25, "EAPBoringSSLSessionContextCreate failed", v31, 2u);
  }

  v34 = -67671;
LABEL_28:
  if (a5)
  {
    *a5 = v34;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t EAPTLSSessionMemoryIORead(uint64_t a1, void *a2, size_t *a3)
{
  if (memoryBufferIsComplete(*(a1 + 8)))
  {
    if (EAPSSLMemoryIORead(a1, a2, a3) == -9803)
    {
      return 4294967246;
    }
  }

  else
  {
    *a3 = 0;
  }

  return 0;
}

void EAPTLSSessionFreeContext(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      EAPBoringSSLSessionContextFree(v2);
    }

    else if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

SSLContext *EAPTLSSessionClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*(a1 + 8))
  {
    EAPBoringSSLSessionStop(*(a1 + 8), a2);
  }

  else
  {
    result = *a1;
    if (!result)
    {
      return result;
    }

    SSLClose(result);
  }

  return 0;
}

uint64_t EAPTLSSessionSetPeerID(uint64_t *a1, const void *a2, size_t a3)
{
  result = 4294967246;
  if (a1 && a2 && a3)
  {
    if (a1[1])
    {
      return 0;
    }

    else
    {
      result = *a1;
      if (*a1)
      {
        return SSLSetPeerID(result, a2, a3);
      }
    }
  }

  return result;
}

uint64_t EAPTLSSessionGetState(uint64_t *a1, SSLSessionState *state)
{
  if (!state)
  {
    return 4294967246;
  }

  *state = kSSLIdle;
  if (!a1)
  {
    return 0;
  }

  v4 = a1[1];
  if (v4)
  {
    v7 = 0;
    result = EAPBoringSSLSessionGetCurrentState(v4, &v7);
    v6 = v7;
    if (v7 >= 3)
    {
      v6 = kSSLClosed;
    }

    *state = v6;
  }

  else
  {
    result = *a1;
    if (*a1)
    {

      return SSLGetSessionState(result, state);
    }
  }

  return result;
}

uint64_t EAPTLSSessionHandshake(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = 4294967246;
    goto LABEL_10;
  }

  if (*(a1 + 8))
  {
    v1 = EAPBoringSSLSessionHandshake(*(a1 + 8));
LABEL_7:
    v2 = v1;
    goto LABEL_8;
  }

  v3 = *a1;
  if (v3)
  {
    v1 = SSLHandshake(v3);
    goto LABEL_7;
  }

  v2 = 0;
LABEL_8:
  LogHandle = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v5))
  {
    v8 = 136315394;
    v9 = EAPSecurityErrorString(v2);
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_249EFB000, LogHandle, v5, "received handshake status [%s]:[%d]", &v8, 0x12u);
  }

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

void **EAPTLSSessionCopyPeerCertificates(void **result, void *a2)
{
  if (result && a2)
  {
    *a2 = 0;
    if (result[1])
    {
      return EAPBoringSSLSessionCopyServerCertificates(result[1], a2);
    }

    else
    {
      result = *result;
      if (result)
      {
        return EAPSSLCopyPeerCertificates(result, a2);
      }
    }
  }

  return result;
}

void *EAPTLSSessionGetSecTrust(uint64_t a1, const char *a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return EAPBoringSSLSessionGetSecTrust(result, a2);
  }

  return result;
}

uint64_t EAPTLSSessionIsRevocationStatusCheckRequired(uint64_t result)
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (EAPOLControlPrefsGetRevocationCheck() != 1)
    {
      goto LABEL_11;
    }

    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, LogHandle, v3, "revocation check preference is enabled", buf, 2u);
    }

    v4 = *(v1 + 8);
    if (!v4)
    {
      goto LABEL_11;
    }

    v9 = 0;
    NegotiatedTLSVersion = EAPBoringSSLSessionGetNegotiatedTLSVersion(v4, &v9);
    v6 = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 67109120;
      v11 = v9;
      _os_log_impl(&dword_249EFB000, v6, v7, "negotiated TLS protocol version is [%04X]", buf, 8u);
    }

    if (!NegotiatedTLSVersion && v9 == 772)
    {
      result = 1;
    }

    else
    {
LABEL_11:
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPTLSSessionComputeSessionKey(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*(a1 + 8))
  {
    return EAPBoringSSLSessionComputeKeyData(*(a1 + 8), a4, a5);
  }

  if (*a1)
  {
    return EAPTLSComputeKeyData();
  }

  else
  {
    return 4294967246;
  }
}

void EAPTLSSessionGetSessionResumed(uint64_t a1, BOOL *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_13;
  }

  if (*(a1 + 8))
  {
    SessionResumed = EAPBoringSSLSessionGetSessionResumed(*(a1 + 8), &v10);
  }

  else
  {
    if (!*a1)
    {
      v8 = 0;
      goto LABEL_12;
    }

    SessionResumed = SSLGetResumableSessionInfo();
  }

  v4 = SessionResumed;
  if (!SessionResumed)
  {
    v8 = v10 != 0;
LABEL_12:
    *a2 = v8;
    goto LABEL_13;
  }

  LogHandle = EAPLogGetLogHandle();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v6))
  {
    v7 = EAPSSLErrorString(v4);
    *buf = 136315394;
    v12 = v7;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_249EFB000, LogHandle, v6, "EAP-TLS session failed to get session resumed info, %s (%ld)", buf, 0x16u);
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
}

void *EAPTLSSessionGetNegotiatedTLSProtocolVersion(void *result)
{
  if (result)
  {
    if (*result)
    {
      return 0;
    }

    else
    {
      result = result[1];
      if (result)
      {
        v4 = v1;
        v5 = v2;
        v3 = 0;
        if (EAPBoringSSLSessionGetNegotiatedTLSVersion(result, &v3) || (v3 - 769) > 3u)
        {
          return 0;
        }

        else
        {
          return *(&off_278FBE0D8 + (v3 - 769));
        }
      }
    }
  }

  return result;
}

SSLContext *EAPTLSSessionGetNegotiatedCipher(SSLContext *result, SSLCipherSuite *a2)
{
  if (result && a2)
  {
    *a2 = 0;
    result = *result;
    if (result)
    {
      return SSLGetNegotiatedCipher(result, a2);
    }
  }

  return result;
}

uint64_t eapsim_init(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v2 = SIMStaticInitFromProperties(&v37, *(a1 + 80));
  v3 = *(a1 + 80);
  if (v2)
  {
    v4 = copy_static_imsi(v3);
    if (!v4)
    {
      LogHandle = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v24))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, LogHandle, v24, "eapsim: static triplets specified but IMSI missing", buf, 2u);
      }

      SIMStaticInitFromProperties(&v37, 0);
      result = 4;
      goto LABEL_45;
    }

    v5 = v4;
    v6 = 1;
  }

  else
  {
    v5 = SIMCopyIMSI(v3);
    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    v9 = os_log_type_enabled(v7, v8);
    if (!v5)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v7, v8, "EAP-SIM: no SIM available", buf, 2u);
      }

      goto LABEL_44;
    }

    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v7, v8, "EAP-SIM: SIM found", buf, 2u);
    }

    v6 = 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), @"TLSTrustExceptionsID");
  v11 = malloc_type_malloc(0x718uLL, 0x1070040CC9F52CAuLL);
  if (v11)
  {
    v12 = v11;
    bzero(v11, 0x718uLL);
    *(v12 + 16) = -1;
    identity_type = S_get_identity_type(*(a1 + 80));
    *(v12 + 264) = EAPSIMAKAPersistentStateCreate(18, 20, v5, identity_type, Value);
    CFRelease(v5);
    v14 = v38;
    *(v12 + 40) = v37;
    *(v12 + 56) = v14;
    *(v12 + 72) = v39;
    plist_int = S_get_plist_int(*(a1 + 80), @"EAPSIMNumberOfRANDs", 3);
    *(v12 + 24) = plist_int;
    if ((plist_int & 0xFFFFFFFE) != 2)
    {
      v16 = EAPLogGetLogHandle();
      v17 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v12 + 24);
        *buf = 67109120;
        v41 = v18;
        _os_log_impl(&dword_249EFB000, v16, v17, "eapsim: EAPSIMNumberOfRands %d is invalid, using 3 instead", buf, 8u);
      }

      *(v12 + 24) = 3;
    }

    if (EAPSIMAKAPersistentStateGetReauthID(*(v12 + 264)))
    {
      MasterKey = EAPSIMAKAPersistentStateGetMasterKey(*(v12 + 264));
      fips186_2prf(MasterKey, v12 + 80);
      *(v12 + 240) = 1;
      if (EAPSIMAKAPersistentStateGetReauthIDUsed(*(v12 + 264)))
      {
        EAPSIMAKAPersistentStateSetReauthIDUsed(*(v12 + 264), 0);
      }
    }

    v20 = *(v12 + 264);
    if (v20)
    {
      v21 = EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v20);
    }

    else
    {
      v21 = 0;
    }

    v36 = 0;
    if (*(a1 + 56))
    {
      goto LABEL_26;
    }

    v35 = 0;
    v25 = EAPSIMAKAInitEncryptedIdentityInfo(18, *(a1 + 80), v6, &v36, &v35);
    *(v12 + 280) = v25;
    v26 = v36;
    if (v36 != 1 || v25)
    {
LABEL_36:
      if (v26 == 1)
      {
        v30 = *(v12 + 280);
        if (v30)
        {
          if (*v30 != 0 && !v21)
          {
            *(v12 + 296) = 1;
            v31 = EAPLogGetLogHandle();
            v32 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v31, v32))
            {
              *buf = 0;
              _os_log_impl(&dword_249EFB000, v31, v32, "EAP-SIM: using out-of-band pseudonym as an identity", buf, 2u);
            }
          }
        }
      }

LABEL_26:
      result = 0;
      *v12 = a1;
      *a1 = v12;
      goto LABEL_45;
    }

    v27 = v35 == 1 && v21;
    v28 = EAPLogGetLogHandle();
    if (v27)
    {
      v29 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v28, v29))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v28, v29, "EAP-SIM: out-of-band pseudonym is not required as in-band pseudonym is available", buf, 2u);
      }

      v26 = v36;
      goto LABEL_36;
    }

    v33 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v28, v33))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v28, v33, "EAP-SIM: failed to get privacy protected identity", buf, 2u);
    }

    EAPSIMContextFree(v12);
LABEL_44:
    result = 16;
    goto LABEL_45;
  }

  CFRelease(v5);
  SIMStaticInitFromProperties(&v37, 0);
  result = 2;
LABEL_45:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t eapsim_process(uint64_t *a1, _BYTE *a2, uint64_t *a3, int *a4, _DWORD *a5)
{
  v5 = *a1;
  *a4 = 0;
  *a5 = 0;
  v6 = *a2;
  switch(v6)
  {
    case 4:
      *(v5 + 16) = -1;
      *(v5 + 8) = 2;
      *a4 = 1;
      break;
    case 3:
      *(v5 + 16) = -1;
      if (*(v5 + 12) == 4)
      {
        *(v5 + 8) = 1;
        EAPSIMAKAPersistentStateSave(*(v5 + 264), *(v5 + 240));
        if (*(v5 + 296) == 1)
        {
          LogHandle = EAPLogGetLogHandle();
          v8 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v8))
          {
            *v10 = 0;
            _os_log_impl(&dword_249EFB000, LogHandle, v8, "eapsim: requesting out-of-band psuedonym refresh", v10, 2u);
          }

          SIMReportDecryptionError(0);
        }
      }

      break;
    case 1:
      *a3 = eapsim_request(v5, a2, a4, a5);
      break;
  }

  return *(v5 + 8);
}

uint64_t eapsim_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*(*a1 + 12) != 4 || *(v2 + 240) != 1)
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 112;
}

uint64_t eapsim_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*(*a1 + 12) != 4 || *(v2 + 240) != 1)
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 144;
}

uint64_t eapsim_msk_copy_bytes(uint64_t *a1, _OWORD *a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if (!*(*a1 + 240) || *(v3 + 12) != 4)
  {
    return 0;
  }

  v4 = *(v3 + 112);
  v5 = *(v3 + 128);
  v6 = *(v3 + 160);
  a2[2] = *(v3 + 144);
  a2[3] = v6;
  *a2 = v4;
  a2[1] = v5;
  return 64;
}

CFDictionaryRef eapsim_publish_props(uint64_t a1)
{
  keys = @"EAPAKASIMNotificationActionInfo";
  if (*(*a1 + 288))
  {
    return CFDictionaryCreate(0, &keys, (*a1 + 288), 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  else
  {
    return 0;
  }
}

void *eapsim_user_name_copy(const __CFDictionary *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v2 = copy_static_imsi(a1);
  v3 = v2;
  v27 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = SIMCopyIMSI(a1);
    v27 = v5;
    if (!v5)
    {
LABEL_33:
      v6 = 0;
      v10 = 0;
      goto LABEL_34;
    }

    v4 = v5;
  }

  v6 = EAPSIMAKAInitEncryptedIdentityInfo(18, a1, v3 != 0, &v26 + 1, &v26);
  identity_type = S_get_identity_type(a1);
  v8 = EAPSIMAKAPersistentStateCreate(18, 20, v4, identity_type, 0);
  my_CFRelease(&v27);
  if (v8)
  {
    v9 = EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v8);
    if (v6 && !EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v8))
    {
      if (*v6)
      {
        LogHandle = EAPLogGetLogHandle();
        v17 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v17))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, LogHandle, v17, "EAP-SIM: using out-of-band pseudonym as an identity", buf, 2u);
        }

        v18 = *v6;
      }

      else
      {
        v18 = v6[1];
      }

      v10 = CFRetain(v18);
      goto LABEL_21;
    }

    v25 = 0;
    v10 = sim_identity_create(v8, a1, identity_type, 1, &v25, 0);
    if (v25)
    {
      v11 = 1;
      EAPSIMAKAPersistentStateSetReauthIDUsed(v8, 1);
      v12 = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v12, v13))
      {
        SSID = EAPSIMAKAPersistentStateGetSSID(v8);
        *buf = 138412546;
        v29 = v10;
        v30 = 2112;
        v31 = SSID;
        _os_log_impl(&dword_249EFB000, v12, v13, "EAP-SIM is using fast re-auth id %@ for ssid : %@", buf, 0x16u);
      }
    }

    else
    {
      if (!EAPSIMAKAPersistentStateGetReauthIDUsed(v8))
      {
LABEL_21:
        EAPSIMAKAPersistentStateRelease(v8);
        v15 = v9;
        goto LABEL_22;
      }

      EAPSIMAKAPersistentStateSetReauthID(v8, 0);
      EAPSIMAKAPersistentStateSetReauthIDUsed(v8, 0);
      v11 = 0;
    }

    EAPSIMAKAPersistentStateSave(v8, v11);
    goto LABEL_21;
  }

  v15 = 0;
  v10 = 0;
LABEL_22:
  if (HIBYTE(v26) != 1 || v6)
  {
    goto LABEL_34;
  }

  v19 = v26 == 1 && v15;
  v20 = EAPLogGetLogHandle();
  if (!v19)
  {
    v22 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v20, v22))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v20, v22, "EAP-SIM: failed to get privacy protected identity", buf, 2u);
    }

    goto LABEL_33;
  }

  v21 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v20, v21))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v20, v21, "EAP-SIM: out-of-band pseudonym is not required as in-band pseudonym is available", buf, 2u);
  }

  v6 = 0;
LABEL_34:
  EAPSIMAKAClearEncryptedIdentityInfo(v6);
  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

CFStringRef eapsim_copy_identity(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v2[4] = 0;
  *(v2 + 12) = 0xFFFFFFFF00000000;
  if (v2[35] && !EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v2[33]))
  {
    result = *(v2[35] + 8);
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {
    v4 = v2[33];
    v5 = a1[10];

    return sim_identity_create(v4, v5, 13, 1, 0, 0);
  }

  return result;
}

uint64_t SIMStaticInitFromProperties(const void **a1, const __CFDictionary *a2)
{
  my_CFRelease(a1);
  my_CFRelease(a1 + 1);
  my_CFRelease(a1 + 2);
  my_CFRelease(a1 + 3);
  my_CFRelease(a1 + 4);
  if (!a2)
  {
    return 0;
  }

  v4 = copy_data_array(a2, @"EAPSIMKcList", 8u);
  *buf = v4;
  v5 = copy_data_array(a2, @"EAPSIMSRESList", 4u);
  v16 = v5;
  v6 = copy_data_array(a2, @"EAPSIMSRANDList", 0x10u);
  v17 = v6;
  if (v4)
  {
    if (v5)
    {
      v7 = v6;
      Count = CFArrayGetCount(v4);
      if (Count == CFArrayGetCount(v5) && (!v7 || Count == CFArrayGetCount(v7)))
      {
        *a1 = v4;
        a1[1] = v5;
        result = 1;
        a1[2] = v7;
        return result;
      }
    }
  }

  my_CFRelease(buf);
  my_CFRelease(&v16);
  my_CFRelease(&v17);
  Value = CFDictionaryGetValue(a2, @"EAPSIMAKAKi");
  v11 = CFDictionaryGetValue(a2, @"EAPSIMAKAOPc");
  TypeID = CFDataGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  v13 = CFDataGetTypeID();
  if (!v11 || CFGetTypeID(v11) != v13 || CFDataGetLength(Value) != 16 || CFDataGetLength(v11) != 16)
  {
    return 0;
  }

  LogHandle = EAPLogGetLogHandle();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v15))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, LogHandle, v15, "eapsim: using MILENAGE based soft-sim.", buf, 2u);
  }

  a1[3] = Value;
  a1[4] = v11;
  CFRetain(Value);
  CFRetain(v11);
  return 1;
}

CFTypeRef copy_static_imsi(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"EAPSIMIMSI");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    Value = CFDictionaryGetValue(a1, @"EAPSIMAKAIMSI");
    v4 = CFStringGetTypeID();
    if (!Value || CFGetTypeID(Value) != v4)
    {
      return 0;
    }
  }

  return CFRetain(Value);
}

uint64_t S_get_identity_type(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"EAPSIMAKAIdentityType");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        a1 = Value;
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return EAPSIMAKAIdentityTypeGetAttributeType(a1);
}

uint64_t S_get_plist_int(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

void EAPSIMContextFree(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    free(v2);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  SIMStaticInitFromProperties((a1 + 40), 0);
  EAPSIMAKAPersistentStateRelease(*(a1 + 264));
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 32) = 0;
  EAPSIMAKAClearEncryptedIdentityInfo(*(a1 + 280));
  my_CFRelease((a1 + 288));
  bzero(a1, 0x718uLL);

  free(a1);
}

CFTypeRef copy_data_array(const __CFDictionary *a1, const void *a2, unsigned int a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  Count = CFArrayGetCount(Value);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  if (Count >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v8);
      v11 = CFDataGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v11 || CFDataGetLength(ValueAtIndex) != v9)
      {
        return 0;
      }
    }

    while (v7 != ++v8);
  }

  return CFRetain(Value);
}

void EAPSIMContextSetVersionList(uint64_t a1, void *__s2, int a3)
{
  if (__s2)
  {
    v4 = a3;
    v6 = (2 * a3);
    v7 = *(a1 + 304);
    if (v7)
    {
      if (*(a1 + 312) != a3)
      {
        goto LABEL_6;
      }

      if (!memcmp(v7, __s2, (2 * a3)))
      {
        return;
      }

      v7 = *(a1 + 304);
      if (v7)
      {
LABEL_6:
        free(v7);
      }
    }

    v8 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
    *(a1 + 304) = v8;
    memmove(v8, __s2, v6);
  }

  else
  {
    v9 = *(a1 + 304);
    if (!v9)
    {
      return;
    }

    free(v9);
    v4 = 0;
    *(a1 + 304) = 0;
  }

  *(a1 + 312) = v4;
}

void EAPSIMContextSetLastIdentity(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 32) = 0;
  if (cf)
  {
    if (*(a1 + 280) && (!EAPSIMAKAPersistentStateTemporaryUsernameAvailable(*(a1 + 264)) || *(a1 + 28) == 10))
    {
      v5 = **(a1 + 280);
      if (!v5)
      {
        v7 = sim_identity_create(*(a1 + 264), *(*a1 + 80), 10, 0, 0, 0);
        *(a1 + 32) = CFStringCreateExternalRepresentation(0, v7, 0x8000100u, 0);
        my_CFRelease(&v7);
        return;
      }

      ExternalRepresentation = CFStringCreateExternalRepresentation(0, v5, 0x8000100u, 0);
    }

    else
    {
      ExternalRepresentation = CFRetain(cf);
    }

    *(a1 + 32) = ExternalRepresentation;
  }
}

CFStringRef sim_identity_create(uint64_t a1, CFDictionaryRef theDict, int a3, int a4, _BYTE *a5, _DWORD *a6)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"EAPSIMAKAIMSI") | a4)
  {
    v11 = theDict == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ((Value = CFDictionaryGetValue(theDict, @"EAPSIMRealm"), TypeID = CFStringGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID) && ((Value = CFDictionaryGetValue(theDict, @"EAPSIMAKARealm"), v14 = CFStringGetTypeID(), !Value) || CFGetTypeID(Value) != v14) || (v15 = CFRetain(Value), (v35 = v15) == 0))
  {
    v15 = SIMCopyRealm(theDict);
    v35 = v15;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!a1)
  {
    v22 = 0;
    goto LABEL_55;
  }

  otherDate = 0;
  Pseudonym = EAPSIMAKAPersistentStateGetPseudonym(a1, &otherDate);
  v17 = Pseudonym;
  if (a3 == 17 || a3 == 13)
  {
    ReauthID = EAPSIMAKAPersistentStateGetReauthID(a1);
    ReauthIDUsed = EAPSIMAKAPersistentStateGetReauthIDUsed(a1);
    if (a3 == 13 && ReauthID && !ReauthIDUsed)
    {
      if (a5)
      {
        *a5 = 1;
      }

      v20 = ReauthID;
      goto LABEL_24;
    }

    if (v17)
    {
      if (v15)
      {
        v21 = CFStringCreateWithFormat(0, 0, @"%@@%@", v17, v15);
LABEL_29:
        v22 = v21;
        if (v21)
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

      v20 = v17;
LABEL_24:
      v21 = CFRetain(v20);
      goto LABEL_29;
    }
  }

  else
  {
    v23 = 0;
    if (a3 != 10)
    {
      goto LABEL_47;
    }

    if (!Pseudonym)
    {
      goto LABEL_47;
    }

    v23 = CFDictionaryGetValue(theDict, @"EAPSIMAKAConservativePeer");
    v24 = CFBooleanGetTypeID();
    if (!v23)
    {
      goto LABEL_47;
    }

    if (CFGetTypeID(v23) == v24 && CFBooleanGetValue(v23))
    {
      plist_int = S_get_plist_int(theDict, @"EAPSIMAKAPseudonymIdentityLifetimeHours", 24);
      v26 = plist_int <= 24 ? 24 : plist_int;
      if (otherDate)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v28 = CFDateCreate(0, Current);
        v23 = v28;
        if (v28 && CFDateGetTimeIntervalSinceDate(v28, otherDate) < (3600 * v26))
        {
          LogHandle = EAPLogGetLogHandle();
          v30 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v30))
          {
            *buf = 0;
            _os_log_impl(&dword_249EFB000, LogHandle, v30, "EAP Peer is in conservative mode and pseudonym is not expired yet.", buf, 2u);
          }

          v22 = 0;
          if (a6)
          {
            *a6 = 17;
          }

          goto LABEL_54;
        }

        goto LABEL_47;
      }
    }
  }

LABEL_46:
  v23 = 0;
LABEL_47:
  IMSI = EAPSIMAKAPersistentStateGetIMSI(a1);
  if (v15)
  {
    v32 = CFStringCreateWithFormat(0, 0, @"1%@@%@", IMSI, v15);
  }

  else
  {
    v32 = CFStringCreateWithFormat(0, 0, @"1%@", IMSI, v34);
  }

  v22 = v32;
  if (a6 && !v32)
  {
    *a6 = 16;
  }

  if (v23)
  {
LABEL_54:
    CFRelease(v23);
  }

LABEL_55:
  my_CFRelease(&v35);
  return v22;
}

uint64_t eapsim_request(uint64_t a1, _BYTE *a2, int *a3, _DWORD *a4)
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  Length = EAPPacketGetLength(a2);
  TLVListSizeof();
  MEMORY[0x28223BE20]();
  v11 = &buf[-v10];
  if ((v12 & 0x7FFFFFE00) != 0)
  {
    v13 = 512;
  }

  else
  {
    v13 = v9;
  }

  bzero(&buf[-v10], v13);
  TLVListInit(v11);
  if (Length <= 8)
  {
    LogHandle = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v15))
    {
      *buf = 67109376;
      v32[0] = Length;
      LOWORD(v32[1]) = 2048;
      *(&v32[1] + 2) = 8;
      v16 = "length %d <= %ld";
      v17 = LogHandle;
      v18 = v15;
      v19 = 18;
LABEL_17:
      _os_log_impl(&dword_249EFB000, v17, v18, v16, buf, v19);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (TLVListParse_0(v11, a2 + 8, Length - 8))
  {
    if (*(a1 + 12) && *(a1 + 16) == a2[1])
    {
      client_error = a1 + 316;
      goto LABEL_27;
    }

    v21 = a2[5];
    if (v21 > 0xB)
    {
      if (v21 == 12)
      {
        v22 = eapsim_notification(a1, a2, v11, a3, a4);
        goto LABEL_36;
      }

      if (v21 == 13)
      {
        v22 = eapsim_reauthentication(a1, a2, v11, a3);
        goto LABEL_36;
      }
    }

    else
    {
      if (v21 == 10)
      {
        v22 = eapsim_start(a1, a2, v11, a3);
        goto LABEL_36;
      }

      if (v21 == 11)
      {
        v22 = eapsim_challenge(a1, a2, v11, a3);
LABEL_36:
        client_error = v22;
        goto LABEL_19;
      }
    }

    *a3 = 17;
    v28 = EAPLogGetLogHandle();
    v29 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v28, v29))
    {
      String = EAPSIMAKAPacketSubtypeGetString(v21);
      *buf = 136315138;
      *v32 = String;
      _os_log_impl(&dword_249EFB000, v28, v29, "unexpected Subtype %s", buf, 0xCu);
    }

    client_error = 0;
    *a3 = 17;
    goto LABEL_19;
  }

  v23 = EAPLogGetLogHandle();
  v24 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = TLVListErrorString(v11);
    *buf = 136315138;
    *v32 = v25;
    v16 = "parse failed: %s";
    v17 = v23;
    v18 = v24;
    v19 = 12;
    goto LABEL_17;
  }

LABEL_18:
  client_error = 0;
  *a3 = 17;
LABEL_19:
  TLVListFree(v11);
  if (*a3)
  {
    *(a1 + 8) = 0x500000002;
  }

  if (!client_error)
  {
    if (*a3 != 17)
    {
      client_error = 0;
      goto LABEL_27;
    }

    client_error = eapsim_make_client_error(a1, a2, 0);
    if (!client_error)
    {
      goto LABEL_27;
    }
  }

  *(a1 + 16) = a2[1];
LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
  return client_error;
}

uint64_t eapsim_start(uint64_t a1, uint64_t a2, unsigned __int8 ***a3, int *a4)
{
  v89 = *MEMORY[0x277D85DE8];
  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v10 = &v84[-v9];
  if ((v11 & 0x7FFFFFE00) != 0)
  {
    v12 = 512;
  }

  else
  {
    v12 = v8;
  }

  bzero(&v84[-v9], v12);
  v86 = 0;
  v13 = TLVListLookupAttribute(a3, 15);
  if (!v13)
  {
    LogHandle = EAPLogGetLogHandle();
    v21 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v21))
    {
LABEL_13:
      client_error = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "eapsim: Start is missing AT_VERSION_LIST";
    v23 = LogHandle;
    v24 = v21;
    v25 = 2;
LABEL_12:
    _os_log_impl(&dword_249EFB000, v23, v24, v22, buf, v25);
    goto LABEL_13;
  }

  v14 = bswap32(*(v13 + 2));
  v15 = HIWORD(v14);
  if (HIWORD(v14) >= 2u)
  {
    v16 = v14 >> 17;
    v17 = v14 >> 17;
    v18 = (v13 + 4);
    while (*v18 != 256)
    {
      ++v18;
      if (!--v17)
      {
        goto LABEL_9;
      }
    }

    if (v15 < 4)
    {
      v29 = *(a1 + 304);
      if (v29)
      {
        free(v29);
        *(a1 + 304) = 0;
        *(a1 + 312) = 0;
      }
    }

    else
    {
      EAPSIMContextSetVersionList(a1, (v13 + 4), v16);
    }

    if (*(a1 + 12) == 1)
    {
      v30 = *(a1 + 20);
      if (v30)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 8) = 0x100000000;
      *(a1 + 20) = 0;
      *(a1 + 28) = 0;
    }

    v31 = 0;
    do
    {
      *(a1 + 241 + v31) = arc4random();
      v31 += 4;
    }

    while (v31 != 16);
    v30 = *(a1 + 20);
LABEL_28:
    *(a1 + 20) = v30 + 1;
    if (v30 >= 3)
    {
      v32 = EAPLogGetLogHandle();
      v33 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_13;
      }

      v34 = *(a1 + 20);
      *buf = 67109376;
      *&buf[4] = v34;
      *&buf[8] = 1024;
      *&buf[10] = 3;
      v22 = "eapsim: too many Start packets (%d > %d)";
      v23 = v32;
      v24 = v33;
      v25 = 14;
      goto LABEL_12;
    }

    v35 = TLVListLookupIdentityAttribute(a3);
    v36 = v35;
    v37 = *(a1 + 20);
    switch(v35)
    {
      case 10:
        if (v37 >= 2)
        {
          v45 = 0;
          v46 = *(a1 + 28);
          if (v46 != 13 && v46 != 17)
          {
            v41 = EAPLogGetLogHandle();
            v42 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v41, v42))
            {
              goto LABEL_13;
            }

            String = EAPSIMAKAAttributeTypeGetString(*(a1 + 28));
            v48 = *(a1 + 20);
            *buf = 136315394;
            *&buf[4] = String;
            *&buf[12] = 1024;
            v88 = v48;
            v22 = "eapsim: AT_PERMANENT_ID_REQ follows %s at Start #%d";
            goto LABEL_50;
          }

LABEL_52:
          *(a1 + 296) = 0;
          *(a1 + 28) = v35;
          TLVBufferInit(v10, a1 + 324, 1492);
          *(a1 + 316) = 2;
          *(a1 + 317) = *(a2 + 1);
          *(a1 + 320) = 2578;
          if (v45)
          {
            goto LABEL_53;
          }

          v85 = 0;
          v53 = *(*a1 + 56);
          TypeID = CFDataGetTypeID();
          if (v53 && CFGetTypeID(v53) == TypeID && CFDataGetLength(*(*a1 + 56)) >= 1)
          {
            ExternalRepresentation = CFRetain(*(*a1 + 56));
            v86 = ExternalRepresentation;
LABEL_94:
            BytePtr = CFDataGetBytePtr(ExternalRepresentation);
            Length = CFDataGetLength(ExternalRepresentation);
            if (!TLVBufferAddIdentity(v10, BytePtr, Length))
            {
              v81 = EAPLogGetLogHandle();
              v82 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v81, v82))
              {
                v83 = TLVBufferErrorString(v10);
                *buf = 136315138;
                *&buf[4] = v83;
                _os_log_impl(&dword_249EFB000, v81, v82, "eapsim: can't add AT_IDENTITY, %s", buf, 0xCu);
              }

              *a4 = 8;
              goto LABEL_100;
            }

            if (v85)
            {
              goto LABEL_96;
            }

LABEL_53:
            *(a1 + 240) = 0;
            TLV = TLVBufferAllocateTLV(v10, 16, 4);
            if (!TLV)
            {
              v60 = EAPLogGetLogHandle();
              v61 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v60, v61))
              {
                v62 = TLVBufferErrorString(v10);
                *buf = 136315138;
                *&buf[4] = v62;
                _os_log_impl(&dword_249EFB000, v60, v61, "eapsim: failed allocating AT_SELECTED_VERSION, %s", buf, 0xCu);
              }

              client_error = 0;
              v26 = 8;
              goto LABEL_15;
            }

            *(TLV + 1) = 256;
            v52 = TLVBufferAllocateTLV(v10, 7, 20);
            if (v52)
            {
              *(v52 + 1) = 0;
              *(v52 + 4) = *(a1 + 241);
LABEL_96:
              client_error = a1 + 316;
              v80 = TLVBufferUsed(v10);
              EAPPacketSetLength(client_error, (v80 + 8));
              goto LABEL_16;
            }

            v63 = EAPLogGetLogHandle();
            v64 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = TLVBufferErrorString(v10);
              *buf = 136315138;
              *&buf[4] = v65;
              v66 = "eapsim: failed allocating AT_NONCE_MT, %s";
              v67 = buf;
              v68 = v63;
              v69 = v64;
              v70 = 12;
LABEL_92:
              _os_log_impl(&dword_249EFB000, v68, v69, v66, v67, v70);
            }

LABEL_100:
            client_error = 0;
            goto LABEL_16;
          }

          v56 = *(a1 + 280);
          if (v56)
          {
            if (!v56[2])
            {
              v59 = *v56;
              if (v36 == 10 && v59)
              {
                *a4 = 17;
                if (EAPSIMAKAPersistentStateTemporaryUsernameAvailable(*(a1 + 264)))
                {
                  v71 = EAPLogGetLogHandle();
                  v72 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v71, v72))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_249EFB000, v71, v72, "eapsim: purging all the temporary identities", buf, 2u);
                  }

                  EAPSIMAKAPersistentStatePurgeTemporaryIDs(*(a1 + 264));
                }

                v73 = EAPLogGetLogHandle();
                v74 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v73, v74))
                {
                  *buf = 0;
                  _os_log_impl(&dword_249EFB000, v73, v74, "eapsim: requesting out-of-band psuedonym", buf, 2u);
                }

                SIMReportDecryptionError(0);
                goto LABEL_100;
              }

LABEL_80:
              if (v59 && !EAPSIMAKAPersistentStateTemporaryUsernameAvailable(*(a1 + 264)))
              {
                ExternalRepresentation = CFStringCreateExternalRepresentation(0, **(a1 + 280), 0x8000100u, 0);
                v86 = ExternalRepresentation;
                EAPSIMContextSetLastIdentity(a1, ExternalRepresentation);
                *(a1 + 296) = 1;
                goto LABEL_94;
              }

              goto LABEL_82;
            }

            v57 = EAPSIMAKAPersistentStateTemporaryUsernameAvailable(*(a1 + 264));
            v58 = *(a1 + 280);
            if (v36 == 10 || !v57)
            {
              ExternalRepresentation = CFRetain(v58[2]);
              v86 = ExternalRepresentation;
              EAPSIMContextSetLastIdentity(a1, ExternalRepresentation);
              goto LABEL_94;
            }

            if (v58)
            {
              v59 = *v58;
              goto LABEL_80;
            }
          }

LABEL_82:
          v75 = sim_identity_create(*(a1 + 264), *(*a1 + 80), v36, 0, &v85, a4);
          *buf = v75;
          if (!v75)
          {
            if (*a4 == 17)
            {
              v76 = EAPLogGetLogHandle();
              v77 = _SC_syslog_os_log_mapping();
              if (!os_log_type_enabled(v76, v77))
              {
                goto LABEL_100;
              }

              *v84 = 0;
              v66 = "eapsim: protocol error.";
            }

            else
            {
              if (*a4 != 16)
              {
                goto LABEL_100;
              }

              v76 = EAPLogGetLogHandle();
              v77 = _SC_syslog_os_log_mapping();
              if (!os_log_type_enabled(v76, v77))
              {
                goto LABEL_100;
              }

              *v84 = 0;
              v66 = "eapsim: can't find SIM identity";
            }

            v67 = v84;
            v68 = v76;
            v69 = v77;
            v70 = 2;
            goto LABEL_92;
          }

          ExternalRepresentation = CFStringCreateExternalRepresentation(0, v75, 0x8000100u, 0);
          v86 = ExternalRepresentation;
          EAPSIMContextSetLastIdentity(a1, ExternalRepresentation);
          my_CFRelease(buf);
          goto LABEL_94;
        }

        break;
      case 17:
        if (v37 >= 2 && *(a1 + 28) != 13)
        {
          v41 = EAPLogGetLogHandle();
          v42 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v41, v42))
          {
            goto LABEL_13;
          }

          v43 = EAPSIMAKAAttributeTypeGetString(*(a1 + 28));
          v44 = *(a1 + 20);
          *buf = 136315394;
          *&buf[4] = v43;
          *&buf[12] = 1024;
          v88 = v44;
          v22 = "eapsim: AT_FULLAUTH_ID_REQ follows %s at Start #%d";
          goto LABEL_50;
        }

        break;
      case 13:
        if (v37 >= 2)
        {
          v38 = EAPLogGetLogHandle();
          v39 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v38, v39))
          {
            goto LABEL_13;
          }

          v40 = *(a1 + 20);
          *buf = 67109120;
          *&buf[4] = v40;
          v22 = "eapsim: AT_ANY_ID_REQ at Start #%d";
          v23 = v38;
          v24 = v39;
          v25 = 8;
          goto LABEL_12;
        }

        break;
      default:
        if (v37 >= 2)
        {
          v41 = EAPLogGetLogHandle();
          v42 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v41, v42))
          {
            goto LABEL_13;
          }

          v49 = EAPSIMAKAAttributeTypeGetString(*(a1 + 28));
          v50 = *(a1 + 20);
          *buf = 136315394;
          *&buf[4] = v49;
          *&buf[12] = 1024;
          v88 = v50;
          v22 = "eapsim: no *ID_REQ follows %s at Start #%d";
LABEL_50:
          v23 = v41;
          v24 = v42;
          v25 = 18;
          goto LABEL_12;
        }

        v45 = 1;
        goto LABEL_52;
    }

    v45 = 0;
    goto LABEL_52;
  }

LABEL_9:
  client_error = eapsim_make_client_error(a1, a2, 1u);
LABEL_14:
  v26 = 17;
LABEL_15:
  *a4 = v26;
LABEL_16:
  my_CFRelease(&v86);
  v27 = *MEMORY[0x277D85DE8];
  return client_error;
}

uint64_t eapsim_challenge(uint64_t a1, _BYTE *a2, unsigned __int8 ***a3, int *a4)
{
  v100 = *MEMORY[0x277D85DE8];
  data = 256;
  memset(&c, 0, sizeof(c));
  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v10 = &v85 - v9;
  if ((v11 & 0x7FFFFFE00) != 0)
  {
    v12 = 512;
  }

  else
  {
    v12 = v8;
  }

  bzero(&v85 - v9, v12);
  if (*(a1 + 12) != 1)
  {
    LogHandle = EAPLogGetLogHandle();
    v20 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v20))
    {
      *buf = 0;
      v21 = "eapsim: Challenge sent without Start";
LABEL_14:
      v22 = LogHandle;
      v23 = v20;
      v24 = 2;
LABEL_15:
      _os_log_impl(&dword_249EFB000, v22, v23, v21, buf, v24);
    }

LABEL_16:
    client_error = 0;
LABEL_17:
    *a4 = 17;
    goto LABEL_18;
  }

  *(a1 + 12) = 2;
  EAPSIMAKAPersistentStateSetCounter(*(a1 + 264), 1);
  EAPSIMAKAPersistentStateSetReauthID(*(a1 + 264), 0);
  *(a1 + 272) = 0;
  v13 = TLVListLookupAttribute(a3, 1);
  if (!v13)
  {
    LogHandle = EAPLogGetLogHandle();
    v20 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v20))
    {
      *buf = 0;
      v21 = "eapsim: Challenge is missing AT_RAND";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v14 = (4 * *(v13 + 1) + 0xFFFFFFFFCLL) >> 4;
  if (*(a1 + 24) > v14)
  {
    v15 = EAPLogGetLogHandle();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(a1 + 24);
      *buf = 67109376;
      v97 = v14;
      v98 = 1024;
      v99 = v17;
      _os_log_impl(&dword_249EFB000, v15, v16, "eapsim: Challenge AT_RAND has %d RANDs, policy requires %d", buf, 0xEu);
    }

    client_error = eapsim_make_client_error(a1, a2, 2u);
    goto LABEL_17;
  }

  if (v14 >= 4)
  {
    v27 = EAPLogGetLogHandle();
    v28 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_16;
    }

    *buf = 67109376;
    v97 = v14;
    v98 = 1024;
    v99 = 3;
    v21 = "eapsim: Challenge AT_RAND has %d RANDs > %d";
    v22 = v27;
    v23 = v28;
    v24 = 14;
    goto LABEL_15;
  }

  v29 = (v13 + 4);
  if (v14 >= 2)
  {
    v30 = 0;
    v31 = v14 - 1;
    v32 = 1;
    v33 = v14 - 1;
    v34 = (v13 + 4);
LABEL_24:
    v35 = *v34;
    v36 = v34[1];
    v34 += 2;
    ++v30;
    v37 = v33;
    v38 = v34;
    while (v35 != *v38 || v36 != v38[1])
    {
      v38 += 2;
      if (!--v37)
      {
        --v33;
        v32 = v30 < v31;
        if (v30 != v31)
        {
          goto LABEL_24;
        }

        break;
      }
    }

    if (v32)
    {
      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v20))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v21 = "eapsim: Challenge AT_RAND has duplicate RANDs";
      goto LABEL_14;
    }
  }

  v40 = *(a1 + 40);
  v89 = &v85;
  v88 = a4;
  v90 = v14;
  if (v40)
  {
    if (v14 >= 1)
    {
      v41 = 0;
      v42 = v95;
      v43 = buf;
      v85 = a2;
      do
      {
        v87 = v43;
        v44 = *(a1 + 56);
        if (v44)
        {
          v86 = v42;
          Count = CFArrayGetCount(v44);
          if (Count < 1)
          {
LABEL_56:
            v61 = EAPLogGetLogHandle();
            v62 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v61, v62))
            {
              *v93 = 0;
              v63 = "eapsim: can't find static RAND value";
              goto LABEL_79;
            }

            goto LABEL_80;
          }

          v46 = Count;
          v47 = 0;
          v48 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v48);
            BytePtr = CFDataGetBytePtr(ValueAtIndex);
            if (v29->i64[0] == *BytePtr && v29->i64[1] == *(BytePtr + 1))
            {
              break;
            }

            ++v48;
            v47 += 0x100000000;
            if (v46 == v48)
            {
              goto LABEL_56;
            }
          }

          v52 = v47 >> 32;
          a2 = v85;
          v42 = v86;
        }

        else
        {
          v52 = 0;
        }

        v53 = v87;
        v54 = CFArrayGetValueAtIndex(*(a1 + 40), v52);
        *v53 = *CFDataGetBytePtr(v54);
        v43 = v53 + 8;
        v55 = CFArrayGetValueAtIndex(*(a1 + 48), v52);
        *v42 = *CFDataGetBytePtr(v55);
        v42 += 4;
        ++v29;
        ++v41;
      }

      while (v41 != v90);
    }

LABEL_59:
    CC_SHA1_Init(&c);
    v64 = *(a1 + 32);
    if (v64)
    {
      v65 = CFDataGetBytePtr(v64);
      Length = CFDataGetLength(*(a1 + 32));
      v67 = v65;
    }

    else
    {
      v67 = *(*a1 + 40);
      Length = *(*a1 + 48);
    }

    CC_SHA1_Update(&c, v67, Length);
    v68 = v90;
    CC_SHA1_Update(&c, buf, 8 * v90);
    CC_SHA1_Update(&c, (a1 + 241), 0x10u);
    p_data = *(a1 + 304);
    if (p_data)
    {
      v70 = 2 * *(a1 + 312);
    }

    else
    {
      p_data = &data;
      v70 = 2;
    }

    CC_SHA1_Update(&c, p_data, v70);
    v71 = v88;
    CC_SHA1_Update(&c, &data, 2u);
    MasterKey = EAPSIMAKAPersistentStateGetMasterKey(*(a1 + 264));
    CC_SHA1_Final(MasterKey, &c);
    v73 = EAPSIMAKAPersistentStateGetMasterKey(*(a1 + 264));
    fips186_2prf(v73, a1 + 80);
    v74 = TLVListLookupAttribute(a3, 11);
    if (v74)
    {
      if (EAPSIMAKAKeyInfoVerifyMAC(a1 + 80, a2, v74 + 4, (a1 + 241), 16))
      {
        if (eapsim_challenge_process_encr_data(a1, a3))
        {
          TLVBufferInit(v10, a1 + 324, 1492);
          *(a1 + 316) = 2;
          *(a1 + 317) = a2[1];
          *(a1 + 320) = 2834;
          TLV = TLVBufferAllocateTLV(v10, 11, 20);
          if (TLV)
          {
            v76 = TLV;
            client_error = a1 + 316;
            *(TLV + 1) = 0;
            v77 = TLVBufferUsed(v10);
            EAPPacketSetLength(a1 + 316, (v77 + 8));
            EAPSIMAKAKeyInfoSetMAC(a1 + 80, (a1 + 316), v76 + 4, v95, 4 * v68);
            *(a1 + 12) = 4;
            *(a1 + 240) = 1;
            goto LABEL_18;
          }

          v82 = EAPLogGetLogHandle();
          v83 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = TLVBufferErrorString(v10);
            *v93 = 136315138;
            v94 = v84;
            _os_log_impl(&dword_249EFB000, v82, v83, "eapsim: failed allocating AT_MAC, %s", v93, 0xCu);
          }

          client_error = 0;
          v81 = 8;
LABEL_76:
          *v71 = v81;
          goto LABEL_18;
        }

LABEL_75:
        client_error = 0;
        v81 = 17;
        goto LABEL_76;
      }

      v78 = EAPLogGetLogHandle();
      v79 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v78, v79))
      {
        goto LABEL_75;
      }

      *v93 = 0;
      v80 = "eapsim: Challenge AT_MAC not valid";
    }

    else
    {
      v78 = EAPLogGetLogHandle();
      v79 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v78, v79))
      {
        goto LABEL_75;
      }

      *v93 = 0;
      v80 = "eapsim: Challenge is missing AT_MAC";
    }

    _os_log_impl(&dword_249EFB000, v78, v79, v80, v93, 2u);
    goto LABEL_75;
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    if (v14 >= 1)
    {
      v56 = v95;
      v57 = buf;
      v58 = v90;
      do
      {
        v59 = CFDataGetBytePtr(*(a1 + 72));
        v60 = CFDataGetBytePtr(*(a1 + 64));
        sim_simulator_gsm_milenage_algo(v59, v60, v29, v56, v57++);
        v56 += 4;
        ++v29;
        --v58;
      }

      while (v58);
    }

    goto LABEL_59;
  }

  if (SIMAuthenticateGSM(*(*a1 + 80), v29, v14, buf, v95))
  {
    goto LABEL_59;
  }

  v61 = EAPLogGetLogHandle();
  v62 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v61, v62))
  {
    *v93 = 0;
    v63 = "SIMAuthenticateGSM failed";
LABEL_79:
    _os_log_impl(&dword_249EFB000, v61, v62, v63, v93, 2u);
  }

LABEL_80:
  client_error = 0;
  *v88 = 8;
LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
  return client_error;
}

uint64_t eapsim_notification(uint64_t a1, _BYTE *a2, unsigned __int8 ***a3, int *a4, _DWORD *a5)
{
  v99 = *MEMORY[0x277D85DE8];
  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v12 = &v89 - v11;
  if ((v13 & 0x7FFFFFE00) != 0)
  {
    v14 = 512;
  }

  else
  {
    v14 = v10;
  }

  bzero(&v89 - v11, v14);
  *a4 = 0;
  *a5 = 0;
  v15 = TLVListLookupAttribute(a3, 12);
  if (!v15)
  {
    LogHandle = EAPLogGetLogHandle();
    v24 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v24))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v19 = "eapsim: Notification does not contain AT_NOTIFICATION attribute";
LABEL_31:
    v20 = LogHandle;
    v21 = v24;
    v22 = 2;
    goto LABEL_32;
  }

  v16 = bswap32(*(v15 + 2)) >> 16;
  if (v16 >= 0xC000)
  {
    v17 = EAPLogGetLogHandle();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 67109120;
      *v97 = v16;
      v19 = "eapsim: Notification code '%d' indicates success before authentication";
      v20 = v17;
      v21 = v18;
      v22 = 8;
LABEL_32:
      _os_log_impl(&dword_249EFB000, v20, v21, v19, buf, v22);
    }

LABEL_33:
    v43 = 0;
    v44 = 17;
LABEL_34:
    *a4 = v44;
    goto LABEL_35;
  }

  v25 = TLVListLookupAttribute(a3, 11);
  if (v25)
  {
    if ((v16 & 0x4000) != 0)
    {
      LogHandle = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v24))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v19 = "eapsim: Notification incorrectly contains AT_MAC";
      goto LABEL_31;
    }

    if (!EAPSIMAKAKeyInfoVerifyMAC(a1 + 80, a2, v25 + 4, 0, 0))
    {
      LogHandle = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v24))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v19 = "eapsim: Notification AT_MAC not valid";
      goto LABEL_31;
    }
  }

  else if ((v16 & 0x4000) == 0)
  {
    LogHandle = EAPLogGetLogHandle();
    v24 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v24))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v19 = "eapsim: Notification is missing AT_MAC";
    goto LABEL_31;
  }

  Counter = EAPSIMAKAPersistentStateGetCounter(*(a1 + 264));
  v27 = Counter;
  v28 = ((v16 & 0x4000) == 0) & *(a1 + 272);
  if (v28 == 1)
  {
    v91 = 1;
    v92 = Counter;
    TLVListSizeof();
    v93 = &v89;
    MEMORY[0x28223BE20]();
    v31 = (&v89 - v30);
    if ((v32 & 0x7FFFFFE00) != 0)
    {
      v33 = 512;
    }

    else
    {
      v33 = v29;
    }

    bzero(&v89 - v30, v33);
    v34 = TLVListLookupAttribute(a3, 130);
    v35 = TLVListLookupAttribute(a3, 129);
    v36 = v35;
    if (v34 && v35)
    {
      TLVListInit(v31);
      v37 = EAPSIMAKAKeyInfoDecryptTLVList((a1 + 80), v34, v36, v31);
      if (!v37)
      {
        v54 = EAPLogGetLogHandle();
        v55 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v54, v55))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v54, v55, "eapsim: failed to decrypt Notification AT_ENCR_DATA", buf, 2u);
        }

        v53 = 8;
        goto LABEL_43;
      }

      v89 = v37;
      v90 = TLVListCopyDescription(v31);
      v38 = EAPLogGetLogHandle();
      v39 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v38, v39))
      {
        *buf = 138412290;
        *v97 = v90;
        _os_log_impl(&dword_249EFB000, v38, v39, "Decrypted TLVs:\n%@", buf, 0xCu);
      }

      CFRelease(v90);
      v40 = TLVListLookupAttribute(v31, 19);
      v41 = v40;
      if (v40)
      {
        v42 = bswap32(*(v40 + 2)) >> 16;
      }

      else
      {
        v42 = 0;
      }

      free(v89);
      TLVListFree(v31);
      if (v41)
      {
        v27 = v92;
        if (v42 == v92)
        {
          v28 = v91;
          goto LABEL_48;
        }

        v87 = EAPLogGetLogHandle();
        v88 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v87, v88))
        {
          goto LABEL_39;
        }

        *buf = 67109376;
        *v97 = v42;
        *&v97[4] = 1024;
        *&v97[6] = v27;
        v49 = "eapsim: Notification AT_COUNTER (%d) does not match current counter (%d)";
        v50 = v87;
        v51 = v88;
        v52 = 14;
      }

      else
      {
        v85 = EAPLogGetLogHandle();
        v86 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v85, v86))
        {
          goto LABEL_39;
        }

        *buf = 0;
        v49 = "eapsim:  Notification AT_ENCR_DATA missing AT_COUNTER";
        v50 = v85;
        v51 = v86;
        v52 = 2;
      }
    }

    else
    {
      v47 = EAPLogGetLogHandle();
      v48 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v47, v48))
      {
LABEL_39:
        v53 = 17;
LABEL_43:
        *a4 = v53;
LABEL_70:
        v43 = 0;
        goto LABEL_35;
      }

      *buf = 134218240;
      *v97 = v34;
      *&v97[8] = 2048;
      v98 = v36;
      v49 = "eapsim: Notification after re-auth missing AT_ENCR_DATA (%p) or AT_IV (%p)";
      v50 = v47;
      v51 = v48;
      v52 = 22;
    }

    _os_log_impl(&dword_249EFB000, v50, v51, v49, buf, v52);
    goto LABEL_39;
  }

LABEL_48:
  TLVBufferInit(v12, a1 + 324, 1492);
  *(a1 + 316) = 2;
  *(a1 + 317) = a2[1];
  *(a1 + 320) = 3090;
  if (!v28)
  {
    goto LABEL_54;
  }

  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v58 = &v89 - v57;
  if ((v59 & 0x7FFFFFE00) != 0)
  {
    v60 = 512;
  }

  else
  {
    v60 = v56;
  }

  bzero(&v89 - v57, v60);
  TLVBufferInit(v58, buf, 16);
  if (!TLVBufferAddCounter(v58, v27))
  {
    v72 = EAPLogGetLogHandle();
    v73 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = TLVBufferErrorString(v58);
      *v94 = 136315138;
      v95 = v74;
      _os_log_impl(&dword_249EFB000, v72, v73, "eapsim: failed to allocate AT_COUNTER, %s", v94, 0xCu);
    }

    v75 = 2;
    goto LABEL_69;
  }

  if (!EAPSIMAKAKeyInfoEncryptTLVs((a1 + 80), v12, v58))
  {
    v75 = 8;
LABEL_69:
    *a4 = v75;
    goto LABEL_70;
  }

LABEL_54:
  if (v25)
  {
    TLV = TLVBufferAllocateTLV(v12, 11, 20);
    if (!TLV)
    {
      v76 = EAPLogGetLogHandle();
      v77 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = TLVBufferErrorString(v12);
        *buf = 136315138;
        *v97 = v78;
        _os_log_impl(&dword_249EFB000, v76, v77, "eapsim: failed allocating AT_MAC, %s", buf, 0xCu);
      }

      v43 = 0;
      v44 = 2;
      goto LABEL_34;
    }

    v62 = TLV;
    *(TLV + 1) = 0;
  }

  else
  {
    v62 = 0;
  }

  v43 = a1 + 316;
  v63 = TLVBufferUsed(v12);
  EAPPacketSetLength(a1 + 316, (v63 + 8));
  if (v62)
  {
    EAPSIMAKAKeyInfoSetMAC(a1 + 80, (a1 + 316), v62 + 4, 0, 0);
  }

  if ((v16 & 0x8000) != 0)
  {
    *(a1 + 12) = 4;
    goto LABEL_35;
  }

  *(a1 + 12) = 5;
  *a4 = 1002;
  *a5 = EAPSIMAKAStatusForATNotificationCode(v16);
  String = ATNotificationCodeGetString(v16);
  v65 = EAPLogGetLogHandle();
  v66 = _SC_syslog_os_log_mapping();
  v67 = os_log_type_enabled(v65, v66);
  if (String)
  {
    if (!v67)
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    *v97 = String;
    v68 = "eapsim: Notification: %s";
    v69 = v65;
    v70 = v66;
    v71 = 12;
  }

  else
  {
    if (!v67)
    {
      goto LABEL_77;
    }

    *buf = 67109120;
    *v97 = v16;
    v68 = "eapsim: Notification code '%d' unrecognized failure";
    v69 = v65;
    v70 = v66;
    v71 = 8;
  }

  _os_log_impl(&dword_249EFB000, v69, v70, v68, buf, v71);
LABEL_77:
  v79 = EAPSIMAKAActionInfoForNotificationCode(*(*a1 + 80), v16);
  if (v79)
  {
    v80 = v79;
    *(a1 + 288) = CFDictionaryCreateCopy(0, v79);
    v81 = EAPLogGetLogHandle();
    v82 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v81, v82))
    {
      *buf = 138412290;
      *v97 = v80;
      _os_log_impl(&dword_249EFB000, v81, v82, "eapsim: Notification Action Info: %@", buf, 0xCu);
    }
  }

  else if (*a5 == 19)
  {
    v83 = *(a1 + 280);
    if (v83)
    {
      v84 = *(v83 + 16);
      if (v84)
      {
        SIMReportDecryptionError(v84);
      }
    }
  }

LABEL_35:
  v45 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t eapsim_reauthentication(uint64_t a1, _BYTE *a2, unsigned __int8 ***a3, int *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v10 = &v61[-v9];
  if ((v11 & 0x7FFFFFE00) != 0)
  {
    v12 = 512;
  }

  else
  {
    v12 = v8;
  }

  bzero(&v61[-v9], v12);
  TLVListSizeof();
  MEMORY[0x28223BE20]();
  v15 = &v61[-v14];
  if ((v16 & 0x7FFFFFE00) != 0)
  {
    v17 = 512;
  }

  else
  {
    v17 = v13;
  }

  bzero(&v61[-v14], v17);
  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v20 = &v61[-v19];
  if ((v21 & 0x7FFFFFE00) != 0)
  {
    v22 = 512;
  }

  else
  {
    v22 = v18;
  }

  bzero(&v61[-v19], v22);
  TLVListInit(v15);
  if ((*(a1 + 240) & 1) == 0)
  {
    LogHandle = EAPLogGetLogHandle();
    v44 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v44))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v45 = "eapsim: Reauthentication but no key info available";
LABEL_40:
    _os_log_impl(&dword_249EFB000, LogHandle, v44, v45, buf, 2u);
    goto LABEL_41;
  }

  if (!EAPSIMAKAPersistentStateGetReauthID(*(a1 + 264)))
  {
    LogHandle = EAPLogGetLogHandle();
    v44 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v44))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v45 = "eapsim: received Reauthentication but don't have reauth id";
    goto LABEL_40;
  }

  *(a1 + 8) = 0x300000000;
  EAPSIMAKAPersistentStateSetReauthID(*(a1 + 264), 0);
  v23 = TLVListLookupAttribute(a3, 11);
  if (!v23)
  {
    LogHandle = EAPLogGetLogHandle();
    v44 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v44))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v45 = "eapsim: Reauthentication is missing AT_MAC";
    goto LABEL_40;
  }

  if (!EAPSIMAKAKeyInfoVerifyMAC(a1 + 80, a2, v23 + 4, 0, 0))
  {
    LogHandle = EAPLogGetLogHandle();
    v44 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v44))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v45 = "eapsim: Reauthentication AT_MAC not valid";
    goto LABEL_40;
  }

  v24 = TLVListLookupAttribute(a3, 130);
  v25 = TLVListLookupAttribute(a3, 129);
  v26 = v25;
  if (!v24 || !v25)
  {
    if (!v24)
    {
      v48 = EAPLogGetLogHandle();
      v49 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v48, v49))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v48, v49, "eapsim:  Reauthentication missing AT_ENCR_DATA", buf, 2u);
      }
    }

    if (v26)
    {
      goto LABEL_41;
    }

    LogHandle = EAPLogGetLogHandle();
    v44 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v44))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v45 = "eapsim:  Reauthentication missing AT_IV";
    goto LABEL_40;
  }

  v27 = EAPSIMAKAKeyInfoDecryptTLVList((a1 + 80), v24, v25, v15);
  if (v27)
  {
    v64 = v27;
    v28 = TLVListCopyDescription(v15);
    v29 = EAPLogGetLogHandle();
    v30 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 138412290;
      v68 = v28;
      _os_log_impl(&dword_249EFB000, v29, v30, "Decrypted TLVs:\n%@", buf, 0xCu);
    }

    CFRelease(v28);
    v31 = TLVListLookupAttribute(v15, 21);
    v32 = TLVListLookupAttribute(v15, 19);
    v33 = v32;
    if (!v31 || !v32)
    {
      if (!v31)
      {
        v50 = EAPLogGetLogHandle();
        v51 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v50, v51))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v50, v51, "eapsim:  Reauthentication AT_ENCR_DATA missing AT_NONCE_S", buf, 2u);
        }
      }

      if (!v33)
      {
        v52 = EAPLogGetLogHandle();
        v53 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v52, v53))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v52, v53, "eapsim:  Reauthentication AT_ENCR_DATA missing AT_COUNTER", buf, 2u);
        }
      }

      v41 = 0;
      v54 = 17;
      goto LABEL_66;
    }

    v63 = v32;
    v34 = bswap32(*(v32 + 2)) >> 16;
    Counter = EAPSIMAKAPersistentStateGetCounter(*(a1 + 264));
    v36 = Counter;
    if (v34 >= Counter)
    {
      v62 = Counter;
      StringFromAttribute = TLVListCreateStringFromAttribute(v15, 133);
      if (StringFromAttribute)
      {
        v38 = StringFromAttribute;
        EAPSIMAKAPersistentStateSetReauthID(*(a1 + 264), StringFromAttribute);
        CFRelease(v38);
      }

      EAPSIMAKAPersistentStateSetCounter(*(a1 + 264), v34 + 1);
      v36 = v62;
    }

    TLVBufferInit(v20, a1 + 324, 1492);
    *(a1 + 316) = 2;
    *(a1 + 317) = a2[1];
    *(a1 + 320) = 3346;
    TLVBufferInit(v10, buf, 16);
    if (TLVBufferAddCounter(v10, v34))
    {
      if (v34 >= v36 || TLVBufferAddCounterTooSmall(v10))
      {
        if (!EAPSIMAKAKeyInfoEncryptTLVs((a1 + 80), v20, v10))
        {
          goto LABEL_65;
        }

        TLV = TLVBufferAllocateTLV(v20, 11, 20);
        if (TLV)
        {
          v40 = TLV;
          v41 = a1 + 316;
          *(TLV + 1) = 0;
          v42 = TLVBufferUsed(v20);
          EAPPacketSetLength(a1 + 316, (v42 + 8));
          EAPSIMAKAKeyInfoSetMAC(a1 + 80, (a1 + 316), v40 + 4, (v31 + 4), 16);
          if (v34 >= v36)
          {
            *(a1 + 12) = 4;
            eapsim_compute_reauth_key(a1, v63, v31);
            *(a1 + 240) = 1;
            *(a1 + 272) = 1;
          }

          else
          {
            *(a1 + 240) = 0;
          }

          goto LABEL_67;
        }

        v55 = EAPLogGetLogHandle();
        v56 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v55, v56))
        {
          goto LABEL_65;
        }

        v60 = TLVBufferErrorString(v20);
        *v65 = 136315138;
        v66 = v60;
        v58 = "eapsim: failed allocating AT_MAC, %s";
        goto LABEL_64;
      }

      v55 = EAPLogGetLogHandle();
      v56 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v55, v56))
      {
        v59 = TLVBufferErrorString(v20);
        *v65 = 136315138;
        v66 = v59;
        v58 = "eapsim: failed allocating AT_COUNTER_TOO_SMALL, %s";
        goto LABEL_64;
      }
    }

    else
    {
      v55 = EAPLogGetLogHandle();
      v56 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = TLVBufferErrorString(v20);
        *v65 = 136315138;
        v66 = v57;
        v58 = "eapsim: failed allocating AT_COUNTER, %s";
LABEL_64:
        _os_log_impl(&dword_249EFB000, v55, v56, v58, v65, 0xCu);
      }
    }

LABEL_65:
    v41 = 0;
    v54 = 8;
LABEL_66:
    *a4 = v54;
LABEL_67:
    free(v64);
    goto LABEL_42;
  }

  LogHandle = EAPLogGetLogHandle();
  v44 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v44))
  {
    *buf = 0;
    v45 = "eapsim: failed to decrypt Reauthentication AT_ENCR_DATA";
    goto LABEL_40;
  }

LABEL_41:
  v41 = 0;
  *a4 = 17;
LABEL_42:
  TLVListFree(v15);
  v46 = *MEMORY[0x277D85DE8];
  return v41;
}

uint64_t eapsim_make_client_error(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  TLVBufferSizeof();
  MEMORY[0x28223BE20]();
  v8 = &buf[-v7];
  if ((v9 & 0x7FFFFFE00) != 0)
  {
    v10 = 512;
  }

  else
  {
    v10 = v6;
  }

  bzero(&buf[-v7], v10);
  TLVBufferInit(v8, a1 + 324, 1492);
  *(a1 + 316) = 2;
  *(a1 + 317) = *(a2 + 1);
  *(a1 + 320) = 3602;
  TLV = TLVBufferAllocateTLV(v8, 22, 4);
  if (TLV)
  {
    v12 = a1 + 316;
    *(TLV + 1) = __rev16(a3);
    v13 = TLVBufferUsed(v8);
    EAPPacketSetLength(v12, (v13 + 8));
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v15))
    {
      v16 = TLVBufferErrorString(v8);
      *buf = 136315138;
      v20 = v16;
      _os_log_impl(&dword_249EFB000, LogHandle, v15, "eapsim: failed allocating AT_CLIENT_ERROR_CODE, %s", buf, 0xCu);
    }

    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL eapsim_challenge_process_encr_data(uint64_t a1, unsigned __int8 ***a2)
{
  v28 = *MEMORY[0x277D85DE8];
  TLVListSizeof();
  MEMORY[0x28223BE20]();
  v6 = &buf[-v5];
  if ((v7 & 0x7FFFFFE00) != 0)
  {
    v8 = 512;
  }

  else
  {
    v8 = v4;
  }

  bzero(&buf[-v5], v8);
  TLVListInit(v6);
  v9 = TLVListLookupAttribute(a2, 130);
  if (v9)
  {
    v10 = v9;
    v11 = TLVListLookupAttribute(a2, 129);
    if (v11)
    {
      v12 = EAPSIMAKAKeyInfoDecryptTLVList((a1 + 80), v10, v11, v6);
      if (v12)
      {
        v13 = v12;
        v14 = TLVListCopyDescription(v6);
        LogHandle = EAPLogGetLogHandle();
        v16 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v16))
        {
          *buf = 138412290;
          v27 = v14;
          _os_log_impl(&dword_249EFB000, LogHandle, v16, "Decrypted TLVs:\n%@", buf, 0xCu);
        }

        CFRelease(v14);
        StringFromAttribute = TLVListCreateStringFromAttribute(v6, 133);
        if (StringFromAttribute)
        {
          v18 = StringFromAttribute;
          EAPSIMAKAPersistentStateSetReauthID(*(a1 + 264), StringFromAttribute);
          CFRelease(v18);
        }

        v19 = TLVListCreateStringFromAttribute(v6, 132);
        if (v19)
        {
          v20 = v19;
          EAPSIMAKAPersistentStateSetPseudonym(*(a1 + 264), v19);
          CFRelease(v20);
        }

        free(v13);
        TLVListFree(v6);
        goto LABEL_14;
      }

      v22 = EAPLogGetLogHandle();
      v23 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v22, v23);
      if (!result)
      {
        goto LABEL_20;
      }

      *buf = 0;
      v24 = "eapsim: Challenge decrypt AT_ENCR_DATA failed";
    }

    else
    {
      v22 = EAPLogGetLogHandle();
      v23 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v22, v23);
      if (!result)
      {
        goto LABEL_20;
      }

      *buf = 0;
      v24 = "eapsim: Challenge missing AT_IV";
    }

    _os_log_impl(&dword_249EFB000, v22, v23, v24, buf, 2u);
    result = 0;
    goto LABEL_20;
  }

LABEL_14:
  result = 1;
LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

double eapsim_compute_reauth_key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(*(a1 + 32));
  }

  else
  {
    BytePtr = *(*a1 + 40);
    Length = *(*a1 + 48);
  }

  v9 = *(a1 + 264);

  return EAPSIMAKAKeyInfoComputeReauthKey((a1 + 80), v9, BytePtr, Length, a2, a3);
}

void fips186_2prf(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v33 = *MEMORY[0x277D85DE8];
  memset(v32, 0, 92);
  v28 = 0uLL;
  v29 = 0;
  v26 = 0uLL;
  v27 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v4 = *a1;
  v31 = *(a1 + 4);
  v30 = v4;
  memset(v22, 0, sizeof(v22));
  v23 = 1;
  do
  {
    fr_SHA1Init(v32);
    memset(v21, 0, sizeof(v21));
    v20 = 0u;
    v18 = v30;
    v19 = v31;
    fr_SHA1Transform(v32, &v18);
    fr_SHA1FinalNoLen(&v28, v32);
    v5 = 0;
    for (i = 19; i != -1; --i)
    {
      v7 = v5 + *(&v30 + i) + *(&v28 + i);
      *(v24 + i) = v7;
      v5 = v7 >> 8;
    }

    v8 = 0;
    for (j = 19; j != -1; --j)
    {
      v10 = v8 + *(v24 + j) + v22[j];
      *(&v30 + j) = v10;
      v8 = v10 >> 8;
    }

    fr_SHA1Init(v32);
    memset(v21, 0, sizeof(v21));
    v20 = 0u;
    v18 = v30;
    v19 = v31;
    fr_SHA1Transform(v32, &v18);
    fr_SHA1FinalNoLen(&v26, v32);
    v11 = 0;
    for (k = 19; k != -1; --k)
    {
      v13 = v11 + *(&v30 + k) + *(&v26 + k);
      *(v24 + k) = v13;
      v11 = v13 >> 8;
    }

    v14 = 0;
    for (m = 19; m != -1; --m)
    {
      v16 = v14 + *(v24 + m) + v22[m];
      *(&v30 + m) = v16;
      v14 = v16 >> 8;
    }

    *a2 = v28;
    *(a2 + 16) = v29;
    *(a2 + 20) = v26;
    *(a2 + 36) = v27;
    a2 += 40;
    ++v3;
  }

  while (v3 != 4);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t fr_SHA1Transform(_DWORD *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  HIDWORD(v5) = v2;
  LODWORD(v5) = v2;
  v4 = v5 >> 2;
  v7 = __PAIR64__(*a1, __ROR4__(v2, 2));
  v6 = *a1 & v7;
  v9 = a1[2];
  v8 = a1[3];
  LODWORD(v7) = *a1;
  v475 = a1[4];
  v10 = bswap32(*a2);
  v472 = v8;
  v473 = v2;
  v11 = v9;
  v12 = (v7 >> 27) + v475 + v10 + (v9 & v2 | v8 & ~v2) + 1518500249;
  HIDWORD(v7) = v12;
  LODWORD(v7) = v12;
  v13 = v7 >> 27;
  HIDWORD(v7) = v12;
  LODWORD(v7) = v12;
  v14 = v7 >> 2;
  v15 = v3;
  HIDWORD(v7) = v3;
  LODWORD(v7) = v3;
  v16 = v7 >> 2;
  v17 = bswap32(a2[1]);
  v18 = v11;
  v470 = v15;
  v471 = v11;
  v19 = v11 & ~v15;
  v20 = v15;
  v21 = v8 + v17 + (v6 | v19) + 1518500249 + v13;
  v23 = __PAIR64__(v21, __ROR4__(v12, 2));
  v22 = v21 & v23;
  LODWORD(v23) = v21;
  v24 = bswap32(a2[2]);
  v25 = v18 + v24 + (v12 & __ROR4__(v20, 2) | v4 & ~v12) + 1518500249 + (v23 >> 27);
  HIDWORD(v23) = v25;
  LODWORD(v23) = v25;
  v26 = bswap32(a2[3]);
  v27 = v4 + v26 + (v22 | v16 & ~v21) + 1518500249 + (v23 >> 27);
  HIDWORD(v23) = v27;
  LODWORD(v23) = v27;
  v28 = v23 >> 2;
  HIDWORD(v23) = v21;
  LODWORD(v23) = v21;
  v29 = v23 >> 2;
  v31 = __PAIR64__(v27, __ROR4__(v21, 2));
  v30 = v25 & v31;
  LODWORD(v31) = v27;
  v32 = v31 >> 27;
  HIDWORD(v31) = v25;
  LODWORD(v31) = v25;
  v33 = v31 >> 2;
  v34 = bswap32(a2[4]);
  v35 = v16 + v34 + (v30 | v14 & ~v25) + 1518500249 + v32;
  v37 = __PAIR64__(v35, __ROR4__(v25, 2));
  v36 = v27 & v37;
  LODWORD(v37) = v35;
  v38 = bswap32(a2[5]);
  v39 = v38 + v14 + (v36 | v29 & ~v27) + 1518500249 + (v37 >> 27);
  HIDWORD(v37) = v39;
  LODWORD(v37) = v39;
  v40 = v37 >> 27;
  HIDWORD(v37) = v39;
  LODWORD(v37) = v39;
  v41 = v37 >> 2;
  HIDWORD(v37) = v35;
  LODWORD(v37) = v35;
  v42 = v37 >> 2;
  v462 = bswap32(a2[6]);
  v43 = v462 + v29 + (v35 & __ROR4__(v27, 2) | v33 & ~v35) + 1518500249 + v40;
  v45 = __PAIR64__(v43, __ROR4__(v39, 2));
  v44 = v43 & v45;
  LODWORD(v45) = v43;
  v466 = bswap32(a2[7]);
  LODWORD(v45) = v466 + v33 + (v39 & __ROR4__(v35, 2) | v28 & ~v39) + 1518500249 + (v45 >> 27);
  v46 = v45;
  HIDWORD(v45) = v45;
  v47 = bswap32(a2[8]);
  v48 = v47 + v28 + (v44 | v42 & ~v43) + 1518500249 + (v45 >> 27);
  HIDWORD(v45) = v48;
  LODWORD(v45) = v48;
  v49 = v45 >> 2;
  HIDWORD(v45) = v43;
  LODWORD(v45) = v43;
  v50 = v45 >> 2;
  v52 = __PAIR64__(v48, __ROR4__(v43, 2));
  v51 = v46 & v52;
  LODWORD(v52) = v48;
  v53 = v52 >> 27;
  HIDWORD(v52) = v46;
  LODWORD(v52) = v46;
  v54 = v52 >> 2;
  v55 = bswap32(a2[9]);
  v56 = v55 + v42 + (v51 | v41 & ~v46) + 1518500249 + v53;
  v57 = v56 & __ROR4__(v48, 2);
  v59 = __PAIR64__(v56, __ROR4__(v46, 2));
  v58 = v48 & v59;
  LODWORD(v59) = v56;
  v60 = bswap32(a2[10]);
  v61 = v60 + v41 + (v58 | v50 & ~v48) + 1518500249 + (v59 >> 27);
  HIDWORD(v59) = v61;
  LODWORD(v59) = v61;
  v62 = v59 >> 27;
  HIDWORD(v59) = v61;
  LODWORD(v59) = v61;
  v63 = v59 >> 2;
  HIDWORD(v59) = v56;
  LODWORD(v59) = v56;
  v64 = v59 >> 2;
  v65 = bswap32(a2[11]);
  v66 = v65 + v50 + (v57 | v54 & ~v56) + 1518500249 + v62;
  v67 = v66 & __ROR4__(v61, 2);
  v69 = __PAIR64__(v66, __ROR4__(v56, 2));
  v68 = v61 & v69;
  LODWORD(v69) = v66;
  v70 = bswap32(a2[12]);
  v71 = v70 + v54 + (v68 | v49 & ~v61) + 1518500249 + (v69 >> 27);
  HIDWORD(v69) = v71;
  LODWORD(v69) = v71;
  v72 = v69 >> 27;
  HIDWORD(v69) = v71;
  LODWORD(v69) = v71;
  v73 = v69 >> 2;
  HIDWORD(v69) = v66;
  LODWORD(v69) = v66;
  v74 = v69 >> 2;
  v75 = bswap32(a2[13]);
  v76 = v75 + v49 + (v67 | v64 & ~v66) + 1518500249 + v72;
  v78 = __PAIR64__(v76, __ROR4__(v71, 2));
  v77 = v76 & v78;
  LODWORD(v78) = v76;
  v79 = v71 & __ROR4__(v66, 2) | v63 & ~v71;
  v80 = bswap32(a2[14]);
  v81 = v80 + v64 + v79 + 1518500249 + (v78 >> 27);
  HIDWORD(v78) = v81;
  LODWORD(v78) = v81;
  v82 = v78 >> 27;
  HIDWORD(v78) = v76;
  LODWORD(v78) = v76;
  v83 = v78 >> 2;
  v84 = bswap32(a2[15]);
  v85 = v84 + v63 + (v77 | v74 & ~v76);
  v86 = v24 ^ v10 ^ v47 ^ v75;
  HIDWORD(v78) = v86;
  LODWORD(v78) = v86;
  v87 = v78 >> 31;
  v88 = v85 + 1518500249 + v82;
  HIDWORD(v78) = v88;
  LODWORD(v78) = v88;
  v89 = v78 >> 27;
  v90 = v81 & __ROR4__(v76, 2) | v73 & ~v81;
  v91 = v87 + v74;
  HIDWORD(v78) = v81;
  LODWORD(v78) = v81;
  v92 = v78 >> 2;
  v93 = v88 & __ROR4__(v81, 2);
  v94 = v91 + v90;
  v95 = v26 ^ v17 ^ v55 ^ v80;
  HIDWORD(v78) = v95;
  LODWORD(v78) = v95;
  v96 = v78 >> 31;
  v97 = v94 + 1518500249 + v89;
  v98 = v93 | v83 & ~v88;
  HIDWORD(v78) = v97;
  LODWORD(v78) = v97;
  v99 = v78 >> 27;
  HIDWORD(v78) = v88;
  LODWORD(v78) = v88;
  v100 = v78 >> 2;
  v101 = v34 ^ v24 ^ v60 ^ v84;
  HIDWORD(v78) = v101;
  LODWORD(v78) = v101;
  v443 = v78 >> 31;
  v102 = v96 + v73 + v98 + 1518500249 + v99;
  HIDWORD(v78) = v102;
  LODWORD(v78) = v102;
  v103 = v443 + v83 + (v97 & __ROR4__(v88, 2) | v92 & ~v97);
  v104 = v38;
  v105 = v38 ^ v26 ^ v65 ^ __ROR4__(v86, 31);
  v106 = v103 + 1518500249 + (v78 >> 27);
  HIDWORD(v78) = v105;
  LODWORD(v78) = v105;
  v435 = v78 >> 31;
  HIDWORD(v78) = v106;
  LODWORD(v78) = v106;
  v107 = v78 >> 27;
  HIDWORD(v78) = v102;
  LODWORD(v78) = v102;
  v108 = v78 >> 2;
  v109 = v435 + v92 + (v102 & __ROR4__(v97, 2) | v100 & ~v102) + 1518500249 + v107;
  v110 = v462 ^ v34 ^ v70 ^ __ROR4__(v95, 31);
  HIDWORD(v78) = v110;
  LODWORD(v78) = v110;
  v440 = v78 >> 31;
  HIDWORD(v78) = v109;
  LODWORD(v78) = v109;
  v111 = v440 + v100 + (v108 ^ __ROR4__(v97, 2) ^ v106) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v97;
  LODWORD(v78) = v97;
  v112 = v78 >> 2;
  HIDWORD(v78) = v106;
  LODWORD(v78) = v106;
  v113 = v78 >> 2;
  LODWORD(v78) = v466 ^ v104 ^ v75 ^ __ROR4__(v101, 31);
  v114 = v78;
  HIDWORD(v78) = v78;
  v115 = v78 >> 31;
  HIDWORD(v78) = v111;
  LODWORD(v78) = v111;
  v116 = v115 + v112 + (v113 ^ __ROR4__(v102, 2) ^ v109) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v109;
  LODWORD(v78) = v109;
  v117 = v78 >> 2;
  LODWORD(v78) = v47 ^ v462 ^ v80 ^ __ROR4__(v105, 31);
  v118 = v78;
  HIDWORD(v78) = v78;
  v432 = v78 >> 31;
  HIDWORD(v78) = v116;
  LODWORD(v78) = v116;
  v119 = v432 + v108 + (v117 ^ __ROR4__(v106, 2) ^ v111) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v111;
  LODWORD(v78) = v111;
  v120 = v78 >> 2;
  LODWORD(v78) = v55 ^ v466 ^ v84 ^ __ROR4__(v110, 31);
  v121 = v78;
  HIDWORD(v78) = v78;
  v429 = v78 >> 31;
  HIDWORD(v78) = v119;
  LODWORD(v78) = v119;
  v122 = v429 + v113 + (v120 ^ __ROR4__(v109, 2) ^ v116) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v116;
  LODWORD(v78) = v116;
  v123 = v78 >> 2;
  LODWORD(v78) = v60 ^ v47 ^ __ROR4__(v86, 31) ^ __ROR4__(v114, 31);
  v124 = v78;
  HIDWORD(v78) = v78;
  v438 = v78 >> 31;
  HIDWORD(v78) = v122;
  LODWORD(v78) = v122;
  v125 = v438 + v117 + (v123 ^ __ROR4__(v111, 2) ^ v119) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v119;
  LODWORD(v78) = v119;
  v126 = v78 >> 2;
  v127 = v65;
  LODWORD(v78) = v65 ^ v55 ^ __ROR4__(v95, 31) ^ __ROR4__(v118, 31);
  v128 = v78;
  HIDWORD(v78) = v78;
  v459 = v78 >> 31;
  HIDWORD(v78) = v125;
  LODWORD(v78) = v125;
  v129 = v459 + v120 + (v126 ^ __ROR4__(v116, 2) ^ v122) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v122;
  LODWORD(v78) = v122;
  v130 = v78 >> 2;
  v131 = v130 ^ __ROR4__(v119, 2) ^ v125;
  LODWORD(v78) = v70 ^ v60 ^ __ROR4__(v101, 31) ^ __ROR4__(v121, 31);
  v132 = v78;
  HIDWORD(v78) = v78;
  v467 = v78 >> 31;
  HIDWORD(v78) = v129;
  LODWORD(v78) = v129;
  v133 = v467 + v123 + v131 + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v125;
  LODWORD(v78) = v125;
  v134 = v78 >> 2;
  LODWORD(v78) = v75 ^ v127 ^ __ROR4__(v105, 31) ^ __ROR4__(v124, 31);
  v135 = v78;
  HIDWORD(v78) = v78;
  v447 = v78 >> 31;
  HIDWORD(v78) = v133;
  LODWORD(v78) = v133;
  v136 = v447 + v126 + (v134 ^ __ROR4__(v122, 2) ^ v129) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v129;
  LODWORD(v78) = v129;
  v137 = v78 >> 2;
  v138 = v80 ^ v70 ^ __ROR4__(v110, 31) ^ __ROR4__(v128, 31);
  HIDWORD(v78) = v138;
  LODWORD(v78) = v138;
  v456 = v78 >> 31;
  HIDWORD(v78) = v136;
  LODWORD(v78) = v136;
  v139 = v456 + v130 + (v137 ^ __ROR4__(v125, 2) ^ v133) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v133;
  LODWORD(v78) = v133;
  v140 = v78 >> 2;
  LODWORD(v78) = v84 ^ v75 ^ __ROR4__(v114, 31) ^ __ROR4__(v132, 31);
  v141 = v78;
  HIDWORD(v78) = v78;
  v453 = v78 >> 31;
  HIDWORD(v78) = v139;
  LODWORD(v78) = v139;
  v142 = v453 + v134 + (v140 ^ __ROR4__(v129, 2) ^ v136) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v136;
  LODWORD(v78) = v136;
  v143 = v78 >> 2;
  LODWORD(v78) = v80 ^ __ROR4__(v86, 31) ^ __ROR4__(v118, 31) ^ __ROR4__(v135, 31);
  v144 = v78;
  HIDWORD(v78) = v78;
  v450 = v78 >> 31;
  HIDWORD(v78) = v142;
  LODWORD(v78) = v142;
  v145 = v450 + v137 + (v143 ^ __ROR4__(v133, 2) ^ v139) + 1859775393 + (v78 >> 27);
  HIDWORD(v78) = v139;
  LODWORD(v78) = v139;
  v146 = v78 >> 2;
  v147 = v84 ^ __ROR4__(v95, 31) ^ __ROR4__(v121, 31) ^ __ROR4__(v138, 31);
  HIDWORD(v78) = v147;
  LODWORD(v78) = v147;
  v463 = v78 >> 31;
  HIDWORD(v78) = v145;
  LODWORD(v78) = v145;
  v148 = v463 + v140 + (v146 ^ __ROR4__(v136, 2) ^ v142) + 1859775393 + (v78 >> 27);
  v150 = __PAIR64__(v142, __ROR4__(v86, 31));
  v149 = v443 ^ v150;
  LODWORD(v150) = v142;
  v151 = v150 >> 2;
  LODWORD(v150) = v149 ^ __ROR4__(v124, 31) ^ __ROR4__(v141, 31);
  v152 = v150;
  HIDWORD(v150) = v150;
  v153 = v150 >> 31;
  HIDWORD(v150) = v148;
  LODWORD(v150) = v148;
  v154 = v153 + v143 + (v151 ^ __ROR4__(v139, 2) ^ v145) + 1859775393 + (v150 >> 27);
  v156 = __PAIR64__(v145, __ROR4__(v95, 31));
  v155 = v435 ^ v156;
  LODWORD(v156) = v145;
  v157 = v156 >> 2;
  v158 = v155 ^ __ROR4__(v128, 31) ^ __ROR4__(v144, 31);
  HIDWORD(v156) = v158;
  LODWORD(v156) = v158;
  v444 = v156 >> 31;
  HIDWORD(v156) = v154;
  LODWORD(v156) = v154;
  v159 = v444 + v146 + (v157 ^ __ROR4__(v142, 2) ^ v148) + 1859775393 + (v156 >> 27);
  v161 = __PAIR64__(v148, __ROR4__(v101, 31));
  v160 = v440 ^ v161;
  LODWORD(v161) = v148;
  v162 = v161 >> 2;
  LODWORD(v161) = v160 ^ __ROR4__(v132, 31) ^ __ROR4__(v147, 31);
  v163 = v161;
  HIDWORD(v161) = v161;
  v441 = v161 >> 31;
  HIDWORD(v161) = v159;
  LODWORD(v161) = v159;
  v164 = v441 + v151 + (v162 ^ __ROR4__(v145, 2) ^ v154) + 1859775393 + (v161 >> 27);
  v166 = __PAIR64__(v154, __ROR4__(v105, 31));
  v165 = v115 ^ v166;
  LODWORD(v166) = v154;
  v167 = v166 >> 2;
  LODWORD(v166) = v165 ^ __ROR4__(v135, 31) ^ __ROR4__(v152, 31);
  v168 = v166;
  HIDWORD(v166) = v166;
  v436 = v166 >> 31;
  HIDWORD(v166) = v164;
  LODWORD(v166) = v164;
  v169 = v436 + v157 + (v167 ^ __ROR4__(v148, 2) ^ v159) + 1859775393 + (v166 >> 27);
  v171 = __PAIR64__(v159, __ROR4__(v110, 31));
  v170 = v432 ^ v171;
  LODWORD(v171) = v159;
  v172 = v171 >> 2;
  LODWORD(v171) = v170 ^ __ROR4__(v138, 31) ^ __ROR4__(v158, 31);
  v173 = v171;
  HIDWORD(v171) = v171;
  v433 = v171 >> 31;
  HIDWORD(v171) = v169;
  LODWORD(v171) = v169;
  v174 = v433 + v162 + (v172 ^ __ROR4__(v154, 2) ^ v164) + 1859775393 + (v171 >> 27);
  v176 = __PAIR64__(v164, __ROR4__(v114, 31));
  v175 = v429 ^ v176;
  LODWORD(v176) = v164;
  v177 = v176 >> 2;
  LODWORD(v176) = v175 ^ __ROR4__(v141, 31) ^ __ROR4__(v163, 31);
  v178 = v176;
  HIDWORD(v176) = v176;
  v430 = v176 >> 31;
  HIDWORD(v176) = v174;
  LODWORD(v176) = v174;
  v179 = v430 + v167 + (v177 ^ __ROR4__(v159, 2) ^ v169) + 1859775393 + (v176 >> 27);
  v181 = __PAIR64__(v169, __ROR4__(v118, 31));
  v180 = v438 ^ v181;
  LODWORD(v181) = v169;
  v182 = v181 >> 2;
  LODWORD(v181) = v180 ^ __ROR4__(v144, 31) ^ __ROR4__(v168, 31);
  v183 = v181;
  HIDWORD(v181) = v181;
  v184 = v181 >> 31;
  HIDWORD(v181) = v179;
  LODWORD(v181) = v179;
  v185 = v184 + v172 + (v182 ^ __ROR4__(v164, 2) ^ v174) + 1859775393 + (v181 >> 27);
  v187 = __PAIR64__(v174, __ROR4__(v121, 31));
  v186 = v459 ^ v187;
  LODWORD(v187) = v174;
  v188 = v187 >> 2;
  LODWORD(v187) = v186 ^ __ROR4__(v147, 31) ^ __ROR4__(v173, 31);
  v189 = v187;
  HIDWORD(v187) = v187;
  v460 = v187 >> 31;
  HIDWORD(v187) = v185;
  LODWORD(v187) = v185;
  v190 = v460 + v177 + (v188 ^ __ROR4__(v169, 2) ^ v179) + 1859775393 + (v187 >> 27);
  LODWORD(v187) = v467 ^ __ROR4__(v124, 31) ^ __ROR4__(v152, 31) ^ __ROR4__(v178, 31);
  HIDWORD(v187) = v187;
  v468 = v187 >> 31;
  v191 = v187;
  HIDWORD(v187) = v190;
  LODWORD(v187) = v190;
  v192 = v468 + v182 + ((v185 | __ROR4__(v179, 2)) & __ROR4__(v174, 2) | v185 & __ROR4__(v179, 2)) + (v187 >> 27) - 1894007588;
  v193 = v447 ^ __ROR4__(v128, 31) ^ __ROR4__(v158, 31);
  LODWORD(v187) = __ROR4__(v183, 31);
  v194 = v193 ^ v187;
  v196 = __PAIR64__(v193 ^ v187, __ROR4__(v185, 2));
  v195 = v190 & v196;
  LODWORD(v196) = v194;
  v448 = v196 >> 31;
  HIDWORD(v196) = v192;
  LODWORD(v196) = v192;
  v197 = v448 + v188 + ((v190 | __ROR4__(v185, 2)) & __ROR4__(v179, 2) | v195) + (v196 >> 27);
  v198 = __PAIR64__(v179, __ROR4__(v190, 2));
  v199 = (v192 | __ROR4__(v190, 2)) & __ROR4__(v185, 2) | v192 & v198;
  LODWORD(v198) = v179;
  v200 = v198 >> 2;
  LODWORD(v198) = v456 ^ __ROR4__(v132, 31) ^ __ROR4__(v163, 31) ^ __ROR4__(v189, 31);
  v201 = v198;
  HIDWORD(v198) = v198;
  v457 = v198 >> 31;
  v202 = v457 + v200 + v199;
  v203 = v197 - 1894007588;
  HIDWORD(v198) = v197 - 1894007588;
  LODWORD(v198) = v197 - 1894007588;
  v204 = v202 + (v198 >> 27);
  v206 = __PAIR64__(v185, __ROR4__(v135, 31));
  v205 = v453 ^ v206;
  LODWORD(v206) = v185;
  v207 = v206 >> 2;
  LODWORD(v206) = v205 ^ __ROR4__(v168, 31) ^ __ROR4__(v191, 31);
  HIDWORD(v206) = v206;
  v454 = v206 >> 31;
  v208 = v206;
  v204 -= 1894007588;
  HIDWORD(v206) = v204;
  LODWORD(v206) = v204;
  v209 = v454 + v207 + ((v203 | __ROR4__(v192, 2)) & __ROR4__(v190, 2) | v203 & __ROR4__(v192, 2)) + (v206 >> 27);
  v211 = __PAIR64__(v190, __ROR4__(v138, 31));
  v210 = v450 ^ v211;
  LODWORD(v211) = v190;
  v212 = v211 >> 2;
  LODWORD(v211) = v210 ^ __ROR4__(v173, 31) ^ __ROR4__(v194, 31);
  v213 = v211;
  HIDWORD(v211) = v211;
  v451 = v211 >> 31;
  v209 -= 1894007588;
  HIDWORD(v211) = v209;
  LODWORD(v211) = v209;
  v214 = v451 + v212 + ((v204 | __ROR4__(v203, 2)) & __ROR4__(v192, 2) | v204 & __ROR4__(v203, 2)) + (v211 >> 27);
  v216 = __PAIR64__(v192, __ROR4__(v141, 31));
  v215 = v463 ^ v216;
  LODWORD(v216) = v192;
  v217 = v216 >> 2;
  v218 = v214 - 1894007588;
  LODWORD(v216) = v215 ^ __ROR4__(v178, 31) ^ __ROR4__(v201, 31);
  v219 = v216;
  HIDWORD(v216) = v216;
  v464 = v216 >> 31;
  HIDWORD(v216) = v214 - 1894007588;
  LODWORD(v216) = v214 - 1894007588;
  v220 = v464 + v217 + ((v209 | __ROR4__(v204, 2)) & __ROR4__(v203, 2) | v209 & __ROR4__(v204, 2)) + (v216 >> 27);
  v222 = __PAIR64__(v203, __ROR4__(v144, 31));
  v221 = v153 ^ v222;
  LODWORD(v222) = v203;
  v223 = v222 >> 2;
  v224 = v221 ^ __ROR4__(v183, 31);
  LODWORD(v222) = __ROR4__(v208, 31);
  v225 = v224 ^ v222;
  v226 = v208;
  v228 = __PAIR64__(v224 ^ v222, __ROR4__(v209, 2));
  v227 = v218 & v228;
  LODWORD(v228) = v225;
  v439 = v228 >> 31;
  v229 = v439 + v223 + ((v218 | __ROR4__(v209, 2)) & __ROR4__(v204, 2) | v227);
  v230 = v220 - 1894007588;
  HIDWORD(v228) = v220 - 1894007588;
  LODWORD(v228) = v220 - 1894007588;
  v231 = v229 + (v228 >> 27);
  v233 = __PAIR64__(v204, __ROR4__(v147, 31));
  v232 = v444 ^ v233;
  LODWORD(v233) = v204;
  v234 = v233 >> 2;
  LODWORD(v233) = v232 ^ __ROR4__(v189, 31) ^ __ROR4__(v213, 31);
  v235 = v233;
  HIDWORD(v233) = v233;
  v445 = v233 >> 31;
  v231 -= 1894007588;
  HIDWORD(v233) = v231;
  LODWORD(v233) = v231;
  v236 = v445 + v234 + ((v230 | __ROR4__(v218, 2)) & __ROR4__(v209, 2) | v230 & __ROR4__(v218, 2)) + (v233 >> 27);
  v237 = __PAIR64__(v209, __ROR4__(v230, 2));
  v238 = (v231 | __ROR4__(v230, 2)) & __ROR4__(v218, 2) | v231 & v237;
  LODWORD(v237) = v209;
  v239 = v237 >> 2;
  v240 = v191;
  LODWORD(v237) = v441 ^ __ROR4__(v152, 31) ^ __ROR4__(v191, 31) ^ __ROR4__(v219, 31);
  v241 = v237;
  HIDWORD(v237) = v237;
  v442 = v237 >> 31;
  v242 = v442 + v239 + v238;
  v243 = v236 - 1894007588;
  HIDWORD(v237) = v236 - 1894007588;
  LODWORD(v237) = v236 - 1894007588;
  v244 = v242 + (v237 >> 27);
  v246 = __PAIR64__(v218, __ROR4__(v158, 31));
  v245 = v436 ^ v246;
  LODWORD(v246) = v218;
  v247 = v246 >> 2;
  LODWORD(v246) = v245 ^ __ROR4__(v194, 31) ^ __ROR4__(v225, 31);
  v248 = v246;
  HIDWORD(v246) = v246;
  v437 = v246 >> 31;
  v244 -= 1894007588;
  HIDWORD(v246) = v244;
  LODWORD(v246) = v244;
  v249 = v437 + v247 + ((v243 | __ROR4__(v231, 2)) & __ROR4__(v230, 2) | v243 & __ROR4__(v231, 2)) + (v246 >> 27);
  v251 = __PAIR64__(v230, __ROR4__(v163, 31));
  v250 = v433 ^ v251;
  LODWORD(v251) = v230;
  v252 = v251 >> 2;
  LODWORD(v251) = v250 ^ __ROR4__(v201, 31) ^ __ROR4__(v235, 31);
  v253 = v251;
  HIDWORD(v251) = v251;
  v434 = v251 >> 31;
  v254 = v249 - 1894007588;
  HIDWORD(v251) = v249 - 1894007588;
  LODWORD(v251) = v249 - 1894007588;
  v255 = v434 + v252 + ((v244 | __ROR4__(v243, 2)) & __ROR4__(v231, 2) | v244 & __ROR4__(v243, 2)) + (v251 >> 27);
  v257 = __PAIR64__(v231, __ROR4__(v168, 31));
  v256 = v430 ^ v257;
  LODWORD(v257) = v231;
  v258 = v257 >> 2;
  v255 -= 1894007588;
  LODWORD(v257) = v256 ^ __ROR4__(v226, 31) ^ __ROR4__(v241, 31);
  v259 = v257;
  HIDWORD(v257) = v257;
  v431 = v257 >> 31;
  HIDWORD(v257) = v255;
  LODWORD(v257) = v255;
  v260 = v431 + v258 + ((v254 | __ROR4__(v244, 2)) & __ROR4__(v243, 2) | v254 & __ROR4__(v244, 2)) + (v257 >> 27);
  v262 = __PAIR64__(v243, __ROR4__(v173, 31));
  v261 = v184 ^ v262;
  LODWORD(v262) = v243;
  v263 = v262 >> 2;
  v264 = v261 ^ __ROR4__(v213, 31);
  LODWORD(v262) = __ROR4__(v248, 31);
  v265 = v264 ^ v262;
  v267 = __PAIR64__(v264 ^ v262, __ROR4__(v254, 2));
  v266 = v255 & v267;
  LODWORD(v267) = v265;
  v428 = v267 >> 31;
  v260 -= 1894007588;
  HIDWORD(v267) = v260;
  LODWORD(v267) = v260;
  v268 = v428 + v263 + ((v255 | __ROR4__(v254, 2)) & __ROR4__(v244, 2) | v266) + (v267 >> 27);
  v270 = __PAIR64__(v244, __ROR4__(v178, 31));
  v269 = v460 ^ v270;
  LODWORD(v270) = v244;
  v271 = v270 >> 2;
  LODWORD(v270) = v269 ^ __ROR4__(v219, 31) ^ __ROR4__(v253, 31);
  v272 = v270;
  HIDWORD(v270) = v270;
  v273 = v270 >> 31;
  v268 -= 1894007588;
  HIDWORD(v270) = v268;
  LODWORD(v270) = v268;
  v274 = v273 + v271 + ((v260 | __ROR4__(v255, 2)) & __ROR4__(v254, 2) | v260 & __ROR4__(v255, 2)) + (v270 >> 27);
  v275 = __PAIR64__(v254, __ROR4__(v260, 2));
  v276 = (v268 | __ROR4__(v260, 2)) & __ROR4__(v255, 2) | v268 & v275;
  LODWORD(v275) = v254;
  v277 = v275 >> 2;
  v278 = v468 ^ __ROR4__(v183, 31) ^ __ROR4__(v225, 31) ^ __ROR4__(v259, 31);
  HIDWORD(v275) = v278;
  LODWORD(v275) = v278;
  v469 = v275 >> 31;
  v279 = v274 - 1894007588;
  HIDWORD(v275) = v274 - 1894007588;
  LODWORD(v275) = v274 - 1894007588;
  v280 = v469 + v277 + v276 + (v275 >> 27);
  v282 = __PAIR64__(v255, __ROR4__(v189, 31));
  v281 = v448 ^ v282;
  LODWORD(v282) = v255;
  v283 = v282 >> 2;
  LODWORD(v282) = v281 ^ __ROR4__(v235, 31) ^ __ROR4__(v265, 31);
  v284 = v282;
  HIDWORD(v282) = v282;
  v461 = v282 >> 31;
  v280 -= 1894007588;
  HIDWORD(v282) = v280;
  LODWORD(v282) = v280;
  v285 = v461 + v283 + ((v279 | __ROR4__(v268, 2)) & __ROR4__(v260, 2) | v279 & __ROR4__(v268, 2)) + (v282 >> 27);
  v287 = __PAIR64__(v260, __ROR4__(v240, 31));
  v286 = v457 ^ v287;
  LODWORD(v287) = v260;
  v288 = v287 >> 2;
  LODWORD(v287) = v286 ^ __ROR4__(v241, 31) ^ __ROR4__(v272, 31);
  v289 = v287;
  HIDWORD(v287) = v287;
  v458 = v287 >> 31;
  v290 = v285 - 1894007588;
  HIDWORD(v287) = v285 - 1894007588;
  LODWORD(v287) = v285 - 1894007588;
  v291 = v458 + v288 + ((v280 | __ROR4__(v279, 2)) & __ROR4__(v268, 2) | v280 & __ROR4__(v279, 2)) + (v287 >> 27);
  v293 = __PAIR64__(v268, __ROR4__(v194, 31));
  v292 = v454 ^ v293;
  LODWORD(v293) = v268;
  v294 = v293 >> 2;
  v291 -= 1894007588;
  LODWORD(v293) = v292 ^ __ROR4__(v248, 31) ^ __ROR4__(v278, 31);
  v295 = v293;
  HIDWORD(v293) = v293;
  v455 = v293 >> 31;
  HIDWORD(v293) = v291;
  LODWORD(v293) = v291;
  v296 = v455 + v294 + ((v290 | __ROR4__(v280, 2)) & __ROR4__(v279, 2) | v290 & __ROR4__(v280, 2)) + (v293 >> 27);
  v298 = __PAIR64__(v279, __ROR4__(v201, 31));
  v297 = v451 ^ v298;
  LODWORD(v298) = v279;
  v299 = v298 >> 2;
  v300 = v297 ^ __ROR4__(v253, 31);
  LODWORD(v298) = __ROR4__(v284, 31);
  v301 = v300 ^ v298;
  v303 = __PAIR64__(v300 ^ v298, __ROR4__(v290, 2));
  v302 = v291 & v303;
  LODWORD(v303) = v301;
  v452 = v303 >> 31;
  v296 -= 1894007588;
  HIDWORD(v303) = v296;
  LODWORD(v303) = v296;
  v304 = v452 + v299 + ((v291 | __ROR4__(v290, 2)) & __ROR4__(v280, 2) | v302) + (v303 >> 27);
  v306 = __PAIR64__(v280, __ROR4__(v226, 31));
  v305 = v464 ^ v306;
  LODWORD(v306) = v280;
  v307 = v306 >> 2;
  LODWORD(v306) = v305 ^ __ROR4__(v259, 31) ^ __ROR4__(v289, 31);
  v308 = v306;
  HIDWORD(v306) = v306;
  v465 = v306 >> 31;
  v304 -= 1894007588;
  HIDWORD(v306) = v304;
  LODWORD(v306) = v304;
  v309 = v465 + v307 + ((v296 | __ROR4__(v291, 2)) & __ROR4__(v290, 2) | v296 & __ROR4__(v291, 2)) + (v306 >> 27) - 1894007588;
  v311 = __PAIR64__(v290, __ROR4__(v213, 31));
  v310 = v439 ^ v311;
  LODWORD(v311) = v290;
  v312 = v311 >> 2;
  HIDWORD(v311) = v296;
  LODWORD(v311) = v296;
  v313 = v311 >> 2;
  LODWORD(v311) = v310 ^ __ROR4__(v265, 31) ^ __ROR4__(v295, 31);
  v314 = v311;
  HIDWORD(v311) = v311;
  v449 = v311 >> 31;
  HIDWORD(v311) = v309;
  LODWORD(v311) = v309;
  v315 = v449 + v312 + (v313 ^ __ROR4__(v291, 2) ^ v304) - 899497514 + (v311 >> 27);
  v317 = __PAIR64__(v291, __ROR4__(v219, 31));
  v316 = v445 ^ v317;
  LODWORD(v317) = v291;
  v318 = v317 >> 2;
  HIDWORD(v317) = v304;
  LODWORD(v317) = v304;
  v319 = v317 >> 2;
  v320 = v316 ^ __ROR4__(v272, 31) ^ __ROR4__(v301, 31);
  HIDWORD(v317) = v320;
  LODWORD(v317) = v320;
  v321 = v317 >> 31;
  HIDWORD(v317) = v315;
  LODWORD(v317) = v315;
  v322 = v321 + v318 + (v319 ^ __ROR4__(v296, 2) ^ v309) - 899497514 + (v317 >> 27);
  v324 = __PAIR64__(v309, __ROR4__(v225, 31));
  v323 = v442 ^ v324;
  LODWORD(v324) = v309;
  v325 = v324 >> 2;
  LODWORD(v324) = v323 ^ __ROR4__(v278, 31) ^ __ROR4__(v308, 31);
  v326 = v324;
  HIDWORD(v324) = v324;
  v446 = v324 >> 31;
  HIDWORD(v324) = v322;
  LODWORD(v324) = v322;
  v327 = v446 + v313 + (v325 ^ __ROR4__(v304, 2) ^ v315) - 899497514 + (v324 >> 27);
  v329 = __PAIR64__(v315, __ROR4__(v235, 31));
  v328 = v437 ^ v329;
  LODWORD(v329) = v315;
  v330 = v329 >> 2;
  LODWORD(v329) = v328 ^ __ROR4__(v284, 31) ^ __ROR4__(v314, 31);
  v331 = v329;
  HIDWORD(v329) = v329;
  v332 = v329 >> 31;
  HIDWORD(v329) = v327;
  LODWORD(v329) = v327;
  v333 = v332 + v319 + (v330 ^ __ROR4__(v309, 2) ^ v322) - 899497514 + (v329 >> 27);
  v335 = __PAIR64__(v322, __ROR4__(v241, 31));
  v334 = v434 ^ v335;
  LODWORD(v335) = v322;
  v336 = v335 >> 2;
  LODWORD(v335) = v334 ^ __ROR4__(v289, 31) ^ __ROR4__(v320, 31);
  v337 = v335;
  HIDWORD(v335) = v335;
  v338 = v335 >> 31;
  HIDWORD(v335) = v333;
  LODWORD(v335) = v333;
  v339 = v338 + v325 + (v336 ^ __ROR4__(v315, 2) ^ v327) - 899497514 + (v335 >> 27);
  v341 = __PAIR64__(v327, __ROR4__(v248, 31));
  v340 = v431 ^ v341;
  LODWORD(v341) = v327;
  v342 = v341 >> 2;
  v343 = v340 ^ __ROR4__(v295, 31) ^ __ROR4__(v326, 31);
  HIDWORD(v341) = v343;
  LODWORD(v341) = v343;
  v344 = v341 >> 31;
  HIDWORD(v341) = v339;
  LODWORD(v341) = v339;
  v345 = v344 + v330 + (v342 ^ __ROR4__(v322, 2) ^ v333) - 899497514 + (v341 >> 27);
  LODWORD(v341) = v428 ^ __ROR4__(v253, 31) ^ __ROR4__(v301, 31) ^ __ROR4__(v331, 31);
  v346 = v341;
  HIDWORD(v341) = v341;
  v347 = (v341 >> 31) + v336;
  HIDWORD(v341) = v333;
  LODWORD(v341) = v333;
  v348 = v341 >> 2;
  v349 = __PAIR64__(v345, __ROR4__(v327, 2));
  v350 = v347 + (v348 ^ v349 ^ v339) - 899497514;
  LODWORD(v349) = v345;
  v351 = v350 + (v349 >> 27);
  LODWORD(v349) = v273 ^ __ROR4__(v259, 31) ^ __ROR4__(v308, 31) ^ __ROR4__(v337, 31);
  v352 = v349;
  HIDWORD(v349) = v349;
  v353 = (v349 >> 31) + v342;
  HIDWORD(v349) = v339;
  LODWORD(v349) = v339;
  v354 = v349 >> 2;
  v355 = __PAIR64__(v351, __ROR4__(v333, 2));
  v356 = v353 + (v354 ^ v355 ^ v345) - 899497514;
  LODWORD(v355) = v351;
  v357 = v356 + (v355 >> 27);
  LODWORD(v355) = v469 ^ __ROR4__(v265, 31) ^ __ROR4__(v314, 31) ^ __ROR4__(v343, 31);
  v358 = v355;
  HIDWORD(v355) = v355;
  v359 = (v355 >> 31) + v348;
  HIDWORD(v355) = v345;
  LODWORD(v355) = v345;
  v360 = v355 >> 2;
  v361 = __PAIR64__(v357, __ROR4__(v339, 2));
  v362 = v359 + (v360 ^ v361 ^ v351) - 899497514;
  LODWORD(v361) = v357;
  v363 = v362 + (v361 >> 27);
  LODWORD(v361) = v461 ^ __ROR4__(v272, 31) ^ __ROR4__(v320, 31) ^ __ROR4__(v346, 31);
  v364 = v361;
  HIDWORD(v361) = v361;
  v365 = (v361 >> 31) + v354;
  HIDWORD(v361) = v351;
  LODWORD(v361) = v351;
  v366 = v361 >> 2;
  v367 = __PAIR64__(v363, __ROR4__(v345, 2));
  v368 = v365 + (v366 ^ v367 ^ v357) - 899497514;
  LODWORD(v367) = v363;
  v369 = v368 + (v367 >> 27);
  LODWORD(v367) = v458 ^ __ROR4__(v278, 31) ^ __ROR4__(v326, 31) ^ __ROR4__(v352, 31);
  v370 = v367;
  HIDWORD(v367) = v367;
  v371 = (v367 >> 31) + v360;
  HIDWORD(v367) = v357;
  LODWORD(v367) = v357;
  v372 = v367 >> 2;
  v373 = __PAIR64__(v369, __ROR4__(v351, 2));
  v374 = v371 + (v372 ^ v373 ^ v363) - 899497514;
  LODWORD(v373) = v369;
  v375 = v374 + (v373 >> 27);
  LODWORD(v373) = v455 ^ __ROR4__(v284, 31) ^ __ROR4__(v331, 31) ^ __ROR4__(v358, 31);
  v376 = v373;
  HIDWORD(v373) = v373;
  v377 = (v373 >> 31) + v366;
  HIDWORD(v373) = v363;
  LODWORD(v373) = v363;
  v378 = v373 >> 2;
  v379 = __PAIR64__(v375, __ROR4__(v357, 2));
  v380 = v377 + (v378 ^ v379 ^ v369) - 899497514;
  LODWORD(v379) = v375;
  v381 = v380 + (v379 >> 27);
  v382 = v452 ^ __ROR4__(v289, 31) ^ __ROR4__(v337, 31) ^ __ROR4__(v364, 31);
  HIDWORD(v379) = v382;
  LODWORD(v379) = v382;
  v383 = (v379 >> 31) + v372;
  HIDWORD(v379) = v369;
  LODWORD(v379) = v369;
  v384 = v379 >> 2;
  v385 = __PAIR64__(v381, __ROR4__(v363, 2));
  v386 = v383 + (v384 ^ v385 ^ v375) - 899497514;
  LODWORD(v385) = v381;
  v387 = v386 + (v385 >> 27);
  LODWORD(v385) = v465 ^ __ROR4__(v295, 31) ^ __ROR4__(v343, 31) ^ __ROR4__(v370, 31);
  v388 = v385;
  HIDWORD(v385) = v385;
  v389 = (v385 >> 31) + v378;
  HIDWORD(v385) = v375;
  LODWORD(v385) = v375;
  v390 = v385 >> 2;
  v391 = __PAIR64__(v387, __ROR4__(v369, 2));
  v392 = v389 + (v390 ^ v391 ^ v381) - 899497514;
  LODWORD(v391) = v387;
  v393 = v392 + (v391 >> 27);
  v394 = v449 ^ __ROR4__(v301, 31) ^ __ROR4__(v346, 31) ^ __ROR4__(v376, 31);
  HIDWORD(v391) = v394;
  LODWORD(v391) = v394;
  v395 = (v391 >> 31) + v384;
  HIDWORD(v391) = v381;
  LODWORD(v391) = v381;
  v396 = v391 >> 2;
  v397 = __PAIR64__(v393, __ROR4__(v375, 2));
  v398 = v395 + (v396 ^ v397 ^ v387) - 899497514;
  LODWORD(v397) = v393;
  v399 = v398 + (v397 >> 27);
  LODWORD(v397) = v321 ^ __ROR4__(v308, 31) ^ __ROR4__(v352, 31) ^ __ROR4__(v382, 31);
  v400 = v397;
  HIDWORD(v397) = v397;
  v401 = (v397 >> 31) + v390;
  HIDWORD(v397) = v387;
  LODWORD(v397) = v387;
  v402 = v397 >> 2;
  v403 = __PAIR64__(v399, __ROR4__(v381, 2));
  v404 = v401 + (v402 ^ v403 ^ v393);
  LODWORD(v403) = v399;
  v405 = v404 - 899497514 + (v403 >> 27);
  v407 = __PAIR64__(v393, __ROR4__(v358, 31));
  v406 = v446 ^ __ROR4__(v314, 31) ^ v407;
  LODWORD(v407) = v393;
  result = (v407 >> 2);
  v409 = v406 ^ __ROR4__(v388, 31);
  HIDWORD(v407) = v409;
  LODWORD(v407) = v409;
  v410 = (v407 >> 31) + v396;
  HIDWORD(v407) = v405;
  LODWORD(v407) = v405;
  v411 = v410 + (result ^ __ROR4__(v387, 2) ^ v399) - 899497514 + (v407 >> 27);
  LODWORD(v407) = v332 ^ __ROR4__(v320, 31) ^ __ROR4__(v364, 31) ^ __ROR4__(v394, 31);
  HIDWORD(v407) = v407;
  v412 = (v407 >> 31) + v402;
  HIDWORD(v407) = v399;
  LODWORD(v407) = v399;
  v413 = v407 >> 2;
  v414 = __PAIR64__(v411, __ROR4__(v393, 2));
  v415 = v412 + (v413 ^ v414 ^ v405);
  LODWORD(v414) = v411;
  v416 = v415 - 899497514 + (v414 >> 27);
  v418 = __PAIR64__(v405, __ROR4__(v400, 31));
  v417 = v338 ^ __ROR4__(v326, 31) ^ __ROR4__(v370, 31) ^ v418;
  LODWORD(v418) = v405;
  v419 = v418 >> 2;
  v420 = __PAIR64__(v417, __ROR4__(v399, 2));
  v421 = v419 ^ v420 ^ v411;
  LODWORD(v420) = v417;
  v422 = (v420 >> 31) + result;
  HIDWORD(v420) = v416;
  LODWORD(v420) = v416;
  v423 = v422 + v421 - 899497514 + (v420 >> 27);
  LODWORD(v420) = v344 ^ __ROR4__(v331, 31) ^ __ROR4__(v376, 31) ^ __ROR4__(v409, 31);
  HIDWORD(v420) = v420;
  v424 = v470 + (v420 >> 31) + v413;
  HIDWORD(v420) = v411;
  LODWORD(v420) = v411;
  v425 = v420 >> 2;
  v426 = __PAIR64__(v423, __ROR4__(v405, 2));
  v427 = v424 + (v425 ^ v426 ^ v416) - 899497514;
  LODWORD(v426) = v423;
  *a1 = v427 + (v426 >> 27);
  a1[1] = v423 + v473;
  HIDWORD(v426) = v416;
  LODWORD(v426) = v416;
  a1[2] = (v426 >> 2) + v471;
  a1[3] = v425 + v472;
  a1[4] = v419 + v475;
  return result;
}

double fr_SHA1Init(uint64_t a1)
{
  *a1 = xmmword_249F2F180;
  *(a1 + 24) = 0;
  *&result = 3285377520;
  *(a1 + 16) = 3285377520;
  return result;
}

double fr_SHA1FinalNoLen(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 0; i != 20; ++i)
  {
    *(a1 + i) = *(a2 + (i & 0xFFFFFFFC)) >> (~v2 & 0x18);
    v2 += 8;
  }

  result = 0.0;
  *(a2 + 76) = 0u;
  *(a2 + 60) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  return result;
}

__CFDictionary *EAPClientConfigurationCopyShareable(const __CFDictionary *a1)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  v73 = 0;
  v74 = 0;
  v72 = 0;
  if (a1)
  {
    v2 = CFDictionaryGetValue(a1, @"AcceptEAPTypes");
    if (!v2)
    {
      goto LABEL_28;
    }

    v3 = v2;
    if (!CFArrayGetCount(v2))
    {
      goto LABEL_28;
    }

    MutableCopy = CFArrayCreateMutableCopy(0, 0, v3);
    v73 = MutableCopy;
    TypeID = CFArrayGetTypeID();
    if (!MutableCopy || CFGetTypeID(MutableCopy) != TypeID)
    {
      goto LABEL_25;
    }

    Count = CFArrayGetCount(MutableCopy);
    if (Count >= 1)
    {
      v7 = 0;
      do
      {
        LODWORD(valuePtr[0]) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v7);
        v9 = CFNumberGetTypeID();
        if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v9)
        {
          goto LABEL_25;
        }

        if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, valuePtr) == 1 && (LODWORD(valuePtr[0]) > 0x2B || ((1 << SLOBYTE(valuePtr[0])) & 0x80002202000) == 0))
        {
          CFArrayRemoveValueAtIndex(MutableCopy, v7);
          --Count;
          --v7;
        }
      }

      while (++v7 < Count);
    }

    if (!Count)
    {
LABEL_25:
      LogHandle = EAPLogGetLogHandle();
      v16 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v16))
      {
LABEL_28:
        v12 = 0;
LABEL_29:
        my_CFRelease(&v73);
        my_CFRelease(&v74);
        my_CFRelease(&v72);
        goto LABEL_30;
      }

      LOWORD(valuePtr[0]) = 0;
      v17 = "EAP types are not shareable";
LABEL_27:
      _os_log_impl(&dword_249EFB000, LogHandle, v16, v17, valuePtr, 2u);
      goto LABEL_28;
    }

    if (my_CFDictionaryGetBooleanValue(a1, @"OneTimeUserPassword", 0))
    {
      v13 = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        LOWORD(valuePtr[0]) = 0;
        _os_log_impl(&dword_249EFB000, v13, v14, "EAP Configuration has OneTimePassword Enabled", valuePtr, 2u);
      }

      LogHandle = EAPLogGetLogHandle();
      v16 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v16))
      {
        goto LABEL_28;
      }

      LOWORD(valuePtr[0]) = 0;
      v17 = "EAP configuration is not shareable";
      goto LABEL_27;
    }

    v20 = CFDictionaryGetValue(a1, @"TLSIdentityHandle");
    if (!v20)
    {
      v26 = 0;
      goto LABEL_40;
    }

    privateKeyRef = 0;
    identityRef = 0;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    SecIdentity = EAPSecIdentityHandleCreateSecIdentity(v20, &identityRef);
    if (SecIdentity)
    {
      v22 = SecIdentity;
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v23, v24))
      {
LABEL_36:
        v72 = 0;
LABEL_37:
        LogHandle = EAPLogGetLogHandle();
        v16 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(LogHandle, v16))
        {
          goto LABEL_28;
        }

        LOWORD(valuePtr[0]) = 0;
        v17 = "Failed to get identity from identity handle";
        goto LABEL_27;
      }

      LODWORD(valuePtr[0]) = 67109120;
      HIDWORD(valuePtr[0]) = v22;
      v25 = "EAPSecIdentityHandleCreateSecIdentity() failed: (%d)";
LABEL_35:
      _os_log_impl(&dword_249EFB000, v23, v24, v25, valuePtr, 8u);
      goto LABEL_36;
    }

    v27 = identityRef;
    if (!identityRef)
    {
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_36;
      }

      valuePtr[0] = 67109120;
      v25 = "Failed to find identity in the keychain: (%d)";
      goto LABEL_35;
    }

    valuePtr[0] = 0;
    v84 = 0;
    trust = 0;
    v81 = 0;
    v75 = 0;
    EAP = SecPolicyCreateEAP();
    v83 = EAP;
    if (EAP)
    {
      v29 = EAP;
      v30 = SecIdentityCopyCertificate(v27, valuePtr);
      if (v30)
      {
        v31 = v30;
        v32 = EAPLogGetLogHandle();
        v33 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v32, v33))
        {
          *buf = 67109120;
          *&buf[4] = v31;
          v34 = "SecIdentityCopyCertificate failed: (%d)";
LABEL_55:
          _os_log_impl(&dword_249EFB000, v32, v33, v34, buf, 8u);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      v38 = CFArrayCreate(0, valuePtr, 1, MEMORY[0x277CBF128]);
      v84 = v38;
      my_CFRelease(valuePtr);
      v31 = SecTrustCreateWithCertificates(v38, v29, &trust);
      my_CFRelease(&v84);
      if (v31)
      {
        v32 = EAPLogGetLogHandle();
        v33 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v32, v33))
        {
          *buf = 67109120;
          *&buf[4] = v31;
          v34 = "SecTrustCreateWithCertificates failed: (%d)";
          goto LABEL_55;
        }

LABEL_56:
        Mutable = 0;
        goto LABEL_57;
      }

      v61 = EAPTLSSecTrustEvaluate(trust, &v81);
      if (v61)
      {
        v62 = v61;
        v63 = EAPLogGetLogHandle();
        v64 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v63, v64))
        {
          *buf = 67109120;
          *&buf[4] = v62;
          _os_log_impl(&dword_249EFB000, v63, v64, "SecTrustEvaluate failed: (%d)", buf, 8u);
        }
      }

      CertificateCount = SecTrustGetCertificateCount(trust);
      if (CertificateCount)
      {
        v66 = CertificateCount;
        Mutable = CFArrayCreateMutable(0, CertificateCount, MEMORY[0x277CBF128]);
        if (v66 >= 1)
        {
          for (i = 0; i != v66; ++i)
          {
            *buf = 0;
            CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, i);
            *buf = SecCertificateCopyData(CertificateAtIndex);
            CFArrayAppendValue(Mutable, *buf);
            my_CFRelease(buf);
          }
        }

        v31 = 0;
        v75 = Mutable;
      }

      else
      {
        v69 = EAPLogGetLogHandle();
        v70 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v69, v70))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v69, v70, "SecTrustGetCertificateCount returned 0", buf, 2u);
        }

        Mutable = 0;
        v31 = -50;
      }
    }

    else
    {
      v35 = EAPLogGetLogHandle();
      v36 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v35, v36))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v35, v36, "SecPolicyCreateEAP failed", buf, 2u);
      }

      Mutable = 0;
      v31 = 0;
    }

LABEL_57:
    my_CFRelease(&trust);
    my_CFRelease(&v83);
    if (v31 || !Mutable)
    {
      v53 = EAPLogGetLogHandle();
      v54 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_87;
      }

      LODWORD(valuePtr[0]) = 67109120;
      HIDWORD(valuePtr[0]) = v31;
      v55 = "Failed to get a certificate chain from identity: (%d)";
    }

    else
    {
      v39 = SecIdentityCopyPrivateKey(identityRef, &privateKeyRef);
      if (!v39 && privateKeyRef)
      {
        v40 = SecKeyCopyExternalRepresentation(privateKeyRef, 0);
        v76 = v40;
        if (v40)
        {
          v41 = v40;
          v42 = MEMORY[0x24C2071F0](privateKeyRef);
          v78 = v42;
          if (v42)
          {
            v43 = v42;
            value = v41;
            v44 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v77 = v44;
            v45 = *MEMORY[0x277CDBFE0];
            v46 = CFDictionaryGetValue(v43, *MEMORY[0x277CDBFE0]);
            v47 = v43;
            v48 = *MEMORY[0x277CDC028];
            v49 = CFDictionaryGetValue(v47, *MEMORY[0x277CDC028]);
            if (v46 && v49)
            {
              v50 = v46;
              v51 = v49;
              CFDictionaryAddValue(v44, v45, v50);
              CFDictionaryAddValue(v44, v48, v51);
              v52 = v44;
              v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionaryAddValue(v26, @"certificates", Mutable);
              CFDictionaryAddValue(v26, @"key", value);
              CFDictionaryAddValue(v26, @"attributes", v52);
              goto LABEL_88;
            }

            v59 = EAPLogGetLogHandle();
            v60 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v59, v60))
            {
              LOWORD(valuePtr[0]) = 0;
              v55 = "Failed to find class and/or type item attributes for private key";
              goto LABEL_85;
            }

LABEL_87:
            v26 = 0;
LABEL_88:
            my_CFRelease(&identityRef);
            my_CFRelease(&v78);
            my_CFRelease(&v77);
            my_CFRelease(&v75);
            my_CFRelease(&privateKeyRef);
            my_CFRelease(&v75);
            my_CFRelease(&v76);
            v72 = v26;
            if (!v26)
            {
              goto LABEL_37;
            }

LABEL_40:
            v74 = CFDictionaryCreateMutableCopy(0, 0, a1);
            CFDictionaryRemoveValue(v74, @"TLSIdentityHandle");
            CFDictionarySetValue(v74, @"AcceptEAPTypes", MutableCopy);
            v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionaryAddValue(v12, @"EAPClientConfiguration", v74);
            if (v26)
            {
              CFDictionaryAddValue(v12, @"TLSShareableIdentityInfo", v26);
            }

            goto LABEL_29;
          }

          v59 = EAPLogGetLogHandle();
          v60 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v59, v60))
          {
            goto LABEL_87;
          }

          LOWORD(valuePtr[0]) = 0;
          v55 = "Failed to get all the keychain item attributes for private key";
        }

        else
        {
          v59 = EAPLogGetLogHandle();
          v60 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v59, v60))
          {
            goto LABEL_87;
          }

          LOWORD(valuePtr[0]) = 0;
          v55 = "Failed to get an external representation of private key";
        }

LABEL_85:
        v56 = v59;
        v57 = v60;
        v58 = 2;
        goto LABEL_86;
      }

      v53 = EAPLogGetLogHandle();
      v54 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_87;
      }

      LODWORD(valuePtr[0]) = 67109120;
      HIDWORD(valuePtr[0]) = v39;
      v55 = "Failed to get a private key from identity: (%d)";
    }

    v56 = v53;
    v57 = v54;
    v58 = 8;
LABEL_86:
    _os_log_impl(&dword_249EFB000, v56, v57, v55, valuePtr, v58);
    goto LABEL_87;
  }

  v10 = EAPLogGetLogHandle();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v10, v11))
  {
    LOWORD(valuePtr[0]) = 0;
    _os_log_impl(&dword_249EFB000, v10, v11, "Invalid parameters", valuePtr, 2u);
  }

  v12 = 0;
LABEL_30:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

__CFDictionary *EAPClientConfigurationCopyAndImport(const void *a1)
{
  v74 = *MEMORY[0x277D85DE8];
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    LogHandle = EAPLogGetLogHandle();
    v34 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v34))
    {
      *v70 = 0;
      v35 = "Invalid parameters";
LABEL_28:
      v36 = v70;
LABEL_29:
      _os_log_impl(&dword_249EFB000, LogHandle, v34, v35, v36, 2u);
    }

LABEL_30:
    MutableCopy = 0;
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(a1, @"EAPClientConfiguration");
  v4 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v4)
  {
    LogHandle = EAPLogGetLogHandle();
    v34 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v34))
    {
      *v70 = 0;
      v35 = "Missing EAP Configuration dictionary";
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v5 = CFDictionaryGetValue(a1, @"TLSShareableIdentityInfo");
  v6 = CFDictionaryGetTypeID();
  if (!v5 || CFGetTypeID(v5) != v6)
  {
    v40 = *MEMORY[0x277D85DE8];

    return CFRetain(Value);
  }

  v68 = 0;
  v69[0] = 0;
  result = 0;
  v7 = CFDictionaryGetValue(v5, @"certificates");
  v8 = CFArrayGetTypeID();
  if (!v7 || CFGetTypeID(v7) != v8)
  {
    v41 = EAPLogGetLogHandle();
    v42 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_38:
      LogHandle = EAPLogGetLogHandle();
      v34 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(LogHandle, v34))
      {
        goto LABEL_30;
      }

      LOWORD(v69[0]) = 0;
      v35 = "Failed to create shareable identity handle from shareable identity info";
      v36 = v69;
      goto LABEL_29;
    }

    *v66 = 0;
    v43 = "Failed to get certitifate array";
LABEL_37:
    _os_log_impl(&dword_249EFB000, v41, v42, v43, v66, 2u);
    goto LABEL_38;
  }

  Count = CFArrayGetCount(v7);
  if (Count <= 0)
  {
    v41 = EAPLogGetLogHandle();
    v42 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_38;
    }

    *v66 = 0;
    v43 = "Failed to get valid certitifate array";
    goto LABEL_37;
  }

  v10 = Count;
  v11 = CFDictionaryGetValue(v5, @"key");
  v12 = CFDataGetTypeID();
  if (!v11 || CFGetTypeID(v11) != v12)
  {
    v41 = EAPLogGetLogHandle();
    v42 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_38;
    }

    *v66 = 0;
    v43 = "Failed to get key data";
    goto LABEL_37;
  }

  v13 = CFDictionaryGetValue(v5, @"attributes");
  v14 = CFDictionaryGetTypeID();
  if (!v13 || CFGetTypeID(v13) != v14)
  {
    v41 = EAPLogGetLogHandle();
    v42 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_38;
    }

    *v66 = 0;
    v43 = "Failed to get attributes dictionary";
    goto LABEL_37;
  }

  v15 = *MEMORY[0x277CBECE8];
  ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
  *v70 = SecCertificateCreateWithData(v15, ValueAtIndex);
  if (!*v70)
  {
    v44 = EAPLogGetLogHandle();
    v45 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_72;
    }

    *v66 = 0;
    v32 = "SecCertificateCreateWithData returned NULL";
LABEL_52:
    v46 = v66;
    v47 = v44;
    v48 = v45;
    v49 = 2;
LABEL_53:
    _os_log_impl(&dword_249EFB000, v47, v48, v32, v46, v49);
    goto LABEL_72;
  }

  v69[0] = SecKeyCreateWithData(v11, v13, 0);
  if (!v69[0])
  {
    v44 = EAPLogGetLogHandle();
    v45 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_72;
    }

    *v66 = 0;
    v32 = "SecKeyCreateWithData returned NULL";
    goto LABEL_52;
  }

  v17 = SecIdentityCreate();
  v68 = v17;
  if (!v17)
  {
    v44 = EAPLogGetLogHandle();
    v45 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_72;
    }

    *v66 = 0;
    v32 = "SecIdentityCreate returned NULL";
    goto LABEL_52;
  }

  v18 = v17;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *v66 = Mutable;
  v20 = *MEMORY[0x277CDBEC8];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], @"com.apple.identities");
  v21 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5D0], *MEMORY[0x277CBED28]);
  v22 = *MEMORY[0x277CDC5F8];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5F8], v18);
  v23 = *MEMORY[0x277CDC560];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC560], v21);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF00]);
  v24 = SecItemAdd(Mutable, &result);
  if (v24)
  {
    v25 = v24;
    if (v24 != -25299)
    {
      v30 = EAPLogGetLogHandle();
      v31 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_72;
      }

      *buf = 67109120;
      *&buf[4] = v25;
      v32 = "Failed to store identity in keychain (%d)";
      goto LABEL_68;
    }

    v26 = EAPLogGetLogHandle();
    v27 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v26, v27, "The identity already exists in keychain", buf, 2u);
    }

    v28 = SecItemCopyMatching(Mutable, &result);
    if (v28)
    {
      v29 = v28;
      v30 = EAPLogGetLogHandle();
      v31 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_72;
      }

      *buf = 67109120;
      *&buf[4] = v29;
      v32 = "Failed to get persistent reference for identity in keychain (%d)";
LABEL_68:
      v46 = buf;
      v47 = v30;
      v48 = v31;
      v49 = 8;
      goto LABEL_53;
    }
  }

  CFDictionarySetValue(Mutable, v20, @"com.apple.certificates");
  CFDictionaryRemoveValue(Mutable, v23);
  if (v10 == 1)
  {
    goto LABEL_71;
  }

  v50 = 1;
  while (1)
  {
    v51 = CFArrayGetValueAtIndex(v7, v50);
    v52 = SecCertificateCreateWithData(v15, v51);
    *buf = v52;
    if (!v52)
    {
      break;
    }

    CFDictionarySetValue(Mutable, v22, v52);
    v53 = SecItemAdd(Mutable, 0);
    if (v53)
    {
      v54 = v53;
      if (v53 == -25299)
      {
        v55 = EAPLogGetLogHandle();
        v56 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v55, v56))
        {
          *v71 = 0;
          v57 = v55;
          v58 = v56;
          v59 = "The anchor certificate already exists in keychain";
          v60 = 2;
LABEL_63:
          _os_log_impl(&dword_249EFB000, v57, v58, v59, v71, v60);
        }
      }

      else
      {
        v61 = EAPLogGetLogHandle();
        v62 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v61, v62))
        {
          *v71 = 67109120;
          v72 = v54;
          v57 = v61;
          v58 = v62;
          v59 = "Failed to store anchor certificate in keychain (%d)";
          v60 = 8;
          goto LABEL_63;
        }
      }
    }

    my_CFRelease(buf);
    if (v10 == ++v50)
    {
      goto LABEL_71;
    }
  }

  v63 = EAPLogGetLogHandle();
  v64 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v63, v64))
  {
    *v71 = 0;
    _os_log_impl(&dword_249EFB000, v63, v64, "SecCertificateCreateWithData returned NULL anchor certificate", v71, 2u);
  }

LABEL_71:
  my_CFRelease(v66);
LABEL_72:
  my_CFRelease(v69);
  my_CFRelease(v70);
  my_CFRelease(&v68);
  v65 = result;
  *v70 = result;
  if (!result)
  {
    goto LABEL_38;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  CFDictionaryAddValue(MutableCopy, @"TLSIdentityHandle", v65);
  my_CFRelease(v70);
LABEL_31:
  v38 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

uint64_t eapol_socket(uint64_t a1, char a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = -2000189298;
  v29 = 1;
  memset(v33, 0, 18);
  v3 = socket(27, 3, 0);
  if ((v3 & 0x80000000) != 0)
  {
    LogHandle = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v7))
    {
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 136315138;
      v32 = v9;
      _os_log_impl(&dword_249EFB000, LogHandle, v7, "socket() failed: %s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = v3;
  __strlcpy_chk();
  *v33 = 6930;
  if (bind(v4, v33, 0x12u) < 0)
  {
    v10 = EAPLogGetLogHandle();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136315138;
      v32 = v13;
      _os_log_impl(&dword_249EFB000, v10, v11, "bind() failed: %s", buf, 0xCu);
    }

    close(v4);
LABEL_11:
    syslog(5, "eapol_socket: ndrv_socket failed");
LABEL_21:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if (ioctl(v4, 0x8004667EuLL, &v29) < 0)
  {
    v14 = __error();
    strerror(*v14);
    syslog(5, "eapol_socket: FIONBIO failed, %s");
LABEL_20:
    close(v4);
    goto LABEL_21;
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    *&v33[2] = 0x600060000;
    *&v33[14] = 0;
    *&v33[18] = 0;
    *v33 = 4628;
    *&v33[12] = 768;
    *&v33[8] = 12746753;
    if (setsockopt(v4, 0, 5, v33, 0x14u) < 0)
    {
      v24 = __error();
      v25 = strerror(*v24);
      syslog(5, "setsockopt(NDRV_ADDMULTICAST) failed: %s", v25);
      v26 = __error();
      strerror(*v26);
      syslog(5, "eapol_socket: ndrv_socket_add_multicast failed, %s");
      goto LABEL_20;
    }

    v5 = 1;
  }

  *&v33[8] = 0;
  v15 = v5;
  v16 = malloc_type_malloc(32 * v5, 0x1000040E0EAB150uLL);
  *v33 = 0x8021EC00000001;
  *&v33[8] = v5;
  *&v33[16] = v16;
  v17 = v16 + 2;
  v18 = &v30;
  do
  {
    v19 = *v18;
    v18 = (v18 + 2);
    *(v17 - 1) = 131076;
    *v17 = bswap32(v19) >> 16;
    v17 += 16;
    --v15;
  }

  while (v15);
  v20 = setsockopt(v4, 0, 4, v33, 0x18u);
  free(v16);
  if (v20 < 0)
  {
    v21 = __error();
    v22 = strerror(*v21);
    syslog(5, "setsockopt(NDRV_SETDMXSPEC) failed: %s", v22);
    v23 = __error();
    strerror(*v23);
    syslog(5, "eapol_socket: ndrv_socket_bind failed, %s");
    goto LABEL_20;
  }

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
  return v4;
}

const char *EAPOLPacketTypeStr(unsigned int a1)
{
  if (a1 > 4)
  {
    return "<unknown>";
  }

  else
  {
    return EAPOLPacketTypeStr_str[a1];
  }
}

uint64_t EAPOLPacketIsValid(unsigned __int8 *a1, uint64_t a2, CFMutableStringRef theString)
{
  v4 = a2;
  if (a2 <= 3)
  {
    if (theString)
    {
      CFStringAppendFormat(theString, 0, @"EAPOLPacket truncated header %d < %d\n", a2, 4);
    }

    return 0;
  }

  if (theString)
  {
    v6 = a1[1];
    if (v6 > 4)
    {
      v7 = "<unknown>";
    }

    else
    {
      v7 = EAPOLPacketTypeStr_str[a1[1]];
    }

    CFStringAppendFormat(theString, 0, @"EAPOL: proto version 0x%x type %s (%d) length %d\n", *a1, v7, v6, bswap32(*(a1 + 1)) >> 16);
    v8 = *(a1 + 1);
    v10 = __rev16(v8);
    v9 = v4 - 4;
    if (v4 - 4 < bswap32(v8) >> 16)
    {
      CFStringAppendFormat(theString, 0, @"EAPOLPacket truncated %d < %d\n", (v4 - 4), v10);
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 1);
    v9 = a2 - 4;
    if (a2 - 4 < bswap32(v8) >> 16)
    {
      return 0;
    }

    v10 = __rev16(v8);
  }

  v13 = a1[1];
  IsValid = 1;
  if (v13 <= 2)
  {
    if (v13 - 1 >= 2)
    {
      if (!a1[1])
      {
        IsValid = EAPPacketIsValid(a1 + 4, v10, theString);
        if (!theString)
        {
          return IsValid;
        }

        goto LABEL_42;
      }

LABEL_21:
      if (!theString)
      {
        return IsValid;
      }

      CFStringAppendFormat(theString, 0, @"EAPOLPacket type %d unrecognized\n", a1[1]);
      print_data_cfstr(theString, (a1 + 4), v10);
      goto LABEL_42;
    }

LABEL_41:
    if (!theString)
    {
      return IsValid;
    }

    goto LABEL_42;
  }

  if (v13 != 3)
  {
    if (v13 != 4)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

  if (!v8)
  {
    if (!theString)
    {
      return 0;
    }

    CFStringAppendFormat(theString, 0, @"EAPOLPacket empty body\n", v23, v24, v25);
    goto LABEL_40;
  }

  v14 = a1[4];
  if (v14 == 254 || v14 == 2)
  {
    if (v10 > 0x5E)
    {
      v15 = *(a1 + 97);
      v16 = __rev16(v15);
      if (v10 - 95 >= v16)
      {
        if (!theString)
        {
          return 1;
        }

        v17 = bswap32(*(a1 + 7)) >> 16;
        v18 = bswap32(*(a1 + 5)) >> 16;
        CFStringAppendFormat(theString, 0, @"EAPOL Key Descriptor: type IEEE 802.11 (%d)\n", a1[4]);
        CFStringAppendFormat(theString, 0, @"%-18s0x%04x\n", "key_information:", v18);
        CFStringAppendFormat(theString, 0, @"%-18s%d\n", "key_length:", v17);
        CFStringAppendFormat(theString, 0, @"%-18s", "replay_counter:");
        print_bytes_cfstr(theString, (a1 + 9), 8);
        CFStringAppendFormat(theString, 0, @"\n");
        CFStringAppendFormat(theString, 0, @"%-18s", "key_nonce:");
        print_bytes_cfstr(theString, (a1 + 17), 32);
        CFStringAppendFormat(theString, 0, @"\n");
        CFStringAppendFormat(theString, 0, @"%-18s", "EAPOL_key_IV:");
        print_bytes_cfstr(theString, (a1 + 49), 16);
        CFStringAppendFormat(theString, 0, @"\n");
        CFStringAppendFormat(theString, 0, @"%-18s", "key_RSC:");
        print_bytes_cfstr(theString, (a1 + 65), 8);
        CFStringAppendFormat(theString, 0, @"\n");
        CFStringAppendFormat(theString, 0, @"%-18s", "key_reserved:");
        print_bytes_cfstr(theString, (a1 + 73), 8);
        CFStringAppendFormat(theString, 0, @"\n");
        CFStringAppendFormat(theString, 0, @"%-18s", "key_MIC:");
        print_bytes_cfstr(theString, (a1 + 81), 16);
        CFStringAppendFormat(theString, 0, @"\n");
        CFStringAppendFormat(theString, 0, @"%-18s%d\n", "key_data_length:", v16);
        if (!v15)
        {
          goto LABEL_54;
        }

        CFStringAppendFormat(theString, 0, @"%-18s", "key_data:");
        v19 = (a1 + 99);
        v20 = theString;
        v21 = v16;
        goto LABEL_53;
      }

      if (!theString)
      {
        return 0;
      }

      CFStringAppendFormat(theString, 0, @"%s(IEEE80211) Key Data truncated %d < %d\n", "EAPOLKeyDescriptor", (v10 - 95), v16);
    }

    else
    {
      if (!theString)
      {
        return 0;
      }

      CFStringAppendFormat(theString, 0, @"%s(IEEE80211) length %d < %d\n", "EAPOLKeyDescriptor", v10, 95);
    }

LABEL_40:
    IsValid = 0;
    goto LABEL_41;
  }

  if (v14 != 1)
  {
    if (!theString)
    {
      return 0;
    }

    CFStringAppendFormat(theString, 0, @"%s Type %d unrecognized\n", "EAPOLKeyDescriptor", v14, v25);
    goto LABEL_40;
  }

  if (v10 <= 0x2B)
  {
    if (!theString)
    {
      return 0;
    }

    CFStringAppendFormat(theString, 0, @"%s(RC4) length %d < %d\n", "EAPOLKeyDescriptor", v10, 44);
    goto LABEL_40;
  }

  if (!theString)
  {
    return IsValid;
  }

  if ((a1[31] & 0x80u) != 0)
  {
    v22 = "Unicast";
  }

  else
  {
    v22 = "Broadcast";
  }

  CFStringAppendFormat(theString, 0, @"EAPOL Key Descriptor: type RC4 (%d) length %d %s index %d\n", v14, bswap32(*(a1 + 5)) >> 16, v22, a1[31] & 0x7F);
  CFStringAppendFormat(theString, 0, @"%-16s", "replay_counter:");
  print_bytes_cfstr(theString, (a1 + 7), 8);
  CFStringAppendFormat(theString, 0, @"\n");
  CFStringAppendFormat(theString, 0, @"%-16s", "key_IV:");
  print_bytes_cfstr(theString, (a1 + 15), 16);
  CFStringAppendFormat(theString, 0, @"\n");
  CFStringAppendFormat(theString, 0, @"%-16s", "key_signature:");
  print_bytes_cfstr(theString, (a1 + 32), 16);
  CFStringAppendFormat(theString, 0, @"\n");
  if (v10 != 44)
  {
    CFStringAppendFormat(theString, 0, @"%-16s", "key:");
    v19 = (a1 + 48);
    v20 = theString;
    v21 = v10 - 44;
LABEL_53:
    print_bytes_cfstr(v20, v19, v21);
    CFStringAppendFormat(theString, 0, @"\n");
  }

LABEL_54:
  IsValid = 1;
LABEL_42:
  if (v9 > v10)
  {
    CFStringAppendFormat(theString, 0, @"EAPOL: %d bytes follow body:\n", v9 - v10);
    print_data_cfstr(theString, &a1[v10 + 4], v9 - v10);
  }

  return IsValid;
}

uint64_t EAPOLPacketValid(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Mutable = CFStringCreateMutable(0, 0);
    IsValid = EAPOLPacketIsValid(a1, a2, Mutable);
    if (Mutable)
    {
      SCPrint();
      CFRelease(Mutable);
    }

    return IsValid;
  }

  else
  {

    return EAPOLPacketIsValid(a1, a2, 0);
  }
}

uint64_t EAPSIMAKAPersistentStateGetPseudonym(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void EAPSIMAKAPersistentStatePurgeTemporaryIDs(uint64_t a1)
{
  EAPSIMAKAPersistentStateSetPseudonymAndTime(a1, 0, 0);
  if (*(a1 + 4) == 13)
  {
    my_FieldSetRetainedCFType((a1 + 48), 0);
  }

  *(a1 + 56) = 0;

  EAPSIMAKAPersistentStateSave(a1, 0);
}

void EAPSIMAKAPersistentStateSetReauthID(uint64_t a1, const void *a2)
{
  if (*(a1 + 4) == 13)
  {
    my_FieldSetRetainedCFType((a1 + 48), a2);
  }
}

void EAPSIMAKAPersistentStateSave(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  theDict = 0;
  if (*(a1 + 4) != 10)
  {
    IMSIListRemoveMatches(*a1, IMSIDoesNotMatch, *(a1 + 8));
    if (*(a1 + 32))
    {
      v4 = *(a1 + 40);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      theDict = Mutable;
      CFDictionarySetValue(Mutable, @"Pseudonym", *(a1 + 32));
      if (v4)
      {
        CFDictionarySetValue(Mutable, @"PseudonymStartTime", v4);
      }

      if (!a2 || !*(a1 + 48))
      {
        goto LABEL_20;
      }

      if (Mutable)
      {
LABEL_12:
        v6 = CFNumberCreate(0, kCFNumberSInt16Type, (a1 + 28));
        CFDictionarySetValue(Mutable, @"ReauthCounter", v6);
        CFRelease(v6);
        CFDictionarySetValue(Mutable, @"ReauthID", *(a1 + 48));
        if (*(a1 + 56))
        {
          CFDictionarySetValue(Mutable, @"IsReauthIDUsedBefore", *MEMORY[0x277CBED28]);
        }

        v7 = CFDataCreate(0, (a1 + 76), *(a1 + 72));
        v8 = *(*(a1 + 64) + 8);
        v9 = CFStringCreateWithFormat(0, 0, @"com.apple.network.%@.master-key.%@", v8, *(a1 + 8));
        if (EAPSecKeychainPasswordItemSet(0, v9, v7))
        {
          v10 = EAPSecKeychainPasswordItemCreateWithAccess(0, 0, v9, 0, 0, 0, v7);
          CFRelease(v9);
          if (v10)
          {
            LogHandle = EAPLogGetLogHandle();
            v12 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(LogHandle, v12))
            {
              *buf = 67109120;
              v20 = v10;
              _os_log_impl(&dword_249EFB000, LogHandle, v12, "Failed to update/create a keychain item: %d", buf, 8u);
            }
          }
        }

        else
        {
          CFRelease(v9);
        }

        CFRelease(v7);
LABEL_20:
        if (Mutable)
        {
          v13 = *(a1 + 16);
          if (v13)
          {
            CFDictionarySetValue(Mutable, @"SSID", v13);
            v14 = CFNumberCreate(0, kCFNumberSInt32Type, (a1 + 24));
            Mutable = theDict;
            CFDictionarySetValue(theDict, @"GenerationID", v14);
            CFRelease(v14);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      Mutable = 0;
      if (!a2 || !*(a1 + 48))
      {
LABEL_23:
        ProtoInfoChangedCheck(*(a1 + 64));
        v15 = *MEMORY[0x277CBF040];
        v16 = *MEMORY[0x277CBF010];
        CFPreferencesSetValue(*(a1 + 8), Mutable, **(a1 + 64), *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
        my_CFRelease(&theDict);
        CFPreferencesSynchronize(**(a1 + 64), v15, v16);
        ProtoInfoNotifyChange();
        goto LABEL_24;
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    theDict = Mutable;
    goto LABEL_12;
  }

LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
}

void EAPSIMAKAPersistentStateSetPseudonymAndTime(uint64_t a1, const void *a2, const void *a3)
{
  if (*(a1 + 4) != 10)
  {
    my_FieldSetRetainedCFType((a1 + 32), a2);
    if (!a2 || a3)
    {

      my_FieldSetRetainedCFType((a1 + 40), a3);
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = CFDateCreate(0, Current);
      my_FieldSetRetainedCFType((a1 + 40), v7);
      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

void *EAPSIMAKAPersistentStateCreate(int a1, int a2, const __CFString *a3, int a4, const void *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    LogHandle = EAPLogGetLogHandle();
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, LogHandle, v19, "imsi is NULL", buf, 2u);
    }

    goto LABEL_14;
  }

  v10 = ProtoInfoForType(a1);
  if (!v10)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_58;
  }

  v11 = v10;
  v12 = malloc_type_malloc((a2 + 76), 0x10600409990C927uLL);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *v12 = a1;
  *(v12 + 1) = CFRetain(a3);
  *(v12 + 8) = v11;
  *(v12 + 18) = a2;
  *(v12 + 4) = a4;
  *(v12 + 6) = EAPOLSIMGenerationGet();
  if (a5)
  {
    *(v12 + 2) = CFRetain(a5);
  }

  if (a4 == 10)
  {
    goto LABEL_58;
  }

  v44 = 0;
  valuePtr = 0;
  ProtoInfoChangedCheck(v11);
  v13 = CFPreferencesCopyValue(a3, *v11, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v44 = v13;
  TypeID = CFDictionaryGetTypeID();
  if (!v13)
  {
    CFStringGetTypeID();
    goto LABEL_57;
  }

  if (CFGetTypeID(v13) != TypeID)
  {
    v20 = CFStringGetTypeID();
    if (CFGetTypeID(v13) == v20)
    {
      v21 = 0;
      v22 = v13;
LABEL_56:
      EAPSIMAKAPersistentStateSetPseudonymAndTime(v12, v22, v21);
    }

LABEL_57:
    my_CFRelease(&v44);
    goto LABEL_58;
  }

  if (!a5)
  {
    Value = CFDictionaryGetValue(v13, @"SSID");
    v26 = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v26)
      {
        *(v12 + 2) = CFRetain(Value);
      }
    }
  }

  v15 = CFDictionaryGetValue(v13, @"GenerationID");
  v16 = CFNumberGetTypeID();
  if (v15 && CFGetTypeID(v15) == v16)
  {
    CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr);
    v17 = valuePtr;
  }

  else
  {
    v17 = 0;
    valuePtr = 0;
  }

  if (*(v12 + 6) == v17)
  {
    v22 = CFDictionaryGetValue(v13, @"Pseudonym");
    v23 = CFStringGetTypeID();
    if (v22 && CFGetTypeID(v22) == v23)
    {
      goto LABEL_24;
    }

    v22 = CFDictionaryGetValue(v13, @"PseudonymID");
    v24 = CFStringGetTypeID();
    if (v22)
    {
      if (CFGetTypeID(v22) == v24)
      {
LABEL_24:
        v21 = CFDictionaryGetValue(v13, @"PseudonymStartTime");
        goto LABEL_31;
      }

      v22 = 0;
    }

    v21 = 0;
LABEL_31:
    if (a4 == 13)
    {
      v42 = 0;
      v27 = CFDictionaryGetValue(v13, @"ReauthCounter");
      v28 = CFNumberGetTypeID();
      if (v27 && CFGetTypeID(v27) != v28)
      {
        v27 = 0;
      }

      v29 = CFDictionaryGetValue(v13, @"ReauthID");
      v30 = CFStringGetTypeID();
      if (v29 && CFGetTypeID(v29) != v30)
      {
        v29 = 0;
      }

      v31 = CFDictionaryGetValue(v13, @"IsReauthIDUsedBefore");
      v32 = CFBooleanGetTypeID();
      if (v31)
      {
        if (CFGetTypeID(v31) == v32)
        {
          LOBYTE(v31) = CFBooleanGetValue(v31);
        }

        else
        {
          LOBYTE(v31) = 0;
        }
      }

      v33 = *(v11 + 8);
      *buf = 0;
      v34 = CFStringCreateWithFormat(0, 0, @"com.apple.network.%@.master-key.%@", v33, a3);
      v35 = EAPSecKeychainPasswordItemCopy(0, v34, buf);
      CFRelease(v34);
      if (v35 != -25300 && v35)
      {
        v38 = EAPLogGetLogHandle();
        v39 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v38, v39))
        {
          *v46 = 67109120;
          v47 = v35;
          _os_log_impl(&dword_249EFB000, v38, v39, "Failed to read a keychain item: %d", v46, 8u);
        }

        v42 = 0;
      }

      else
      {
        v36 = *buf;
        v42 = *buf;
        if (v27)
        {
          if (v29)
          {
            if (*buf)
            {
              Length = CFDataGetLength(*buf);
              if (Length == a2)
              {
                v49.length = Length;
                *buf = 0;
                v49.location = 0;
                CFDataGetBytes(v36, v49, v12 + 76);
                CFNumberGetValue(v27, kCFNumberSInt16Type, buf);
                *(v12 + 14) = *buf;
                if (*(v12 + 4) == 13)
                {
                  my_FieldSetRetainedCFType(v12 + 6, v29);
                }

                *(v12 + 56) = v31;
              }
            }
          }
        }
      }

      my_CFRelease(&v42);
    }

    if (!v22)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  my_CFRelease(&v44);
  IMSIListRemoveMatches(18, IMSIMatchesEverything, 0);
  IMSIListRemoveMatches(23, IMSIMatchesEverything, 0);
LABEL_58:
  v40 = *MEMORY[0x277D85DE8];
  return v12;
}

__CFString **ProtoInfoForType(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 18)
  {
    result = S_eapsim_info;
  }

  else if (a1 == 23)
  {
    result = S_eapaka_info;
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v4))
    {
      v6[0] = 67109120;
      v6[1] = a1;
      _os_log_impl(&dword_249EFB000, LogHandle, v4, "unrecognized type %d", v6, 8u);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void ProtoInfoChangedCheck(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  check = 0;
  if ((prefs_did_change_S_token_valid & 1) == 0)
  {
    v2 = notify_register_check("com.apple.network.eapclient.eapsimaka.prefs", &prefs_did_change_S_token);
    if (v2)
    {
      v3 = v2;
      LogHandle = EAPLogGetLogHandle();
      v5 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v5))
      {
        *buf = 67109120;
        v14 = v3;
        v6 = "notify_register_check returned %d";
LABEL_9:
        _os_log_impl(&dword_249EFB000, LogHandle, v5, v6, buf, 8u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    prefs_did_change_S_token_valid = 1;
  }

  v7 = notify_check(prefs_did_change_S_token, &check);
  if (v7)
  {
    v8 = v7;
    LogHandle = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v5))
    {
      *buf = 67109120;
      v14 = v8;
      v6 = "notify_check returned %d";
      goto LABEL_9;
    }
  }

  else
  {
    v9 = prefs_did_change_S_generation;
    if (check)
    {
      v9 = ++prefs_did_change_S_generation;
    }

    v10 = *(a1 + 16);
    *(a1 + 16) = v9;
    if (v10 != v9)
    {
      CFPreferencesSynchronize(*a1, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
}

void IMSIListRemoveMatches(int a1, unsigned int (*a2)(const __CFString *, const void *, uint64_t), uint64_t a3)
{
  v5 = ProtoInfoForType(a1);
  if (v5)
  {
    v6 = v5;
    ProtoInfoChangedCheck(v5);
    v7 = *MEMORY[0x277CBF040];
    v8 = *MEMORY[0x277CBF010];
    v9 = CFPreferencesCopyKeyList(*v6, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) >= 1)
      {
        v11 = 0;
        v17 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
          v13 = CFPreferencesCopyValue(ValueAtIndex, *v6, v7, v8);
          if (v13)
          {
            v14 = v13;
            TypeID = CFDictionaryGetTypeID();
            if (CFGetTypeID(v14) == TypeID && a2(ValueAtIndex, v14, a3))
            {
              CFPreferencesSetValue(ValueAtIndex, 0, *v6, v7, v8);
              CFPreferencesSynchronize(*v6, v7, v8);
              v16 = CFStringCreateWithFormat(0, 0, @"com.apple.network.%@.master-key.%@", v6[1], ValueAtIndex);
              EAPSecKeychainPasswordItemRemove(0, v16);
              CFRelease(v16);
              v17 = 1;
            }

            CFRelease(v14);
          }

          ++v11;
        }

        while (CFArrayGetCount(v10) > v11);
        if (v17)
        {
          ProtoInfoNotifyChange();
        }
      }

      CFRelease(v10);
    }
  }
}

void ProtoInfoNotifyChange()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = notify_post("com.apple.network.eapclient.eapsimaka.prefs");
  if (v0)
  {
    v1 = v0;
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_249EFB000, LogHandle, v3, "notify_post returned %d", v5, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void EAPSIMAKAPersistentStateRelease(uint64_t a1)
{
  my_CFRelease((a1 + 8));
  my_CFRelease((a1 + 16));
  if (*(a1 + 4) == 13)
  {
    my_FieldSetRetainedCFType((a1 + 48), 0);
  }

  EAPSIMAKAPersistentStateSetPseudonymAndTime(a1, 0, 0);

  free(a1);
}

void EAPSIMAKAPersistentStateForgetSSID(uint64_t a1)
{
  IMSIListRemoveMatches(18, IMSIMatchesSSID, a1);

  IMSIListRemoveMatches(23, IMSIMatchesSSID, a1);
}

char *EAPSIMAKAPacketSubtypeGetString(int a1)
{
  if (a1 - 1) < 0xE && ((0x3E1Bu >> (a1 - 1)))
  {
    return off_278FBE120[(a1 - 1)];
  }

  v1 = EAPSIMAKAPacketSubtypeGetString_buf;
  snprintf(EAPSIMAKAPacketSubtypeGetString_buf, 8uLL, "%d", a1);
  return v1;
}

const char *EAPSIMAKAAttributeTypeGetString(int a1)
{
  if (a1 > 128)
  {
    if (a1 > 132)
    {
      switch(a1)
      {
        case 133:
          return "AT_NEXT_REAUTH_ID";
        case 134:
          return "AT_CHECKCODE";
        case 135:
          return "AT_RESULT_IND";
      }
    }

    else
    {
      switch(a1)
      {
        case 129:
          return "AT_IV";
        case 130:
          return "AT_ENCR_DATA";
        case 132:
          return "AT_NEXT_PSEUDONYM";
      }
    }

LABEL_33:
    v1 = EAPSIMAKAAttributeTypeGetString_buf;
    snprintf(EAPSIMAKAAttributeTypeGetString_buf, 8uLL, "%d", a1);
    return v1;
  }

  v1 = "AT_RAND";
  switch(a1)
  {
    case 1:
      return v1;
    case 2:
      v1 = "AT_AUTN";
      break;
    case 3:
      v1 = "AT_RES";
      break;
    case 4:
      v1 = "AT_AUTS";
      break;
    case 6:
      v1 = "AT_PADDING";
      break;
    case 7:
      v1 = "AT_NONCE_MT";
      break;
    case 10:
      v1 = "AT_PERMANENT_ID_REQ";
      break;
    case 11:
      v1 = "AT_MAC";
      break;
    case 12:
      v1 = "AT_NOTIFICATION";
      break;
    case 13:
      v1 = "AT_ANY_ID_REQ";
      break;
    case 14:
      v1 = "AT_IDENTITY";
      break;
    case 15:
      v1 = "AT_VERSION_LIST";
      break;
    case 16:
      v1 = "AT_SELECTED_VERSION";
      break;
    case 17:
      v1 = "AT_FULLAUTH_ID_REQ";
      break;
    case 19:
      v1 = "AT_COUNTER";
      break;
    case 20:
      v1 = "AT_COUNTER_TOO_SMALL";
      break;
    case 21:
      v1 = "AT_NONCE_S";
      break;
    case 22:
      v1 = "AT_CLIENT_ERROR_CODE";
      break;
    default:
      goto LABEL_33;
  }

  return v1;
}

const char *ATNotificationCodeGetString(int a1)
{
  if (a1 >= 0x4000)
  {
    if (a1 == 0x8000)
    {
      return "Success";
    }

    if (a1 != 16385)
    {
      if (a1 == 0x4000)
      {
        return "General Failure Before Authentication";
      }

      return 0;
    }

    return "Identity Decryption Failure Before Authentication";
  }

  else
  {
    if (!a1)
    {
      return "General Failure After Authentication";
    }

    if (a1 != 1026)
    {
      if (a1 == 1031)
      {
        return "Not Subscribed";
      }

      return 0;
    }

    return "Temporarily Denied Access";
  }
}

__CFString *EAPSIMAKAPacketCopyDescription(unsigned __int8 *a1, char *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  Length = EAPPacketGetLength(a1);
  if (*a1 - 1 > 1)
  {
    Mutable = 0;
  }

  else
  {
    v5 = Length;
    Mutable = CFStringCreateMutable(0, 0);
    if (v5 <= 7)
    {
      CFStringAppendFormat(Mutable, 0, @"EAPSIMAKAPacket truncated header %d < %d\n", v5, 8);
      goto LABEL_6;
    }

    v10 = EAPTypeStr(a1[4]);
    if (*a1 == 1)
    {
      v11 = "Request";
    }

    else
    {
      v11 = "Response";
    }

    v12 = a1[1];
    String = EAPSIMAKAPacketSubtypeGetString(a1[5]);
    CFStringAppendFormat(Mutable, 0, @"%s %s: Identifier %d Length %d [%s] Length %d\n", v10, v11, v12, v5, String, (v5 - 8));
    if (v5 == 8)
    {
LABEL_17:
      v7 = 1;
      goto LABEL_7;
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0;
    v20 = 0u;
    memset(v17, 0, sizeof(v17));
    v16 = 0;
    v18 = 0;
    if (TLVListParse_0(&v16, a1 + 8, v5 - 8))
    {
      v14 = TLVListCopyDescription(&v16);
      if (v16 && v16 != v17)
      {
        free(v16);
      }

      v16 = 0;
      v18 = 0;
      CFStringAppendFormat(Mutable, 0, @"%@", v14);
      CFRelease(v14);
      goto LABEL_17;
    }

    CFStringAppendFormat(Mutable, 0, @"failed to parse TLVs: %s\n", &v19, v15);
  }

LABEL_6:
  v7 = 0;
LABEL_7:
  *a2 = v7;
  v8 = *MEMORY[0x277D85DE8];
  return Mutable;
}

void *TLVListInit(void *result)
{
  *result = 0;
  result[11] = 0;
  return result;
}

__CFString *TLVListCopyDescription(unsigned __int8 ***a1)
{
  v36 = *MEMORY[0x277D85DE8];
  Mutable = CFStringCreateMutable(0, 0);
  if (*(a1 + 22) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    do
    {
      v5 = *v4;
      v6 = (*v4)[1];
      v7 = 4 * v6;
      String = EAPSIMAKAAttributeTypeGetString(**v4);
      CFStringAppendFormat(Mutable, 0, @"%s: Length %d\n", String, 4 * v6);
      v9 = EAPSIMAKAAttributeTypeGetString(*v5);
      v10 = v9 + 3;
      v11 = *v5;
      if (v11 <= 0x81)
      {
        switch(*v5)
        {
          case 1u:
            CFStringAppendFormat(Mutable, 0, @"%18s:\t", "(reserved)");
            print_bytes_cfstr(Mutable, (v5 + 2), 2);
            v25 = (v7 - 4 + (((v7 - 4) & 0xF000u) >> 12)) >> 4;
            CFStringAppendFormat(Mutable, 0, @"\n%18s: (n=%d)\n", v10, v25);
            if (v6 >= 5)
            {
              v26 = 0;
              v27 = (v5 + 4);
              if (v25 <= 1u)
              {
                v28 = 1;
              }

              else
              {
                v28 = v25;
              }

              do
              {
                CFStringAppendFormat(Mutable, 0, @"%18d:\t", v26);
                print_bytes_cfstr(Mutable, v27, 16);
                CFStringAppendFormat(Mutable, 0, @"\n");
                v26 = (v26 + 1);
                v27 += 16;
              }

              while (v28 != v26);
            }

            goto LABEL_33;
          case 2u:
          case 7u:
          case 0xBu:
          case 0x15u:
            goto LABEL_5;
          case 3u:
            v29 = bswap32(*(v5 + 1)) >> 16;
            LODWORD(v18) = (v29 + 7) >> 3;
            CFStringAppendFormat(Mutable, 0, @"%18s: %d bits (%d bytes)\n", v9 + 3, v29, v18);
            v12 = (v5 + 4);
            goto LABEL_30;
          case 4u:
            v18 = (v7 - 2);
            CFStringAppendFormat(Mutable, 0, @"%18s: %d bytes\n", v9 + 3, v18);
            goto LABEL_28;
          case 5u:
          case 8u:
          case 9u:
          case 0x12u:
            goto LABEL_33;
          case 6u:
            v18 = (v7 - 2);
            CFStringAppendFormat(Mutable, 0, @"%18s: %d bytes\n", v9 + 3, v18);
            CFStringAppendFormat(Mutable, 0, @"%18s\t", &unk_249F2FF71, v34);
LABEL_28:
            v12 = (v5 + 2);
            goto LABEL_30;
          case 0xAu:
          case 0xDu:
          case 0x11u:
          case 0x14u:
            goto LABEL_9;
          case 0xCu:
          case 0x10u:
          case 0x13u:
          case 0x16u:
            CFStringAppendFormat(Mutable, 0, @"%18s:\t%04d\n", v9 + 3, bswap32(*(v5 + 1)) >> 16);
            goto LABEL_33;
          case 0xEu:
            goto LABEL_11;
          case 0xFu:
            v20 = bswap32(*(v5 + 1)) >> 16;
            CFStringAppendFormat(Mutable, 0, @"%18s: Actual Length %d\n", v9 + 3, v20);
            v21 = v5 + 4;
            if (v20 >= 2)
            {
              v22 = 0;
              do
              {
                CFStringAppendFormat(Mutable, 0, @"%18d:\t%04d\n", v22, bswap32(*&v21[2 * v22]) >> 16);
                ++v22;
              }

              while ((v20 >> 1) != v22);
            }

            v23 = v7 - v20 - 4;
            snprintf(__str, 0x80uLL, "(%d pad bytes)", v23);
            CFStringAppendFormat(Mutable, 0, @"%18s:\t", __str);
            print_bytes_cfstr(Mutable, &v21[v20], v23);
            v24 = Mutable;
            goto LABEL_32;
          default:
            if (v11 != 129)
            {
              goto LABEL_33;
            }

LABEL_5:
            CFStringAppendFormat(Mutable, 0, @"%18s:\t", "(reserved)");
            print_bytes_cfstr(Mutable, (v5 + 2), 2);
            CFStringAppendFormat(Mutable, 0, @"\n%18s:\t", v10);
            v12 = (v5 + 4);
            v13 = Mutable;
            v14 = 16;
            break;
        }

        goto LABEL_31;
      }

      if (v11 - 132 < 2)
      {
LABEL_11:
        v15 = bswap32(*(v5 + 1));
        CFStringAppendFormat(Mutable, 0, @"%18s: Actual Length %d\n", v9 + 3, HIWORD(v15));
        v16 = (v5 + 4);
        print_data_cfstr(Mutable, v16, HIWORD(v15));
        v17 = v7 - HIWORD(v15);
        LODWORD(v18) = v17 - 4;
        if (v17 != 4)
        {
          snprintf(__str, 0x80uLL, "(%d pad bytes)", v17 - 4);
          CFStringAppendFormat(Mutable, 0, @"%18s:\t", __str);
          v12 = v16 + HIWORD(v15);
LABEL_30:
          v13 = Mutable;
          v14 = v18;
          goto LABEL_31;
        }
      }

      else if (v11 == 130)
      {
        CFStringAppendFormat(Mutable, 0, @"%18s:\t", "(reserved)");
        print_bytes_cfstr(Mutable, (v5 + 2), 2);
        v19 = (v7 - 4);
        CFStringAppendFormat(Mutable, 0, @"\n%18s: Length %d\n", v10, v19);
        print_data_cfstr(Mutable, (v5 + 4), v19);
      }

      else if (v11 == 135)
      {
LABEL_9:
        CFStringAppendFormat(Mutable, 0, @"%18s:\t", "(reserved)");
        v12 = (v5 + 2);
        v13 = Mutable;
        v14 = 2;
LABEL_31:
        print_bytes_cfstr(v13, v12, v14);
        v24 = Mutable;
LABEL_32:
        CFStringAppendFormat(v24, 0, @"\n", v32, v33);
      }

LABEL_33:
      ++v3;
      ++v4;
    }

    while (v3 < *(a1 + 22));
  }

  v30 = *MEMORY[0x277D85DE8];
  return Mutable;
}

void TLVListFree(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *a1;
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 88) = 0;
}

uint64_t EAPSIMAKAStatusForATNotificationCode(int a1)
{
  if (a1 >= 0x4000)
  {
    if (a1 == 0x8000)
    {
      return 0;
    }

    if (a1 != 16385)
    {
      if (a1 == 0x4000)
      {
        return 2;
      }

      return 5;
    }

    return 19;
  }

  else
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 != 1026)
    {
      if (a1 == 1031)
      {
        return 4;
      }

      return 5;
    }

    return 3;
  }
}

void EAPSIMAKAKeyInfoComputeMAC(uint64_t a1, const void *a2, uint64_t a3, const void *a4, int a5, void *a6)
{
  data[2] = *MEMORY[0x277D85DE8];
  memset(&v14, 0, sizeof(v14));
  data[0] = 0;
  data[1] = 0;
  v12 = EAPPacketGetLength(a2) - (a3 - a2);
  CCHmacInit(&v14, 0, (a1 + 16), 0x10uLL);
  CCHmacUpdate(&v14, a2, a3 - a2);
  CCHmacUpdate(&v14, data, 0x10uLL);
  CCHmacUpdate(&v14, (a3 + 16), v12 - 16);
  if (a4)
  {
    CCHmacUpdate(&v14, a4, a5);
  }

  CCHmacFinal(&v14, a6);
  v13 = *MEMORY[0x277D85DE8];
}

BOOL EAPSIMAKAKeyInfoVerifyMAC(uint64_t a1, const void *a2, uint64_t a3, const void *a4, int a5)
{
  v8 = *MEMORY[0x277D85DE8];
  EAPSIMAKAKeyInfoComputeMAC(a1, a2, a3, a4, a5, v7);
  result = cc_cmp_safe() == 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double EAPSIMAKAKeyInfoSetMAC(uint64_t a1, const void *a2, _OWORD *a3, const void *a4, int a5)
{
  v9 = *MEMORY[0x277D85DE8];
  EAPSIMAKAKeyInfoComputeMAC(a1, a2, a3, a4, a5, v8);
  result = v8[0];
  *a3 = *v8;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *EAPSIMAKAKeyInfoDecryptTLVList(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v35[5] = *MEMORY[0x277D85DE8];
  v32 = 0;
  cryptorRef = 0;
  v8 = 4 * *(a2 + 1) - 4;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v10 = CCCryptorCreate(1u, 0, 0, a1, 0x10uLL, (a3 + 4), &cryptorRef);
  if (v10)
  {
    v11 = v10;
    LogHandle = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v13))
    {
      *buf = 67109120;
      v35[0] = v11;
      v14 = "CCCryptoCreate failed with %d";
LABEL_7:
      v17 = LogHandle;
      v18 = v13;
      v19 = 8;
LABEL_8:
      _os_log_impl(&dword_249EFB000, v17, v18, v14, buf, v19);
    }
  }

  else
  {
    v15 = CCCryptorUpdate(cryptorRef, (a2 + 4), v8, v9, v8, &v32);
    if (v15)
    {
      v16 = v15;
      LogHandle = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v13))
      {
        *buf = 67109120;
        v35[0] = v16;
        v14 = "CCCryptoUpdate failed with %d";
        goto LABEL_7;
      }
    }

    else
    {
      if (v32 != v8)
      {
        v28 = EAPLogGetLogHandle();
        v29 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_9;
        }

        *buf = 67109376;
        v35[0] = v32;
        LOWORD(v35[1]) = 1024;
        *(&v35[1] + 2) = v8;
        v14 = "decryption consumed %d bytes (!= %d bytes)";
        v17 = v28;
        v18 = v29;
        v19 = 14;
        goto LABEL_8;
      }

      if (TLVListParse_0(a4, v9, v8))
      {
        v20 = 0;
        goto LABEL_10;
      }

      v30 = EAPLogGetLogHandle();
      v31 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 136315138;
        *v35 = a4 + 96;
        v14 = "TLVListParse failed on AT_ENCR_DATA, %s";
        v17 = v30;
        v18 = v31;
        v19 = 12;
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v20 = 1;
LABEL_10:
  if (cryptorRef)
  {
    v21 = CCCryptorRelease(cryptorRef);
    if (v21)
    {
      v22 = v21;
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 67109120;
        v35[0] = v22;
        _os_log_impl(&dword_249EFB000, v23, v24, "CCCryptoRelease failed with %d", buf, 8u);
      }
    }
  }

  if (v9)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == 1)
  {
    free(v9);
    v9 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL EAPSIMAKAKeyInfoEncryptTLVs(const void *a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v6 = *(a3 + 12);
  if (v6 <= 0)
  {
    v7 = -(-v6 & 0xF);
  }

  else
  {
    v7 = v6 & 0xF;
  }

  if (!v7 || (v8 = v6 - v7 + 16, v8 == v6))
  {
LABEL_8:
    if (v6 == *(a3 + 8))
    {
      v57 = 0;
      *&v58[5] = 0;
      if (TLVListParse_0(&v57, *a3, v6))
      {
        v9 = TLVListCopyDescription(&v57);
        if (v57 && v57 != v58)
        {
          free(v57);
        }

        v57 = 0;
        *&v58[5] = 0;
        LogHandle = EAPLogGetLogHandle();
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v11))
        {
          *buf = 138412290;
          *v61 = v9;
          _os_log_impl(&dword_249EFB000, LogHandle, v11, "Encrypted TLVs:\n%@", buf, 0xCu);
        }

        CFRelease(v9);
        TLV = TLVBufferAllocateTLV(a2, 129, 20);
        if (TLV)
        {
          v13 = 0;
          *(TLV + 1) = 0;
          v14 = TLV + 4;
          do
          {
            *&v14[v13] = arc4random();
            v13 += 4;
          }

          while (v13 != 16);
          v15 = TLVBufferAllocateTLV(a2, 130, *(a3 + 12) + 4);
          if (v15)
          {
            v16 = v15;
            *(v15 + 1) = 0;
            v17 = *a3;
            v18 = *(a3 + 12);
            cryptorRef = 0;
            dataOutMoved = 0;
            v19 = CCCryptorCreate(0, 0, 0, a1, 0x10uLL, v14, &cryptorRef);
            if (v19)
            {
              v20 = v19;
              v21 = EAPLogGetLogHandle();
              v22 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v21, v22))
              {
                *buf = 67109120;
                *v61 = v20;
                v23 = "encrypt CCCryptoCreate failed with %d";
                v24 = v21;
                v25 = v22;
LABEL_40:
                v45 = 8;
LABEL_41:
                _os_log_impl(&dword_249EFB000, v24, v25, v23, buf, v45);
              }
            }

            else
            {
              v41 = CCCryptorUpdate(cryptorRef, v17, v18, v16 + 4, v18, &dataOutMoved);
              if (v41)
              {
                v42 = v41;
                v43 = EAPLogGetLogHandle();
                v44 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v43, v44))
                {
                  *buf = 67109120;
                  *v61 = v42;
                  v23 = "encrypt CCCryptoUpdate failed with %d";
                  v24 = v43;
                  v25 = v44;
                  goto LABEL_40;
                }
              }

              else
              {
                if (dataOutMoved == v18)
                {
                  v46 = 1;
LABEL_43:
                  v47 = CCCryptorRelease(cryptorRef);
                  if (v47)
                  {
                    v48 = v47;
                    v49 = EAPLogGetLogHandle();
                    v50 = _SC_syslog_os_log_mapping();
                    if (os_log_type_enabled(v49, v50))
                    {
                      *buf = 67109120;
                      *v61 = v48;
                      _os_log_impl(&dword_249EFB000, v49, v50, "CCCryptoRelease failed with %d", buf, 8u);
                    }
                  }

                  if (v46)
                  {
                    result = 1;
                    goto LABEL_34;
                  }

                  v51 = EAPLogGetLogHandle();
                  v52 = _SC_syslog_os_log_mapping();
                  result = os_log_type_enabled(v51, v52);
                  if (!result)
                  {
                    goto LABEL_34;
                  }

                  *buf = 0;
                  v31 = "failed to encrypt AT_ENCR_DATA";
                  v32 = v51;
                  v33 = v52;
                  v34 = 2;
                  goto LABEL_33;
                }

                v53 = EAPLogGetLogHandle();
                v54 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v53, v54))
                {
                  *buf = 67109376;
                  *v61 = dataOutMoved;
                  *&v61[4] = 1024;
                  *&v61[6] = v18;
                  v23 = "encryption consumed %d, should have been %d";
                  v24 = v53;
                  v25 = v54;
                  v45 = 14;
                  goto LABEL_41;
                }
              }
            }

            v46 = 0;
            goto LABEL_43;
          }

          v40 = EAPLogGetLogHandle();
          v36 = _SC_syslog_os_log_mapping();
          result = os_log_type_enabled(v40, v36);
          if (!result)
          {
            goto LABEL_34;
          }

          *buf = 136315138;
          *v61 = a3 + 16;
          v31 = "failed to allocate AT_ENCR_DATA, %s";
          v32 = v40;
          goto LABEL_31;
        }

        v35 = EAPLogGetLogHandle();
        v36 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v35, v36);
        if (result)
        {
          *buf = 136315138;
          *v61 = a2 + 16;
          v31 = "failed to allocate AT_IV, %s";
          goto LABEL_30;
        }
      }

      else
      {
        v37 = EAPLogGetLogHandle();
        v38 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v37, v38);
        if (result)
        {
          *buf = 136315138;
          *v61 = &v58[5] + 8;
          v31 = "nested TLVs TLVListParse failed, %s";
          v32 = v37;
          v33 = v38;
LABEL_32:
          v34 = 12;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v26 = EAPLogGetLogHandle();
      v27 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v26, v27);
      if (result)
      {
        v30 = *(a3 + 8);
        v29 = *(a3 + 12);
        *buf = 67109376;
        *v61 = v29;
        *&v61[4] = 1024;
        *&v61[6] = v30;
        v31 = "nested encrypted TLVs length %d != %d";
        v32 = v26;
        v33 = v27;
        v34 = 14;
LABEL_33:
        _os_log_impl(&dword_249EFB000, v32, v33, v31, buf, v34);
        result = 0;
        goto LABEL_34;
      }
    }

    goto LABEL_34;
  }

  if (TLVBufferAddPadding(a3, v8 - v6))
  {
    v6 = *(a3 + 12);
    goto LABEL_8;
  }

  v35 = EAPLogGetLogHandle();
  v36 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v35, v36);
  if (result)
  {
    *buf = 136315138;
    *v61 = a2 + 16;
    v31 = "failed to add AT_PADDING, %s";
LABEL_30:
    v32 = v35;
LABEL_31:
    v33 = v36;
    goto LABEL_32;
  }

LABEL_34:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TLVBufferAddPadding(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xC && ((1 << a2) & 0x1110) != 0)
  {
    result = TLVBufferAllocateTLV(a1, 6, a2);
    if (result)
    {
      bzero((result + 2), a2 - 2);
      return 1;
    }

    else
    {
      strcpy((a1 + 16), "couldn't allocate TLV");
    }
  }

  else
  {
    snprintf((a1 + 16), 0xA0uLL, "invalid AT_PADDING %d", a2);
    return 0;
  }

  return result;
}

_BYTE *TLVBufferAllocateTLV(uint64_t a1, char a2, int a3)
{
  if (a3 < 2)
  {
    return 0;
  }

  if (a3 <= 0)
  {
    v4 = -(-a3 & 3);
  }

  else
  {
    v4 = a3 & 3;
  }

  v5 = a3 - v4 + 4;
  if (!v4)
  {
    v5 = a3;
  }

  if (v5 < 1021)
  {
    v6 = *(a1 + 12);
    if (*(a1 + 8) - v6 >= v5)
    {
      v3 = (*a1 + v6);
      *v3 = a2;
      v3[1] = v5 / 4;
      *(a1 + 12) = v6 + v5;
      return v3;
    }

    v8 = (*(a1 + 8) - v6);
    snprintf((a1 + 16), 0xA0uLL, "available space %d < required %d");
  }

  else
  {
    snprintf((a1 + 16), 0xA0uLL, "padded_length %d > max length %d");
  }

  return 0;
}

double EAPSIMAKAKeyInfoComputeReauthKey(_OWORD *a1, uint64_t a2, const void *a3, CC_LONG a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  memset(&v20, 0, sizeof(v20));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  CC_SHA1_Init(&v20);
  CC_SHA1_Update(&v20, a3, a4);
  CC_SHA1_Update(&v20, (a5 + 2), 2u);
  CC_SHA1_Update(&v20, (a6 + 4), 0x10u);
  MasterKey = EAPSIMAKAPersistentStateGetMasterKey(a2);
  MasterKeySize = EAPSIMAKAPersistentStateGetMasterKeySize(a2);
  CC_SHA1_Update(&v20, MasterKey, MasterKeySize);
  CC_SHA1_Final(&md, &v20);
  fips186_2prf(&md, &v22);
  v14 = v23;
  a1[2] = v22;
  a1[3] = v14;
  v15 = v25;
  a1[4] = v24;
  a1[5] = v15;
  v16 = v27;
  a1[6] = v26;
  a1[7] = v16;
  result = *&v28;
  v18 = v29;
  a1[8] = v28;
  a1[9] = v18;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPSIMAKAIdentityTypeGetAttributeType(CFTypeRef cf2)
{
  if (!cf2)
  {
    return 13;
  }

  if (CFEqual(@"FullAuthentication", cf2))
  {
    return 17;
  }

  if (CFEqual(@"Permanent", cf2))
  {
    return 10;
  }

  return 13;
}

void *EAPSIMAKAInitEncryptedIdentityInfo(int a1, CFDictionaryRef theDict, int a3, _BYTE *a4, char *a5)
{
  v46 = 0;
  Copy = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  *a4 = 1;
  *a5 = 0;
  Value = CFDictionaryGetValue(theDict, @"EAPSIMAKAEncryptedIdentityEnabled");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !CFBooleanGetValue(Value))
  {
    *a4 = 0;
    LogHandle = EAPLogGetLogHandle();
    v20 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, LogHandle, v20, "The carrier does not support privacy protection", buf, 2u);
    }

    return 0;
  }

  v12 = EAPLogGetLogHandle();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v12, v13, "The carrier supports privacy protection", buf, 2u);
  }

  v14 = CFDictionaryGetValue(theDict, @"EAPSIMAKARealm");
  v15 = CFStringGetTypeID();
  if (!v14)
  {
    v16 = 0;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_25:
    v26 = SIMCopyRealm(0);
    v44 = v26;
    if (SIMIsOOBPseudonymSupported(&v45))
    {
      if (v45)
      {
        v27 = EAPLogGetLogHandle();
        v28 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v27, v28))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v27, v28, "The carrier supports OOB pseudonym", buf, 2u);
        }

        v29 = SIMCopyOOBPseudonym();
        v46 = v29;
        if (v29)
        {
          if (v26)
          {
            v30 = CFStringCreateWithFormat(0, 0, @"%@@%@", v29, v26);
            my_CFRelease(&v46);
            v31 = 0;
            v22 = 0;
            v46 = v30;
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v32 = EAPLogGetLogHandle();
        v33 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v32, v33))
        {
          *buf = 0;
          v34 = "failed to get OOB pseudonym";
          goto LABEL_51;
        }
      }

      else
      {
        v36 = SIMCopyEncryptedIMSIInfo(a1);
        v43 = v36;
        if (v36)
        {
          v37 = v36;
          v22 = CFDictionaryGetValue(v36, *MEMORY[0x277CC39F8]);
          v38 = CFDataGetTypeID();
          if (!v22)
          {
            v31 = 0;
            goto LABEL_53;
          }

          if (CFGetTypeID(v22) == v38)
          {
            CFRetain(v22);
            v39 = CFDictionaryGetValue(v37, *MEMORY[0x277CC3A10]);
            v40 = CFStringGetTypeID();
            if (v39 && CFGetTypeID(v39) == v40)
            {
              Copy = v39;
              CFRetain(v39);
            }

            else
            {
              Copy = 0;
              Copy = CFStringCreateCopy(0, @"anonymous");
            }

            if (v16)
            {
              v35 = CFStringCreateWithFormat(0, 0, @"%@@%@", Copy, v16);
              goto LABEL_38;
            }

            v31 = Copy;
            if (!v26)
            {
              goto LABEL_53;
            }

            v41 = v26;
LABEL_37:
            v35 = CFStringCreateWithFormat(0, 0, @"%@@%@", v31, v41);
LABEL_38:
            v31 = v35;
            my_CFRelease(&Copy);
            goto LABEL_53;
          }
        }

        else
        {
          v32 = EAPLogGetLogHandle();
          v33 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v32, v33))
          {
            *buf = 0;
            v34 = "failed to get encrypted idenity";
            goto LABEL_51;
          }
        }
      }
    }

    else
    {
      v32 = EAPLogGetLogHandle();
      v33 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v32, v33))
      {
        *buf = 0;
        v34 = "check for OOB pseudonym support failed";
LABEL_51:
        _os_log_impl(&dword_249EFB000, v32, v33, v34, buf, 2u);
      }
    }

LABEL_52:
    v31 = 0;
    v22 = 0;
    goto LABEL_53;
  }

  if (CFGetTypeID(v14) == v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_11:
  v17 = CFDictionaryGetValue(theDict, @"EAPSIMAKAOutOfBandPseudonym");
  v18 = CFStringGetTypeID();
  if (!v17 || CFGetTypeID(v17) != v18)
  {
    v46 = 0;
    v22 = CFDictionaryGetValue(theDict, @"EAPSIMAKAEncryptedUserName");
    v23 = CFDataGetTypeID();
    if (!v22 || CFGetTypeID(v22) != v23)
    {
      return 0;
    }

    CFRetain(v22);
    v24 = CFDictionaryGetValue(theDict, @"EAPSIMAKAAnonymousUserName");
    v25 = CFStringGetTypeID();
    if (v24 && CFGetTypeID(v24) == v25)
    {
      Copy = v24;
      CFRetain(v24);
    }

    else
    {
      Copy = 0;
      Copy = CFStringCreateCopy(0, @"anonymous");
    }

    v31 = Copy;
    if (!v16)
    {
      goto LABEL_53;
    }

    v41 = 0;
    goto LABEL_37;
  }

  v46 = v17;
  if (v16)
  {
    v46 = CFStringCreateWithFormat(0, 0, @"%@@%@", v17, v16);
  }

  else
  {
    CFRetain(v17);
  }

  v31 = 0;
  v22 = 0;
  v45 = 1;
LABEL_53:
  my_CFRelease(&v43);
  my_CFRelease(&v44);
  *a5 = v45;
  if (!(v22 | v46))
  {
    return 0;
  }

  result = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (v45)
  {
    *result = v46;
  }

  else
  {
    result[1] = v31;
    result[2] = v22;
  }

  return result;
}

void EAPSIMAKAClearEncryptedIdentityInfo(const void **a1)
{
  if (a1)
  {
    my_CFRelease(a1 + 1);
    my_CFRelease(a1 + 2);
    my_CFRelease(a1);

    free(a1);
  }
}

const void *EAPSIMAKAActionInfoForNotificationCode(const __CFDictionary *a1, int a2)
{
  if (!a2 || a2 == 1031 || a2 == 1026)
  {
    Value = CFDictionaryGetValue(a1, @"EAPSIMAKANotificationActions");
    TypeID = CFArrayGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        Count = CFArrayGetCount(Value);
        if ((Count - 1) <= 9)
        {
          v6 = Count;
          v7 = 0;
          while (1)
          {
            valuePtr = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
            v9 = CFDictionaryGetTypeID();
            if (!ValueAtIndex)
            {
              break;
            }

            if (CFGetTypeID(ValueAtIndex) != v9)
            {
              break;
            }

            v10 = CFDictionaryGetValue(ValueAtIndex, @"Code");
            v11 = CFNumberGetTypeID();
            if (!v10 || CFGetTypeID(v10) != v11 || !CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
            {
              break;
            }

            if (valuePtr != a2)
            {
              ValueAtIndex = 0;
              if (v6 != ++v7)
              {
                continue;
              }
            }

            return ValueAtIndex;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t TLVBufferInit(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t TLVBufferAddIdentity(uint64_t a1, const void *a2, signed int a3)
{
  result = TLVBufferAllocateTLV(a1, 14, a3 + 4);
  if (result)
  {
    *(result + 2) = bswap32(a3) >> 16;
    memmove((result + 4), a2, a3);
    return 1;
  }

  return result;
}

uint64_t TLVBufferAddCounter(uint64_t a1, unsigned int a2)
{
  result = TLVBufferAllocateTLV(a1, 19, 4);
  if (result)
  {
    *(result + 2) = __rev16(a2);
    return 1;
  }

  return result;
}

uint64_t TLVBufferAddCounterTooSmall(uint64_t a1)
{
  result = TLVBufferAllocateTLV(a1, 20, 4);
  if (result)
  {
    *(result + 2) = 0;
    return 1;
  }

  return result;
}

void *TLVListAddAttribute(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v5 = *(a1 + 88);
    if (v5 == *(a1 + 92))
    {
      v6 = v5 + 10;
      *(a1 + 92) = v6;
      v7 = 8 * v6;
      if (result == (a1 + 8))
      {
        v8 = malloc_type_malloc(v7, 0xC0040B8AA526DuLL);
        *a1 = v8;
        memmove(v8, (a1 + 8), 8 * *(a1 + 88));
        result = *a1;
      }

      else
      {
        result = reallocf(result, v7);
        *a1 = result;
      }
    }
  }

  else
  {
    result = (a1 + 8);
    *a1 = a1 + 8;
    *(a1 + 92) = 10;
  }

  v9 = *(a1 + 88);
  *(a1 + 88) = v9 + 1;
  *(result + v9) = a2;
  return result;
}

uint64_t TLVCheckValidity(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[1];
  if (!a2[1])
  {
    return 1;
  }

  v4 = 4 * v2;
  v5 = *a2;
  v6 = 2;
  if (v5 <= 0x81)
  {
    switch(*a2)
    {
      case 1u:
        if (v2 == 1)
        {
          v6 = 1;
          String = EAPSIMAKAAttributeTypeGetString(1);
          snprintf((a1 + 96), 0xA0uLL, "%s truncated %d <= %d", String, v4, 4);
          return v6;
        }

        if (((v4 - 4) & 0xC) == 0)
        {
          return 0;
        }

        snprintf((a1 + 96), 0xA0uLL, "AT_RAND rand length %d not multiple of %d");
        return 1;
      case 2u:
      case 7u:
      case 0xBu:
      case 0x15u:
        goto LABEL_18;
      case 3u:
        if (v2 == 1)
        {
          v5 = 3;
LABEL_19:
          EAPSIMAKAAttributeTypeGetString(v5);
          snprintf((a1 + 96), 0xA0uLL, "%s truncated %d <= %d");
          return 1;
        }

        if ((((bswap32(*(a2 + 1)) >> 16) + 7) >> 3) <= v4 - 4)
        {
          return 0;
        }

        EAPSIMAKAAttributeTypeGetString(3);
        goto LABEL_14;
      case 4u:
        if (v4 == 16)
        {
          return 0;
        }

        EAPSIMAKAAttributeTypeGetString(4);
        goto LABEL_27;
      case 5u:
      case 8u:
      case 9u:
      case 0x12u:
        return v6;
      case 6u:
        if (v2 > 3)
        {
          snprintf((a1 + 96), 0xA0uLL, "AT_PADDING length %d not 4, 8, or 12");
        }

        else
        {
          v9 = 0;
          v10 = a2 + 2;
          while (!v10[v9])
          {
            v6 = 0;
            if (v4 - 2 == ++v9)
            {
              return v6;
            }
          }

          v12 = v10[v9];
          snprintf((a1 + 96), 0xA0uLL, "AT_PADDING non-zero value 0x%x at offset %d");
        }

        break;
      case 0xAu:
      case 0xCu:
      case 0xDu:
      case 0x10u:
      case 0x11u:
      case 0x13u:
      case 0x14u:
      case 0x16u:
        goto LABEL_4;
      case 0xEu:
      case 0xFu:
        goto LABEL_10;
      default:
        if (v5 != 129)
        {
          return v6;
        }

LABEL_18:
        if (v2 == 1)
        {
          goto LABEL_19;
        }

        if (v4 == 20)
        {
          return 0;
        }

        EAPSIMAKAAttributeTypeGetString(v5);
LABEL_27:
        snprintf((a1 + 96), 0xA0uLL, "%s invalid length %d != %d");
        return 1;
    }

    return 1;
  }

  if (v5 - 132 < 2)
  {
LABEL_10:
    if (v2 == 1)
    {
      EAPSIMAKAAttributeTypeGetString(v5);
      snprintf((a1 + 96), 0xA0uLL, "%s empty/truncated (%d <= %d)");
      return 1;
    }

    v7 = bswap32(*(a2 + 1)) >> 16;
    if (v4 - 4 < v7)
    {
      EAPSIMAKAAttributeTypeGetString(v5);
LABEL_14:
      snprintf((a1 + 96), 0xA0uLL, "%s actual length %d > TLV length %d");
      return 1;
    }

    v6 = 0;
    if (v5 == 15 && (v7 & 1) != 0)
    {
      snprintf((a1 + 96), 0xA0uLL, "AT_VERSION_LIST actual length %d not multiple of 2");
      return 1;
    }
  }

  else
  {
    if (v5 == 130)
    {
      if (v2 == 1)
      {
        snprintf((a1 + 96), 0xA0uLL, "AT_ENCR_DATA empty/truncated (%d <= %d)");
        return 1;
      }
    }

    else
    {
      if (v5 != 135)
      {
        return v6;
      }

LABEL_4:
      if (v2 != 1)
      {
        EAPSIMAKAAttributeTypeGetString(v5);
        snprintf((a1 + 96), 0xA0uLL, "%s length %d != 4");
        return 1;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t TLVListLookupAttribute(unsigned __int8 ***a1, int a2)
{
  v2 = *(a1 + 22);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *a1; ; ++i)
  {
    result = *i;
    if (**i == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

CFStringRef TLVCreateString(uint64_t a1)
{
  v1 = CFDataCreateWithBytesNoCopy(0, (a1 + 4), bswap32(*(a1 + 2)) >> 16, *MEMORY[0x277CBED00]);
  v2 = CFStringCreateFromExternalRepresentation(0, v1, 0x8000100u);
  CFRelease(v1);
  return v2;
}

CFStringRef TLVListCreateStringFromAttribute(uint64_t a1, int a2)
{
  if ((a2 & 0xFE) != 0x84)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *a1; **i != a2; ++i)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return TLVCreateString(*i);
}

uint64_t TLVListLookupIdentityAttribute(int *a1)
{
  v1 = 0;
  while (a1[22] < 1)
  {
LABEL_6:
    if (++v1 == 3)
    {
      return 0;
    }
  }

  v2 = TLVListLookupIdentityAttribute_S_types[v1];
  v3 = *a1;
  v4 = a1[22];
  while (**v3 != v2)
  {
    ++v3;
    if (!--v4)
    {
      goto LABEL_6;
    }
  }

  return v2;
}

uint64_t eapaka_introspect(char *__s1)
{
  v2 = "version";
  v3 = &off_285D17B20;
  while (strcmp(__s1, v2))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

uint64_t eapaka_init(uint64_t a1)
{
  v46 = 0uLL;
  v47 = 0;
  v2 = *(a1 + 80);
  if (v2)
  {
    Value = CFDictionaryGetValue(*(a1 + 80), @"EAPAKARES");
    v4 = CFDictionaryGetValue(v2, @"EAPAKACk");
    v5 = CFDictionaryGetValue(v2, @"EAPAKAIk");
    v6 = !Value && v4 == 0;
    if (!v6 || v5 != 0)
    {
      v8 = v5;
      TypeID = CFDataGetTypeID();
      if (v4 && CFGetTypeID(v4) == TypeID)
      {
        v10 = 1;
      }

      else
      {
        LogHandle = EAPLogGetLogHandle();
        v12 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v12))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, LogHandle, v12, "invalid/missing EAPAKACk property", buf, 2u);
        }

        v10 = 0;
      }

      v13 = CFDataGetTypeID();
      if (!v8 || CFGetTypeID(v8) != v13)
      {
        v14 = EAPLogGetLogHandle();
        v15 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v14, v15, "invalid/missing EAPAKAIk property", buf, 2u);
        }

        v10 = 0;
      }

      v16 = CFDataGetTypeID();
      if (Value && CFGetTypeID(Value) == v16)
      {
        my_FieldSetRetainedCFType(&v46 + 1, v4);
        my_FieldSetRetainedCFType(&v47, v8);
        my_FieldSetRetainedCFType(&v46, Value);
        if (v10)
        {
          v17 = copy_static_imsi_0(*(a1 + 80));
          if (!v17)
          {
            my_CFRelease(&v46);
            my_CFRelease(&v46 + 1);
            my_CFRelease(&v47);
            return 4;
          }

          v18 = v17;
          v19 = EAPLogGetLogHandle();
          v20 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v19, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_249EFB000, v19, v20, "EAP-AKA: using static information", buf, 2u);
          }

          v21 = 1;
          goto LABEL_34;
        }
      }

      else
      {
        v22 = EAPLogGetLogHandle();
        v23 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v22, v23))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v22, v23, "invalid/missing EAPAKARES property", buf, 2u);
        }

        my_FieldSetRetainedCFType(&v46 + 1, v4);
        my_FieldSetRetainedCFType(&v47, v8);
        my_FieldSetRetainedCFType(&v46, Value);
      }
    }
  }

  v18 = SIMCopyIMSI(*(a1 + 80));
  v24 = EAPLogGetLogHandle();
  v25 = _SC_syslog_os_log_mapping();
  v26 = os_log_type_enabled(v24, v25);
  if (!v18)
  {
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v24, v25, "EAP-AKA: no SIM available", buf, 2u);
    }

    return 16;
  }

  if (v26)
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v24, v25, "EAP-AKA: SIM found", buf, 2u);
  }

  v21 = 0;
LABEL_34:
  v27 = CFDictionaryGetValue(*(a1 + 80), @"TLSTrustExceptionsID");
  v28 = malloc_type_malloc(0x6F0uLL, 0x1060040FE550C1BuLL);
  if (!v28)
  {
    CFRelease(v18);
    my_CFRelease(&v46);
    my_CFRelease(&v46 + 1);
    my_CFRelease(&v47);
    return 2;
  }

  v29 = v28;
  bzero(v28, 0x6F0uLL);
  *(v29 + 16) = -1;
  *(v29 + 248) = v46;
  *(v29 + 264) = v47;
  identity_type = S_get_identity_type(*(a1 + 80));
  *(v29 + 208) = EAPSIMAKAPersistentStateCreate(23, 20, v18, identity_type, v27);
  CFRelease(v18);
  if (EAPSIMAKAPersistentStateGetReauthID(*(v29 + 208)))
  {
    MasterKey = EAPSIMAKAPersistentStateGetMasterKey(*(v29 + 208));
    fips186_2prf(MasterKey, v29 + 40);
    *(v29 + 200) = 1;
    if (EAPSIMAKAPersistentStateGetReauthIDUsed(*(v29 + 208)))
    {
      EAPSIMAKAPersistentStateSetReauthIDUsed(*(v29 + 208), 0);
    }
  }

  v32 = *(v29 + 208);
  if (v32)
  {
    v33 = EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v32);
  }

  else
  {
    v33 = 0;
  }

  v45 = 0;
  if (*(a1 + 56))
  {
    goto LABEL_46;
  }

  v44 = 0;
  v35 = EAPSIMAKAInitEncryptedIdentityInfo(23, *(a1 + 80), v21, &v45, &v44);
  *(v29 + 224) = v35;
  v36 = v45;
  if (v45 == 1 && !v35)
  {
    v37 = v44 == 1 && v33;
    v38 = EAPLogGetLogHandle();
    if (v37)
    {
      v39 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v38, v39))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v38, v39, "EAP-AKA: out-of-band pseudonym is not required as in-band pseudonym is available", buf, 2u);
      }

      v36 = v45;
      goto LABEL_57;
    }

    v43 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v38, v43))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v38, v43, "EAP-AKA: failed to get privacy protected identity", buf, 2u);
    }

    EAPAKAContextFree(v29);
    return 16;
  }

LABEL_57:
  if (v36 == 1)
  {
    v40 = *(v29 + 224);
    if (v40)
    {
      if (*v40 != 0 && !v33)
      {
        *(v29 + 240) = 1;
        v41 = EAPLogGetLogHandle();
        v42 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v41, v42))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v41, v42, "EAP-AKA: using out-of-band pseudonym as an identity", buf, 2u);
        }
      }
    }
  }

LABEL_46:
  result = 0;
  *v29 = a1;
  *a1 = v29;
  return result;
}

uint64_t eapaka_process(uint64_t *a1, _BYTE *a2, uint64_t *a3, int *a4, _DWORD *a5)
{
  v5 = *a1;
  *a4 = 0;
  *a5 = 0;
  v6 = *a2;
  switch(v6)
  {
    case 4:
      *(v5 + 16) = -1;
      *(v5 + 8) = 2;
      *a4 = 1;
      break;
    case 3:
      *(v5 + 16) = -1;
      if (*(v5 + 12) == 4)
      {
        *(v5 + 8) = 1;
        EAPSIMAKAPersistentStateSave(*(v5 + 208), *(v5 + 200));
        if (*(v5 + 240) == 1)
        {
          LogHandle = EAPLogGetLogHandle();
          v8 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v8))
          {
            *v10 = 0;
            _os_log_impl(&dword_249EFB000, LogHandle, v8, "eapaka: requesting out-of-band psuedonym refresh", v10, 2u);
          }

          SIMReportDecryptionError(0);
        }
      }

      break;
    case 1:
      *a3 = eapaka_request(v5, a2, a4, a5);
      break;
  }

  return *(v5 + 8);
}

uint64_t eapaka_session_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*(*a1 + 12) != 4 || *(v2 + 200) != 1)
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 72;
}

uint64_t eapaka_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*(*a1 + 12) != 4 || *(v2 + 200) != 1)
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 104;
}

uint64_t eapaka_msk_copy_bytes(uint64_t *a1, _OWORD *a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if (!*(*a1 + 200) || *(v3 + 12) != 4)
  {
    return 0;
  }

  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 120);
  a2[2] = *(v3 + 104);
  a2[3] = v6;
  *a2 = v4;
  a2[1] = v5;
  return 64;
}

CFDictionaryRef eapaka_publish_props(uint64_t a1)
{
  keys = @"EAPAKASIMNotificationActionInfo";
  if (*(*a1 + 232))
  {
    return CFDictionaryCreate(0, &keys, (*a1 + 232), 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  else
  {
    return 0;
  }
}

void *eapaka_user_name_copy(const __CFDictionary *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v2 = copy_static_imsi_0(a1);
  v27 = v2;
  if (v2)
  {
    v3 = v2;
    v4 = 1;
  }

  else
  {
    v5 = SIMCopyIMSI(a1);
    v27 = v5;
    if (!v5)
    {
LABEL_33:
      v6 = 0;
      v10 = 0;
      goto LABEL_34;
    }

    v3 = v5;
    v4 = 0;
  }

  v6 = EAPSIMAKAInitEncryptedIdentityInfo(23, a1, v4, &v26 + 1, &v26);
  identity_type = S_get_identity_type(a1);
  v8 = EAPSIMAKAPersistentStateCreate(23, 20, v3, identity_type, 0);
  my_CFRelease(&v27);
  if (v8)
  {
    v9 = EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v8);
    if (v6 && !EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v8))
    {
      if (*v6)
      {
        LogHandle = EAPLogGetLogHandle();
        v17 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v17))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, LogHandle, v17, "EAP-AKA: using out-of-band pseudonym as an identity", buf, 2u);
        }

        v18 = *v6;
      }

      else
      {
        v18 = v6[1];
      }

      v10 = CFRetain(v18);
      goto LABEL_21;
    }

    v25 = 0;
    v10 = sim_identity_create_0(v8, a1, identity_type, 1, &v25, 0);
    if (v25)
    {
      v11 = 1;
      EAPSIMAKAPersistentStateSetReauthIDUsed(v8, 1);
      v12 = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v12, v13))
      {
        SSID = EAPSIMAKAPersistentStateGetSSID(v8);
        *buf = 138412546;
        v29 = v10;
        v30 = 2112;
        v31 = SSID;
        _os_log_impl(&dword_249EFB000, v12, v13, "EAP-AKA is using fast re-auth id %@ for ssid : %@", buf, 0x16u);
      }
    }

    else
    {
      if (!EAPSIMAKAPersistentStateGetReauthIDUsed(v8))
      {
LABEL_21:
        EAPSIMAKAPersistentStateRelease(v8);
        v15 = v9;
        goto LABEL_22;
      }

      EAPSIMAKAPersistentStateSetReauthID(v8, 0);
      EAPSIMAKAPersistentStateSetReauthIDUsed(v8, 0);
      v11 = 0;
    }

    EAPSIMAKAPersistentStateSave(v8, v11);
    goto LABEL_21;
  }

  v15 = 0;
  v10 = 0;
LABEL_22:
  if (HIBYTE(v26) != 1 || v6)
  {
    goto LABEL_34;
  }

  v19 = v26 == 1 && v15;
  v20 = EAPLogGetLogHandle();
  if (!v19)
  {
    v22 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v20, v22))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v20, v22, "EAP-AKA: failed to get privacy protected identity", buf, 2u);
    }

    goto LABEL_33;
  }

  v21 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v20, v21))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v20, v21, "EAP-AKA: out-of-band pseudonym is not required as in-band pseudonym is available", buf, 2u);
  }

  v6 = 0;
LABEL_34:
  EAPSIMAKAClearEncryptedIdentityInfo(v6);
  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

CFStringRef eapaka_copy_identity(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v2[4] = 0;
  *(v2 + 12) = 0xFFFFFFFF00000000;
  if (v2[28] && !EAPSIMAKAPersistentStateTemporaryUsernameAvailable(v2[26]))
  {
    result = *(v2[28] + 8);
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {
    v4 = v2[26];
    v5 = a1[10];

    return sim_identity_create_0(v4, v5, 13, 1, 0, 0);
  }

  return result;
}

CFTypeRef copy_static_imsi_0(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"EAPSIMAKAIMSI");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return CFRetain(Value);
}

void EAPAKAContextFree(uint64_t a1)
{
  EAPSIMAKAPersistentStateRelease(*(a1 + 208));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  my_CFRelease((a1 + 248));
  my_CFRelease((a1 + 256));
  my_CFRelease((a1 + 264));
  EAPSIMAKAClearEncryptedIdentityInfo(*(a1 + 224));
  my_CFRelease((a1 + 232));
  bzero(a1, 0x6F0uLL);

  free(a1);
}

void EAPAKAContextSetLastIdentity(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 32) = 0;
  if (cf)
  {
    if (*(a1 + 224) && (!EAPSIMAKAPersistentStateTemporaryUsernameAvailable(*(a1 + 208)) || *(a1 + 28) == 10))
    {
      v5 = **(a1 + 224);
      if (!v5)
      {
        v7 = sim_identity_create_0(*(a1 + 208), *(*a1 + 80), 10, 0, 0, 0);
        *(a1 + 32) = CFStringCreateExternalRepresentation(0, v7, 0x8000100u, 0);
        my_CFRelease(&v7);
        return;
      }

      ExternalRepresentation = CFStringCreateExternalRepresentation(0, v5, 0x8000100u, 0);
    }

    else
    {
      ExternalRepresentation = CFRetain(cf);
    }

    *(a1 + 32) = ExternalRepresentation;
  }
}

CFStringRef sim_identity_create_0(uint64_t a1, CFDictionaryRef theDict, int a3, int a4, _BYTE *a5, _DWORD *a6)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"EAPSIMAKAIMSI") | a4)
  {
    v11 = theDict == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (Value = CFDictionaryGetValue(theDict, @"EAPSIMAKARealm"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID)
  {
    CFRetain(Value);
  }

  else
  {
    Value = SIMCopyRealm(theDict);
  }

  v35 = Value;
  if (a5)
  {
    *a5 = 0;
  }

  if (!a1)
  {
    v20 = 0;
    goto LABEL_60;
  }

  otherDate = 0;
  Pseudonym = EAPSIMAKAPersistentStateGetPseudonym(a1, &otherDate);
  v15 = Pseudonym;
  if (a3 == 17 || a3 == 13)
  {
    ReauthID = EAPSIMAKAPersistentStateGetReauthID(a1);
    ReauthIDUsed = EAPSIMAKAPersistentStateGetReauthIDUsed(a1);
    if (a3 == 13 && ReauthID && !ReauthIDUsed)
    {
      if (a5)
      {
        *a5 = 1;
      }

      v18 = ReauthID;
      goto LABEL_22;
    }

    if (v15)
    {
      if (Value)
      {
        v19 = CFStringCreateWithFormat(0, 0, @"%@@%@", v15, Value, v35);
LABEL_27:
        v20 = v19;
        if (v19)
        {
          goto LABEL_60;
        }

        goto LABEL_51;
      }

      v18 = v15;
LABEL_22:
      v19 = CFRetain(v18);
      goto LABEL_27;
    }
  }

  else
  {
    v21 = 0;
    if (a3 != 10)
    {
      goto LABEL_52;
    }

    if (!Pseudonym)
    {
      goto LABEL_52;
    }

    v21 = CFDictionaryGetValue(theDict, @"EAPSIMAKAConservativePeer");
    v22 = CFBooleanGetTypeID();
    if (!v21)
    {
      goto LABEL_52;
    }

    if (CFGetTypeID(v21) == v22 && CFBooleanGetValue(v21))
    {
      *valuePtr = 24;
      v23 = CFDictionaryGetValue(theDict, @"EAPSIMAKAPseudonymIdentityLifetimeHours");
      v24 = CFNumberGetTypeID();
      if (v23)
      {
        v25 = 24;
        if (CFGetTypeID(v23) == v24)
        {
          if (CFNumberGetValue(v23, kCFNumberIntType, valuePtr))
          {
            v25 = *valuePtr;
          }

          else
          {
            v25 = 24;
          }
        }
      }

      else
      {
        v25 = 24;
      }

      v26 = v25 <= 24 ? 24 : v25;
      if (otherDate)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v28 = CFDateCreate(0, Current);
        v21 = v28;
        if (v28 && CFDateGetTimeIntervalSinceDate(v28, otherDate) < (3600 * v26))
        {
          LogHandle = EAPLogGetLogHandle();
          v30 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v30))
          {
            *valuePtr = 0;
            _os_log_impl(&dword_249EFB000, LogHandle, v30, "EAP Peer is in conservative mode and pseudonym is not expired yet.", valuePtr, 2u);
          }

          v20 = 0;
          if (a6)
          {
            *a6 = 17;
          }

          goto LABEL_59;
        }

        goto LABEL_52;
      }
    }
  }

LABEL_51:
  v21 = 0;
LABEL_52:
  IMSI = EAPSIMAKAPersistentStateGetIMSI(a1);
  if (Value)
  {
    v32 = CFStringCreateWithFormat(0, 0, @"0%@@%@", IMSI, Value);
  }

  else
  {
    v32 = CFStringCreateWithFormat(0, 0, @"0%@", IMSI, v34);
  }

  v20 = v32;
  if (a6 && !v32)
  {
    *a6 = 16;
  }

  if (v21)
  {
LABEL_59:
    CFRelease(v21);
  }

LABEL_60:
  my_CFRelease(&v35);
  return v20;
}

uint64_t eapaka_request(uint64_t a1, _BYTE *a2, int *a3, _DWORD *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  Length = EAPPacketGetLength(a2);
  v9 = TLVListSizeof();
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13, v14, v15, v16, *buf, *&buf[8], *&buf[16], v40);
  v19 = &buf[-v18];
  if ((v20 & 0x7FFFFFE00) != 0)
  {
    v21 = 512;
  }

  else
  {
    v21 = v17;
  }

  bzero(&buf[-v18], v21);
  TLVListInit(v19);
  if (Length <= 8)
  {
    LogHandle = EAPLogGetLogHandle();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v23))
    {
      *buf = 67109376;
      *&buf[4] = Length;
      *&buf[8] = 2048;
      *&buf[10] = 8;
      v24 = "length %d <= %ld";
      v25 = LogHandle;
      v26 = v23;
      v27 = 18;
LABEL_17:
      _os_log_impl(&dword_249EFB000, v25, v26, v24, buf, v27);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (TLVListParse_0(v19, a2 + 8, Length - 8))
  {
    if (*(a1 + 12) && *(a1 + 16) == a2[1])
    {
      client_error_packet = a1 + 272;
      goto LABEL_27;
    }

    v29 = a2[5];
    if (v29 > 0xB)
    {
      if (v29 == 12)
      {
        v30 = eapaka_notification(a1, a2, v19, a3, a4);
        goto LABEL_36;
      }

      if (v29 == 13)
      {
        v30 = eapaka_reauthentication(a1, a2, v19, a3);
        goto LABEL_36;
      }
    }

    else
    {
      if (v29 == 1)
      {
        v30 = eapaka_challenge(a1, a2, v19, a3);
        goto LABEL_36;
      }

      if (v29 == 5)
      {
        v30 = eapaka_identity(a1, a2, v19, a3);
LABEL_36:
        client_error_packet = v30;
        goto LABEL_19;
      }
    }

    *a3 = 17;
    v36 = EAPLogGetLogHandle();
    v37 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v36, v37))
    {
      String = EAPSIMAKAPacketSubtypeGetString(v29);
      *buf = 136315138;
      *&buf[4] = String;
      _os_log_impl(&dword_249EFB000, v36, v37, "unexpected Subtype %s", buf, 0xCu);
    }

    client_error_packet = 0;
    *a3 = 17;
    goto LABEL_19;
  }

  v31 = EAPLogGetLogHandle();
  v32 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = TLVListErrorString(v19);
    *buf = 136315138;
    *&buf[4] = v33;
    v24 = "parse failed: %s";
    v25 = v31;
    v26 = v32;
    v27 = 12;
    goto LABEL_17;
  }

LABEL_18:
  client_error_packet = 0;
  *a3 = 17;
LABEL_19:
  TLVListFree(v19);
  if (*a3)
  {
    *(a1 + 8) = 0x500000002;
  }

  if (!client_error_packet)
  {
    if (*a3 != 17)
    {
      client_error_packet = 0;
      goto LABEL_27;
    }

    client_error_packet = make_client_error_packet(a1, a2);
    if (!client_error_packet)
    {
      goto LABEL_27;
    }
  }

  *(a1 + 16) = a2[1];
LABEL_27:
  v34 = *MEMORY[0x277D85DE8];
  return client_error_packet;
}

uint64_t eapaka_challenge(uint64_t a1, _BYTE *a2, unsigned __int8 ***a3, int *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v75 = 0u;
  v76 = 0u;
  memset(&c.data[1], 0, 64);
  v8 = TLVBufferSizeof();
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12, v13, v14, v15, 0, 0, 0, 0);
  v18 = &c - v17;
  if ((v19 & 0x7FFFFFE00) != 0)
  {
    v20 = 512;
  }

  else
  {
    v20 = v16;
  }

  bzero(&c - v17, v20);
  AKAAuthResultsInit(&v75);
  *(a1 + 8) = 0x200000000;
  EAPSIMAKAPersistentStateSetCounter(*(a1 + 208), 1);
  EAPSIMAKAPersistentStateSetReauthID(*(a1 + 208), 0);
  *(a1 + 216) = 0;
  v21 = TLVListLookupAttribute(a3, 1);
  if (!v21)
  {
    LogHandle = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v32))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v33 = "eapaka: Challenge is missing AT_RAND";
    goto LABEL_37;
  }

  v22 = v21;
  v23 = TLVListLookupAttribute(a3, 2);
  if (!v23)
  {
    LogHandle = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v32))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v33 = "eapaka: Challenge is missing AT_AUTN";
    goto LABEL_37;
  }

  v24 = v23;
  v25 = TLVListLookupAttribute(a3, 11);
  if (!v25)
  {
    LogHandle = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v32))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v33 = "eapaka: Challenge is missing AT_MAC";
    goto LABEL_37;
  }

  v26 = v25;
  v27 = *MEMORY[0x277CBED00];
  v28 = CFDataCreateWithBytesNoCopy(0, (v22 + 4), 16, *MEMORY[0x277CBED00]);
  v29 = CFDataCreateWithBytesNoCopy(0, (v24 + 4), 16, v27);
  if (*(a1 + 256))
  {
    v30 = AKAAuthResultsInit(&v75);
    AKAAuthResultsSetCK(&v75, *(a1 + 256), v30);
    AKAAuthResultsSetIK(&v75, *(a1 + 264));
    AKAAuthResultsSetRES(&v75, *(a1 + 248));
    CFRelease(v28);
    CFRelease(v29);
  }

  else
  {
    v34 = SIMAuthenticateAKA(*(*a1 + 80), v28, v29, &v75);
    CFRelease(v28);
    CFRelease(v29);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  v35 = v75;
  if (v75)
  {
    CC_SHA1_Init(&c);
    v36 = *(a1 + 32);
    if (v36)
    {
      BytePtr = CFDataGetBytePtr(v36);
      Length = CFDataGetLength(*(a1 + 32));
      v39 = BytePtr;
    }

    else
    {
      v39 = *(*a1 + 40);
      Length = *(*a1 + 48);
    }

    CC_SHA1_Update(&c, v39, Length);
    v51 = *(&v75 + 1);
    v52 = CFDataGetBytePtr(*(&v75 + 1));
    v53 = CFDataGetLength(v51);
    CC_SHA1_Update(&c, v52, v53);
    v54 = CFDataGetBytePtr(v35);
    v55 = CFDataGetLength(v35);
    CC_SHA1_Update(&c, v54, v55);
    MasterKey = EAPSIMAKAPersistentStateGetMasterKey(*(a1 + 208));
    CC_SHA1_Final(MasterKey, &c);
    v57 = EAPSIMAKAPersistentStateGetMasterKey(*(a1 + 208));
    fips186_2prf(v57, a1 + 40);
    if (EAPSIMAKAKeyInfoVerifyMAC(a1 + 40, a2, v26 + 4, 0, 0))
    {
      if (eapaka_challenge_process_encr_data(a1, a3))
      {
        TLVBufferInit(v18, a1 + 280, 1492);
        *(a1 + 272) = 2;
        *(a1 + 273) = a2[1];
        *(a1 + 276) = 279;
        TLV = TLVBufferAllocateTLV(v18, 11, 20);
        if (TLV)
        {
          v59 = TLV;
          *(TLV + 1) = 0;
          v60 = v76;
          v61 = CFDataGetLength(v76);
          v62 = TLVBufferAllocateTLV(v18, 3, v61 + 4);
          if (v62)
          {
            v63 = v62;
            v42 = a1 + 272;
            *(v62 + 1) = bswap32(8 * v61) >> 16;
            v64 = CFDataGetBytePtr(v60);
            memmove(v63 + 4, v64, v61);
            v65 = TLVBufferUsed(v18);
            EAPPacketSetLength(a1 + 272, (v65 + 8));
            EAPSIMAKAKeyInfoSetMAC(a1 + 40, (a1 + 272), v59 + 4, 0, 0);
            *(a1 + 12) = 4;
            *(a1 + 200) = 1;
            goto LABEL_40;
          }

          v69 = EAPLogGetLogHandle();
          v70 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v69, v70))
          {
            goto LABEL_46;
          }

          v73 = TLVBufferErrorString(v18);
          *buf = 136315138;
          *v78 = v73;
          v72 = "eapaka: failed allocating AT_RES, %s";
          goto LABEL_45;
        }

        v69 = EAPLogGetLogHandle();
        v70 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = TLVBufferErrorString(v18);
          *buf = 136315138;
          *v78 = v71;
          v72 = "eapaka: failed allocating AT_MAC, %s";
LABEL_45:
          _os_log_impl(&dword_249EFB000, v69, v70, v72, buf, 0xCu);
        }

LABEL_46:
        v42 = 0;
        v66 = 8;
        goto LABEL_39;
      }

LABEL_38:
      v42 = 0;
      v66 = 17;
LABEL_39:
      *a4 = v66;
      goto LABEL_40;
    }

    LogHandle = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v32))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v33 = "eapaka: Challenge AT_MAC not valid";
LABEL_37:
    _os_log_impl(&dword_249EFB000, LogHandle, v32, v33, buf, 2u);
    goto LABEL_38;
  }

  v40 = *(&v76 + 1);
  if (*(&v76 + 1))
  {
    v41 = 4;
  }

  else
  {
    v41 = 2;
  }

  v42 = a1 + 272;
  TLVBufferInit(v18, a1 + 280, 1492);
  *(a1 + 272) = 2;
  *(a1 + 273) = a2[1];
  *(a1 + 276) = 23;
  *(a1 + 277) = v41;
  *(a1 + 278) = 0;
  if (v40)
  {
    v43 = CFDataGetLength(v40);
    if (v43 != 14)
    {
      v44 = EAPLogGetLogHandle();
      v45 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v44, v45))
      {
        *buf = 67109376;
        *v78 = v43;
        *&v78[4] = 1024;
        *&v78[6] = 14;
        _os_log_impl(&dword_249EFB000, v44, v45, "eapaka: SIM bogus AUTS size %d (should be %d)", buf, 0xEu);
      }

      *a4 = 8;
    }

    v46 = TLVBufferAllocateTLV(v18, 4, 16);
    v47 = CFDataGetBytePtr(v40);
    v48 = *(v47 + 6);
    v49 = *(v47 + 2);
    *(v46 + 2) = *v47;
    *(v46 + 10) = v49;
    *(v46 + 7) = v48;
  }

  v50 = TLVBufferUsed(v18);
  EAPPacketSetLength(v42, (v50 + 8));
LABEL_40:
  AKAAuthResultsRelease(&v75);
  v67 = *MEMORY[0x277D85DE8];
  return v42;
}