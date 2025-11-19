uint64_t _NetSocketGCM_Write(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  return _NetSocketGCM_WriteV(a1, v5, 1, a4);
}

uint64_t _NetSocketGCM_Read(uint64_t a1, size_t a2, size_t a3, char *__dst, size_t *a5, uint64_t a6, unsigned int a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a1 != 1853058915)
  {
    v14 = 0;
    result = 4294960556;
    goto LABEL_42;
  }

  if (*(a1 + 8))
  {
    v14 = 0;
    result = 4294960573;
    goto LABEL_42;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    v14 = 0;
    result = 4294960551;
    goto LABEL_42;
  }

  v9 = __dst;
  v10 = a3;
  v11 = *(a1 + 96);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72) - v12;
  if (v13)
  {
    if (v13 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = *(a1 + 72) - v12;
    }

    memcpy(__dst, v12, v14);
    *(a1 + 64) += v14;
    v10 -= v14;
    if (v14 >= a2 || v10 == 0)
    {
      goto LABEL_41;
    }

    v9 += v14;
  }

  else
  {
    v14 = 0;
  }

  v16 = *(v11 + 32774);
  v17 = *(v11 + 32775) - v16;
  if (v17)
  {
    if (v17 >= v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = *(v11 + 32775) - v16;
    }

    memcpy(v9, v16, v18);
    *(v11 + 32774) += v18;
    v14 += v18;
    v10 -= v18;
    if (v10)
    {
      v19 = v14 >= a2;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v9 += v18;
      goto LABEL_24;
    }

LABEL_41:
    result = 0;
    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

LABEL_24:
  __dsta = 0;
  v20 = v11 + 48;
  while (1)
  {
    result = NetSocket_ReadInternal(a1, 4uLL, 4, &__dsta, 0, 0, a7);
    if (result)
    {
      break;
    }

    v22 = bswap32(__dsta);
    if (v22 > 0x40000)
    {
      result = 4294960553;
      break;
    }

    result = NetSocket_ReadInternal(a1, v22, v22, v11 + 48, 0, 0, a7);
    if (result)
    {
      break;
    }

    result = NetSocket_ReadInternal(a1, 0x10uLL, 16, v29, 0, 0, a7);
    if (result)
    {
      break;
    }

    result = AES_GCM_InitMessage(v11, 0);
    if (result)
    {
      break;
    }

    result = CCCryptorGCMAddAAD();
    if (result)
    {
      break;
    }

    v23 = *v11;
    v24 = v11 + 48;
    v25 = v10 - v22;
    if (v10 >= v22)
    {
      result = MEMORY[0x193B04C70](v23, v24, v22, v9);
      if (result)
      {
        break;
      }

      v14 += v22;
    }

    else
    {
      result = MEMORY[0x193B04C70](v23, v24, v10, v9);
      if (result)
      {
        break;
      }

      result = MEMORY[0x193B04C70](*v11, v20 + v10, v22 - v10, v20 + v10);
      if (result)
      {
        v14 += v10;
        break;
      }

      v25 = 0;
      *(v11 + 32774) = v20 + v10;
      *(v11 + 32775) = v20 + v22;
      v22 = v10;
      v14 += v10;
    }

    result = CCCryptorGCMFinalize();
    if (!result && v14 < a2)
    {
      v9 += v22;
      v10 = v25;
      if (v25)
      {
        continue;
      }
    }

    break;
  }

LABEL_42:
  if (a5)
  {
    *a5 = v14;
  }

  return result;
}

uint64_t NetSocketTLS_Configure(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[12];
  if (!v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    if (!v7)
    {
      v14 = 4294960568;
      goto LABEL_12;
    }

    v6 = v7;
    a1[12] = v7;
  }

  if (*v6)
  {
    CFRelease(*v6);
  }

  v12 = SSLCreateContext(0, (a4 == 0), kSSLStreamType);
  *v6 = v12;
  if (v12)
  {
    v13 = SSLSetConnection(v12, a1);
    if (v13 || (v13 = SSLSetIOFuncs(*v6, _TLSRead, _TLSWrite), v13) || (v13 = SSLSetProtocolVersionMin(*v6, kTLSProtocol12), v13) || (v13 = SSLSetPSKSharedSecret(), v13) || a4 && (v13 = SSLSetPSKIdentity(), v13))
    {
      v14 = v13;
    }

    else
    {
      v16 = *v6;
      *ciphers = 11403432;
      v14 = SSLSetEnabledCiphers(v16, ciphers, 2uLL);
      if (!v14)
      {
        a1[3] = _NetSocketTLSRead;
        a1[4] = _NetSocketTLSWrite;
        a1[5] = NetSocket_WriteVSlow;
        a1[6] = NetSocket_WriteFileSlow;
        a1[7] = _NetSocketTLSFree;
        return v14;
      }
    }
  }

  else
  {
    v14 = 4294960596;
  }

LABEL_12:
  if (gLogCategory_NetSocketTLS <= 60 && (gLogCategory_NetSocketTLS != -1 || _LogCategory_Initialize(&gLogCategory_NetSocketTLS, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_NetSocketTLS, "OSStatus NetSocketTLS_Configure(NetSocketRef, const void *, size_t, const void *, size_t)", 0x3Cu, "### Configure TLS failed: %#m\n", v8, v9, v10, v11, v14);
  }

  _NetSocketTLSFree(a1);
  return v14;
}

void _NetSocketTLSFree(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    if (*v1)
    {
      CFRelease(*v1);
    }

    free(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t _NetSocketTLSWrite(uint64_t a1, void *data, size_t dataLength, int a4)
{
  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  processed[5] = v4;
  processed[6] = v5;
  v6 = *(a1 + 96);
  if (!v6)
  {
    return 4294960551;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  processed[0] = 0;
  *(a1 + 104) = a4;
  if (!*(v6 + 8))
  {
    result = SSLHandshake(*v6);
    if (result)
    {
      return result;
    }

    *(v6 + 8) = 1;
    if (gLogCategory_NetSocketTLS <= 20 && (gLogCategory_NetSocketTLS != -1 || _LogCategory_Initialize(&gLogCategory_NetSocketTLS, 0x14u)))
    {
      LogPrintF(&gLogCategory_NetSocketTLS, "OSStatus _NetSocketTLSWrite(NetSocketRef, const void *, size_t, int32_t)", 0x14u, "TLS handshake completed for write\n", v10, v11, v12, v13, v18);
    }
  }

  result = SSLWrite(*v6, data, dataLength, processed);
  if (!result)
  {
    if (gLogCategory_NetSocketTLS > 9)
    {
      return 0;
    }

    if (gLogCategory_NetSocketTLS != -1 || (result = _LogCategory_Initialize(&gLogCategory_NetSocketTLS, 9u), result))
    {
      LogPrintF(&gLogCategory_NetSocketTLS, "OSStatus _NetSocketTLSWrite(NetSocketRef, const void *, size_t, int32_t)", 9u, "TLS wrote %zu bytes\n", v14, v15, v16, v17, processed[0]);
      return 0;
    }
  }

  return result;
}

uint64_t _NetSocketTLSRead(uint64_t a1, int a2, size_t dataLength, void *data, size_t *processed, uint64_t a6, int a7)
{
  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  v7 = *(a1 + 96);
  if (!v7)
  {
    return 4294960551;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  *(a1 + 104) = a7;
  if (!*(v7 + 8))
  {
    result = SSLHandshake(*v7);
    if (result)
    {
      return result;
    }

    *(v7 + 8) = 1;
    if (gLogCategory_NetSocketTLS <= 20 && (gLogCategory_NetSocketTLS != -1 || _LogCategory_Initialize(&gLogCategory_NetSocketTLS, 0x14u)))
    {
      LogPrintF(&gLogCategory_NetSocketTLS, "OSStatus _NetSocketTLSRead(NetSocketRef, size_t, size_t, void *, size_t *, int, int32_t)", 0x14u, "TLS handshake completed for read\n", v12, v13, v14, v15, v20);
    }
  }

  result = SSLRead(*v7, data, dataLength, processed);
  if (!result)
  {
    if (gLogCategory_NetSocketTLS > 9)
    {
      return 0;
    }

    if (gLogCategory_NetSocketTLS != -1 || (result = _LogCategory_Initialize(&gLogCategory_NetSocketTLS, 9u), result))
    {
      LogPrintF(&gLogCategory_NetSocketTLS, "OSStatus _NetSocketTLSRead(NetSocketRef, size_t, size_t, void *, size_t *, int, int32_t)", 9u, "TLS read %zu bytes\n", v16, v17, v18, v19, *processed);
      return 0;
    }
  }

  return result;
}

uint64_t _TLSWrite(uint64_t a1, char *a2, size_t *a3)
{
  LODWORD(result) = NetSocket_WriteInternal(a1, a2, *a3, *(a1 + 104));
  if (result == 35)
  {
    return 4294957493;
  }

  else
  {
    return result;
  }
}

uint64_t _TLSRead(uint64_t a1, char *__dst, uint64_t *a3)
{
  LODWORD(result) = NetSocket_ReadInternal(a1, 1uLL, *a3, __dst, a3, 0, *(a1 + 104));
  if (result == 35)
  {
    return 4294957493;
  }

  else
  {
    return result;
  }
}

uint64_t NetTransportChaCha20Poly1305Configure(void *a1, int *a2, __int128 *a3, void *a4, __int128 *a5, void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x46C8uLL, 0x103004090BEDF2EuLL);
  if (!v12)
  {
    return 4294960568;
  }

  *v12 = -1;
  v13 = &gLogCategory_NetTransportChaCha20Poly1305;
  if (a2)
  {
    v13 = a2;
  }

  v12[1] = v13;
  *(v12 + 4) = 1;
  v14 = *a3;
  *(v12 + 1046) = a3[1];
  *(v12 + 1045) = v14;
  if (a4)
  {
    v12[2094] = *a4;
  }

  v15 = *a5;
  *(v12 + 1131) = a5[1];
  *(v12 + 1130) = v15;
  if (a6)
  {
    v12[2264] = *a6;
  }

  v16 = 0;
  *a1 = v12;
  a1[1] = _NetTransportInitialize;
  a1[2] = _NetTransportFinalize;
  a1[3] = _NetTransportRead;
  a1[4] = _NetTransportWriteV;
  return v16;
}

void _NetTransportFinalize(void *a1)
{
  if (a1)
  {
    memset_s(a1, 0x46C8uLL, 0, 0x46C8uLL);

    free(a1);
  }
}

uint64_t NetTransportGCMConfigure(_CCCryptor ***a1, int *a2, void *a3, __n128 *a4, void *a5, __n128 *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x800A8uLL, 0x1030040F23A3433uLL);
  if (!v12)
  {
    return 4294960568;
  }

  v13 = v12;
  *v12 = -1;
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = &gLogCategory_NetTransportGCM;
  }

  v12[1] = v14;
  *(v12 + 4) = 1;
  AES_GCM_InitEx(v12 + 32778, 1u, a3, a4);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    AES_GCM_InitEx(v13 + 65554, 0, a5, a6);
    v16 = v17;
    if (!v17)
    {
      *a1 = v13;
      a1[1] = _NetTransportInitialize_12044;
      a1[2] = _NetTransportFinalize_12043;
      a1[3] = _NetTransportRead_12040;
      a1[4] = _NetTransportWriteV_12039;
      return v16;
    }
  }

  AES_GCM_Final(v13 + 32778);
  AES_GCM_Final(v13 + 65554);
  free(v13);
  return v16;
}

uint64_t _NetTransportWriteV_12039(const iovec **a1, int *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = (a3 + 524416);
  v5 = a3 + 262252;
  v6 = a3 + 524396;
  v30 = 0;
  v7 = *a1;
  v8 = &(*a1)[*a2];
  v9 = *(a3 + 524416);
  v27 = a3 + 262252;
  for (i = (a3 + 262248); ; v9 = i)
  {
    while (1)
    {
      v10 = v4[1];
      v11 = v10 - v9;
      if (v10 == v9)
      {
        break;
      }

      v31 = v9;
      v32 = v10 - v9;
      v29 = &v31;
      v30 = 1;
      result = SocketWriteData(*a3, &v29, &v30);
      v9 = &(*v4)[v11 - v32];
      *v4 = v9;
      if (result)
      {
        goto LABEL_30;
      }
    }

    if (v7 >= v8)
    {
      v13 = 0;
      v15 = v7;
LABEL_11:
      v29 = v15;
      if (!v13)
      {
LABEL_31:
        result = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v13 = 0;
      v14 = v5;
      v15 = v7;
      while (1)
      {
        iov_len = v15->iov_len;
        if (v6 - v14 < iov_len)
        {
          break;
        }

        v13 += iov_len;
        v14 += iov_len;
        if (++v15 >= v8)
        {
          goto LABEL_11;
        }
      }

      v29 = v15;
      v13 += v6 - v14;
      if (!v13)
      {
        goto LABEL_31;
      }
    }

    result = AES_GCM_InitMessage((a3 + 524432), 0);
    if (result)
    {
      goto LABEL_30;
    }

    *i = bswap32(v13);
    result = CCCryptorGCMAddAAD();
    if (result)
    {
      goto LABEL_30;
    }

    if (v7 < v8)
    {
      break;
    }

    v17 = v5;
LABEL_27:
    result = CCCryptorGCMFinalize();
    if (result)
    {
      goto LABEL_30;
    }

    *v4 = i;
    v4[1] = (v17 + 16);
  }

  v17 = v5;
  p_iov_len = &v7->iov_len;
  while (1)
  {
    v7 = (p_iov_len - 1);
    v19 = *(p_iov_len - 1);
    v20 = v6 - v17;
    v21 = *(a3 + 524432);
    if (v6 - v17 < *p_iov_len)
    {
      result = MEMORY[0x193B04C80](v21, v19, v6 - v17, v17);
      if (result)
      {
        goto LABEL_30;
      }

      v24 = *p_iov_len - v20;
      *(p_iov_len - 1) += v20;
      *p_iov_len = v24;
      v17 = v6;
      goto LABEL_26;
    }

    result = MEMORY[0x193B04C80](v21, v19);
    if (result)
    {
      break;
    }

    v22 = p_iov_len + 2;
    v17 += *p_iov_len;
    v23 = (p_iov_len + 1) >= v8;
    p_iov_len += 2;
    if (v23)
    {
      v7 = (v22 - 1);
LABEL_26:
      v5 = v27;
      goto LABEL_27;
    }
  }

  v7 = (p_iov_len - 1);
LABEL_30:
  *a1 = v7;
  *a2 = (v8 - v7) >> 4;
  return result;
}

uint64_t _NetTransportRead_12040(char *__dst, size_t a2, void *a3, uint64_t a4)
{
  v6 = __dst;
  v7 = a4 + 0x40000;
  v8 = a4 + 44;
  for (i = *(a4 + 262208); ; i = v8)
  {
    do
    {
      v10 = *(v7 + 72) - i;
      if (v10)
      {
        if (v10 >= a2)
        {
          v11 = a2;
        }

        else
        {
          v11 = *(v7 + 72) - i;
        }

        memcpy(v6, i, v11);
        i = (*(v7 + 64) + v11);
        *(v7 + 64) = i;
        v6 += v11;
        a2 -= v11;
      }

      if (!a2)
      {
        LODWORD(v21) = 0;
        goto LABEL_25;
      }

      v12 = *(a4 + 16);
      if (v12 == 1)
      {
        Data = SocketReadData(*a4, a4 + 40, 4uLL, (a4 + 32));
        if (Data)
        {
          goto LABEL_23;
        }

        v13 = bswap32(*(a4 + 40));
        *(a4 + 24) = v13;
        if (v13 > 0x40000)
        {
          LODWORD(v21) = -6743;
          goto LABEL_25;
        }

        *(a4 + 32) = 0;
        *(a4 + 16) = 2;
        goto LABEL_15;
      }

      if (v12 == 3)
      {
        goto LABEL_17;
      }
    }

    while (v12 != 2);
    v13 = *(a4 + 24);
LABEL_15:
    Data = SocketReadData(*a4, v8, v13, (a4 + 32));
    if (Data)
    {
      goto LABEL_23;
    }

    *(a4 + 32) = 0;
    *(a4 + 16) = 3;
LABEL_17:
    Data = SocketReadData(*a4, a4 + 262188, 0x10uLL, (a4 + 32));
    if (Data || (Data = AES_GCM_InitMessage((a4 + 262224), 0)) != 0 || (Data = CCCryptorGCMAddAAD()) != 0 || (Data = MEMORY[0x193B04C70](*(a4 + 262224), v8, *(a4 + 24), v8)) != 0)
    {
LABEL_23:
      LODWORD(v21) = Data;
LABEL_25:
      v23 = a3;
      v22 = __dst;
      goto LABEL_26;
    }

    v15 = CCCryptorGCMFinalize();
    if (v15)
    {
      break;
    }

    v20 = v8 + *(a4 + 24);
    *(v7 + 64) = v8;
    *(v7 + 72) = v20;
    *(a4 + 32) = 0;
    *(a4 + 16) = 1;
  }

  v21 = v15;
  v23 = a3;
  v22 = __dst;
  if (gLogCategory_NetTransportGCM <= 60 && (gLogCategory_NetTransportGCM != -1 || _LogCategory_Initialize(&gLogCategory_NetTransportGCM, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_NetTransportGCM, "OSStatus _NetTransportRead(void *, size_t, size_t *, void *)", 0x3Cu, "### GCM verify failed: %#m\n", v16, v17, v18, v19, v21);
  }

LABEL_26:
  if (v23)
  {
    *v23 = v6 - v22;
  }

  if (v21 != -6753 && v21 != 35 || v6 == v22)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

void _NetTransportFinalize_12043(_CCCryptor **a1)
{
  if (a1)
  {
    AES_GCM_Final(a1 + 32778);
    AES_GCM_Final(a1 + 65554);

    free(a1);
  }
}

void _NetTransportFinalize_12051(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      v2(a1[3]);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
      a1[4] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t _NetTransportWriteV_12052(const void ***a1, int *a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    while (1)
    {
LABEL_8:
      if (*a2 < 1)
      {
        return 0;
      }

      processed = 0;
      LODWORD(result) = SSLWrite(*a3, **a1, (*a1)[1], &processed);
      if (processed)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if ((result + 9806) < 2)
      {
        return 4294960543;
      }

      if (result)
      {
        break;
      }

      result = UpdateIOVec(a1, a2, processed);
      if (!result)
      {
        return result;
      }
    }

    if (result != -9803)
    {
      return result;
    }
  }

  else
  {
    while (1)
    {
      result = SSLHandshake(*a3);
      if (!result)
      {
        *(a3 + 12) = 1;
        goto LABEL_8;
      }

      if (result == -9803)
      {
        break;
      }

      if (result == -9841)
      {
        result = _HandlePeerAuth(a3);
        if (!result)
        {
          continue;
        }
      }

      return result;
    }
  }

  v7 = *(a3 + 14);
  if (*(a3 + 13))
  {
    *(a3 + 13) = 0;
    if (v7)
    {
      result = 4294960530;
LABEL_23:
      *(a3 + 14) = 0;
      return result;
    }

    return 4294960522;
  }

  else
  {
    if (*(a3 + 14))
    {
      result = 4294960521;
      goto LABEL_23;
    }

    return 35;
  }
}

uint64_t _HandlePeerAuth(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    if (!*(a1 + 56))
    {
      return 0;
    }

    v2 = *(a1 + 48);
    if (!v2)
    {
      return 0;
    }
  }

  trust = 0;
  v3 = SSLCopyPeerTrust(*a1, &trust);
  if (v3)
  {
    return v3;
  }

  v4 = v2(trust, *(a1 + 24));
  CFRelease(trust);
  if (!v4)
  {
    return 0;
  }

  return v4;
}

uint64_t _NetTransportRead_12053(void *data, size_t dataLength, size_t *a3, uint64_t a4)
{
  processed = 0;
  if (!*(a4 + 12))
  {
    while (1)
    {
      result = SSLHandshake(*a4);
      if (!result)
      {
        *(a4 + 12) = 1;
        goto LABEL_11;
      }

      if (result == -9803)
      {
        break;
      }

      if (result != -9841)
      {
        v9 = 0;
        goto LABEL_33;
      }

      result = _HandlePeerAuth(a4);
      v9 = 0;
      if (result)
      {
        goto LABEL_33;
      }
    }

    v10 = *(a4 + 14);
    if (*(a4 + 13))
    {
      *(a4 + 13) = 0;
      if (v10)
      {
        result = 4294960530;
LABEL_27:
        v9 = 0;
        goto LABEL_28;
      }

      v9 = 0;
      goto LABEL_30;
    }

    if (*(a4 + 14))
    {
      result = 4294960521;
      goto LABEL_27;
    }

    v9 = 0;
LABEL_32:
    result = 35;
    goto LABEL_33;
  }

LABEL_11:
  v11 = SSLRead(*a4, data, dataLength, &processed);
  v9 = processed;
  if (processed)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  switch(v12)
  {
    case 0xFFFFD9B3:
      result = 4294960543;
      break;
    case 0xFFFFD9B5:
      v13 = *(a4 + 14);
      if (*(a4 + 13))
      {
        *(a4 + 13) = 0;
        if (!v13)
        {
LABEL_30:
          result = 4294960522;
          break;
        }

        result = 4294960530;
      }

      else
      {
        if (!*(a4 + 14))
        {
          goto LABEL_32;
        }

        result = 4294960521;
      }

LABEL_28:
      *(a4 + 14) = 0;
      break;
    case 0xFFFFD9B2:
      result = 4294960543;
      break;
    default:
      result = v12;
      break;
  }

LABEL_33:
  *a3 = v9;
  return result;
}

size_t _SecureTransportWrite(uint64_t a1, void *__buf, size_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    while (1)
    {
      v7 = write(*(a1 + 8), __buf, *a3);
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (!*__error())
      {
        v7 = 0;
        v4 = 4294960596;
        goto LABEL_14;
      }

      v4 = *__error();
      if (v4 != 4)
      {
        if (v4 != 35)
        {
          goto LABEL_11;
        }

        v7 = 0;
        goto LABEL_9;
      }
    }

    if (v7)
    {
      if (v7 < *a3)
      {
LABEL_9:
        *(a1 + 14) = 1;
        v4 = 4294957493;
        goto LABEL_14;
      }

      v4 = 0;
    }

    else
    {
      v4 = 4294957491;
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
  }

LABEL_14:
  *a3 = v7;
  return v4;
}

uint64_t _SecureTransportRead(uint64_t a1, void *a2, size_t *a3)
{
  do
  {
    v6 = read(*(a1 + 8), a2, *a3);
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        if (v6 < *a3)
        {
          goto LABEL_8;
        }

        v7 = 0;
      }

      else
      {
        v7 = 4294957491;
      }

      goto LABEL_13;
    }

    if (!*__error())
    {
      v6 = 0;
      v7 = 4294960596;
      goto LABEL_13;
    }

    v7 = *__error();
  }

  while (v7 == 4);
  if (v7 == 35)
  {
    v6 = 0;
LABEL_8:
    *(a1 + 13) = 1;
    v7 = 4294957493;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_13:
  *a3 = v6;
  return v7;
}

uint64_t NetTransportTLSPSKConfigure(SSLContext ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = malloc_type_calloc(1uLL, 0x60uLL, 0x10F004024CDB9A6uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  v11 = SSLCreateContext(0, (a6 != 0), kSSLStreamType);
  *v10 = v11;
  if (v11)
  {
    v12 = SSLSetConnection(v11, v10);
    if (v12 || (v12 = SSLSetIOFuncs(*v10, _SecureTransportRead, _SecureTransportWrite), v12) || (v12 = SSLSetProtocolVersionMin(*v10, kTLSProtocol12), v12) || (v12 = SSLSetPSKSharedSecret(), v12) || a4 && (v12 = SSLSetPSKIdentity(), v12))
    {
      v13 = v12;
    }

    else
    {
      v15 = *v10;
      *ciphers = 11403432;
      v13 = SSLSetEnabledCiphers(v15, ciphers, 2uLL);
      if (!v13)
      {
        *a1 = v10;
        a1[1] = _NetTransportInitialize_12054;
        a1[2] = _NetTransportFinalize_12051;
        a1[3] = _NetTransportRead_12053;
        a1[4] = _NetTransportWriteV_12052;
        return v13;
      }
    }
  }

  else
  {
    v13 = 4294960596;
  }

  _NetTransportFinalize_12051(v10);
  return v13;
}

uint64_t CreateUsableInterfaceList(const char *a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v6 = socket(30, 2, 0);
  if (v6 < 0 && *__error())
  {
    __error();
  }

  if (getifaddrs(&v26))
  {
    if (!*__error())
    {
      v7 = 4294960596;
      goto LABEL_56;
    }

    v7 = *__error();
    if (v7)
    {
      goto LABEL_56;
    }
  }

  v8 = v26;
  if (v26)
  {
    v9 = &v25;
    while (1)
    {
      if (v8->ifa_flags)
      {
        ifa_addr = v8->ifa_addr;
        if (ifa_addr)
        {
          ifa_name = v8->ifa_name;
          if (ifa_name)
          {
            sa_family = ifa_addr->sa_family;
            v13 = sa_family == 30 || sa_family == 2;
            if (v13 && (!a2 || sa_family == a2) && (sa_family != 2 || *&ifa_addr->sa_data[2]) && (!a1 || !strcmp(ifa_name, a1)))
            {
              if (v6 < 0 || sa_family != 30)
              {
LABEL_33:
                if (a3)
                {
                  v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x10B0040815C8216uLL);
                  if (!v17 || (v18 = v17, *v9 = v17, v19 = strdup(v8->ifa_name), (v18[1] = v19) == 0) || ((*(v18 + 4) = v8->ifa_flags, sa_family != 2) ? (v20 = 28) : (v20 = 16), v21 = malloc_type_malloc(v20, 0x1000040451B5BE8uLL), (v18[3] = v21) == 0))
                  {
                    v7 = 4294960568;
                    v23 = v25;
                    goto LABEL_54;
                  }

                  memcpy(v21, v8->ifa_addr, v20);
                  if (sa_family == 30)
                  {
                    v22 = v18[3];
                    if (*(v22 + 8) == 254 && (*(v22 + 9) & 0xC0) == 0x80)
                    {
                      if (!*(v22 + 24))
                      {
                        *(v22 + 24) = __rev16(*(v22 + 10));
                      }

                      *(v22 + 10) = 0;
                    }
                  }

                  v9 = v18;
                }
              }

              else
              {
                for (i = 49; ; --i)
                {
                  memset(v27, 0, sizeof(v27));
                  __strlcpy_chk();
                  v15 = v8->ifa_addr;
                  v16 = *&v15->sa_data[10];
                  v27[1] = *v15;
                  *(&v27[1] + 12) = v16;
                  if (ioctl(v6, 0xC1206949uLL, v27) == -1 && (!*__error() || *__error()))
                  {
                    break;
                  }

                  if ((v27[1] & 0x9C) != 0)
                  {
                    break;
                  }

                  if ((v27[1] & 2) == 0)
                  {
                    goto LABEL_33;
                  }

                  if (!i)
                  {
                    break;
                  }

                  usleep(0x186A0u);
                }
              }
            }
          }
        }
      }

      v8 = v8->ifa_next;
      if (!v8)
      {
        v23 = v25;
        goto LABEL_51;
      }
    }
  }

  v23 = 0;
LABEL_51:
  v7 = 0;
  if (a3)
  {
    *a3 = v23;
  }

  else
  {
LABEL_54:
    if (v23)
    {
      ReleaseUsableInterfaceList(v23);
    }
  }

LABEL_56:
  if (v26)
  {
    MEMORY[0x193B06880]();
  }

  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

  return v7;
}

void ReleaseUsableInterfaceList(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v3 = *v1;
      v2 = v1[1];
      if (v2)
      {
        free(v2);
        v1[1] = 0;
      }

      v4 = v1[3];
      if (v4)
      {
        free(v4);
        v1[3] = 0;
      }

      v5 = v1[4];
      if (v5)
      {
        free(v5);
        v1[4] = 0;
      }

      v6 = v1[5];
      if (v6)
      {
        free(v6);
        v1[5] = 0;
      }

      v7 = v1[6];
      if (v7)
      {
        free(v7);
      }

      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

_DWORD *CUDispatchSocketAllocate(int *a1)
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0x10E00406CD77940uLL);
  if (result)
  {
    v3 = 0;
    *result = -1;
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    v3 = -6728;
    if (!a1)
    {
      return result;
    }
  }

  *a1 = v3;
  return result;
}

void CUDispatchSocketCancelAll(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      dispatch_source_cancel(v2);
      if (*(a1 + 16) == 1)
      {
        *(a1 + 16) = 0;
        dispatch_resume(a1[1]);
      }
    }

    v3 = a1[3];
    if (v3)
    {
      dispatch_source_cancel(v3);
      if (*(a1 + 32) == 1)
      {
        *(a1 + 32) = 0;
        dispatch_resume(a1[3]);
      }
    }

    _CUDispatchSocketCleanupIfDone(a1);
  }
}

void _CUDispatchSocketCleanupIfDone(void *a1)
{
  if (!a1[1] && !a1[3])
  {
    v2 = *a1;
    if ((v2 & 0x80000000) == 0)
    {
      if (close(v2) && *__error())
      {
        __error();
      }

      *a1 = -1;
    }

    v3 = a1[6];
    if (v3)
    {
      v3(a1);
    }

    a1[6] = 0;
    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void CUDispatchSocketReadCanceled(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      dispatch_release(v2);
      a1[1] = 0;
    }

    _CUDispatchSocketCleanupIfDone(a1);
  }
}

void CUDispatchSocketWriteCanceled(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      dispatch_release(v2);
      a1[3] = 0;
    }

    _CUDispatchSocketCleanupIfDone(a1);
  }
}

__CFArray *CUCopyMACAddresses(uint64_t a1, int *a2)
{
  v9 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v4 = -6728;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_20;
  }

  if (!getifaddrs(&v9))
  {
    goto LABEL_5;
  }

  if (!*__error())
  {
    v4 = -6700;
    goto LABEL_14;
  }

  v4 = *__error();
  if (!v4)
  {
LABEL_5:
    v5 = v9;
    if (!v9)
    {
      v4 = 0;
      goto LABEL_19;
    }

    while (1)
    {
      if (v5->ifa_flags)
      {
        ifa_addr = v5->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18 && ifa_addr->sa_data[4] == 6)
          {
            appended = CFArrayAppendBytes(Mutable, &ifa_addr->sa_data[ifa_addr->sa_data[3] + 6], 6);
            if (appended)
            {
              break;
            }
          }
        }
      }

      v5 = v5->ifa_next;
      if (!v5)
      {
        v4 = 0;
        goto LABEL_15;
      }
    }

    v4 = appended;
  }

LABEL_14:
  CFRelease(Mutable);
  Mutable = 0;
LABEL_15:
  if (v9)
  {
    MEMORY[0x193B06880]();
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (a2)
  {
LABEL_20:
    *a2 = v4;
  }

  return Mutable;
}

uint64_t CUGetInterfaceAddresses(char a1, const char *a2, sockaddr *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3 != 0;
  v11 = a4 != 0;
  v12 = a5 != 0;
  v23 = 0;
  if (getifaddrs(&v23))
  {
    if (!*__error())
    {
      v13 = 4294960596;
      goto LABEL_43;
    }

    v13 = *__error();
    if (v13)
    {
      goto LABEL_43;
    }
  }

  for (i = v23; i; i = i->ifa_next)
  {
    if ((i->ifa_flags & 1) == 0)
    {
      continue;
    }

    ifa_addr = i->ifa_addr;
    if (!ifa_addr)
    {
      continue;
    }

    ifa_name = i->ifa_name;
    if (!ifa_name || strcmp(ifa_name, a2))
    {
      continue;
    }

    sa_family = ifa_addr->sa_family;
    switch(sa_family)
    {
      case 30:
        if (!v11)
        {
          v11 = 0;
          continue;
        }

        if ((a1 & 1) != 0 && (ifa_addr->sa_data[6] != 254 || (ifa_addr->sa_data[7] & 0xC0) != 0x80))
        {
          v11 = 1;
          continue;
        }

        v11 = 0;
        v20 = *ifa_addr;
        v21 = *&ifa_addr[1].sa_len;
        *(a4 + 24) = *&ifa_addr[1].sa_data[6];
        *(a4 + 16) = v21;
        *a4 = v20;
        break;
      case 18:
        if (!v12)
        {
          v12 = 0;
          continue;
        }

        if (ifa_addr->sa_data[4] != 6)
        {
          v12 = 1;
          continue;
        }

        v12 = 0;
        v18 = &ifa_addr->sa_len + ifa_addr->sa_data[3];
        v19 = *(v18 + 2);
        *(a5 + 4) = *(v18 + 6);
        *a5 = v19;
        break;
      case 2:
        if (!v10)
        {
          v10 = 0;
          continue;
        }

        if ((a1 & 2) != 0 && ifa_addr->sa_data[2] == 169 && ifa_addr->sa_data[3] == 254)
        {
          v10 = 1;
          continue;
        }

        v10 = 0;
        *a3 = *ifa_addr;
        break;
    }

    if (!v10 && !v11 && !v12)
    {
      v12 = 0;
      v11 = 0;
LABEL_40:
      if (v11 || v12)
      {
        v13 = 4294960569;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_43;
    }
  }

  if (!v10)
  {
    goto LABEL_40;
  }

  v13 = 4294960569;
LABEL_43:
  if (v23)
  {
    MEMORY[0x193B06880]();
  }

  return v13;
}

__int128 *SockAddrCopy(__int128 *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (*(result + 1))
  {
    if (v2 == 30)
    {
      v3 = *result;
      v4 = *(result + 2);
      *(a2 + 24) = *(result + 6);
      *(a2 + 16) = v4;
    }

    else
    {
      if (v2 != 2)
      {
        return result;
      }

      v3 = *result;
    }

    *a2 = v3;
  }

  else
  {
    *(a2 + 1) = 0;
  }

  return result;
}

uint64_t DrainUDPSocket(int a1, int a2, _DWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17.tv_sec = 0;
  *&v17.tv_usec = 0;
  *&v14.sa_len = 0;
  *&v14.sa_data[6] = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v6 = mach_absolute_time();
  v7 = 0;
  v8 = MillisecondsToUpTicks(a2) + v6;
  v9 = a2 / 1000;
  memset(&v18, 0, sizeof(v18));
  v10 = 1000 * (a2 % 1000);
  v11 = v9;
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a1, &v18, 0))
    {
      v18.fds_bits[a1 >> 5] |= 1 << a1;
    }

    v17.tv_sec = v11;
    v17.tv_usec = v10;
    result = select(a1 + 1, &v18, 0, 0, &v17);
    if (result == 1)
    {
      goto LABEL_8;
    }

    if (!result)
    {
      goto LABEL_13;
    }

    if (!*__error())
    {
      break;
    }

    result = *__error();
    if (result)
    {
      goto LABEL_13;
    }

LABEL_8:
    v13 = 28;
    if (recvfrom(a1, v19, 0x20uLL, 0, &v14, &v13) < 0)
    {
      if (!*__error())
      {
        break;
      }

      result = *__error();
      if (result)
      {
        goto LABEL_13;
      }
    }

    ++v7;
    if (mach_absolute_time() >= v8)
    {
      result = 0;
LABEL_13:
      if (!a3)
      {
        return result;
      }

LABEL_14:
      *a3 = v7;
      return result;
    }
  }

  result = 4294960596;
  if (a3)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t GetPrimaryMACAddress(char *a1, int *a2)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = &v12;
  }

  *(v3 + 2) = 0;
  *v3 = 0;
  v13 = 0;
  GestaltGetData(@"EthernetMacAddress", 0, v3, 6uLL, 0, &v13);
  v4 = v13;
  if (v13)
  {
    GestaltGetData(@"WifiAddressData", 0, v3, 6uLL, 0, &v13);
    v4 = v13;
    if (v13)
    {
      GestaltGetData(@"WifiAddress", 0, v3, 6uLL, 0, &v13);
      v4 = v13;
    }
  }

  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  if (a2)
  {
    *a2 = v4;
  }

  return (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8) | v10;
}

uint64_t OpenSelfConnectedLoopbackSocket(int *a1)
{
  v8 = 0;
  v7 = 0;
  v5 = 0;
  v2 = socket(2, 2, 17);
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  v3 = *__error();
  if (!v3)
  {
LABEL_2:
    *&v6.sa_len = 512;
    *&v6.sa_data[6] = 0;
    *&v6.sa_data[2] = 16777343;
    if (bind(v2, &v6, 0x10u))
    {
      if (!*__error())
      {
        goto LABEL_15;
      }

      v3 = *__error();
      if (v3)
      {
        goto LABEL_16;
      }
    }

    v5 = 28;
    if (!getsockname(v2, &v6, &v5))
    {
      goto LABEL_8;
    }

    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
LABEL_8:
        if (!connect(v2, &v6, v5))
        {
LABEL_11:
          v3 = 0;
          *a1 = v2;
          return v3;
        }

        if (*__error())
        {
          v3 = *__error();
          if (!v3)
          {
            goto LABEL_11;
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_16:
      if ((v2 & 0x80000000) == 0 && close(v2) && *__error())
      {
        __error();
      }

      return v3;
    }

LABEL_15:
    v3 = 4294960596;
    goto LABEL_16;
  }

  return v3;
}

uint64_t SendSelfConnectedLoopbackMessage(int a1, const void *a2, size_t a3)
{
  *&v8.sa_len = 0;
  *&v8.sa_data[6] = 0;
  v10 = 0;
  v9 = 0;
  v7 = 28;
  if (getsockname(a1, &v8, &v7))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  if (sendto(a1, a2, a3, 0, &v8, 0x10u) == a3)
  {
    return 0;
  }

  if (*__error())
  {
    result = *__error();
    if (result != 56)
    {
      return result;
    }

    if (send(a1, a2, a3, 0) == a3)
    {
      return 0;
    }

    if (*__error())
    {
      return *__error();
    }
  }

  return 4294960596;
}

uint64_t SocketSetP2P(int a1, int a2)
{
  v3 = a2;
  result = setsockopt(a1, 0xFFFF, 4356, &v3, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t SockAddrGetPort(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(a1 + 2)) >> 16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t UDPClientSocketOpen(int a1, __int128 *a2, signed int a3, int a4, unsigned int *a5, int *a6)
{
  sa_family = a1;
  *&v29.sa_len = 0;
  *&v29.sa_data[6] = 0;
  v31 = 0;
  v30 = 0;
  if (a2)
  {
    v12 = SockAddrSimplify(a2, &v29);
    if (v12)
    {
      return v12;
    }

    v13 = &v29.sa_data[6];
    p_sa_family = &v29.sa_family;
    v24 = &v29.sa_data[2];
    if (!sa_family)
    {
      sa_family = v29.sa_family;
    }
  }

  else
  {
    if (!a1)
    {
      return 4294960591;
    }

    p_sa_family = 1;
    v24 = 4;
    v13 = 8;
  }

  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v26 = 0;
  v15 = socket(sa_family, 2, 17);
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  v12 = *__error();
  if (!v12)
  {
LABEL_8:
    v25 = 1;
    setsockopt(v15, 0xFFFF, 4130, &v25, 4u);
    SocketSetNonBlocking(v15, 1);
    if (a4 == -1)
    {
      if (!a2)
      {
        goto LABEL_56;
      }

      goto LABEL_20;
    }

    if (a4 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = -a4;
    }

    if (sa_family == 30)
    {
      v17 = &v28;
      *v27 = 7708;
      *&v27[2] = bswap32(v16) >> 16;
      *&v27[4] = 0;
      *&v27[8] = *MEMORY[0x1E69E99B8];
      v18 = 28;
    }

    else
    {
      if (sa_family != 2)
      {
        v12 = 4294960561;
        goto LABEL_64;
      }

      v17 = &v27[4];
      *&v27[8] = 0;
      *v27 = 528;
      *&v27[2] = bswap32(v16) >> 16;
      v18 = 16;
    }

    *v17 = 0;
    v26 = v18;
    if (bind(v15, v27, v18))
    {
      if (*__error())
      {
        v12 = *__error();
        if ((a4 & 0x80000000) == 0)
        {
LABEL_49:
          if (v12)
          {
            goto LABEL_64;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v12 = 4294960596;
        if ((a4 & 0x80000000) == 0)
        {
          goto LABEL_49;
        }
      }

      if (!v12)
      {
        goto LABEL_49;
      }

      if (v27[1] == 30 || v27[1] == 2)
      {
        *&v27[2] = 0;
      }

      if (bind(v15, v27, v18))
      {
        if (!*__error())
        {
          goto LABEL_63;
        }

        v12 = *__error();
        goto LABEL_49;
      }
    }

LABEL_50:
    if (!a2)
    {
      goto LABEL_56;
    }

    v21 = *p_sa_family;
    if (v21 == 30)
    {
      if (*v13 == 255)
      {
        goto LABEL_56;
      }
    }

    else if (v21 == 2 && (*v24 & 0xF0) == 0xE0)
    {
      goto LABEL_56;
    }

LABEL_20:
    if (a3 >= 1 && (v29.sa_family == 30 || v29.sa_family == 2))
    {
      *v29.sa_data = bswap32(a3) >> 16;
    }

    if (v29.sa_family == 30)
    {
      v19 = 28;
    }

    else
    {
      v19 = 0;
    }

    if (v29.sa_family == 2)
    {
      v20 = 16;
    }

    else
    {
      v20 = v19;
    }

    if (!connect(v15, &v29, v20))
    {
LABEL_56:
      if (!a5)
      {
LABEL_70:
        v12 = 0;
        *a6 = v15;
        return v12;
      }

      v26 = 28;
      if (!getsockname(v15, v27, &v26))
      {
LABEL_60:
        if (v27[1] == 30 || v27[1] == 2)
        {
          v22 = bswap32(*&v27[2]) >> 16;
        }

        else
        {
          v22 = -1;
        }

        *a5 = v22;
        goto LABEL_70;
      }

      if (*__error())
      {
        v12 = *__error();
        if (!v12)
        {
          goto LABEL_60;
        }

        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (*__error())
    {
      v12 = *__error();
      if (!v12)
      {
        goto LABEL_56;
      }

LABEL_64:
      if ((v15 & 0x80000000) == 0 && close(v15) && *__error())
      {
        __error();
      }

      return v12;
    }

LABEL_63:
    v12 = 4294960596;
    goto LABEL_64;
  }

  return v12;
}

uint64_t SockAddrSimplify(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 == 30)
  {
    v5 = *(a1 + 2);
    if (v5)
    {
      if ((*(a1 + 2) & 0xC0FF) == 0x80FE)
      {
        v3 = 0;
        v6 = *(a1 + 12);
        v7 = (v5 >> 8) & 0xFF00 | HIBYTE(v5);
        v8 = *(a1 + 5);
        if (*(a1 + 6))
        {
          v7 = *(a1 + 6);
        }

        v9 = *(a1 + 4);
        *a2 = *a1;
        *(a2 + 8) = v9;
        *(a2 + 12) = v6;
        *(a2 + 20) = v8;
        *(a2 + 24) = v7;
        return v3;
      }

LABEL_12:
      if (a1 != a2)
      {
        v3 = 0;
        v4 = *a1;
        v10 = *(a1 + 2);
        *(a2 + 24) = *(a1 + 6);
        *(a2 + 16) = v10;
        goto LABEL_14;
      }

      return 0;
    }

    if (*(a1 + 3))
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 4);
    if (v12)
    {
      if (v12 != -65536)
      {
        goto LABEL_12;
      }

      v13 = *(a1 + 5);
    }

    else
    {
      v13 = *(a1 + 5);
      if ((v13 | 0x1000000) == 0x1000000)
      {
        goto LABEL_12;
      }
    }

    v3 = 0;
    v14 = *(a1 + 1);
    *(a2 + 8) = 0;
    *a2 = 528;
    *(a2 + 2) = v14;
    *(a2 + 4) = v13;
    return v3;
  }

  if (v2 == 2)
  {
    if (a1 != a2)
    {
      v3 = 0;
      v4 = *a1;
LABEL_14:
      *a2 = v4;
      return v3;
    }

    return 0;
  }

  return 4294960561;
}

uint64_t SockAddrSetPort(uint64_t result, unsigned int a2)
{
  v2 = *(result + 1);
  if (v2 == 30 || v2 == 2)
  {
    *(result + 2) = bswap32(a2) >> 16;
  }

  return result;
}

uint64_t SockAddrGetSize(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t NetSocket_Create(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B0040AF8E8938uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  *v2 = -2441908381;
  *(v2 + 12) = -1;
  if (!pipe(&v8))
  {
    goto LABEL_5;
  }

  if (!*__error())
  {
    v4 = 4294960596;
    goto LABEL_7;
  }

  v4 = *__error();
  if (v4)
  {
LABEL_7:
    NetSocket_Delete(v3);
    return v4;
  }

LABEL_5:
  v6 = v8;
  v5 = v9;
  *(v3 + 3) = v9;
  *(v3 + 4) = v6;
  SocketSetNonBlocking(v5, 1);
  SocketSetNonBlocking(*(v3 + 4), 1);
  v4 = 0;
  v3[3] = NetSocket_ReadInternal;
  v3[4] = NetSocket_WriteInternal;
  v3[5] = NetSocket_WriteVInternal;
  v3[6] = NetSocket_WriteFileSlow;
  *a1 = v3;
  return v4;
}

uint64_t NetSocket_Delete(void *a1)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  v2 = a1[7];
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(a1 + 1) = -1;
  }

  v4 = *(a1 + 3);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(a1 + 3) = -1;
  }

  v5 = *(a1 + 4);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(a1 + 4) = -1;
  }

  v6 = a1[10];
  if (v6)
  {
    free(v6);
  }

  free(a1);
  return 0;
}

uint64_t NetSocket_WriteFileSlow(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, off_t a7, uint64_t a8, unsigned int a9)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 112))
  {
    v16 = *(a1 + 112);
  }

  else
  {
    v16 = &gLogCategory_NetSocket;
  }

  mach_absolute_time();
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  v46 = SecondsToUpTicks_sMultiplier;
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  if (*a1 != 1853058915)
  {
    v19 = 0;
    v35 = 4294960556;
    goto LABEL_52;
  }

  if (*(a1 + 8))
  {
    v19 = 0;
    v35 = 4294960573;
    goto LABEL_52;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    v19 = 0;
    v35 = 4294960551;
    goto LABEL_52;
  }

  if (lseek(a6, a7, 0) == -1)
  {
    if (!*__error())
    {
      v19 = 0;
      v35 = 4294960596;
      goto LABEL_52;
    }

    v35 = *__error();
    if (v35)
    {
      goto LABEL_40;
    }
  }

  if (a8 >= 1)
  {
    v43 = a4;
    v17 = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
    if (!v17)
    {
      v19 = 0;
      v35 = 4294960568;
      goto LABEL_52;
    }

    v18 = v17;
    v42 = a5;
    v45 = v16;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    while (1)
    {
      v22 = a8 >= 0x100000 ? 0x100000 : a8;
      v23 = read(a6, v18, v22);
      v24 = v23;
      if (v23 < 1)
      {
        break;
      }

      if (v21)
      {
        if (a3 < 1)
        {
          v25 = 0;
        }

        else
        {
          memcpy(__dst, a2, 16 * a3);
          v25 = a3;
        }

        v27 = &__dst[v25];
        *v27 = v18;
        v27[1] = v24;
        v26 = (*(a1 + 40))(a1, __dst, (v25 + 1), a9);
        if (v26)
        {
LABEL_44:
          v35 = v26;
LABEL_50:
          v16 = v45;
          goto LABEL_51;
        }
      }

      else
      {
        v26 = (*(a1 + 32))(a1, v18, v23, a9);
        if (v26)
        {
          goto LABEL_44;
        }
      }

      v19 += v24;
      v28 = mach_absolute_time();
      if (v28 >= v20)
      {
        v33 = v28;
        if (*v45 <= 40 && (*v45 != -1 || _LogCategory_Initialize(v45, 0x28u)))
        {
          LogPrintF(v45, "OSStatus NetSocket_WriteFileSlow(NetSocketRef, iovec_t *, int, iovec_t *, int, FDRef, int64_t, int64_t, int32_t)", 0x28u, "Wrote %10lld of %10lld, %6.2f%%, %6.2f Mbit/sec\n", v29, v30, v31, v32, v19);
        }

        v20 = v33 + v46;
      }

      v21 = 0;
      v34 = a8 <= v24;
      a8 -= v24;
      if (v34)
      {
        v16 = v45;
        goto LABEL_47;
      }
    }

    if (!v23)
    {
      v35 = 4294960546;
      goto LABEL_50;
    }

    v16 = v45;
    if (*__error())
    {
      v35 = *__error();
    }

    else
    {
      v35 = 4294960596;
    }

    goto LABEL_51;
  }

  v36 = (*(a1 + 40))(a1, a2, a3, a9);
  if (v36)
  {
    v35 = v36;
LABEL_40:
    v19 = 0;
    goto LABEL_52;
  }

  v43 = a4;
  v42 = a5;
  v18 = 0;
  v19 = 0;
LABEL_47:
  v35 = (*(a1 + 40))(a1, v43, v42, a9);
  if (v18)
  {
LABEL_51:
    free(v18);
  }

LABEL_52:
  mach_absolute_time();
  if (*v16 <= 40 && (*v16 != -1 || _LogCategory_Initialize(v16, 0x28u)))
  {
    LogPrintF(v16, "OSStatus NetSocket_WriteFileSlow(NetSocketRef, iovec_t *, int, iovec_t *, int, FDRef, int64_t, int64_t, int32_t)", 0x28u, "Wrote %lld of %lld, %6.2f Mbit/sec: %#m\n", v37, v38, v39, v40, v19);
  }

  return v35;
}

uint64_t NetSocket_Wait(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  v5 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0;
  v16 = 0;
  memset(&v25, 0, sizeof(v25));
  v8 = *(a1 + 16);
  if (__darwin_check_fd_set_overflow(v8, &v25, 0))
  {
    *(v25.fds_bits + ((v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v8;
  }

  if (a3 == 2)
  {
    if (__darwin_check_fd_set_overflow(v5, &v25, 0))
    {
      v25.fds_bits[v5 >> 5] |= 1 << v5;
    }
  }

  else if (a3 != 1)
  {
    if (a3)
    {
      return 4294960591;
    }

    v9 = &v25;
    v10 = 0;
    if (!__darwin_check_fd_set_overflow(v5, &v25, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = &v17;
  v10 = &v17;
  if (__darwin_check_fd_set_overflow(v5, &v17, 0))
  {
LABEL_15:
    v9->fds_bits[v5 >> 5] |= 1 << v5;
  }

LABEL_16:
  if ((a4 & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v15 = a4;
    LODWORD(v16) = 0;
    v11 = &v15;
  }

  if (*(a1 + 16) > v5)
  {
    v5 = *(a1 + 16);
  }

  while (1)
  {
    v12 = select(v5 + 1, &v25, v10, 0, v11);
    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      return result;
    }
  }

  if (!v12)
  {
    return 4294960574;
  }

  v14 = *(a1 + 16);
  if (__darwin_check_fd_set_overflow(v14, &v25, 0) && ((*(v25.fds_bits + ((v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v14) & 1) != 0)
  {
    return 4294960573;
  }

  return 0;
}

uint64_t NetSocket_WriteInternal(uint64_t a1, char *__buf, size_t __nbyte, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v5 = __nbyte;
  while (v5)
  {
    v8 = write(*(a1 + 4), __buf, v5);
    if (v8 < 1)
    {
      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result != 4)
      {
        if (result != 35)
        {
          return result;
        }

        result = NetSocket_Wait(a1, *(a1 + 4), 1, a4);
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      __buf += v8;
      v5 -= v8;
    }
  }

  return 0;
}

uint64_t NetSocket_ReadInternal(uint64_t a1, size_t a2, uint64_t a3, char *__dst, size_t *a5, int a6, unsigned int a7)
{
  if (a1 && *a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      v16 = 0;
      result = 4294960573;
    }

    else if ((*(a1 + 4) & 0x80000000) != 0)
    {
      v16 = 0;
      result = 4294960551;
    }

    else
    {
      v11 = __dst;
      v12 = a3;
      v14 = *(a1 + 64);
      v15 = *(a1 + 72) - v14;
      if (v15 < 1)
      {
        v16 = 0;
      }

      else
      {
        if (v15 >= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *(a1 + 72) - v14;
        }

        memcpy(__dst, v14, v16);
        *(a1 + 64) += v16;
        v11 += v16;
        v12 -= v16;
      }

      if (v12 >= 1)
      {
        while (1)
        {
          v17 = recv(*(a1 + 4), v11, v12, a6);
          if (v17 >= 1)
          {
            break;
          }

          if (!v17)
          {
            if (v16 >= a2)
            {
              result = 0;
            }

            else
            {
              result = 4294960543;
            }

            goto LABEL_27;
          }

          if (!*__error())
          {
            result = 4294960596;
            goto LABEL_27;
          }

          result = *__error();
          if (result != 4)
          {
            if (result != 35)
            {
              goto LABEL_27;
            }

            if (v16 >= a2)
            {
              goto LABEL_22;
            }

            result = NetSocket_Wait(a1, *(a1 + 4), 0, a7);
            if (result)
            {
              goto LABEL_27;
            }

LABEL_21:
            if (v12 <= 0)
            {
              goto LABEL_22;
            }
          }
        }

        v11 += v17;
        v12 -= v17;
        v16 += v17;
        goto LABEL_21;
      }

LABEL_22:
      result = 0;
    }
  }

  else
  {
    v16 = 0;
    result = 4294960556;
  }

LABEL_27:
  if (a5)
  {
    *a5 = v16;
  }

  return result;
}

uint64_t NetSocket_CreateWithNative(void *a1, int a2)
{
  if (a2 < 0)
  {
    return 4294960591;
  }

  v6 = 0;
  result = NetSocket_Create(&v6);
  if (!result)
  {
    v5 = v6;
    *(v6 + 4) = a2;
    *a1 = v5;
  }

  return result;
}

uint64_t NetSocket_GetNative(_DWORD *a1)
{
  if (a1 && *a1 == 1853058915)
  {
    return a1[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t NetSocket_Cancel(uint64_t a1)
{
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  *(a1 + 8) = 1;
  if (write(*(a1 + 12), "Q", 1uLL) == 1)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t NetSocket_Reset(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  v2 = 99;
    ;
  }

  result = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t NetSocket_TCPConnect(uint64_t a1, _BYTE *a2, unsigned int a3, unsigned int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  v5 = a2;
  if (!*a2)
  {
    return 4294960543;
  }

  v21 = bswap32(a3) >> 16;
  while (1)
  {
    *&v25.sa_len = 0;
    *&v25.sa_data[6] = 0;
    v27 = 0;
    v26 = 0;
    v8 = v5;
    v24 = 0;
    while (*v8 && *v8 != 44)
    {
      ++v8;
    }

    if ((v8 - v5) > 0x10F)
    {
      return 4294960553;
    }

    __memcpy_chk();
    v29[v8 - v5] = 0;
    v5 = *v8 ? v8 + 1 : v8;
    if (StringToSockAddr(v29, &v25, 0x1CuLL, &v24))
    {
      break;
    }

    v10 = socket(v25.sa_family, 1, 6);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v10;
      if ((v25.sa_family == 30 || v25.sa_family == 2) && !*v25.sa_data && (v25.sa_family == 30 || v25.sa_family == 2))
      {
        *v25.sa_data = v21;
      }

      v12 = _NetSocket_Connect(a1, v10, &v25, a4);
      if (!v12)
      {
        return 0;
      }

      v13 = v12;
      close(v11);
      result = 4294960573;
      if (v13 == -6723)
      {
        return result;
      }
    }

LABEL_39:
    if (!*v5)
    {
      return 4294960543;
    }
  }

  for (i = v29; *i; ++i)
  {
    if (*i == 58)
    {
      *i = 0;
      v15 = strtoul(i + 1, 0, 10);
      if (v15)
      {
        goto LABEL_31;
      }

      break;
    }
  }

  v15 = a3;
LABEL_31:
  if (v15 < 1)
  {
    goto LABEL_39;
  }

  memset(&v23, 0, sizeof(v23));
  v22 = 0;
  snprintf(__str, 0x20uLL, "%u", v15);
  memset(&v23, 0, sizeof(v23));
  v23.ai_socktype = 1;
  if (getaddrinfo(v29, __str, &v23, &v22))
  {
    goto LABEL_39;
  }

  v16 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v17 = socket(v16->ai_family, v16->ai_socktype, v16->ai_protocol);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v17;
      v19 = _NetSocket_Connect(a1, v17, v16->ai_addr, a4);
      if (!v19)
      {
        freeaddrinfo(v22);
        return 0;
      }

      v20 = v19;
      close(v18);
      if (v20 == -6723)
      {
        break;
      }
    }

    v16 = v16->ai_next;
    if (!v16)
    {
      freeaddrinfo(v22);
      goto LABEL_39;
    }
  }

  freeaddrinfo(v22);
  return 4294960573;
}

uint64_t _NetSocket_Connect(uint64_t a1, unsigned int a2, const sockaddr *a3, unsigned int a4)
{
  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  v16 = v4;
  v17 = v5;
  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) == 0)
  {
    return 4294960575;
  }

  result = SocketSetNonBlocking(a2, 1);
  if (!result)
  {
    *v15 = 0;
    sa_family = a3->sa_family;
    v12 = sa_family == 30 ? 28 : 0;
    v13 = sa_family == 2 ? 16 : v12;
    if (!connect(a2, a3, v13) || (result = NetSocket_Wait(a1, a2, 2, a4), !result) && ((v15[0] = 4, v15[1] = 0, LODWORD(result) = getsockopt(a2, 0xFFFF, 4103, &v15[1], v15), result) ? (result = result) : (result = v15[1]), !result))
    {
      v14 = 1;
      setsockopt(a2, 0xFFFF, 4130, &v14, 4u);
      v15[1] = 1;
      setsockopt(a2, 6, 1, &v15[1], 4u);
      result = 0;
      *(a1 + 4) = a2;
    }
  }

  return result;
}

uint64_t NetSocket_Disconnect(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v5 = 4294960591;
    goto LABEL_21;
  }

  if (*(a1 + 8))
  {
    v5 = 4294960573;
    goto LABEL_21;
  }

  v4 = *(a1 + 4);
  if (v4 < 0)
  {
    v5 = 4294960551;
    goto LABEL_21;
  }

  if (!shutdown(v4, 1))
  {
    goto LABEL_9;
  }

  if (*__error())
  {
    v5 = *__error();
    if (!v5)
    {
LABEL_9:
      v6 = mach_absolute_time();
      v7 = UpTicksToMicroseconds(v6) + 1000000 * a2;
      while (1)
      {
        v8 = recv(*(a1 + 4), v13, 0x20uLL, 0);
        if (v8 > 0)
        {
          goto LABEL_16;
        }

        if (!v8)
        {
          v5 = 0;
          break;
        }

        if (!*__error())
        {
          goto LABEL_18;
        }

        v5 = *__error();
        if (v5 != 4)
        {
          if (v5 != 35)
          {
            break;
          }

          v9 = NetSocket_Wait(a1, *(a1 + 4), 0, a2);
          if (v9)
          {
            v5 = v9;
            break;
          }

LABEL_16:
          v10 = mach_absolute_time();
          if (UpTicksToMicroseconds(v10) > v7)
          {
            v5 = 4294960574;
            break;
          }
        }
      }
    }
  }

  else
  {
LABEL_18:
    v5 = 4294960596;
  }

LABEL_21:
  v11 = *(a1 + 4);
  if ((v11 & 0x80000000) == 0)
  {
    if (close(v11) && *__error())
    {
      __error();
    }

    *(a1 + 4) = -1;
  }

  return v5;
}

uint64_t NetSocket_WriteVSlow(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (a3 < 1)
  {
    return 0;
  }

  v6 = a2;
  v7 = &a2[2 * a3];
  while (1)
  {
    result = (*(a1 + 32))(a1, *v6, v6[1], a4);
    if (result)
    {
      break;
    }

    v6 += 2;
    if (v6 >= v7)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NetSocket_ReadFile(uint64_t a1, uint64_t a2, int a3, off_t a4, uint64_t a5)
{
  v8 = a2;
  if (a2 >= 0x400000)
  {
    v10 = 0x400000;
  }

  else
  {
    v10 = a2;
  }

  __nbyte = v10;
  if (v10 > *(a1 + 88))
  {
    v11 = *(a1 + 80);
    if (v11)
    {
      free(v11);
      *(a1 + 80) = 0;
    }

    v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
    *(a1 + 80) = v12;
    if (!v12)
    {
      v20 = 4294960568;
      goto LABEL_27;
    }

    *(a1 + 88) = v10;
  }

  if (lseek(a3, a4, 0) != -1)
  {
    goto LABEL_10;
  }

  if (*__error())
  {
    v20 = *__error();
    if (!v20)
    {
      while (1)
      {
LABEL_10:
        if (v8 < 1)
        {
          v20 = 0;
          goto LABEL_27;
        }

        v13 = *(a1 + 80);
        if (v8 >= *(a1 + 88))
        {
          v14 = *(a1 + 88);
        }

        else
        {
          v14 = v8;
        }

        __nbyte = v14;
        v15 = (*(a1 + 24))(a1, v14, v14, v13, &__nbyte, 0, a5);
        if (v15)
        {
          v20 = v15;
          goto LABEL_27;
        }

        v16 = __nbyte;
        if (__nbyte)
        {
          break;
        }

LABEL_21:
        v8 -= v16;
      }

      v17 = *(a1 + 80);
      v18 = __nbyte;
      while (1)
      {
        v19 = write(a3, v17, v18);
        if (v19 <= 0)
        {
          if (!*__error())
          {
            goto LABEL_25;
          }

          v20 = *__error();
          if (v20)
          {
            break;
          }
        }

        v17 += v19;
        v18 = __nbyte - v19;
        __nbyte -= v19;
        if (!__nbyte)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
LABEL_25:
    v20 = 4294960596;
  }

LABEL_27:
  if (*(a1 + 88) > 0x100000uLL)
  {
    v21 = *(a1 + 80);
    if (v21)
    {
      free(v21);
      *(a1 + 80) = 0;
    }

    *(a1 + 88) = 0;
  }

  return v20;
}

uint64_t TCPConnect(_BYTE *a1, char *__str, int a3, int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (__str)
  {
    v7 = strtoul(__str, 0, 10);
  }

  else
  {
    v7 = 0;
  }

  if (!*a1)
  {
    return 4294960543;
  }

  v8 = bswap32(v7) >> 16;
  while (1)
  {
    *&v20.sa_len = 0;
    *&v20.sa_data[6] = 0;
    v22 = 0;
    v21 = 0;
    v9 = a1;
    v19 = 0;
    while (*v9 && *v9 != 44)
    {
      ++v9;
    }

    if ((v9 - a1) > 0x10F)
    {
      return 4294960553;
    }

    __memcpy_chk();
    v24[v9 - a1] = 0;
    if (*v9)
    {
      a1 = v9 + 1;
    }

    else
    {
      a1 = v9;
    }

    if (StringToSockAddr(v24, &v20, 0x1CuLL, &v19))
    {
      for (i = v24; *i; ++i)
      {
        if (*i == 58)
        {
          *i = 0;
          v13 = strtoul(i + 1, 0, 10);
          if (v13)
          {
            goto LABEL_30;
          }

          break;
        }
      }

      v13 = v7;
LABEL_30:
      if (v13 >= 1)
      {
        memset(&v18, 0, sizeof(v18));
        v17 = 0;
        snprintf(__stra, 0x20uLL, "%u", v13);
        memset(&v18, 0, sizeof(v18));
        v18.ai_socktype = 1;
        if (!getaddrinfo(v24, __stra, &v18, &v17))
        {
          v14 = v17;
          if (v17)
          {
            while (1)
            {
              v15 = socket(v14->ai_family, v14->ai_socktype, v14->ai_protocol);
              if ((v15 & 0x80000000) == 0)
              {
                v12 = v15;
                if (!SocketConnect(v15, v14->ai_addr, a3))
                {
                  freeaddrinfo(v17);
                  goto LABEL_41;
                }

                close(v12);
              }

              v14 = v14->ai_next;
              if (!v14)
              {
                freeaddrinfo(v17);
                break;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = socket(v20.sa_family, 1, 6);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = v11;
        if ((v20.sa_family == 30 || v20.sa_family == 2) && !*v20.sa_data && (v20.sa_family == 30 || v20.sa_family == 2))
        {
          *v20.sa_data = v8;
        }

        if (!SocketConnect(v11, &v20, a3))
        {
LABEL_41:
          result = 0;
          *a4 = v12;
          return result;
        }

        close(v12);
      }
    }

    if (!*a1)
    {
      return 4294960543;
    }
  }
}

uint64_t SocketConnect(int a1, const sockaddr *a2, int a3)
{
  result = SocketSetNonBlocking(a1, 1);
  if (result)
  {
    return result;
  }

  *&v14.tv_usec = 0;
  v11 = 1;
  setsockopt(a1, 0xFFFF, 4130, &v11, 4u);
  v13 = 1;
  setsockopt(a1, 6, 1, &v13, 4u);
  sa_family = a2->sa_family;
  v8 = sa_family == 30 ? 28 : 0;
  v9 = sa_family == 2 ? 16 : v8;
  result = connect(a1, a2, v9);
  if (!result)
  {
    return result;
  }

  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  if (__darwin_check_fd_set_overflow(a1, &v16, 0))
  {
    *(v16.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  if (__darwin_check_fd_set_overflow(a1, &v15, 0))
  {
    *(v15.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v14.tv_sec = a3;
  v10 = select(a1 + 1, &v16, &v15, 0, &v14);
  if (v10 <= 0)
  {
    if (!v10)
    {
      return 4294960574;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  if ((!__darwin_check_fd_set_overflow(a1, &v16, 0) || ((*(v16.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a1) & 1) == 0) && (!__darwin_check_fd_set_overflow(a1, &v15, 0) || ((*(v15.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a1) & 1) == 0))
  {
    return 4294960596;
  }

  v12 = 4;
  v13 = 0;
  if (!getsockopt(a1, 0xFFFF, 4103, &v13, &v12))
  {
    return v13;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  result = *__error();
  if (!result)
  {
    return v13;
  }

  return result;
}

uint64_t SocketAccept(int a1, unsigned int a2, int *a3, sockaddr *a4)
{
  v8 = a2;
  SocketSetNonBlocking(a1, 1);
  if ((a2 & 0x80000000) != 0)
  {
    v10 = -1;
  }

  else
  {
    v9 = mach_absolute_time();
    if (SecondsToUpTicks_sOnce != -1)
    {
      dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
    }

    v10 = v9 + SecondsToUpTicks_sMultiplier * v8;
  }

  v21 = 0;
  v22 = 0;
  v20 = 0;
  memset(&v23, 0, sizeof(v23));
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a1, &v23, 0))
    {
      v23.fds_bits[a1 >> 5] |= 1 << a1;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v11 = 0;
    }

    else
    {
      v21 = v8;
      LODWORD(v22) = 0;
      v11 = &v21;
    }

    v12 = select(a1 + 1, &v23, 0, 0, v11);
    if (v12 > 0)
    {
      goto LABEL_16;
    }

    if (!v12)
    {
      return 4294960574;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a4)
    {
      v20 = 28;
      v14 = &v20;
    }

    else
    {
      v14 = 0;
    }

    v15 = accept(a1, a4, v14);
    if ((v15 & 0x80000000) == 0 || *__error() && !*__error())
    {
      v18 = 1;
      setsockopt(v15, 0xFFFF, 4130, &v18, 4u);
      SocketSetNonBlocking(v15, 1);
      v19 = 1;
      setsockopt(v15, 6, 1, &v19, 4u);
      result = 0;
      *a3 = v15;
      return result;
    }

    if ((v8 & 0x80000000) == 0)
    {
      v16 = mach_absolute_time();
      v8 = 0;
      v17 = v10 - v16;
      if (v10 > v16)
      {
        if (UpTicksPerSecond_sOnce != -1)
        {
          dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
        }

        v8 = (v17 / UpTicksPerSecond_sTicksPerSecond);
      }
    }
  }
}

uint64_t SocketCloseGracefully(int a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  v4 = mach_absolute_time();
  memset(&v12, 0, sizeof(v12));
  v5 = UpTicksToMicroseconds(v4) + 1000000 * a2;
  shutdown(a1, 1);
  do
  {
    v6 = mach_absolute_time();
    v7 = UpTicksToMicroseconds(v6);
    v8 = ((v5 - v7) / 0xF4240);
    v9 = (v5 - v7) % 0xF4240;
    if (v5 <= v7)
    {
      v8 = 0;
      v9 = 0;
    }

    v13.tv_sec = v8;
    v13.tv_usec = v9;
    if (__darwin_check_fd_set_overflow(a1, &v12, 0))
    {
      v12.fds_bits[a1 >> 5] |= 1 << a1;
    }

    v10 = select(a1 + 1, &v12, 0, 0, &v13);
    if (!v10)
    {
      break;
    }

    if (v10 < 0)
    {
      if (*__error())
      {
        __error();
      }

      break;
    }
  }

  while (recv(a1, v14, 0x20uLL, 0) > 0);
  result = close(a1);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t SocketRecvFrom(int a1, uint64_t a2, uint64_t a3, ssize_t *a4, void *a5, socklen_t a6, void *a7, uint64_t *a8, _DWORD *a9, void *a10)
{
  v20 = *MEMORY[0x1E69E9840];
  *(&v17.msg_namelen + 1) = 0;
  v18[0] = a2;
  v18[1] = a3;
  v17.msg_name = a5;
  v17.msg_namelen = a6;
  v17.msg_iov = v18;
  *(&v17.msg_iovlen + 1) = 0;
  v17.msg_iovlen = 1;
  v17.msg_control = &v19;
  *&v17.msg_controllen = 256;
  while (1)
  {
    v14 = recvmsg(a1, &v17, 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      if (result)
      {
        return result;
      }

      break;
    }
  }

  if (a4)
  {
    *a4 = v14;
  }

  if (a7)
  {
    *a7 = v17.msg_namelen;
  }

  if (a8)
  {
    *a8 = SocketGetPacketUpTicks(v17.msg_control, v17.msg_controllen);
  }

  if (a9)
  {
    PacketReceiveInterface = SocketGetPacketReceiveInterface(v17.msg_control, v17.msg_controllen, a10);
    result = 0;
    *a9 = PacketReceiveInterface;
  }

  else
  {
    if (a10)
    {
      SocketGetPacketReceiveInterface(v17.msg_control, v17.msg_controllen, a10);
    }

    return 0;
  }

  return result;
}

uint64_t SocketGetPacketUpTicks(unsigned int *a1, unsigned int a2)
{
  if (a2 < 0xC || (v2 = a1) == 0)
  {
LABEL_7:

    return mach_absolute_time();
  }

  while (1)
  {
    if (v2[1] != 0xFFFF)
    {
      goto LABEL_6;
    }

    v3 = v2[2];
    if (v3 == 2)
    {
      break;
    }

    if (v3 == 4)
    {
      return *(v2 + 3);
    }

LABEL_6:
    v2 = (v2 + ((*v2 + 3) & 0x1FFFFFFFCLL));
    if (v2 + 3 > (a1 + a2))
    {
      goto LABEL_7;
    }
  }

  v11 = 0uLL;
  gettimeofday(&v11, 0);
  v5 = mach_absolute_time();
  v6 = v11;
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  v7 = SecondsToUpTicks_sMultiplier * v6;
  v8 = MicrosecondsToUpTicks(DWORD2(v11));
  v11 = *(v2 + 3);
  v9 = v11;
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  v10 = SecondsToUpTicks_sMultiplier;
  return v5 - (v7 + v8) + v10 * v9 + MicrosecondsToUpTicks(DWORD2(v11));
}

uint64_t SocketGetPacketReceiveInterface(unsigned int *a1, unsigned int a2, void *__dst)
{
  result = 0;
  if (a2 >= 0xC && a1)
  {
    v6 = a1 + a2;
    while (a1[1] || a1[2] != 20)
    {
      a1 = (a1 + ((*a1 + 3) & 0x1FFFFFFFCLL));
      if ((a1 + 3) > v6)
      {
        return 0;
      }
    }

    if (__dst)
    {
      v7 = *(a1 + 17);
      if (v7 <= 0xF)
      {
        memcpy(__dst, a1 + 5, v7);
        *(__dst + *(a1 + 17)) = 0;
      }
    }

    return *(a1 + 7);
  }

  return result;
}

uint64_t SocketReadAll(int a1, char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v5 = a3;
  v6 = a2;
  v8 = &a2[a3];
  v9 = 1 << a1;
  v10 = a1 >> 5;
  while (1)
  {
    do
    {
      v11 = recv(a1, v6, v5, 0);
      if (v11 >= 1)
      {
        v6 += v11;
        goto LABEL_16;
      }

      if (!v11)
      {
        return 4294960543;
      }

      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
    }

    while (result == 4);
    if (result != 35)
    {
      return result;
    }

    memset(&v14, 0, sizeof(v14));
    if (__darwin_check_fd_set_overflow(a1, &v14, 0))
    {
      v14.fds_bits[v10] |= v9;
    }

    v13 = select(a1 + 1, &v14, 0, 0, 0);
    if (!v13)
    {
      return 4294960574;
    }

    if (v13 <= 0)
    {
      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result)
      {
        return result;
      }
    }

LABEL_16:
    v5 = v8 - v6;
    if (v8 <= v6)
    {
      return 0;
    }
  }
}

uint64_t SocketWriteAll(int a1, char *a2, uint64_t a3, int a4)
{
  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  memset(&v15, 0, sizeof(v15));
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a3;
  v5 = a2;
  v7 = 1 << a1;
  v8 = &a2[a3];
  v9 = a1 >> 5;
  v10 = a4;
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a1, &v15, 0))
    {
      v15.fds_bits[v9] |= v7;
    }

    v14.tv_sec = v10;
    v14.tv_usec = 0;
    v11 = select(a1 + 1, 0, &v15, 0, &v14);
    if (!v11)
    {
      return 4294960574;
    }

    if (v11 <= 0)
    {
      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result)
      {
        return result;
      }
    }

    v13 = write(a1, v5, v4);
    if (v13 < 0)
    {
      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result != 4)
      {
        if (result)
        {
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
LABEL_13:
      result = 0;
      v5 += v13;
      v4 = v8 - v5;
      if (v8 <= v5)
      {
        return result;
      }
    }
  }
}

uint64_t SocketSetBoundInterface(int a1, int a2, int a3)
{
  v6 = a3;
  if (a2 == 2)
  {
    v3 = 0;
    v4 = 25;
  }

  else
  {
    if (a2 != 30)
    {
      return 4294960561;
    }

    v3 = 41;
    v4 = 125;
  }

  result = setsockopt(a1, v3, v4, &v6, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t GetInterfaceMACAddress(const char *a1, uint64_t a2)
{
  v11 = 0;
  if (getifaddrs(&v11))
  {
    if (*__error())
    {
      v4 = *__error();
      v5 = v11;
      if (!v4)
      {
        if (v11)
        {
          goto LABEL_5;
        }

        return 4294960569;
      }
    }

    else
    {
      v4 = 4294960596;
      v5 = v11;
    }

    if (v5)
    {
LABEL_16:
      MEMORY[0x193B06880](v5);
    }

    return v4;
  }

  v5 = v11;
  if (!v11)
  {
    return 4294960569;
  }

LABEL_5:
  v6 = v5;
  while (1)
  {
    ifa_addr = v6->ifa_addr;
    if (ifa_addr->sa_family == 18 && !strcmp(v6->ifa_name, a1) && ifa_addr->sa_data[4] == 6)
    {
      break;
    }

    v6 = v6->ifa_next;
    if (!v6)
    {
      v4 = 4294960569;
      if (v5)
      {
        goto LABEL_16;
      }

      return v4;
    }
  }

  v4 = 0;
  v9 = &ifa_addr->sa_len + ifa_addr->sa_data[3];
  v10 = *(v9 + 2);
  *(a2 + 4) = *(v9 + 6);
  *a2 = v10;
  if (v5)
  {
    goto LABEL_16;
  }

  return v4;
}

uint64_t SocketSetKeepAliveEx(int a1, int a2, int a3, int a4)
{
  v9 = a2 > 0 && a4 > 0;
  v14 = v9;
  if (setsockopt(a1, 0xFFFF, 8, &v14, 4u))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  if (!v14)
  {
    return 0;
  }

  if (a2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a2;
  }

  v14 = v11;
  if (setsockopt(a1, 6, 16, &v14, 4u) && *__error())
  {
    __error();
  }

  if (a3 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3;
  }

  v14 = v12;
  if (setsockopt(a1, 6, 257, &v14, 4u) && *__error())
  {
    __error();
  }

  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  v14 = v13;
  result = setsockopt(a1, 6, 258, &v14, 4u);
  if (result)
  {
    if (*__error())
    {
      __error();
    }

    return 0;
  }

  return result;
}

uint64_t SocketSetNotSentLowWatermark(int a1, unint64_t a2)
{
  if (a2 >> 31)
  {
    return 4294960586;
  }

  v3 = a2;
  result = setsockopt(a1, 6, 513, &v3, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t SocketSetPacketTimestamps(int a1, int a2)
{
  v3 = a2;
  result = setsockopt(a1, 0xFFFF, 2048, &v3, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t _SocketJoinOrLeaveMulticast(int a1, uint64_t a2, char *a3, unsigned int a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 1);
  if (v7 != 30)
  {
    if (v7 != 2)
    {
      return 4294960561;
    }

    v13 = 0;
    LODWORD(v13) = *(a2 + 4);
    if (a3)
    {
      *v14 = 0u;
      v15 = 0u;
      __strlcpy_chk();
      goto LABEL_15;
    }

    if (!a4)
    {
      HIDWORD(v13) = 0;
      goto LABEL_20;
    }

    *v14 = 0u;
    v15 = 0u;
    if (if_indextoname(a4, v14))
    {
LABEL_15:
      if (ioctl(a1, 0xC0206921uLL, v14, v13))
      {
        if (!*__error())
        {
          return 4294960596;
        }

        result = *__error();
        if (result)
        {
          return result;
        }
      }

      HIDWORD(v13) = DWORD1(v15);
LABEL_20:
      result = setsockopt(a1, 0, 13, &v13, 8u);
      if (a5)
      {
        v9 = &v13;
        v10 = a1;
        v11 = 0;
        v12 = 8;
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    return 4294960552;
  }

  *v14 = *(a2 + 8);
  if (!a3 || a4)
  {
    LODWORD(v15) = a4;
  }

  else
  {
    LODWORD(v15) = if_nametoindex(a3);
    if (!v15)
    {
      return 4294960552;
    }
  }

  result = setsockopt(a1, 41, 13, v14, 0x14u);
  if (a5)
  {
    v9 = v14;
    v10 = a1;
    v11 = 41;
    v12 = 20;
LABEL_22:
    result = setsockopt(v10, v11, 12, v9, v12);
  }

LABEL_23:
  if (!result)
  {
    return result;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t SocketSetMulticastInterface(int a1, const char *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  HIDWORD(v11) = a3;
  Family = SocketGetFamily(a1);
  if (Family != 30)
  {
    if (Family != 2)
    {
      return 4294960561;
    }

    *v12 = 0u;
    v13 = 0u;
    LODWORD(v11) = 0;
    if (!a2 || a3 || (HIDWORD(v11) = if_nametoindex(a2)) != 0)
    {
      result = setsockopt(a1, 0, 66, &v11 + 4, 4u);
      if (!result)
      {
        return result;
      }

      if (*__error() && !*__error())
      {
        return 0;
      }

      if (a2)
      {
        *v12 = 0u;
        v13 = 0u;
        __strlcpy_chk();
        if (ioctl(a1, 0xC0206921uLL, v12))
        {
          if (!*__error())
          {
            return 4294960596;
          }

          result = *__error();
          if (result)
          {
            return result;
          }
        }

        v8 = &v13 + 4;
        goto LABEL_27;
      }

      if (!HIDWORD(v11))
      {
        LODWORD(v11) = 0;
        v8 = &v11;
LABEL_27:
        v9 = a1;
        v10 = 0;
        goto LABEL_28;
      }

      *v12 = 0u;
      v13 = 0u;
      if (if_indextoname(HIDWORD(v11), v12))
      {
        if (ioctl(a1, 0xC0206921uLL, v12, v11))
        {
          if (!*__error())
          {
            return 4294960596;
          }

          result = *__error();
          if (result)
          {
            return result;
          }
        }

        v8 = &v13 + 4;
        goto LABEL_27;
      }
    }

    return 4294960552;
  }

  if (a2)
  {
    if (!a3)
    {
      HIDWORD(v11) = if_nametoindex(a2);
      if (!HIDWORD(v11))
      {
        return 4294960552;
      }
    }
  }

  v8 = &v11 + 4;
  v9 = a1;
  v10 = 41;
LABEL_28:
  result = setsockopt(v9, v10, 9, v8, 4u);
  if (!result)
  {
    return result;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t SocketSetMulticastLoop(int a1)
{
  Family = SocketGetFamily(a1);
  if (Family == 30)
  {
    v8 = 1;
    v3 = &v8;
    v4 = a1;
    v5 = 41;
    v6 = 4;
  }

  else
  {
    if (Family != 2)
    {
      return 4294960561;
    }

    v9 = 1;
    v3 = &v9;
    v4 = a1;
    v5 = 0;
    v6 = 1;
  }

  result = setsockopt(v4, v5, 11, v3, v6);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t SockAddrConvertToIPv6(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  if (v3 == 30)
  {
    if (a1 == a2)
    {
      return 0;
    }

    else
    {
      result = 0;
      v7 = *a1;
      v8 = *(a1 + 2);
      *(a2 + 24) = *(a1 + 6);
      *(a2 + 16) = v8;
      *a2 = v7;
    }
  }

  else if (v3 == 2)
  {
    result = 0;
    v5 = *(a1 + 1);
    v6 = *(a1 + 1);
    *(a2 + 8) = 0;
    *a2 = 7708;
    *(a2 + 2) = v6;
    *(a2 + 4) = 0;
    *(a2 + 16) = -65536;
    *(a2 + 20) = v5;
  }

  else
  {
    return 4294960561;
  }

  return result;
}

unint64_t SockAddrToDeviceID(__int128 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v4 = 0;
  v3 = 0;
  SockAddrSimplify(a1, v2);
  if (BYTE1(v2[0]) == 30)
  {
    return (BYTE2(v3) << 40) | (BYTE1(v3) << 48) | (BYTE3(v3) << 32) | (BYTE4(v3) << 24) | (BYTE5(v3) << 16) | (BYTE6(v3) << 8) | HIBYTE(v3) | 0x600000000000000;
  }

  result = 0;
  if (BYTE1(v2[0]) == 2)
  {
    return bswap32(HIDWORD(v2[0])) | 0x400000000000000;
  }

  return result;
}

uint64_t IsIPv4MartianAddress(int a1)
{
  v4 = a1;
  v1 = &IsIPv4MartianAddress_kMartianRules;
  v2 = -5;
  while (!_EqualBits(&v4, v1, v1[4]))
  {
    v1 += 5;
    v2 += 5;
    if (v2 > 0x45)
    {
      return 0;
    }
  }

  return 1;
}

BOOL _EqualBits(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v3 = ((a3 - 8) >> 3) + 1;
    v4 = &a2[v3];
    v5 = &a1[v3];
    while (*a1 == *a2)
    {
      ++a2;
      ++a1;
      LOBYTE(a3) = a3 - 8;
      if (a3 <= 7u)
      {
        a1 = v5;
        a2 = v4;
        return !a3 || 0xFFu >> a3 >= (*a2 ^ *a1);
      }
    }

    return 0;
  }

  return !a3 || 0xFFu >> a3 >= (*a2 ^ *a1);
}

BOOL IsIPv6MartianAddressEx(unsigned __int8 *a1, char a2)
{
  v4 = 0;
  for (i = &byte_1E73A4A18; !_EqualBits(a1, *(i - 1), *i); i += 16)
  {
    if (++v4 == 23)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 && !v4 || (a2 & 2) != 0 && v4 == 20)
  {
    return 0;
  }

  return (a2 & 4) == 0 || v4 != 19;
}

BOOL IsGlobalIPv4Address(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = v1 & 0xFF000000;
  v3 = v1 & 0xFFF00000;
  v4 = v1 & 0xFFFF0000;
  v5 = (v1 & 0xFFFF0000) != 0xA9FE0000 && v1 >> 29 != 7;
  v6 = v1 >= 0x10000 && v5;
  if (v2 == 2130706432)
  {
    v6 = 0;
  }

  return v4 != -1062731776 && v2 != 167772160 && v3 != -1408237568 && v6;
}

BOOL IsPrivateIPv4Address(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = HIBYTE(v1) == 10 || v1 >> 20 == 2753;
  v3 = HIWORD(v1);
  return v2 || v3 == 49320;
}

BOOL IsRoutableIPv4Address(unsigned int a1)
{
  v1 = bswap32(a1) >> 16;
  if (v1)
  {
    v2 = v1 == 43518;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t CompareMACAddresses(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

BOOL IsWiFiNetworkInterface(char *a1)
{
  v3 = 0;
  SocketGetInterfaceInfo(-1, a1, 0, 0, 0, 0, 0, 0, 0, &v3);
  result = 1;
  if ((v3 - 2) > 0x3E || ((1 << (v3 - 2)) & 0x4000000000000005) == 0)
  {
    return v3 == 128;
  }

  return result;
}

uint64_t GetPrimaryIPAddressEx(const __SCDynamicStore *a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
LABEL_3:
    v6 = 0;
    goto LABEL_5;
  }

  v5 = SCDynamicStoreCreate(0, @"NetUtils:GetPrimaryIPAddress", 0, 0);
  v6 = v5;
  if (!v5)
  {
    if (!SCError())
    {
      return 4294960596;
    }

    result = SCError();
    if (result)
    {
      return result;
    }

    v5 = 0;
    goto LABEL_3;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69822F0];
  v8 = *MEMORY[0x1E6982338];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  v10 = MEMORY[0x1E6982340];
  if (NetworkGlobalEntity)
  {
    v11 = NetworkGlobalEntity;
    v12 = SCDynamicStoreCopyValue(v5, NetworkGlobalEntity);
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFDictionaryGetTypeID())
      {
        v15 = *MEMORY[0x1E6982300];
        TypeID = CFStringGetTypeID();
        TypedValue = CFDictionaryGetTypedValue(v13, v15, TypeID, 0);
        v18 = TypedValue;
        if (TypedValue)
        {
          CFRetain(TypedValue);
        }
      }

      else
      {
        v18 = 0;
      }

      CFRelease(v13);
      CFRelease(v11);
      if (v18)
      {
        goto LABEL_25;
      }
    }

    else
    {
      CFRelease(v11);
    }
  }

  v19 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, v7, *v10);
  if (v19)
  {
    v20 = v19;
    v21 = SCDynamicStoreCopyValue(v5, v19);
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFDictionaryGetTypeID())
      {
        v24 = *MEMORY[0x1E6982300];
        v25 = CFStringGetTypeID();
        v26 = CFDictionaryGetTypedValue(v22, v24, v25, 0);
        v18 = v26;
        if (v26)
        {
          CFRetain(v26);
        }
      }

      else
      {
        v18 = 0;
      }

      CFRelease(v22);
      CFRelease(v20);
      if (v18)
      {
        goto LABEL_25;
      }
    }

    else
    {
      CFRelease(v20);
    }
  }

  v18 = @"en0";
  CFRetain(@"en0");
LABEL_25:
  if (a2)
  {
    *(a2 + 1) = 0;
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v7, v18, v8);
    if (NetworkInterfaceEntity)
    {
      v29 = NetworkInterfaceEntity;
      v30 = SCDynamicStoreCopyValue(v5, NetworkInterfaceEntity);
      if (v30)
      {
        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 == CFDictionaryGetTypeID())
        {
          v33 = *MEMORY[0x1E6982478];
          v34 = CFArrayGetTypeID();
          v35 = CFDictionaryGetTypedValue(v31, v33, v34, 0);
          if (v35)
          {
            v36 = v35;
            if (CFArrayGetCount(v35) >= 1)
            {
              v37 = CFStringGetTypeID();
              TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v36, 0, v37, 0);
              if (TypedValueAtIndex)
              {
                buffer[0] = 0;
                CFStringGetCString(TypedValueAtIndex, buffer, 128, 0x8000100u);
                StringToSockAddr(buffer, a2, 0x1CuLL, 0);
                if (*(a2 + 1) != 2)
                {
                  *(a2 + 1) = 0;
                }
              }
            }
          }
        }

        CFRelease(v31);
      }

      CFRelease(v29);
    }
  }

  if (a3)
  {
    *(a3 + 1) = 0;
    v39 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v7, v18, *v10);
    if (v39)
    {
      v40 = v39;
      v41 = SCDynamicStoreCopyValue(v5, v39);
      if (v41)
      {
        v42 = v41;
        v43 = CFGetTypeID(v41);
        if (v43 == CFDictionaryGetTypeID())
        {
          v44 = *MEMORY[0x1E69824D8];
          v45 = CFArrayGetTypeID();
          v46 = CFDictionaryGetTypedValue(v42, v44, v45, 0);
          if (v46)
          {
            v47 = v46;
            if (CFArrayGetCount(v46) >= 1)
            {
              v48 = CFStringGetTypeID();
              v49 = CFArrayGetTypedValueAtIndex(v47, 0, v48, 0);
              if (v49)
              {
                buffer[0] = 0;
                CFStringGetCString(v49, buffer, 128, 0x8000100u);
                StringToSockAddr(buffer, a3, 0x1CuLL, 0);
                if (*(a3 + 1) == 30)
                {
                  if (*(a3 + 8) == 254 && (*(a3 + 9) & 0xC0) == 0x80)
                  {
                    buffer[0] = 0;
                    CFStringGetCString(v18, buffer, 128, 0x8000100u);
                    *(a3 + 24) = if_nametoindex(buffer);
                  }
                }

                else
                {
                  *(a3 + 1) = 0;
                }
              }
            }
          }
        }

        CFRelease(v42);
      }

      CFRelease(v40);
    }
  }

  CFRelease(v18);
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t GetLocalHostName(char *a1, size_t a2)
{
  v4 = SCDynamicStoreCopyLocalHostName(0);
  if (!v4)
  {
    return 4294960596;
  }

  v5 = v4;
  CString = CFStringGetCString(v4, a1, a2, 0x8000100u);
  CFRelease(v5);
  if (!CString)
  {
    return 4294960596;
  }

  if (strlcat(a1, ".local", a2) >= a2)
  {
    return 4294960553;
  }

  return 0;
}

uint64_t GetPeerMACAddress(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  size = 0;
  v4 = 100;
  while (1)
  {
    *v18 = 0x1100000004;
    v5 = *(a1 + 1);
    v19 = 0;
    v20 = v5;
    v21 = 0x40000000002;
    if (sysctl(v18, 6u, 0, &size, 0, 0))
    {
      if (!*__error())
      {
        return 4294960596;
      }

      v6 = *__error();
      if (v6)
      {
        return v6;
      }
    }

    if (!size)
    {
      return 4294960569;
    }

    v7 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v7)
    {
      return 4294960568;
    }

    v8 = v7;
    if (!sysctl(v18, 6u, v7, &size, 0, 0))
    {
      break;
    }

    if (*__error())
    {
      v6 = *__error();
      if (!v6)
      {
        break;
      }
    }

    else
    {
      v6 = 4294960596;
    }

    free(v8);
    if (!--v4)
    {
      return v6;
    }
  }

  if (size < 1)
  {
LABEL_27:
    v6 = 4294960569;
  }

  else
  {
    v9 = v8 + size;
    v10 = v8;
    while (1)
    {
      v11 = (v10 + 46);
      v12 = *(v10 + 92);
      v13 = (v12 & 3) != 0 ? (v12 | 3) + 1 : *(v10 + 92);
      v14 = *(v10 + 92) ? v13 : 4;
      v15 = v11 + v14;
      if (*(v11 + v14 + 1) == 18 && *(v15 + 6) == 6 && *(v15 + 2) && !SockAddrCompareAddrEx(v11, a1, 0))
      {
        break;
      }

      v10 = (v10 + *v10);
      if (v10 >= v9)
      {
        goto LABEL_27;
      }
    }

    memcpy(a2, (v15 + *(v15 + 5) + 8), *(v15 + 6));
    v6 = 0;
  }

  free(v8);
  return v6;
}

uint64_t _NTPClockGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gNTPClockTypeID = result;
  return result;
}

void _NTPClockFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    free(v2);
    *(a1 + 80) = 0;
  }
}

uint64_t NTPClockCreate(uint64_t *a1)
{
  if (gNTPClockInitOnce != -1)
  {
    dispatch_once_f(&gNTPClockInitOnce, 0, _NTPClockGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  bzero((Instance + 16), 0xED0uLL);
  *(v3 + 56) = &gLogCategory_NTPClockCore;
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  v4 = UpTicksPerSecond_sTicksPerSecond;
  *(v3 + 96) = UpTicksPerSecond_sTicksPerSecond;
  if (HIDWORD(v4))
  {
    v6 = -1;
    do
    {
      ++v6;
      v7 = v4 > 3;
      v4 >>= 1;
    }

    while (v7);
    LOBYTE(v5) = ~v6;
  }

  else
  {
    v5 = __clz(v4 | 1) - 31;
  }

  result = 0;
  *(v3 + 76) = v5;
  *(v3 + 224) = -1;
  *(v3 + 232) = -1;
  *a1 = v3;
  return result;
}

uint64_t NTPClockStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 216);
  v10 = *(a1 + 228);
  if (v9)
  {
    SendSelfConnectedLoopbackMessage(*(a1 + 224), "q", 1uLL);
    pthread_join(*(a1 + 208), 0);
    *(a1 + 216) = 0;
  }

  v11 = *(a1 + 224);
  if ((v11 & 0x80000000) == 0)
  {
    if (close(v11) && *__error())
    {
      __error();
    }

    *(a1 + 224) = -1;
  }

  v12 = *(a1 + 228);
  if ((v12 & 0x80000000) == 0)
  {
    if (close(v12) && *__error())
    {
      __error();
    }

    *(a1 + 228) = -1;
  }

  v13 = *(a1 + 232);
  if ((v13 & 0x80000000) == 0)
  {
    if (close(v13) && *__error())
    {
      __error();
    }

    *(a1 + 232) = -1;
  }

  v14 = *(a1 + 236);
  if ((v14 & 0x80000000) == 0)
  {
    if (close(v14) && *__error())
    {
      __error();
    }

    *(a1 + 236) = -1;
  }

  result = *(a1 + 200);
  if (result)
  {
    result = pthread_mutex_destroy(result);
    *(a1 + 200) = 0;
  }

  *(a1 + 52) = 0;
  if (v9)
  {
    result = *(a1 + 56);
    if (*result <= 30)
    {
      if (*result == -1)
      {
        result = _LogCategory_Initialize(result, 0x1Eu);
        if (!result)
        {
          return result;
        }

        result = *(a1 + 56);
      }

      v16 = "server";
      if (v10 >= 0)
      {
        v16 = "client";
      }

      return LogPrintF(result, "void NTPClockStop(NTPClockRef)", 0x1Eu, "NTP %s stopped\n", a5, a6, a7, a8, v16);
    }
  }

  return result;
}

uint64_t NTPClockSetPeer(uint64_t result, __int128 *a2, signed int a3)
{
  v3 = *(a2 + 1);
  if (*(a2 + 1))
  {
    if (v3 == 30)
    {
      v4 = *a2;
      v5 = *(a2 + 2);
      *(result + 44) = *(a2 + 6);
      *(result + 36) = v5;
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_8;
      }

      v4 = *a2;
    }

    *(result + 20) = v4;
  }

  else
  {
    *(result + 21) = 0;
  }

LABEL_8:
  if (a3 >= 1)
  {
    v6 = *(a2 + 1);
    if ((v6 == 30 || v6 == 2) && !*(a2 + 1))
    {
      v8 = *(result + 21);
      if (v8 == 30 || v8 == 2)
      {
        *(result + 22) = bswap32(a3) >> 16;
      }
    }
  }

  return result;
}

uint64_t NTPClockSetThreadName(uint64_t a1, char *__s1)
{
  if (__s1)
  {
    v3 = strdup(__s1);
    if (!v3)
    {
      return 4294960568;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    free(v5);
  }

  result = 0;
  *(a1 + 80) = v3;
  return result;
}

uint64_t NTPClockSetThreadPriority(uint64_t result, int a2)
{
  *(result + 88) = a2;
  *(result + 92) = 1;
  return result;
}

uint64_t NTPClockSetUpTicksConvertHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 104) = a2;
  *(result + 112) = a3;
  return result;
}

uint64_t NTPClockSetUpTicksPerSecondHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 120) = a2;
  *(result + 128) = a3;
  return result;
}

uint64_t NTPClockStartClient(uint64_t a1)
{
  v2 = a1 + 136;
  v3 = pthread_mutex_init((a1 + 136), 0);
  if (v3)
  {
    goto LABEL_56;
  }

  *(a1 + 200) = v2;
  if (*(a1 + 78))
  {
    *(a1 + 241) = -46;
    *(a1 + 242) = 1792;
    v11 = 0x80;
    v12 = 32;
    v13 = 268;
    v14 = 264;
  }

  else
  {
    v11 = 35;
    v12 = 48;
    v13 = 284;
    v14 = 280;
  }

  *(a1 + 240) = v11;
  *(a1 + 288) = a1 + v14;
  *(a1 + 296) = a1 + v13;
  *(a1 + 304) = v12;
  *(a1 + 376) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 3592) = 0;
  *(a1 + 68) = 0x44C000003E8;
  *(a1 + 3624) = 0;
  *(a1 + 3600) = 0u;
  *(a1 + 3616) = 0;
  *(a1 + 3632) = xmmword_191FF95B0;
  *(a1 + 3648) = 0u;
  *(a1 + 3664) = xmmword_191FF95B0;
  *(a1 + 3680) = 0;
  *(a1 + 3688) = 0;
  *(a1 + 3696) = xmmword_191FF95C0;
  *(a1 + 3712) = 0x10000000000000;
  *(a1 + 3736) = 0;
  *(a1 + 3720) = 0u;
  *(a1 + 3744) = mach_absolute_time();
  v15 = *(a1 + 96);
  *(a1 + 3752) = 0xFFFFFFFFFFFFFFFFLL / v15;
  *(a1 + 3760) = v15;
  *(a1 + 3768) = 0u;
  *(a1 + 3784) = 0xFFFFFFFFFFFFFFFFLL / v15;
  *(a1 + 3792) = 0u;
  v16 = *(a1 + 21);
  if ((v16 == 30 || v16 == 2) && !*(a1 + 22))
  {
    *(a1 + 22) = 25115;
  }

  v46 = 0;
  v3 = UDPClientSocketOpen(0, (a1 + 20), 0, *(a1 + 48), (a1 + 52), &v46);
  if (v3)
  {
LABEL_56:
    v25 = v3;
    goto LABEL_57;
  }

  v17 = v46;
  *(a1 + 228) = v46;
  if (*(a1 + 64))
  {
    SocketSetP2P(v17, 1);
  }

  if (!*(a1 + 77))
  {
    SocketSetQoS(v17, 20);
  }

  SocketSetPacketTimestamps(v17, 1);
  v47.tv_sec = 0;
  *&v47.tv_usec = 0;
  v22 = *(a1 + 56);
  if (*v22 > 30)
  {
    goto LABEL_18;
  }

  if (*v22 == -1)
  {
    if (!_LogCategory_Initialize(v22, 0x1Eu))
    {
      goto LABEL_18;
    }

    v22 = *(a1 + 56);
  }

  LogPrintF(v22, "OSStatus _NTPClockClientNegotiate(NTPClockRef)", 0x1Eu, "NTP client negotiating with %##a\n", v18, v19, v20, v21, a1 + 20);
LABEL_18:
  v23 = mach_absolute_time();
  memset(&v48, 0, sizeof(v48));
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  v24 = 0;
  LODWORD(v25) = 0;
  v26 = v23 + 10 * SecondsToUpTicks_sMultiplier;
  do
  {
    while (1)
    {
LABEL_21:
      if (mach_absolute_time() >= v26)
      {
        v25 = 4294960574;
        goto LABEL_44;
      }

      if (v25 == -6757)
      {
        break;
      }

      v27 = _NTPClockClientSendRequest(a1);
      if (!v27)
      {
        break;
      }

      LODWORD(v25) = v27;
      usleep(0x186A0u);
    }

    do
    {
      v28 = *(a1 + 228);
      if (__darwin_check_fd_set_overflow(v28, &v48, 0))
      {
        *(v48.fds_bits + ((v28 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v28;
      }

      v47.tv_sec = 0;
      v47.tv_usec = 200000;
      v29 = select(*(a1 + 228) + 1, &v48, 0, 0, &v47);
      if (v29 > 0)
      {
        goto LABEL_32;
      }

      if (!v29)
      {
        LODWORD(v25) = -6722;
        goto LABEL_38;
      }

      if (!*__error())
      {
        LODWORD(v25) = -6700;
LABEL_38:
        ++*(a1 + 3800);
        v34 = *(a1 + 56);
        if (*v34 > 50)
        {
          goto LABEL_21;
        }

        if (*v34 != -1)
        {
          goto LABEL_40;
        }

        if (_LogCategory_Initialize(v34, 0x32u))
        {
          v34 = *(a1 + 56);
LABEL_40:
          LogPrintF(v34, "OSStatus _NTPClockClientNegotiate(NTPClockRef)", 0x32u, "### NTP client negotiate wait for %##a failed (%u total): %#m\n", v30, v31, v32, v33, a1 + 20);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      LODWORD(v25) = *__error();
    }

    while (v25 == 4);
    if (v25)
    {
      goto LABEL_38;
    }

LABEL_32:
    v25 = _NTPClockClientProcessResponse(a1);
    if (!v25)
    {
      ++v24;
    }
  }

  while (v24 < 4);
LABEL_44:
  if (v25)
  {
    v35 = 60;
  }

  else
  {
    v35 = 30;
  }

  v36 = *(a1 + 56);
  if (v35 >= *v36)
  {
    if (*v36 != -1)
    {
      goto LABEL_49;
    }

    if (_LogCategory_Initialize(*(a1 + 56), v35))
    {
      v36 = *(a1 + 56);
LABEL_49:
      v37 = mach_absolute_time();
      UpTicksToMilliseconds(v37 - v23);
      v42 = "### ";
      if (!v25)
      {
        v42 = "";
      }

      LogPrintF(v36, "OSStatus _NTPClockClientNegotiate(NTPClockRef)", v35, "%sNTP client negotiation with %##a %s: Good=%d, Serr=%u, Tout=%u, Rerr=%u Dur=%llu ms%s%?#m\n", v38, v39, v40, v41, v42);
    }
  }

  if (v25)
  {
LABEL_57:
    v43 = *(a1 + 56);
    if (*v43 <= 60)
    {
      if (*v43 == -1)
      {
        if (!_LogCategory_Initialize(v43, 0x3Cu))
        {
          goto LABEL_61;
        }

        v43 = *(a1 + 56);
      }

      LogPrintF(v43, "OSStatus NTPClockStartClient(NTPClockRef)", 0x3Cu, "### NTP client start failed: %#m\n", v7, v8, v9, v10, v25);
    }

LABEL_61:
    NTPClockStop(a1, v4, v5, v6, v7, v8, v9, v10);
    return v25;
  }

  v3 = OpenSelfConnectedLoopbackSocket((a1 + 224));
  if (v3)
  {
    goto LABEL_56;
  }

  v3 = pthread_create((a1 + 208), 0, _NTPClockClientThread, a1);
  if (v3)
  {
    goto LABEL_56;
  }

  *(a1 + 216) = a1 + 208;
  v45 = *(a1 + 56);
  if (*v45 <= 30)
  {
    if (*v45 != -1)
    {
      goto LABEL_65;
    }

    if (_LogCategory_Initialize(v45, 0x1Eu))
    {
      v45 = *(a1 + 56);
LABEL_65:
      LogPrintF(v45, "OSStatus NTPClockStartClient(NTPClockRef)", 0x1Eu, "NTP client started with %##a on port %d\n", v7, v8, v9, v10, a1 + 20);
    }
  }

  return 0;
}

uint64_t _NTPClockClientSendRequest(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = *(a1 + 96);
  v4 = *(a1 + 16) + (v2 / v3);
  v5 = *(a1 + 296);
  **(a1 + 288) = bswap32(v4);
  v6 = ((v2 % v3) << 32) / v3;
  *v5 = bswap32(v6);
  if (send(*(a1 + 228), (a1 + 240), *(a1 + 304), 0) == *(a1 + 304))
  {
LABEL_4:
    v12 = *(a1 + 376);
    *(a1 + 376) = v12 + 1;
    v13 = a1 + 4 * (v12 & 7);
    *(v13 + 312) = v4;
    *(v13 + 344) = v6;
    v14 = *(a1 + 56);
    if (*v14 <= 10)
    {
      if (*v14 == -1)
      {
        if (!_LogCategory_Initialize(v14, 0xAu))
        {
          return 0;
        }

        v14 = *(a1 + 56);
      }

      LogPrintF(v14, "OSStatus _NTPClockClientSendRequest(NTPClockRef)", 0xAu, "NTP client request: 0x%08X%08X\n", v7, v8, v9, v10, v4);
    }

    return 0;
  }

  if (*__error())
  {
    v11 = *__error();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = 4294960596;
  }

  ++*(a1 + 3792);
  v15 = *(a1 + 56);
  if (*v15 <= 50)
  {
    if (*v15 == -1)
    {
      if (!_LogCategory_Initialize(v15, 0x32u))
      {
        return v11;
      }

      v15 = *(a1 + 56);
    }

    LogPrintF(v15, "OSStatus _NTPClockClientSendRequest(NTPClockRef)", 0x32u, "### NTP client send to %##a failed (%u total): %#m\n", v7, v8, v9, v10, a1 + 20);
  }

  return v11;
}

uint64_t _NTPClockClientProcessResponse(uint64_t a1)
{
  v145 = 0u;
  v146[0] = 0u;
  v144 = 0u;
  v142 = 0;
  v143 = 0;
  v2 = SocketRecvFrom(*(a1 + 228), &v144, 48, &v143, 0, 0, 0, &v142, 0, 0);
  if (v2)
  {
    v13 = v2;
  }

  else
  {
    v7 = &v145 + 8;
    v8 = &v145 + 3;
    if (v143 == 32)
    {
      v10 = &v145 + 1;
      v9 = &v145;
      v12 = &v145 + 12;
      v8 = (&v144 | 0xC);
      v11 = &v145 + 8;
      v7 = &v144 + 8;
      goto LABEL_8;
    }

    if (v143 == 48)
    {
      v9 = v146;
      v10 = v146 + 1;
      v11 = v146 + 8;
      v12 = v146 + 12;
      if (!BYTE1(v144) && HIDWORD(v144) == 1313294680)
      {
        return 4294960539;
      }

LABEL_8:
      v14 = *v11;
      v15 = *v10;
      v16 = *v9;
      v17 = *(a1 + 16);
      v18 = *v8;
      v19 = *v7;
      v20 = bswap64(v19 | (v18 << 32));
      v21 = *v12;
      v22 = UpTicksToNTP(v142);
      if (v19 | v18)
      {
        v27 = *(a1 + 376);
        v28 = v27 >= 8 ? 8 : v27;
        if (v27)
        {
          v29 = 0;
          v30 = bswap32(v18);
          v31 = bswap32(v19);
          v32 = bswap64(v14 | (v21 << 32));
          v33 = bswap32(v15) | ((bswap32(v16) + v17) << 32);
          while (1)
          {
            v34 = a1 + 4 * v29;
            if (*(v34 + 312) == v31 && *(v34 + 344) == v30)
            {
              break;
            }

            if (v28 == ++v29)
            {
              goto LABEL_17;
            }
          }

          *(a1 + 312 + 4 * v29) = 0;
          *(a1 + 344 + 4 * v29) = 0;
          v41 = *(a1 + 1024);
          v42 = v41 + 1;
          *(a1 + 1024) = v41 + 1;
          v43 = v41 & 0xF;
          v44 = a1 + 384;
          v45 = a1 + 384 + 40 * v43;
          *v45 = v20;
          *(v45 + 8) = v33;
          *(v45 + 16) = v32;
          *(v45 + 24) = v22;
          v46 = (v32 - v33) * -2.32830644e-10;
          v47 = v46 + (v22 - v20) * 2.32830644e-10;
          *(v45 + 32) = v47;
          v48 = v41 - 12;
          if (v41 <= 0xF)
          {
            v48 = 4;
          }

          if (v41 <= 0x1B)
          {
            v49 = v48;
          }

          else
          {
            v49 = 16;
          }

          v50 = v42 - v49;
          if (v41 < v49)
          {
            v50 = 0;
          }

          if (v50 >= v41)
          {
            if (!v41)
            {
              *(a1 + 3656) = v47;
              v53 = 1;
              v51 = 1;
LABEL_51:
              if (v47 < *(a1 + 3664))
              {
                *(a1 + 3664) = v47;
              }

              if (v47 > *(a1 + 3672))
              {
                *(a1 + 3672) = v47;
              }

              v55 = &unk_1EADEB000;
              if (v42 < 4)
              {
                if (v53)
                {
                  if (gLogCategory_NTPClockRaw > 40)
                  {
                    v53 = 1;
                    goto LABEL_119;
                  }

                  if (gLogCategory_NTPClockRaw != -1 || (v94 = v53, v95 = v41 + 1, v96 = _LogCategory_Initialize(&gLogCategory_NTPClockRaw, 0x28u), v55 = &unk_1EADEB000, v42 = v95, v53 = v94, v96))
                  {
                    v140 = v53;
                    v72 = v42;
                    v73 = v55;
                    LogPrintF(&gLogCategory_NTPClockRaw, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", 0x28u, "NTP Raw: #\tT1\tT2\tT3\tT4\tOffset ms\tOffsetAvg\tOffsetMin\tOffsetMax\tOffsetJitter\tRTT ms\tRTTavg\tRTTmin\tRTTmax\tRTTjitter\n", v23, v24, v25, v26, v138);
                    v55 = v73;
                    v42 = v72;
                    v53 = v140;
                  }
                }
              }

              else if (v51 || !*(a1 + 3600))
              {
                v56 = (v44 + 40 * v43);
                v57 = *v56;
                if (*(a1 + 3616))
                {
                  v58 = -*(a1 + 3608);
                }

                else
                {
                  v58 = *(a1 + 3608);
                }

                v59 = v57 + v58;
                v60 = v56[3] + v58;
                v61 = *(a1 + 3728);
                v62 = *(a1 + 3768);
                if (v61 > v62)
                {
                  v63 = *(a1 + 3736);
                  v64 = *(a1 + 3776);
LABEL_62:
                  v65 = v63 >= v64;
                  v66 = v63 - v64;
                  v67 = !v65;
                  *(&v69 + 1) = (v61 - v62 - v67);
                  *&v69 = v66;
                  v68 = v69 >> 32;
                  v70 = v59 - v68;
                  v71 = v60 - v68;
                  goto LABEL_82;
                }

                if (v61 == v62)
                {
                  v63 = *(a1 + 3736);
                  v64 = *(a1 + 3776);
                  if (v63 > v64)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  v64 = *(a1 + 3776);
                  v63 = *(a1 + 3736);
                }

                v65 = v64 >= v63;
                v74 = v64 - v63;
                v75 = !v65;
                *(&v77 + 1) = (v62 - v61 - v75);
                *&v77 = v74;
                v76 = v77 >> 32;
                v70 = v76 + v59;
                v71 = v76 + v60;
LABEL_82:
                v78 = v56[1];
                v79 = v78 - v70;
                v65 = v70 >= v78;
                v80 = v70 - v78;
                if (!v65)
                {
                  v80 = v79;
                }

                if (v80 <= 0x100000000)
                {
                  v92 = v56[2];
                  v93 = v79;
LABEL_107:
                  v98 = (vcvtd_n_f64_s64(v92 - v71, 0x20uLL) + v93 * 2.32830644e-10) * 0.5;
                  v99 = *(a1 + 3600);
                  *(a1 + 3600) = v99 + 1;
                  if (v99)
                  {
                    v100 = *(a1 + 3624);
                    *(a1 + 3648) = vabdd_f64(v98, v100) * 0.125 + *(a1 + 3648) * 0.875;
                    *(a1 + 3624) = v98 * 0.125 + v100 * 0.875;
                  }

                  else
                  {
                    *(a1 + 3624) = 0;
                  }

                  if (v98 < *(a1 + 3632))
                  {
                    *(a1 + 3632) = v98;
                  }

                  if (v98 > *(a1 + 3640))
                  {
                    *(a1 + 3640) = v98;
                  }

                  goto LABEL_114;
                }

                v81 = v78 - v57;
                v82 = v57 > v78;
                v83 = v57 - v78;
                v84 = v82;
                *(a1 + 3616) = v84;
                if (v82)
                {
                  v81 = v83;
                }

                *(a1 + 3608) = v81;
                v85 = *(a1 + 3604);
                if (v85)
                {
                  v86 = 50;
                }

                else
                {
                  v86 = 40;
                }

                v87 = *(a1 + 56);
                if (v86 < *v87)
                {
LABEL_106:
                  *(a1 + 3604) = v85 + 1;
                  v92 = v56[2];
                  v93 = 0.0;
                  v71 = v92;
                  goto LABEL_107;
                }

                v139 = v42;
                v88 = v53;
                if (*v87 == -1)
                {
                  v97 = _LogCategory_Initialize(v87, v86);
                  v85 = *(a1 + 3604);
                  if (!v97)
                  {
LABEL_105:
                    v53 = v88;
                    v56 = (v44 + 40 * v43);
                    v42 = v139;
                    v55 = &unk_1EADEB000;
                    goto LABEL_106;
                  }

                  v87 = *(a1 + 56);
                }

                v89 = v85 == 0;
                if (v85)
                {
                  v90 = 50;
                }

                else
                {
                  v90 = 40;
                }

                v91 = "### ";
                if (v89)
                {
                  v91 = "";
                }

                LogPrintF(v87, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", v90, "%sNTP client clock reset: %s%{dur}\n", v23, v24, v25, v26, v91);
                v85 = *(a1 + 3604);
                goto LABEL_105;
              }

LABEL_114:
              v101 = v55[260];
              if (v101 <= 40)
              {
                v141 = v53;
                if (v101 != -1 || (v103 = v42, v104 = _LogCategory_Initialize(&gLogCategory_NTPClockRaw, 0x28u), v42 = v103, v104))
                {
                  v102 = v42;
                  LogPrintF(&gLogCategory_NTPClockRaw, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", 0x28u, "NTP Raw: %zu\t%llu\t%llu\t%llu\t%llu\t%.9f\t%.9f\t%.9f\t%.9f\t%.9f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%s\n", v23, v24, v25, v26, v42);
                  v42 = v102;
                }

                v53 = v141;
              }

LABEL_119:
              if (v42 % v49 || ((v105 = *(a1 + 3592), v106 = v105 + 1, v107 = a1 + 1032 + 40 * (v105 & 0x3F), v108 = (v44 + 40 * v43), v109 = *v108, v110 = v108[1], *(v107 + 32) = *(v108 + 4), *v107 = v109, *(v107 + 16) = v110, *(a1 + 3592) = v105 + 1, (v105 + 1) < 0x40) ? (v111 = v105 + 1) : (v111 = 64), (v112 = (a1 + 1032 + 40 * (v106 % v111)), v113 = *v108 - *v112, *v108 <= *v112) || (v114 = *(v108 + 1), v115 = v112[1], v82 = v114 > v115, v116 = v114 - v115, !v82) || (v117 = *(v108 + 2), v118 = v112[2], v82 = v117 > v118, v119 = v117 - v118, !v82) || (v120 = *(v108 + 3), v121 = v112[3], v82 = v120 > v121, v122 = v120 - v121, !v82)))
              {
LABEL_147:
                if (v42 == 32)
                {
                  *(a1 + 68) = 0x834000007D0;
                }

                else if (!v53)
                {
                  return 0;
                }

                v137 = *(a1 + 56);
                if (*v137 <= 20)
                {
                  if (*v137 == -1)
                  {
                    if (!_LogCategory_Initialize(v137, 0x14u))
                    {
                      return 0;
                    }

                    v137 = *(a1 + 56);
                  }

                  LogPrintF(v137, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", 0x14u, "NTP client poll updated: %u-%u ms\n", v23, v24, v25, v26, *(a1 + 68));
                }

                return 0;
              }

              v123 = (v116 / v113 + v119 / v122) * 0.5;
              v124 = *(a1 + 3696);
              *(a1 + 3720) = vabdd_f64(v123, v124) * 0.125 + *(a1 + 3720) * 0.875;
              v125 = v123 * 0.25 + v124 * 0.75;
              *(a1 + 3696) = v125;
              v126 = *(a1 + 3704);
              if (v123 < v126)
              {
                *(a1 + 3704) = v123;
              }

              if (v123 > *(a1 + 3712))
              {
                *(a1 + 3712) = v123;
              }

              v127 = v125 * *(a1 + 96);
              *(a1 + 3760) = v127;
              *(a1 + 3752) = 0xFFFFFFFFFFFFFFFFLL / v127;
              if (!*(a1 + 3688))
              {
                v128 = *(a1 + 56);
                if (*v128 <= 20)
                {
                  if (*v128 != -1)
                  {
                    v129 = v42;
                    v130 = v53;
LABEL_138:
                    LogPrintF(v128, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", 0x14u, "NTP client update: #\tRTT ms\tRTT ! \tRateNew    \tRateAvg    \tRateHz    \tJitHz\tOffset ms\tOffset Avg\tFlags\n", v23, v24, v25, v26, v138);
                    v53 = v130;
                    v42 = v129;
                    goto LABEL_141;
                  }

                  v130 = v53;
                  v129 = v42;
                  v131 = _LogCategory_Initialize(v128, 0x14u);
                  v42 = v129;
                  v53 = v130;
                  if (v131)
                  {
                    v128 = *(a1 + 56);
                    goto LABEL_138;
                  }
                }
              }

LABEL_141:
              v132 = *(a1 + 56);
              if (*v132 <= 20)
              {
                if (*v132 == -1)
                {
                  v133 = v53;
                  v135 = v42;
                  v136 = _LogCategory_Initialize(v132, 0x14u);
                  v42 = v135;
                  v53 = v133;
                  if (!v136)
                  {
                    goto LABEL_146;
                  }

                  v132 = *(a1 + 56);
                }

                else
                {
                  v133 = v53;
                }

                v134 = v42;
                LogPrintF(v132, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", 0x14u, "NTP client update: %zu\t%.3f\t%.3f\t%.9f\t%.9f\t%llu\t%llu\t%+.9f\t%+.9f%s%s%s%s\n", v23, v24, v25, v26, v42);
                v42 = v134;
                v53 = v133;
              }

LABEL_146:
              ++*(a1 + 3688);
              goto LABEL_147;
            }

            v51 = 1;
          }

          else
          {
            v51 = 1;
            v52 = v46 + (v22 - v20) * 2.32830644e-10;
            do
            {
              if (*(v44 + 40 * (v50 & 0xF) + 32) < v52)
              {
                v52 = *(v44 + 40 * (v50 & 0xF) + 32);
                v43 = v50 & 0xF;
                v51 = 0;
              }

              ++v50;
            }

            while (v41 != v50);
          }

          v53 = 0;
          v54 = *(a1 + 3656);
          *(a1 + 3680) = vabdd_f64(v47, v54) * 0.125 + *(a1 + 3680) * 0.875;
          *(a1 + 3656) = v47 * 0.125 + v54 * 0.875;
          goto LABEL_51;
        }
      }

LABEL_17:
      ++*(a1 + 3804);
      v35 = *(a1 + 56);
      if (*v35 <= 50)
      {
        if (*v35 == -1)
        {
          if (!_LogCategory_Initialize(v35, 0x32u))
          {
            return 4294960560;
          }

          v35 = *(a1 + 56);
        }

        LogPrintF(v35, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", 0x32u, "### NTP client received unexpected response: originated 0x%016llX, received 0x%016llX (%u total)\n", v23, v24, v25, v26, v20);
      }

      return 4294960560;
    }

    v13 = 4294960553;
  }

  ++*(a1 + 3796);
  v36 = *(a1 + 216);
  if (v36)
  {
    v37 = 40;
  }

  else
  {
    v37 = 50;
  }

  v38 = *(a1 + 56);
  if (v37 >= *v38)
  {
    if (*v38 == -1)
    {
      if (!_LogCategory_Initialize(v38, v37))
      {
        return v13;
      }

      v38 = *(a1 + 56);
      v36 = *(a1 + 216);
    }

    if (v36)
    {
      v39 = 40;
    }

    else
    {
      v39 = 50;
    }

    LogPrintF(v38, "OSStatus _NTPClockClientProcessResponse(NTPClockRef)", v39, "### NTP client received bad response from %##a (%u total): %#m\n", v3, v4, v5, v6, a1 + 20);
  }

  return v13;
}

uint64_t _NTPClockClientThread(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 228);
  v4 = *(a1 + 96) / 0xAuLL;
  v45.tv_sec = 0;
  *&v45.tv_usec = 0;
  if (*(a1 + 80))
  {
    v5 = *(a1 + 80);
  }

  else
  {
    v5 = "NTPClockClient";
  }

  pthread_setname_np(v5);
  if (*(a1 + 92))
  {
    SetCurrentThreadPriority(*(a1 + 88));
  }

  if (v2 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  memset(&v46.fds_bits[24], 0, 32);
  if (v6 < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  memset(&v46, 0, 96);
  v8 = mach_absolute_time();
  v9 = *(a1 + 68);
  v10 = arc4random();
  v11 = MillisecondsToUpTicks(v10 % (*(a1 + 72) - *(a1 + 68) + 1) + v9) + v8;
  v39 = v4;
  v12 = v8 + v4;
  v13 = v2 >> 5;
  v14 = 1 << v2;
  v15 = 1 << v3;
  v16 = v3 >> 5;
LABEL_13:
  v40 = v11;
LABEL_14:
  v42 = v12;
  if (v12 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  do
  {
    while (1)
    {
      if (__darwin_check_fd_set_overflow(v2, &v46, 0))
      {
        v46.fds_bits[v13] |= v14;
      }

      if (__darwin_check_fd_set_overflow(v3, &v46, 0))
      {
        v46.fds_bits[v16] |= v15;
      }

      if (v17 == -1)
      {
        v22 = 0;
      }

      else
      {
        v18 = mach_absolute_time();
        v19 = v17 >= v18;
        v20 = v17 - v18;
        if (v20 != 0 && v19)
        {
          v21 = UpTicksToMicroseconds(v20);
          v23 = (v21 / 0xF4240);
          v24 = v21 % 0xF4240;
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        v45.tv_sec = v23;
        v45.tv_usec = v24;
        v22 = &v45;
      }

      v25 = select(v7 + 1, &v46, 0, 0, v22);
      if (v25 > 0)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_40;
      }

      if (*__error())
      {
        v26 = *__error();
        if (!v26)
        {
          break;
        }

        if (v26 != 4)
        {
          if (v26 == -6722)
          {
LABEL_40:
            v27 = mach_absolute_time();
            v12 = v42;
            if (v27 >= v42)
            {
              v43 = mach_absolute_time();
              pthread_mutex_lock(*(a1 + 200));
              v28 = (v43 - *(a1 + 3744));
              v29 = v28 * *(a1 + 3752);
              v30 = *(a1 + 3736);
              v19 = __CFADD__(v29, v30);
              *(a1 + 3736) = v29 + v30;
              v31 = *(a1 + 3728);
              if (v19)
              {
                ++v31;
              }

              *(a1 + 3728) = v31;
              v32 = *(a1 + 3784) * v28;
              v33 = *(a1 + 3776);
              v19 = __CFADD__(v33, v32);
              *(a1 + 3776) = v33 + v32;
              v34 = *(a1 + 3768);
              if (v19)
              {
                ++v34;
              }

              *(a1 + 3768) = v34;
              *(a1 + 3744) = v43;
              pthread_mutex_unlock(*(a1 + 200));
              v12 = v27 + v39;
            }

            v11 = v40;
            if (v27 >= v40)
            {
              v44 = v12;
              _NTPClockClientSendRequest(a1);
              v41 = v27;
              v35 = *(a1 + 68);
              v36 = arc4random();
              v37 = MillisecondsToUpTicks(v36 % (*(a1 + 72) - *(a1 + 68) + 1) + v35);
              v12 = v44;
              v11 = v37 + v41;
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          goto LABEL_39;
        }
      }

      else
      {
LABEL_39:
        usleep(0x186A0u);
      }
    }

    if (__darwin_check_fd_set_overflow(v3, &v46, 0) && (v46.fds_bits[v16] & v15) != 0)
    {
      _NTPClockClientProcessResponse(a1);
    }
  }

  while (!__darwin_check_fd_set_overflow(v2, &v46, 0) || (v46.fds_bits[v13] & v14) == 0);
  return 0;
}

uint64_t NTPClockGetSynchronizedNTPTime(uint64_t a1)
{
  pthread_mutex_lock(*(a1 + 200));
  v2 = (mach_absolute_time() - *(a1 + 3744)) * *(a1 + 3752);
  v3 = *(a1 + 3736);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  v6 = *(a1 + 3728);
  if (v4)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  pthread_mutex_unlock(*(a1 + 200));
  *(&v9 + 1) = v7;
  *&v9 = v5;
  return v9 >> 32;
}

uint64_t NTPClockGetSynchronizedNTPTimeNearUpTicks(uint64_t a1, unint64_t a2)
{
  v4 = mach_absolute_time();
  v5 = v4;
  if (v4 >= a2)
  {
    v6 = v4 - a2;
  }

  else
  {
    v6 = a2 - v4;
  }

  pthread_mutex_lock(*(a1 + 200));
  v7 = *(a1 + 3752);
  v8 = *(a1 + 3760);
  v9 = (v5 - *(a1 + 3744)) * v7;
  v10 = *(a1 + 3736);
  v11 = v9 + v10;
  if (__CFADD__(v9, v10))
  {
    v12 = *(a1 + 3728) + 1;
  }

  else
  {
    v12 = *(a1 + 3728);
  }

  pthread_mutex_unlock(*(a1 + 200));
  v13 = v6 / v8;
  v14 = v6 % v8 * v7;
  if (v5 >= a2)
  {
    v15 = v11 >= v14;
    v16 = v11 - v14;
    v18 = !v15;
    v17 = v12 - v13 - v18;
  }

  else
  {
    v15 = __CFADD__(v14, v11);
    v16 = v14 + v11;
    v17 = v13 + v15 + v12;
  }

  *(&v20 + 1) = v17;
  *&v20 = v16;
  return v20 >> 32;
}

unint64_t NTPClockGetUpTicksNearSynchronizedNTPTime(uint64_t a1, unint64_t a2)
{
  SynchronizedNTPTime = NTPClockGetSynchronizedNTPTime(a1);
  v4 = mach_absolute_time();
  if (SynchronizedNTPTime >= a2)
  {
    return v4 - NTPtoUpTicks(SynchronizedNTPTime - a2);
  }

  else
  {
    return NTPtoUpTicks(a2 - SynchronizedNTPTime) + v4;
  }
}

uint64_t NTPClockStartServer(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = v2(*(a1 + 128));
  }

  else
  {
    if (UpTicksPerSecond_sOnce != -1)
    {
      dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
    }

    v3 = UpTicksPerSecond_sTicksPerSecond;
  }

  v18 = 0;
  *(a1 + 96) = v3;
  v4 = ServerSocketPairOpen(2, 17, *(a1 + 48), (a1 + 52), -1, &v18 + 1, &v18);
  if (!v4)
  {
    v12 = v18;
    v13 = HIDWORD(v18);
    *(a1 + 232) = HIDWORD(v18);
    *(a1 + 236) = v12;
    if ((v13 & 0x80000000) == 0)
    {
      if (*(a1 + 64))
      {
        SocketSetP2P(v13, 1);
      }

      if (!*(a1 + 77))
      {
        SocketSetQoS(v13, 20);
      }

      SocketSetPacketReceiveInfo(v13);
      SocketSetPacketTimestamps(v13, 1);
    }

    if ((v12 & 0x80000000) == 0)
    {
      if (*(a1 + 64))
      {
        SocketSetP2P(v12, 1);
      }

      if (!*(a1 + 77))
      {
        SocketSetQoS(v12, 20);
      }

      SocketSetPacketReceiveInfo(v12);
      SocketSetPacketTimestamps(v12, 1);
    }

    v4 = OpenSelfConnectedLoopbackSocket((a1 + 224));
    if (!v4)
    {
      v4 = pthread_create((a1 + 208), 0, _NTPClockServerThread, a1);
      if (!v4)
      {
        *(a1 + 216) = a1 + 208;
        v17 = *(a1 + 56);
        if (*v17 <= 30)
        {
          if (*v17 == -1)
          {
            if (!_LogCategory_Initialize(v17, 0x1Eu))
            {
              return 0;
            }

            v17 = *(a1 + 56);
          }

          LogPrintF(v17, "OSStatus NTPClockStartServer(NTPClockRef)", 0x1Eu, "NTP server started on port %d\n", v8, v9, v10, v11, *(a1 + 52));
        }

        return 0;
      }
    }
  }

  v14 = v4;
  v15 = *(a1 + 56);
  if (*v15 <= 60)
  {
    if (*v15 == -1)
    {
      if (!_LogCategory_Initialize(v15, 0x3Cu))
      {
        goto LABEL_25;
      }

      v15 = *(a1 + 56);
    }

    LogPrintF(v15, "OSStatus NTPClockStartServer(NTPClockRef)", 0x3Cu, "### NTP server start failed: %#m\n", v8, v9, v10, v11, v14);
  }

LABEL_25:
  NTPClockStop(a1, v5, v6, v7, v8, v9, v10, v11);
  return v14;
}

uint64_t SocketSetPacketReceiveInfo(int a1)
{
  v16 = 1;
  result = SocketGetFamily(a1);
  if (result == 30)
  {
    result = setsockopt(a1, 41, 61, &v16, 4u);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    if (gLogCategory_NTPClockCore <= 30)
    {
      if (gLogCategory_NTPClockCore != -1)
      {
        return LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketSetPacketReceiveInfo(SocketRef, int)", 0x1Eu, "Set IPV6_RECVPKTINFO: enable %d, %#m", v11, v12, v13, v14, v16);
      }

      result = _LogCategory_Initialize(&gLogCategory_NTPClockCore, 0x1Eu);
      if (result)
      {
        return LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketSetPacketReceiveInfo(SocketRef, int)", 0x1Eu, "Set IPV6_RECVPKTINFO: enable %d, %#m", v11, v12, v13, v14, v16);
      }
    }
  }

  else if (result == 2)
  {
    result = setsockopt(a1, 0, 26, &v16, 4u);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    if (gLogCategory_NTPClockCore <= 30)
    {
      if (gLogCategory_NTPClockCore != -1)
      {
        return LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketSetPacketReceiveInfo(SocketRef, int)", 0x1Eu, "Set IP_PKTINFO: enable %d, %#m", v7, v8, v9, v10, v16);
      }

      result = _LogCategory_Initialize(&gLogCategory_NTPClockCore, 0x1Eu);
      if (result)
      {
        return LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketSetPacketReceiveInfo(SocketRef, int)", 0x1Eu, "Set IP_PKTINFO: enable %d, %#m", v7, v8, v9, v10, v16);
      }
    }
  }

  else if (gLogCategory_NTPClockCore <= 90)
  {
    v15 = result;
    if (gLogCategory_NTPClockCore != -1)
    {
      return LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketSetPacketReceiveInfo(SocketRef, int)", 0x5Au, "### IP_PKTINFO/IPV6_RECVPKTINFO not supported for this socket family: %d", v3, v4, v5, v6, v15);
    }

    result = _LogCategory_Initialize(&gLogCategory_NTPClockCore, 0x5Au);
    if (result)
    {
      return LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketSetPacketReceiveInfo(SocketRef, int)", 0x5Au, "### IP_PKTINFO/IPV6_RECVPKTINFO not supported for this socket family: %d", v3, v4, v5, v6, v15);
    }
  }

  return result;
}

CFDataRef _OPACKDecodeDataChunks(uint64_t a1, char *a2, uint64_t a3, char **a4, int *a5)
{
  v5 = a5;
  if (a3 - a2 < 1)
  {
    v19 = 0;
    v16 = -6750;
    goto LABEL_43;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v12 = a2 + 1;
    v11 = *a2;
    if ((v11 - 112) <= 0x20)
    {
      v13 = (v11 - 112);
      goto LABEL_5;
    }

    v16 = -6742;
    if (*a2 <= 0x92u)
    {
      break;
    }

    if (v11 == 147)
    {
      if (a3 - v12 < 4)
      {
        goto LABEL_44;
      }

      v13 = *(a2 + 1);
      v12 = a2 + 5;
    }

    else
    {
      if (v11 != 148)
      {
        goto LABEL_32;
      }

      if (a3 - v12 < 8)
      {
LABEL_44:
        v16 = -6750;
        goto LABEL_32;
      }

      v17 = a2[8];
      v12 = a2 + 9;
      if (v17 << 56 < 0)
      {
        v16 = -6743;
        goto LABEL_32;
      }

      v13 = (*(a2 + 1) | (a2[5] << 32) | (a2[6] << 40) | (a2[7] << 48)) & 0xFFFFFFFFFFFFFFLL | (v17 << 56);
    }

LABEL_5:
    if (v13)
    {
      if (a3 - v12 < v13)
      {
        goto LABEL_44;
      }

      if (__CFADD__(v13, v10))
      {
        v16 = -6710;
        goto LABEL_32;
      }

      v14 = malloc_type_realloc(v9, v13 + v10, 0x100004077774924uLL);
      if (!v14)
      {
        v16 = -6728;
LABEL_32:
        v5 = a5;
LABEL_33:
        if (v9)
        {
          free(v9);
        }

        v19 = 0;
        goto LABEL_42;
      }

      v15 = v14;
      memcpy(&v14[v10], v12, v13);
      a2 = &v12[v13];
      v9 = v15;
      v10 += v13;
    }

    else
    {
      a2 = v12;
    }

    if (a3 - a2 < 1)
    {
      v16 = -6750;
      v12 = a2;
      goto LABEL_32;
    }
  }

  if (v11 == 145)
  {
    if (a3 - v12 < 1)
    {
      goto LABEL_44;
    }

    v12 = a2 + 2;
    v13 = a2[1];
    goto LABEL_5;
  }

  if (v11 == 146)
  {
    if (a3 - v12 < 2)
    {
      goto LABEL_44;
    }

    v13 = *(a2 + 1);
    v12 = a2 + 3;
    goto LABEL_5;
  }

  v5 = a5;
  if (v11 != 3)
  {
    goto LABEL_33;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    v16 = -6743;
    goto LABEL_33;
  }

  if (v9)
  {
    v18 = CFDataCreateWithBytesNoCopy(0, v9, v10, *MEMORY[0x1E695E488]);
  }

  else
  {
    v18 = CFDataCreate(0, "", 0);
  }

  v19 = v18;
  if (!v18)
  {
    v16 = -6728;
    goto LABEL_33;
  }

  if (v10 >= 2)
  {
    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(a1 + 32);
      *(a1 + 32) = v21 + 1;
      CFDictionaryAddValue(v20, v21, v19);
    }
  }

  v16 = 0;
LABEL_42:
  a2 = v12;
LABEL_43:
  *a4 = a2;
  *v5 = v16;
  return v19;
}

uint64_t _OPACKEncodeUUID(uint64_t a1, CFUUIDRef uuid, int a3)
{
  *&v9.byte0 = 0;
  *&v9.byte8 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v7 = 0;
  result = _OPACKEncodeUID(a1, uuid, &v7);
  if (result)
  {
    return result;
  }

  if (v7)
  {
    return 0;
  }

LABEL_5:
  v8 = 5;
  if (a3)
  {
    [(__CFUUID *)uuid getUUIDBytes:&v9];
  }

  else
  {
    v9 = CFUUIDGetUUIDBytes(uuid);
  }

  return (*a1)(&v8, 17, 0, *(a1 + 8));
}

uint64_t _OPACKEncodeDate(uint64_t a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16) || (v5 = 0, result = _OPACKEncodeUID(a1, a2, &v5), !result) && !v5)
  {
    v5 = 6;
    v6 = MEMORY[0x193B04FE0](a2);
    return (*a1)(&v5, 9, 0, *(a1 + 8));
  }

  return result;
}

uint64_t OPACKEstimateEncodedSize(const __CFString *a1, unsigned int a2, _DWORD *a3)
{
  v6 = 0;
  v4 = OPACKEncodeObject(a1, a2, _OPACKEncoderEstimateCallback, &v6);
  if (a3)
  {
    *a3 = v4;
  }

  return v6;
}

id logger_12375()
{
  if (sCUOSLogCreateOnce_logger_12378 != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger_12378, &__block_literal_global_12379);
  }

  v1 = sCUOSLogHandle_logger_12380;

  return v1;
}

uint64_t __logger_block_invoke_12383()
{
  v0 = os_log_create("com.apple.CoreUtils", "CUSerialPort");
  v1 = sCUOSLogHandle_logger_12380;
  sCUOSLogHandle_logger_12380 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void _writeLineCompletion(uint64_t a1, void *aBlock)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(aBlock);
  aBlocka[0] = MEMORY[0x1E69E9820];
  aBlocka[1] = 3221225472;
  aBlocka[2] = ___writeLineCompletion_block_invoke;
  aBlocka[3] = &__block_descriptor_40_e5_v8__0l;
  aBlocka[4] = aBlock;
  v5 = _Block_copy(aBlocka);
  v6 = logger_12375();
  v7 = v6;
  if (a1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = a1;
      _os_log_error_impl(&dword_191EAF000, v7, OS_LOG_TYPE_ERROR, "### write line failed: err=%d", buf, 8u);
    }

    v13 = NSErrorF_safe(*MEMORY[0x1E696A768], a1, "write line failed", v8, v9, v10, v11, v12, v14);
    v4[2](v4, v13);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_191EAF000, v7, OS_LOG_TYPE_INFO, "write line success", buf, 2u);
    }

    v4[2](v4, 0);
  }

  v5[2](v5);
}

void _readLineCompletion(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = _Block_copy(aBlock);
  aBlocka[0] = MEMORY[0x1E69E9820];
  aBlocka[1] = 3221225472;
  aBlocka[2] = ___readLineCompletion_block_invoke;
  aBlocka[3] = &__block_descriptor_40_e5_v8__0l;
  aBlocka[4] = aBlock;
  v9 = _Block_copy(aBlocka);
  if (a1)
  {
    v10 = logger_12375();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v28) = a1;
      _os_log_error_impl(&dword_191EAF000, v10, OS_LOG_TYPE_ERROR, "### read line failed: err=%d", buf, 8u);
    }

    v16 = NSErrorF_safe(*MEMORY[0x1E696A768], a1, "Read line failed", v11, v12, v13, v14, v15, v25);
    v8[2](v8, 0, v16);
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
    v17 = logger_12375();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v16;
        _os_log_impl(&dword_191EAF000, v18, OS_LOG_TYPE_INFO, "read line success: line='%@'", buf, 0xCu);
      }

      (v8)[2](v8, v16, 0);
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_191EAF000, v18, OS_LOG_TYPE_ERROR, "### read line failed: bad UTF-8", buf, 2u);
      }

      v24 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960579, "Read line failed: bad UTF-8", v19, v20, v21, v22, v23, v25);
      v8[2](v8, 0, v24);

      v16 = 0;
    }
  }

  v9[2](v9);
}

void sub_191FA3C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PairingSessionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gPairingSessionTypeID = result;
  return result;
}

uint64_t PairingSessionCreate(uint64_t *a1, uint64_t a2, int a3)
{
  if (gPairingSessionInitOnce != -1)
  {
    dispatch_once_f(&gPairingSessionInitOnce, 0, _PairingSessionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  bzero((Instance + 24), 0x3E0uLL);
  *(v7 + 16) = &gLogCategory_CUPairing;
  *(v7 + 96) = a3;
  *(v7 + 112) = xmmword_191FF95E0;
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  *(v7 + 384) = 172800 * SecondsToUpTicks_sMultiplier;
  if (a2)
  {
    *(v7 + 24) = *a2;
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    *(v7 + 88) = *(a2 + 64);
    *(v7 + 72) = v10;
    *(v7 + 56) = v9;
    *(v7 + 40) = v8;
  }

  else
  {
    *(v7 + 88) = 0;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
  }

  PairingSessionSetKeychainInfo(v7, @"com.apple.pairing", 1886538084, @"Pairing Identity", @"Pairing Identity", 1886539877, @"Paired Peer", @"Paired Peer", 0);
  result = 0;
  *a1 = v7;
  return result;
}

void PairingSessionSetKeychainInfo(uint64_t a1, CFTypeRef cf1, int a3, CFTypeRef cf, CFTypeRef a5, int a6, CFTypeRef a7, CFTypeRef a8, int a9)
{
  if (cf1)
  {
    v17 = CFEqual(cf1, &stru_1F068B090);
    v18 = *(a1 + 784);
    if (v17)
    {
      if (v18)
      {
        CFRelease(*(a1 + 784));
        *(a1 + 784) = 0;
      }
    }

    else
    {
      CFRetain(cf1);
      *(a1 + 784) = cf1;
      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

  if (a3)
  {
    *(a1 + 800) = a3;
  }

  if (cf)
  {
    v19 = *(a1 + 792);
    CFRetain(cf);
    *(a1 + 792) = cf;
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (a5)
  {
    v20 = *(a1 + 808);
    CFRetain(a5);
    *(a1 + 808) = a5;
    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (a6)
  {
    *(a1 + 824) = a6;
  }

  if (a7)
  {
    v21 = *(a1 + 816);
    CFRetain(a7);
    *(a1 + 816) = a7;
    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (a8)
  {
    v22 = *(a1 + 832);
    CFRetain(a8);
    *(a1 + 832) = a8;
    if (v22)
    {
      CFRelease(v22);
    }
  }

  *(a1 + 840) = a9;
}

void PairingSessionInvalidate(void *a1)
{
  v1 = a1[111];
  if (v1)
  {
    queue = v1;
    CFRetain(a1);
    dispatch_async_f(queue, a1, _PairingSessionInvalidate);
  }
}

void _PairingSessionInvalidate(void *cf)
{
  v2 = cf[122];
  if (v2)
  {
    CFRelease(v2);
    cf[122] = 0;
  }

  v3 = cf[123];
  if (v3)
  {
    CFRelease(v3);
    cf[123] = 0;
  }

  v4 = cf[124];
  if (v4)
  {
    CFRelease(v4);
    cf[124] = 0;
  }

  v5 = cf[125];
  if (v5)
  {
    CFRelease(v5);
    cf[125] = 0;
  }

  v6 = cf[126];
  if (v6)
  {
    CFRelease(v6);
    cf[126] = 0;
  }

  v7 = cf[112];
  if (v7)
  {
    v7(1, 0, cf[113]);
    cf[112] = 0;
  }

  CFRelease(cf);
}

uint64_t PairingSessionCopyPeerACL(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1)
  {
    CFRetain(*(a1 + 280));
  }

  return v1;
}

uint64_t PairingSessionSetACL(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 184);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 184) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void *PairingSessionCopyExtraData(uint64_t a1, size_t *a2, int *a3)
{
  if (*(a1 + 240))
  {
    if (*(a1 + 248) <= 1uLL)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 248);
    }

    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 248);
      memcpy(v7, *(a1 + 240), v9);
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = -6728;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -6727;
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v8;
}

uint64_t PairingSessionSetExtraData(uint64_t a1, const void *a2, size_t a3)
{
  if (a2)
  {
    if (a3 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3;
    }

    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (!v7)
    {
      return 4294960568;
    }

    v8 = v7;
    if (a3)
    {
      memcpy(v7, a2, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 224);
  if (v9)
  {
    free(v9);
  }

  result = 0;
  *(a1 + 224) = v8;
  *(a1 + 232) = a3;
  return result;
}

CFMutableDictionaryRef PairingSessionCopyPeerInfo(void *a1, int *a2)
{
  v4 = a1[41];
  if (!v4)
  {
    v7 = a1[42];
    if (!v7)
    {
      MutableCopy = 0;
      goto LABEL_9;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    if (MutableCopy)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = -6728;
    goto LABEL_15;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  if (!MutableCopy)
  {
    goto LABEL_18;
  }

  v6 = a1[42];
  if (v6)
  {
    CFDictionaryApplyFunction(v6, _CFDictionaryMergeDictionaryApplier, MutableCopy);
  }

LABEL_9:
  v8 = a1[45];
  TypeID = CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(v8, @"groupInfoPeer", TypeID, 0);
  if (TypedValue)
  {
    v11 = TypedValue;
    if (MutableCopy || (MutableCopy = CFDictionaryCreateMutableCopy(0, 0, TypedValue)) != 0)
    {
      CFDictionarySetValue(MutableCopy, @"groupInfo", v11);
LABEL_14:
      CFDictionaryRemoveValue(MutableCopy, @"altIRK");
      v12 = 0;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (MutableCopy)
  {
    goto LABEL_14;
  }

  v12 = -6727;
LABEL_15:
  if (a2)
  {
    *a2 = v12;
  }

  return MutableCopy;
}

uint64_t PairingSessionSetAdditionalPeerInfo(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 336);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 336) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t PairingSessionSetAdditionalSelfInfo(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 352);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 352) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t PairingSessionSetMTU(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 4294960553;
  }

  v3 = a2 - 2 * (a2 / 0x101);
  v4 = a2 % 0x101 <= 1 ? -(a2 % 0x101) : -2;
  v5 = v3 + v4;
  if (!(v3 + v4))
  {
    return 4294960553;
  }

  v2 = 0;
  *(a1 + 112) = v5;
  *(a1 + 120) = a2;
  return v2;
}

id PairingSessionCopyPairedPeer(uint64_t a1, int *a2)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = -6727;
  if (a2)
  {
LABEL_3:
    *a2 = v5;
  }

LABEL_4:

  return v3;
}

id PairingSessionGetPairedPeer(uint64_t a1, int *a2)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = -6727;
  if (a2)
  {
LABEL_3:
    *a2 = v5;
  }

LABEL_4:

  return v3;
}

char *PairingSessionCopyPeerIdentifier(uint64_t a1, size_t *a2, int *a3)
{
  result = *(a1 + 312);
  if (result)
  {
    v7 = *(a1 + 320);
    result = strndup(result, v7);
    v8 = result == 0;
    if (result)
    {
      v9 = v7;
    }

    else
    {
      result = 0;
      v9 = 0;
    }

    if (v8)
    {
      v10 = -6728;
    }

    else
    {
      v10 = 0;
    }

    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    v10 = -6727;
    if (a2)
    {
LABEL_9:
      *a2 = v9;
    }
  }

  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

const void *PairingSessionCopyProperty(uint64_t a1, const void *a2, int *a3)
{
  v4 = *(a1 + 360);
  if (!v4)
  {
    v6 = 0;
LABEL_7:
    v7 = -6727;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(v4, a2);
  v6 = Value;
  if (!Value)
  {
    goto LABEL_7;
  }

  CFRetain(Value);
  v7 = 0;
  if (a3)
  {
LABEL_4:
    *a3 = v7;
  }

  return v6;
}

uint64_t PairingSessionSetProperty(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 360);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 360) = Mutable;
    if (!Mutable)
    {
      return 4294960568;
    }
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, key);
  }

  return 0;
}

uint64_t PairingSessionGetResumeInfo(uint64_t a1, void *a2)
{
  v2 = *(a1 + 96);
  if ((v2 - 3) > 1)
  {
    if ((v2 - 5) > 1 || *(a1 + 128) != 3)
    {
      return 4294960587;
    }
  }

  else if (*(a1 + 128) != 5)
  {
    return 4294960587;
  }

  v3 = 0;
  *a2 = *(a1 + 392);
  return v3;
}

uint64_t PairingSessionSetResumeInfo(void *a1, uint64_t a2, const void *a3, size_t a4)
{
  if (a4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4;
  }

  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  if (a4)
  {
    memcpy(v9, a3, a4);
  }

  v11 = a1[46];
  if (v11)
  {
    free(v11);
  }

  result = 0;
  a1[46] = v10;
  a1[47] = a4;
  a1[49] = a2;
  return result;
}

uint64_t PairingSessionSetResumeTTL(uint64_t a1, unsigned int a2)
{
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  *(a1 + 384) = SecondsToUpTicks_sMultiplier * a2;
  return 0;
}

uint64_t PairingSessionGenerateTranscriptResultMFi4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 688);
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(*(a1 + 688));
    if (Length)
    {
      v13 = Length;
      v14 = PairingSessionDeriveKey(a1);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        CryptoHMACInit(&v20, _kCryptoHashDescriptor_SHA256, v19, 0x20uLL);
        (*(v20 + 8))(&v20, BytePtr, v13);
        CryptoHMACFinal(&v20, a2);
        v15 = PairingSessionDeriveKey(a1);
        if (!v15)
        {
          v41 = 0;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v20 = 0u;
          CryptoHMACInit(&v20, _kCryptoHashDescriptor_SHA256, v18, 0x20uLL);
          (*(v20 + 8))(&v20, BytePtr, v13);
          CryptoHMACFinal(&v20, a2 + 32);
          return v15;
        }
      }
    }

    else
    {
      v15 = 4294960553;
    }
  }

  else
  {
    v15 = 4294960551;
  }

  v17 = *(a1 + 16);
  if (*v17 <= 90)
  {
    if (*v17 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x5Au))
      {
        return v15;
      }

      v17 = *(a1 + 16);
    }

    LogPrintF(v17, "OSStatus PairingSessionGenerateTranscriptResultMFi4(PairingSessionRef, CUPairingTranscriptResultMFi4 *)", 0x5Au, "### Generate MFi4 transcript result failed: %#m", a5, a6, a7, a8, v15);
  }

  return v15;
}

uint64_t PairingSessionSetEventHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 896) = a2;
  *(result + 904) = a3;
  return result;
}

uint64_t PairingSessionSetAddPairingHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 912) = a2;
  *(result + 920) = a3;
  return result;
}

uint64_t PairingSessionSetRemovePairingHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 928) = a2;
  *(result + 936) = a3;
  return result;
}

uint64_t PairingSessionSetListPairingsHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 944) = a2;
  *(result + 952) = a3;
  return result;
}

uint64_t PairingSessionSetSignBytesHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 960) = a2;
  *(result + 968) = a3;
  return result;
}

uint64_t PairingSessionSetSignBytesHandler_b(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 976);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 976) = v5;
    v4 = v8;
  }

  else
  {
    v6 = *(a1 + 976);
    if (v6)
    {
      CFRelease(v6);
      v4 = 0;
      *(a1 + 976) = 0;
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v4);
}

uint64_t PairingSessionSetVerifySignatureHandler_b(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 984);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 984) = v5;
    v4 = v8;
  }

  else
  {
    v6 = *(a1 + 984);
    if (v6)
    {
      CFRelease(v6);
      v4 = 0;
      *(a1 + 984) = 0;
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v4);
}

uint64_t PairingSessionExchange(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v225 = *MEMORY[0x1E69E9840];
  v192 = 0;
  v193 = 0;
  if (!a1)
  {
    return 4294960556;
  }

  v8 = a6;
  v14 = (a1 + 128);
  if (!*(a1 + 128))
  {
    v15 = *(a1 + 16);
    if (*v15 <= 30)
    {
      if (*v15 == -1)
      {
        if (!_LogCategory_Initialize(v15, 0x1Eu))
        {
          goto LABEL_12;
        }

        v15 = *(a1 + 16);
      }

      v16 = *(a1 + 96);
      if (v16 > 0xE)
      {
        v17 = "?";
      }

      else
      {
        v17 = off_1E73A4CA0[v16];
      }

      LogPrintF(v15, "OSStatus PairingSessionExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairStart, %s, %#{flags}\n", a5, a6, a7, a8, v17);
    }
  }

LABEL_12:
  __s = v14;
  v187 = a4;
  v188 = a5;
  *v224 = 0;
  v199 = 0;
  __src = 0;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v202 = &v205;
  v203 = xmmword_191FF95F0;
  v204 = 0;
  v19 = TLV8GetOrCopyCoalesced(a2, &a2[a3], 12, &__src, &v199, v224, 0);
  v24 = v19;
  v18 = v19;
  if (v19 == -6727)
  {
    v18 = TLV8GetOrCopyCoalesced(a2, &a2[a3], 13, &__src, &v199, v224, 0);
  }

  v190 = v8;
  v191 = a1;
  if (v18)
  {
    v186 = a3;
    v31 = 0;
    v32 = 0;
    if (v18 == -6727)
    {
      v18 = 0;
    }

    LOBYTE(v30) = 0;
    v189 = 0;
    goto LABEL_44;
  }

  v25 = v199;
  if (!v199)
  {
    v34 = *(a1 + 160);
    v33 = *(a1 + 168);
    if ((v34 - v33) >= *(a1 + 112))
    {
      v35 = *(a1 + 112);
    }

    else
    {
      v35 = v34 - v33;
    }

    v186 = a3;
    if (!v35)
    {
      v31 = 0;
      v32 = 0;
      LOBYTE(v30) = 0;
      v189 = 0;
      v18 = 4294960534;
      goto LABEL_44;
    }

    v36 = a1;
    v28 = a2;
    v37 = v35 + v33;
    v39 = v36 + 152;
    v38 = *(v36 + 152);
    if (v35 + v33 == v34)
    {
      v40 = 13;
    }

    else
    {
      v40 = 12;
    }

    v41 = TLV8BufferAppend(&v202, v40, (v38 + v33), v35);
    if (v41)
    {
LABEL_42:
      v18 = v41;
      v31 = 0;
      v32 = 0;
      LOBYTE(v30) = 0;
      v189 = 0;
LABEL_43:
      v8 = v190;
      a2 = v28;
      goto LABEL_44;
    }

    v32 = v203;
    v31 = v204;
    if (!v204)
    {
      if (v203 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v203;
      }

      v43 = malloc_type_malloc(v42, 0x100004077774924uLL);
      v31 = v43;
      if (!v43)
      {
        v32 = 0;
        LOBYTE(v30) = 0;
        goto LABEL_393;
      }

      if (v32)
      {
        memcpy(v43, v202, v32);
      }
    }

    v202 = &v205;
    *&v203 = 0;
    v204 = 0;
    if (v37 == v34)
    {
      LOBYTE(v30) = v191[176];
      free(*(v191 + 19));
      v18 = 0;
      v189 = 0;
      *v39 = 0;
      *(v39 + 8) = 0;
      *(v39 + 24) = 0;
      *(v39 + 16) = 0;
    }

    else
    {
      v18 = 0;
      LOBYTE(v30) = 0;
      v189 = 0;
      *(v191 + 21) += v35;
    }

    goto LABEL_43;
  }

  v26 = *(a1 + 144);
  v27 = v199 + v26;
  if (v199 + v26 <= v26)
  {
    v186 = a3;
    v31 = 0;
    v32 = 0;
    LOBYTE(v30) = 0;
    v189 = 0;
    v18 = 4294960545;
    goto LABEL_23;
  }

  if (v27 > 0x3E80)
  {
    v186 = a3;
    v31 = 0;
    v32 = 0;
    LOBYTE(v30) = 0;
    v189 = 0;
    v18 = 4294960553;
    goto LABEL_23;
  }

  v28 = a2;
  v29 = malloc_type_realloc(*(v191 + 17), v27, 0x100004077774924uLL);
  v30 = v29;
  if (!v29)
  {
    v186 = a3;
    v31 = 0;
    v32 = 0;
LABEL_393:
    v189 = 0;
    v18 = 4294960568;
    goto LABEL_43;
  }

  memcpy(&v29[*(v191 + 18)], __src, v25);
  if (*v224)
  {
    free(*v224);
    *v224 = 0;
  }

  if (v24 == -6727)
  {
    v31 = 0;
    a2 = v30;
    v32 = 0;
    v18 = 0;
    LOBYTE(v30) = 0;
    *(v191 + 17) = 0;
    *(v191 + 18) = 0;
    v186 = v27;
    v189 = a2;
LABEL_23:
    v8 = v190;
    goto LABEL_44;
  }

  v186 = a3;
  *(v191 + 17) = v30;
  *(v191 + 18) = v27;
  v41 = TLV8BufferAppend(&v202, 12, 0, 0);
  if (v41)
  {
    goto LABEL_42;
  }

  v32 = v203;
  v31 = v204;
  v8 = v190;
  if (v204)
  {
    goto LABEL_90;
  }

  if (v203 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v203;
  }

  v56 = malloc_type_malloc(v55, 0x100004077774924uLL);
  v31 = v56;
  if (v56)
  {
    if (v32)
    {
      memcpy(v56, v202, v32);
    }

LABEL_90:
    v18 = 0;
    LOBYTE(v30) = 0;
    v189 = 0;
    v202 = &v205;
    *&v203 = 0;
    v204 = 0;
    goto LABEL_44;
  }

  v32 = 0;
  LOBYTE(v30) = 0;
  v189 = 0;
  v18 = 4294960568;
LABEL_44:
  if (v204)
  {
    free(v204);
    v204 = 0;
  }

  v44 = v191;
  if (*v224)
  {
    free(*v224);
  }

  v192 = v32;
  v193 = v31;
  *v8 = v30;
  if (v18)
  {
    goto LABEL_52;
  }

  if (v31)
  {
    v18 = 0;
    *v187 = v31;
    *v188 = v32;
LABEL_51:
    v193 = 0;
    goto LABEL_52;
  }

  v46 = *(v191 + 24);
  if (v46 <= 3)
  {
    switch(v46)
    {
      case 1:
        v54 = _SetupClientExchange(v191, a2, v186, &v193, &v192, v8, v22, v23);
        break;
      case 2:
        v54 = _SetupServerExchange(v191, a2, v186, &v193, &v192, v8, v22, v23);
        break;
      case 3:
        v54 = _VerifyClientExchange(v191, a2, v186, &v193, &v192, v8, v22, v23);
        break;
      default:
        goto LABEL_111;
    }

LABEL_129:
    v18 = v54;
    goto LABEL_130;
  }

  if (v46 > 0xE)
  {
LABEL_108:
    if (v46 == 4)
    {
      v54 = _VerifyServerExchange(v191, a2, v186, &v193, &v192, v8, v22, v23);
      goto LABEL_129;
    }

    if (v46 == 5)
    {
      v54 = _ResumePairingClientExchange(v191, a2, v186, &v193, &v192, v8, v22, v23);
      goto LABEL_129;
    }

LABEL_111:
    v64 = *(v191 + 2);
    if (*v64 <= 60)
    {
      if (*v64 == -1)
      {
        if (!_LogCategory_Initialize(v64, 0x3Cu))
        {
          goto LABEL_188;
        }

        v64 = *(v191 + 2);
        v46 = *(v191 + 24);
      }

      LogPrintF(v64, "OSStatus PairingSessionExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### Bad pair type: %d\n", v20, v21, v22, v23, v46);
    }

LABEL_188:
    v18 = 4294960587;
    goto LABEL_52;
  }

  if (((1 << v46) & 0x2A00) == 0)
  {
    if (((1 << v46) & 0x5400) != 0)
    {
      v47 = &a2[v186];
      v48 = a2;
      do
      {
        if (v48 == v47)
        {
LABEL_215:
          v18 = 4294960569;
          goto LABEL_213;
        }

        if (v48 >= v47)
        {
          v18 = 4294960591;
          goto LABEL_213;
        }

        if (v47 - v48 < 2)
        {
          goto LABEL_215;
        }

        v49 = v48 + 2;
        v50 = v48[1];
        if (&v48[v50 + 2] > v47)
        {
          v18 = 4294960546;
          goto LABEL_213;
        }

        v51 = *v48;
        v48 += v50 + 2;
      }

      while (v51 != 6);
      if (v50 != 1)
      {
        v18 = 4294960553;
        goto LABEL_213;
      }

      if (*v49 == 1)
      {
        _PairingSessionReset(v191);
      }

      v52 = *__s;
      if (*__s)
      {
        if (*v49 != v52)
        {
          goto LABEL_212;
        }

        if (v52 != 1)
        {
          v53 = *(v191 + 2);
          if (*v53 <= 60)
          {
            if (*v53 != -1)
            {
              goto LABEL_78;
            }

            if (_LogCategory_Initialize(v53, 0x3Cu))
            {
              v53 = *(v191 + 2);
              v52 = v191[128];
LABEL_78:
              LogPrintF(v53, "OSStatus _AdminPairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### AdminPairing server bad state: %d\n", v20, v21, v22, v23, v52);
            }
          }

LABEL_212:
          v18 = 4294960587;
LABEL_213:
          *v8 = 0;
          goto LABEL_445;
        }
      }

      else
      {
        *__s = 1;
        if (*v49 != 1)
        {
          goto LABEL_212;
        }
      }

      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      v206 = 0u;
      v205 = 0u;
      __dst = 0;
      v195 = 0;
      v196 = 0;
      v194 = 0;
      v202 = &v205;
      v203 = xmmword_191FF95F0;
      v204 = 0;
      *__s = 2;
      Bytes = TLV8BufferAppend(&v202, 6, __s, 1uLL);
      if (Bytes)
      {
        goto LABEL_127;
      }

      v78 = *(v191 + 24);
      switch(v78)
      {
        case 0xE:
          Bytes = TLV8GetBytes(a2, &a2[v186], 0, 1uLL, 1uLL, &__dst, 0, 0);
          if (Bytes)
          {
            goto LABEL_127;
          }

          if (__dst == 5)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              theArray = Mutable;
              v94 = *(v191 + 118);
              if (v94)
              {
                v95 = v94(&Bytes, *(v191 + 119));
                v96 = Bytes;
              }

              else
              {
                *v224 = 0;
                v95 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                if (v95)
                {
                  v107 = _PairingSessionCopyPeers(v191, 0, 0, v224);
                  if (v107)
                  {
                    v108 = v107;
                    Count = CFArrayGetCount(v107);
                    if (Count < 1)
                    {
LABEL_247:
                      CFRelease(v108);
                    }

                    else
                    {
                      v109 = 0;
                      while (1)
                      {
                        TypeID = CFDictionaryGetTypeID();
                        TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v108, v109, TypeID, v224);
                        if (*v224)
                        {
                          break;
                        }

                        v112 = TypedValueAtIndex;
                        v113 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v113)
                        {
                          *v224 = -6728;
                          break;
                        }

                        v114 = v113;
                        v115 = CFStringGetTypeID();
                        TypedValue = CFDictionaryGetTypedValue(v112, @"identifier", v115, v224);
                        if (!TypedValue || (CFDictionarySetValue(v114, @"identifier", TypedValue), v117 = CFDataGetTypeID(), (v118 = CFDictionaryGetTypedValue(v112, @"pk", v117, v224)) == 0))
                        {
                          CFRelease(v114);
                          break;
                        }

                        CFDictionarySetValue(v114, @"pk", v118);
                        Int64Ranged = CFDictionaryGetInt64Ranged(v112, @"permissions", 0, 0xFFFFFFFFLL, 0);
                        CFDictionarySetInt64(v114, @"permissions", Int64Ranged);
                        CFArrayAppendValue(v95, v114);
                        CFRelease(v114);
                        if (Count == ++v109)
                        {
                          goto LABEL_247;
                        }
                      }

                      CFRelease(v108);
                      CFRelease(v95);
                      v95 = 0;
                    }
                  }
                }

                else
                {
                  *v224 = -6728;
                }

                v96 = *v224;
                Bytes = *v224;
              }

              if (!v95 || v96)
              {
                goto LABEL_435;
              }

              v163 = CFArrayGetCount(v95);
              if (v163 < 1)
              {
LABEL_432:
                Bytes = 0;
              }

              else
              {
                v164 = v163;
                v165 = 0;
                v201 = 0;
                while (1)
                {
                  *v224 = 0;
                  v199 = 0;
                  __src = 0;
                  if (v165)
                  {
                    appended = TLV8BufferAppend(&v202, 255, 0, 0);
                    v201 = appended;
                    if (appended)
                    {
                      goto LABEL_434;
                    }
                  }

                  v167 = CFDictionaryGetTypeID();
                  v168 = CFArrayGetTypedValueAtIndex(v95, v165, v167, &v201);
                  if (!v168)
                  {
                    break;
                  }

                  v169 = v168;
                  v170 = CFStringGetTypeID();
                  v171 = CFDictionaryGetTypedValue(v169, @"identifier", v170, &v201);
                  if (!v171)
                  {
                    break;
                  }

                  appended = CFStringGetOrCopyCStringUTF8(v171, v224, &__src, &v199);
                  v201 = appended;
                  if (appended)
                  {
                    goto LABEL_434;
                  }

                  appended = TLV8BufferAppend(&v202, 1, *v224, v199);
                  v201 = appended;
                  if (__src)
                  {
                    free(__src);
                    appended = v201;
                  }

                  if (appended)
                  {
                    goto LABEL_434;
                  }

                  v172 = CFDataGetTypeID();
                  v173 = CFDictionaryGetTypedValue(v169, @"pk", v172, &v201);
                  if (!v173)
                  {
                    break;
                  }

                  v174 = v173;
                  BytePtr = CFDataGetBytePtr(v173);
                  Length = CFDataGetLength(v174);
                  appended = TLV8BufferAppend(&v202, 3, BytePtr, Length);
                  v201 = appended;
                  if (appended)
                  {
                    v8 = v190;
LABEL_434:
                    Bytes = appended;
                    goto LABEL_435;
                  }

                  v177 = CFDictionaryGetInt64Ranged(v169, @"permissions", 0, 0xFFFFFFFFLL, 0);
                  appended = TLV8BufferAppendUInt64(&v202, 11, v177);
                  v201 = appended;
                  v8 = v190;
                  if (appended)
                  {
                    goto LABEL_434;
                  }

                  if (v164 == ++v165)
                  {
                    goto LABEL_432;
                  }
                }

                Bytes = v201;
                if (v201)
                {
                  goto LABEL_435;
                }
              }

LABEL_355:
              v152 = v203;
              v153 = v204;
              if (!v204)
              {
                if (v203 <= 1)
                {
                  v154 = 1;
                }

                else
                {
                  v154 = v203;
                }

                v155 = malloc_type_malloc(v154, 0x100004077774924uLL);
                if (!v155)
                {
                  Bytes = -6728;
                  goto LABEL_435;
                }

                v153 = v155;
                if (v152)
                {
                  memcpy(v155, v202, v152);
                }
              }

              v202 = &v205;
              *&v203 = 0;
              v204 = 0;
              v192 = v152;
              v193 = v153;
              Bytes = 0;
              v156 = *(v191 + 2);
              v157 = *v156;
              if (*v156 >= 31)
              {
                *__s = 3;
                goto LABEL_435;
              }

              if (v157 == -1)
              {
                v159 = _LogCategory_Initialize(*(v191 + 2), 0x1Eu);
                v156 = *(v191 + 2);
                if (!v159)
                {
                  goto LABEL_377;
                }

                v157 = *v156;
              }

              if (v157 > 10)
              {
                v158 = 1;
              }

              else
              {
                v158 = v157 == -1 && !_LogCategory_Initialize(v156, 0xAu);
              }

              LogPrintF(v156, "OSStatus _AdminPairingServerM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x1Eu, "AdminPairing server M4 -- response\n%?{end}%1{tlv8}\n", v20, v21, v22, v23, v158);
              v156 = *(v191 + 2);
LABEL_377:
              v161 = *v156;
              *__s = 3;
              if (v161 <= 30)
              {
                if (v161 == -1)
                {
                  if (!_LogCategory_Initialize(v156, 0x1Eu))
                  {
                    goto LABEL_435;
                  }

                  v156 = *(v191 + 2);
                }

                LogPrintF(v156, "OSStatus _AdminPairingServerM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x1Eu, "AdminPairing server done\n", v20, v21, v22, v23, v181);
              }

LABEL_435:
              if (v95)
              {
                CFRelease(v95);
              }

              v65 = theArray;
              goto LABEL_438;
            }

            v65 = 0;
            goto LABEL_457;
          }

          break;
        case 0xC:
          Bytes = TLV8GetBytes(a2, &a2[v186], 0, 1uLL, 1uLL, &__dst, 0, 0);
          if (!Bytes)
          {
            if (__dst == 4)
            {
              v65 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v65)
              {
                Bytes = TLV8GetOrCopyCoalesced(a2, &a2[v186], 1, &v196, &v195, &v194, 0);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                Bytes = CFDictionarySetCString(v65, @"identifier", v196, v195);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                if (v194)
                {
                  free(v194);
                  v194 = 0;
                }

                v80 = *(v191 + 116);
                if (v80)
                {
                  v81 = *(v191 + 117);
                  goto LABEL_198;
                }

                LODWORD(v199) = 0;
                *v224 = 0;
                __src = 0;
                v120 = CFDictionaryGetOrCopyBytes(v65, @"identifier", v224, &__src, &v199);
                if (v120)
                {
                  _PairingSessionDeletePeer(v191, v120, *v224, v121, v20, v21, v22, v23);
                  LODWORD(v199) = 0;
                }

LABEL_255:
                if (__src)
                {
                  free(__src);
                }

                v92 = v199;
LABEL_258:
                Bytes = v92;
                if (!v92)
                {
LABEL_354:
                  theArray = v65;
                  v95 = 0;
                  goto LABEL_355;
                }

                v130 = *(v191 + 2);
                if (*v130 <= 50)
                {
                  if (*v130 != -1)
                  {
LABEL_261:
                    LogPrintF(v130, "OSStatus _AdminPairingServerM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x32u, "### AdminPairing server failed for %##@: %#m\n", v20, v21, v22, v23, v65);
                    v92 = Bytes;
                    goto LABEL_324;
                  }

                  v149 = _LogCategory_Initialize(*(v191 + 2), 0x32u);
                  v92 = Bytes;
                  if (v149)
                  {
                    v130 = *(v191 + 2);
                    goto LABEL_261;
                  }
                }

LABEL_324:
                if (v92 <= -6764)
                {
                  if (v92 > -6774)
                  {
                    if (v92 == -6773)
                    {
                      v150 = 7;
                      goto LABEL_353;
                    }

                    if (v92 == -6764)
                    {
                      v150 = 6;
                      goto LABEL_353;
                    }
                  }

                  else
                  {
                    if (v92 == -71144)
                    {
                      v150 = 8;
                      goto LABEL_353;
                    }

                    if (v92 == -6776)
                    {
                      v150 = 9;
                      goto LABEL_353;
                    }
                  }
                }

                else if (v92 <= -6755)
                {
                  if (v92 == -6763)
                  {
                    v150 = 5;
                    goto LABEL_353;
                  }

                  if (v92 == -6760)
                  {
                    v150 = 3;
                    goto LABEL_353;
                  }
                }

                else
                {
                  switch(v92)
                  {
                    case -6754:
                      v150 = 2;
                      goto LABEL_353;
                    case -6727:
                      v150 = 4;
                      goto LABEL_353;
                    case -6700:
                      v150 = 1;
                      goto LABEL_353;
                  }
                }

                if (v92 == -6735)
                {
                  v150 = 10;
                }

                else
                {
                  v150 = 1;
                }

LABEL_353:
                Bytes = TLV8BufferAppendUInt64(&v202, 7, v150);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                goto LABEL_354;
              }

              goto LABEL_457;
            }

            break;
          }

          goto LABEL_127;
        case 0xA:
          Bytes = TLV8GetBytes(a2, &a2[v186], 0, 1uLL, 1uLL, &__dst, 0, 0);
          if (!Bytes)
          {
            if (__dst == 3)
            {
              v65 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v65)
              {
                Bytes = TLV8GetOrCopyCoalesced(a2, &a2[v186], 1, &v196, &v195, &v194, 0);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                Bytes = CFDictionarySetCString(v65, @"identifier", v196, v195);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                if (v194)
                {
                  free(v194);
                  v194 = 0;
                }

                Bytes = TLV8GetOrCopyCoalesced(a2, &a2[v186], 3, &v196, &v195, &v194, 0);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                Bytes = CFDictionarySetData(v65, @"pk", v196, v195);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                if (v194)
                {
                  free(v194);
                  v194 = 0;
                }

                UInt64 = TLV8GetUInt64(a2, &a2[v186], 11, &Bytes, 0);
                if (Bytes)
                {
                  goto LABEL_438;
                }

                if (!HIDWORD(UInt64))
                {
                  Bytes = CFDictionarySetInt64(v65, @"permissions", UInt64);
                  if (Bytes)
                  {
                    goto LABEL_438;
                  }

                  v80 = *(v191 + 114);
                  if (v80)
                  {
                    v81 = *(v191 + 115);
LABEL_198:
                    v92 = v80(v65, v81);
                    goto LABEL_258;
                  }

                  LODWORD(v199) = 0;
                  *v224 = 0;
                  __src = 0;
                  v122 = CFDictionaryGetOrCopyBytes(v65, @"identifier", v224, &__src, &v199);
                  if (v122)
                  {
                    v123 = v122;
                    v124 = CFDataGetTypeID();
                    v125 = CFDictionaryGetTypedValue(v65, @"pk", v124, &v199);
                    if (v125)
                    {
                      v126 = v125;
                      if (CFDataGetLength(v125) == 32)
                      {
                        v127 = CFDictionaryGetInt64Ranged(v65, @"permissions", 0, 0xFFFFFFFFLL, 0);
                        v128 = *v224;
                        v129 = CFDataGetBytePtr(v126);
                        LODWORD(v199) = _PairingSessionSavePeerKeychain(v191, v123, v128, v129, v127);
                      }

                      else
                      {
                        LODWORD(v199) = -6743;
                      }

                      v8 = v190;
                    }
                  }

                  goto LABEL_255;
                }

                v151 = -6710;
LABEL_342:
                Bytes = v151;
                goto LABEL_438;
              }

LABEL_457:
              v151 = -6728;
              goto LABEL_342;
            }

            break;
          }

LABEL_127:
          v65 = 0;
LABEL_438:
          if (v194)
          {
            free(v194);
          }

          if (v65)
          {
            CFRelease(v65);
          }

          if (v204)
          {
            free(v204);
          }

          v18 = Bytes;
          *v8 = Bytes == 0;
          if (!v18)
          {
            goto LABEL_131;
          }

LABEL_445:
          v178 = *(v191 + 2);
          v179 = *v178;
          if (*v178 > 50)
          {
            goto LABEL_52;
          }

          if (v179 == -1)
          {
            if (!_LogCategory_Initialize(*(v191 + 2), 0x32u))
            {
              goto LABEL_52;
            }

            v178 = *(v191 + 2);
            v179 = *v178;
          }

          v180 = *__s;
          if (v179 == -1)
          {
            _LogCategory_Initialize(v178, 0x28u);
          }

          LogPrintF(v178, "OSStatus _AdminPairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### AdminPairing server state %d failed: %#m\n%?{end}%1{tlv8}\n", v20, v21, v22, v23, v180);
          goto LABEL_52;
        default:
          v97 = *(v191 + 2);
          if (*v97 <= 60)
          {
            if (*v97 == -1)
            {
              if (!_LogCategory_Initialize(v97, 0x3Cu))
              {
                break;
              }

              v97 = *(v191 + 2);
              v78 = *(v191 + 24);
            }

            LogPrintF(v97, "OSStatus _AdminPairingServerM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x3Cu, "### AdminPairing server bad session type %d\n", v20, v21, v22, v23, v78);
          }

          break;
      }

      v65 = 0;
      v151 = -6705;
      goto LABEL_342;
    }

    if (v46 == 6)
    {
      v54 = _ResumePairingServerExchange(v191, a2, v186, &v193, &v192, v8, v22, v23);
      goto LABEL_129;
    }

    goto LABEL_108;
  }

  v57 = *__s;
  if (!*__s)
  {
    v57 = 1;
    *__s = 1;
  }

  v58 = &a2[v186];
  if (v186)
  {
    v59 = a2;
    do
    {
      if (v59 == v58)
      {
LABEL_262:
        v18 = 4294960569;
        goto LABEL_174;
      }

      if (v59 >= v58)
      {
        v18 = 4294960591;
        goto LABEL_174;
      }

      if (v58 - v59 < 2)
      {
        goto LABEL_262;
      }

      v60 = v59 + 2;
      v61 = v59[1];
      v62 = &v59[v61 + 2];
      if (v62 > v58)
      {
        v18 = 4294960546;
        goto LABEL_174;
      }

      v63 = *v59;
      v59 += v61 + 2;
    }

    while (v63 != 6);
    if (v61 != 1)
    {
LABEL_406:
      v18 = 4294960553;
      goto LABEL_174;
    }

    if (*v60 != v57)
    {
LABEL_173:
      v18 = 4294960587;
LABEL_174:
      v8 = v190;
      goto LABEL_280;
    }
  }

  else
  {
    v62 = 0;
  }

  if (v57 != 2)
  {
    if (v57 == 1)
    {
      LODWORD(v196) = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      v206 = 0u;
      v205 = 0u;
      v199 = 0;
      __src = 0;
      v202 = &v205;
      v203 = xmmword_191FF95F0;
      v204 = 0;
      if (!v186)
      {
        LODWORD(v196) = TLV8BufferAppend(&v202, 6, __s, 1uLL);
        if (v196)
        {
          goto LABEL_119;
        }

        v82 = *(v191 + 24);
        switch(v82)
        {
          case 0xD:
            v224[0] = 5;
            v91 = TLV8BufferAppend(&v202, 0, v224, 1uLL);
LABEL_222:
            LODWORD(v196) = v91;
            if (v91)
            {
              goto LABEL_119;
            }

LABEL_223:
            v99 = v203;
            v100 = v204;
            if (v204)
            {
LABEL_230:
              v202 = &v205;
              *&v203 = 0;
              v204 = 0;
              v192 = v99;
              v193 = v100;
              LODWORD(v196) = 0;
              v191[128] = 2;
              v103 = *(v191 + 2);
              v104 = *v103;
              if (*v103 > 30)
              {
                goto LABEL_119;
              }

              if (v104 == -1)
              {
                if (!_LogCategory_Initialize(*(v191 + 2), 0x1Eu))
                {
                  goto LABEL_119;
                }

                v103 = *(v191 + 2);
                v104 = *v103;
              }

              if (v104 > 10)
              {
                v105 = 1;
              }

              else
              {
                v105 = v104 == -1 && !_LogCategory_Initialize(v103, 0xAu);
              }

              LogPrintF(v103, "OSStatus _AdminPairingClientM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x1Eu, "AdminPairing client M1 -- request\n%?{end}%1{tlv8}\n", v20, v21, v22, v23, v105);
LABEL_119:
              if (v199)
              {
                free(v199);
              }

              v8 = v190;
              if (v204)
              {
                free(v204);
              }

              v18 = v196;
              *v190 = 0;
              if (v18)
              {
                goto LABEL_281;
              }

              goto LABEL_131;
            }

            if (v203 <= 1)
            {
              v101 = 1;
            }

            else
            {
              v101 = v203;
            }

            v102 = malloc_type_malloc(v101, 0x100004077774924uLL);
            if (v102)
            {
              v100 = v102;
              if (v99)
              {
                memcpy(v102, v202, v99);
              }

              goto LABEL_230;
            }

            v160 = -6728;
LABEL_374:
            LODWORD(v196) = v160;
            goto LABEL_119;
          case 0xB:
            v224[0] = 4;
            LODWORD(v196) = TLV8BufferAppend(&v202, 0, v224, 1uLL);
            if (v196)
            {
              goto LABEL_119;
            }

            v98 = CFDictionaryGetOrCopyBytes(*(v191 + 45), @"controllerIdentifier", &__src, &v199, &v196);
            if (!v98)
            {
              goto LABEL_119;
            }

            LODWORD(v196) = TLV8BufferAppend(&v202, 1, v98, __src);
            if (v196)
            {
              goto LABEL_119;
            }

            if (v199)
            {
              free(v199);
              v199 = 0;
            }

            goto LABEL_223;
          case 9:
            v224[0] = 3;
            LODWORD(v196) = TLV8BufferAppend(&v202, 0, v224, 1uLL);
            if (v196)
            {
              goto LABEL_119;
            }

            v83 = CFDictionaryGetOrCopyBytes(*(v191 + 45), @"controllerIdentifier", &__src, &v199, &v196);
            if (!v83)
            {
              goto LABEL_119;
            }

            LODWORD(v196) = TLV8BufferAppend(&v202, 1, v83, __src);
            if (v196)
            {
              goto LABEL_119;
            }

            if (v199)
            {
              free(v199);
              v199 = 0;
            }

            v84 = *(v191 + 45);
            v85 = CFDataGetTypeID();
            v86 = CFDictionaryGetTypedValue(v84, @"controllerPK", v85, &v196);
            if (!v86)
            {
              goto LABEL_119;
            }

            v87 = v86;
            v88 = CFDataGetBytePtr(v86);
            v89 = CFDataGetLength(v87);
            LODWORD(v196) = TLV8BufferAppend(&v202, 3, v88, v89);
            if (v196)
            {
              goto LABEL_119;
            }

            v90 = CFDictionaryGetInt64Ranged(*(v191 + 45), @"permissions", 0, 0xFFFFFFFFLL, &v196);
            if (v196)
            {
              goto LABEL_119;
            }

            v91 = TLV8BufferAppendUInt64(&v202, 11, v90);
            goto LABEL_222;
        }

        v106 = *(v191 + 2);
        if (*v106 <= 60)
        {
          if (*v106 == -1)
          {
            if (!_LogCategory_Initialize(v106, 0x3Cu))
            {
              goto LABEL_373;
            }

            v106 = *(v191 + 2);
            v82 = *(v191 + 24);
          }

          LogPrintF(v106, "OSStatus _AdminPairingClientM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x3Cu, "### AdminPairing client bad session type %d\n", v20, v21, v22, v23, v82);
        }
      }

LABEL_373:
      v160 = -6705;
      goto LABEL_374;
    }

    v77 = *(v191 + 2);
    if (*v77 > 60)
    {
      goto LABEL_173;
    }

    v8 = v190;
    if (*v77 == -1)
    {
      if (!_LogCategory_Initialize(v77, 0x3Cu))
      {
        goto LABEL_210;
      }

      v77 = *(v191 + 2);
      v57 = v191[128];
    }

    LogPrintF(v77, "OSStatus _AdminPairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### AdminPairing client bad state: %d\n", v20, v21, v22, v23, v57);
LABEL_210:
    v18 = 4294960587;
    goto LABEL_280;
  }

  v74 = *(v191 + 2);
  v75 = *v74;
  if (*v74 > 30)
  {
    goto LABEL_265;
  }

  if (v75 != -1)
  {
    goto LABEL_148;
  }

  if (_LogCategory_Initialize(*(v191 + 2), 0x1Eu))
  {
    v74 = *(v191 + 2);
    v75 = *v74;
LABEL_148:
    if (v75 > 10)
    {
      v76 = 1;
    }

    else
    {
      v76 = v75 == -1 && !_LogCategory_Initialize(v74, 0xAu);
    }

    LogPrintF(v74, "OSStatus _AdminPairingClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, const uint8_t *const)", 0x1Eu, "AdminPairing client M2 -- response\n%?{end}%1{tlv8}\n", v20, v21, v22, v23, v76);
  }

LABEL_265:
  v131 = a2;
  do
  {
    if (v58 <= v131 || v58 - v131 < 2 || (v132 = v131 + 2, v133 = v131[1], &v131[v133 + 2] > v58))
    {
      if (*(v191 + 24) == 13)
      {
        theArraya = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (!theArraya)
        {
          v18 = 4294960568;
          goto LABEL_174;
        }

LABEL_291:
        v140 = 0;
        while (v58 > v62)
        {
          if (v58 - v62 < 2)
          {
            break;
          }

          v141 = v62;
          v142 = v62 + 2;
          v143 = v62[1];
          v62 += v143 + 2;
          if (v62 > v58)
          {
            break;
          }

          v144 = a2;
          v145 = *v141;
          if (!v140)
          {
            v140 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v140)
            {
              CFRelease(theArraya);
              v18 = 4294960568;
              v8 = v190;
              v44 = v191;
              goto LABEL_280;
            }
          }

          v146 = (((v145 + 1) >> 1) | ((v145 + 1) << 7));
          if (v146 > 1)
          {
            a2 = v144;
            if (v146 == 2)
            {
              v147 = CFDictionarySetData(v140, @"pk", v142, v143);
              if (v147)
              {
                goto LABEL_403;
              }
            }

            else if (v146 == 6)
            {
              v18 = 4294960553;
              if (v143 > 3)
              {
                v44 = v191;
                if (v143 == 4)
                {
                  v148 = *v142;
                }

                else
                {
                  if (v143 != 8)
                  {
                    goto LABEL_404;
                  }

                  v148 = *v142;
                }
              }

              else
              {
                v44 = v191;
                if (v143 == 1)
                {
                  v148 = *v142;
                }

                else
                {
                  if (v143 != 2)
                  {
                    goto LABEL_404;
                  }

                  v148 = *(v141 + 1);
                }
              }

              v147 = CFDictionarySetInt64(v140, @"permissions", v148);
              if (v147)
              {
LABEL_403:
                v18 = v147;
                v44 = v191;
LABEL_404:
                CFRelease(v140);
                CFRelease(theArraya);
                goto LABEL_174;
              }
            }
          }

          else
          {
            a2 = v144;
            if (!v146)
            {
              if (CFDictionaryGetCount(v140) >= 1)
              {
                CFArrayAppendValue(theArraya, v140);
              }

              CFRelease(v140);
              goto LABEL_291;
            }

            v147 = CFDictionarySetCString(v140, @"identifier", v142, v143);
            if (v147)
            {
              goto LABEL_403;
            }
          }
        }

        v44 = v191;
        if (v140)
        {
          if (CFDictionaryGetCount(v140) >= 1)
          {
            CFArrayAppendValue(theArraya, v140);
          }

          CFRelease(v140);
        }

        v18 = PairingSessionSetProperty(v191, @"pairings", theArraya);
        CFRelease(theArraya);
        if (v18)
        {
          goto LABEL_174;
        }
      }

      *(v44 + 128) = 3;
      v162 = *(v44 + 16);
      v8 = v190;
      if (*v162 <= 30)
      {
        if (*v162 == -1)
        {
          if (!_LogCategory_Initialize(v162, 0x1Eu))
          {
            goto LABEL_398;
          }

          v162 = *(v44 + 16);
        }

        LogPrintF(v162, "OSStatus _AdminPairingClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, const uint8_t *const)", 0x1Eu, "AdminPairing client done\n", v20, v21, v22, v23, v181);
      }

LABEL_398:
      v192 = 0;
      v193 = 0;
      *v190 = 1;
      goto LABEL_131;
    }

    v134 = *v131;
    v131 += v133 + 2;
  }

  while (v134 != 7);
  if (v133 != 1)
  {
    goto LABEL_406;
  }

  v135 = *v132;
  v8 = v190;
  if (v135 >= 0xA)
  {
    if (v135 == 10)
    {
      v18 = 4294960561;
    }

    else
    {
      v18 = 4294960596;
    }
  }

  else
  {
    v18 = dword_191FFB0EC[*v132];
  }

  v136 = *(v191 + 2);
  if (*v136 <= 50)
  {
    if (*v136 != -1)
    {
LABEL_278:
      LogPrintF(v136, "OSStatus _AdminPairingClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, const uint8_t *const)", 0x32u, "### AdminPairing client M2 bad status: 0x%X, %#m\n", v20, v21, v22, v23, v135);
      goto LABEL_280;
    }

    if (_LogCategory_Initialize(v136, 0x32u))
    {
      v136 = *(v191 + 2);
      v135 = *v132;
      goto LABEL_278;
    }
  }

LABEL_280:
  *v8 = 0;
LABEL_281:
  v137 = *(v44 + 16);
  v138 = *v137;
  if (*v137 <= 50)
  {
    if (v138 != -1)
    {
      goto LABEL_283;
    }

    if (_LogCategory_Initialize(*(v44 + 16), 0x32u))
    {
      v137 = *(v44 + 16);
      v138 = *v137;
LABEL_283:
      v139 = *__s;
      if (v138 == -1)
      {
        _LogCategory_Initialize(v137, 0x28u);
      }

      LogPrintF(v137, "OSStatus _AdminPairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### AdminPairing client state %d failed: %#m\n%?{end}%1{tlv8}\n", v20, v21, v22, v23, v139);
    }
  }

LABEL_130:
  if (v18)
  {
    goto LABEL_52;
  }

LABEL_131:
  v66 = v192;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v202 = &v205;
  v203 = xmmword_191FF95F0;
  v204 = 0;
  if (*(v44 + 120) >= v192)
  {
    v18 = 0;
    *v187 = v193;
    *v188 = v66;
    goto LABEL_51;
  }

  if (*(v44 + 152) || *(v44 + 160))
  {
    v18 = 4294960593;
    goto LABEL_52;
  }

  v67 = v193;
  *(v44 + 152) = v193;
  *(v44 + 160) = v66;
  v68 = *(v44 + 112);
  *(v44 + 168) = v68;
  *(v44 + 176) = *v8;
  v69 = TLV8BufferAppend(&v202, 12, v67, v68);
  v193 = 0;
  v70 = v204;
  if (v69)
  {
    v18 = v69;
    if (v204)
    {
      goto LABEL_136;
    }

    goto LABEL_52;
  }

  v71 = v203;
  if (v204)
  {
LABEL_145:
    v18 = 0;
    v202 = &v205;
    *&v203 = 0;
    v204 = 0;
    *v187 = v70;
    *v188 = v71;
    *v8 = 0;
    goto LABEL_52;
  }

  if (v203 <= 1)
  {
    v72 = 1;
  }

  else
  {
    v72 = v203;
  }

  v73 = malloc_type_malloc(v72, 0x100004077774924uLL);
  if (v73)
  {
    v70 = v73;
    if (v71)
    {
      memcpy(v73, v202, v71);
    }

    goto LABEL_145;
  }

  v18 = 4294960568;
  v70 = v204;
  if (v204)
  {
LABEL_136:
    free(v70);
  }

LABEL_52:
  if (v189)
  {
    free(v189);
  }

  if (v193)
  {
    free(v193);
  }

  if (v18 != -6771 && v18)
  {
    _PairingSessionReset(v44);
  }

  return v18;
}