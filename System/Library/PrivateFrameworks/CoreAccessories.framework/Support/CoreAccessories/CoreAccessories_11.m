uint64_t X509CertificateSubjectNameGetCommonName(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v25 = v3;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v2, v3))
  {
    goto LABEL_64;
  }

  v4 = &v2[v3];
  if (v2 > v4)
  {
    goto LABEL_63;
  }

  v23 = v2;
  v24 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_63;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl(&v23, 0x2000000000000011, &v25) || !v25)
      {
        return 720898;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      v2 = v23;
      if (__CFADD__(v23, v25))
      {
        break;
      }

      v7 = &v23[v25];
      if (v23 > &v23[v25] || v7 > v24)
      {
        goto LABEL_63;
      }

      v21 = v23;
      v22 = &v23[v25];
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl(&v21, 0x2000000000000010, &v25))
        {
          return 720899;
        }

        v19 = 0xAAAAAAAAAAAAAAAALL;
        v20 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v25))
        {
          goto LABEL_64;
        }

        if (v21 > &v21[v25] || &v21[v25] > v22)
        {
          goto LABEL_63;
        }

        v19 = v21;
        v20 = &v21[v25];
        if (!ccder_blob_decode_tl(&v19, 6, &v25))
        {
          return 720900;
        }

        v10 = v19;
        v2 = v20;
        if (v19 > v20 || v25 > v20 - v19)
        {
          goto LABEL_63;
        }

        if (__CFADD__(v19, v25))
        {
          goto LABEL_64;
        }

        v11 = &v19[v25];
        if (&v19[v25] > v20 || v19 > v11)
        {
          goto LABEL_63;
        }

        v19 += v25;
        if (v25 == 3)
        {
          v12 = *v10;
          v13 = v10[2];
          if (v12 == 1109 && v13 == 3)
          {
            v17 = v11;
            v18 = v20;
            if ((ccder_blob_decode_tl(&v17, 12, &v25) & 1) == 0)
            {
              if (v19 > v20)
              {
                goto LABEL_63;
              }

              v17 = v19;
              v18 = v20;
              if ((ccder_blob_decode_tl(&v17, 19, &v25) & 1) == 0)
              {
                if (v19 > v20)
                {
                  goto LABEL_63;
                }

                v17 = v19;
                v18 = v20;
                if (!ccder_blob_decode_tl(&v17, 20, &v25))
                {
                  return v6;
                }
              }
            }

            v15 = v25;
            if (!v25)
            {
              return v6;
            }

            if (__CFADD__(v17, v25))
            {
              goto LABEL_64;
            }

            v2 = v20;
            if (v20 != &v17[v25])
            {
              return 720902;
            }

            if (v18 < v17 || v25 > v18 - v17)
            {
              goto LABEL_63;
            }

            *a2 = v17;
            a2[1] = v15;
          }
        }

        v7 = v22;
        if (v2 > v22 || v21 > v2)
        {
          goto LABEL_63;
        }

        v21 = v2;
      }

      if (v2 != v7)
      {
        return 720903;
      }

      v4 = v24;
      if (v2 > v24 || v23 > v2)
      {
        goto LABEL_63;
      }

      v23 = v2;
      if (v2 >= v24)
      {
        goto LABEL_50;
      }
    }

LABEL_64:
    __break(0x5513u);
  }

LABEL_50:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      return 720905;
    }

LABEL_63:
    __break(0x5519u);
    goto LABEL_64;
  }

  return 720904;
}

uint64_t X509CertificateParseValidity(uint64_t result, void *a2, void *a3)
{
  v3 = 720906;
  if (!result)
  {
    return v3;
  }

  v4 = *(result + 72);
  v5 = *(result + 80);
  if (!v4 || v5 == 0)
  {
    return v3;
  }

  if (__CFADD__(v4, v5))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = (v4 + v5);
    if (v4 <= v7)
    {
      v9[0] = *(result + 72);
      v9[1] = v7;
      if (!ccder_blob_decode_Time(v9, a2))
      {
        return 720907;
      }

      if (ccder_blob_decode_Time(v9, a3))
      {
        return 0;
      }

      return 720908;
    }
  }

  __break(0x5519u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unsigned __int8 **a1, void *a2, unsigned __int8 **a3)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v15 = *a1;
  v16 = v3;
  v14 = v3 - v4;
  if (ccder_blob_decode_tl(&v15, 22, &v14))
  {
    goto LABEL_5;
  }

  v8 = a1[1];
  if (*a1 > v8)
  {
    goto LABEL_19;
  }

  v15 = *a1;
  v16 = v8;
  if (ccder_blob_decode_tl(&v15, 12, &v14))
  {
LABEL_5:
    v10 = v15;
    v9 = v16;
    if (v15 > v16)
    {
      goto LABEL_19;
    }

    *a1 = v15;
    a1[1] = v9;
    v11 = v14;
  }

  else
  {
    v10 = *a1;
    v9 = a1[1];
    v11 = v9 - *a1;
    v14 = v11;
  }

  if (__CFADD__(v10, v11))
  {
    goto LABEL_20;
  }

  v12 = &v10[v11];
  if (v9 == &v10[v11])
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v10 <= v9)
      {
        *a1 = v12;
        return v9 == v12;
      }

      goto LABEL_19;
    }

    if (v10 <= v9 && v11 <= v9 - v10)
    {
      *a3 = v10;
      a3[1] = v11;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

  return v9 == v12;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unsigned __int8 **a1, unint64_t *a2, unsigned __int8 **a3)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 22, &v16);
  if (result)
  {
    v7 = v16;
    v8 = *a1;
    if (__CFADD__(*a1, v16))
    {
      __break(0x5513u);
      goto LABEL_37;
    }

    v9 = &v8[v16];
    if (a1[1] != &v8[v16])
    {
      return 0;
    }

    v10 = *a2;
    *a2 |= 0x30000000000uLL;
    if (a3)
    {
      if (v8 > v9)
      {
        goto LABEL_37;
      }

      *a3 = v8;
      a3[1] = v7;
    }

    if (v7 == 4)
    {
      if (v8 > v9)
      {
        goto LABEL_37;
      }

      if (*v8 != 1953653621)
      {
        goto LABEL_33;
      }

      v15 = 0x30001000000;
    }

    else
    {
      if (v7 == 17)
      {
        if (v8 > v9)
        {
          goto LABEL_37;
        }

        if (*v8 != 0x207372656B6E6F59 || *(v8 + 1) != 0x726F74636146202DLL || v8[16] != 121)
        {
          goto LABEL_33;
        }

        v12 = 786432;
      }

      else
      {
        if (v7 != 16)
        {
          goto LABEL_33;
        }

        if (v8 > v9)
        {
          goto LABEL_37;
        }

        if (*v8 != 0x2D20656761766153 || *(v8 + 1) != 0x79726F7463614620)
        {
          goto LABEL_33;
        }

        v12 = 3;
      }

      v15 = v12 & 0xFFFF0000FFFFFFFFLL | 0x30000000000;
    }

    *a2 = v10 | v15;
LABEL_33:
    if (v8 <= v9)
    {
      *a1 = v9;
      return 1;
    }

LABEL_37:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unsigned __int8 **a1, void *a2, unsigned __int8 **a3)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 4, &v10);
  if (result)
  {
    v7 = *a1;
    if (__CFADD__(*a1, v10))
    {
      __break(0x5513u);
    }

    else
    {
      v8 = a1[1];
      v9 = &v7[v10];
      if (v8 != &v7[v10])
      {
        return 0;
      }

      if (v10 == 32)
      {
        if (a3)
        {
          if (v8 < v7 || (v8 - v7) <= 0x1F)
          {
            goto LABEL_15;
          }

          *a3 = v7;
          a3[1] = 32;
        }

        *a2 |= 4uLL;
      }

      if (v7 <= v8)
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_15:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unsigned __int8 **a1, void *a2, unsigned __int8 **a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 4, &v11);
  if (result)
  {
    v7 = v11;
    v8 = *a1;
    if (__CFADD__(*a1, v11))
    {
      __break(0x5513u);
    }

    else
    {
      v9 = a1[1];
      v10 = &v8[v11];
      if (v9 != &v8[v11])
      {
        return 0;
      }

      if (v11)
      {
        if (a3)
        {
          if (v9 < v8 || v11 > v9 - v8)
          {
            goto LABEL_15;
          }

          *a3 = v8;
          a3[1] = v7;
        }

        *a2 |= 0x30000000uLL;
      }

      if (v8 <= v9)
      {
        *a1 = v10;
        return 1;
      }
    }

LABEL_15:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseGenericSSLMarker(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v17 = 0;
  v6 = ccder_blob_decode_tl(a1, 12, &v17);
  result = 0;
  if (v6)
  {
    v8 = v17;
    if (v17 >= 0x19)
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = v10 - *a1;
      v12 = v10 >= *a1 && v11 > 0x17;
      if (!v12)
      {
        goto LABEL_26;
      }

      if (*v9 != 0x2E3034382E322E31 || *(v9 + 1) != 0x312E353336333131 || *(v9 + 2) != 0x2E37322E362E3030)
      {
        return 0;
      }

      if (v9 < 0xFFFFFFFFFFFFFFE8)
      {
        v11 = (v9 + 24);
        if ((v9 + 24) > v10 || v9 > v11)
        {
          goto LABEL_26;
        }

        v15 = v9 + 24;
        do
        {
          if (v15 >= v10)
          {
            goto LABEL_27;
          }

          if (*v15 - 58 < 0xFFFFFFF6)
          {
            return 0;
          }

          if ((v15 + 1) > v10)
          {
            break;
          }

          v12 = v15 > v15 + 1;
          ++v15;
        }

        while (!v12);
        while (1)
        {
LABEL_26:
          __break(0x5519u);
LABEL_27:
          if (!a3)
          {
            goto LABEL_31;
          }

          v16 = v8 - 24;
          if (v8 < 0x18)
          {
            goto LABEL_36;
          }

          if (v16 <= v10 - v11)
          {
            *a3 = v11;
            a3[1] = v16;
LABEL_31:
            v11 = *a2 | 0x200000000;
            *a2 = v11;
            if (__CFADD__(v9, v8))
            {
              break;
            }

            v8 += v9;
            if (v8 <= v10 && v9 <= v8)
            {
              *a1 = v8;
              return 1;
            }
          }
        }
      }

      __break(0x5513u);
LABEL_36:
      __break(0x5515u);
    }
  }

  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(unsigned __int8 **a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null(a1);
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= &_mh_execute_header;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unsigned __int8 **a1, void *a2, void *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_tl(a1, 0x2000000000000010, &v15);
  if (result)
  {
    v7 = *a1;
    if (__CFADD__(*a1, v15))
    {
      goto LABEL_17;
    }

    v8 = a1[1];
    if (v8 != &v7[v15])
    {
      return 0;
    }

    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    if (v7 > &v7[v15])
    {
      goto LABEL_18;
    }

    v12 = v7;
    v13 = v8;
    result = ccder_blob_decode_tl(&v12, 0xA000000000000002, &v14);
    if (result)
    {
      result = ccder_blob_decode_tl(&v12, 4, &v14);
      if (result)
      {
        if (a3)
        {
          if (v13 < v12)
          {
            goto LABEL_18;
          }

          v9 = v14;
          if (v14 > v13 - v12)
          {
            goto LABEL_18;
          }

          *a3 = v12;
          a3[1] = v9;
        }

        *a2 |= 0x240000800000uLL;
        v10 = *a1;
        if (!__CFADD__(*a1, v15))
        {
          v11 = &v10[v15];
          if (v10 <= &v10[v15] && v11 <= a1[1])
          {
            *a1 = v11;
            return 1;
          }

LABEL_18:
          __break(0x5519u);
          return result;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

uint64_t *ccaes_ccm_decrypt_mode()
{
  v0 = (*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v2 = ccaes_ecb_encrypt_mode();
  ccm_decrypt_info = v1;
  *algn_100246510 = xmmword_1001C4CA0;
  qword_100246520 = ccmode_ccm_init;
  qword_100246528 = ccmode_ccm_set_iv;
  qword_100246530 = ccmode_ccm_cbcmac;
  qword_100246538 = ccaes_vng_ccm_decrypt_wrapper;
  qword_100246540 = ccmode_ccm_finalize;
  qword_100246548 = ccmode_ccm_reset;
  unk_100246550 = v2;
  qword_100246558 = 0;
  return &ccm_decrypt_info;
}

uint64_t ccder_blob_decode_bitstring(unsigned __int8 **a1, uint64_t a2, unint64_t *a3)
{
  result = ccder_blob_decode_range(a1, 3, a2);
  if (result)
  {
    *a3 = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (v7 != *a2)
    {
      v8 = 8 * (~v6 + v7);
      v9 = *v6;
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        *a3 = v11;
      }

      *a2 = v6 + 1;
    }
  }

  return result;
}

uint64_t ccentropy_rng_init(void *a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = &entropy_rng_info;
  a1[1] = a2;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

BOOL ccder_blob_encode_body(void *a1, unint64_t a2, const void *a3)
{
  if (!a3)
  {
    return a2 == 0;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = ccder_blob_reserve(a1, a2, __dst);
  if (v5)
  {
    memmove(__dst[0], a3, a2);
  }

  return v5;
}

uint64_t *ccaes_ccm_encrypt_mode()
{
  v0 = (*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v2 = ccaes_ecb_encrypt_mode();
  ccm_encrypt_info = v1;
  unk_100246568 = xmmword_1001C4CA0;
  qword_100246578 = ccmode_ccm_init;
  qword_100246580 = ccmode_ccm_set_iv;
  qword_100246588 = ccmode_ccm_cbcmac;
  qword_100246590 = ccaes_vng_ccm_encrypt_wrapper;
  qword_100246598 = ccmode_ccm_finalize;
  qword_1002465A0 = ccmode_ccm_reset;
  unk_1002465A8 = v2;
  byte_1002465B0 = 1;
  *algn_1002465B1 = 0;
  dword_1002465B4 = 0;
  return &ccm_encrypt_info;
}

uint64_t *ccrng_prng(_DWORD *a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v7 = 1;
  }

  v9 = v7;
  pthread_once(&ccrng_prng_init_pred, init_0);
  if (a1)
  {
    *a1 = 0;
  }

  cc_disable_dit(&v9);
  return &rng_ctx;
}

uint64_t init_0()
{
  if (ccrng_process_init(&process_rng_ctx, get_time_nsec, &ccrng_getentropy))
  {
    init_cold_1();
  }

  result = pthread_atfork(atfork_prepare, atfork_parent, atfork_child);
  if (result)
  {
    init_cold_2();
  }

  rng_ctx = generate;
  return result;
}

uint64_t get_time_nsec()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1))
  {
    get_time_nsec_cold_1();
  }

  return v1.tv_nsec + 1000000000 * v1.tv_sec;
}

uint64_t atfork_prepare()
{
  result = ccrng_process_atfork_prepare(&process_rng_ctx);
  if (result)
  {
    atfork_prepare_cold_1();
  }

  return result;
}

uint64_t atfork_parent()
{
  result = ccrng_process_atfork_parent(&process_rng_ctx);
  if (result)
  {
    atfork_parent_cold_1();
  }

  return result;
}

uint64_t atfork_child()
{
  result = ccrng_process_atfork_child(&process_rng_ctx);
  if (result)
  {
    atfork_child_cold_1();
  }

  return result;
}

uint64_t generate()
{
  result = process_rng_ctx();
  if (result)
  {
    generate_cold_1();
  }

  return result;
}

uint64_t ccaes_arm_encrypt_key_with_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccec_mult_blinded_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v10 = *a2;
  v11 = ccn_bitlen_internal(*a2, a4);
  if (v11 > cczp_bitlen(a2))
  {
    return 4294967289;
  }

  v17 = 1;
  if (a6)
  {
    result = (*a6)(a6, 8, &v17);
    if (result)
    {
      return result;
    }

    v13 = v17 | 0x80000000;
  }

  else
  {
    v13 = 2147483649;
  }

  v17 = v13;
  v14 = *(a1 + 16);
  (*(a1 + 24))(a1, 3 * v10);
  v15 = (*(a1 + 24))(a1, v10);
  ccn_mux_seed_mask(v17);
  v17 = v17;
  result = ccec_mult_ws(a1, a2);
  if (!result)
  {
    v16 = 0;
    ccn_divmod_ws(a1, v10, a4, v10, v15, 1, &v16, &v17);
    cczp_bitlen(a2);
    result = ccec_mult_ws(a1, a2);
    if (!result)
    {
      result = ccec_mult_ws(a1, a2);
      if (!result)
      {
        ccec_full_add_ws(a1, a2);
        result = 0;
      }
    }
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccaes_arm_encrypt_key_with_key_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccn_cond_swap(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t ccec_sign_internal_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v13 = *a2;
  v15 = (*a2 + 4);
  v14 = **a2;
  if (a3 <= 0xF)
  {
    ccec_sign_internal_ws_cold_1(a3);
  }

  v35 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v39 = (*(a1 + 24))(a1, v14);
  v37 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, 3 * v14);
  v18 = *v13;
  v36 = v17;
  v34 = a7;
  scalar_fips_retry_ws = ccec_projectify_ws(a1, v13);
  if (!scalar_fips_retry_ws)
  {
    v33 = a5;
    v20 = a4;
    v21 = **a2;
    v22 = cczp_bitlen(v15 + 40 * *v13);
    v23 = v22;
    if ((v22 + 7) >> 3 >= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = (v22 + 7) >> 3;
    }

    uint_internal = ccn_read_uint_internal(v14, v16, v24, v20);
    if ((uint_internal & 0x80000000) != 0)
    {
      v31 = uint_internal;
      a5 = v33;
      goto LABEL_18;
    }

    v26 = &a2[3 * v21];
    if (v23 < 8 * a3)
    {
      ccn_shift_right(v14, v16, v16, -v23 & 7);
    }

    v27 = cczp_prime(v15 + 40 * v14);
    a5 = v33;
    v28 = ccn_sub_ws(a1, v14, v33, v16->i64, v27);
    ccn_mux(v14, v28, v16->i64, v16->i64, v33);
    scalar_fips_retry_ws = ccec_validate_scalar(v13, (v26 + 2));
    if (!scalar_fips_retry_ws)
    {
      v29 = 10;
      while (1)
      {
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v34, v39);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v34, v37);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        v30 = ccec_sign_internal_inner_ws(a1, v13, v16, (v26 + 2), v39, v36, v37, v33, a6, v34);
        v31 = v30;
        if (!v30)
        {
          goto LABEL_19;
        }

        if (v30 != -165)
        {
          goto LABEL_18;
        }

        if (!--v29)
        {
          cc_try_abort();
        }
      }
    }
  }

  v31 = scalar_fips_retry_ws;
LABEL_18:
  cc_clear(8 * v14, a5);
  cc_clear(8 * v14, a6);
LABEL_19:
  *(a1 + 16) = v35;
  return v31;
}

uint64_t cczp_inv_field_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_prime(a2);
  if (ccn_sub1(v8, v10, v11, 2uLL))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = cczp_power_fast_ws(a1, a2, a3, a4, v10);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t *ccaes_ctr_crypt_mode()
{
  v0 = ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v1 = ccaes_ecb_encrypt_mode();
  ctr_crypt = v0;
  unk_100246F18 = xmmword_1001C4CB0;
  qword_100246F28 = ccmode_ctr_init;
  qword_100246F30 = ccmode_ctr_setctr;
  qword_100246F38 = ccaes_vng_ctr_crypt;
  unk_100246F40 = v1;
  return &ctr_crypt;
}

double mfi_info_init(uint64_t a1)
{
  v2 = ccec_cp_256();
  *a1 = v2;
  *(a1 + 8) = mfi_kex_ctx;
  *(a1 + 16) = mfi_peer_kex_ctx;
  v3 = ((cczp_bitlen(v2) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL;
  *(a1 + 24) = v2;
  *(a1 + 32) = ccsha256_di();
  *(a1 + 40) = v3;
  *(a1 + 48) = mfi_sign_ctx;
  *(a1 + 56) = mfi_peer_sign_ctx;
  *(a1 + 64) = 14;
  *(a1 + 72) = &mfi_session_keys_info;
  *(a1 + 80) = 200;
  *(a1 + 88) = mfi_session_keys_buffer;
  *(a1 + 96) = mfi_session_keys_derive;
  *(a1 + 104) = 16;
  *(a1 + 112) = mfi_mac_compute;
  *&result = 9;
  *(a1 + 120) = xmmword_1001C4CC0;
  *(a1 + 136) = mfi_sigma_compute_mac_and_digest;
  *(a1 + 144) = 16;
  *(a1 + 152) = mfi_aead_seal;
  *(a1 + 160) = mfi_aead_open;
  *(a1 + 168) = mfi_aead_next_iv;
  *(a1 + 176) = mfi_clear;
  return result;
}

uint64_t mfi_mac_compute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = ccaes_cbc_encrypt_mode();
  v13 = *(*a1 + 104);

  return cccmac_one_shot_generate_internal(v12, a2, a3, a4, a5, v13, a6);
}

uint64_t ccder_blob_decode_range(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = ccder_blob_decode_tl_internal(a1, a2, &v8, 0);
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v6 = *a1;
    v7 = &(*a1)[v8];
    *a1 = v7;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t ccder_blob_decode_len_internal(uint64_t a1, unint64_t *a2, int a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1)
  {
    v5 = v4 >= v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v4 + 1;
  v7 = *v4;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = *v4;
  if (v9 > 0x82)
  {
    if (v9 == 131)
    {
      if ((v3 - v6) < 3)
      {
        goto LABEL_7;
      }

      v10 = v4[1];
      v6 = v4 + 4;
      v7 = v4[3] | (v10 << 16) | (v4[2] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v9 != 132 || (v3 - v6) < 4)
      {
        goto LABEL_7;
      }

      LODWORD(v10) = v4[1];
      v6 = v4 + 5;
      v7 = (v4[1] << 24) | (v4[2] << 16) | v4[4] | (v4[3] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 == 129)
  {
    if ((v3 - v6) < 1)
    {
      goto LABEL_7;
    }

    v6 = v4 + 2;
    v11 = v4[1];
    v7 = v11;
    if (a3)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (v9 != 130 || (v3 - v6) < 2)
  {
    goto LABEL_7;
  }

  v10 = v4[1];
  v6 = v4 + 3;
  v7 = v4[2] | (v10 << 8);
  if (a3)
  {
    goto LABEL_26;
  }

LABEL_6:
  if (v3 - v6 < v7)
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    return result;
  }

  *a2 = v7;
  *a1 = v6;
  return 1;
}

uint64_t ccder_blob_decode_tag(unsigned __int8 **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v8 = *v2;
  v6 = v2 + 1;
  v7 = v8;
  v9 = v8 & 0x1F;
  if (v9 == 31)
  {
    v9 = 0;
    while (1)
    {
      v5 = 0;
      if (v6 >= v3)
      {
        break;
      }

      v10 = v9;
      if (v9 >> 57)
      {
        break;
      }

      v11 = *v6++;
      v9 = v11 & 0x7F | (v9 << 7);
      if ((v11 & 0x80) == 0)
      {
        if (v10 >> 54)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *a2 = v9 | (v7 >> 5 << 61);
    *a1 = v6;
    return 1;
  }

  return v5;
}

uint64_t ccder_blob_decode_tl_internal(unsigned __int8 **a1, uint64_t a2, unint64_t *a3, int a4)
{
  v10 = 0;
  *a3 = 0;
  v8 = ccder_blob_decode_tag(a1, &v10);
  result = 0;
  if (v8 && v10 == a2)
  {
    if (a4)
    {
      return ccder_blob_decode_len_strict(a1, a3);
    }

    else
    {
      return ccder_blob_decode_len(a1, a3);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_uint64(unsigned __int8 **a1, unint64_t *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v7 = 0;
  v8 = 0;
  result = ccder_blob_decode_range(a1, 2, &v7);
  if (result)
  {
    v4 = v7;
    if (v7 != v8 && (*v7 & 0x80000000) == 0)
    {
      if (*v7 || (v4 = (v7 + 1), v7 + 1 == v8) || *v4 < 0)
      {
        v7 = v4;
        if ((v8 - v4) <= 8)
        {
          if (v4 == v8)
          {
            v5 = 0;
            if (!a2)
            {
              return 1;
            }
          }

          else
          {
            v5 = 0;
            do
            {
              v6 = *v4++;
              v5 = v6 | (v5 << 8);
            }

            while (v4 != v8);
            if (!a2)
            {
              return 1;
            }
          }

          *a2 = v5;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL ccder_blob_reserve(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < a2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = v3 - a2;
    a1[1] = v3 - a2;
  }

  result = v4 >= a2;
  *a3 = v5;
  a3[1] = v3;
  return result;
}

uint64_t ccder_blob_encode_len(uint64_t *a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  if (a2 > 0x7F)
  {
    if (a2 > 0xFF)
    {
      if (a2 >> 16)
      {
        if (a2 >> 24)
        {
          if (v3 + 5 <= v4)
          {
            *(v4 - 4) = bswap32(a2);
            LOBYTE(a2) = -124;
            v5 = -5;
            goto LABEL_17;
          }
        }

        else if (v3 + 4 <= v4)
        {
          *(v4 - 2) = bswap32(a2) >> 16;
          *(v4 - 3) = BYTE2(a2);
          LOBYTE(a2) = -125;
          v5 = -4;
          goto LABEL_17;
        }
      }

      else if (v3 + 3 <= v4)
      {
        *(v4 - 2) = bswap32(a2) >> 16;
        LOBYTE(a2) = -126;
        v5 = -3;
        goto LABEL_17;
      }
    }

    else if (v3 + 2 <= v4)
    {
      *(v4 - 1) = a2;
      LOBYTE(a2) = -127;
      v5 = -2;
      goto LABEL_17;
    }

    return 0;
  }

  if (v3 + 1 > v4)
  {
    return 0;
  }

  v5 = -1;
LABEL_17:
  v6 = (v4 + v5);
  *v6 = a2;
  *a1 = v3;
  a1[1] = v6;
  return 1;
}

uint64_t ccder_blob_encode_tag(void *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = HIBYTE(a2);
  v5 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFFFFLL) > 0x1E)
  {
    if (v5 > 0x7F)
    {
      if (v5 >> 14)
      {
        if (v5 >> 21)
        {
          v8 = v2 - v3;
          if (v5 >> 28)
          {
            if (v8 < 6)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            *(v2 - 4) = (a2 >> 21) | 0x80;
            LOBYTE(a2) = (a2 >> 28) | 0x80;
            v7 = -5;
          }

          else
          {
            if (v8 < 5)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            LODWORD(a2) = (a2 >> 21) | 0xFFFFFF80;
            v7 = -4;
          }
        }

        else
        {
          if ((v2 - v3) < 4)
          {
            return 0;
          }

          *(v2 - 1) = a2 & 0x7F;
          *(v2 - 2) = (a2 >> 7) | 0x80;
          LODWORD(a2) = (a2 >> 14) | 0xFFFFFF80;
          v7 = -3;
        }
      }

      else
      {
        if ((v2 - v3) < 3)
        {
          return 0;
        }

        *(v2 - 1) = a2 & 0x7F;
        LODWORD(a2) = (a2 >> 7) | 0xFFFFFF80;
        v7 = -2;
      }
    }

    else
    {
      if ((v2 - v3) < 2)
      {
        return 0;
      }

      v7 = -1;
    }

    v2 += v7;
    *v2 = a2;
    v6 = v4 | 0x1F;
    goto LABEL_20;
  }

  if (v2 == v3)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xE0 | a2;
LABEL_20:
  *(v2 - 1) = v6;
  *a1 = v3;
  a1[1] = v2 - 1;
  return 1;
}

uint64_t ccder_blob_encode_tl(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = ccder_blob_encode_len(a1, a3);
  if (result)
  {

    return ccder_blob_encode_tag(a1, a2);
  }

  return result;
}

uint64_t ccder_blob_encode_body_tl(uint64_t *a1, unint64_t a2, unint64_t a3, const void *a4)
{
  result = ccder_blob_encode_body(a1, a3, a4);
  if (result)
  {

    return ccder_blob_encode_tl(a1, a2, a3);
  }

  return result;
}

uint64_t ccrng_schedule_read(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 3;
  }

  result = (**a1)(a1);
  *(a1 + 8) = result == 3;
  return result;
}

uint64_t ccrng_schedule_atomic_flag_init(uint64_t result)
{
  *result = ccrng_schedule_atomic_flag_info;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t ccrng_schedule_timer_init(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  *a1 = ccrng_schedule_timer_info;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  result = a2();
  *(a1 + 32) = result;
  return result;
}

uint64_t ccrng_schedule_tree_init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = ccrng_schedule_tree_info;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t ccrng_schedule_timer_read(uint64_t a1)
{
  if (((*(a1 + 16))() - *(a1 + 32)) < *(a1 + 24))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t ccrng_schedule_timer_notify_reseed(uint64_t a1)
{
  result = (*(a1 + 16))();
  *(a1 + 32) = result;
  return result;
}

uint64_t ccrng_schedule_tree_read(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v3 = 3;
  }

  else
  {
    v3 = (**v2)(*(a1 + 16));
    *(v2 + 8) = v3 == 3;
  }

  v4 = *(a1 + 24);
  if (*(v4 + 8))
  {
    LODWORD(result) = 3;
  }

  else
  {
    LODWORD(result) = (**v4)(v4);
    *(v4 + 8) = result == 3;
  }

  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t ccrng_schedule_tree_notify_reseed(uint64_t a1)
{
  v2 = *(a1 + 16);
  v2[8] = 0;
  (*(*v2 + 8))(v2);
  v3 = *(a1 + 24);
  v3[8] = 0;
  v4 = *(*v3 + 8);

  return v4();
}

uint64_t ccder_sizeof_len(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = 3;
  v3 = 4;
  v4 = 5;
  v5 = 6;
  v6 = 7;
  v7 = 8;
  if (HIBYTE(a1))
  {
    v7 = 9;
  }

  if (HIWORD(a1))
  {
    v6 = v7;
  }

  if (a1 >> 40)
  {
    v5 = v6;
  }

  if (HIDWORD(a1))
  {
    v4 = v5;
  }

  if (a1 >> 24)
  {
    v3 = v4;
  }

  if (a1 >= 0x10000)
  {
    v2 = v3;
  }

  if (a1 >= 0x100)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t ccaes_vng_ctr_crypt(void *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  if (a2)
  {
    v10 = a2;
    v11 = *a1;
    v12 = (*(*a1 + 8) + 7) >> 3;
    v13 = a1 + 2;
    v14 = &a1[2 * v12 + 2];
    v15 = &a1[v12 + 2];
    v16 = &a1[v12];
    while (1)
    {
      if (v7 == 16)
      {
        if (v10 >= 0x10)
        {
          aes_ctr_crypt(a3, a4, v10 & 0xFFFFFFFFFFFFFFF0, v15, v14, a6);
          a4 = (a4 + (v10 & 0xFFFFFFFFFFFFFFF0));
          a3 = (a3 + (v10 & 0xFFFFFFFFFFFFFFF0));
          v10 &= 0xFu;
        }

        (*(v11 + 24))(v14, 1, v15, a1 + 2);
        v17 = 31;
        do
        {
          if ((v17 - 15) < 9)
          {
            break;
          }

          v18 = (*(v16 + v17--))++ + 1;
        }

        while ((v18 & 0x100) != 0);
        v7 = 0;
        v19 = 0;
        if (!v10)
        {
          break;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        a4->i8[v20] = *(v13 + v7 + v20) ^ a3->i8[v20];
        v22 = (v20 + 1 + v7) > 0xF || v10 - 1 == v20;
        ++v20;
      }

      while (!v22);
      v7 += v21;
      a3 = (a3 + v21);
      a4 = (a4 + v21);
      v10 -= v21;
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v19 = v7;
  }

  a1[1] = v19;
  return 0;
}

uint64_t ccder_sizeof_tag(uint64_t a1)
{
  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >> 28)
  {
    v5 = 6;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  if (v1 >= 0x1F)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void *cczp_to_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t cc_try_abort_if (uint64_t result)
{
  if (result)
  {
    cc_abort();
  }

  return result;
}

unint64_t cczp_negate(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = cczp_n(a1);
  v7 = ccn_n(v6, a3) != 0;
  v8 = cczp_prime(a1);

  return ccn_cond_rsub(v6, v7, a2, a3, v8);
}

unint64_t cczp_cond_negate(uint64_t a1, char a2, uint64_t *a3, unint64_t *a4)
{
  v8 = cczp_n(a1);
  if (ccn_n(v8, a4))
  {
    v9 = a2 & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = cczp_prime(a1);

  return ccn_cond_rsub(v8, v9, a3, a4, v10);
}

void *cczp_from_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

unint64_t ccn_mul1_asm(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4) >> 64;
    *a2++ = v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = v6 * a4 + __PAIR128__(v7 * a4, v4);
    v4 = (__CFADD__(__CFADD__(v6 * a4, v4), (v6 * a4) >> 64) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v8;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v9 = a1 < 4;
    a1 -= 4;
    if (v9)
    {
      break;
    }

    v11 = *a3;
    v12 = a3[1];
    v10 = a3 + 2;
    v14 = *v10;
    v15 = v10[1];
    a3 = v10 + 2;
    v16 = (v12 * a4) >> 64;
    v17 = __CFADD__(__CFADD__(v11 * a4, v4), (v11 * a4) >> 64);
    v13 = v11 * a4 + __PAIR128__(v12 * a4, v4);
    *a2 = v13;
    v18 = a2 + 2;
    v19 = (v14 * a4) >> 64;
    v20 = v16 + (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4;
    v22 = __CFADD__(v17 | __CFADD__(v12 * a4, *(&v13 + 1)), v14 * a4) | __CFADD__(v16, (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4);
    v17 = __CFADD__(v22, v19);
    v21 = v22 + v19;
    v4 = (v17 | __CFADD__(v15 * a4, v21)) + ((v15 * a4) >> 64);
    *v18 = v20;
    v18[1] = v15 * a4 + v21;
    a2 = v18 + 2;
  }

  return v4;
}

uint64_t ccdigest_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v8 = (*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  ccdigest_init_internal(a1, v9);
  ccdigest_update_internal(a1, v9, a2, a3);
  (*(a1 + 56))(a1, v9, a4);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

uint64_t ccdigest(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccdigest_final_64be(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = (v7 + v6 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  memcpy(v10, a2, v7 + v6 + 12);
  v11 = v10 + v7;
  v12 = v10 + v7 + 8;
  v13 = (v12 + v6);
  v14 = *(v12 + v6);
  *v10 += (8 * v14);
  *(v12 + v6) = v14 + 1;
  *(v12 + v14) = 0x80;
  v15 = *(v12 + v6);
  if (v15 < 0x39)
  {
    if (v15 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v15 <= 0x3F)
    {
      do
      {
        *v13 = v15 + 1;
        *(v12 + v15) = 0;
        v15 = *v13;
      }

      while (v15 < 0x40);
    }

    (*(a1 + 48))(v10 + 1, 1);
    v15 = 0;
    v11 = v10 + *(a1 + 8);
    v12 = (v11 + 8);
    v13 = &v11[*(a1 + 16) + 8];
    *v13 = 0;
  }

  do
  {
    *v13 = v15 + 1;
    *(v12 + v15) = 0;
    v15 = *v13;
  }

  while (v15 < 0x38);
LABEL_9:
  *(v11 + 8) = bswap64(*v10);
  (*(a1 + 48))(v10 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      *(a3 + v16) = bswap32(*(v10 + v17 + 2));
      v17 = v18++;
      v16 += 4;
    }

    while (v17 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
}

void *ccdigest_init_internal(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return result;
}

unint64_t *ccdigest_update_internal(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *(v9 + v8))
  {
    *(v9 + v8) = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memcpy(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

void *ccdrbg_factory_nistctr(void *result, uint64_t a2)
{
  *result = 88;
  result[1] = init_1;
  result[3] = generate_2;
  result[2] = reseed;
  result[4] = done;
  result[5] = a2;
  result[6] = must_reseed;
  return result;
}

uint64_t init_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 40);
  cc_clear(0x58uLL, a2);
  v18 = *v12;
  v19 = v12[1];
  *(a2 + 56) = *v12;
  *(a2 + 64) = v19;
  *(a2 + 72) = *(v12 + 4);
  v20 = v12[3];
  *(a2 + 80) = v20;
  if (v19 >= 0x21 || *(v18 + 16) != 16)
  {
    cc_try_abort();
  }

  if (!v20)
  {
    if (v19 + 16 >= a7 && v19 + 16 == a3)
    {
      v28 = 0u;
      v29 = 0u;
      __s = 0u;
      __memcpy_chk();
      for (; a7; --a7)
      {
        *(&v26 + a7 + 7) ^= *(a8 - 1 + a7);
      }

      goto LABEL_8;
    }

    v21 = 4294967233;
LABEL_16:
    cc_clear(0x20uLL, a2);
    cc_clear(0x10uLL, (a2 + 32));
    v23 = -1;
    goto LABEL_9;
  }

  v21 = 4294967233;
  if ((a3 - 65537) < 0xFFFFFFFFFFFF000FLL || a7 > 0x10000)
  {
    goto LABEL_16;
  }

  v28 = 0u;
  v29 = 0u;
  __s = 0u;
  HIBYTE(v26) = HIBYTE(a8);
  v22 = derive(a2, &__s, 3u, v13, v14, v15, v16, v17, a3);
  if (v22)
  {
    v21 = v22;
    goto LABEL_16;
  }

  v19 = *(a2 + 64);
LABEL_8:
  cc_clear(v19, a2);
  cc_clear(0x10uLL, (a2 + 32));
  update(a2, &__s);
  v21 = 0;
  v23 = 1;
LABEL_9:
  *(a2 + 48) = v23;
  cc_clear(0x30uLL, &__s);
  return v21;
}

uint64_t done(char *__s)
{
  cc_clear(0x20uLL, __s);
  result = cc_clear(0x10uLL, __s + 32);
  *(__s + 6) = -1;
  return result;
}

uint64_t derive(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  memset(v16, 0, sizeof(v16));
  v15 = &a9;
  if (a3)
  {
    v10 = a3;
    v11 = v16 + 1;
    v12 = a3;
    do
    {
      v13 = v15;
      *v11 = *v15;
      v15 += 2;
      *(v11 - 1) = v13[1];
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  return ccdrbg_df_derive_keys(*(a1 + 80), v10, v16, *(a1 + 64) + 16, a2);
}

uint64_t update(uint64_t a1, uint64_t a2)
{
  v4 = (ccctr_context_size(*(a1 + 56)) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v9 - v4;
  bzero(&v9 - v4, v4);
  inc_uint(a1 + 40, 8uLL);
  v6 = *(a1 + 64);
  ccctr_init_internal(*(a1 + 56));
  update_with_ctr(a1, v5, a2);
  v7 = ccctr_context_size(*(a1 + 56));
  return cc_clear(v7, v5);
}

uint64_t update_with_ctr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccctr_update_internal(*(a1 + 56), a2, *(a1 + 64), a3, a1);
  v6 = *(a1 + 56);
  v7 = a3 + *(a1 + 64);

  return ccctr_update_internal(v6, a2, 16, v7, a1 + 32);
}

uint64_t ccec_affinify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  v9 = *a2;
  v10 = cczp_inv_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v11 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  v12 = *a2;
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v10;
}

uint64_t ccec_affinify_x_only_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  v9 = *a2;
  cczp_sqr_ws(a1, a2);
  v10 = cczp_inv_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v10;
}

uint64_t ccn_sqr_ws(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  result = ccn_mul1(a2 - 1, a3 + 1, a4 + 1, *a4);
  a3[a2] = result;
  v8 = *a4;
  v9 = (v8 * v8) >> 64;
  v10 = v8 * v8;
  v11 = a3[1];
  v12 = __CFADD__(v9, 2 * v11);
  v13 = v9 + 2 * v11;
  if (v12)
  {
    v14 = (v11 >> 63) + 1;
  }

  else
  {
    v14 = v11 >> 63;
  }

  *a3 = v10;
  a3[1] = v13;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    v16 = 0;
    v17 = &a3[a2 + 1];
    v18 = a3 + 3;
    do
    {
      result = ccn_addmul1(v15, v18, &a4[v16 + 2], a4[v16 + 1]);
      *(v17 + v16 * 8) = result;
      v19 = a4[v16 + 1];
      v20 = (v19 * v19) >> 64;
      v21 = v19 * v19;
      v12 = __CFADD__(v21, v14);
      v22 = v21 + v14;
      if (v12)
      {
        ++v20;
      }

      v23 = *(v18 - 1);
      v24 = v23 >> 63;
      v12 = __CFADD__(v20, 2 * *v18);
      v25 = v20 + 2 * *v18;
      if (v12)
      {
        v26 = (*v18 >> 63) + 1;
      }

      else
      {
        v26 = *v18 >> 63;
      }

      v12 = __CFADD__(v22, 2 * v23);
      v27 = v22 + 2 * v23;
      v29 = v12;
      v12 = __CFADD__(v12, v25);
      v28 = v29 + v25;
      v12 |= __CFADD__(v24, v28);
      v28 += v24;
      if (v12)
      {
        v14 = v26 + 1;
      }

      else
      {
        v14 = v26;
      }

      *(v18 - 1) = v27;
      *v18 = v28;
      ++v16;
      --v15;
      v18 += 2;
    }

    while (v15 != -1);
  }

  return result;
}

uint64_t ccn_mod_521_ws(uint64_t a1, uint64_t a2, uint64_t *a3, int8x16_t *a4)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  ccn_shift_right(9, v12, a4 + 4, 9);
  v13 += a4[4].i64[0] & 0x1FF;
  v8 = ccn_add_ws(a1, 8, v12, v12[0].i64, a4->i64);
  v13 += v8;
  v9 = cczp_prime(a2);
  v10 = ccn_sub_ws(a1, 9, v14, v12[0].i64, v9);
  return ccn_mux(9, v10, a3, v12[0].i64, v14);
}

uint64_t ccec_double_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v7 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v8 = *a2;
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  return ccec_export_affine_point_public_value(v4, 1, v3, &v6, a2);
}

uint64_t ccec_add_normalized_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *a2;
  v14 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, *a2);
  v11 = (*(a1 + 24))(a1, v9);
  (*(a1 + 24))(a1, v9);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  if (a6)
  {
    cczp_add_ws(a1, a2);
  }

  else
  {
    cczp_sub_ws(a1, a2);
  }

  if (ccn_n(v9, v10) || ccn_n(v9, v11))
  {
    if (ccn_n(v9, v10) || !ccn_n(v9, v11))
    {
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      result = cczp_div2_ws(a1, a2, &a3[v9], &a3[v9]);
    }

    else
    {
      ccn_seti(v9, a3, 1);
      cczp_to_ws(a1, a2);
      ccn_set(v9, &a3[v9], a3);
      result = cc_clear(8 * v9, &a3[2 * v9]);
    }
  }

  else
  {
    result = ccec_double_ws(a1, a2);
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_full_add_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    ccn_set(v11, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 0);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_full_add_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v17 = a4 + 8 * *a2;
  v7 = cczp_n(a2);
  v18 = *(a1 + 16);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  ccec_map_to_homogeneous_ws(a1, a2);
  ccec_map_to_homogeneous_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v8 = cczp_n(a2);
  v9 = *a2;
  v10 = &a3[*a2];
  v11 = (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8);
  ccn_set(v8, v11, v10);
  cczp_from_ws(a1, a2);
  v13 = ccn_n(v8, v12) == 1 && *v12 == 1;
  v14 = ccn_n(v8, a3);
  if (ccn_n(v8, &a3[2 * v9]) | v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_mux(v8, v15, a3, v11, a3);
  result = ccn_mux(v8, v15, v10, v11, v10);
  *(a1 + 16) = v18;
  return result;
}

uint64_t ccec_map_to_homogeneous_ws(uint64_t a1, uint64_t *a2)
{
  v4 = cczp_n(a2);
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  cczp_mul_ws(a1, a2);
  v7 = *a2;
  cczp_sqr_ws(a1, a2);
  v8 = *a2;
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_full_sub_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    cczp_negate(a2, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 1);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_full_sub_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * *a2);
  ccn_set(v8, v10, a5);
  cczp_negate(a2, &v10[8 * *a2], &a5[8 * *a2]);
  ccn_set(v8, &v10[16 * *a2], &a5[16 * *a2]);
  result = ccec_full_add_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_affine_point_from_x_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v7);
  if ((ccn_cmp_internal(*a2, a4, a2 + 3) & 0x80000000) != 0)
  {
    cczp_to_ws(a1, a2);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    v10 = &a2[2 * *a2];
    cczp_add_ws(a1, a2);
    v11 = *a2;
    result = cczp_sqrt_ws(a1, a2);
    if (!result)
    {
      cczp_from_ws(a1, a2);
      v12 = *a2;
      cczp_from_ws(a1, a2);
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t ccec_mult_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unint64_t a5, uint64_t *a6)
{
  v12 = a2 + 4;
  if (cczp_bitlen(&a2[5 * *a2 + 4]) < a5)
  {
    return 4294967289;
  }

  v58 = a3;
  __src = a4;
  v61 = v12;
  v14 = *a2;
  v15 = (a5 + 63) >> 6;
  v60 = *(a1 + 16);
  v16 = 3 * *a2;
  v17 = (*(a1 + 24))(a1, v16);
  v18 = (*(a1 + 24))(a1, v14);
  v62 = ccn_n(v14, a6) == 0;
  if (a5 + 63 >= 0x40)
  {
    ccn_set((a5 + 63) >> 6, v18, a4);
  }

  ccn_zero(v14 - v15, v18 + 8 * v15);
  v18->i64[v15 - 1] &= 0xFFFFFFFFFFFFFFFFLL >> -a5;
  v57 = (a5 + 63) >> 6;
  v64 = v18;
  ccn_shift_right(v57, v18, v18, v62);
  ccec_double_ws(a1, a2);
  ccn_mux(3 * v14, !v62, v17, a6, v17);
  if (!ccn_n(v14, v17))
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (cczp_bitlen(&v61[5 * *a2]) >= a5)
  {
    v19 = *a2;
    if (ccn_n(*a2, v17))
    {
      v54 = v16;
      v52 = *(a1 + 16);
      v20 = (*(a1 + 24))(a1, 2 * v19);
      v21 = (*(a1 + 24))(a1, 2 * v19);
      v63 = 2 * v19;
      v22 = (*(a1 + 24))(a1, 2 * v19);
      v23 = *a2;
      v49 = *(a1 + 16);
      __dst = v22;
      (*(a1 + 24))(a1, *a2);
      v56 = v19;
      (*(a1 + 24))(a1, v23);
      (*(a1 + 24))(a1, v23);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v24 = *a2;
      cczp_sqr_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v25 = *a2;
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v53 = v17;
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v26 = a1;
      v27 = a1;
      v28 = v20;
      cczp_sub_ws(v26, a2);
      cczp_mul_ws(v27, a2);
      cczp_sqr_ws(v27, a2);
      cczp_add_ws(v27, a2);
      cczp_sub_ws(v27, a2);
      v29 = v18;
      v30 = *(v18->u64 + (((a5 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
      v55 = v27;
      *(v27 + 16) = v49;
      v31 = (v30 >> (a5 - 1)) & 1;
      v32 = !((v30 >> (a5 - 1)) & 1);
      v33 = &v21[v56];
      v34 = a5 - 2;
      if (v34)
      {
        v35 = v31;
        do
        {
          v36 = v31;
          v31 = (*(v29->i64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1;
          cczp_cond_negate(a2, v32, v33, v33);
          ccn_cond_swap(v63, v31 ^ v36 | v35 ^ 1, v28, v21);
          ccec_mult_XYCZaddC_ws(v55, a2);
          ccec_mult_XYCZadd_ws(v55, a2);
          LOBYTE(v32) = v31 & (v35 ^ 1);
          v29 = v18;
          v35 |= v31;
          --v34;
        }

        while (v34);
        v50 = v35 ^ 1;
      }

      else
      {
        v50 = v32;
      }

      cczp_cond_negate(a2, v32, v33, v33);
      ccn_cond_swap(v63, v29->i8[0] & 1 ^ v31, v28, v21);
      ccec_mult_XYCZaddC_ws(v55, a2);
      ccn_set(v63, __dst, v21);
      v37 = v29->i64[0];
      ccn_cond_swap(v63, v29->i8[0] & 1, v28, v21);
      v38 = *a2;
      v39 = v28;
      a1 = v55;
      v40 = v58;
      v48 = *(v55 + 16);
      cczp_sub_ws(v55, a2);
      cczp_mul_ws(v55, a2);
      cczp_mul_ws(v55, a2);
      v41 = *a2;
      cczp_mul_ws(v55, a2);
      v42 = *a2;
      cczp_mul_ws(v55, a2);
      cczp_sqr_ws(v55, a2);
      cczp_mul_ws(v55, a2);
      *(v55 + 16) = v48;
      ccn_cond_swap(v63, v37 & 1, v39, v21);
      ccec_mult_XYCZadd_ws(v55, a2);
      ccn_mux(v63, v37 & 1, v39, v21, v39);
      cczp_mul_ws(v55, a2);
      v43 = *a2;
      cczp_mul_ws(v55, a2);
      v44 = cczp_prime(&v61[5 * *a2]);
      ccn_sub1(v56, __dst, v44, 1uLL);
      v45 = (ccn_cmpn_internal(v57, v64, v56, __dst) & 1) == 0;
      is_point_at_infinity = ccec_is_point_at_infinity(a2, v53);
      ccn_mux(3 * v56, v50 | is_point_at_infinity | v45, v40, v53, v40);
      cczp_cond_negate(a2, v45, &v40[*a2], &v40[*a2]);
      v47 = v50 & ~v64->i32[0];
      ccn_cond_clear(v56, v50 & ~v64->i8[0] & 1, &v58[2 * *a2]);
      ccn_seti(v56, v39, 1);
      cczp_to_ws(v55, a2);
      ccn_mux(v56, v47 & 1, v40, v39, v40);
      ccn_mux(v56, v47 & 1, &v40[*a2], v39, &v40[*a2]);
      *(v55 + 16) = v52;
      ccec_full_add_ws(v55, a2);
      ccn_mux(v54, *__src & v62, v40, v53, v40);
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  result = 4294967289;
LABEL_16:
  *(a1 + 16) = v60;
  return result;
}

uint64_t ccec_mult_XYCZaddC_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_mult_XYCZadd_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

unint64_t ccn_addmul1_asm(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4 + *a2) >> 64;
    *a2++ += v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = *a2 + __PAIR128__(v7 * a4, v4);
    v9 = v8 + v6 * a4;
    v4 = (__CFADD__(__CFADD__(v8, v6 * a4), *(&v8 + 1)) | __CFADD__((v6 * a4) >> 64, *(&v9 + 1))) + (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v9;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v10 = a1 < 4;
    a1 -= 4;
    if (v10)
    {
      break;
    }

    v11 = a2[2];
    v12 = a2[3];
    v14 = *a3;
    v15 = a3[1];
    v13 = a3 + 2;
    v16 = *v13;
    v17 = v13[1];
    a3 = v13 + 2;
    v18 = (v15 * a4) >> 64;
    v19 = *a2 + __PAIR128__(v15 * a4, v4);
    v20 = __CFADD__(__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1)), v11);
    v21 = (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1))) + v11;
    v20 |= __CFADD__(v18, v21);
    v21 += v18;
    v23 = v20;
    v20 = __CFADD__(v20, v12);
    v22 = v23 + v12;
    v20 |= __CFADD__(v17 * a4, v22);
    v22 += v17 * a4;
    v24 = v20 + ((v17 * a4) >> 64);
    v25 = v19 + v14 * a4;
    *a2 = v25;
    v26 = a2 + 2;
    v27 = (v16 * a4) >> 64;
    v29 = __CFADD__(__CFADD__(v19, v14 * a4), *(&v19 + 1)) | __CFADD__((v14 * a4) >> 64, *(&v25 + 1));
    v20 = __CFADD__(v29, v21);
    v28 = v29 + v21;
    v31 = v20 | __CFADD__(v16 * a4, v28);
    v20 = __CFADD__(v31, v22);
    v30 = v31 + v22;
    v4 = (v20 | __CFADD__(v27, v30)) + v24;
    *v26 = v16 * a4 + v28;
    v26[1] = v27 + v30;
    a2 = v26 + 2;
  }

  return v4;
}

unsigned int (**ccec_projectify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t)))(void, unint64_t, uint64_t)
{
  v5 = a5;
  v9 = *(a1 + 16);
  if (a5)
  {
    v10 = cczp_bitlen(a2);
    ccn_random_bits(v10 - 1, a3 + 16 * *a2, v5);
    v5 = v11;
    ccn_set_bit(a3 + 16 * *a2, v10 - 2, 1);
    v12 = *a2;
    cczp_sqr_ws(a1, a2);
    v13 = *a2;
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v14 = *a2;
    cczp_mul_ws(a1, a2);
  }

  else
  {
    ccn_seti(*a2, (a3 + 16 * *a2), 1);
    cczp_to_ws(a1, a2);
    v16 = *a2;
  }

  cczp_to_ws(a1, a2);
  v15 = *a2;
  cczp_to_ws(a1, a2);
  *(a1 + 16) = v9;
  return v5;
}

uint64_t ccec_twin_mult_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v12 = *a2;
  v31 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v12);
  v13 = (*(a1 + 24))(a1, v12);
  v32 = 3 * v12;
  v14 = (*(a1 + 24))(a1, 12 * v12);
  v15 = v14 + 48 * v12;
  v33 = v14;
  v16 = v14 + 72 * v12;
  ccec_full_add_ws(a1, a2);
  ccec_full_sub_ws(a1, a2, v16, a5, a7);
  v17 = *a2;
  cczp_mul_ws(a1, a2);
  v18 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v30 = cczp_inv_ws(a1, a2);
  if (!v30)
  {
    v19 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    v20 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    v21 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    v22 = *a2;
    ccec_twin_mult_normalize_ws(a1, a2);
    ccn_seti(v12, v13, 1);
    v23 = *a2;
    cczp_to_ws(a1, a2);
    ccn_set(v12, (v33 + 24 * v12 + 16 * *a2), (v33 + 16 * *a2));
    ccn_set(v12, (v15 + 16 * *a2), (v33 + 16 * *a2));
    ccn_set(v12, (v16 + 16 * *a2), (v33 + 16 * *a2));
    v24 = ccn_bitlen_internal(v12, a4);
    v25 = ccn_bitlen_internal(v12, a6);
    v34[1] = 0;
    v34[2] = 0;
    if (v24 <= v25)
    {
      v24 = v25;
    }

    v34[0] = 0;
    ccn_recode_jsf_init(v34, v24, a4, a6);
    ccn_set(v12, a3, (v33 + 16 * *a2));
    ccn_set(v12, &a3[8 * *a2], (v33 + 16 * *a2));
    cc_clear(8 * v12, &a3[16 * *a2]);
    for (; v24 != -1; --v24)
    {
      ccec_double_ws(a1, a2);
      v35 = 0;
      ccn_recode_jsf_column(v34, v24, &v35);
      if (v35)
      {
        v26 = (v33 + 8 * ccn_recode_jsf_index(&v35) * v32);
        if (ccn_recode_jsf_direction(&v35) == 1)
        {
          ccec_full_add_normalized_ws(a1, a2, a3, a3, v26);
        }

        else
        {
          ccec_full_sub_normalized_ws(a1, a2, a3, a3, v26);
        }
      }
    }
  }

  *(a1 + 16) = v31;
  return v30;
}

uint64_t ccec_twin_mult_normalize_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v6 = *a2;
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t cc_cmp_safe_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = timingsafe_enable_if_supported();
  v4 = v3 != 0;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccec_x963_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  if (!a3)
  {
    return 4294967289;
  }

  if (a3 == 1)
  {
    v10 = *a4;
    if (!*a4)
    {
      return 4294967136;
    }
  }

  else
  {
    v10 = *a4;
  }

  v12 = v10 - 2;
  if (v12 > 5 || ((0x37u >> v12) & 1) == 0)
  {
    return 4294967289;
  }

  v13 = dword_1001C4E00[v12];
  v14 = *(a1 + 16);
  *a5 = a2;
  result = ccec_import_affine_point_ws(a1, a2, v13, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &a5[2 * **a5 + 2], 1);
    v15 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v15, (a5 + 2));
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_x963_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (!v8)
  {
    return 4294967283;
  }

  v10 = ccec_x963_import_pub_ws(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

uint64_t ccrng_crypto_generate(uint64_t a1, rsize_t a2, char *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v7 = a3;
  while (1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      os_unfair_lock_lock(v8);
      v9 = *(a1 + 24);
      if (v9)
      {
        os_unfair_lock_assert_owner(v9);
      }
    }

    memset(v27, 0, sizeof(v27));
    v10 = *(a1 + 56);
    v11 = ccrng_schedule_read(*(a1 + 16));
    if (v11 == 1)
    {
      goto LABEL_13;
    }

    v12 = v11;
    seed = ccentropy_get_seed(*(a1 + 8), v10, v27);
    if (seed != -10)
    {
      break;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v14 = 4294967134;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

      goto LABEL_36;
    }

LABEL_13:
    if (v6 >= *(a1 + 48))
    {
      v16 = *(a1 + 48);
    }

    else
    {
      v16 = v6;
    }

    v17 = *(a1 + 24);
    if (v17)
    {
      os_unfair_lock_assert_owner(v17);
    }

    if (a2 <= 0xB && (v18 = *(a1 + 64), v18 >= v16))
    {
      v21 = *(a1 + 72);
      v22 = *(a1 + 80);
      v23 = v18 - v22;
      if (v18 - v22 >= v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = v18 - v22;
      }

      memcpy(v7, (v21 + v22), v24);
      cc_clear(v24, (v21 + v22));
      *(a1 + 80) += v24;
      if (v23 < v16)
      {
        v19 = drbg_generate(a1, *(a1 + 64), *(a1 + 72));
        if (v19)
        {
LABEL_39:
          v14 = v19;
          goto LABEL_36;
        }

        memcpy(&v7[v24], *(a1 + 72), v16 - v24);
        cc_clear(v16 - v24, *(a1 + 72));
        *(a1 + 80) = v16 - v24;
      }
    }

    else
    {
      v19 = drbg_generate(a1, v16, v7);
      if (v19)
      {
        goto LABEL_39;
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      os_unfair_lock_unlock(v20);
    }

    v7 += v16;
    v6 -= v16;
    if (!v6)
    {
      return 0;
    }
  }

  v14 = seed;
  if (seed)
  {
    goto LABEL_41;
  }

  v15 = drbg_reseed(a1, v10, v27, 0, 0);
  if (!v15)
  {
    ccrng_schedule_notify_reseed(*(a1 + 16));
    cc_clear(v10, v27);
    goto LABEL_13;
  }

  v14 = v15;
LABEL_41:
  cc_clear(v10, v27);
LABEL_36:
  v26 = *(a1 + 24);
  if (v26)
  {
    os_unfair_lock_unlock(v26);
  }

  cc_clear(a2, a3);
  return v14;
}

uint64_t ccrng_crypto_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 > 0x40)
  {
    return 4294967291;
  }

  result = 0;
  *a1 = generate_0;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  a1[5] = a6;
  a1[6] = a7;
  a1[7] = a8;
  a1[8] = a9;
  a1[9] = a10;
  a1[10] = a9;
  return result;
}

uint64_t drbg_generate(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  if (v6)
  {
    os_unfair_lock_assert_owner(v6);
  }

  v7 = a1[4];
  v8 = a1[5];

  return ccdrbg_generate(v7, v8, a2, a3, 0, 0);
}

uint64_t cczp_inv_default_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = cczp_n(a2);
  v8 = cczp_prime(v6);
  v9 = v7;
  if ((ccn_cmp_internal(v7, a4, v8) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  __s = a3;
  v11 = v7 << 7;
  v12 = a1;
  v39 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v7);
  v14 = (*(v12 + 24))(v12, v9);
  v49 = v13;
  cczp_from_ws(a1, v6);
  v15 = cczp_prime(v6);
  ccn_set(v9, v14, v15);
  v16 = (*(v12 + 24))(v12, v9);
  v17 = (*(v12 + 24))(v12, v9);
  v44 = v16;
  ccn_seti(v9, v16, 1);
  __n = 8 * v9;
  v45 = v17;
  cc_clear(8 * v9, v17);
  __src = (*(v12 + 24))(v12, v9);
  if (v11)
  {
    v18 = 0;
    v19 = ((v11 | 0x1EuLL) * 0x842108421084211uLL) >> 64;
    v20 = (v19 + (((v11 | 0x1EuLL) - v19) >> 1)) >> 4;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v42 = v20;
    v43 = v6;
    v41 = v14;
    do
    {
      v47 = v18;
      v50 = 0;
      v51 = 0;
      ccn_gcd_approximate(v9, v49, &v51, v14, &v50);
      v21 = 0;
      v22 = 0;
      LOBYTE(v23) = v51;
      v24 = 31;
      v25 = 0x80000000;
      v26 = 0x80000000;
      do
      {
        v27 = v23 & 1;
        v28 = -v27;
        v51 >>= 1 - v27;
        v29 = -((((v51 - v50) ^ v51 | v50 ^ v51) ^ v51) >> 63) & -v27;
        v30 = v51 & ~v29 | v50 & v29;
        v50 ^= v51 ^ v30;
        v31 = v26 & ~v29 | v29 & v22;
        v22 ^= v26 ^ v31;
        v32 = v21 & ~v29 | v29 & v25;
        v25 ^= v21 ^ v32;
        v23 = (v30 - (v50 & -v27)) >> v27;
        v51 = v23;
        v26 = (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1);
        v21 = (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1);
        --v24;
      }

      while (v24);
      v33 = v9;
      updated = ccn_gcd_update_ws(a1, v9, __src, v49, (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1), v14, (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1));
      v35 = ccn_gcd_update_ws(a1, v33, v14, v49, v22, v14, v25);
      ccn_set(v33, v49, __src);
      v36 = -updated & -v26;
      v37 = (updated - 1) & v26;
      v6 = v43;
      cczp_inv_update_redc_ws(a1, v43, __src, v44, v37 | v36, v45, (updated - 1) & v21 | -updated & -v21);
      v14 = v41;
      cczp_inv_update_redc_ws(a1, v43, v45, v44, (v35 - 1) & v22 | -v35 & -v22, v45, (v35 - 1) & v25 | -v35 & -v25);
      v9 = v33;
      ccn_set(v33, v44, __src);
      v18 = v47 + 1;
    }

    while (v47 + 1 != v42);
  }

  if (ccn_n(v9, v14) == 1 && *v14 == 1)
  {
    cczp_to_ws(a1, v6);
    result = 0;
  }

  else
  {
    cc_clear(__n, __s);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
  return result;
}

uint64_t cczp_inv_update_redc_ws(uint64_t a1, void *a2, void *a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  v11 = cczp_n(a2);
  v22 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v11 + 1);
  v13 = (*(a1 + 24))(a1, v11);
  cczp_cond_negate(a2, a5 < 0, v12->i64, a4);
  cczp_cond_negate(a2, a7 < 0, v13, a6);
  v12->i64[v11] = ccn_mul1(v11, v12, v12, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  v12->i64[v11] += ccn_addmul1(v11, v12, v13, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v14 = cczp_prime(a2);
  v12->i64[v11] += ccn_addmul1(v11, v12, v14, (LODWORD(a2[*a2 + 3]) * v12->i32[0]) & 0x7FFFFFFF);
  ccn_shift_right(v11 + 1, v12, v12, 31);
  ccn_set(v11, a3, v12);
  v15 = cczp_prime(a2);
  v16 = ccn_subn(v11 + 1, v12, v12->i64, v11, v15);
  result = ccn_mux(v11, v16, a3, a3, v12->i64);
  *(a1 + 16) = v22;
  return result;
}

uint64_t ccmode_ctr_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 48);
  *a2 = v8;
  v9 = a2 + ((2 * *(v8 + 8) + 14) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = (*(v8 + 16))();
  (*(a1 + 32))(a1, a2, a5);
  return v10;
}

uint64_t ccn_cmpn_public_value(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  if (a1 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 < a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = ccn_cmp_public_value(v4, a2, a4);
  if (ccn_n(v6 - v4, v5 + 8 * v4))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t cczp_sqrt_tonelli_shanks_precomp_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v12 = cczp_n(a2);
  v25 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  v16 = (*(a1 + 24))(a1, v12);
  v24 = a4;
  result = cczp_power_fast_ws(a1, a2, a3, a4, a6);
  v18 = v25;
  if (!result)
  {
    ccn_seti(v12, v16, 1);
    v27 = v16;
    cczp_to_ws(a1, a2);
    ccn_set(v12, v15, a7);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v19 = a5 - 2;
    if (a5 >= 2)
    {
      while (1)
      {
        ccn_set(v12, v14, v13);
        --a5;
        v20 = v19;
        if (a5 < 2)
        {
          break;
        }

        do
        {
          cczp_sqr_ws(a1, a2);
          --v20;
        }

        while (v20);
        v21 = ccn_cmp_internal(v12, v14, v27) & 1;
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, a3, v14, a3);
        cczp_sqr_ws(a1, a2);
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, v13, v14, v13);
        --v19;
      }

      v22 = ccn_cmp_internal(v12, v14, v27) & 1;
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, a3, v14, a3);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, v13, v14, v13);
    }

    cczp_sqr_ws(a1, a2);
    if (ccn_cmp_internal(v12, v14, v24))
    {
      result = 4294967289;
    }

    else
    {
      result = 0;
    }

    v18 = v25;
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t cczp_sqrt_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = ~*cczp_prime(a2) & 3;
  v9 = cczp_n(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v9);
  v12 = cczp_prime(a2);
  if (v8)
  {
    ccn_set(v9, v11, v12);
    v11->i64[0] &= ~1uLL;
    v14 = ccn_trailing_zeros(v9, v11);
    ccn_shift_right_multi(v9, v11, v11, v14);
    v15 = (*(a1 + 24))(a1, v9);
    ccn_sub1(v9, v15, v11, 1uLL);
    ccn_shift_right(v9, v15, v15, 1);
    v16 = (*(a1 + 24))(a1, v9);
    ccn_seti(v9, v16, 1);
    while (!cczp_is_quadratic_residue_ws(a1, a2, v16))
    {
      ccn_add1_ws(a1, v9, v16, v16, 1);
    }

    result = cczp_power_fast_ws(a1, a2, v16, v16, v11);
    if (!result)
    {
      result = cczp_sqrt_tonelli_shanks_precomp_ws(a1, a2, a3, a4, v14, v15, v16);
    }
  }

  else
  {
    ccn_add1_ws(a1, v9, v11, v12, 1);
    ccn_shift_right(v9, v11, v11, 2);
    result = cczp_power_fast_ws(a1, a2, a3, a4, v11);
    if (!result)
    {
      cczp_sqr_ws(a1, a2);
      if (ccn_cmp_internal(v9, v11, a4))
      {
        result = 4294967289;
      }

      else
      {
        result = 0;
      }
    }
  }

  *(a1 + 16) = v10;
  return result;
}

BOOL ccec_is_point_projective_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  v8 = *a2;
  cczp_sqr_ws(a1, a2);
  v9 = &a2[2 * *a2];
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v10 = *a2;
  cczp_sqr_ws(a1, a2);
  result = ccn_cmp_internal(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccentropy_get_seed(uint64_t (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (**a1)(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccn_recode_jsf_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(result + 8) = a3;
  *(result + 16) = a4;
  v5 = 1;
  do
  {
    v6 = v5;
    *(result + v4) = (8 * ((*(a3 + 8 * ((a2 - 1) >> 6)) >> ((a2 - 1) & 0x3F)) & 1)) | (4 * ((*(a3 + 8 * ((a2 - 2) >> 6)) >> ((a2 - 2) & 0x3F)) & 1)) | (2 * ((*(a3 + 8 * ((a2 - 3) >> 6)) >> ((a2 - 3) & 0x3F)) & 1)) | (*(a3 + 8 * ((a2 - 4) >> 6)) >> ((a2 - 4) & 0x3F)) & 1;
    a3 = a4;
    v4 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t ccn_recode_jsf_column(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v12 = 0;
  if ((*result & 0x20) != 0)
  {
    v4 = *result & 0x1F ^ 0x1F;
  }

  else
  {
    v4 = *result & 0x1F;
  }

  LOBYTE(v12) = v4;
  if ((*(result + 1) & 0x20) != 0)
  {
    v5 = *(result + 1) & 0x1F ^ 0x1F;
  }

  else
  {
    v5 = *(result + 1) & 0x1F;
  }

  HIBYTE(v12) = v5;
  v11 = *(result + 8);
  v6 = &v11;
  v7 = 1;
  do
  {
    v8 = v7;
    if (a2 < 5)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = (*(*v6 + 8 * ((a2 - 5) >> 6)) >> ((a2 - 5) & 0x3F)) & 1;
    }

    if (*(&v12 + v3) >= F_2_2_11[*(&v12 + (v3 ^ 1))])
    {
      LOBYTE(v9) = v9 | 0x20;
      if ((*(result + v3) & 0x20) != 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = 0;
    *(a3 + 4 * v3) = v10;
    *(result + v3) = v9 ^ (2 * *(result + v3));
    v6 = (&v11 + 8);
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t ccn_recode_jsf_direction(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    if (!result && a1[1] == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ccec_compressed_x962_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  LODWORD(result) = ccec_x963_import_pub(a1, a2, a3, a4);
  if (result == -7)
  {
    return 4294967135;
  }

  else
  {
    return result;
  }
}

uint64_t cc_log_default()
{
  if (qword_100246F50 != -1)
  {
    cc_log_default_cold_1();
  }

  return _MergedGlobals_3;
}

os_log_t cc_log_init(os_log_t *a1)
{
  result = os_log_create("com.apple.corecrypto", "default");
  *a1 = result;
  return result;
}

BOOL ccn_add1_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    return ccn_add1_asm(a2, a3, a4, a5);
  }

  else
  {
    return a5;
  }
}

uint64_t ccsigma_init(uint64_t a1, uint64_t a2, int a3, uint64_t (**a4)(void, unint64_t, void *))
{
  v16 = timingsafe_enable_if_supported();
  *a2 = a1;
  *(a2 + 8) = a3;
  v8 = (*(a1 + 8))(a2);
  v9 = cc_malloc_clear(392 * **a1);
  v10 = *a1;
  v11 = 49 * **a1;
  v14[0] = v9;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v9)
  {
    key_fips_ws = ccec_generate_key_fips_ws(v14, v10, a4, v8);
    v15(v14);
  }

  else
  {
    key_fips_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return key_fips_ws;
}

uint64_t ccsigma_set_signing_function(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return 0;
}

uint64_t ccsigma_sign_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, char *a5, uint64_t (**a6)(void, unint64_t, void *))
{
  v12 = (*(*a1 + 48))(a1);
  v13 = *v12;
  v14 = cc_malloc_clear(280 * **v12);
  v15 = 35 * *v13;
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = 0;
  v20[3] = cc_ws_alloc;
  v21 = cc_ws_free;
  if (!v14)
  {
    return 4294967283;
  }

  v16 = *(*a1 + 40);
  if (*a4 < v16)
  {
    v18 = 4294967289;
    cc_ws_free(v20);
  }

  else
  {
    *a4 = v16;
    v17 = ccec_signature_r_s_size(v12);
    v18 = ccec_sign_composite_ws(v20, v12, a2, a3, a5, &a5[v17], a6);
    v21(v20);
  }

  return v18;
}

uint64_t ccsigma_import_peer_verification_key(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 56))(a1);
  v7 = ccec_x963_import_pub(*(*a1 + 24), a2, a3, v6);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccsigma_export_key_share(uint64_t **a1, rsize_t *a2, char *a3)
{
  v11 = timingsafe_enable_if_supported();
  v6 = ccec_compressed_x962_export_pub_size(**a1);
  v7 = *a2;
  if (*a2 < v6)
  {
    v9 = 4294967289;
    goto LABEL_4;
  }

  *a2 = v6;
  v8 = ((*a1)[1])(a1);
  v9 = ccec_compressed_x962_export_pub(v8, a3);
  if (v9)
  {
    v7 = *a2;
LABEL_4:
    cc_clear(v7, a3);
  }

  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t ccsigma_import_peer_key_share(unint64_t ***a1, uint64_t a2, unsigned __int8 *a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = ((*a1)[2])(a1);
  v7 = ccec_compressed_x962_import_pub(**a1, a2, a3, v6);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccsigma_kex_init_ctx(uint64_t a1)
{
  v1 = 16;
  if (!*(a1 + 8))
  {
    v1 = 8;
  }

  return (*(*a1 + v1))();
}

uint64_t ccsigma_kex_resp_ctx(uint64_t a1)
{
  v1 = 16;
  if (*(a1 + 8) == 1)
  {
    v1 = 8;
  }

  return (*(*a1 + v1))();
}

uint64_t ccsigma_derive_session_keys(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
{
  v20 = timingsafe_enable_if_supported();
  v8 = *a1;
  v9 = cczp_bitlen(**a1);
  v19 = (v9 + 7) >> 3;
  memset(v21, 0, sizeof(v21));
  if ((v9 + 7) <= 0x107)
  {
    v11 = (v8[1])(a1);
    v12 = ((*a1)[2])(a1);
    v13 = *v11;
    v14 = cc_malloc_clear(232 * **v11);
    v15 = 29 * *v13;
    v17[0] = v14;
    v17[1] = v15;
    v17[2] = 0;
    v17[3] = cc_ws_alloc;
    v18 = cc_ws_free;
    if (v14)
    {
      v10 = ccecdh_compute_shared_secret_ws(v17, v11, v12, &v19, v21, a4);
      v18(v17);
      if (!v10)
      {
        v10 = (v8[12])(a1, v19, v21, a2, a3);
      }
    }

    else
    {
      v10 = 4294967283;
    }
  }

  else
  {
    v10 = 4294967291;
  }

  cc_disable_dit_with_sb(&v20);
  return v10;
}

uint64_t ccsigma_verify(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = timingsafe_enable_if_supported();
  v8 = (*(*a1 + 56))(a1);
  v15[0] = cc_malloc_clear(376 * **v8);
  v15[1] = 47 * **v8;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v15[0])
  {
    v9 = *a1;
    v10 = **(*a1 + 32);
    memset(v18, 0, sizeof(v18));
    if (v10 > 0x40)
    {
      v13 = 4294967291;
    }

    else
    {
      v11 = (*(v9 + 136))(a1, a1[2] == 0, a3, a4, v18);
      if (!v11)
      {
        v12 = ccec_signature_r_s_size(v8);
        v11 = ccec_verify_composite_digest_ws(v15, v8, v10, v18, a2, a2 + v12, 0);
      }

      v13 = v11;
    }

    v16(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  return v13;
}

uint64_t ccn_mux(uint64_t result, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  v6 = v5 ^ (v5 << 17);
  state = v6;
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * v6)); result; --result)
  {
    v9 = *a4++;
    v8 = v9;
    v10 = *a5++;
    *a3 = v10 ^ v6;
    *a3++ = (v10 ^ v8) & 0x5555555555555555 ^ v10 ^ v6 ^ (v10 ^ v8) & i ^ v6;
  }

  return result;
}

uint64_t ccn_mux_next_mask()
{
  v0 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  result = v0 ^ (v0 << 17);
  state = result;
  return result;
}

uint64_t cczp_power_fast_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = ccn_bitlen_internal(v10, a5);
  if (v11)
  {
    v12 = v11;
    v17 = *(a1 + 16);
    v13 = (*(a1 + 24))(a1, 3 * v10);
    ccn_set(v10, v13, a4);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v14 = (*(a5 + (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 - 1)) & 1;
    if ((v12 & 1) == 0)
    {
      v14 = (*(a5 + (((v12 - 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v12 - 2) & 0x3E)) & 1 | (2 * v14);
    }

    ccn_set(v10, a3, &v13[8 * (v14 - 1) * v10]);
    if ((v12 | 0xFFFFFFFFFFFFFFFELL) + v12)
    {
      v15 = v12 + (v12 | 0xFFFFFFFFFFFFFFFELL) - 1;
      do
      {
        cczp_sqr_ws(a1, a2);
        cczp_sqr_ws(a1, a2);
        if ((*(a5 + (((v15 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 - 1)) & 1 | (2 * ((*(a5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1)))
        {
          cczp_mul_ws(a1, a2);
        }

        v15 -= 2;
      }

      while (v15 != -1);
    }

    *(a1 + 16) = v17;
  }

  else
  {
    ccn_seti(v10, a3, 1);
    cczp_to_ws(a1, a2);
  }

  return 0;
}

unint64_t ccn_bitlen_public_value(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = 64;
    do
    {
      v4 = *a2++;
      v2 = (v3 - __clz(v4 | 1)) & -(v4 != 0) | (v4 != 0 ? 0 : v2);
      v3 += 64;
      --a1;
    }

    while (a1);
  }

  return v2;
}

uint64_t ccn_gcd_approximate(uint64_t result, void *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  *a3 = a2[result - 1];
  v5 = a4[result - 1];
  for (*a5 = v5; result != 1; --result)
  {
    v6 = v5 | *a3;
    v7 = __clz(v6 | 1);
    LOBYTE(v6) = v6 != 0 ? ((*a5 | *a3) >> 63) - v7 + 64 : 0;
    *a3 = (a2[result - 2] >> v6) | (*a3 << v7);
    v5 = (a4[result - 2] >> v6) | (*a5 << v7);
    *a5 = v5;
  }

  *a3 = *a3 & 0xFFFFFFFF80000000 | *a2 & 0x7FFFFFFFLL;
  *a5 = *a5 & 0xFFFFFFFF80000000 | *a4 & 0x7FFFFFFFLL;
  return result;
}

unint64_t ccn_gcd_update_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v18 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, a2 + 1);
  v14 = (*(a1 + 24))(a1, a2 + 1);
  if (a2)
  {
    ccn_set(a2, v13, a4);
  }

  ccn_zero(1, v13 + 8 * a2);
  ccn_cond_neg(a2 + 1, a5 < 0, v13->i64, v13->i64);
  if (a2)
  {
    ccn_set(a2, v14, a6);
  }

  ccn_zero(1, &v14[8 * a2]);
  ccn_cond_neg(a2 + 1, a7 < 0, v14, v14);
  ccn_mul1(a2 + 1, v13, v13, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  ccn_addmul1(a2 + 1, v13, v14, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v15 = v13->i64[a2] >> 63;
  ccn_cond_neg(a2 + 1, v13->i64[a2] < 0, v13->i64, v13->i64);
  ccn_shift_right(a2 + 1, v13, v13, 31);
  ccn_set(a2, a3, v13);
  *(a1 + 16) = v18;
  return v15;
}

uint64_t ccn_divmod_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v12 = ccn_n(a6, a8);
  v13 = a2 - v12;
  v45 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12 + 1);
  v15 = (*(a1 + 24))(a1, v12 + 1);
  v52 = a1;
  v16 = (*(a1 + 24))(a1, v12 + 1);
  v14[v12] = 0;
  v51 = v12 - 1;
  v17 = __clz(*(a8 + 8 * (v12 - 1)));
  ccn_shift_left(v12, v14, a8, v17, v18);
  v53 = v17;
  if (v12)
  {
    ccn_set(v12, v15, (a3 + 8 * v13));
  }

  v47 = -(v17 != 0);
  v48 = -v17 & 0x3F;
  ccn_zero(1, v15 + 8 * v12);
  ccn_shift_left(v12 + 1, v15, v15, v17, v19);
  v20 = 0;
  v21 = 0;
  v22 = v14[v51];
  v23 = v22 != 0x8000000000000000;
  v24 = -v22;
  v26 = -__PAIR128__(v25, v22) >> 64;
  v27 = 65;
  do
  {
    v28 = ((((__PAIR128__(v26, v24) - __PAIR128__(v22, v21)) >> 64) ^ v26 | v22 ^ v26) ^ v26) >> 63;
    v29 = v28-- != 0;
    v26 = (__PAIR128__(v26, v24) - __PAIR128__(v29 ? 0 : v22, v28 & v21)) >> 64;
    v24 -= v28 & v21;
    v20 = v28 & 1 | (2 * v20);
    *(&v30 + 1) = v22;
    *&v30 = v21;
    v21 = v30 >> 1;
    v22 >>= 1;
    --v27;
  }

  while (v27);
  v50 = v23 ? v20 + 2 : -1;
  v31 = (a3 - 8 * v12 + 8 * a2);
  v32 = a2 - v12;
  do
  {
    v33 = v13;
    v34 = *v31 << v53;
    v15->i64[0] = v34;
    if (v32)
    {
      v15->i64[0] = ((*(v31 - 1) & v47) >> v48) | v34;
    }

    v35 = v15->i64[v12];
    v36 = v15->i64[v51];
    v56 = v14[v51];
    v37 = v35 + ((v35 * v50) >> 64) - ((((v36 - v56) ^ v36 | v56 ^ v36) ^ v36) >> 63) + 2;
    v55 = v37 | -((((((v35 * v50) >> 64) - ((((v36 - v56) ^ v36 | v56 ^ v36) ^ v36) >> 63) + 2) ^ v37 | v37 ^ v35) ^ v37) >> 63);
    v58[0] = 0;
    v58[1] = 0;
    ccn_mul(1, v58, &v55, &v56);
    v57[0] = v36;
    v57[1] = v35;
    v38 = ccn_sub_ws(0, 2, v58, v57, v58);
    v55 -= 2 * v38;
    v39 = ccn_add1_ws(0, 2, v58, v58, v56);
    v40 = v55 + v39;
    v16[v12] = ccn_mul1(v12, v16, v14, v55 + v39);
    v41 = ccn_sub_ws(v52, v12 + 1, v15, v15->i64, v16);
    v42 = v41 - ccn_cond_add(v12 + 1, v41, v15->i64, v15->i64, v14);
    result = ccn_cond_add(v12 + 1, v42, v15->i64, v15->i64, v14);
    if (a5 && v32 < a4)
    {
      *(a5 + 8 * v32) = v40 - (v41 + v42);
    }

    if (v32)
    {
      result = memmove(&v15->u64[1], v15, 8 * v12);
    }

    --v32;
    --v31;
    v13 = v33;
  }

  while (v32 <= v33);
  if (a5 && a4 > v33 + 1)
  {
    result = cc_clear(8 * (a4 - (v33 + 1)), (a5 + 8 * (v33 + 1)));
  }

  if (a7)
  {
    ccn_shift_right(v12, v15, v15, v53);
    if (v12)
    {
      ccn_set(v12, a7, v15);
    }

    result = ccn_zero(a6 - v12, &a7[8 * v12]);
  }

  *(v52 + 16) = v45;
  return result;
}

uint64_t cccbc_set_iv_internal(uint64_t a1, void *__dst, void *__src)
{
  if (__src)
  {
    memcpy(__dst, __src, *(a1 + 8));
  }

  else
  {
    cc_clear(*(a1 + 8), __dst);
  }

  return 0;
}

uint64_t cccbc_one_shot_explicit_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 8) != a4 || a3 && a3 != a4)
  {
    return 4294967289;
  }

  v16 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v22 - v16;
  bzero(&v22 - v16, v16);
  v18 = (*(a1 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v22 - v18;
  bzero(&v22 - v18, v18);
  v20 = (*(a1 + 16))(a1, v17, a2, a6);
  if (v20)
  {
    return v20;
  }

  if (a7)
  {
    memcpy(v19, a7, *(a1 + 8));
  }

  else
  {
    cc_clear(*(a1 + 8), v19);
  }

  v15 = (*(a1 + 24))(v17, v19, a5, a8, a9);
  cc_clear(*a1, v17);
  return v15;
}

uint64_t ccmode_ctr_setctr(int a1, void *a2, void *__src)
{
  v4 = *(*a2 + 8);
  a2[1] = v4;
  memcpy(a2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, __src, v4);
  return 0;
}

uint64_t ccn_read_uint_public_value(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = 8 * a1;
  if (a3 > 8 * a1)
  {
    v5 = 0;
    v6 = a3 - v4;
    v7 = a4;
    do
    {
      v8 = *v7++;
      v5 |= v8;
      --a3;
    }

    while (a3 > v4);
    if (v5)
    {
      return 4294967289;
    }

    a4 += v6;
    a3 = 8 * a1;
  }

  v10 = &a4[a3];
  v11 = a3 - 8;
  if (a3 < 8)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v12 = (v11 >> 3) + 1;
  a3 = v11 - 8 * (v11 >> 3);
  v13 = a2;
  v14 = v12;
  do
  {
    v15 = *(v10 - 1);
    v10 -= 8;
    *v13++ = bswap64(v15);
    --v14;
  }

  while (v14);
  if (a3)
  {
LABEL_13:
    v16 = 0;
    v17 = -a3;
    do
    {
      v16 = v10[v17] | (v16 << 8);
    }

    while (!__CFADD__(v17++, 1));
    a2[v12++] = v16;
  }

LABEL_17:
  if (v12 < a1)
  {
    bzero(&a2[v12], v4 - 8 * v12);
  }

  return 0;
}

uint64_t ccrng_process_atfork_prepare(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 52);
  ccrng_schedule_atomic_flag_set(&a1[42]);
  return 0;
}

uint64_t ccn_shift_right(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    return ccn_shift_right_asm(result, a2, a3, a4);
  }

  return result;
}

uint64_t ccn_shift_right_multi(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  result = ccn_shift_right(a1, a2, a3, a4 & 0x3F);
  if (a1)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v10 = a4 >> 6;
      v11 = v8;
      do
      {
        v13 = v10-- != 0;
        v9 |= v13 ? 0 : a2->i64[v11++];
      }

      while (a1 != v11);
      a2->i64[v8++] = v9;
    }

    while (v8 != a1);
  }

  return result;
}

unint64_t ccn_sub1(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  for (; a1; --a1)
  {
    v4 = *a3++;
    v5 = v4 - a4;
    *a2++ = v5;
    a4 = *(&v5 + 1) >> 63;
  }

  return a4;
}

uint64_t ccn_write_uint_padded_ct_internal(uint64_t a1, uint64_t *a2, unint64_t a3, char *__s)
{
  if (a3 > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v6 = 8 * a1;
  if ((8 * a1) > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v7 = __s;
  v8 = a3;
  v10 = a3 - v6;
  if (a3 <= v6)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    cc_clear(a3 - v6, __s);
    v7 += v10;
    v8 = v6;
  }

  v11 = ccn_bitlen_public_value(a1, a2);
  if (v8 < (v11 + 7) >> 3)
  {
    return 4294967289;
  }

  result = v10 + v8 - ((v11 + 7) >> 3);
  v12 = &v7[v8];
  v13 = v8 - 8;
  if (v8 < 8)
  {
    v14 = 0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_16;
  }

  v14 = (v13 >> 3) + 1;
  v8 = v13 - 8 * (v13 >> 3);
  v15 = a2;
  v16 = v14;
  do
  {
    v17 = *v15++;
    *(v12 - 1) = bswap64(v17);
    v12 -= 8;
    --v16;
  }

  while (v16);
  if (v8)
  {
LABEL_16:
    v18 = a2[v14];
    v19 = v12 - 1;
    do
    {
      *v19-- = v18;
      v18 >>= 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

BOOL ccn_add1_asm(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (!a1)
  {
    return a4;
  }

  v5 = *a3;
  v4 = a3 + 1;
  v6 = __CFADD__(v5, a4);
  *a2 = v5 + a4;
  for (i = a2 + 1; --a1; ++i)
  {
    v8 = *v4++;
    v9 = v6;
    v6 = __CFADD__(v6, v8);
    *i = v9 + v8;
  }

  return v6;
}

uint64_t ccn_cond_neg(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  v9 = __ROR8__(0x5555555555555555, a2 | (2 * result));
  if (a1)
  {
    v10 = 1;
    do
    {
      v12 = *a4++;
      v11 = v12;
      v13 = v10 + ~v12;
      v10 = __CFADD__(v10, ~v12);
      v14 = v11 ^ v13;
      v15 = v11 ^ result;
      *a3 = v15;
      *a3++ = v14 & v9 ^ v14 & 0x5555555555555555 ^ v15 ^ result;
      --a1;
    }

    while (a1);
  }

  return result;
}

uint64_t ccec_compressed_x962_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 3) + 1;
  return ccec_export_affine_point_public_value(v4, 3, v3, &v6, a2);
}

unint64_t ccn_subn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_sub_ws(0, a4, a2, a3, a5);

  return ccn_sub1(v5, v6, v7, v8);
}

uint64_t cc_fault_canary_set(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; i != 16; ++i)
  {
    *(result + i) = *(a5 + i % a3) ^ *(a4 + i % a3) ^ *(a2 + i);
  }

  if (a3 >= 0x11)
  {
    for (j = 16; j != a3; ++j)
    {
      *(result + (j & 0xF)) ^= *(a5 + j) ^ *(a4 + j);
    }
  }

  return result;
}

int32x4_t *AccelerateCrypto_SHA256_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    v3 = a3 + 4;
    _Q1 = vrev32q_s8(v5);
    v9 = *result;
    _Q2 = vrev32q_s8(v6);
    _Q17 = result[1];
    _Q3 = vrev32q_s8(v7);
    _Q18 = *result;
    _Q4 = vaddq_s32(vrev32q_s8(v4), K256);
    _Q5 = vaddq_s32(_Q1, xmmword_100115090);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_1001150A0);
    _Q7 = vaddq_s32(_Q3, xmmword_1001150B0);
    v19 = &xmmword_1001150C0;
    v20 = 3;
    do
    {
      _Q20 = _Q18;
      v22 = *v19;
      __asm { SHA256SU0       V0.4S, V1.4S }

      v28 = v19[1];
      __asm { SHA256H         Q18, Q19, V4.4S }

      v30 = v19[2];
      __asm { SHA256SU1       V0.4S, V2.4S, V3.4S }

      v32 = v19[3];
      __asm { SHA256H2        Q19, Q20, V4.4S }

      v19 += 4;
      _Q4 = vaddq_s32(_Q0, v22);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V1.4S, V2.4S
        SHA256H         Q18, Q19, V5.4S
        SHA256SU1       V1.4S, V3.4S, V0.4S
        SHA256H2        Q19, Q20, V5.4S
      }

      _Q5 = vaddq_s32(_Q1, v28);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V2.4S, V3.4S
        SHA256H         Q18, Q19, V6.4S
        SHA256SU1       V2.4S, V0.4S, V1.4S
        SHA256H2        Q19, Q20, V6.4S
      }

      _Q6 = vaddq_s32(_Q2, v30);
      --v20;
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V3.4S, V0.4S
        SHA256H         Q18, Q19, V7.4S
        SHA256SU1       V3.4S, V1.4S, V2.4S
        SHA256H2        Q19, Q20, V7.4S
      }

      _Q7 = vaddq_s32(_Q3, v32);
    }

    while (!(_NF ^ _VF | _ZF));
    v44 = a2 <= 1;
    v45 = a2 - 1;
    if (!v44)
    {
      v46 = (v19 - 16);
      do
      {
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V4.4S }

        v49 = v3[1];
        v50 = v3[2];
        __asm { SHA256H2        Q19, Q20, V4.4S }

        v52 = v3[3];
        _Q4 = vaddq_s32(vrev32q_s8(*v3), *v46);
        _Q20 = _Q18;
        v3 += 4;
        __asm { SHA256H         Q18, Q19, V5.4S }

        _Q1 = vrev32q_s8(v49);
        __asm { SHA256H2        Q19, Q20, V5.4S }

        _Q5 = vaddq_s32(_Q1, v46[1]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V6.4S }

        _Q2 = vrev32q_s8(v50);
        __asm { SHA256H2        Q19, Q20, V6.4S }

        _Q6 = vaddq_s32(_Q2, v46[2]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V7.4S }

        _Q3 = vrev32q_s8(v52);
        __asm { SHA256H2        Q19, Q20, V7.4S }

        _Q7 = vaddq_s32(_Q3, v46[3]);
        v9 = vaddq_s32(v9, _Q18);
        _Q17 = vaddq_s32(_Q17, _Q19);
        _Q20 = v9;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[4]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[5]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[6]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[7]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[8]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[9]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[10]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[11]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[12]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[13]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[14]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[15]);
        v44 = v45-- <= 1;
      }

      while (!v44);
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V4.4S
      SHA256H2        Q19, Q20, V4.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V5.4S
      SHA256H2        Q19, Q20, V5.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V6.4S
      SHA256H2        Q19, Q20, V6.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V7.4S
      SHA256H2        Q19, Q20, V7.4S
    }

    *result = vaddq_s32(v9, _Q18);
    result[1] = vaddq_s32(_Q17, _Q19);
  }

  return result;
}

uint64_t cccmac_generate_subkeys(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v17[0] = 0;
  v17[1] = 0;
  __s[0] = 0;
  __s[1] = 0;
  result = cccbc_one_shot_explicit_internal(a1, a2, 16, *(a1 + 8), 1, a3, v17, __s, __s);
  if (!result)
  {
    LOBYTE(v8) = 0;
    v9 = SLOBYTE(__s[0]);
    for (i = 15; i != -1; --i)
    {
      v11 = *(__s + i);
      a4[i] = v8 | (2 * v11);
      v8 = v11 >> 7;
    }

    LOBYTE(v12) = 0;
    a4[15] ^= (v9 >> 7) & 0x87;
    v13 = *a4;
    for (j = 15; j != -1; --j)
    {
      v15 = a4[j];
      *(a5 + j) = v12 | (2 * v15);
      v12 = v15 >> 7;
    }

    *(a5 + 15) ^= (v13 >> 7) & 0x87;
    cc_clear(0x10uLL, __s);
    return 0;
  }

  return result;
}

int32x4_t *AccelerateCrypto_SHA1_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    v4 = a3 + 4;
    v10 = *result;
    v9 = result + 1;
    v11 = v10;
    v10.i32[0] = v9->i32[0];
    v12 = v9 - 1;
    v3.i32[0] = v10.i32[0];
    _Q1 = vrev32q_s8(v6);
    _Q2 = vrev32q_s8(v7);
    _Q3 = vrev32q_s8(v8);
    _Q4 = vaddq_s32(vrev32q_s8(v5), *K_XMM_AR);
    _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
    _Q19 = v3;
    _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
    _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = v11.i32[0];
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1C           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_100115610);
    __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V4.4S
      SHA1H           S19, S20
      SHA1SU1         V0.4S, V3.4S
    }

    _Q4 = vaddq_s32(_Q0, loc_100115610);
    __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V5.4S
      SHA1H           S19, S20
      SHA1SU1         V1.4S, V0.4S
    }

    _Q5 = vaddq_s32(_Q1, loc_100115610);
    __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1M           Q18, S19, V6.4S
      SHA1H           S19, S20
      SHA1SU1         V2.4S, V1.4S
    }

    _Q6 = vaddq_s32(_Q2, loc_100115610);
    __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
      SHA1SU1         V3.4S, V2.4S
    }

    _Q7 = vaddq_s32(_Q3, loc_100115610);
    v105 = a2 <= 1;
    for (i = a2 - 1; !v105; --i)
    {
      v107 = *v4;
      v108 = v4[1];
      v109 = v4[2];
      v110 = v4[3];
      v4 += 4;
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
      }

      _Q4 = vaddq_s32(vrev32q_s8(v107), *K_XMM_AR);
      _Q1 = vrev32q_s8(v108);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
      }

      _Q5 = vaddq_s32(_Q1, *K_XMM_AR);
      _Q2 = vrev32q_s8(v109);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
      }

      _Q6 = vaddq_s32(_Q2, *K_XMM_AR);
      _Q3 = vrev32q_s8(v110);
      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
      }

      _Q7 = vaddq_s32(_Q3, *K_XMM_AR);
      _Q19 = vaddq_s32(v3, _Q19);
      v11 = vaddq_s32(v11, _Q18);
      v3 = _Q19;
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = v11.i32[0];
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *K_XMM_AR);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1C           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[2]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, *&K_XMM_AR[4]);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_100115610);
      __asm { SHA1SU0         V0.4S, V1.4S, V2.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V4.4S
        SHA1H           S19, S20
        SHA1SU1         V0.4S, V3.4S
      }

      _Q4 = vaddq_s32(_Q0, loc_100115610);
      __asm { SHA1SU0         V1.4S, V2.4S, V3.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V5.4S
        SHA1H           S19, S20
        SHA1SU1         V1.4S, V0.4S
      }

      _Q5 = vaddq_s32(_Q1, loc_100115610);
      __asm { SHA1SU0         V2.4S, V3.4S, V0.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1M           Q18, S19, V6.4S
        SHA1H           S19, S20
        SHA1SU1         V2.4S, V1.4S
      }

      _Q6 = vaddq_s32(_Q2, loc_100115610);
      __asm { SHA1SU0         V3.4S, V0.4S, V1.4S }

      _S20 = _Q18;
      __asm
      {
        SHA1P           Q18, S19, V7.4S
        SHA1H           S19, S20
        SHA1SU1         V3.4S, V2.4S
      }

      _Q7 = vaddq_s32(_Q3, loc_100115610);
      v105 = i <= 1;
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V4.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V5.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V6.4S
      SHA1H           S19, S20
    }

    _S20 = _Q18;
    __asm
    {
      SHA1P           Q18, S19, V7.4S
      SHA1H           S19, S20
    }

    *v12 = vaddq_s32(v11, _Q18);
    result = v12 + 1;
    result->i32[0] = vaddq_s32(v3, _Q19).u32[0];
  }

  return result;
}

uint64_t ccn_p256_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = 4;
  v9 = (*(a1 + 24))(a1, 4);
  v10 = (*(a1 + 24))(a1, 4);
  v11 = (*(a1 + 24))(a1, 4);
  ccn_mulmod_p256(v11, a4, a4);
  ccn_mulmod_p256(v10, v11, a4);
  ccn_mulmod_p256(v10, v10, v10);
  ccn_mulmod_p256(v10, v10, v10);
  ccn_mulmod_p256(v9, v10, a4);
  ccn_mulmod_p256(v10, v9, v11);
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v8;
  }

  while (v8);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  v12 = 8;
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v12;
  }

  while (v12);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  v13 = 16;
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v13;
  }

  while (v13);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  ccn_set(4, v11, v10);
  v14 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v14;
  }

  while (v14);
  ccn_mulmod_p256(v11, v11, a4);
  v15 = 128;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v15;
  }

  while (v15);
  ccn_mulmod_p256(v11, v11, v10);
  v16 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v16;
  }

  while (v16);
  ccn_mulmod_p256(v11, v11, v10);
  v17 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v17;
  }

  while (v17);
  ccn_mulmod_p256(v10, v11, v9);
  ccn_mulmod_p256(v9, v10, a4);
  v19[0] = xmmword_1001C50F8;
  v19[1] = unk_1001C5108;
  ccn_mulmod_p256(v9, v9, v19);
  if (ccn_n(4, v9) == 1 && *v9 == 1)
  {
    ccn_set(4, a3, v10);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  return result;
}

_OWORD *ccn_p256_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5[0] = xmmword_1001C50F8;
  v5[1] = unk_1001C5108;
  return ccn_mulmod_p256(a3, a4, v5);
}

uint64_t cczp_mm_redc_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = cczp_n(a2);
  v9 = v8;
  if (v8)
  {
    v10 = a2[*a2 + 3];
    v11 = a4;
    v12 = v8;
    do
    {
      v13 = cczp_prime(a2);
      *v11 = ccn_addmul1(v9, v11, v13, *v11 * v10);
      ++v11;
      --v12;
    }

    while (v12);
  }

  v14 = ccn_add_ws(a1, v9, &a4[v9], &a4[v9], a4);
  v15 = cczp_prime(a2);
  v16 = ccn_sub_ws(a1, v9, a4, &a4[v9], v15) ^ v14;

  return ccn_mux(v9, v16, a3, &a4[v9], a4);
}

uint64_t inc_uint(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + result - 1);
    v3 = 2;
    do
    {
      if (++*v2--)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3 > a2;
      }

      ++v3;
    }

    while (!v5);
  }

  return result;
}

uint64_t ccn_cond_clear(uint64_t a1, char a2, uint64_t *a3)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v8 = *a3;
    v9 = *a3 ^ result;
    *a3 = v9;
    *a3++ = v9 ^ v8 & 0x5555555555555555 ^ v8 & i ^ result;
  }

  return result;
}

uint64_t ccaes_vng_ccm_encrypt(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  v10 = a2[4].i32[0];
  if (v10 == 4)
  {
    if (a2[4].i32[2])
    {
      (*(*a1 + 24))(a1 + 8, 1, a2 + 1, a2 + 1);
      a2[4].i32[2] = 0;
    }

    a2[4].i32[0] = 5;
LABEL_6:
    v11 = a2[4].u32[1];
    if (v11)
    {
      v12 = v11 >= a3 ? a3 : a2[4].u32[1];
      ccmode_ccm_macdata(a1, a2, 0, v12, a4);
      ccmode_ccm_crypt(a1, a2, v12, a4, a5);
      a4 = (a4 + v12);
      a5 = (a5 + v12);
      a3 -= v12;
      if (a2[4].i32[1])
      {
        goto LABEL_24;
      }
    }

    if (a3 < 0x10)
    {
      goto LABEL_24;
    }

    v13 = a3 >> 4;
    v14 = *(a1 + 248);
    if (v14 > 159)
    {
      if (v14 == 224)
      {
LABEL_21:
        ccm256_encrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 == 192)
      {
LABEL_22:
        ccm192_encrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 != 160)
      {
LABEL_23:
        v15 = a3 & 0xFFFFFFFFFFFFFFF0;
        a3 &= 0xFu;
        a4 = (a4 + v15);
        a5 = (a5 + v15);
LABEL_24:
        ccmode_ccm_macdata(a1, a2, 0, a3, a4);
        ccmode_ccm_crypt(a1, a2, a3, a4, a5);
        return 0;
      }
    }

    else if (v14 != 10)
    {
      if (v14 != 12)
      {
        if (v14 != 14)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    ccm128_encrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
    goto LABEL_23;
  }

  if (v10 == 5)
  {
    goto LABEL_6;
  }

  return 4294967228;
}

uint64_t ccn_set_bit(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 1 << a2;
  v4 = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  if (a3)
  {
    v5 = *(result + v4) | v3;
  }

  else
  {
    v5 = *(result + v4) & ~v3;
  }

  *(result + v4) = v5;
  return result;
}

unint64_t ccn_cond_rsub(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  if (a1)
  {
    v12 = 0;
    do
    {
      v14 = *a4++;
      v13 = v14;
      v15 = *a5++;
      v16 = __PAIR128__(v12, v12) - v13;
      v17 = v16 + v15;
      if (__CFADD__(v16, v15))
      {
        v18 = *(&v16 + 1) + 1;
      }

      else
      {
        v18 = (__PAIR128__(v12, v12) - v13) >> 64;
      }

      v12 = v18 >> 63;
      v19 = v13 ^ v17;
      v20 = v13 ^ mask;
      *a3 = v20;
      *a3++ = v19 & v11 ^ v19 & 0x5555555555555555 ^ v20 ^ mask;
      --a1;
    }

    while (a1);
    v21 = v18 >> 63;
  }

  else
  {
    v21 = 0;
  }

  return v21 & a2;
}

BOOL timingsafe_enable_if_supported()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) != 0;
    __asm { MSR             DIT, #1 }
  }

  else
  {
    v0 = 0;
  }

  if ((MEMORY[0xFFFFFC010] & 0x200000000000) != 0)
  {
    sb();
  }

  else
  {
    __dsb(0xFu);
    __isb(0xFu);
  }

  return v0;
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

uint64_t ccnistkdf_ctr_cmac_fixed_internal(void *a1, unsigned int a2, unint64_t a3, uint64_t a4, unint64_t a5, char *a6, rsize_t a7, char *a8)
{
  if (!a7)
  {
    return 4294967289;
  }

  v11 = a1[1];
  memset(__src, 0, sizeof(__src));
  v12 = a7 / v11;
  if (a7 % v11)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = a7 / v11;
  }

  result = 4294967289;
  if ((((a2 - 8) >> 3) | (32 * (a2 - 8))) <= 3u && !(v13 >> a2))
  {
    if (a3)
    {
      if (a4)
      {
        v15 = a8;
        if (a8)
        {
          v26 = v13;
          v27 = a3;
          v29 = a7 % v11;
          v30 = &v26;
          v18 = 80 * ((v11 + *a1 + 159) / 0x50);
          v19 = &v26 - v18;
          v28 = a4;
          bzero(&v26 - v18, v18);
          v31 = a1;
          v20 = 80 * ((a1[1] + *a1 + 159) / 0x50uLL);
          v21 = &v26 - v20;
          bzero(&v26 - v20, v20);
          cccmac_init_internal(v31, &v26 - v18, v27, v28);
          if (v11 <= a7)
          {
            LODWORD(v22) = 1;
            do
            {
              memcpy(v21, v19, v18);
              PRF_EVAL(v21, a2, v22, a5, a6, v15);
              v22 = (v22 + 1);
              v15 += v11;
            }

            while (v12 >= v22);
          }

          v23 = v29;
          if (v29)
          {
            memcpy(v21, v19, v18);
            PRF_EVAL(v21, a2, v26, a5, a6, __src);
            memcpy(v15, __src, v23);
          }

          cc_clear(v11, __src);
          v24 = v31;
          v25 = *v31;
          cc_clear(v24[1] + *v24 + 80, v19);
          cc_clear(v24[1] + *v24 + 80, v21);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t ccnistkdf_ctr_cmac_internal(void *a1, unsigned int a2, unint64_t a3, uint64_t a4, size_t a5, const void *a6, size_t a7, const void *a8, rsize_t a9, size_t a10, char *a11)
{
  v18 = a5 + a7 + a10;
  v26[0] = cc_malloc_clear((v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  v26[1] = (v18 + 8) >> 3;
  v26[2] = 0;
  v26[3] = cc_ws_alloc;
  v27 = cc_ws_free;
  if (!v26[0])
  {
    return 4294967283;
  }

  v24 = a3;
  v19 = cc_ws_alloc(v26, (v18 + 8) >> 3);
  v20 = 4294967289;
  if (a10 <= 4 && !((8 * a9) >> (8 * a10)))
  {
    v21 = v19;
    if (a5 && a6)
    {
      memcpy(v19, a6, a5);
    }

    v22 = &v21[a5];
    v21[a5] = 0;
    if (a7 && a8)
    {
      memcpy(v22 + 1, a8, a7);
    }

    __src = bswap32(8 * a9) >> (-8 * a10);
    memcpy(&v22[a7 + 1], &__src, a10);
    v20 = ccnistkdf_ctr_cmac_fixed_internal(a1, a2, v24, a4, v18 + 1, v21, a9, a11);
  }

  v27(v26);
  return v20;
}

uint64_t PRF_EVAL(char *a1, unsigned int a2, int a3, unint64_t a4, char *a5, void *a6)
{
  __src = HIBYTE(a3);
  BYTE1(__src) = BYTE2(a3);
  BYTE2(__src) = BYTE1(a3);
  BYTE3(__src) = a3;
  __src >>= 8 * (4 - (a2 >> 3));
  cccmac_update_internal(a1, a2 >> 3, &__src);
  cccmac_update_internal(a1, a4, a5);
  return cccmac_final_generate_internal(a1, *(*(a1 + 8) + 8), a6);
}

uint64_t AccelerateCrypto_ecb_AES_encrypt(__int128 *a1, int a2, __int128 *a3, int8x16_t *a4)
{
  v4 = *(a1 + 60);
  _VF = __OFSUB__(a2, 4);
  v6 = a2 - 4;
  for (i = *(a1 + v4); v6 < 0 == _VF; v6 -= 4)
  {
    _Q4 = *a1;
    v9 = 16;
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    a3 += 4;
    do
    {
      __asm
      {
        AESE            V0.16B, V4.16B
        AESMC           V0.16B, V0.16B
        AESE            V1.16B, V4.16B
        AESMC           V1.16B, V1.16B
        AESE            V2.16B, V4.16B
        AESMC           V2.16B, V2.16B
        AESE            V3.16B, V4.16B
        AESMC           V3.16B, V3.16B
      }

      _Q4 = a1[v9 / 0x10];
      v9 += 16;
    }

    while (v9 < v4);
    __asm
    {
      AESE            V0.16B, V4.16B
      AESE            V1.16B, V4.16B
      AESE            V2.16B, V4.16B
      AESE            V3.16B, V4.16B
    }

    *a4 = veorq_s8(_Q0, i);
    a4[1] = veorq_s8(_Q1, i);
    a4[2] = veorq_s8(_Q2, i);
    a4[3] = veorq_s8(_Q3, i);
    a4 += 4;
    _VF = __OFSUB__(v6, 4);
  }

  v29 = v6 & 3;
  if (v29)
  {
    do
    {
      _Q4 = *a1;
      v31 = 16;
      v32 = *a3++;
      do
      {
        __asm
        {
          AESE            V0.16B, V4.16B
          AESMC           V0.16B, V0.16B
        }

        _Q4 = a1[v31 / 0x10];
        v31 += 16;
      }

      while (v31 < v4);
      __asm { AESE            V0.16B, V4.16B }

      *a4++ = veorq_s8(_Q0, i);
      _VF = __OFSUB__(v29--, 1);
    }

    while (!((v29 < 0) ^ _VF | (v29 == 0)));
  }

  return 0;
}

uint64_t ccaes_vng_ccm_decrypt(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  v10 = a2[4].i32[0];
  if (v10 == 4)
  {
    if (a2[4].i32[2])
    {
      (*(*a1 + 24))(a1 + 8, 1, a2 + 1, a2 + 1);
      a2[4].i32[2] = 0;
    }

    a2[4].i32[0] = 5;
LABEL_6:
    v11 = a2[4].u32[1];
    if (v11)
    {
      v12 = v11 >= a3 ? a3 : a2[4].u32[1];
      ccmode_ccm_crypt(a1, a2, v12, a4, a5);
      ccmode_ccm_macdata(a1, a2, 0, v12, a5);
      a4 = (a4 + v12);
      a5 = (a5 + v12);
      a3 -= v12;
      if (a2[4].i32[1])
      {
        goto LABEL_24;
      }
    }

    if (a3 < 0x10)
    {
      goto LABEL_24;
    }

    v13 = a3 >> 4;
    v14 = *(a1 + 248);
    if (v14 > 159)
    {
      if (v14 == 224)
      {
LABEL_21:
        ccm256_decrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 == 192)
      {
LABEL_22:
        ccm192_decrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
        goto LABEL_23;
      }

      if (v14 != 160)
      {
LABEL_23:
        v15 = a3 & 0xFFFFFFFFFFFFFFF0;
        a3 &= 0xFu;
        a4 = (a4 + v15);
        a5 = (a5 + v15);
LABEL_24:
        ccmode_ccm_crypt(a1, a2, a3, a4, a5);
        ccmode_ccm_macdata(a1, a2, 0, a3, a5);
        return 0;
      }
    }

    else if (v14 != 10)
    {
      if (v14 != 12)
      {
        if (v14 != 14)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    ccm128_decrypt(a4, a5, a2 + 1, v13, (a1 + 8), a2, *(*a1 + 8) + ~a2[5].i32[0]);
    goto LABEL_23;
  }

  if (v10 == 5)
  {
    goto LABEL_6;
  }

  return 4294967228;
}

unint64_t ccec_export_affine_point_size(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {

      return ccec_compressed_x962_export_pub_size(a1);
    }

    else if (a2 == 4)
    {
      return (cczp_bitlen(a1) + 7) >> 3;
    }
  }

  else if (a2 == 1 || a2 == 2)
  {
    return ((cczp_bitlen(a1) + 7) >> 2) | 1;
  }

  return result;
}

unint64_t ccn_trailing_zeros(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = (v2 << 6) - 64;
    do
    {
      result = (__clz(__rbit64(*(a2 - 8 + 8 * v2) | 0x8000000000000000)) + v3) & -(*(a2 - 8 + 8 * v2) != 0) | (*(a2 - 8 + 8 * v2) != 0 ? 0 : result);
      v3 -= 64;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ccec_verify_internal_with_base_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a2;
  v17 = (*a2 + 4);
  v16 = **a2;
  if (a3 <= 0xF)
  {
    ccec_sign_internal_ws_cold_1(a3);
  }

  if (!ccec_validate_scalar(v15, a5) && !ccec_validate_scalar(v15, a6))
  {
    v36 = a8;
    v39 = *(a1 + 16);
    v43 = (*(a1 + 24))(a1, v16);
    v38 = (*(a1 + 24))(a1, v16);
    v42 = (*(a1 + 24))(a1, v16);
    v40 = (*(a1 + 24))(a1, v16);
    v37 = (*(a1 + 24))(a1, 3 * v16);
    v41 = (*(a1 + 24))(a1, 3 * v16);
    v20 = ccec_signature_r_s_size(a2);
    v34 = (*(a1 + 24))(a1, v16);
    memset(v34, 170, v20);
    __s = (*(a1 + 24))(a1, v16);
    v35 = v20;
    memset(__s, 255, v20);
    v21 = cczp_bitlen(v17 + 40 * *v15);
    v22 = v21;
    if ((v21 + 7) >> 3 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = (v21 + 7) >> 3;
    }

    uint_internal = ccn_read_uint_internal(v16, v43, v23, a4);
    if ((uint_internal & 0x80000000) == 0)
    {
      if (v22 < 8 * a3)
      {
        ccn_shift_right(v16, v43, v43, -v22 & 7);
      }

      v25 = cczp_prime(v17 + 40 * v16);
      if (!ccn_sub_ws(a1, v16, v38, v43->i64, v25))
      {
        ccn_set(v16, v43, v38);
      }

      if (cczp_inv_ws(a1, v17 + 40 * v16) || (cczp_mul_ws(a1, v17 + 40 * v16), cczp_mul_ws(a1, v17 + 40 * v16), v26 = a2 + 2, ccn_n(v16, &a2[2 * *v15 + 2]) != 1) || v26[2 * *v15] != 1)
      {
LABEL_36:
        v18 = 4294967289;
LABEL_38:
        v28 = v39;
LABEL_35:
        *(a1 + 16) = v28;
        return v18;
      }

      uint_internal = ccec_projectify_ws(a1, v15);
      if (!uint_internal)
      {
        uint_internal = ccec_projectify_ws(a1, v15);
        if (!uint_internal)
        {
          if (ccec_is_point_ws(a1, v15, v41))
          {
            v27 = *v15;
            if (ccn_cmp_internal(*v15, v17 + 16 * *v15 + 8 * *v15, v26))
            {
              v18 = ccec_twin_mult_ws(a1, v15, v37, v42, v37, v40, v41);
              v28 = v39;
              if (v18)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v29 = v17 + 40 * v27;
              v30 = *(a1 + 16);
              (*(a1 + 24))(a1, 3 * v27);
              cczp_bitlen(v29);
              if (ccec_mult_ws(a1, v15) || (cczp_bitlen(v29), ccec_mult_ws(a1, v15)))
              {
                v18 = 0xFFFFFFFFLL;
              }

              else
              {
                ccec_full_add_ws(a1, v15);
                v18 = 0;
              }

              v28 = v39;
              *(a1 + 16) = v30;
              if (v18)
              {
                goto LABEL_35;
              }
            }

            if (ccec_affinify_x_only_ws(a1, v15, v37, v37))
            {
              v18 = 4294967289;
            }

            else
            {
              v44 = v17 + 40 * v16;
              v31 = cczp_prime(v44);
              if ((ccn_cmp_internal(v16, v37, v31) & 0x80000000) == 0)
              {
                v32 = cczp_prime(v44);
                ccn_sub_ws(a1, v16, v37, v37, v32);
              }

              if (ccn_cmp_internal(v16, v37, a5))
              {
                v18 = 4294967150;
              }

              else
              {
                v18 = 0;
              }

              ccn_write_uint_padded_ct_internal(v16, a5, v35, v34);
              ccn_write_uint_padded_ct_internal(v16, v37, v35, __s);
              cc_fault_canary_set(v36, &CCEC_FAULT_CANARY, v35, v34, __s);
            }

            goto LABEL_35;
          }

          goto LABEL_36;
        }
      }
    }

    v18 = uint_internal;
    goto LABEL_38;
  }

  return 4294967289;
}

void *ccn_mulmod_p384(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v3 += 2;
  v8 = *v3;
  v9 = v3[1];
  v11 = *a3;
  v12 = a3[1];
  v10 = a3 + 2;
  v13 = *v10;
  v14 = v10[1];
  v10 += 2;
  v15 = *v10;
  v16 = v10[1];
  v17 = v5 * v11 + ((v4 * v11) >> 64);
  v18 = v17 + v4 * v12;
  v19 = __CFADD__(__CFADD__(v17, v4 * v12), *(&v17 + 1)) | __CFADD__((v4 * v12) >> 64, *(&v18 + 1));
  v20 = (v6 * v11) >> 64;
  v21 = *(&v18 + 1) + v6 * v11;
  v22 = __CFADD__(__CFADD__(*(&v18 + 1), v6 * v11), v19);
  v23 = __CFADD__(*(&v18 + 1), v6 * v11) + v19;
  v22 |= __CFADD__(v20, v23);
  v23 += v20;
  v24 = v22;
  v25 = (v5 * v12) >> 64;
  v22 = __CFADD__(v21, v5 * v12);
  v26 = v21 + v5 * v12;
  v28 = v22;
  v22 = __CFADD__(v22, v23);
  v27 = v28 + v23;
  v22 |= __CFADD__(v25, v27);
  v27 += v25;
  v29 = v22 + v24;
  v30 = (v4 * v13) >> 64;
  v22 = __CFADD__(v26, v4 * v13);
  v31 = v26 + v4 * v13;
  v33 = v22;
  v22 = __CFADD__(v22, v27);
  v32 = v33 + v27;
  v22 |= __CFADD__(v30, v32);
  v32 += v30;
  v34 = v22 + v29;
  v35 = (v7 * v11) >> 64;
  v22 = __CFADD__(v32, v7 * v11);
  v36 = v32 + v7 * v11;
  v38 = v22;
  v22 = __CFADD__(v22, v34);
  v37 = v38 + v34;
  v22 |= __CFADD__(v35, v37);
  v37 += v35;
  v39 = v22;
  v40 = (v6 * v12) >> 64;
  v22 = __CFADD__(v36, v6 * v12);
  v41 = v36 + v6 * v12;
  v43 = v22;
  v22 = __CFADD__(v22, v37);
  v42 = v43 + v37;
  v22 |= __CFADD__(v40, v42);
  v42 += v40;
  v44 = v22 + v39;
  v45 = (v5 * v13) >> 64;
  v22 = __CFADD__(v41, v5 * v13);
  v46 = v41 + v5 * v13;
  v48 = v22;
  v22 = __CFADD__(v22, v42);
  v47 = v48 + v42;
  v22 |= __CFADD__(v45, v47);
  v47 += v45;
  v49 = v22 + v44;
  v50 = (v4 * v14) >> 64;
  v22 = __CFADD__(v46, v4 * v14);
  v51 = v46 + v4 * v14;
  v53 = v22;
  v22 = __CFADD__(v22, v47);
  v52 = v53 + v47;
  v22 |= __CFADD__(v50, v52);
  v52 += v50;
  v54 = v22 + v49;
  v55 = (*v3 * v11) >> 64;
  v22 = __CFADD__(v52, *v3 * v11);
  v56 = v52 + *v3 * v11;
  v58 = v22;
  v22 = __CFADD__(v22, v54);
  v57 = v58 + v54;
  v22 |= __CFADD__(v55, v57);
  v57 += v55;
  v59 = v22;
  v60 = (v7 * v12) >> 64;
  v22 = __CFADD__(v56, v7 * v12);
  v61 = v56 + v7 * v12;
  v63 = v22;
  v22 = __CFADD__(v22, v57);
  v62 = v63 + v57;
  v22 |= __CFADD__(v60, v62);
  v62 += v60;
  v64 = v22 + v59;
  v65 = (v6 * v13) >> 64;
  v22 = __CFADD__(v61, v6 * v13);
  v66 = v61 + v6 * v13;
  v68 = v22;
  v22 = __CFADD__(v22, v62);
  v67 = v68 + v62;
  v22 |= __CFADD__(v65, v67);
  v67 += v65;
  v69 = v22 + v64;
  v70 = (v5 * v14) >> 64;
  v22 = __CFADD__(v66, v5 * v14);
  v71 = v66 + v5 * v14;
  v73 = v22;
  v22 = __CFADD__(v22, v67);
  v72 = v73 + v67;
  v22 |= __CFADD__(v70, v72);
  v72 += v70;
  v74 = v22 + v69;
  v75 = (v4 * v15) >> 64;
  v22 = __CFADD__(v71, v4 * v15);
  v76 = v71 + v4 * v15;
  v78 = v22;
  v22 = __CFADD__(v22, v72);
  v77 = v78 + v72;
  v22 |= __CFADD__(v75, v77);
  v77 += v75;
  v79 = v22 + v74;
  v80 = (v9 * v11) >> 64;
  v22 = __CFADD__(v77, v9 * v11);
  v81 = v77 + v9 * v11;
  v83 = v22;
  v22 = __CFADD__(v22, v79);
  v82 = v83 + v79;
  v22 |= __CFADD__(v80, v82);
  v82 += v80;
  v84 = v22;
  v85 = (*v3 * v12) >> 64;
  v22 = __CFADD__(v81, *v3 * v12);
  v86 = v81 + *v3 * v12;
  v88 = v22;
  v22 = __CFADD__(v22, v82);
  v87 = v88 + v82;
  v22 |= __CFADD__(v85, v87);
  v87 += v85;
  v89 = v22 + v84;
  v90 = (v7 * v13) >> 64;
  v22 = __CFADD__(v86, v7 * v13);
  v91 = v86 + v7 * v13;
  v93 = v22;
  v22 = __CFADD__(v22, v87);
  v92 = v93 + v87;
  v22 |= __CFADD__(v90, v92);
  v92 += v90;
  v94 = v22 + v89;
  v95 = (v6 * v14) >> 64;
  v22 = __CFADD__(v91, v6 * v14);
  v96 = v91 + v6 * v14;
  v98 = v22;
  v22 = __CFADD__(v22, v92);
  v97 = v98 + v92;
  v22 |= __CFADD__(v95, v97);
  v97 += v95;
  v99 = v22 + v94;
  v100 = (v5 * v15) >> 64;
  v22 = __CFADD__(v96, v5 * v15);
  v101 = v96 + v5 * v15;
  v103 = v22;
  v22 = __CFADD__(v22, v97);
  v102 = v103 + v97;
  v22 |= __CFADD__(v100, v102);
  v102 += v100;
  v104 = v22 + v99;
  v105 = (v4 * v16) >> 64;
  v22 = __CFADD__(v101, v4 * v16);
  v106 = v101 + v4 * v16;
  v108 = v22;
  v22 = __CFADD__(v22, v102);
  v107 = v108 + v102;
  v22 |= __CFADD__(v105, v107);
  v107 += v105;
  v109 = 0x100000001 * v4 * v11;
  v110 = HIDWORD(v109);
  v111 = HIDWORD(v109) + __CFADD__(v4 * v11, (v4 * v11) << 32) + v18;
  v112 = __PAIR128__(v51, __CFADD__(__CFADD__(v4 * v11, (v4 * v11) << 32), v18) | __CFADD__(HIDWORD(v109), __CFADD__(v4 * v11, (v4 * v11) << 32) + v18)) + v31;
  v113 = __CFADD__(__CFADD__(__CFADD__(__CFADD__(v4 * v11, (v4 * v11) << 32), v18) | __CFADD__(HIDWORD(v109), __CFADD__(v4 * v11, (v4 * v11) << 32) + v18), v31), v51);
  v114 = __PAIR128__(v106, v113) + v76;
  v116 = __CFADD__(__CFADD__(v113, v76), v106);
  v115 = v109 + v116 + v107;
  v117 = (__CFADD__(v116, v107) | __CFADD__(v109, v116 + v107)) + v22 + v104;
  v22 = v111 >= (v4 * v11) << 32;
  v120 = __PAIR128__(v112, v111) - __PAIR128__(v109, (v4 * v11) << 32);
  v119 = v120 >> 64;
  v118 = v120;
  v121 = !__CFSUB__(v112, v109, v22);
  v22 = v119 >= v110;
  v124 = __PAIR128__(*(&v112 + 1), v119) - __PAIR128__(v121, v110);
  v123 = v124 >> 64;
  v122 = v124;
  v126 = __CFSUB__(*(&v112 + 1), v121, v22);
  v125 = v114 - !v126;
  v128 = v114 >= !v126;
  v127 = *(&v114 + 1) - !v128;
  v129 = __PAIR128__(v117, v115) - (*(&v114 + 1) < !v128);
  v130 = v129 + v9 * v12;
  v131 = v130 + v8 * v13;
  v132 = v131 + v7 * v14;
  v133 = v132 + v6 * v15;
  v134 = v133 + v5 * v16;
  v135 = 0x100000001 * v118;
  v136 = (0x100000001 * v118) >> 32;
  v22 = __CFADD__(__CFADD__(v118, v118 << 32), v122);
  v137 = __CFADD__(v118, v118 << 32) + v122;
  v22 |= __CFADD__(v136, v137);
  v137 += v136;
  v138 = v22 + v123;
  v139 = __CFADD__(v22, v123);
  v140 = __PAIR128__(v127, v139) + v125;
  v142 = __CFADD__(__CFADD__(v139, v125), v127);
  v141 = v142 + v134;
  v143 = v135 + __CFADD__(v142, v134) + *(&v134 + 1);
  v144 = (__CFADD__(__CFADD__(v142, v134), *(&v134 + 1)) | __CFADD__(v135, __CFADD__(v142, v134) + *(&v134 + 1))) + (__CFADD__(__CFADD__(v133, v5 * v16), *(&v133 + 1)) | __CFADD__((v5 * v16) >> 64, *(&v134 + 1))) + (__CFADD__(__CFADD__(v132, v6 * v15), *(&v132 + 1)) | __CFADD__((v6 * v15) >> 64, *(&v133 + 1))) + (__CFADD__(__CFADD__(v131, v7 * v14), *(&v131 + 1)) | __CFADD__((v7 * v14) >> 64, *(&v132 + 1))) + (__CFADD__(__CFADD__(v130, v8 * v13), *(&v130 + 1)) | __CFADD__((v8 * v13) >> 64, *(&v131 + 1))) + (__CFADD__(__CFADD__(v129, v9 * v12), *(&v129 + 1)) | __CFADD__((v9 * v12) >> 64, *(&v130 + 1)));
  v22 = v137 >= v135 << 32;
  v145 = v137 - (v135 << 32);
  LOBYTE(v142) = v22;
  v22 = __CFSUB__(v138, v135, v22);
  v146 = v138 - (v135 + !v142);
  v147 = !v22;
  v22 = v146 >= v136;
  v150 = __PAIR128__(v140, v146) - __PAIR128__(v147, v136);
  v149 = v150 >> 64;
  v148 = v150;
  v152 = __CFSUB__(v140, v147, v22);
  v151 = *(&v140 + 1) - !v152;
  v154 = *(&v140 + 1) >= !v152;
  v22 = v141 >= !v154;
  v153 = v141 - !v154;
  v155 = __PAIR128__(v144, v143) - !v22;
  v156 = v155 + v9 * v13;
  v157 = v156 + v8 * v14;
  v158 = v157 + v7 * v15;
  v159 = v158 + v6 * v16;
  v160 = 0x100000001 * v145;
  v161 = (0x100000001 * v145) >> 32;
  v22 = __CFADD__(__CFADD__(v145, v145 << 32), v148);
  v162 = __CFADD__(v145, v145 << 32) + v148;
  v22 |= __CFADD__(v161, v162);
  v162 += v161;
  v163 = v22 + v149;
  v164 = __CFADD__(v22, v149);
  v165 = __PAIR128__(v153, v164) + v151;
  v167 = __CFADD__(__CFADD__(v164, v151), v153);
  v166 = v167 + v159;
  v168 = v160 + __CFADD__(v167, v159) + *(&v159 + 1);
  v169 = (__CFADD__(__CFADD__(v167, v159), *(&v159 + 1)) | __CFADD__(v160, __CFADD__(v167, v159) + *(&v159 + 1))) + (__CFADD__(__CFADD__(v158, v6 * v16), *(&v158 + 1)) | __CFADD__((v6 * v16) >> 64, *(&v159 + 1))) + (__CFADD__(__CFADD__(v157, v7 * v15), *(&v157 + 1)) | __CFADD__((v7 * v15) >> 64, *(&v158 + 1))) + (__CFADD__(__CFADD__(v156, v8 * v14), *(&v156 + 1)) | __CFADD__((v8 * v14) >> 64, *(&v157 + 1))) + (__CFADD__(__CFADD__(v155, v9 * v13), *(&v155 + 1)) | __CFADD__((v9 * v13) >> 64, *(&v156 + 1)));
  v22 = v162 >= v160 << 32;
  v170 = v162 - (v160 << 32);
  LOBYTE(v167) = v22;
  v22 = __CFSUB__(v163, v160, v22);
  v171 = v163 - (v160 + !v167);
  v172 = !v22;
  v22 = v171 >= v161;
  v175 = __PAIR128__(v165, v171) - __PAIR128__(v172, v161);
  v174 = v175 >> 64;
  v173 = v175;
  v177 = __CFSUB__(v165, v172, v22);
  v176 = *(&v165 + 1) - !v177;
  v179 = *(&v165 + 1) >= !v177;
  v22 = v166 >= !v179;
  v178 = v166 - !v179;
  v180 = __PAIR128__(v169, v168) - !v22;
  v181 = v180 + v9 * v14;
  v182 = v181 + v8 * v15;
  v183 = v182 + v7 * v16;
  v184 = 0x100000001 * v170;
  v185 = (0x100000001 * v170) >> 32;
  v22 = __CFADD__(__CFADD__(v170, v170 << 32), v173);
  v186 = __CFADD__(v170, v170 << 32) + v173;
  v22 |= __CFADD__(v185, v186);
  v186 += v185;
  v187 = v22 + v174;
  v188 = __CFADD__(v22, v174);
  v189 = __PAIR128__(v178, v188) + v176;
  v191 = __CFADD__(__CFADD__(v188, v176), v178);
  v190 = v191 + v183;
  v192 = v184 + __CFADD__(v191, v183) + *(&v183 + 1);
  v193 = (__CFADD__(__CFADD__(v191, v183), *(&v183 + 1)) | __CFADD__(v184, __CFADD__(v191, v183) + *(&v183 + 1))) + (__CFADD__(__CFADD__(v182, v7 * v16), *(&v182 + 1)) | __CFADD__((v7 * v16) >> 64, *(&v183 + 1))) + (__CFADD__(__CFADD__(v181, v8 * v15), *(&v181 + 1)) | __CFADD__((v8 * v15) >> 64, *(&v182 + 1))) + (__CFADD__(__CFADD__(v180, v9 * v14), *(&v180 + 1)) | __CFADD__((v9 * v14) >> 64, *(&v181 + 1)));
  v22 = v186 >= v184 << 32;
  v194 = v186 - (v184 << 32);
  LOBYTE(v191) = v22;
  v22 = __CFSUB__(v187, v184, v22);
  v195 = v187 - (v184 + !v191);
  v196 = !v22;
  v22 = v195 >= v185;
  v199 = __PAIR128__(v189, v195) - __PAIR128__(v196, v185);
  v198 = v199 >> 64;
  v197 = v199;
  v201 = __CFSUB__(v189, v196, v22);
  v200 = *(&v189 + 1) - !v201;
  v203 = *(&v189 + 1) >= !v201;
  v22 = v190 >= !v203;
  v202 = v190 - !v203;
  v204 = __PAIR128__(v193, v192) - !v22;
  v205 = v204 + v9 * v15;
  v206 = v205 + v8 * v16;
  v207 = 0x100000001 * v194;
  v208 = (0x100000001 * v194) >> 32;
  v22 = __CFADD__(__CFADD__(v194, v194 << 32), v197);
  v209 = __CFADD__(v194, v194 << 32) + v197;
  v22 |= __CFADD__(v208, v209);
  v209 += v208;
  v210 = v22 + v198;
  v211 = __CFADD__(v22, v198);
  v212 = __PAIR128__(v202, v211) + v200;
  v214 = __CFADD__(__CFADD__(v211, v200), v202);
  v213 = v214 + v206;
  v215 = v207 + __CFADD__(v214, v206) + *(&v206 + 1);
  v216 = (__CFADD__(__CFADD__(v214, v206), *(&v206 + 1)) | __CFADD__(v207, __CFADD__(v214, v206) + *(&v206 + 1))) + (__CFADD__(__CFADD__(v205, v8 * v16), *(&v205 + 1)) | __CFADD__((v8 * v16) >> 64, *(&v206 + 1))) + (__CFADD__(__CFADD__(v204, v9 * v15), *(&v204 + 1)) | __CFADD__((v9 * v15) >> 64, *(&v205 + 1)));
  v22 = v209 >= v207 << 32;
  v217 = v209 - (v207 << 32);
  LOBYTE(v214) = v22;
  v22 = __CFSUB__(v210, v207, v22);
  v218 = v210 - (v207 + !v214);
  v219 = !v22;
  v22 = v218 >= v208;
  v222 = __PAIR128__(v212, v218) - __PAIR128__(v219, v208);
  v221 = v222 >> 64;
  v220 = v222;
  v224 = __CFSUB__(v212, v219, v22);
  v223 = *(&v212 + 1) - !v224;
  v226 = *(&v212 + 1) >= !v224;
  v22 = v213 >= !v226;
  v225 = v213 - !v226;
  v227 = __PAIR128__(v216, v215) - !v22;
  v228 = v227 + v9 * v16;
  v229 = 0x100000001 * v217;
  v230 = (0x100000001 * v217) >> 32;
  v22 = __CFADD__(__CFADD__(v217, v217 << 32), v220);
  v231 = __CFADD__(v217, v217 << 32) + v220;
  v22 |= __CFADD__(v230, v231);
  v231 += v230;
  v232 = v22 + v221;
  v233 = __CFADD__(v22, v221);
  v234 = __PAIR128__(v225, v233) + v223;
  v236 = __CFADD__(__CFADD__(v233, v223), v225);
  v235 = v236 + v228;
  v237 = v229 + __CFADD__(v236, v228) + *(&v228 + 1);
  v238 = (__CFADD__(__CFADD__(v236, v228), *(&v228 + 1)) | __CFADD__(v229, __CFADD__(v236, v228) + *(&v228 + 1))) + (__CFADD__(__CFADD__(v227, v9 * v16), *(&v227 + 1)) | __CFADD__((v9 * v16) >> 64, *(&v228 + 1)));
  v22 = v231 >= v229 << 32;
  v239 = v231 - (v229 << 32);
  LOBYTE(v236) = v22;
  v22 = __CFSUB__(v232, v229, v22);
  v240 = v232 - (v229 + !v236);
  v241 = !v22;
  v22 = v240 >= v230;
  v244 = __PAIR128__(v234, v240) - __PAIR128__(v241, v230);
  v243 = v244 >> 64;
  v242 = v244;
  v246 = __CFSUB__(v234, v241, v22);
  v245 = *(&v234 + 1) - !v246;
  v248 = *(&v234 + 1) >= !v246;
  v22 = v235 >= !v248;
  v247 = v235 - !v248;
  v249 = __PAIR128__(v238, v237) - !v22;
  v22 = v239 >= 0xFFFFFFFF;
  v250 = v239 - 0xFFFFFFFF;
  v252 = v22;
  v22 = __CFSUB__(v242, 0xFFFFFFFF00000000, v22);
  v251 = v242 - (!v252 - 0x100000000);
  v254 = v22;
  v22 = __CFSUB__(v243, -2, v22);
  v253 = v243 - (!v254 - 2);
  v256 = v22;
  v22 = __CFSUB__(v245, -1, v22);
  v255 = v245 - (!v256 - 1);
  v258 = v22;
  v22 = __CFSUB__(v247, -1, v22);
  v257 = v247 - (!v258 - 1);
  v259 = v249 - (!v22 - 1);
  v260 = *(&v249 + 1) - !__CFSUB__(v249, -1, v22);
  v22 = __CFADD__(__CFADD__(v250, (v260 & 0xFFFFFFFF00000000) >> 32), v251);
  v261 = __CFADD__(v250, (v260 & 0xFFFFFFFF00000000) >> 32) + v251;
  v263 = v22 | __CFADD__(v260 & 0xFFFFFFFF00000000, v261);
  v22 = __CFADD__(v263, v253);
  v262 = v263 + v253;
  v265 = v22 | __CFADD__(v260 & 0xFFFFFFFFFFFFFFFELL, v262);
  v22 = __CFADD__(v265, v255);
  v264 = v265 + v255;
  v267 = v22 | __CFADD__(v260, v264);
  v22 = __CFADD__(v267, v257);
  v266 = v267 + v257;
  *a1 = v250 + ((v260 & 0xFFFFFFFF00000000) >> 32);
  a1[1] = (v260 & 0xFFFFFFFF00000000) + v261;
  v268 = a1 + 2;
  *v268 = (v260 & 0xFFFFFFFFFFFFFFFELL) + v262;
  v268[1] = v260 + v264;
  result = v268 + 2;
  *result = v260 + v266;
  result[1] = v260 + (v22 | __CFADD__(v260, v266)) + v259;
  return result;
}

uint64_t ccn_cond_add(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  v12 = 0;
  if (a1)
  {
    v13 = 0;
    do
    {
      v15 = *a4++;
      v14 = v15;
      v17 = *a5++;
      v16 = v17;
      v18 = __CFADD__(v12, v14);
      v19 = v12 + v14;
      if (v18)
      {
        v13 = 1;
      }

      v18 = __CFADD__(v19, v16);
      v20 = v19 + v16;
      if (v18)
      {
        v12 = v13 + 1;
      }

      else
      {
        v12 = v13;
      }

      v21 = v14 ^ v20;
      v22 = v14 ^ mask;
      *a3 = v22;
      *a3++ = v21 & v11 ^ v21 & 0x5555555555555555 ^ v22 ^ mask;
      v13 = 0;
      --a1;
    }

    while (a1);
  }

  return v12 & a2;
}

uint64_t cczp_is_quadratic_residue_ws(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = cczp_n(a2);
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, v6);
  v9 = cczp_prime(a2);
  ccn_set(v6, v8, v9);
  v8->i64[0] &= ~1uLL;
  v10 = (*(a1 + 24))(a1, v6);
  ccn_shift_right(v6, v10, v8, 1);
  v11 = (*(a1 + 24))(a1, v6);
  LODWORD(a3) = -(cczp_power_fast_ws(a1, a2, v11, a3, v10) != 0);
  cczp_from_ws(a1, a2);
  v12 = (*v11 | ccn_n(v6, v11)) != 1;
  *(a1 + 16) = v7;
  return !v12 ? a3 : -1;
}

uint64_t ccdrbg_reseed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 16))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccdrbg_generate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 24))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccccm_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = (*a1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v27 - v20;
  bzero(&v27 - v20, v20);
  v22 = (*(a1 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v27 - v22;
  bzero(&v27 - v22, v22);
  v24 = (*(a1 + 24))(a1, v21, a2, a3);
  if (!v24)
  {
    v24 = (*(a1 + 32))(v21, v23, a4, a5, a11, a9, a6);
    if (!v24)
    {
      v24 = (*(a1 + 40))(v21, v23, a9, a10);
      if (!v24)
      {
        v24 = (*(a1 + 48))(v21, v23, a6, a7, a8);
        if (!v24)
        {
          v24 = (*(a1 + 56))(v21, v23, a12);
        }
      }
    }
  }

  v25 = v24;
  cc_clear(*a1, v21);
  cc_clear(*(a1 + 8), v23);
  return v25;
}

uint64_t cczp_add_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = (*(a1 + 24))(a1, v11);
  LOBYTE(a5) = ccn_add_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  v14 = ccn_sub_ws(a1, v11, v12, a3, v13);
  result = ccn_mux(v11, !v14 | a5, a3, v12, a3);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccn_p384_inv_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, 6);
  v9 = (*(a1 + 24))(a1, 6);
  v10 = (*(a1 + 24))(a1, 6);
  ccn_mulmod_p384(v10, a4, a4);
  ccn_mulmod_p384(v9, v10, a4);
  ccn_mulmod_p384(v9, v9, v9);
  ccn_mulmod_p384(v9, v9, v9);
  ccn_mulmod_p384(v8, v9, a4);
  ccn_mulmod_p384(v9, v8, v10);
  v11 = 4;
  do
  {
    ccn_mulmod_p384(v9, v9, v9);
    --v11;
  }

  while (v11);
  ccn_mulmod_p384(v8, v8, v9);
  ccn_mulmod_p384(v9, v8, v10);
  v12 = 8;
  do
  {
    ccn_mulmod_p384(v9, v9, v9);
    --v12;
  }

  while (v12);
  ccn_mulmod_p384(v8, v8, v9);
  ccn_mulmod_p384(v9, v8, v10);
  v13 = 16;
  do
  {
    ccn_mulmod_p384(v9, v9, v9);
    --v13;
  }

  while (v13);
  ccn_mulmod_p384(v8, v8, v9);
  ccn_mulmod_p384(v9, v8, a4);
  ccn_mulmod_p384(v10, v9, a4);
  v14 = 32;
  do
  {
    ccn_mulmod_p384(v10, v10, v10);
    --v14;
  }

  while (v14);
  ccn_mulmod_p384(v9, v10, v9);
  v15 = 64;
  do
  {
    ccn_mulmod_p384(v10, v10, v10);
    --v15;
  }

  while (v15);
  ccn_mulmod_p384(v10, v10, v8);
  ccn_mulmod_p384(v8, v9, a4);
  v16 = 64;
  do
  {
    ccn_mulmod_p384(v8, v8, v8);
    --v16;
  }

  while (v16);
  ccn_mulmod_p384(v9, v8, v9);
  ccn_mulmod_p384(v8, v9, a4);
  v17 = 128;
  do
  {
    ccn_mulmod_p384(v8, v8, v8);
    --v17;
  }

  while (v17);
  ccn_mulmod_p384(v8, v8, v9);
  v18 = 128;
  do
  {
    ccn_mulmod_p384(v8, v8, v8);
    --v18;
  }

  while (v18);
  ccn_mulmod_p384(v9, v8, v10);
  ccn_mulmod_p384(v8, v9, a4);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 1;
  ccn_mulmod_p384(v8, v8, &v20);
  if (ccn_n(6, v8) == 1 && *v8 == 1)
  {
    ccn_set(6, a3, v9);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  return result;
}

void *ccn_p384_from_asm_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 1;
  return ccn_mulmod_p384(a3, a4, &v5);
}

uint64_t cczp_div2_ws(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t *a4)
{
  v7 = cczp_n(a2);
  v8 = *a4;
  v9 = cczp_prime(a2);
  v10 = ccn_cond_add(v7, v8 & 1, a3->i64, a4, v9);
  result = ccn_shift_right(v7, a3, a3, 1);
  a3->i64[v7 - 1] |= v10 << 63;
  return result;
}

uint64_t cczp_modn_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = cczp_n(a2);
  v11 = v10;
  v22 = (a4 - 1) / v10;
  if (v22 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (a4 - 1) / v10;
  }

  v20 = a4;
  v21 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 2 * v10);
  v23 = a5;
  ccn_set(v11, v13, a5);
  v19 = v12;
  v14 = v12 - 1;
  if (v14)
  {
    v15 = 0;
    v16 = &v23[8 * v11];
    do
    {
      ++v15;
      ccn_set(v11, &v13[8 * v11], v16);
      cczp_mm_redc_ws(a1, a2, v13, v13);
      v16 += 8 * v11;
    }

    while (v15 < v14);
  }

  if (v20 != v19 * v11)
  {
    ccn_set(v20 - v19 * v11, &v13[8 * v11], &v23[8 * v19 * v11]);
  }

  ccn_zero(v11 - (v20 - v19 * v11), &v13[8 * v11 + 8 * (v20 - v19 * v11)]);
  cczp_mm_redc_ws(a1, a2, a3, v13);
  v17 = 0;
  do
  {
    ccn_mul_ws(a1, v11, v13, a3, &a2[*a2 + 4]);
    result = cczp_mm_redc_ws(a1, a2, a3, v13);
    ++v17;
  }

  while (v22 > v17);
  *(a1 + 16) = v21;
  return result;
}

uint64_t cczp_mod_default_ws(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v8 = 2 * cczp_n(a2);

  return cczp_modn_ws(a1, a2, a3, v8, a4);
}

uint64_t cczp_mul_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  v10 = cczp_n(a2);
  v11 = (*(a1 + 24))(a1, 2 * v10);
  v12 = cczp_n(a2);
  ccn_mul_ws(a1, v12, v11, a4, a5);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

_OWORD *ccn_mulmod_p256(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v9 = *a3;
  v10 = a3[1];
  v8 = a3 + 2;
  v11 = *v8;
  v12 = v8[1];
  v13 = v4 * v9;
  v14 = (v5 * v9) >> 64;
  v15 = *v3 * v9;
  v16 = (v6 * v9) >> 64;
  v18 = v9;
  v17 = (__PAIR128__(v5, v4) * v9) >> 64;
  v19 = __CFADD__(__CFADD__((v4 * v9) >> 64, v5 * v9), v14);
  v20 = __CFADD__((v4 * v9) >> 64, v5 * v9) + v14;
  v19 |= __CFADD__(v15, v20);
  v20 += v15;
  v21 = (v7 * v9) >> 64;
  v22 = (v7 * v10) >> 64;
  v24 = v19;
  v19 = __CFADD__(v19, v16);
  v23 = v24 + v16;
  v19 |= __CFADD__(v7 * v9, v23);
  v23 += v7 * v9;
  v26 = v19;
  v19 = __CFADD__(v19, v21);
  v25 = v26 + v21;
  v19 |= __CFADD__(v7 * v10, v25);
  v25 += v7 * v10;
  v27 = v7 * *v8;
  v28 = (v7 * v11) >> 64;
  v30 = v19;
  v19 = __CFADD__(v19, v22);
  v29 = v30 + v22;
  v19 |= __CFADD__(v27, v29);
  v29 += v27;
  v32 = v19;
  v19 = __CFADD__(v19, v28);
  v31 = v32 + v28;
  v19 |= __CFADD__(v7 * v12, v31);
  v31 += v7 * v12;
  v33 = v19 + ((v7 * v12) >> 64);
  v34 = (v4 * v10) >> 64;
  v19 = __CFADD__(v17, v4 * v10);
  v35 = (__PAIR128__(v10, v18) * __PAIR128__(v5, v4)) >> 64;
  v37 = v19;
  v19 = __CFADD__(v19, v20);
  v36 = v37 + v20;
  v19 |= __CFADD__(v34, v36);
  v36 += v34;
  v38 = (v6 * v10) >> 64;
  v40 = v19;
  v19 = __CFADD__(v19, v23);
  v39 = v40 + v23;
  v19 |= __CFADD__(v6 * v10, v39);
  v39 += v6 * v10;
  v42 = v19;
  v19 = __CFADD__(v19, v25);
  v41 = v42 + v25;
  v19 |= __CFADD__(v38, v41);
  v41 += v38;
  v43 = (v6 * v12) >> 64;
  v45 = v19;
  v19 = __CFADD__(v19, v29);
  v44 = v45 + v29;
  v19 |= __CFADD__(v6 * v12, v44);
  v44 += v6 * v12;
  v47 = v19;
  v19 = __CFADD__(v19, v31);
  v46 = v47 + v31;
  v19 |= __CFADD__(v43, v46);
  v46 += v43;
  v48 = v19 + v33;
  v49 = (v5 * v10) >> 64;
  v19 = __CFADD__(v36, v5 * v10);
  v50 = v36 + v5 * v10;
  v52 = v19;
  v19 = __CFADD__(v19, v39);
  v51 = v52 + v39;
  v19 |= __CFADD__(v49, v51);
  v51 += v49;
  v53 = (v6 * v11) >> 64;
  v55 = v19;
  v19 = __CFADD__(v19, v41);
  v54 = v55 + v41;
  v19 |= __CFADD__(v6 * v11, v54);
  v54 += v6 * v11;
  v57 = v19;
  v19 = __CFADD__(v19, v44);
  v56 = v57 + v44;
  v19 |= __CFADD__(v53, v56);
  v56 += v53;
  v58 = v19;
  v59 = (v4 * v11) >> 64;
  v19 = __CFADD__(v50, v4 * v11);
  v60 = v50 + v4 * v11;
  v62 = v19;
  v19 = __CFADD__(v19, v51);
  v61 = v62 + v51;
  v19 |= __CFADD__(v59, v61);
  v61 += v59;
  v63 = (v5 * v12) >> 64;
  v65 = v19;
  v19 = __CFADD__(v19, v54);
  v64 = v65 + v54;
  v19 |= __CFADD__(v5 * v12, v64);
  v64 += v5 * v12;
  v67 = v19;
  v19 = __CFADD__(v19, v56);
  v66 = v67 + v56;
  v19 |= __CFADD__(v63, v66);
  v66 += v63;
  v68 = v19 + v58;
  v69 = (v5 * v11) >> 64;
  v19 = __CFADD__(v61, v5 * v11);
  v70 = v61 + v5 * v11;
  v72 = v19;
  v19 = __CFADD__(v19, v64);
  v71 = v72 + v64;
  v19 |= __CFADD__(v69, v71);
  v71 += v69;
  v73 = v19;
  v74 = (v4 * v12) >> 64;
  v19 = __CFADD__(v70, v4 * v12);
  v75 = v70 + v4 * v12;
  v77 = v19;
  v19 = __CFADD__(v19, v71);
  v76 = v77 + v71;
  v19 |= __CFADD__(v74, v76);
  v76 += v74;
  v79 = v19;
  v19 = __CFADD__(v19, v66);
  v78 = v79 + v66;
  v19 |= __CFADD__(v73, v78);
  v78 += v73;
  v81 = v19;
  v19 = __CFADD__(v19, v46);
  v80 = v81 + v46;
  v19 |= __CFADD__(v68, v80);
  v80 += v68;
  v82 = v19 + v48;
  v19 = __CFADD__(v35, v13 << 32);
  v83 = v35 + (v13 << 32);
  v85 = v19;
  v19 = __CFADD__(v19, v60);
  v84 = v85 + v60;
  v19 |= __CFADD__(HIDWORD(v13), v84);
  v84 += HIDWORD(v13);
  v87 = v19;
  v19 = __CFADD__(v19, v75);
  v86 = v87 + v75;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v13, v86);
  v86 += 0xFFFFFFFF00000001 * v13;
  v88 = v19 + ((v13 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v84, v83 << 32);
  v89 = v84 + (v83 << 32);
  v91 = v19;
  v19 = __CFADD__(v19, v86);
  v90 = v91 + v86;
  v19 |= __CFADD__(HIDWORD(v83), v90);
  v90 += HIDWORD(v83);
  v93 = v19;
  v19 = __CFADD__(v19, v76);
  v92 = v93 + v76;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v83, v92);
  v92 += 0xFFFFFFFF00000001 * v83;
  v94 = v19 + ((v83 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v90, v89 << 32);
  v95 = v90 + (v89 << 32);
  v97 = v19;
  v19 = __CFADD__(v19, v92);
  v96 = v97 + v92;
  v19 |= __CFADD__(HIDWORD(v89), v96);
  v96 += HIDWORD(v89);
  v99 = v19;
  v19 = __CFADD__(v19, v78);
  v98 = v99 + v78;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v89, v98);
  v98 += 0xFFFFFFFF00000001 * v89;
  v100 = v19 + ((v89 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v96, v95 << 32);
  v101 = v96 + (v95 << 32);
  v103 = v19;
  v19 = __CFADD__(v19, v98);
  v102 = v103 + v98;
  v19 |= __CFADD__(HIDWORD(v95), v102);
  v102 += HIDWORD(v95);
  v105 = v19;
  v19 = __CFADD__(v19, v80);
  v104 = v105 + v80;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v95, v104);
  v104 += 0xFFFFFFFF00000001 * v95;
  v106 = v19 + ((v95 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v88, v101);
  v107 = v88 + v101;
  v109 = v19;
  v19 = __CFADD__(v19, v94);
  v108 = v109 + v94;
  v19 |= __CFADD__(v102, v108);
  v108 += v102;
  v111 = v19;
  v19 = __CFADD__(v19, v100);
  v110 = v111 + v100;
  v19 |= __CFADD__(v104, v110);
  v110 += v104;
  v113 = v19;
  v19 = __CFADD__(v19, v106);
  v112 = v113 + v106;
  v19 |= __CFADD__(v82, v112);
  v112 += v82;
  v114 = v19;
  v19 = __CFADD__(v107++, 1);
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v108, 0xFFFFFFFFLL, v19);
  v115 = v108 - (!v113 + 0xFFFFFFFFLL);
  LOBYTE(v113) = v19;
  v19 = v110 >= !v19;
  v116 = v110 - !v113;
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v112, 0xFFFFFFFF00000001, v19);
  v117 = v114 - !v19;
  v118 = v114 - !v19;
  v19 = __CFADD__(__CFADD__(v107, v117), v115);
  v119 = __CFADD__(v107, v117) + v115;
  *a1 = v107 + v117;
  a1[1] = v118 + v119;
  result = a1 + 2;
  *result = __PAIR128__(v117 & 0xFFFFFFFF00000001, v19 | __CFADD__(v118, v119)) + __PAIR128__(v112 - (!v113 - 0xFFFFFFFF), v116);
  return result;
}

uint64_t cccmac_update_internal(void *a1, unint64_t a2, char *__src)
{
  result = 0;
  if (a2)
  {
    v5 = __src;
    if (__src)
    {
      v6 = a2;
      v7 = a1[8];
      memset(&v12[2], 0, 224);
      v8 = a1[6];
      if (16 - v8 >= a2)
      {
        v9 = a2;
      }

      else
      {
        v9 = 16 - v8;
      }

      memset(v12, 0, 32);
      if (v8 > 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      if (v8)
      {
        memcpy(a1 + v8 + 32, __src, v9);
        a1[6] += v9;
        v6 -= v9;
        if (!v6)
        {
          return 0;
        }

        v5 += v9;
        cccbc_update_internal(v7, (a1 + 9), a1 + *v7 + 72, 1, (a1 + 4), v12);
        a1[7] += 16;
      }

      if (v6 >= 0x11)
      {
        v10 = (v6 - 1) >> 4;
        do
        {
          if (v10 >= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = v10;
          }

          cccbc_update_internal(v7, (a1 + 9), a1 + *v7 + 72, v11, v5, v12);
          v5 += 16 * v11;
          v10 -= v11;
        }

        while (v10);
      }

      __memcpy_chk();
      result = 0;
      a1[6] = v6 - ((v6 - 1) & 0xFFFFFFFFFFFFFFF0);
    }
  }

  return result;
}

uint64_t cczp_sqr_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = cczp_n(a2);
  v9 = (*(a1 + 24))(a1, 2 * v8);
  ccn_sqr_ws(a1, v8, v9, a4);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v7;
  return result;
}

uint64_t cczp_sub_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = ccn_sub_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  result = ccn_cond_add(v11, v12, a3, a3, v13);
  *(a1 + 16) = v10;
  return result;
}

uint64_t cccmac_init_internal(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = 4294967289;
  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    v9 = a2 + 72;
    cccbc_init_internal(a1);
    __src[0] = 0;
    __src[1] = 0;
    cccbc_set_iv_internal(a1, (v9 + *a1), __src);
    *(a2 + 56) = 0;
    *(a2 + 64) = a1;
    *(a2 + 48) = 0;
    return cccmac_generate_subkeys(a1, a3, a4, a2, a2 + 16);
  }

  return result;
}

uint64_t ccrng_getentropy_generate(int a1, unint64_t a2, char *buffer)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v4 >= 0x100)
      {
        v5 = 256;
      }

      else
      {
        v5 = v4;
      }

      if (getentropy(buffer, v5) == -1)
      {
        ccrng_getentropy_generate_cold_1();
      }

      buffer += v5;
      v4 -= v5;
    }

    while (v4);
  }

  return 0;
}

uint64_t ccdrbg_df_derive_keys(uint64_t (**a1)(void), uint64_t a2, uint64_t a3, rsize_t a4, void *a5)
{
  v7 = (*a1)();
  if (v7)
  {
    cc_clear(a4, a5);
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_1_45()
{
  v3 = *(*(v0 + 8) + 8);

  return cc_clear(v3, v1);
}

void *cc_malloc_clear(size_t a1)
{
  v2 = malloc(a1);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

uint64_t cc_ws_alloc(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + 8 * v2;
  v5 = v2 + a2;
  a1[2] = v5;
  cc_try_abort_if (v5 > v3);
  return v4;
}

void cc_ws_free(uint64_t a1)
{
  cc_try_abort_if (*(a1 + 16) > *(a1 + 8));
  cc_clear(8 * *(a1 + 8), *a1);
  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ccmode_ccm_init(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  (*(v2 + 16))();
  return 0;
}

uint64_t ccmode_ccm_macdata(uint64_t result, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = *(*result + 8);
  if (a3)
  {
    result = (*(*result + 24))(result + 8, 1, a2 + 16, a2 + 16);
    v10 = 0;
    *(a2 + 72) = 0;
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  v11 = 0;
  v12 = a5 - 1;
  do
  {
    if (a4 - v11 >= v9 - v10)
    {
      v13 = v9 - v10;
    }

    else
    {
      v13 = a4 - v11;
    }

    if (v13)
    {
      v14 = v13;
      do
      {
        *(a2 + 15 + v10 + v14) ^= *(v12 + v11 + v14);
        --v14;
      }

      while (v14);
    }

    v10 = (v10 + v13) % v9;
    if (!v10)
    {
      result = (*(*v8 + 24))(v8 + 8, 1, a2 + 16, a2 + 16);
    }

    v11 += v13;
  }

  while (v11 < a4);
LABEL_15:
  *(a2 + 72) = v10;
  return result;
}

uint64_t ccmode_ccm_crypt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = *(*result + 8);
    v12 = *(a2 + 80);
    v13 = (v11 + ~v12);
    v14 = a2 + 48;
    v15 = *(a2 + 68);
    v16 = a2 + v12;
    do
    {
      if (!v15)
      {
        v17 = v13;
        do
        {
          if (v17 < 1)
          {
            break;
          }

          v18 = (*(v16 + v17--))++ + 1;
        }

        while ((v18 & 0x100) != 0);
        result = (*(*v9 + 24))(v9 + 8, 1, a2, v14);
        v15 = *(a2 + 68);
      }

      *(a5 + v10) = *(v14 + v15) ^ *(a4 + v10);
      v15 = (*(a2 + 68) + 1) % v11;
      *(a2 + 68) = v15;
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

uint64_t ccmode_ccm_reset(uint64_t a1, uint64_t a2)
{
  cc_clear(0x10uLL, (a2 + 32));
  cc_clear(0x10uLL, (a2 + 48));
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 64) = 1;
  return 0;
}

_BYTE *cc_disable_dit(_BYTE *result)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0 && *result == 1)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

BOOL acc_policies_shouldFailAuthOnOOBPairingFailure(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) == 9;
  }

  return result;
}

const __CFData *acc_policies_nfcTagUseKeys(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    result = CFDataGetLength(result);
    if (result)
    {
      return (*CFDataGetBytePtr(v1) - 87 < 2);
    }
  }

  return result;
}

void platform_connectionInfo_configStreamCategoryListReady(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13, v14, v15, v16, 0);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, OS_LOG_TYPE_INFO, v9, v10, 0x16u);
  }

  if (a1)
  {
    if (a2)
    {
      v11 = +[ACCConnectionInfoServer sharedServer];
      [v11 configStreamCategoryListReady:a1 connection:a2 client:0];
    }
  }
}

void platform_connectionInfo_configStreamCategoriesResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = HIDWORD(gLogObjects);
  v11 = gNumLogObjects;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 9;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22[2] = v10;
      OUTLINED_FUNCTION_3();
      *(&v22[3] + 2) = v11;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v18, v19, v20, v21, 0);
    }

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_0();
    v23 = v15;
    v24 = a2;
    v25 = v15;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "connectionInfo configStreamCategoriesResponse: %@: %@ - %@, categories: %@", v22, 0x2Au);
  }

  if (a2 && a1)
  {
    if (a3)
    {
      v16 = +[ACCConnectionInfoServer sharedServer];
      [v16 configStreamCategoriesResponse:a4 forEndpoint:a2 connection:a3 client:a1 success:a5];
    }
  }
}

void platform_connectionInfo_configStreamPropertyResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = gLogObjects;
  v15 = gNumLogObjects;
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 9;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v22 = v14;
      v23 = 1024;
      LODWORD(v24) = v15;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v18 = &_os_log_default;
    v17 = &_os_log_default;
  }

  else
  {
    v18 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    v22 = a1;
    v23 = 2112;
    v24 = a3;
    v25 = 2112;
    v26 = a2;
    v27 = 1024;
    v28 = a4;
    v29 = 1024;
    v30 = a5;
    v31 = 2112;
    v32 = a6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "connectionInfo configStreamPropertyResponse: %@: %@ - %@, categoryID: %u, propertyID: %u, value: %@", buf, 0x36u);
  }

  if (a2)
  {
    if (a3)
    {
      v19 = +[ACCConnectionInfoServer sharedServer];
      LOBYTE(v20) = a7;
      [v19 configStreamPropertyResponse:a5 forCategory:a4 forEndpoint:a2 connection:a3 client:a1 value:a6 success:v20];
    }
  }
}

uint64_t platform_connectionInfo_checkConfigStreamCategoryListReady(const void *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_7;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (EndpointWithUUID)
  {
    v4 = EndpointWithUUID;
    if (*(EndpointWithUUID + 7) == 11)
    {
      v5 = EndpointWithUUID[7];
      if (v5)
      {
        v2 = *(v5 + 16);
        goto LABEL_7;
      }

      v19 = logObjectForModule();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = logObjectForModule();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v4 + 7);
        OUTLINED_FUNCTION_6_0();
        v24 = 28;
LABEL_24:
        _os_log_impl(v20, v21, OS_LOG_TYPE_DEFAULT, v22, v23, v24);
      }
    }
  }

  else
  {
    v19 = logObjectForModule();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_0();
      v24 = 22;
      goto LABEL_24;
    }
  }

  v2 = 0;
LABEL_7:
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 9;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, 0);
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0x1Cu);
  }

  return v2 & 1;
}

void platform_configStream_deleteParams(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void platform_connectionInfo_configStreamGetCategories_cold_1()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "CategoryList not available yet! %@ - %@", v3, v4, v5, v6, v7);
  }
}

uint64_t TLV8GetNext(_BYTE *a1, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6)
{
  if (a1 == a2)
  {
    return OUTLINED_FUNCTION_5_2();
  }

  if (a1 >= a2)
  {
    return OUTLINED_FUNCTION_6_1();
  }

  if ((a2 - a1) < 2)
  {
    return OUTLINED_FUNCTION_5_2();
  }

  v6 = a1[1];
  v7 = &a1[v6 + 2];
  if (v7 > a2)
  {
    return OUTLINED_FUNCTION_4_2();
  }

  *a3 = *a1;
  *a4 = a1 + 2;
  *a5 = v6;
  result = 0;
  if (a6)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t TLV8GetUInt64(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int *a4, unsigned __int8 **a5)
{
  do
  {
    if (a1 == a2)
    {
LABEL_16:
      result = 0;
      v9 = -6727;
      goto LABEL_13;
    }

    v5 = a1;
    if (a1 >= a2)
    {
      result = 0;
      v9 = -6705;
      goto LABEL_13;
    }

    if ((a2 - a1) < 2)
    {
      goto LABEL_16;
    }

    v6 = a1 + 2;
    v7 = a1[1];
    a1 += v7 + 2;
    if (a1 > a2)
    {
      result = 0;
      v9 = -6750;
      goto LABEL_13;
    }
  }

  while (*v5 != a3);
  if (a5)
  {
    *a5 = a1;
  }

  result = 0;
  v9 = -6743;
  switch(v7)
  {
    case 1:
      v9 = 0;
      result = *v6;
      break;
    case 2:
      v9 = 0;
      result = *(v5 + 1);
      break;
    case 4:
      v9 = 0;
      result = *v6;
      break;
    case 8:
      v9 = 0;
      result = *v6;
      break;
    default:
      break;
  }

LABEL_13:
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

void _getSleepAssertionPluginInstance_cold_2()
{
  v0 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformSleepAssertionPluginProtocol);
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "[#SleepAssertions] Could not find plugin conforming to %@!", v3, v4, v5, v6, 2u);
}

void _getACPowerPluginInstance_cold_2()
{
  v0 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformIOKitPowerPluginProtocol);
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "[#SleepAssertions] Could not find plugin conforming to %@!", v3, v4, v5, v6, 2u);
}

uint64_t acc_properties_setProperty(__CFDictionary *a1, const void *a2, CFNullRef a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    if (!a3)
    {
      a3 = kCFNull;
    }

    CFDictionarySetValue(a1, a2, a3);
  }

  return v4;
}

uint64_t acc_properties_appendToArrayProperty(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  result = 0;
  if (!a1 || !a2 || !cf)
  {
    return result;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFArrayGetTypeID())
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_1_0();
  Value = CFDictionaryGetValue(v7, v8);
  if (!Value)
  {
    Count = CFArrayGetCount(cf);
    v14 = kCFAllocatorDefault;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
    goto LABEL_9;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFArrayGetTypeID())
  {
    return 0;
  }

  v12 = CFArrayGetCount(cf);
  v13 = CFArrayGetCount(v10);
  v14 = kCFAllocatorDefault;
  Mutable = CFArrayCreateMutableCopy(kCFAllocatorDefault, v13 + v12, v10);
LABEL_9:
  v17 = Mutable;
  v21.length = CFArrayGetCount(cf);
  v21.location = 0;
  CFArrayAppendArray(v17, cf, v21);
  Copy = CFArrayCreateCopy(v14, v17);
  v19 = OUTLINED_FUNCTION_1_0();
  CFDictionarySetValue(v19, v20, Copy);
  if (v17)
  {
    CFRelease(v17);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return 1;
}

uint64_t acc_properties_addToDictionaryProperty(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  result = 0;
  if (!a1 || !a2 || !cf)
  {
    return result;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_1_0();
  Value = CFDictionaryGetValue(v7, v8);
  if (!Value)
  {
    Count = CFDictionaryGetCount(cf);
    v14 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_9;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = CFDictionaryGetCount(cf);
  v13 = CFDictionaryGetCount(v10);
  v14 = kCFAllocatorDefault;
  Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, v13 + v12, v10);
LABEL_9:
  v17 = Mutable;
  OUTLINED_FUNCTION_0_1();
  CFDictionaryApplyFunction(cf, v18, v17);
  Copy = CFDictionaryCreateCopy(v14, v17);
  v20 = OUTLINED_FUNCTION_1_0();
  CFDictionarySetValue(v20, v21, Copy);
  if (v17)
  {
    CFRelease(v17);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return 1;
}

BOOL acc_properties_removeProperty(CFMutableDictionaryRef theDict, const void *a2)
{
  if (theDict)
  {
    CFDictionaryRemoveValue(theDict, a2);
  }

  return theDict != 0;
}

BOOL acc_properties_containsProperty(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryContainsKey(theDict, a2) != 0;
    }
  }

  return result;
}

const void *acc_properties_copyProperty(const __CFDictionary *a1, const void *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, a2);
      v2 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }
  }

  return v2;
}

void acc_nvmInfo_getPairingStatus_cold_1(uint64_t a1, int a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v2, 0x12u);
}

_BYTE *_createFeature_0(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 1;
    }
  }

  return result;
}

uint64_t _destroyFeature_0(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

void _parseIdentificationParams_cold_2()
{
  v0 = logObjectForModule_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v1, v2, "not a kiAP2ParamIdentificationInfo_VehicleDigitalCarKeyInfo parameter passed in!", v3, v4, v5, v6, 0);
  }
}

void _parseIdentificationParams_cold_3()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_5()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_6()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_8()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_9()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_11()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_12()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_14()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_15(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = logObjectForModule_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_4_3();
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message", v5, 0x14u);
  }

  *a3 = 10;
}

void _parseIdentificationParams_cold_17()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_18()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_20()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_21()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_23()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_24()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_26()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_27()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_29()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void _parseIdentificationParams_cold_32()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void _parseIdentificationParams_cold_35()
{
  v0 = logObjectForModule_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v1, v2, "pGroup == NULL", v3, v4, v5, v6, 0);
  }
}

void _parseIdentificationParams_cold_36()
{
  v0 = logObjectForModule_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_1(&_mh_execute_header, v1, v2, "pMsg == NULL", v3, v4, v5, v6, 0);
  }
}

void _parseIdentificationParams_cold_37(_BYTE *a1)
{
  v2 = logObjectForModule_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "pEndpoint == NULL", v3, 2u);
  }

  *a1 = 0;
}

uint64_t iap2_accAuthentication_certificate(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v5 = OUTLINED_FUNCTION_7_2();
  result = iap2_feature_getFeature(v5, v6);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (*result)
  {
    v219 = logObjectForModule_1(24);
    if (!OUTLINED_FUNCTION_18_2(v219))
    {
      return 1;
    }

    if (*v7 == 2)
    {
      v220 = "passed";
    }

    else
    {
      v220 = "failed";
    }

    *buf = 136315138;
    *v234 = v220;
    goto LABEL_81;
  }

  v225 = a1;
  v232 = 0;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  BytePtr = &audioProductCerts_endpoint_publish_onceToken;
  if (!FirstParam)
  {
    if (!acc_userDefaults_BOOLForKey(@"ForceAuthTimeout"))
    {
LABEL_74:
      Length = gLogObjects;
      v124 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 25)
      {
        v14 = *(gLogObjects + 192);
      }

      else
      {
        v14 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_3(3.8521e-34);
          LODWORD(v235) = v124;
          OUTLINED_FUNCTION_2_7();
          _os_log_error_impl(v179, v180, v181, v182, v183, 0x12u);
        }
      }

      if (OUTLINED_FUNCTION_13())
      {
        *buf = 136315138;
        *v234 = "iap2_accAuthentication_certificate";
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v167, v168, v169, v170, v171, 0xCu);
      }

      OUTLINED_FUNCTION_6_3();
      v133 = v225;
      goto LABEL_129;
    }

    goto LABEL_71;
  }

  NextParam = FirstParam;
  v222 = v7;
  v229 = 0;
  cf = 0;
  v228 = 0;
  Length = &_os_log_default;
  *&v9 = 134218240;
  v223 = v9;
  *&v9 = 67109120;
  v226 = v9;
  do
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (ParamID == 2)
    {
      ParamValueData = iAP2MsgGetParamValueData(NextParam);
      ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
      LOBYTE(v14) = ParamValueLen;
      if (ParamValueData && ParamValueLen && !v232)
      {
        cf = CFDataCreate(kCFAllocatorDefault, ParamValueData, ParamValueLen);
        goto LABEL_63;
      }

      if (gLogObjects && gNumLogObjects >= 25)
      {
        v24 = *(gLogObjects + 192);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_17();
        if (v53)
        {
          OUTLINED_FUNCTION_3_7(v53, v54, v55, v56, v57, v58, v59, v60, v221, v222, v61);
          OUTLINED_FUNCTION_9_1();
          _os_log_error_impl(v108, v109, v110, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v111, 0x12u);
        }
      }

      v62 = OUTLINED_FUNCTION_23();
      if (v62)
      {
        OUTLINED_FUNCTION_5_3(v62, v63, v64, v65, v66, v67, v68, v69, v221, v222, v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v70);
        OUTLINED_FUNCTION_19();
        v39 = "Cert param malformed pAccIntermediateCertData:%04lX, accIntermediateCertLen:%04X, paramError:%02X\n";
        goto LABEL_61;
      }
    }

    else
    {
      LODWORD(v14) = ParamID;
      if (ParamID == 1)
      {
        DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v232);
        v18 = DataAsU8;
        if (gLogObjects)
        {
          v19 = gNumLogObjects <= 24;
        }

        else
        {
          v19 = 1;
        }

        v20 = !v19;
        if (DataAsU8 > 1 || v232)
        {
          if (v20)
          {
            v14 = *(gLogObjects + 192);
          }

          else
          {
            v41 = OUTLINED_FUNCTION_17();
            v14 = &_os_log_default;
            if (v41)
            {
              OUTLINED_FUNCTION_11_0(v41, v42, v43, v44, v45, v46, v47, v48, v221, v222, v49);
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v104, v105, v106, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v107, 0x12u);
              v14 = &_os_log_default;
            }
          }

          v50 = OUTLINED_FUNCTION_7_2();
          if (os_log_type_enabled(v50, v51))
          {
            *buf = 67109376;
            *v234 = v18;
            *&v234[4] = 1024;
            *&v234[6] = v232;
            v35 = buf;
            v36 = &_mh_execute_header;
            v37 = v14;
            v38 = OS_LOG_TYPE_DEFAULT;
            v39 = "Got invalid auth type %d, paramError:%02X";
            goto LABEL_47;
          }
        }

        else
        {
          if (v20)
          {
            v14 = *(gLogObjects + 192);
          }

          else
          {
            v71 = OUTLINED_FUNCTION_17();
            v14 = &_os_log_default;
            if (v71)
            {
              OUTLINED_FUNCTION_11_0(v71, v72, v73, v74, v75, v76, v77, v78, v221, v222, v79);
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v112, v113, v114, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v115, 0x12u);
              v14 = &_os_log_default;
            }
          }

          v80 = OUTLINED_FUNCTION_7_2();
          if (os_log_type_enabled(v80, v81))
          {
            *buf = v226;
            *v234 = v18;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Got valid auth type %d", buf, 8u);
          }

          v228 = v18;
        }
      }

      else if (ParamID)
      {
        if (gLogObjects && gNumLogObjects >= 25)
        {
          v23 = *(gLogObjects + 192);
        }

        else
        {
          v25 = OUTLINED_FUNCTION_17();
          v23 = &_os_log_default;
          if (v25)
          {
            OUTLINED_FUNCTION_3_7(v25, v26, v27, v28, v29, v30, v31, v32, v221, v222, v33);
            OUTLINED_FUNCTION_9_1();
            _os_log_error_impl(v100, v101, v102, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v103, 0x12u);
            v23 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          MsgID = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *v234 = v14;
          *&v234[4] = 1024;
          *&v234[6] = MsgID;
          v35 = buf;
          v36 = &_mh_execute_header;
          v37 = v23;
          v38 = OS_LOG_TYPE_DEFAULT;
          v39 = "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param";
LABEL_47:
          v52 = 14;
          goto LABEL_62;
        }
      }

      else
      {
        v15 = iAP2MsgGetParamValueData(NextParam);
        v16 = iAP2MsgGetParamValueLen(NextParam);
        LOBYTE(v14) = v16;
        if (v15 && v16 && !v232)
        {
          v229 = CFDataCreate(0, v15, v16);
          goto LABEL_63;
        }

        if (gLogObjects && gNumLogObjects >= 25)
        {
          v40 = *(gLogObjects + 192);
        }

        else
        {
          v82 = OUTLINED_FUNCTION_17();
          if (v82)
          {
            OUTLINED_FUNCTION_3_7(v82, v83, v84, v85, v86, v87, v88, v89, v221, v222, v90);
            OUTLINED_FUNCTION_9_1();
            _os_log_error_impl(v116, v117, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v119, 0x12u);
          }
        }

        v91 = OUTLINED_FUNCTION_23();
        if (v91)
        {
          OUTLINED_FUNCTION_5_3(v91, v92, v93, v94, v95, v96, v97, v98, v221, v222, v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v99);
          OUTLINED_FUNCTION_19();
          v39 = "Cert param malformed pAccCertData:%04lX, accCertLen:%04X, paramError:%02X\n";
LABEL_61:
          v52 = 24;
LABEL_62:
          _os_log_impl(v36, v37, v38, v39, v35, v52);
        }
      }
    }

LABEL_63:
    NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
  }

  while (NextParam);
  v120 = v229;
  if (acc_userDefaults_BOOLForKey(@"ForceAuthTimeout"))
  {
LABEL_71:
    v122 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 25)
    {
      v123 = *(gLogObjects + 192);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_3(3.8521e-34);
      LODWORD(v235) = v122;
      OUTLINED_FUNCTION_2_7();
      _os_log_error_impl(v173, v174, v175, v176, v177, 0x12u);
    }

    v125 = OUTLINED_FUNCTION_7_2();
    if (!os_log_type_enabled(v125, v126))
    {
      return 1;
    }

    v127 = *(v225 + 8);
    *buf = 138412290;
    *v234 = v127;
LABEL_81:
    OUTLINED_FUNCTION_4_4();
    _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
    return 1;
  }

  if (!v229)
  {
    goto LABEL_74;
  }

  if (v228)
  {
    Length = gLogObjects;
    v121 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 25)
    {
      v14 = *(gLogObjects + 192);
    }

    else
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_1_3(*&v223);
        LODWORD(v235) = v121;
        OUTLINED_FUNCTION_2_7();
        _os_log_error_impl(v184, v185, v186, v187, v188, 0x12u);
      }
    }

    v134 = OUTLINED_FUNCTION_7_2();
    if (os_log_type_enabled(v134, v135))
    {
      *buf = 0;
      OUTLINED_FUNCTION_4_4();
      _os_log_impl(v136, v137, v138, v139, v140, 2u);
    }

    if (cf)
    {
      v141 = platform_auth_verifyBAACertificateChain(v229, cf);
      Length = gLogObjects;
      v142 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 25)
      {
        v14 = *(gLogObjects + 192);
      }

      else
      {
        v14 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_3(*&v223);
          LODWORD(v235) = v142;
          OUTLINED_FUNCTION_2_7();
          _os_log_error_impl(v189, v190, v191, v192, v193, 0x12u);
        }
      }

      v143 = OUTLINED_FUNCTION_7_2();
      if (os_log_type_enabled(v143, v144))
      {
        *buf = v226;
        *v234 = v141;
        OUTLINED_FUNCTION_4_4();
        _os_log_impl(v145, v146, v147, v148, v149, 8u);
        v120 = v229;
        if (!v141)
        {
          goto LABEL_102;
        }

LABEL_104:
        v150 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 25)
        {
          v151 = *(gLogObjects + 192);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_3(*&v223);
          LODWORD(v235) = v150;
          OUTLINED_FUNCTION_2_7();
          _os_log_error_impl(v209, v210, v211, v212, v213, 0x12u);
        }

        v152 = OUTLINED_FUNCTION_7_2();
        v133 = v225;
        if (os_log_type_enabled(v152, v153))
        {
          *buf = v226;
          *v234 = 1;
          OUTLINED_FUNCTION_4_4();
          _os_log_impl(v154, v155, v156, v157, v158, 8u);
        }

LABEL_111:
        CertificateSerialNumber = platform_auth_createCertificateSerialNumber(v120);
        SerialNumberStringFromData = platform_auth_createSerialNumberStringFromData();
        Length = v222;
        v161 = *(v222 + 48);
        if (v161)
        {
          if (SerialNumberStringFromData)
          {
            v162 = CFStringCompare(v161, SerialNumberStringFromData, 1uLL);
            if (v162)
            {
              v194 = v162;
              v195 = logObjectForModule_1(24);
              if (OUTLINED_FUNCTION_18_2(v195))
              {
                CStringPtr = CFStringGetCStringPtr(*(v222 + 48), 0x8000100u);
                v197 = CFStringGetCStringPtr(SerialNumberStringFromData, 0x8000100u);
                *buf = 136315906;
                *v234 = "iap2_accAuthentication_certificate";
                *&v234[8] = 2080;
                v235 = CStringPtr;
                v236 = 2080;
                v237 = v197;
                v238 = 2048;
                v239 = v194;
                OUTLINED_FUNCTION_4_4();
                _os_log_impl(v198, v199, v200, v201, v202, 0x2Au);
              }

              v203 = logObjectForModule_1(24);
              if (OUTLINED_FUNCTION_18_2(v203))
              {
                *buf = 0;
                OUTLINED_FUNCTION_4_4();
                _os_log_impl(v204, v205, v206, v207, v208, 2u);
              }

              _cleariAP2AuthState(v133);
            }

            goto LABEL_114;
          }

          v178 = logObjectForModule_1(24);
          LOBYTE(v14) = v178;
          if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *v234 = "iap2_accAuthentication_certificate";
            OUTLINED_FUNCTION_2_7();
            _os_log_error_impl(v214, v215, v216, v217, v218, 0xCu);
          }

          OUTLINED_FUNCTION_6_3();
          if (!CertificateSerialNumber)
          {
LABEL_125:
            if (SerialNumberStringFromData)
            {
              CFRelease(SerialNumberStringFromData);
            }

            v120 = v229;
            goto LABEL_128;
          }
        }

        else
        {
LABEL_114:
          RandomNonce = platform_auth_createRandomNonce();
          if (RandomNonce)
          {
            v164 = RandomNonce;
            *(v222 + 16) = CFRetain(v229);
            v165 = *(v222 + 24);
            if (v165)
            {
              CFRelease(v165);
              *(v222 + 24) = 0;
            }

            *(v222 + 24) = CFRetain(CertificateSerialNumber);
            v166 = *(v222 + 48);
            if (v166)
            {
              CFRelease(v166);
              *(v222 + 48) = 0;
            }

            *(v222 + 48) = CFRetain(SerialNumberStringFromData);
            *(v222 + 56) = v164;
            *(v222 + 32) = v228;
            if (cf)
            {
              *(v222 + 40) = CFRetain(cf);
              CFRelease(cf);
            }

            BytePtr = CFDataGetBytePtr(v164);
            Length = CFDataGetLength(v164);
          }

          else
          {
            Length = 0;
            BytePtr = 0;
          }

          LOBYTE(v14) = 1;
          if (!CertificateSerialNumber)
          {
            goto LABEL_125;
          }
        }

        CFRelease(CertificateSerialNumber);
        goto LABEL_125;
      }

      v120 = v229;
      if (v141)
      {
        goto LABEL_104;
      }
    }

LABEL_102:
    OUTLINED_FUNCTION_6_3();
    v133 = v225;
    goto LABEL_128;
  }

  if ((platform_auth_verifyPublicCertificate() & 1) == 0)
  {
    goto LABEL_102;
  }

  v133 = v225;
  if (platform_auth_verifyCertificateSerialNumber())
  {
    goto LABEL_111;
  }

  OUTLINED_FUNCTION_6_3();
LABEL_128:
  CFRelease(v120);
LABEL_129:
  v172 = *(v133 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __iap2_accAuthentication_certificate_block_invoke;
  block[3] = &__block_descriptor_tmp_4;
  v231 = v14;
  block[4] = v133;
  block[5] = BytePtr;
  block[6] = Length;
  dispatch_async(v172, block);
  return 1;
}

void **_cleariAP2AuthState(void **result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      if (**result)
      {
        result = iap2_feature_getFeature(result, 0);
        if (result)
        {
          v2 = result;
          if (gLogObjects && gNumLogObjects >= 25)
          {
            v3 = *(gLogObjects + 192);
          }

          else
          {
            v3 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_9_1();
              _os_log_error_impl(v11, v12, v13, v14, v15, 0x12u);
            }
          }

          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v4 = v1[1];
            v16 = 138412290;
            v17 = v4;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing auth state for iAP2 Endpoint %@", &v16, 0xCu);
          }

          *v2 = 0;
          v5 = v2[2];
          if (v5)
          {
            CFRelease(v5);
            v2[2] = 0;
          }

          v6 = v2[3];
          if (v6)
          {
            CFRelease(v6);
            v2[3] = 0;
          }

          v7 = v2[6];
          if (v7)
          {
            CFRelease(v7);
            v2[6] = 0;
          }

          v8 = v2[7];
          if (v8)
          {
            CFRelease(v8);
            v2[7] = 0;
          }

          v9 = v2[5];
          if (v9)
          {
            CFRelease(v9);
            v2[5] = 0;
          }

          v10 = v2[8];
          result = platform_auth_deallocAuthCertCaps();
          v2[8] = 0;
        }
      }
    }
  }

  return result;
}

void _authCompleted(uint64_t *a1, int a2)
{
  if (a1)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 25;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v10 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_9_1();
        _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
      }
    }

    else
    {
      v10 = *(gLogObjects + 192);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109120;
      v17[1] = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "bAuthPassed=%d", v17, 8u);
    }

    iAP2MsgInit((a1 + 15), 43524, a1[24], 0xFFFF, 0, 0);
    if (a2)
    {
      v11 = OUTLINED_FUNCTION_7_2();
      Feature = iap2_feature_getFeature(v11, v12);
      *(Feature + 88) = CFAbsoluteTimeGetCurrent();
      iAP2MsgSetMsgID((a1 + 15), 43525);
      if (iap2_identification_isIdentificationAccepted(a1))
      {
        if (iap2_identification_isIdentifiedForCarPlay(a1))
        {
          iAP2_carPlaySendAllConnectionEvents(a1);
        }
      }

      iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
      _setAuthState(a1, 2);
    }

    else
    {
      iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
      _setAuthState(a1, 1);
      AccessoryNotSupportedCF = acc_userNotifications_createAccessoryNotSupportedCF();
      Identifier = acc_userNotifications_createIdentifier(@"auth-failed", a1[1]);
      ACCUNSetIdentifier(AccessoryNotSupportedCF, Identifier);
      if (Identifier)
      {
        CFRelease(Identifier);
      }

      if (*a1)
      {
        if (**a1)
        {
          v16 = a1[2];
          if (v16)
          {
            ACCUNSetGroupIdentifier(AccessoryNotSupportedCF, v16);
          }
        }
      }

      ACCUNManagerPresentNotification(AccessoryNotSupportedCF, 0);
      if (AccessoryNotSupportedCF)
      {
        CFRelease(AccessoryNotSupportedCF);
      }
    }
  }
}

uint64_t iap2_accAuthentication_challengeResponse(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 0);
      if (result)
      {
        v8 = result;
        if (*result)
        {
          v60 = logObjectForModule_1(24);
          if (!OUTLINED_FUNCTION_18_2(v60))
          {
            return 1;
          }

          if (*v8 == 2)
          {
            v61 = "passed";
          }

          else
          {
            v61 = "failed";
          }

          *buf = 136315138;
          *v66 = v61;
          v58 = "Authentication already %s, ignoring message!";
          v59 = v2;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_21_1();
          FirstParam = iAP2MsgGetFirstParam(v9, v10);
          v13 = &audioProductCerts_endpoint_publish_onceToken;
          v14 = &audioProductCerts_endpoint_publish_onceToken;
          if (FirstParam)
          {
            v15 = FirstParam;
            v63 = v8;
            v16 = &_mh_execute_header;
            *&v12 = 134218240;
            v64 = v12;
            do
            {
              if (iAP2MsgGetParamID(v15))
              {
                OUTLINED_FUNCTION_22_0();
                if (v17)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = v3 < 25;
                }

                if (v18)
                {
                  v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                  if (v19)
                  {
                    OUTLINED_FUNCTION_14_0(v19, v20, v21, v22, v23, v24, v25, v26, v62, v63, v64);
                    v67 = v3;
                    _os_log_error_impl(v16, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }
                }

                else
                {
                  v30 = a1[24];
                }

                if (OUTLINED_FUNCTION_23())
                {
                  MsgID = iAP2MsgGetMsgID(a2);
                  *buf = 67109376;
                  *v66 = v4;
                  *&v66[4] = 1024;
                  *&v66[6] = MsgID;
                  OUTLINED_FUNCTION_19();
                  _os_log_impl(v32, v33, v34, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v35, 0xEu);
                }

                v4 = 0;
              }

              else
              {
                ParamValueData = iAP2MsgGetParamValueData(v15);
                ParamValueLen = iAP2MsgGetParamValueLen(v15);
                v29 = ParamValueLen;
                if (ParamValueData && ParamValueLen)
                {
                  v4 = CFDataCreate(0, ParamValueData, ParamValueLen);
                }

                else
                {
                  OUTLINED_FUNCTION_12_1();
                  if (v16 < 25)
                  {
                    v3 = &_os_log_default;
                    v36 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                    if (v36)
                    {
                      OUTLINED_FUNCTION_14_0(v36, v37, v38, v39, v40, v41, v42, v43, v62, v63, v64);
                      v67 = v16;
                      _os_log_error_impl(v14, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    v3 = a1[24];
                  }

                  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218496;
                    *v66 = ParamValueData;
                    *&v66[8] = 1024;
                    v67 = v29;
                    v68 = 1024;
                    v69 = 0;
                    v44 = OUTLINED_FUNCTION_20();
                    _os_log_impl(v44, v45, v46, "Cert param malformed pAccSignData:%04lX, accSignLen:%04X, paramError:%02X\n", v47, 0x18u);
                    v4 = 0;
                  }

                  else
                  {
                    v4 = 0;
                    v16 = v14;
                  }

                  v14 = v13;
                  v13 = v8;
                }
              }

              v48 = OUTLINED_FUNCTION_21_1();
              NextParam = iAP2MsgGetNextParam(v48, v49, v15);
              if (!NextParam)
              {
                break;
              }

              v15 = NextParam;
            }

            while (!v4);
            if ((acc_userDefaults_BOOLForKey(@"ForceAuthTimeout") & 1) == 0)
            {
              if (v4)
              {
                v51 = platform_auth_verifyNonceSignature(v63[2], v63[7], v4);
                if (v51)
                {
                  v52 = v63[2];
                  v63[8] = platform_auth_createCapsFromAuthCert();
                }

                CFRelease(v4);
                goto LABEL_48;
              }

LABEL_47:
              v51 = 0;
LABEL_48:
              _authCompleted(a1, v51);
              return 1;
            }
          }

          else if (!acc_userDefaults_BOOLForKey(@"ForceAuthTimeout"))
          {
            goto LABEL_47;
          }

          v53 = v13[491];
          v54 = *(v14 + 984);
          if (v53 && v54 >= 25)
          {
            v55 = *(v53 + 192);
          }

          else
          {
            v55 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v66 = v53;
              *&v66[8] = 1024;
              v67 = v54;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 1;
          }

          v57 = a1[1];
          *buf = 138412290;
          *v66 = v57;
          v58 = "ForceAuthTimeout: %@ ignore incoming auth messages, allow timeout to occur, if any";
          v59 = v55;
        }

        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, v58, buf, 0xCu);
        return 1;
      }
    }
  }

  return result;
}

uint64_t iap2_accAuthentication_certSerial(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 0);
      if (result)
      {
        v8 = result;
        if (*(result + 72) != 1)
        {
          return 0;
        }

        if (*result)
        {
          v51 = logObjectForModule_1(24);
          if (OUTLINED_FUNCTION_18_2(v51))
          {
            if (*v8 == 2)
            {
              v52 = "passed";
            }

            else
            {
              v52 = "failed";
            }

            *buf = 136315138;
            *v56 = v52;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Authentication already %s, ignoring message!", buf, 0xCu);
          }

          return 1;
        }

        else
        {
          v53 = result;
          v9 = OUTLINED_FUNCTION_21_1();
          FirstParam = iAP2MsgGetFirstParam(v9, v10);
          v12 = &audioProductCerts_endpoint_publish_onceToken;
          v13 = &audioProductCerts_endpoint_publish_onceToken;
          v14 = &off_1001C3000;
          if (FirstParam)
          {
            v15 = FirstParam;
            v16 = &_mh_execute_header;
            do
            {
              if (iAP2MsgGetParamID(v15))
              {
                OUTLINED_FUNCTION_22_0();
                if (v17)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = v14 < 25;
                }

                if (v18)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v56 = a1;
                    OUTLINED_FUNCTION_15_0();
                    *v57 = v14;
                    _os_log_error_impl(v16, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }
                }

                else
                {
                  v22 = *(a1 + 192);
                }

                if (OUTLINED_FUNCTION_23())
                {
                  MsgID = iAP2MsgGetMsgID(a2);
                  *buf = 67109376;
                  *v56 = v4;
                  *&v56[4] = 1024;
                  *&v56[6] = MsgID;
                  OUTLINED_FUNCTION_19();
                  _os_log_impl(v24, v25, v26, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v27, 0xEu);
                }

                v21 = 0;
              }

              else
              {
                ParamValueData = iAP2MsgGetParamValueData(v15);
                ParamValueLen = iAP2MsgGetParamValueLen(v15);
                v4 = ParamValueLen;
                if (ParamValueData && ParamValueLen)
                {
                  v21 = CFDataCreate(0, ParamValueData, ParamValueLen);
                }

                else
                {
                  OUTLINED_FUNCTION_12_1();
                  if (v16 < 25)
                  {
                    v14 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      *v56 = a1;
                      OUTLINED_FUNCTION_15_0();
                      *v57 = v16;
                      _os_log_error_impl(v13, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    v14 = *(a1 + 192);
                  }

                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218496;
                    *v56 = ParamValueData;
                    OUTLINED_FUNCTION_15_0();
                    *v57 = v4;
                    *&v57[4] = v28;
                    *&v57[6] = 0;
                    v29 = OUTLINED_FUNCTION_20();
                    _os_log_impl(v29, v30, v31, "Cert serial number param malformed pAccSerNumData:%04lX, accSerNumLen:%04X, paramError:%02X\n", v32, 0x18u);
                    v21 = 0;
                  }

                  else
                  {
                    v21 = 0;
                    v16 = v13;
                  }

                  v13 = v12;
                  v12 = v3;
                }
              }

              v33 = OUTLINED_FUNCTION_21_1();
              NextParam = iAP2MsgGetNextParam(v33, v34, v15);
              if (!NextParam)
              {
                break;
              }

              v15 = NextParam;
            }

            while (!v21);
            v14 = &off_1001C3000;
            if (v21)
            {
              Length = CFDataGetLength(v21);
              if ((Length - 1) >= 0x10)
              {
                v44 = Length;
                v45 = v12[491];
                v46 = *(v13 + 984);
                if (v45 && v46 >= 25)
                {
                  v47 = *(v45 + 192);
                }

                else
                {
                  v47 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v56 = v45;
                    OUTLINED_FUNCTION_15_0();
                    *v57 = v46;
                    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                  }
                }

                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *v56 = "iap2_accAuthentication_certSerial";
                  *&v56[8] = 2048;
                  *v57 = v44;
                  _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s Ignoring serial number data with invalid length:0x%02lX", buf, 0x16u);
                }

                CertDataFromSerialNumber = 0;
              }

              else
              {
                SerialNumberStringFromData = platform_auth_createSerialNumberStringFromData();
                CertDataFromSerialNumber = platform_auth_createCertDataFromSerialNumber(v53[1], SerialNumberStringFromData);
                if (SerialNumberStringFromData)
                {
                  v39 = v53[3];
                  if (v39)
                  {
                    CFRelease(v39);
                    v53[3] = 0;
                  }

                  v53[3] = CFRetain(v21);
                  v40 = v53[6];
                  if (v40)
                  {
                    CFRelease(v40);
                    v53[6] = 0;
                  }

                  v53[6] = CFRetain(SerialNumberStringFromData);
                  CFRelease(v21);
                  goto LABEL_56;
                }
              }

              SerialNumberStringFromData = v21;
LABEL_56:
              CFRelease(SerialNumberStringFromData);
              v48 = *(a1 + 24);
              block[0] = _NSConcreteStackBlock;
              block[1] = 0x40000000;
              block[2] = __iap2_accAuthentication_certSerial_block_invoke;
              block[3] = &__block_descriptor_tmp_5;
              block[4] = a1;
              block[5] = CertDataFromSerialNumber;
              dispatch_async(v48, block);
              return 0;
            }
          }

          v41 = v12[491];
          v42 = *(v13 + 984);
          if (v41 && v42 >= 25)
          {
            v43 = *(v41 + 192);
          }

          else
          {
            v43 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              *buf = v14[71].isa;
              *v56 = v41;
              OUTLINED_FUNCTION_15_0();
              *v57 = v42;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          result = OUTLINED_FUNCTION_13();
          if (result)
          {
            *buf = 136315138;
            *v56 = "iap2_accAuthentication_certSerial";
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s No valid cert serial number data received", buf, 0xCu);
            return 0;
          }
        }
      }
    }
  }

  return result;
}