uint64_t sub_1000593E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (!a2)
    {
      return 0;
    }

    if ((a2 & 7) == 0)
    {
      v2 = *(a2 + 24);
      if (v2)
      {
        if ((v2 & 7) == 0)
        {
          return *(v2 + 28);
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005941C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if (a3 >= 0x8000)
  {
    __break(0x5518u);
    goto LABEL_10;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0 || (v3 = *(a2 + 24)) == 0 || (v3 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  *(v3 + 28) = a3;
  return result;
}

uint64_t sub_100059454(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a2 != 1)
    {
      if (a2 == 8 || a2 == 4)
      {
        sub_100058E18(result, a4);
      }

      return 0;
    }

    if ((a3 - 5) > 3)
    {
      return 0;
    }

    v4 = -1431655766;
    result = sub_1000C4254();
    if (result && (result & 7) == 0)
    {
      sub_1000C7FA0(result, dword_100129770, &v4);
      return 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_1000594D4(unsigned __int16 *a1, uint64_t a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    goto LABEL_220;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  if ((a3 + 32) >= 0x40)
  {
    goto LABEL_221;
  }

  v8 = 1 << a3;
  if (a3 < 0)
  {
    v8 = 0;
  }

  v77 = v8;
  v9 = sub_1000C4254();
  if (!v9)
  {
    goto LABEL_220;
  }

  if ((v9 & 7) != 0)
  {
    goto LABEL_220;
  }

  v74 = sub_1000932FC(v9, a2);
  v10 = sub_1000C4254();
  if (!v10)
  {
    goto LABEL_220;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_220;
  }

  v76 = sub_100092C08(v10, a2);
  v11 = sub_1000C4254();
  if (!v11)
  {
    goto LABEL_220;
  }

  if ((v11 & 7) != 0)
  {
    goto LABEL_220;
  }

  v75 = dword_10012CE80;
  v12 = sub_1000C4254();
  if (!v12)
  {
    goto LABEL_220;
  }

  if ((v12 & 7) != 0)
  {
    goto LABEL_220;
  }

  v13 = sub_1000949E0(v12, a2, 0);
  v14 = sub_1000C4254();
  if (!v14)
  {
    goto LABEL_220;
  }

  if ((v14 & 7) != 0)
  {
    goto LABEL_220;
  }

  v15 = sub_100092790(v14, v13, 0);
  if ((v15 & 7) != 0)
  {
    goto LABEL_220;
  }

  v16 = v15;
  v17 = a2;
  v19 = ((1 << a4) & 0x1F00003000078004) != 0 && a4 < 0x40;
  v21 = ((1 << a4) & 0xC001800) != 0 && (a4 & 0xFFC0) == 64;
  if (sub_10008C0A4(v13))
  {
    v22 = 6;
  }

  else
  {
    v22 = 1;
  }

  if (!a3)
  {
    if (a4 <= 0x38 && ((1 << a4) & 0x100000000080002) != 0)
    {
      sub_100058E18(a1, a2);
      return 0;
    }

    if ((a4 & 0xFFFFFFFD) == 0x39)
    {
      return 0;
    }
  }

  if (!v16)
  {
    goto LABEL_54;
  }

  v23 = sub_10008C0A4(v13);
  if (!a3 && v23 && (v19 || v21))
  {
    return 0;
  }

  v24 = sub_100081574(v16);
  if ((a3 & 0xFFFFFFFE) != 2 || v24 != 2)
  {
LABEL_54:
    if ((v76 & v75 & v77) == 0)
    {
      return v22;
    }

    if ((v77 & 0x20) == 0)
    {
      if ((a2 & 7) != 0)
      {
        goto LABEL_220;
      }

      v27 = *(a2 + 24);
      if (!v27 || (v27 & 7) != 0)
      {
        goto LABEL_220;
      }

      if (*(v27 + 32) == 2)
      {
        v28 = *v27;
        if ((v28 + 8) > 0xF)
        {
LABEL_221:
          __break(0x550Au);
          goto LABEL_222;
        }

        if ((v28 - 4) <= 2 && (v29 = sub_100058A8C(a1, a2, v74)) != 0 || (v29 = sub_100058A8C(a1, a2, 0)) != 0)
        {
          v30 = v29;
          v31 = v29;
LABEL_72:
          if (a3 <= 0xE && ((1 << a3) & 0x5244) != 0)
          {
            v33 = 1;
            v34 = (a4 & 0x7F) < 0x40;
            if ((a4 & 0x7F) >= 0x40)
            {
              v35 = 0;
            }

            else
            {
              v35 = 1 << a4;
            }

            a4 &= 0x7Fu;
          }

          else
          {
            v34 = a4 < 0x40;
            if (a4 >= 0x40)
            {
              v35 = 0;
            }

            else
            {
              v35 = 1 << a4;
            }

            if (a4 < 0x80)
            {
              v33 = 1;
            }

            else
            {
              sub_1000DDEEC(0, 4, "%s:%d Cmd limited to 128 bits currently\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapAuthentic/IapAuthentic.cpp", 2816);
              v34 = 0;
              v33 = 0;
            }
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          switch(a3)
          {
            case 0:
              if (v34)
              {
                if ((v31 & 7) == 0)
                {
                  v39 = *v31;
                  if (*v31)
                  {
                    if ((v39 & 7) == 0 && (v30 & 7) == 0)
                    {
                      v40 = *v30;
                      if (*v30)
                      {
                        if ((v40 & 7) == 0)
                        {
                          v37 = *v39;
                          v38 = *v40;
LABEL_115:
                          v36 = -1;
                          break;
                        }
                      }
                    }
                  }
                }

                goto LABEL_220;
              }

              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v69 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v69 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v70 = *v30;
              if (!*v30 || (v70 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = v69[7];
              v38 = v70[7];
              if (v33)
              {
                v35 = 1 << a4;
              }

              else
              {
                v35 = 0;
              }

              v36 = 0x7FFFFFFFFFF7;
              break;
            case 1:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v57 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v57 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v58 = *v30;
              if (!*v30 || (v58 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v57 + 36);
              v38 = *(v58 + 36);
              v36 = 0x1FFFLL;
              break;
            case 2:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v55 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v55 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v56 = *v30;
              if (!*v30 || (v56 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v55 + 16);
              v38 = *(v56 + 16);
              v36 = 67108859;
              break;
            case 3:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v53 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v53 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v54 = *v30;
              if (!*v30 || (v54 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = v53[1];
              v38 = v54[1];
              v36 = 0x7FFFFFFFFLL;
              break;
            case 4:
              if (v34)
              {
                if ((v31 & 7) == 0)
                {
                  v45 = *v31;
                  if (*v31)
                  {
                    if ((v45 & 7) == 0 && (v30 & 7) == 0)
                    {
                      v46 = *v30;
                      if (*v30)
                      {
                        if ((v46 & 7) == 0)
                        {
                          v37 = v45[2];
                          v38 = v46[2];
                          goto LABEL_115;
                        }
                      }
                    }
                  }
                }

LABEL_220:
                __break(0x5516u);
                goto LABEL_221;
              }

              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v67 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v67 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v68 = *v30;
              if (!*v30 || (v68 & 7) != 0)
              {
                goto LABEL_220;
              }

              if (a4 - 64 > 0x3F)
              {
LABEL_222:
                __break(0x5514u);
                JUMPOUT(0x100059D3CLL);
              }

              v37 = *(v67 + 12);
              v38 = *(v68 + 12);
              v35 = 1 << (a4 - 64);
              v36 = 65471;
              break;
            case 5:
              break;
            case 6:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v49 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v49 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v50 = *v30;
              if (!*v30 || (v50 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v49 + 78);
              v38 = *(v50 + 78);
              v36 = 31;
              break;
            case 7:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v59 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v59 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v60 = *v30;
              if (!*v30 || (v60 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = v59[3];
              v38 = v60[3];
              v36 = 0x3FFFFFFFFFFFFLL;
              break;
            case 8:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v61 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v61 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v62 = *v30;
              if (!*v30 || (v62 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v61 + 79);
              v38 = *(v62 + 79);
              v36 = 255;
              break;
            case 9:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v65 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v65 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v66 = *v30;
              if (!*v30 || (v66 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v65 + 10);
              v38 = *(v66 + 10);
              v36 = 0x1FFFFFFLL;
              break;
            case 10:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v63 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v63 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v64 = *v30;
              if (!*v30 || (v64 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v63 + 80);
              v38 = *(v64 + 80);
              v36 = 63;
              break;
            case 11:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v43 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v43 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v44 = *v30;
              if (!*v30 || (v44 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = v43[4];
              v38 = v44[4];
              v36 = 0x3FFFFFFFFFFFFFFFLL;
              break;
            case 12:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v51 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v51 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v52 = *v30;
              if (!*v30 || (v52 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v51 + 11);
              v38 = *(v52 + 11);
              v36 = 0x7FFFFLL;
              break;
            case 13:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v47 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v47 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v48 = *v30;
              if (!*v30 || (v48 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v47 + 17);
              v38 = *(v48 + 17);
              v36 = 0xFFFFLL;
              break;
            case 14:
              if ((v31 & 7) != 0)
              {
                goto LABEL_220;
              }

              v41 = *v31;
              if (!*v31)
              {
                goto LABEL_220;
              }

              if ((v41 & 7) != 0)
              {
                goto LABEL_220;
              }

              if ((v30 & 7) != 0)
              {
                goto LABEL_220;
              }

              v42 = *v30;
              if (!*v30 || (v42 & 7) != 0)
              {
                goto LABEL_220;
              }

              v37 = *(v41 + 37);
              v38 = *(v42 + 37);
              v36 = 1023;
              break;
            default:
              v37 = 0;
              v38 = 0;
              break;
          }

          if ((v35 & v36) == 0)
          {
            return 2;
          }

          if ((v35 & v37) != 0)
          {
            return 0;
          }

          if ((v35 & v38) == 0)
          {
            return 4;
          }

          v72 = *(v17 + 24);
          if (v72 && (v72 & 7) == 0)
          {
            v73 = *v72;
            if ((v73 + 8) < 0x10)
            {
              if ((v73 - 4) >= 3)
              {
                return 3;
              }

              else
              {
                return 0;
              }
            }

            goto LABEL_221;
          }

          goto LABEL_220;
        }
      }

      else
      {
        v31 = *(v27 + 8);
        v32 = sub_100058A8C(a1, a2, v74);
        if (v32)
        {
          v30 = v32;
        }

        else
        {
          v30 = v31;
        }

        if (v31 && v30)
        {
          goto LABEL_72;
        }
      }

      __break(0x5518u);
      goto LABEL_220;
    }

    return 0;
  }

  if (a3 == 2 && a4 <= 0x1F && ((1 << a4) & 0x7FF9803) != 0)
  {
    return 0;
  }

  if (((1 << a4) & 0xCFDFF01) != 0 && a4 <= 0x3F && a3 == 3)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void sub_100059D78(uint64_t a1, uint64_t a2, size_t __nbytes, void *__buf)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  if (!a2)
  {
    sub_1000E1D34();
  }

  arc4random_buf(__buf, __nbytes);
  if ((a2 & 7) != 0 || (v7 = *(a2 + 24)) == 0 || (v7 & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
  }

  else
  {
    *(v7 + 36) = 0u;
    v8 = (v7 + 36);
    *(v8 + 239) = 0u;
    v8[13] = 0u;
    v8[14] = 0u;
    v8[11] = 0u;
    v8[12] = 0u;
    v8[9] = 0u;
    v8[10] = 0u;
    v8[7] = 0u;
    v8[8] = 0u;
    v8[5] = 0u;
    v8[6] = 0u;
    v8[3] = 0u;
    v8[4] = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    memcpy(v8, __buf, __nbytes);
  }
}

uint64_t sub_100059E14(uint64_t result, uint64_t a2, int a3, unint64_t a4, unsigned int a5)
{
  if (!result)
  {
    goto LABEL_22;
  }

  result = sub_100058A8C(result, a2, a3);
  if (!a2)
  {
    sub_1000E1D34();
  }

  if (!result)
  {
    return 19;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  v8 = *(result + 16);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[6] = v9;
  v12[7] = v9;
  v12[4] = v9;
  v12[5] = v9;
  v12[2] = v9;
  v12[3] = v9;
  v12[0] = v9;
  v12[1] = v9;
  result = sub_10005781C(v12, v8, 0x2Au);
  if (result > 0x1F)
  {
LABEL_23:
    __break(0x550Au);
    return result;
  }

  if (result)
  {
    return 94;
  }

  if ((a2 & 7) != 0 || (v10 = *(a2 + 24)) == 0 || (v10 & 7) != 0 || (result = sub_1000577E4(v12), (v11 = *(a2 + 24)) == 0) || (v11 & 7) != 0)
  {
LABEL_22:
    __break(0x5516u);
    goto LABEL_23;
  }

  if (result >> 3 != *(v11 + 34))
  {
    sub_1000E1D34();
  }

  result = sub_1000574B0(v12, (v10 + 36), result >> 3, a4, a5);
  if (result > 0x1F)
  {
    goto LABEL_23;
  }

  if (result)
  {
    return 94;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100059F24(uint64_t result)
{
  if (!result || (result & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 2048) = 0;
    *(result + 2305) = 0;
    *(result + 2308) = 0x7FFFFFFF00000000;
  }

  return result;
}

uint64_t sub_100059F4C(uint64_t result)
{
  if (!result || (result & 3) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_100059F60(uint64_t result, uint64_t *a2)
{
  if (!a2 || (a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  v3 = *a2;
  if (result)
  {
    result = IapAuthGetAppCertP7Sync();
    if (result)
    {
      if (v3)
      {
        result = 0;
        *a2 = v3;
        return result;
      }

      __break(0x5518u);
      goto LABEL_10;
    }
  }

  return 22;
}

uint64_t sub_100059FD8(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5)
{
  if (!a5 || (a5 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*a5 < a3)
  {
    return 22;
  }

  v7 = *a5;
  if (!result || (result & 7) != 0 || (v6 = *(result + 24)) == 0 || (v6 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  else
  {
    *(v6 + 35) = 1;
    if (IapAuthChallengeRespondSync())
    {
      result = 0;
      *a5 = v7;
    }

    else
    {
      result = 22;
    }

    *(v6 + 35) = 0;
  }

  return result;
}

uint64_t sub_10005A084(uint64_t __dst, const void *a2, size_t __n)
{
  if (!__dst || (v3 = __dst, (__dst & 3) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = __n;
    if (__n > 0x7FF)
    {
      return 22;
    }

    else
    {
      memcpy(__dst, a2, __n);
      __dst = 0;
      *(v3 + 2048) = v4;
    }
  }

  return __dst;
}

uint64_t sub_10005A0DC(uint64_t result, const void *a2, size_t __n)
{
  if (!result || (v3 = result, (result & 3) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = __n;
    v5 = *(result + 2048);
    if ((v5 + __n) > 0x7FF)
    {
      return 22;
    }

    if (!__CFADD__(result, v5))
    {
      result = memcpy((result + v5), a2, __n);
      v6 = *(v3 + 2048) + v4;
      if (v6 < 0x10000)
      {
        result = 0;
        *(v3 + 2048) = v6;
        return result;
      }

      goto LABEL_10;
    }
  }

  __break(0x5513u);
LABEL_10:
  __break(0x5507u);
  return result;
}

uint64_t sub_10005A15C(uint64_t result, void *a2)
{
  if (!result || (result & 3) != 0)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((a2 & 7) != 0)
  {
LABEL_7:
    __break(0x5516u);
    return result;
  }

  *a2 = *(result + 2048);
  return result;
}

uint64_t sub_10005A184(uint64_t a1, _DWORD *a2)
{
  if (!a1 || (a1 & 3) != 0)
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 2308);
  if (v4)
  {
    goto LABEL_7;
  }

  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(a1 + 2048);
  v6 = IapAuthCertSerial();
  if (!v8)
  {
    goto LABEL_10;
  }

  syslog(4, "%s:%d ERROR: Failure bStatus:%d, certSerLen:%02X, certClass:%02X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapAuthentic/IapAuthentic.cpp", 3548, v6, 16, HIBYTE(v8[0]));
  v4 = *(a1 + 2308);
  if (v4)
  {
LABEL_7:
    if (a2 && (a2 & 3) == 0)
    {
      result = 0;
      *a2 = v4;
      return result;
    }

LABEL_10:
    __break(0x5516u);
  }

  return 22;
}

uint64_t sub_10005A2E0(uint64_t result, unsigned int *a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 3) != 0)
  {
    goto LABEL_11;
  }

  v3 = *(result + 2312);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  if (v3 < 0xB)
  {
    goto LABEL_7;
  }

  v5 = 0;
  result = sub_10005A184(result, &v5);
  v3 = *(v2 + 2312);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_12:
    __break(0x550Au);
    return result;
  }

  if (v3 > 0xA)
  {
    return result;
  }

LABEL_7:
  if (!a2 || (a2 & 3) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_10005A364(uint64_t result)
{
  if (!result || (result & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 2048);
    if (IapAuthCertVerifyAuthVersion())
    {
      return 0;
    }

    else
    {
      return 94;
    }
  }

  return result;
}

uint64_t sub_10005A3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a1 & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    a2 = *(a1 + 2048);
    a3 = 2;
  }

  return _IapAuthVerifyCertSerialNumber(a1, a2, a3);
}

uint64_t sub_10005A3BC(uint64_t result, const void *a2, size_t __n)
{
  if (!result || (v3 = result, (result & 3) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v4 = __n;
    if (__n > 0xFE)
    {
      return 22;
    }

    else
    {
      memcpy((result + 2050), a2, __n);
      result = 0;
      *(v3 + 2305) = v4;
    }
  }

  return result;
}

uint64_t sub_10005A414(uint64_t result, uint64_t a2)
{
  if (!result || (result & 3) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    __break(0x5518u);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v2 = *(result + 2048);
  v3 = *(result + 2305);
  if (IapAuthChallengeVerify())
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10005A468(uint64_t result, uint64_t a2)
{
  if (!result || (v3 = result, (result = sub_1000C4254()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
    return result;
  }

  v4 = sub_1000932FC(result, a2);
  if ((v4 & 0xFFFFFF00) == 0x200)
  {
    return sub_100058F00(v3, a2) == 0;
  }

  v5 = v4;
  result = 1;
  if (v5 > 473)
  {
    if ((v5 - 53504) >= 4 && (v5 - 53248) >= 2 && v5 != 474)
    {
      return 0;
    }
  }

  else if (v5 > 69)
  {
    if (v5 != 70 && v5 != 131 && v5 != 134)
    {
      return 0;
    }
  }

  else if (v5 > 0x10 || ((1 << v5) & 0x1800A) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10005A550(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      *result = -1412567295;
      *(result + 1460) = 0;
      *(result + 1464) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0u;
      *(result + 408) = 0;
      *(result + 392) = 0u;
      *(result + 1440) = 0u;
      *(result + 1456) = 0;
      *(result + 1848) = xmmword_1000EEF80;
      *(result + 2008) = 0;
      *(result + 2016) = 0u;
      *(result + 1992) = 0;
      *(result + 1997) = 0;
      *(result + 2048) = 0;
      *(result + 2032) = 0u;
      *(result + 2120) = result + 2120;
      *(result + 2128) = result + 2120;
      *(result + 2136) = 0;
      *(result + 2144) = result + 2144;
      *(result + 2152) = result + 2144;
      *(result + 2160) = 0;
      *(result + 2280) = 0;
      result = sub_1000CB970((result + 416));
      v2 = 0;
      while (v2 <= ~(v1 + 480))
      {
        result = sub_1000CB970((v1 + v2 + 480));
        v2 += 64;
        if (v2 == 960)
        {
          sub_1000CB970((v1 + 2056));
          pthread_cond_init((v1 + 2168), 0);
          result = pthread_mutex_init((v1 + 2216), 0);
          *(v1 + 32) = 0u;
          *(v1 + 48) = 0u;
          *(v1 + 64) = 0u;
          *(v1 + 80) = 0u;
          *(v1 + 96) = 0u;
          *(v1 + 112) = 0u;
          *(v1 + 128) = 0u;
          *(v1 + 144) = 0u;
          *(v1 + 160) = 0u;
          *(v1 + 176) = 0u;
          *(v1 + 192) = 0u;
          *(v1 + 208) = 0u;
          *(v1 + 224) = 0u;
          *(v1 + 240) = 0u;
          *(v1 + 256) = 0u;
          *(v1 + 272) = 0u;
          *(v1 + 288) = 0u;
          *(v1 + 304) = 0u;
          *(v1 + 320) = 0u;
          *(v1 + 336) = 0u;
          *(v1 + 352) = 0u;
          *(v1 + 368) = 0u;
          *(v1 + 384) = 0;
          *(v1 + 1976) = 0;
          *(v1 + 1944) = 0u;
          *(v1 + 1960) = 0u;
          *(v1 + 1912) = 0u;
          *(v1 + 1928) = 0u;
          *(v1 + 1880) = 0u;
          *(v1 + 1896) = 0u;
          *(v1 + 1864) = 0u;
          v3 = *(v1 + 2040);
          v4 = *(v1 + 2032);
          while (v3 != v4)
          {
            if (v3 <= 0xF)
            {
              goto LABEL_15;
            }

            v3 -= 16;
          }

          *(v1 + 2040) = v4;
          v5 = *(v1 + 2016);
          v6 = *(v1 + 2008);
          while (1)
          {
            if (v5 == v6)
            {
              *(v1 + 2016) = v6;
              sub_1000E1334();
              *(v1 + 1984) = v7;
              operator new();
            }

            if (v5 <= 0xF)
            {
              break;
            }

            v5 -= 16;
          }

          break;
        }
      }

LABEL_15:
      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005A730(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10005A550(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005A744(uint64_t result)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  v2 = 0;
  *(result + 410) = 1;
  do
  {
    sub_10005A888(v1, v2++);
  }

  while (v2 != 15);
  if (*(v1 + 392))
  {
    sub_1000E22D8();
  }

  if (*(v1 + 400))
  {
    sub_1000E22D8();
  }

  result = *(v1 + 1448);
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_17;
    }

    (*(*result + 8))(result);
    *(v1 + 1448) = 0;
  }

  pthread_cond_destroy((v1 + 2168));
  pthread_mutex_destroy((v1 + 2216));
  *v1 = 1412567294;
  result = pthread_mutex_destroy((v1 + 2056));
  v3 = 0;
  while (v3 <= ~(v1 + 480))
  {
    result = pthread_mutex_destroy((v1 + v3 + 480));
    v3 += 64;
    if (v3 == 960)
    {
      pthread_mutex_destroy((v1 + 416));
      sub_1000187F0((v1 + 2144));
      sub_1000187F0((v1 + 2120));
      v4 = v1 + 2032;
      sub_10005CE88(&v4);
      v4 = v1 + 2008;
      sub_10005CE88(&v4);
      return v1;
    }
  }

  __break(0x5513u);
LABEL_17:
  __break(0x5516u);
  return result;
}

uint64_t sub_10005A888(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_17:
    __break(0x550Au);
    goto LABEL_18;
  }

  if (a2 >= 0xF)
  {
LABEL_18:
    __break(0x5512u);
    goto LABEL_19;
  }

  if (__CFADD__(v2 + 32, 24 * a2))
  {
LABEL_19:
    __break(0x5513u);
    return result;
  }

  v4 = v2 + 32 + 24 * a2;
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
  *v4 = 0;
  sub_10005BADC(v2, a2);
  pthread_mutex_unlock((v2 + 416));
  result = sub_10005BB24(v2, a2);
  if (v5)
  {
    if (a2 == 7 || a2 == 9)
    {
      if ((v5 & 7) == 0)
      {
        (*(*v5 + 56))(v5, 0);
        goto LABEL_13;
      }
    }

    else if ((v5 & 7) == 0)
    {
      (*(*v5 + 8))(v5);
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_13:

  return sub_10005BB6C(v2, a2);
}

uint64_t sub_10005A9CC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10005A744(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005A9E0(uint64_t result)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
LABEL_14:
      __break(0x5516u);
      return result;
    }

    if (*result == -1412567295)
    {
      v1 = *(result + 410);
      if (v1 >= 2)
      {
        goto LABEL_13;
      }

      if (v1)
      {
        return 1;
      }

      v2 = *(result + 408);
      if (v2 > 1)
      {
LABEL_13:
        __break(0x550Au);
        goto LABEL_14;
      }

      if (v2)
      {
        return 1;
      }
    }

    v3 = *(result + 410);
    if (v3 <= 1)
    {
      v4 = *(result + 408);
      if (v4 <= 1)
      {
        sub_1000DDEEC(0, 4, "%s:%d Not valid handle=%hhx maxgic=%xh shuttingDown=%d isInList=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapConnectionHandle.cpp", 145, result, *result, v3, v4);
        return 0;
      }
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10005AA98(uint64_t result, char a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 416));
    *(v2 + 408) = a2;

    return pthread_mutex_unlock((v2 + 416));
  }

  return result;
}

uint64_t sub_10005AAEC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 416));
    v2 = *(v1 + 408);
    if (v2 < 2)
    {
      pthread_mutex_unlock((v1 + 416));
      return v2 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005AB40(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 409) = a2;
  }

  return result;
}

uint64_t sub_10005AB58(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 409);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005AB80(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  result = pthread_mutex_lock((result + 416));
  *(v2 + 1440) = a2;
  if (!a2)
  {
    goto LABEL_11;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
    goto LABEL_11;
  }

  if ((v4 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x550Au);
    return result;
  }

  v5 = *(v4 + 52);
  if (v5 != v5)
  {
    goto LABEL_18;
  }

  v6 = *(v2 + 1848);
  if (((v6 + 128) | (v5 + 128)) >= 0x100)
  {
    goto LABEL_18;
  }

  if (v6 != v5)
  {
    *(v2 + 1852) = v6;
    *(v2 + 1848) = v5;
  }

LABEL_11:
  pthread_mutex_unlock((v2 + 416));
  result = *(v2 + 1448);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_17;
  }

  return sub_1000BAA94(result);
}

uint64_t sub_10005AC48(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  v2 = *(result + 1848);
  if (((v2 + 128) | (a2 + 128)) >= 0x100)
  {
LABEL_8:
    __break(0x550Au);
    return result;
  }

  if (v2 != a2)
  {
    *(result + 1852) = v2;
    *(result + 1848) = a2;
  }

  return result;
}

uint64_t sub_10005AC88(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1440);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005ACA0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 416));
    v2 = *(v1 + 410);
    if (v2 < 2)
    {
      pthread_mutex_unlock((v1 + 416));
      return v2 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005ACF4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 411);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005AD1C(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 416));
    *(v1 + 408) = 0;
    *(v1 + 410) = 1;

    return pthread_mutex_unlock((v1 + 416));
  }

  return result;
}

uint64_t sub_10005AD74(uint64_t result, char **a2)
{
  if (!result)
  {
    goto LABEL_23;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  result = pthread_mutex_lock((result + 416));
  *(v2 + 8) = a2;
  if (!a2)
  {
    goto LABEL_17;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_23;
  }

  v4 = a2[4];
  if (v4)
  {
    v5 = *(v2 + 1440);
    if (!v5 || v5 == a2)
    {
      if ((v4 & 7) == 0)
      {
        v6 = *(v4 + 13);
        if (v6 != v6)
        {
          goto LABEL_24;
        }

        v7 = *(v2 + 1848);
        if (((v7 + 128) | (v6 + 128)) >= 0x100)
        {
          goto LABEL_24;
        }

        if (v7 != v6)
        {
          *(v2 + 1852) = v7;
          *(v2 + 1848) = v6;
        }

        goto LABEL_13;
      }

LABEL_23:
      __break(0x5516u);
      goto LABEL_24;
    }
  }

LABEL_13:
  v8 = *(v2 + 1456);
  if (v8 > 1)
  {
LABEL_24:
    __break(0x550Au);
    return result;
  }

  if ((v8 & 1) == 0)
  {
    v9 = (*(*a2 + 34))(a2);
    *(v2 + 1456) = v9;
    if (v9)
    {
      v10 = **a2;
    }
  }

LABEL_17:
  pthread_mutex_unlock((v2 + 416));
  result = *(v2 + 1448);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_23;
  }

  return sub_1000BAA94(result);
}

uint64_t sub_10005AEDC(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (result = pthread_mutex_lock((result + 416)), v2 = *(v1 + 16), (v2 & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *(v1 + 8);
    if (v2 == v3)
    {
      *(v1 + 16) = 0;
    }

    *(v1 + 8) = 0;
    pthread_mutex_unlock((v1 + 416));
    return v3;
  }

  return result;
}

uint64_t sub_10005AF40(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      goto LABEL_18;
    }

    if (((*(*a2 + 272))(a2) & 1) == 0)
    {
      sub_1000E1D34();
    }
  }

  result = pthread_mutex_lock((v2 + 416));
  *(v2 + 16) = a2;
  if (a2)
  {
    v4 = *(v2 + 1456);
    if (v4 > 1)
    {
LABEL_19:
      __break(0x550Au);
      return result;
    }

    if ((v4 & 1) == 0)
    {
      if ((a2 & 7) == 0)
      {
        *(v2 + 1456) = (*(*a2 + 272))(a2);
        goto LABEL_11;
      }

LABEL_18:
      __break(0x5516u);
      goto LABEL_19;
    }
  }

LABEL_11:
  pthread_mutex_unlock((v2 + 416));
  result = *(v2 + 1448);
  if (!result)
  {
    return result;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  return sub_1000BAA94(result);
}

uint64_t sub_10005B04C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 16);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005B064(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      result = pthread_mutex_lock((result + 416));
      v2 = *(v1 + 16);
      if (!v2)
      {
LABEL_6:
        *(v1 + 16) = 0;
        pthread_mutex_unlock((v1 + 416));
        return v2;
      }

      if ((v2 & 7) == 0)
      {
        (*(*v2 + 400))(*(v1 + 16), 0);
        goto LABEL_6;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005B0F0(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 2216));
    if (*(v1 + 2136))
    {
      pthread_cond_wait((v1 + 2168), (v1 + 2216));
    }

    return pthread_mutex_unlock((v1 + 2216));
  }

  return result;
}

uint64_t sub_10005B150(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 2216));
    sub_1000219A8(v1 + 2120);
    return pthread_mutex_unlock((v1 + 2216));
  }

  return result;
}

uint64_t sub_10005B1A8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || !a2 || (a2 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
  }

  else
  {
    if ((*(*a2 + 384))(a2) != result)
    {
      sub_1000E1D34();
    }

    result = pthread_mutex_lock((v2 + 2216));
    v4 = (v2 + 2120);
    for (i = *(v2 + 2128); i != v4; i = i[1])
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_19;
      }

      if (i[2] == a2)
      {
        goto LABEL_13;
      }
    }

    i = (v2 + 2120);
LABEL_13:
    if (v4 != i)
    {
      sub_100021528(v2 + 2120, i);
    }

    if (!*(v2 + 2136))
    {
      pthread_cond_signal((v2 + 2168));
    }

    pthread_mutex_unlock((v2 + 2216));
    return v4 != i;
  }

  return result;
}

uint64_t sub_10005B2A0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_10005B2B8(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 24);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005B2D0(uint64_t result, unsigned int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  if (a2 >= 0xF)
  {
LABEL_11:
    __break(0x5512u);
    goto LABEL_12;
  }

  if (__CFADD__(v3 + 32, 24 * a2))
  {
LABEL_12:
    __break(0x5513u);
    return result;
  }

  *(v3 + 32 + 24 * a2) = a3;

  return pthread_mutex_unlock((v3 + 416));
}

uint64_t sub_10005B370(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_11:
    __break(0x550Au);
    goto LABEL_12;
  }

  if (a2 >= 0xF)
  {
LABEL_12:
    __break(0x5512u);
    goto LABEL_13;
  }

  if (__CFADD__(v3 + 32, 24 * a2))
  {
LABEL_13:
    __break(0x5513u);
    return result;
  }

  v6 = v3 + 32 + 24 * a2;
  v8 = *(v6 + 8);
  v7 = (v6 + 8);
  if (v8)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
    *v7 = a3;
  }

  pthread_mutex_unlock((v3 + 416));
  return v9;
}

uint64_t sub_10005B41C(uint64_t result, unsigned int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  if (a2 >= 0xF)
  {
LABEL_11:
    __break(0x5512u);
    goto LABEL_12;
  }

  if (__CFADD__(v3 + 32, 24 * a2))
  {
LABEL_12:
    __break(0x5513u);
    return result;
  }

  *(v3 + 32 + 24 * a2 + 16) = a3;

  return pthread_mutex_unlock((v3 + 416));
}

uint64_t sub_10005B4BC(uint64_t result, unsigned int a2, int a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_10;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_10:
    __break(0x550Au);
    goto LABEL_11;
  }

  if (a2 >= 0xF)
  {
LABEL_11:
    __break(0x5512u);
    goto LABEL_12;
  }

  if (__CFADD__(v3 + 32, 24 * a2))
  {
LABEL_12:
    __break(0x5513u);
    return result;
  }

  *(v3 + 32 + 24 * a2) |= a3;

  return pthread_mutex_unlock((v3 + 416));
}

uint64_t sub_10005B564(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0x10)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(v3 + 32, 24 * a2))
  {
    v6 = v3 + 32 + 24 * a2;
    v7 = *v6;
    *(a3 + 16) = *(v6 + 16);
    *a3 = v7;
    pthread_mutex_unlock((v3 + 416));
    return a3;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B608(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0xF)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(v2 + 32, 24 * a2))
  {
    v4 = *(v2 + 32 + 24 * a2);
    pthread_mutex_unlock((v2 + 416));
    return v4;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B694(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0xF)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(v2 + 32, 24 * a2))
  {
    v4 = *(v2 + 32 + 24 * a2 + 8);
    pthread_mutex_unlock((v2 + 416));
    return v4;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B720(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = pthread_mutex_lock((result + 416));
  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0xF)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(v2 + 32, 24 * a2))
  {
    v4 = *(v2 + 32 + 24 * a2 + 16);
    pthread_mutex_unlock((v2 + 416));
    return v4;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B7AC(uint64_t result, unsigned int a2, int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0xF)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(result + 1864, 8 * a2))
  {
    *(result + 1864 + 8 * a2) = a3;
    return result;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B7F8(uint64_t result, unsigned int a2, char a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a2 + 32 > 0x3F)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0xF)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(result + 1864, 8 * a2))
  {
    *(result + 1864 + 8 * a2 + 4) = a3;
    return result;
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B844(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0xF)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(result + 1864, 8 * a2))
  {
    return *(result + 1864 + 8 * a2);
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B890(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
LABEL_9:
    __break(0x5516u);
    goto LABEL_10;
  }

  if (a2 >= 0xF)
  {
LABEL_10:
    __break(0x5512u);
    goto LABEL_11;
  }

  if (!__CFADD__(result + 1864, 8 * a2))
  {
    v2 = *(result + 1864 + 8 * a2 + 4);
    if (v2 <= 1)
    {
      return v2 & 1;
    }

    goto LABEL_8;
  }

LABEL_11:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005B8E8(uint64_t result, unsigned int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_33:
    __break(0x5516u);
    goto LABEL_34;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_34:
    __break(0x550Au);
    goto LABEL_35;
  }

  if (a2 > 0xE || (result = sub_10005B890(result, a2), !result))
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v4 = sub_100067278();
  result = sub_10005B844(v2, a2);
  v5 = v4 - result;
  if (v4 < result)
  {
LABEL_35:
    __break(0x5515u);
    goto LABEL_36;
  }

  if (v5 <= 0x1F3)
  {
    v6 = 500 - v5;
    if (!a2)
    {
LABEL_20:
      v11 = *(v2 + 8);
      if (!v11)
      {
        return v6;
      }

      if ((v11 & 7) == 0)
      {
        result = sub_1000C4254();
        if (result)
        {
          if ((result & 7) == 0)
          {
            v12 = sub_100058EBC(result, v11);
            if ((v12 - 3) < 3)
            {
              return 5000;
            }

            if (v12 != -2)
            {
              if (v12 == 1)
              {
                return 5000;
              }

              return v6;
            }

            v8 = (*(*v11 + 352))(v11) == 0;
            v9 = 5000;
LABEL_29:
            if (v8)
            {
              return v6;
            }

            else
            {
              return v9;
            }
          }
        }
      }

      goto LABEL_33;
    }

LABEL_11:
    if (a2 != 12)
    {
      return v6;
    }

    if (v6 > 9)
    {
      return v6;
    }

    result = sub_10005B694(v2, 0xCu);
    if (!result)
    {
      return v6;
    }

    if ((result & 7) == 0)
    {
      v7 = **result;
      if (!result)
      {
        return v6;
      }

      if ((result & 7) == 0)
      {
        v8 = !sub_1000B2928(result);
        v9 = 10;
        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  if (!__CFADD__(v2 + 1864, 8 * a2))
  {
    v6 = 0;
    v10 = v2 + 1864 + 8 * a2;
    *(v10 + 4) = 0;
    *v10 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005BAC4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1984);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BADC(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_11;
  }

  if ((a2 + 32) >= 0x40)
  {
LABEL_11:
    __break(0x550Au);
    return result;
  }

  if (a2)
  {
    if (a2 != 2)
    {
      return result;
    }

    v2 = -33;
  }

  else
  {
    v2 = -31;
  }

  *(result + 1460) &= v2;
  return result;
}

uint64_t sub_10005BB24(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0x10)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(result + 480, a2 << 6))
  {
    return pthread_mutex_lock((result + 480 + (a2 << 6)));
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005BB6C(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  if (a2 + 32 >= 0x40)
  {
LABEL_8:
    __break(0x550Au);
    goto LABEL_9;
  }

  if (a2 >= 0x10)
  {
LABEL_9:
    __break(0x5512u);
    goto LABEL_10;
  }

  if (!__CFADD__(result + 480, a2 << 6))
  {
    return pthread_mutex_unlock((result + 480 + (a2 << 6)));
  }

LABEL_10:
  __break(0x5513u);
  return result;
}

uint64_t sub_10005BBB4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 392) = a2;
  }

  return result;
}

uint64_t sub_10005BBCC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 392);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BBE4(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 392);
    *(result + 392) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_10005BC04(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 400) = a2;
  }

  return result;
}

uint64_t sub_10005BC1C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 400);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BC34(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 400);
    *(result + 400) = 0;
    return v1;
  }

  return result;
}

uint64_t sub_10005BC54(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1448);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BC6C(uint64_t result, unsigned int a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  result = *(result + 1448);
  if (result)
  {
    if ((result & 7) == 0)
    {
      if (a2 < 0x10)
      {
        return sub_1000BB5AC(result, a2);
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(0x5516u);
LABEL_9:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_10005BCA0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 1456);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005BCC8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if ((a2 + 32) < 0x40)
  {
    return sub_10005FBC8(a2, a3, a4, a5, result);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005BD04(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10005BD18(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a3 < 8)
  {
    *(result + 1460) |= 1 << a3;
    return result;
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005BD4C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a3 < 8)
  {
    *(result + 1460) &= ~(1 << a3);
    return result;
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005BD80(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    for (i = 0; i != 15; ++i)
    {
      result = sub_10005BADC(v1, i);
    }
  }

  return result;
}

uint64_t sub_10005BDCC(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return 1;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BDE4(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1460);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BDFC(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 1848);
  if (result != result)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_10005BE20(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_6;
  }

  result = *(result + 1852);
  if (result != result)
  {
LABEL_6:
    __break(0x550Au);
  }

  return result;
}

uint64_t sub_10005BE44(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1856);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BE5C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1860);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BE74(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 1856) = a2;
  }

  return result;
}

uint64_t sub_10005BE8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v3 = a2;
      if (!a2 || *(result + 1860) == a2)
      {
        goto LABEL_8;
      }

      result = *(result + 8);
      if (result && (result & 7) == 0)
      {
        result = (*(*result + 328))(result, a2);
LABEL_8:
        *(v2 + 1860) = v3;
        return result;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BF14(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return *(result + 1464);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BF2C(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 1464) = a2;
  }

  return result;
}

uint64_t sub_10005BF44(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    result += 1472;
  }

  return result;
}

char *sub_10005BF5C(char *result, const void *a2)
{
  if (result && (result & 7) == 0)
  {
    return memcpy(result + 1472, a2, 0x178uLL);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005BF78(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 2000) = a2;
  }

  return result;
}

uint64_t sub_10005BF90(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 2000);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005BFB8(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 2001) = a2;
  }

  return result;
}

uint64_t sub_10005BFD0(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 2001);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005BFF8(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 2002) = a2;
  }

  return result;
}

uint64_t sub_10005C010(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 2002);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005C038(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 2003) = a2;
  }

  return result;
}

uint64_t sub_10005C050(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 2003);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005C078(uint64_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 2004) = a2;
  }

  return result;
}

uint64_t sub_10005C090(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(result + 2004);
    if (v1 < 2)
    {
      return v1 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10005C0B8(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 2056));
    v4 = *(v2 + 2016) - *(v2 + 2008);
    if (v4)
    {
      v5 = 0;
      v6 = v4 >> 4;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      while (*sub_10005C15C((v2 + 2008), v5) != a2)
      {
        if (v7 == ++v5)
        {
          goto LABEL_9;
        }
      }

      pthread_mutex_unlock((v2 + 2056));
    }

    else
    {
LABEL_9:
      pthread_mutex_unlock((v2 + 2056));
      return 0xFFFFFFFFLL;
    }

    return v5;
  }

  return result;
}

uint64_t *sub_10005C15C(uint64_t *result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 + 0x800000000000000) >> 60)
  {
    goto LABEL_8;
  }

  v2 = *result;
  if (16 * a2 > ~*result)
  {
    goto LABEL_8;
  }

  if (!v2 || (result = (v2 + 16 * a2), (result & 7) != 0))
  {
LABEL_7:
    __break(0x5516u);
LABEL_8:
    __break(0x5513u);
  }

  return result;
}

uint64_t sub_10005C1A8(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 2056));
    v4 = *(v2 + 2040) - *(v2 + 2032);
    if (v4)
    {
      v5 = 0;
      v6 = v4 >> 4;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      while (*sub_10005C15C((v2 + 2032), v5) != a2)
      {
        if (v7 == ++v5)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v5 = 0xFFFFFFFFLL;
    }

    pthread_mutex_unlock((v2 + 2056));
    return v5;
  }

  return result;
}

uint64_t sub_10005C240(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    return result;
  }

  result = pthread_mutex_lock((result + 2056));
  if ((a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  v4 = sub_10005C0B8(v2, *(a2 + 24));
  if (v4 == -1)
  {
LABEL_16:
    v9 = *(a2 + 24);
    *(&v10 + 1) = a2;
    *&v10 = v9 | 0xAAAAAAAA00000000;
    sub_10005C4A4((v2 + 2008), &v10);
    return pthread_mutex_unlock((v2 + 2056));
  }

  v5 = (v2 + 2008);
  v6 = v4;
  if (sub_10005C15C((v2 + 2008), v4)[1] != a2)
  {
    result = sub_10005C384(v2, *(a2 + 24));
    if ((*(v2 + 2008) & 7) != 0)
    {
      goto LABEL_21;
    }

    *&v10 = *(v2 + 2008);
    result = sub_10005CEF0(&v10, v6);
    if ((*v5 & 7) != 0)
    {
      goto LABEL_21;
    }

    if ((v10 - *v5) < 0 != v10 - *v5 <= ~*v5 && v10 < 0xFFFFFFFFFFFFFFF0)
    {
      result = sub_10005CF44(v10 + 16, *(v2 + 2016), v10);
      for (i = *(v2 + 2016); i != v7; i -= 16)
      {
        if (i <= 0xF)
        {
          goto LABEL_19;
        }
      }

      *(v2 + 2016) = v7;
      goto LABEL_16;
    }

LABEL_19:
    __break(0x5513u);
LABEL_20:
    __break(0x5516u);
LABEL_21:
    __break(0x5517u);
    return result;
  }

  return pthread_mutex_unlock((v2 + 2056));
}

uint64_t sub_10005C384(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  pthread_mutex_lock((result + 2056));
  result = sub_10005C1A8(v2, a2);
  if (result == -1)
  {
    return pthread_mutex_unlock((v2 + 2056));
  }

  if ((*(v2 + 2032) & 7) == 0)
  {
    v4 = result;
    v10 = *(v2 + 2032);
    result = sub_10005CEF0(&v10, result);
    v5 = *(v2 + 2040);
    if ((v5 & 7) == 0)
    {
      if (v10 != v5)
      {
        if ((*(v2 + 2032) & 7) == 0)
        {
          v10 = *(v2 + 2032);
          result = sub_10005CEF0(&v10, v4);
          v6 = *(v2 + 2032);
          if ((v6 & 7) == 0)
          {
            v7 = __CFADD__(v6, v10 - v6);
            if (((((v10 - v6) < 0) ^ v7) & 1) == 0 && v10 < 0xFFFFFFFFFFFFFFF0)
            {
              result = sub_10005CF44(v10 + 16, *(v2 + 2040), v10);
              for (i = *(v2 + 2040); i != v8; i -= 16)
              {
                if (i <= 0xF)
                {
                  goto LABEL_20;
                }
              }

              *(v2 + 2040) = v8;
              return pthread_mutex_unlock((v2 + 2056));
            }

LABEL_20:
            __break(0x5513u);
          }
        }

        goto LABEL_21;
      }

      return pthread_mutex_unlock((v2 + 2056));
    }
  }

LABEL_21:
  __break(0x5517u);
LABEL_22:
  __break(0x5516u);
  return result;
}

uint64_t sub_10005C4A4(uint64_t *a1, _OWORD *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v8;
    v15 = v8;
    v9 = (v5 - *a1) >> 4;
    v10 = v9 + 1;
    if (v9 == -1)
    {
LABEL_20:
      __break(0x5500u);
LABEL_21:
      sub_1000E1E08();
    }

    if (v10 >> 60)
    {
      goto LABEL_21;
    }

    v11 = v4 - *a1;
    v12 = v11 >> 3;
    if (v11 >> 3 <= v10)
    {
      v12 = v9 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    sub_10005D150(&v14, v13, v9, a1);
    if (v15 && (v15 & 7) == 0)
    {
      *v15 = *a2;
      if (v15 < 0xFFFFFFFFFFFFFFF0)
      {
        *&v15 = v15 + 16;
        sub_10005D074(a1, &v14);
        v7 = a1[1];
        result = sub_10005D248(&v14);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  result = sub_10005D02C(a1, a2);
  if (v5 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  v7 = v5 + 16;
LABEL_17:
  a1[1] = v7;
  return result;
}

uint64_t sub_10005C5C0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    return result;
  }

  result = pthread_mutex_lock((result + 2056));
  if ((a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = sub_10005C0B8(v2, *(a2 + 24));
  if (v4 != -1)
  {
    v5 = v4;
    result = sub_10005C384(v2, *(a2 + 24));
    if ((*(v2 + 2008) & 7) != 0)
    {
      goto LABEL_19;
    }

    v9 = *(v2 + 2008);
    result = sub_10005CEF0(&v9, v5);
    v6 = *(v2 + 2008);
    if ((v6 & 7) != 0)
    {
      goto LABEL_19;
    }

    if ((v9 - v6) < 0 != v9 - v6 <= ~v6 && v9 < 0xFFFFFFFFFFFFFFF0)
    {
      result = sub_10005CF44(v9 + 16, *(v2 + 2016), v9);
      for (i = *(v2 + 2016); i != v7; i -= 16)
      {
        if (i <= 0xF)
        {
          goto LABEL_17;
        }
      }

      *(v2 + 2016) = v7;
      return pthread_mutex_unlock((v2 + 2056));
    }

LABEL_17:
    __break(0x5513u);
LABEL_18:
    __break(0x5516u);
LABEL_19:
    __break(0x5517u);
    return result;
  }

  return pthread_mutex_unlock((v2 + 2056));
}

uint64_t *sub_10005C6CC(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      pthread_mutex_lock((result + 257));
      v4 = sub_10005C0B8(v2, a2);
      if (v4 == -1)
      {
LABEL_14:
        pthread_mutex_unlock((v2 + 2056));
        return (v4 != -1);
      }

      sub_10005C384(v2, a2);
      result = sub_10005C15C((v2 + 2008), v4);
      v5 = result[1];
      if (v5)
      {
        v6 = (result[1] & 7) == 0;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v7 = atomic_load((v5 + 48));
        if ((v7 & 7) == 0 && v7 != 0)
        {
          v9 = sub_10005C15C((v2 + 2008), v4);
          sub_10005FA28(v7, v9[1]);
          goto LABEL_14;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10005C79C(_BOOL8 result, int a2)
{
  if (!result || (v2 = result, result & 7))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 2056));
    v4 = sub_10005C1A8(v2, a2);
    pthread_mutex_unlock((v2 + 2056));
    return v4 != -1;
  }

  return result;
}

intptr_t sub_10005C7F8(intptr_t result, char a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  pthread_mutex_lock((result + 416));
  result = *(v2 + 392);
  if (result)
  {
    if ((result & 7) == 0)
    {
      sub_10005DA20(result, a2);
      goto LABEL_6;
    }

LABEL_9:
    __break(0x5516u);
    return result;
  }

LABEL_6:

  return pthread_mutex_unlock((v2 + 416));
}

void sub_10005C860(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_27:
    __break(0x5516u);
    return;
  }

  pthread_mutex_lock((a1 + 2056));
  v2 = *(a1 + 2016) - *(a1 + 2008);
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 4;
    if ((v2 >> 4) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v2 >> 4;
    }

    while (1)
    {
      v6 = sub_10005C15C((a1 + 2008), v3);
      sub_10005C4A4((a1 + 2032), v6);
      v7 = sub_10005C15C((a1 + 2008), v3)[1];
      if (!v7 || (v7 & 7) != 0)
      {
        break;
      }

      v9 = atomic_load((v7 + 48));
      if ((v9 & 7) != 0 || v9 == 0)
      {
        break;
      }

      v11 = sub_10005C15C((a1 + 2008), v3);
      sub_10005FA28(v9, v11[1]);
      if (v5 == ++v3)
      {
        pthread_mutex_unlock((a1 + 2056));
        sub_1000DDEEC(0, 4, "CIapConnection::%s:%d wait for all cancel to finish, size=%ld\n", "CancelAllCommands", 1236, v4);
        v12 = 0;
        do
        {
          pthread_mutex_lock((a1 + 2056));
          v13 = *(a1 + 2040);
          v14 = *(a1 + 2032);
          pthread_mutex_unlock((a1 + 2056));
          if (v13 != v14)
          {
            usleep(0x186A0u);
          }

          v15 = v12 + 1;
          if (v13 == v14)
          {
            break;
          }
        }

        while (v12++ < 0xC7);
        sub_1000DDEEC(0, 4, "CIapConnection::%s:%d took %d tries to finish all cancel, size=%ld\n", "CancelAllCommands", 1250, v15, (v13 - v14) >> 4);
        return;
      }
    }

    goto LABEL_27;
  }

  pthread_mutex_unlock((a1 + 2056));
}

uint64_t sub_10005CA0C(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (result && (result & 7) == 0)
  {
    for (i = *(result + 2152); ; i = *(i + 8))
    {
      if (i == result + 2144)
      {
        operator new();
      }

      if (!i || (i & 7) != 0)
      {
        break;
      }

      v6 = *(i + 16);
      if (!v6 || (*(i + 16) & 7) != 0)
      {
        break;
      }

      if (*(v6 + 8) == a3)
      {
        *(v6 + 16) = a4;
        *(v6 + 17) = a5;
        return result;
      }
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005CADC(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
  }

  else
  {
    for (i = *(result + 2152); i != result + 2144; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_16;
      }

      v3 = *(i + 16);
      if (!v3 || (*(i + 16) & 7) != 0)
      {
        goto LABEL_16;
      }

      if (*(v3 + 8) == a2)
      {
        *(v3 + 17) = 0;
        return result;
      }
    }
  }

  return result;
}

void *sub_10005CB38(void *result)
{
  if (result && (result & 7) == 0)
  {
    return sub_1000187F0(result + 268);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005CB50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result && (result & 7) == 0 && a2)
  {
    return sub_10005D2EC(a2, result + 2144);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005CB70(uint64_t result, char a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 416));
    *(v2 + 2280) = a2;

    return pthread_mutex_unlock((v2 + 416));
  }

  return result;
}

uint64_t sub_10005CBC4(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    result = pthread_mutex_lock((result + 416));
    v2 = *(v1 + 2280);
    if (v2 < 2)
    {
      pthread_mutex_unlock((v1 + 416));
      return v2 & 1;
    }
  }

  __break(0x550Au);
  return result;
}

void sub_10005CC18(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_31;
  }

  connect = 0;
  v1 = *(a1 + 8);
  if (!v1)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((v1 & 7) != 0 || (*(v1 + 72) = 1, (v2 = sub_1000C4254()) == 0) || (v2 & 7) != 0)
  {
LABEL_31:
    __break(0x5516u);
    __break(0x550Au);
    return;
  }

  (*(*v2 + 48))(v2, 8, 0, v1, 0);
  v3 = *(v1 + 84);
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (ServiceWithPrimaryPort)
  {
    v5 = ServiceWithPrimaryPort;
LABEL_9:
    if (IOServiceOpen(v5, mach_task_self_, 0, &connect) || IOAccessoryManagerGetUSBConnectType())
    {
      goto LABEL_23;
    }

    syslog(3, "Current USB Connection Type: %d\n", -1);
    syslog(3, "Current USB Connection Active: %d\n", 0);
    syslog(3, "Toggling USB connection for 1250ms...\n");
    v6 = IOAccessoryManagerConfigureUSBMode();
    if (!v6)
    {
      v6 = IOAccessoryManagerConfigurePower();
      if (v6)
      {
        v7 = "Could not disable ACC power: %s\n";
        goto LABEL_22;
      }

      usleep(0x1312D0u);
      v6 = IOAccessoryManagerConfigurePower();
      if (v6)
      {
        v7 = "Could not enable ACC power: %s\n";
        goto LABEL_22;
      }

      syslog(3, "USB mode: %d\n", 4);
      v6 = IOAccessoryManagerConfigureUSBMode();
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v7 = "Could not configure USB mode: %s\n";
LABEL_22:
    v9 = mach_error_string(v6);
    syslog(3, v7, v9);
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  if ((*(*v1 + 208))(v1) != 1)
  {
    goto LABEL_16;
  }

  v5 = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_17:
  v8 = 1;
LABEL_24:
  if (connect)
  {
    IOServiceClose(connect);
  }

  if ((v8 & 1) == 0)
  {
    IOObjectRelease(v5);
  }
}

void sub_10005CE88(uint64_t *a1)
{
  if (a1 && (a1 & 7) == 0 && ((v1 = *a1) != 0 ? (v2 = (*a1 & 7) == 0, *a1) : (v2 = 0), v2))
  {
    v3 = *v1;
    if (*v1)
    {
      for (i = *(v1 + 8); i != v3; i -= 16)
      {
        if (i <= 0xF)
        {
          __break(0x5513u);
          goto LABEL_17;
        }
      }

      *(v1 + 8) = v3;
      if ((*(v1 + 16) - v3) < 0)
      {
        goto LABEL_18;
      }

      operator delete(v3);
    }
  }

  else
  {
LABEL_17:
    __break(0x5516u);
LABEL_18:
    __break(0x550Cu);
  }
}

void *sub_10005CEF0(void *result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (!((a2 + 0x800000000000000) >> 60) && ((a2 & 0x800000000000000) != 0) != (16 * a2) <= ~*result)
  {
    *result += 16 * a2;
    return result;
  }

  __break(0x5513u);
  return result;
}

_BYTE *sub_10005CF44(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = sub_10005CFB0(a1, a2, a3);
  if (&result[-a1] < 0 == &result[-a1] <= ~a1 || (v6 - a3) < 0 == v6 - a3 <= ~a3)
  {
    __break(0x5513u);
  }

  return result;
}

_BYTE *sub_10005CFB0(_BYTE *__src, _BYTE *a2, void *__dst)
{
  v5 = a2 - __src;
  if (a2 == __src)
  {
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_9:
    __break(0x550Cu);
    goto LABEL_10;
  }

  if ((v5 - 16) >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_10:
    __break(0x5500u);
    goto LABEL_11;
  }

  if (((__dst | __src) & 7) == 0)
  {
    __src = memmove(__dst, __src, a2 - __src);
LABEL_6:
    if (!__CFADD__(__dst, v5))
    {
      return a2;
    }

    __break(0x5513u);
    goto LABEL_9;
  }

LABEL_11:
  __break(0x5516u);
  return __src;
}

uint64_t sub_10005D02C(uint64_t result, _OWORD *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  v2 = *(result + 8);
  if (v2 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_9:
    __break(0x5513u);
    return result;
  }

  if (!v2 || (v2 & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    goto LABEL_9;
  }

  *v2 = *a2;
  *(result + 8) = v2 + 16;
  return result;
}

uint64_t *sub_10005D074(uint64_t *result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_8:
    __break(0x5516u);
LABEL_9:
    __break(0x5513u);
    goto LABEL_10;
  }

  v4 = a2[1];
  v5 = *result;
  v6 = result[1] - *result;
  v7 = -16 * (v6 >> 4);
  v8 = v7 <= ~v4;
  v9 = v7 < 0;
  if (((v6 >> 4) + 0x7FFFFFFFFFFFFFFLL) >> 60 || ((v9 ^ v8) & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v5 & 7) == 0)
    {
      v10 = (v4 - 16 * (v6 >> 4));
      result = memcpy(v10, v5, v6);
      a2[1] = v10;
      v11 = *v2;
      v2[1] = *v2;
      *v2 = a2[1];
      a2[1] = v11;
      v12 = v2[1];
      v2[1] = a2[2];
      a2[2] = v12;
      v13 = v2[2];
      v2[2] = a2[3];
      a2[3] = v13;
      *a2 = a2[1];
      return result;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(0x550Cu);
  return result;
}

void *sub_10005D150(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      result[3] = 0;
      result[4] = a4;
      if (a2)
      {
        sub_10005D204(a4, a2);
      }

      result = 0;
      *v4 = 0;
      if (!((a3 + 0x800000000000000) >> 60))
      {
        v4[1] = 16 * a3;
        v4[2] = 16 * a3;
        v4[3] = 0;
        return v4;
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10005D204(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (!(a2 >> 60))
    {

      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  sub_1000E1E24();
}

void *sub_10005D248(void *result)
{
  if (!result)
  {
    goto LABEL_8;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_8;
  }

  sub_10005D2A8(result);
  result = *v1;
  if (!*v1)
  {
    return v1;
  }

  if (v1[4])
  {
    if ((v1[3] - result) >= 0)
    {
      operator delete(result);
      return v1;
    }
  }

  else
  {
LABEL_8:
    __break(0x5516u);
  }

  __break(0x550Cu);
  return result;
}

void *sub_10005D2A8(void *result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result[1];
  v2 = result[2];
  if (v2 != v1)
  {
    if (result[4])
    {
      while (v2 > 0xF)
      {
        v2 -= 16;
        result[2] = v2;
        if (v2 == v1)
        {
          return result;
        }
      }

      __break(0x5513u);
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10005D2EC(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    *result = result;
    *(result + 8) = result;
    *(result + 16) = 0;
    for (i = *(a2 + 8); i != a2; i = *(i + 8))
    {
      if (!i || (i & 7) != 0)
      {
        goto LABEL_9;
      }

      result = sub_1000219A8(v2);
    }

    return v2;
  }

  return result;
}

uint64_t sub_10005D360(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *result = off_100115A40;
    *(result + 32) = 0;
    *(result + 24) = dispatch_semaphore_create(0);
    return v1;
  }

  return result;
}

uint64_t sub_10005D3C0(uint64_t result, unsigned int a2)
{
  if (result && (result & 7) == 0)
  {
    if (a2 < 4)
    {
      *(result + 8) = a2;
      operator new[]();
    }

    __break(0x5518u);
  }

  __break(0x5516u);
  __break(0x5513u);
  return result;
}

uint64_t sub_10005D4D8(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_19:
    __break(0x5516u);
LABEL_20:
    __break(0x5513u);
    goto LABEL_21;
  }

  *result = off_100115A40;
  if (*(result + 8))
  {
    v2 = 0;
    do
    {
      v3 = *(v1 + 16);
      if (__CFADD__(v3, 8 * v2))
      {
        goto LABEL_20;
      }

      v4 = (v3 + 8 * v2);
      if (v3)
      {
        v5 = (v4 & 7) == 0;
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        goto LABEL_19;
      }

      result = *v4;
      if (*v4)
      {
        if ((result & 7) == 0)
        {
          sub_10005E900(result);
          operator delete();
        }

        goto LABEL_19;
      }
    }

    while (++v2 < *(v1 + 8));
  }

  if (*(v1 + 16))
  {
    operator delete[]();
  }

  result = *(v1 + 24);
  if (result)
  {
    dispatch_release(result);
    return v1;
  }

LABEL_21:
  __break(0x5510u);
  return result;
}

void sub_10005D5C8(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_10005D5DC(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_10005D5F0(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  if (!result)
  {
    goto LABEL_22;
  }

  v4 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = dispatch_semaphore_create(0);
    result = sub_1000B569C(a2, v8);
  }

  if (a4 > 3)
  {
    goto LABEL_23;
  }

  v9 = *(v4 + 16);
  if (__CFADD__(v9, 8 * a4))
  {
LABEL_24:
    __break(0x5513u);
    goto LABEL_25;
  }

  if (!v9 || (v10 = (v9 + 8 * a4), (v10 & 7) != 0) || ((result = *v10, v11 = *v10 & 7, result) ? (v12 = v11 == 0) : (v12 = 0), !v12))
  {
LABEL_22:
    __break(0x5516u);
LABEL_23:
    __break(0x550Au);
    goto LABEL_24;
  }

  v13 = sub_10005D6E4(result, a2);
  if (v13)
  {
    return v13;
  }

  result = *(v4 + 24);
  if (result)
  {
    result = dispatch_semaphore_signal(result);
    if ((a3 & 1) == 0)
    {
      if (!v8)
      {
        __break(0x5518u);
        goto LABEL_22;
      }

      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8);
    }

    return v13;
  }

LABEL_25:
  __break(0x5510u);
  return result;
}

uint64_t sub_10005D6E4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  v4 = sub_10005ECC0(result, (result + 64), 0);
  if (!v4)
  {
    return 16;
  }

  v5 = v4;
  result = pthread_mutex_lock(v2);
  if ((v5 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    *(v5 + 24) = a2;
    *v5 = 1;
    *(v5 + 8) = v2;
    if (sub_10005EC54(v2, (v2 + 224), v5))
    {
      sub_1000E22F0();
    }

    pthread_mutex_unlock(v2);
    return 0;
  }

  return result;
}

uint64_t sub_10005D784(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_36:
    __break(0x5516u);
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v2 = *(result + 8);
    v3 = (v2 - 1);
    if (!v2)
    {
      goto LABEL_40;
    }

    v4 = 2863311530;
LABEL_5:
    while ((v3 & 0x80000000) != 0)
    {
LABEL_23:
      result = *(v1 + 24);
      if (!result)
      {
        goto LABEL_39;
      }

      dispatch_semaphore_wait(result, 0xFFFFFFFFFFFFFFFFLL);
    }

    v5 = 0;
    result = 1;
    v6 = 8 * v3;
    v7 = v3;
    while (1)
    {
      v8 = *(v1 + 32);
      if (v8 > 1)
      {
        break;
      }

      if ((v8 & 1) == 0 || !v5)
      {
        v9 = *(v1 + 16);
        if (__CFADD__(v9, v6))
        {
          goto LABEL_38;
        }

        if (!v9 || ((v6 + v9) & 7) != 0)
        {
          goto LABEL_36;
        }

        result = *(v9 + 8 * v7);
        if (!result || (*(v9 + 8 * v7) & 7) != 0)
        {
          goto LABEL_36;
        }

        result = sub_10005D948(result, &v14);
        v4 = v7;
      }

      if (result)
      {
        v6 -= 8;
        ++v5;
        if (v7-- > 0)
        {
          continue;
        }
      }

      if (result)
      {
        goto LABEL_23;
      }

      v12 = v14;
      if (!v14)
      {
        __break(0x5518u);
        goto LABEL_36;
      }

      if ((v14 & 7) != 0)
      {
        goto LABEL_36;
      }

      result = sub_1000B5678(v14);
      v13 = result == 3;
      if (result != 3)
      {
        if (v4 > 3)
        {
          break;
        }

        (*(*v1 + 16))(v1, v12, v4);
      }

      if (sub_10005B04C(v12))
      {
        result = sub_10005B04C(v12);
        if (!result)
        {
          goto LABEL_39;
        }

        dispatch_semaphore_signal(result);
      }

      result = (*(*v12 + 8))(v12);
      if (!v13)
      {
        goto LABEL_5;
      }

      return result;
    }
  }

  __break(0x550Au);
LABEL_38:
  __break(0x5513u);
LABEL_39:
  __break(0x5510u);
LABEL_40:
  __break(0x5515u);
  return result;
}

uint64_t sub_10005D948(uint64_t result, void *a2)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  v4 = sub_10005ECC0(result, (result + 224), 0);
  if (!v4)
  {
    return 35;
  }

  v5 = v4;
  result = pthread_mutex_lock(v2);
  if ((v5 & 7) != 0)
  {
LABEL_16:
    __break(0x5516u);
    goto LABEL_17;
  }

  v6 = *v5;
  if (v6 < 2)
  {
    if ((v6 & 1) == 0)
    {
      v9 = 22;
LABEL_13:
      pthread_mutex_unlock(v2);
      return v9;
    }

    *a2 = *(v5 + 24);
    v7 = *(v5 + 16);
    if (v7 < 2)
    {
      if ((v7 & 1) == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        v8 = sub_10005EC54(v2, v2 + 1, v5);
        v9 = 0;
        if (v8)
        {
          sub_1000E22F0();
        }

        goto LABEL_13;
      }

      __break(0x5518u);
      goto LABEL_16;
    }
  }

LABEL_17:
  __break(0x550Au);
  return result;
}

intptr_t sub_10005DA20(intptr_t result, char a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 32) = a2;
    if (a2)
    {
      return result;
    }

    result = *(result + 24);
    if (result)
    {
      return dispatch_semaphore_signal(result);
    }
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_10005DA4C(uint64_t result, int a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 376) = 0;
    *(result + 384) = 0;
    *(result + 368) = 0;
    pthread_mutex_init(result, 0);
    pthread_cond_init((v2 + 128), 0);
    pthread_mutex_init((v2 + 64), 0);
    pthread_cond_init((v2 + 288), 0);
    pthread_mutex_init((v2 + 224), 0);
    if (a2 >= 1)
    {
      operator new[]();
    }

    return v2;
  }

  return result;
}

unint64_t sub_10005DB94(unint64_t result, void *a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!sub_10005DC0C(result))
  {
    sub_10005DC60(v2);
  }

  result = sub_10005DE88(v2);
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {
    *v4 = *a2;
    v5 = v2[5];
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (!v6)
    {
      v2[5] = v7;
      return result;
    }
  }

  __break(0x5500u);
  return result;
}

unint64_t sub_10005DC0C(unint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_8;
  }

  result = sub_10005DF00(result);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_8:
    __break(0x5500u);
LABEL_9:
    __break(0x5515u);
    return result;
  }

  v4 = result >= v5;
  result -= v5;
  if (!v4)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_10005DC60(unint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_17;
  }

  v1 = *(result + 32);
  if (v1 <= 0x1FF)
  {
    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = *result;
    v6 = (v4 - *(result + 8)) >> 3;
    v7 = v3 - *result;
    if (v6 < v7 >> 3)
    {
      if (v3 != v4)
      {
        operator new();
      }

      operator new();
    }

    v11 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[0] = v8;
    v10[1] = v8;
    if (((v7 >> 3) & 0x8000000000000000) == 0)
    {
      if (v3 == v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 >> 2;
      }

      sub_10005E7D8(v10, v9, v6, result);
      operator new();
    }

    goto LABEL_19;
  }

  *(result + 32) = v1 - 512;
  v2 = *(result + 8);
  if (!v2 || (v2 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
  }

  else
  {
    *&v10[0] = *v2;
    if (v2 < 0xFFFFFFFFFFFFFFF8)
    {
      *(result + 8) = v2 + 8;
      return sub_10005DF44(result, v10);
    }
  }

  __break(0x5513u);
  __break(0x5515u);
LABEL_19:
  __break(0x550Cu);
  return result;
}

void *sub_10005DE88(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  v3 = result[4];
  v2 = result[5];
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_13:
    __break(0x5500u);
    return result;
  }

  v6 = result[1];
  v7 = (v5 >> 6) & 0x3FFFFFFFFFFFFF8;
  if (__CFADD__(v6, v7))
  {
LABEL_12:
    __break(0x5513u);
    goto LABEL_13;
  }

  result = (v6 + v7);
  if (v1[2] != v6)
  {
    if (v6 && (result & 7) == 0)
    {
      v8 = 8 * (v5 & 0x1FF);
      if (!__CFADD__(*result, v8))
      {
        v9 = *result + v8;
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10005DF00(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
LABEL_9:
    __break(0x550Cu);
    goto LABEL_10;
  }

  v1 = *(result + 16) - *(result + 8);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 58)
  {
    goto LABEL_9;
  }

  v2 = v1 << 6;
  result = v2 - 1;
  if (!v2)
  {
LABEL_10:
    __break(0x5515u);
  }

  return result;
}

unint64_t sub_10005DF44(unint64_t result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_23:
    __break(0x5516u);
LABEL_24:
    __break(0x5513u);
    goto LABEL_25;
  }

  v4 = *(result + 16);
  if (v4 != *(result + 24))
  {
LABEL_19:
    if (v4 && (v4 & 7) == 0)
    {
      *v4 = *a2;
      v22 = v2[2];
      if (v22 <= 0xFFFFFFFFFFFFFFF7)
      {
        v2[2] = v22 + 8;
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v5 = *result;
  result = *(result + 8);
  v6 = result - *v2;
  if (result > *v2)
  {
    v7 = v6 >> 3;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = v6 >> 3 < 1;
    v10 = __CFADD__(result, 8 * v8);
    if (((v9 ^ v10) & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = v7 < 1;
    result = sub_10005E4C8(result, v4, result + 8 * v8);
    v2[2] = v4;
    v12 = v2[1];
    v13 = __CFADD__(v12, 8 * v8);
    if (v11 == v13)
    {
      goto LABEL_24;
    }

    v2[1] = v12 + 8 * v8;
    goto LABEL_19;
  }

  v15 = &v4[-v5];
  v14 = v15 == 0;
  if (v15 >= 0)
  {
    v16 = v15 >> 2;
    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v18;
    v24 = v18;
    sub_10005E7D8(&v23, v17, v17 >> 2, v2);
    sub_10005E5B0(&v23, v2[1], (v2[2] - v2[1]) >> 3);
    v19 = v24;
    v20 = *v2;
    v21 = *(v2 + 1);
    *v2 = v23;
    *(v2 + 1) = v19;
    v23 = v20;
    v24 = v21;
    result = sub_100025B50(&v23);
    v4 = v2[2];
    goto LABEL_19;
  }

LABEL_25:
  __break(0x550Cu);
  return result;
}

unint64_t sub_10005E098(unint64_t result, void *a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = *result;
  result = *(result + 8);
  if (result != *v2)
  {
    goto LABEL_19;
  }

  v5 = v2[2];
  v6 = v2[3];
  if (v5 < v6)
  {
    v7 = (v6 - v5) >> 3;
    v8 = (v7 + 1) / 2;
    v9 = __CFADD__(v5, 8 * v8);
    if ((((v7 > -3) ^ v9) & 1) == 0)
    {
      goto LABEL_24;
    }

    v10 = v7 > -3;
    result = sub_10005E6D0(result, v5, &v5[8 * v8]);
    v2[1] = v11;
    v12 = v2[2];
    v13 = __CFADD__(v12, 8 * v8);
    if (v10 == v13)
    {
      goto LABEL_24;
    }

    result = v11;
    v2[2] = v12 + 8 * v8;
LABEL_19:
    v22 = (result - 8);
    if (result >= 8)
    {
      if ((v22 & 7) != 0)
      {
LABEL_25:
        __break(0x5516u);
        goto LABEL_26;
      }

      *v22 = *a2;
      v23 = v2[1];
      v24 = v23 >= 8;
      v25 = v23 - 8;
      if (v24)
      {
        v2[1] = v25;
        return result;
      }
    }

LABEL_24:
    __break(0x5513u);
    goto LABEL_25;
  }

  v15 = v6 - result;
  v14 = v15 == 0;
  if (v15 >= 0)
  {
    v16 = v15 >> 2;
    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v28 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v18;
    v27 = v18;
    sub_10005E7D8(&v26, v17, (v17 + 3) >> 2, v2);
    sub_10005E5B0(&v26, v2[1], (v2[2] - v2[1]) >> 3);
    v19 = v27;
    v20 = *v2;
    v21 = *(v2 + 1);
    *v2 = v26;
    *(v2 + 1) = v19;
    v26 = v20;
    v27 = v21;
    sub_100025B50(&v26);
    result = v2[1];
    goto LABEL_19;
  }

LABEL_26:
  __break(0x550Cu);
  return result;
}

unint64_t sub_10005E1F8(unint64_t result, void *a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = *(result + 16);
  if (v4 != *(result + 24))
  {
    goto LABEL_20;
  }

  v5 = *result;
  result = *(result + 8);
  v6 = result - *v2;
  if (result > *v2)
  {
    v7 = v6 >> 3;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = v6 >> 3 < 1;
    v10 = __CFADD__(result, 8 * v8);
    if (((v9 ^ v10) & 1) == 0)
    {
      goto LABEL_26;
    }

    v11 = v7 < 1;
    result = sub_10005E4C8(result, v4, result + 8 * v8);
    v2[2] = v12;
    v13 = v2[1];
    v14 = __CFADD__(v13, 8 * v8);
    if (v11 == v14)
    {
      goto LABEL_26;
    }

    v2[1] = v13 + 8 * v8;
    goto LABEL_20;
  }

  if (v4 - v5 >= 0)
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v15;
    v24 = v15;
    v16 = v2[4];
    if (v16)
    {
      if (v4 == v5)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v4 - v5) >> 2;
      }

      sub_10005E7D8(&v23, v17, v17 >> 2, v16);
      sub_10005E5B0(&v23, v2[1], (v2[2] - v2[1]) >> 3);
      v18 = v24;
      v19 = *v2;
      v20 = *(v2 + 1);
      *v2 = v23;
      *(v2 + 1) = v18;
      v23 = v19;
      v24 = v20;
      result = sub_100025B50(&v23);
LABEL_20:
      if (v2[4])
      {
        v21 = v2[2];
        if (v21)
        {
          if ((v21 & 7) == 0)
          {
            *v21 = *a2;
            v22 = v2[2];
            if (v22 <= 0xFFFFFFFFFFFFFFF7)
            {
              v2[2] = v22 + 8;
              return result;
            }

            goto LABEL_26;
          }
        }
      }
    }

LABEL_25:
    __break(0x5516u);
LABEL_26:
    __break(0x5513u);
  }

  __break(0x550Cu);
  return result;
}

unint64_t sub_10005E35C(unint64_t result, void *a2)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  v4 = *result;
  result = *(result + 8);
  if (result != *v2)
  {
    goto LABEL_20;
  }

  v5 = v2[2];
  v6 = v2[3];
  if (v5 < v6)
  {
    v7 = (v6 - v5) >> 3;
    v8 = (v7 + 1) / 2;
    v9 = __CFADD__(v5, 8 * v8);
    if ((((v7 > -3) ^ v9) & 1) == 0)
    {
      goto LABEL_28;
    }

    v10 = v7 > -3;
    result = sub_10005E6D0(result, v5, &v5[8 * v8]);
    v2[1] = v11;
    v12 = v2[2];
    v13 = __CFADD__(v12, 8 * v8);
    if (v10 == v13)
    {
      goto LABEL_28;
    }

    v2[2] = v12 + 8 * v8;
    goto LABEL_20;
  }

  if ((v6 - result) >= 0)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v14;
    v26 = v14;
    v15 = v2[4];
    if (!v15)
    {
      goto LABEL_27;
    }

    if (v6 == result)
    {
      v16 = 1;
    }

    else
    {
      v16 = (v6 - result) >> 2;
    }

    sub_10005E7D8(&v25, v16, (v16 + 3) >> 2, v15);
    sub_10005E5B0(&v25, v2[1], (v2[2] - v2[1]) >> 3);
    v17 = v26;
    v18 = *v2;
    v19 = *(v2 + 1);
    *v2 = v25;
    *(v2 + 1) = v17;
    v25 = v18;
    v26 = v19;
    result = sub_100025B50(&v25);
LABEL_20:
    if (v2[4])
    {
      v20 = v2[1];
      v21 = v20 >= 8;
      v22 = (v20 - 8);
      if (!v21)
      {
        goto LABEL_28;
      }

      if ((v22 & 7) == 0)
      {
        *v22 = *a2;
        v23 = v2[1];
        v21 = v23 >= 8;
        v24 = v23 - 8;
        if (v21)
        {
          v2[1] = v24;
          return result;
        }

        goto LABEL_28;
      }
    }

LABEL_27:
    __break(0x5516u);
LABEL_28:
    __break(0x5513u);
  }

  __break(0x550Cu);
  return result;
}

_BYTE *sub_10005E4C8(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = sub_10005E534(a1, a2, a3);
  if (&result[-a1] < 0 == &result[-a1] <= ~a1 || (v6 - a3) < 0 == v6 - a3 <= ~a3)
  {
    __break(0x5513u);
  }

  return result;
}

_BYTE *sub_10005E534(_BYTE *__src, _BYTE *a2, void *__dst)
{
  v5 = a2 - __src;
  if (a2 == __src)
  {
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_9:
    __break(0x550Cu);
    goto LABEL_10;
  }

  if ((v5 - 8) >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
    goto LABEL_11;
  }

  if (((__dst | __src) & 7) == 0)
  {
    __src = memmove(__dst, __src, a2 - __src);
LABEL_6:
    if (!__CFADD__(__dst, v5))
    {
      return a2;
    }

    __break(0x5513u);
    goto LABEL_9;
  }

LABEL_11:
  __break(0x5516u);
  return __src;
}

uint64_t *sub_10005E5B0(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if ((result & 7) == 0)
    {
      memset(v7, 170, sizeof(v7));
      result = sub_10005E67C(v7, result + 2, a3);
      v5 = v7[0];
      if (v7[0] == v7[1])
      {
LABEL_13:
        if (v7[2] && (v7[2] & 7) == 0)
        {
          *v7[2] = v5;
          return result;
        }
      }

      else
      {
        v6 = a2 & 7;
        while (v3[4] && a2 && !v6 && v5 && (v5 & 7) == 0)
        {
          *v5 = *a2;
          if (v7[0] >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_17;
          }

          v5 = v7[0] + 8;
          v7[0] += 8;
          if (a2 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_17;
          }

          a2 += 8;
          if (v5 == v7[1])
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  __break(0x5516u);
LABEL_17:
  __break(0x5513u);
  return result;
}

uint64_t *sub_10005E67C(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = *a2;
    *result = *a2;
    if (!((a3 + 0x1000000000000000) >> 61) && 8 * a3 <= ~v3)
    {
      result[1] = v3 + 8 * a3;
      result[2] = a2;
      return result;
    }
  }

  __break(0x5513u);
  return result;
}

_BYTE *sub_10005E6D0(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = sub_10005E73C(a1, a2, a3);
  if (&result[-a1] < 0 == &result[-a1] <= ~a1 || (v6 - a3) < 0 == v6 - a3 <= ~a3)
  {
    __break(0x5513u);
  }

  return result;
}

_BYTE *sub_10005E73C(_BYTE *__src, _BYTE *a2, unint64_t a3)
{
  v4 = a2 - __src;
  if ((((a2 - __src) >> 3) + 0xFFFFFFFFFFFFFFFLL) >> 61)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3 - (a2 - __src) > a3;
  }

  if (v5)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x550Cu);
    goto LABEL_13;
  }

  v6 = (a3 - 8 * (v4 >> 3));
  if (a2 == __src)
  {
    return a2;
  }

  if ((v4 >> 3) > 0x2000000000000000)
  {
    goto LABEL_12;
  }

  v7 = v4 - 8;
  if (v7 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_13:
    __break(0x5500u);
    goto LABEL_14;
  }

  if (((v6 | __src) & 7) == 0)
  {
    memmove(v6, __src, v7 + 8);
    return a2;
  }

LABEL_14:
  __break(0x5516u);
  return __src;
}

void *sub_10005E7D8(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      result[3] = 0;
      result[4] = a4;
      if (a2)
      {
        sub_10005E88C(a4, a2);
      }

      result = 0;
      *v4 = 0;
      if (!((a3 + 0x1000000000000000) >> 61))
      {
        v4[1] = 8 * a3;
        v4[2] = 8 * a3;
        v4[3] = 0;
        return v4;
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10005E88C(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (!(a2 >> 61))
    {

      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  sub_1000E1E24();
}

void sub_10005E8D0(void *a1, void *__p)
{
  if (a1 && (a1 & 7) == 0 && *a1)
  {
    if (!(a1[1] >> 61))
    {
      operator delete(__p);
      return;
    }
  }

  else
  {
    __break(0x5516u);
  }

  __break(0x550Cu);
}

pthread_cond_t *sub_10005E900(pthread_cond_t *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    if (result[8].__sig)
    {
      operator delete[]();
    }

    pthread_cond_destroy(result + 6);
    pthread_mutex_destroy(&v1[4].__opaque[24]);
    pthread_cond_destroy((v1 + 128));
    pthread_mutex_destroy(&v1[1].__opaque[8]);
    pthread_mutex_destroy(v1);
    sub_10005E988(&v1[7].__sig);
    sub_10005E988(&v1[3].__opaque[24]);
    return v1;
  }

  return result;
}

void sub_10005E988(void *a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    sub_10005EA14(a1);
    v2 = a1[1];
    v3 = a1[2];
    if (v2 == v3)
    {
LABEL_9:

      sub_10005EBE0(a1);
      return;
    }

    v4 = a1[1] & 7;
    while (v2 && !v4)
    {
      operator delete(*v2);
      if (v2 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_13;
      }

      if (++v2 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  __break(0x5516u);
LABEL_13:
  __break(0x5513u);
}

void sub_10005EA14(void *a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
LABEL_20:
    __break(0x5513u);
    return;
  }

  v2 = sub_10005EB10(a1);
  v4 = v3;
  v11 = v2;
  v12 = v3;
  sub_10005DE88(a1);
  if (v4 != v5)
  {
    v6 = v5;
    while (v4 && (v4 & 7) == 0)
    {
      sub_10005EB7C(&v11);
      v4 = v12;
      if (v12 == v6)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  a1[5] = 0;
  v7 = a1[1];
  v8 = (a1[2] - v7) >> 3;
  if (v8 >= 3)
  {
    while (v7 && (v7 & 7) == 0)
    {
      operator delete(*v7);
      v9 = a1[1];
      if (v9 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_20;
      }

      v7 = (v9 + 8);
      a1[1] = v7;
      v8 = (a1[2] - v7) >> 3;
      if (v8 <= 2)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v8 == 1)
  {
    v10 = 256;
  }

  else
  {
    if (v8 != 2)
    {
      return;
    }

    v10 = 512;
  }

  a1[4] = v10;
}

void *sub_10005EB10(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  v2 = result[1];
  v3 = result[4];
  v4 = (v3 >> 6) & 0x3FFFFFFFFFFFFF8;
  if (__CFADD__(v2, v4))
  {
LABEL_11:
    __break(0x5513u);
    return result;
  }

  result = (v2 + v4);
  if (v1[2] != v2)
  {
    if (v2 && (result & 7) == 0)
    {
      v5 = 8 * (v3 & 0x1FF);
      if (!__CFADD__(*result, v5))
      {
        v6 = *result + v5;
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

unint64_t *sub_10005EB7C(unint64_t *result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  v1 = result[1];
  if (v1 >= 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_11;
  }

  v2 = v1 + 8;
  result[1] = v1 + 8;
  v3 = *result;
  if (!*result || (v3 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    goto LABEL_11;
  }

  if (v2 - *v3 != 4096)
  {
    return result;
  }

  if (v3 > 0xFFFFFFFFFFFFFFF7)
  {
LABEL_11:
    __break(0x5513u);
    return result;
  }

  *result = v3 + 8;
  result[1] = *(v3 + 8);
  return result;
}

void *sub_10005EBE0(void *result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
LABEL_12:
    __break(0x5516u);
LABEL_13:
    __break(0x550Cu);
  }

  else
  {
    v2 = result[1];
    for (i = result[2]; i != v2; result[2] = i)
    {
      if (i <= 7)
      {
        __break(0x5513u);
        goto LABEL_12;
      }

      i -= 8;
    }

    result = *result;
    if (*v1)
    {
      if ((v1[3] - result) < 0)
      {
        goto LABEL_13;
      }

      operator delete(result);
    }

    return v1;
  }

  return result;
}

uint64_t sub_10005EC54(uint64_t result, pthread_mutex_t *a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock(a2);
    v6 = a3;
    sub_10005DB94(&a2[1].__opaque[40], &v6);
    v5 = pthread_cond_signal(&a2[1]);
    pthread_mutex_unlock(a2);
    return v5;
  }

  return result;
}

uint64_t sub_10005ECC0(uint64_t result, pthread_mutex_t *a2, int a3)
{
  if (result && (result & 7) == 0)
  {
    pthread_mutex_lock(a2);
    if (a3)
    {
      while (!*&a2[2].__opaque[16])
      {
        if (pthread_cond_wait(&a2[1], a2))
        {
          goto LABEL_9;
        }
      }
    }

    else if (!*&a2[2].__opaque[16])
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }

    v5 = *sub_10005ED4C(&a2[1].__opaque[40]);
    sub_10005EDB0(&a2[1].__opaque[40]);
LABEL_10:
    pthread_mutex_unlock(a2);
    return v5;
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005ED4C(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_13;
  }

  v1 = *(result + 8);
  v2 = (*(result + 32) >> 6) & 0x3FFFFFFFFFFFFF8;
  if (__CFADD__(v1, v2))
  {
LABEL_14:
    __break(0x5513u);
    return result;
  }

  if (!v1 || (v3 = (v1 + v2), (v3 & 7) != 0))
  {
LABEL_13:
    __break(0x5516u);
    goto LABEL_14;
  }

  v4 = *v3;
  v5 = 8 * (*(result + 32) & 0x1FFLL);
  if (__CFADD__(v4, v5))
  {
    goto LABEL_14;
  }

  result = v4 + v5;
  v6 = (v4 + v5) & 7;
  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_10005EDB0(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_11;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = (v2 >> 6) & 0x3FFFFFFFFFFFFF8;
  if (__CFADD__(v1, v3))
  {
LABEL_12:
    __break(0x5513u);
LABEL_13:
    __break(0x5515u);
    goto LABEL_14;
  }

  if (!v1 || (v4 = (v1 + v3), (v4 & 7) != 0))
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  if (__CFADD__(*v4, 8 * (*(a1 + 32) & 0x1FFLL)))
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 40);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    goto LABEL_13;
  }

  *(a1 + 40) = v7;
  v6 = __CFADD__(v2, 1);
  v8 = v2 + 1;
  if (!v6)
  {
    *(a1 + 32) = v8;
    sub_10005EE28(a1, 1);
    return;
  }

LABEL_14:
  __break(0x5500u);
}

void sub_10005EE28(uint64_t a1, char a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_17;
  }

  v3 = *(a1 + 32);
  if (v3 < 0x200)
  {
    a2 = 1;
  }

  if (v3 < 0x400)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return;
  }

  v6 = *(a1 + 8);
  if (!v6 || (v6 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    goto LABEL_18;
  }

  operator delete(*v6);
  v7 = *(a1 + 8);
  if (v7 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_18:
    __break(0x5513u);
LABEL_19:
    __break(0x5515u);
    return;
  }

  *(a1 + 8) = v7 + 8;
  v8 = *(a1 + 32);
  v9 = v8 >= 0x200;
  v10 = v8 - 512;
  if (!v9)
  {
    goto LABEL_19;
  }

  *(a1 + 32) = v10;
}

dispatch_semaphore_t sub_10005EEB8(dispatch_semaphore_t result, objc_class *a2, int a3, __int16 a4, int a5, objc_class *a6, char a7, dispatch_once_t *a8)
{
  if (result)
  {
    v8 = result;
    if ((result & 7) == 0)
    {
      result->isa = off_100115A78;
      result[1].isa = a2;
      if ((a3 + 32) >= 0x40 || (LODWORD(result[2].isa) = a3, WORD2(result[2].isa) = a4, LODWORD(result[3].isa) = a5, result[4].isa = a6, LOBYTE(result[5].isa) = a7, a8 > 3))
      {
        __break(0x550Au);
      }

      else
      {
        HIDWORD(result[5].isa) = a8;
        sub_10005EF7C(a8);
        v8[6].isa = v9;
        LODWORD(v8[7].isa) = 1;
        BYTE4(v8[7].isa) = 0;
        v8[9].isa = &v8[9];
        v8[10].isa = &v8[9];
        v8[11].isa = 0;
        result = dispatch_semaphore_create(0);
        v8[8].isa = result;
        isa = v8[4].isa;
        if (!isa)
        {
          return v8;
        }

        if ((isa & 7) == 0)
        {
          *(isa + 17) = v8;
          return v8;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10005EF7C(dispatch_once_t *a1)
{
  if (a1 >= 4)
  {
    goto LABEL_10;
  }

  v2 = a1;
  if (a1 == 3)
  {
    __break(0x5518u);
LABEL_8:
    dispatch_once(a1, block);
LABEL_5:
    if (v1 <= ~qword_10012BC20)
    {
      v3 = qword_10012BC20[v2];
      return;
    }

    goto LABEL_9;
  }

  v1 = 8 * a1;
  if (v1 <= ~&unk_10012BC08)
  {
    a1 = (&unk_10012BC08 + 8 * a1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10005F3F8;
    block[3] = &unk_100115A90;
    v5 = v2;
    if (*a1 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(0x5513u);
LABEL_10:
  __break(0x550Au);
}

uint64_t sub_10005F054(uint64_t result)
{
  if (!result)
  {
    goto LABEL_24;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_24;
  }

  *result = off_100115A78;
  v2 = atomic_load((result + 48));
  if ((v2 & 7) != 0 || v2 == 0)
  {
    goto LABEL_24;
  }

  result = pthread_mutex_lock((v2 + 16));
  v4 = v1[10];
  if (v1 + 9 != v4)
  {
    while ((v4 & 7) == 0 && v4)
    {
      v5 = v4[2];
      if (!v5 || (v4[2] & 7) != 0)
      {
        break;
      }

      *(v5 + 136) = 0;
      result = sub_100021528((v1 + 9), v4);
      v4 = result;
      if (v1 + 9 == result)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_24;
  }

LABEL_16:
  result = v1[4];
  if (result)
  {
    if ((result & 7) != 0)
    {
LABEL_24:
      __break(0x5516u);
      goto LABEL_25;
    }

    *(result + 136) = 0;
    result = (*(*result + 8))(result);
    v1[4] = 0;
  }

  v7 = v1[8];
  v1[8] = 0;
  v8 = atomic_load(v1 + 6);
  if ((v8 & 7) != 0 || !v8)
  {
    goto LABEL_24;
  }

  result = pthread_mutex_unlock((v8 + 16));
  if (!v7)
  {
LABEL_25:
    __break(0x5510u);
    return result;
  }

    ;
  }

  dispatch_release(v7);
  sub_1000187F0(v1 + 9);
  return v1;
}

void sub_10005F19C(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

void sub_10005F1B0(uint64_t a1)
{
  if (a1 && (a1 & 7) == 0)
  {
    __break(1u);
  }

  __break(0x5516u);
}

uint64_t sub_10005F1C4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  result = sub_1000219A8(result + 72);
  if (!a2 || (a2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(a2 + 136) = v2;
  if (*(v2 + 32) == a2)
  {
    *(v2 + 32) = 0;
  }

  return result;
}

uint64_t sub_10005F234(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  if (*(result + 32) == a2)
  {
    *(result + 32) = 0;
  }

  if ((a2 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return result;
  }

  *(a2 + 136) = 0;
  return sub_10005F290(result + 72, &v2);
}

uint64_t sub_10005F290(uint64_t result, void *a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_20:
    __break(0x5516u);
  }

  else
  {
    v8[0] = v8;
    v8[1] = v8;
    v8[2] = 0;
    v3 = *(result + 8);
    if (v3 != result)
    {
      do
      {
        if (!v3 || (v3 & 7) != 0)
        {
          goto LABEL_20;
        }

        v5 = v3[2];
        v6 = (v3 + 1);
        if (v5 == *a2)
        {
          for (i = *v6; i != v2; i = i[1])
          {
            if (!i || (i & 7) != 0)
            {
              goto LABEL_20;
            }

            if (i[2] != v5)
            {
              break;
            }
          }

          result = sub_1000298BC(v8, v8, v2, v3, i);
          if (i == v2)
          {
            goto LABEL_18;
          }

          if ((i & 7) != 0 || !i)
          {
            goto LABEL_20;
          }

          v6 = (i + 1);
        }

        i = *v6;
LABEL_18:
        v3 = i;
      }

      while (i != v2);
    }

    return sub_1000187F0(v8);
  }

  return result;
}

void sub_10005F37C(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      v2 = dispatch_time(0, 2000000000);
      if (dispatch_semaphore_wait(v1, v2))
      {
        syslog(4, "%s:%d dispatch_semaphore_wait timedout!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapDispatchWork.cpp", 146);
      }
    }
  }
}

dispatch_queue_t sub_10005F484(dispatch_queue_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  result->isa = off_100115AC0;
  if (a2 >= 4 || (LODWORD(result[1].isa) = a2, result = pthread_mutex_init(&result[2], 0), isa = v2[1].isa, isa > 3))
  {
    __break(0x550Au);
    goto LABEL_14;
  }

  if (isa != 2)
  {
    if (a2 == 3)
    {
      goto LABEL_16;
    }

    v6 = 8 * a2;
    if (v6 <= ~off_10012B380)
    {
      v5 = a2;
      result = dispatch_queue_create(off_10012B380[a2], 0);
      v2[10].isa = result;
LABEL_11:
      if (v6 <= ~off_10012B398)
      {
        v2[11].isa = dispatch_queue_create(off_10012B398[v5], 0);
        return v2;
      }
    }

LABEL_14:
    __break(0x5513u);
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  result = dispatch_get_global_queue(0, 0);
  v2[10].isa = result;
  if (a2 != 3)
  {
    v5 = a2;
    v6 = 8 * a2;
    goto LABEL_11;
  }

LABEL_16:
  __break(0x5512u);
  return result;
}

uint64_t sub_10005F594(uint64_t result)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  *result = off_100115AC0;
  v2 = *(result + 8);
  if (v2 < 4)
  {
    if (v2 != 2)
    {
      result = *(result + 80);
      if (!result)
      {
LABEL_9:
        __break(0x5510u);
LABEL_10:
        __break(0x5516u);
        goto LABEL_11;
      }

      dispatch_release(result);
    }

    result = *(v1 + 88);
    if (result)
    {
      dispatch_release(result);
      return v1;
    }

    goto LABEL_9;
  }

LABEL_11:
  __break(0x550Au);
  return result;
}

uint64_t sub_10005F618(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_10005F594(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10005F62C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_10005F594(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

void sub_10005F674(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_47;
  }

  v6 = *(a2 + 56);
  if (v6 > 3)
  {
    goto LABEL_22;
  }

  v3 = a3;
  v7 = 0;
  do
  {
    if (v6 != 1)
    {
      goto LABEL_23;
    }

    v6 = *(a2 + 60);
    if (v6 > 1)
    {
      break;
    }

    if (v6)
    {
      goto LABEL_26;
    }

    v8 = (*(*a2 + 16))(a2);
    *(a2 + 56) = v8;
    if (v8 > 3)
    {
      break;
    }

    if (v8)
    {
      if (v8 == 2)
      {
        v6 = *(a2 + 44);
        if (v6 > 3)
        {
          break;
        }

        if (v6 == 2)
        {
          *(a2 + 56) = 1;
        }
      }

      v6 = *(a2 + 60);
      if (v6 > 1)
      {
        break;
      }

      if ((v6 & 1) == 0)
      {
        if (__OFADD__(v7++, 1))
        {
          __break(0x5500u);
          goto LABEL_47;
        }

        if (v7 >= *(a2 + 40))
        {
          sub_10005F37C(a2);
        }
      }
    }

    v6 = *(a2 + 56);
  }

  while (v6 < 4);
LABEL_22:
  while (1)
  {
    __break(0x550Au);
LABEL_23:
    if (!v6)
    {
      break;
    }

    v10 = *(a2 + 60);
    if (v10 <= 1)
    {
      if (v10)
      {
        break;
      }

      if (v6 != 2)
      {
        return;
      }

      sub_10005EF7C(2);
      v15 = atomic_load((a2 + 48));
      if (v16 == v15)
      {
        sub_1000E1D34();
      }

      *(a2 + 56) = 1;
      sub_10005EF7C(2);
      if (v17 && (v17 & 7) == 0)
      {

        sub_10005F8E4();
        return;
      }

      goto LABEL_47;
    }
  }

LABEL_26:
  v11 = *(a2 + 8);
  if (!v11 || (*(a2 + 8) & 7) != 0)
  {
    goto LABEL_47;
  }

  sub_10005C5C0(v11, a2);
  if ((v3 & 1) == 0)
  {
    v13 = *(a2 + 8);
    if (!v13 || (v13 & 7) != 0)
    {
LABEL_47:
      __break(0x5516u);
LABEL_48:
      __break(0x5510u);
      return;
    }

    sub_10005C7F8(v13, 0);
  }

  v14 = *(a1 + 88);
  if (!v14)
  {
    goto LABEL_48;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10005F8A8;
  block[3] = &unk_100115AD0;
  block[4] = a2;
  dispatch_async(v14, block);
}

uint64_t sub_10005F8A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if ((result & 7) != 0)
    {
      __break(0x5516u);
    }

    else
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void sub_10005F8E4(unint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    return;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_18;
  }

  v4 = sub_10007D6FC(*(a2 + 8));
  v5 = atomic_load((a2 + 48));
  if (v5 == a1)
  {
    v7 = *(a2 + 8);
    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_18;
    }

    sub_10005C240(v7, a2);
  }

  else
  {
    atomic_store(a1, (a2 + 48));
    v6 = *(a1 + 8);
    if (v6 >= 4)
    {
LABEL_20:
      __break(0x550Au);
      return;
    }

    *(a2 + 44) = v6;
  }

  v8 = *&v4 & 0x80000;
  if (v8)
  {
    goto LABEL_15;
  }

  v9 = *(a2 + 8);
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  sub_10005C7F8(v9, 1);
LABEL_15:
  v10 = *(a1 + 80);
  if (!v10)
  {
LABEL_19:
    __break(0x5510u);
    goto LABEL_20;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10005FA08;
  block[3] = &unk_100115AF0;
  block[4] = a1;
  block[5] = a2;
  v12 = v8 >> 19;
  dispatch_async(v10, block);
}

void sub_10005FA08(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 2)
  {
    __break(0x550Au);
  }

  else
  {
    sub_10005F674(*(a1 + 32), *(a1 + 40), v1 & 1);
  }
}

uint64_t sub_10005FA28(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    return result;
  }

  result = pthread_mutex_lock((result + 16));
  if ((a2 & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return result;
  }

  *(a2 + 60) = 1;
  v4 = *(a2 + 64);
  if (v4)
  {
    dispatch_semaphore_signal(v4);
  }

  return pthread_mutex_unlock((v2 + 16));
}

uint64_t sub_10005FAA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  if (!a2 || !a3)
  {
    return result;
  }

  result = pthread_mutex_lock((result + 16));
  if ((a2 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
    return result;
  }

  sub_10005F1C4(a2, a3);

  return pthread_mutex_unlock((v3 + 16));
}

uint64_t sub_10005FB2C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return result;
  }

  result = pthread_mutex_lock((result + 16));
  if ((a2 & 7) != 0)
  {
    goto LABEL_13;
  }

  v4 = *(a2 + 136);
  if (v4)
  {
    if ((v4 & 7) == 0)
    {
      sub_10005F234(*(a2 + 136), a2);
      v5 = *(v4 + 64);
      if (v5)
      {
        dispatch_semaphore_signal(v5);
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(0x5516u);
    return result;
  }

LABEL_9:

  return pthread_mutex_unlock((v2 + 16));
}

uint64_t sub_10005FBC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  if ((atomic_load_explicit(&qword_10012BC40, memory_order_acquire) & 1) == 0)
  {
    v17 = a5;
    v13 = a2;
    v14 = a4;
    v16 = a3;
    v15 = a1;
    sub_1000E230C();
    a4 = v14;
    v10 = v15;
    a2 = v13;
    a3 = v16;
    a5 = v17;
  }

  result = qword_10012BC38;
  if (qword_10012BC38)
  {
    v12 = (qword_10012BC38 & 7) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    __break(0x5516u);
LABEL_12:
    __break(0x550Au);
    return result;
  }

  if ((v10 + 32) >= 0x40)
  {
    goto LABEL_12;
  }

  return sub_10005FCA4(result, v10, a2, a3, a4, a5);
}

uint64_t sub_10005FC6C()
{
  if (qword_10012BC50 != -1)
  {
    sub_1000E2384();
  }

  return qword_10012BC48;
}

uint64_t sub_10005FCA4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_91;
  }

  v8 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_91;
  }

  v9 = a2;
  if ((a2 + 32) >= 0x40)
  {
    goto LABEL_92;
  }

  *(result + 360) = a2;
  if (a2 < 0x10)
  {
    if (__CFADD__(result, 24 * a2))
    {
      goto LABEL_90;
    }

    v10 = (result + 24 * a2);
    v11 = *v10;
    if ((*v10 & 7) != 0)
    {
      goto LABEL_30;
    }

    a2 = v10[1];
    if ((a2 & 7) != 0)
    {
      goto LABEL_30;
    }

    v7 = a5;
    v6 = a4;
    while (1)
    {
      if (v11 == a2)
      {
        goto LABEL_31;
      }

      if (!v11)
      {
        goto LABEL_91;
      }

      v14 = *(v8 + 392);
      if ((v14 & 7) != 0)
      {
        break;
      }

      v15 = *(v8 + 400);
      if ((v15 & 7) != 0)
      {
        break;
      }

      result = *v11;
      v16 = *(v8 + 392);
      if (v14 != v15)
      {
        v17 = *(v8 + 392);
        do
        {
          if (!v17)
          {
            goto LABEL_91;
          }

          if (*v17 == result)
          {
            goto LABEL_20;
          }

          if (v17 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_90;
          }

          v17 += 8;
          v16 += 8;
        }

        while (v17 != v15);
        v16 = *(v8 + 400);
      }

LABEL_20:
      if (v16 - v14 < 0 == v16 - v14 <= ~v14)
      {
        goto LABEL_90;
      }

      if (v15 == v16)
      {
        if (!result || (result & 7) != 0)
        {
          goto LABEL_91;
        }

        v18 = *(result + 8);
        if (!v18 || !a6 || v18 == a6)
        {
          result = (*(*result + 24))(result, v9, a3, v6, v7);
        }
      }

      if (v11 >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_90;
      }

      ++v11;
      a2 = v10[1];
      if ((a2 & 7) != 0)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      do
      {
LABEL_30:
        __break(0x5517u);
LABEL_31:
        *(v8 + 360) = -1;
        v19 = *(v8 + 392);
      }

      while ((v19 & 7) != 0);
      while (1)
      {
        v20 = *(v8 + 400);
        if ((v20 & 7) != 0)
        {
          goto LABEL_30;
        }

        if (v19 == v20)
        {
          break;
        }

        v21 = *v10;
        if ((*v10 & 7) != 0 || (a2 & 7) != 0)
        {
          goto LABEL_30;
        }

        if (!v19)
        {
          goto LABEL_91;
        }

        if (v21 != a2)
        {
          v22 = *v10;
          v23 = *v10;
          while (v23)
          {
            if (*v23 == *v19)
            {
              goto LABEL_45;
            }

            if (v23 >= 0xFFFFFFFFFFFFFFF8)
            {
              goto LABEL_90;
            }

            ++v23;
            v22 += 8;
            if (v23 == a2)
            {
              v22 = a2;
              goto LABEL_45;
            }
          }

          goto LABEL_91;
        }

        v22 = *v10;
LABEL_45:
        if ((v22 - v21) < 0 == v22 - v21 <= ~v21)
        {
          goto LABEL_90;
        }

        if (a2 != v22)
        {
          if ((v22 - v21) < 0 != v22 - v21 > ~v21 || v22 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_90;
          }

          result = sub_10005E4C8(v22 + 8, a2, v22);
          for (i = v10[1]; i != a2; i -= 8)
          {
            if (i <= 7)
            {
              goto LABEL_90;
            }
          }

          v10[1] = a2;
        }

        if (v19 >= 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_90;
        }

        v19 += 8;
      }

      v25 = *(v8 + 392);
      if (v19 != v25)
      {
        break;
      }

LABEL_59:
      *(v8 + 400) = v25;
      v26 = *(v8 + 368);
      if ((v26 & 7) == 0)
      {
        while (1)
        {
          v27 = *(v8 + 376);
          if ((v27 & 7) != 0)
          {
            goto LABEL_30;
          }

          if (v26 == v27)
          {
            break;
          }

          v28 = *v10;
          if ((*v10 & 7) != 0)
          {
            goto LABEL_30;
          }

          v29 = v10[1];
          if ((v29 & 7) != 0)
          {
            goto LABEL_30;
          }

          if (!v26)
          {
            goto LABEL_91;
          }

          if (v28 != v29)
          {
            v30 = *v10;
            v31 = *v10;
            while (v31)
            {
              if (*v31 == *v26)
              {
                goto LABEL_73;
              }

              if (v31 >= 0xFFFFFFFFFFFFFFF8)
              {
                goto LABEL_90;
              }

              ++v31;
              v30 += 8;
              if (v31 == v29)
              {
                v30 = v10[1];
                goto LABEL_73;
              }
            }

LABEL_91:
            __break(0x5516u);
LABEL_92:
            __break(0x550Au);
            goto LABEL_93;
          }

          v30 = *v10;
LABEL_73:
          if (v30 - v28 < 0 == v30 - v28 <= ~v28)
          {
            goto LABEL_90;
          }

          if (v29 == v30)
          {
            result = sub_100060254(v10, v26);
          }

          if (v26 >= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_90;
          }

          v26 += 8;
        }

        v32 = *(v8 + 368);
        if (v26 == v32)
        {
LABEL_81:
          *(v8 + 376) = v32;
          if (!v9 && v7 == 48)
          {
            if (!v6 || (v6 & 7) != 0)
            {
              goto LABEL_91;
            }

            v33 = *v6;
            if (*v6 > 0x1Fu)
            {
              goto LABEL_92;
            }

            if (v33 <= 0xD && ((1 << v33) & 0x3AFE) != 0)
            {
              sub_1000604E8(v8, v6);
            }
          }

          return 1;
        }

        while (v27 > 7)
        {
          v27 -= 8;
          if (v27 == v32)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_90;
      }
    }

    while (v20 > 7)
    {
      v20 -= 8;
      if (v20 == v25)
      {
        goto LABEL_59;
      }
    }

LABEL_90:
    __break(0x5513u);
    goto LABEL_91;
  }

LABEL_93:
  __break(0x5512u);
  return result;
}

BOOL sub_100060128(_BOOL8 result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v11 = a2;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_26;
  }

  if (a3 + 32 >= 0x40)
  {
    goto LABEL_28;
  }

  if (a3 < 0x10)
  {
    if (__CFADD__(result, 24 * a3))
    {
      goto LABEL_25;
    }

    v4 = (result + 24 * a3);
    v5 = *v4;
    if ((*v4 & 7) != 0)
    {
      goto LABEL_27;
    }

    v6 = v4[1];
    if ((v6 & 7) != 0)
    {
      goto LABEL_27;
    }

    v7 = *v4;
    if (v5 != v6)
    {
      v8 = *v4;
      while (v8)
      {
        if (*v8 == a2)
        {
          goto LABEL_15;
        }

        if (v8 >= 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_25;
        }

        ++v8;
        ++v7;
        if (v8 == v6)
        {
          v7 = v4[1];
          goto LABEL_15;
        }
      }

      goto LABEL_26;
    }

LABEL_15:
    if ((v7 - v5) < 0 == v7 - v5 <= ~v5)
    {
LABEL_25:
      __break(0x5513u);
    }

    else
    {
      if (v6 != v7)
      {
        return v6 == v7;
      }

      if (a2 && (a2 & 7) == 0)
      {
        *(a2 + 8) = a4;
        v9 = *(result + 360);
        if (((v9 + 32) | (a3 + 32)) < 0x40)
        {
          if (v9 == a3)
          {
            v10 = (result + 368);
          }

          else
          {
            v10 = (result + 24 * a3);
          }

          sub_100060254(v10, &v11);
          return v6 == v7;
        }

LABEL_28:
        __break(0x550Au);
        goto LABEL_29;
      }
    }

LABEL_26:
    __break(0x5516u);
LABEL_27:
    __break(0x5517u);
    goto LABEL_28;
  }

LABEL_29:
  __break(0x5512u);
  return result;
}

uint64_t sub_100060254(uint64_t *a1, void *a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_18:
    __break(0x5516u);
    goto LABEL_19;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v8;
    v15 = v8;
    v9 = (v5 - *a1) >> 3;
    v10 = v9 + 1;
    if (v9 == -1)
    {
LABEL_20:
      __break(0x5500u);
LABEL_21:
      sub_1000E1E08();
    }

    if (v10 >> 61)
    {
      goto LABEL_21;
    }

    v11 = v4 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v10)
    {
      v12 = v9 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    sub_100060620(&v14, v13, v9, a1);
    if (v15 && (v15 & 7) == 0)
    {
      *v15 = *a2;
      if (v15 < 0xFFFFFFFFFFFFFFF8)
      {
        *&v15 = v15 + 8;
        sub_10002597C(a1, &v14);
        v7 = a1[1];
        result = sub_100025B50(&v14);
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  result = sub_1000605D8(a1, a2);
  if (v5 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_19:
    __break(0x5513u);
    goto LABEL_20;
  }

  v7 = v5 + 8;
LABEL_17:
  a1[1] = v7;
  return result;
}

_BYTE *sub_100060370(_BYTE *result, uint64_t a2, unsigned int a3)
{
  v11 = a2;
  if (!result || (result & 7) != 0)
  {
    goto LABEL_29;
  }

  if (a3 + 32 >= 0x40)
  {
    goto LABEL_31;
  }

  if (a3 < 0x10)
  {
    if (__CFADD__(result, 24 * a3))
    {
      goto LABEL_28;
    }

    v3 = &result[24 * a3];
    v4 = *v3;
    if ((*v3 & 7) != 0)
    {
      goto LABEL_30;
    }

    v5 = v3[1];
    if ((v5 & 7) != 0)
    {
      goto LABEL_30;
    }

    v6 = *v3;
    if (v4 != v5)
    {
      v7 = *v3;
      while (v7)
      {
        if (*v7 == a2)
        {
          goto LABEL_15;
        }

        if (v7 >= 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_28;
        }

        ++v7;
        v6 += 8;
        if (v7 == v5)
        {
          v6 = v3[1];
          goto LABEL_15;
        }
      }

      goto LABEL_29;
    }

LABEL_15:
    if ((v6 - v4) < 0 == v6 - v4 <= ~v4)
    {
LABEL_28:
      __break(0x5513u);
LABEL_29:
      __break(0x5516u);
LABEL_30:
      __break(0x5517u);
      goto LABEL_31;
    }

    if (v5 == v6)
    {
      return (v5 != v6);
    }

    v8 = *(result + 90);
    if (((v8 + 32) | (a3 + 32)) < 0x40)
    {
      if (v8 == a3)
      {
        sub_100060254(result + 49, &v11);
        return (v5 != v6);
      }

      if ((v6 - v4) < 0 == v6 - v4 > ~v4 && v6 < 0xFFFFFFFFFFFFFFF8)
      {
        result = sub_10005E4C8(v6 + 8, v3[1], v6);
        for (i = v3[1]; i != v9; i -= 8)
        {
          if (i <= 7)
          {
            goto LABEL_28;
          }
        }

        v3[1] = v9;
        return (v5 != v6);
      }

      goto LABEL_28;
    }

LABEL_31:
    __break(0x550Au);
  }

  __break(0x5512u);
  return result;
}

uint64_t sub_1000604E8(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_19:
    __break(0x5516u);
LABEL_20:
    __break(0x5517u);
    goto LABEL_21;
  }

  v4 = 0;
  v5 = ~result;
  while (((*(a2 + 20) >> v4) & 1) == 0)
  {
LABEL_17:
    if (++v4 == 15)
    {
      return result;
    }
  }

  if (24 * v4 <= v5)
  {
    v6 = (v2 + 24 * v4);
    v7 = *v6;
    if ((*v6 & 7) == 0)
    {
      while (1)
      {
        v8 = v6[1];
        if ((v8 & 7) != 0)
        {
          break;
        }

        if (v7 == v8)
        {
          goto LABEL_17;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        result = *v7;
        if (*v7)
        {
          v9 = (*v7 & 7) == 0;
          *v7;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        result = (*(*result + 16))(result, a2);
        if (v7 >= 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_21;
        }

        ++v7;
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000605D8(uint64_t result, void *a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_8;
  }

  v2 = *(result + 8);
  if (v2 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_9:
    __break(0x5513u);
    return result;
  }

  if (!v2 || (v2 & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    goto LABEL_9;
  }

  *v2 = *a2;
  *(result + 8) = v2 + 8;
  return result;
}

void *sub_100060620(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((result & 7) == 0)
    {
      result[3] = 0;
      result[4] = a4;
      if (a2)
      {
        sub_1000606D4(a4, a2);
      }

      result = 0;
      *v4 = 0;
      if (!((a3 + 0x1000000000000000) >> 61))
      {
        v4[1] = 8 * a3;
        v4[2] = 8 * a3;
        v4[3] = 0;
        return v4;
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

void sub_1000606D4(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (!(a2 >> 61))
    {

      operator new();
    }
  }

  else
  {
    __break(0x5516u);
  }

  sub_1000E1DF4();
}

void sub_10006078C()
{
  dispatch_semaphore_create(0);
  memset(__p, 170, sizeof(__p));
  sub_100025D20(__p, "CIapIncomingProcessThread");
  sub_100060870();
}

uint64_t sub_100060938(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 24));
    v2 = *v1;
    pthread_mutex_unlock((v1 + 3));
    return v2;
  }

  return result;
}

uint64_t sub_100060980(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    pthread_mutex_lock((result + 56));
    *(v3 + 320) = a3;
    *(v3 + 48) = a2;
    pthread_mutex_unlock((v3 + 56));
    return 1;
  }

  return result;
}

uint64_t sub_1000609DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      sub_10005D360(result);
      *v2 = off_100115B80;
      *(v2 + 36) = 0;
      *(v2 + 40) = a2;
      *(v2 + 48) = 0;
      *(v2 + 312) = 0;
      *(v2 + 320) = 0u;
      *(v2 + 336) = 0u;
      *(v2 + 364) = 0;
      if (qword_10012B3B0 == -1)
      {
        keyExistsAndHasValidFormat = 0;
        CFPreferencesAppSynchronize(@"com.apple.iapd");
        AppIntegerValue = CFPreferencesGetAppIntegerValue(@"StackShotsDelayMs", @"com.apple.iapd", &keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat)
        {
          v5 = AppIntegerValue;
        }

        else
        {
          v5 = 0;
        }

        qword_10012B3B0 = v5;
      }

      result = pthread_mutex_init((v2 + 56), 0);
      v6 = 0;
      v7 = 0;
      while (v6 <= ~(v2 + 120))
      {
        result = pthread_mutex_init((v2 + v6 + 120), 0);
        if (v7 > ~(v2 + 352))
        {
          break;
        }

        *(v2 + v7 + 352) = *"#";
        v7 += 4;
        v6 += 64;
        if (v7 == 12)
        {
          sub_10005D3C0(v2, 3u);
          return v2;
        }
      }

      __break(0x5513u);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100060B34(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      *result = off_100115B80;
      *(result + 312) = 1;
      *(result + 365) = 1;
      if (*(result + 336) == *(result + 328))
      {
LABEL_9:
        v4 = 0;
        *(v1 + 36) = 0;
        while (v4 <= ~(v1 + 120))
        {
          result = pthread_mutex_destroy((v1 + v4 + 120));
          v4 += 64;
          if (v4 == 192)
          {
            pthread_mutex_destroy((v1 + 56));
            v5 = (v1 + 328);
            sub_1000632D4(&v5);
            return sub_10005D4D8(v1);
          }
        }

        __break(0x5513u);
      }

      else
      {
        v2 = 0;
        while (1)
        {
          result = sub_100023B20((v1 + 328), v2);
          if (*result)
          {
            result = sub_100060C50(v1, v2);
          }

          v3 = v2 + 1;
          if (v2 == -1)
          {
            break;
          }

          ++v2;
          if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 336) - *(v1 + 328)) >> 3) <= v3)
          {
            goto LABEL_9;
          }
        }
      }

      __break(0x5500u);
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100060C50(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  pthread_mutex_lock((result + 56));
  if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 336) - *(v2 + 328)) >> 3) <= a2)
  {
    sub_1000E1D34();
  }

  if (!*sub_100023B20((v2 + 328), a2))
  {
    sub_1000E1D34();
  }

  result = *sub_100023B20((v2 + 328), a2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  sub_1000CB774(result);
  result = *sub_100023B20((v2 + 328), a2);
  if (result)
  {
    if ((result & 7) == 0)
    {
      sub_1000CB69C(result);
      operator delete();
    }

LABEL_15:
    __break(0x5516u);
    return result;
  }

  v4 = sub_100023B20((v2 + 328), a2);
  *v4 = 0;
  v4[1] = 0;
  *(v4 + 4) = -1;

  return pthread_mutex_unlock((v2 + 56));
}

uint64_t sub_100060D4C(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    return sub_100060B34(result);
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100060D60(uint64_t result)
{
  if (result && (result & 7) == 0)
  {
    sub_100060B34(result);

    operator delete();
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_100060DA8(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_59;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_59;
  }

  result = sub_1000B5678(a2);
  if (result >= 8)
  {
    goto LABEL_58;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v10 = *(v3 + 320);
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_59;
      }

      v11 = sub_10005B2B8(a2);
      sub_100094870(v10, v11);
      return 1;
    }

    if (result != 4)
    {
      if (result == 5)
      {
        if (*(a2 + 28) >= 0x10000u)
        {
LABEL_60:
          __break(0x5507u);
LABEL_61:
          __break(0x5513u);
          goto LABEL_62;
        }

        v6 = *(v3 + 312);
        if (v6 <= 1)
        {
          v7 = *(a2 + 32);
          if (v6)
          {
            v8 = 0;
            if (!v7)
            {
              return v8;
            }

LABEL_51:
            operator delete[]();
          }

          result = *(a2 + 24);
          if ((result + 32) <= 0x3F)
          {
            sub_10005FBC8(result, *(a2 + 28), *(a2 + 32), *(a2 + 40), *(a2 + 48));
            v8 = 1;
            if (v7)
            {
              goto LABEL_51;
            }

            return v8;
          }
        }

        goto LABEL_58;
      }

      sub_1000DDEEC(0, 4, "%s:%d CIapIncomingProcess::HandleMessage: unknown type 0x%08x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 484, result);
      return 0;
    }

    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    if ((v12 & 0x34CC) == 0x400)
    {
      if (*(a2 + 40))
      {
        goto LABEL_22;
      }
    }

    else if ((v12 & 0x30CC) != 0)
    {
LABEL_22:
      result = *(v3 + 320);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_59;
      }

      v14 = *(a2 + 40);
      v15 = *(v3 + 48);
      v16 = *(a2 + 48);
      (*(*result + 184))(result);
      return 1;
    }

    result = *(v3 + 320);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_59;
    }

    v20 = *(v3 + 48);
    v21 = *(a2 + 48);
    (*(*result + 200))(result);
    return 1;
  }

  if (result)
  {
    v9 = *(v3 + 312);
    if (v9 <= 1)
    {
      if (v9)
      {
        return 0;
      }

      sub_10006124C(v3, a2);
      return 1;
    }

LABEL_58:
    __break(0x550Au);
    goto LABEL_59;
  }

  v17 = *(v3 + 312);
  if (v17 > 1)
  {
    goto LABEL_58;
  }

  result = sub_10005B2B8(a2);
  v18 = result;
  if (v17)
  {
    if (!result || (result & 7) != 0)
    {
      goto LABEL_59;
    }

    v19 = sub_1000B5828(result);
    if (v19 == 1281)
    {
      result = sub_10005B2B8(v18);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_59;
      }

      result = *result;
      if (result)
      {
        if ((result & 7) != 0)
        {
LABEL_59:
          __break(0x5516u);
          goto LABEL_60;
        }

        (*(*result + 8))(result);
      }
    }

    else if (v19 == 1280)
    {
      result = sub_10005B2B8(v18);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_59;
      }

      sub_1000B9034(*result);
    }

    return 0;
  }

  result = sub_100061110(v3, result);
  if (a3 > 3)
  {
    goto LABEL_58;
  }

  if (__CFADD__(v3 + 120, a3 << 6))
  {
    goto LABEL_61;
  }

  v22 = (v3 + 120 + (a3 << 6));
  result = pthread_mutex_lock(v22);
  v23 = v3 + 352;
  if (__CFADD__(v3 + 352, 4 * a3))
  {
    goto LABEL_61;
  }

  v24 = *(v23 + 4 * a3);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_62:
    __break(0x5500u);
    goto LABEL_63;
  }

  *(v23 + 4 * a3) = v26;
  if (a3 != 3)
  {
    if ((v26 - 1) < *"#")
    {
      pthread_mutex_unlock(v22);
      sub_100061194(v3);
      return 1;
    }

    __break(0x5518u);
    goto LABEL_58;
  }

LABEL_63:
  __break(0x5512u);
  return result;
}

uint64_t sub_100061110(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = a1;
  if ((a1 & 7) != 0)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
    __break(0x5518u);
    goto LABEL_12;
  }

  if ((a2 & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
LABEL_13:
    sub_1000E2398(a1);
  }

  LODWORD(a1) = sub_1000B5828(a2);
  if (a1 != 1281)
  {
    if (a1 != 1280)
    {
      goto LABEL_13;
    }

    a1 = sub_10005B2B8(a2);
    if (a1 && (a1 & 7) == 0)
    {
      sub_1000614C0(v2, *a1);
      return 1;
    }

    goto LABEL_12;
  }

  return 1;
}

uint64_t sub_100061194(uint64_t result)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = *(result + 320);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_16;
  }

  result = sub_1000931A4(result);
  if (result)
  {
    v3 = result;
    result = *(v1 + 320);
    if (!result || (result & 7) != 0 || (result = sub_100093114(result, v3, 0), (v3 & 7) != 0))
    {
LABEL_16:
      __break(0x5516u);
      return result;
    }

    v4 = *(*v3 + 40);

    return v4(v3, 1);
  }

  return result;
}

uint64_t sub_10006124C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  v3 = sub_1000B5A9C(a2);
  pthread_mutex_lock((v2 + 56));
  v4 = sub_100061414(v2, v3);
  if (v4 == -1)
  {
    v6 = 0;
    v5 = -1;
  }

  else
  {
    result = sub_100023B20((v2 + 328), v4);
    v5 = *(result + 16);
    if (v5 + 32 >= 0x40)
    {
      goto LABEL_26;
    }

    v6 = sub_100023B20((v2 + 328), v4)[1];
  }

  result = pthread_mutex_unlock((v2 + 56));
  v7 = *(v2 + 312);
  if (v7 < 2)
  {
    if (v4 == -1 || (v7 & 1) != 0)
    {
      return 1;
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    if ((v6 & 7) == 0)
    {
      sub_10005BB24(v6, v5);
      result = *(v2 + 320);
      if (result)
      {
        if ((result & 7) == 0)
        {
          result = sub_100092790(result, v6, v5);
          if (result)
          {
            if ((result & 7) == 0)
            {
              (*(*result + 80))(result, 32, v4, 0);
              sub_10005BB6C(v6, v5);
              return 1;
            }

            goto LABEL_25;
          }

          sub_10005BB6C(v6, v5);
LABEL_18:
          if (v5 != -1 || (result = *(v2 + 320)) == 0 || v6)
          {
            sub_1000DDEEC(0, 4, "Lingo Object does not exist for handle=%hhx lingo=%xh\n", v6, v5);
            return 1;
          }

          if ((result & 7) == 0)
          {
            (*(*result + 48))(result, 32, v4, 0, 0);
            return 1;
          }
        }
      }
    }

LABEL_25:
    __break(0x5516u);
  }

LABEL_26:
  __break(0x550Au);
  return result;
}

uint64_t sub_100061414(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0))
  {
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (*(result + 336) != *(result + 328))
  {
    v4 = 0;
    LODWORD(v5) = -1;
    while (1)
    {
      result = sub_100023B20((v2 + 328), v4);
      v6 = v4 + 1;
      if (v4 == -1)
      {
        break;
      }

      if (*result == a2)
      {
        v5 = v4;
      }

      else
      {
        v5 = v5;
      }

      ++v4;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 336) - *(v2 + 328)) >> 3) <= v6)
      {
        return v5;
      }
    }

    __break(0x5500u);
    goto LABEL_14;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000614C0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_187;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_187;
  }

  v4 = *(result + 48);
  if (!v4)
  {
    goto LABEL_10;
  }

  result = *(result + 320);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_187;
  }

  if (!sub_100094BFC(result, v4))
  {
    goto LABEL_10;
  }

  result = *(v2 + 48);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_187;
  }

  result = sub_10005ACA0(result);
  if (result)
  {
LABEL_10:
    v5 = 89;
    if (!a2)
    {
      return v5;
    }

LABEL_11:
    sub_1000B9034(a2);
    return v5;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_187;
  }

  v6 = *(a2 + 64);
  if ((v6 + 32) >= 0x40)
  {
    goto LABEL_190;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 126);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 1;
  if (qword_10012B3B0 < 1)
  {
LABEL_20:
    result = pthread_once(&stru_10012B6E8, sub_1000CA2C8);
    if (dword_10012B6D8[0])
    {
      if (!v7 || (v7 & 7) != 0)
      {
        goto LABEL_187;
      }

      result = (*(*v7 + 208))(v7);
      if (result >= 5)
      {
        goto LABEL_188;
      }

      if (~qword_10012BC58 < 8 * result)
      {
        goto LABEL_189;
      }

      if (!qword_10012BC58[result])
      {
        pthread_mutex_lock(&stru_10012B3B8);
        result = (*(*v7 + 208))(v7);
        if (result > 4)
        {
          goto LABEL_188;
        }

        if (~qword_10012BC58 < 8 * result)
        {
          goto LABEL_189;
        }

        if (!qword_10012BC58[result])
        {
          sub_1000CA360(v7, 0, 0);
          v11 = v10;
          result = (*(*v7 + 208))(v7);
          if (result > 4)
          {
            goto LABEL_188;
          }

          if (~qword_10012BC58 < 8 * result)
          {
            goto LABEL_189;
          }

          qword_10012BC58[result] = v11;
        }

        pthread_mutex_unlock(&stru_10012B3B8);
      }

      result = (*(*v7 + 208))(v7);
      if (result > 4)
      {
        goto LABEL_188;
      }

      if (~qword_10012BC80 < 8 * result)
      {
        goto LABEL_189;
      }

      if (!qword_10012BC80[result])
      {
        pthread_mutex_lock(&stru_10012B3F8);
        result = (*(*v7 + 208))(v7);
        if (result > 4)
        {
          goto LABEL_188;
        }

        if (~qword_10012BC80 < 8 * result)
        {
          goto LABEL_189;
        }

        if (!qword_10012BC80[result])
        {
          sub_1000CA360(v7, 0, 0);
          v13 = v12;
          result = (*(*v7 + 208))(v7);
          if (result > 4)
          {
            goto LABEL_188;
          }

          if (~qword_10012BC80 < 8 * result)
          {
            goto LABEL_189;
          }

          qword_10012BC80[result] = v13;
        }

        pthread_mutex_unlock(&stru_10012B3F8);
      }

      result = sub_1000CA714();
      v14 = result;
      if (*(a2 + 148))
      {
        result = (*(*v7 + 208))(v7);
        if (result >= 5)
        {
          goto LABEL_188;
        }

        if (~qword_10012BC58 < 8 * result)
        {
          goto LABEL_189;
        }

        result = qword_10012BC58[result];
        if (!result || (result & 7) != 0)
        {
          goto LABEL_187;
        }

        v15 = *(a2 + 148);
        v16 = v14 - v15;
        if (v14 < v15)
        {
          goto LABEL_191;
        }

        v17 = *(result + 76);
        if (v17 >= 8)
        {
          goto LABEL_190;
        }

        if (v17 >= 4)
        {
          goto LABEL_188;
        }

        if (~dword_10012B6D8 < 4 * v17)
        {
          goto LABEL_189;
        }

        if (dword_10012B6D8[v17])
        {
          result = (*(*result + 104))(result, v16, 0, 0);
        }
      }

      if (*(a2 + 144))
      {
        result = (*(*v7 + 208))(v7);
        if (result > 4)
        {
          goto LABEL_188;
        }

        if (~qword_10012BC80 < 8 * result)
        {
          goto LABEL_189;
        }

        result = qword_10012BC80[result];
        if (!result || (result & 7) != 0)
        {
          goto LABEL_187;
        }

        v18 = *(a2 + 144);
        v19 = v14 - v18;
        if (v14 >= v18)
        {
          v20 = *(result + 76);
          if (v20 >= 8)
          {
            goto LABEL_190;
          }

          if (v20 < 4)
          {
            if (~dword_10012B6D8 >= 4 * v20)
            {
              if (dword_10012B6D8[v20])
              {
                result = (*(*result + 104))(result, v19, 0, 0);
              }

              goto LABEL_65;
            }

LABEL_189:
            __break(0x5513u);
            goto LABEL_190;
          }

LABEL_188:
          __break(0x5512u);
          goto LABEL_189;
        }

LABEL_191:
        __break(0x5515u);
        goto LABEL_192;
      }
    }

LABEL_65:
    if (!*(v2 + 36))
    {
      v21 = *(v2 + 320);
      if (!v21 || (v21 & 7) != 0)
      {
        goto LABEL_187;
      }

      *(v2 + 36) = dword_10012CE80;
    }

    if (v6 >= 15)
    {
      goto LABEL_186;
    }

    result = *(v2 + 320);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_187;
    }

    sub_1000C8C98(result, v7);
    v22 = 1 << v6;
    if (v6 < 0)
    {
      v22 = 0;
    }

    if ((*(v2 + 36) & v22) == 0)
    {
      v5 = 22;
      goto LABEL_176;
    }

    result = sub_10004B1AC();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_187;
    }

    if ((*(*result + 744))(result))
    {
      goto LABEL_88;
    }

    result = sub_10004B1AC();
    if (!result || (result & 7) != 0)
    {
      goto LABEL_187;
    }

    result = (*(*result + 752))(result);
    if (result)
    {
      if (!v7 || (v7 & 7) != 0)
      {
        goto LABEL_187;
      }

      if ((*(*v7 + 208))(v7) == 1)
      {
LABEL_88:
        result = *(v2 + 48);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_187;
        }

        if ((sub_10005BF90(result) & 1) == 0)
        {
          result = *(v2 + 48);
          if (!result)
          {
            goto LABEL_187;
          }

          if ((result & 7) != 0)
          {
            goto LABEL_187;
          }

          sub_10005BB24(result, v6);
          result = *(v2 + 320);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_187;
          }

          v26 = sub_100092790(result, *(v2 + 48), v6);
          if (v26)
          {
            goto LABEL_112;
          }

          if (v6)
          {
            goto LABEL_127;
          }

          result = *(v2 + 320);
          if (!result)
          {
            goto LABEL_187;
          }

          if ((result & 7) != 0)
          {
            goto LABEL_187;
          }

          sub_1000C96EC(result, *(v2 + 48), 1u);
          result = *(v2 + 320);
          if (!result)
          {
            goto LABEL_187;
          }

          if ((result & 7) != 0)
          {
            goto LABEL_187;
          }

          sub_1000C9788(result, *(v2 + 48), 1u);
          result = *(v2 + 320);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_187;
          }

          v26 = sub_100092790(result, *(v2 + 48), 0);
          if (v26)
          {
LABEL_112:
            v27 = v26;
            result = sub_1000C4254();
            if (!result || (result & 7) != 0)
            {
              goto LABEL_187;
            }

            result = sub_100094598(result, v7);
            if (!v6 && (result & 1) == 0 && (v8 == 19 || v8 == 1))
            {
              if ((v27 & 7) != 0)
              {
                goto LABEL_187;
              }

              result = sub_1000892B8(v27);
            }

            if ((v27 & 7) != 0)
            {
              goto LABEL_187;
            }

            v5 = (*(*v27 + 72))(v27, a2);
            a2 = 0;
          }

          else
          {
LABEL_127:
            sub_1000DDEEC(0, 4, "%s:%d NO Lingo object, cannot process lingo(%xh) cmd(%xh)\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapIncomingProcess.cpp", 756, v6, v8);
            v5 = 2;
          }

          result = *(v2 + 48);
          if (result && (result & 7) == 0)
          {
            v28 = v6;
LABEL_175:
            sub_10005BB6C(result, v28);
            goto LABEL_176;
          }

          goto LABEL_187;
        }

        v23 = 0;
LABEL_92:
        v24 = 1;
        if (v6 > 8)
        {
          if (v6 <= 11)
          {
            if (v6 == 9)
            {
              v24 = (v8 - 139) < 0xFFF5u;
              goto LABEL_140;
            }

            if (v6 != 11)
            {
              goto LABEL_140;
            }
          }

          else
          {
            if (v6 == 12)
            {
              v24 = v8 > 0x12;
              goto LABEL_140;
            }

            if (v6 != 13)
            {
              if ((v8 & 0x80) != 0 || v8 == 9 || v8 == 7)
              {
                result = sub_1000C4254();
                if (!result || (result & 7) != 0)
                {
                  goto LABEL_187;
                }

                result = sub_100094598(result, v7);
                if ((result & 1) == 0 && *(a2 + 128) >= 2u)
                {
                  v25 = *(a2 + 24);
                  if (!v25)
                  {
                    goto LABEL_187;
                  }

                  *(a2 + 68) = bswap32(*v25) >> 16;
                }

                v24 = 0;
                *(a2 + 132) |= 2u;
              }

              goto LABEL_140;
            }
          }

LABEL_136:
          v24 = 0;
          goto LABEL_140;
        }

        if (v6 > 2)
        {
          if (v6 == 3)
          {
            goto LABEL_136;
          }

          if (v6 != 4)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (!v6)
          {
            v24 = 0;
            goto LABEL_140;
          }

          if (v6 != 2)
          {
LABEL_140:
            result = *(v2 + 320);
            if (result)
            {
              if ((result & 7) == 0)
              {
                v29 = *(a2 + 8);
                v30 = sub_100092C08(result, v7);
                result = *(v2 + 48);
                if (result)
                {
                  if ((result & 7) == 0)
                  {
                    if ((sub_10005BF90(result) & 1) == 0 && !v8 && v6 == 2 && !v30 && sub_100068364(v29))
                    {
                      v31 = *(a2 + 68);
                      sub_1000B748C();
                    }

                    result = *(v2 + 48);
                    if (result)
                    {
                      if ((result & 7) == 0)
                      {
                        sub_10005BF90(result);
                        if (v24)
                        {
                          v5 = 22;
                        }

                        else
                        {
                          v32 = *(a2 + 68);
                          sub_1000B7854(a2);
                          v5 = sub_1000B6DB4(*(v2 + 48), a2, 0, 1u);
                          a2 = 0;
                        }

                        if (v23 != 3)
                        {
LABEL_176:
                          *(v37 + 24) = 0;
                          _Block_object_dispose(&v36, 8);
                          if (!a2)
                          {
                            return v5;
                          }

                          goto LABEL_11;
                        }

                        result = *(v2 + 320);
                        if (result && (result & 7) == 0)
                        {
                          if ((sub_100092F68(result, v7) & 3) != 1)
                          {
                            goto LABEL_176;
                          }

                          result = *(v2 + 48);
                          if (result)
                          {
                            if ((result & 7) == 0)
                            {
                              sub_10005BB24(result, 0);
                              result = *(v2 + 320);
                              if (result)
                              {
                                if ((result & 7) == 0)
                                {
                                  result = sub_100092790(result, *(v2 + 48), 0);
                                  if (result)
                                  {
LABEL_171:
                                    if ((result & 7) == 0)
                                    {
                                      v5 = sub_100079038(result, v7);
                                      result = *(v2 + 48);
                                      if (result)
                                      {
                                        if ((result & 7) == 0)
                                        {
                                          v28 = 0;
                                          goto LABEL_175;
                                        }
                                      }
                                    }

                                    goto LABEL_187;
                                  }

                                  result = *(v2 + 320);
                                  if (result)
                                  {
                                    if ((result & 7) == 0)
                                    {
                                      sub_1000C96EC(result, *(v2 + 48), 1u);
                                      result = *(v2 + 320);
                                      if (result)
                                      {
                                        if ((result & 7) == 0)
                                        {
                                          sub_1000C9788(result, *(v2 + 48), 1u);
                                          result = *(v2 + 320);
                                          if (result)
                                          {
                                            if ((result & 7) == 0)
                                            {
                                              result = sub_100092790(result, *(v2 + 48), 0);
                                              if (result)
                                              {
                                                goto LABEL_171;
                                              }

LABEL_186:
                                              __break(0x5518u);
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
            }

LABEL_187:
            __break(0x5516u);
            goto LABEL_188;
          }
        }

        v24 = 0;
        goto LABEL_140;
      }
    }

    result = *(v2 + 320);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_187;
    }

    result = sub_1000594D4(result, v7, v6, v8);
    if (result <= 7)
    {
      v23 = result;
      if (result)
      {
        goto LABEL_92;
      }

      goto LABEL_88;
    }

LABEL_190:
    __break(0x550Au);
    goto LABEL_191;
  }

  if (!is_mul_ok(qword_10012B3B0, 0xF4240uLL))
  {
LABEL_192:
    __break(0x550Cu);
    goto LABEL_193;
  }

  v9 = dispatch_time(0, 1000000 * qword_10012B3B0);
  result = dispatch_get_global_queue(0, 0);
  if (result)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000621D8;
    block[3] = &unk_100115BA0;
    block[4] = &v36;
    v34 = v6;
    v35 = v8;
    dispatch_after(v9, result, block);
    goto LABEL_20;
  }

LABEL_193:
  __break(0x5510u);
  return result;
}