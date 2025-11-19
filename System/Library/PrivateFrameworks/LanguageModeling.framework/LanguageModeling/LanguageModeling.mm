void sub_1AE5C93A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) - *(a1 + 176) <= 0xFFFFFFFEuLL && a3 >= 1)
  {
    v6 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    v88 = (a1 + 296);
    do
    {
      v8 = *(a1 + 312);
      v10 = *(a1 + 184);
      v9 = *(a1 + 192);
      if (v10 >= v9)
      {
        v12 = *(a1 + 176);
        v13 = (v10 - v12);
        v14 = v10 - v12 + 1;
        if (v14 < 0)
        {
          sub_1AE5CBB70();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = v10 - v12;
        *v13 = *(a2 + v6);
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        *(a1 + 176) = 0;
        *(a1 + 184) = v13 + 1;
        *(a1 + 192) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = *(a2 + v6);
        v11 = v10 + 1;
      }

      *(a1 + 184) = v11;
      v18 = *(a1 + 176);
      v19 = *(a1 + 312);
      v20 = v19 + 1;
      *(a1 + 312) = v19 + 1;
      v21 = *(v18 + v19);
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      v22 = v11 - v18;
      if (v20 == v11 - v18)
      {
        goto LABEL_24;
      }

      if (v21 < 0xE0)
      {
        if (v21 < 0xC2)
        {
          goto LABEL_24;
        }

        v43 = v21 & 0x1F;
      }

      else
      {
        if (v21 > 0xEF)
        {
          if (v21 > 0xF4)
          {
            goto LABEL_24;
          }

          v20 = *(v18 + v20);
          if (((byte_1AE7A3ED1[v20 >> 4] >> (v21 + 16)) & 1) == 0)
          {
            goto LABEL_24;
          }

          v58 = v19 + 2;
          *(a1 + 312) = v19 + 2;
          if (v19 + 2 == v22)
          {
            goto LABEL_24;
          }

          v42 = *(v18 + v58) ^ 0x80;
          if (v42 > 0x3F)
          {
            goto LABEL_24;
          }

          v41 = v20 & 0x3F | ((v21 - 240) << 6);
          LODWORD(v20) = v58;
        }

        else
        {
          v41 = v21 & 0xF;
          if (((a00000000000000[v21 & 0xF] >> (*(v18 + v20) >> 5)) & 1) == 0)
          {
            goto LABEL_24;
          }

          v42 = *(v18 + v20) & 0x3F;
        }

        LODWORD(v20) = v20 + 1;
        *(a1 + 312) = v20;
        if (v20 == v22)
        {
          goto LABEL_24;
        }

        v43 = v42 | (v41 << 6);
      }

      v56 = *(v18 + v20) ^ 0x80;
      if (v56 <= 0x3F)
      {
        v21 = v56 | (v43 << 6);
        *(a1 + 312) = v20 + 1;
        goto LABEL_25;
      }

LABEL_24:
      v21 = -1;
LABEL_25:
      v24 = *(a1 + 256);
      v23 = *(a1 + 264);
      v25 = v23 - v24;
      if (v23 == v24)
      {
        v27 = 0;
        if (v21 < 0)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      v26 = *(a1 + 264);
      do
      {
        if (v26 == v24)
        {
          v27 = 0;
          if (v21 < 0)
          {
            goto LABEL_35;
          }

LABEL_30:
          v29 = v8;
          if (!v21)
          {
            v35 = 0;
            v34 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v30 = 1;
            goto LABEL_56;
          }

          if (((1 << u_charType(v21)) & 0x7000) != 0)
          {
            v30 = 0;
            if (v27)
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = 1;
              v35 = 9;
              goto LABEL_56;
            }

            v35 = 0;
LABEL_75:
            v46 = *(a1 + 200);
            v45 = *(a1 + 208);
            if (v45 != v46)
            {
              v48 = *(a1 + 224);
              v47 = *(a1 + 232);
              if (v48 == v47 || *(v45 - 16) + *(v45 - 24) > *(v47 - 16) + *(v47 - 24))
              {
                if (*(a1 + 8))
                {
                  if ((v27 - 1) <= 1)
                  {
                    if (v48 == v47)
                    {
                      v49 = 0;
                    }

                    else
                    {
                      v49 = 0;
                      v50 = v48 + 32 * *(a1 + 248);
                      v51 = *(v50 + 8);
                      v52 = *(v50 + 16);
                      v53 = v52 + v51;
                      for (i = (v46 + 16); ; i += 4)
                      {
                        v55 = *(i - 1);
                        if ((v55 >= v53 || *i + v55 > v53) && (v55 != v51 || *i != v52))
                        {
                          break;
                        }

                        ++v49;
                      }
                    }

                    v60 = *(v46 + 32 * v49 + 8);
                    v61 = *(v45 - 24) - v60 + *(v45 - 16);
                    v62 = CFStringCreateWithBytesNoCopy(0, (*(a1 + 176) + v60), v61, *(a1 + 16), 0, contentsDeallocator);
                    if (v62)
                    {
                      v63 = v62;
                      v64 = *(a1 + 8);
                      v94.length = CFStringGetLength(v62);
                      v94.location = 0;
                      CFStringTokenizerSetString(v64, v63, v94);
                      while (CFStringTokenizerAdvanceToNextToken(*(a1 + 8)))
                      {
                        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(a1 + 8));
                        v66 = sub_1AE6931A0(v63, CurrentTokenRange.location, CurrentTokenRange.length, (*(a1 + 176) + v60), v61, *(a1 + 16));
                        if (v66 != -1)
                        {
                          LODWORD(v92) = 0;
                          *(&v92 + 1) = v66 + v60;
                          *&v93 = v67;
                          *(&v93 + 1) = -1;
                          v68 = v67;
                          sub_1AE6FD7E4(a1 + 224, &v92);
                          v60 += v68;
                          v61 -= v68;
                        }
                      }

                      CFRelease(v63);
                    }
                  }

LABEL_130:
                  sub_1AE6FD8F0(a1, a4);
                }

                else if (!v35 || v35 == 9)
                {
                  goto LABEL_130;
                }
              }
            }

            if ((v27 & 0xFFFFFFF7) != 0 && !v30)
            {
              LODWORD(v92) = 2;
              *(&v92 + 1) = v29;
              v93 = xmmword_1AE799EF0;
              sub_1AE6FD7E4(a1 + 200, &v92);
              sub_1AE6FD8F0(a1, a4);
            }

            v70 = *(a1 + 264);
            v69 = *(a1 + 272);
            if (v70 >= v69)
            {
              v72 = *(a1 + 256);
              v73 = v70 - v72;
              v74 = (v70 - v72) >> 2;
              v75 = v74 + 1;
              if ((v74 + 1) >> 62)
              {
LABEL_216:
                sub_1AE5CBB70();
              }

              v76 = v69 - v72;
              if (v76 >> 1 > v75)
              {
                v75 = v76 >> 1;
              }

              if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v77 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v77 = v75;
              }

              if (v77)
              {
                if (!(v77 >> 62))
                {
                  operator new();
                }

                goto LABEL_218;
              }

              v78 = v74;
              v79 = (4 * v74);
              v80 = &v79[-v78];
              *v79 = v30;
              v71 = v79 + 1;
              memcpy(v80, v72, v73);
              *(a1 + 256) = v80;
              *(a1 + 264) = v71;
              *(a1 + 272) = 0;
              if (v72)
              {
                operator delete(v72);
              }
            }

            else
            {
              *v70 = v30;
              v71 = v70 + 1;
            }

            *(a1 + 264) = v71;
            v81 = *(a1 + 288);
            if (v81 != -1)
            {
              *(a1 + 296) = *(a1 + 312) - v81;
            }

            goto LABEL_9;
          }

          v30 = 0;
          v35 = 12;
          if ((v21 - 127995) < 5)
          {
LABEL_55:
            v34 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            goto LABEL_56;
          }

          v34 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          if (v21 != 65039)
          {
            v59 = v21 & 0x7FFFFFFE;
            if ((v21 & 0x7FFFFFFE) == 0x200C)
            {
              v30 = 0;
              v34 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v35 = 14;
              goto LABEL_56;
            }

            v35 = 1;
            if (((1 << u_charType(v21)) & 0x40001FE) != 0)
            {
              v30 = 0;
              v34 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              goto LABEL_56;
            }

            if (((1 << u_charType(v21)) & 0x78001) != 0)
            {
              v35 = 0;
              v34 = 0;
              v31 = 0;
              v32 = 0;
              v30 = 1;
              v33 = 1;
              goto LABEL_56;
            }

            if (v59 == 8208)
            {
              goto LABEL_193;
            }

            if (v59 == 65532)
            {
              v30 = 0;
              v34 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v35 = 10;
              goto LABEL_56;
            }

            if (v21 <= 1522)
            {
              if ((v21 - 38) <= 0x3A && ((1 << (v21 - 38)) & 0x400000000000083) != 0 || v21 == 699)
              {
                goto LABEL_193;
              }

LABEL_195:
              if (((1 << u_charType(v21)) & 0xE00) != 0)
              {
                v30 = 0;
                v34 = 0;
                v31 = 0;
                v32 = 0;
                v33 = 0;
                v35 = 2;
                goto LABEL_56;
              }

              if (v21 <= 12289)
              {
                if (v21 == 46)
                {
                  v30 = 0;
                  v34 = 0;
                  v31 = 0;
                  v32 = 0;
                  v33 = 0;
                  v35 = 6;
                  goto LABEL_56;
                }

                if (v21 == 8230)
                {
                  v30 = 0;
                  v34 = 0;
                  v31 = 0;
                  v32 = 0;
                  v33 = 0;
                  v35 = 7;
                  goto LABEL_56;
                }
              }

              else if (v21 == 12290 || v21 == 65281 || v21 == 65311)
              {
                v30 = 0;
                v34 = 0;
                v32 = 0;
                v33 = 0;
                v31 = 1;
                v35 = 8;
                goto LABEL_56;
              }

              v30 = 0;
              v84 = vdupq_n_s32(v21);
              *v85.i8 = vdup_n_s32(v59);
              v85.i64[1] = v84.i64[0];
              v84.i32[2] = v21 & 0x7FFFFFFE;
              v35 = 5;
              if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v84, xmmword_1AE79A6D0), vceqq_s32(v85, xmmword_1AE79A6E0)))) & 1) != 0 || v21 == 44011 || v59 == 4170 || v21 == 3572)
              {
                goto LABEL_55;
              }

              v34 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              if ((v21 & 0x7FFFFFFE) != 0x1C7E)
              {
                if ((v21 - 127462) >= 0x1A)
                {
                  v86 = sub_1AE693114(v21);
                  v30 = 0;
                  v34 = 0;
                  v31 = 0;
                  v32 = 0;
                  v33 = 0;
                  if (v86)
                  {
                    v35 = 11;
                  }

                  else
                  {
                    v35 = 4;
                  }
                }

                else
                {
                  v30 = 0;
                  v34 = 0;
                  v31 = 0;
                  v33 = 0;
                  v32 = 1;
                  v35 = 13;
                }
              }
            }

            else
            {
              if ((v21 - 1523) >= 2 && v21 != 8217 && v21 != 8211)
              {
                goto LABEL_195;
              }

LABEL_193:
              v30 = 0;
              v34 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v35 = 3;
            }
          }

LABEL_56:
          if (v27 <= 6)
          {
            if ((v27 - 1) < 4)
            {
              goto LABEL_66;
            }

            if ((v27 - 5) < 2)
            {
              v33 |= v34;
              goto LABEL_66;
            }

            LOBYTE(v57) = v35;
            if (v27)
            {
LABEL_112:
              v30 = v35;
              goto LABEL_75;
            }
          }

          else
          {
            if (v27 > 9)
            {
              if ((v27 - 10) >= 5)
              {
                goto LABEL_112;
              }

LABEL_66:
              if (v35 && v35 != 9)
              {
                if (v27 <= 5)
                {
                  if (v27 > 2)
                  {
                    if (v27 == 3)
                    {
                      if ((v35 - 4) < 0xFFFFFFFD)
                      {
                        goto LABEL_68;
                      }
                    }

                    else if (v27 != 4 || (v35 - 4) < 0xFFFFFFFE)
                    {
                      goto LABEL_68;
                    }
                  }

                  else if (v27 == 1)
                  {
                    if (((1 << v35) & 0x400E) == 0)
                    {
                      goto LABEL_68;
                    }
                  }

                  else if (v27 != 2 || (v35 - 11) < 3)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v27 <= 10)
                {
                  if (v27 != 6 || (v35 & 0xFFFFFFFB) != 2)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v27 == 11)
                {
                  if ((v35 & 0xFFFFFFFD) != 0xC)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v27 == 13)
                {
                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v27 != 14 || (v35 - 11) >= 4 && v35 != 1)
                {
                  goto LABEL_68;
                }
              }

              else
              {
LABEL_68:
                sub_1AE6FD7E4(a1 + 200, (a1 + 280));
                *(a1 + 280) = 0;
                if (v34 | v30)
                {
                  v44 = -1;
                }

                else
                {
                  v44 = v29;
                }

                *(a1 + 288) = v44;
                *v88 = xmmword_1AE799EF0;
              }

              if (v33)
              {
                v30 = 0;
              }

              else
              {
                v30 = v35;
              }

              goto LABEL_75;
            }

            if (v27 == 7)
            {
              goto LABEL_66;
            }

            if (v27 != 8)
            {
              v30 = v35;
              goto LABEL_165;
            }

            sub_1AE6FD7E4(a1 + 200, (a1 + 280));
            if (v31)
            {
              v57 = 8;
            }

            else
            {
              LODWORD(v92) = 2;
              *(&v92 + 1) = v29;
              v93 = xmmword_1AE799EF0;
              sub_1AE6FD7E4(a1 + 200, &v92);
              v57 = v35;
            }

            v30 = 0;
            if (v57)
            {
              v82 = v57 == 9;
            }

            else
            {
              v82 = 1;
            }

            *(a1 + 280) = 0;
            if (v82)
            {
              v83 = -1;
            }

            else
            {
              v83 = v29;
            }

            *(a1 + 288) = v83;
            *(a1 + 296) = 0;
            *(a1 + 304) = -1;
            if (v57 == 9)
            {
LABEL_165:
              if (v35 && v35 != 9 && *(a1 + 288) == -1)
              {
                *(a1 + 280) = 0;
                *(a1 + 288) = v29;
                *v88 = xmmword_1AE799EF0;
              }

              goto LABEL_75;
            }
          }

          v30 = v35;
          if ((v57 & 7) != 0)
          {
            LODWORD(v92) = 1;
            *(&v92 + 1) = v29;
            v93 = xmmword_1AE799EF0;
            sub_1AE6FD7E4(a1 + 200, &v92);
            sub_1AE6FD8F0(a1, a4);
            v30 = v35;
          }

          goto LABEL_165;
        }

        v28 = *(v26 - 1);
        v26 -= 4;
        v27 = v28;
      }

      while (v28 == 15);
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_35:
      *(a1 + 312) = v8;
      v36 = *(a1 + 272);
      if (v23 < v36)
      {
        *v23 = 15;
        v7 = (v23 + 4);
        goto LABEL_8;
      }

      v37 = v25 >> 2;
      v38 = (v25 >> 2) + 1;
      if (v38 >> 62)
      {
        goto LABEL_216;
      }

      v39 = v36 - v24;
      if (v39 >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v40 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (!(v40 >> 62))
        {
          operator new();
        }

LABEL_218:
        sub_1AE5CB09C();
      }

      *(4 * v37) = 15;
      v7 = 4 * v37 + 4;
      memcpy(0, v24, v25);
      *(a1 + 256) = 0;
      *(a1 + 264) = v7;
      *(a1 + 272) = 0;
      if (v24)
      {
        operator delete(v24);
      }

LABEL_8:
      *(a1 + 264) = v7;
LABEL_9:
      ++v6;
    }

    while (v6 != a3);
  }
}

void LMStreamTokenizerPushBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_1AE5C93A4(*(a1 + 24), a2, a3, a4);
  }
}

void *sub_1AE5CA00C(void *result)
{
  *result = &unk_1F242DAA0;
  if (result[1])
  {
    v1 = result;
    v2 = sub_1AE5CA370(result[1]);
    MEMORY[0x1B2706400](v2, 0x10F0C4069D522A4);
    return v1;
  }

  return result;
}

uint64_t sub_1AE5CA070(uint64_t a1, int a2)
{
  if (a2 == 134217984)
  {
    operator new();
  }

  return 0;
}

uint64_t LMStreamTokenizerCreate(uint64_t a1, int a2)
{
  v2 = sub_1AE5CA070(a1, a2);
  CFAllocatorGetDefault();
  if ((atomic_load_explicit(&qword_1ED9AC750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC750))
  {
    qword_1EE7BD090 = 0;
    unk_1EE7BD0A0 = 0u;
    unk_1EE7BD0B0 = 0u;
    qword_1ED9AC740 = _CFRuntimeRegisterClass();
    __cxa_guard_release(&qword_1ED9AC750);
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = v2;
  return result;
}

uint64_t sub_1AE5CA370(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 24))
  {
    ubrk_close();
  }

  v4 = *(a1 + 256);
  if (v4)
  {
    *(a1 + 264) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    *(a1 + 232) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    *(a1 + 208) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    *(a1 + 184) = v7;
    operator delete(v7);
  }

  return a1;
}

void language_modeling::v1::LinguisticContext::LinguisticContext(language_modeling::v1::LinguisticContext *this)
{
  operator new();
}

{
  operator new();
}

uint64_t sub_1AE5CA48C(uint64_t *a1, uint64_t a2)
{
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v8 = a1 + 3;
    v7 = a1[3];
    v9 = (v5 - v7) >> 5;
    if ((v9 + 1) >> 59)
    {
      sub_1AE5CBB70();
    }

    v10 = v4 - v7;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v22 = 32 * v9;
    sub_1AE5CA7E0((32 * v9), a2);
    *(v22 + 24) = *(a2 + 24);
    v6 = 32 * v9 + 32;
    v13 = a1[3];
    v14 = a1[4];
    v15 = v22 + v13 - v14;
    if (v13 != v14)
    {
      v16 = a1[3];
      v17 = v22 + v13 - v14;
      do
      {
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = 0;
        *(v17 + 24) = *(v16 + 24);
        v16 += 32;
        v17 += 32;
      }

      while (v16 != v14);
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 += 32;
      }

      while (v13 != v14);
      v13 = *v8;
    }

    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    sub_1AE5CA7E0(a1[4], a2);
    *(v5 + 24) = *(a2 + 24);
    v6 = v5 + 32;
    a1[4] = v5 + 32;
  }

  a1[4] = v6;
  v19 = a1[1];
  if (v19 >= a1[2])
  {
    result = sub_1AE5CAEF8(a1, a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_1AE5DBF1C(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v20 = *a2;
      *(v19 + 16) = *(a2 + 16);
      *v19 = v20;
    }

    *(v19 + 24) = *(a2 + 24);
    result = v19 + 32;
    a1[1] = v19 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_1AE5CA688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6458A8(va);
  _Unwind_Resume(a1);
}

void sub_1AE5CA7E0(_BYTE *a1, const UInt8 *a2)
{
  v2 = a2;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(v2 + 1);
    }

    v6 = CFStringCreateWithBytes(0, a2, v5, 0x8000100u, 0);
    cf = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v6 = 0;
    cf = 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
  v14.length = CFStringGetLength(MutableCopy);
  v14.location = 0;
  CFStringFindAndReplace(MutableCopy, @"‘", @"'", v14, 0);
  v15.length = CFStringGetLength(MutableCopy);
  v15.location = 0;
  CFStringFindAndReplace(MutableCopy, @"’", @"'", v15, 0);
  v16.length = CFStringGetLength(MutableCopy);
  v16.location = 0;
  CFStringFindAndReplace(MutableCopy, @"‚", @"'", v16, 0);
  v17.length = CFStringGetLength(MutableCopy);
  v17.location = 0;
  CFStringFindAndReplace(MutableCopy, @"‛", @"'", v17, 0);
  v18.length = CFStringGetLength(MutableCopy);
  v18.location = 0;
  CFStringFindAndReplace(MutableCopy, @"“", @"", v18, 0);
  v19.length = CFStringGetLength(MutableCopy);
  v19.location = 0;
  CFStringFindAndReplace(MutableCopy, @"”", @"", v19, 0);
  v20.length = CFStringGetLength(MutableCopy);
  v20.location = 0;
  CFStringFindAndReplace(MutableCopy, @"‟", @"", v20, 0);
  if (!MutableCopy)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v11, "Could not construct");
    goto LABEL_19;
  }

  CFRetain(MutableCopy);
  v9 = CFGetTypeID(MutableCopy);
  if (v9 != CFStringGetTypeID())
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(MutableCopy))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v11, "Could not convert");
LABEL_19:
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE5CAD24(a1, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(MutableCopy);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1AE5CAB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1AE621E54(&a13);
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    sub_1AE5F2968(&a13);
    v20 = sub_1AE5DB608(&a15, "failed to sanitize text='", 25);
    v21 = *(v16 + 23);
    if (v21 >= 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = *v16;
    }

    if (v21 >= 0)
    {
      v23 = *(v16 + 23);
    }

    else
    {
      v23 = *(v16 + 8);
    }

    v24 = sub_1AE5DB608(v20, v22, v23);
    v25 = sub_1AE5DB608(v24, "': ", 3);
    v26 = (*(*v19 + 16))(v19);
    v27 = strlen(v26);
    sub_1AE5DB608(v25, v26, v27);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6963BC(&__dst, &a16);
    MEMORY[0x1B2705EC0](exception, &__dst);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5CACB8(uint64_t a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v24)
  {
LABEL_6:
    sub_1AE5F2C0C(&a8, MEMORY[0x1E69E54D8]);
    MEMORY[0x1B2706340](va);
    __cxa_end_catch();
    JUMPOUT(0x1AE5CAD18);
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

unint64_t sub_1AE5CAD24(_BYTE *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a1[23] = result;
      if (result)
      {
        result = memmove(a1, v5, result);
      }

      a1[v7] = 0;
      return result;
    }

LABEL_19:
    sub_1AE5DB4F0();
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a1[23] = maxBufLen;
  if (v9)
  {
    bzero(a1, v9);
  }

  a1[v9] = 0;
  if (a1[23] >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void sub_1AE5CAEDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5CAEF8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v8 = 32 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  v10 = v8 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      *(v15 + 24) = *(v14 + 6);
      v14 += 2;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 32;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1AE5CB084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6458A8(va);
  _Unwind_Resume(a1);
}

void sub_1AE5CB09C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void language_modeling::v1::LinguisticContext::LinguisticContext(language_modeling::v1::LinguisticContext *this, const language_modeling::v1::LinguisticContext *a2)
{
  operator new();
}

{
  operator new();
}

uint64_t sub_1AE5CB150(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE5CBA4C(a1, a2);
  sub_1AE5CBB88(v4 + 3, (a2 + 24));
  sub_1AE5CBCAC(a1 + 48, a2 + 48);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = *(a2 + 120);
  prime = *(a2 + 96);
  if (prime == 1)
  {
    prime = 2;
LABEL_3:
    sub_1AE5CC314(a1 + 88, prime);
    goto LABEL_4;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 96));
    v26 = *(a1 + 96);
    v27 = prime >= *&v26;
    if (prime > *&v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = 0;
    v27 = 1;
    if (prime)
    {
      goto LABEL_3;
    }
  }

  if (!v27)
  {
    v31 = vcvtps_u32_f32(*(a1 + 112) / *(a1 + 120));
    if (*&v26 < 3uLL || (v32 = vcnt_s8(v26), v32.i16[0] = vaddlv_u8(v32), v32.u32[0] > 1uLL))
    {
      v31 = std::__next_prime(v31);
    }

    else
    {
      v33 = 1 << -__clz(v31 - 1);
      if (v31 >= 2)
      {
        v31 = v33;
      }
    }

    if (prime <= v31)
    {
      prime = v31;
    }

    if (prime < *&v26)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v6 = *(a2 + 104);
  if (!v6)
  {
    goto LABEL_27;
  }

  do
  {
    v7 = *(v6 + 4);
    v8 = *(a1 + 96);
    if (!*&v8)
    {
      goto LABEL_25;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(v6 + 4);
      if (*&v8 <= v7)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*(a1 + 88) + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_25:
      operator new();
    }

    if (v9.u32[0] < 2uLL)
    {
      while (1)
      {
        v13 = v12[1];
        if (v13 == v7)
        {
          if (*(v12 + 4) == v7)
          {
            goto LABEL_26;
          }
        }

        else if ((v13 & (*&v8 - 1)) != v10)
        {
          goto LABEL_25;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        break;
      }

      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }

      if (v14 != v10)
      {
        goto LABEL_25;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    if (*(v12 + 4) != v7)
    {
      goto LABEL_20;
    }

LABEL_26:
    v6 = *v6;
  }

  while (v6);
LABEL_27:
  sub_1AE5CBCAC(a1 + 128, a2 + 128);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = *(a2 + 200);
  v15 = *(a2 + 176);
  if (v15 == 1)
  {
    v15 = 2;
    goto LABEL_29;
  }

  if ((v15 & (v15 - 1)) != 0)
  {
    v15 = std::__next_prime(v15);
    v28 = *(a1 + 176);
    v29 = v15 >= *&v28;
    if (v15 > *&v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v28 = 0;
    v29 = 1;
    if (v15)
    {
      goto LABEL_29;
    }
  }

  if (!v29)
  {
    v34 = vcvtps_u32_f32(*(a1 + 192) / *(a1 + 200));
    if (*&v28 < 3uLL || (v35 = vcnt_s8(v28), v35.i16[0] = vaddlv_u8(v35), v35.u32[0] > 1uLL))
    {
      v34 = std::__next_prime(v34);
    }

    else
    {
      v36 = 1 << -__clz(v34 - 1);
      if (v34 >= 2)
      {
        v34 = v36;
      }
    }

    if (v15 <= v34)
    {
      v15 = v34;
    }

    if (v15 < *&v28)
    {
LABEL_29:
      sub_1AE5CC314(a1 + 168, v15);
    }
  }

  v37 = a2;
  v16 = *(a2 + 184);
  if (!v16)
  {
    goto LABEL_53;
  }

  while (2)
  {
    v17 = *(v16 + 4);
    v18 = *(a1 + 176);
    if (!*&v18)
    {
      goto LABEL_51;
    }

    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      v20 = *(v16 + 4);
      if (*&v18 <= v17)
      {
        v20 = v17 % v18.i32[0];
      }
    }

    else
    {
      v20 = (v18.i32[0] - 1) & v17;
    }

    v21 = *(*(a1 + 168) + 8 * v20);
    if (!v21 || (v22 = *v21) == 0)
    {
LABEL_51:
      operator new();
    }

    if (v19.u32[0] < 2uLL)
    {
      while (1)
      {
        v24 = v22[1];
        if (v24 == v17)
        {
          if (*(v22 + 4) == v17)
          {
            goto LABEL_52;
          }
        }

        else if ((v24 & (*&v18 - 1)) != v20)
        {
          goto LABEL_51;
        }

        v22 = *v22;
        if (!v22)
        {
          goto LABEL_51;
        }
      }
    }

    while (2)
    {
      v23 = v22[1];
      if (v23 != v17)
      {
        if (v23 >= *&v18)
        {
          v23 %= *&v18;
        }

        if (v23 != v20)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      }

      if (*(v22 + 4) != v17)
      {
LABEL_41:
        v22 = *v22;
        if (!v22)
        {
          goto LABEL_51;
        }

        continue;
      }

      break;
    }

LABEL_52:
    v16 = *v16;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_53:
  if (*(v37 + 231) < 0)
  {
    sub_1AE5DBF1C((a1 + 208), *(v37 + 208), *(v37 + 216));
  }

  else
  {
    v25 = *(v37 + 208);
    *(a1 + 224) = *(v37 + 224);
    *(a1 + 208) = v25;
  }

  return a1;
}

void sub_1AE5CB998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE628EE4(v10);
  sub_1AE628EE4((v9 + 16));
  sub_1AE5CC4A0(a9);
  sub_1AE628EE4((v9 + 6));
  sub_1AE61E350(v9 + 3);
  sub_1AE61E350(v9);
  _Unwind_Resume(a1);
}

void *sub_1AE5CBA4C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void *sub_1AE5CBB88(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

uint64_t sub_1AE5CBCAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1AE5CC314(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    v11 = *(i + 4);
    v12 = *(a1 + 8);
    if (!*&v12)
    {
      goto LABEL_39;
    }

    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = *(i + 4);
      if (*&v12 <= v11)
      {
        v14 = v11 % v12.i32[0];
      }
    }

    else
    {
      v14 = (v12.i32[0] - 1) & v11;
    }

    v15 = *(*a1 + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_39:
      operator new();
    }

    if (v13.u32[0] < 2uLL)
    {
      while (1)
      {
        v17 = v16[1];
        if (v17 == v11)
        {
          if (*(v16 + 4) == v11)
          {
            goto LABEL_40;
          }
        }

        else if ((v17 & (*&v12 - 1)) != v14)
        {
          goto LABEL_39;
        }

        v16 = *v16;
        if (!v16)
        {
          goto LABEL_39;
        }
      }
    }

    while (1)
    {
      v18 = v16[1];
      if (v18 == v11)
      {
        break;
      }

      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }

      if (v18 != v14)
      {
        goto LABEL_39;
      }

LABEL_34:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_39;
      }
    }

    if (*(v16 + 4) != v11)
    {
      goto LABEL_34;
    }

LABEL_40:
    ;
  }

  return a1;
}

uint64_t sub_1AE5CC12C(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v2 = *(a1 + 184);
  if (v2)
  {
    do
    {
      v11 = *v2;
      v12 = v2[3];
      if (v12)
      {
        v2[4] = v12;
        operator delete(v12);
      }

      operator delete(v2);
      v2 = v11;
    }

    while (v11);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    do
    {
      v13 = *v4;
      v14 = v4[3];
      if (v14)
      {
        v4[4] = v14;
        operator delete(v14);
      }

      operator delete(v4);
      v4 = v13;
    }

    while (v13);
  }

  v5 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  sub_1AE5CC4A0(a1 + 88);
  v6 = *(a1 + 64);
  if (v6)
  {
    do
    {
      v15 = *v6;
      v16 = v6[3];
      if (v16)
      {
        v6[4] = v16;
        operator delete(v16);
      }

      operator delete(v6);
      v6 = v15;
    }

    while (v15);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v17 = *(v9 - 9);
        v9 -= 4;
        if (v17 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(a1 + 24);
    }

    *(a1 + 32) = v8;
    operator delete(v10);
  }

  v18 = *a1;
  if (*a1)
  {
    v19 = *(a1 + 8);
    v20 = *a1;
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 9);
        v19 -= 4;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = *a1;
    }

    *(a1 + 8) = v18;
    operator delete(v20);
  }

  return a1;
}

void language_modeling::v1::LinguisticContext::~LinguisticContext(language_modeling::v1::LinguisticContext *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AE5CC12C(v2);
    MEMORY[0x1B2706400](v3, 0x10B2C4009D90DC4);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AE5CC12C(v2);
    MEMORY[0x1B2706400](v3, 0x10B2C4009D90DC4);
  }
}

void sub_1AE5CC314(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1AE5CC4A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      if (v7)
      {
        v8 = v2[4];
        v5 = v2[3];
        if (v8 != v7)
        {
          do
          {
            v10 = *(v8 - 8);
            v8 -= 8;
            v9 = v10;
            if (v10)
            {
              CFRelease(v9);
            }
          }

          while (v8 != v7);
          v5 = v2[3];
        }

        v2[4] = v7;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t LMLanguageLikelihoodModelGetEmojiUsageCountForApp(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 280);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_1AE5CC864;
    block[3] = &unk_1E7A2F070;
    block[4] = v4;
    block[5] = a2;
    block[6] = &v7;
    dispatch_sync(v5, block);
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v7;
}

void sub_1AE5CC688(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  p_p = &__p;
  sub_1AE5CC874(a2, &__p);
  v6 = (a1 + 184);
  v7 = *(a1 + 184);
  v8 = v30;
  if (!v7)
  {
    v9 = v29;
    goto LABEL_36;
  }

  v9 = v29;
  if ((v30 & 0x80u) == 0)
  {
    v10 = v30;
  }

  else
  {
    p_p = __p;
    v10 = v29;
  }

  v11 = (a1 + 184);
  do
  {
    while (1)
    {
      v12 = *(v7 + 55);
      v13 = v12 >= 0 ? (v7 + 4) : v7[4];
      v14 = v12 >= 0 ? *(v7 + 55) : v7[5];
      v15 = v10 >= v14 ? v14 : v10;
      v16 = memcmp(v13, p_p, v15);
      if (v16)
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_21;
      }

LABEL_7:
      v7 = v7[1];
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v11 = v7;
    v7 = *v7;
  }

  while (v7);
LABEL_22:
  if (v11 == v6)
  {
    goto LABEL_36;
  }

  v17 = *(v11 + 55);
  if (v17 >= 0)
  {
    v18 = (v11 + 4);
  }

  else
  {
    v18 = v11[4];
  }

  if (v17 >= 0)
  {
    v19 = *(v11 + 55);
  }

  else
  {
    v19 = v11[5];
  }

  if (v19 >= v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v19;
  }

  v21 = memcmp(p_p, v18, v20);
  if (!v21)
  {
    if (v10 < v19)
    {
      goto LABEL_36;
    }

LABEL_55:
    *a3 = *(v11 + 14);
    *(a3 + 8) = v11[8];
    if ((v8 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_36:
  if ((v8 & 0x80u) == 0)
  {
    v22 = v8;
  }

  else
  {
    v22 = v9;
  }

  if (!v22)
  {
    v23 = *(a1 + 176);
    if (v23 == v6)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      do
      {
        if (*(v23 + 14) > v24)
        {
          v24 = *(v23 + 14);
        }

        v25 = v23[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v23[2];
            v27 = *v26 == v23;
            v23 = v26;
          }

          while (!v27);
        }

        v23 = v26;
      }

      while (v26 != v6);
    }

    *a3 = v24;
    if ((v8 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(__p);
    return;
  }

  if ((v8 & 0x80) != 0)
  {
    goto LABEL_41;
  }
}

const __CFString *sub_1AE5CC874@<X0>(const __CFString *result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CStringPtr = CFStringGetCStringPtr(result, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v3);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return sub_1AE5CC990(a2, CStringPtr);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

_BYTE *sub_1AE5CC990(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t LMLanguageModelCreate(void *cf)
{
  v15 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    Value = CFDictionaryGetValue(cf, kLMLanguageModelLocaleKey);
    if (Value)
    {
      v3 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 == CFLocaleGetTypeID())
      {
        v5 = CFRetain(v3);
      }

      else
      {
        v6 = CFGetTypeID(v3);
        if (v6 != CFStringGetTypeID())
        {
          goto LABEL_10;
        }

        v5 = CFLocaleCreate(0, v3);
      }

      v7 = v5;
      if (sub_1AE5CD624(v5, @"ars"))
      {
        v8 = sub_1AE61DD48(v7, @"ar");
        __p = v8;
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, cf);
        v13[0] = MutableCopy;
        CFDictionarySetValue(MutableCopy, kLMLanguageModelLocaleKey, v8);
        CFRelease(cf);
        if (v8)
        {
          CFRelease(v8);
        }

LABEL_11:
        cfa = MutableCopy;
        mach_continuous_time();
        v11 = 0uLL;
        operator new();
      }
    }

LABEL_10:
    MutableCopy = cf;
    goto LABEL_11;
  }

  return 0;
}

void sub_1AE5CD410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, const void *a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint8_t buf)
{
  __cxa_guard_abort(&qword_1ED9AC970);
  sub_1AE622290(&a13);
  sub_1AE6222FC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5CD66C(uint64_t a1, const __CFDictionary *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v13 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, kLMLanguageModelLocaleKey);
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFStringGetTypeID())
      {
        v6 = CFLocaleCreate(0, v4);
        if (*v13)
        {
          CFRelease(*v13);
        }

        *v13 = v6;
      }

      else
      {
        v7 = CFGetTypeID(v4);
        TypeID = CFLocaleGetTypeID();
        v6 = *v13;
        if (v7 == TypeID)
        {
          if (v6 != v4)
          {
            CFRetain(v4);
            if (*v13)
            {
              CFRelease(*v13);
            }

            *v13 = v4;
          }

LABEL_13:
          v9 = CFDictionaryGetValue(a2, kLMLanguageModelIsMultilingualModelKey);
          *(a1 + 16) = sub_1AE5CF094(v9, 0);
          v10 = CFDictionaryGetValue(a2, kLMLanguageModelIsSiriModelKey);
          *(a1 + 17) = sub_1AE5CF094(v10, 0);
          operator new();
        }
      }

      if (!v6)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_1AE5CC990(__p, "Locale is missing from ResourceLoader options");
        sub_1AE660DB0(exception, __p);
        __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
      }

      goto LABEL_13;
    }
  }

  return a1;
}

void sub_1AE5CEBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AE5CF094(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = CFGetTypeID(a1);
  if (v3 == CFStringGetTypeID())
  {
    v4 = 1;
    if (CFStringCompare(a1, @"true", 1uLL) == kCFCompareEqualTo)
    {
      return v4;
    }

    return CFStringCompare(a1, @"YES", 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    if (v3 == CFNumberGetTypeID() && !CFNumberIsFloatType(a1))
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      return valuePtr != 0;
    }

    if (v3 != CFBooleanGetTypeID())
    {
      return 0;
    }

    return *MEMORY[0x1E695E4D0] == a1;
  }
}

uint64_t sub_1AE5CF17C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  sub_1AE5CF628((a1 + 64), "selfSender");
  if (CFDictionaryContainsKey(a2, kLMLanguageModelAppGenreKey))
  {
    Value = CFDictionaryGetValue(a2, kLMLanguageModelAppGenreKey);
    v6 = Value;
    if (Value)
    {
      if (CFEqual(Value, kLMLanguageModelInformalAppGenre))
      {
        v7 = 1;
      }

      else
      {
        if (!CFEqual(v6, kLMLanguageModelFormalAppGenre))
        {
          goto LABEL_9;
        }

        v7 = 2;
      }
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 24) = v7;
  }

LABEL_9:
  if (CFDictionaryContainsKey(a2, kLMLanguageModelContextIdentifierKey))
  {
    v8 = CFDictionaryGetValue(a2, kLMLanguageModelContextIdentifierKey);
    sub_1AE5CF80C(a1, v8, 0);
  }

  else
  {
    v15 = 0;
    v10 = CFDictionaryGetValue(a2, kLMLanguageModelAppContextKey);
    sub_1AE5CF80C(a1, v10, &v15);
    if (!v15)
    {
      v11 = CFDictionaryGetValue(a2, kLMLanguageModelRecipientContextKey);
      sub_1AE5CFF6C(a1, v11);
    }

    v12 = CFDictionaryGetValue(a2, kLMLanguageModelSpatialTemporalContextKey);
    v13 = v12;
    if (v12)
    {
      v14 = CFGetTypeID(v12);
      if (v14 == CFStringGetTypeID())
      {
        sub_1AE5CC874(v13, &v16);
        if (*(a1 + 63) < 0)
        {
          operator delete(*v4);
        }

        *v4 = v16;
        *(v4 + 16) = v17;
      }
    }

    else
    {
      if (*(a1 + 63) < 0)
      {
        *(a1 + 48) = 0;
        v4 = *(a1 + 40);
      }

      else
      {
        *(a1 + 63) = 0;
      }

      *v4 = 0;
    }
  }

  return a1;
}

void sub_1AE5CF35C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*v4);
  }

  sub_1AE74689C(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE5CF3A4(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  sub_1AE5CF17C(a1 + 88, a3);
  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  *(a1 + 420) = 0x3D4CCCCD3F733333;
  *(a1 + 176) = v6;
  *(a1 + 184) = 0;
  *(a1 + 196) = 2;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 192) = 1;
  *(a1 + 304) = 0x40000000;
  *(a1 + 336) = vdup_n_s32(0x3E4CCCCDu);
  *(a1 + 256) = 1065437102;
  *(a1 + 248) = 0x3EE666663F266666;
  *(a1 + 204) = xmmword_1AE79A600;
  *(a1 + 220) = xmmword_1AE79A610;
  *(a1 + 236) = 0x3F19999A3F4CCCCDLL;
  v8 = 5;
  *(a1 + 244) = 5;
  do
  {
    v10 = 1.0 / v8;
    sub_1AE5D0118(a1 + 264, &v10);
    ++v7;
    v8 = *(a1 + 244);
  }

  while (v7 < v8);
  *(a1 + 288) = 0xFFFFFF00C00000;
  *(a1 + 296) = 0x4248000040800000;
  *(a1 + 308) = 0x200000000007D0;
  *(a1 + 316) = 0x1800003BA3D70ALL;
  *(a1 + 332) = 1065353216;
  *(a1 + 324) = 0x3F80000000000000;
  *(a1 + 344) = 1;
  *(a1 + 348) = 8;
  *(a1 + 400) = 0;
  *(a1 + 356) = 0x10100010001;
  *(a1 + 364) = 1;
  *(a1 + 368) = xmmword_1AE79A630;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0x700000001;
  *(a1 + 428) = 0;
  *(a1 + 416) = 0;
  *(a1 + 456) = 2;
  *(a1 + 464) = 0xC008000000000000;
  sub_1AE5D021C(a1, a3, 1);
  return a1;
}

void sub_1AE5CF5B8(_Unwind_Exception *a1)
{
  sub_1AE746C58(v1 + 88);
  sub_1AE746D38(v1);
  _Unwind_Resume(a1);
}

void **sub_1AE5CF628(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AE5CF670(a1, __s, v4);
}

void **sub_1AE5CF670(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_1AE5DB4F0();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

uint64_t sub_1AE5CF80C(uint64_t a1, const __CFString *cf, BOOL *a3)
{
  v3 = a1;
  if (!cf)
  {
    if (*(a1 + 23) < 0)
    {
      *(a1 + 8) = 0;
      v3 = *a1;
    }

    else
    {
      *(a1 + 23) = 0;
    }

    *v3 = 0;
    return 1;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  sub_1AE5CC874(cf, &__dst);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = __dst;
  *(v3 + 16) = v52;
  if (*(v3 + 23) < 0)
  {
    if (!*(v3 + 8))
    {
      return 1;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    sub_1AE5DBF1C(&v46, *v3, *(v3 + 8));
  }

  else
  {
    if (!*(v3 + 23))
    {
      return 1;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v46 = *v3;
    v47 = *(v3 + 16);
  }

  v44 = v3;
  v45 = a3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  for (i = 0; ; ++i)
  {
    v12 = SHIBYTE(v47);
    if ((SHIBYTE(v47) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= SHIBYTE(v47) || i == -1)
    {
      goto LABEL_84;
    }

    v14 = &v46;
    v15 = SHIBYTE(v47);
LABEL_28:
    v17 = v15 - v10;
    if ((v15 - v10) >= 1)
    {
      v18 = v14 + v15;
      v19 = v14 + v10;
      while (1)
      {
        v20 = memchr(v19, 64, v17);
        if (!v20)
        {
          goto LABEL_45;
        }

        if (*v20 == 64)
        {
          break;
        }

        v19 = v20 + 1;
        v17 = v18 - v19;
        if (v18 - v19 < 1)
        {
          goto LABEL_45;
        }
      }

      if (v20 != v18)
      {
        v21 = v20 - v14;
        if (v20 - v14 != -1)
        {
          if (v12 >= 0)
          {
            v22 = &v46;
          }

          else
          {
            v22 = v46;
          }

          v23 = v21 - v10;
          if (v21 - v10 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_107;
          }

          if (v23 > 0x16)
          {
            operator new();
          }

          HIBYTE(v52) = v21 - v10;
          if (v21 != v10)
          {
            memmove(&__dst, v22 + v10, v21 - v10);
          }

          *(&__dst + v23) = 0;
          if (v9 < v50)
          {
            v24 = __dst;
            *(v9 + 16) = v52;
            *v9 = v24;
            v9 += 24;
            v25 = v8;
            goto LABEL_81;
          }

          v35 = v9 - v8;
          v36 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) + 1;
          if (v36 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1AE5CBB70();
          }

          if (0x5555555555555556 * ((v50 - v8) >> 3) > v36)
          {
            v36 = 0x5555555555555556 * ((v50 - v8) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v50 - v8) >> 3) >= 0x555555555555555)
          {
            v37 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v37 = v36;
          }

          if (v37)
          {
            if (v37 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          v38 = 8 * ((v9 - v8) >> 3);
          *v38 = __dst;
          *(v38 + 16) = v52;
          v52 = 0;
          __dst = 0uLL;
          v9 = v38 + 24;
          v25 = (v38 - v35);
          memcpy((v38 - v35), v8, v35);
          v48 = v25;
          v49 = v9;
          v50 = 0;
          if (v8)
          {
            operator delete(v8);
            v49 = v9;
            if (SHIBYTE(v52) < 0)
            {
              operator delete(__dst);
            }
          }

          else
          {
LABEL_81:
            v49 = v9;
          }

          v10 = v21 + 1;
          goto LABEL_17;
        }
      }
    }

LABEL_45:
    v27 = *(&v46 + 1);
    v26 = v46;
    if (v12 >= 0)
    {
      v26 = &v46;
      v27 = v12;
    }

    v28 = v26 + v10;
    v29 = v27 - v10;
    if (v27 - v10 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_107:
      sub_1AE5DB4F0();
    }

    if (v29 > 0x16)
    {
      operator new();
    }

    HIBYTE(v52) = v27 - v10;
    if (v28 != v26 + v27)
    {
      memmove(&__dst, v28, v29);
    }

    *(&__dst + v29) = 0;
    if (v9 < v50)
    {
      v30 = __dst;
      *(v9 + 16) = v52;
      *v9 = v30;
      v9 += 24;
      v25 = v8;
LABEL_66:
      v49 = v9;
      v10 = SHIBYTE(v47);
      if ((SHIBYTE(v47) & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_67:
      v10 = *(&v46 + 1);
      goto LABEL_17;
    }

    v31 = v9 - v8;
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) + 1;
    if (v32 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AE5CBB70();
    }

    if (0x5555555555555556 * ((v50 - v8) >> 3) > v32)
    {
      v32 = 0x5555555555555556 * ((v50 - v8) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v50 - v8) >> 3) >= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      if (v33 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v34 = 8 * ((v9 - v8) >> 3);
    *v34 = __dst;
    *(v34 + 16) = v52;
    v52 = 0;
    __dst = 0uLL;
    v9 = v34 + 24;
    v25 = (v34 - v31);
    memcpy((v34 - v31), v8, v31);
    v48 = v25;
    v49 = v9;
    v50 = 0;
    if (!v8)
    {
      goto LABEL_66;
    }

    operator delete(v8);
    v49 = v9;
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__dst);
    }

    v10 = SHIBYTE(v47);
    if ((SHIBYTE(v47) & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_17:
    v8 = v25;
  }

  v15 = *(&v46 + 1);
  v14 = v46;
  if (v10 < *(&v46 + 1) && i != -1)
  {
    goto LABEL_28;
  }

  operator delete(v46);
LABEL_84:
  if (v9 - v8 == 48)
  {
    if (v8 != v44)
    {
      v39 = *(v8 + 23);
      if (*(v44 + 23) < 0)
      {
        if (v39 >= 0)
        {
          v41 = v8;
        }

        else
        {
          v41 = *v8;
        }

        if (v39 >= 0)
        {
          v42 = *(v8 + 23);
        }

        else
        {
          v42 = v8[1];
        }

        sub_1AE621B84(v44, v41, v42);
      }

      else if ((*(v8 + 23) & 0x80) != 0)
      {
        sub_1AE621AB4(v44, *v8, v8[1]);
      }

      else
      {
        v40 = *v8;
        *(v44 + 16) = v8[2];
        *v44 = v40;
      }
    }

    operator new();
  }

  if (v45)
  {
    *v45 = v9 - v8 == 48;
  }

  if (v8)
  {
    while (v9 != v8)
    {
      v43 = *(v9 - 1);
      v9 -= 24;
      if (v43 < 0)
      {
        operator delete(*v9);
      }
    }

    v49 = v8;
    operator delete(v8);
  }

  return 1;
}

void sub_1AE5CFEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  MEMORY[0x1B2706400](v26, 0x1012C4003C2D8E3);
  sub_1AE645234(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5CFF6C(uint64_t a1, void *cf)
{
  if (!cf)
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (!v4)
    {
      return 1;
    }

    if (*(v4 + 95) < 0)
    {
      operator delete(*(v4 + 72));
      if ((*(v4 + 71) & 0x80000000) == 0)
      {
LABEL_10:
        if ((*(v4 + 47) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((*(v4 + 71) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(*(v4 + 48));
    if ((*(v4 + 47) & 0x80000000) == 0)
    {
LABEL_11:
      if ((*(v4 + 23) & 0x80000000) == 0)
      {
LABEL_12:
        MEMORY[0x1B2706400](v4, 0x1012C4003C2D8E3);
        return 1;
      }

LABEL_17:
      operator delete(*v4);
      goto LABEL_12;
    }

LABEL_16:
    operator delete(*(v4 + 24));
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v3 = CFGetTypeID(cf);
  if (v3 == CFStringGetTypeID())
  {
    values = cf;
    CFDictionaryCreate(0, &kLMRecordHashKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    operator new();
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFDictionaryGetTypeID())
  {
    operator new();
  }

  return 0;
}

void sub_1AE5D0118(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1AE5CBB70();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1AE5D021C(unsigned int *a1, CFDictionaryRef theDict, char a3)
{
  theDicta = theDict;
  v237 = a3;
  valuePtr = 0.0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kLMLanguageModelAdaptationVersionNumberKey);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFStringGetTypeID())
      {
        sub_1AE68DC88(v239, v5);
        v7 = a1[49];
        v8 = LODWORD(v239[0]) > v7;
        if (LODWORD(v239[0]) == v7)
        {
          v8 = HIDWORD(v239[0]) > a1[50];
        }

        if (v8)
        {
          *(a1 + 49) = v239[0];
        }
      }
    }
  }

  v235[0] = &theDicta;
  v235[1] = &v237;
  sub_1AE5D20F4(v235, a1 + 192, kLMLanguageModelAdaptationEnabledKey, 1);
  sub_1AE5D20F4(v235, a1 + 419, kLMLanguageModelDisableDynamicLanguageModelsKey, 0);
  sub_1AE5D20F4(v235, a1 + 428, kLMLanguageModelSwearWordPolicyEnabledKey, 0);
  sub_1AE5D20F4(v235, a1 + 429, kLMLanguageModelSupportsNormalizedNameTokenKey, 0);
  v9 = CFDictionaryGetValue(theDicta, kLMLanguageModelStaticModelsEnabledKey);
  *(a1 + 344) = sub_1AE5CF094(v9, 1);
  v10 = CFDictionaryGetValue(theDicta, kLMLanguageModelLanguageLikelihoodModelEnabledKey);
  *(a1 + 364) = sub_1AE5CF094(v10, 1);
  v11 = CFDictionaryGetValue(theDicta, kLMLanguageModelPrioritizeVocabulariesKey);
  *(a1 + 365) = sub_1AE5CF094(v11, 0);
  if ((a1[86] & 1) == 0)
  {
    *(a1 + 42) = 0;
  }

  if ((a1[48] & 1) == 0)
  {
    *(a1 + 31) = 0;
  }

  if (*(a1 + 419) == 1)
  {
    *(a1 + 31) = 0;
    a1[51] = 0;
    a1[81] = 0;
  }

  if (!theDicta)
  {
    goto LABEL_35;
  }

  v12 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicModelOrderKey);
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v13, kCFNumberIntType, a1 + 61);
    }
  }

  if (!theDicta)
  {
    goto LABEL_35;
  }

  v15 = CFDictionaryGetValue(theDicta, kLMLanguageModelMaxDynamicModelSizeKey);
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v16, kCFNumberIntType, a1 + 78);
    }
  }

  if (!theDicta)
  {
    goto LABEL_35;
  }

  v18 = CFDictionaryGetValue(theDicta, kLMLanguageModelPruningTargetSizeKey);
  if (v18)
  {
    v19 = v18;
    v20 = CFGetTypeID(v18);
    if (v20 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v19, kCFNumberIntType, a1 + 80);
    }
  }

  if (theDicta)
  {
    v21 = CFDictionaryGetValue(theDicta, kLMLanguageModelDecayExponentKey);
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v22, kCFNumberFloatType, a1 + 52);
      }
    }

    v24 = (a1 + 84);
    if (!theDicta)
    {
      v28 = (a1 + 51);
      goto LABEL_57;
    }

    v25 = CFDictionaryGetValue(theDicta, kLMLanguageModelStaticModelWeightKey);
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v26, kCFNumberFloatType, a1 + 84);
      }
    }
  }

  else
  {
LABEL_35:
    v24 = (a1 + 84);
  }

  v28 = (a1 + 51);
  if (!theDicta)
  {
LABEL_57:
    v32 = (a1 + 62);
    goto LABEL_58;
  }

  v29 = CFDictionaryGetValue(theDicta, kLMLanguageModelCacheModelWeightKey);
  if (v29)
  {
    v30 = v29;
    v31 = CFGetTypeID(v29);
    if (v31 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v30, kCFNumberFloatType, a1 + 51);
    }
  }

  v32 = (a1 + 62);
  if (theDicta)
  {
    v33 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicModelWeightKey);
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v34, kCFNumberFloatType, a1 + 62);
      }
    }

    if (theDicta)
    {
      v36 = CFDictionaryGetValue(theDicta, kLMLanguageModelRecencyModelWeightKey);
      if (v36)
      {
        v37 = v36;
        v38 = CFGetTypeID(v36);
        if (v38 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v37, kCFNumberFloatType, a1 + 81);
        }
      }

      if (theDicta)
      {
        v39 = CFDictionaryGetValue(theDicta, kLMTouconLanguageModelStaticModelWeightKey);
        if (v39)
        {
          v40 = v39;
          v41 = CFGetTypeID(v39);
          if (v41 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v40, kCFNumberFloatType, a1 + 105);
          }
        }

        if (theDicta)
        {
          v42 = CFDictionaryGetValue(theDicta, kLMToucanLanguageModelDynamicModelWeightKey);
          if (v42)
          {
            v43 = v42;
            v44 = CFGetTypeID(v42);
            if (v44 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v43, kCFNumberFloatType, a1 + 106);
            }
          }
        }
      }
    }
  }

LABEL_58:
  v45 = *v28;
  v46 = *v32;
  v47 = (*v28 + *v24) + *v32;
  if (v47 > 0.0)
  {
    v48 = 1.0 / v47;
    *v24 = *v24 * v48;
    *v28 = v45 * v48;
    *v32 = v46 * v48;
  }

  v49 = *(a1 + 85);
  v50 = *(a1 + 63);
  v51 = v50 + v49;
  if ((v50 + v49) > 0.0)
  {
    *(a1 + 85) = v49 / v51;
    *(a1 + 63) = v50 / v51;
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v52 = CFDictionaryGetValue(theDicta, kLMLanguageModelTagMatchCountWeightKey);
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v53, kCFNumberFloatType, a1 + 57);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v55 = CFDictionaryGetValue(theDicta, kLMLanguageModelTagGenreMatchCountWeightKey);
  if (v55)
  {
    v56 = v55;
    v57 = CFGetTypeID(v55);
    if (v57 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v56, kCFNumberFloatType, a1 + 56);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v58 = CFDictionaryGetValue(theDicta, kLMLanguageModelTagRecipientMatchCountWeightKey);
  if (v58)
  {
    v59 = v58;
    v60 = CFGetTypeID(v58);
    if (v60 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v59, kCFNumberFloatType, a1 + 59);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v61 = CFDictionaryGetValue(theDicta, kLMLanguageModelTagSpatialTemporalMatchCountWeightKey);
  if (v61)
  {
    v62 = v61;
    v63 = CFGetTypeID(v61);
    if (v63 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v62, kCFNumberFloatType, a1 + 60);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v64 = CFDictionaryGetValue(theDicta, kLMLanguageModelTagMismatchCountWeightKey);
  if (v64)
  {
    v65 = v64;
    v66 = CFGetTypeID(v64);
    if (v66 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v65, kCFNumberFloatType, a1 + 58);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v67 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicUnigramCountThresholdKey);
  if (v67)
  {
    v68 = v67;
    v69 = CFGetTypeID(v67);
    if (v69 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v68, kCFNumberFloatType, a1 + 76);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v70 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicNgramCountThresholdKey);
  if (v70)
  {
    v71 = v70;
    v72 = CFGetTypeID(v70);
    if (v72 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v71, kCFNumberFloatType, a1 + 64);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v73 = CFDictionaryGetValue(theDicta, @"DynamicEmojiUnigramCountThreshold");
  if (v73)
  {
    v74 = v73;
    v75 = CFGetTypeID(v73);
    if (v75 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v74, kCFNumberFloatType, a1 + 55);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v76 = CFDictionaryGetValue(theDicta, @"DynamicEmojiNgramCountThreshold");
  if (v76)
  {
    v77 = v76;
    v78 = CFGetTypeID(v76);
    if (v78 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v77, kCFNumberFloatType, a1 + 54);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v79 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicTotalUnigramCountThresholdKey);
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v80, kCFNumberFloatType, a1 + 75);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v82 = CFDictionaryGetValue(theDicta, kLMLanguageModelRecencyNgramCountThresholdKey);
  if (v82)
  {
    v83 = v82;
    v84 = CFGetTypeID(v82);
    if (v84 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v83, kCFNumberFloatType, a1 + 82);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v85 = CFDictionaryGetValue(theDicta, kLMLanguageModelRecencyUnigramCountThresholdKey);
  if (v85)
  {
    v86 = v85;
    v87 = CFGetTypeID(v85);
    if (v87 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v86, kCFNumberFloatType, a1 + 83);
    }
  }

  if (!theDicta)
  {
    goto LABEL_122;
  }

  v88 = CFDictionaryGetValue(theDicta, kLMLanguageModelMinDynamicTokensTypedThresholdKey);
  if (v88)
  {
    v89 = v88;
    v90 = CFGetTypeID(v88);
    if (v90 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v89, kCFNumberIntType, a1 + 92);
    }
  }

  if (!theDicta)
  {
LABEL_122:
    v94 = a1 + 73;
LABEL_123:
    v98 = a1 + 87;
    if (theDicta)
    {
      v99 = CFDictionaryGetValue(theDicta, kLMLanguageModelTagBitCountKey);
      if (v99)
      {
        v100 = v99;
        v101 = CFGetTypeID(v99);
        if (v101 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v100, kCFNumberIntType, a1 + 87);
        }
      }
    }

    goto LABEL_127;
  }

  v91 = CFDictionaryGetValue(theDicta, kLMLanguageModelFirstDynamicTokenIDKey);
  if (v91)
  {
    v92 = v91;
    v93 = CFGetTypeID(v91);
    if (v93 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v92, kCFNumberIntType, a1 + 72);
    }
  }

  v94 = a1 + 73;
  if (theDicta)
  {
    v95 = CFDictionaryGetValue(theDicta, kLMLanguageModelLastDynamicTokenIDKey);
    if (v95)
    {
      v96 = v95;
      v97 = CFGetTypeID(v95);
      if (v97 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v96, kCFNumberIntType, a1 + 73);
      }
    }

    goto LABEL_123;
  }

  v98 = a1 + 87;
LABEL_127:
  if (*v98 != 8 && *v98 != 16)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(v239, "invalid tag bit count (valid values are 8 and 16)");
    sub_1AE660DB0(exception, v239);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  if (*(v94 + 3))
  {
    v229 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(v239, "invalid dynamic token ID range");
    sub_1AE660DB0(v229, v239);
    __cxa_throw(v229, &unk_1F2432910, sub_1AE64FC40);
  }

  if (theDicta)
  {
    v102 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicTokenPenaltyKey);
    if (v102)
    {
      v103 = v102;
      v104 = CFGetTypeID(v102);
      if (v104 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v103, kCFNumberFloatType, a1 + 74);
      }
    }

    if (theDicta)
    {
      v105 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicNgramWeightsKey);
      if (v105)
      {
        v106 = v105;
        *(a1 + 34) = *(a1 + 33);
        Count = CFArrayGetCount(v105);
        if (Count < 1)
        {
          LODWORD(v108) = 0;
          v109 = 0.0;
        }

        else
        {
          v108 = 0;
          v109 = 0.0;
          while (v108 < a1[61])
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v106, v108);
            CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
            v114 = *(a1 + 34);
            v113 = *(a1 + 35);
            if (v114 < v113)
            {
              v110 = valuePtr;
              *v114 = valuePtr;
              v111 = v114 + 4;
            }

            else
            {
              v115 = *(a1 + 33);
              v116 = v114 - v115;
              v117 = (v114 - v115) >> 2;
              v118 = v117 + 1;
              if ((v117 + 1) >> 62)
              {
                sub_1AE5CBB70();
              }

              v119 = v113 - v115;
              if (v119 >> 1 > v118)
              {
                v118 = v119 >> 1;
              }

              if (v119 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v120 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v120 = v118;
              }

              if (v120)
              {
                if (!(v120 >> 62))
                {
                  operator new();
                }

                sub_1AE5CB09C();
              }

              v121 = (v114 - v115) >> 2;
              v122 = (4 * v117);
              v110 = valuePtr;
              v123 = (4 * v117 - 4 * v121);
              *v122 = valuePtr;
              v111 = v122 + 1;
              memcpy(v123, v115, v116);
              *(a1 + 33) = v123;
              *(a1 + 34) = v111;
              *(a1 + 35) = 0;
              if (v115)
              {
                operator delete(v115);
                v110 = valuePtr;
              }
            }

            *(a1 + 34) = v111;
            v109 = v110 + v109;
            if (Count == ++v108)
            {
              LODWORD(v108) = Count;
              break;
            }
          }
        }

        while (v108 < a1[61])
        {
          LODWORD(v239[0]) = 0;
          sub_1AE5D0118((a1 + 66), v239);
          LODWORD(v108) = v108 + 1;
        }

        if (v109 > 0.0 && Count >= 1)
        {
          v125 = *(a1 + 33);
          if (Count < 8)
          {
            v126 = 0;
LABEL_166:
            v131 = Count - v126;
            v132 = &v125->f32[v126];
            do
            {
              *v132 = *v132 * (1.0 / v109);
              ++v132;
              --v131;
            }

            while (v131);
            goto LABEL_168;
          }

          v126 = Count & 0x7FFFFFFFFFFFFFF8;
          v127 = v125 + 1;
          v128 = Count & 0x7FFFFFFFFFFFFFF8;
          v129 = 1.0 / v109;
          do
          {
            v130 = vmulq_n_f32(*v127, v129);
            v127[-1] = vmulq_n_f32(v127[-1], v129);
            *v127 = v130;
            v127 += 2;
            v128 -= 8;
          }

          while (v128);
          if (Count != v126)
          {
            goto LABEL_166;
          }
        }
      }
    }
  }

LABEL_168:
  v133 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicDataSchema);
  if (v133)
  {
    v134 = CFGetTypeID(v133);
    if (v134 == CFDictionaryGetTypeID() && !*(a1 + 23))
    {
      operator new();
    }
  }

  if (theDicta)
  {
    v135 = CFDictionaryGetValue(theDicta, kLMLanguageModelMaxDynamicLexiconEntryCount);
    if (v135)
    {
      v136 = v135;
      v137 = CFGetTypeID(v135);
      if (v137 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v136, kCFNumberIntType, a1 + 77);
      }
    }

    if (theDicta)
    {
      v138 = CFDictionaryGetValue(theDicta, kLMLanguageModelUnknownTokenPenaltyKey);
      if (v138)
      {
        v139 = v138;
        v140 = CFGetTypeID(v138);
        if (v140 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v139, kCFNumberFloatType, a1 + 88);
        }
      }
    }
  }

  v141 = CFDictionaryGetValue(theDicta, kLMLanguageModelUseDynamicTokenCharacterFilterKey);
  *(a1 + 356) = sub_1AE5CF094(v141, 1);
  v142 = CFDictionaryGetValue(theDicta, kLMLanguageModelUseSpecialNumberTokenKey);
  *(a1 + 358) = sub_1AE5CF094(v142, 1);
  v143 = CFDictionaryGetValue(theDicta, kLMLanguageModelUseSerializedCacheKey);
  *(a1 + 357) = sub_1AE5CF094(v143, 0);
  v144 = CFDictionaryGetValue(theDicta, kLMLanguageModelUseMontrealKey);
  *(a1 + 360) = sub_1AE5CF094(v144, 1);
  v145 = CFDictionaryGetValue(theDicta, kLMLanguageModelUseLegacyStaticNgramModelsKey);
  *(a1 + 361) = sub_1AE5CF094(v145, 1);
  if (CFDictionaryContainsKey(theDicta, kLMLanguageModelUseMontrealUNKKey))
  {
    *(a1 + 400) = 1;
  }

  if (theDicta)
  {
    v146 = CFDictionaryGetValue(theDicta, kLMLanguageModelMaxMontrealPredictionsKey);
    if (v146)
    {
      v147 = v146;
      v148 = CFGetTypeID(v146);
      if (v148 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v147, kCFNumberIntType, a1 + 93);
      }
    }

    if (theDicta)
    {
      v149 = CFDictionaryGetValue(theDicta, @"maxMontrealClassMemberPredictions");
      if (v149)
      {
        v150 = v149;
        v151 = CFGetTypeID(v149);
        if (v151 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v150, kCFNumberIntType, a1 + 94);
        }
      }

      if (theDicta)
      {
        v152 = CFDictionaryGetValue(theDicta, kLMLanguageModelMontrealFullCacheSize);
        if (v152)
        {
          v153 = v152;
          v154 = CFGetTypeID(v152);
          if (v154 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v153, kCFNumberIntType, a1 + 95);
          }
        }

        if (theDicta)
        {
          v155 = CFDictionaryGetValue(theDicta, kLMLanguageModelMontrealSparseCacheSize);
          if (v155)
          {
            v156 = v155;
            v157 = CFGetTypeID(v155);
            if (v157 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v156, kCFNumberIntType, a1 + 96);
            }
          }

          if (theDicta)
          {
            v158 = CFDictionaryGetValue(theDicta, kLMLanguageModelAddressBookNamePenaltyKey);
            if (v158)
            {
              v159 = v158;
              v160 = CFGetTypeID(v158);
              if (v160 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v159, kCFNumberFloatType, a1 + 97);
              }
            }

            if (theDicta)
            {
              v161 = CFDictionaryGetValue(theDicta, kLMLanguageModelNegativeLearningThresholdKey);
              if (v161)
              {
                v162 = v161;
                v163 = CFGetTypeID(v161);
                if (v163 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v162, kCFNumberIntType, a1 + 98);
                }
              }
            }
          }
        }
      }
    }
  }

  v164 = CFDictionaryGetValue(theDicta, kLMLanguageModelGenerateFstPrimingTokenKey);
  *(a1 + 363) = sub_1AE5CF094(v164, 0);
  v165 = CFDictionaryGetValue(theDicta, kLMExcludeInformalDynamicDataKey);
  *(a1 + 401) = sub_1AE5CF094(v165, *(a1 + 401));
  v166 = CFDictionaryGetValue(theDicta, kLMLanguageModelEnableSearchQueryModelLoadingKey);
  *(a1 + 362) = sub_1AE5CF094(v166, 0);
  v167 = *(a1 + 22);
  if (v167 && *(a1 + 192) == 1 && *(a1 + 344) == 1)
  {
    v168 = CFLocaleGetValue(v167, *MEMORY[0x1E695E6F0]);
    v169 = v168;
    if (v168)
    {
      v169 = CFStringCompare(v168, @"en", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"fr", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"de", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"es", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"it", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"pt", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"tr", 0) == kCFCompareEqualTo || CFStringCompare(v169, @"ru", 0) == kCFCompareEqualTo;
    }

    v170 = CFDictionaryGetValue(theDicta, kLMLanguageModelDifferentialPrivacyEnabledKey);
    *(a1 + 359) = sub_1AE5CF094(v170, v169);
  }

  v171 = CFDictionaryGetValue(theDicta, kLMLanguageModelDynamicLexiconNameKey);
  if (v171)
  {
    v172 = v171;
    v173 = CFGetTypeID(v171);
    if (v173 == CFStringGetTypeID())
    {
      v174 = CFRetain(v172);
      v175 = *(a1 + 51);
      if (v175)
      {
        CFRelease(v175);
      }

      *(a1 + 51) = v174;
    }
  }

  v176 = CFDictionaryGetValue(theDicta, kLMLanguageModelLegacyGenericNameTokenKey);
  if (v176)
  {
    v177 = v176;
    v178 = CFGetTypeID(v176);
    if (v178 == CFStringGetTypeID())
    {
      sub_1AE5CC874(v177, v239);
      if (*(a1 + 455) < 0)
      {
        operator delete(*(a1 + 54));
      }

      *(a1 + 27) = *v239;
      *(a1 + 56) = v240;
    }
  }

  v179 = theDicta;
  if (!theDicta)
  {
    v242 = 0;
    goto LABEL_314;
  }

  CFRetain(theDicta);
  v242 = v179;
  v180 = CFGetTypeID(v179);
  if (v180 != CFDictionaryGetTypeID())
  {
    v231 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v231, "Could not construct");
    __cxa_throw(v231, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v242)
  {
LABEL_314:
    v230 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v230, "Could not construct");
    __cxa_throw(v230, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (kLMLearnStaticWordCaseVariantsForLocalesKey)
  {
    v181 = CFDictionaryGetValue(v242, kLMLearnStaticWordCaseVariantsForLocalesKey);
    v182 = v181;
    if (v181)
    {
      CFRetain(v181);
      v183 = CFGetTypeID(v182);
      if (v183 == CFArrayGetTypeID())
      {
        v239[0] = v182;
        LOBYTE(v239[1]) = 1;
        v184 = *(a1 + 22);
        if (CFArrayGetCount(v182))
        {
          v185 = CFArrayGetCount(v182);
          v186 = CFArrayGetCount(v182);
          if (v185)
          {
            v187 = v186;
            v188 = 0;
            v189 = *MEMORY[0x1E695E6F0];
            while (v187 != v188)
            {
              sub_1AE746D80(&cf, v182, v188);
              v190 = cf;
              v191 = MEMORY[0x1B2705500](v184);
              v192 = CFStringCompare(v190, v191, 0);
              v193 = cf;
              if (v192 == kCFCompareEqualTo)
              {
                if (cf)
                {
                  CFRelease(cf);
                }

LABEL_309:
                v196 = 1;
                goto LABEL_246;
              }

              v194 = CFLocaleGetValue(v184, v189);
              v195 = CFStringCompare(v193, v194, 0);
              if (cf)
              {
                CFRelease(cf);
              }

              if (v195 == kCFCompareEqualTo)
              {
                goto LABEL_309;
              }

              if (v185 == ++v188)
              {
                break;
              }
            }
          }
        }

        v196 = 0;
LABEL_246:
        *(a1 + 416) = v196;
        CFRelease(v182);
      }

      else
      {
        CFRelease(v182);
        LOBYTE(v239[0]) = 0;
      }
    }
  }

  v197 = v242;
  if (!v242)
  {
    v232 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v232, "Could not construct");
    __cxa_throw(v232, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (kLMLanguageModelShouldExcludeMobileAssetsKey)
  {
    v198 = CFDictionaryGetValue(v242, kLMLanguageModelShouldExcludeMobileAssetsKey);
    if (v198)
    {
      v199 = sub_1AE6311E0(v198);
      v200 = (v199 > 0xFFu) & v199;
    }

    else
    {
      v200 = 0;
    }

    v197 = v242;
    *(a1 + 417) = v200;
    if (!v197)
    {
      v233 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v233, "Could not construct");
      __cxa_throw(v233, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *(a1 + 417) = 0;
  }

  if (kLMLanguageModelRequiresStaticModelKey && (v201 = CFDictionaryGetValue(v197, kLMLanguageModelRequiresStaticModelKey)) != 0)
  {
    v202 = sub_1AE6311E0(v201);
    v203 = (v202 > 0xFFu) & v202;
  }

  else
  {
    v203 = 0;
  }

  *(a1 + 418) = v203;
  v204 = theDicta;
  v205 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey);
  if (language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey)
  {
    v206 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey, v205, 0x8000100u, 0);
    v239[0] = v206;
    if (!v206)
    {
      v207 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v207, "Could not construct");
      __cxa_throw(v207, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v206 = 0;
    v239[0] = 0;
  }

  v208 = CFDictionaryContainsKey(v204, v206);
  if (v239[0])
  {
    CFRelease(v239[0]);
  }

  if (v208)
  {
    v209 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey);
    if (language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey)
    {
      v210 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey, v209, 0x8000100u, 0);
      v239[0] = v210;
      if (!v210)
      {
        v211 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v211, "Could not construct");
        __cxa_throw(v211, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v210 = 0;
      v239[0] = 0;
    }

    v212 = CFDictionaryGetValue(v204, v210);
    if (v239[0])
    {
      CFRelease(v239[0]);
    }

    v213 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint70);
    if (language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint70)
    {
      v214 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint70, v213, 0x8000100u, 0);
      v239[0] = v214;
      if (!v214)
      {
        v215 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v215, "Could not construct");
        __cxa_throw(v215, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v214 = 0;
      v239[0] = 0;
    }

    v216 = CFStringCompare(v212, v214, 0);
    if (v239[0])
    {
      CFRelease(v239[0]);
    }

    if (v216 == kCFCompareEqualTo)
    {
      goto LABEL_295;
    }

    v217 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint80);
    if (language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint80)
    {
      v218 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint80, v217, 0x8000100u, 0);
      v239[0] = v218;
      if (!v218)
      {
        v219 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v219, "Could not construct");
        __cxa_throw(v219, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v218 = 0;
      v239[0] = 0;
    }

    v220 = CFStringCompare(v212, v218, 0);
    if (v239[0])
    {
      CFRelease(v239[0]);
    }

    if (v220 == kCFCompareEqualTo)
    {
      v224 = 1;
      goto LABEL_300;
    }

    v221 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint90);
    if (language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint90)
    {
      v222 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPoint90, v221, 0x8000100u, 0);
      v239[0] = v222;
      if (!v222)
      {
        v223 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v223, "Could not construct");
        __cxa_throw(v223, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v222 = 0;
      v239[0] = 0;
    }

    v225 = CFStringCompare(v212, v222, 0);
    if (v239[0])
    {
      CFRelease(v239[0]);
    }

    if (v225 == kCFCompareEqualTo)
    {
      v224 = 2;
      goto LABEL_300;
    }
  }

  if (_os_feature_enabled_impl())
  {
LABEL_295:
    v224 = 0;
    goto LABEL_300;
  }

  if (_os_feature_enabled_impl())
  {
    v224 = 1;
  }

  else
  {
    v224 = 2;
  }

LABEL_300:
  a1[114] = v224;
  if (theDicta)
  {
    v226 = CFDictionaryGetValue(theDicta, kLMTransientLanguageModelLogProbabilityModifierKey);
    v227 = v226;
    if (v226)
    {
      v228 = CFGetTypeID(v226);
      if (v228 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v227, kCFNumberDoubleType, a1 + 116);
      }
    }
  }

  if (v242)
  {
    CFRelease(v242);
  }
}

void sub_1AE5D1E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
    v34 = a11;
    if ((v31 & 1) == 0)
    {
LABEL_6:
      operator delete(v34);
      operator delete(a12);
      sub_1AE66D210((v30 + 3));
      v35 = sub_1AE697A84(v30);
      MEMORY[0x1B2706400](v35, 0x10E0C40052DA004);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v34 = a11;
    if (!v31)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void sub_1AE5D20F4(uint64_t a1, _BYTE *a2, const __CFString *key, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(**a1, key);
  sub_1AE5CC874(key, __p);
  if (!Value)
  {
    goto LABEL_18;
  }

  v9 = CFDictionaryGetValue(**a1, key);
  v10 = sub_1AE5CF094(v9, a4);
  if (**(a1 + 8) != 1)
  {
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v11 = qword_1ED9AC9E0;
    if (!os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v15 = __p;
    if (v21 < 0)
    {
      v15 = __p[0];
    }

    v16 = *a2;
    *buf = 136315650;
    v23 = v15;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    v27 = v10;
    v14 = "LD is Updating %s from %d to %d";
    goto LABEL_16;
  }

  if (*a2 == a4)
  {
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v11 = qword_1ED9AC9E0;
    if (!os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v12 = __p;
    if (v21 < 0)
    {
      v12 = __p[0];
    }

    v13 = *a2;
    *buf = 136315650;
    v23 = v12;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v10;
    v14 = "Options is updating %s from %d to %d";
LABEL_16:
    _os_log_impl(&dword_1AE5C8000, v11, OS_LOG_TYPE_INFO, v14, buf, 0x18u);
LABEL_17:
    *a2 = v10;
    goto LABEL_18;
  }

  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v17 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_INFO))
  {
    v18 = __p;
    if (v21 < 0)
    {
      v18 = __p[0];
    }

    v19 = *a2;
    *buf = 136315650;
    v23 = v18;
    v24 = 1024;
    v25 = v19;
    v26 = 1024;
    v27 = v10;
    _os_log_impl(&dword_1AE5C8000, v17, OS_LOG_TYPE_INFO, "LD has already modified  %s, not updating from %d to %d", buf, 0x18u);
  }

LABEL_18:
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE5D23AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFURLRef sub_1AE5D23C8(const __CFString *a1)
{
  if (!a1)
  {
    if (qword_1ED9AC938 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    result = CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, 1u);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFURLGetTypeID())
    {
      result = CFURLCopyAbsoluteURL(a1);
      if (result)
      {
        return result;
      }
    }
  }

  if (qword_1ED9AC938 != -1)
  {
LABEL_14:
    dispatch_once(&qword_1ED9AC938, &unk_1F242B928);
  }

LABEL_11:
  v5 = qword_1ED9AC930;

  return CFRetain(v5);
}

__CFArray *sub_1AE5D24A0(const __CFLocale *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Value = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
  if (CFStringCompare(Value, @"ars", 0))
  {
    if (CFStringCompare(Value, @"zh", 0) == kCFCompareEqualTo || CFStringCompare(Value, @"ja", 0) == kCFCompareEqualTo)
    {
      v4 = CFStringCreateWithFormat(0, 0, @"/usr/share/mecabra/%@", Value);
      sub_1AE5D2600(Mutable, a1, v4);
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  else
  {
    Value = @"ar";
  }

  v5 = getenv("LINGUISTIC_DATA");
  if (v5)
  {
    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
  }

  else
  {
    v6 = @"/System/Library/LinguisticData/";
  }

  v10 = Value;
  v7 = v6;
  v8 = CFStringCreateWithFormat(0, 0, @"%@/%@", v6, v10);
  CFRelease(v7);
  sub_1AE5D2600(Mutable, a1, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return Mutable;
}

void sub_1AE5D2600(__CFArray *a1, CFLocaleRef locale, const __CFString *a3)
{
  if (a1 && locale && a3)
  {
    Value = CFLocaleGetValue(locale, *MEMORY[0x1E695E6F8]);
    v7 = CFLocaleGetValue(locale, *MEMORY[0x1E695E6D0]);
    v8 = CFURLCreateWithFileSystemPath(0, a3, kCFURLPOSIXPathStyle, 1u);
    url = v8;
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 != CFURLGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v10 = url;
      if (Value)
      {
LABEL_7:
        v11 = CFURLCreateCopyAppendingPathComponent(0, v10, Value, 1u);
        cf = v11;
        if (v11)
        {
          v12 = CFGetTypeID(v11);
          if (v12 != CFURLGetTypeID())
          {
            v18 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x1B2705EB0](v18, "Could not construct");
            __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v13 = cf;
        }

        else
        {
          v13 = 0;
        }

        CFArrayAppendValue(a1, v13);
        if (cf)
        {
          CFRelease(cf);
        }

        v10 = url;
        if (!v7)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      if (Value)
      {
        goto LABEL_7;
      }
    }

    if (!v7)
    {
LABEL_24:
      CFArrayAppendValue(a1, v10);
      if (url)
      {
        CFRelease(url);
      }

      return;
    }

LABEL_17:
    v14 = CFURLCreateCopyAppendingPathComponent(0, v10, v7, 1u);
    cfa = v14;
    if (v14)
    {
      v15 = CFGetTypeID(v14);
      if (v15 != CFURLGetTypeID())
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v19, "Could not construct");
        __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v16 = cfa;
    }

    else
    {
      v16 = 0;
    }

    CFArrayAppendValue(a1, v16);
    if (cfa)
    {
      CFRelease(cfa);
    }

    v10 = url;
    goto LABEL_24;
  }
}

void sub_1AE5D2828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1AE66A234(&a9);
  sub_1AE68C59C(&a10);
  _Unwind_Resume(a1);
}

CFArrayRef sub_1AE5D28BC(void *a1)
{
  v1 = a1[1];
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  result = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AE5D2A30(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

__CFArray *sub_1AE5D2A58(uint64_t a1, int a2, int a3)
{
  if (a2 && a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    LDEnumerateAssetDataItems();
    v3 = v8[3];
    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (a2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    LDEnumerateAssetDataItems();
    v3 = v8[3];
    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    LDEnumerateAssetDataItems();
    v3 = v8[3];
    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    LDEnumerateAssetDataItems();
    v3 = v8[3];
    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  CFRetain(v3);
  CFRelease(v3);
LABEL_13:
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LDEnumerateAssetDataItems();
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
  v11.length = CFArrayGetCount(v4);
  v11.location = 0;
  CFArrayAppendArray(MutableCopy, v4, v11);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return MutableCopy;
}

void sub_1AE5D2E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_1AE65095C(va);
  _Unwind_Resume(a1);
}

void sub_1AE5D2F0C(uint64_t a1, const void *a2, int a3, int a4, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);

    CFArrayAppendValue(v7, a2);
  }
}

void sub_1AE5D2F70(int a1, CFURLRef url)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (CFStringHasSuffix(PathComponent, @".lm"))
  {
    sub_1AE61D968();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  sub_1AE5CC990(&v3, "invalid bundle");
  sub_1AE660DB0(exception, &v3.st_dev);
  __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
}

void sub_1AE5D387C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
    if (*(v35 - 129) < 0)
    {
LABEL_5:
      operator delete(*(v35 - 152));
      if ((*(v35 - 153) & 0x80000000) == 0)
      {
LABEL_10:
        if (!v34)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

LABEL_8:
      operator delete(*(v35 - 176));
      if ((v34 & 1) == 0)
      {
LABEL_12:
        if (*(v35 - 185) < 0)
        {
          operator delete(*(v35 - 208));
        }

        sub_1AE636D70((v35 - 184));
        _Unwind_Resume(a1);
      }

LABEL_11:
      __cxa_free_exception(v33);
      goto LABEL_12;
    }
  }

  else if (*(v35 - 129) < 0)
  {
    goto LABEL_5;
  }

  if ((*(v35 - 153) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_8;
}

void sub_1AE5D3B64(uint64_t a1, CFArrayRef *a2)
{
  v3 = LDCreateSystemLexiconCompatibilityVersion();
  sub_1AE5CC874(v3, &v7);
  if (v3)
  {
    CFRelease(v3);
  }

  if (CFArrayGetCount(*a2) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a2, 0);
    v6 = CFBundleCopyBundleURL(ValueAtIndex);
    sub_1AE5D2F70(&v5, v6);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

void sub_1AE5D4070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

CFURLRef sub_1AE5D40B8(uint64_t a1, CFStringRef theString)
{
  if (CFStringFind(theString, @".", 0).location == -1)
  {
    v4 = CFStringCreateWithFormat(0, 0, @"%@.dat", theString);
  }

  else
  {
    v4 = CFStringCreateWithFormat(0, 0, @"%@", theString);
  }

  v5 = v4;
  v6 = CFURLCreateCopyAppendingPathComponent(0, *(a1 + 16), v4, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void sub_1AE5D4154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE5D4168(uint64_t a1, CFDictionaryRef theDict)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  Value = CFDictionaryGetValue(theDict, @"Type");
  if (Value)
  {
    v6 = Value;
    *valuePtr = 999;
    if (!CFNumberGetValue(Value, kCFNumberIntType, valuePtr) || *valuePtr > 0x24u || ((0x1300080348uLL >> valuePtr[0]) & 1) == 0)
    {
      if (v4 != 1 || (*valuePtr = 0, CFNumberGetValue(v6, kCFNumberIntType, valuePtr), *valuePtr > 0x2Eu) || ((0x4000A00030A3uLL >> valuePtr[0]) & 1) == 0)
      {
        if (!CFDictionaryContainsKey(v3, v6))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *valuePtr = Mutable;
          CFDictionarySetValue(v3, v6, Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        v8 = CFDictionaryGetValue(v3, v6);
        if (CFDictionaryContainsKey(theDict, @"Priority"))
        {
          v9 = CFDictionaryGetValue(theDict, @"Priority");
          v10 = CFRetain(v9);
        }

        else
        {
          LODWORD(theDicta) = 0;
          v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &theDicta);
        }

        v12 = v10;
        *valuePtr = v10;
        if (CFDictionaryContainsKey(v8, @"Resources"))
        {
          v13 = CFDictionaryGetValue(v8, @"Resources");
          v14 = CFDictionaryGetValue(v8, @"Priority");
          v15 = CFNumberCompare(v12, v14, 0);
          if (v15)
          {
            if (v15 == kCFCompareGreaterThan)
            {
              sub_1AE68CD74(&theDicta, theDict);
              v16 = CFDictionaryGetValue(theDicta, @"UseExistingModelFiles");
              if (sub_1AE5CF094(v16, 0))
              {
                v17 = CFDictionaryGetValue(theDicta, @"Name");
                if (!(v17 | CFDictionaryGetValue(theDicta, @"URL")) && CFArrayGetCount(v13) == 1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
                  v19 = CFDictionaryGetValue(ValueAtIndex, @"Name");
                  v20 = CFDictionaryGetValue(ValueAtIndex, @"URL");
                  if (v19)
                  {
                    v21 = v20;
                    if (v20)
                    {
                      v22 = *MEMORY[0x1E695E480];
                      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDicta);
                      CFDictionarySetValue(MutableCopy, @"Name", v19);
                      CFDictionarySetValue(MutableCopy, @"URL", v21);
                      Copy = CFDictionaryCreateCopy(v22, MutableCopy);
                      sub_1AE68CE34(&v26, Copy);
                      v24 = theDicta;
                      theDicta = v26;
                      v26 = v24;
                      sub_1AE621CF0(&v26);
                      sub_1AE66A268(&MutableCopy);
                    }
                  }
                }
              }

              CFArrayRemoveAllValues(v13);
              CFArrayAppendValue(v13, theDicta);
              CFDictionarySetValue(v8, @"Priority", v12);
              if (theDicta)
              {
                CFRelease(theDicta);
              }
            }
          }

          else
          {
            CFArrayAppendValue(v13, theDict);
          }
        }

        else
        {
          v25 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
          theDicta = v25;
          CFArrayAppendValue(v25, theDict);
          CFDictionarySetValue(v8, @"Resources", v25);
          CFDictionarySetValue(v8, @"Priority", v12);
          if (v25)
          {
            CFRelease(v25);
          }
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }
  }

  else
  {
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v11 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = theDict;
      _os_log_error_impl(&dword_1AE5C8000, v11, OS_LOG_TYPE_ERROR, "Malformed resource properties (missing resource type):\n%@", valuePtr, 0xCu);
    }
  }
}

void sub_1AE5D45C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  sub_1AE621CF0(va);
  sub_1AE68C7C0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5D4684(uint64_t a1)
{
  std::mutex::~mutex((a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 48) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    v4 = *(a1 + 16);
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_9:
    CFRelease(v4);
  }

LABEL_10:
  *(a1 + 16) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 8) = 0;
  return a1;
}

CFPropertyListRef sub_1AE5D4728(CFURLRef fileURL, int a2, CFErrorRef *a3)
{
  v6 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (v6)
  {
    v7 = v6;
    if (CFReadStreamOpen(v6) && (!a2 ? (v8 = 0) : (v8 = 2), v9 = CFPropertyListCreateWithStream(0, v7, 0, v8, 0, 0), CFReadStreamClose(v7), v9))
    {
      v10 = CFGetTypeID(v9);
      if (v10 != CFDictionaryGetTypeID())
      {
        if (a3)
        {
          *a3 = sub_1AE61DE58(@"Property list at URL is not a dictionary", fileURL);
        }

        CFRelease(v9);
        goto LABEL_15;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_15:
        v9 = 0;
        goto LABEL_16;
      }

      v9 = 0;
      *a3 = sub_1AE61DE58(@"File at URL is not a valid property list", fileURL);
    }

LABEL_16:
    CFRelease(v7);
    return v9;
  }

  v9 = 0;
  if (a3)
  {
    *a3 = sub_1AE61DE58(@"File at URL is not readable", fileURL);
  }

  return v9;
}

void sub_1AE5D4864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE61DFC4(va, 0);
  _Unwind_Resume(a1);
}

double LMStreamTokenizerReset(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    *(v1 + 184) = *(v1 + 176);
    *(v1 + 208) = *(v1 + 200);
    *(v1 + 232) = *(v1 + 224);
    *(v1 + 264) = *(v1 + 256);
    *(v1 + 280) = 0;
    result = NAN;
    *(v1 + 288) = xmmword_1AE79A570;
    *(v1 + 304) = -1;
    *(v1 + 312) = 0;
    *(v1 + 248) = -1;
  }

  return result;
}

void sub_1AE5D49C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    MEMORY[0x1B2706400](v12, 0x20C4093837F09);
    if (a2 == 2)
    {
      v15 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v16 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v17 = (*(*v15 + 16))(v15);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "makeSession";
        WORD6(buf) = 2080;
        *(&buf + 14) = v17;
        _os_log_error_impl(&dword_1AE5C8000, v16, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      *v11 = 0;
      __cxa_end_catch();
      JUMPOUT(0x1AE5D4998);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

double LMStreamTokenizerPopBytes(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    return *&v15;
  }

  v4 = *(a1 + 24);
  if (HIDWORD(a2) || (v5 = *(v4 + 176), v6 = *(v4 + 184) - v5, v7 = v6 - a2, v6 < a2))
  {
    v7 = 0;
    *(v4 + 312) = 0;
  }

  else
  {
    *(v4 + 312) = v7;
    v14 = v7 - 1;
    if (v7 >= 1 && v5[v7 & 0x7FFFFFFF] <= -65)
    {
      *(v4 + 312) = v14;
      if (v5[v14] <= -65)
      {
        *(v4 + 312) = utf8_back1SafeBody(v5, 0, v14);
      }
    }
  }

  v8 = v7;
  v10 = *(v4 + 176);
  v9 = *(v4 + 184);
  v11 = v7 >= &v9[-v10];
  v12 = v7 - &v9[-v10];
  if (v12 != 0 && v11)
  {
    v13 = *(v4 + 192);
    if (v13 - v9 < v12)
    {
      if ((v8 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v16 = &v9[v12];
    bzero(v9, v12);
    *(v4 + 184) = v16;
  }

  else if (!v11)
  {
    *(v4 + 184) = v10 + v8;
  }

  v17 = *(v4 + 256);
  v18 = *(v4 + 264);
  v19 = (v18 - v17) >> 2;
  v20 = v8 - v19;
  if (v8 > v19)
  {
    v21 = *(v4 + 272);
    if (v20 > (v21 - v18) >> 2)
    {
      if ((v8 & 0x80000000) == 0)
      {
        v22 = v21 - v17;
        v23 = v22 >> 1;
        if (v22 >> 1 <= v8)
        {
          v23 = v8;
        }

        v11 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
        v24 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v11)
        {
          v24 = v23;
        }

        if (!(v24 >> 62))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      sub_1AE5CBB70();
    }

    bzero(*(v4 + 264), 4 * v20);
    v25 = v18 + 4 * v20;
    goto LABEL_30;
  }

  if (v8 < v19)
  {
    v25 = v17 + 4 * v8;
LABEL_30:
    *(v4 + 264) = v25;
  }

  v26 = *(v4 + 200);
  v27 = *(v4 + 208);
  v28 = *(v4 + 312);
  v29 = v26;
  if (v27 != v26)
  {
    v30 = v27 - 2;
    while (*(v30 + 2) + *(v30 + 1) >= v28)
    {
      v15 = *v30;
      v31 = v30[1];
      *(v4 + 280) = *v30;
      *(v4 + 296) = v31;
      *(v4 + 208) = v30;
      v32 = v30 == v26;
      v30 -= 2;
      if (v32)
      {
        v29 = v26;
        goto LABEL_38;
      }
    }

    v29 = v30 + 2;
  }

LABEL_38:
  v33 = *(v4 + 288);
  if (v33 > v28)
  {
    *(v4 + 280) = 0;
    *&v15 = -1;
    *(v4 + 288) = xmmword_1AE79A570;
    v33 = -1;
    *(v4 + 304) = -1;
  }

  v34 = *(v4 + 224);
  v35 = *(v4 + 232);
  if (v35 != v34)
  {
    v36 = 0;
    v37 = v35 - v34 - 32;
    do
    {
      if (*(v35 - 8) <= v28)
      {
        v38 = *(v35 - 24);
        v39 = *(v4 + 296) + v33;
        v40 = *(v35 - 16) + v38;
        v41 = v38 < v33 || v39 <= v38;
        v42 = v41 || v40 <= v33;
        if (v42 || v40 > v39)
        {
          break;
        }
      }

      v35 -= 32;
      *(v4 + 232) = v35;
      v44 = *(v4 + 248);
      if (v44 >= v37 >> 5)
      {
        *(v4 + 248) = v44 - 1;
        ++v36;
      }

      v37 -= 32;
    }

    while (v35 != v34);
    if (v36 >= 1)
    {
      (*(a3 + 16))(a3);
      v26 = *(v4 + 200);
      v29 = *(v4 + 208);
    }
  }

  if (v26 == v29 || !*(v4 + 296))
  {
    *(v4 + 280) = 0;
    *&v15 = -1;
    *(v4 + 288) = xmmword_1AE79A570;
    *(v4 + 304) = -1;
  }

  else
  {
    v45 = *(v4 + 288);
    if (v45 != -1)
    {
      *(v4 + 296) = *(v4 + 312) - v45;
    }
  }

  return *&v15;
}

void language_modeling::v1::LanguageModelSession::~LanguageModelSession(language_modeling::v1::LanguageModelSession *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void *sub_1AE5D5584(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2428C90;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1B27063D0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_1AE5D55E8(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_1F2428B70;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F2428C90;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F2428C90;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_1AE6089B8((a1 + 96));
  sub_1AE5D571C(a1, a3, a4, &v8);
  sub_1AE608BD8((a1 + 96), &v8);
  sub_1AE6089C0(&v8);
  return a1;
}

void sub_1AE5D56CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6089C0(va);
  sub_1AE6089C0((v4 + 96));
  sub_1AE5D5584(v5);
  sub_1AE5D5584(v3);
  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    sub_1AE5DB58C(v2, v7);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE5D571C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sub_1AE5D5DC4(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sub_1AE6089C0(a4);
    result = sub_1AE606E4C(&v8, 4uLL, a4);
    if (!*a4)
    {
      sub_1AE6089C0(a4);
      result = sub_1AE5D5DC4(v8, v9, (a1 + 92), a4);
      if (!*a4)
      {
        sub_1AE6089C0(a4);
        result = sub_1AE606E4C(&v8, 4uLL, a4);
        if (!*a4)
        {
          sub_1AE6089C0(a4);
          v7 = 0;
          result = sub_1AE5D5FD0(v8, v9, &v7, a4);
          if (!*a4)
          {
            sub_1AE6089C0(a4);
            result = sub_1AE606E4C(&v8, 4uLL, a4);
            if (!*a4)
            {
              sub_1AE6089C0(a4);
              sub_1AE5D61DC();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1AE5D5D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE5D62DC(va);
  _Unwind_Resume(a1);
}

void *sub_1AE5D5DC4@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1AE5D9464(&v8);
    sub_1AE5DB608(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1AE5DB608(&v8, "(", 1);
    MEMORY[0x1B2706100](&v8, 448);
    sub_1AE5DB608(&v8, ") [", 3);
    sub_1AE5DB608(&v8, "string.size() >= sizeof(T)", 26);
    sub_1AE5DB608(&v8, "] ", 2);
    sub_1AE5D624C(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1B2706340](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_1AE6089B8(a4);
  }
}

void *sub_1AE5D5FD0@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1AE5D9464(&v8);
    sub_1AE5DB608(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1AE5DB608(&v8, "(", 1);
    MEMORY[0x1B2706100](&v8, 448);
    sub_1AE5DB608(&v8, ") [", 3);
    sub_1AE5DB608(&v8, "string.size() >= sizeof(T)", 26);
    sub_1AE5DB608(&v8, "] ", 2);
    sub_1AE5D624C(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1B2706340](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_1AE6089B8(a4);
  }
}

void sub_1AE5D624C(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sub_1AE608B24(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE5D62C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5D62DC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 8) = *MEMORY[0x1E69E54E8];
  *(a1 + 8 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::ostream::~ostream();
  MEMORY[0x1B2706340](a1 + 120);
  return a1;
}

void *sub_1AE5D6400(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (result = __dynamic_cast(v1, &unk_1F2428C60, &unk_1F2429C40, 16)) == 0)
  {
    v8 = 1;
    v3 = sub_1AE5DB608(MEMORY[0x1E69E5300], "model_interface.cc", 18);
    v4 = sub_1AE5DB608(v3, "(", 1);
    v5 = MEMORY[0x1B2706100](v4, 103);
    v6 = sub_1AE5DB608(v5, ") [", 3);
    v7 = sub_1AE5DB608(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    sub_1AE5DB608(v7, "] ", 2);
    result = sub_1AE5D9794(&v8);
    __break(1u);
  }

  return result;
}

void *sub_1AE5D64F8(void *a1)
{
  *a1 = &unk_1F2428B70;
  sub_1AE6089C0(a1 + 12);
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = &unk_1F2428C90;
  v2 = a1[10];
  if (v2)
  {
    MEMORY[0x1B27063D0](v2, 0x1000C8052888210);
    a1[10] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &unk_1F2428C90;
  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x1B27063D0](v3, 0x1000C8052888210);
    a1[6] = 0;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_1AE5DB58C((a1 + 2), v4);
  }

  return a1;
}

const char *sub_1AE5D65D8(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  else
  {
    return "<unk>";
  }
}

const char *sub_1AE5D665C(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 40))(*(a1 + 8));
  }

  else
  {
    return "<s>";
  }
}

const char *sub_1AE5D66E0(uint64_t a1)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8));
  }

  else
  {
    return "</s>";
  }
}

const char *sub_1AE5D6764(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 56))(*(a1 + 8));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sub_1AE5D67E8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sub_1AE5D6958(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_1AE6089C0(&__p);
  if (v12)
  {
    sub_1AE608BD4(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_1AE5D6B54(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
      {
        v20[0] = (*(*a1 + 120))(a1, v16);
        v20[1] = v17;
        v18 = a5[1];
        if (v18 >= a5[2])
        {
          v19 = sub_1AE5DBB10(a5, v20);
        }

        else
        {
          sub_1AE5DBA4C(a5, v20);
          v19 = (v18 + 24);
        }

        a5[1] = v19;
      }

      v14 += 4;
    }

    sub_1AE608BD4(a6, a1 + 96);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_1AE5D6B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D6B54(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a4 != -1)
  {
    a5 = a4;
  }

  sub_1AE5DB998(a6, a5);
  v12 = sub_1AE5D9874(a1, a2, *a6, (a6[1] - *a6) >> 4, a3, a4);
  sub_1AE5D9B7C(a6, v12);
}

void sub_1AE5D6BD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D6BF0(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void **a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a1 + 16))(&__p);
  v12 = __p;
  sub_1AE6089C0(&__p);
  if (v12)
  {
    sub_1AE608BD4(a6, a1 + 96);
  }

  else
  {
    v13 = (*(*a1 + 128))(a1);
    sub_1AE5D6B54(a1 + 24, a2, a3, a4, v13, &__p);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if (((*(*a1 + 144))(a1, v16) & 1) == 0 && ((*(*a1 + 152))(a1, v16) & 1) == 0)
        {
          v18 = a5[1];
          v17 = a5[2];
          if (v18 >= v17)
          {
            v20 = *a5;
            v21 = v18 - *a5;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              sub_1AE5CBB70();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_1AE5DBD94(a5, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a5;
            *a5 = 0;
            a5[1] = v19;
            a5[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a5[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sub_1AE608BD4(a6, a1 + 96);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_1AE5D6E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D6E48(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v23);
  v10 = v23;
  sub_1AE6089C0(&v23);
  if (v10)
  {
    sub_1AE608BD4(a5, a1 + 96);
  }

  else
  {
    sub_1AE5D7104(a1 + 24, a2, a3, &v23);
    v11 = v23;
    v12 = v24;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        __p[0] = (*(*a1 + 120))(a1, v13);
        __p[1] = v14;
        v15 = a4[1];
        if (v15 >= a4[2])
        {
          v16 = sub_1AE5DBB10(a4, __p);
        }

        else
        {
          sub_1AE5DBA4C(a4, __p);
          v16 = (v15 + 24);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v25 = *a2;
        sub_1AE5D8BD8("<0x%02X>", &v25, __p);
        v18 = a4[1];
        if (v18 >= a4[2])
        {
          v20 = sub_1AE5DBDDC(a4, __p);
        }

        else
        {
          if (SHIBYTE(v22) < 0)
          {
            sub_1AE5DBF1C(a4[1], __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(v18 + 16) = v22;
            *v18 = v19;
          }

          v20 = v18 + 24;
          a4[1] = v18 + 24;
        }

        a4[1] = v20;
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_1AE608BD4(a5, a1 + 96);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_1AE5D70B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D7104(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AE5DB998(a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  sub_1AE5D9B7C(a4, v13);
}

void sub_1AE5D7254(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D72A0(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  (*(*a1 + 16))(&v41);
  v10 = v41;
  sub_1AE6089C0(&v41);
  if (v10)
  {
    sub_1AE608BD4(a5, a1 + 96);
  }

  else
  {
    sub_1AE5D7104(a1 + 24, a2, a3, &v41);
    v11 = v41;
    v12 = v42;
    while (v11 != v12)
    {
      v13 = *v11;
      if (((*(*a1 + 144))(a1, v13) & 1) == 0 && ((*(*a1 + 152))(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            sub_1AE5CBB70();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            sub_1AE5DBD94(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && (*(*a1 + 184))(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v43 = *a2;
        sub_1AE5D8BD8("<0x%02X>", &v43, __p);
        if ((v40 & 0x80u) == 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if ((v40 & 0x80u) == 0)
        {
          v27 = v40;
        }

        else
        {
          v27 = __p[1];
        }

        v28 = (*(*a1 + 112))(a1, v26, v27);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_1AE5CBB70();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_1AE5DBD94(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_1AE608BD4(a5, a1 + 96);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }
}

void sub_1AE5D7618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D7658(uint64_t a1)
{
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = &v50;
  v46 = &v47;
  v47 = 0;
  *(a1 + 88) = -1;
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  LOBYTE(v52) = 0;
  sub_1AE5DC014(&__p, 256);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(a1 + 88) == -1)
    {
      sub_1AE608B24(&v52, 13, "unk is not defined.", 19);
      sub_1AE608BD8((a1 + 96), &v52);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &unk_1EB5E10C8;
      }

      if (v24[248] != 1 || (*&v52 = __p, DWORD2(v52) = 0, sub_1AE5DC770(&v52, v43, &v40), v40.__r_.__value_.__l.__data_ == __p + 8 * (v43 >> 6)) && LODWORD(v40.__r_.__value_.__r.__words[1]) == (v43 & 0x3F))
      {
        if (!v51 || (sub_1AE5D7F08(a1 + 24, &v49, &v52), sub_1AE608BD8((a1 + 96), &v52), sub_1AE6089C0(&v52), (*(*a1 + 16))(&v52, a1), v25 = v52, sub_1AE6089C0(&v52), !v25))
        {
          if (!v48 || (sub_1AE5D7F08(a1 + 56, &v46, &v52), sub_1AE608BD8((a1 + 96), &v52), sub_1AE6089C0(&v52), (*(*a1 + 16))(&v52, a1), v26 = v52, sub_1AE6089C0(&v52), !v26))
          {
            sub_1AE5D83D0();
          }
        }

        goto LABEL_69;
      }

      sub_1AE608BD8((a1 + 96), &v52);
    }

LABEL_68:
    sub_1AE6089C0(&v52);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_1AE5DA588(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sub_1AE608B24(&v52, 13, "piece must not be empty.", 24);
        sub_1AE608BD8((a1 + 96), &v52);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v46;
    }

    else
    {
      v13 = &v49;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v52 = v7;
    *(&v52 + 1) = v8;
    LODWORD(v53) = v4;
    sub_1AE5DC2D8(v13, &v52);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v52 = v17;
      *(&v52 + 1) = v18;
      sub_1AE5DC6DC(&v44, &v52);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &unk_1EB5E10C8;
      }

      if ((v19[248] & 1) == 0)
      {
        std::operator+<char>();
        v35 = *&v34->__r_.__value_.__l.__data_;
        v53 = v34->__r_.__value_.__r.__words[2];
        v52 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v53 >= 0)
        {
          v36 = &v52;
        }

        else
        {
          v36 = v52;
        }

LABEL_75:
        v39 = strlen(v36);
        sub_1AE608B24(&v41, 13, v36, v39);
        sub_1AE608BD8((a1 + 96), &v41);
        sub_1AE6089C0(&v41);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v40.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sub_1AE5D7DB4(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        std::operator+<char>();
        v37 = std::string::append(&v40, " is invalid.");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v53 = v37->__r_.__value_.__r.__words[2];
        v52 = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (v53 >= 0)
        {
          v36 = &v52;
        }

        else
        {
          v36 = v52;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(a1 + 88) & 0x80000000) == 0)
      {
        sub_1AE608B24(&v52, 13, "unk is already defined.", 23);
        sub_1AE608BD8((a1 + 96), &v52);
        goto LABEL_68;
      }

      *(a1 + 88) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v52;
  sub_1AE5DC650(&v52, v28 + 20);
  if (v53 < 0)
  {
    v29 = v52;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v53 >= 0)
  {
    v31 = &v52;
  }

  else
  {
    v31 = v52;
  }

  v32 = strlen(v31);
  sub_1AE608B24(&v40, 13, v31, v32);
  sub_1AE608BD8((a1 + 96), &v40);
  sub_1AE6089C0(&v40);
  if (SHIBYTE(v53) < 0)
  {
    v33 = v52;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AE5DBFC0(&v44, v45[0]);
  sub_1AE5DBFC0(&v46, v47);
  sub_1AE5DBFC0(&v49, v50);
}

void sub_1AE5D7C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26)
{
  sub_1AE6089C0(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_1AE5DBFC0(&a19, a20);
  sub_1AE5DBFC0(&a22, a23);
  sub_1AE5DBFC0(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5D7DB4(void *__src, size_t __len)
{
  if ((atomic_load_explicit(&qword_1EB5E0B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB5E0B60))
  {
    sub_1AE5D8C88();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v4 = qword_1EB5E0B58;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = sub_1AE5DC898(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1AE5D7F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v4 = a2 + 1;
    v3 = *a2;
    while (1)
    {
      v5 = v3[4];
      v6 = v32;
      if (v32 >= v33)
      {
        v8 = (v32 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          sub_1AE5CBB70();
        }

        v9 = (v33 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          sub_1AE5DC994(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v32 - __p);
        memcpy(v12, __p, v32 - __p);
        v13 = __p;
        __p = v12;
        v32 = v7;
        v33 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v32 = v5;
        v7 = (v6 + 8);
      }

      v32 = v7;
      v14 = v29;
      if (v29 >= v30)
      {
        v16 = __src;
        v17 = v29 - __src;
        v18 = (v29 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          sub_1AE5CBB70();
        }

        v20 = v30 - __src;
        if ((v30 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_1AE5DBD94(&__src, v21);
        }

        *(4 * v18) = *(v3 + 12);
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v29 = v15;
        v30 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v29 = *(v3 + 12);
        v15 = (v14 + 4);
      }

      v29 = v15;
      v23 = v3[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v3[2];
          v25 = *v24 == v3;
          v3 = v24;
        }

        while (!v25);
      }

      v3 = v24;
      if (v24 == v4)
      {
        sub_1AE5D8D70(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  return sub_1AE608B24(a3, 13, "no pieces are loaded.", 21);
}

void sub_1AE5D8378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D8440(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(a1 + 88);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 92);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_1AE5E1008(*(a1 + 16), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sub_1AE606DE4(a2);
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sub_1AE606DE4(a2);
  v26 = a1 + 64;
  v24 = *(a1 + 64);
  v25 = *(v26 + 8);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1AE5D8708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D8780(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_1AE7C16A4[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              sub_1AE5CBB70();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_1AE5DC850(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    sub_1AE5DC850(a5, 1uLL);
  }
}

void sub_1AE5D8BA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5D8BD8@<X0>(char *__format@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = snprintf(0, 0, __format, *a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::resize(a3, v6, 0);
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  return snprintf(v8, v7 + 1, __format, *a2);
}

void sub_1AE5D8C6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D8D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5D8D70(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_1AE5DC9DC(&v6, v12);
}

uint64_t sub_1AE5D8EB0@<X0>(void *a1@<X8>)
{
  result = sub_1AE606A34();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_1AE5DB608(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = sub_1AE5DB608(v3, "(", 1);
    v5 = MEMORY[0x1B2706100](v4, 96);
    v6 = sub_1AE5DB608(v5, ") ", 2);
    v7 = sub_1AE5DB608(v6, "LOG(", 4);
    v8 = sub_1AE5DB608(v7, "ERROR", 5);
    v9 = sub_1AE5DB608(v8, ") ", 2);
    sub_1AE5DB608(v9, "Not implemented.", 16);
    result = sub_1AE5D9794(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1AE5D8F8C@<X0>(void *a1@<X8>)
{
  result = sub_1AE606A34();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_1AE5DB608(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = sub_1AE5DB608(v3, "(", 1);
    v5 = MEMORY[0x1B2706100](v4, 102);
    v6 = sub_1AE5DB608(v5, ") ", 2);
    v7 = sub_1AE5DB608(v6, "LOG(", 4);
    v8 = sub_1AE5DB608(v7, "ERROR", 5);
    v9 = sub_1AE5DB608(v8, ") ", 2);
    sub_1AE5DB608(v9, "Not implemented.", 16);
    result = sub_1AE5D9794(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_1AE5D9068(void *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1AE606A34() <= 2)
  {
    LOBYTE(__p) = 0;
    v2 = sub_1AE5DB608(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v3 = sub_1AE5DB608(v2, "(", 1);
    v4 = MEMORY[0x1B2706100](v3, 117);
    v5 = sub_1AE5DB608(v4, ") ", 2);
    v6 = sub_1AE5DB608(v5, "LOG(", 4);
    v7 = sub_1AE5DB608(v6, "ERROR", 5);
    v8 = sub_1AE5DB608(v7, ") ", 2);
    sub_1AE5DB608(v8, "Not implemented.", 16);
    sub_1AE5D9794(&__p);
  }

  __p = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_1AE5DB0C4(a1, &__p, &v13, 1uLL);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1AE5D9190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1AE5D91BC()
{
  if (sub_1AE606A34() <= 2)
  {
    v8 = 0;
    v0 = sub_1AE5DB608(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v1 = sub_1AE5DB608(v0, "(", 1);
    v2 = MEMORY[0x1B2706100](v1, 125);
    v3 = sub_1AE5DB608(v2, ") ", 2);
    v4 = sub_1AE5DB608(v3, "LOG(", 4);
    v5 = sub_1AE5DB608(v4, "ERROR", 5);
    v6 = sub_1AE5DB608(v5, ") ", 2);
    sub_1AE5DB608(v6, "Not implemented.", 16);
    sub_1AE5D9794(&v8);
  }

  return 0.0;
}

uint64_t sub_1AE5D92D8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1AE5D93F8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *sub_1AE5D9464(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1AE5D95D0((a1 + 1), 16);
  return a1;
}

void sub_1AE5D95A8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B2706340](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5D95D0(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B27062D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1AE5D968C(a1);
  return a1;
}

void sub_1AE5D9664(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1AE5D968C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *sub_1AE5D9794(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_1AE60886C();
  }

  return a1;
}

unint64_t sub_1AE5D9874(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  sub_1AE5D9BAC(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            sub_1AE5D9BAC(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  sub_1AE5DA2A0(v43);
  return v24;
}

void sub_1AE5D9B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AE5DA2A0(va);
  _Unwind_Resume(a1);
}

void sub_1AE5D9B7C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1AE5DA39C(a1, a2 - v2);
  }
}

__n128 sub_1AE5D9BAC(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1AE5D9C5C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void *sub_1AE5D9C5C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1AE5DA258(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1AE5D9E30(a1, &v10);
}

void sub_1AE5D9DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE5D9E30(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1AE5DA258(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1AE5D9F38(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1AE5DA258(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1AE5DA044(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1AE5DA258(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1AE5DA14C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1AE5DA258(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1AE5DA258(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5DA2A0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1AE5DA34C(a1);
}

uint64_t sub_1AE5DA34C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1AE5DA39C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1AE5CBB70();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1AE5DA540(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1AE5DA4B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AE5DA50C(exception, a1);
  __cxa_throw(exception, off_1E7A2D6C8, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1AE5DA50C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1AE5DA540(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5DA588(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AE5DA648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

const void **sub_1AE5DA668(void *a1, const void **a2)
{
  v4 = sub_1AE5DA8E8(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1AE5DAD94(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_1AE5DA8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_1AE5DA928(&v5, a2, v3);
}

unint64_t sub_1AE5DA928(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1AE5DACD4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1AE5DAC28(a2, a3);
  }

  else
  {
    return sub_1AE5DAB30(a2, a3);
  }
}

unint64_t sub_1AE5DAB30(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1AE5DAC28(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1AE5DACD4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_1AE5DAD94(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_1AE5DAE0C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1AE5DAEFC(a1, prime);
    }
  }
}

void sub_1AE5DAEFC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1AE5DB060(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1AE5DB0C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5DB14C(result, a4);
  }

  return result;
}

void sub_1AE5DB12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1AE5DB444(&a9);
  _Unwind_Resume(a1);
}

void sub_1AE5DB14C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1AE5DB188(a1, a2);
  }

  sub_1AE5CBB70();
}

void sub_1AE5DB188(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5DB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_1AE5DB298(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1AE5DB3BC(v8);
  return v4;
}

uint64_t sub_1AE5DB298(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5DB318(result, a4);
  }

  return result;
}

void sub_1AE5DB2FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5DB318(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AE5DB364(a1, a2);
  }

  sub_1AE5CBB70();
}

void sub_1AE5DB364(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5DB3BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1AE5DB3F4(a1);
  }

  return a1;
}

void sub_1AE5DB3F4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1AE5DB444(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AE5DB498(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AE5DB498(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1AE5DB508(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2428C90;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1B27063D0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x1B2706400);
}

void sub_1AE5DB58C(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x1B2706400);
  }
}

void *sub_1AE5DB608(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B27060A0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1AE5DB7B0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1B27060B0](v13);
  return a1;
}

void sub_1AE5DB748(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1B27060B0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1AE5DB728);
}

uint64_t sub_1AE5DB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1AE5DB97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE5DB998(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5DBA10(result, a2);
  }

  return result;
}

void sub_1AE5DB9F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5DBA10(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1AE5DA540(a1, a2);
  }

  sub_1AE5CBB70();
}

void *sub_1AE5DBA4C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

char *sub_1AE5DBB10(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1AE5DBCA8(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v18 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  sub_1AE5DBD00(&v16);
  return v10;
}

void sub_1AE5DBC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5DBD00(va);
  _Unwind_Resume(a1);
}

void sub_1AE5DBCA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5DBD00(uint64_t a1)
{
  sub_1AE5DBD38(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE5DBD38(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}