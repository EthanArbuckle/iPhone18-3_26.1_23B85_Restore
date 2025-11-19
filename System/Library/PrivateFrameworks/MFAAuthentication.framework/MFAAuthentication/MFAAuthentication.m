uint64_t MFAACreateCertificateSerialNumber(uint64_t a1)
{
  if (a1)
  {
    v2 = +[MFAACertificateManager sharedManager];
    v3 = [v2 copyParsedCertificateChainInfo:a1];

    if (!v3 || (+[MFAACertificateManager sharedManager](MFAACertificateManager, "sharedManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 copyLeafCertificateSerialNumber:v3], v4, !v5))
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v6)
      {
        MFAACreateCertificateSerialNumber_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      v5 = 0;
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      MFAACreateCertificateSerialNumber_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  return v5;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v28 = a1;
  v29 = &a1[a2];
  v27 = 0;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v28, 0x2000000000000010, &v27 + 1, &v26);
  result = 65537;
  if (v7)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v28, v26))
    {
      goto LABEL_110;
    }

    if (v28 > &v28[v26] || &v28[v26] > v29)
    {
      goto LABEL_108;
    }

    v24 = v28;
    v25 = &v28[v26];
    if (!ccder_blob_decode_tl())
    {
      result = 65538;
      goto LABEL_13;
    }

    if (v25 < v24 || v26 > v25 - v24)
    {
      goto LABEL_108;
    }

    if (compare_octet_string_raw(&pkcs7_signedData_oid, v24, v26))
    {
      result = 65539;
      goto LABEL_13;
    }

    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v24 += v26;
    if (!ccder_blob_decode_ber_tl(&v24, 0xA000000000000000, &v27, &v26))
    {
      result = 65540;
      goto LABEL_13;
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v22 = v24;
    v23 = &v24[v26];
    v31 = 0;
    memset(v30, 170, sizeof(v30));
    if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v31 + 1, v30) & 1) == 0)
    {
      result = 131073;
      goto LABEL_13;
    }

    if (__CFADD__(v22, v30[0]))
    {
      goto LABEL_110;
    }

    v10 = 131080;
    if (&v22[v30[0]] != v23)
    {
      result = 131082;
      goto LABEL_13;
    }

    if (!ccder_blob_decode_uint64())
    {
      result = 131074;
      goto LABEL_13;
    }

    v11 = a3[11];
    result = 131092;
    if (v11 <= 4 && ((1 << v11) & 0x1A) != 0)
    {
      if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, 0, 125))
      {
        result = 131075;
        goto LABEL_13;
      }

      v35 = 0;
      v34 = 0;
      if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v35, &v34) & 1) == 0)
      {
        v10 = 131076;
        goto LABEL_44;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v22, v34))
      {
        goto LABEL_110;
      }

      if (v22 > &v22[v34] || &v22[v34] > v23)
      {
        goto LABEL_108;
      }

      v32 = v22;
      v33 = &v22[v34];
      if (!ccder_blob_decode_tl())
      {
        v10 = 131077;
        goto LABEL_44;
      }

      if (v33 < v32 || v34 > v33 - v32)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_data_oid, v32, v34))
      {
        v10 = 131078;
LABEL_44:
        result = v10;
        goto LABEL_13;
      }

      if (__CFADD__(v32, v34))
      {
        goto LABEL_110;
      }

      v12 = &v32[v34];
      if (v32 > &v32[v34] || v12 > v33)
      {
        goto LABEL_108;
      }

      v32 += v34;
      v13 = v35;
      if (v12 != v33 || (v35 & 1) != 0)
      {
        v40 = 0;
        v38 = v33;
        v39 = 0;
        v37 = v12;
        if (ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v40, &v39))
        {
          if ((v13 & 1) == 0)
          {
            if (__CFADD__(v37, v39))
            {
              goto LABEL_110;
            }

            if (&v37[v39] != v33)
            {
              goto LABEL_44;
            }
          }

          if (v37 > v38)
          {
            goto LABEL_108;
          }

          v32 = v37;
          v33 = v38;
          v36 = 0;
          v16 = v40;
          if (v40 == 1 && !ccder_blob_decode_ber_tl(&v32, 0x2000000000000004, &v36, &v39))
          {
            v10 = 131079;
            goto LABEL_44;
          }

          v41 = 0;
          if (!ccder_blob_decode_tl())
          {
            v10 = 131090;
            goto LABEL_44;
          }

          v17 = v32;
          v18 = v33;
          if (v33 < v32)
          {
            goto LABEL_108;
          }

          v19 = v41;
          if (v41 > v33 - v32)
          {
            goto LABEL_108;
          }

          a3[9] = v32;
          a3[10] = v19;
          if (__CFADD__(v17, v19))
          {
LABEL_110:
            __break(0x5513u);
            goto LABEL_111;
          }

          v20 = &v17[v19];
          if (v20 > v18 || v17 > v20)
          {
            goto LABEL_108;
          }

          v32 = v20;
          if ((ccder_blob_decode_eoc(&v32, v36) & 1) == 0)
          {
            v10 = 131089;
            goto LABEL_44;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_44;
          }

          v16 = v40;
        }

        if ((ccder_blob_decode_eoc(&v32, v16 & 1) & 1) == 0)
        {
          v10 = 131088;
          goto LABEL_44;
        }

        v12 = v32;
      }

      if (v12 > v23 || v22 > v12)
      {
        goto LABEL_108;
      }

      v22 = v12;
      if ((ccder_blob_decode_eoc(&v22, v13) & 1) == 0)
      {
        v10 = 131081;
        goto LABEL_44;
      }

      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      if (v22 > v23)
      {
        goto LABEL_108;
      }

      v37 = v22;
      v38 = v23;
      if ((ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v31, v30) & 1) == 0)
      {
        v14 = v22;
        v15 = v23;
        goto LABEL_85;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (!__CFADD__(v37, v30[0]))
      {
        if (v37 > &v37[v30[0]] || &v37[v30[0]] > v38)
        {
          goto LABEL_108;
        }

        v32 = v37;
        v33 = &v37[v30[0]];
        if (!CMSParseImplicitCertificateSet(&v32, a3[1], *a3, a3 + 3, a3 + 2))
        {
          result = 131085;
          goto LABEL_13;
        }

        if (!ccder_blob_decode_eoc(&v32, v31))
        {
          result = 131086;
          goto LABEL_13;
        }

        v14 = v32;
        if (v32 >= v37 != v32 - v37 < 0)
        {
          if (v37 > v32)
          {
            goto LABEL_108;
          }

          v15 = v38;
          if (v32 > v38)
          {
            goto LABEL_108;
          }

          v22 = v32;
          v23 = v38;
LABEL_85:
          if (v14 <= v15)
          {
            v37 = v14;
            v38 = v15;
            if (ccder_blob_eat_ber_inner(&v37, 0xA000000000000001, 0, 125))
            {
              if (v37 > v38)
              {
                goto LABEL_108;
              }

              v22 = v37;
              v23 = v38;
            }

            if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, &v30[1], 125))
            {
              result = 131083;
              goto LABEL_13;
            }

            if (v30[2] >= v30[1])
            {
              v21 = &v22[-v30[1]];
              if (&v22[-v30[1]] <= v30[2] - v30[1])
              {
                a3[5] = v30[1];
                a3[6] = v21;
                if ((ccder_blob_decode_eoc(&v22, HIBYTE(v31)) & 1) == 0)
                {
                  result = 131084;
                  goto LABEL_13;
                }

                if (!ccder_blob_decode_eoc(&v22, v27))
                {
                  result = 65541;
                  goto LABEL_13;
                }

                if (v22 <= v25 && v24 <= v22)
                {
                  v24 = v22;
                  if (ccder_blob_decode_eoc(&v24, HIBYTE(v27)))
                  {
                    if ((a4 & 1) == 0 && v24 != v29)
                    {
                      result = 65543;
                      goto LABEL_13;
                    }

LABEL_111:
                    result = 0;
                    goto LABEL_13;
                  }

LABEL_109:
                  result = (v4 + 5);
                  goto LABEL_13;
                }
              }
            }
          }

LABEL_108:
          __break(0x5519u);
          goto LABEL_109;
        }
      }

      goto LABEL_110;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseAccessoryCerts(char *a1, uint64_t a2, void *a3, void *a4, unint64_t *a5, void *a6, uint64_t *a7)
{
  v47[0] = *MEMORY[0x277D85DE8];
  bzero(v45, 0x4C0uLL);
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37[0] = 4;
  v37[1] = v45;
  v14 = &a1[a2];
  v36 = 0;
  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v37, 1);
  if (result)
  {
    memset(v35, 170, sizeof(v35));
    if (__CFADD__(a1, a2))
    {
      goto LABEL_68;
    }

    v35[0] = a1;
    v35[1] = &a1[a2];
    result = X509ChainParseCertificateSet(v35, v45, 4, &v35[2], &v36);
    if (result)
    {
LABEL_64:
      v34 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v35[0] != v35[1])
    {
      result = 327690;
      goto LABEL_64;
    }
  }

  else
  {
    v36 = v38;
  }

  v16 = &v45[-304];
  if (v45[265])
  {
    v17 = v45;
    if (!v36)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_18;
    }

    if (v36 > 5)
    {
LABEL_69:
      __break(0x5512u);
      goto LABEL_70;
    }

    v18 = 304 * v36 - 304;
    if (!__CFADD__(v45, v18))
    {
      v17 = &v45[v18];
      if (v36 != 1)
      {
        v21 = 0;
        v22 = 0;
        v20 = v36 - 2;
        v16 = v45;
        v19 = 1;
LABEL_20:
        if (!a5 || !a6)
        {
LABEL_50:
          if (a7 && v17)
          {
            if (v17 < v45 || v17 + 304 > v47 || v17 > v17 + 304)
            {
              goto LABEL_66;
            }

            *a7 = CTParseFlagsForAccessoryCerts(v17);
          }

          result = 0;
          if (!a3 || !a4 || !v17)
          {
            goto LABEL_64;
          }

          if (v45 <= v17 && v17 + 304 <= v47)
          {
            if (v18 <= 0x4BF && (v18 | 8) <= 0x4C0)
            {
              result = 0;
              v33 = *(v17 + 1);
              *a3 = *v17;
              *a4 = v33;
              goto LABEL_64;
            }

LABEL_67:
            __break(1u);
          }

LABEL_66:
          __break(0x5519u);
          goto LABEL_67;
        }

        if (v20 < 0)
        {
          v19 = 0;
        }

        if (v19 != 1)
        {
          v25 = 0;
          v24 = 0;
LABEL_49:
          *a5 = v25;
          *a6 = v24;
          goto LABEL_50;
        }

        if (v16 < v45 || v16 + 38 > v47 || v16 > v16 + 38)
        {
          goto LABEL_66;
        }

        if (v21)
        {
          goto LABEL_67;
        }

        v23 = *v16;
        if (v22 <= v20)
        {
          v24 = 0;
          v26 = 304 * v22;
          while (1)
          {
            v27 = &v45[v26 + 304];
            if (&v45[v26] < v45 || v27 > v47 || &v45[v26] > v27)
            {
              goto LABEL_66;
            }

            if ((v26 + 8) > 0x4C0)
            {
              goto LABEL_67;
            }

            v30 = *&v45[v26 + 8];
            v31 = __CFADD__(v24, v30);
            v24 += v30;
            if (v31)
            {
              break;
            }

            v32 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            v26 += 304;
            ++v22;
            if (v32 > v20)
            {
              goto LABEL_44;
            }
          }

          __break(0x5500u);
          goto LABEL_66;
        }

        v24 = 0;
LABEL_44:
        if (v23 >= a1 != (v23 - a1) < 0)
        {
          if (v14 < v23 || v23 < a1 || v24 > &v14[-v23])
          {
            goto LABEL_66;
          }

          v25 = v23;
          goto LABEL_49;
        }

        goto LABEL_68;
      }

      v19 = 0;
LABEL_18:
      v21 = 1;
      v20 = -1;
      v22 = -1;
      goto LABEL_20;
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  if (v36 < 2)
  {
    v19 = 0;
    v18 = 0;
    v17 = v45;
    goto LABEL_18;
  }

  v20 = v36 - 1;
  if (!__OFSUB__(v36, 1))
  {
    v21 = 0;
    v18 = 0;
    v16 = &v46;
    v17 = v45;
    v19 = 1;
    v22 = 1;
    goto LABEL_20;
  }

LABEL_70:
  __break(0x5515u);
  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && a2 == 0xAAAAAAAAAAAAAAAALL)
  {
    result = ccder_blob_decode_ber_len(a1, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (!v8 || v15 != a2)
  {
    goto LABEL_17;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_ber_len(a1, &v16, &v14);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v10 = a1[1];
    if (*a1 > v10)
    {
LABEL_18:
      __break(0x5519u);
      goto LABEL_19;
    }

    *a3 = *a1;
    a3[1] = v10;
  }

  if (v16 == 1)
  {
    if (a4 < 1)
    {
      goto LABEL_11;
    }

    result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
    if (!result)
    {
LABEL_17:
      v13 = *MEMORY[0x277D85DE8];
      return result;
    }

    if ((ccder_blob_decode_eoc(a1, 1) & 1) == 0)
    {
LABEL_11:
      result = 0;
      goto LABEL_17;
    }

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v11 = *a1;
  if (!__CFADD__(*a1, v14))
  {
    v12 = v11 + v14;
    if (v11 <= v11 + v14 && v12 <= a1[1])
    {
      *a1 = v12;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(0x5513u);
  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_9;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v4 - 0x5555555555555556;
    if (v4 <= v4 - 0x5555555555555556 && v5 <= a1[1])
    {
      *a1 = v5;
LABEL_9:
      result = 1;
      goto LABEL_10;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v32[3] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v32, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_48:
    __break(0x5519u);
LABEL_49:
    __break(0x5513u);
  }

  v32[0] = *a1;
  v32[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v27 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v31 = 0;
      if (!ccder_blob_decode_tag())
      {
        goto LABEL_46;
      }

      if (!v32[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v32, &v31, &v30) || (v31 & 1) != 0 || v32[2] != 0x2000000000000010)
      {
LABEL_46:
        result = 0;
        goto LABEL_47;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v27)
      {
        goto LABEL_49;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_48;
      }

      if (v16 < a2)
      {
        goto LABEL_48;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_48;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_48;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_48;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_48;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_48;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_48;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v32, 0, 0))
      {
        goto LABEL_46;
      }

      v23 = v32[0];
      v24 = v32[0] - v6;
      if (v32[0] - v6 > v7 - v6)
      {
        goto LABEL_48;
      }

      if (v15 > v13)
      {
        goto LABEL_48;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v32[1];
      if (v23 > v32[1])
      {
        goto LABEL_48;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  result = 1;
LABEL_47:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v6 = *a1;
    v7 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (a2)
      {
        if (v7 < v6)
        {
          goto LABEL_20;
        }

        *a2 = v6;
        a2[1] = 0;
      }

      if (v6 == v7)
      {
        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
LABEL_18:
          result = 1;
          goto LABEL_19;
        }

LABEL_20:
        __break(0x5519u);
      }

      if (v6 > v7)
      {
        goto LABEL_20;
      }

      result = ccder_blob_decode_tl();
      if (result)
      {
        if (v6 != v7)
        {
          result = 0;
          goto LABEL_19;
        }

        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v67 = *a2;
  v68 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_56;
  }

  v12 = v70;
  v13 = v67;
  v14 = v70 + v67 - v4;
  if (__CFADD__(v70, v67 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v68)
  {
    goto LABEL_189;
  }

  v65 = v13;
  v66 = v15;
  v63 = v13;
  v64 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v63, v69))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v63 != v63 + v69)
    {
      v10 = 720916;
      goto LABEL_56;
    }

    if (v63 + v69 > v64)
    {
      goto LABEL_189;
    }

    v65 = v63;
    v66 = v64;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720917;
    goto LABEL_56;
  }

  v16 = v65;
  v17 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v18 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v65;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v65 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v65, (a1 + 152)))
  {
    v10 = 720918;
    goto LABEL_56;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720919;
    goto LABEL_56;
  }

  v20 = v65;
  v21 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v22 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v65;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v65 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720920;
    goto LABEL_56;
  }

  v24 = v65;
  v25 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v26 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v65;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v65 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720921;
    goto LABEL_56;
  }

  v28 = v65;
  v29 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v30 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v65;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v65 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720922;
    goto LABEL_56;
  }

  v32 = v65;
  v33 = v69;
  v34 = v65 - v31 + v69;
  if (__CFADD__(v65 - v31, v69))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v66)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v35;
  v63 = v35;
  if (ccder_blob_decode_tl())
  {
    v10 = 720923;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  if (ccder_blob_decode_tl())
  {
    v10 = 720924;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v65 != v66)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v66 > a2[1] || *a2 > v66)
      {
        goto LABEL_189;
      }

      *a2 = v66;
    }

    if (!__CFADD__(v67, v70))
    {
      if (v67 > v67 + v70 || v67 + v70 > v68)
      {
        goto LABEL_189;
      }

      v67 += v70;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, (a1 + 40)))
      {
        v10 = 720937;
        goto LABEL_56;
      }

      *&v71[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v71[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        v10 = 720938;
        goto LABEL_56;
      }

      if (v61 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v71[0] + 1) >= *&v71[0])
        {
          v52 = (v61 + 7) >> 3;
          if (v52 <= *(&v71[0] + 1) - *&v71[0])
          {
            *(a1 + 56) = *&v71[0];
            *(a1 + 64) = v52;
            v53 = v68;
            if (v67 <= v68)
            {
              v10 = 0;
              *a2 = v67;
              a2[1] = v53;
              goto LABEL_56;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v63, v69))
  {
    goto LABEL_190;
  }

  if (v63 > v63 + v69 || v63 + v69 > v64)
  {
    goto LABEL_189;
  }

  v61 = v63;
  v62 = v63 + v69;
  result = ccder_blob_decode_tl();
  if (!result || !v69)
  {
    goto LABEL_163;
  }

  v37 = v61;
  if (__CFADD__(v61, v69))
  {
    goto LABEL_190;
  }

  v38 = v61 + v69;
  if (v61 > v61 + v69 || v38 > v62)
  {
    goto LABEL_189;
  }

  v62 = v61 + v69;
  *(a1 + 266) = 0;
  memset(&v71[2], 0, 128);
  if (a3)
  {
    v39 = a4 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  memset(v71, 0, 32);
  if (v37 >= v38)
  {
LABEL_162:
    if (v37 != v38)
    {
LABEL_163:
      v10 = 720925;
      goto LABEL_56;
    }

    if (v37 > v66 || v65 > v37)
    {
LABEL_189:
      __break(0x5519u);
    }

    v65 = v38;
    goto LABEL_167;
  }

  v54 = 0;
  v41 = 0;
  while (1)
  {
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0;
    v57 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
LABEL_184:
      v10 = 720926;
      goto LABEL_56;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    if (v61 > v61 + v57 || v61 + v57 > v62)
    {
      goto LABEL_189;
    }

    v55 = v61;
    v56 = v61 + v57;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      v10 = 720927;
      goto LABEL_56;
    }

    if (v56 < v55 || v69 > v56 - v55)
    {
      goto LABEL_189;
    }

    v59 = v55;
    v60 = v69;
    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v55 + v69 > v56 || v55 > v55 + v69)
    {
      goto LABEL_189;
    }

    v55 += v69;
    if (!der_get_BOOLean(&v55, 1, &v58))
    {
      break;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_185;
    }

    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v56 != v55 + v69)
    {
LABEL_185:
      v10 = 720929;
      goto LABEL_56;
    }

    if (v40)
    {
      result = compare_octet_string_raw(&v59, a3, a4);
      if (!result)
      {
        if (v56 < v55)
        {
          goto LABEL_189;
        }

        v43 = v69;
        if (v69 > v56 - v55)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v55;
        *(a1 + 256) = v43;
      }
    }

    if (v60 == 3)
    {
      if (*v59 == 7509 && *(v59 + 2) == 15)
      {
        v50 = 720930;
        if (v41)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseKeyUsage(&v55);
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 1u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 19)
      {
        v50 = 720931;
        if ((v41 & 2) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseBasicConstraints(&v55, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 2u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 35)
      {
        v50 = 720932;
        if ((v41 & 4) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v55, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 4u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 14)
      {
        v50 = 720933;
        if ((v41 & 8) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v55, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 8u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 37)
      {
        v50 = 720934;
        if ((v41 & 0x10) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v55, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x10u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 17)
      {
        v50 = 720935;
        if ((v41 & 0x20) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectAltName(&v55, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v55, v69))
      {
        goto LABEL_190;
      }

      if (v55 > v55 + v69 || v55 + v69 > v56)
      {
        goto LABEL_189;
      }

      v55 += v69;
      if (v58 == 1)
      {
        *(a1 + 266) = v58;
      }

      goto LABEL_157;
    }

    if (v60 < 8)
    {
      goto LABEL_133;
    }

    if (*v59 != -2042067414 || *(v59 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v50 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v59, v71, v54) || (result = X509ExtensionParseAppleExtension(&v55, v59, v60, (a1 + 240), (a1 + 248), v40), !result))
    {
LABEL_187:
      v10 = v50;
      goto LABEL_56;
    }

    if (v54 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v54;
LABEL_157:
    if (v55 != v56)
    {
      goto LABEL_184;
    }

    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    v37 = v61 + v57;
    if (v61 > v61 + v57)
    {
      goto LABEL_189;
    }

    v38 = v62;
    if (v37 > v62)
    {
      goto LABEL_189;
    }

    v61 += v57;
    if (v37 >= v62)
    {
      goto LABEL_162;
    }
  }

  v10 = 720928;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t der_get_BOOLean(uint64_t *a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v7 = *a1;
  v8 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    result = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFAAIsInternalBuild()
{
  if (MFAAIsInternalBuild_onceToken != -1)
  {
    MFAACreateAnchorCertificateAuthorityArray_cold_1();
  }

  return gbIsInternalBuild;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    a5 = 0;
  }

  if (a3 == 9)
  {
    if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
    {
      v57 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseComponentAuth(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
    {
      v66 = 0;
      result = der_get_BOOLean(result, 0, &v66);
      if (result)
      {
        v58 = 0x20000040001;
        if (v66)
        {
          v58 = 0x10000080002;
        }

        *a4 |= v58;
      }

      goto LABEL_284;
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
    {
      v60 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
    {
      v61 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseMFIAuthv3Leaf(result);
    }

    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
    {
      if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
      {
        result = ccder_blob_check_null();
        if (result)
        {
          v14 = *a4 | 0x8000000000;
          goto LABEL_282;
        }

        goto LABEL_284;
      }

      if (*a2 != 0xA6463F78648862ALL || *(a2 + 8) != 1)
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000000;
            goto LABEL_282;
          }
        }

        else
        {
          if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
          {
            if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
            {
              goto LABEL_249;
            }

            v46 = *MEMORY[0x277D85DE8];

            return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
          }

          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000000;
            goto LABEL_282;
          }
        }

        goto LABEL_284;
      }

      *a4 |= 0x1000000uLL;
LABEL_249:
      v54 = *result;
      v53 = *(result + 8);
LABEL_250:
      if (v54 <= v53)
      {
        *result = v53;
LABEL_283:
        result = 1;
        goto LABEL_284;
      }

      goto LABEL_288;
    }

    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 1048584;
LABEL_204:
    v14 = v55 | v56;
    goto LABEL_282;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x400000000000;
      }

      else
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x200;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x800;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x100000000000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 != 0x66463F78648862ALL || *(a2 + 3) != 0x21901066463F786)
        {
LABEL_164:
          v35 = 0;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x8000;
      }

LABEL_282:
      *a4 = v14;
      goto LABEL_283;
    }

    if (a3 < 0xA)
    {
      goto LABEL_249;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    goto LABEL_164;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x800000100000;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 258)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x58600003F0D0;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
  {
    goto LABEL_214;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0xF00;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x800000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
  {
LABEL_214:
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x40;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x100;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x1000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x2000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x4000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
  {
    v63 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseMFISWAuth(result, a4, a5);
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x300000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
  {
    v65 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseGenericSSLMarker();
  }

  v35 = 1;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {
    v59 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v55 = *a4;
      v56 = 0x8004000000;
      goto LABEL_204;
    }

LABEL_284:
    v64 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 3841)
    {
      goto LABEL_249;
    }

    v54 = *result;
    v53 = *(result + 8);
    if (!a5)
    {
LABEL_194:
      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

    if (v54 <= v53)
    {
      *a5 = v54;
      a5[1] = v53 - v54;
      goto LABEL_194;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  v62 = *MEMORY[0x277D85DE8];

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509ExtensionParseBasicConstraints(uint64_t *a1, void *a2, _BYTE *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (ccder_blob_decode_uint64())
      {
        if (*a3 != 1)
        {
          result = 0;
          goto LABEL_8;
        }

        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
      }

      result = 1;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_15;
  }

  if (v7 - 0x5555555555555556 != a1[1])
  {
    result = 0;
LABEL_14:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v11;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(0x5513u);
  }

LABEL_16:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v4 = a1[1];
    if (v4 != v3 - 0x5555555555555556)
    {
      result = 0;
LABEL_7:
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v3 <= v4)
    {
      *a1 = v3 - 0x5555555555555556;
      result = 1;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTParseFlagsForAccessoryCerts(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 240);
    if (v1)
    {
      return v1;
    }
  }

  if (result + 136 > (result + 152))
  {
    __break(0x5519u);
  }

  else
  {
    v2 = *(result + 136);
    if (*(result + 144) != 15 || v2 == 0)
    {
      return 0;
    }

    if (v2 < 0xFFFFFFFFFFFFFFFELL)
    {
      if (v2[2] != 170)
      {
        return 0;
      }

      if (v2 <= 0xFFFFFFFFFFFFFFF9)
      {
        if (v2[6] != 170)
        {
          return 0;
        }

        if (v2 <= 0xFFFFFFFFFFFFFFF7)
        {
          if (v2[8] != 170)
          {
            return 0;
          }

          if (v2 <= 0xFFFFFFFFFFFFFFF4)
          {
            if (v2[11] == 170)
            {
              return 0x8000000;
            }

            return 0;
          }
        }
      }
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t MFAAIsDevelopmentHW()
{
  if (MFAAIsDevelopmentHW_onceToken != -1)
  {
    MFAACreateAnchorCertificateAuthorityArray_cold_3();
  }

  return gbIsDevelopmentHW;
}

void sub_2562822CC(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 24) + 4);
  if (v1 + 1916468129 < 0)
  {
    v2 = *(*(a1 + 24) + 4);
  }

  else
  {
    v2 = 462031038 - v1;
  }

  v3 = 462031038 - *(*(a1 + 8) + 4);
  v4 = *(*(a1 + 24) + 4);
  __asm { BRAA            X11, X13 }
}

uint64_t sub_2562823E0@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v15 = v13 + 948253587;
  *(&a11 + v11 + a2) = *(*(a1 + 8) + 4 * (v11 + a2));
  v16 = v11 + 726240035 < v15;
  if (v15 < -968214542 != v11 + 726240035 < -968214542)
  {
    v16 = v15 < -968214542;
  }

  return (*(v14 + 8 * (v16 + v12)))();
}

uint64_t sub_256282464(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 + 1458300621 < -458167508 != v4 + 1236287068 < -458167508)
  {
    v7 = a4 + 1458300621 < -458167508;
  }

  else
  {
    v7 = v4 + 1236287068 < a4 + 1458300621;
  }

  return (*(v6 + 8 * (v7 + v5)))();
}

uint64_t sub_2562824D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = v12 < v10;
  *(a9 + 4 * (v9 + a1)) = v14;
  v17 = v11 + v9 + 1;
  v18 = v16 ^ (v17 < v10);
  v19 = v17 < v12;
  if (!v18)
  {
    v16 = v19;
  }

  return (*(v15 + 8 * (v16 + v13)))();
}

uint64_t sub_25628252C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 + a2) <= 0x80000000)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 + 1;
  }

  return (*(v5 + 8 * v6))(a1, a2);
}

uint64_t sub_25628256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, _DWORD *a17)
{
  v20 = (*(*(a12 + 32) + 16) - 1262982400) * (*a17 - 897970625);
  v21 = 704005591 * ((v19 - 128) ^ 0xF7D78CF0);
  *(v19 - 112) = (v18 + 3) ^ v21;
  *(v19 - 108) = (v20 ^ 0xE7DE97B5) - v21 + ((2 * v20) & 0xCFBD2F6A) + 1602222208;
  *(v19 - 120) = &a16;
  *(v19 - 128) = 231015519 - v21;
  *(v19 - 104) = a13;
  v22 = (qword_286852020[v18 + 22])(v19 - 128);
  v23 = a11 + 1242427381 > 1473442901;
  if (a11 + 1242427381 < -674040748)
  {
    v23 = 1;
  }

  return (*(v17 + 8 * (v18 + 8 * !v23)))(v22);
}

uint64_t sub_256282A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v23 = 520147679 * ((v22 - 128) ^ 0xD061A127);
  *(v22 - 112) = v17 - v23 - 13;
  *(v22 - 120) = &a13;
  *(v22 - 128) = ((v15 ^ 0x5DF9FFF2) + ((2 * v15) & 0xBBF3FFE4) - 404771650) ^ v23;
  (*(v19 + 8 * (v17 + 12)))(v22 - 128);
  *(v22 - 112) = v17 - 2 - ((v22 - 128) ^ v21) * v20 - 11;
  *(v22 - 128) = a12;
  *(v22 - 120) = &a15;
  v24 = (*(v19 + 8 * (v17 + 22)))(v22 - 128);
  return (*(v18 + 8 * (((*(v22 - 108) + v16) >> 31) + v17 - 2)))(v24);
}

uint64_t sub_256282B6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a1 + 11;
  *(v9 - 120) = &a6;
  *(v9 - 112) = v7;
  *(v9 - 128) = (a1 - 1) ^ (56516261 * ((v9 - 128) ^ 0x15EBF17D));
  v11 = (qword_286852020[a1 + 47])(v9 - 128);
  return (*(v8 + 8 * (v10 + 2 * (v6 != 1))))(v11);
}

uint64_t sub_256282CB0(uint64_t a1)
{
  v1 = 1638185881 * (a1 ^ 0x11FD620);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 16) ^ v1;
  v4 = *(*(a1 + 24) + 4);
  if (v4 + 1916468129 >= 0)
  {
    v4 = 462031038 - v4;
  }

  return (*(qword_2798325D0[v2 + 23] - 6 + 8 * (v2 + 4 * ((v3 - 158609094) >= 4 * (v4 - 231015519)))))();
}

uint64_t sub_256282DB8@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  *(*a1 + (a3 + a4)) = (a2 - 897970625) >> v6;
  if (a3 - 1 == v5)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  return (*(v4 + 8 * v8))();
}

uint64_t sub_256282DF4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = (a4 & 0xFFFFFFFD | (2 * (a3 & 1))) + v7;
  if (v6 == 24)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  return (*(v5 + 8 * v9))(a1, a2, v4);
}

uint64_t sub_256282E20(uint64_t a1)
{
  if (v1 + 755559108 < -1160909021 != v4 + 494530915 < -1160909021)
  {
    v6 = v1 + 755559108 < -1160909021;
  }

  else
  {
    v6 = v4 + 494530915 < v1 + 755559108;
  }

  return (*(v3 + 8 * (v5 + 2 * v6)))(a1, 897970625, v2);
}

uint64_t sub_256282F78(uint64_t a1)
{
  v1 = *(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 3;
  v2 = *(*(a1 + 8) + 4);
  if (v2 + 1916468129 >= 0)
  {
    v2 = 462031038 - v2;
  }

  if ((v2 + 1916468129) <= 0x80000000)
  {
    v3 = *(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 3;
  }

  else
  {
    v3 = *(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 2;
  }

  return (*(qword_2798325D0[(*(a1 + 4) + 520147679 * (a1 ^ 0xD061A127) - 1)] - 10 + 8 * v3))();
}

void sub_2562830E0()
{
  v0 = MEMORY[0x28223BE18]();
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8) ^ (601157143 * (v0 ^ 0x5103A544));
  v2 = *(v0 + 16);
  if (*(*(v0 + 32) + 4) == 231015519)
  {
    v3 = v1 + 1;
  }

  else
  {
    v3 = *(v0 + 8) ^ (601157143 * (v0 ^ 0x5103A544));
  }

  __asm { BRAA            X10, X11 }
}

uint64_t sub_256283210()
{
  *(v3 + 4) = v0;
  *(v6 - 144) = &v10;
  *(v6 - 136) = v3;
  *(v6 - 128) = v4 + 1 + ((v6 - 144) ^ v2) * v1 - 14;
  result = (*(v5 + 8 * (v4 + 48)))(v6 - 144);
  v8 = *(v6 - 96);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2562842F8(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[3];
  v2 = a1[2] ^ (2145031067 * (a1 ^ 0x1E282685));
  v3 = *a1;
  v4 = *(*a1 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(*a1 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  v8 = v2 - 1748787863 * (&v7 ^ 0x81BAC106) - 2;
  v7 = v3;
  (qword_286852020[v2 + 12])(&v7);
  if ((v5 + 1916468129) <= 0x80000000)
  {
    v6 = v2;
  }

  else
  {
    v6 = v2 + 1;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_2562843F8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 10 * v1;
  if (((v4 + v3) & 0x1F) != 0xC)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  return (*(a1 + 8 * v6))();
}

uint64_t sub_256284468@<X0>(uint64_t a1@<X8>)
{
  *(*(v4 + 8) + 4 * (v6 + v2 + v1 + 1917526983)) = *(*(v4 + 8) + 4 * (v6 - 231015520));
  if ((v5 + v6 - 1) >= 0x80000001)
  {
    v7 = v3;
  }

  else
  {
    v7 = v3 + 1;
  }

  return (*(a1 + 8 * v7))();
}

uint64_t sub_2562844CC@<X0>(uint64_t a1@<X8>)
{
  *(*(v6 + 8) + 4 * v5) = *(*(v6 + 8) + 4 * v4);
  if (v1 >= v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = v2 + 1;
  }

  return (*(a1 + 8 * v7))();
}

uint64_t sub_256284500@<X0>(uint64_t a1@<X8>)
{
  if ((v1 + 1058855) <= 0x80000000)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2 + 1;
  }

  return (*(a1 + 8 * v3))();
}

void sub_256284828(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56) ^ (1685429429 * (a1 ^ 0x377F83D5));
  if (*(a1 + 24))
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = *(a1 + 56) ^ (1685429429 * (a1 ^ 0x377F83D5));
  }

  __asm { BRAA            X12, X13 }
}

uint64_t sub_2562849C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15 == 0x250197BA3C001668)
  {
    v20 = v16 + 4 * v17 + 1;
  }

  else
  {
    v20 = v16 + 4 * v17;
  }

  return (*(v19 + 8 * v20))(a1, a2, a3, a4, a5, a6, a7, a8, v18, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_256284A4C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  v35 = a1 + 7;
  v36 = 1836812333 * ((v34 - 144) ^ 0x4065F266);
  *(v34 - 128) = v36 + v29 - 526058002;
  *(v34 - 136) = v28;
  *(v34 - 112) = v36 + a1 + 9;
  *(v34 - 120) = &a20;
  (*(v30 + 8 * (a1 + 16)))(v34 - 144);
  a17 = &a28;
  a18 = &a22;
  *(v34 - 128) = v32;
  *(v34 - 144) = &a17;
  v48 = v35 - 5 + 520147679 * ((v34 - 144) ^ 0xD061A127);
  *(v34 - 136) = v48;
  v47 = *(v30 + 8 * (v35 + 45));
  v47(v34 - 144);
  v46 = (v35 - 2) ^ (940831517 * ((v34 - 144) ^ 0xA299CC3C));
  *(v34 - 144) = v46;
  *(v34 - 136) = v32;
  *(v34 - 128) = &a24;
  *(v34 - 120) = &a20;
  *(v34 - 112) = &a17;
  v45 = *(v30 + 8 * (v35 + 5));
  v45(v34 - 144);
  v37 = a18;
  *(v34 - 120) = v32;
  *(v34 - 112) = v37;
  *(v34 - 136) = &a24;
  *(v34 - 128) = &a24;
  v44 = v35 - 704005591 * ((v34 - 144) ^ 0xF7D78CF0) + 17;
  *(v34 - 104) = v44;
  *(v34 - 144) = &a17;
  v43 = qword_286852020[v35 + 37];
  v43(v34 - 144);
  *(v34 - 128) = &a24;
  *(v34 - 120) = a13;
  *(v34 - 144) = v32;
  *(v34 - 112) = &a24;
  *(v34 - 104) = &a17;
  v42 = (v35 + 8) ^ (601157143 * ((v34 - 144) ^ 0x5103A544));
  *(v34 - 136) = v42;
  v38 = qword_286852020[v35 + 14];
  v38(v34 - 144);
  *(v34 - 128) = v33;
  *(v34 - 136) = v48;
  *(v34 - 144) = &a17;
  v47(v34 - 144);
  *(v34 - 136) = v33;
  *(v34 - 128) = &a26;
  *(v34 - 144) = v46;
  *(v34 - 120) = &a20;
  *(v34 - 112) = &a17;
  v45(v34 - 144);
  v39 = a18;
  *(v34 - 144) = &a17;
  *(v34 - 136) = &a26;
  *(v34 - 104) = v44;
  *(v34 - 120) = v33;
  *(v34 - 112) = v39;
  *(v34 - 128) = &a26;
  v43(v34 - 144);
  *(v34 - 128) = &a26;
  *(v34 - 120) = a11;
  *(v34 - 144) = v33;
  *(v34 - 112) = &a26;
  *(v34 - 104) = &a17;
  *(v34 - 136) = v42;
  v38(v34 - 144);
  *(v34 - 136) = &a24;
  *(v34 - 128) = &a26;
  *(v34 - 144) = (v35 - 5) ^ (56516261 * ((v34 - 144) ^ 0x15EBF17D));
  (qword_286852020[v35 + 43])(v34 - 144);
  *(v34 - 132) = v35 - 1748787863 * ((v34 - 144) ^ 0x81BAC106) - 7;
  *(v34 - 144) = &a26;
  v40 = (qword_286852020[v35 + 7])(v34 - 144);
  return (*(v31 + 8 * ((*(v34 - 136) + 1406450678 >= 0) + v35)))(v40);
}

uint64_t sub_256284E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  *(v38 - 136) = v37;
  *(v38 - 128) = v36;
  *(v38 - 144) = (v34 - 3) ^ (191237807 * ((v38 - 144) ^ 0xDBC9B6B1));
  (*(v33 + 8 * (v34 + 36)))(v38 - 144);
  v39 = a25;
  v40 = v34 - 704005591 * ((v38 - 144) ^ 0xF7D78CF0) + 19;
  *(v38 - 104) = v40;
  *(v38 - 120) = v37;
  *(v38 - 112) = v39;
  *(v38 - 136) = &a33;
  *(v38 - 128) = &a33;
  *(v38 - 144) = &a24;
  v41 = *(v33 + 8 * (v34 + 39));
  v41(v38 - 144);
  *(v38 - 128) = a19;
  *(v38 - 120) = v37;
  *(v38 - 104) = v40;
  *(v38 - 144) = &a24;
  *(v38 - 136) = &a33;
  *(v38 - 112) = &a33;
  v41(v38 - 144);
  *(v38 - 144) = a20;
  *(v38 - 128) = &a33;
  *(v38 - 136) = (v34 - 191875503) ^ (520147679 * ((v38 - 144) ^ 0xD061A127));
  (qword_286852020[v34 + 42])(v38 - 144);
  *(v38 - 144) = (v34 - 3) ^ (191237807 * ((v38 - 144) ^ 0xDBC9B6B1));
  *(v38 - 136) = &a31;
  *(v38 - 128) = &a33;
  (qword_286852020[v34 + 36])(v38 - 144);
  *(v38 - 144) = &a33;
  *(v38 - 136) = &a31;
  *(v38 - 128) = v34 - 4 + 523995289 * ((v38 - 144) ^ 0x98567068);
  v42 = (qword_286852020[v34 + 57])(v38 - 144);
  if (a21 == 0x79046D8DC0A979F1)
  {
    v43 = v34 - 3;
  }

  else
  {
    v43 = v34 - 4;
  }

  return (*(v35 + 8 * v43))(v42);
}

uint64_t sub_25628505C@<X0>(int a1@<W8>)
{
  v5 = 1638185881 * ((v4 - 144) ^ 0x11FD620);
  *(v4 - 144) = v9;
  *(v4 - 120) = v3;
  *(v4 - 132) = a1 - v5 - 2;
  *(v4 - 128) = (v11 - 1901752086) ^ v5;
  result = (*(v2 + 8 * (a1 + 14)))(v4 - 144);
  *v10 = v11;
  *v1 = 344250259;
  v7 = *(v4 - 96);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25628516C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 523995289 * (a1 ^ 0x98567068);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(a1 + 8);
  if ((*a1 - v1 + 1623440039) <= 0x80000000)
  {
    v4 = *(a1 + 16) ^ v1;
  }

  else
  {
    v4 = v2 + 1;
  }

  __asm { BRAA            X12, X13 }
}

uint64_t sub_256285210@<X0>(int a1@<W8>)
{
  v5 = 520147679 * (&v9 ^ 0xD061A127);
  v11 = v5 + a1 + 1;
  v9 = v2 + v5 - ((v3 + 1099396430) & 0x50B9411A) + 153115444;
  v10 = v1;
  result = (qword_286852020[a1 + 25])(&v9);
  v7 = *(v4 - 8);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_256285368@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = 1383034093 * a2;
  v4 = (qword_286852020[1383034093 * a2 + 10])();
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (qword_286852020[v3])(a1);
  return v6;
}

uint64_t sub_2562854D0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) ^ (520147679 * (a1 ^ 0xD061A127));
  v2 = *(a1 + 16);
  v7 = *a1;
  v5 = v2;
  v6 = v1 + 191875505 - 191237807 * (&v5 ^ 0xDBC9B6B1);
  result = (qword_286852020[v1 + 191875529])(&v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2562855A0(uint64_t a1)
{
  if (a1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_2562855F0@<X0>(int a1@<W8>)
{
  v2 = 235968479 * a1 + 1;
  v3 = (qword_286852020[v2])(200);
  return (*(v1 + 8 * (v2 + 2 * (v3 != 0))))();
}

uint64_t sub_256285658@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = (*(v5 + 8 * (v7 + a2 * v6 - 235968469)))(a1, 0);
  if (v9 == 16)
  {
    v3 = 1398708801;
    goto LABEL_7;
  }

  if (v9 == 12)
  {
LABEL_7:
    (*(v5 + 8 * (v4 - 235968480)))(a1);
    return (1293967099 * v3 - 1334165480);
  }

  if (v9)
  {
    v3 = 1234411022;
    goto LABEL_7;
  }

  *v2 = a1;
  v3 = 362650424;
  return (1293967099 * v3 - 1334165480);
}

void sub_256285720(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (56516261 * (a1 ^ 0x15EBF17D));
  if (*(*(a1 + 8) + 4) == 231015519)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = *a1 ^ (56516261 * (a1 ^ 0x15EBF17D));
  }

  __asm { BRAA            X15, X16 }
}

uint64_t sub_2562857A0(uint64_t a1)
{
  v5 = v3 - 2 * v4;
  if (*(*(a1 + 16) + 4) == v2)
  {
    ++v5;
  }

  return (*(v1 + 8 * v5))();
}

uint64_t sub_2562857D4@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = v2;
  v9 = v1 + 523995289 * (&v7 ^ 0x98567068) - 2;
  result = (qword_286852020[v1 + 59])(&v7);
  *(v2 + 4) = 462031038 - *(v2 + 4);
  v5 = *(v3 - 24);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_256285940(uint64_t a1)
{
  v1 = 523995289 * (a1 ^ 0x98567068);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 12) ^ v1;
  v4 = *(*(a1 + 24) + 4);
  if (v4 + 1916468129 >= 0)
  {
    v4 = 462031038 - v4;
  }

  if ((v3 - 1430439603) < 4 * (v4 - 231015519))
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 + 1;
  }

  return (*(qword_2798325D0[v2 + 37] - 6 + 8 * v5))();
}

uint64_t sub_256285A00(void *a1)
{
  v4 = v2 - v3 + 3;
  v5 = *a1 - 0x79046D8DC0A979F1;
  return (*(v1 + 8 * (v4 + 1)))();
}

void sub_256285B7C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) - 520147679 * (a1 ^ 0xD061A127);
  v2 = *(a1 + 16);
  v3 = 59377854 - *(v2 + 4);
  v5 = **a1;
  v4 = *(*a1 + 8);
  v6 = **(v2 + 8);
  __asm { BRAA            X11, X2 }
}

uint64_t sub_25628615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  if ((a11 - 1866192792) <= 0x80000001)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  return (*(v11 + 8 * v13))();
}

uint64_t sub_2562861A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v18 - 112) = a13;
  *(v18 - 104) = v15;
  *(v18 - 120) = v14 + 1836812333 * ((v18 - 136) ^ 0x4065F266) + 29;
  *(v18 - 136) = v15;
  *(v18 - 128) = a11;
  v19 = (*(v17 + 8 * (v14 + 18)))(v18 - 136);
  v20 = v13 - 1865143816;
  if (v13 - 1865143816 < 0)
  {
    v20 = v13 - 1865143815;
  }

  return (*(v16 + 8 * (v14 + 19 * ((((v20 & 0xDE77AF30) + ((v20 >> 1) ^ 0xEF3BD798) + 281290856) & a10) != 0))))(v19);
}

uint64_t sub_2562862A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v21 = 520147679 * ((v20 - 136) ^ 0xD061A127);
  *(v20 - 120) = v18 - v21;
  *(v20 - 136) = v21 ^ 0x45D9ACB1;
  *(v20 - 128) = v16;
  (*(v19 + 8 * (v18 + 25)))(v20 - 136);
  *(v20 - 136) = a12;
  *(v20 - 128) = &a13;
  *(v20 - 120) = v18 + 523995289 * ((v20 - 136) ^ 0x98567068) + 1;
  (*(v19 + 8 * (v18 + 62)))(v20 - 136);
  *(v20 - 136) = a12;
  *(v20 - 128) = v16;
  *(v20 - 120) = v18 - ((v20 - 136) ^ v14) * v15;
  v22 = (*(v19 + 8 * (v18 + 35)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 116) + v13) >> 31) + v18)))(v22);
}

uint64_t sub_2562863CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = 520147679 * ((v18 - 136) ^ 0xD061A127);
  *(v18 - 120) = v17 - 7 - v19;
  *(v18 - 136) = ((v15 ^ 0xF5DFADF2) + ((2 * v15) & 0xEBBF5BE4) + 1341783742) ^ v19;
  *(v18 - 128) = &a13;
  (*(v16 + 8 * (v17 + 18)))(v18 - 136);
  *(v18 - 120) = v17 - 7 - 1638185881 * ((v18 - 136) ^ 0x11FD620);
  *(v18 - 136) = a12;
  *(v18 - 128) = v13;
  v20 = (*(v16 + 8 * (v17 + 28)))(v18 - 136);
  return (*(v14 + 8 * (((*(v18 - 116) + 556127643) >> 31) + v17 - 7)))(v20);
}

uint64_t sub_2562864E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v20 - 120) = v18 - ((v20 - 136) ^ v14) * v15 - 20;
  *(v20 - 136) = &a13;
  *(v20 - 128) = v16;
  v21 = (*(v19 + 8 * (v18 + 15)))(v20 - 136);
  return (*(v17 + 8 * (v18 + ((*(v20 - 116) + v13) >> 31))))(v21);
}

uint64_t sub_25628656C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 - 12;
  *(v10 - 128) = &a6;
  *(v10 - 120) = v6;
  *(v10 - 136) = (a1 - 18) ^ (56516261 * ((v10 - 136) ^ 0x15EBF17D));
  v12 = (*(v9 + 8 * (a1 + 30)))(v10 - 136);
  if (v8 == 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v11;
  }

  return (*(v7 + 8 * v13))(v12);
}

uint64_t sub_256286624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 120) = v17 - ((v19 - 136) ^ v13) * v15 - 7;
  *(v19 - 136) = a12;
  *(v19 - 128) = &a13;
  v20 = (*(v18 + 8 * (v17 + 28)))(v19 - 136);
  return (*(v16 + 8 * (v17 + 2 * ((*(v19 - 116) + v14) > 0x80000000))))(v20);
}

uint64_t sub_2562866A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v21 = 520147679 * ((v20 - 136) ^ 0xD061A127);
  *(v20 - 120) = v19 - v21 - 25;
  *(v20 - 128) = &a13;
  *(v20 - 136) = ((v13 ^ 0x47DDBFF2) + ((2 * v13) & 0x8FBB7FE4) - 33821506) ^ v21;
  (*(v18 + 8 * v19))(v20 - 136);
  v22 = v19 - 20;
  *(v20 - 120) = v22 - ((v20 - 136) ^ 0x11FD620) * v14 - 5;
  *(v20 - 136) = a12;
  *(v20 - 128) = v17;
  v23 = (*(v18 + 8 * (v22 + 30)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 116) + v15) >> 31) + v22)))(v23);
}

uint64_t sub_2562867A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v20 - 120) = v18 - ((v20 - 136) ^ v13) * v14 - 3;
  *(v20 - 136) = &a13;
  *(v20 - 128) = v17;
  v21 = (*(v19 + 8 * (v18 + 32)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 116) + v15) >> 31) + v18)))(v21);
}

uint64_t sub_25628680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 128) = &a13;
  *(v18 - 120) = v15;
  *(v18 - 136) = v17 ^ (56516261 * ((v18 - 136) ^ 0x15EBF17D));
  v19 = (*(v16 + 8 * (v17 + 48)))(v18 - 136);
  if (v13 == 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v17;
  }

  return (*(v14 + 8 * (v20 + 11)))(v19);
}

uint64_t sub_2562868CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 120) = v17 - ((v19 - 136) ^ v13) * v14 - 14;
  *(v19 - 136) = a12;
  *(v19 - 128) = &a13;
  v20 = (*(v18 + 8 * (v17 + 21)))(v19 - 136);
  return (*(v16 + 8 * (v17 + 11 * ((*(v19 - 116) + v15) < 0x80000001))))(v20);
}

uint64_t sub_256286950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v19 = 520147679 * ((v18 - 136) ^ 0xD061A127);
  *(v18 - 136) = ((v13 ^ 0xDFF9AFBC) + ((2 * v13) & 0xBFF35F78) + 1709178100) ^ v19;
  *(v18 - 128) = &a13;
  *(v18 - 120) = v16 - v19 - 10;
  (*(v17 + 8 * (v16 + 15)))(v18 - 136);
  *(v18 - 120) = v16 + 1 - 1638185881 * ((v18 - 136) ^ 0x11FD620) - 11;
  *(v18 - 136) = a12;
  *(v18 - 128) = v14;
  v20 = (*(v17 + 8 * (v16 + 25)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 116) + 556127643) >> 31) + v16 + 1)))(v20);
}

uint64_t sub_256286A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v20 - 136) = &a13;
  *(v20 - 128) = v16;
  *(v20 - 120) = v19 - ((v20 - 136) ^ v13) * v15 - 17;
  v21 = (*(v18 + 8 * (v19 + 18)))(v20 - 136);
  return (*(v17 + 8 * (v19 + ((*(v20 - 116) + v14) >> 31))))(v21);
}

uint64_t sub_256286AE4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 + 6;
  *(v10 - 136) = (a1 - 15) ^ (56516261 * ((v10 - 136) ^ 0x15EBF17D));
  *(v10 - 128) = &a6;
  *(v10 - 120) = v7;
  v12 = (*(v9 + 8 * (a1 + 33)))(v10 - 136);
  if (v6 == 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v11;
  }

  return (*(v8 + 8 * v13))(v12);
}

uint64_t sub_256286E54(uint64_t a1)
{
  v1 = *(a1 + 16) - 523995289 * (a1 ^ 0x98567068);
  if (*a1 == *(a1 + 8))
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = *(a1 + 16) - 523995289 * (a1 ^ 0x98567068);
  }

  return (*(qword_2798325D0[v1 + 57] - 2 + 8 * v2))();
}

uint64_t sub_256286EA0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  *(v1 + 4) = v4;
  if (v5 == 231015519)
  {
    v6 = v3;
  }

  else
  {
    v6 = v3 + 1;
  }

  return (*(v2 + 8 * v6))();
}

void sub_256286F70(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12) + 1748787863 * (a1 ^ 0x81BAC106);
  v4 = *a1;
  v3[0] = (523995289 * (v3 ^ 0x98567068)) ^ (v1 + 1);
  (qword_286852020[v1 + 39])(v3);
  if (v3[1] == 851002806)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = v1;
  }

  __asm { BRAA            X8, X9 }
}

void sub_25628704C()
{
  if ((*(v2 + 4) + 1916468129) <= 0x80000000)
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 + 2;
  }

  *(v0 + 8) = v3;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_256287118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 6 * v3;
  v6 = *(a1 + 24);
  if (v4 == 1534303178)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v5;
  }

  return (*(a2 + 8 * v7))();
}

void sub_2562872C0(int a1@<W6>, int a2@<W7>, uint64_t a3@<X8>)
{
  v6 = a2 + v4;
  v7 = a2 + 1;
  *(*(v3 + 8) + 4 * v6) = a1;
  v8 = v5 - 8;
  *(v3 + 4) = v7;
  v9 = 462031038 - v7;
  if (v7 + 1916468129 < 0)
  {
    v9 = v7;
  }

  __asm { BRAA            X2, X3 }
}

uint64_t sub_256287394@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if (v2 <= 0x80000000)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 1;
  }

  return (*(a2 + 8 * v3))();
}

void sub_2562873D8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) - 1836812333 * (a1 ^ 0x4065F266);
  v2 = *(a1 + 32);
  v3 = 462031038 - *(*(a1 + 24) + 4);
  if (*(*a1 + 4) == 231015519)
  {
    v4 = v1 + 1;
  }

  else
  {
    v4 = *(a1 + 16) - 1836812333 * (a1 ^ 0x4065F266);
  }

  __asm { BRAA            X13, X14 }
}

void sub_2562874B4()
{
  *(v1 + 4) = v0;
  v3 = *(v2 - 96);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_256288274(uint64_t a1)
{
  v1 = 704005591 * (a1 ^ 0xF7D78CF0);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(*(a1 + 24) + 4);
  v4 = 462031038 - v3;
  if (v3 + 1916468129 < 0)
  {
    v4 = *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 8) + 4) + 1916468129 < 0)
  {
    v5 = *(*(a1 + 8) + 4);
  }

  v6 = (*a1 + v1);
  v7 = qword_2798325D0[v2 + 37];
  if ((v4 + 1916468129) > 0x80000000)
  {
    ++v2;
  }

  __asm { BRAA            X10, X2 }
}

uint64_t sub_25628836C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  v8 = *(a1 + 20);
  v9 = v7 - 7;
  v10 = a5 + 1709098632;
  if (a5 + 1709098632 < -207369497 != v5 + 1709098632 < -207369497)
  {
    v11 = v10 < -207369497;
  }

  else
  {
    v11 = v5 + 1709098632 < v10;
  }

  v12 = *(a2 + 8);
  return (*(v6 + 8 * (v9 + 8 * v11)))();
}

uint64_t sub_25628847C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v21 = v20 + 1;
  v22 = a3 < a8;
  v23 = v11 + a2 + *(v12 + 4 * v8) + v9 + (*(*(v13 + 8) + 4 * v17) + v9) * a6;
  *(v12 + 4 * v8) = (v23 ^ v14) + (v15 & (2 * v23)) + v16;
  if (v22 == v17 + 1 > v19)
  {
    v22 = v17 + v18 < a3;
  }

  return (*(v10 + 8 * (v21 + 6 * v22)))();
}

uint64_t sub_256288564@<X0>(int a1@<W6>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  v7 = a1 + 5;
  v8 = a5 + 403333195 < -1513134934;
  if (v8 == v5 + 403333195 < -1513134934)
  {
    v8 = v5 + 403333195 < a5 + 403333195;
  }

  v9 = *(a2 + 8);
  return (*(v6 + 8 * (v7 + 6 * v8)))();
}

uint64_t sub_256288620(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v17 = v14 - 5;
  v18 = *(v8 + 4 * v15);
  *(v8 + 4 * v15) = ((v11 + 243227186 + v18 + v9) ^ a4) + (a5 & (2 * (v11 + 243227186 + v18 + v9))) + a6;
  if ((a8 ^ ((v11 - 0x3054D7EAF180A5CELL + (v18 + v9)) >> 32)) + (v12 & ((v11 - 0x3054D7EAF180A5CELL + (v18 + v9)) >> 31)) + v13 == v16)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v17;
  }

  return (*(v10 + 8 * v19))();
}

uint64_t sub_2562886A0@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4) + 813804453;
  v5 = (v2 + 813804453 < -1102663676) ^ (v4 < -1102663676);
  v6 = v2 + 813804453 > v4;
  if (v5)
  {
    v6 = v2 + 813804453 < -1102663676;
  }

  return (*(v3 + 8 * (v6 + a1)))();
}

void sub_256288718(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1 + 1638185881 * (a1 ^ 0x11FD620);
  v3 = *(*(a1 + 24) + 4);
  if (v3 + 1916468129 < 0)
  {
    v4 = *(*(a1 + 24) + 4);
  }

  else
  {
    v4 = 462031038 - v3;
  }

  v5 = *(*(a1 + 8) + 4);
  if (v5 + 1916468129 < 0)
  {
    v6 = *(*(a1 + 8) + 4);
  }

  else
  {
    v6 = 462031038 - v5;
  }

  v10 = *(a1 + 24);
  v11 = v2 - 1748787863 * (&v10 ^ 0x81BAC106) - 6;
  (qword_286852020[v2 + 8])(&v10);
  v7 = v4 + 1283520354 < v6 + 1283520354;
  if (v4 + 1283520354 < -632947775 != v6 + 1283520354 < -632947775)
  {
    v7 = v6 + 1283520354 < -632947775;
  }

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(a1 + 16);
  __asm { BRAA            X13, X15 }
}

uint64_t sub_2562888C8()
{
  v8 = v2 + 1564212715;
  v9 = v3 - 1;
  v10 = v8 < -352255414;
  v11 = 4 * (v5 + v4);
  v12 = *(*(v7 + 8) + v11) - *(*(v6 + 8) + v11);
  *(*(v0 + 8) + v11) = (v12 ^ 0xBF8FFBF5) + ((2 * v12) & 0x7F1FF7EA) + 1979053516;
  if (v10 == v5 + 514330435 < -352255414)
  {
    v10 = v5 + 514330435 < v8;
  }

  return (*(v1 + 8 * (v10 + v9)))(3213884405, 2132801514, 1979053516, 0xB3FFFF7FE99EEFEBLL, 0x1D33DDFD6, 0x5D578FCB9EFFFBF8, 514330435);
}

uint64_t sub_2562889F0()
{
  v4 = v3 - 60981110 < -1977449239;
  if (v4 == v2 - 1110863391 < -1977449239)
  {
    v4 = v2 - 1110863391 < v3 - 60981110;
  }

  return (*(v0 + 8 * (v4 + v1)))();
}

uint64_t sub_256288A58(uint64_t a1, uint64_t a2, int a3)
{
  v14 = v6 & ~__ROR4__(v10, 18);
  v15 = a3 - 14;
  v16 = *(*(v13 + 8) + 4 * (v12 + v11));
  *(*(v3 + 8) + 4 * (v12 + v11)) = ((v6 + 2002850844 + v16 - 897970625) ^ 0x7DDDF3E9) + ((2 * (v6 + 2002850844 + v16 - 897970625)) & 0xFBBBE7D2) - 1213727272;
  v17 = v5 + v12 + 1;
  v18 = (v14 < v7) ^ (v17 < v7);
  v19 = v17 < v14;
  if (v18)
  {
    v19 = v14 < v7;
  }

  return (*(v4 + 8 * (v15 + v19 * v8)))(3396996671, 2111697897, v15 + !v19 * v9, 4223395794, 3081240024, 0x3B7F8FEBAE9EEFF7, 0x15D3DDFEELL, 0xD5D7FF5FD9FFFBECLL);
}

uint64_t sub_256288B4C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v4 - 943241842 < v5 + 106640439;
  if (v5 + 106640439 < -1809827690 != v4 - 943241842 < -1809827690)
  {
    v6 = v5 + 106640439 < -1809827690;
  }

  return (*(v3 + 8 * (a3 + 4 * v6)))();
}

uint64_t sub_256288BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  __asm { SUBG            X29, X12, #0x2E0, #5 }

  v22 = a7 - 1;
  v23 = *(*(v16 + 8) + 4 * (v15 + v14));
  *(*(v7 + 8) + 4 * (v15 + v14)) = ((_X12 + v9 - v23 + 2002850845) ^ 0xF7CFFBF5) + ((2 * (_X12 + v9 - v23 + 2002850845)) & 0xEF9FF7EA) + 1035335116;
  v24 = v11 + v15 + 1;
  v25 = (v13 < v12) ^ (v24 < v12);
  v26 = v24 < v13;
  if (v25)
  {
    v26 = v13 < v12;
  }

  return (*(v8 + 8 * (v26 + v22)))(4020238314, 1035335116, 0x757FBFDBF89EFFEFLL, 0x1F13DFFDELL, 0x9BD7CF6F8FFFEBF4);
}

void sub_256288F50(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 520147679 * (a1 ^ 0xD061A127);
  v2 = *(a1 + 16) + v1;
  v3 = *(a1 + 8);
  if ((*a1 ^ v1) + 975590224 <= 0x80000000)
  {
    v4 = *(a1 + 16) + v1;
  }

  else
  {
    v4 = v2 + 1;
  }

  __asm { BRAA            X13, X14 }
}

uint64_t sub_256288FF4@<X0>(int a1@<W8>)
{
  v5 = (v3 + 1951180448) & 0x6D359F58;
  v6 = 2145031067 * (&v10 ^ 0x1E282685);
  v11 = a1 ^ v6;
  v12 = v2 - v6 - v5 - 255778052;
  v10 = v1;
  result = (qword_286852020[a1 + 22])(&v10);
  v8 = *(v4 - 8);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25628911C(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1[4] - 520147679 * (a1 ^ 0xD061A127);
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = 462031038 - *(v3 + 4);
  v6[0] = (523995289 * (v6 ^ 0x98567068)) ^ (v1 - 2);
  v7 = v3;
  (qword_286852020[v1 + 36])(v6);
  if (v6[1] == 851002806)
  {
    v5 = v1 + 1;
  }

  else
  {
    v5 = v1;
  }

  __asm { BRAA            X9, X10 }
}

uint64_t sub_256289224@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v5 - v4) >> 4) & 0xE6DBAFA ^ 0x2058A08) + (((v5 - v4) >> 5) ^ 0xEE743879) - 1931757750;
  if (v2 + 1850577000 < -65891129 != v6 < -65891129)
  {
    v7 = v2 + 1850577000 < -65891129;
  }

  else
  {
    v7 = v2 + 1850577000 > v6;
  }

  return (*(a1 + 8 * (v3 + 6 * v1 + v7)))();
}

uint64_t sub_2562892AC@<X0>(uint64_t a1@<X8>)
{
  v4 = -6 * (v3 ^ 1) - 2 * v3 + v2;
  if ((v1 & 0x1F) != 0xD)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  return (*(a1 + 8 * v5))();
}

uint64_t sub_256289308@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + 1005582247;
  v7 = *(v4 + 4);
  if (v7 + v5 < 0)
  {
    v6 = 442348193 - v1;
  }

  *(v4 + 4) = v7 + v6 - 723965220;
  v8 = v2 + 923521478;
  v9 = v8 < -992946651;
  **(v4 + 8) = *(*(v4 + 8) + 4 * (v1 + 281617027));
  if (v8 >= -992946651)
  {
    v9 = v8 > 1154536998;
  }

  return (*(a1 + 8 * (!v9 + v3)))(v8 > 1154536998);
}

void sub_2562895D4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 16) + 4);
  if (v2 + 1916468129 < 0)
  {
    v3 = *(*(a1 + 16) + 4);
  }

  else
  {
    v3 = 462031038 - v2;
  }

  v4 = *(*a1 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(*a1 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  v1 = *(a1 + 8) + 191237807 * (a1 ^ 0xDBC9B6B1);
  __asm { BRAA            X14, X16 }
}

void sub_2562896B8()
{
  *(v1 + 4) = v0;
  v3 = *(v2 - 96);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_256289AA4@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  if (*(*(a2 + 8) + 4 * (v5 + 1 + v4)) != v3)
  {
    ++a1;
  }

  return (*(v2 + 8 * a1))();
}

uint64_t sub_256289AE0(uint64_t a1, int a2)
{
  if ((v3 + v4) <= 0x80000000)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 + 1;
  }

  return (*(v2 + 8 * v5))();
}

uint64_t sub_256289B1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = 4 * (v15 + v14);
  v18 = (**(v16 + 8) - 897970625) * (a4 - 897970625) + *(a12 + v17) - 897970625;
  *(a12 + v17) = (v18 ^ 0xF7EFFBDB) + ((2 * v18) & 0xEFDFF7B6) + 1033237990;
  v19 = v13 + 260720805 > 491736325;
  if (v13 + 260720805 < -1655747324)
  {
    v19 = 1;
  }

  return (*(v12 + 8 * (v19 + a5 - 1)))();
}

void sub_256289CB0(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) + 980327533;
  v3 = *(*a1 + 4) + 980327533;
  v4 = (v2 < -936140596) ^ (v3 < -936140596);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -936140596;
  }

  else
  {
    v6 = v5;
  }

  v1 = *(a1 + 16) + 1638185881 * (a1 ^ 0x11FD620);
  __asm { BRAA            X15, X16 }
}

uint64_t sub_256289D48(uint64_t a1, int a2)
{
  v6 = (v5 ^ 1) + v3;
  v7 = v4 + 222474386;
  v8 = v7 < -1693993743;
  v9 = a2 + 222474386 < v7;
  if (a2 + 222474386 < -1693993743 != v8)
  {
    v9 = v8;
  }

  return (*(v2 + 8 * (v6 + (!v9 & 0xFFFFFFFB | (4 * !v9)))))();
}

uint64_t sub_256289DB0(uint64_t a1, int a2)
{
  if (a2 + 1916468129 < 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 462031038 - a2;
  }

  return (*(v2 + 8 * (2 * v5 - v4 + v3 - 2 + ((v6 + 1916468128) >> 31))))(a1, (v6 - 1), (2 * v5 - v4 + v3 - 2 + (~(v6 + 1916468128) >> 31)));
}

uint64_t sub_256289E30(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = 4 * (a4 - 231015520);
  v10 = *(*(v5 + 8) + v9) + v8;
  v11 = *(*(v4 + 8) + v9) + v8;
  v12 = v10 < v7;
  v13 = v10 > v11;
  if (v12 != v11 < v7)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return (*(v6 + 8 * ((!v14 & 0xFFFFFFFD | (2 * !v14)) + a3)))();
}

uint64_t sub_256289E9C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v11 = a3 - a7 + 2 * a8;
  v12 = a4 + v10;
  v13 = a6 + v10;
  v14 = a6 + v10 < v9;
  v15 = (v12 < v9) ^ v14;
  v16 = v12 < v13;
  if (v15)
  {
    v16 = v14;
  }

  return (*(v8 + 8 * (v11 + 2 * v16)))();
}

uint64_t sub_256289F30(uint64_t result)
{
  v1 = *(result + 8);
  **(v1 + 8) = 897970626;
  *(v1 + 4) = 231015520;
  return result;
}

uint64_t sub_256289F94(uint64_t a1, _DWORD *a2)
{
  result = 0;
  **(a1 + 24) = *a2 - ((2 * *a2) & 0x8224C6E8) + 1091724148;
  return result;
}

uint64_t sub_256289FD0(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4);
  if (v2 + 1916468129 < 0)
  {
    v3 = *(*(a1 + 8) + 4);
  }

  else
  {
    v3 = 462031038 - v2;
  }

  v1 = (*a1 ^ (523995289 * (a1 ^ 0x98567068))) - 1;
  return (*(qword_2798325D0[v1 + 34] - 10 + 8 * (v1 + 2 * ((v3 + 1916468129) > 0x80000000))))();
}

uint64_t sub_25628A074()
{
  if (*(*(v0 + 8) + 4 * v1) == 897970625)
  {
    ++v2;
  }

  return (*(v3 + 8 * v2))();
}

void sub_25628A0F0(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (191237807 * (a1 ^ 0xDBC9B6B1));
  if (*(*(a1 + 8) + 4) == 231015519)
  {
    v2 = *a1 ^ (191237807 * (a1 ^ 0xDBC9B6B1));
  }

  else
  {
    v2 = v1 + 1;
  }

  __asm { BRAA            X14, X15 }
}

uint64_t sub_25628A16C(uint64_t a1)
{
  if (*(*(a1 + 16) + 4) == v3)
  {
    v5 = v1 + 2 * v4 + 1;
  }

  else
  {
    v5 = v1 + 2 * v4;
  }

  return (*(v2 + 8 * v5))();
}

uint64_t sub_25628A19C@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = v1;
  v9 = v2 + 523995289 * (&v7 ^ 0x98567068) - 1;
  result = (qword_286852020[v2 + 60])(&v7);
  v5 = *(v3 - 8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25628A2DC(_DWORD *a1)
{
  v1 = 1748787863 * (a1 ^ 0x81BAC106);
  v2 = a1[2] - v1;
  v3 = a1[3] ^ v1;
  if (v3 + 1219647055 >= 0)
  {
    v3 = 1855673186 - v3;
  }

  v4 = *(*a1 + 4);
  if (v4 + 1916468129 >= 0)
  {
    v4 = 462031038 - v4;
  }

  return (*(qword_2798325D0[v2 + 41] + 8 * ((v4 + 1498491483 < -417976646 || (((v3 - 927836593) >> 5) + 1729507002) < v4 + 1498491483) + v2) - 7))();
}

void sub_25628A400(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40) + 704005591 * (a1 ^ 0xF7D78CF0);
  v2 = 462031038 - *(*(a1 + 24) + 4);
  v3 = *(a1 + 8);
  if ((*(*(a1 + 32) + 4) - 231015519) * (*(*(a1 + 16) + 4) - 231015519))
  {
    v4 = *(a1 + 40) + 704005591 * (a1 ^ 0xF7D78CF0);
  }

  else
  {
    v4 = v1 + 1;
  }

  __asm { BRAA            X17, X1 }
}

void sub_25628A4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 4) = v4;
  v6 = *(v5 - 96);
  v7 = *MEMORY[0x277D85DE8];
}

int *sub_25628B348(int *result)
{
  if (((result[2] ^ (520147679 * (result ^ 0x5061A127))) & 0x40000000) != 0)
  {
    v1 = 335071851;
  }

  else
  {
    v1 = 335071852;
  }

  *result = v1;
  return result;
}

void sub_25628B380(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24) + 56516261 * (a1 ^ 0x15EBF17D);
  v3 = *(a1 + 8);
  v4 = *(v3 + 4);
  if (v4 + 1916468129 < 0)
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 462031038 - v4;
  }

  v6 = *(*(a1 + 16) + 4);
  if (v6 + 1916468129 < 0)
  {
    v7 = *(*(a1 + 16) + 4);
  }

  else
  {
    v7 = 462031038 - v6;
  }

  v13 = v2 - 1748787863 * (&v12 ^ 0x81BAC106);
  v12 = v3;
  (qword_286852020[v2 + 14])(&v12);
  v8 = v5 + 1832243934 < v7 + 1832243934;
  if (v5 + 1832243934 < -84224195 != v7 + 1832243934 < -84224195)
  {
    v8 = v7 + 1832243934 < -84224195;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = *a1;
  if ((v9 + 1916468129) <= 0x80000000)
  {
    v11 = v2;
  }

  else
  {
    v11 = v2 + 1;
  }

  __asm { BRAA            X13, X15 }
}

uint64_t sub_25628B538()
{
  v11 = v3 + 494334512;
  v12 = v4 - 6;
  v13 = v11 < -1422133617;
  v14 = 4 * (v9 + v5);
  v15 = v6 - 1954314156 + *(*(v10 + 8) + v14) + v7 + *(*(v8 + 8) + v14) + v7;
  *(*(v0 + 8) + v14) = (v15 ^ 0x3587F7E5) + ((2 * v15) & 0x6B0FEFCA) - 132644;
  if (v13 == v9 - 889120180 < -1422133617)
  {
    v13 = v9 - 889120180 < v11;
  }

  return (*(v1 + 8 * (v12 + v13 * v2)))(4294834652, 0xDFFFEF2E9FC3BE5ELL, 0x13F877CBCLL, 0x23D29DDDEBBFC9F6, 3405847116);
}

uint64_t sub_25628B64C()
{
  if (v3 + 1611036276 < -305431853 != v2 + 227581583 < -305431853)
  {
    v4 = v3 + 1611036276 < -305431853;
  }

  else
  {
    v4 = v2 + 227581583 < v3 + 1611036276;
  }

  return (*(v0 + 8 * (v1 + 8 * v4)))();
}

uint64_t sub_25628B6AC()
{
  v12 = v6 < v4;
  v13 = v5 + v10 + 1;
  v14 = v12 ^ (v13 < v4);
  v15 = v13 < v6;
  if (!v14)
  {
    v12 = v15;
  }

  v16 = 4 * (v10 + v7);
  v17 = v2 + v8 + *(*(v11 + 8) + v16) + v9;
  *(*(v0 + 8) + v16) = (v17 ^ 0xFD9FF9C3) + ((2 * v17) & 0xFB3FF386) + 937818110;
  return (*(v1 + 8 * (v3 + v12 + 2)))();
}

uint64_t sub_25628B784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v6 - 1250431509 < v7 + 133023184;
  if (v7 + 133023184 < -1783444945 != v6 - 1250431509 < -1783444945)
  {
    v8 = v7 + 133023184 < -1783444945;
  }

  return (*(v4 + 8 * ((v8 & 0xFFFFFFFD | (2 * v8)) + v5)))((v8 + v5), a2, a3, a4, v8 + v5 + 4 * !v8);
}

uint64_t sub_25628B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a5 - 1;
  v17 = *(*(v14 + 8) + 4 * (v15 + v11));
  *(*(v5 + 8) + 4 * (v15 + v11)) = ((v7 + v12 + v17 + v13) ^ 0x7FD5FDC1) + ((2 * (v7 + v12 + v17 + v13)) & 0xFFABFB82) - 1246759936;
  v18 = v8 + v15 + 1;
  v19 = (v10 < v9) ^ (v18 < v9);
  v20 = v18 < v10;
  if (v19)
  {
    v20 = v10 < v9;
  }

  return (*(v6 + 8 * (v20 + v16)))(0x17F78FEF9F87C957, 0x13F0F92AELL, 0xEBDAFD1CEBFBBEFDLL);
}

uint64_t sub_25628B8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (v6 == 0x3D28D0C8B838854)
  {
    v7 = a5 + 1;
  }

  else
  {
    v7 = a5;
  }

  return (*(v5 + 8 * v7))();
}

uint64_t sub_25628BA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 & 0xFFFFFFF7 | (8 * (v3 & 1))) + v2;
  v6 = *(a1 + 16);
  if (v4 == 1281732227)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 + 1;
  }

  return (*(a2 + 8 * v7))();
}

uint64_t sub_25628BB98@<X0>(uint64_t a1@<X8>)
{
  if (v2)
  {
    v3 = v1 + 1;
  }

  else
  {
    v3 = v1;
  }

  return (*(a1 + 8 * v3))();
}

void sub_25628BBB4(int a1@<W5>, int a2@<W6>, uint64_t a3@<X8>)
{
  v6 = a2 + v4;
  v7 = a2 + 1;
  *(*(v3 + 8) + 4 * v6) = a1;
  v8 = v5 - 6;
  *(v3 + 4) = v7;
  v9 = 462031038 - v7;
  if (v7 + 1916468129 < 0)
  {
    v9 = v7;
  }

  __asm { BRAA            X2, X3 }
}

uint64_t sub_25628BC88@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if (v2 <= 0x80000000)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 1;
  }

  return (*(a2 + 8 * v3))();
}

_DWORD *sub_25628BCA8(_DWORD *result)
{
  *(v1 + 4) = v3;
  *result = v2;
  return result;
}

void sub_25628BCC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a2;
  v16 = *MEMORY[0x277D85DE8];
  v4 = ((&v9[0xFE0588DFA92FB4DFLL] + 6) * 0x2492492492492493uLL) >> 64;
  v14 = 16 * (&v9[0xFE0588DFA92FB4DFLL] - 7 * ((v4 + ((&v9[0xFE0588DFA92FB4DFLL] - v4 + 6) >> 1)) >> 2) + 6);
  v5 = **(a1 + 24);
  if ((v5 & 0x3E000000 | 0x1000000) != 0x13000000)
  {
    __asm { BRAA            X11, X12 }
  }

  v9[40] = 0x250197BA3C001668;
  LODWORD(v10) = 1302691225;
  v15[1] = (704005591 * (v15 ^ 0xF7D78CF0)) ^ 0xD2222699;
  off_286852200(v15);
  v6 = v5 ^ 0x41126374;
  v13 = v5;
  if ((v5 ^ 0x41126374) > 16785409)
  {
    if (v6 <= 318767104)
    {
      if (v6 == 16785410)
      {
        v7 = 2;
      }

      else
      {
        if (v6 != 16785411)
        {
          goto LABEL_27;
        }

        v7 = 3;
      }
    }

    else
    {
      switch(v6)
      {
        case 318767105:
          v7 = 4;
          break;
        case 318767106:
          v7 = 6;
          break;
        case 318767107:
          v7 = 8;
          break;
        default:
          goto LABEL_27;
      }
    }
  }

  else if (v6 <= 16777218)
  {
    if (v6 == 16777217)
    {
      v7 = 5;
    }

    else
    {
      if (v6 != 16777218)
      {
        goto LABEL_27;
      }

      v7 = 7;
    }
  }

  else if (v6 == 16777219)
  {
    v7 = 9;
  }

  else
  {
    if (v6 != 16781313)
    {
      if (v6 == 16781314)
      {
        v7 = 1;
        goto LABEL_26;
      }

LABEL_27:
      __asm { BRAA            X8, X11 }
    }

    v7 = 0;
  }

LABEL_26:
  v8 = qword_286851A90[35 * (qword_286852028((*(&unk_2798324D8 + 6 * v7 + 4) - 1302691225)) != 0) + 23];
  __asm { BRAA            X8, X11 }
}

uint64_t sub_25628FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  v60 = v55 + v56 * (v59 - 1);
  if (*v57 < (((2 * (8 * a55 - 1848124152)) & 0xF5DD3FF0) + ((8 * a55 - 1848124152) ^ 0x7AEE9FFE) - 2062458878))
  {
    ++v60;
  }

  return (*(v58 + 8 * v60))();
}

uint64_t ascii_to_hex(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = 0;
      v14 = -86;
      v13 = -86;
      v5 = &v14;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(a2 + 2 * v3 + v4);
        v9 = v8 - 48;
        v10 = v8 - 65;
        if ((v8 - 97) >= 6)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 - 87;
        }

        v12 = v8 - 55;
        if (v10 > 5)
        {
          v12 = v11;
        }

        if (v9 < 0xA)
        {
          v12 = v9;
        }

        *v5 = v12;
        v5 = &v13;
        v4 = 1;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      *(result + v3++) = v13 | (16 * v14);
    }

    while (v3 != a3 >> 1);
  }

  return result;
}

unsigned __int8 *printBytes(unsigned __int8 *result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      v7 = result;
      do
      {
        v8 = *v7++;
        result = printf(a3, v8);
        --v4;
      }

      while (v4);
      if (a4)
      {

        return putchar(10);
      }
    }
  }

  return result;
}

const char *removeNewline(const char *a1)
{
  v2 = strlen(a1);
  if (v2 && a1[v2 - 1] == 10)
  {
    a1[v2 - 1] = 0;
  }

  return a1;
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

void sub_2562919A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

SecKeyRef CreateKeyForAuthFeature(int a1, void *a2)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return _CreateKeyForMFi4UserPublicKey(a2, 0, 0);
  }
}

SecKeyRef _CreateKeyForMFi4UserPublicKey(void *a1, int a2, void *a3)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v5 dataUsingEncoding:4];
  v8 = *MEMORY[0x277CDC040];
  v9 = *MEMORY[0x277CDC018];
  v31[0] = *MEMORY[0x277CDC028];
  v31[1] = v9;
  v32[0] = v8;
  v32[1] = &unk_286854368;
  v10 = *MEMORY[0x277CDBED8];
  v32[2] = *MEMORY[0x277CDBEE0];
  v11 = *MEMORY[0x277CDC4F0];
  v31[2] = v10;
  v31[3] = v11;
  v12 = *MEMORY[0x277CDBF30];
  v29[0] = *MEMORY[0x277CDBFD0];
  v29[1] = v12;
  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = v7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v32[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v14];
  v16 = v15;
  if (a2)
  {
    [v15 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC140]];
    if (v6)
    {
      [v16 setObject:v6 forKey:*MEMORY[0x277CDC138]];
    }

    [v16 setObject:@"com.apple.mfiaccessory" forKey:*MEMORY[0x277CDBEC8]];
  }

  error = 0;
  v17 = SecKeyCreateRandomKey(v16, &error);
  if (v17)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v18 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v18 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_25627E000, v18, OS_LOG_TYPE_DEFAULT, "Successfully generated key pair for featureTag %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = error;
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v19 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v18;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_25627E000, v19, OS_LOG_TYPE_DEFAULT, "error %@, unable to generate key for featureTag %@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

CFTypeRef CopyKeyForAuthFeature(int a1, void *a2)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return _CopyKeyForMFi4UserPublicKey(a2, 0, 0);
  }
}

CFTypeRef _CopyKeyForMFi4UserPublicKey(void *a1, int a2, void *a3)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v5 dataUsingEncoding:4];
  v8 = *MEMORY[0x277CDC250];
  v9 = *MEMORY[0x277CDBF30];
  v35[0] = *MEMORY[0x277CDC228];
  v35[1] = v9;
  v36[0] = v8;
  v36[1] = v7;
  v10 = *MEMORY[0x277CDC040];
  v11 = *MEMORY[0x277CDBED8];
  v35[2] = *MEMORY[0x277CDC028];
  v35[3] = v11;
  v12 = *MEMORY[0x277CDBEE0];
  v36[2] = v10;
  v36[3] = v12;
  v35[4] = *MEMORY[0x277CDC568];
  v36[4] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v13];
  v15 = v14;
  if (a2)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC140]];
    if (v6)
    {
      [v15 setObject:v6 forKey:*MEMORY[0x277CDC138]];
    }

    [v15 setObject:@"com.apple.mfiaccessory" forKey:*MEMORY[0x277CDBEC8]];
  }

  result = 0;
  v16 = SecItemCopyMatching(v15, &result);
  if (gLogObjects)
  {
    v17 = gNumLogObjects <= 4;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v16)
  {
    if (v18)
    {
      v20 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v20 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    *buf = 138412290;
    v34 = v5;
    v26 = "found valid key for featureTag %@ with access group check";
    goto LABEL_48;
  }

  if (v18)
  {
    v19 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v19 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&dword_25627E000, v19, OS_LOG_TYPE_DEFAULT, "Unable to fetch key for featureTag %@ with access group check", buf, 0xCu);
  }

  if (a2)
  {
    [v15 removeObjectForKey:*MEMORY[0x277CDBEC8]];
    v22 = SecItemCopyMatching(v15, &result);
    if (gLogObjects)
    {
      v23 = gNumLogObjects <= 4;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    if (v22)
    {
      if (v24)
      {
        v20 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v20 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      *buf = 138412290;
      v34 = v5;
      v26 = "Unable to fetch key for featureTag %@ without access group check";
    }

    else
    {
      if (v24)
      {
        v20 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v20 = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      *buf = 138412290;
      v34 = v5;
      v26 = "found valid key for featureTag %@ without access group check";
    }

LABEL_48:
    _os_log_impl(&dword_25627E000, v20, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
LABEL_49:
  }

  v29 = result;

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void DeleteKeyForAuthFeature(int a1, void *a2)
{
  if (!a1)
  {
    _DeleteKeyForMFi4UserPublicKey(a2, 0, 0);
  }
}

void _DeleteKeyForMFi4UserPublicKey(void *a1, int a2, void *a3)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v5 dataUsingEncoding:4];
  v8 = *MEMORY[0x277CDC250];
  v9 = *MEMORY[0x277CDBF30];
  v37[0] = *MEMORY[0x277CDC228];
  v37[1] = v9;
  v38[0] = v8;
  v38[1] = v7;
  v10 = *MEMORY[0x277CDC040];
  v11 = *MEMORY[0x277CDC568];
  v37[2] = *MEMORY[0x277CDC028];
  v37[3] = v11;
  v38[2] = v10;
  v38[3] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
  v14 = v13;
  if (a2)
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC140]];
    if (v6)
    {
      [v14 setObject:v6 forKey:*MEMORY[0x277CDC138]];
    }

    [v14 setObject:@"com.apple.mfiaccessory" forKey:*MEMORY[0x277CDBEC8]];
  }

  v15 = SecItemDelete(v14);
  if (gLogObjects)
  {
    v16 = gNumLogObjects <= 4;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (!v15)
  {
    if (v17)
    {
      v20 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v20 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    *buf = 138412290;
    v34 = v5;
    v27 = "Deleted key for featureTag %@ with access group";
    goto LABEL_48;
  }

  v18 = v15;
  if (v17)
  {
    v19 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v19 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v5;
    v35 = 1024;
    v36 = v18;
    _os_log_impl(&dword_25627E000, v19, OS_LOG_TYPE_DEFAULT, "Unable to delete key for featureTag %@, status = %d", buf, 0x12u);
  }

  if (a2)
  {
    [v14 removeObjectForKey:*MEMORY[0x277CDBEC8]];
    v22 = SecItemDelete(v14);
    if (gLogObjects)
    {
      v23 = gNumLogObjects <= 4;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    if (v22)
    {
      v25 = v22;
      if (v24)
      {
        v20 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v20 = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      *buf = 138412546;
      v34 = v5;
      v35 = 1024;
      v36 = v25;
      v27 = "Unable to delete key for featureTag %@, without access group, status = %d";
      v29 = v20;
      v30 = 18;
LABEL_49:
      _os_log_impl(&dword_25627E000, v29, OS_LOG_TYPE_DEFAULT, v27, buf, v30);
LABEL_50:

      goto LABEL_51;
    }

    if (v24)
    {
      v20 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v20 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    *buf = 138412290;
    v34 = v5;
    v27 = "Deleted key for featureTag %@ without access group";
LABEL_48:
    v29 = v20;
    v30 = 12;
    goto LABEL_49;
  }

LABEL_51:

  v32 = *MEMORY[0x277D85DE8];
}

SecKeyRef CopyPublicKeyForAuthFeature(int a1, void *a2)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return _CopyPublicKeyForMFi4UserPublicKey(a2, 0, 0);
  }
}

SecKeyRef _CopyPublicKeyForMFi4UserPublicKey(void *a1, int a2, void *a3)
{
  v45[5] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v5 dataUsingEncoding:4];
  v8 = *MEMORY[0x277CDC250];
  v9 = *MEMORY[0x277CDBF30];
  v44[0] = *MEMORY[0x277CDC228];
  v44[1] = v9;
  v45[0] = v8;
  v45[1] = v7;
  v10 = *MEMORY[0x277CDC040];
  v11 = *MEMORY[0x277CDBED8];
  v44[2] = *MEMORY[0x277CDC028];
  v44[3] = v11;
  v12 = *MEMORY[0x277CDBEE0];
  v45[2] = v10;
  v45[3] = v12;
  v44[4] = *MEMORY[0x277CDC568];
  v45[4] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];
  v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v13];
  v15 = v14;
  if (a2)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC140]];
    if (v6)
    {
      [v15 setObject:v6 forKey:*MEMORY[0x277CDC138]];
    }

    [v15 setObject:@"com.apple.mfiaccessory" forKey:*MEMORY[0x277CDBEC8]];
  }

  v38 = v6;
  result = 0;
  v16 = SecItemCopyMatching(v15, &result);
  if (gLogObjects)
  {
    v17 = gNumLogObjects <= 4;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (v16)
  {
    v19 = v16;
    if (v18)
    {
      v20 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v20 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v5;
      v42 = 1024;
      v43 = v19;
      _os_log_impl(&dword_25627E000, v20, OS_LOG_TYPE_DEFAULT, "Unable to fetch key for featureTag %@ with access group check, status=%d", buf, 0x12u);
    }

    if (!a2)
    {
      goto LABEL_61;
    }

    [v15 removeObjectForKey:{*MEMORY[0x277CDBEC8], v6}];
    v23 = SecItemCopyMatching(v15, &result);
    if (gLogObjects)
    {
      v24 = gNumLogObjects <= 4;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    if (v23)
    {
      if (v25)
      {
        v26 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v26 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      *buf = 138412290;
      v41 = v5;
      v30 = "Unable to fetch private key for featureTag %@ without access group check";
      v31 = v26;
      v32 = 12;
LABEL_59:
      _os_log_impl(&dword_25627E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_60:

LABEL_61:
      v34 = 0;
      goto LABEL_62;
    }

    if (v25)
    {
      v21 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v21 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v5;
      v28 = "found valid private key for featureTag %@ without access group check";
      goto LABEL_48;
    }
  }

  else
  {
    if (v18)
    {
      v21 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v21 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v5;
      v28 = "found private valid key for featureTag %@ with access group check";
LABEL_48:
      _os_log_impl(&dword_25627E000, v21, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
    }
  }

  if (!result || (v34 = SecKeyCopyPublicKey(result)) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v26 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v26 = MEMORY[0x277D86220];
      v35 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v30 = "ERROR: No publicKey for Private Key!";
    v31 = v26;
    v32 = 2;
    goto LABEL_59;
  }

LABEL_62:

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

BOOL _UpdateMFi4FeatureKeyAttributes(void *a1, int a2, void *a3)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v5 dataUsingEncoding:4];
  v8 = *MEMORY[0x277CDC250];
  v9 = *MEMORY[0x277CDBF30];
  v38[0] = *MEMORY[0x277CDC228];
  v38[1] = v9;
  v39[0] = v8;
  v39[1] = v7;
  v10 = *MEMORY[0x277CDC040];
  v11 = *MEMORY[0x277CDC568];
  v38[2] = *MEMORY[0x277CDC028];
  v38[3] = v11;
  v39[2] = v10;
  v39[3] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
  v14 = v13;
  if (a2)
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC140]];
    if (v6)
    {
      [v14 setObject:v6 forKey:*MEMORY[0x277CDC138]];
    }
  }

  result = 0;
  v15 = SecItemCopyMatching(v14, &result);
  if (gLogObjects)
  {
    v16 = gNumLogObjects <= 4;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (v15)
  {
    if (v17)
    {
      v18 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v18 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v5;
      _os_log_impl(&dword_25627E000, v18, OS_LOG_TYPE_DEFAULT, "Unable to fetch key for featureTag %@, unable to update", buf, 0xCu);
    }

    v21 = 0;
  }

  else
  {
    if (v17)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v19 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v5;
      _os_log_impl(&dword_25627E000, v19, OS_LOG_TYPE_DEFAULT, "found private valid key for featureTag %@, update to support new attributes", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v14];
    [v18 setObject:*MEMORY[0x277CDBEE0] forKey:*MEMORY[0x277CDBED8]];
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v23 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    v34 = v6;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      _UpdateMFi4FeatureKeyAttributes_cold_4(v18, v23);
    }

    v25 = SecItemUpdate(v14, v18);
    v21 = v25 == 0;
    if (gLogObjects)
    {
      v26 = gNumLogObjects <= 4;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    if (v25)
    {
      v28 = v25;
      if (v27)
      {
        v29 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v29 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v37) = v28;
        _os_log_impl(&dword_25627E000, v29, OS_LOG_TYPE_DEFAULT, "Unable to update attributes, status=%d", buf, 8u);
      }

      v6 = v34;
    }

    else
    {
      if (v27)
      {
        v29 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v29 = MEMORY[0x277D86220];
        v31 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25627E000, v29, OS_LOG_TYPE_DEFAULT, "Updated attributes for key", buf, 2u);
      }
    }

    if (result)
    {
      CFRelease(result);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

void _DeleteAllSynchronizableKeysForMFi4(void *a1, char a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = *MEMORY[0x277CDC028];
  v24[0] = *MEMORY[0x277CDC228];
  v24[1] = v4;
  v5 = *MEMORY[0x277CDC040];
  v25[0] = *MEMORY[0x277CDC250];
  v25[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
  [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC140]];
  if (v3)
  {
    [v7 setObject:v3 forKey:*MEMORY[0x277CDC138]];
    if ((a2 & 1) == 0)
    {
      [v7 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDC5E0]];
    }

    v8 = SecItemDelete(v7);
    if (gLogObjects)
    {
      v9 = gNumLogObjects <= 4;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if (v8)
    {
      v11 = v8;
      if (v10)
      {
        v12 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v3;
        v22 = 1024;
        v23 = v11;
        v14 = "Unable to delete key for all authFeatureGroup %@, status=%d";
        v15 = v12;
        v16 = 18;
LABEL_33:
        _os_log_impl(&dword_25627E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
      }
    }

    else
    {
      if (v10)
      {
        v12 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v12 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v3;
        v14 = "Deleted keys for authFeatureGroup %@";
        v15 = v12;
        v16 = 12;
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v12 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v12 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v14 = "NO authFeatureGroup, returning without deleting!";
      v15 = v12;
      v16 = 2;
      goto LABEL_33;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

SecKeyRef CreateSynchronizableKeyForAuthFeature(int a1, void *a2, void *a3)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return _CreateKeyForMFi4UserPublicKey(a2, 1, a3);
  }
}

CFTypeRef CopySynchronizableKeyForAuthFeature(int a1, void *a2, void *a3)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return _CopyKeyForMFi4UserPublicKey(a2, 1, a3);
  }
}

void DeleteSynchronizableKeyForAuthFeature(int a1, void *a2, void *a3)
{
  if (!a1)
  {
    _DeleteKeyForMFi4UserPublicKey(a2, 1, a3);
  }
}

SecKeyRef CopyPublicKeyForSynchronizableAuthFeature(int a1, void *a2, void *a3)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return _CopyPublicKeyForMFi4UserPublicKey(a2, 1, a3);
  }
}

void DeleteAllSynchronizableFeatureKeysForFeature(int a1, void *a2, char a3)
{
  if (!a1)
  {
    _DeleteAllSynchronizableKeysForMFi4(a2, a3);
  }
}

void *MFAACreateCertificateCache(CFStringRef theString)
{
  v62 = *MEMORY[0x277D85DE8];
  if (MFAACreateCertificateCache_onceToken != -1)
  {
    MFAACreateCertificateCache_cold_1();
  }

  v52 = 0;
  v53[0] = &v52;
  v53[1] = 0x2000000000;
  v53[2] = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  if (theString && CFStringGetCStringPtr(theString, 0x8000100u))
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
    v49[3] = MutableCopy;
    v3 = CFStringCreateMutableCopy(0, 0, theString);
    v45[3] = v3;
    v4 = CFStringCreateMutableCopy(0, 0, theString);
    v41[3] = v4;
    v5 = CFStringCreateMutableCopy(0, 0, theString);
    v6 = v5;
    v37[3] = v5;
    v7 = v49[3];
    if (v7 && v45[3] && v41[3] && v5)
    {
      CFStringAppend(v7, @".authCertCache");
      CFStringAppend(v45[3], @".authSyncQueue");
      CFStringAppend(v41[3], @".authRefsCount");
      CFStringAppend(v37[3], @".authCertChainCache");
      v8 = malloc_type_malloc(0x50uLL, 0x106004047A38092uLL);
      *(v53[0] + 24) = v8;
      if (v8)
      {
        v9 = MFAAIsDevelopmentHW();
        v10 = MFAAIsInternalBuild();
        v11 = MFAAIsDesenseBuild();
        v12 = *(v53[0] + 24);
        *v12 = 0u;
        v12[1] = 0u;
        v12[2] = 0u;
        v12[3] = 0u;
        v12[4] = 0u;
        v13 = CFRetain(theString);
        **(v53[0] + 24) = v13;
        v14 = CFRetain(v45[3]);
        *(*(v53[0] + 24) + 8) = v14;
        v15 = CFRetain(v41[3]);
        v16 = v53[0];
        *(*(v53[0] + 24) + 16) = v15;
        *(*(v16 + 24) + 24) = 0;
        v17 = CFRetain(v49[3]);
        v18 = v53[0];
        *(*(v53[0] + 24) + 32) = v17;
        *(*(v18 + 24) + 40) = 0;
        *(*(v18 + 24) + 48) = 0;
        v19 = CFRetain(v37[3]);
        v20 = v53[0];
        *(*(v53[0] + 24) + 56) = v19;
        *(*(v20 + 24) + 64) = 0;
        *(*(v20 + 24) + 72) = 0;
        if (v9)
        {
          if ((v10 | v11))
          {
            AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AuthCertNotCached", @"com.apple.accessoryd", 0);
            *(*(v53[0] + 24) + 48) = AppBooleanValue != 0;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              v55 = AppBooleanValue != 0;
              _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Auth flag bCertNotCached:%d\n", buf, 8u);
            }
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MFAACreateCertificateCache_cold_2();
      }

      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v33 = v45[3] & 0xFFF;
      v34 = v41[3] & 0xFFF;
      *buf = 67109888;
      v55 = v7 & 0xFFF;
      v56 = 1024;
      v57 = v6 & 0xFFF;
      v58 = 1024;
      v59 = v33;
      v60 = 1024;
      v61 = v34;
      _os_log_error_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CFStringCreateMutableCopy fail pCFStrCacheNameKey:%04X, pCFStrChainCacheNameKey:%04X, pCFStrSyncQueueKey:%04X, pCFStrRefsCountKey:%04X\n", buf, 0x1Au);
      v7 = v49[3];
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    else if (!v7)
    {
LABEL_19:
      v22 = v37[3];
      if (v22)
      {
        CFRelease(v22);
        v37[3] = 0;
      }

      v23 = v45[3];
      if (v23)
      {
        CFRelease(v23);
        v45[3] = 0;
      }

      v24 = v41[3];
      if (v24)
      {
        CFRelease(v24);
        v41[3] = 0;
      }

      goto LABEL_25;
    }

    CFRelease(v7);
    v49[3] = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAACreateCertificateCache_cold_3();
  }

LABEL_25:
  v25 = gCertCacheDomainList;
  if (gCertCacheDomainList && *(v53[0] + 24))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAACreateCertificateCache_block_invoke_20;
    block[3] = &unk_2798318A0;
    block[4] = &v48;
    block[5] = &v40;
    block[6] = &v44;
    block[7] = &v52;
    block[8] = &v36;
    dispatch_sync(gCertCacheDomainQueue, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAACreateCertificateCache_cold_4(v25, v53);
  }

  v26 = v49[3];
  if (v26)
  {
    CFRelease(v26);
    v49[3] = 0;
  }

  v27 = v45[3];
  if (v27)
  {
    CFRelease(v27);
    v45[3] = 0;
  }

  v28 = v41[3];
  if (v28)
  {
    CFRelease(v28);
    v41[3] = 0;
  }

  v29 = v37[3];
  if (v29)
  {
    CFRelease(v29);
    v37[3] = 0;
  }

  v30 = *(v53[0] + 24);
  if (v30 && (!*v30 || !v30[4] || !v30[1] || !v30[2] || !v30[5] || !v30[3]))
  {
    MFAADeallocCertificateCache(*(v53[0] + 24));
    v30 = 0;
    *(v53[0] + 24) = 0;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void __MFAACreateCertificateCache_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.accessoryd.certCacheDomainQueue", 0);
  gCertCacheDomainQueue = v0;
  if (v0)
  {

    dispatch_sync(v0, &__block_literal_global_3);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __MFAACreateCertificateCache_block_invoke_cold_1();
  }
}

void __MFAACreateCertificateCache_block_invoke_2()
{
  gCertCacheDomainList = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!gCertCacheDomainList && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __MFAACreateCertificateCache_block_invoke_2_cold_1();
  }
}

void __MFAACreateCertificateCache_block_invoke_20(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(gCertCacheDomainList, *(*(a1[4] + 8) + 24));
  v3 = CFDictionaryGetValue(gCertCacheDomainList, *(*(a1[5] + 8) + 24));
  if (Value)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "MFAACreateCertificateCache_block_invoke";
      v17 = 1024;
      v18 = Value & 0xFFF;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s CertCacheDomainList contains existing pCFCacheCertDict:%04X", buf, 0x12u);
    }

    CFRetain(Value);
    if (!v3)
    {
      goto LABEL_15;
    }

LABEL_13:
    CFRetain(v3);
    goto LABEL_16;
  }

  v4 = CFPreferencesCopyValue(*(*(a1[4] + 8) + 24), @"com.apple.accessoryd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "MFAACreateCertificateCache_block_invoke";
    v17 = 1024;
    v18 = v4 & 0xFFF;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s CFPreferencesCopyValue returned pkCFDictCertCache:%04X", buf, 0x12u);
  }

  if (!v4)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  Value = CFDictionaryCreateMutableCopy(0, 0, v4);
  if (!Value && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __MFAACreateCertificateCache_block_invoke_20_cold_1();
  }

  CFRelease(v4);
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_15:
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &_block_invoke_kRefsCountCache);
  if (v3)
  {
LABEL_16:
    *buf = 0;
    v5 = CFNumberGetValue(v3, kCFNumberIntType, buf);
    CFRelease(v3);
    if (v5)
    {
      valuePtr = *buf + 1;
      v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    }

    else
    {
      v3 = 0;
    }
  }

  CStringPtr = CFStringGetCStringPtr(*(*(a1[6] + 8) + 24), 0x8000100u);
  if (CStringPtr)
  {
    v7 = dispatch_queue_create(CStringPtr, 0);
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1[7] + 8) + 24) + 40) = Value;
  *(*(*(a1[7] + 8) + 24) + 24) = v7;
  v8 = CFDictionaryGetValue(gCertCacheDomainList, *(*(a1[8] + 8) + 24));
  if (v8)
  {
    MutableCopy = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "MFAACreateCertificateCache_block_invoke";
      v17 = 1024;
      v18 = MutableCopy & 0xFFF;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s CertChainCacheDomainList contains existing pCFCacheCertChainDict:%04X", buf, 0x12u);
    }

    CFRetain(MutableCopy);
  }

  else
  {
    v10 = CFPreferencesCopyValue(*(*(a1[8] + 8) + 24), @"com.apple.accessoryd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "MFAACreateCertificateCache_block_invoke";
      v17 = 1024;
      v18 = v10 & 0xFFF;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s CFPreferencesCopyValue returned pkCFDictCertChainCache:%04X", buf, 0x12u);
    }

    if (v10)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v10);
      if (!MutableCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __MFAACreateCertificateCache_block_invoke_20_cold_1();
      }

      CFRelease(v10);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }
  }

  *(*(*(a1[7] + 8) + 24) + 64) = MutableCopy;
  if (Value && v3 && v7)
  {
    if (CFDictionaryGetCount(Value))
    {
      v11 = ValidateCertificateCache(Value) == 0;
    }

    else
    {
      v11 = 0;
    }

    CFDictionarySetValue(gCertCacheDomainList, *(*(a1[4] + 8) + 24), Value);
    CFDictionarySetValue(gCertCacheDomainList, *(*(a1[5] + 8) + 24), v3);
    CertCacheReferenceCountUpdate(*(*(a1[7] + 8) + 24), 1);
    PrintCertCacheContents(@"Single", *(*(*(a1[7] + 8) + 24) + 40));
    PrintCertCacheContents(@"Chain", *(*(*(a1[7] + 8) + 24) + 64));
    if (!v11)
    {
      v12 = *(*(a1[7] + 8) + 24);
      SyncCertCacheContentsToPreferencesFile(*(v12 + 32), *(v12 + 40));
    }
  }

  else if (!v3)
  {
    goto LABEL_45;
  }

  CFRelease(v3);
LABEL_45:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ValidateCertificateCache(const __CFDictionary *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  v31 = CFDataGetTypeID();
  v3 = CFArrayGetTypeID();
  v30 = CFNumberGetTypeID();
  Count = CFDictionaryGetCount(a1);
  v5 = 8 * Count;
  v6 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (&v29 - v6);
  if (!(MEMORY[0x28223BE20])())
  {
    CFDictionaryGetKeysAndValues(a1, (&v29 - v6), &values);
    goto LABEL_36;
  }

  v8 = memset(&v29 - v6, 170, v5);
  MEMORY[0x28223BE20](v8);
  v9 = (&v29 - v6);
  memset(&v29 - v6, 170, v5);
  CFDictionaryGetKeysAndValues(a1, (&v29 - v6), (&v29 - v6));
  if (Count < 1)
  {
LABEL_36:
    v11 = 0;
    goto LABEL_37;
  }

  v11 = 0;
  *&v10 = 136315650;
  v29 = v10;
  do
  {
    v12 = *v7;
    v13 = *v9;
    if (*v7)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v16 = 0;
      v15 = 0;
    }

    else
    {
      v15 = CFGetTypeID(*v7);
      v16 = CFGetTypeID(v13);
    }

    if (v15 != TypeID)
    {
      goto LABEL_32;
    }

    if (v16 != v3)
    {
      goto LABEL_32;
    }

    valuePtr = 0;
    CFDataGetLength(v12);
    if (CFArrayGetCount(v13) != 2)
    {
      goto LABEL_32;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
    v18 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v19 = CFGetTypeID(ValueAtIndex);
      LODWORD(v18) = v19 == v30 && CFNumberGetValue(v18, kCFNumberLongType, &valuePtr) != 0;
    }

    v20 = CFArrayGetValueAtIndex(v13, 1);
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v20;
    v22 = CFGetTypeID(v20);
    if (v22 != v31)
    {
      goto LABEL_32;
    }

    Length = CFDataGetLength(v21);
    v24 = valuePtr ? v18 : 0;
    if (v24 != 1 || (Length - 512) > 0x600)
    {
      goto LABEL_32;
    }

    v25 = MFAACreateCertificateSerialNumber(v21);
    v26 = MFAACreateSerialNumberStringFromData(v25);
    if (v26 && CFStringCompare(v12, v26, 1uLL) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = v29;
      v35 = "ValidateCertificateCache";
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: key and cert serial doesn't match but allow, key %@, certSerial %@", buf, 0x20u);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    else
    {
LABEL_32:
      CFDictionaryRemoveValue(a1, *v7);
      ++v11;
    }

    ++v9;
    ++v7;
    --Count;
  }

  while (Count);
LABEL_37:
  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t CertCacheReferenceCountUpdate(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1 && (v2 = *(a1 + 24)) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __CertCacheReferenceCountUpdate_block_invoke;
    block[3] = &unk_279831A00;
    block[4] = &v7;
    block[5] = a1;
    v6 = a2;
    dispatch_sync(v2, block);
    v3 = *(v8 + 6);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void PrintCertCacheContents(uint64_t a1, CFTypeRef cf)
{
  Count = 0;
  v59 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (a1 && cf)
  {
    v5 = CFGetRetainCount(cf);
    if (v5 < 1)
    {
      Count = 0;
    }

    else
    {
      Count = CFDictionaryGetCount(cf);
      if (Count >= 1)
      {
        TypeID = CFStringGetTypeID();
        v47 = CFDataGetTypeID();
        v48 = CFArrayGetTypeID();
        v42 = CFNumberGetTypeID();
        v41 = &v39;
        MEMORY[0x28223BE20](v42);
        v6 = &v39 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = memset(v6, 170, 8 * Count);
        MEMORY[0x28223BE20](v7);
        memset(v6, 170, 8 * Count);
        v51 = v6;
        bzero(v6, 8 * Count);
        v50 = v6;
        bzero(v6, 8 * Count);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v54 = "PrintCertCacheContents";
          v55 = 2112;
          v56 = a1;
          v57 = 1024;
          *v58 = cf & 0xFFF;
          *&v58[4] = 2048;
          *&v58[6] = v5;
          *&v58[14] = 2048;
          *&v58[16] = Count;
          _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (%@) pkCertCacheDict:%04X, dictRetainCount:%02lX, dictEntryCount:%02lX", buf, 0x30u);
        }

        CFDictionaryGetKeysAndValues(cf, v51, v50);
        v8 = 0;
        v9 = MEMORY[0x277D86220];
        *&v10 = 136316674;
        v45 = v10;
        *&v10 = 136316418;
        v46 = v10;
        *&v10 = 136315906;
        v44 = v10;
        *&v10 = 136316162;
        v43 = v10;
        *&v10 = 136315394;
        v39 = v10;
        *&v10 = 136315650;
        v40 = v10;
        while (1)
        {
          v11 = v51[v8];
          v12 = v50[v8];
          if (v11)
          {
            v13 = CFGetRetainCount(v51[v8]);
            if (v12)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v13 = 0;
            if (v12)
            {
LABEL_10:
              v14 = CFGetRetainCount(v12);
              goto LABEL_13;
            }
          }

          v14 = 0;
LABEL_13:
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v45;
            v54 = "PrintCertCacheContents";
            v55 = 2112;
            v56 = a1;
            v57 = 2048;
            *v58 = v8;
            *&v58[8] = 1024;
            *&v58[10] = v11 & 0xFFF;
            *&v58[14] = 2048;
            *&v58[16] = v13;
            *&v58[24] = 1024;
            *&v58[26] = v12 & 0xFFF;
            *&v58[30] = 2048;
            *&v58[32] = v14;
            _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) [%02lX] pkKey:%04X, keyRetainCount:%02lX, pkVal:%04X, valRetainCount:%02lX", buf, 0x40u);
          }

          if (v11 && v13 >= 1)
          {
            v15 = CFGetTypeID(v11);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v46;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v57 = 1024;
              *v58 = v11 & 0xFFF;
              *&v58[4] = 2048;
              *&v58[6] = v13;
              *&v58[14] = 2048;
              *&v58[16] = v15;
              *&v58[24] = 2048;
              *&v58[26] = TypeID;
              _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) pkKey:%04X, keyRetainCount:%02lX, typeID:%02lX (strID:%02lX)", buf, 0x3Au);
            }

            if (v15 == TypeID && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
              *buf = v44;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v57 = 2048;
              *v58 = v8;
              *&v58[8] = 2080;
              *&v58[10] = CStringPtr;
              _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) pkDictKeys [%02lX] str:[%s]", buf, 0x2Au);
            }

            if (v15 == v47)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v44;
                v54 = "PrintCertCacheContents";
                v55 = 2112;
                v56 = a1;
                v57 = 2048;
                *v58 = v8;
                *&v58[8] = 2112;
                *&v58[10] = v11;
                _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) pkDictKeys [%02lX] hash:[%@]", buf, 0x2Au);
                if (!v12)
                {
                  goto LABEL_65;
                }

                goto LABEL_30;
              }

LABEL_29:
              if (!v12)
              {
                goto LABEL_65;
              }

              goto LABEL_30;
            }

            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = v43;
            v54 = "PrintCertCacheContents";
            v55 = 2112;
            v56 = a1;
            v57 = 2048;
            *v58 = v8;
            *&v58[8] = 2048;
            *&v58[10] = v15;
            *&v58[18] = 2048;
            *&v58[20] = TypeID;
            v17 = v9;
            v18 = "%s (%@) ERROR pkDictKeys [%02lX] typeID:%02lX, expectID:%02lX";
            v19 = 52;
          }

          else
          {
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = v43;
            v54 = "PrintCertCacheContents";
            v55 = 2112;
            v56 = a1;
            v57 = 2048;
            *v58 = v8;
            *&v58[8] = 1024;
            *&v58[10] = v11 & 0xFFF;
            *&v58[14] = 2048;
            *&v58[16] = v13;
            v17 = v9;
            v18 = "%s (%@) ERROR pkDictKeys [%02lX]:%04X, keyRetainCount:%02lX";
            v19 = 48;
          }

          _os_log_error_impl(&dword_25627E000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
          if (!v12)
          {
LABEL_65:
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v57 = 2048;
              *v58 = v8;
              *&v58[8] = 1024;
              *&v58[10] = v12 & 0xFFF;
              *&v58[14] = 2048;
              *&v58[16] = v14;
              v28 = v9;
              v29 = "%s (%@) ERROR pkDictVals [%02lX]:%04X, valRetainCount:%02lX";
              goto LABEL_69;
            }

            goto LABEL_66;
          }

LABEL_30:
          if (v14 < 1)
          {
            goto LABEL_65;
          }

          v20 = CFGetTypeID(v12);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v46;
            v54 = "PrintCertCacheContents";
            v55 = 2112;
            v56 = a1;
            v57 = 1024;
            *v58 = v12 & 0xFFF;
            *&v58[4] = 2048;
            *&v58[6] = v14;
            *&v58[14] = 2048;
            *&v58[16] = v20;
            *&v58[24] = 2048;
            *&v58[26] = v48;
            _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) pkVal:%04X valRetainCount:%02lX, typeID:%02lX (arrayID:%02lX)", buf, 0x3Au);
          }

          if (v20 == v48)
          {
            v21 = CFArrayGetCount(v12);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v44;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v57 = 2048;
              *v58 = v8;
              *&v58[8] = 2048;
              *&v58[10] = v21;
              _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) pkDictVals [%02lX] arrayCount:[%02lX]", buf, 0x2Au);
            }

            if (v21 != 2)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *buf = v43;
                v54 = "PrintCertCacheContents";
                v55 = 2112;
                v56 = a1;
                v57 = 2048;
                *v58 = v8;
                *&v58[8] = 2048;
                *&v58[10] = v21;
                *&v58[18] = 1024;
                *&v58[20] = 2;
                v28 = v9;
                v29 = "%s (%@) ERROR pkDictVals [%02lX] arrayCount:%02lX, arrayCountExpect:%02X";
LABEL_69:
                v30 = 48;
                goto LABEL_70;
              }

              goto LABEL_66;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
            v23 = CFArrayGetValueAtIndex(v12, 1);
            if (ValueAtIndex)
            {
              v24 = CFGetTypeID(ValueAtIndex);
              v25 = CFGetRetainCount(ValueAtIndex);
              v26 = v25;
              if (v24 == v42 && v25 >= 1)
              {
                valuePtr = 0;
                Value = CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v46;
                  v54 = "PrintCertCacheContents";
                  v55 = 2112;
                  v56 = a1;
                  v57 = 2048;
                  *v58 = v42;
                  *&v58[8] = 2048;
                  *&v58[10] = v26;
                  *&v58[18] = 1024;
                  *&v58[20] = Value;
                  *&v58[24] = 2048;
                  *&v58[26] = valuePtr;
                  _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) usageTypeID:%02lX, usageRetainCount:%02lX, bUsageValid:%d, certUsage:%02lX", buf, 0x3Au);
                  if (!v23)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_52;
                }

LABEL_51:
                if (!v23)
                {
                  goto LABEL_73;
                }

LABEL_52:
                v34 = CFGetTypeID(v23);
                v35 = CFGetRetainCount(v23);
                v36 = v35;
                if (v34 == v47 && v35 >= 1)
                {
                  Length = CFDataGetLength(v23);
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = v44;
                    v54 = "PrintCertCacheContents";
                    v55 = 2112;
                    v56 = a1;
                    v57 = 2048;
                    *v58 = v47;
                    *&v58[8] = 2048;
                    *&v58[10] = v36;
                    _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) certTypeID:%02lX, certRetainCount:%02lX", buf, 0x2Au);
                  }

                  if ((Length - 512) <= 0x600)
                  {
                    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v40;
                      v54 = "PrintCertCacheContents";
                      v55 = 2112;
                      v56 = a1;
                      v57 = 2048;
                      *v58 = Length;
                      _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "%s (%@) Valid certDataLen:%02lX", buf, 0x20u);
                    }

                    goto LABEL_66;
                  }

                  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v40;
                    v54 = "PrintCertCacheContents";
                    v55 = 2112;
                    v56 = a1;
                    v57 = 2048;
                    *v58 = Length;
                    v28 = v9;
                    v29 = "%s (%@) ERROR invalid certDataLen:%02lX";
                    v30 = 32;
                    goto LABEL_70;
                  }
                }

                else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  *buf = v43;
                  v54 = "PrintCertCacheContents";
                  v55 = 2112;
                  v56 = a1;
                  v57 = 2048;
                  *v58 = v34;
                  *&v58[8] = 2048;
                  *&v58[10] = v47;
                  *&v58[18] = 2048;
                  *&v58[20] = v36;
                  v28 = v9;
                  v29 = "%s (%@) ERROR certTypeID:%02lX, expectTypeID:%02lX, certRetainCount:%02lX";
                  goto LABEL_45;
                }

                goto LABEL_66;
              }

              if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = v43;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v57 = 2048;
              *v58 = v24;
              *&v58[8] = 2048;
              *&v58[10] = v42;
              *&v58[18] = 2048;
              *&v58[20] = v26;
              v31 = v9;
              v32 = "%s (%@) ERROR usageTypeID:%02lX, expectTypeID:%02lX, usageRetainCount:%02lX";
              v33 = 52;
            }

            else
            {
              if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = v39;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v31 = v9;
              v32 = "%s (%@) ERROR pkUsageCount = NULL !";
              v33 = 22;
            }

            _os_log_error_impl(&dword_25627E000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
            if (!v23)
            {
LABEL_73:
              if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_66;
              }

              *buf = v39;
              v54 = "PrintCertCacheContents";
              v55 = 2112;
              v56 = a1;
              v28 = v9;
              v29 = "%s (%@) ERROR pkCertData = NULL !";
              v30 = 22;
              goto LABEL_70;
            }

            goto LABEL_52;
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = v43;
            v54 = "PrintCertCacheContents";
            v55 = 2112;
            v56 = a1;
            v57 = 2048;
            *v58 = v8;
            *&v58[8] = 2048;
            *&v58[10] = v20;
            *&v58[18] = 2048;
            *&v58[20] = v48;
            v28 = v9;
            v29 = "%s (%@) ERROR pkDictVals [%02lX] typeID:%02lX, expectID:%02lX";
LABEL_45:
            v30 = 52;
LABEL_70:
            _os_log_error_impl(&dword_25627E000, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
          }

LABEL_66:
          if (Count == ++v8)
          {
            goto LABEL_78;
          }
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v54 = "PrintCertCacheContents";
    v55 = 2112;
    v56 = a1;
    v57 = 1024;
    *v58 = cf & 0xFFF;
    *&v58[4] = 2048;
    *&v58[6] = v5;
    *&v58[14] = 2048;
    *&v58[16] = Count;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s (%@) Print of cache contents bypassed due to pkCertCacheDict:%04X, dictRetainCount:%02lX, or dictEntryCount:%02lX", buf, 0x30u);
  }

LABEL_78:
  v38 = *MEMORY[0x277D85DE8];
}

BOOL SyncCertCacheContentsToPreferencesFile(CFStringRef key, const void *a2)
{
  result = 0;
  if (key && a2)
  {
    v4 = *MEMORY[0x277CBF040];
    v5 = *MEMORY[0x277CBF030];
    CFPreferencesSetValue(key, a2, @"com.apple.accessoryd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    if (CFPreferencesSynchronize(@"com.apple.accessoryd", v4, v5))
    {
      return 1;
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (result)
      {
        SyncCertCacheContentsToPreferencesFile_cold_1();
        return 0;
      }
    }
  }

  return result;
}

void MFAADeallocCertificateCache(uint64_t a1)
{
  if (a1)
  {
    if (gCertCacheDomainList)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __MFAADeallocCertificateCache_block_invoke;
      block[3] = &__block_descriptor_tmp_28;
      block[4] = a1;
      dispatch_sync(gCertCacheDomainQueue, block);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAADeallocCertificateCache_cold_1();
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 32) = 0;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      dispatch_release(v6);
    }

    free(a1);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAADeallocCertificateCache_cold_2();
  }
}

void __MFAADeallocCertificateCache_block_invoke(uint64_t a1)
{
  if (CertCacheReferenceCountUpdate(*(a1 + 32), -1) <= 0)
  {
    if ((v2 = *(a1 + 32), (v3 = v2[5]) != 0) && v2[4] || v2[8] && v2[7])
    {
      PrintCertCacheContents(@"Single", v3);
      PrintCertCacheContents(@"Chain", *(*(a1 + 32) + 64));
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      if (v5)
      {
        if (!SyncCertCacheContentsToPreferencesFile(*(v4 + 32), v5) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          SyncCertCacheContentsToPreferencesFile_cold_1();
        }

        v4 = *(a1 + 32);
        v6 = *(v4 + 32);
        if (v6)
        {
          Value = CFDictionaryGetValue(gCertCacheDomainList, v6);
          v4 = *(a1 + 32);
          if (Value)
          {
            CFDictionaryRemoveValue(gCertCacheDomainList, *(v4 + 32));
            v4 = *(a1 + 32);
            v8 = *(v4 + 40);
            if (v8)
            {
              CFRelease(v8);
              *(*(a1 + 32) + 40) = 0;
              v4 = *(a1 + 32);
            }
          }
        }
      }

      v9 = *(v4 + 64);
      if (v9)
      {
        if (!SyncCertCacheContentsToPreferencesFile(*(v4 + 56), v9) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __MFAADeallocCertificateCache_block_invoke_cold_2();
        }

        v10 = *(*(a1 + 32) + 56);
        if (v10 && CFDictionaryGetValue(gCertCacheDomainList, v10))
        {
          CFDictionaryRemoveValue(gCertCacheDomainList, *(*(a1 + 32) + 56));
          v11 = *(*(a1 + 32) + 64);
          if (v11)
          {
            CFRelease(v11);
            *(*(a1 + 32) + 64) = 0;
          }
        }
      }
    }
  }
}

uint64_t MFAACreateCertDataFromSerialNumber(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a1 && a2 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAACreateCertDataFromSerialNumber_block_invoke;
    block[3] = &unk_2798318E8;
    block[4] = v10;
    block[5] = &v6;
    block[6] = a2;
    dispatch_sync(v4, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAACreateCertDataFromSerialNumber_cold_1();
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

uint64_t MFAAAddCertDataEntryToCache(uint64_t a1, uint64_t a2)
{
  v4 = MFAACreateCertificateSerialNumber(a2);
  if (v4)
  {
    v5 = v4;
    v6 = MFAACreateSerialNumberStringFromData(v4);
    v7 = MFAAAddCertDataEntryToCacheForSerialNumber(a1, a2, v6);
    CFRelease(v5);
    if (v6)
    {
      CFRelease(v6);
    }

    return v7;
  }

  else
  {

    return MFAAAddCertDataEntryToCacheForSerialNumber(a1, a2, 0);
  }
}

const __CFData *MFAACreateSerialNumberStringFromData(const __CFData *result)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    Length = CFDataGetLength(result);
    MEMORY[0x28223BE20]();
    v5 = (v4 + 19) & 0xFFFFFFFFFFFFFFF0;
    v6 = v12 - v5;
    if (v3)
    {
      memset(v12 - v5, 170, v3);
    }

    BytePtr = CFDataGetBytePtr(v1);
    if (Length >= 1)
    {
      v8 = BytePtr;
      v9 = v6;
      do
      {
        v10 = *v8++;
        sprintf(v9, "%02X", v10);
        v9 += 2;
        --Length;
      }

      while (Length);
    }

    result = CFStringCreateWithCString(0, v6, 0x8000100u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFAAAddCertDataEntryToCacheForSerialNumber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && a2 && a3 && (*(a1 + 48) & 1) == 0)
  {
    v6 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAAAddCertDataEntryToCacheForSerialNumber_block_invoke;
    block[3] = &unk_279831910;
    block[6] = a3;
    block[7] = a2;
    block[4] = v12;
    block[5] = &v8;
    block[8] = a1;
    dispatch_sync(v6, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAAAddCertDataEntryToCacheForSerialNumber_cold_1();
  }

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);
  return v4;
}

void __MFAAAddCertDataEntryToCacheForSerialNumber_block_invoke(uint64_t a1)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  if (CFDictionaryGetValue(*(*(*(*(a1 + 32) + 8) + 24) + 40), *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) = IncrementCertEntryUsageCount(*(a1 + 64), *(a1 + 48));
LABEL_25:
    v15 = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) = SyncCertCacheContentsToPreferencesFile(*(v15 + 32), *(v15 + 40));
    goto LABEL_26;
  }

  v2 = CFNumberCreate(0, kCFNumberLongType, &_block_invoke_2_kAuthUsageInitialCount);
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (Mutable)
  {
    CFArraySetValueAtIndex(Mutable, 0, v2);
    CFArraySetValueAtIndex(v4, 1, *(a1 + 56));
    Count = CFDictionaryGetCount(*(*(*(*(a1 + 32) + 8) + 24) + 40));
    if (Count >= 16)
    {
      v6 = Count;
      v7 = 8 * Count;
      MEMORY[0x28223BE20](Count);
      v8 = (valuePtr - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = memset(v8, 170, v7);
      MEMORY[0x28223BE20](v9);
      v10 = v8;
      memset(v8, 170, v7);
      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      CFDictionaryGetKeysAndValues(*(*(*(*(a1 + 32) + 8) + 24) + 40), v8, v8);
      v11 = 0;
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v10, 0);
        valuePtr[0] = 0;
        if (CFNumberGetValue(ValueAtIndex, kCFNumberLongType, valuePtr))
        {
          v14 = valuePtr[0] < 1;
        }

        else
        {
          v14 = 1;
        }

        if (!v14 && (v12 < 1 || valuePtr[0] < v12))
        {
          v11 = *v8;
          v12 = valuePtr[0];
        }

        ++v8;
        ++v10;
        --v6;
      }

      while (v6);
      if (v11)
      {
        CFDictionaryRemoveValue(*(*(*(*(a1 + 32) + 8) + 24) + 40), v11);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __MFAAAddCertDataEntryToCacheForSerialNumber_block_invoke_cold_1();
      }
    }

    CFDictionaryAddValue(*(*(*(*(a1 + 32) + 8) + 24) + 40), *(a1 + 48), v4);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __MFAAAddCertDataEntryToCacheForSerialNumber_block_invoke_cold_2();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t IncrementCertEntryUsageCount(uint64_t a1, void *key)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || !key || (*(a1 + 48) & 1) != 0)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_5;
    }

    IncrementCertEntryUsageCount_cold_1();
LABEL_18:
    result = 0;
    goto LABEL_5;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(*(a1 + 40), key);
  if (!Value)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v9 = 0;
    Count = 0;
LABEL_16:
    IncrementCertEntryUsageCount_cold_2(buf, v9, Count);
    goto LABEL_18;
  }

  v7 = Value;
  if (CFArrayGetCount(Value) != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v9 = v7 & 0xFFF;
    Count = CFArrayGetCount(v7);
    goto LABEL_16;
  }

  result = CFArrayGetValueAtIndex(v7, 0);
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberLongType, &valuePtr);
    if (result)
    {
      *buf = valuePtr + 1;
      result = CFNumberCreate(0, kCFNumberLongType, buf);
      if (result)
      {
        v8 = result;
        CFArraySetValueAtIndex(v7, 0, result);
        CFRelease(v8);
        CFDictionarySetValue(*(a1 + 40), key, v7);
        result = 1;
      }
    }
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFAARemoveCertDataEntryFromCache(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a1 && a2 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAARemoveCertDataEntryFromCache_block_invoke;
    block[3] = &unk_279831938;
    block[4] = v10;
    block[5] = &v6;
    block[6] = a2;
    dispatch_sync(v4, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAARemoveCertDataEntryFromCache_cold_1();
  }

  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

BOOL __MFAARemoveCertDataEntryFromCache_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(*(*(a1 + 32) + 8) + 24) + 40), *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  result = SyncCertCacheContentsToPreferencesFile(*(v2 + 32), *(v2 + 40));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t MFAACreateMatchingHashForCertChainFromHashLSB(uint64_t a1, CFStringRef theString)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2000000000;
  v15[2] = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1 && theString && CFStringGetLength(theString) == 2 && (v3 = *(v15[0] + 24), (*(v3 + 48) & 1) == 0))
  {
    v7 = *(v3 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAACreateMatchingHashForCertChainFromHashLSB_block_invoke;
    block[3] = &unk_279831960;
    block[4] = &v14;
    block[5] = &v10;
    block[6] = theString;
    dispatch_sync(v7, block);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v11[3];
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = theString;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Found hash %@ for LSB %@\n", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAACreateMatchingHashForCertChainFromHashLSB_cold_1(v15);
  }

  v4 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __MFAACreateMatchingHashForCertChainFromHashLSB_block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  result = CFDictionaryGetCount(*(*(*(*(a1 + 32) + 8) + 24) + 64));
  if (result >= 1)
  {
    v3 = result;
    MEMORY[0x28223BE20](result);
    v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    memset(v5, 170, v4);
    CFDictionaryGetKeysAndValues(*(*(*(*(a1 + 32) + 8) + 24) + 64), v5, 0);
    v6 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v7 = *v5;
      result = CFStringGetLength(*v5);
      if (result >= 2)
      {
        v10.length = 2;
        v10.location = result - 2;
        result = CFStringCreateWithSubstring(v6, v7, v10);
        if (result)
        {
          result = CFStringCompare(result, *(a1 + 48), 1uLL);
          if (!result)
          {
            break;
          }
        }
      }

      ++v5;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    result = CFStringCreateCopy(v6, v7);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MFAACreateCertChainDataFromHash(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a1 && a2 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAACreateCertChainDataFromHash_block_invoke;
    block[3] = &unk_279831988;
    block[4] = v10;
    block[5] = &v6;
    block[6] = a2;
    dispatch_sync(v4, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAACreateCertChainDataFromHash_cold_1();
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

uint64_t MFAAAddCertChainDataEntryToCacheForHash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && a2 && a3 && (*(a1 + 48) & 1) == 0)
  {
    v6 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAAAddCertChainDataEntryToCacheForHash_block_invoke;
    block[3] = &unk_2798319B0;
    block[6] = a3;
    block[7] = a2;
    block[4] = v12;
    block[5] = &v8;
    block[8] = a1;
    dispatch_sync(v6, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAAAddCertChainDataEntryToCacheForHash_cold_1();
  }

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);
  return v4;
}

void __MFAAAddCertChainDataEntryToCacheForHash_block_invoke(uint64_t a1)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  if (CFDictionaryGetValue(*(*(*(*(a1 + 32) + 8) + 24) + 64), *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) = IncrementCertEntryUsageCount(*(a1 + 64), *(a1 + 48));
LABEL_25:
    v15 = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) = SyncCertCacheContentsToPreferencesFile(*(v15 + 56), *(v15 + 64));
    goto LABEL_26;
  }

  v2 = CFNumberCreate(0, kCFNumberLongType, &_block_invoke_3_kAuthUsageInitialCount);
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (Mutable)
  {
    CFArraySetValueAtIndex(Mutable, 0, v2);
    CFArraySetValueAtIndex(v4, 1, *(a1 + 56));
    Count = CFDictionaryGetCount(*(*(*(*(a1 + 32) + 8) + 24) + 64));
    if (Count >= 16)
    {
      v6 = Count;
      v7 = 8 * Count;
      MEMORY[0x28223BE20](Count);
      v8 = (valuePtr - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = memset(v8, 170, v7);
      MEMORY[0x28223BE20](v9);
      v10 = v8;
      memset(v8, 170, v7);
      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      CFDictionaryGetKeysAndValues(*(*(*(*(a1 + 32) + 8) + 24) + 64), v8, v8);
      v11 = 0;
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v10, 0);
        valuePtr[0] = 0;
        if (CFNumberGetValue(ValueAtIndex, kCFNumberLongType, valuePtr))
        {
          v14 = valuePtr[0] < 1;
        }

        else
        {
          v14 = 1;
        }

        if (!v14 && (v12 < 1 || valuePtr[0] < v12))
        {
          v11 = *v8;
          v12 = valuePtr[0];
        }

        ++v8;
        ++v10;
        --v6;
      }

      while (v6);
      if (v11)
      {
        CFDictionaryRemoveValue(*(*(*(*(a1 + 32) + 8) + 24) + 64), v11);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __MFAAAddCertDataEntryToCacheForSerialNumber_block_invoke_cold_1();
      }
    }

    CFDictionaryAddValue(*(*(*(*(a1 + 32) + 8) + 24) + 64), *(a1 + 48), v4);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __MFAAAddCertDataEntryToCacheForSerialNumber_block_invoke_cold_2();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t MFAARemoveCertChainDataEntryFromCache(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a1 && a2 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MFAARemoveCertChainDataEntryFromCache_block_invoke;
    block[3] = &unk_2798319D8;
    block[4] = v10;
    block[5] = &v6;
    block[6] = a2;
    dispatch_sync(v4, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAARemoveCertChainDataEntryFromCache_cold_1();
  }

  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

BOOL __MFAARemoveCertChainDataEntryFromCache_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(*(*(a1 + 32) + 8) + 24) + 64), *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  result = SyncCertCacheContentsToPreferencesFile(*(v2 + 56), *(v2 + 64));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

CFDataRef MFAACreateSerialNumberDataFromString(const __CFString *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v28 = -86;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v1;
  v27 = v1;
  *buffer = v1;
  v25 = v1;
  v23[0] = v1;
  v23[1] = v1;
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAACreateSerialNumberDataFromString_cold_4();
    }

    goto LABEL_29;
  }

  Length = CFStringGetLength(a1);
  v4 = Length;
  if (Length < 1 || Length > 0x40 || (Length & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAACreateSerialNumberDataFromString_cold_1();
    }

    goto LABEL_29;
  }

  if (!CFStringGetCString(a1, buffer, 65, 0x600u))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAACreateSerialNumberDataFromString_cold_3();
    }

    goto LABEL_29;
  }

  v5 = 0;
  v6 = v4 >> 1;
  v7 = &buffer[1];
  do
  {
    v8 = *(v7 - 1);
    v9 = v8 - 48;
    v10 = v8 - 97;
    if ((v8 - 65) >= 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 - 55;
    }

    v12 = v8 - 87;
    if (v10 > 5)
    {
      v12 = v11;
    }

    if (v9 < 0xA)
    {
      v12 = v9;
    }

    v13 = 16 * v12;
    v15 = *v7;
    v7 += 2;
    v14 = v15;
    v16 = v15 - 48;
    v17 = v15 - 97;
    v18 = v15 - 55;
    if ((v15 - 65) >= 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = v14 - 87;
    if (v17 > 5)
    {
      v20 = v19;
    }

    if (v16 < 0xA)
    {
      v20 = v16;
    }

    *(v23 + v5++) = v20 + v13;
  }

  while (v6 != v5);
  result = CFDataCreate(*MEMORY[0x277CBECE8], v23, v6);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MFAACreateSerialNumberDataFromString_cold_2();
    }

LABEL_29:
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void __CertCacheReferenceCountUpdate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!*(v1 + 40))
  {
    return;
  }

  Value = CFDictionaryGetValue(gCertCacheDomainList, *(v1 + 16));
  if (Value)
  {
    if (CFNumberGetValue(Value, kCFNumberIntType, (*(*(a1 + 32) + 8) + 24)))
    {
      *(*(*(a1 + 32) + 8) + 24) += *(a1 + 48);
      v4 = CFNumberCreate(0, kCFNumberIntType, (*(*(a1 + 32) + 8) + 24));
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(gCertCacheDomainList, *(*(a1 + 40) + 16), v4);

        CFRelease(v5);
        return;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __CertCacheReferenceCountUpdate_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __CertCacheReferenceCountUpdate_block_invoke_cold_2();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __CertCacheReferenceCountUpdate_block_invoke_cold_3();
  }
}

uint64_t *MFAACreateCapsFromAuthCert(void *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (!v2)
  {
    MFAACreateCapsFromAuthCert_cold_7(v51);
    v3 = *v51;
    goto LABEL_39;
  }

  v3 = v2;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v4 = mfaa_certificateManager_copyCertificateCapabilites(a1);
  if (v4)
  {
    MFAACreateCapsFromAuthCert_cold_1(v4, v3);
    goto LABEL_39;
  }

  if (a1)
  {
    v5 = MFAACreateSecurityCertificateReference(a1);
    if (v5)
    {
      v6 = v5;
      v7 = SecCertificateGetiAuthVersion();
      v8 = v7;
      if (v7 == 5 || v7 == 3)
      {
        v31 = SecCertificateCopyiAPAuthCapabilities();
        if (v31)
        {
          v32 = v31;
          BytePtr = CFDataGetBytePtr(v31);
          if (CFDataGetLength(v32) == 32)
          {
            v34 = bswap64(*BytePtr);
            v35 = bswap64(BytePtr[1]);
            v36 = bswap64(BytePtr[2]);
            v37 = bswap64(BytePtr[3]);
            v38 = v37 & 0xFFFFFFFFFFFFD0F9;
            if ((v37 & 0xC000) == 0)
            {
              v38 = v37;
            }

            v39 = v38 | 0x2F00;
            if ((v38 & 4) == 0)
            {
              v39 = v38;
            }

            if ((v38 & 2) != 0)
            {
              v40 = v38 | 0xF00;
            }

            else
            {
              v40 = v39;
            }

            CFRelease(v32);
            *v3 = v40;
            v3[1] = v36;
            v3[2] = v35;
            v3[3] = v34;
            if (v8 != 3 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_28;
            }

            *v51 = 134218240;
            *&v51[4] = v37;
            *&v51[12] = 2048;
            *&v51[14] = v40;
            v12 = MEMORY[0x277D86220];
            v13 = "AuthV3 orig authCertCaps0:%08llX -> final authCertCaps0:%08llX\n";
            v14 = 22;
            goto LABEL_27;
          }

          CFRelease(v32);
        }

        else
        {
          v41 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v41)
          {
            MFAACreateCapsFromAuthCert_cold_2(v41, v42, v43, v44, v45, v46, v47, v48);
          }
        }
      }

      else if (v7 == 2)
      {
        v9 = MFAACertificateAuthV2Class(a1);
        if (v9 < 0xD)
        {
          v10 = v9;
          v11 = GetAccessoryCaps_kCertAccessoryCaps[v9];
          *v3 = v11;
          v3[1] = 0;
          v3[2] = 0;
          v3[3] = 0;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_28:
            CFRelease(v6);
            goto LABEL_39;
          }

          *v51 = 67109376;
          *&v51[4] = v10;
          *&v51[8] = 2048;
          *&v51[10] = v11;
          v12 = MEMORY[0x277D86220];
          v13 = "AuthV2 authCertClass:%02X -> authCertCaps0:%08llX\n";
          v14 = 18;
LABEL_27:
          _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_INFO, v13, v51, v14);
          goto LABEL_28;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MFAACreateCapsFromAuthCert_cold_3(v6, v8);
      }

      CFRelease(v6);
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        MFAACreateCapsFromAuthCert_cold_4(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      MFAACreateCapsFromAuthCert_cold_5(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MFAACreateCapsFromAuthCert_cold_6();
  }

  free(v3);
  v3 = 0;
LABEL_39:
  v49 = *MEMORY[0x277D85DE8];
  return v3;
}

void MFAADeallocAuthCertCaps(void *a1)
{
  if (a1)
  {

    free(a1);
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      MFAADeallocAuthCertCaps_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t MFAACanChargeHighVoltage(uint64_t result)
{
  if (result)
  {
    return *(result + 1) & 1;
  }

  return result;
}

uint64_t MFAACanChargeInductive(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 1) & 1;
  }

  return result;
}

void *MFAACanUseAccPwrUHPM(void *result)
{
  if (result)
  {
    if ((*result & 0x400) != 0)
    {
      return ((*result >> 10) & 1);
    }

    else
    {
      return ((*result >> 4) & 1);
    }
  }

  return result;
}

unsigned __int8 *MFAAIsAppleMFiAccessory(unsigned __int8 *result)
{
  if (result)
  {
    return ((*result >> 4) & 1);
  }

  return result;
}

uint64_t MFAACanUseAccPwrLoV(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 3) & 1;
  }

  return result;
}

uint64_t MFAAIsMagSafeAccessory(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 4) & 1;
  }

  return result;
}

uint64_t MFAACanReceiveInductivePower(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 5) & 1;
  }

  return result;
}

_BYTE *MFAAIsAppleAccessory(_BYTE *result)
{
  if (result)
  {
    return ((*result & 0x18) == 0);
  }

  return result;
}

unsigned __int8 *MFAAIsAppleHWModule(unsigned __int8 *result)
{
  if (result)
  {
    return ((*result >> 3) & 1);
  }

  return result;
}

uint64_t MFAAIsAppleBatteryModule(uint64_t result)
{
  if (result)
  {
    return *(result + 1) >> 7;
  }

  return result;
}

uint64_t MFAAIsAppleTouchControllerModule(uint64_t result)
{
  if (result)
  {
    return (*(result + 1) >> 6) & 1;
  }

  return result;
}

uint64_t MFAAMFi4CanChargeInductiveFromAccessory(uint64_t a1, int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 4)
    {
      return (*(a1 + 3) >> 1) & 1;
    }
  }

  return result;
}

uint64_t MFAAMFi4CanReceiveInductivePowerFromDevice(uint64_t a1, int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 4)
    {
      return (*(a1 + 3) >> 2) & 1;
    }
  }

  return result;
}

uint64_t MFAAMFi4CanAppMatchLaunch(uint64_t a1, int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 5)
    {
      return (*(a1 + 4) >> 2) & 1;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id logObjectForModule(int a1)
{
  if (a1 < 0 || (gLogObjects ? (v1 = gNumLogObjects <= a1) : (v1 = 1), v1))
  {
    if (a1 != -1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *(gLogObjects + 8 * a1);
  }

  return v2;
}

__CFArray *_createCertificateArrayForCert(const void *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, a1);

  return Mutable;
}

id _anchorCertsForComponentAuth()
{
  v8 = *MEMORY[0x277D85DE8];
  if (_anchorCertsForComponentAuth_onceToken != -1)
  {
    _anchorCertsForComponentAuth_cold_1();
  }

  if (gLogObjects)
  {
    v0 = gNumLogObjects < 2;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = [_anchorCertsForComponentAuth_anchorCerts count];
    _os_log_impl(&dword_25627E000, v2, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for Component Auth", &v6, 0xCu);
  }

  v3 = _anchorCertsForComponentAuth_anchorCerts;
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_25629F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25629F5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t ___anchorCertsForMFi2_block_invoke()
{
  _anchorCertsForMFi2_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:1];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForMFi3_block_invoke()
{
  _anchorCertsForMFi3_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:2];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForSWAuth_block_invoke()
{
  _anchorCertsForSWAuth_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:4];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForComponentAuth_block_invoke()
{
  _anchorCertsForComponentAuth_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:8];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForBAAUser_block_invoke()
{
  _MergedGlobals = [MFAACertificateManager anchorCertificatesForTypes:16];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForDEVN_block_invoke()
{
  _anchorCertsForDEVN_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:32];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForProvenance_block_invoke()
{
  _anchorCertsForProvenance_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:64];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___anchorCertsForWPC_block_invoke()
{
  _anchorCertsForWPC_anchorCerts = [MFAACertificateManager anchorCertificatesForTypes:128];

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_19(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 8u);
}

uint64_t *OUTLINED_FUNCTION_21@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

__CFString *errorDescription(void *a1, unint64_t a2)
{
  v3 = a1;
  if (![v3 isEqualToString:@"MFAACertificateManagerErrorDomain"] && !objc_msgSend(v3, "isEqualToString:", @"MFAATokenManagerErrorDomain"))
  {
    if (![v3 isEqualToString:@"MFAAPairingManagerErrorDomain"])
    {
      v5 = @"An unknown error has occurred.";
      goto LABEL_11;
    }

    if (a2 > 0xFFFFFFFFFFFFFFFBLL)
    {
      v4 = &off_279831CA8[a2 + 4];
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_11;
  }

  if (a2 <= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_9;
  }

  v4 = &off_279831C78[a2 + 6];
LABEL_5:
  v5 = *v4;
LABEL_11:

  return v5;
}

uint64_t MFAAVerifyPublicCertificate(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    MFAAVerifyPublicCertificate_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_18:
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      MFAAVerifyPublicCertificate_cold_3(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    a1 = 0;
    v3 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = +[MFAACertificateManager sharedManager];
  v3 = [v2 copyParsedCertificateChainInfo:a1];

  if (v3)
  {
    v4 = +[MFAACertificateManager sharedManager];
    v5 = [v4 copyEvaluatedCertificateChainInfo:v3];

    if (v5)
    {
      v6 = v5;

      v7 = [MFAACertificateManager isMFi2_3CertInfo:v6];
      v3 = v6;
    }

    else
    {
      v7 = 0;
    }

    a1 = [v3 objectForKey:@"LeafCertData"];

    if (v7)
    {
      v17 = 1;
      goto LABEL_14;
    }

    v16 = a1;
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      MFAAVerifyPublicCertificate_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v3 = 0;
    v16 = 0;
  }

  MFAAPrintCertSerialNumber(a1);
  v17 = 0;
  a1 = v16;
LABEL_14:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    MFAAVerifyPublicCertificate_cold_4();
  }

  return v17;
}

uint64_t MFAAVerifyCertificateSerialNumber(uint64_t a1)
{
  if (a1)
  {
    v2 = +[MFAACertificateManager sharedManager];
    v3 = [v2 copyParsedCertificateChainInfo:a1];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 verifyCertificateChainInfoSerialNumber:v3];

      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        MFAAVerifyCertificateSerialNumber_cold_1();
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    MFAAVerifyCertificateSerialNumber_cold_2();
  }

  MFAAPrintCertSerialNumber(a1);
  return 0;
}

uint64_t MFAAVerifyCertificateSerialNumberBySerialNumber(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = +[MFAACertificateManager sharedManager];
    v5 = [v4 verifyCertificateSerialNumberBySerialNumber:a1 authVer:a2];

    return v5;
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      MFAAVerifyCertificateSerialNumberBySerialNumber_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }
}

uint64_t MFAAVerifyNonceSignature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[MFAACertificateManager sharedManager];
  v7 = v6;
  if (!a1)
  {
    MFAAVerifyNonceSignature_cold_4(&v12);
LABEL_11:
    v9 = v12;
    goto LABEL_12;
  }

  if (!a2)
  {
    MFAAVerifyNonceSignature_cold_3(&v12);
    goto LABEL_11;
  }

  if (!a3)
  {
    MFAAVerifyNonceSignature_cold_2(&v12);
    goto LABEL_11;
  }

  v8 = [v6 copyParsedCertificateChainInfo:a1];
  if (!v8)
  {
    MFAAVerifyNonceSignature_cold_1(&v12);
    goto LABEL_11;
  }

  v9 = v8;
  if (([v7 verifyNonceSignature:v8 nonce:a2 signature:a3] & 1) == 0)
  {
LABEL_12:
    MFAAPrintCertSerialNumber(a1);
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_13:

  return v10;
}

uint64_t MFAAVerifyNonceSignatureMFi4(const __CFData *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  *&v82[11] = *MEMORY[0x277D85DE8];
  v76 = a4;
  v10 = +[MFAACertificateManager sharedManager];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v78 = "MFAAVerifyNonceSignatureMFi4";
    v79 = 1024;
    *v80 = 326;
    *&v80[4] = 2048;
    *&v80[6] = CFDataGetLength(a1);
    *&v80[14] = 2112;
    *&v80[16] = a2;
    *&v80[24] = 2112;
    *&v80[26] = a3;
    v81 = 1024;
    *v82 = a4;
    v82[2] = 2112;
    *&v82[3] = a5;
    _os_log_debug_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s:%d certDataLen %ld, challengeNonce %@, responseNonce %@, prepend 0x%x, pkSignatureData %@", buf, 0x40u);
  }

  if (!a1)
  {
    v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v42)
    {
      MFAAVerifyNonceSignatureMFi4_cold_10(v42, v43, v44, v45, v46, v47, v48, v49);
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    v50 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v50)
    {
      MFAAVerifyNonceSignatureMFi4_cold_9(v50, v51, v52, v53, v54, v55, v56, v57);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v58 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v58)
    {
      MFAAVerifyNonceSignatureMFi4_cold_8(v58, v59, v60, v61, v62, v63, v64, v65);
    }

    goto LABEL_35;
  }

  if (!a5)
  {
    v66 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v66)
    {
      MFAAVerifyNonceSignatureMFi4_cold_7(v66, v67, v68, v69, v70, v71, v72, v73);
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    Length = CFDataGetLength(a1);
    *buf = 136316418;
    v78 = "MFAAVerifyNonceSignatureMFi4";
    v79 = 2048;
    *v80 = Length;
    *&v80[8] = 2112;
    *&v80[10] = a2;
    *&v80[18] = 2112;
    *&v80[20] = a3;
    *&v80[28] = 1024;
    *&v80[30] = a4;
    v81 = 2112;
    *v82 = a5;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: certDataLen %ld, challengeNonce %@, responseNonce %@, prepend 0x%02x, pkSignatureData %@", buf, 0x3Au);
  }

  v12 = [v10 copyParsedCertificateChainInfo:a1];
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  MFAAVerifyNonceSignatureMFi4_cold_1();
  if (!v12)
  {
LABEL_18:
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      MFAAVerifyNonceSignatureMFi4_cold_6(v18, v19, v20, v21, v22, v23, v24, v25);
    }

LABEL_35:
    v12 = 0;
LABEL_36:
    v13 = 0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_37;
  }

LABEL_11:
  v13 = [MEMORY[0x277CBEB28] dataWithBytes:&v76 length:1];
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  MFAAVerifyNonceSignatureMFi4_cold_2();
  if (!v13)
  {
LABEL_21:
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v26)
    {
      MFAAVerifyNonceSignatureMFi4_cold_5(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    goto LABEL_36;
  }

LABEL_13:
  v14 = a2;
  v15 = a3;
  [v13 appendData:v14];
  [v13 appendData:v15];
  v16 = [v13 SHA256];
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_24:
    v34 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v34)
    {
      MFAAVerifyNonceSignatureMFi4_cold_4(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    v16 = 0;
    goto LABEL_37;
  }

  MFAAVerifyNonceSignatureMFi4_cold_3();
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (([v10 verifyNonceSignature:v12 nonce:v16 signature:a5] & 1) == 0)
  {
LABEL_37:
    MFAAPrintCertSerialNumber(a1);
    v17 = 0;
    goto LABEL_38;
  }

  v17 = 1;
LABEL_38:

  v74 = *MEMORY[0x277D85DE8];
  return v17;
}

CFDataRef MFAACreateRandomNonce(const __CFData *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      MFAACreateCertificateSerialNumber_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_9;
  }

  v1 = MFAACreateSecurityCertificateReference(a1);
  if (!v1)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_20;
  }

  v2 = v1;
  v3 = SecCertificateGetiAuthVersion();
  if (v3 == 2)
  {
    v15 = 20;
  }

  else
  {
    v4 = v3;
    if (v3 != 3)
    {
      v5 = SecCertificateCopyComponentType();
      if (v5)
      {
        CFRelease(v5);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v29 = v4;
          _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SecCertificateGetiAuthVersion invalid auth version: %{coreacc:SeciAuthVersion}d, and no SecCertificateCopyComponentType", buf, 8u);
        }

        v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v3)
        {
          *buf = 0;
          _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using AUTH_V300_LENGTH_KEY_256 for default length", buf, 2u);
        }
      }
    }

    v15 = 32;
  }

  MEMORY[0x28223BE20](v3);
  v17 = &buf[-v16];
  memset(&buf[-v16], 170, v15);
  arc4random_buf(v17, v15);
  v14 = CFDataCreate(*MEMORY[0x277CBECE8], v17, v15);
  if (!v14)
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      MFAACreateRandomNonce_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  CFRelease(v2);
LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __findAuthCP()
{
  v11 = *MEMORY[0x277D85DE8];
  *existing = 0;
  v0 = IOServiceMatching("AppleAuthCP");
  if (!v0)
  {
    __findAuthCP_cold_3(buf);
LABEL_22:
    v1 = *buf;
    goto LABEL_18;
  }

  if (IOServiceGetMatchingServices(*MEMORY[0x277CD2898], v0, &existing[1]))
  {
    __findAuthCP_cold_1(buf);
    goto LABEL_22;
  }

  if (!existing[1])
  {
    __findAuthCP_cold_2(buf);
    goto LABEL_22;
  }

  v1 = IOIteratorNext(existing[1]);
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = MEMORY[0x277D86220];
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"flags", v2, 0);
    if (!CFProperty)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25627E000, v3, OS_LOG_TYPE_DEFAULT, "numberref is NULL\n", buf, 2u);
      }

      goto LABEL_14;
    }

    v5 = CFProperty;
    if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, existing))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v10 = existing[0];
        _os_log_impl(&dword_25627E000, v3, OS_LOG_TYPE_DEFAULT, "tmpAuthFlags=%d\n", buf, 8u);
      }

      if (BYTE2(existing[0]) << 16 == 0x40000)
      {
        break;
      }
    }

    CFRelease(v5);
LABEL_14:
    IOObjectRelease(v1);
    v1 = IOIteratorNext(existing[1]);
    if (!v1)
    {
      goto LABEL_17;
    }
  }

  CFRelease(v5);
LABEL_17:
  IOObjectRelease(existing[1]);
LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void OUTLINED_FUNCTION_6_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

id convertNSDataToNSString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:v4, *(v5 + v7++)];
      }

      while (v7 < [v3 length]);
    }

    v8 = [MEMORY[0x277CCACA8] stringWithString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id trimBidirectionalUnicodeCharacters(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

id removeBidirectionalUnicodeCharacters(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_286852CC0];

  return v5;
}

id convertNSStringToNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCA900] hexadecimalCharacterSet];
    v3 = [v2 invertedSet];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 componentsJoinedByString:&stru_286852CC0];

    v6 = [v5 UTF8String];
    v7 = strlen(v6) >> 1;
    v8 = malloc_type_malloc(v7, 0x5E84AA4CuLL);
    if (v6 && [v5 length] >= 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v23 = -86;
        v22 = -86;
        v12 = &v23;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = v6[2 * v10 + v11];
          v16 = v15 - 48;
          v17 = v15 - 65;
          if ((v15 - 97) >= 6)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - 87;
          }

          v19 = v15 - 55;
          if (v17 > 5)
          {
            v19 = v18;
          }

          if (v16 < 0xA)
          {
            v19 = v16;
          }

          *v12 = v19;
          v12 = &v22;
          v11 = 1;
          v13 = 0;
        }

        while ((v14 & 1) != 0);
        v8[v9] = v22 | (16 * v23);
        v9 = (v10 + 1);
        v20 = [v5 length];
        v10 = v9;
      }

      while (v9 < v20 >> 1);
    }

    v1 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v7];
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v1;
}

uint64_t classImplementsMethodsInProtocol(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v9 = a2;
  v10 = [MEMORY[0x277CBEB58] set];
  outCount = 0;
  v11 = protocol_copyMethodDescriptionList(v9, a3, a4, &outCount);
  v12 = v11;
  if (outCount)
  {
    v13 = 0;
    p_name = &v11->name;
    do
    {
      if (([a1 instancesRespondToSelector:*p_name] & 1) == 0)
      {
        v15 = NSStringFromSelector(*p_name);
        [v10 addObject:v15];
      }

      ++v13;
      p_name += 2;
    }

    while (v13 < outCount);
  }

  free(v12);
  if (outCount && [v10 count])
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (a5)
  {
LABEL_11:
    *a5 = [MEMORY[0x277CBEB98] setWithSet:v10];
  }

LABEL_12:

  return v16;
}

uint64_t isNSObjectNull(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = MEMORY[0x277CBEB68];
  v2 = a1;
  v3 = [v1 null];
  v4 = [v2 isEqual:v3];

  return v4;
}

id NSObjectIfNotNull(void *a1)
{
  v1 = a1;
  if (isNSObjectNull(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t isNSObjectEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id castNSObjectToType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id readJSONFile(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a1];
    if (v1)
    {
      v5 = 0;
      v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v1 options:0 error:&v5];
      v3 = v2;
      if (!v5)
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t writeJSONFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    v3 = MEMORY[0x277CBEC10];
  }

  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
  {
    v9 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v9];
    v6 = v5;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 writeToFile:v4 atomically:1];
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}