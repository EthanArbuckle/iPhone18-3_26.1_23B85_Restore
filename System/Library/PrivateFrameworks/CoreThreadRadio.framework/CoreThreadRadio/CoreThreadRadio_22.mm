uint64_t (***ot::Posix::Udp::Get(ot::Posix::Udp *this))()
{
  {
    __cxa_atexit(std::allocator<char>::allocator[abi:dn200100], &ot::Posix::Udp::Get(void)::sInstance, &_mh_execute_header);
  }

  return &ot::Posix::Udp::Get(void)::sInstance;
}

BOOL anonymous namespace::receivePacket(int a1, uint64_t a2, unsigned __int16 *a3, __n128 *a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v13 = 0;
  v15[0] = a2;
  v15[1] = *a3;
  v14.msg_name = &v16;
  v14.msg_namelen = 28;
  v14.msg_control = &v23;
  v14.msg_controllen = 1280;
  v14.msg_iov = v15;
  v14.msg_iovlen = 1;
  v14.msg_flags = 0;
  v13 = recvmsg(a1, &v14, 0);
  if (v13 > 0)
  {
    *v20 = v13;
    if (v14.msg_controllen < 0xCuLL)
    {
      msg_control = 0;
    }

    else
    {
      msg_control = v14.msg_control;
    }

    for (i = msg_control; i; i = v6)
    {
      if (i[1] == 41)
      {
        if (i[2] == 47)
        {
          v11 = 0;
          v11 = i[3];
          v19[2].n128_u8[4] = v11;
        }

        else if (i[2] == 46)
        {
          v9 = *(i + 3);
          v10 = i[7];
          v19[2].n128_u8[5] = v19[2].n128_u8[5] & 0xFB | (4 * (v10 != gNetifIndex));
          ot::Posix::Ip6Utils::ReadIp6AddressFrom(&v9, v19);
        }
      }

      if (i)
      {
        if ((i + ((*i + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12) > v14.msg_control + v14.msg_controllen)
        {
          v5 = 0;
        }

        else
        {
          v5 = i + ((*i + 3) & 0xFFFFFFFFFFFFFFFCLL);
        }

        v6 = v5;
      }

      else
      {
        if (v14.msg_controllen < 0xCuLL)
        {
          v7 = 0;
        }

        else
        {
          v7 = v14.msg_control;
        }

        v6 = v7;
      }
    }

    v19[2].n128_u16[1] = _OSSwapInt16(v17);
    ot::Posix::Ip6Utils::ReadIp6AddressFrom(&v18, v19 + 1);
  }

  else
  {
    perror("recvmsg");
  }

  return v13 <= 0;
}

BOOL ot::Posix::Ip6Utils::IsIp6AddressLinkLocal(unsigned __int8 *a1)
{
  v2 = 0;
  if (*a1 == 254)
  {
    return (a1[1] & 0xC0) == 128;
  }

  return v2;
}

{
  return ot::Posix::Ip6Utils::IsIp6AddressLinkLocal(a1);
}

uint64_t ot::Power::Domain::Set(ot::Power::Domain *this, const char *a2)
{
  *&__n[4] = 0;
  *__n = strlen(a2);
  if (*__n <= 8u)
  {
    memcpy(this, a2, *__n);
    *(this + *__n) = 0;
  }

  else
  {
    *&__n[2] = 7;
  }

  return *&__n[2];
}

uint64_t ot::Power::TargetPower::FromString(ot::Power::TargetPower *this, char *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  __lasts = 0;
  v8 = strtok_r(a2, ",", &__lasts);
  if (v8)
  {
    v9 = ot::Utils::CmdLineParser::ParseAsUint8(v8, this, v2);
    if (!v9)
    {
      v8 = strtok_r(0, ",", &__lasts);
      if (v8)
      {
        v9 = ot::Utils::CmdLineParser::ParseAsUint8(v8, this + 1, v3);
        if (!v9)
        {
          v8 = strtok_r(0, ",", &__lasts);
          if (v8)
          {
            return ot::Utils::CmdLineParser::ParseAsInt16(v8, this + 2, v4);
          }

          else
          {
            return 6;
          }
        }
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    return 6;
  }

  return v9;
}

uint64_t ot::String<(unsigned short)12>::String(uint64_t a1)
{
  ot::String<(unsigned short)12>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 12);
  return a1;
}

uint64_t ot::Power::RawPowerSetting::Set(ot::Power::RawPowerSetting *this, ot::Utils::CmdLineParser *a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  *v6 = 16;
  v7 = ot::Utils::CmdLineParser::ParseAsHexString(a2, v6, this, a4);
  if (!v7)
  {
    *(this + 8) = v6[0];
  }

  return v7;
}

uint64_t ot::String<(unsigned short)33>::String(uint64_t a1)
{
  ot::String<(unsigned short)33>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 33);
  return a1;
}

uint64_t ot::Power::CalibratedPower::FromString(ot::Power::CalibratedPower *this, char *a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  __lasts = 0;
  v10 = strtok_r(a2, ",", &__lasts);
  if (v10)
  {
    v11 = ot::Utils::CmdLineParser::ParseAsUint8(v10, this, v2);
    if (!v11)
    {
      v10 = strtok_r(0, ",", &__lasts);
      if (v10)
      {
        v11 = ot::Utils::CmdLineParser::ParseAsUint8(v10, this + 1, v3);
        if (!v11)
        {
          v10 = strtok_r(0, ",", &__lasts);
          if (v10)
          {
            v11 = ot::Utils::CmdLineParser::ParseAsInt16(v10, this + 2, v4);
            if (!v11)
            {
              return ot::Power::RawPowerSetting::Set((this + 4), __lasts, v5, v6);
            }
          }

          else
          {
            return 6;
          }
        }
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    return 6;
  }

  return v11;
}

ot::StringWriter *ot::Power::CalibratedPower::ToString@<X0>(ot::Power::CalibratedPower *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)53>::String(a2);
  v5 = *this;
  v6 = *(this + 1);
  v7 = *(this + 1);
  ot::Power::RawPowerSetting::ToString((this + 4), v9);
  v2 = ot::String<(unsigned short)33>::AsCString(v9);
  return ot::StringWriter::Append(a2, "%u,%u,%d,%s", v5, v6, v7, v2);
}

uint64_t ot::String<(unsigned short)53>::String(uint64_t a1)
{
  ot::String<(unsigned short)53>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 53);
  return a1;
}

uint64_t ot::String<(unsigned short)33>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)33>::AsCString(a1);
}

void *mbedtls_aes_free(void *result)
{
  if (result)
  {
    return mbedtls_platform_zeroize(result, 0x120uLL);
  }

  return result;
}

uint64_t mbedtls_aes_setkey_enc(int *a1, uint64_t a2, unsigned int a3)
{
  switch(a3)
  {
    case 0x80u:
      *a1 = 10;
      break;
    case 0xC0u:
      *a1 = 12;
      break;
    case 0x100u:
      *a1 = 14;
      break;
    default:
      return -32;
  }

  *(a1 + 1) = mbedtls_aes_rk_offset();
  v9 = &a1[*(a1 + 1) + 4];
  for (i = 0; i < a3 >> 5; ++i)
  {
    v9[i] = *(a2 + 4 * i);
  }

  v4 = *a1;
  if (*a1 == 10)
  {
    for (j = 0; j < 0xA; ++j)
    {
      v9[4] = *v9 ^ round_constants[j] ^ FSb[BYTE1(v9[3])] ^ (FSb[BYTE2(v9[3])] << 8) ^ (FSb[HIBYTE(v9[3])] << 16) ^ (FSb[*(v9 + 12)] << 24);
      v9[5] = v9[1] ^ v9[4];
      v9[6] = v9[2] ^ v9[5];
      v9[7] = v9[3] ^ v9[6];
      v9 += 4;
    }
  }

  else if (v4 == 12)
  {
    for (k = 0; k < 8; ++k)
    {
      v9[6] = *v9 ^ round_constants[k] ^ FSb[BYTE1(v9[5])] ^ (FSb[BYTE2(v9[5])] << 8) ^ (FSb[HIBYTE(v9[5])] << 16) ^ (FSb[*(v9 + 20)] << 24);
      v9[7] = v9[1] ^ v9[6];
      v9[8] = v9[2] ^ v9[7];
      v9[9] = v9[3] ^ v9[8];
      v9[10] = v9[4] ^ v9[9];
      v9[11] = v9[5] ^ v9[10];
      v9 += 6;
    }
  }

  else if (v4 == 14)
  {
    for (m = 0; m < 7; ++m)
    {
      v9[8] = *v9 ^ round_constants[m] ^ FSb[BYTE1(v9[7])] ^ (FSb[BYTE2(v9[7])] << 8) ^ (FSb[HIBYTE(v9[7])] << 16) ^ (FSb[*(v9 + 28)] << 24);
      v9[9] = v9[1] ^ v9[8];
      v9[10] = v9[2] ^ v9[9];
      v9[11] = v9[3] ^ v9[10];
      v9[12] = v9[4] ^ FSb[*(v9 + 44)] ^ (FSb[BYTE1(v9[11])] << 8) ^ (FSb[BYTE2(v9[11])] << 16) ^ (FSb[HIBYTE(v9[11])] << 24);
      v9[13] = v9[5] ^ v9[12];
      v9[14] = v9[6] ^ v9[13];
      v9[15] = v9[7] ^ v9[14];
      v9 += 8;
    }
  }

  return 0;
}

uint64_t mbedtls_aes_setkey_dec(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = 0;
  v29 = 0;
  v22 = &v26;
  bzero(&v26, 0x120uLL);
  v25 = 0;
  mbedtls_aes_init();
  *(v33 + 8) = mbedtls_aes_rk_offset();
  v25 = v33 + 16 + 4 * *(v33 + 8);
  v29 = mbedtls_aes_setkey_enc(&v26, v32, v31);
  if (!v29)
  {
    *v33 = v26;
    v3 = &v28[4 * v26 + v27];
    v30 = v3 + 1;
    LODWORD(v3) = *v3;
    v4 = v25;
    v25 += 4;
    *v4 = v3;
    v5 = v30++;
    LODWORD(v5) = *v5;
    v6 = v25;
    v25 += 4;
    *v6 = v5;
    v7 = v30++;
    LODWORD(v7) = *v7;
    v8 = v25;
    v25 += 4;
    *v8 = v7;
    v9 = v30++;
    LODWORD(v9) = *v9;
    v10 = v25;
    v25 += 4;
    *v10 = v9;
    v30 -= 8;
    v24 = *v33 - 1;
    while (v24 > 0)
    {
      v23 = 0;
      while (v23 < 4)
      {
        v11 = RT0[FSb[*v30]] ^ RT1[FSb[BYTE1(*v30)]] ^ RT2[FSb[BYTE2(*v30)]] ^ RT3[FSb[HIBYTE(*v30)]];
        v12 = v25;
        v25 += 4;
        *v12 = v11;
        ++v23;
        ++v30;
      }

      --v24;
      v30 -= 8;
    }

    v13 = v30++;
    LODWORD(v13) = *v13;
    v14 = v25;
    v25 += 4;
    *v14 = v13;
    v15 = v30++;
    LODWORD(v15) = *v15;
    v16 = v25;
    v25 += 4;
    *v16 = v15;
    v17 = v30++;
    LODWORD(v17) = *v17;
    v18 = v25;
    v25 += 4;
    *v18 = v17;
    v19 = v30++;
    LODWORD(v19) = *v19;
    v20 = v25;
    v25 += 4;
    *v20 = v19;
  }

  mbedtls_aes_free(&v26);
  return v29;
}

uint64_t mbedtls_internal_aes_encrypt(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  i = 0;
  v26 = a1 + 16 + 4 * *(a1 + 8);
  v24 = 0u;
  v25 = 0u;
  v38 = a2;
  v37 = 0;
  v37 = *a2;
  LODWORD(v24) = v37;
  v3 = v26;
  v26 += 4;
  LODWORD(v24) = v37 ^ *v3;
  v36 = a2 + 1;
  v35 = 0;
  v35 = a2[1];
  DWORD1(v24) = v35;
  v4 = v26;
  v26 += 4;
  DWORD1(v24) = v35 ^ *v4;
  v34 = a2 + 2;
  v33 = 0;
  v33 = a2[2];
  DWORD2(v24) = v33;
  v5 = v26;
  v26 += 4;
  DWORD2(v24) = v33 ^ *v5;
  v32 = a2 + 3;
  v31 = 0;
  v31 = a2[3];
  HIDWORD(v24) = v31;
  v6 = v26;
  v26 += 4;
  HIDWORD(v24) = v31 ^ *v6;
  for (i = (*a1 >> 1) - 1; i > 0; --i)
  {
    v7 = v26;
    v26 += 4;
    LODWORD(v25) = *v7 ^ FT0[v24] ^ FT1[BYTE5(v24)] ^ FT2[BYTE10(v24)] ^ FT3[HIBYTE(v24)];
    v8 = v26;
    v26 += 4;
    DWORD1(v25) = *v8 ^ FT0[BYTE4(v24)] ^ FT1[BYTE9(v24)] ^ FT2[BYTE14(v24)] ^ FT3[BYTE3(v24)];
    v9 = v26;
    v26 += 4;
    DWORD2(v25) = *v9 ^ FT0[BYTE8(v24)] ^ FT1[BYTE13(v24)] ^ FT2[BYTE2(v24)] ^ FT3[BYTE7(v24)];
    v10 = v26;
    v26 += 4;
    HIDWORD(v25) = *v10 ^ FT0[BYTE12(v24)] ^ FT1[BYTE1(v24)] ^ FT2[BYTE6(v24)] ^ FT3[BYTE11(v24)];
    v11 = v26;
    v26 += 4;
    LODWORD(v24) = *v11 ^ FT0[v25] ^ FT1[BYTE5(v25)] ^ FT2[BYTE10(v25)] ^ FT3[HIBYTE(v25)];
    v12 = v26;
    v26 += 4;
    DWORD1(v24) = *v12 ^ FT0[BYTE4(v25)] ^ FT1[BYTE9(v25)] ^ FT2[BYTE14(v25)] ^ FT3[BYTE3(v25)];
    v13 = v26;
    v26 += 4;
    DWORD2(v24) = *v13 ^ FT0[BYTE8(v25)] ^ FT1[BYTE13(v25)] ^ FT2[BYTE2(v25)] ^ FT3[BYTE7(v25)];
    v14 = v26;
    v26 += 4;
    HIDWORD(v24) = *v14 ^ FT0[BYTE12(v25)] ^ FT1[BYTE1(v25)] ^ FT2[BYTE6(v25)] ^ FT3[BYTE11(v25)];
  }

  v15 = v26;
  v26 += 4;
  LODWORD(v25) = *v15 ^ FT0[v24] ^ FT1[BYTE5(v24)] ^ FT2[BYTE10(v24)] ^ FT3[HIBYTE(v24)];
  v16 = v26;
  v26 += 4;
  DWORD1(v25) = *v16 ^ FT0[BYTE4(v24)] ^ FT1[BYTE9(v24)] ^ FT2[BYTE14(v24)] ^ FT3[BYTE3(v24)];
  v17 = v26;
  v26 += 4;
  DWORD2(v25) = *v17 ^ FT0[BYTE8(v24)] ^ FT1[BYTE13(v24)] ^ FT2[BYTE2(v24)] ^ FT3[BYTE7(v24)];
  v18 = v26;
  v26 += 4;
  HIDWORD(v25) = *v18 ^ FT0[BYTE12(v24)] ^ FT1[BYTE1(v24)] ^ FT2[BYTE6(v24)] ^ FT3[BYTE11(v24)];
  v19 = v26;
  v26 += 4;
  LODWORD(v24) = *v19 ^ FSb[v25] ^ (FSb[BYTE5(v25)] << 8) ^ (FSb[BYTE10(v25)] << 16) ^ (FSb[HIBYTE(v25)] << 24);
  v20 = v26;
  v26 += 4;
  DWORD1(v24) = *v20 ^ FSb[BYTE4(v25)] ^ (FSb[BYTE9(v25)] << 8) ^ (FSb[BYTE14(v25)] << 16) ^ (FSb[BYTE3(v25)] << 24);
  v21 = v26;
  v26 += 4;
  DWORD2(v24) = *v21 ^ FSb[BYTE8(v25)] ^ (FSb[BYTE13(v25)] << 8) ^ (FSb[BYTE2(v25)] << 16) ^ (FSb[BYTE7(v25)] << 24);
  v22 = v26;
  v26 += 4;
  HIDWORD(v24) = *v22 ^ FSb[BYTE12(v25)] ^ (FSb[BYTE1(v25)] << 8) ^ (FSb[BYTE6(v25)] << 16) ^ (FSb[BYTE11(v25)] << 24);
  v46 = v28;
  v45 = v24;
  __memcpy_chk();
  v44 = v28 + 4;
  v43 = DWORD1(v24);
  __memcpy_chk();
  v42 = v28 + 8;
  v41 = DWORD2(v24);
  __memcpy_chk();
  v40 = v28 + 12;
  v39 = HIDWORD(v24);
  __memcpy_chk();
  mbedtls_platform_zeroize(&v24, 0x20uLL);
  return 0;
}

uint64_t mbedtls_internal_aes_decrypt(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  i = 0;
  v26 = a1 + 16 + 4 * *(a1 + 8);
  v24 = 0u;
  v25 = 0u;
  v38 = a2;
  v37 = 0;
  v37 = *a2;
  LODWORD(v24) = v37;
  v3 = v26;
  v26 += 4;
  LODWORD(v24) = v37 ^ *v3;
  v36 = a2 + 1;
  v35 = 0;
  v35 = a2[1];
  DWORD1(v24) = v35;
  v4 = v26;
  v26 += 4;
  DWORD1(v24) = v35 ^ *v4;
  v34 = a2 + 2;
  v33 = 0;
  v33 = a2[2];
  DWORD2(v24) = v33;
  v5 = v26;
  v26 += 4;
  DWORD2(v24) = v33 ^ *v5;
  v32 = a2 + 3;
  v31 = 0;
  v31 = a2[3];
  HIDWORD(v24) = v31;
  v6 = v26;
  v26 += 4;
  HIDWORD(v24) = v31 ^ *v6;
  for (i = (*a1 >> 1) - 1; i > 0; --i)
  {
    v7 = v26;
    v26 += 4;
    LODWORD(v25) = *v7 ^ RT0[v24] ^ RT1[BYTE13(v24)] ^ RT2[BYTE10(v24)] ^ RT3[BYTE7(v24)];
    v8 = v26;
    v26 += 4;
    DWORD1(v25) = *v8 ^ RT0[BYTE4(v24)] ^ RT1[BYTE1(v24)] ^ RT2[BYTE14(v24)] ^ RT3[BYTE11(v24)];
    v9 = v26;
    v26 += 4;
    DWORD2(v25) = *v9 ^ RT0[BYTE8(v24)] ^ RT1[BYTE5(v24)] ^ RT2[BYTE2(v24)] ^ RT3[HIBYTE(v24)];
    v10 = v26;
    v26 += 4;
    HIDWORD(v25) = *v10 ^ RT0[BYTE12(v24)] ^ RT1[BYTE9(v24)] ^ RT2[BYTE6(v24)] ^ RT3[BYTE3(v24)];
    v11 = v26;
    v26 += 4;
    LODWORD(v24) = *v11 ^ RT0[v25] ^ RT1[BYTE13(v25)] ^ RT2[BYTE10(v25)] ^ RT3[BYTE7(v25)];
    v12 = v26;
    v26 += 4;
    DWORD1(v24) = *v12 ^ RT0[BYTE4(v25)] ^ RT1[BYTE1(v25)] ^ RT2[BYTE14(v25)] ^ RT3[BYTE11(v25)];
    v13 = v26;
    v26 += 4;
    DWORD2(v24) = *v13 ^ RT0[BYTE8(v25)] ^ RT1[BYTE5(v25)] ^ RT2[BYTE2(v25)] ^ RT3[HIBYTE(v25)];
    v14 = v26;
    v26 += 4;
    HIDWORD(v24) = *v14 ^ RT0[BYTE12(v25)] ^ RT1[BYTE9(v25)] ^ RT2[BYTE6(v25)] ^ RT3[BYTE3(v25)];
  }

  v15 = v26;
  v26 += 4;
  LODWORD(v25) = *v15 ^ RT0[v24] ^ RT1[BYTE13(v24)] ^ RT2[BYTE10(v24)] ^ RT3[BYTE7(v24)];
  v16 = v26;
  v26 += 4;
  DWORD1(v25) = *v16 ^ RT0[BYTE4(v24)] ^ RT1[BYTE1(v24)] ^ RT2[BYTE14(v24)] ^ RT3[BYTE11(v24)];
  v17 = v26;
  v26 += 4;
  DWORD2(v25) = *v17 ^ RT0[BYTE8(v24)] ^ RT1[BYTE5(v24)] ^ RT2[BYTE2(v24)] ^ RT3[HIBYTE(v24)];
  v18 = v26;
  v26 += 4;
  HIDWORD(v25) = *v18 ^ RT0[BYTE12(v24)] ^ RT1[BYTE9(v24)] ^ RT2[BYTE6(v24)] ^ RT3[BYTE3(v24)];
  v19 = v26;
  v26 += 4;
  LODWORD(v24) = *v19 ^ RSb[v25] ^ (RSb[BYTE13(v25)] << 8) ^ (RSb[BYTE10(v25)] << 16) ^ (RSb[BYTE7(v25)] << 24);
  v20 = v26;
  v26 += 4;
  DWORD1(v24) = *v20 ^ RSb[BYTE4(v25)] ^ (RSb[BYTE1(v25)] << 8) ^ (RSb[BYTE14(v25)] << 16) ^ (RSb[BYTE11(v25)] << 24);
  v21 = v26;
  v26 += 4;
  DWORD2(v24) = *v21 ^ RSb[BYTE8(v25)] ^ (RSb[BYTE5(v25)] << 8) ^ (RSb[BYTE2(v25)] << 16) ^ (RSb[HIBYTE(v25)] << 24);
  v22 = v26;
  v26 += 4;
  HIDWORD(v24) = *v22 ^ RSb[BYTE12(v25)] ^ (RSb[BYTE9(v25)] << 8) ^ (RSb[BYTE6(v25)] << 16) ^ (RSb[BYTE3(v25)] << 24);
  v46 = v28;
  v45 = v24;
  __memcpy_chk();
  v44 = v28 + 4;
  v43 = DWORD1(v24);
  __memcpy_chk();
  v42 = v28 + 8;
  v41 = DWORD2(v24);
  __memcpy_chk();
  v40 = v28 + 12;
  v39 = HIDWORD(v24);
  __memcpy_chk();
  mbedtls_platform_zeroize(&v24, 0x20uLL);
  return 0;
}

uint64_t mbedtls_aes_crypt_ecb(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  if (a2 < 2)
  {
    if (a2)
    {
      return mbedtls_internal_aes_encrypt(a1, a3, a4);
    }

    else
    {
      return mbedtls_internal_aes_decrypt(a1, a3, a4);
    }
  }

  else
  {
    return -33;
  }
}

uint64_t mbedtls_asn1_get_len(_BYTE **a1, uint64_t a2, void *a3)
{
  if (a2 - *a1 >= 1)
  {
    if ((**a1 & 0x80) != 0)
    {
      v6 = **a1 & 0x7F;
      if ((**a1 & 0x7F) == 0 || (**a1 & 0x7Fu) > 4)
      {
        return -100;
      }

      if (a2 - *a1 <= (**a1 & 0x7Fu))
      {
        return -96;
      }

      *a3 = 0;
      ++*a1;
      while (v6--)
      {
        *a3 = *(*a1)++ | (*a3 << 8);
      }
    }

    else
    {
      v3 = (*a1)++;
      *a3 = *v3;
    }

    if (*a3 <= (a2 - *a1))
    {
      return 0;
    }

    else
    {
      return -96;
    }
  }

  else
  {
    return -96;
  }
}

uint64_t mbedtls_asn1_get_tag(unsigned __int8 **a1, uint64_t a2, void *a3, int a4)
{
  if (a2 - *a1 >= 1)
  {
    if (**a1 == a4)
    {
      ++*a1;
      return mbedtls_asn1_get_len(a1, a2, a3);
    }

    else
    {
      return -98;
    }
  }

  else
  {
    return -96;
  }
}

uint64_t mbedtls_asn1_get_BOOL(unsigned __int8 **a1, uint64_t a2, _DWORD *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 1);
  if (tag)
  {
    return tag;
  }

  else if (v4 == 1)
  {
    *v6 = *(*v8)++ != 0;
    return 0;
  }

  else
  {
    return -100;
  }
}

uint64_t asn1_get_tagged_int(unsigned __int8 **a1, uint64_t a2, int a3, int *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  tag = -110;
  v7 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v7, a3);
  if (tag)
  {
    return tag;
  }

  else if (v7)
  {
    if ((**v12 & 0x80) != 0)
    {
      return -100;
    }

    else
    {
      while (1)
      {
        v6 = 0;
        if (v7)
        {
          v6 = **v12 == 0;
        }

        if (!v6)
        {
          break;
        }

        ++*v12;
        --v7;
      }

      if (v7 <= 4)
      {
        if (v7 == 4 && (**v12 & 0x80) != 0)
        {
          return -100;
        }

        else
        {
            ;
          }

          return 0;
        }
      }

      else
      {
        return -100;
      }
    }
  }

  else
  {
    return -100;
  }
}

uint64_t mbedtls_asn1_get_mpi(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 2);
  if (!tag)
  {
    tag = mbedtls_mpi_read_binary(v6, *v8, v4);
    *v8 += v4;
  }

  return tag;
}

uint64_t mbedtls_asn1_get_bitstring(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  tag = mbedtls_asn1_get_tag(a1, a2, a3, 3);
  if (tag)
  {
    return tag;
  }

  else if (*a3)
  {
    --*a3;
    *(a3 + 8) = **a1;
    if (*(a3 + 8) <= 7u)
    {
      *(a3 + 16) = ++*a1;
      *a1 += *a3;
      if (*a1 == a2)
      {
        return 0;
      }

      else
      {
        return -102;
      }
    }

    else
    {
      return -100;
    }
  }

  else
  {
    return -96;
  }
}

uint64_t mbedtls_asn1_traverse_sequence_of(_BYTE **a1, _BYTE *a2, char a3, unsigned __int8 a4, char a5, unsigned __int8 a6, uint64_t (*a7)(uint64_t, void, void, uint64_t), uint64_t a8)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = a7;
  v13 = a8;
  tag = 0;
  v11 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v11, 48);
  if (tag)
  {
    return tag;
  }

  else if (&(*v20)[v11] == v19)
  {
    while (*v20 < v19)
    {
      v8 = (*v20)++;
      v10 = *v8;
      if ((*v8 & v18) != v17)
      {
        return -98;
      }

      tag = mbedtls_asn1_get_len(v20, v19, &v11);
      if (tag)
      {
        return tag;
      }

      if ((v10 & v16) == v15)
      {
        if (v14)
        {
          tag = v14(v13, v10, *v20, v11);
          if (tag)
          {
            return tag;
          }
        }
      }

      *v20 += v11;
    }

    return 0;
  }

  else
  {
    return -102;
  }
}

uint64_t mbedtls_asn1_get_bitstring_null(unsigned __int8 **a1, uint64_t a2, void *a3)
{
  tag = mbedtls_asn1_get_tag(a1, a2, a3, 3);
  if (tag)
  {
    return tag;
  }

  else if (*a3)
  {
    --*a3;
    if (**a1)
    {
      return -104;
    }

    else
    {
      ++*a1;
      return 0;
    }
  }

  else
  {
    return -104;
  }
}

void mbedtls_asn1_sequence_free(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 24);
    mbedtls_free();
    a1 = v1;
  }
}

uint64_t mbedtls_asn1_get_sequence_of(_BYTE **a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5[0] = a4;
  v5[1] = a3;
  __memset_chk();
  return mbedtls_asn1_traverse_sequence_of(v9, v8, 255, v6, 0, 0, asn1_get_sequence_of_cb, v5);
}

uint64_t asn1_get_sequence_of_cb(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  *(v5 + 24) = mbedtls_calloc();
  if (*(v5 + 24))
  {
    v5 = *(v5 + 24);
LABEL_5:
    *(v5 + 16) = a3;
    *(v5 + 8) = a4;
    *v5 = a2;
    *(a1 + 8) = v5;
    return 0;
  }

  return -106;
}

uint64_t mbedtls_asn1_get_alg(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  tag = -110;
  v6 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v6, 48);
  if (tag)
  {
    return tag;
  }

  else if (v10 - *v11 < 1)
  {
    return -96;
  }

  else
  {
    *v9 = **v11;
    v10 = &(*v11)[v6];
    v4 = mbedtls_asn1_get_tag(v11, v10, (v9 + 8), 6);
    tag = v4;
    if (v4)
    {
      return tag;
    }

    else
    {
      *(v9 + 16) = *v11;
      *v11 += *(v9 + 8);
      if (*v11 == v10)
      {
        mbedtls_platform_zeroize(v8, 0x18uLL);
        return 0;
      }

      else
      {
        *v8 = *(*v11)++;
        tag = mbedtls_asn1_get_len(v11, v10, v8 + 1);
        if (tag)
        {
          return tag;
        }

        else
        {
          *(v8 + 2) = *v11;
          *v11 += *(v8 + 1);
          if (*v11 == v10)
          {
            return 0;
          }

          else
          {
            return -102;
          }
        }
      }
    }
  }
}

uint64_t mbedtls_asn1_get_alg_null(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  alg = -110;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  alg = mbedtls_asn1_get_alg(a1, a2, a3, &v4);
  if (alg)
  {
    return alg;
  }

  else if (v4 != 5 && v4 || v5)
  {
    return -104;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_asn1_free_named_data(void *result)
{
  v3 = result;
  if (result)
  {
    v1 = result[2];
    mbedtls_free();
    v2 = v3[5];
    mbedtls_free();
    return mbedtls_platform_zeroize(v3, 0x40uLL);
  }

  return result;
}

void mbedtls_asn1_free_named_data_list(void *a1)
{
  while (1)
  {
    v3 = *a1;
    if (!*a1)
    {
      break;
    }

    *a1 = v3[6];
    v1 = v3[2];
    mbedtls_free();
    v2 = v3[5];
    mbedtls_free();
    mbedtls_free();
  }
}

void mbedtls_asn1_free_named_data_list_shallow(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 48);
    mbedtls_free();
    a1 = v1;
  }
}

uint64_t mbedtls_asn1_find_named_data(uint64_t a1, const void *a2, size_t a3)
{
  while (a1 && (*(a1 + 8) != a3 || memcmp(*(a1 + 16), a2, a3)))
  {
    a1 = *(a1 + 48);
  }

  return a1;
}

uint64_t mbedtls_asn1_write_len(void *a1, uint64_t a2, unint64_t a3)
{
  v8 = a3;
  if (a3 <= 0xFFFFFFFF)
  {
    v7 = 1;
    if (a3 >= 0x80)
    {
      for (i = a3; i; i >>= 8)
      {
        ++v7;
      }
    }

    if (v7 <= *a1 - a2)
    {
      do
      {
        v3 = (*a1 - 1);
        *a1 = v3;
        *v3 = v8;
        v8 >>= 8;
      }

      while (v8);
      if (v7 > 1)
      {
        v4 = (*a1 - 1);
        *a1 = v4;
        *v4 = v7 + 127;
      }

      return v7;
    }

    else
    {
      return -108;
    }
  }

  else
  {
    return -100;
  }
}

uint64_t mbedtls_asn1_write_tag(void *a1, uint64_t a2, char a3)
{
  if (*a1 - a2 < 1)
  {
    return -108;
  }

  else
  {
    v3 = (*a1 - 1);
    *a1 = v3;
    *v3 = a3;
    return 1;
  }
}

uint64_t mbedtls_asn1_write_raw_buffer(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4;
  if (*a1 >= a2 && *a1 - a2 >= a4)
  {
    *a1 -= a4;
    v4 = *a1;
    __memcpy_chk();
    return v6;
  }

  else
  {
    return -108;
  }
}

uint64_t mbedtls_asn1_write_mpi(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = mbedtls_mpi_size(a3);
  if (!v5)
  {
    v5 = 1;
  }

  if (*a1 >= a2 && *a1 - a2 >= v5)
  {
    *a1 -= v5;
    v6 = mbedtls_mpi_write_binary(a3, *a1, v5);
    if (!v6)
    {
      if (*(a3 + 8) == 1 && (**a1 & 0x80) != 0)
      {
        if ((*a1 - a2) < 1)
        {
          return -108;
        }

        v3 = (*a1 - 1);
        *a1 = v3;
        *v3 = 0;
        ++v5;
      }

      return mbedtls_asn1_write_len_and_tag(a1, a2, v5, 2);
    }

    return v6;
  }

  return -108;
}

uint64_t mbedtls_asn1_write_len_and_tag(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = a3;
  v5 = mbedtls_asn1_write_len(a1, a2, a3);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    v9 = v8 + v5;
    v6 = mbedtls_asn1_write_tag(a1, a2, a4);
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }

    else
    {
      return v9 + v6;
    }
  }
}

uint64_t mbedtls_asn1_write_oid(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = mbedtls_asn1_write_raw_buffer(a1, a2, a3, a4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v5, 6);
  }
}

uint64_t mbedtls_asn1_write_algorithm_identifier_ext(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = 0;
  if (a6)
  {
    if (a5)
    {
      v7 = a5;
    }

    else
    {
      v8 = mbedtls_asn1_write_null(a1, a2);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v7 = v8;
    }
  }

  v9 = mbedtls_asn1_write_oid(a1, a2, a3, a4);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v7 + v9, 48);
  }
}

uint64_t mbedtls_asn1_write_BOOL(void *a1, uint64_t a2, int a3)
{
  if (*a1 - a2 >= 1)
  {
    if (a3)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    v4 = (*a1)--;
    *(v4 - 1) = v3;
    return mbedtls_asn1_write_len_and_tag(a1, a2, 1uLL, 1);
  }

  else
  {
    return -108;
  }
}

uint64_t asn1_write_tagged_int(void *a1, uint64_t a2, int a3, char a4)
{
  v7 = 0;
  do
  {
    if (*a1 - a2 < 1)
    {
      return -108;
    }

    ++v7;
    v4 = (*a1)--;
    *(v4 - 1) = a3;
    a3 >>= 8;
  }

  while (a3 > 0);
  if ((**a1 & 0x80) == 0)
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v7, a4);
  }

  if (*a1 - a2 >= 1)
  {
    v5 = (*a1 - 1);
    *a1 = v5;
    *v5 = 0;
    return mbedtls_asn1_write_len_and_tag(a1, a2, ++v7, a4);
  }

  return -108;
}

uint64_t mbedtls_asn1_write_tagged_string(unint64_t *a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = mbedtls_asn1_write_raw_buffer(a1, a2, a4, a5);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v6, a3);
  }
}

uint64_t mbedtls_asn1_write_named_bitstring(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4;
  if (a4)
  {
    v7 = (a3 + (a4 + 7) / 8 - 1);
    v6 = *v7 >> (8 * ((a4 + 7) / 8) - a4);
    while (1)
    {
      v5 = v6 & 1;
      v6 = v6 >> 1;
      if (v5)
      {
        break;
      }

      if (!--v8)
      {
        break;
      }

      if (!(v8 % 8))
      {
        v6 = *--v7;
      }
    }
  }

  return mbedtls_asn1_write_bitstring(a1, a2, a3, v8);
}

uint64_t mbedtls_asn1_write_bitstring(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (a4 + 7) / 8uLL;
  v11 = 8 * v9 - a4;
  if (*a1 >= a2 && *a1 - a2 >= v9 + 1)
  {
    v12 = v9 + 1;
    if (v9)
    {
      v10 = v9 - 1;
      v4 = *(a3 + v10) & ~((1 << v11) - 1);
      v5 = (*a1 - 1);
      *a1 = v5;
      *v5 = v4;
      *a1 -= v10;
      v6 = *a1;
      __memcpy_chk();
    }

    v7 = (*a1)--;
    *(v7 - 1) = v11;
    return mbedtls_asn1_write_len_and_tag(a1, a2, v12, 3);
  }

  else
  {
    return -108;
  }
}

uint64_t mbedtls_asn1_write_octet_string(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = mbedtls_asn1_write_raw_buffer(a1, a2, a3, a4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    return mbedtls_asn1_write_len_and_tag(a1, a2, v5, 4);
  }
}

void *mbedtls_asn1_store_named_data(uint64_t *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  named_data = mbedtls_asn1_find_named_data(*a1, a2, a3);
  if (named_data)
  {
    if (a5)
    {
      if (named_data[4] != a5)
      {
        v11 = mbedtls_calloc();
        if (!v11)
        {
          return 0;
        }

        v8 = named_data[5];
        mbedtls_free();
        named_data[5] = v11;
        named_data[4] = a5;
      }
    }

    else
    {
      v7 = named_data[5];
      mbedtls_free();
      named_data[5] = 0;
    }
  }

  else
  {
    named_data = mbedtls_calloc();
    if (!named_data)
    {
      return 0;
    }

    named_data[1] = a3;
    named_data[2] = mbedtls_calloc();
    if (!named_data[2])
    {
      mbedtls_free();
      return 0;
    }

    v5 = named_data[2];
    __memcpy_chk();
    named_data[4] = a5;
    if (a5)
    {
      named_data[5] = mbedtls_calloc();
      if (!named_data[5])
      {
        v6 = named_data[2];
        mbedtls_free();
        mbedtls_free();
        return 0;
      }
    }

    named_data[6] = *a1;
    *a1 = named_data;
  }

  if (a4 && a5)
  {
    v9 = named_data[5];
    __memcpy_chk();
  }

  return named_data;
}

uint64_t mbedtls_base64_encode(_BYTE *a1, unint64_t a2, void *a3, unsigned __int8 *a4, unint64_t a5)
{
  if (a5)
  {
    v24 = a5 / 3 + (a5 % 3 != 0);
    if (v24 <= 0x3FFFFFFFFFFFFFFFLL)
    {
      v25 = 4 * v24;
      if (a2 >= v25 + 1 && a1)
      {
        v26 = 3 * (a5 / 3);
        v27 = 0;
        v17 = a1;
        while (v27 < v26)
        {
          v22 = *a4;
          v21 = a4[1];
          v5 = a4 + 2;
          a4 += 3;
          v20 = *v5;
          *v17 = mbedtls_ct_base64_enc_char();
          v17[1] = mbedtls_ct_base64_enc_char();
          v17[2] = mbedtls_ct_base64_enc_char();
          v6 = mbedtls_ct_base64_enc_char();
          v7 = v17 + 3;
          v17 += 4;
          *v7 = v6;
          v27 += 3;
        }

        if (v27 < a5)
        {
          v8 = a4;
          v30 = a4 + 1;
          v23 = *v8;
          if (v27 + 1 < a5)
          {
            v16 = *v30;
          }

          *v17 = mbedtls_ct_base64_enc_char();
          v9 = mbedtls_ct_base64_enc_char();
          v10 = v17 + 1;
          v18 = v17 + 2;
          *v10 = v9;
          if (v27 + 1 >= a5)
          {
            v13 = v18;
            v19 = v18 + 1;
            *v13 = 61;
          }

          else
          {
            v11 = mbedtls_ct_base64_enc_char();
            v12 = v18;
            v19 = v18 + 1;
            *v12 = v11;
          }

          v14 = v19;
          v17 = v19 + 1;
          *v14 = 61;
        }

        *a3 = v17 - a1;
        *v17 = 0;
        return 0;
      }

      else
      {
        *a3 = v25 + 1;
        return -42;
      }
    }

    else
    {
      *a3 = -1;
      return -42;
    }
  }

  else
  {
    *a3 = 0;
    return 0;
  }
}

uint64_t mbedtls_ct_base64_enc_char()
{
  v1 = mbedtls_ct_uchar_in_range_if (0, 0x19u);
  v2 = v1 | mbedtls_ct_uchar_in_range_if (0x1Au, 0x33u);
  v3 = v2 | mbedtls_ct_uchar_in_range_if (0x34u, 0x3Du);
  v4 = v3 | mbedtls_ct_uchar_in_range_if (0x3Eu, 0x3Eu);
  return (v4 | mbedtls_ct_uchar_in_range_if (0x3Fu, 0x3Fu));
}

uint64_t mbedtls_base64_decode(_BYTE *a1, unint64_t a2, unint64_t *a3, _BYTE *a4, unint64_t a5)
{
  v16 = 0;
  v14 = 0;
  v18 = 0;
  for (i = 0; i < a5; ++i)
  {
    for (j = 0; ; j = 1)
    {
      v11 = 0;
      if (i < a5)
      {
        v11 = a4[i] == 32;
      }

      if (!v11)
      {
        break;
      }

      ++i;
    }

    if (i == a5)
    {
      break;
    }

    if ((a5 - i < 2 || a4[i] != 13 || a4[i + 1] != 10) && a4[i] != 10)
    {
      if (j)
      {
        return -44;
      }

      if (a4[i] > 0x7Fu)
      {
        return -44;
      }

      if (a4[i] == 61)
      {
        if (++v14 > 2)
        {
          return -44;
        }
      }

      else
      {
        if (v14)
        {
          return -44;
        }

        v5 = a4[i];
        if ((mbedtls_ct_base64_dec_value() & 0x80000000) != 0)
        {
          return -44;
        }
      }

      ++v18;
    }
  }

  if (v18)
  {
    v19 = 6 * (v18 >> 3) + ((6 * (v18 & 7) + 7) >> 3) - v14;
    if (a1 && a2 >= v19)
    {
      v15 = 0;
      v17 = 0;
      v12 = a1;
      while (i)
      {
        if (*a4 != 13 && *a4 != 10 && *a4 != 32)
        {
          v17 <<= 6;
          if (*a4 == 61)
          {
            ++v15;
          }

          else
          {
            v6 = *a4;
            v17 |= mbedtls_ct_base64_dec_value();
          }

          if (++v16 == 4)
          {
            v16 = 0;
            v7 = v12++;
            *v7 = BYTE2(v17);
            if (v15 <= 1)
            {
              v8 = v12++;
              *v8 = BYTE1(v17);
            }

            if (!v15)
            {
              v9 = v12++;
              *v9 = v17;
            }
          }
        }

        --i;
        ++a4;
      }

      *a3 = v12 - a1;
      return 0;
    }

    else
    {
      *a3 = v19;
      return -42;
    }
  }

  else
  {
    *a3 = 0;
    return 0;
  }
}

uint64_t mbedtls_ct_base64_dec_value()
{
  v1 = mbedtls_ct_uchar_in_range_if (0x41u, 0x5Au);
  v2 = v1 | mbedtls_ct_uchar_in_range_if (0x61u, 0x7Au);
  v3 = v2 | mbedtls_ct_uchar_in_range_if (0x30u, 0x39u);
  v4 = v3 | mbedtls_ct_uchar_in_range_if (0x2Bu, 0x2Bu);
  return ((v4 | mbedtls_ct_uchar_in_range_if (0x2Fu, 0x2Fu)) - 1);
}

uint64_t mbedtls_ct_uchar_in_range_if (unsigned __int8 a1, unsigned __int8 a2)
{
  mbedtls_ct_compiler_opaque();
  v5 = v2;
  mbedtls_ct_compiler_opaque();
  return (~(((v5 - a1) >> 8) | ((a2 - v5) >> 8)) & v3);
}

uint64_t mbedtls_mpi_lt_mpi_ct(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  if (*(a1 + 5) == *(a2 + 5))
  {
    v10 = mbedtls_ct_BOOL((a1[1] & 2) >> 1);
    v9 = mbedtls_ct_BOOL((a2[1] & 2) >> 1);
    v11 = mbedtls_ct_BOOL_ne(v10, v9);
    v8 = mbedtls_ct_BOOL_and(v11, v10);
    v16 = 0;
    v17 = 0;
    v16 = *a1;
    v17 = *a2;
    v7 = mbedtls_ct_BOOL_and(v10, 1);
    v6 = mbedtls_mpi_core_lt_ct(*(&v16 + v7), *(&v16 + (v7 ^ 1)), *(a1 + 5));
    v3 = mbedtls_ct_BOOL_not(v11);
    v4 = mbedtls_ct_BOOL_and(v3, v6);
    LODWORD(v8) = mbedtls_ct_BOOL_or(v8, v4);
    *a3 = mbedtls_ct_uint_if_else_0(v8, 1u);
    return 0;
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_mpi_safe_cond_assign(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = mbedtls_mpi_grow(a1, *(a2 + 10));
  if (!v7)
  {
    v6 = mbedtls_ct_BOOL(a3);
    *(a1 + 8) = mbedtls_ct_mpi_sign_if (v6, *(a2 + 8), *(a1 + 8));
    mbedtls_mpi_core_cond_assign(*a1, *a2, *(a2 + 10), v6);
    v5 = mbedtls_ct_BOOL_not(v6);
    for (i = *(a2 + 10); i < *(a1 + 10); ++i)
    {
      *(*a1 + 8 * i) = mbedtls_ct_BOOL_and(v5, *(*a1 + 8 * i));
    }
  }

  return v7;
}

uint64_t mbedtls_mpi_grow(uint64_t a1, unint64_t a2)
{
  v6 = a2;
  if (a2 <= 0x2710)
  {
    if (*(a1 + 10) < a2)
    {
      v5 = mbedtls_calloc();
      if (!v5)
      {
        return -16;
      }

      if (*a1)
      {
        v2 = *a1;
        v3 = *(a1 + 10);
        __memcpy_chk();
        mbedtls_zeroize_and_free(*a1, 8 * *(a1 + 10));
      }

      *(a1 + 10) = v6;
      *a1 = v5;
    }

    return 0;
  }

  return -16;
}

uint64_t mbedtls_mpi_safe_cond_swap(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    v4 = mbedtls_ct_BOOL(a3);
    v6 = mbedtls_mpi_grow(a1, *(a2 + 10));
    if (!v6)
    {
      v6 = mbedtls_mpi_grow(a2, *(a1 + 10));
      if (!v6)
      {
        v5 = *(a1 + 8);
        *(a1 + 8) = mbedtls_ct_mpi_sign_if (v4, *(a2 + 8), v5);
        *(a2 + 8) = mbedtls_ct_mpi_sign_if (v4, v5, *(a2 + 8));
        mbedtls_mpi_core_cond_swap(*a1, *a2, *(a1 + 10), v4);
      }
    }

    return v6;
  }
}

uint64_t mbedtls_mpi_init(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 10) = 0;
  *result = 0;
  return result;
}

void mbedtls_mpi_free(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      mbedtls_zeroize_and_free(*a1, 8 * *(a1 + 10));
    }

    *(a1 + 8) = 1;
    *(a1 + 10) = 0;
    *a1 = 0;
  }
}

uint64_t mbedtls_mpi_shrink(uint64_t a1, unint64_t a2)
{
  if (a2 <= 0x2710)
  {
    if (*(a1 + 10) > a2)
    {
        ;
      }

      v5 = i + 1;
      if (v5 < a2)
      {
        LOWORD(v5) = a2;
      }

      v6 = mbedtls_calloc();
      if (v6)
      {
        if (*a1)
        {
          v2 = *a1;
          __memcpy_chk();
          mbedtls_zeroize_and_free(*a1, 8 * *(a1 + 10));
        }

        *(a1 + 10) = v5;
        *a1 = v6;
        return 0;
      }

      else
      {
        return -16;
      }
    }

    else
    {
      return mbedtls_mpi_grow(a1, a2);
    }
  }

  else
  {
    return -16;
  }
}

uint64_t mbedtls_mpi_copy(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  if (a1 == a2)
  {
    return 0;
  }

  if (*(a2 + 5))
  {
      ;
    }

    v10 = i + 1;
    *(a1 + 8) = *(a2 + 4);
    if (*(a1 + 10) >= v10)
    {
      v4 = *a1 + 8 * v10;
      v5 = *(a1 + 10);
      __memset_chk();
    }

    else
    {
      v11 = mbedtls_mpi_grow(a1, v10);
      if (v11)
      {
        return v11;
      }
    }

    v6 = *a1;
    v7 = *a2;
    __memcpy_chk();
    return v11;
  }

  if (*(a1 + 10))
  {
    *(a1 + 8) = 1;
    v2 = *a1;
    v3 = *(a1 + 10);
    __memset_chk();
  }

  return 0;
}

uint64_t mbedtls_mpi_swap(__int128 *a1)
{
  v2 = *a1;
  __memcpy_chk();
  return __memcpy_chk();
}

uint64_t mbedtls_mpi_lset(uint64_t a1, unint64_t a2)
{
  v5 = mbedtls_mpi_grow(a1, 1uLL);
  if (!v5)
  {
    v2 = *a1;
    v3 = *(a1 + 10);
    __memset_chk();
    **a1 = mpi_sint_abs(a2);
    *(a1 + 8) = -2 * (a2 >> 63) + 1;
  }

  return v5;
}

uint64_t mpi_sint_abs(uint64_t a1)
{
  if (a1 < 0)
  {
    return -a1;
  }

  else
  {
    return a1;
  }
}

uint64_t mbedtls_mpi_get_bit(uint64_t a1, unint64_t a2)
{
  if (a2 < *(a1 + 10) << 6)
  {
    return (*(*a1 + 8 * (a2 / 0x40)) >> (a2 % 0x40)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_mpi_set_bit(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = 0;
  v5 = a2 / 0x40;
  v4 = a2 % 0x40;
  if (!a3 || a3 == 1)
  {
    if (a2 < *(a1 + 10) << 6)
    {
      goto LABEL_8;
    }

    if (!a3)
    {
      return 0;
    }

    v6 = mbedtls_mpi_grow(a1, v5 + 1);
    if (!v6)
    {
LABEL_8:
      *(*a1 + 8 * v5) &= ~(1 << v4);
      *(*a1 + 8 * v5) |= a3 << v4;
    }

    return v6;
  }

  return -4;
}

unint64_t mbedtls_mpi_lsb(uint64_t a1)
{
  for (i = 0; i < *(a1 + 10); ++i)
  {
    if (*(*a1 + 8 * i))
    {
      return __clz(__rbit64(*(*a1 + 8 * i))) + (i << 6);
    }
  }

  return 0;
}

uint64_t mbedtls_mpi_read_string(uint64_t a1, int a2, const char *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  digit = -110;
  i = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 1;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  if (a2 >= 2 && v13 <= 16)
  {
    mbedtls_mpi_init(v4);
    if (!*v12)
    {
      mbedtls_mpi_free(v14);
      return 0;
    }

    if (*v12 == 45)
    {
      ++v12;
      v6 = -1;
    }

    v8 = strlen(v12);
    if (v13 == 16)
    {
      if (v8 > 0x3FFFFFFFFFFFFFFFLL)
      {
        return -4;
      }

      v7 = 4 * v8 / 0x40 + (4 * v8 % 0x40 != 0);
      digit = mbedtls_mpi_grow(v14, v7);
      if (!digit)
      {
        digit = mbedtls_mpi_lset(v14, 0);
        if (!digit)
        {
          i = v8;
          v9 = 0;
          while (i)
          {
            digit = mpi_get_digit(&v5, v13, v12[i - 1]);
            if (digit)
            {
              goto LABEL_28;
            }

            *(*v14 + 8 * (v9 / 0x10)) |= v5 << (4 * (v9 % 0x10));
            --i;
            ++v9;
          }

LABEL_25:
          if (v6 < 0 && mbedtls_mpi_bitlen(v14))
          {
            *(v14 + 8) = -1;
          }
        }
      }
    }

    else
    {
      digit = mbedtls_mpi_lset(v14, 0);
      if (!digit)
      {
        for (i = 0; i < v8; ++i)
        {
          digit = mpi_get_digit(&v5, v13, v12[i]);
          if (digit)
          {
            goto LABEL_28;
          }

          digit = mbedtls_mpi_mul_int(v4, v14, v13);
          if (digit)
          {
            goto LABEL_28;
          }

          digit = mbedtls_mpi_add_int(v14, v4, v5);
          if (digit)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_28:
    mbedtls_mpi_free(v4);
    return digit;
  }

  return -4;
}

uint64_t mpi_get_digit(void *a1, int a2, char a3)
{
  *a1 = 255;
  if (a3 >= 48 && a3 <= 57)
  {
    *a1 = a3 - 48;
  }

  if (a3 >= 65 && a3 <= 70)
  {
    *a1 = a3 - 55;
  }

  if (a3 >= 97 && a3 <= 102)
  {
    *a1 = a3 - 87;
  }

  if (*a1 < a2)
  {
    return 0;
  }

  else
  {
    return -6;
  }
}

uint64_t mbedtls_mpi_mul_int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 10); ; --i)
  {
    v4 = 0;
    if (i)
    {
      v4 = *(*a2 + 8 * (i - 1)) == 0;
    }

    if (!v4)
    {
      break;
    }
  }

  if (a3 && i)
  {
    v5 = mbedtls_mpi_grow(a1, i + 1);
    if (!v5)
    {
      v5 = mbedtls_mpi_copy(a1, a2);
      if (!v5)
      {
        mbedtls_mpi_core_mla(*a1, *(a1 + 10), *a2, i, a3 - 1);
      }
    }

    return v5;
  }

  else
  {
    return mbedtls_mpi_lset(a1, 0);
  }
}

uint64_t mbedtls_mpi_add_int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v4 = 0;
  v5 = 0;
  v9 = mpi_sint_abs(a3);
  LOWORD(v5) = -2 * (v6 >> 63) + 1;
  WORD1(v5) = 1;
  v4 = &v9;
  return mbedtls_mpi_add_mpi(v8, v7, &v4);
}

uint64_t mbedtls_mpi_write_string(uint64_t *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  if (a2 >= 2 && v24 <= 16)
  {
    v19 = mbedtls_mpi_bitlen(v25);
    if (v24 >= 4)
    {
      v19 >>= 1;
    }

    if (v24 >= 16)
    {
      v19 >>= 1;
    }

    v19 += 3 + ((v19 + 3) & 1);
    if (v22 < v19)
    {
      *v21 = v19;
      return -8;
    }

    v18 = v23;
    mbedtls_mpi_init(&v16);
    if (*(v25 + 4) == -1)
    {
      v5 = v18++;
      *v5 = 45;
      --v22;
    }

    if (v24 == 16)
    {
      v14 = *(v25 + 5);
      v12 = 0;
      while (v14)
      {
        for (i = 8; i; --i)
        {
          v15 = (*(*v25 + 8 * (v14 - 1)) >> (8 * (i - 1)));
          if ((*(*v25 + 8 * (v14 - 1)) >> (8 * (i - 1))) || v12 || v14 + i == 2)
          {
            v6 = a0123456789abcd_0[v15 / 16];
            v7 = v18++;
            *v7 = v6;
            v8 = a0123456789abcd_0[v15 % 16];
            v9 = v18++;
            *v9 = v8;
            v12 = 1;
          }
        }

        --v14;
      }
    }

    else
    {
      v20 = mbedtls_mpi_copy(&v16, v25);
      if (v20)
      {
        goto LABEL_29;
      }

      if (v17 == -1)
      {
        LOWORD(v17) = 1;
      }

      v20 = mpi_write_hlp(&v16, v24, &v18, v22);
      if (v20)
      {
        goto LABEL_29;
      }
    }

    v10 = v18++;
    *v10 = 0;
    *v21 = &v18[-v23];
LABEL_29:
    mbedtls_mpi_free(&v16);
    return v20;
  }

  return -4;
}

uint64_t mpi_write_hlp(uint64_t *a1, int a2, uint64_t *a3, unint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = -110;
  v8 = 0;
  v7 = 0;
  v6 = (*a3 + a4);
  while (1)
  {
    if (v7 >= v10)
    {
      return -8;
    }

    v9 = mbedtls_mpi_mod_int(&v8, v13, v12);
    if (v9)
    {
      break;
    }

    v9 = mbedtls_mpi_div_int(v13, 0, v13, v12);
    if (v9)
    {
      break;
    }

    --v6;
    if (v8 >= 0xA)
    {
      *v6 = v8 + 55;
    }

    else
    {
      *v6 = v8 + 48;
    }

    ++v7;
    if (!mbedtls_mpi_cmp_int(v13, 0))
    {
      v4 = *v11;
      __memmove_chk();
      *v11 += v7;
      break;
    }
  }

  return v9;
}

uint64_t mbedtls_mpi_read_binary_le(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = mbedtls_mpi_resize_clear(a1, a3 / 8 + (a3 % 8 != 0));
  if (!v4)
  {
    return mbedtls_mpi_core_read_le(*a1, *(a1 + 10), a2, a3);
  }

  return v4;
}

uint64_t mbedtls_mpi_resize_clear(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 10) == a2)
    {
      v2 = *a1;
      __memset_chk();
      *(a1 + 8) = 1;
      return 0;
    }

    else
    {
      mbedtls_mpi_free(a1);
      return mbedtls_mpi_grow(a1, a2);
    }
  }

  else
  {
    mbedtls_mpi_free(a1);
    return 0;
  }
}

uint64_t mbedtls_mpi_read_binary(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = mbedtls_mpi_resize_clear(a1, a3 / 8 + (a3 % 8 != 0));
  if (!v4)
  {
    return mbedtls_mpi_core_read_be(*a1, *(a1 + 10), a2, a3);
  }

  return v4;
}

uint64_t mbedtls_mpi_shift_l(uint64_t a1, uint64_t a2)
{
  v3 = mbedtls_mpi_bitlen(a1) + a2;
  if (v3 <= *(a1 + 10) << 6 || (v4 = mbedtls_mpi_grow(a1, v3 / 0x40 + (v3 % 0x40 != 0))) == 0)
  {
    v4 = 0;
    mbedtls_mpi_core_shift_l(*a1, *(a1 + 10), a2);
  }

  return v4;
}

uint64_t mbedtls_mpi_shift_r(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 10))
  {
    mbedtls_mpi_core_shift_r(*a1, *(a1 + 10), a2);
  }

  return 0;
}

uint64_t mbedtls_mpi_cmp_abs(uint64_t a1, uint64_t a2)
{
    ;
  }

    ;
  }

  if (i <= j)
  {
    if (j <= i)
    {
      while (i)
      {
        if (*(*a1 + 8 * (i - 1)) > *(*a2 + 8 * (i - 1)))
        {
          return 1;
        }

        if (*(*a1 + 8 * (i - 1)) < *(*a2 + 8 * (i - 1)))
        {
          return -1;
        }

        --i;
      }

      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t mbedtls_mpi_cmp_mpi(uint64_t a1, uint64_t a2)
{
    ;
  }

    ;
  }

  if (i || j)
  {
    if (i <= j)
    {
      if (j <= i)
      {
        if (*(a1 + 8) > 0 && *(a2 + 8) < 0)
        {
          return 1;
        }

        else if (*(a2 + 8) > 0 && *(a1 + 8) < 0)
        {
          return -1;
        }

        else
        {
          while (i)
          {
            if (*(*a1 + 8 * (i - 1)) > *(*a2 + 8 * (i - 1)))
            {
              return *(a1 + 8);
            }

            if (*(*a1 + 8 * (i - 1)) < *(*a2 + 8 * (i - 1)))
            {
              return -*(a1 + 8);
            }

            --i;
          }

          return 0;
        }
      }

      else
      {
        return -*(a2 + 8);
      }
    }

    else
    {
      return *(a1 + 8);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_mpi_cmp_int(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  v3 = 0;
  v4 = 0;
  v7 = mpi_sint_abs(a2);
  LOWORD(v4) = -2 * (v5 >> 63) + 1;
  WORD1(v4) = 1;
  v3 = &v7;
  return mbedtls_mpi_cmp_mpi(v6, &v3);
}

uint64_t mbedtls_mpi_add_abs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a2;
  v9 = a3;
  if (a1 == a3)
  {
    v10 = a1;
    v9 = a2;
  }

  if (a1 != v10)
  {
    v8 = mbedtls_mpi_copy(a1, v10);
    if (v8)
    {
      return v8;
    }
  }

  *(a1 + 8) = 1;
    ;
  }

  if (i)
  {
    v8 = mbedtls_mpi_grow(a1, i);
    if (!v8)
    {
      v5 = *a1;
      v4 = mbedtls_mpi_core_add(*a1, *a1, *v9, i);
      v6 = (v5 + 8 * i);
      while (v4)
      {
        if (i >= *(a1 + 10))
        {
          v8 = mbedtls_mpi_grow(a1, i + 1);
          if (v8)
          {
            return v8;
          }

          v6 = (*a1 + 8 * i);
        }

        *v6 += v4;
        v4 = *v6 < v4;
        ++i;
        ++v6;
      }
    }

    return v8;
  }

  return 0;
}

uint64_t mbedtls_mpi_sub_abs(uint64_t a1, uint64_t a2, uint64_t a3)
{
    ;
  }

  if (i <= *(a2 + 10))
  {
    v12 = mbedtls_mpi_grow(a1, *(a2 + 10));
    if (!v12)
    {
      if (*(a2 + 10) > i && a2 != a1)
      {
        v3 = *a1 + 8 * i;
        v4 = *a2 + 8 * i;
        v5 = *(a2 + 10);
        __memcpy_chk();
      }

      if (*(a1 + 10) > *(a2 + 10))
      {
        v6 = *a1 + 8 * *(a2 + 10);
        v7 = *(a1 + 10);
        v8 = *(a2 + 10);
        __memset_chk();
      }

      v10 = mbedtls_mpi_core_sub(*a1, *a2, *a3, i);
      if (v10 && mbedtls_mpi_core_sub_int(*a1 + 8 * i, *a1 + 8 * i, v10, *(a1 + 10) - i))
      {
        return -10;
      }

      else
      {
        *(a1 + 8) = 1;
      }
    }
  }

  else
  {
    return -10;
  }

  return v12;
}

uint64_t add_sub_mpi(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 8);
  if (v7 * *(a3 + 8) * a4 < 0)
  {
    v6 = mbedtls_mpi_cmp_abs(a2, a3);
    if (v6 < 0)
    {
      v8 = mbedtls_mpi_sub_abs(a1, a3, a2);
      if (!v8)
      {
        *(a1 + 8) = -v7;
      }
    }

    else
    {
      v8 = mbedtls_mpi_sub_abs(a1, a2, a3);
      if (!v8)
      {
        if (v6)
        {
          v5 = v7;
        }

        else
        {
          v5 = 1;
        }

        *(a1 + 8) = v5;
      }
    }
  }

  else
  {
    v8 = mbedtls_mpi_add_abs(a1, a2, a3);
    if (!v8)
    {
      *(a1 + 8) = v7;
    }
  }

  return v8;
}

uint64_t mbedtls_mpi_sub_int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v4 = 0;
  v5 = 0;
  v9 = mpi_sint_abs(a3);
  LOWORD(v5) = -2 * (v6 >> 63) + 1;
  WORD1(v5) = 1;
  v4 = &v9;
  return mbedtls_mpi_sub_mpi(v8, v7, &v4);
}

uint64_t mbedtls_mpi_mul_mpi(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -110;
  i = 0;
  j = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4 = 0;
  mbedtls_mpi_init(v6);
  mbedtls_mpi_init(v5);
  if (v12 == v11)
  {
    v9 = mbedtls_mpi_copy(v6, v11);
    if (v9)
    {
      goto LABEL_24;
    }

    v11 = v6;
  }

  if (v12 == v10)
  {
    v9 = mbedtls_mpi_copy(v5, v10);
    if (v9)
    {
      goto LABEL_24;
    }

    v10 = v5;
  }

    ;
  }

  if (!i)
  {
    v4 = 1;
  }

    ;
  }

  if (!j)
  {
    v4 = 1;
  }

  v9 = mbedtls_mpi_grow(v12, i + j);
  if (!v9)
  {
    v9 = mbedtls_mpi_lset(v12, 0);
    if (!v9)
    {
      mbedtls_mpi_core_mul(*v12, *v11, i, *v10, j);
      if (v4)
      {
        *(v12 + 4) = 1;
      }

      else
      {
        *(v12 + 4) = *(v11 + 4) * *(v10 + 4);
      }
    }
  }

LABEL_24:
  mbedtls_mpi_free(v5);
  mbedtls_mpi_free(v6);
  return v9;
}

uint64_t mbedtls_mpi_div_mpi(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = -110;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v9 = 0;
  v10 = 0;
  if (mbedtls_mpi_cmp_int(a4, 0))
  {
    mbedtls_mpi_init(&v15);
    mbedtls_mpi_init(&v13);
    mbedtls_mpi_init(v12);
    mbedtls_mpi_init(v11);
    LODWORD(v10) = 196609;
    v9 = v27;
    if ((mbedtls_mpi_cmp_abs(v23, v22) & 0x80000000) != 0)
    {
      if ((!v25 || (v21 = mbedtls_mpi_lset(v25, 0)) == 0) && (!v24 || (v21 = mbedtls_mpi_copy(v24, v23)) == 0))
      {
        return 0;
      }

LABEL_59:
      mbedtls_mpi_free(&v15);
      mbedtls_mpi_free(&v13);
      mbedtls_mpi_free(v12);
      mbedtls_mpi_free(v11);
      mbedtls_platform_zeroize(v27, 0x18uLL);
      return v21;
    }

    v21 = mbedtls_mpi_copy(&v15, v23);
    if (v21)
    {
      goto LABEL_59;
    }

    v21 = mbedtls_mpi_copy(&v13, v22);
    if (v21)
    {
      goto LABEL_59;
    }

    LOWORD(v14) = 1;
    LOWORD(v16) = 1;
    v21 = mbedtls_mpi_grow(v12, *(v23 + 5) + 2);
    if (v21)
    {
      goto LABEL_59;
    }

    v21 = mbedtls_mpi_lset(v12, 0);
    if (v21)
    {
      goto LABEL_59;
    }

    v21 = mbedtls_mpi_grow(v11, *(v23 + 5) + 2);
    if (v21)
    {
      goto LABEL_59;
    }

    v17 = mbedtls_mpi_bitlen(&v13) % 0x40;
    if (v17 >= 0x3F)
    {
      v17 = 0;
    }

    else
    {
      v17 = 63 - v17;
      v21 = mbedtls_mpi_shift_l(&v15, v17);
      if (v21)
      {
        goto LABEL_59;
      }

      v21 = mbedtls_mpi_shift_l(&v13, v17);
      if (v21)
      {
        goto LABEL_59;
      }
    }

    v19 = WORD1(v16) - 1;
    v18 = WORD1(v14) - 1;
    v21 = mbedtls_mpi_shift_l(&v13, (v19 - v18) << 6);
    if (v21)
    {
      goto LABEL_59;
    }

    while ((mbedtls_mpi_cmp_mpi(&v15, &v13) & 0x80000000) == 0)
    {
      ++*(v12[0] + 8 * (v19 - v18));
      v21 = mbedtls_mpi_sub_mpi(&v15, &v15, &v13);
      if (v21)
      {
        goto LABEL_59;
      }
    }

    v21 = mbedtls_mpi_shift_r(&v13, (v19 - v18) << 6);
    if (v21)
    {
      goto LABEL_59;
    }

    v20 = v19;
    while (2)
    {
      if (v20 > v18)
      {
        if (*(v15 + 8 * v20) >= *(v13 + 8 * v18))
        {
          *(v12[0] + 8 * (v20 - v18 - 1)) = -1;
        }

        else
        {
          v4 = mbedtls_int_div_int(*(v15 + 8 * v20), *(v15 + 8 * (v20 - 1)), *(v13 + 8 * v18), 0);
          *(v12[0] + 8 * (v20 - v18 - 1)) = v4;
        }

        if (v20 >= 2)
        {
          v8 = *(v15 + 8 * (v20 - 2));
        }

        else
        {
          v8 = 0;
        }

        *v9 = v8;
        if (v20)
        {
          v7 = *(v15 + 8 * (v20 - 1));
        }

        else
        {
          v7 = 0;
        }

        v9[1] = v7;
        v9[2] = *(v15 + 8 * v20);
        ++*(v12[0] + 8 * (v20 - v18 - 1));
        do
        {
          --*(v12[0] + 8 * (v20 - v18 - 1));
          v21 = mbedtls_mpi_lset(v11, 0);
          if (!v21)
          {
            v6 = v18 ? *(v13 + 8 * (v18 - 1)) : 0;
            *v11[0] = v6;
            *(v11[0] + 8) = *(v13 + 8 * v18);
            v21 = mbedtls_mpi_mul_int(v11, v11, *(v12[0] + 8 * (v20 - v18 - 1)));
            if (!v21)
            {
              continue;
            }
          }

          goto LABEL_59;
        }

        while (mbedtls_mpi_cmp_mpi(v11, &v9) > 0);
        v21 = mbedtls_mpi_mul_int(v11, &v13, *(v12[0] + 8 * (v20 - v18 - 1)));
        if (v21)
        {
          goto LABEL_59;
        }

        v21 = mbedtls_mpi_shift_l(v11, (v20 - v18 - 1) << 6);
        if (v21)
        {
          goto LABEL_59;
        }

        v21 = mbedtls_mpi_sub_mpi(&v15, &v15, v11);
        if (v21)
        {
          goto LABEL_59;
        }

        if ((mbedtls_mpi_cmp_int(&v15, 0) & 0x80000000) != 0)
        {
          v21 = mbedtls_mpi_copy(v11, &v13);
          if (v21)
          {
            goto LABEL_59;
          }

          v21 = mbedtls_mpi_shift_l(v11, (v20 - v18 - 1) << 6);
          if (v21)
          {
            goto LABEL_59;
          }

          v21 = mbedtls_mpi_add_mpi(&v15, &v15, v11);
          if (v21)
          {
            goto LABEL_59;
          }

          --*(v12[0] + 8 * (v20 - v18 - 1));
        }

        --v20;
        continue;
      }

      break;
    }

    if (v25)
    {
      v21 = mbedtls_mpi_copy(v25, v12);
      if (v21)
      {
        goto LABEL_59;
      }

      *(v25 + 8) = *(v23 + 4) * *(v22 + 4);
    }

    if (v24)
    {
      v21 = mbedtls_mpi_shift_r(&v15, v17);
      if (!v21)
      {
        LOWORD(v16) = *(v23 + 4);
        v21 = mbedtls_mpi_copy(v24, &v15);
        if (!v21 && !mbedtls_mpi_cmp_int(v24, 0))
        {
          *(v24 + 8) = 1;
        }
      }
    }

    goto LABEL_59;
  }

  return -12;
}

uint64_t mbedtls_int_div_int(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 && a1 < a3)
  {
    v6 = __udivti3();
    if (v4)
    {
      v6 = -1;
    }

    if (a4)
    {
      *a4 = a2 - v6 * a3;
    }

    return v6;
  }

  else
  {
    if (a4)
    {
      *a4 = -1;
    }

    return -1;
  }
}

uint64_t mbedtls_mpi_div_int(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v5 = 0;
  v6 = 0;
  v11 = mpi_sint_abs(a4);
  LOWORD(v6) = -2 * (v7 >> 63) + 1;
  WORD1(v6) = 1;
  v5 = &v11;
  return mbedtls_mpi_div_mpi(v10, v9, v8, &v5);
}

uint64_t mbedtls_mpi_mod_mpi(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if ((mbedtls_mpi_cmp_int(a3, 0) & 0x80000000) != 0)
  {
    return -10;
  }

  else
  {
    v4 = mbedtls_mpi_div_mpi(0, a1, a2, a3);
    if (!v4)
    {
      while ((mbedtls_mpi_cmp_int(a1, 0) & 0x80000000) != 0)
      {
        v4 = mbedtls_mpi_add_mpi(a1, a1, a3);
        if (v4)
        {
          return v4;
        }
      }

      do
      {
        if ((mbedtls_mpi_cmp_mpi(a1, a3) & 0x80000000) != 0)
        {
          break;
        }

        v4 = mbedtls_mpi_sub_mpi(a1, a1, a3);
      }

      while (!v4);
    }

    return v4;
  }
}

uint64_t mbedtls_mpi_mod_int(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      return -10;
    }

    else if (a3 != 1 && *(a2 + 10))
    {
      if (a3 == 2)
      {
        *a1 = **a2 & 1;
        return 0;
      }

      else
      {
        v6 = *(a2 + 10);
        v4 = 0;
        while (v6)
        {
          v5 = *(*a2 + 8 * (v6 - 1));
          v4 = (v5 | (((HIDWORD(v5) | (v4 << 32)) % a3) << 32)) % a3;
          --v6;
        }

        if (*(a2 + 8) < 0 && v4)
        {
          v4 = a3 - v4;
        }

        *a1 = v4;
        return 0;
      }
    }

    else
    {
      *a1 = 0;
      return 0;
    }
  }

  else
  {
    return -12;
  }
}

uint64_t mbedtls_mpi_exp_mod(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, _OWORD *a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  mont_r2_unsafe = -110;
  if (mbedtls_mpi_cmp_int(a4, 0) <= 0 || (**v15 & 1) == 0)
  {
    return -4;
  }

  if ((mbedtls_mpi_cmp_int(v16, 0) & 0x80000000) != 0)
  {
    return -4;
  }

  if (mbedtls_mpi_bitlen(v16) > 0x100 || mbedtls_mpi_bitlen(v15) > 0x100)
  {
    return -4;
  }

  if (!*(v16 + 10))
  {
    return mbedtls_mpi_lset(v18, 1uLL);
  }

  v5 = *(v16 + 10);
  v12 = mbedtls_mpi_core_exp_mod_working_limbs(*(v15 + 5));
  v11 = mbedtls_calloc();
  if (!v11)
  {
    return -16;
  }

  *v10 = 0uLL;
  mbedtls_mpi_init(v10);
  if (v14 && *v14)
  {
    mont_r2_unsafe = mbedtls_mpi_grow(v14, *(v15 + 5));
    if (!mont_r2_unsafe)
    {
      *v10 = *v14;
LABEL_21:
      mont_r2_unsafe = mbedtls_mpi_copy(v18, v17);
      if (!mont_r2_unsafe)
      {
        *(v18 + 4) = 1;
        if ((mbedtls_mpi_cmp_mpi(v18, v15) & 0x80000000) != 0 || (mont_r2_unsafe = mbedtls_mpi_mod_mpi(v18, v18, v15)) == 0)
        {
          mont_r2_unsafe = mbedtls_mpi_grow(v18, *(v15 + 5));
          if (!mont_r2_unsafe)
          {
            v9 = mbedtls_mpi_core_montmul_init(*v15);
            mbedtls_mpi_core_to_mont_rep(*v18, *v18, *v15, *(v15 + 5), v9, v10[0], v11);
            mbedtls_mpi_core_exp_mod(*v18, *v18, *v15, *(v15 + 5), *v16, *(v16 + 10), v10[0], v11);
            mbedtls_mpi_core_from_mont_rep(*v18, *v18, *v15, *(v15 + 5), v9, v11);
            if (*(v17 + 4) == -1 && (**v16 & 1) != 0)
            {
              v8 = mbedtls_mpi_core_check_zero_ct(*v18, *(v18 + 5));
              v6 = mbedtls_ct_mpi_sign_if (v8, -1, 1);
              *(v18 + 4) = v6;
              mont_r2_unsafe = mbedtls_mpi_add_mpi(v18, v15, v18);
            }
          }
        }
      }
    }
  }

  else
  {
    mont_r2_unsafe = mbedtls_mpi_core_get_mont_r2_unsafe(v10, v15);
    if (!mont_r2_unsafe)
    {
      if (v14)
      {
        *v14 = *v10;
      }

      goto LABEL_21;
    }
  }

  mbedtls_zeroize_and_free(v11, 8 * v12);
  if (!v14 || !*v14)
  {
    mbedtls_mpi_free(v10);
  }

  return mont_r2_unsafe;
}

uint64_t mbedtls_mpi_gcd(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -110;
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  mbedtls_mpi_init(&v8);
  mbedtls_mpi_init(&v6);
  v12 = mbedtls_mpi_copy(&v8, v14);
  if (!v12)
  {
    v12 = mbedtls_mpi_copy(&v6, v13);
    if (!v12)
    {
      v11 = mbedtls_mpi_lsb(&v8);
      v10 = mbedtls_mpi_lsb(&v6);
      if (v10 || mbedtls_mpi_get_bit(&v6, 0))
      {
        if (v10 < v11)
        {
          v11 = v10;
        }

        LOWORD(v7) = 1;
        LOWORD(v9) = 1;
        while (mbedtls_mpi_cmp_int(&v8, 0))
        {
          v3 = mbedtls_mpi_lsb(&v8);
          v12 = mbedtls_mpi_shift_r(&v8, v3);
          if (v12)
          {
            goto LABEL_21;
          }

          v4 = mbedtls_mpi_lsb(&v6);
          v12 = mbedtls_mpi_shift_r(&v6, v4);
          if (v12)
          {
            goto LABEL_21;
          }

          if ((mbedtls_mpi_cmp_mpi(&v8, &v6) & 0x80000000) != 0)
          {
            v12 = mbedtls_mpi_sub_abs(&v6, &v6, &v8);
            if (v12)
            {
              goto LABEL_21;
            }

            v12 = mbedtls_mpi_shift_r(&v6, 1uLL);
            if (v12)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v12 = mbedtls_mpi_sub_abs(&v8, &v8, &v6);
            if (v12)
            {
              goto LABEL_21;
            }

            v12 = mbedtls_mpi_shift_r(&v8, 1uLL);
            if (v12)
            {
              goto LABEL_21;
            }
          }
        }

        v12 = mbedtls_mpi_shift_l(&v6, v11);
        if (!v12)
        {
          v12 = mbedtls_mpi_copy(v15, &v6);
        }
      }

      else
      {
        v12 = mbedtls_mpi_copy(v15, v14);
      }
    }
  }

LABEL_21:
  mbedtls_mpi_free(&v8);
  mbedtls_mpi_free(&v6);
  return v12;
}

uint64_t mbedtls_mpi_fill_random(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_mpi_resize_clear(a1, a2 / 8 + (a2 % 8 != 0));
  if (v5)
  {
    return v5;
  }

  if (a2)
  {
    return mbedtls_mpi_core_fill_random(*a1, *(a1 + 10), a2, a3, a4);
  }

  return 0;
}

uint64_t mbedtls_mpi_random(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t), uint64_t a5)
{
  if (a2 < 0)
  {
    return -4;
  }

  else if (mbedtls_mpi_cmp_int(a3, a2) > 0)
  {
    v6 = mbedtls_mpi_resize_clear(a1, *(a3 + 10));
    if (v6)
    {
      return v6;
    }

    else
    {
      return mbedtls_mpi_core_random(*a1, a2, *a3, *(a1 + 10), a4, a5);
    }
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_mpi_inv_mod(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = -110;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  if (mbedtls_mpi_cmp_int(a3, 1) > 0)
  {
    mbedtls_mpi_init(v11);
    mbedtls_mpi_init(v10);
    mbedtls_mpi_init(v9);
    mbedtls_mpi_init(v8);
    mbedtls_mpi_init(v12);
    mbedtls_mpi_init(v7);
    mbedtls_mpi_init(v6);
    mbedtls_mpi_init(v5);
    mbedtls_mpi_init(v4);
    v13 = mbedtls_mpi_gcd(v12, v15, v14);
    if (!v13)
    {
      if (mbedtls_mpi_cmp_int(v12, 1))
      {
        v13 = -14;
      }

      else
      {
        v13 = mbedtls_mpi_mod_mpi(v11, v15, v14);
        if (!v13)
        {
          v13 = mbedtls_mpi_copy(v10, v11);
          if (!v13)
          {
            v13 = mbedtls_mpi_copy(v7, v14);
            if (!v13)
            {
              v13 = mbedtls_mpi_copy(v6, v14);
              if (!v13)
              {
                v13 = mbedtls_mpi_lset(v9, 1uLL);
                if (!v13)
                {
                  v13 = mbedtls_mpi_lset(v8, 0);
                  if (!v13)
                  {
                    v13 = mbedtls_mpi_lset(v5, 0);
                    if (!v13)
                    {
                      v13 = mbedtls_mpi_lset(v4, 1uLL);
                      if (!v13)
                      {
                        do
                        {
                          while ((*v10[0] & 1) == 0)
                          {
                            v13 = mbedtls_mpi_shift_r(v10, 1uLL);
                            if (!v13 && ((*v9[0] & 1) == 0 && (*v8[0] & 1) == 0 || (v13 = mbedtls_mpi_add_mpi(v9, v9, v7)) == 0 && (v13 = mbedtls_mpi_sub_mpi(v8, v8, v11)) == 0))
                            {
                              v13 = mbedtls_mpi_shift_r(v9, 1uLL);
                              if (!v13)
                              {
                                v13 = mbedtls_mpi_shift_r(v8, 1uLL);
                                if (!v13)
                                {
                                  continue;
                                }
                              }
                            }

                            goto LABEL_48;
                          }

                          while ((*v6[0] & 1) == 0)
                          {
                            v13 = mbedtls_mpi_shift_r(v6, 1uLL);
                            if (!v13 && ((*v5[0] & 1) == 0 && (*v4[0] & 1) == 0 || (v13 = mbedtls_mpi_add_mpi(v5, v5, v7)) == 0 && (v13 = mbedtls_mpi_sub_mpi(v4, v4, v11)) == 0))
                            {
                              v13 = mbedtls_mpi_shift_r(v5, 1uLL);
                              if (!v13)
                              {
                                v13 = mbedtls_mpi_shift_r(v4, 1uLL);
                                if (!v13)
                                {
                                  continue;
                                }
                              }
                            }

                            goto LABEL_48;
                          }

                          if ((mbedtls_mpi_cmp_mpi(v10, v6) & 0x80000000) != 0)
                          {
                            v13 = mbedtls_mpi_sub_mpi(v6, v6, v10);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v5, v5, v9);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v4, v4, v8);
                            if (v13)
                            {
                              goto LABEL_48;
                            }
                          }

                          else
                          {
                            v13 = mbedtls_mpi_sub_mpi(v10, v10, v6);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v9, v9, v5);
                            if (v13)
                            {
                              goto LABEL_48;
                            }

                            v13 = mbedtls_mpi_sub_mpi(v8, v8, v4);
                            if (v13)
                            {
                              goto LABEL_48;
                            }
                          }
                        }

                        while (mbedtls_mpi_cmp_int(v10, 0));
                        while ((mbedtls_mpi_cmp_int(v5, 0) & 0x80000000) != 0)
                        {
                          v13 = mbedtls_mpi_add_mpi(v5, v5, v14);
                          if (v13)
                          {
                            goto LABEL_48;
                          }
                        }

                        while ((mbedtls_mpi_cmp_mpi(v5, v14) & 0x80000000) == 0)
                        {
                          v13 = mbedtls_mpi_sub_mpi(v5, v5, v14);
                          if (v13)
                          {
                            goto LABEL_48;
                          }
                        }

                        v13 = mbedtls_mpi_copy(v16, v5);
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

LABEL_48:
    mbedtls_mpi_free(v11);
    mbedtls_mpi_free(v10);
    mbedtls_mpi_free(v9);
    mbedtls_mpi_free(v8);
    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v7);
    mbedtls_mpi_free(v6);
    mbedtls_mpi_free(v5);
    mbedtls_mpi_free(v4);
    return v13;
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_ccm_setkey(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = mbedtls_cipher_info_from_values(a2, a4, 1);
  if (v5)
  {
    if (mbedtls_cipher_info_get_block_size(v5) == 16)
    {
      mbedtls_cipher_free((a1 + 72));
      v6 = mbedtls_cipher_setup((a1 + 72), v5);
      if (v6)
      {
        return v6;
      }

      else
      {
        v7 = mbedtls_cipher_setkey(a1 + 72, a3, a4, 1u);
        if (v7)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return -13;
    }
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_cipher_info_get_block_size(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8) & 0x1F;
  }

  else
  {
    return 0;
  }
}

char *mbedtls_ccm_free(char *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_cipher_free(result + 72);
    return mbedtls_platform_zeroize(v1, 0xA0uLL);
  }

  return result;
}

uint64_t mbedtls_ccm_starts(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 7 && a4 <= 0xD)
  {
    *(a1 + 68) = a2;
    *(a1 + 64) = 15 - a4;
    __memset_chk();
    *(a1 + 16) = *(a1 + 64) - 1;
    __memcpy_chk();
    v4 = *(a1 + 64);
    __memset_chk();
    *(a1 + 31) = 1;
    __memcpy_chk();
    *(a1 + 152) |= 1u;
    return ccm_calculate_first_block_if_ready(a1);
  }

  else
  {
    return -13;
  }
}

uint64_t ccm_calculate_first_block_if_ready(uint64_t a1)
{
  v6 = a1;
  v5 = -110;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  if ((*(a1 + 152) & 1) != 0 && (*(v6 + 152) & 2) != 0)
  {
    if (!*(v6 + 48))
    {
      if (*(v6 + 68) != 3 && *(v6 + 68) != 2)
      {
        return -13;
      }

      *(v6 + 32) = 0;
    }

    *v6 |= (*(v6 + 40) != 0) << 6;
    *v6 |= 8 * ((*(v6 + 48) - 2) / 2uLL);
    *v6 |= *(v6 + 64) - 1;
    v4 = 0;
    v3 = *(v6 + 32);
    while (v4 < *(v6 + 64))
    {
      *(v6 + 15 - v4++) = v3;
      v3 >>= 8;
    }

    if (v3)
    {
      *(v6 + 152) |= 0x10u;
      return -13;
    }

    else
    {
      v5 = mbedtls_cipher_update(v6 + 72, v6, 0x10uLL, v6, &v2);
      if (v5)
      {
        *(v6 + 152) |= 0x10u;
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ccm_set_lengths(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 == 2 || a4 > 0x10 || a4 % 2)
  {
    return -13;
  }

  else if (a2 < 0xFF00)
  {
    *(a1 + 32) = a3;
    *(a1 + 40) = a2;
    *(a1 + 48) = a4;
    *(a1 + 56) = 0;
    *(a1 + 152) |= 2u;
    return ccm_calculate_first_block_if_ready(a1);
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_ccm_update_ad(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = -110;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if ((*(a1 + 152) & 0x10) != 0)
  {
    return -13;
  }

  if (!v8)
  {
    return 0;
  }

  if ((*(v10 + 152) & 8) != 0)
  {
    return -13;
  }

  if ((*(v10 + 152) & 4) != 0)
  {
    if (*(v10 + 56) + v8 > *(v10 + 40))
    {
      return -13;
    }

LABEL_12:
    while (v8)
    {
      v5 = (*(v10 + 56) + 2) % 0x10uLL;
      v6 = 16 - v5;
      if (16 - v5 > v8)
      {
        v6 = v8;
      }

      v24 = v10 + v5;
      v23 = v10 + v5;
      v22 = v9;
      v21 = v6;
      for (i = 0; i + 16 <= v21; i += 16)
      {
        v19 = 0u;
        v18 = 0u;
        v18 = *(v23 + i);
        v17 = v18;
        v19 = v18;
        v16 = 0u;
        v15 = 0u;
        v15 = *(v22 + i);
        v14 = v15;
        v16 = v15;
        v27 = v18;
        v26 = v15;
        v25 = veorq_s8(v18, v15);
        v13 = v25;
        v12 = v25;
        *(v24 + i) = v25;
      }

      while (i < v21)
      {
        *(v24 + i) = *(v23 + i) ^ *(v22 + i);
        ++i;
      }

      *(v10 + 56) += v6;
      v8 -= v6;
      v9 += v6;
      if (v6 + v5 == 16 || *(v10 + 56) == *(v10 + 40))
      {
        v7 = mbedtls_cipher_update(v10 + 72, v10, 0x10uLL, v10, &v4);
        if (v7)
        {
          *(v10 + 152) |= 0x10u;
          return v7;
        }
      }
    }

    if (*(v10 + 56) == *(v10 + 40))
    {
      *(v10 + 152) |= 8u;
      *(v10 + 56) = 0;
    }

    return 0;
  }

  if (v8 <= *(v10 + 40))
  {
    *v10 ^= BYTE1(*(v10 + 40));
    *(v10 + 1) ^= *(v10 + 40);
    *(v10 + 152) |= 4u;
    goto LABEL_12;
  }

  return -13;
}

uint64_t mbedtls_ccm_update(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = -110;
  k = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if ((*(a1 + 152) & 0x10) != 0)
  {
    return -13;
  }

  else if (*(v19 + 48) && *(v19 + 56) + v17 > *(v19 + 32))
  {
    return -13;
  }

  else if (v15 >= v17)
  {
    *v14 = v17;
    v13 = 0;
    while (v17)
    {
      v10 = *(v19 + 56) % 0x10uLL;
      v11 = 16 - v10;
      if (16 - v10 > v17)
      {
        v11 = v17;
      }

      *(v19 + 56) += v11;
      if (*(v19 + 68) == 1 || *(v19 + 68) == 3)
      {
        v46 = v19 + v10;
        v45 = v19 + v10;
        v44 = v18;
        v43 = v11;
        for (i = 0; i + 16 <= v43; i += 16)
        {
          v41 = 0u;
          v40 = 0u;
          v40 = *(v45 + i);
          v39 = v40;
          v41 = v40;
          v38 = 0u;
          v37 = 0u;
          v37 = *(v44 + i);
          v36 = v37;
          v38 = v37;
          v49 = v40;
          v48 = v37;
          v47 = veorq_s8(v40, v37);
          v35 = v47;
          v34 = v47;
          *(v46 + i) = v47;
        }

        while (i < v43)
        {
          *(v46 + i) = *(v45 + i) ^ *(v44 + i);
          ++i;
        }

        if (v11 + v10 == 16 || *(v19 + 56) == *(v19 + 32))
        {
          v13 = mbedtls_cipher_update(v19 + 72, v19, 16, v19, &v9);
          if (v13)
          {
            *(v19 + 152) |= 0x10u;
            break;
          }
        }

        v13 = mbedtls_ccm_crypt(v19, v10, v11, v18, v16);
        if (v13)
        {
          break;
        }
      }

      if (!*(v19 + 68) || *(v19 + 68) == 2)
      {
        v13 = mbedtls_ccm_crypt(v19, v10, v11, v18, v53);
        if (v13)
        {
          break;
        }

        v33 = v19 + v10;
        v32 = v19 + v10;
        v31 = v53;
        v30 = v11;
        for (j = 0; j + 16 <= v30; j += 16)
        {
          v28 = 0u;
          v27 = 0u;
          v27 = *(v32 + j);
          v26 = v27;
          v28 = v27;
          v25 = 0u;
          v24 = 0u;
          v24 = *&v31[j];
          v23 = v24;
          v25 = v24;
          v52 = v27;
          v51 = v24;
          v50 = veorq_s8(v27, v24);
          v22 = v50;
          v21 = v50;
          *(v33 + j) = v50;
        }

        while (j < v30)
        {
          *(v33 + j) = *(v32 + j) ^ v31[j];
          ++j;
        }

        __memcpy_chk();
        if (v11 + v10 == 16 || *(v19 + 56) == *(v19 + 32))
        {
          v13 = mbedtls_cipher_update(v19 + 72, v19, 16, v19, &v9);
          if (v13)
          {
            *(v19 + 152) |= 0x10u;
            break;
          }
        }
      }

      if (v11 + v10 == 16 || *(v19 + 56) == *(v19 + 32))
      {
        for (k = 0; k < *(v19 + 64); ++k)
        {
          v6 = 15 - k;
          v7 = *(v19 + 16 + v6) + 1;
          *(v19 + 16 + v6) = v7;
          if (v7)
          {
            break;
          }
        }
      }

      v17 -= v11;
      v18 += v11;
      v16 += v11;
    }

    mbedtls_platform_zeroize(v53, 0x10uLL);
    return v13;
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_ccm_crypt(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = -110;
  v30[0] = 0;
  v30[1] = 0;
  v6 = 0;
  v7 = mbedtls_cipher_update(a1 + 72, a1 + 16, 16, v30, &v6);
  if (v7)
  {
    *(v12 + 152) |= 0x10u;
    mbedtls_platform_zeroize(v30, 0x10uLL);
    return v7;
  }

  else
  {
    v26 = v8;
    v25 = v9;
    v24 = v30 + v11;
    v23 = v10;
    for (i = 0; i + 16 <= v23; i += 16)
    {
      v21 = 0u;
      v20 = 0u;
      v20 = *(v25 + i);
      v19 = v20;
      v21 = v20;
      v18 = 0u;
      v17 = 0u;
      v17 = *&v24[i];
      v16 = v17;
      v18 = v17;
      v29 = v20;
      v28 = v17;
      v27 = veorq_s8(v20, v17);
      v15 = v27;
      v14 = v27;
      *(v26 + i) = v27;
    }

    while (i < v23)
    {
      *(v26 + i) = *(v25 + i) ^ v24[i];
      ++i;
    }

    mbedtls_platform_zeroize(v30, 0x10uLL);
    return v7;
  }
}

uint64_t mbedtls_ccm_finish(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 152) & 0x10) != 0)
  {
    return -110;
  }

  else if (!*(a1 + 40) || (*(a1 + 152) & 8) != 0)
  {
    if (!*(a1 + 32) || *(a1 + 56) == *(a1 + 32))
    {
      for (i = 0; i < *(a1 + 64); ++i)
      {
        *(a1 + 16 + 15 - i) = 0;
      }

      v4 = mbedtls_ccm_crypt(a1, 0, 0x10uLL, a1, a1);
      if (v4)
      {
        return v4;
      }

      else
      {
        if (a2)
        {
          __memcpy_chk();
        }

        mbedtls_ccm_clear_state(a1);
        return 0;
      }
    }

    else
    {
      return -13;
    }
  }

  else
  {
    return -13;
  }
}

uint64_t mbedtls_ccm_clear_state(uint64_t a1)
{
  *(a1 + 152) = 0;
  __memset_chk();
  return __memset_chk();
}

uint64_t ccm_auth_crypt(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = a8;
  v16 = a9;
  v15 = a10;
  v14 = a11;
  v12 = 0;
  updated = mbedtls_ccm_starts(a1, a2, a4, a5);
  if (updated)
  {
    return updated;
  }

  else
  {
    updated = mbedtls_ccm_set_lengths(v24, v18, v22, v14);
    if (updated)
    {
      return updated;
    }

    else
    {
      updated = mbedtls_ccm_update_ad(v24, v19, v18);
      if (updated)
      {
        return updated;
      }

      else
      {
        updated = mbedtls_ccm_update(v24, v17, v22, v16, v22, &v12);
        if (updated)
        {
          return updated;
        }

        else
        {
          updated = mbedtls_ccm_finish(v24, v15);
          if (updated)
          {
            return updated;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t ccm_auth_decrypt(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, unint64_t a11)
{
  v12 = ccm_auth_crypt(a1, a2, a3, a4, a5, a6, a7, a8, a9, v16, a11);
  if (v12)
  {
    return v12;
  }

  else
  {
    v13 = mbedtls_ccm_compare_tags(a10, v16, a11);
    if (v13)
    {
      mbedtls_platform_zeroize(a9, a3);
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_ccm_compare_tags(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (mbedtls_ct_memcmp(a1, a2, a3))
  {
    return -15;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_cipher_list()
{
  if (!supported_init)
  {
    v4 = &mbedtls_cipher_definitions;
    v3 = &mbedtls_cipher_supported;
    while (*v4)
    {
      v0 = v4;
      v4 += 4;
      v1 = v3++;
      *v1 = *v0;
    }

    *v3 = 0;
    supported_init = 1;
  }

  return &mbedtls_cipher_supported;
}

uint64_t mbedtls_cipher_info_from_type(int a1)
{
  for (i = &mbedtls_cipher_definitions; i[1]; i += 2)
  {
    if (*i == a1)
    {
      return i[1];
    }
  }

  return 0;
}

uint64_t mbedtls_cipher_info_from_string(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = &mbedtls_cipher_definitions; *(i + 1); i += 16)
  {
    if (!strcmp(**(i + 1), a1))
    {
      return *(i + 1);
    }
  }

  return 0;
}

uint64_t mbedtls_cipher_info_from_values(int a1, int a2, int a3)
{
  for (i = &mbedtls_cipher_definitions; i[1]; i += 2)
  {
    if (*mbedtls_cipher_get_base(i[1]) == a1 && mbedtls_cipher_info_get_key_bitlen(i[1]) == a2 && HIBYTE(*(i[1] + 8)) >> 4 == a3)
    {
      return i[1];
    }
  }

  return 0;
}

unint64_t mbedtls_cipher_info_get_key_bitlen(uint64_t a1)
{
  if (a1)
  {
    return ((*(a1 + 8) >> 8) & 0xF) << 6;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_cipher_free(void *result)
{
  v2 = result;
  if (result)
  {
    if (*(result + 9))
    {
      mbedtls_zeroize_and_free(*(result + 9), 0x28uLL);
    }

    if (v2[8])
    {
      base = mbedtls_cipher_get_base(*v2);
      (*(base + 40))(v2[8]);
    }

    return mbedtls_platform_zeroize(v2, 0x50uLL);
  }

  return result;
}

uint64_t mbedtls_cipher_setup(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    __memset_chk();
    if (!*(mbedtls_cipher_get_base(a2) + 32) || (base = mbedtls_cipher_get_base(a2), (a1[8] = (*(base + 32))()) != 0))
    {
      *a1 = a2;
      return 0;
    }

    else
    {
      return -24960;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_setkey(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (a4 < 2)
  {
    if (*a1)
    {
      if ((*(*a1 + 8) & 0x2000000) != 0 || mbedtls_cipher_info_get_key_bitlen(*a1) == a3)
      {
        *(a1 + 8) = a3;
        *(a1 + 12) = a4;
        if (a4 == 1 || HIBYTE(*(*a1 + 8)) >> 4 == 3 || HIBYTE(*(*a1 + 8)) >> 4 == 4 || HIBYTE(*(*a1 + 8)) >> 4 == 5)
        {
          base = mbedtls_cipher_get_base(*a1);
          return (*(base + 16))(*(a1 + 64), a2, *(a1 + 8));
        }

        else if (a4)
        {
          return -24832;
        }

        else
        {
          v5 = mbedtls_cipher_get_base(*a1);
          return (*(v5 + 24))(*(a1 + 64), a2, *(a1 + 8));
        }
      }

      else
      {
        return -24832;
      }
    }

    else
    {
      return -24832;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_set_iv(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    if (a3 <= 0x10)
    {
      if ((*(*a1 + 8) & 0x1000000) != 0)
      {
        iv_size = a3;
      }

      else
      {
        iv_size = mbedtls_cipher_info_get_iv_size(*a1);
        if (iv_size > a3)
        {
          return -24832;
        }
      }

      if (HIBYTE(*(*a1 + 8)) >> 4 == 9)
      {
        v5 = mbedtls_ccm_set_lengths(*(a1 + 64), 0, 0, 0);
        if (!v5)
        {
          if (*(a1 + 12))
          {
            if (*(a1 + 12) != 1)
            {
              return -24832;
            }

            return mbedtls_ccm_starts(*(a1 + 64), 3, a2, a3);
          }

          else
          {
            return mbedtls_ccm_starts(*(a1 + 64), 2, a2, a3);
          }
        }

        return v5;
      }

      else
      {
        if (iv_size)
        {
          __memcpy_chk();
          *(a1 + 56) = iv_size;
        }

        return 0;
      }
    }

    else
    {
      return -24704;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_info_get_iv_size(uint64_t a1)
{
  if (a1)
  {
    return 4 * ((*(a1 + 8) >> 5) & 7);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_cipher_reset(void *a1)
{
  if (*a1)
  {
    a1[4] = 0;
    return 0;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_update(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (*a1)
  {
    *a5 = 0;
    block_size = mbedtls_cipher_get_block_size(a1);
    if (block_size)
    {
      if (HIBYTE(*(*a1 + 8)) >> 4 == 1)
      {
        if (a3 == block_size)
        {
          *a5 = a3;
          base = mbedtls_cipher_get_base(*a1);
          v8 = (*(base + 8))(*(a1 + 64), *(a1 + 12), a2, a4);
          if (v8)
          {
            return v8;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return -25216;
        }
      }

      else if (HIBYTE(*(*a1 + 8)) >> 4 == 9)
      {
        return mbedtls_ccm_update(*(a1 + 64), a2, a3, a4, a3, a5);
      }

      else if (a2 == a4 && (*(a1 + 32) || a3 % block_size))
      {
        return -24832;
      }

      else
      {
        return -24704;
      }
    }

    else
    {
      return -25472;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_get_block_size(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 8) & 0x1F;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_cipher_finish(void *a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    *a3 = 0;
    if (HIBYTE(*(*a1 + 8)) >> 4 == 3 || HIBYTE(*(*a1 + 8)) >> 4 == 4 || HIBYTE(*(*a1 + 8)) >> 4 == 5 || HIBYTE(*(*a1 + 8)) >> 4 == 6 || HIBYTE(*(*a1 + 8)) >> 4 == 9 || HIBYTE(*(*a1 + 8)) >> 4 == 10 || HIBYTE(*(*a1 + 8)) >> 4 == 7)
    {
      return 0;
    }

    else if (BYTE2(*(*a1 + 8)) == 76 || BYTE2(*(*a1 + 8)) == 77)
    {
      return 0;
    }

    else if (HIBYTE(*(*a1 + 8)) >> 4 == 1)
    {
      if (a1[4])
      {
        return -25216;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -24704;
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_crypt(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = a7;
  v8 = 0;
  v9 = mbedtls_cipher_set_iv(a1, a2, a3);
  if (v9)
  {
    return v9;
  }

  else
  {
    v9 = mbedtls_cipher_reset(v16);
    if (v9)
    {
      return v9;
    }

    else
    {
      v9 = mbedtls_cipher_update(v16, v13, v12, v11, v10);
      if (v9)
      {
        return v9;
      }

      else
      {
        v9 = mbedtls_cipher_finish(v16, v11 + *v10, &v8);
        if (v9)
        {
          return v9;
        }

        else
        {
          *v10 += v8;
          return 0;
        }
      }
    }
  }
}

uint64_t mbedtls_cipher_auth_encrypt_ext(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, unint64_t a11)
{
  if (a9 >= a7 + a11)
  {
    v11 = mbedtls_cipher_aead_encrypt(a1, a2, a3, a4, a5, a6, a7, a8, a10, a8 + a7, a11);
    *a10 += a11;
    return v11;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_aead_encrypt(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t *a9, uint64_t a10, unint64_t a11)
{
  if (HIBYTE(*(*a1 + 8)) >> 4 == 8)
  {
    *a9 = a7;
    return mbedtls_ccm_encrypt_and_tag(a1[8], a7, a2, a3, a4, a5, a6, a8, a10, a11);
  }

  else
  {
    return -24704;
  }
}

uint64_t mbedtls_cipher_auth_decrypt_ext(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, unint64_t *a10, unint64_t a11)
{
  if (a7 >= a11 && a9 >= a7 - a11)
  {
    return mbedtls_cipher_aead_decrypt(a1, a2, a3, a4, a5, a6, a7 - a11, a8, a10, a6 + a7 - a11, a11);
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_aead_decrypt(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t *a9, uint64_t a10, unint64_t a11)
{
  if (HIBYTE(*(*a1 + 8)) >> 4 == 8)
  {
    *a9 = a7;
    v12 = mbedtls_ccm_auth_decrypt(a1[8], a7, a2, a3, a4, a5, a6, a8, a10, a11);
    if (v12 == -15)
    {
      return -25344;
    }

    return v12;
  }

  else
  {
    return -24704;
  }
}

uint64_t aes_ctx_alloc()
{
  v1 = mbedtls_calloc();
  if (!v1)
  {
    return 0;
  }

  mbedtls_aes_init();
  return v1;
}

uint64_t ccm_ctx_alloc()
{
  v1 = mbedtls_calloc();
  if (v1)
  {
    mbedtls_ccm_init();
  }

  return v1;
}

uint64_t mbedtls_cipher_cmac_starts(uint64_t *a1, uint64_t a2, int a3)
{
  if (a1 && *a1 && a2)
  {
    v6 = mbedtls_cipher_setkey(a1, a2, a3, 1u);
    if (v6)
    {
      return v6;
    }

    else
    {
      type = mbedtls_cipher_info_get_type(*a1);
      if ((type - 2) <= 2 || type == 36)
      {
        v3 = mbedtls_calloc();
        if (v3)
        {
          a1[9] = v3;
          mbedtls_platform_zeroize(v3, 0x10uLL);
          return 0;
        }

        else
        {
          return -24960;
        }
      }

      else
      {
        return -24832;
      }
    }
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_info_get_type(uint64_t a1)
{
  if (a1)
  {
    return BYTE2(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_cipher_cmac_update(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  j = 0;
  v8 = 0;
  if (a1 && *v16 && v15 && v16[9])
  {
    v13 = v16[9];
    block_size = mbedtls_cipher_info_get_block_size(*v16);
    v12 = v16[9];
    if (*(v13 + 32) && v14 > block_size - *(v13 + 32))
    {
      v3 = v13 + 16 + *(v13 + 32);
      v4 = *(v13 + 32);
      __memcpy_chk();
      v29 = v12;
      v28 = v13 + 16;
      v27 = v12;
      v26 = block_size;
      for (i = 0; i + 8 <= v26; i += 8)
      {
        v33 = v28 + i;
        v32 = 0;
        v32 = *(v28 + i);
        v31 = v27 + i;
        v30 = 0;
        v30 = *(v27 + i);
        v24 = v32 ^ v30;
        v39 = v29 + i;
        v38 = v32 ^ v30;
        __memcpy_chk();
      }

      while (i < v26)
      {
        *(v29 + i) = *(v28 + i) ^ *(v27 + i);
        ++i;
      }

      v11 = mbedtls_cipher_update(v16, v12, block_size, v12, &v8);
      if (v11)
      {
        return v11;
      }

      v15 += block_size - *(v13 + 32);
      v14 -= block_size - *(v13 + 32);
      *(v13 + 32) = 0;
    }

    v10 = (v14 + block_size - 1) / block_size;
    for (j = 1; j < v10; ++j)
    {
      v23 = v12;
      v22 = v15;
      v21 = v12;
      v20 = block_size;
      for (k = 0; k + 8 <= v20; k += 8)
      {
        v37 = v22 + k;
        v36 = 0;
        v36 = *(v22 + k);
        v35 = v21 + k;
        v34 = 0;
        v34 = *(v21 + k);
        v18 = v36 ^ v34;
        v41 = v23 + k;
        v40 = v36 ^ v34;
        __memcpy_chk();
      }

      while (k < v20)
      {
        *(v23 + k) = *(v22 + k) ^ *(v21 + k);
        ++k;
      }

      v11 = mbedtls_cipher_update(v16, v12, block_size, v12, &v8);
      if (v11)
      {
        return v11;
      }

      v14 -= block_size;
      v15 += block_size;
    }

    if (v14)
    {
      v5 = *(v13 + 32);
      __memcpy_chk();
      *(v13 + 32) += v14;
    }

    return v11;
  }

  return -24832;
}

uint64_t mbedtls_cipher_cmac_finish(uint64_t *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = -110;
  v4 = 0;
  if (a1 && *v10 && v10[9] && v9)
  {
    v8 = v10[9];
    block_size = mbedtls_cipher_info_get_block_size(*v10);
    v7 = v8;
    mbedtls_platform_zeroize(v62, 0x10uLL);
    mbedtls_platform_zeroize(v61, 0x10uLL);
    cmac_generate_subkeys(v10, v62, v61);
    v6 = v8 + 2;
    if (v8[4] >= block_size)
    {
      v37 = v60;
      v36 = v6;
      v35 = v62;
      v34 = block_size;
      for (i = 0; i + 16 <= v34; i += 16)
      {
        v32 = 0u;
        v31 = 0u;
        v31 = *(v36 + i);
        v30 = v31;
        v32 = v31;
        v29 = 0u;
        v28 = 0u;
        v28 = *&v35[i];
        v27 = v28;
        v29 = v28;
        v56 = v31;
        v55 = v28;
        v54 = veorq_s8(v31, v28);
        v26 = v54;
        v25 = v54;
        *&v37[i] = v54;
      }

      while (i < v34)
      {
        v37[i] = *(v36 + i) ^ v35[i];
        ++i;
      }
    }

    else
    {
      cmac_pad(v60, block_size, v6, v8[4]);
      v50 = v60;
      v49 = v60;
      v48 = v61;
      v47 = block_size;
      for (j = 0; j + 16 <= v47; j += 16)
      {
        v45 = 0u;
        v44 = 0u;
        v44 = *&v49[j];
        v43 = v44;
        v45 = v44;
        v42 = 0u;
        v41 = 0u;
        v41 = *&v48[j];
        v40 = v41;
        v42 = v41;
        v53 = v44;
        v52 = v41;
        v51 = veorq_s8(v44, v41);
        v39 = v51;
        v38 = v51;
        *&v50[j] = v51;
      }

      while (j < v47)
      {
        v50[j] = v49[j] ^ v48[j];
        ++j;
      }
    }

    v24 = v7;
    v23 = v60;
    v22 = v7;
    v21 = block_size;
    for (k = 0; k + 16 <= v21; k += 16)
    {
      v19 = 0u;
      v18 = 0u;
      v18 = *&v23[k];
      v17 = v18;
      v19 = v18;
      v16 = 0u;
      v15 = 0u;
      v15 = *(v22 + k);
      v14 = v15;
      v16 = v15;
      v59 = v18;
      v58 = v15;
      v57 = veorq_s8(v18, v15);
      v13 = v57;
      v12 = v57;
      *(v24 + k) = v57;
    }

    while (k < v21)
    {
      *(v24 + k) = v23[k] ^ *(v22 + k);
      ++k;
    }

    v5 = mbedtls_cipher_update(v10, v7, block_size, v7, &v4);
    if (!v5)
    {
      __memcpy_chk();
    }

    mbedtls_platform_zeroize(v62, 0x10uLL);
    mbedtls_platform_zeroize(v61, 0x10uLL);
    v8[4] = 0;
    mbedtls_platform_zeroize(v8 + 2, 0x10uLL);
    mbedtls_platform_zeroize(v7, 0x10uLL);
    return v5;
  }

  else
  {
    return -24832;
  }
}

uint64_t cmac_generate_subkeys(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5 = 0;
  mbedtls_platform_zeroize(v10, 0x10uLL);
  block_size = mbedtls_cipher_info_get_block_size(*v9);
  v6 = mbedtls_cipher_update(v9, v10, block_size, v10, &v5);
  if (!v6)
  {
    v6 = cmac_multiply_by_u(v8, v10, block_size);
    if (!v6)
    {
      v6 = cmac_multiply_by_u(v7, v8, block_size);
    }
  }

  mbedtls_platform_zeroize(v10, 0x10uLL);
  return v6;
}

uint64_t cmac_pad(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  for (i = 0; i < a2; ++i)
  {
    if (i >= a4)
    {
      if (i == a4)
      {
        *(result + i) = 0x80;
      }

      else
      {
        *(result + i) = 0;
      }
    }

    else
    {
      *(result + i) = *(a3 + i);
    }
  }

  return result;
}

uint64_t mbedtls_cipher_cmac_reset(void *a1)
{
  if (a1 && *a1 && a1[9])
  {
    v2 = a1[9];
    v2[4] = 0;
    mbedtls_platform_zeroize(v2 + 2, 0x10uLL);
    mbedtls_platform_zeroize(v2, 0x10uLL);
    return 0;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_cipher_cmac(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  memset(__b, 0, sizeof(__b));
  if (a1 && a2 && a4 && a6)
  {
    mbedtls_cipher_init();
    v7 = mbedtls_cipher_setup(__b, a1);
    if (!v7)
    {
      v7 = mbedtls_cipher_cmac_starts(__b, a2, a3);
      if (!v7)
      {
        v7 = mbedtls_cipher_cmac_update(__b, a4, a5);
        if (!v7)
        {
          v7 = mbedtls_cipher_cmac_finish(__b, a6);
        }
      }
    }

    mbedtls_cipher_free(__b);
    return v7;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_aes_cmac_prf_128(__int128 *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1 && a3 && a5)
  {
    v6 = mbedtls_cipher_info_from_type(2);
    if (!v6)
    {
      v7 = -24704;
LABEL_11:
      mbedtls_platform_zeroize(&v14, 0x10uLL);
      return v7;
    }

    if (a2 == 16)
    {
      v14 = *a1;
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v7 = mbedtls_cipher_cmac(v6, v15, 128, a1, a2, &v14);
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v7 = mbedtls_cipher_cmac(v6, &v14, 128, a3, a4, a5);
    goto LABEL_11;
  }

  return -24832;
}

uint64_t cmac_multiply_by_u(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 == 16)
  {
    for (i = 12; (i & 0x80000000) == 0; i -= 4)
    {
      v5 = bswap32(*&a2[i]) >> 31;
      __memcpy_chk();
    }

    v3 = mbedtls_ct_BOOL(*a2 >> 7);
    *(a1 + 15) ^= mbedtls_ct_uint_if_else_0(v3, 0x87u);
    return 0;
  }

  else
  {
    return -24832;
  }
}

uint64_t mbedtls_ctr_drbg_init(uint64_t a1)
{
  __memset_chk();
  result = mbedtls_aes_init();
  *(a1 + 16) = -1;
  *(a1 + 32) = 10000;
  return result;
}

_DWORD *mbedtls_ctr_drbg_free(_DWORD *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_aes_free(result + 10);
    result = mbedtls_platform_zeroize(v1, 0x158uLL);
    v1[8] = 10000;
    v1[4] = -1;
  }

  return result;
}

uint64_t mbedtls_ctr_drbg_set_nonce_len(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 328))
  {
    return -52;
  }

  else if (a2 <= 0x180)
  {
    *(a1 + 16) = a2;
    return 0;
  }

  else
  {
    return -56;
  }
}

uint64_t mbedtls_ctr_drbg_update(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    updated = block_cipher_df(v7, a2, a3);
    if (!updated)
    {
      updated = ctr_drbg_update_internal(a1, v7);
    }

    mbedtls_platform_zeroize(v7, 0x30uLL);
    return updated;
  }

  else
  {
    return 0;
  }
}

uint64_t block_cipher_df(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  bzero(v11, 0x120uLL);
  if (v15 <= 0x180)
  {
    bzero(v41, 0x1A0uLL);
    v14 = v43;
    v20 = v43;
    v19 = bswap32(v15);
    __memcpy_chk();
    v14 += 7;
    v3 = v14++;
    *v3 = 48;
    __memcpy_chk();
    v14[v15] = 0x80;
    v7 = v15 + 25;
    for (i = 0; i < 32; ++i)
    {
      v38[i] = i;
    }

    mbedtls_aes_init();
    v12 = mbedtls_aes_setkey_enc(v11, v38, 0x100u);
    if (!v12)
    {
      for (j = 0; j < 48; j += 16)
      {
        v14 = v41;
        v37[0] = 0;
        v37[1] = 0;
        v6 = v7;
        while (v6)
        {
          v33 = v37;
          v32 = v37;
          v31 = v14;
          v30 = 16;
          for (k = 0; k + 16 <= v30; k += 16)
          {
            v28 = 0u;
            v27 = 0u;
            v27 = *(v32 + k);
            v26 = v27;
            v28 = v27;
            v25 = 0u;
            v24 = 0u;
            v24 = *&v31[k];
            v23 = v24;
            v25 = v24;
            v36 = v27;
            v35 = v24;
            v34 = veorq_s8(v27, v24);
            v22 = v34;
            v21 = v34;
            *(v33 + k) = v34;
          }

          while (k < v30)
          {
            *(v33 + k) = *(v32 + k) ^ v31[k];
            ++k;
          }

          v14 += 16;
          if (v6 < 0x10)
          {
            v5 = v6;
          }

          else
          {
            v5 = 16;
          }

          v6 -= v5;
          v12 = mbedtls_aes_crypt_ecb(v11, 1u, v37, v37);
          if (v12)
          {
            goto LABEL_27;
          }
        }

        __memcpy_chk();
        ++v42;
      }

      v12 = mbedtls_aes_setkey_enc(v11, v39, 0x100u);
      if (!v12)
      {
        v13 = &v40;
        v14 = v17;
        for (m = 0; m < 48; m += 16)
        {
          v12 = mbedtls_aes_crypt_ecb(v11, 1u, v13, v13);
          if (v12)
          {
            break;
          }

          __memcpy_chk();
          v14 += 16;
        }
      }
    }

LABEL_27:
    mbedtls_aes_free(v11);
    mbedtls_platform_zeroize(v41, 0x1A0uLL);
    mbedtls_platform_zeroize(v39, 0x30uLL);
    mbedtls_platform_zeroize(v38, 0x20uLL);
    mbedtls_platform_zeroize(v37, 0x10uLL);
    if (v12)
    {
      mbedtls_platform_zeroize(v17, 0x30uLL);
    }

    return v12;
  }

  else
  {
    return -56;
  }
}

uint64_t ctr_drbg_update_internal(_DWORD *a1, uint64_t a2)
{
  v5 = __b;
  memset(__b, 0, sizeof(__b));
  for (i = 0; i < 48; i += 16)
  {
    mbedtls_ctr_increment_counter(a1);
    v3 = mbedtls_aes_crypt_ecb((a1 + 10), 1u, a1, v5);
    if (v3)
    {
      goto LABEL_12;
    }

    v5 += 16;
  }

  for (j = 0; j + 16 <= 0x30; j += 16)
  {
    *&__b[j] = veorq_s8(*&__b[j], *(a2 + j));
  }

  while (j < 0x30)
  {
    __b[j] ^= *(a2 + j);
    ++j;
  }

  v3 = mbedtls_aes_setkey_enc(a1 + 10, __b, 0x100u);
  if (!v3)
  {
    __memcpy_chk();
  }

LABEL_12:
  mbedtls_platform_zeroize(__b, 0x30uLL);
  return v3;
}

uint64_t mbedtls_ctr_drbg_reseed_internal(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 24) <= 0x180uLL)
  {
    if (a4 <= 384 - *(a1 + 24))
    {
      if (a3 <= 384 - *(a1 + 24) - a4)
      {
        bzero(v12, 0x180uLL);
        if ((*(a1 + 328))(*(a1 + 336), v12, *(a1 + 24)))
        {
          return -52;
        }

        else
        {
          v6 = *(a1 + 24);
          if (a4)
          {
            if ((*(a1 + 328))(*(a1 + 336), &v12[v6], a4))
            {
              return -52;
            }

            v6 += a4;
          }

          if (a2 && a3)
          {
            __memcpy_chk();
            v6 += a3;
          }

          updated = block_cipher_df(v12, v12, v6);
          if (!updated)
          {
            updated = ctr_drbg_update_internal(a1, v12);
            if (!updated)
            {
              *(a1 + 16) = 1;
            }
          }

          mbedtls_platform_zeroize(v12, 0x180uLL);
          return updated;
        }
      }

      else
      {
        return -56;
      }
    }

    else
    {
      return -56;
    }
  }

  else
  {
    return -56;
  }
}

uint64_t mbedtls_ctr_drbg_seed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  memset(v13, 0, sizeof(v13));
  *(a1 + 328) = a2;
  *(a1 + 336) = a3;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = 32;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    v6 = good_nonce_len(*(a1 + 24));
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = mbedtls_aes_setkey_enc((a1 + 40), v13, 0x100u);
  if (v7)
  {
    return v7;
  }

  else
  {
    v8 = mbedtls_ctr_drbg_reseed_internal(a1, a4, a5, v6);
    if (v8)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t good_nonce_len(unint64_t a1)
{
  if (a1 < 0x30)
  {
    return (a1 + 1) / 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ctr_drbg_random_with_add(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  memset(__b, 0, sizeof(__b));
  if (a3 <= 0x400)
  {
    if (a5 <= 0x100)
    {
      memset(__b, 0, 0x30uLL);
      if (a1[4] > a1[8] || a1[5])
      {
        v9 = mbedtls_ctr_drbg_reseed(a1, a4, a5);
        if (v9)
        {
          return v9;
        }

        a5 = 0;
      }

      if (!a5 || (updated = block_cipher_df(__b, a4, a5)) == 0 && (updated = ctr_drbg_update_internal(a1, __b)) == 0)
      {
        while (a3)
        {
          mbedtls_ctr_increment_counter(a1);
          updated = mbedtls_aes_crypt_ecb((a1 + 10), 1u, a1, &__b[48]);
          if (updated)
          {
            goto LABEL_21;
          }

          if (a3 <= 0x10)
          {
            v6 = a3;
          }

          else
          {
            v6 = 16;
          }

          __memcpy_chk();
          a2 += v6;
          a3 -= v6;
        }

        updated = ctr_drbg_update_internal(a1, __b);
        if (!updated)
        {
          ++a1[4];
        }
      }

LABEL_21:
      mbedtls_platform_zeroize(__b, 0x40uLL);
      return updated;
    }

    else
    {
      return -56;
    }
  }

  else
  {
    return -54;
  }
}

uint64_t mbedtls_ctr_increment_counter(uint64_t a1)
{
  for (i = 3; ; --i)
  {
    v2 = bswap32(*(a1 + 4 * i)) + 1;
    result = __memcpy_chk();
    if (v2 || !i)
    {
      break;
    }
  }

  return result;
}

uint64_t mbedtls_ecdsa_sign_restartable(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t, unint64_t, unint64_t), uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, unint64_t), uint64_t a10, uint64_t a11)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v27 = a9;
  v26 = a10;
  v25 = a11;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = &v22;
  v20 = &v23;
  memset(__b, 0, sizeof(__b));
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v34;
  v11 = *v35;
  if (mbedtls_ecdsa_can_do() && v35[13])
  {
    if ((mbedtls_mpi_cmp_int(v32, 1) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v32, (v35 + 13)) & 0x80000000) != 0)
    {
      mbedtls_ecp_point_init(__b);
      mbedtls_mpi_init(v18);
      mbedtls_mpi_init(v17);
      mbedtls_mpi_init(v16);
      *v21 = 0;
      while (1)
      {
        v12 = (*v21)++;
        if (v12 > 10)
        {
          break;
        }

        *v20 = 0;
        do
        {
          v13 = (*v20)++;
          if (v13 > 10)
          {
            v24 = -19712;
            goto LABEL_28;
          }

          v24 = mbedtls_ecp_gen_privkey(v35, v18, v29, v28);
          if (!v24)
          {
            v24 = mbedtls_ecp_mul_restartable(v35, __b, v18, v35 + 7, v27, v26, 0);
            if (!v24)
            {
              v24 = mbedtls_mpi_mod_mpi(v15, __b, v35 + 13);
              if (!v24)
              {
                continue;
              }
            }
          }

          goto LABEL_28;
        }

        while (!mbedtls_mpi_cmp_int(v15, 0));
        v24 = derive_mpi(v35, v17, v31, v30);
        if (!v24)
        {
          v24 = mbedtls_ecp_gen_privkey(v35, v16, v27, v26);
          if (!v24)
          {
            v24 = mbedtls_mpi_mul_mpi(v33, v15, v32);
            if (!v24)
            {
              v24 = mbedtls_mpi_add_mpi(v17, v17, v33);
              if (!v24)
              {
                v24 = mbedtls_mpi_mul_mpi(v17, v17, v16);
                if (!v24)
                {
                  v24 = mbedtls_mpi_mul_mpi(v18, v18, v16);
                  if (!v24)
                  {
                    v24 = mbedtls_mpi_mod_mpi(v18, v18, v35 + 13);
                    if (!v24)
                    {
                      v24 = mbedtls_mpi_inv_mod(v33, v18, v35 + 13);
                      if (!v24)
                      {
                        v24 = mbedtls_mpi_mul_mpi(v33, v33, v17);
                        if (!v24)
                        {
                          v24 = mbedtls_mpi_mod_mpi(v33, v33, v35 + 13);
                          if (!v24 && !mbedtls_mpi_cmp_int(v33, 0))
                          {
                            continue;
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

        goto LABEL_28;
      }

      v24 = -19712;
LABEL_28:
      mbedtls_ecp_point_free(__b);
      mbedtls_mpi_free(v18);
      mbedtls_mpi_free(v17);
      mbedtls_mpi_free(v16);
      return v24;
    }

    else
    {
      return -19584;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t derive_mpi(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= (*(a1 + 128) + 7) / 8uLL)
  {
    v5 = a4;
  }

  else
  {
    v5 = (*(a1 + 128) + 7) / 8uLL;
  }

  binary = mbedtls_mpi_read_binary(a2, a3, v5);
  if (!binary && (*(a1 + 128) >= 8 * v5 || (binary = mbedtls_mpi_shift_r(a2, 8 * v5 - *(a1 + 128))) == 0) && (mbedtls_mpi_cmp_mpi(a2, a1 + 104) & 0x80000000) == 0)
  {
    return mbedtls_mpi_sub_mpi(a2, a2, a1 + 104);
  }

  return binary;
}

uint64_t mbedtls_ecdsa_verify_restartable(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = -110;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  memset(__b, 0, sizeof(__b));
  mbedtls_ecp_point_init(__b);
  mbedtls_mpi_init(v13);
  mbedtls_mpi_init(v12);
  mbedtls_mpi_init(v11);
  mbedtls_mpi_init(v10);
  v7 = *v21;
  if (mbedtls_ecdsa_can_do() && v21[13])
  {
    if ((mbedtls_mpi_cmp_int(v17, 1) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v17, (v21 + 13)) & 0x80000000) != 0 && (mbedtls_mpi_cmp_int(v16, 1) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v16, (v21 + 13)) & 0x80000000) != 0)
    {
      v14 = derive_mpi(v21, v13, v20, v19);
      if (!v14)
      {
        v14 = mbedtls_mpi_inv_mod(v12, v16, v21 + 13);
        if (!v14)
        {
          v14 = mbedtls_mpi_mul_mpi(v11, v13, v12);
          if (!v14)
          {
            v14 = mbedtls_mpi_mod_mpi(v11, v11, v21 + 13);
            if (!v14)
            {
              v14 = mbedtls_mpi_mul_mpi(v10, v17, v12);
              if (!v14)
              {
                v14 = mbedtls_mpi_mod_mpi(v10, v10, v21 + 13);
                if (!v14)
                {
                  v14 = mbedtls_ecp_muladd_restartable(v21, __b, v11, v21 + 7, v10, v18, 0);
                  if (!v14)
                  {
                    if (mbedtls_ecp_is_zero(__b))
                    {
                      v14 = -19968;
                    }

                    else
                    {
                      v14 = mbedtls_mpi_mod_mpi(__b, __b, v21 + 13);
                      if (!v14 && mbedtls_mpi_cmp_mpi(__b, v17))
                      {
                        v14 = -19968;
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

    else
    {
      v14 = -19968;
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_mpi_free(v13);
    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v11);
    mbedtls_mpi_free(v10);
    return v14;
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecdsa_write_signature_restartable(uint64_t *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t *a7, uint64_t (*a8)(uint64_t, unint64_t, unint64_t), uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = a9;
  v14 = a10;
  v13 = -110;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (a8)
  {
    mbedtls_mpi_init(v12);
    mbedtls_mpi_init(v11);
    v13 = mbedtls_ecdsa_sign_restartable(v23, v12, v11, v23 + 24, v21, v20, v16, v15, v16, v15, v14);
    if (!v13)
    {
      v13 = ecdsa_signature_to_asn1(v12, v11, v19, v18, v17);
    }

    mbedtls_mpi_free(v12);
    mbedtls_mpi_free(v11);
    return v13;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecdsa_signature_to_asn1(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = -110;
  memset(__b, 0, sizeof(__b));
  v10 = &v19;
  v11 = mbedtls_asn1_write_mpi(&v10, __b, v15);
  if (v11 < 0)
  {
    return v11;
  }

  else
  {
    v6 = v11;
    v11 = mbedtls_asn1_write_mpi(&v10, __b, v16);
    if (v11 < 0)
    {
      return v11;
    }

    else
    {
      v7 = v6 + v11;
      v11 = mbedtls_asn1_write_len(&v10, __b, v7);
      if (v11 < 0)
      {
        return v11;
      }

      else
      {
        v8 = v7 + v11;
        v11 = mbedtls_asn1_write_tag(&v10, __b, 48);
        if (v11 < 0)
        {
          return v11;
        }

        else
        {
          v9 = v8 + v11;
          if (v9 <= v13)
          {
            __memcpy_chk();
            *v12 = v9;
            return 0;
          }

          else
          {
            return -20224;
          }
        }
      }
    }
  }
}

uint64_t mbedtls_ecdsa_read_signature_restartable(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  tag = -110;
  v11 = a4;
  v10 = &a4[a5];
  v9 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v8);
  mbedtls_mpi_init(v7);
  tag = mbedtls_asn1_get_tag(&v11, v10, &v9, 48);
  if (tag)
  {
    tag -= 20352;
  }

  else if (&v11[v9] == v10)
  {
    tag = mbedtls_asn1_get_mpi(&v11, v10, v8);
    if (tag || (tag = mbedtls_asn1_get_mpi(&v11, v10, v7)) != 0)
    {
      tag -= 20352;
    }

    else
    {
      tag = mbedtls_ecdsa_verify_restartable(v18, v17, v16, v18 + 26, v8, v7, v13);
      if (!tag && v11 != v10)
      {
        tag = -19456;
      }
    }
  }

  else
  {
    tag = mbedtls_error_add(-20352, -102);
  }

  mbedtls_mpi_free(v8);
  mbedtls_mpi_free(v7);
  return tag;
}

uint64_t mbedtls_ecdsa_genkey(void *a1, int a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_ecp_group_load(a1, a2);
  if (v5)
  {
    return v5;
  }

  else
  {
    return mbedtls_ecp_gen_keypair(a1, a1 + 24, a1 + 26, a3, a4);
  }
}

uint64_t mbedtls_ecdsa_from_keypair(void *a1, uint64_t a2)
{
  v3 = mbedtls_ecp_group_copy(a1, a2);
  if (v3 || (v3 = mbedtls_mpi_copy((a1 + 24), (a2 + 192))) != 0 || (v3 = mbedtls_ecp_copy((a1 + 26), (a2 + 208))) != 0)
  {
    mbedtls_ecdsa_free(a1);
  }

  return v3;
}

void mbedtls_ecdsa_free(void *a1)
{
  if (a1)
  {
    mbedtls_ecp_keypair_free(a1);
  }
}

uint64_t mbedtls_ecjpake_init(_DWORD *a1)
{
  *a1 = 0;
  mbedtls_ecp_group_init((a1 + 2));
  a1[51] = 0;
  mbedtls_ecp_point_init((a1 + 52));
  mbedtls_ecp_point_init((a1 + 64));
  mbedtls_ecp_point_init((a1 + 76));
  mbedtls_ecp_point_init((a1 + 88));
  mbedtls_ecp_point_init((a1 + 100));
  mbedtls_mpi_init((a1 + 112));
  mbedtls_mpi_init((a1 + 116));
  return mbedtls_mpi_init((a1 + 120));
}

void mbedtls_ecjpake_free(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0;
    mbedtls_ecp_group_free((a1 + 8));
    mbedtls_ecp_point_free(a1 + 208);
    mbedtls_ecp_point_free(a1 + 256);
    mbedtls_ecp_point_free(a1 + 304);
    mbedtls_ecp_point_free(a1 + 352);
    mbedtls_ecp_point_free(a1 + 400);
    mbedtls_mpi_free(a1 + 448);
    mbedtls_mpi_free(a1 + 464);
    mbedtls_mpi_free(a1 + 480);
  }
}

uint64_t mbedtls_ecjpake_setup(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a2 < 2)
  {
    *(a1 + 200) = a2;
    if (mbedtls_md_info_from_type(a3))
    {
      *a1 = a3;
      binary = mbedtls_ecp_group_load((a1 + 8), a4);
      if (!binary)
      {
        binary = mbedtls_mpi_read_binary(a1 + 480, a5, a6);
      }

      if (binary)
      {
        mbedtls_ecjpake_free(a1);
      }

      return binary;
    }

    else
    {
      return -20608;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecjpake_set_point_format(uint64_t a1, unsigned int a2)
{
  if (a2 > 1)
  {
    return -20352;
  }

  else
  {
    *(a1 + 204) = a2;
    return 0;
  }
}

uint64_t mbedtls_ecjpake_check(uint64_t a1)
{
  if (*a1 && *(a1 + 8) && *(a1 + 480))
  {
    return 0;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecjpake_kkpp_read(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = a8;
  v13 = a9;
  v12 = -110;
  v11 = a8;
  v10 = a8 + a9;
  v12 = ecjpake_kkp_read(a1, a2, a3, a4, a5, a7, &v11, a8 + a9);
  if (!v12)
  {
    v12 = ecjpake_kkp_read(v21, v20, v19, v18, v16, v15, &v11, v10);
    if (!v12 && v11 != v10)
    {
      return -20352;
    }
  }

  return v12;
}

uint64_t ecjpake_kkpp_write(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char *a9, unint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t, unint64_t, unint64_t), uint64_t a14)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v23 = a8;
  v22 = a9;
  v21 = a10;
  v20 = a11;
  v19 = a12;
  v18 = a13;
  v17 = a14;
  v16 = -110;
  v15 = a10;
  v16 = ecjpake_kkp_write(a1, a2, a3, a4, a5, a6, a9, &v15, a10 + a11, a13, a14);
  if (!v16)
  {
    v16 = ecjpake_kkp_write(v30, v29, v28, v27, v24, v23, v22, &v15, a10 + a11, v18, v17);
    if (!v16)
    {
      *v19 = v15 - v21;
    }
  }

  return v16;
}

uint64_t mbedtls_ecjpake_read_round_two(uint64_t a1, _WORD *a2, unint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = -110;
  v7 = a2;
  v6 = (a2 + a3);
  memset(__b, 0, sizeof(__b));
  memset(v4, 0, sizeof(v4));
  mbedtls_ecp_group_init(__b);
  mbedtls_ecp_point_init(v4);
  v8 = ecjpake_ecp_add3(v11 + 8, v4, (v11 + 208), (v11 + 256), (v11 + 304));
  if (!v8)
  {
    if (!*(v11 + 200))
    {
      v8 = mbedtls_ecp_tls_read_group(__b, &v7, v9);
      if (v8)
      {
        goto LABEL_9;
      }

      if (LODWORD(__b[0]) != *(v11 + 8))
      {
        v8 = -20096;
        goto LABEL_9;
      }
    }

    v8 = ecjpake_kkp_read(*v11, v11 + 8, *(v11 + 204), v4, (v11 + 400), ecjpake_id[1 - *(v11 + 200)], &v7, v6);
    if (!v8 && v7 != v6)
    {
      v8 = -20352;
    }
  }

LABEL_9:
  mbedtls_ecp_group_free(__b);
  mbedtls_ecp_point_free(v4);
  return v8;
}

uint64_t ecjpake_ecp_add3(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = -110;
  v6[0] = 0;
  v6[1] = 0;
  mbedtls_mpi_init(v6);
  v7 = mbedtls_mpi_lset(v6, 1uLL);
  if (!v7)
  {
    v7 = mbedtls_ecp_muladd(v12, v11, v6, v10, v6, v9);
    if (!v7)
    {
      v7 = mbedtls_ecp_muladd(v12, v11, v6, v11, v6, v8);
    }
  }

  mbedtls_mpi_free(v6);
  return v7;
}

uint64_t ecjpake_kkp_read(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, char *a6, uint64_t *a7, unint64_t a8)
{
  if (a8 >= *a7)
  {
    point = mbedtls_ecp_tls_read_point(a2, a5, a7, a8 - *a7);
    if (!point)
    {
      if (mbedtls_ecp_is_zero(a5))
      {
        return -19584;
      }

      else
      {
        return ecjpake_zkp_read(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    return point;
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecjpake_write_round_two(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = -110;
  memset(__b, 0, sizeof(__b));
  memset(v11, 0, sizeof(v11));
  v10[0] = 0;
  v10[1] = 0;
  v9 = v18;
  v8 = &v18[v17];
  v7 = 0;
  mbedtls_ecp_point_init(__b);
  mbedtls_ecp_point_init(v11);
  mbedtls_mpi_init(v10);
  v13 = ecjpake_ecp_add3(v19 + 8, __b, (v19 + 304), (v19 + 352), (v19 + 208));
  if (!v13)
  {
    v13 = ecjpake_mul_secret(v10, 1, (v19 + 464), v19 + 480, (v19 + 112), v15, v14);
    if (!v13)
    {
      v13 = mbedtls_ecp_mul(v19 + 8, v11, v10, __b, v15, v14);
      if (!v13)
      {
        if (*(v19 + 200) == 1)
        {
          if (v8 < v9)
          {
            v13 = -20224;
            goto LABEL_14;
          }

          v13 = mbedtls_ecp_tls_write_group((v19 + 8), &v7, v9, v8 - v9);
          if (v13)
          {
            goto LABEL_14;
          }

          v9 += v7;
        }

        if (v8 >= v9)
        {
          v13 = mbedtls_ecp_tls_write_point(v19 + 8, v11, *(v19 + 204), &v7, v9, v8 - v9);
          if (!v13)
          {
            v9 += v7;
            v13 = ecjpake_zkp_write(*v19, v19 + 8, *(v19 + 204), __b, v10, v11, ecjpake_id[*(v19 + 200)], &v9, v8, v15, v14);
            if (!v13)
            {
              *v16 = v9 - v18;
            }
          }
        }

        else
        {
          v13 = -20224;
        }
      }
    }
  }

LABEL_14:
  mbedtls_ecp_point_free(__b);
  mbedtls_ecp_point_free(v11);
  mbedtls_mpi_free(v10);
  return v13;
}

uint64_t ecjpake_mul_secret(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, unint64_t, unint64_t), uint64_t a7)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = a7;
  v9 = -110;
  v8[0] = 0;
  v8[1] = 0;
  mbedtls_mpi_init(v8);
  v9 = mbedtls_mpi_fill_random(v8, 0x10uLL, v11, v10);
  if (!v9)
  {
    v9 = mbedtls_mpi_mul_mpi(v8, v8, v12);
    if (!v9)
    {
      v9 = mbedtls_mpi_add_mpi(v8, v8, v13);
      if (!v9)
      {
        v9 = mbedtls_mpi_mul_mpi(v16, v14, v8);
        if (!v9)
        {
          *(v16 + 4) *= v15;
          v9 = mbedtls_mpi_mod_mpi(v16, v16, v12);
        }
      }
    }
  }

  mbedtls_mpi_free(v8);
  return v9;
}

uint64_t ecjpake_zkp_write(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t a6, char *a7, unint64_t *a8, unint64_t a9, uint64_t (*a10)(uint64_t, unint64_t, unint64_t), uint64_t a11)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v21 = a9;
  v20 = a10;
  v19 = a11;
  v18 = -110;
  memset(__b, 0, sizeof(__b));
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14 = 0;
  if (a9 >= *v22)
  {
    mbedtls_ecp_point_init(__b);
    mbedtls_mpi_init(v16);
    mbedtls_mpi_init(v15);
    v18 = mbedtls_ecp_gen_keypair_base(v28, v26, v16, __b, v20, v19);
    if (!v18)
    {
      v18 = ecjpake_hash(v29, v28, v27, v26, __b, v24, v23, v15);
      if (!v18)
      {
        v18 = mbedtls_mpi_mul_mpi(v15, v15, v25);
        if (!v18)
        {
          v18 = mbedtls_mpi_sub_mpi(v15, v16, v15);
          if (!v18)
          {
            v18 = mbedtls_mpi_mod_mpi(v15, v15, (v28 + 104));
            if (!v18)
            {
              v18 = mbedtls_ecp_tls_write_point(v28, __b, v27, &v14, *v22, v21 - *v22);
              if (!v18)
              {
                *v22 += v14;
                v14 = mbedtls_mpi_size(v15);
                if (v21 >= *v22 && v21 - *v22 >= v14 + 1 && v14 <= 0xFF)
                {
                  v11 = v14;
                  v12 = (*v22)++;
                  *v12 = v11;
                  v18 = mbedtls_mpi_write_binary(v15, *v22, v14);
                  if (!v18)
                  {
                    *v22 += v14;
                  }
                }

                else
                {
                  v18 = -20224;
                }
              }
            }
          }
        }
      }
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_mpi_free(v16);
    mbedtls_mpi_free(v15);
    return v18;
  }

  else
  {
    return -20224;
  }
}

uint64_t mbedtls_ecjpake_derive_secret(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = -110;
  memset(__b, 0, sizeof(__b));
  size_from_type = mbedtls_md_get_size_from_type(*v16);
  *v13 = size_from_type;
  if (v14 >= *v13)
  {
    mbedtls_ecp_point_init(__b);
    v10 = mbedtls_ecjpake_derive_k(v16, __b, v12, v11);
    if (!v10)
    {
      v8 = (v16[16] + 7) / 8uLL;
      v10 = mbedtls_mpi_write_binary(__b, v18, v8);
      if (!v10)
      {
        v10 = mbedtls_ecjpake_compute_hash(*v16, v18, v8, v15);
      }
    }

    mbedtls_ecp_point_free(__b);
    return v10;
  }

  else
  {
    return -20224;
  }
}

uint64_t mbedtls_ecjpake_derive_k(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = -110;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v6);
  mbedtls_mpi_init(v5);
  v7 = mbedtls_mpi_lset(v5, 1uLL);
  if (!v7)
  {
    v7 = ecjpake_mul_secret(v6, -1, v11 + 58, (v11 + 60), v11 + 14, v9, v8);
    if (!v7)
    {
      v7 = mbedtls_ecp_muladd((v11 + 1), v10, v5, v11 + 50, v6, v11 + 44);
      if (!v7)
      {
        v7 = mbedtls_ecp_mul((v11 + 1), v10, v11 + 58, v10, v9, v8);
      }
    }
  }

  mbedtls_mpi_free(v6);
  mbedtls_mpi_free(v5);
  return v7;
}

uint64_t mbedtls_ecjpake_write_shared_key(uint64_t *a1, _BYTE *a2, unint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = -110;
  memset(__b, 0, sizeof(__b));
  mbedtls_ecp_point_init(__b);
  v8 = mbedtls_ecjpake_derive_k(v14, __b, v10, v9);
  if (!v8)
  {
    v8 = mbedtls_ecp_point_write_binary((v14 + 1), __b, *(v14 + 51), v11, v13, v12);
  }

  mbedtls_ecp_point_free(__b);
  return v8;
}

uint64_t ecjpake_kkp_write(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7, unint64_t *a8, unint64_t a9, uint64_t (*a10)(uint64_t, unint64_t, unint64_t), uint64_t a11)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = a8;
  v16 = a9;
  v15 = a10;
  v14 = a11;
  v13 = -110;
  v12 = 0;
  if (a9 >= *a8)
  {
    v13 = mbedtls_ecp_gen_keypair_base(v23, v21, v20, v19, v15, v14);
    if (!v13)
    {
      v13 = mbedtls_ecp_tls_write_point(v23, v19, v22, &v12, *v17, v16 - *v17);
      if (!v13)
      {
        *v17 += v12;
        return ecjpake_zkp_write(v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14);
      }
    }

    return v13;
  }

  else
  {
    return -20224;
  }
}

uint64_t ecjpake_zkp_read(int a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5, char *a6, uint64_t *a7, unint64_t a8)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = a8;
  point = -110;
  memset(__b, 0, sizeof(__b));
  memset(v15, 0, sizeof(v15));
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  mbedtls_ecp_point_init(__b);
  mbedtls_ecp_point_init(v15);
  mbedtls_mpi_init(v14);
  mbedtls_mpi_init(v13);
  if (v18 >= *v19)
  {
    point = mbedtls_ecp_tls_read_point(v24, __b, v19, v18 - *v19);
    if (!point)
    {
      if (v18 > *v19)
      {
        v8 = (*v19)++;
        v12 = *v8;
        if (v18 >= *v19 && (v9 = *v8, v18 - *v19 >= v12) && (v10 = *v8, v12))
        {
          point = mbedtls_mpi_read_binary(v14, *v19, v12);
          if (!point)
          {
            *v19 += v12;
            point = ecjpake_hash(v25, v24, v23, v22, __b, v21, v20, v13);
            if (!point)
            {
              point = mbedtls_ecp_muladd(v24, v15, v13, v21, v14, v22);
              if (!point)
              {
                if (mbedtls_ecp_point_cmp(v15, __b))
                {
                  point = -19968;
                }
              }
            }
          }
        }

        else
        {
          point = -20352;
        }
      }

      else
      {
        point = -20352;
      }
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_ecp_point_free(v15);
    mbedtls_mpi_free(v14);
    mbedtls_mpi_free(v13);
    return point;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecjpake_hash(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t *a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  __s = a7;
  v14 = a8;
  binary = -110;
  v12 = v26;
  v11 = strlen(a7);
  binary = ecjpake_write_len_point(&v12, &v27, v20, v19, v18);
  if (binary)
  {
    return binary;
  }

  binary = ecjpake_write_len_point(&v12, &v27, v20, v19, v17);
  if (binary)
  {
    return binary;
  }

  binary = ecjpake_write_len_point(&v12, &v27, v20, v19, v16);
  if (binary)
  {
    return binary;
  }

  if (&v27 - v12 >= 4)
  {
    v24 = v12;
    v23 = bswap32(v11);
    __memcpy_chk();
    v12 = (v12 + 4);
    if (&v27 < v12 || &v27 - v12 < v11)
    {
      return -20224;
    }

    __memcpy_chk();
    v12 = (v12 + v11);
    binary = mbedtls_ecjpake_compute_hash(v21, v26, v12 - v26, v25);
    if (!binary)
    {
      v10 = v14;
      size_from_type = mbedtls_md_get_size_from_type(v21);
      binary = mbedtls_mpi_read_binary(v10, v25, size_from_type);
      if (!binary)
      {
        return mbedtls_mpi_mod_mpi(v14, v14, (v20 + 104));
      }
    }

    return binary;
  }

  return -20224;
}

uint64_t ecjpake_write_len_point(unint64_t *a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = -110;
  v7 = 0;
  if (a2 < *a1 || (v12 - *v13) < 5)
  {
    return -20224;
  }

  else
  {
    v5 = mbedtls_ecp_point_write_binary(v11, v9, v10, &v7, (*v13 + 4), v12 - (*v13 + 4));
    v8 = v5;
    if (v5)
    {
      return v8;
    }

    else
    {
      v16 = *v13;
      v15 = bswap32(v7);
      __memcpy_chk();
      *v13 += v7 + 4;
      return 0;
    }
  }
}

_DWORD *mbedtls_ecp_grp_id_list()
{
  if (!mbedtls_ecp_grp_id_list_init_done)
  {
    v3 = 0;
    for (i = mbedtls_ecp_curve_list(); *i; i += 4)
    {
      v0 = v3++;
      ecp_supported_grp_id[v0] = *i;
    }

    ecp_supported_grp_id[v3] = 0;
    mbedtls_ecp_grp_id_list_init_done = 1;
  }

  return ecp_supported_grp_id;
}

_DWORD *mbedtls_ecp_curve_info_from_grp_id(int a1)
{
  for (i = mbedtls_ecp_curve_list(); *i; i += 4)
  {
    if (*i == a1)
    {
      return i;
    }
  }

  return 0;
}

_DWORD *mbedtls_ecp_curve_info_from_tls_id(unsigned __int16 a1)
{
  for (i = mbedtls_ecp_curve_list(); *i; i += 4)
  {
    if (*(i + 2) == a1)
    {
      return i;
    }
  }

  return 0;
}

const char **mbedtls_ecp_curve_info_from_name(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = mbedtls_ecp_curve_list(); *i; i += 2)
  {
    if (!strcmp(i[1], a1))
    {
      return i;
    }
  }

  return 0;
}

uint64_t mbedtls_ecp_get_type(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 72))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ecp_point_init(uint64_t a1)
{
  mbedtls_mpi_init(a1);
  mbedtls_mpi_init(a1 + 16);
  return mbedtls_mpi_init(a1 + 32);
}

uint64_t mbedtls_ecp_group_init(uint64_t a1)
{
  *a1 = 0;
  mbedtls_mpi_init(a1 + 8);
  mbedtls_mpi_init(a1 + 24);
  mbedtls_mpi_init(a1 + 40);
  mbedtls_ecp_point_init(a1 + 56);
  result = mbedtls_mpi_init(a1 + 104);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

uint64_t mbedtls_ecp_keypair_init(uint64_t a1)
{
  mbedtls_ecp_group_init(a1);
  mbedtls_mpi_init(a1 + 192);
  return mbedtls_ecp_point_init(a1 + 208);
}

void mbedtls_ecp_point_free(uint64_t a1)
{
  if (a1)
  {
    mbedtls_mpi_free(a1);
    mbedtls_mpi_free(a1 + 16);
    mbedtls_mpi_free(a1 + 32);
  }
}

void *mbedtls_ecp_group_free(void *result)
{
  v3 = result;
  if (result)
  {
    if (*(result + 34) != 1)
    {
      mbedtls_mpi_free((result + 3));
      mbedtls_mpi_free((v3 + 5));
      mbedtls_ecp_point_free((v3 + 7));
      mbedtls_mpi_free((v3 + 13));
      mbedtls_mpi_free((v3 + 1));
    }

    if (!mbedtls_aes_rk_offset() && v3[22])
    {
      for (i = 0; i < v3[23]; ++i)
      {
        mbedtls_ecp_point_free(v3[22] + 48 * i);
      }

      v1 = v3[22];
      mbedtls_free();
    }

    return mbedtls_platform_zeroize(v3, 0xC0uLL);
  }

  return result;
}

void mbedtls_ecp_keypair_free(void *a1)
{
  if (a1)
  {
    mbedtls_ecp_group_free(a1);
    mbedtls_mpi_free((a1 + 24));
    mbedtls_ecp_point_free((a1 + 26));
  }
}

uint64_t mbedtls_ecp_copy(uint64_t a1, uint64_t *a2)
{
  v3 = mbedtls_mpi_copy(a1, a2);
  if (!v3)
  {
    v3 = mbedtls_mpi_copy(a1 + 16, a2 + 2);
    if (!v3)
    {
      return mbedtls_mpi_copy(a1 + 32, a2 + 4);
    }
  }

  return v3;
}

uint64_t mbedtls_ecp_set_zero(uint64_t a1)
{
  v2 = mbedtls_mpi_lset(a1, 1uLL);
  if (!v2)
  {
    v2 = mbedtls_mpi_lset(a1 + 16, 1uLL);
    if (!v2)
    {
      return mbedtls_mpi_lset(a1 + 32, 0);
    }
  }

  return v2;
}

uint64_t mbedtls_ecp_point_cmp(uint64_t a1, uint64_t a2)
{
  if (mbedtls_mpi_cmp_mpi(a1, a2) || mbedtls_mpi_cmp_mpi(a1 + 16, a2 + 16) || mbedtls_mpi_cmp_mpi(a1 + 32, a2 + 32))
  {
    return -20352;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ecp_point_read_string(uint64_t a1, int a2, const char *a3, const char *a4)
{
  string = mbedtls_mpi_read_string(a1, a2, a3);
  if (!string)
  {
    string = mbedtls_mpi_read_string(a1 + 16, a2, a4);
    if (!string)
    {
      return mbedtls_mpi_lset(a1 + 32, 1uLL);
    }
  }

  return string;
}

uint64_t mbedtls_ecp_point_write_binary(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4, _BYTE *a5, unint64_t a6)
{
  v8 = -20096;
  if (a3 >= 2)
  {
    return -20352;
  }

  v7 = mbedtls_mpi_size(a1 + 8);
  if (mbedtls_ecp_get_type(a1) != 1)
  {
    return v8;
  }

  if (mbedtls_mpi_cmp_int(a2 + 32, 0))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a4 = v7 + 1;
        if (a6 < *a4)
        {
          return -20224;
        }

        *a5 = mbedtls_mpi_get_bit(a2 + 16, 0) + 2;
        return mbedtls_mpi_write_binary(a2, (a5 + 1), v7);
      }
    }

    else
    {
      *a4 = 2 * v7 + 1;
      if (a6 < *a4)
      {
        return -20224;
      }

      *a5 = 4;
      v8 = mbedtls_mpi_write_binary(a2, (a5 + 1), v7);
      if (!v8)
      {
        return mbedtls_mpi_write_binary(a2 + 16, &a5[v7 + 1], v7);
      }
    }

    return v8;
  }

  if (a6)
  {
    *a5 = 0;
    *a4 = 1;
    return 0;
  }

  else
  {
    return -20224;
  }
}

uint64_t mbedtls_ecp_point_read_binary(uint64_t a1, uint64_t *a2, _BYTE *a3, unint64_t a4)
{
  binary = -20096;
  if (!a4)
  {
    return -20352;
  }

  v5 = mbedtls_mpi_size(a1 + 8);
  if (mbedtls_ecp_get_type(a1) != 1)
  {
    return binary;
  }

  if (!*a3)
  {
    if (a4 == 1)
    {
      return mbedtls_ecp_set_zero(a2);
    }

    else
    {
      return -20352;
    }
  }

  if (a4 < v5 + 1)
  {
    return -20352;
  }

  binary = mbedtls_mpi_read_binary(a2, (a3 + 1), v5);
  if (binary || (binary = mbedtls_mpi_lset((a2 + 4), 1uLL)) != 0)
  {
    return binary;
  }

  if (*a3 == 4)
  {
    if (a4 == 2 * v5 + 1)
    {
      return mbedtls_mpi_read_binary((a2 + 2), &a3[v5 + 1], v5);
    }

    else
    {
      return -20352;
    }
  }

  else if (*a3 == 2 || *a3 == 3)
  {
    if (a4 == v5 + 1)
    {
      return mbedtls_ecp_sw_derive_y(a1, a2, a2 + 2, *a3 & 1);
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_sw_derive_y(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  if (mbedtls_mpi_get_bit(a1 + 8, 0) == 1 && mbedtls_mpi_get_bit(v11 + 8, 1uLL) == 1)
  {
    v7 = 0;
    v6[0] = 0;
    v6[1] = 0;
    mbedtls_mpi_init(v6);
    v7 = ecp_sw_rhs(v11, v9, v10);
    if (!v7)
    {
      v7 = mbedtls_mpi_add_int(v6, v11 + 8, 1);
      if (!v7)
      {
        v7 = mbedtls_mpi_shift_r(v6, 2uLL);
        if (!v7)
        {
          v7 = mbedtls_mpi_exp_mod(v9, v9, v6, (v11 + 8), 0);
          if (!v7)
          {
            bit = mbedtls_mpi_get_bit(v9, 0);
            if (bit != v8)
            {
              v7 = mbedtls_mpi_sub_mpi(v9, v11 + 8, v9);
            }
          }
        }
      }
    }

    mbedtls_mpi_free(v6);
    return v7;
  }

  else
  {
    return -20096;
  }
}

uint64_t mbedtls_ecp_tls_read_point(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (*a3)++;
    v7 = *v4;
    if (*v4 && v7 <= a4 - 1)
    {
      v6 = *a3;
      *a3 += v7;
      return mbedtls_ecp_point_read_binary(a1, a2, v6, v7);
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_tls_write_point(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4, _BYTE *a5, uint64_t a6)
{
  if (a3 < 2)
  {
    if (a6)
    {
      v7 = mbedtls_ecp_point_write_binary(a1, a2, a3, a4, a5 + 1, a6 - 1);
      if (v7)
      {
        return v7;
      }

      else
      {
        *a5 = (*a4)++;
        return 0;
      }
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_tls_read_group(void *a1, _WORD **a2, unint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = -110;
  v4 = 0;
  v5 = mbedtls_ecp_tls_read_group_id(&v4, a2, a3);
  if (v5)
  {
    return v5;
  }

  else
  {
    return mbedtls_ecp_group_load(v8, v4);
  }
}

uint64_t mbedtls_ecp_tls_read_group_id(_DWORD *a1, _WORD **a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    v3 = *a2;
    *a2 = (*a2 + 1);
    if (*v3 == 3)
    {
      v8 = *(*a2)++;
      v5 = mbedtls_ecp_curve_info_from_tls_id(bswap32(v8) >> 16);
      if (v5)
      {
        *a1 = *v5;
        return 0;
      }

      else
      {
        return -20096;
      }
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_tls_write_group(int *a1, unint64_t *a2, _BYTE *a3, unint64_t a4)
{
  v5 = mbedtls_ecp_curve_info_from_grp_id(*a1);
  if (v5)
  {
    *a2 = 3;
    if (a4 >= *a2)
    {
      *a3 = 3;
      v10 = bswap32(*(v5 + 2)) >> 16;
      __memcpy_chk();
      return 0;
    }

    else
    {
      return -20224;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_mul_restartable(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    return ecp_mul_restartable_internal(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_mul_restartable_internal(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  v8 = mbedtls_ecp_check_privkey(a1, a3);
  if (!v8)
  {
    v8 = mbedtls_ecp_check_pubkey(a1, a4);
    if (!v8)
    {
      v8 = -20352;
      if (mbedtls_ecp_get_type(a1) == 1)
      {
        return ecp_mul_comb(a1, a2, a3, a4, a5, a6, a7);
      }
    }
  }

  return v8;
}

uint64_t mbedtls_ecp_muladd_restartable(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  v10 = -110;
  memset(__b, 0, sizeof(__b));
  v8 = v16;
  if (mbedtls_ecp_get_type(v17) == 1)
  {
    mbedtls_ecp_point_init(__b);
    mpi_init_many(v19, 4);
    v10 = mbedtls_ecp_mul_shortcuts(v17, __b, v15, v14, v11);
    if (!v10)
    {
      v10 = mbedtls_ecp_mul_shortcuts(v17, v8, v13, v12, v11);
      if (!v10)
      {
        v10 = ecp_add_mixed(v17, v8, __b, v8, v19);
        if (!v10)
        {
          v10 = ecp_normalize_jac(v17, v8);
        }
      }
    }

    mpi_free_many(v19, 4);
    mbedtls_ecp_point_free(__b);
    return v10;
  }

  else
  {
    return -20096;
  }
}

uint64_t mpi_init_many(uint64_t result, uint64_t a2)
{
  for (i = result; a2--; i += 16)
  {
    v3 = i;
    result = mbedtls_mpi_init(v3);
  }

  return result;
}

uint64_t mbedtls_ecp_mul_shortcuts(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = -110;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v7);
  if (mbedtls_mpi_cmp_int(v11, 0))
  {
    if (mbedtls_mpi_cmp_int(v11, 1))
    {
      if (mbedtls_mpi_cmp_int(v11, -1))
      {
        v8 = ecp_mul_restartable_internal(v13, v12, v11, v10, 0, 0, v9);
      }

      else
      {
        v8 = mbedtls_ecp_check_pubkey(v13, v10);
        if (!v8)
        {
          v8 = mbedtls_ecp_copy(v12, v10);
          if (!v8)
          {
            v6 = mbedtls_mpi_cmp_int((v12 + 2), 0) != 0;
            v8 = mbedtls_mpi_sub_mpi(v7, v13 + 8, (v12 + 2));
            if (!v8)
            {
              v8 = mbedtls_mpi_safe_cond_assign((v12 + 2), v7, v6);
            }
          }
        }
      }
    }

    else
    {
      v8 = mbedtls_ecp_check_pubkey(v13, v10);
      if (!v8)
      {
        v8 = mbedtls_ecp_copy(v12, v10);
      }
    }
  }

  else
  {
    v8 = mbedtls_ecp_check_pubkey(v13, v10);
    if (!v8)
    {
      v8 = mbedtls_ecp_set_zero(v12);
    }
  }

  mbedtls_mpi_free(v7);
  return v8;
}

uint64_t ecp_add_mixed(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = (a2 + 2);
  v6 = a2 + 4;
  if (a4[4])
  {
    if (mbedtls_mpi_cmp_int((a3 + 4), 0))
    {
      if (mbedtls_mpi_cmp_int((a4 + 4), 0))
      {
        if (mbedtls_mpi_cmp_int((a4 + 4), 1))
        {
          return -20352;
        }

        else
        {
          v9 = mbedtls_mpi_mul_mod(a1, a5, a3 + 4, a3 + 4);
          if (!v9)
          {
            v9 = mbedtls_mpi_mul_mod(a1, a5 + 2, a5, a3 + 4);
            if (!v9)
            {
              v9 = mbedtls_mpi_mul_mod(a1, a5, a5, a4);
              if (!v9)
              {
                v9 = mbedtls_mpi_mul_mod(a1, a5 + 2, a5 + 2, a4 + 2);
                if (!v9)
                {
                  v9 = mbedtls_mpi_sub_mod(a1, a5, a5, a3);
                  if (!v9)
                  {
                    v9 = mbedtls_mpi_sub_mod(a1, (a5 + 2), (a5 + 2), (a3 + 2));
                    if (!v9)
                    {
                      if (mbedtls_mpi_cmp_int(a5, 0))
                      {
                        v9 = mbedtls_mpi_mul_mod(a1, v6, a3 + 4, a5);
                        if (!v9)
                        {
                          v9 = mbedtls_mpi_mul_mod(a1, a5 + 4, a5, a5);
                          if (!v9)
                          {
                            v9 = mbedtls_mpi_mul_mod(a1, a5 + 6, a5 + 4, a5);
                            if (!v9)
                            {
                              v9 = mbedtls_mpi_mul_mod(a1, a5 + 4, a5 + 4, a3);
                              if (!v9)
                              {
                                v9 = mbedtls_mpi_copy(a5, a5 + 4);
                                if (!v9)
                                {
                                  v9 = mbedtls_mpi_shift_l_mod(a1, a5, 1);
                                  if (!v9)
                                  {
                                    v9 = mbedtls_mpi_mul_mod(a1, a2, a5 + 2, a5 + 2);
                                    if (!v9)
                                    {
                                      v9 = mbedtls_mpi_sub_mod(a1, a2, a2, a5);
                                      if (!v9)
                                      {
                                        v9 = mbedtls_mpi_sub_mod(a1, a2, a2, (a5 + 6));
                                        if (!v9)
                                        {
                                          v9 = mbedtls_mpi_sub_mod(a1, (a5 + 4), (a5 + 4), a2);
                                          if (!v9)
                                          {
                                            v9 = mbedtls_mpi_mul_mod(a1, a5 + 4, a5 + 4, a5 + 2);
                                            if (!v9)
                                            {
                                              v9 = mbedtls_mpi_mul_mod(a1, a5 + 6, a5 + 6, a3 + 2);
                                              if (!v9)
                                              {
                                                return mbedtls_mpi_sub_mod(a1, v7, (a5 + 4), (a5 + 6));
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

                      else if (mbedtls_mpi_cmp_int((a5 + 2), 0))
                      {
                        return mbedtls_ecp_set_zero(a2);
                      }

                      else
                      {
                        return ecp_double_jac(a1, a2, a3, a5);
                      }
                    }
                  }
                }
              }
            }
          }

          return v9;
        }
      }

      else
      {
        return mbedtls_ecp_copy(a2, a3);
      }
    }

    else
    {
      return mbedtls_ecp_copy(a2, a4);
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_normalize_jac(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v5 = a2;
  if (mbedtls_mpi_cmp_int((a2 + 4), 0))
  {
    v4 = -110;
    v3[0] = 0;
    v3[1] = 0;
    mbedtls_mpi_init(v3);
    v4 = mbedtls_mpi_inv_mod(v3, v5 + 4, (v6 + 8));
    if (!v4)
    {
      v4 = mbedtls_mpi_mul_mod(v6, v5 + 2, v5 + 2, v3);
      if (!v4)
      {
        v4 = mbedtls_mpi_mul_mod(v6, v3, v3, v3);
        if (!v4)
        {
          v4 = mbedtls_mpi_mul_mod(v6, v5, v5, v3);
          if (!v4)
          {
            v4 = mbedtls_mpi_mul_mod(v6, v5 + 2, v5 + 2, v3);
            if (!v4)
            {
              v4 = mbedtls_mpi_lset((v5 + 4), 1uLL);
            }
          }
        }
      }
    }

    mbedtls_mpi_free(v3);
    return v4;
  }

  else
  {
    return 0;
  }
}

void mpi_free_many(uint64_t a1, uint64_t a2)
{
  while (a2--)
  {
    v3 = a1;
    a1 += 16;
    mbedtls_mpi_free(v3);
  }
}

uint64_t mbedtls_ecp_check_pubkey(uint64_t a1, uint64_t *a2)
{
  if (mbedtls_mpi_cmp_int((a2 + 4), 1))
  {
    return -19584;
  }

  else if (mbedtls_ecp_get_type(a1) == 1)
  {
    return ecp_check_pubkey_sw(a1, a2);
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_check_pubkey_sw(uint64_t a1, uint64_t *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = -110;
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  if ((mbedtls_mpi_cmp_int(a2, 0) & 0x80000000) == 0 && (mbedtls_mpi_cmp_int((v6 + 2), 0) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v6, v7 + 8) & 0x80000000) != 0 && (mbedtls_mpi_cmp_mpi((v6 + 2), v7 + 8) & 0x80000000) != 0)
  {
    mbedtls_mpi_init(v4);
    mbedtls_mpi_init(v3);
    v5 = mbedtls_mpi_mul_mod(v7, v4, v6 + 2, v6 + 2);
    if (!v5)
    {
      v5 = ecp_sw_rhs(v7, v3, v6);
      if (!v5)
      {
        if (mbedtls_mpi_cmp_mpi(v4, v3))
        {
          v5 = -19584;
        }
      }
    }

    mbedtls_mpi_free(v4);
    mbedtls_mpi_free(v3);
    return v5;
  }

  else
  {
    return -19584;
  }
}

uint64_t mbedtls_ecp_check_privkey(uint64_t a1, uint64_t a2)
{
  if (mbedtls_ecp_get_type(a1) == 1)
  {
    if ((mbedtls_mpi_cmp_int(a2, 1) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(a2, a1 + 104) & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return -19584;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_gen_privkey(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  if (mbedtls_ecp_get_type(a1) == 1)
  {
    return mbedtls_ecp_gen_privkey_sw(a1 + 104, a2, a3, a4);
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_gen_privkey_sw(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_mpi_random(a2, 1, a1, a3, a4);
  if (v5 == -14)
  {
    return -19712;
  }

  else
  {
    return v5;
  }
}

uint64_t mbedtls_ecp_gen_keypair_base(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6)
{
  v7 = mbedtls_ecp_gen_privkey(a1, a3, a5, a6);
  if (!v7)
  {
    return mbedtls_ecp_mul(a1, a4, a3, a2, a5, a6);
  }

  return v7;
}

uint64_t mbedtls_ecp_gen_key(int a1, void *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_ecp_group_load(a2, a1);
  if (v5)
  {
    return v5;
  }

  else
  {
    return mbedtls_ecp_gen_keypair(a2, a2 + 24, a2 + 26, a3, a4);
  }
}

uint64_t mbedtls_ecp_set_public_key(int a1, void *a2, uint64_t *a3)
{
  if (*a2)
  {
    if (*a2 != a1)
    {
      return -20352;
    }

    return mbedtls_ecp_copy((a2 + 26), a3);
  }

  v4 = mbedtls_ecp_group_load(a2, a1);
  if (!v4)
  {
    return mbedtls_ecp_copy((a2 + 26), a3);
  }

  return v4;
}

uint64_t mbedtls_ecp_read_key(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = mbedtls_ecp_group_load(a2, a1);
  if (v5)
  {
    return v5;
  }

  else
  {
    binary = -20096;
    if ((mbedtls_ecp_get_type(a2) != 1 || (binary = mbedtls_mpi_read_binary((a2 + 24), a3, a4)) == 0) && !binary)
    {
      binary = mbedtls_ecp_check_privkey(a2, (a2 + 24));
    }

    if (binary)
    {
      mbedtls_mpi_free((a2 + 24));
    }

    return binary;
  }
}

uint64_t mbedtls_ecp_write_key(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = -110;
  if (mbedtls_ecp_get_type(a1) == 1)
  {
    return mbedtls_mpi_write_binary(a1 + 192, a2, a3);
  }

  return v4;
}

uint64_t mbedtls_ecp_write_key_ext(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  v5 = (*(a1 + 128) + 7) / 8uLL;
  if (v5 <= a4)
  {
    *a2 = v5;
    if (*(a1 + 202))
    {
      if (mbedtls_ecp_get_type(a1) == 1)
      {
        return mbedtls_mpi_write_binary(a1 + 192, a3, v5);
      }

      else
      {
        return -110;
      }
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    *a2 = 0;
    return -20224;
  }
}

uint64_t mbedtls_ecp_check_pub_priv(_DWORD *a1, int *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = -110;
  memset(__b, 0, sizeof(__b));
  memset(v5, 0, sizeof(v5));
  if (!*v11 || *v11 != *v10 || mbedtls_mpi_cmp_mpi((v11 + 52), (v10 + 52)) || mbedtls_mpi_cmp_mpi((v11 + 56), (v10 + 56)) || mbedtls_mpi_cmp_mpi((v11 + 60), (v10 + 60)))
  {
    return -20352;
  }

  else
  {
    mbedtls_ecp_point_init(__b);
    mbedtls_ecp_group_init(v5);
    mbedtls_ecp_group_copy(v5, v10);
    v7 = mbedtls_ecp_mul(v5, __b, v10 + 24, v10 + 7, v9, v8);
    if (!v7 && (mbedtls_mpi_cmp_mpi(__b, (v10 + 52)) || mbedtls_mpi_cmp_mpi(&__b[2], (v10 + 56)) || mbedtls_mpi_cmp_mpi(&__b[4], (v10 + 60))))
    {
      v7 = -20352;
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_ecp_group_free(v5);
    return v7;
  }
}

uint64_t mbedtls_ecp_export(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (v5 = mbedtls_ecp_group_copy(a2, a1)) != 0)
  {
    return v5;
  }

  else if (a3 && (v6 = mbedtls_mpi_copy(a3, (a1 + 192))) != 0)
  {
    return v6;
  }

  else if (a4 && (v7 = mbedtls_ecp_copy(a4, (a1 + 208))) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ecp_sw_rhs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = mbedtls_mpi_mul_mod(a1, a2, a3, a3);
  if (!v4)
  {
    if (mbedtls_ecp_group_a_is_minus_3(a1))
    {
      v4 = mbedtls_mpi_sub_int_mod(a1, a2, a2, 3);
      if (v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = mbedtls_mpi_add_mod(a1, a2, a2, a1 + 24);
      if (v4)
      {
        return v4;
      }
    }

    v4 = mbedtls_mpi_mul_mod(a1, a2, a2, a3);
    if (!v4)
    {
      return mbedtls_mpi_add_mod(a1, a2, a2, a1 + 40);
    }
  }

  return v4;
}

uint64_t mbedtls_mpi_mul_mod(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = mbedtls_mpi_mul_mpi(a2, a3, a4);
  if (!v5)
  {
    return ecp_modp(a2, a1);
  }

  return v5;
}

uint64_t mbedtls_mpi_sub_int_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_sub_int(a2, a3, a4); !i; i = mbedtls_mpi_add_mpi(a2, a2, a1 + 8))
  {
    v5 = 0;
    if (*(a2 + 8) < 0)
    {
      v5 = mbedtls_mpi_cmp_int(a2, 0) != 0;
    }

    if (!v5)
    {
      break;
    }
  }

  return i;
}

uint64_t mbedtls_mpi_add_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_add_mpi(a2, a3, a4); !i; i = mbedtls_mpi_sub_abs(a2, a2, a1 + 8))
  {
    if ((mbedtls_mpi_cmp_mpi(a2, a1 + 8) & 0x80000000) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t ecp_modp(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144))
  {
    if (*(a1 + 8) < 0 && mbedtls_mpi_cmp_int(a1, 0) || mbedtls_mpi_bitlen(a1) > 2 * *(a2 + 120))
    {
      return -20352;
    }

    else
    {
      v4 = (*(a2 + 144))(a1);
      if (!v4)
      {
        while (1)
        {
          v3 = 0;
          if (*(a1 + 8) < 0)
          {
            v3 = mbedtls_mpi_cmp_int(a1, 0) != 0;
          }

          if (!v3)
          {
            break;
          }

          v4 = mbedtls_mpi_add_mpi(a1, a1, a2 + 8);
          if (v4)
          {
            return v4;
          }
        }

        do
        {
          if ((mbedtls_mpi_cmp_mpi(a1, a2 + 8) & 0x80000000) != 0)
          {
            break;
          }

          v4 = mbedtls_mpi_sub_abs(a1, a1, a2 + 8);
        }

        while (!v4);
      }

      return v4;
    }
  }

  else
  {
    return mbedtls_mpi_mod_mpi(a1, a1, (a2 + 8));
  }
}

uint64_t ecp_mul_comb(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  v13 = ecp_pick_window_size(a1, 0);
  v9 = 1 << (v13 - 1);
  v10 = (*(a1 + 128) + v13 - 1) / v13;
  v8 = mbedtls_calloc();
  if (v8)
  {
    for (i = 0; i < v9; ++i)
    {
      mbedtls_ecp_point_init(v8 + 48 * i);
    }

    v14 = ecp_precompute_comb(a1, v8, a4, v13, v10);
    if (!v14)
    {
      v14 = ecp_mul_comb_after_precomp(a1, a2, a3, v8, v9, v13, v10, a5, a6, a7);
    }
  }

  else
  {
    v14 = -19840;
  }

  if (v8 == *(a1 + 176))
  {
    v8 = 0;
  }

  if (v8)
  {
    for (j = 0; j < v9; ++j)
    {
      mbedtls_ecp_point_free(v8 + 48 * j);
    }

    mbedtls_free();
  }

  if (v14)
  {
    mbedtls_ecp_point_free(a2);
  }

  return v14;
}

uint64_t ecp_pick_window_size(uint64_t a1, char a2)
{
  if (*(a1 + 128) < 0x180uLL)
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  v4 = v2;
  if (!a2 || (v4 = v2 + 1, !mbedtls_aes_rk_offset()))
  {
    if (v4 > 2u)
    {
      v4 = 2;
    }
  }

  if (v4 >= *(a1 + 128))
  {
    return 2;
  }

  return v4;
}

uint64_t ecp_precompute_comb(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 a4, unint64_t a5)
{
  v9 = 1 << (a4 - 1);
  v25 = 0;
  mpi_init_many(v24, 4);
  v18 = mbedtls_ecp_copy(a2, a3);
  if (!v18)
  {
    for (i = 0; i < a5 * (a4 - 1); ++i)
    {
      v14 = 1 << (i / a5);
      v8 = (a2 + 48 * v14);
      if (!(i % a5))
      {
        v18 = mbedtls_ecp_copy(v8, (a2 + 48 * (v14 >> 1)));
        if (v18)
        {
          goto LABEL_26;
        }
      }

      v18 = ecp_double_jac(a1, v8, v8, v24);
      if (v18)
      {
        goto LABEL_26;
      }
    }

    v11 = 0;
    for (j = 1; j < v9; j *= 2)
    {
      v5 = v11++;
      (&v25)[v5] = (a2 + 48 * j);
    }

    v18 = ecp_normalize_jac_many(a1, &v25, v11);
    if (!v18)
    {
      for (k = 1; k < v9; k *= 2)
      {
        v12 = k;
        while (v12--)
        {
          v18 = ecp_add_mixed(a1, (a2 + 48 * (k + v12)), (a2 + 48 * v12), (a2 + 48 * k), v24);
          if (v18)
          {
            goto LABEL_26;
          }
        }
      }

      for (m = 0; m + 1 < v9; ++m)
      {
        (&v25)[m] = (a2 + 48 * m + 48);
      }

      v18 = ecp_normalize_jac_many(a1, &v25, m);
      if (!v18)
      {
        for (n = 0; n < v9; ++n)
        {
          mbedtls_mpi_free(a2 + 48 * n + 32);
        }
      }
    }
  }

LABEL_26:
  mpi_free_many(v24, 4);
  return v18;
}

uint64_t ecp_mul_comb_after_precomp(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6, unint64_t a7, uint64_t (*a8)(uint64_t, unint64_t, unint64_t), uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = a9;
  v14 = a10;
  v13 = -110;
  v12 = 0;
  v13 = ecp_comb_recode_scalar(a1, a3, v24, a7, a6, &v12);
  if (!v13)
  {
    v13 = ecp_mul_comb_core(v23, a2, v20, v19, v24, v17, v16, v15, v14);
    if (!v13)
    {
      v13 = ecp_safe_invert_jac(v23, a2, v12);
      if (!v13)
      {
        if (!v16)
        {
          return ecp_normalize_jac(v23, a2);
        }

        v13 = ecp_randomize_jac(v23, a2, v16, v15);
        if (!v13)
        {
          return ecp_normalize_jac(v23, a2);
        }
      }
    }
  }

  return v13;
}

uint64_t ecp_double_jac(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (mbedtls_ecp_group_a_is_minus_3(a1))
  {
    v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3 + 4, a3 + 4);
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_add_mod(a1, (a4 + 4), a3, (a4 + 2));
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_sub_mod(a1, (a4 + 6), a3, (a4 + 2));
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a4 + 4, a4 + 6);
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_mul_int_mod(a1, a4, (a4 + 2), 3);
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3, a3);
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_mul_int_mod(a1, a4, (a4 + 2), 3);
    if (v5)
    {
      return v5;
    }

    if (mbedtls_mpi_cmp_int(a1 + 24, 0))
    {
      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3 + 4, a3 + 4);
      if (v5)
      {
        return v5;
      }

      v5 = mbedtls_mpi_mul_mod(a1, a4 + 4, a4 + 2, a4 + 2);
      if (v5)
      {
        return v5;
      }

      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a4 + 4, (a1 + 24));
      if (v5)
      {
        return v5;
      }

      v5 = mbedtls_mpi_add_mod(a1, a4, a4, (a4 + 2));
      if (v5)
      {
        return v5;
      }
    }
  }

  v5 = mbedtls_mpi_mul_mod(a1, a4 + 4, a3 + 2, a3 + 2);
  if (!v5)
  {
    v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 4), 1);
    if (!v5)
    {
      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3, a4 + 4);
      if (!v5)
      {
        v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 2), 1);
        if (!v5)
        {
          v5 = mbedtls_mpi_mul_mod(a1, a4 + 6, a4 + 4, a4 + 4);
          if (!v5)
          {
            v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 6), 1);
            if (!v5)
            {
              v5 = mbedtls_mpi_mul_mod(a1, a4 + 4, a4, a4);
              if (!v5)
              {
                v5 = mbedtls_mpi_sub_mod(a1, (a4 + 4), (a4 + 4), (a4 + 2));
                if (!v5)
                {
                  v5 = mbedtls_mpi_sub_mod(a1, (a4 + 4), (a4 + 4), (a4 + 2));
                  if (!v5)
                  {
                    v5 = mbedtls_mpi_sub_mod(a1, (a4 + 2), (a4 + 2), (a4 + 4));
                    if (!v5)
                    {
                      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a4 + 2, a4);
                      if (!v5)
                      {
                        v5 = mbedtls_mpi_sub_mod(a1, (a4 + 2), (a4 + 2), (a4 + 6));
                        if (!v5)
                        {
                          v5 = mbedtls_mpi_mul_mod(a1, a4 + 6, a3 + 2, a3 + 4);
                          if (!v5)
                          {
                            v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 6), 1);
                            if (!v5)
                            {
                              v5 = mbedtls_mpi_copy(a2, a4 + 4);
                              if (!v5)
                              {
                                v5 = mbedtls_mpi_copy(a2 + 16, a4 + 2);
                                if (!v5)
                                {
                                  return mbedtls_mpi_copy(a2 + 32, a4 + 6);
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

  return v5;
}

uint64_t ecp_normalize_jac_many(uint64_t a1, uint64_t **a2, unint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (a3 >= 2)
  {
    v7 = -110;
    i = 0;
    v4[0] = 0;
    v4[1] = 0;
    v5 = mbedtls_calloc();
    if (v5)
    {
      mbedtls_mpi_init(v4);
      mpi_init_many(v5, v8);
      v7 = mbedtls_mpi_copy(v5, *v9 + 4);
      if (!v7)
      {
        for (i = 1; i < v8; ++i)
        {
          v7 = mbedtls_mpi_mul_mod(v10, &v5[2 * i], &v5[2 * i - 2], v9[i] + 4);
          if (v7)
          {
            goto LABEL_26;
          }
        }

        v7 = mbedtls_mpi_inv_mod(&v5[2 * v8 - 2], &v5[2 * v8 - 2], (v10 + 8));
        if (!v7)
        {
          for (i = v8 - 1; ; --i)
          {
            if (i)
            {
              v7 = mbedtls_mpi_mul_mod(v10, v4, &v5[2 * i], &v5[2 * i - 2]);
              if (v7)
              {
                break;
              }

              v7 = mbedtls_mpi_mul_mod(v10, &v5[2 * i - 2], &v5[2 * i], v9[i] + 4);
              if (v7)
              {
                break;
              }
            }

            else
            {
              v7 = mbedtls_mpi_copy(v4, v5);
              if (v7)
              {
                break;
              }
            }

            v7 = mbedtls_mpi_mul_mod(v10, v9[i] + 2, v9[i] + 2, v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_mul_mod(v10, v4, v4, v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_mul_mod(v10, v9[i], v9[i], v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_mul_mod(v10, v9[i] + 2, v9[i] + 2, v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_shrink(v9[i], *(v10 + 18));
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_shrink((v9[i] + 2), *(v10 + 18));
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_lset((v9[i] + 4), 1uLL);
            if (v7 || !i)
            {
              break;
            }
          }
        }
      }

LABEL_26:
      mbedtls_mpi_free(v4);
      mpi_free_many(v5, v8);
      mbedtls_free();
      return v7;
    }

    else
    {
      return -19840;
    }
  }

  else
  {
    return ecp_normalize_jac(v10, *v9);
  }
}

uint64_t mbedtls_mpi_sub_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_sub_mpi(a2, a3, a4); !i; i = mbedtls_mpi_add_mpi(a2, a2, a1 + 8))
  {
    v5 = 0;
    if (*(a2 + 8) < 0)
    {
      v5 = mbedtls_mpi_cmp_int(a2, 0) != 0;
    }

    if (!v5)
    {
      break;
    }
  }

  return i;
}

uint64_t mbedtls_mpi_mul_int_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_mul_int(a2, a3, a4); !i; i = mbedtls_mpi_sub_abs(a2, a2, a1 + 8))
  {
    if ((mbedtls_mpi_cmp_mpi(a2, a1 + 8) & 0x80000000) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t mbedtls_mpi_shift_l_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = mbedtls_mpi_shift_l(a2, a3); !i; i = mbedtls_mpi_sub_abs(a2, a2, a1 + 8))
  {
    if ((mbedtls_mpi_cmp_mpi(a2, a1 + 8) & 0x80000000) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t ecp_comb_recode_scalar(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, unsigned __int8 *a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = -110;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  mbedtls_mpi_init(v9);
  mbedtls_mpi_init(v8);
  if (mbedtls_mpi_get_bit(v16 + 104, 0) == 1)
  {
    v6 = mbedtls_mpi_get_bit(v15, 0) == 0;
    *v11 = v6;
    v10 = mbedtls_mpi_copy(v9, v15);
    if (!v10)
    {
      v10 = mbedtls_mpi_sub_mpi(v8, v16 + 104, v15);
      if (!v10)
      {
        v10 = mbedtls_mpi_safe_cond_assign(v9, v8, *v11);
        if (!v10)
        {
          ecp_comb_recode_core(v14, v13, v12, v9);
        }
      }
    }

    mbedtls_mpi_free(v8);
    mbedtls_mpi_free(v9);
    return v10;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_mul_comb_core(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, unint64_t, unint64_t), uint64_t a8, uint64_t a9)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = a8;
  v13 = a9;
  v12 = -110;
  memset(__b, 0, sizeof(__b));
  mbedtls_ecp_point_init(__b);
  mpi_init_many(v22, 4);
  v10 = v16;
  v12 = ecp_select_comb(v21, v20, v19, v18, *(v17 + v16));
  if (!v12 && (!v15 || (v12 = ecp_randomize_jac(v21, v20, v15, v14)) == 0))
  {
    do
    {
      if (!v10)
      {
        break;
      }

      --v10;
      v12 = ecp_double_jac(v21, v20, v20, v22);
      if (v12)
      {
        break;
      }

      v12 = ecp_select_comb(v21, __b, v19, v18, *(v17 + v10));
      if (v12)
      {
        break;
      }

      v12 = ecp_add_mixed(v21, v20, v20, __b, v22);
    }

    while (!v12);
  }

  mbedtls_ecp_point_free(__b);
  mpi_free_many(v22, 4);
  return v12;
}

uint64_t ecp_safe_invert_jac(uint64_t a1, uint64_t a2, char a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v5);
  v4 = mbedtls_mpi_cmp_int(v8 + 16, 0) != 0;
  v6 = mbedtls_mpi_sub_mpi(v5, v9 + 8, v8 + 16);
  if (!v6)
  {
    v6 = mbedtls_mpi_safe_cond_assign(v8 + 16, v5, v4 & v7);
  }

  mbedtls_mpi_free(v5);
  return v6;
}

uint64_t ecp_randomize_jac(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = -110;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v5);
  v6 = mbedtls_mpi_random(v5, 2, v10 + 8, v8, v7);
  if (!v6)
  {
    v6 = mbedtls_mpi_mul_mod(v10, v9 + 4, v9 + 4, v5);
    if (!v6)
    {
      v6 = mbedtls_mpi_mul_mod(v10, v9 + 2, v9 + 2, v5);
      if (!v6)
      {
        v6 = mbedtls_mpi_mul_mod(v10, v5, v5, v5);
        if (!v6)
        {
          v6 = mbedtls_mpi_mul_mod(v10, v9, v9, v5);
          if (!v6)
          {
            v6 = mbedtls_mpi_mul_mod(v10, v9 + 2, v9 + 2, v5);
          }
        }
      }
    }
  }

  mbedtls_mpi_free(v5);
  if (v6 == -14)
  {
    return -19712;
  }

  return v6;
}

uint64_t ecp_comb_recode_core(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  result = __memset_chk();
  for (i = 0; i < a2; ++i)
  {
    for (j = 0; j < a3; ++j)
    {
      result = mbedtls_mpi_get_bit(a4, i + a2 * j);
      *(a1 + i) |= result << j;
    }
  }

  v7 = 0;
  for (k = 1; k <= a2; ++k)
  {
    v6 = *(a1 + k) & v7;
    *(a1 + k) ^= v7;
    v5 = 1 - (*(a1 + k) & 1);
    v7 = v6 | *(a1 + k) & (*(a1 + k - 1) * v5);
    *(a1 + k) ^= *(a1 + k - 1) * v5;
    *(a1 + k - 1) |= v5 << 7;
  }

  return result;
}

uint64_t ecp_select_comb(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v7 = (a5 & 0x7F) >> 1;
  for (i = 0; i < a4; ++i)
  {
    v8 = mbedtls_mpi_safe_cond_assign(a2, a3 + 48 * i, i == v7);
    if (v8)
    {
      return v8;
    }

    v8 = mbedtls_mpi_safe_cond_assign(a2 + 16, a3 + 48 * i + 16, i == v7);
    if (v8)
    {
      return v8;
    }
  }

  v8 = ecp_safe_invert_jac(a1, a2, a5 >> 7);
  if (!v8)
  {
    return mbedtls_mpi_lset(a2 + 32, 1uLL);
  }

  return v8;
}

uint64_t mbedtls_ecp_group_load(void *a1, int a2)
{
  mbedtls_ecp_group_free(a1);
  mbedtls_ecp_group_init(a1);
  *a1 = a2;
  if (a2 == 3)
  {
    a1[18] = ecp_mod_p256;
    return ecp_group_load(a1, &secp256r1_p, 0x20uLL, 0, 0, &secp256r1_b, 0x20uLL, &secp256r1_gx, 0x20uLL, &secp256r1_gy, 0x20uLL, &secp256r1_n, 0x20uLL, 0);
  }

  else
  {
    *a1 = 0;
    return -20096;
  }
}

uint64_t ecp_mod_p256(unsigned __int16 *a1)
{
  v8 = a1;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v7 = mbedtls_mpi_grow(a1, 9uLL);
  if (!v7)
  {
    v4 = **v8;
    add32(&v4, *(*v8 + 32), &v6);
    add32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    sub32(&v4, *(*v8 + 48), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 56), &v6);
    **v8 &= 0xFFFFFFFF00000000;
    **v8 |= v4;
    v4 = HIDWORD(**v8);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    add32(&v4, *(*v8 + 40), &v6);
    sub32(&v4, *(*v8 + 48), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 56), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    **v8 = **v8;
    **v8 |= v4 << 32;
    v4 = *(*v8 + 8);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, *(*v8 + 40), &v6);
    add32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 56), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    *(*v8 + 8) &= 0xFFFFFFFF00000000;
    *(*v8 + 8) |= v4;
    v4 = HIDWORD(*(*v8 + 8));
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    sub32(&v4, *(*v8 + 32), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    *(*v8 + 8) = *(*v8 + 8);
    *(*v8 + 8) |= v4 << 32;
    v4 = *(*v8 + 16);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    sub32(&v4, *(*v8 + 40), &v6);
    *(*v8 + 16) &= 0xFFFFFFFF00000000;
    *(*v8 + 16) |= v4;
    v4 = HIDWORD(*(*v8 + 16));
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    sub32(&v4, *(*v8 + 40), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    *(*v8 + 16) = *(*v8 + 16);
    *(*v8 + 16) |= v4 << 32;
    v4 = *(*v8 + 24);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 32), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    *(*v8 + 24) &= 0xFFFFFFFF00000000;
    *(*v8 + 24) |= v4;
    v4 = HIDWORD(*(*v8 + 24));
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, *(*v8 + 32), &v6);
    sub32(&v4, *(*v8 + 40), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    sub32(&v4, *(*v8 + 48), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    *(*v8 + 24) = *(*v8 + 24);
    *(*v8 + 24) |= v4 << 32;
    v3 = 8;
    if (v6 <= 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = v6;
    }

    v4 = v2;
    *(*v8 + 32) &= 0xFFFFFFFF00000000;
    *(*v8 + 32) |= v4;
    v4 = 0;
    while (++v3 < 2 * v8[5])
    {
      if (v3 % 2)
      {
        *(*v8 + 8 * (v3 / 2)) = *(*v8 + 8 * (v3 / 2));
        *(*v8 + 8 * (v3 / 2)) |= v4 << 32;
      }

      else
      {
        *(*v8 + 8 * (v3 / 2)) &= 0xFFFFFFFF00000000;
        *(*v8 + 8 * (v3 / 2)) |= v4;
      }
    }

    if (v6 < 0)
    {
      mbedtls_ecp_fix_negative(v8, v6, 0x100uLL);
    }
  }

  return v7;
}

uint64_t ecp_group_load(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  ecp_mpi_load(a1 + 8, a2, a3);
  if (a4)
  {
    ecp_mpi_load(a1 + 24, a4, a5);
  }

  ecp_mpi_load(a1 + 40, a6, a7);
  ecp_mpi_load(a1 + 104, a12, a13);
  ecp_mpi_load(a1 + 56, a8, a9);
  ecp_mpi_load(a1 + 72, a10, a11);
  ecp_mpi_set1(a1 + 88);
  *(a1 + 120) = mbedtls_mpi_bitlen(a1 + 8);
  *(a1 + 128) = mbedtls_mpi_bitlen(a1 + 104);
  *(a1 + 136) = 1;
  *(a1 + 176) = a14;
  *(a1 + 184) = 0;
  return 0;
}

uint64_t ecp_mpi_load(uint64_t result, uint64_t a2, unint64_t a3)
{
  *(result + 8) = 1;
  *(result + 10) = a3 / 8;
  *result = a2;
  return result;
}

uint64_t ecp_mpi_set1(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 10) = 1;
  *result = &mpi_one;
  return result;
}

unsigned int *add32(unsigned int *result, unsigned int a2, char *a3)
{
  *result += a2;
  v3 = *a3;
  if (*result < a2)
  {
    ++v3;
  }

  *a3 = v3;
  return result;
}

unsigned int *sub32(unsigned int *result, unsigned int a2, _BYTE *a3)
{
  *a3 -= *result < a2;
  *result -= a2;
  return result;
}

uint64_t mbedtls_ecp_fix_negative(uint64_t result, char a2, unint64_t a3)
{
  for (i = 0; i <= a3 / 8 / 8; ++i)
  {
    *(*result + 8 * i) = -1 - *(*result + 8 * i);
  }

  v7 = 0;
  do
  {
    ++*(*result + 8 * v7);
    v3 = v7++;
    v4 = 0;
    if (!*(*result + 8 * v3))
    {
      v4 = v7 <= a3 / 8 / 8;
    }
  }

  while (v4);
  *(result + 8) = -1;
  v5 = -a2;
  if (a3 == 224)
  {
    v5 <<= 32;
  }

  *(*result + 8 * (a3 / 8 / 8)) += v5;
  return result;
}

uint64_t mbedtls_entropy_init(uint64_t a1)
{
  *(a1 + 28) = 0;
  __memset_chk();
  *(a1 + 24) = 0;
  return mbedtls_md_init();
}

_DWORD *mbedtls_entropy_free(_DWORD *result)
{
  v1 = result;
  if (result[6] != -1)
  {
    mbedtls_md_free(result);
    v1[7] = 0;
    result = mbedtls_platform_zeroize(v1 + 8, 0x28uLL);
    v1[6] = -1;
  }

  return result;
}

uint64_t mbedtls_entropy_add_source(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = 0;
  v7 = *(a1 + 28);
  if (v7 < 1)
  {
    *(a1 + 32 + 40 * v7) = a2;
    *(a1 + 32 + 40 * v7 + 8) = a3;
    *(a1 + 32 + 40 * v7 + 24) = a4;
    *(a1 + 32 + 40 * v7 + 32) = a5;
    ++*(a1 + 28);
  }

  else
  {
    return -62;
  }

  return v6;
}

uint64_t entropy_update(_DWORD **a1, char a2, uint64_t a3, unint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v9 = a4;
  v8 = a3;
  if (a4 > 0x20)
  {
    v4 = mbedtls_md_info_from_type(9);
    v7 = mbedtls_md(v4, v12, v11, v15);
    if (v7)
    {
      goto LABEL_10;
    }

    v8 = v15;
    v9 = 32;
  }

  v10[0] = v13;
  v10[1] = v9;
  if (!*(v14 + 6))
  {
    v5 = mbedtls_md_info_from_type(9);
    v7 = mbedtls_md_setup(v14, v5, 0);
    if (v7)
    {
      goto LABEL_10;
    }

    v7 = mbedtls_md_starts(v14);
    if (v7)
    {
      goto LABEL_10;
    }

    *(v14 + 6) = 1;
  }

  v7 = mbedtls_md_update(v14, v10, 2uLL);
  if (!v7)
  {
    v7 = mbedtls_md_update(v14, v8, v9);
  }

LABEL_10:
  mbedtls_platform_zeroize(v15, 0x20uLL);
  return v7;
}

uint64_t entropy_gather_internal(uint64_t a1)
{
  v6 = a1;
  v5 = -60;
  i = 0;
  v3 = 0;
  v2 = 0;
  if (*(a1 + 28))
  {
    for (i = 0; i < *(v6 + 7); ++i)
    {
      if (LODWORD(v6[5 * i + 8]) == 1)
      {
        v3 = 1;
      }

      v2 = 0;
      v5 = (v6[5 * i + 4])(v6[5 * i + 5], v8, 128, &v2);
      if (v5)
      {
        goto LABEL_15;
      }

      if (v2)
      {
        v5 = entropy_update(v6, i, v8, v2);
        if (v5)
        {
          return v5;
        }

        v6[5 * i + 6] = (v6[5 * i + 6] + v2);
      }
    }

    if (!v3)
    {
      v5 = -61;
    }

LABEL_15:
    mbedtls_platform_zeroize(v8, 0x80uLL);
    return v5;
  }

  else
  {
    return -64;
  }
}

uint64_t mbedtls_entropy_func(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = 0;
  if (a3 <= 0x20)
  {
    do
    {
      v3 = v13++;
      if (v3 > 256)
      {
        v14 = -60;
        goto LABEL_25;
      }

      v14 = entropy_gather_internal(a1);
      if (v14)
      {
        goto LABEL_25;
      }

      v10 = 1;
      v9 = 0;
      for (i = 0; i < *(a1 + 28); ++i)
      {
        if (*(a1 + 32 + 40 * i + 16) < *(a1 + 32 + 40 * i + 24))
        {
          v10 = 0;
        }

        if (*(a1 + 32 + 40 * i + 32) == 1)
        {
          v9 += *(a1 + 32 + 40 * i + 16);
        }
      }

      v7 = 1;
      if (v10)
      {
        v7 = v9 < 0x20;
      }
    }

    while (v7);
    memset(v16, 0, sizeof(v16));
    v14 = mbedtls_md_finish(a1);
    if (!v14)
    {
      mbedtls_md_free(a1);
      mbedtls_md_init();
      v4 = mbedtls_md_info_from_type(9);
      v14 = mbedtls_md_setup(a1, v4, 0);
      if (!v14)
      {
        v14 = mbedtls_md_starts(a1);
        if (!v14)
        {
          v14 = mbedtls_md_update(a1, v16, 0x20uLL);
          if (!v14)
          {
            v5 = mbedtls_md_info_from_type(9);
            v14 = mbedtls_md(v5, v16, 0x20uLL, v16);
            if (!v14)
            {
              for (j = 0; j < *(a1 + 28); ++j)
              {
                *(a1 + 32 + 40 * j + 16) = 0;
              }

              __memcpy_chk();
              v14 = 0;
            }
          }
        }
      }
    }

LABEL_25:
    mbedtls_platform_zeroize(v16, 0x20uLL);
    return v14;
  }

  else
  {
    return -60;
  }
}