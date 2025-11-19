void sub_10004961C(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v159 = a1 + 64;
  v160 = a1 + 144;
  while (2)
  {
    v10 = *(a1 + 40);
    v11 = *a1;
    v12 = *(a1 + 8);
    v8 = v10;
    if (&v12[-*a1] < 1)
    {
LABEL_314:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &byte_1002E4868;
      *(a1 + 8) = &byte_1002E4868;
      v11 = &byte_1002E4868;
      v12 = &byte_1002E4868;
      goto LABEL_317;
    }

    while (1)
    {
      v13 = *v11;
      v8 = *(a1 + 40);
      if (v13 == 124 || v13 == a2)
      {
        break;
      }

      v15 = v11 + 1;
      *a1 = v11 + 1;
      v16 = *v11;
      if (v16 > 62)
      {
        if (v16 > 93)
        {
          if (v16 != 94)
          {
            if (v16 == 123)
            {
              if (v12 - v15 >= 1 && *v15 - 48 <= 9)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
              }
            }

            else if (v16 == 124)
            {
              if (*(a1 + 16))
              {
                goto LABEL_142;
              }

              v18 = 14;
              goto LABEL_141;
            }

            goto LABEL_71;
          }

          if (!*(a1 + 16))
          {
            v25 = *(a1 + 32);
            if (v8 >= v25)
            {
              v26 = (v25 + 1) / 2;
              v27 = ((v25 + 1 + ((v25 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v26;
              if (v25 < v27)
              {
                if (v27 >> 61)
                {
                  goto LABEL_55;
                }

                v48 = malloc_type_realloc(*(a1 + 24), 24 * v26, 0x100004000313F17uLL);
                if (v48)
                {
                  *(a1 + 24) = v48;
                  *(a1 + 32) = v27;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_55:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002E4868;
                  *(a1 + 8) = &byte_1002E4868;
                }
              }
            }

            v49 = *(a1 + 24);
            v50 = *(a1 + 40);
            *(a1 + 40) = v50 + 1;
            *(v49 + 8 * v50) = 402653184;
          }

          v33 = 0;
          v51 = *(a1 + 56);
          v52 = v51[9];
          a4 = COERCE_DOUBLE(vadd_s32(v52, 0x100000001));
          LODWORD(a3) = v52.i32[0] | 1;
          HIDWORD(a3) = HIDWORD(a4);
          *&v51[9] = a3;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 == 63)
        {
          goto LABEL_30;
        }

        if (v16 == 91)
        {
          sub_10004B98C(a1, a3, a4, a5, a6);
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 != 92)
        {
          goto LABEL_71;
        }

        if (v12 - v15 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 5;
          }

          *a1 = &byte_1002E4869;
          *(a1 + 8) = &byte_1002E4868;
          v17 = byte_1002E4868;
          if ((byte_1002E4868 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        else
        {
          *a1 = v15 + 1;
          v17 = *v15;
          if ((v17 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        v35 = (v17 - 48);
        v36 = *(v160 + 8 * v35);
        v37 = *(a1 + 16);
        if (!v36)
        {
          if (v37)
          {
            goto LABEL_142;
          }

          v18 = 6;
          goto LABEL_141;
        }

        if (v37)
        {
          v38 = *(v159 + 8 * v35) + 1;
          v39 = v36 - v38;
          if (v36 == v38)
          {
            goto LABEL_82;
          }

LABEL_270:
          if (v39 >= 1)
          {
            v127 = *(a1 + 32) + v39;
            if (v127 >> 61 || (v128 = malloc_type_realloc(*(a1 + 24), 8 * v127, 0x100004000313F17uLL)) == 0)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }

            else
            {
              *(a1 + 24) = v128;
              *(a1 + 32) = v127;
            }
          }

          memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v38), 8 * v39);
          *(a1 + 40) += v39;
          if (!*(a1 + 16))
          {
            goto LABEL_278;
          }

LABEL_286:
          v33 = 1;
          *(*(a1 + 56) + 120) = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        v41 = *(a1 + 32);
        if (v8 >= v41)
        {
          v42 = (v41 + 1) / 2;
          v43 = ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v42;
          if (v41 < v43)
          {
            if (v43 >> 61)
            {
              goto LABEL_95;
            }

            v123 = malloc_type_realloc(*(a1 + 24), 24 * v42, 0x100004000313F17uLL);
            if (v123)
            {
              *(a1 + 24) = v123;
              *(a1 + 32) = v43;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_95:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }

        v124 = *(a1 + 24);
        v125 = *(a1 + 40);
        *(a1 + 40) = v125 + 1;
        *(v124 + 8 * v125) = v35 | 0x38000000;
        v126 = *(v160 + 8 * v35);
        v38 = *(v159 + 8 * v35) + 1;
        v39 = v126 - v38;
        if (v126 != v38)
        {
          goto LABEL_270;
        }

LABEL_82:
        if (*(a1 + 16))
        {
          goto LABEL_286;
        }

LABEL_278:
        v129 = *(a1 + 32);
        if (*(a1 + 40) >= v129)
        {
          v130 = (v129 + 1) / 2;
          v131 = ((v129 + 1 + ((v129 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v130;
          if (v129 < v131)
          {
            if (v131 >> 61)
            {
              goto LABEL_281;
            }

            v132 = malloc_type_realloc(*(a1 + 24), 24 * v130, 0x100004000313F17uLL);
            if (v132)
            {
              *(a1 + 24) = v132;
              *(a1 + 32) = v131;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_281:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }

        v133 = *(a1 + 24);
        v134 = *(a1 + 40);
        *(a1 + 40) = v134 + 1;
        *(v133 + 8 * v134) = v35 | 0x40000000;
        goto LABEL_286;
      }

      if (v16 > 41)
      {
        if ((v16 - 42) < 2)
        {
LABEL_30:
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          goto LABEL_142;
        }

        if (v16 != 46)
        {
          goto LABEL_71;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = "^\n]";
          *(a1 + 8) = "";
          sub_10004B98C(a1, a3, a4, a5, a6);
          *a1 = v15;
          *(a1 + 8) = v12;
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (*(a1 + 16))
        {
          goto LABEL_143;
        }

        v19 = *(a1 + 32);
        if (v8 >= v19)
        {
          v20 = (v19 + 1) / 2;
          v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20;
          if (v19 < v21)
          {
            if (v21 >> 61)
            {
              goto LABEL_43;
            }

            v54 = malloc_type_realloc(*(a1 + 24), 24 * v20, 0x100004000313F17uLL);
            if (v54)
            {
              *(a1 + 24) = v54;
              *(a1 + 32) = v21;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_43:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }

        v55 = *(a1 + 24);
        v56 = *(a1 + 40);
        *(a1 + 40) = v56 + 1;
        *(v55 + 8 * v56) = 671088640;
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 == 36)
      {
        if (!*(a1 + 16))
        {
          v22 = *(a1 + 32);
          if (v8 >= v22)
          {
            v23 = (v22 + 1) / 2;
            v24 = ((v22 + 1 + ((v22 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23;
            if (v22 < v24)
            {
              if (v24 >> 61)
              {
                goto LABEL_49;
              }

              v44 = malloc_type_realloc(*(a1 + 24), 24 * v23, 0x100004000313F17uLL);
              if (v44)
              {
                *(a1 + 24) = v44;
                *(a1 + 32) = v24;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_49:
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
              }
            }
          }

          v45 = *(a1 + 24);
          v46 = *(a1 + 40);
          *(a1 + 40) = v46 + 1;
          *(v45 + 8 * v46) = 0x20000000;
        }

        v47 = *(a1 + 56);
        *(v47 + 72) |= 2u;
        ++*(v47 + 80);
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 != 40)
      {
        if (v16 == 41)
        {
          if (*(a1 + 16))
          {
            goto LABEL_142;
          }

LABEL_140:
          v18 = 8;
LABEL_141:
          *(a1 + 16) = v18;
          goto LABEL_142;
        }

LABEL_71:
        v17 = v16;
LABEL_72:
        *&a3 = sub_10004CD90(a1, v17, a3, a4, a5, a6).n128_u64[0];
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v12 - v15 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 8;
        }

        *a1 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
        v15 = &byte_1002E4868;
        v12 = &byte_1002E4868;
        v40 = *(a1 + 56);
        v29 = *(v40 + 112) + 1;
        *(v40 + 112) = v29;
        if (v29 <= 9)
        {
LABEL_59:
          *(v159 + 8 * v29) = v8;
          if (!*(a1 + 16))
          {
            goto LABEL_60;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v28 = *(a1 + 56);
        v29 = *(v28 + 112) + 1;
        *(v28 + 112) = v29;
        if (v29 <= 9)
        {
          goto LABEL_59;
        }
      }

      if (!*(a1 + 16))
      {
LABEL_60:
        v30 = *(a1 + 32);
        if (*(a1 + 40) >= v30)
        {
          v31 = (v30 + 1) / 2;
          v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
          if (v30 < v32)
          {
            if (v32 >> 61)
            {
              *(a1 + 16) = 12;
              v15 = &byte_1002E4868;
              v12 = &byte_1002E4868;
              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }

            else
            {
              v53 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
              if (v53)
              {
                *(a1 + 24) = v53;
                *(a1 + 32) = v32;
                v15 = *a1;
                v12 = *(a1 + 8);
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v15 = &byte_1002E4868;
                v12 = &byte_1002E4868;
              }
            }
          }
        }

        v57 = *(a1 + 24);
        v58 = *(a1 + 40);
        *(a1 + 40) = v58 + 1;
        *(v57 + 8 * v58) = v29 | 0x68000000;
        if (v12 - v15 < 1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

LABEL_88:
      if (v12 - v15 < 1)
      {
        goto LABEL_129;
      }

LABEL_121:
      if (*v15 == 41)
      {
        if (v29 <= 9)
        {
          goto LABEL_123;
        }

        goto LABEL_130;
      }

LABEL_129:
      sub_10004961C(a1, 41);
      if (v29 <= 9)
      {
LABEL_123:
        *(v160 + 8 * v29) = *(a1 + 40);
        if (!*(a1 + 16))
        {
          goto LABEL_124;
        }

        goto LABEL_131;
      }

LABEL_130:
      if (!*(a1 + 16))
      {
LABEL_124:
        v59 = *(a1 + 32);
        if (*(a1 + 40) >= v59)
        {
          v60 = (v59 + 1) / 2;
          v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
          if (v59 < v61)
          {
            if (v61 >> 61)
            {
              goto LABEL_127;
            }

            v63 = malloc_type_realloc(*(a1 + 24), 24 * v60, 0x100004000313F17uLL);
            if (v63)
            {
              *(a1 + 24) = v63;
              *(a1 + 32) = v61;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_127:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }

        v64 = *(a1 + 24);
        v65 = *(a1 + 40);
        *(a1 + 40) = v65 + 1;
        *(v64 + 8 * v65) = v29 | 0x70000000;
        v62 = *a1;
        if ((*(a1 + 8) - *a1) < 1)
        {
          goto LABEL_139;
        }

        goto LABEL_136;
      }

LABEL_131:
      v62 = *a1;
      if ((*(a1 + 8) - *a1) < 1)
      {
        goto LABEL_139;
      }

LABEL_136:
      *a1 = v62 + 1;
      if (*v62 != 41)
      {
LABEL_139:
        if (!*(a1 + 16))
        {
          goto LABEL_140;
        }

LABEL_142:
        *a1 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
LABEL_143:
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      v33 = 1;
      v11 = *a1;
      v12 = *(a1 + 8);
      v34 = &v12[-*a1];
      if (v34 < 1)
      {
        goto LABEL_10;
      }

LABEL_144:
      v66 = *v11;
      if ((v66 - 42) < 2 || v66 == 63 || v66 == 123 && v34 != 1 && v11[1] - 48 <= 9)
      {
        v67 = v11 + 1;
        *a1 = v11 + 1;
        if ((v33 & 1) == 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          *a1 = &byte_1002E4868;
          *(a1 + 8) = &byte_1002E4868;
          v67 = &byte_1002E4868;
          v12 = &byte_1002E4868;
        }

        if (v66 <= 62)
        {
          if (v66 != 42)
          {
            if (v66 == 43)
            {
              sub_10004B620(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
              if (!*(a1 + 16))
              {
                v68 = *(a1 + 32);
                v69 = *(a1 + 40);
                if (v69 >= v68)
                {
                  v70 = (v68 + 1) / 2;
                  v71 = ((v68 + 1 + ((v68 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v70;
                  if (v68 < v71)
                  {
                    if (v71 >> 61)
                    {
                      goto LABEL_160;
                    }

                    v102 = malloc_type_realloc(*(a1 + 24), 24 * v70, 0x100004000313F17uLL);
                    if (v102)
                    {
                      *(a1 + 24) = v102;
                      *(a1 + 32) = v71;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
LABEL_160:
                        *(a1 + 16) = 12;
                      }

                      *a1 = &byte_1002E4868;
                      *(a1 + 8) = &byte_1002E4868;
                    }
                  }
                }

                v87 = (v69 - v8) | 0x50000000;
LABEL_235:
                v113 = *(a1 + 24);
                v114 = *(a1 + 40);
                *(a1 + 40) = v114 + 1;
                *(v113 + 8 * v114) = v87;
              }
            }

LABEL_297:
            v11 = *a1;
            v12 = *(a1 + 8);
            v137 = &v12[-*a1];
            if (v137 >= 1)
            {
              if ((v138 = *v11, (v138 - 42) < 2) || v138 == 63 || (v138 == 123 ? (v139 = v12 != *a1, v140 = v137 == 1) : (v140 = 1), !v140 && v11[1] - 48 <= 9))
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v11 = &byte_1002E4868;
                v12 = &byte_1002E4868;
              }
            }

            goto LABEL_10;
          }

          sub_10004B620(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
          v77 = *(a1 + 40);
          v78 = v77 - v8;
          if (!*(a1 + 16))
          {
            v79 = *(a1 + 32);
            if (v77 >= v79)
            {
              v80 = (v79 + 1) / 2;
              v81 = ((v79 + 1 + ((v79 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v80;
              if (v79 < v81)
              {
                if (v81 >> 61)
                {
                  goto LABEL_175;
                }

                v103 = malloc_type_realloc(*(a1 + 24), 24 * v80, 0x100004000313F17uLL);
                if (v103)
                {
                  *(a1 + 24) = v103;
                  *(a1 + 32) = v81;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_175:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002E4868;
                  *(a1 + 8) = &byte_1002E4868;
                }
              }
            }

            v104 = *(a1 + 24);
            v105 = *(a1 + 40);
            *(a1 + 40) = v105 + 1;
            *(v104 + 8 * v105) = v78 | 0x50000000;
            v78 = *(a1 + 40) - v8;
          }

          sub_10004B620(a1, 1476395008, v78 + 1, v8);
          if (*(a1 + 16))
          {
            goto LABEL_297;
          }

          v106 = *(a1 + 32);
          v107 = *(a1 + 40);
          if (v107 >= v106)
          {
            v108 = (v106 + 1) / 2;
            v109 = ((v106 + 1 + ((v106 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v108;
            if (v106 < v109)
            {
              if (v109 >> 61)
              {
                goto LABEL_227;
              }

              v112 = malloc_type_realloc(*(a1 + 24), 24 * v108, 0x100004000313F17uLL);
              if (v112)
              {
                *(a1 + 24) = v112;
                *(a1 + 32) = v109;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_227:
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
              }
            }
          }

          v87 = (v107 - v8) | 0x60000000;
          goto LABEL_235;
        }

        if (v66 != 63)
        {
          if (v66 != 123)
          {
            goto LABEL_297;
          }

          v72 = v12 - v67;
          if (v12 - v67 < 1)
          {
            v74 = 0;
            goto LABEL_186;
          }

          v73 = 0;
          v74 = 0;
          while (*v67 - 48 <= 9 && v74 <= 255)
          {
            v75 = v67 + 1;
            *a1 = v67 + 1;
            v74 = (*v67 + 10 * v74 - 48);
            ++v73;
            ++v67;
            if (v72-- <= 1)
            {
              goto LABEL_185;
            }
          }

          v75 = v67;
          if (!v73)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v74 >= 256)
          {
LABEL_186:
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 10;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
            v75 = &byte_1002E4868;
            v12 = &byte_1002E4868;
          }

          v88 = v74;
          if (v12 - v75 < 1)
          {
            goto LABEL_240;
          }

          v88 = v74;
          if (*v75 != 44)
          {
            goto LABEL_240;
          }

          v89 = v75 + 1;
          *a1 = v75 + 1;
          if (v75[1] - 48 > 9)
          {
            v88 = 256;
            goto LABEL_240;
          }

          v90 = (v12 - v89);
          if (v12 - v89 < 1)
          {
            v88 = 0;
          }

          else
          {
            v91 = 0;
            v88 = 0;
            while (1)
            {
              v92 = &v89[v91];
              if (v89[v91] - 48 > 9 || v88 > 255)
              {
                break;
              }

              *a1 = v92 + 1;
              v88 = (*v92 + 10 * v88 - 48);
              ++v91;
              if (--v90 <= 0)
              {
                LODWORD(v91) = 1;
                break;
              }
            }

            if (v91 && v88 < 256)
            {
              if (v74 <= v88)
              {
                goto LABEL_240;
              }

LABEL_237:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
              goto LABEL_240;
            }
          }

          if (!*(a1 + 16))
          {
            *(a1 + 16) = 10;
            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
            if (v74 <= v88)
            {
              goto LABEL_240;
            }

            goto LABEL_237;
          }

          *a1 = &byte_1002E4868;
          *(a1 + 8) = &byte_1002E4868;
          if (v74 > v88)
          {
            goto LABEL_237;
          }

LABEL_240:
          sub_10004CF84(a1, v8, v74, v88);
          v116 = *a1;
          v115 = *(a1 + 8);
          if (v115 - *a1 >= 1)
          {
            if (*v116 == 125)
            {
              *a1 = v116 + 1;
              goto LABEL_297;
            }

            v117 = (v116 + 1);
            v118 = ~v116 + v115;
            while (1)
            {
              *a1 = v117;
              if (v118 <= 0)
              {
                break;
              }

              v119 = *v117++;
              --v118;
              if (v119 == 125)
              {
                if (*(a1 + 16))
                {
                  goto LABEL_251;
                }

                v120 = 10;
                goto LABEL_250;
              }
            }
          }

          if (!*(a1 + 16))
          {
            v120 = 9;
LABEL_250:
            *(a1 + 16) = v120;
          }

LABEL_251:
          *a1 = &byte_1002E4868;
          *(a1 + 8) = &byte_1002E4868;
          goto LABEL_297;
        }

        sub_10004B620(a1, 2013265920, *(a1 + 40) - v8 + 1, v8);
        if (*(a1 + 16))
        {
          goto LABEL_297;
        }

        v83 = *(a1 + 32);
        v82 = *(a1 + 40);
        v84 = v82 - v8;
        if (v82 < v83 || (v85 = (v83 + 1) / 2, v86 = ((v83 + 1 + ((v83 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v85, v83 >= v86))
        {
          v93 = *(a1 + 24);
          v94 = *(a1 + 40);
          *(a1 + 40) = v94 + 1;
          v93[v94] = v84 | 0x80000000;
        }

        else
        {
          if (v86 >> 61)
          {
            goto LABEL_181;
          }

          v93 = malloc_type_realloc(*(a1 + 24), 24 * v85, 0x100004000313F17uLL);
          if (!v93)
          {
            if (!*(a1 + 16))
            {
LABEL_181:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
            v87 = v84 | 0x80000000;
            goto LABEL_235;
          }

          *(a1 + 24) = v93;
          *(a1 + 32) = v86;
          v110 = *(a1 + 16);
          v111 = *(a1 + 40);
          *(a1 + 40) = v111 + 1;
          v93[v111] = v84 | 0x80000000;
          if (v110)
          {
            goto LABEL_297;
          }
        }

        v93[v8] = v93[v8] & 0xF8000000 | (*(a1 + 40) - v8);
        v95 = *(a1 + 32);
        if (*(a1 + 40) >= v95)
        {
          v96 = (v95 + 1) / 2;
          v97 = ((v95 + 1 + ((v95 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v96;
          if (v95 < v97)
          {
            if (v97 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
              goto LABEL_291;
            }

            v93 = malloc_type_realloc(v93, 24 * v96, 0x100004000313F17uLL);
            if (v93)
            {
              *(a1 + 24) = v93;
              *(a1 + 32) = v97;
              v121 = *(a1 + 16);
              v122 = *(a1 + 40);
              *(a1 + 40) = v122 + 1;
              v93[v122] = 2281701376;
              if (v121)
              {
                goto LABEL_297;
              }

LABEL_208:
              v93[*(a1 + 40) - 1] = v93[*(a1 + 40) - 1] & 0xF8000000 | 1;
              v99 = *(a1 + 32);
              if (*(a1 + 40) >= v99)
              {
                v100 = (v99 + 1) / 2;
                v101 = ((v99 + 1 + ((v99 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v100;
                if (v99 < v101)
                {
                  if (v101 >> 61)
                  {
                    *(a1 + 16) = 12;
                    *a1 = &byte_1002E4868;
                    *(a1 + 8) = &byte_1002E4868;
                  }

                  else
                  {
                    v93 = malloc_type_realloc(v93, 24 * v100, 0x100004000313F17uLL);
                    if (v93)
                    {
                      *(a1 + 24) = v93;
                      *(a1 + 32) = v101;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 12;
                      }

                      *a1 = &byte_1002E4868;
                      *(a1 + 8) = &byte_1002E4868;
                      v93 = *(a1 + 24);
                    }
                  }
                }
              }

              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2415919106;
            }

            else
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
              v93 = *(a1 + 24);
LABEL_291:
              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2281701376;
            }

            v93[v135] = v136;
            goto LABEL_297;
          }
        }

        v98 = *(a1 + 40);
        *(a1 + 40) = v98 + 1;
        v93[v98] = 2281701376;
        goto LABEL_208;
      }

LABEL_10:
      if (v12 - v11 <= 0)
      {
        v8 = *(a1 + 40);
        break;
      }
    }

    if (v8 == v10)
    {
      goto LABEL_314;
    }

LABEL_317:
    if (v12 - v11 >= 1 && *v11 == 124)
    {
      *a1 = v11 + 1;
      if (v163)
      {
        v10 = v161;
        if (!*(a1 + 16))
        {
          goto LABEL_321;
        }

LABEL_3:
        v9 = v8;
LABEL_4:
        v161 = v9 - 1;
        v162 = v8;
        v163 = 1;
        continue;
      }

      sub_10004B620(a1, 2013265920, v8 - v10 + 1, v10);
      v8 = *(a1 + 40);
      v162 = v10;
      if (*(a1 + 16))
      {
        goto LABEL_3;
      }

LABEL_321:
      v141 = *(a1 + 32);
      if (v8 < v141 || (v142 = (v141 + 1) / 2, v143 = ((v141 + 1 + ((v141 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v142, v141 >= v143))
      {
        v144 = 1;
      }

      else
      {
        if (v143 >> 61)
        {
          v144 = 0;
          *(a1 + 16) = 12;
          goto LABEL_339;
        }

        v150 = malloc_type_realloc(*(a1 + 24), 24 * v142, 0x100004000313F17uLL);
        if (v150)
        {
          *(a1 + 24) = v150;
          *(a1 + 32) = v143;
          v144 = *(a1 + 16) == 0;
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 12;
          }

          v144 = 0;
LABEL_339:
          *a1 = &byte_1002E4868;
          *(a1 + 8) = &byte_1002E4868;
        }
      }

      v145 = *(a1 + 24);
      v146 = *(a1 + 40);
      *(a1 + 40) = v146 + 1;
      v145[v146] = (v8 - v10) | 0x80000000;
      v9 = *(a1 + 40);
      if (v144)
      {
        v145[v162] = v145[v162] & 0xF8000000 | (v9 - v162);
        v147 = *(a1 + 32);
        v8 = *(a1 + 40);
        if (v8 >= v147)
        {
          v148 = (v147 + 1) / 2;
          v149 = ((v147 + 1 + ((v147 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v148;
          if (v147 < v149)
          {
            if (v149 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }

            else
            {
              v145 = malloc_type_realloc(v145, 24 * v148, 0x100004000313F17uLL);
              if (v145)
              {
                *(a1 + 24) = v145;
                *(a1 + 32) = v149;
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v145 = *(a1 + 24);
              }
            }
          }
        }

        v151 = *(a1 + 40);
        *(a1 + 40) = v151 + 1;
        v145[v151] = 2281701376;
      }

      else
      {
        v8 = *(a1 + 40);
      }

      goto LABEL_4;
    }

    break;
  }

  if ((v163 & 1) != 0 && !*(a1 + 16))
  {
    v152 = *(a1 + 24);
    v152[v162] = v152[v162] & 0xF8000000 | (v8 - v162);
    v153 = *(a1 + 32);
    v154 = *(a1 + 40);
    v155 = v154 - v161;
    if (v154 >= v153)
    {
      v156 = (v153 + 1) / 2;
      v157 = ((v153 + 1 + ((v153 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v156;
      if (v153 < v157)
      {
        if (v157 >> 61)
        {
          *(a1 + 16) = 12;
          *a1 = &byte_1002E4868;
          *(a1 + 8) = &byte_1002E4868;
        }

        else
        {
          v152 = malloc_type_realloc(v152, 24 * v156, 0x100004000313F17uLL);
          if (v152)
          {
            *(a1 + 24) = v152;
            *(a1 + 32) = v157;
          }

          else
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
            v152 = *(a1 + 24);
          }
        }
      }
    }

    v158 = *(a1 + 40);
    *(a1 + 40) = v158 + 1;
    v152[v158] = v155 | 0x90000000;
  }
}

void sub_10004A99C(uint64_t a1, int a2, int a3, double a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = &v10[-*a1];
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (*v9 == 94)
  {
    *a1 = ++v9;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    if (v8 >= v13)
    {
      v14 = (v13 + 1) / 2;
      v15 = ((v13 + 1 + ((v13 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v14;
      if (v13 < v15)
      {
        if (v15 >> 61)
        {
          goto LABEL_7;
        }

        v16 = malloc_type_realloc(*(a1 + 24), 24 * v14, 0x100004000313F17uLL);
        if (v16)
        {
          *(a1 + 24) = v16;
          *(a1 + 32) = v15;
          v9 = *a1;
          v10 = *(a1 + 8);
          goto LABEL_11;
        }

        if (!*(a1 + 16))
        {
LABEL_7:
          *(a1 + 16) = 12;
        }

        *a1 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
        v9 = &byte_1002E4868;
        v10 = &byte_1002E4868;
      }
    }

LABEL_11:
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    *(a1 + 40) = v18 + 1;
    *(v17 + 8 * v18) = 402653184;
LABEL_12:
    v19 = *(a1 + 56);
    v20 = v19[9];
    a5 = COERCE_DOUBLE(vadd_s32(v20, 0x100000001));
    LODWORD(a4) = v20.i32[0] | 1;
    HIDWORD(a4) = HIDWORD(a5);
    *&v19[9] = a4;
    v11 = v10 - v9;
    if (v10 - v9 >= 1)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (*(a1 + 40) == v8)
    {
      goto LABEL_227;
    }

    return;
  }

LABEL_13:
  v110 = v8;
  v21 = 0;
  v22 = 0;
  v23 = a1 + 144;
  v112 = a1 + 64;
  while (v11 == 1 || *v9 != a2 || v9[1] != a3)
  {
    v27 = *(a1 + 40);
    v28 = v9 + 1;
    *a1 = v9 + 1;
    v29 = *v9;
    if (v29 == 92)
    {
      if (v10 - v28 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 5;
        }

        *(a1 + 8) = &byte_1002E4868;
        v10 = &byte_1002E4868;
        v28 = &byte_1002E4868;
      }

      *a1 = v28 + 1;
      v29 = *v28++ | 0x100;
    }

    if (v29 <= 304)
    {
      if (v29 <= 90)
      {
        if (v29 == 42)
        {
          if (v22)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 13;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
          }

LABEL_65:
          *&a4 = sub_10004CD90(a1, v29, a4, a5, a6, a7).n128_u64[0];
          goto LABEL_138;
        }

        if (v29 != 46)
        {
          goto LABEL_65;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = "^\n]";
          *(a1 + 8) = "";
          sub_10004B98C(a1, a4, a5, a6, a7);
          *a1 = v28;
          *(a1 + 8) = v10;
          goto LABEL_138;
        }

        if (*(a1 + 16))
        {
          goto LABEL_138;
        }

        v35 = *(a1 + 32);
        if (v27 >= v35)
        {
          v36 = (v35 + 1) / 2;
          v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36;
          if (v35 < v37)
          {
            if (v37 >> 61)
            {
              goto LABEL_54;
            }

            v61 = malloc_type_realloc(*(a1 + 24), 24 * v36, 0x100004000313F17uLL);
            if (v61)
            {
              *(a1 + 24) = v61;
              *(a1 + 32) = v37;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_54:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }

        v62 = *(a1 + 24);
        v63 = *(a1 + 40);
        *(a1 + 40) = v63 + 1;
        *(v62 + 8 * v63) = 671088640;
        goto LABEL_138;
      }

      if (v29 == 91)
      {
        sub_10004B98C(a1, a4, a5, a6, a7);
        goto LABEL_138;
      }

      if (v29 != 296)
      {
        if (v29 != 297)
        {
          goto LABEL_65;
        }

        goto LABEL_134;
      }

      v41 = *(a1 + 56);
      v42 = *(v41 + 112) + 1;
      *(v41 + 112) = v42;
      if (v42 > 9)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        *(v112 + 8 * v42) = v27;
        if (!*(a1 + 16))
        {
LABEL_68:
          v43 = *(a1 + 32);
          if (*(a1 + 40) >= v43)
          {
            v44 = (v43 + 1) / 2;
            v45 = ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v44;
            if (v43 < v45)
            {
              if (v45 >> 61)
              {
                *(a1 + 16) = 12;
                v28 = &byte_1002E4868;
                v10 = &byte_1002E4868;
                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
              }

              else
              {
                v60 = malloc_type_realloc(*(a1 + 24), 24 * v44, 0x100004000313F17uLL);
                if (v60)
                {
                  *(a1 + 24) = v60;
                  *(a1 + 32) = v45;
                  v28 = *a1;
                  v10 = *(a1 + 8);
                }

                else
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002E4868;
                  *(a1 + 8) = &byte_1002E4868;
                  v28 = &byte_1002E4868;
                  v10 = &byte_1002E4868;
                }
              }
            }
          }

          v64 = *(a1 + 24);
          v65 = *(a1 + 40);
          *(a1 + 40) = v65 + 1;
          *(v64 + 8 * v65) = v42 | 0x68000000;
          v46 = v10 - v28 == 1;
          if (v10 - v28 >= 1)
          {
LABEL_114:
            if (v46 || *v28 != 92 || v28[1] != 41)
            {
              sub_10004A99C(a1, 92, 41);
            }
          }

LABEL_118:
          if (v42 > 9)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_120;
            }
          }

          else
          {
            *(v23 + 8 * v42) = *(a1 + 40);
            if (!*(a1 + 16))
            {
LABEL_120:
              v66 = *(a1 + 32);
              if (*(a1 + 40) >= v66)
              {
                v67 = (v66 + 1) / 2;
                v68 = ((v66 + 1 + ((v66 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
                if (v66 < v68)
                {
                  if (v68 >> 61)
                  {
                    goto LABEL_123;
                  }

                  v70 = malloc_type_realloc(*(a1 + 24), 24 * v67, 0x100004000313F17uLL);
                  if (v70)
                  {
                    *(a1 + 24) = v70;
                    *(a1 + 32) = v68;
                  }

                  else
                  {
                    if (!*(a1 + 16))
                    {
LABEL_123:
                      *(a1 + 16) = 12;
                    }

                    *a1 = &byte_1002E4868;
                    *(a1 + 8) = &byte_1002E4868;
                  }
                }
              }

              v71 = *(a1 + 24);
              v72 = *(a1 + 40);
              *(a1 + 40) = v72 + 1;
              *(v71 + 8 * v72) = v42 | 0x70000000;
              v69 = *a1;
              if ((*(a1 + 8) - *a1) < 2)
              {
                goto LABEL_134;
              }

LABEL_131:
              if (*v69 == 92 && v69[1] == 41)
              {
                *a1 = v69 + 2;
                goto LABEL_138;
              }

LABEL_134:
              if (!*(a1 + 16))
              {
                v47 = 8;
                goto LABEL_136;
              }

              goto LABEL_137;
            }
          }

          v69 = *a1;
          if ((*(a1 + 8) - *a1) < 2)
          {
            goto LABEL_134;
          }

          goto LABEL_131;
        }
      }

      v46 = v10 - v28 == 1;
      if (v10 - v28 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_118;
    }

    if ((v29 - 305) < 9)
    {
      v30 = (v29 & 0xFFFFFEFF) - 48;
      v31 = *(v23 + 8 * v30);
      v32 = *(a1 + 16);
      if (!v31)
      {
        if (!v32)
        {
          *(a1 + 16) = 6;
        }

        *a1 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
        goto LABEL_98;
      }

      if (v32)
      {
        v33 = *(v112 + 8 * v30) + 1;
        v34 = v31 - v33;
        if (v31 == v33)
        {
          goto LABEL_34;
        }

LABEL_82:
        if (v34 >= 1)
        {
          v52 = *(a1 + 32) + v34;
          if (v52 >> 61 || (v53 = malloc_type_realloc(*(a1 + 24), 8 * v52, 0x100004000313F17uLL)) == 0)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
          }

          else
          {
            *(a1 + 24) = v53;
            *(a1 + 32) = v52;
          }
        }

        memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v33), 8 * v34);
        *(a1 + 40) += v34;
        if (!*(a1 + 16))
        {
          goto LABEL_90;
        }

LABEL_98:
        *(*(a1 + 56) + 120) = 1;
        goto LABEL_138;
      }

      v38 = *(a1 + 32);
      if (v27 >= v38)
      {
        v39 = (v38 + 1) / 2;
        v40 = ((v38 + 1 + ((v38 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v39;
        if (v38 < v40)
        {
          if (v40 >> 61)
          {
            goto LABEL_59;
          }

          v48 = malloc_type_realloc(*(a1 + 24), 24 * v39, 0x100004000313F17uLL);
          if (v48)
          {
            *(a1 + 24) = v48;
            *(a1 + 32) = v40;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_59:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
          }
        }
      }

      v49 = *(a1 + 24);
      v50 = *(a1 + 40);
      *(a1 + 40) = v50 + 1;
      *(v49 + 8 * v50) = v30 | 0x38000000;
      v51 = *(v23 + 8 * v30);
      v33 = *(v112 + 8 * v30) + 1;
      v34 = v51 - v33;
      if (v51 != v33)
      {
        goto LABEL_82;
      }

LABEL_34:
      if (*(a1 + 16))
      {
        goto LABEL_98;
      }

LABEL_90:
      v54 = *(a1 + 32);
      if (*(a1 + 40) >= v54)
      {
        v55 = (v54 + 1) / 2;
        v56 = ((v54 + 1 + ((v54 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v55;
        if (v54 < v56)
        {
          if (v56 >> 61)
          {
            goto LABEL_93;
          }

          v57 = malloc_type_realloc(*(a1 + 24), 24 * v55, 0x100004000313F17uLL);
          if (v57)
          {
            *(a1 + 24) = v57;
            *(a1 + 32) = v56;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_93:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
          }
        }
      }

      v58 = *(a1 + 24);
      v59 = *(a1 + 40);
      *(a1 + 40) = v59 + 1;
      *(v58 + 8 * v59) = v30 | 0x40000000;
      goto LABEL_98;
    }

    if (v29 != 379)
    {
      if (v29 != 381)
      {
        goto LABEL_65;
      }

      goto LABEL_134;
    }

    if (!*(a1 + 16))
    {
      v47 = 13;
LABEL_136:
      *(a1 + 16) = v47;
    }

LABEL_137:
    *a1 = &byte_1002E4868;
    *(a1 + 8) = &byte_1002E4868;
LABEL_138:
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = &v10[-*a1];
    if (v11 < 1)
    {
      goto LABEL_155;
    }

    v73 = *v9;
    if (v73 == 42)
    {
      *a1 = v9 + 1;
      sub_10004B620(a1, 1207959552, *(a1 + 40) - v27 + 1, v27);
      v74 = *(a1 + 40);
      v75 = v74 - v27;
      if (!*(a1 + 16))
      {
        v76 = *(a1 + 32);
        if (v74 >= v76)
        {
          v77 = (v76 + 1) / 2;
          v78 = ((v76 + 1 + ((v76 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v77;
          if (v76 < v78)
          {
            if (v78 >> 61)
            {
              goto LABEL_144;
            }

            v94 = malloc_type_realloc(*(a1 + 24), 24 * v77, 0x100004000313F17uLL);
            if (v94)
            {
              *(a1 + 24) = v94;
              *(a1 + 32) = v78;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_144:
                *(a1 + 16) = 12;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }

        v95 = *(a1 + 24);
        v96 = *(a1 + 40);
        *(a1 + 40) = v96 + 1;
        *(v95 + 8 * v96) = v75 | 0x50000000;
        v75 = *(a1 + 40) - v27;
      }

      sub_10004B620(a1, 1476395008, v75 + 1, v27);
      if (*(a1 + 16))
      {
        goto LABEL_19;
      }

      v97 = *(a1 + 32);
      v98 = *(a1 + 40);
      if (v98 >= v97)
      {
        v99 = (v97 + 1) / 2;
        v100 = ((v97 + 1 + ((v97 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v99;
        if (v97 < v100)
        {
          if (v100 >> 61)
          {
            goto LABEL_206;
          }

          v24 = malloc_type_realloc(*(a1 + 24), 24 * v99, 0x100004000313F17uLL);
          if (v24)
          {
            *(a1 + 24) = v24;
            *(a1 + 32) = v100;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_206:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
          }
        }
      }

      v25 = *(a1 + 24);
      v26 = *(a1 + 40);
      *(a1 + 40) = v26 + 1;
      *(v25 + 8 * v26) = (v98 - v27) | 0x60000000;
      goto LABEL_19;
    }

    v79 = v10 != *a1;
    if (v11 != 1 && v73 == 92 && v9[1] == 123)
    {
      v80 = v9 + 2;
      *a1 = v9 + 2;
      v81 = v10 - (v9 + 2);
      if (v81 < 1)
      {
        v83 = 0;
      }

      else
      {
        v82 = 0;
        v83 = 0;
        while (*v80 - 48 <= 9 && v83 <= 255)
        {
          v84 = v80 + 1;
          *a1 = v80 + 1;
          v83 = (*v80 + 10 * v83 - 48);
          ++v82;
          --v81;
          ++v80;
          if (v81 <= 0)
          {
            goto LABEL_160;
          }
        }

        v84 = v80;
        if (!v82)
        {
          goto LABEL_161;
        }

LABEL_160:
        if (v83 < 256)
        {
          goto LABEL_164;
        }
      }

LABEL_161:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 10;
      }

      *a1 = &byte_1002E4868;
      *(a1 + 8) = &byte_1002E4868;
      v84 = &byte_1002E4868;
      v10 = &byte_1002E4868;
LABEL_164:
      v85 = v83;
      if (v10 - v84 >= 1)
      {
        v85 = v83;
        if (*v84 == 44)
        {
          v86 = v84 + 1;
          *a1 = v86;
          v87 = v10 - v86;
          if (v10 - v86 < 1 || *v86 - 48 > 9)
          {
            v85 = 256;
          }

          else
          {
            v88 = 0;
            v85 = 0;
            while (1)
            {
              v89 = &v86[v88];
              if (v86[v88] - 48 > 9 || v85 > 255)
              {
                break;
              }

              *a1 = v89 + 1;
              v85 = (*v89 + 10 * v85 - 48);
              ++v88;
              if (--v87 <= 0)
              {
                LODWORD(v88) = 1;
                break;
              }
            }

            if (!v88 || v85 >= 256)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }

            if (v83 > v85)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &byte_1002E4868;
              *(a1 + 8) = &byte_1002E4868;
            }
          }
        }
      }

      sub_10004CF84(a1, v27, v83, v85);
      v90 = *a1;
      v91 = *(a1 + 8) - *a1;
      if (v91 <= 1)
      {
        if (v91 == 1)
        {
LABEL_188:
          v92 = v90 + 1;
          while (1)
          {
            if (--v91)
            {
              if (*(v92 - 1) == 92 && *v92 == 125)
              {
                break;
              }
            }

            *a1 = v92++;
            if (v91 <= 0)
            {
              goto LABEL_195;
            }
          }

          if (!*(a1 + 16))
          {
            v93 = 10;
            goto LABEL_197;
          }
        }

        else
        {
LABEL_195:
          if (!*(a1 + 16))
          {
            v93 = 9;
LABEL_197:
            *(a1 + 16) = v93;
          }
        }

        *a1 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
        goto LABEL_19;
      }

      if (*v90 != 92 || v90[1] != 125)
      {
        goto LABEL_188;
      }

      *a1 = v90 + 2;
LABEL_19:
      v21 = 0;
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = &v10[-*a1];
      v22 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }

    else
    {
LABEL_155:
      if (v29 != 36)
      {
        goto LABEL_19;
      }

      v21 = 1;
      v22 = 1;
      v46 = v10 == *a1;
      if (v11 <= 0)
      {
        break;
      }
    }
  }

  v101 = *(a1 + 40);
  if (v21)
  {
    v102 = v101 - 1;
    *(a1 + 40) = v101 - 1;
    if (!*(a1 + 16))
    {
      v103 = *(a1 + 32);
      if (v101 > v103)
      {
        v104 = (v103 + 1) / 2;
        v105 = ((v103 + 1 + ((v103 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v104;
        if (v103 < v105)
        {
          if (v105 >> 61)
          {
            goto LABEL_219;
          }

          v106 = malloc_type_realloc(*(a1 + 24), 24 * v104, 0x100004000313F17uLL);
          if (v106)
          {
            *(a1 + 24) = v106;
            *(a1 + 32) = v105;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_219:
              *(a1 + 16) = 12;
            }

            *a1 = &byte_1002E4868;
            *(a1 + 8) = &byte_1002E4868;
          }
        }
      }

      v107 = *(a1 + 24);
      v108 = *(a1 + 40);
      *(a1 + 40) = v108 + 1;
      *(v107 + 8 * v108) = 0x20000000;
      v102 = *(a1 + 40);
    }

    v109 = *(a1 + 56);
    *(v109 + 72) |= 2u;
    ++*(v109 + 80);
    if (v102 == v110)
    {
LABEL_227:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &byte_1002E4868;
      *(a1 + 8) = &byte_1002E4868;
    }
  }

  else if (v101 == v110)
  {
    goto LABEL_227;
  }
}

void *sub_10004B620(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v4 = *(result + 4);
    v5 = *(result + 5);
    v6 = (v4 + 1) / 2;
    v7 = ((v4 + 1 + ((v4 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v6;
    if (v5 < v4 || v4 >= v7)
    {
LABEL_6:
      v9 = *(result + 3);
      v10 = *(result + 5);
      *(result + 5) = v10 + 1;
      *(v9 + 8 * v10) = a3 | a2;
      v11 = *(v9 + 8 * v5);
      v12 = *(result + 9);
      if (v12 >= a4)
      {
        *(result + 9) = v12 + 1;
        v13 = *(result + 19);
        if (v13 < a4)
        {
LABEL_8:
          v14 = *(result + 10);
          if (v14 < a4)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = *(result + 19);
        if (v13 < a4)
        {
          goto LABEL_8;
        }
      }

      *(result + 19) = v13 + 1;
      v14 = *(result + 10);
      if (v14 < a4)
      {
LABEL_9:
        v15 = *(result + 20);
        if (v15 < a4)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(result + 10) = v14 + 1;
      v15 = *(result + 20);
      if (v15 < a4)
      {
LABEL_10:
        v16 = *(result + 11);
        if (v16 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(result + 20) = v15 + 1;
      v16 = *(result + 11);
      if (v16 < a4)
      {
LABEL_11:
        v17 = *(result + 21);
        if (v17 < a4)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(result + 11) = v16 + 1;
      v17 = *(result + 21);
      if (v17 < a4)
      {
LABEL_12:
        v18 = *(result + 12);
        if (v18 < a4)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(result + 21) = v17 + 1;
      v18 = *(result + 12);
      if (v18 < a4)
      {
LABEL_13:
        v19 = *(result + 22);
        if (v19 < a4)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(result + 12) = v18 + 1;
      v19 = *(result + 22);
      if (v19 < a4)
      {
LABEL_14:
        v20 = *(result + 13);
        if (v20 < a4)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }

LABEL_33:
      *(result + 22) = v19 + 1;
      v20 = *(result + 13);
      if (v20 < a4)
      {
LABEL_15:
        v21 = *(result + 23);
        if (v21 < a4)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

LABEL_34:
      *(result + 13) = v20 + 1;
      v21 = *(result + 23);
      if (v21 < a4)
      {
LABEL_16:
        v22 = *(result + 14);
        if (v22 < a4)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }

LABEL_35:
      *(result + 23) = v21 + 1;
      v22 = *(result + 14);
      if (v22 < a4)
      {
LABEL_17:
        v23 = *(result + 24);
        if (v23 < a4)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      *(result + 14) = v22 + 1;
      v23 = *(result + 24);
      if (v23 < a4)
      {
LABEL_18:
        v24 = *(result + 15);
        if (v24 < a4)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }

LABEL_37:
      *(result + 24) = v23 + 1;
      v24 = *(result + 15);
      if (v24 < a4)
      {
LABEL_19:
        v25 = *(result + 25);
        if (v25 < a4)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }

LABEL_38:
      *(result + 15) = v24 + 1;
      v25 = *(result + 25);
      if (v25 < a4)
      {
LABEL_20:
        v26 = *(result + 16);
        if (v26 < a4)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

LABEL_39:
      *(result + 25) = v25 + 1;
      v26 = *(result + 16);
      if (v26 < a4)
      {
LABEL_21:
        v27 = *(result + 26);
        if (v27 < a4)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(result + 16) = v26 + 1;
      v27 = *(result + 26);
      if (v27 < a4)
      {
LABEL_22:
        v28 = *(result + 17);
        if (v28 < a4)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(result + 26) = v27 + 1;
      v28 = *(result + 17);
      if (v28 < a4)
      {
LABEL_23:
        v29 = *(result + 27);
        if (v29 < a4)
        {
LABEL_25:
          v30 = 8 * a4;
          v31 = result;
          result = memmove((v9 + 8 * a4 + 8), (v9 + 8 * a4), 8 * (*(result + 5) + ~a4));
          *(v31[3] + v30) = v11;
          return result;
        }

LABEL_24:
        *(result + 27) = v29 + 1;
        goto LABEL_25;
      }

LABEL_42:
      *(result + 17) = v28 + 1;
      v29 = *(result + 27);
      if (v29 < a4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v7 >> 61)
    {
      goto LABEL_45;
    }

    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = result;
    v36 = malloc_type_realloc(*(result + 3), 24 * v6, 0x100004000313F17uLL);
    if (v36)
    {
      v37 = v36;
      result = v35;
      *(v35 + 3) = v37;
      *(v35 + 4) = v7;
      a4 = v34;
      a3 = v33;
      a2 = v32;
      goto LABEL_6;
    }

    result = v35;
    a4 = v34;
    a3 = v33;
    a2 = v32;
    if (!*(v35 + 4))
    {
LABEL_45:
      *(result + 4) = 12;
    }

    *result = &byte_1002E4868;
    *(result + 1) = &byte_1002E4868;
    goto LABEL_6;
  }

  return result;
}

void sub_10004B98C(uint64_t a1, double a2, double a3, double a4, int32x4_t a5)
{
  v6 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (strncmp(*a1, "[:<:]]", 6uLL))
    {
      if (strncmp(v6, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      if (!*(a1 + 16))
      {
        v30 = *(a1 + 32);
        if (*(a1 + 40) < v30)
        {
          goto LABEL_249;
        }

        v31 = (v30 + 1) / 2;
        v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
        if (v30 >= v32)
        {
          goto LABEL_249;
        }

        if (v32 >> 61)
        {
          goto LABEL_30;
        }

        v112 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
        if (v112)
        {
          *(a1 + 24) = v112;
          *(a1 + 32) = v32;
          v6 = *a1;
          goto LABEL_249;
        }

        if (!*(a1 + 16))
        {
LABEL_30:
          *(a1 + 16) = 12;
        }

        v6 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
LABEL_249:
        v93 = *(a1 + 24);
        v94 = *(a1 + 40);
        *(a1 + 40) = v94 + 1;
        v95 = 2684354560;
        goto LABEL_250;
      }

LABEL_251:
      *a1 = v6 + 6;
      return;
    }

    if (*(a1 + 16))
    {
      goto LABEL_251;
    }

    v27 = *(a1 + 32);
    if (*(a1 + 40) >= v27)
    {
      v28 = (v27 + 1) / 2;
      v29 = ((v27 + 1 + ((v27 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28;
      if (v27 < v29)
      {
        if (v29 >> 61)
        {
          goto LABEL_24;
        }

        v92 = malloc_type_realloc(*(a1 + 24), 24 * v28, 0x100004000313F17uLL);
        if (v92)
        {
          *(a1 + 24) = v92;
          *(a1 + 32) = v29;
          v6 = *a1;
          goto LABEL_225;
        }

        if (!*(a1 + 16))
        {
LABEL_24:
          *(a1 + 16) = 12;
        }

        v6 = &byte_1002E4868;
        *(a1 + 8) = &byte_1002E4868;
      }
    }

LABEL_225:
    v93 = *(a1 + 24);
    v94 = *(a1 + 40);
    *(a1 + 40) = v94 + 1;
    v95 = 2550136832;
LABEL_250:
    *(v93 + 8 * v94) = v95;
    goto LABEL_251;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v8 = *(v7 + 20);
  v9 = *(v7 + 16);
  *(v7 + 20) = v8 + 1;
  v10 = *(a1 + 48);
  if (v8 < v10)
  {
    v11 = *(v7 + 24);
    if (!v11)
    {
      goto LABEL_187;
    }

    goto LABEL_6;
  }

  v21 = (v10 + 8);
  *(a1 + 48) = v21;
  if (v10 < -8)
  {
    goto LABEL_187;
  }

  v22 = malloc_type_realloc(*(v7 + 24), 32 * (v10 + 8), 0x1010040FE74B554uLL);
  v7 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_187;
  }

  v23 = (v21 >> 3) * v9;
  *(v7 + 24) = v22;
  v24 = malloc_type_realloc(*(v7 + 32), v23, 0x100004077774924uLL);
  v7 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_187;
  }

  *(v7 + 32) = v24;
  if (v8 >= 1)
  {
    v25 = *(v7 + 24);
    if (v8 == 1)
    {
      v26 = 0;
LABEL_184:
      v80 = (v25 + 32 * v26);
      do
      {
        *v80 = &v24[(v26 >> 3) * v9];
        v80 += 4;
        ++v26;
      }

      while (v8 != v26);
      goto LABEL_186;
    }

    v77 = 0;
    v26 = v8 & 0x7FFFFFFE;
    v78 = (v25 + 32);
    do
    {
      v79 = &v24[(v77 >> 3) * v9];
      *(v78 - 4) = v79;
      *v78 = v79;
      v78 += 8;
      v77 += 2;
    }

    while (v26 != v77);
    if (v26 != v8)
    {
      goto LABEL_184;
    }
  }

LABEL_186:
  bzero(&v24[v23 - v9], v9);
  v7 = *(a1 + 56);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_187;
  }

LABEL_6:
  v12 = *(v7 + 32);
  if (v12)
  {
    v13 = (v11 + 32 * v8);
    v14 = v12 + v9 * (v8 / 8);
    *v13 = v14;
    v15 = 1;
    v16 = 1 << (v8 & 7);
    *(v13 + 4) = v16;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    v17 = *a1;
    v18 = *(a1 + 8);
    if (v18 - *a1 < 1)
    {
      goto LABEL_34;
    }

    v19 = *v17;
    v15 = v19 != 94;
    if (v19 == 94)
    {
      *a1 = ++v17;
      if (v18 - v17 < 1)
      {
        v15 = 0;
        v34 = *a1;
        v33 = *(a1 + 8);
        v35 = &v33[-*a1];
        if (v35 < 1)
        {
          goto LABEL_191;
        }

LABEL_35:
        v36 = "NUL";
        do
        {
          v37 = *v34;
          if (v37 == 93)
          {
            break;
          }

          if (v35 != 1 && v37 == 45)
          {
            if (v34[1] != 93)
            {
LABEL_78:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 11;
              }

              goto LABEL_38;
            }

            *a1 = v34 + 1;
            *(*v13 + 45) |= v13[8];
            v13[9] += 45;
            v34 = *a1;
            v33 = *(a1 + 8);
            break;
          }

          if (v37 == 45)
          {
            goto LABEL_78;
          }

          if (v37 == 91 && v35 != 1)
          {
            v44 = v34[1];
            if (v44 == 61)
            {
              v52 = v34 + 2;
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v33 = &byte_1002E4868;
                v52 = &byte_1002E4868;
              }

              v53 = *v52;
              if (v53 == 93 || v53 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 3;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v33 = &byte_1002E4868;
                v52 = &byte_1002E4868;
              }

              v54 = v33 - v52;
              if (v54 < 1)
              {
LABEL_102:
                if (!*(a1 + 16))
                {
                  v60 = 7;
                  goto LABEL_104;
                }

LABEL_105:
                v59 = 0;
                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
              }

              else
              {
                v55 = 0;
                v56 = 0;
                while (v54 - 1 == v56 || v52[v56] != 61 || v52[v56 + 1] != 93)
                {
                  *a1 = &v52[++v56];
                  --v55;
                  if (v54 + v55 <= 0)
                  {
                    goto LABEL_102;
                  }
                }

                v57 = &off_1002D4C80;
                while (strncmp(v36, v52, v56) || strlen(v36) != v56)
                {
                  v58 = *v57;
                  v57 += 2;
                  v36 = v58;
                  if (!v58)
                  {
                    if (v56 == 1)
                    {
                      v59 = *v52;
                      v36 = "NUL";
                      goto LABEL_106;
                    }

                    v36 = "NUL";
                    if (!*(a1 + 16))
                    {
                      v60 = 3;
LABEL_104:
                      *(a1 + 16) = v60;
                    }

                    goto LABEL_105;
                  }
                }

                v59 = *(v57 - 8);
                v36 = "NUL";
              }

LABEL_106:
              *(*v13 + v59) |= v13[8];
              v13[9] += v59;
              v61 = *a1;
              v33 = *(a1 + 8);
              if (&v33[-*a1] < 1)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v61 = &byte_1002E4868;
                v33 = &byte_1002E4868;
              }

              if (v33 - v61 > 1 && *v61 == 61 && v61[1] == 93)
              {
                goto LABEL_180;
              }

              if (!*(a1 + 16))
              {
                *(a1 + 16) = 3;
              }

              goto LABEL_38;
            }

            if (v44 == 58)
            {
              v45 = (v34 + 2);
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v33 = &byte_1002E4868;
                v45 = &byte_1002E4868;
              }

              v46 = *v45;
              if (v46 == 93 || v46 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 4;
                }

                *a1 = &byte_1002E4868;
                *(a1 + 8) = &byte_1002E4868;
                v33 = &byte_1002E4868;
                v45 = &byte_1002E4868;
              }

              if (&v33[-v45] < 1)
              {
                v51 = v45;
                goto LABEL_118;
              }

              v47 = v36;
              v48 = -v45;
              v49 = (v45 + 1);
              while (1)
              {
                v50 = *(v49 - 1);
                if (v50 < 0)
                {
                  if (!__maskrune(*(v49 - 1), 0x100uLL))
                  {
LABEL_116:
                    v51 = *a1;
LABEL_117:
                    v36 = v47;
LABEL_118:
                    v62 = v51 - v45;
                    if (!strncmp("alnum", v45, v51 - v45) && !aAlnum[v62])
                    {
                      v63 = off_1002D4B38;
                    }

                    else if (!strncmp("alpha", v45, v62) && !aAlpha[v62])
                    {
                      v63 = off_1002D4B50;
                    }

                    else if (!strncmp("blank", v45, v62) && !aBlank[v62])
                    {
                      v63 = off_1002D4B68;
                    }

                    else if (!strncmp("cntrl", v45, v62) && !aCntrl[v62])
                    {
                      v63 = off_1002D4B80;
                    }

                    else if (!strncmp("digit", v45, v62) && !aDigit[v62])
                    {
                      v63 = off_1002D4B98;
                    }

                    else if (!strncmp("graph", v45, v62) && !aGraph[v62])
                    {
                      v63 = off_1002D4BB0;
                    }

                    else if (!strncmp("lower", v45, v62) && !aLower[v62])
                    {
                      v63 = off_1002D4BC8;
                    }

                    else if (!strncmp("print", v45, v62) && !aPrint[v62])
                    {
                      v63 = off_1002D4BE0;
                    }

                    else if (!strncmp("punct", v45, v62) && !aPunct[v62])
                    {
                      v63 = off_1002D4BF8;
                    }

                    else if (!strncmp("space", v45, v62) && !aSpace[v62])
                    {
                      v63 = off_1002D4C10;
                    }

                    else if (!strncmp("upper", v45, v62) && !aUpper[v62])
                    {
                      v63 = off_1002D4C28;
                    }

                    else
                    {
                      if (strncmp("xdigit", v45, v62) || aXdigit[v62])
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 4;
                        }

                        *a1 = &byte_1002E4868;
                        *(a1 + 8) = &byte_1002E4868;
                        goto LABEL_173;
                      }

                      v63 = off_1002D4C40;
                    }

                    v64 = v63[1];
                    v65 = *v64;
                    if (*v64)
                    {
                      v66 = (v64 + 1);
                      do
                      {
                        *(*v13 + v65) |= v13[8];
                        v13[9] += v65;
                        v67 = *v66++;
                        v65 = v67;
                      }

                      while (v67);
                    }

                    v68 = v63[2];
                    if (*v68)
                    {
                      do
                      {
                        while (1)
                        {
                          v71 = *(v13 + 2);
                          v72 = v71 + strlen(v68) + 1;
                          *(v13 + 2) = v72;
                          v73 = malloc_type_realloc(*(v13 + 3), v72, 0xBC45E43CuLL);
                          if (!v73)
                          {
                            break;
                          }

                          *(v13 + 3) = v73;
                          llvm_strlcpy(&v73[v71 - 1], v68, *(v13 + 2) - v71 + 1);
                          v69 = &v68[strlen(v68)];
                          v70 = *(v69 + 1);
                          v68 = v69 + 1;
                          if (!v70)
                          {
                            goto LABEL_173;
                          }
                        }

                        v74 = *(v13 + 3);
                        if (v74)
                        {
                          free(v74);
                        }

                        *(v13 + 3) = 0;
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 12;
                        }

                        *a1 = &byte_1002E4868;
                        *(a1 + 8) = &byte_1002E4868;
                        v75 = &v68[strlen(v68)];
                        v76 = *(v75 + 1);
                        v68 = v75 + 1;
                      }

                      while (v76);
                    }

LABEL_173:
                    v61 = *a1;
                    v33 = *(a1 + 8);
                    if (&v33[-*a1] < 1)
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 7;
                      }

                      *a1 = &byte_1002E4868;
                      *(a1 + 8) = &byte_1002E4868;
                      v61 = &byte_1002E4868;
                      v33 = &byte_1002E4868;
                    }

                    if (v33 - v61 > 1 && *v61 == 58 && v61[1] == 93)
                    {
LABEL_180:
                      v34 = v61 + 2;
                      *a1 = v34;
                      goto LABEL_39;
                    }

                    if (!*(a1 + 16))
                    {
                      *(a1 + 16) = 4;
                    }

LABEL_38:
                    *a1 = &byte_1002E4868;
                    *(a1 + 8) = &byte_1002E4868;
                    v34 = &byte_1002E4868;
                    v33 = &byte_1002E4868;
                    goto LABEL_39;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v50] & 0x100) == 0)
                {
                  goto LABEL_116;
                }

                *a1 = v49;
                --v48;
                ++v49;
                if (*(a1 + 8) + v48 <= 0)
                {
                  v51 = -v48;
                  goto LABEL_117;
                }
              }
            }
          }

          v39 = sub_10004D914(a1);
          v40 = v39;
          v41 = *a1;
          v42 = *(a1 + 8);
          if (v42 - *a1 >= 2 && *v41 == 45)
          {
            v43 = v41 + 1;
            if (v41[1] != 93)
            {
              *a1 = v43;
              if (v42 - v43 >= 1 && *v43 == 45)
              {
                *a1 = v41 + 2;
                v39 = 45;
              }

              else
              {
                v39 = sub_10004D914(a1);
              }

              if (v40 > v39)
              {
                goto LABEL_78;
              }
            }
          }

          do
          {
            *(*v13 + v40) |= v13[8];
            v13[9] += v40++;
          }

          while (v39 + 1 != v40);
          v34 = *a1;
          v33 = *(a1 + 8);
LABEL_39:
          v35 = v33 - v34;
        }

        while (v33 - v34 > 0);
LABEL_191:
        if (v33 - v34 >= 1 && (*a1 = v34 + 1, *v34 == 93))
        {
          if (!*(a1 + 16))
          {
            v82 = *(a1 + 56);
            if ((*(v82 + 40) & 2) != 0)
            {
              v83 = *(v82 + 16);
              if (v83 >= 1)
              {
                while (1)
                {
                  v84 = v83 - 1;
                  v85 = (v83 - 1);
                  if ((v13[8] & *(*v13 + v85)) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v83 > 0x80)
                  {
                    if (!__maskrune(v83 - 1, 0x100uLL))
                    {
                      goto LABEL_197;
                    }
                  }

                  else if ((*(&_DefaultRuneLocale.__invalid_rune + v83) & 0x100) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v84 > 0x7Fu)
                  {
                    if (__maskrune(v84, 0x8000uLL))
                    {
LABEL_207:
                      v87 = __tolower(v84);
                      if (v84 != v87)
                      {
                        goto LABEL_214;
                      }

                      goto LABEL_197;
                    }

                    v86 = __maskrune(v84, 0x1000uLL);
                  }

                  else
                  {
                    if ((_DefaultRuneLocale.__runetype[v85] & 0x8000) != 0)
                    {
                      goto LABEL_207;
                    }

                    v86 = _DefaultRuneLocale.__runetype[v85] & 0x1000;
                  }

                  if (v86)
                  {
                    v87 = __toupper(v84);
                    if (v84 != v87)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v87 = v84;
                    if (v84 != v84)
                    {
LABEL_214:
                      *(*v13 + v87) |= v13[8];
                      v13[9] += v87;
                    }
                  }

LABEL_197:
                  v83 = v84;
                  if (v84 + 1 <= 1)
                  {
                    v82 = *(a1 + 56);
                    break;
                  }
                }
              }
            }

            if (!v15)
            {
              v96 = *(v82 + 16);
              if (v96 >= 1)
              {
                v97 = v96 + 1;
                do
                {
                  while (1)
                  {
                    v98 = v97 - 2;
                    v99 = *v13;
                    v100 = (v97 - 2);
                    v101 = *(*v13 + v100);
                    v102 = v13[8];
                    if ((v102 & v101) == 0)
                    {
                      break;
                    }

                    *(v99 + v100) = v101 & ~v102;
                    v13[9] -= v98;
                    if (--v97 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  *(v99 + v100) = v102 | v101;
                  v13[9] += v98;
                  --v97;
                }

                while (v97 > 1);
LABEL_233:
                v82 = *(a1 + 56);
              }

              if ((*(v82 + 40) & 8) != 0)
              {
                *(*v13 + 10) &= ~v13[8];
                v13[9] -= 10;
                v82 = *(a1 + 56);
              }
            }

            v103 = *(v82 + 16);
            v104 = v103;
            if (!v103)
            {
              v109 = *(v82 + 20);
              if (v109 >= 1)
              {
                v110 = *(v82 + 24);
                v111 = &v110[32 * v109];
                while (v110 == v13 || v110[9] != v13[9])
                {
                  v110 += 32;
                  if (v110 >= v111)
                  {
                    goto LABEL_285;
                  }
                }

                goto LABEL_279;
              }

LABEL_285:
              v110 = v13;
              goto LABEL_286;
            }

            v105 = 0;
            v106 = 0;
            v107 = *v13;
            v108 = v13[8];
            if (v104 >= 4 && (v104 - 257) >= 0xFFFFFFFFFFFFFF00)
            {
              if (v104 < 0x20)
              {
                v106 = 0;
                v105 = 0;
LABEL_259:
                v131 = v105;
                v105 = v104 & 0x1FC;
                v132 = v106;
                v133 = vdup_n_s16(v108);
                v134.i64[0] = 0x100000001;
                v134.i64[1] = 0x100000001;
                do
                {
                  a5.i32[0] = *(v107 + (v131 & 0xFC));
                  a5 = vandq_s8(vmovl_u16(vtst_s16(*&vmovl_u8(*a5.i8), v133)), v134);
                  v132 = vaddq_s32(v132, a5);
                  v131 += 4;
                }

                while (v105 != v131);
                v106 = vaddvq_s32(v132);
                if (v105 == v104)
                {
                  goto LABEL_265;
                }

                goto LABEL_262;
              }

              v113 = 0;
              v114 = vdupq_n_s8(v108);
              v115 = 0uLL;
              v116.i64[0] = 0x100000001;
              v116.i64[1] = 0x100000001;
              v105 = v104 & 0x1E0;
              v117 = 0uLL;
              v118 = 0uLL;
              v119 = 0uLL;
              v120 = 0uLL;
              v121 = 0uLL;
              v122 = 0uLL;
              v123 = 0uLL;
              do
              {
                v124 = (v107 + (v113 & 0xE0));
                v125 = vtstq_s8(*v124, v114);
                v126 = vmovl_u8(*v125.i8);
                v127 = vmovl_high_u8(v125);
                v128 = vtstq_s8(v124[1], v114);
                v129 = vmovl_u8(*v128.i8);
                v130 = vmovl_high_u8(v128);
                v119 = vaddq_s32(v119, vandq_s8(vmovl_high_u16(v127), v116));
                v118 = vaddq_s32(v118, vandq_s8(vmovl_u16(*v127.i8), v116));
                v117 = vaddq_s32(v117, vandq_s8(vmovl_high_u16(v126), v116));
                v115 = vaddq_s32(v115, vandq_s8(vmovl_u16(*v126.i8), v116));
                v123 = vaddq_s32(v123, vandq_s8(vmovl_high_u16(v130), v116));
                v122 = vaddq_s32(v122, vandq_s8(vmovl_u16(*v130.i8), v116));
                v121 = vaddq_s32(v121, vandq_s8(vmovl_high_u16(v129), v116));
                v120 = vaddq_s32(v120, vandq_s8(vmovl_u16(*v129.i8), v116));
                v113 += 32;
              }

              while (v105 != v113);
              a5 = vaddq_s32(v122, v118);
              v106 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v120, v115), a5), vaddq_s32(vaddq_s32(v121, v117), vaddq_s32(v123, v119))));
              if (v105 == v104)
              {
                goto LABEL_265;
              }

              if ((v104 & 0x1C) != 0)
              {
                goto LABEL_259;
              }
            }

            do
            {
LABEL_262:
              if ((*(v107 + v105) & v108) != 0)
              {
                ++v106;
              }

              ++v105;
            }

            while (v104 != v105);
LABEL_265:
            if (v106 == 1)
            {
              v135 = 0;
              v136 = 0;
              while ((*(v107 + v136) & v108) == 0)
              {
                ++v136;
                v135 += 0x1000000;
                if (v104 == v136)
                {
                  v137 = 0;
                  goto LABEL_293;
                }
              }

              v137 = v135 >> 24;
LABEL_293:
              v145 = *(v82 + 88);
              if ((*(v82 + 40) & 2) == 0)
              {
                goto LABEL_310;
              }

              if (v137 > 0x7Fu)
              {
                if (!__maskrune(v137, 0x100uLL))
                {
                  goto LABEL_310;
                }

                if (!__maskrune(v137, 0x8000uLL))
                {
                  v147 = __maskrune(v137, 0x1000uLL);
LABEL_307:
                  v148 = v137;
                  if (v147)
                  {
                    v148 = __toupper(v137);
                  }

LABEL_309:
                  if (v137 != v148)
                  {
                    sub_10004DB24(a1, v137);
                    v157 = *(a1 + 56);
                    v153 = *(v157 + 16);
                    v90 = *(v157 + 24) + 32 * *(v157 + 20);
                    if (!v153)
                    {
LABEL_221:
                      if ((v90 - 32) == v13)
                      {
                        --*(*(a1 + 56) + 20);
                      }

                      return;
                    }

LABEL_325:
                    for (i = 0; i != v153; ++i)
                    {
                      *(*v13 + i) &= ~v13[8];
                      v13[9] -= i;
                    }

                    goto LABEL_221;
                  }

LABEL_310:
                  if (*(a1 + 16))
                  {
                    if (*(v145 + v137))
                    {
                      goto LABEL_312;
                    }

                    goto LABEL_324;
                  }

                  v154 = *(a1 + 32);
                  if (*(a1 + 40) >= v154)
                  {
                    v155 = (v154 + 1) / 2;
                    v156 = ((v154 + 1 + ((v154 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v155;
                    if (v154 < v156)
                    {
                      if (v156 >> 61)
                      {
LABEL_317:
                        *(a1 + 16) = 12;
LABEL_318:
                        *a1 = &byte_1002E4868;
                        *(a1 + 8) = &byte_1002E4868;
                        goto LABEL_323;
                      }

                      v158 = malloc_type_realloc(*(a1 + 24), 24 * v155, 0x100004000313F17uLL);
                      if (!v158)
                      {
                        if (*(a1 + 16))
                        {
                          goto LABEL_318;
                        }

                        goto LABEL_317;
                      }

                      *(a1 + 24) = v158;
                      *(a1 + 32) = v156;
                    }
                  }

LABEL_323:
                  v159 = *(a1 + 24);
                  v160 = *(a1 + 40);
                  *(a1 + 40) = v160 + 1;
                  *(v159 + 8 * v160) = v137 | 0x10000000u;
                  if (*(v145 + v137))
                  {
LABEL_312:
                    v152 = *(a1 + 56);
                    v153 = *(v152 + 16);
                    v90 = *(v152 + 24) + 32 * *(v152 + 20);
                    if (!v153)
                    {
                      goto LABEL_221;
                    }

                    goto LABEL_325;
                  }

LABEL_324:
                  v161 = *(a1 + 56);
                  v162 = *(v161 + 84);
                  *(v161 + 84) = v162 + 1;
                  *(v145 + v137) = v162;
                  v163 = *(a1 + 56);
                  v153 = *(v163 + 16);
                  v90 = *(v163 + 24) + 32 * *(v163 + 20);
                  if (!v153)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_325;
                }
              }

              else
              {
                v146 = _DefaultRuneLocale.__runetype[v137];
                if ((v146 & 0x100) == 0)
                {
                  goto LABEL_310;
                }

                if ((v146 & 0x8000) == 0)
                {
                  v147 = _DefaultRuneLocale.__runetype[v137] & 0x1000;
                  goto LABEL_307;
                }
              }

              v148 = __tolower(v137);
              goto LABEL_309;
            }

            v138 = *(v82 + 20);
            if (v138 >= 1)
            {
              v110 = *(v82 + 24);
              v111 = &v110[32 * v138];
              while (1)
              {
                if (v110 != v13 && v110[9] == v13[9])
                {
                  v139 = 0;
                  while (((*(*v110 + v139) & v110[8]) != 0) != ((*(*v13 + v139) & v13[8]) == 0))
                  {
                    if (v104 == ++v139)
                    {
                      goto LABEL_279;
                    }
                  }

                  if (v104 == v139)
                  {
                    break;
                  }
                }

                v110 += 32;
                if (v110 >= v111)
                {
                  goto LABEL_285;
                }
              }

LABEL_279:
              if (v104)
              {
                for (j = 0; j != v104; ++j)
                {
                  *(*v13 + j) &= ~v13[8];
                  v13[9] -= j;
                }

                v82 = *(a1 + 56);
              }

              if (v111 - 32 == v13)
              {
                --*(v82 + 20);
              }

LABEL_286:
              if (*(a1 + 16))
              {
                return;
              }

              v141 = (&v110[-*(v82 + 24)] >> 5);
              v142 = *(a1 + 32);
              if (*(a1 + 40) >= v142)
              {
                v143 = (v142 + 1) / 2;
                v144 = ((v142 + 1 + ((v142 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v143;
                if (v142 < v144)
                {
                  if (v144 >> 61)
                  {
                    goto LABEL_290;
                  }

                  v149 = malloc_type_realloc(*(a1 + 24), 24 * v143, 0x100004000313F17uLL);
                  if (v149)
                  {
                    *(a1 + 24) = v149;
                    *(a1 + 32) = v144;
                    goto LABEL_305;
                  }

                  if (!*(a1 + 16))
                  {
LABEL_290:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &byte_1002E4868;
                  *(a1 + 8) = &byte_1002E4868;
                }
              }

LABEL_305:
              v150 = *(a1 + 24);
              v151 = *(a1 + 40);
              *(a1 + 40) = v151 + 1;
              *(v150 + 8 * v151) = v141 | 0x30000000;
              return;
            }

            goto LABEL_285;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &byte_1002E4868;
          *(a1 + 8) = &byte_1002E4868;
        }

        v88 = *(a1 + 56);
        v89 = *(v88 + 16);
        v90 = *(v88 + 24) + 32 * *(v88 + 20);
        if (v89)
        {
          for (k = 0; k != v89; ++k)
          {
            *(*v13 + k) &= ~v13[8];
            v13[9] -= k;
          }
        }

        goto LABEL_221;
      }

      v19 = *v17;
    }

    if (v19 == 93)
    {
      v20 = 93;
    }

    else
    {
      if (v19 != 45)
      {
        goto LABEL_34;
      }

      v20 = 45;
    }

    *a1 = v17 + 1;
    *(v14 + v20) |= v16;
    v13[9] += v19;
LABEL_34:
    v34 = *a1;
    v33 = *(a1 + 8);
    v35 = &v33[-*a1];
    if (v35 < 1)
    {
      goto LABEL_191;
    }

    goto LABEL_35;
  }

LABEL_187:
  free(*(v7 + 24));
  v81 = *(a1 + 56);
  *(v81 + 24) = 0;
  free(*(v81 + 32));
  *(*(a1 + 56) + 32) = 0;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 12;
  }

  *a1 = &byte_1002E4868;
  *(a1 + 8) = &byte_1002E4868;
}

__n128 sub_10004CD90(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v8 = *(a1 + 56);
  v9 = *(v8 + 88);
  v10 = a2;
  if ((*(v8 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v10, 0x8000uLL))
    {
      v14 = __maskrune(v10, 0x1000uLL);
      v12 = a2;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v12 = __tolower(v10);
    goto LABEL_12;
  }

  v11 = _DefaultRuneLocale.__runetype[a2];
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v12 = a2;
  if ((v11 & 0x1000) != 0)
  {
LABEL_11:
    v12 = __toupper(v10);
  }

LABEL_12:
  if (a2 != v12)
  {
    v26 = a2;
    v27 = 93;
    v23 = *a1;
    v25 = *a1;
    *a1 = &v26;
    *(a1 + 8) = &v27 + 1;
    sub_10004B98C(a1, v23.n128_f64[0], a4, a5, a6);
    result = v25;
    *a1 = v25;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v9 + a2))
    {
      return result;
    }

LABEL_21:
    v21 = *(a1 + 56);
    v22 = *(v21 + 84);
    *(v21 + 84) = v22 + 1;
    *(v9 + a2) = v22;
    return result;
  }

  v15 = *(a1 + 32);
  v16 = (v15 + 1) / 2;
  v17 = ((v15 + 1 + ((v15 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v16;
  if (*(a1 + 40) >= v15 && v15 < v17)
  {
    if (v17 >> 61)
    {
      goto LABEL_24;
    }

    v24 = malloc_type_realloc(*(a1 + 24), 24 * v16, 0x100004000313F17uLL);
    if (v24)
    {
      *(a1 + 24) = v24;
      *(a1 + 32) = v17;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &byte_1002E4868;
    *(a1 + 8) = &byte_1002E4868;
  }

LABEL_20:
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  *(a1 + 40) = v20 + 1;
  *(v19 + 8 * v20) = v10 | 0x10000000u;
  if (!*(v9 + a2))
  {
    goto LABEL_21;
  }

  return result;
}

_DWORD *sub_10004CF84(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[4])
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 5);
LABEL_3:
  while (2)
  {
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      v10 = a3 - 1;
      v11 = a2;
      while (1)
      {
        v13 = v11;
        v11 = v7;
        if (a3 == 256)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (a3 < 2)
        {
          v14 = a3;
        }

        v15 = v9 + 8 * v14;
        if (v15 != 19)
        {
          if (v15 <= 8)
          {
            if ((v15 - 1) >= 3)
            {
              if (v15)
              {
                goto LABEL_127;
              }

              v11 = v13;
LABEL_114:
              v6[5] = v11;
              return result;
            }

LABEL_106:
            sub_10004B620(v6, 2013265920, v11 - v13 + 1, v13);
            result = sub_10004CF84(v6, v13 + 1, 1, a4);
            if (*(v6 + 4))
            {
              return result;
            }

            v47 = v6[4];
            v46 = v6[5];
            v48 = v46 - v13;
            if (v46 < v47 || (v49 = (v47 + 1) / 2, v50 = ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v49, v47 >= v50))
            {
              result = v6[3];
              v52 = v6[5];
              v6[5] = v52 + 1;
              *&result[2 * v52] = v48 | 0x80000000;
            }

            else
            {
              if (v50 >> 61)
              {
LABEL_110:
                *(v6 + 4) = 12;
LABEL_111:
                *v6 = &byte_1002E4868;
                v6[1] = &byte_1002E4868;
                v51 = v48 | 0x80000000;
LABEL_148:
                v69 = v6[3];
                v70 = v6[5];
                v6[5] = v70 + 1;
                *(v69 + 8 * v70) = v51;
                return result;
              }

              result = malloc_type_realloc(v6[3], 24 * v49, 0x100004000313F17uLL);
              if (!result)
              {
                if (*(v6 + 4))
                {
                  goto LABEL_111;
                }

                goto LABEL_110;
              }

              v6[3] = result;
              v6[4] = v50;
              v60 = *(v6 + 4);
              v61 = v6[5];
              v6[5] = v61 + 1;
              *&result[2 * v61] = v48 | 0x80000000;
              if (v60)
              {
                return result;
              }
            }

            *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (v6[5] - v13);
            v53 = v6[4];
            if (v6[5] < v53 || (v54 = (v53 + 1) / 2, v55 = ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v54, v53 >= v55))
            {
              v56 = v6[5];
              v6[5] = v56 + 1;
              *&result[2 * v56] = 2281701376;
            }

            else
            {
              if (v55 >> 61)
              {
                *(v6 + 4) = 12;
                *v6 = &byte_1002E4868;
                v6[1] = &byte_1002E4868;
LABEL_152:
                v71 = v6[5];
                v6[5] = v71 + 1;
                v72 = 2281701376;
LABEL_157:
                *&result[2 * v71] = v72;
                return result;
              }

              result = malloc_type_realloc(result, 24 * v54, 0x100004000313F17uLL);
              if (!result)
              {
                if (!*(v6 + 4))
                {
                  *(v6 + 4) = 12;
                }

                *v6 = &byte_1002E4868;
                v6[1] = &byte_1002E4868;
                result = v6[3];
                goto LABEL_152;
              }

              v6[3] = result;
              v6[4] = v55;
              v62 = *(v6 + 4);
              v63 = v6[5];
              v6[5] = v63 + 1;
              *&result[2 * v63] = 2281701376;
              if (v62)
              {
                return result;
              }
            }

            *&result[2 * v6[5] - 2] = *&result[2 * v6[5] - 2] & 0xF8000000 | 1;
            v57 = v6[4];
            if (v6[5] >= v57)
            {
              v58 = (v57 + 1) / 2;
              v59 = ((v57 + 1 + ((v57 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v58;
              if (v57 < v59)
              {
                if (v59 >> 61)
                {
                  *(v6 + 4) = 12;
                  *v6 = &byte_1002E4868;
                  v6[1] = &byte_1002E4868;
                }

                else
                {
                  result = malloc_type_realloc(result, 24 * v58, 0x100004000313F17uLL);
                  if (result)
                  {
                    v6[3] = result;
                    v6[4] = v59;
                  }

                  else
                  {
                    if (!*(v6 + 4))
                    {
                      *(v6 + 4) = 12;
                    }

                    *v6 = &byte_1002E4868;
                    v6[1] = &byte_1002E4868;
                    result = v6[3];
                  }
                }
              }
            }

            v71 = v6[5];
            v6[5] = v71 + 1;
            v72 = 2415919106;
            goto LABEL_157;
          }

          if (v15 <= 10)
          {
            if (v15 == 9)
            {
              return result;
            }

            goto LABEL_29;
          }

          if (v15 == 11)
          {
LABEL_135:
            result = sub_10004B620(v6, 1207959552, v11 - v13 + 1, v13);
            if (*(v6 + 4))
            {
              return result;
            }

            v65 = v6[4];
            v64 = v6[5];
            v66 = v64 - v13;
            if (v64 < v65)
            {
              goto LABEL_147;
            }

            v67 = (v65 + 1) / 2;
            v68 = ((v65 + 1 + ((v65 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
            if (v65 >= v68)
            {
              goto LABEL_147;
            }

            if (v68 >> 61)
            {
              goto LABEL_139;
            }

            result = malloc_type_realloc(v6[3], 24 * v67, 0x100004000313F17uLL);
            if (result)
            {
              v6[3] = result;
              v6[4] = v68;
              goto LABEL_147;
            }

            if (!*(v6 + 4))
            {
LABEL_139:
              *(v6 + 4) = 12;
            }

            *v6 = &byte_1002E4868;
            v6[1] = &byte_1002E4868;
LABEL_147:
            v51 = v66 | 0x50000000;
            goto LABEL_148;
          }

          if (v15 != 18)
          {
            goto LABEL_127;
          }

          v7 = v11;
          v26 = v11 - v13;
          if (v11 == v13)
          {
            goto LABEL_64;
          }

          if (v26 >= 1)
          {
            v27 = v6[4] + v26;
            if (v27 >> 61)
            {
              goto LABEL_50;
            }

            v33 = malloc_type_realloc(v6[3], 8 * v27, 0x100004000313F17uLL);
            if (v33)
            {
              v6[3] = v33;
              v6[4] = v27;
              goto LABEL_63;
            }

            if (!*(v6 + 4))
            {
LABEL_50:
              *(v6 + 4) = 12;
            }

            *v6 = &byte_1002E4868;
            v6[1] = &byte_1002E4868;
          }

LABEL_63:
          result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v26);
          v7 = v6[5] + v26;
          v6[5] = v7;
LABEL_64:
          --a3;
          a2 = v11;
          a4 = (a4 - 1);
          if (!*(v6 + 4))
          {
            goto LABEL_3;
          }

          return result;
        }

        v16 = v11 - v13;
        if (v11 == v13)
        {
          break;
        }

        if (v16 >= 1)
        {
          v17 = v6[4] + v16;
          if (v17 >> 61)
          {
            goto LABEL_22;
          }

          v12 = malloc_type_realloc(v6[3], 8 * v17, 0x100004000313F17uLL);
          if (!v12)
          {
            if (!*(v6 + 4))
            {
LABEL_22:
              *(v6 + 4) = 12;
            }

            *v6 = &byte_1002E4868;
            v6[1] = &byte_1002E4868;
            goto LABEL_12;
          }

          v6[3] = v12;
          v6[4] = v17;
        }

LABEL_12:
        result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v16);
        v7 = v6[5] + v16;
        v6[5] = v7;
        --a3;
        --v10;
        if (*(v6 + 4))
        {
          return result;
        }
      }

      do
      {
        if (v10 == 256)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        if (v10 + 1 >= 3)
        {
          v24 = v23;
        }

        else
        {
          v24 = v10;
        }

        v25 = v9 + 8 * v24;
        --v10;
      }

      while (v25 == 19);
      if (v25 <= 8)
      {
        v13 = v11;
        if ((v25 - 1) >= 3)
        {
          if (v25)
          {
            goto LABEL_127;
          }

          goto LABEL_114;
        }

        goto LABEL_106;
      }

      if (v25 > 10)
      {
        if (v25 != 11)
        {
          if (v25 == 18)
          {
            a3 = v10 + 1;
            v7 = v11;
            goto LABEL_64;
          }

LABEL_127:
          *(v6 + 4) = 15;
          *v6 = &byte_1002E4868;
          v6[1] = &byte_1002E4868;
          return result;
        }

        v13 = v11;
        goto LABEL_135;
      }

      if (v25 == 9)
      {
        return result;
      }

      v13 = v11;
LABEL_29:
      v18 = v11 - v13;
      result = sub_10004B620(v6, 2013265920, v11 - v13 + 1, v13);
      a2 = v6[5];
      if (*(v6 + 4))
      {
        goto LABEL_83;
      }

      v19 = v6[4];
      if (a2 < v19 || (v20 = (v19 + 1) / 2, v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20, v19 >= v21))
      {
        v22 = 1;
      }

      else
      {
        if (v21 >> 61)
        {
          v22 = 0;
          *(v6 + 4) = 12;
          goto LABEL_98;
        }

        v38 = v6[5];
        v39 = malloc_type_realloc(v6[3], 24 * v20, 0x100004000313F17uLL);
        if (v39)
        {
          v6[3] = v39;
          v6[4] = v21;
          v22 = *(v6 + 4) == 0;
          a2 = v38;
        }

        else
        {
          a2 = v38;
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          v22 = 0;
LABEL_98:
          *v6 = &byte_1002E4868;
          v6[1] = &byte_1002E4868;
        }
      }

      result = v6[3];
      v28 = v6[5];
      v6[5] = v28 + 1;
      *&result[2 * v28] = (a2 - v13) | 0x80000000;
      a2 = v6[5];
      if (!v22)
      {
        goto LABEL_83;
      }

      *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (a2 - v13);
      v29 = v6[4];
      if (v6[5] < v29 || (v30 = (v29 + 1) / 2, v31 = ((v29 + 1 + ((v29 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v30, v29 >= v31))
      {
        v34 = v6[5];
        v6[5] = v34 + 1;
        *&result[2 * v34] = 2281701376;
        a2 = v6[5];
LABEL_67:
        *&result[2 * a2 - 2] = *&result[2 * a2 - 2] & 0xF8000000 | 1;
        v35 = v6[4];
        if (v6[5] < v35 || (v36 = (v35 + 1) / 2, v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36, v35 >= v37))
        {
LABEL_81:
          v32 = 2415919106;
        }

        else
        {
          if (v37 >> 61)
          {
            *(v6 + 4) = 12;
            v32 = 2415919106;
LABEL_71:
            *v6 = &byte_1002E4868;
            v6[1] = &byte_1002E4868;
            goto LABEL_82;
          }

          result = malloc_type_realloc(result, 24 * v36, 0x100004000313F17uLL);
          if (result)
          {
            v6[3] = result;
            v6[4] = v37;
            goto LABEL_81;
          }

          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &byte_1002E4868;
          v6[1] = &byte_1002E4868;
          v32 = 2415919106;
          result = v6[3];
        }

LABEL_82:
        v42 = v6[5];
        v6[5] = v42 + 1;
        *&result[2 * v42] = v32;
        a2 = v6[5];
        goto LABEL_83;
      }

      if (v31 >> 61)
      {
        *(v6 + 4) = 12;
        v32 = 2281701376;
        goto LABEL_71;
      }

      result = malloc_type_realloc(result, 24 * v30, 0x100004000313F17uLL);
      if (!result)
      {
        if (!*(v6 + 4))
        {
          *(v6 + 4) = 12;
        }

        *v6 = &byte_1002E4868;
        v6[1] = &byte_1002E4868;
        v32 = 2281701376;
        result = v6[3];
        goto LABEL_82;
      }

      v6[3] = result;
      v6[4] = v31;
      v40 = *(v6 + 4);
      v41 = v6[5];
      v6[5] = v41 + 1;
      *&result[2 * v41] = 2281701376;
      a2 = v6[5];
      if (!v40)
      {
        goto LABEL_67;
      }

LABEL_83:
      if (v11 == v13)
      {
        break;
      }

      v43 = a2;
      if (v18 >= 1)
      {
        v44 = v6[4] + v18;
        if (v44 >> 61 || (v45 = malloc_type_realloc(v6[3], 8 * v44, 0x100004000313F17uLL)) == 0)
        {
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &byte_1002E4868;
          v6[1] = &byte_1002E4868;
        }

        else
        {
          v6[3] = v45;
          v6[4] = v44;
        }
      }

      result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13 + 8), 8 * v18);
      v7 = v6[5] + v18;
      v6[5] = v7;
      a3 = 1;
      a2 = v43;
      a4 = (a4 - 1);
      if (*(v6 + 4))
      {
        return result;
      }
    }

    a3 = 1;
    v7 = a2;
    a4 = (a4 - 1);
    if (!*(v6 + 4))
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10004D914(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 - *a1 < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v1 = &byte_1002E4868;
    *a1 = &byte_1002E4868;
    *(a1 + 8) = &byte_1002E4868;
    goto LABEL_16;
  }

  v3 = v2 - v1;
  if (v2 - v1 <= 1 || *v1 != 91 || v1[1] != 46)
  {
LABEL_16:
    *a1 = v1 + 1;
    return *v1;
  }

  v4 = v1 + 2;
  *a1 = v1 + 2;
  if (v2 - (v1 + 2) < 1)
  {
LABEL_23:
    if (*(a1 + 16))
    {
      goto LABEL_26;
    }

    v15 = 7;
  }

  else
  {
    v5 = 0;
    v6 = -2;
    while (1)
    {
      v7 = &v1[v5];
      if (v3 - 3 != v5 && v7[2] == 46 && v1[v5 + 3] == 93)
      {
        break;
      }

      *a1 = v7 + 3;
      ++v5;
      --v6;
      if (v3 + v6 <= 0)
      {
        goto LABEL_23;
      }
    }

    v8 = a1;
    v9 = &v1[v5 + 2];
    v10 = "NUL";
    v11 = &off_1002D4C80;
    do
    {
      if (!strncmp(v10, v4, v5) && strlen(v10) == v5)
      {
        v12 = *(v11 - 8);
        a1 = v8;
        if (v2 - v9 <= 1)
        {
          goto LABEL_32;
        }

LABEL_27:
        if (*v9 == 46 && v9[1] == 93)
        {
          *a1 = v9 + 2;
          return v12;
        }

        goto LABEL_32;
      }

      v14 = *v11;
      v11 += 2;
      v10 = v14;
    }

    while (v14);
    if (v5 == 1)
    {
      v12 = *v4;
      a1 = v8;
      if (v2 - v9 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    a1 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_26;
    }

    v15 = 3;
  }

  *(a1 + 16) = v15;
LABEL_26:
  v12 = 0;
  *a1 = &byte_1002E4868;
  *(a1 + 8) = &byte_1002E4868;
LABEL_32:
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 3;
  }

  *a1 = &byte_1002E4868;
  *(a1 + 8) = &byte_1002E4868;
  return v12;
}

__n128 sub_10004DB24(__n128 *a1, char a2)
{
  v5 = a2;
  v6 = 93;
  v4 = *a1;
  a1->n128_u64[0] = &v5;
  a1->n128_u64[1] = &v6 + 1;
  sub_10004B98C();
  result = v4;
  *a1 = v4;
  return result;
}

size_t llvm_regerror(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (!strcmp("REG_NOMATCH", v6))
    {
      v12 = 1;
    }

    else if (!strcmp("REG_BADPAT", v6))
    {
      v12 = 2;
    }

    else if (!strcmp("REG_ECOLLATE", v6))
    {
      v12 = 3;
    }

    else if (!strcmp("REG_ECTYPE", v6))
    {
      v12 = 4;
    }

    else if (!strcmp("REG_EESCAPE", v6))
    {
      v12 = 5;
    }

    else if (!strcmp("REG_ESUBREG", v6))
    {
      v12 = 6;
    }

    else if (!strcmp("REG_EBRACK", v6))
    {
      v12 = 7;
    }

    else if (!strcmp("REG_EPAREN", v6))
    {
      v12 = 8;
    }

    else if (!strcmp("REG_EBRACE", v6))
    {
      v12 = 9;
    }

    else if (!strcmp("REG_BADBR", v6))
    {
      v12 = 10;
    }

    else if (!strcmp("REG_ERANGE", v6))
    {
      v12 = 11;
    }

    else if (!strcmp("REG_ESPACE", v6))
    {
      v12 = 12;
    }

    else if (!strcmp("REG_BADRPT", v6))
    {
      v12 = 13;
    }

    else if (!strcmp("REG_EMPTY", v6))
    {
      v12 = 14;
    }

    else if (!strcmp("REG_ASSERT", v6))
    {
      v12 = 15;
    }

    else
    {
      if (strcmp("REG_INVARG", v6))
      {
        v7 = "0";
        goto LABEL_48;
      }

      v12 = 16;
    }

    v16 = v12;
    v13 = "%d";
  }

  else
  {
    v8 = &dword_1002D5270;
    do
    {
      v10 = *v8;
      v8 += 6;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == (a1 & 0xFFFFFEFF);
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    if ((a1 & 0x100) == 0)
    {
      v7 = *(v8 - 1);
      goto LABEL_48;
    }

    if (v9)
    {
      v7 = __str;
      llvm_strlcpy(__str, *(v8 - 2), 50);
      goto LABEL_48;
    }

    v16 = a1 & 0xFFFFFEFF;
    v13 = "REG_0x%x";
  }

  v7 = __str;
  snprintf(__str, 0x32uLL, v13, v16);
LABEL_48:
  v14 = strlen(v7);
  if (a4)
  {
    llvm_strlcpy(a3, v7, a4);
  }

  return v14 + 1;
}

uint64_t llvm_regexec(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v137 = v5;
  v138 = v6;
  v7 = *(a1 + 24);
  if (*v7 != 53829 || (*(v7 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v7 + 48);
  v10 = __s;
  if (v9 > 64)
  {
    v20 = *(v7 + 56);
    v19 = *(v7 + 64);
    if ((*(v7 + 40) & 4) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    v122 = v21;
    if ((a5 & 4) != 0)
    {
      v23 = a4[1];
      v24 = &__s[*a4];
      v25 = &__s[v23];
      if (&__s[v23] < v24)
      {
        return 16;
      }
    }

    else
    {
      v22 = a4;
      v23 = strlen(__s);
      a4 = v22;
      __s = v10;
      v24 = v10;
      v25 = &v10[v23];
      if (&v10[v23] < v10)
      {
        return 16;
      }
    }

    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v35 = *(v7 + 96);
    v127 = v25;
    v119 = a4;
    if (v35)
    {
      v36 = v24;
      if (v24 < v25)
      {
        __dsta = v20;
        v116 = v8;
        v37 = v7;
        v38 = *v35;
        v39 = (__s - v24 + v23);
        v113 = &__s[v23];
        v40 = (&__s[v23] - v24);
        v36 = v24;
        do
        {
          if (*v36 == v38)
          {
            v41 = *(v37 + 104);
            if (v40 >= v41)
            {
              v42 = memcmp(v36, v35, v41);
              __s = v10;
              if (!v42)
              {
                goto LABEL_152;
              }
            }
          }

          ++v36;
          --v40;
          --v39;
        }

        while (v39);
        v36 = v113;
LABEL_152:
        v7 = v37;
        v20 = __dsta;
        v25 = v127;
        v8 = v116;
      }

      if (v36 == v25)
      {
        return 1;
      }
    }

    v129 = v7;
    LODWORD(v130) = v8;
    *&v131 = __s;
    *(&v131 + 1) = v24;
    *&v133 = 0;
    *&v132 = v25;
    v76 = malloc_type_malloc(4 * v9, 0xD100C61FuLL);
    v134[0] = v76;
    if (!v76)
    {
      return 12;
    }

    v77 = v20 + 1;
    v134[1] = v76;
    v78 = *(v7 + 48);
    *&v135 = &v76[v78];
    *(&v135 + 1) = &v76[2 * v78];
    *(&v133 + 1) = 4;
    v136 = &v76[2 * v78 + v78];
    bzero(v136, v78);
    v121 = v7;
LABEL_157:
    if (*(&v131 + 1) == v24)
    {
      v79 = 128;
    }

    else
    {
      v79 = *(v24 - 1);
    }

    v80 = v135;
    v81 = v134[1];
    bzero(v134[1], *(v129 + 48));
    v81[v77] = 1;
    sub_100050A04(v129, v77, v19, v81, 132, v81);
    memmove(v80, v81, *(v129 + 48));
    v82 = 0;
    if (v24 != v132)
    {
LABEL_161:
      v83 = *v24;
      goto LABEL_163;
    }

    while (1)
    {
      v83 = 128;
LABEL_163:
      v84 = v129;
      if (!memcmp(v81, v80, *(v129 + 48)))
      {
        v82 = v24;
      }

      if (v79 == 128)
      {
        if (v130)
        {
          goto LABEL_168;
        }
      }

      else if (v79 != 10 || (*(v84 + 40) & 8) == 0)
      {
LABEL_168:
        v85 = 0;
        v86 = 0;
        v87 = 130;
        if (v83 == 128)
        {
          goto LABEL_175;
        }

        goto LABEL_169;
      }

      v86 = *(v84 + 76);
      v85 = 129;
      v87 = 131;
      if (v83 == 128)
      {
LABEL_175:
        if ((v130 & 2) != 0)
        {
          goto LABEL_171;
        }

        goto LABEL_176;
      }

LABEL_169:
      if (v83 != 10 || (*(v84 + 40) & 8) == 0)
      {
LABEL_171:
        v87 = v85;
        if (v86 < 1)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

LABEL_176:
      v86 += *(v84 + 80);
      if (v86 < 1)
      {
        goto LABEL_179;
      }

LABEL_177:
      v88 = v86 + 1;
      do
      {
        sub_100050A04(v129, v77, v19, v81, v87, v81);
        --v88;
      }

      while (v88 > 1);
LABEL_179:
      if (v87 == 129)
      {
        if (v83 == 128)
        {
          v87 = 129;
          if (v79 == 128)
          {
            goto LABEL_210;
          }
        }

        else
        {
LABEL_190:
          if (v83 > 0x7Fu)
          {
            v91 = __maskrune(v83, 0x500uLL);
            if (v83 == 95 || v91 != 0)
            {
              v87 = 133;
            }

            if (v79 == 128)
            {
              goto LABEL_210;
            }
          }

          else
          {
            if (v83 == 95 || (_DefaultRuneLocale.__runetype[v83] & 0x500) != 0)
            {
              v87 = 133;
            }

            if (v79 == 128)
            {
              goto LABEL_210;
            }
          }
        }

        v89 = v79;
        goto LABEL_205;
      }

      if (v79 == 128)
      {
        goto LABEL_210;
      }

      v89 = v79;
      if (v79 > 0x7Fu)
      {
        if (__maskrune(v79, 0x500uLL))
        {
          goto LABEL_205;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v79] & 0x500) != 0)
      {
        goto LABEL_205;
      }

      if (v79 != 95 && v83 != 128)
      {
        goto LABEL_190;
      }

LABEL_205:
      if (v89 > 0x7F)
      {
        if (!__maskrune(v89, 0x500uLL))
        {
LABEL_209:
          if (v79 != 95)
          {
            goto LABEL_210;
          }
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v89] & 0x500) == 0)
      {
        goto LABEL_209;
      }

      if (v87 == 130 || v83 != 128 && (v83 > 0x7Fu ? (v93 = __maskrune(v83, 0x500uLL)) : (v93 = _DefaultRuneLocale.__runetype[v83] & 0x500), !v93 && v83 != 95))
      {
        v87 = 134;
LABEL_214:
        sub_100050A04(v129, v77, v19, v81, v87, v81);
        goto LABEL_215;
      }

LABEL_210:
      if ((v87 - 133) <= 1)
      {
        goto LABEL_214;
      }

LABEL_215:
      if (v24 == v127 || v81[v19])
      {
        *(&v132 + 1) = v82;
        if (!v81[v19])
        {
          free(*(&v130 + 1));
          free(v133);
          v112 = 1;
          goto LABEL_267;
        }

        v94 = v122;
        if (!v122 && !*(v121 + 120))
        {
          goto LABEL_262;
        }

        v95 = sub_10004FF90(&v129, v82, v127, v77, v19);
        if (!v95)
        {
          v97 = v121;
          do
          {
            ++*(&v132 + 1);
            v98 = sub_10004FF90(&v129, *(&v132 + 1), v127, v77, v19);
          }

          while (!v98);
          v96 = v98;
          if (v122 == 1)
          {
            goto LABEL_235;
          }

          goto LABEL_236;
        }

        v96 = v95;
        v97 = v121;
        if (v122 != 1)
        {
          goto LABEL_236;
        }

LABEL_235:
        if (!*(v97 + 120))
        {
          goto LABEL_257;
        }

LABEL_236:
        v99 = *(&v130 + 1);
        if (!*(&v130 + 1))
        {
          v99 = malloc_type_malloc(16 * *(v129 + 112) + 16, 0x1000040451B5BE8uLL);
          *(&v130 + 1) = v99;
          if (!v99)
          {
            v112 = 12;
            goto LABEL_267;
          }
        }

        v100 = *(v129 + 112);
        if (v100)
        {
          if ((v100 + 1) > 2)
          {
            v101 = v100 + 1;
          }

          else
          {
            v101 = 2;
          }

          memset(v99 + 16, 255, 16 * v101 - 16);
        }

        if (*(v97 + 120) || (BYTE1(v130) & 4) != 0)
        {
          v103 = *(v97 + 128);
          v104 = v133;
          if (v103 >= 1 && !v133)
          {
            v104 = malloc_type_malloc(8 * v103 + 8, 0x10040436913F5uLL);
            *&v133 = v104;
            v103 = *(v97 + 128);
          }

          if (v103 < 1 || v104)
          {
            v102 = sub_10004F780(&v129, *(&v132 + 1), v96, v77, v19, 0, 0);
            goto LABEL_252;
          }

          free(*(&v130 + 1));
          v112 = 12;
          goto LABEL_267;
        }

        v102 = sub_1000503E4(&v129, *(&v132 + 1), v96, v77, v19);
LABEL_252:
        if (v102)
        {
          goto LABEL_256;
        }

        while (1)
        {
          v105 = *(&v132 + 1);
          if (v96 <= *(&v132 + 1))
          {
            break;
          }

          v96 = sub_10004FF90(&v129, *(&v132 + 1), v96 - 1, v77, v19);
          v105 = *(&v132 + 1);
          if (!v96)
          {
            break;
          }

          if (sub_10004F780(&v129, *(&v132 + 1), v96, v77, v19, 0, 0))
          {
            goto LABEL_256;
          }
        }

        v24 = v105 + 1;
        if (v105 == v127)
        {
LABEL_256:
          v94 = v122;
          if (v122)
          {
LABEL_257:
            v106 = &v96[-v131];
            *v119 = *(&v132 + 1) - v131;
            v119[1] = v106;
            if (v94 >= 2)
            {
              v107 = v129;
              v108 = (*(&v130 + 1) + 16);
              v109 = v119 + 2;
              for (i = 1; i != v94; ++i)
              {
                while (i > *(v107 + 112))
                {
                  *v109 = -1;
                  v109[1] = -1;
                  v109 += 2;
                  ++i;
                  ++v108;
                  if (v94 == i)
                  {
                    goto LABEL_262;
                  }
                }

                v111 = *v108++;
                *v109 = v111;
                v109 += 2;
              }
            }
          }

LABEL_262:
          if (*(&v130 + 1))
          {
            free(*(&v130 + 1));
          }

          if (v133)
          {
            free(v133);
          }

          v112 = 0;
LABEL_267:
          free(v134[0]);
          return v112;
        }

        goto LABEL_157;
      }

      memmove(*(&v80 + 1), v81, *(v129 + 48));
      memmove(v81, v80, *(v129 + 48));
      sub_100050A04(v129, v77, v19, *(&v80 + 1), v83, v81);
      ++v24;
      v79 = v83;
      if (v24 != v132)
      {
        goto LABEL_161;
      }
    }
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  if ((*(v7 + 40) & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  if ((a5 & 4) == 0)
  {
    v14 = a4;
    v15 = strlen(__s);
    a4 = v14;
    __s = v10;
    v16 = v10;
    v17 = &v10[v15];
    if (&v10[v15] >= v10)
    {
      goto LABEL_21;
    }

    return 16;
  }

  v15 = a4[1];
  v16 = &__s[*a4];
  v17 = &__s[v15];
  if (&__s[v15] < v16)
  {
    return 16;
  }

LABEL_21:
  v118 = a4;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v26 = *(v7 + 96);
  __dst = v17;
  if (v26)
  {
    v27 = v16;
    if (v16 < v17)
    {
      v126 = v12;
      v115 = v8;
      v28 = v13;
      v29 = v7;
      v30 = *v26;
      v31 = (__s - v16 + v15);
      v123 = &__s[v15];
      v32 = (&__s[v15] - v16);
      v27 = v16;
      while (1)
      {
        if (*v27 == v30)
        {
          v33 = *(v29 + 104);
          if (v32 >= v33)
          {
            v34 = memcmp(v27, v26, v33);
            __s = v10;
            if (!v34)
            {
              break;
            }
          }
        }

        ++v27;
        --v32;
        if (!--v31)
        {
          v27 = v123;
          break;
        }
      }

      v7 = v29;
      v13 = v28;
      v17 = __dst;
      v12 = v126;
      v8 = v115;
    }

    if (v27 == v17)
    {
      return 1;
    }
  }

  v43 = v12 + 1;
  v129 = v7;
  LODWORD(v130) = v8;
  *&v131 = __s;
  *(&v131 + 1) = v16;
  v114 = v13;
  v117 = 1 << (v12 + 1);
  *&v132 = v17;
  v120 = v7;
  *v134 = 0u;
  v135 = 0u;
  while (2)
  {
    if (*(&v131 + 1) == v16)
    {
      v44 = 128;
    }

    else
    {
      v44 = *(v16 - 1);
    }

    v45 = v129;
    v46 = sub_10004FD6C(v129, v43, v11, v117, 132, v117);
    v47 = 0;
    v48 = v46;
    if (v16 != v132)
    {
LABEL_48:
      v49 = *v16;
      if (v48 == v46)
      {
        v47 = v16;
      }

      v128 = v47;
      if (v44 == 128)
      {
        goto LABEL_61;
      }

LABEL_51:
      if (v44 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_62;
      }

LABEL_53:
      v50 = 0;
      v51 = 0;
      v52 = 130;
      if (v49 == 128)
      {
        goto LABEL_63;
      }

LABEL_54:
      if (v49 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_64;
      }

LABEL_56:
      v52 = v50;
      if (v51 >= 1)
      {
LABEL_65:
        v53 = v51 + 1;
        do
        {
          v48 = sub_10004FD6C(v45, v43, v11, v48, v52, v48);
          --v53;
        }

        while (v53 > 1);
      }

      goto LABEL_67;
    }

    while (1)
    {
      v49 = 128;
      if (v48 == v46)
      {
        v47 = v16;
      }

      v128 = v47;
      if (v44 != 128)
      {
        goto LABEL_51;
      }

LABEL_61:
      if (v130)
      {
        goto LABEL_53;
      }

LABEL_62:
      v51 = *(v45 + 76);
      v50 = 129;
      v52 = 131;
      if (v49 != 128)
      {
        goto LABEL_54;
      }

LABEL_63:
      if ((v130 & 2) != 0)
      {
        goto LABEL_56;
      }

LABEL_64:
      v51 += *(v45 + 80);
      if (v51 >= 1)
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v52 == 129)
      {
        v54 = __dst;
        if (v49 == 128)
        {
          v52 = 129;
          if (v44 == 128)
          {
            goto LABEL_98;
          }
        }

        else
        {
LABEL_78:
          if (v49 > 0x7Fu)
          {
            v57 = __maskrune(v49, 0x500uLL);
            if (v49 == 95 || v57 != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v49 == 95 || (_DefaultRuneLocale.__runetype[v49] & 0x500) != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }
        }

        v55 = v44;
        goto LABEL_93;
      }

      v54 = __dst;
      if (v44 == 128)
      {
        goto LABEL_98;
      }

      v55 = v44;
      if (v44 > 0x7Fu)
      {
        if (__maskrune(v44, 0x500uLL))
        {
          goto LABEL_93;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v44] & 0x500) != 0)
      {
        goto LABEL_93;
      }

      if (v44 != 95 && v49 != 128)
      {
        goto LABEL_78;
      }

LABEL_93:
      if (v55 > 0x7F)
      {
        if (!__maskrune(v55, 0x500uLL))
        {
LABEL_97:
          if (v44 != 95)
          {
            goto LABEL_98;
          }
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v55] & 0x500) == 0)
      {
        goto LABEL_97;
      }

      if (v52 == 130 || v49 != 128 && (v49 > 0x7Fu ? (v60 = __maskrune(v49, 0x500uLL)) : (v60 = _DefaultRuneLocale.__runetype[v49] & 0x500), !v60 && v49 != 95))
      {
        v52 = 134;
LABEL_102:
        v48 = sub_10004FD6C(v129, v43, v11, v48, v52, v48);
        goto LABEL_103;
      }

LABEL_98:
      if ((v52 - 133) <= 1)
      {
        goto LABEL_102;
      }

LABEL_103:
      v47 = v128;
      v59 = v48 & (1 << v11);
      if (v16 == v54 || v59)
      {
        break;
      }

      v45 = v129;
      v48 = sub_10004FD6C(v129, v43, v11, v48, v49, v46);
      ++v16;
      v44 = v49;
      if (v16 != v132)
      {
        goto LABEL_48;
      }
    }

    *(&v132 + 1) = v128;
    if (!v59)
    {
      free(*(&v130 + 1));
      free(v133);
      return 1;
    }

    if (!v114 && !*(v120 + 120))
    {
      goto LABEL_147;
    }

    for (j = sub_10004ED54(&v129, v128, v54, v43, v11); !j; j = sub_10004ED54(&v129, *(&v132 + 1), v54, v43, v11))
    {
      ++*(&v132 + 1);
    }

    v62 = j;
    if (v114 == 1 && !*(v120 + 120))
    {
      goto LABEL_142;
    }

    v63 = *(&v130 + 1);
    if (!*(&v130 + 1))
    {
      v63 = malloc_type_malloc(16 * *(v129 + 112) + 16, 0x1000040451B5BE8uLL);
      *(&v130 + 1) = v63;
      if (!v63)
      {
        return 12;
      }
    }

    v64 = *(v129 + 112);
    if (v64)
    {
      if ((v64 + 1) > 2)
      {
        v65 = v64 + 1;
      }

      else
      {
        v65 = 2;
      }

      memset(v63 + 16, 255, 16 * v65 - 16);
    }

    if (*(v120 + 120) || (BYTE1(v130) & 4) != 0)
    {
      v67 = *(v120 + 128);
      v68 = v133;
      if (v67 >= 1 && !v133)
      {
        v68 = malloc_type_malloc(8 * v67 + 8, 0x10040436913F5uLL);
        *&v133 = v68;
        v67 = *(v120 + 128);
      }

      if (v67 >= 1 && !v68)
      {
        free(*(&v130 + 1));
        return 12;
      }

      v66 = sub_10004F780(&v129, *(&v132 + 1), v62, v43, v11, 0, 0);
    }

    else
    {
      v66 = sub_10004F160(&v129, *(&v132 + 1), v62, v43, v11);
    }

    if (!v66)
    {
      while (1)
      {
        v69 = *(&v132 + 1);
        if (v62 <= *(&v132 + 1))
        {
          break;
        }

        v62 = sub_10004ED54(&v129, *(&v132 + 1), v62 - 1, v43, v11);
        v69 = *(&v132 + 1);
        if (!v62)
        {
          break;
        }

        if (sub_10004F780(&v129, *(&v132 + 1), v62, v43, v11, 0, 0))
        {
          goto LABEL_141;
        }
      }

      v16 = v69 + 1;
      if (v69 != v54)
      {
        continue;
      }
    }

    break;
  }

LABEL_141:
  if (!v114)
  {
    goto LABEL_147;
  }

LABEL_142:
  v70 = &v62[-v131];
  *v118 = *(&v132 + 1) - v131;
  v118[1] = v70;
  if (v114 >= 2)
  {
    v71 = v129;
    v72 = (*(&v130 + 1) + 16);
    v73 = v118 + 2;
    for (k = 1; k != v114; ++k)
    {
      while (k > *(v71 + 112))
      {
        *v73 = -1;
        v73[1] = -1;
        v73 += 2;
        ++k;
        ++v72;
        if (v114 == k)
        {
          goto LABEL_147;
        }
      }

      v75 = *v72++;
      *v73 = v75;
      v73 += 2;
    }
  }

LABEL_147:
  if (*(&v130 + 1))
  {
    free(*(&v130 + 1));
  }

  result = v133;
  if (v133)
  {
    free(v133);
    return 0;
  }

  return result;
}

char *sub_10004ED54(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = *(*(*a1 + 8) + 8 * v6);
    v9 = v8 & 0xF8000000;
    if ((v8 & 0xF8000000) == 0x70000000 || v9 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v9 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v8)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v26 = a1[12];
      if (a2 == a1[4])
      {
        v13 = 128;
      }

      else
      {
        v13 = *(a2 - 1);
      }

      v14 = *a1;
      v15 = sub_10004FD6C(*a1, v6, a5, 1 << v6, 132, 1 << v6);
      v11 = 0;
      v27 = 1 << a5;
      v16 = a1;
      if (a2 == a1[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      v17 = *a2;
      if (v13 != 128)
      {
LABEL_20:
        if (v13 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_29;
        }

LABEL_22:
        v18 = 0;
        v19 = 0;
        v20 = 130;
        if (v17 == 128)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (v17 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_31;
        }

LABEL_25:
        v20 = v18;
        if (v19 >= 1)
        {
LABEL_32:
          v21 = v19 + 1;
          do
          {
            v15 = sub_10004FD6C(v14, v6, a5, v15, v20, v15);
            --v21;
          }

          while (v21 > 1);
        }

        goto LABEL_34;
      }

      while (1)
      {
        if (v16[1])
        {
          goto LABEL_22;
        }

LABEL_29:
        v19 = *(v14 + 76);
        v18 = 129;
        v20 = 131;
        if (v17 != 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if ((v16[1] & 2) != 0)
        {
          goto LABEL_25;
        }

LABEL_31:
        v19 += *(v14 + 80);
        if (v19 >= 1)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v20 == 129)
        {
          v16 = a1;
          if (v17 == 128)
          {
            v20 = 129;
            if (v13 == 128)
            {
              goto LABEL_65;
            }
          }

          else
          {
LABEL_45:
            if (v17 > 0x7Fu)
            {
              v24 = __maskrune(v17, 0x500uLL);
              if (v17 == 95 || v24 != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v17 == 95 || (_DefaultRuneLocale.__runetype[v17] & 0x500) != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }
          }

          v22 = v13;
          goto LABEL_60;
        }

        v16 = a1;
        if (v13 == 128)
        {
          goto LABEL_65;
        }

        v22 = v13;
        if (v13 > 0x7Fu)
        {
          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_60;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v13] & 0x500) != 0)
        {
          goto LABEL_60;
        }

        if (v13 != 95 && v17 != 128)
        {
          goto LABEL_45;
        }

LABEL_60:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_70;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v22] & 0x500) != 0)
        {
          goto LABEL_70;
        }

        if (v13 != 95)
        {
          goto LABEL_65;
        }

LABEL_70:
        if (v20 == 130)
        {
          goto LABEL_71;
        }

        if (v17 != 128)
        {
          if (v17 > 0x7Fu)
          {
            if (__maskrune(v17, 0x500uLL))
            {
              goto LABEL_65;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v17] & 0x500) != 0)
          {
            goto LABEL_65;
          }

          if (v17 != 95)
          {
LABEL_71:
            v20 = 134;
            goto LABEL_72;
          }
        }

LABEL_65:
        if ((v20 - 133) > 1)
        {
          if ((v15 & v27) != 0)
          {
            v11 = a2;
          }

          if (a2 == a3)
          {
            return v11;
          }

          goto LABEL_75;
        }

LABEL_72:
        v15 = sub_10004FD6C(*v16, v6, a5, v15, v20, v15);
        if ((v15 & v27) != 0)
        {
          v11 = a2;
        }

        if (a2 == a3)
        {
          return v11;
        }

LABEL_75:
        if (v15 == v26)
        {
          return v11;
        }

        v14 = *v16;
        v15 = sub_10004FD6C(*v16, v6, a5, v15, v17, v26);
        ++a2;
        v13 = v17;
        if (a2 != v16[5])
        {
          goto LABEL_19;
        }

LABEL_27:
        v17 = 128;
        if (v13 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sub_10004F160(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sub_10004ED54(a1, v5, a3, v11, v16 + 1); sub_10004ED54(a1, i, a3, v16 + 1, a5) != a3; i = sub_10004ED54(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sub_10004ED54(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sub_10004F160(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sub_10004ED54(a1, v5, v31, v11, v16 + 1);
            v32 = sub_10004ED54(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sub_10004ED54(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sub_10004F160(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sub_10004ED54(a1, v5, a3, v11, v16 + 1); sub_10004ED54(a1, i, a3, v16 + 1, a5) != a3; i = sub_10004ED54(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (sub_10004ED54(a1, v5, i, v11 + 1, v16))
        {
          sub_10004F160(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t sub_10004F780(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_5;
          }

          if (v18 == 14)
          {
            ++v14;
            v31 = *(v16 + 8 * v14);
            do
            {
              v14 += v31 & 0x7FFFFFF;
              v31 = *(v16 + 8 * v14);
            }

            while ((v31 & 0xF8000000) != 0x90000000);
            goto LABEL_5;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_5;
            case 0x11uLL:
              v34 = a1[4];
              if (a2 != v34 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v34)
                {
                  return 0;
                }

                v35 = *(a2 - 1);
                if (v35 < 0)
                {
                  v36 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v36 = _DefaultRuneLocale.__runetype[v35] & 0x500;
                }

                result = 0;
                if (v35 == 95 || v36)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v38 = *a2;
              if ((v38 & 0x8000000000000000) == 0)
              {
                goto LABEL_76;
              }

LABEL_82:
              v39 = __maskrune(v38, 0x500uLL);
              if (v38 == 95)
              {
                goto LABEL_5;
              }

LABEL_83:
              if (!v39)
              {
                return 0;
              }

              goto LABEL_5;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 == v21 && (a1[1] & 2) == 0)
              {
                goto LABEL_80;
              }

              if (a2 >= v21)
              {
                return 0;
              }

              v22 = *a2;
              if (v22 == 10)
              {
                if ((*(v15 + 40) & 8) != 0)
                {
LABEL_80:
                  if (a2 <= a1[4])
                  {
                    return 0;
                  }

                  v38 = *(a2 - 1);
                  if (v38 < 0)
                  {
                    goto LABEL_82;
                  }

LABEL_76:
                  v39 = _DefaultRuneLocale.__runetype[v38] & 0x500;
                  if (v38 == 95)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_83;
                }

LABEL_69:
                v37 = _DefaultRuneLocale.__runetype[v22] & 0x500;
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              else
              {
                if ((v22 & 0x80) == 0)
                {
                  goto LABEL_69;
                }

                v37 = __maskrune(*a2, 0x500uLL);
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              if (v37)
              {
                return result;
              }

              goto LABEL_80;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v33 = *a2++;
          if (v33 != v17)
          {
            return 0;
          }

          goto LABEL_5;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5] || *(a2 - 1) != 10)
            {
              return 0;
            }

LABEL_4:
            if ((*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_5:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v32 = a1[5];
            if (a2 != v32 || (a1[1] & 2) != 0)
            {
              if (a2 >= v32 || *a2 != 10)
              {
                return 0;
              }

              goto LABEL_4;
            }

            goto LABEL_5;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_5;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_5;
        }
      }

      v12 = v14 + 1;
      v23 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v23 == 4)
      {
        result = sub_10004F780(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v23 == 6)
          {
            v47 = 16 * (v17 & 0x7FFFFFF);
            v48 = a1[2];
            v49 = *(v48 + v47);
            *(v48 + v47) = &a2[-a1[3]];
            result = sub_10004F780(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v49;
            }
          }

          else if (v23 == 7)
          {
            v50 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v51 = *(v50 + 8);
            *(v50 + 8) = &a2[-a1[3]];
            result = sub_10004F780(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v51;
            }
          }

          else
          {
            result = 0;
            if (v23 == 8)
            {
              result = sub_10004F780(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v41 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v42 = *(*a1 + 8);
                  if ((*(v42 + 8 * v41) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v43 = *(v42 + 8 * (v41 + 1)) & 0x7FFFFFFLL;
                  v44 = v43 + v41 + 1;
                  v45 = v43 + v41;
                  if ((*(v42 + 8 * v44) & 0xF8000000) == 0x88000000)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = v44;
                  }

                  result = sub_10004F780(a1, a2, a3, v41 + 2, a5, a6, a7);
                  v41 = v46;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v23)
        {
          if (v23 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
            if (v12 < a5)
            {
              goto LABEL_3;
            }
          }

          else
          {
            result = 0;
            if (v23 != 3)
            {
              return result;
            }

            v40 = a1[7];
            if (a2 == *(v40 + 8 * a6))
            {
              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }

            else
            {
              *(v40 + 8 * a6) = a2;
              result = sub_10004F780(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }

              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }
          }

          break;
        }

        v25 = v17 & 0x7FFFFFF;
        v26 = (a1[2] + 16 * v25);
        v27 = v26[1];
        if (v27 == -1)
        {
          return 0;
        }

        v28 = *v26;
        v29 = v27 - v28;
        if (v27 == v28)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v29] || memcmp(a2, (a1[3] + v28), v29))
        {
          return 0;
        }

        do
        {
          v30 = *(v16 + 8 * v14++);
        }

        while (v30 != (v25 | 0x40000000));
        a2 += v29;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10004FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v8 = (*(a1 + 8) + 8 * a2);
      v9 = *v8;
      switch(((*v8 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v7 = a5 == v9;
          goto LABEL_4;
        case 2uLL:
          v7 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_4;
        case 3uLL:
          v7 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_4;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v11 = *(a1 + 24) + 32 * (*v8 & 0x7FFFFFF);
          if ((*(v11 + 8) & *(*v11 + a5)) == 0)
          {
            break;
          }

          v10 = v6 & a4;
LABEL_10:
          a6 |= 2 * v10;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v10 = v6 & a6;
          goto LABEL_10;
        case 9uLL:
          v12 = a6 | (2 * (v6 & a6));
          a6 = ((v12 & v6) >> v9) | v12;
          if (((v6 >> v9) & v12) == 0 && (a6 & (v6 >> v9)) != 0)
          {
            a2 += ~(*v8 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (v6 & a6))) & v6) << v9) | (2 * (v6 & a6));
          break;
        case 0xFuLL:
          if ((v6 & a6) != 0)
          {
            v14 = v8[1];
            if ((v14 & 0xF8000000) == 0x90000000)
            {
              LOBYTE(v15) = 1;
            }

            else
            {
              v15 = 1;
              do
              {
                v15 += v14 & 0x7FFFFFF;
                v14 = v8[v15];
              }

              while ((v14 & 0xF8000000) != 0x90000000);
            }

            a6 |= (v6 & a6) << v15;
          }

          break;
        case 0x10uLL:
          a6 |= 2 * (v6 & a6);
          if ((v8[*v8 & 0x7FFFFFF] & 0xF8000000) != 0x90000000)
          {
            a6 |= (a6 & v6) << v9;
          }

          break;
        case 0x12uLL:
          v7 = a5 == 133;
          goto LABEL_4;
        case 0x13uLL:
          v7 = a5 == 134;
LABEL_4:
          if (v7)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *sub_10004FF90(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v14 = a1[10];
      __dst = a1[12];
      __s2 = a1[13];
      if (a2 == a1[4])
      {
        v15 = 128;
      }

      else
      {
        v15 = *(a2 - 1);
      }

      bzero(v14, *(*a1 + 48));
      *(v14 + v6) = 1;
      sub_100050A04(*a1, v6, a5, v14, 132, v14);
      v12 = 0;
      if (a2 == a1[5])
      {
        goto LABEL_25;
      }

LABEL_19:
      v16 = *a2;
      if (v15 != 128)
      {
LABEL_20:
        if (v15 == 10 && (*(*a1 + 40) & 8) != 0)
        {
          v17 = *(*a1 + 76);
          v18 = 129;
          v19 = 131;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_29:
          v18 = 0;
          v17 = 0;
          v19 = 130;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if ((a1[1] & 2) != 0)
        {
          goto LABEL_32;
        }

        v20 = *a1;
LABEL_34:
        v17 += *(v20 + 80);
        if (v17 < 1)
        {
          goto LABEL_37;
        }

LABEL_35:
        v21 = v17 + 1;
        do
        {
          sub_100050A04(*a1, v6, a5, v14, v19, v14);
          --v21;
        }

        while (v21 > 1);
        goto LABEL_37;
      }

      while (1)
      {
        if (a1[1])
        {
          goto LABEL_29;
        }

        v17 = *(*a1 + 76);
        v18 = 129;
        v19 = 131;
        if (v16 == 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if (v16 == 10)
        {
          v20 = *a1;
          if ((*(*a1 + 40) & 8) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        v19 = v18;
        if (v17 >= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v19 == 129)
        {
          if (v16 == 128)
          {
            v19 = 129;
            if (v15 == 128)
            {
              goto LABEL_68;
            }
          }

          else
          {
LABEL_48:
            if (v16 > 0x7Fu)
            {
              v24 = __maskrune(v16, 0x500uLL);
              if (v16 == 95 || v24 != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
LABEL_68:
                v26 = __s2;
LABEL_69:
                if ((v19 - 133) > 1)
                {
                  goto LABEL_74;
                }

                goto LABEL_73;
              }
            }

            else
            {
              if (v16 == 95 || (_DefaultRuneLocale.__runetype[v16] & 0x500) != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
                goto LABEL_68;
              }
            }
          }

          v22 = v15;
          goto LABEL_63;
        }

        if (v15 == 128)
        {
          goto LABEL_68;
        }

        v22 = v15;
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_63;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v15] & 0x500) != 0)
        {
          goto LABEL_63;
        }

        if (v15 != 95 && v16 != 128)
        {
          goto LABEL_48;
        }

LABEL_63:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_71;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v22] & 0x500) != 0)
        {
          goto LABEL_71;
        }

        if (v15 != 95)
        {
          goto LABEL_68;
        }

LABEL_71:
        if (v19 == 130)
        {
          v19 = 134;
          v26 = __s2;
        }

        else
        {
          v26 = __s2;
          if (v16 == 128)
          {
            goto LABEL_69;
          }

          if (v16 > 0x7Fu)
          {
            if (__maskrune(v16, 0x500uLL))
            {
              goto LABEL_69;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v16] & 0x500) != 0)
          {
            goto LABEL_69;
          }

          if (v16 == 95)
          {
            goto LABEL_69;
          }

          v19 = 134;
        }

LABEL_73:
        sub_100050A04(*a1, v6, a5, v14, v19, v14);
LABEL_74:
        if (*(v14 + a5))
        {
          v12 = a2;
        }

        v27 = *(*a1 + 48);
        v28 = memcmp(v14, v26, v27);
        if (a2 == a3 || !v28)
        {
          return v12;
        }

        memmove(__dst, v14, v27);
        memmove(v14, v26, *(*a1 + 48));
        sub_100050A04(*a1, v6, a5, __dst, v16, v14);
        ++a2;
        v15 = v16;
        if (a2 != a1[5])
        {
          goto LABEL_19;
        }

LABEL_25:
        v16 = 128;
        if (v15 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sub_1000503E4(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sub_10004FF90(a1, v5, a3, v11, v16 + 1); sub_10004FF90(a1, i, a3, v16 + 1, a5) != a3; i = sub_10004FF90(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sub_10004FF90(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sub_1000503E4(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sub_10004FF90(a1, v5, v31, v11, v16 + 1);
            v32 = sub_10004FF90(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sub_10004FF90(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sub_1000503E4(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sub_10004FF90(a1, v5, a3, v11, v16 + 1); sub_10004FF90(a1, i, a3, v16 + 1, a5) != a3; i = sub_10004FF90(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (sub_10004FF90(a1, v5, i, v11 + 1, v16))
        {
          sub_1000503E4(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t sub_100050A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_3;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_3;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_3;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_3;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_3;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_8;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_8:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_3;
        case 0x13uLL:
          if (a5 != 134)
          {
            break;
          }

LABEL_3:
          *(a6 + 1 + a2) |= *(a4 + a2);
          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

void llvm_regfree(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

unsigned __int8 *llvm_strlcpy(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (v4)
    {
      v5 = *v3++;
      *a1++ = v5;
      --v4;
      if (!v5)
      {
        return &v3[~a2];
      }
    }

    *a1 = 0;
  }

    ;
  }

  return &v3[~a2];
}

uint64_t llvm::xxh3_64bits(int8x16_t *a1, unint64_t a2)
{
  if (a2 > 0x10)
  {
    if (a2 <= 0x80)
    {
      v3 = ((((a1->i64[1] ^ 0x1CAD21F72C81017CuLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((a1->i64[1] ^ 0x1CAD21F72C81017CLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2;
      v4 = &a1->i8[a2];
      v5 = (((*(&a1->i64[-1] + a2) ^ 0x1F67B3B7A4A44072uLL) * (*(a1[-1].i64 + a2) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(&a1->i64[-1] + a2) ^ 0x1F67B3B7A4A44072) * (*(a1[-1].i64 + a2) ^ 0xDB979083E96DD4DELL));
      if (a2 >= 0x21)
      {
        v3 += (((a1[1].i64[1] ^ 0x2172FFCC7DD05A82uLL) * (a1[1].i64[0] ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((a1[1].i64[1] ^ 0x2172FFCC7DD05A82) * (a1[1].i64[0] ^ 0x78E5C0CC4EE679CBLL));
        v5 += (((*(v4 - 3) ^ 0x4C263A81E69035E0uLL) * (*(v4 - 4) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(v4 - 3) ^ 0x4C263A81E69035E0) * (*(v4 - 4) ^ 0x8E2443F7744608B8));
        if (a2 >= 0x41)
        {
          v3 += (((a1[2].i64[1] ^ 0xA32E531B8B65D088) * (a1[2].i64[0] ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((a1[2].i64[1] ^ 0xA32E531B8B65D088) * (a1[2].i64[0] ^ 0xCB00C391BB52283CLL));
          v5 += (((*(v4 - 5) ^ 0xD8ACDEA946EF1938) * (*(v4 - 6) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(v4 - 5) ^ 0xD8ACDEA946EF1938) * (*(v4 - 6) ^ 0x4EF90DA297486471));
          if (a2 >= 0x61)
          {
            v3 += (((a1[3].i64[1] ^ 0x1D4F0BC7C7BBDCF9uLL) * (a1[3].i64[0] ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((a1[3].i64[1] ^ 0x1D4F0BC7C7BBDCF9) * (a1[3].i64[0] ^ 0x3F349CE33F76FAA8));
            v5 += (((*(v4 - 7) ^ 0x647378D9C97E9FC8uLL) * (*(v4 - 8) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(v4 - 7) ^ 0x647378D9C97E9FC8) * (*(v4 - 8) ^ 0x3159B4CD4BE0518ALL));
          }
        }
      }

      v2 = v5 + v3;
      return (0x165667919E3779F9 * (v2 ^ (v2 >> 37))) ^ ((0x165667919E3779F9 * (v2 ^ (v2 >> 37))) >> 32);
    }

    if (a2 > 0xF0)
    {
      return sub_100051320(a1, a2);
    }

    else
    {
      return sub_10005106C(a1, a2);
    }
  }

  else
  {
    if (a2 >= 9)
    {
      v2 = bswap64(a1->i64[0] ^ 0x6782737BEA4239B9) + a2 + (*(&a1->i64[-1] + a2) ^ 0xAF56BC3B0996523ALL) + ((((*(&a1->i64[-1] + a2) ^ 0xAF56BC3B0996523ALL) * (a1->i64[0] ^ 0x6782737BEA4239B9uLL)) >> 64) ^ ((*(&a1->i64[-1] + a2) ^ 0xAF56BC3B0996523ALL) * (a1->i64[0] ^ 0x6782737BEA4239B9)));
      return (0x165667919E3779F9 * (v2 ^ (v2 >> 37))) ^ ((0x165667919E3779F9 * (v2 ^ (v2 >> 37))) >> 32);
    }

    if (a2 < 4)
    {
      if (a2)
      {
        return sub_100051654(a1, a2);
      }

      else
      {
        return 0x2D06800538D394C2;
      }
    }

    else
    {
      v7 = (*(&a1->u32[-1] + a2) | (a1->u32[0] << 32)) ^ 0xC73AB174C5ECD5A2;
      v8 = 0x9FB21C651E98DF25 * (__ROR8__(v7, 15) ^ __ROR8__(v7, 40) ^ v7);
      return (0x9FB21C651E98DF25 * ((a2 + (v8 >> 35)) ^ v8)) ^ ((0x9FB21C651E98DF25 * ((a2 + (v8 >> 35)) ^ v8)) >> 28);
    }
  }
}

unint64_t sub_10005106C(int8x16_t *a1, unint64_t a2)
{
  v2 = a1[6].i64[0] ^ 0x3F349CE33F76FAA8;
  v3 = a1[6].i64[1] ^ 0x1D4F0BC7C7BBDCF9;
  v4 = ((((a1->i64[1] ^ 0x1CAD21F72C81017CuLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((a1->i64[1] ^ 0x1CAD21F72C81017CLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2 + ((((a1[1].i64[1] ^ 0x1F67B3B7A4A44072uLL) * (a1[1].i64[0] ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((a1[1].i64[1] ^ 0x1F67B3B7A4A44072) * (a1[1].i64[0] ^ 0xDB979083E96DD4DELL))) + ((((a1[2].i64[1] ^ 0x2172FFCC7DD05A82uLL) * (a1[2].i64[0] ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((a1[2].i64[1] ^ 0x2172FFCC7DD05A82) * (a1[2].i64[0] ^ 0x78E5C0CC4EE679CBLL))) + ((((a1[3].i64[1] ^ 0x4C263A81E69035E0uLL) * (a1[3].i64[0] ^ 0x8E2443F7744608B8)) >> 64) ^ ((a1[3].i64[1] ^ 0x4C263A81E69035E0) * (a1[3].i64[0] ^ 0x8E2443F7744608B8))) + ((((a1[4].i64[1] ^ 0xA32E531B8B65D088) * (a1[4].i64[0] ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((a1[4].i64[1] ^ 0xA32E531B8B65D088) * (a1[4].i64[0] ^ 0xCB00C391BB52283CLL))) + ((((a1[5].i64[1] ^ 0xD8ACDEA946EF1938) * (a1[5].i64[0] ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((a1[5].i64[1] ^ 0xD8ACDEA946EF1938) * (a1[5].i64[0] ^ 0x4EF90DA297486471))) + (((v3 * v2) >> 64) ^ (v3 * v2));
  v5 = (((a1[7].i64[1] ^ 0x647378D9C97E9FC8uLL) * (a1[7].i64[0] ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((a1[7].i64[1] ^ 0x647378D9C97E9FC8) * (a1[7].i64[0] ^ 0x3159B4CD4BE0518ALL));
  v6 = 0x165667919E3779F9 * ((v4 + v5) ^ ((v4 + v5) >> 37));
  v7 = v6 ^ HIDWORD(v6);
  if (a2 >= 0x90)
  {
    if ((a2 >> 4) <= 9)
    {
      v8 = 9;
    }

    else
    {
      v8 = (a2 >> 4);
    }

    v9 = a1 + 8;
    v10 = v8 - 8;
    v11 = &unk_1002B0530;
    do
    {
      v12 = *v9++;
      v13 = veorq_s8(v12, *(v11 - 125));
      v7 += ((v13.u64[1] * v13.u64[0]) >> 64) ^ (v13.i64[1] * v13.i64[0]);
      v11 += 16;
      --v10;
    }

    while (v10);
  }

  v14 = (((*(&a1->i64[-1] + a2) ^ 0xEBD33483ACC5EA64) * (*(a1[-1].i64 + a2) ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((*(&a1->i64[-1] + a2) ^ 0xEBD33483ACC5EA64) * (*(a1[-1].i64 + a2) ^ 0x7378D9C97E9FC831));
  v15 = 0x165667919E3779F9 * ((v7 + v14) ^ ((v7 + v14) >> 37));
  return v15 ^ HIDWORD(v15);
}

unint64_t sub_100051320(int8x16_t *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) >= 0x400)
  {
    v7 = 0;
    v3 = xmmword_1002B03A0;
    v4 = xmmword_1002B03B0;
    v5 = xmmword_1002B03C0;
    v6 = xmmword_1002B03D0;
    v8 = a1 + 2;
    v9 = vdup_n_s32(0x9E3779B1);
    do
    {
      v10 = v8;
      v11 = &xmmword_1002B04D0;
      v12 = 16;
      do
      {
        v13 = v10[-2];
        v14 = v10[-1];
        v15 = vextq_s8(v13, v13, 8uLL);
        v16 = vextq_s8(v14, v14, 8uLL);
        v17 = veorq_s8(v11[-2], v13);
        v18 = veorq_s8(v11[-1], v14);
        v19 = vuzp1q_s32(v17, v18);
        v20 = vuzp2q_s32(v17, v18);
        v3 = vaddq_s64(vmlal_u32(v15, *v19.i8, *v20.i8), v3);
        v4 = vaddq_s64(vmlal_high_u32(v16, v19, v20), v4);
        v21 = *v10;
        v22 = v10[1];
        v10 += 4;
        v23 = vextq_s8(v21, v21, 8uLL);
        v24 = vextq_s8(v22, v22, 8uLL);
        v25 = veorq_s8(*v11, v21);
        v26 = veorq_s8(v11[1], v22);
        v27 = vuzp1q_s32(v25, v26);
        v28 = vuzp2q_s32(v25, v26);
        v5 = vaddq_s64(vmlal_u32(v23, *v27.i8, *v28.i8), v5);
        v6 = vaddq_s64(vmlal_high_u32(v24, v27, v28), v6);
        v11 = (v11 + 8);
        --v12;
      }

      while (v12);
      v29 = veorq_s8(vshrq_n_u64(v3, 0x2FuLL), veorq_s8(v3, xmmword_1002B03E0));
      v3 = vmlal_u32(vmulq_s32(v29, xmmword_1002B03F0), vmovn_s64(v29), v9);
      v30 = veorq_s8(vshrq_n_u64(v4, 0x2FuLL), veorq_s8(v4, xmmword_1002B0400));
      v4 = vmlal_u32(vmulq_s32(v30, xmmword_1002B03F0), vmovn_s64(v30), v9);
      v31 = veorq_s8(vshrq_n_u64(v5, 0x2FuLL), veorq_s8(v5, xmmword_1002B0410));
      v5 = vmlal_u32(vmulq_s32(v31, xmmword_1002B03F0), vmovn_s64(v31), v9);
      v32 = veorq_s8(vshrq_n_u64(v6, 0x2FuLL), veorq_s8(v6, xmmword_1002B0420));
      v6 = vmlal_u32(vmulq_s32(v32, xmmword_1002B03F0), vmovn_s64(v32), v9);
      ++v7;
      v8 += 64;
    }

    while (v7 != v2 >> 10);
  }

  else
  {
    v3 = xmmword_1002B03A0;
    v4 = xmmword_1002B03B0;
    v5 = xmmword_1002B03C0;
    v6 = xmmword_1002B03D0;
  }

  v33 = (v2 >> 6) & 0xF;
  if (v33)
  {
    v34 = (a1 + (v2 & 0xFFFFFFFFFFFFFC00) + 32);
    v35 = &xmmword_1002B04D0;
    do
    {
      v36 = v34[-2];
      v37 = v34[-1];
      v38 = vextq_s8(v36, v36, 8uLL);
      v39 = vextq_s8(v37, v37, 8uLL);
      v40 = veorq_s8(v35[-2], v36);
      v41 = veorq_s8(v35[-1], v37);
      v42 = vuzp1q_s32(v40, v41);
      v43 = vuzp2q_s32(v40, v41);
      v3 = vaddq_s64(vmlal_u32(v38, *v42.i8, *v43.i8), v3);
      v4 = vaddq_s64(vmlal_high_u32(v39, v42, v43), v4);
      v44 = *v34;
      v45 = v34[1];
      v34 += 4;
      v46 = vextq_s8(v44, v44, 8uLL);
      v47 = vextq_s8(v45, v45, 8uLL);
      v48 = veorq_s8(*v35, v44);
      v49 = veorq_s8(v35[1], v45);
      v50 = vuzp1q_s32(v48, v49);
      v51 = vuzp2q_s32(v48, v49);
      v5 = vaddq_s64(vmlal_u32(v46, *v50.i8, *v51.i8), v5);
      v6 = vaddq_s64(vmlal_high_u32(v47, v50, v51), v6);
      v35 = (v35 + 8);
      --v33;
    }

    while (v33);
  }

  v52 = *(&a1[-4] + a2);
  v53 = *(&a1[-3] + a2);
  v54 = vextq_s8(v52, v52, 8uLL);
  v55 = vextq_s8(v53, v53, 8uLL);
  v56 = veorq_s8(v52, xmmword_1002B0430);
  v57 = veorq_s8(v53, xmmword_1002B0440);
  v58 = vuzp1q_s32(v56, v57);
  v59 = vuzp2q_s32(v56, v57);
  v60 = vaddq_s64(vmlal_u32(v54, *v58.i8, *v59.i8), v3);
  v61 = vaddq_s64(vmlal_high_u32(v55, v58, v59), v4);
  v62 = *(&a1[-2] + a2);
  v63 = *(&a1[-1] + a2);
  v64 = vextq_s8(v62, v62, 8uLL);
  v65 = vextq_s8(v63, v63, 8uLL);
  v66 = veorq_s8(v62, xmmword_1002B0450);
  v67 = veorq_s8(v63, xmmword_1002B0460);
  v68 = vuzp1q_s32(v66, v67);
  v69 = vuzp2q_s32(v66, v67);
  v70 = veorq_s8(v60, xmmword_1002B0470);
  v71 = (((v70.u64[1] * v70.u64[0]) >> 64) ^ (v70.i64[1] * v70.i64[0])) - 0x61C8864E7A143579 * a2;
  v72 = veorq_s8(v61, xmmword_1002B0480);
  v73 = veorq_s8(vaddq_s64(vmlal_u32(v64, *v68.i8, *v69.i8), v5), xmmword_1002B0490);
  v74 = ((v73.u64[1] * v73.u64[0]) >> 64) ^ (v73.i64[1] * v73.i64[0]);
  v75 = veorq_s8(vaddq_s64(vmlal_high_u32(v65, v68, v69), v6), xmmword_1002B04A0);
  v76 = (((v72.u64[1] * v72.u64[0]) >> 64) ^ (v72.i64[1] * v72.i64[0])) + v74;
  v77 = ((v75.u64[1] * v75.u64[0]) >> 64) ^ (v75.i64[1] * v75.i64[0]);
  v78 = (v71 + v76 + v77) ^ ((v71 + v76 + v77) >> 37);
  return (0x165667919E3779F9 * v78) ^ ((0x165667919E3779F9 * v78) >> 32);
}

std::string *llvm::sys::StrError@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (this)
  {
    __strerrbuf[0] = 0;
    strerror_r(this, __strerrbuf, 0x7CFuLL);
    return std::string::assign(a2, __strerrbuf);
  }

  return this;
}

unsigned __int8 *llvm::sys::path::begin@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  v29 = result;
  v30 = a2;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_49;
  }

  if (a3 >= 2)
  {
    v4 = *result;
    if (a2 == 1)
    {
      goto LABEL_35;
    }

    if ((v4 & 0x80) != 0)
    {
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = a4;
      v10 = __maskrune(*result, 0x100uLL);
      a2 = v7;
      a4 = v9;
      a3 = v8;
      v11 = v10;
      result = v6;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v4] & 0x100) == 0)
    {
      goto LABEL_11;
    }

    if (result[1] == 58)
    {
      v5 = 2;
      goto LABEL_49;
    }
  }

LABEL_11:
  LODWORD(v4) = *result;
  if (a2 >= 3)
  {
    v12 = a3 > 1 && v4 == 92;
    v13 = v12;
    v14 = v4 != 47 && !v13;
    if (!v14 && v4 == result[1])
    {
      v15 = result[2];
      v16 = a3 > 1 && v15 == 92;
      v17 = v16;
      if (v15 != 47 && !v17)
      {
        v18 = 1;
        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v18 = 2;
          v19 = "\\/";
        }

        v20 = a3;
        v21 = v18;
        v22 = 2;
LABEL_47:
        v26 = a4;
        first_of = llvm::StringRef::find_first_of(&v29, v19, v21, v22);
        a4 = v26;
        a3 = v20;
        v28 = first_of;
        result = v29;
        v5 = v30;
        if (v30 >= v28)
        {
          v5 = v28;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_35:
  v24 = a3 > 1 && v4 == 92;
  v5 = 1;
  if (v4 != 47 && !v24)
  {
    v25 = 1;
    if (a3 <= 1)
    {
      v19 = "/";
    }

    else
    {
      v25 = 2;
      v19 = "\\/";
    }

    v20 = a3;
    v21 = v25;
    v22 = 0;
    goto LABEL_47;
  }

LABEL_49:
  *(a4 + 16) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

void *llvm::sys::path::const_iterator::operator++(void *result)
{
  v1 = result[3];
  v2 = result[4] + v1;
  result[4] = v2;
  v3 = result[1];
  if (v2 == v3)
  {
    result[2] = 0;
    result[3] = 0;
    return result;
  }

  if (v1 <= 2)
  {
    v10 = 0;
    v6 = *(result + 10);
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = result[2];
    v5 = *v4;
    v6 = *(result + 10);
    if (v5 == 47 || (v5 == 92 ? (v7 = v6 >= 2) : (v7 = 0), v7))
    {
      if (v4[1] == v5)
      {
        v8 = v4[2];
        v10 = v6 < 2 || v8 != 92;
        if (v8 == 47)
        {
          v10 = 0;
        }

        v11 = *result;
        v12 = *(*result + v2);
        if (v12 == 47)
        {
          goto LABEL_43;
        }

LABEL_24:
        if (v12 != 92 || v6 < 2)
        {
          goto LABEL_28;
        }

        goto LABEL_43;
      }
    }

    v10 = 0;
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

LABEL_43:
  if (v10 || v1 && v6 >= 2 && *(result[2] + v1 - 1) == 58)
  {
    v20 = v3 > v2;
    if (v3 < v2)
    {
      v2 = result[1];
    }

    v21 = v11 + v2;
    v22 = v20;
    result[2] = v21;
    result[3] = v22;
    return result;
  }

  while (1)
  {
    v23 = *(v11 + v2);
    v24 = v6 > 1 && v23 == 92;
    v25 = v24;
    if (v23 != 47 && !v25)
    {
      break;
    }

    result[4] = ++v2;
    if (v3 == v2)
    {
      if (v1 != 1 || *result[2] != 47)
      {
        result[4] = v3 - 1;
        result[2] = ".";
        result[3] = 1;
        return result;
      }

      goto LABEL_29;
    }
  }

LABEL_28:
  v3 = v2;
LABEL_29:
  if (v6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v6 <= 1)
  {
    v15 = "/";
  }

  else
  {
    v15 = "\\/";
  }

  v16 = result;
  first_of = llvm::StringRef::find_first_of(result, v15, v14, v3);
  result = v16;
  v18 = v16[1];
  if (v18 >= v16[4])
  {
    v19 = v16[4];
  }

  else
  {
    v19 = v16[1];
  }

  if (v19 > first_of)
  {
    first_of = v16[4];
  }

  if (first_of >= v18)
  {
    first_of = v16[1];
  }

  v16[2] = *v16 + v19;
  v16[3] = first_of - v19;
  return result;
}

uint64_t llvm::sys::path::root_directory(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v21);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  if (v21 == a1 && v23 == a2)
  {
    return 0;
  }

  if (*(&v22 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v22;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v22 + 1) == v7;
    }
  }

  v9 = 0;
  if (*(&v22 + 1) && a3 >= 2)
  {
    v9 = *(v22 + *(&v22 + 1) - 1) == 58;
  }

  if (!v8 && !v9 || (llvm::sys::path::const_iterator::operator++(&v18), v18 == a1) && v20 == a2 || ((result = v19, v11 = *v19, a3 > 1) ? (v12 = v11 == 92) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v11 != 47 ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (!v8)
    {
      v15 = *v22;
      if (a3 > 1 && v15 == 92 || v15 == 47)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

void llvm::sys::path::append(void *a1, const llvm::Twine *a2, void **a3, void **a4, const char **a5, void **a6)
{
  v77 = v79;
  v78 = xmmword_1002B0260;
  v74 = v76;
  v75 = xmmword_1002B0260;
  v71 = v73;
  v72 = xmmword_1002B0260;
  v68 = v70;
  v69 = xmmword_1002B0260;
  v65 = v67;
  v66 = 0x400000000;
  v10 = *(a3 + 32);
  if (v10 < 2)
  {
    v11 = 0;
    v12 = *(a4 + 32);
    if (v12 < 2)
    {
      goto LABEL_3;
    }

LABEL_67:
    if (*(a4 + 33) == 1)
    {
      if (v12 - 5 < 2)
      {
        v45 = *a4;
        v46 = a4[1];
        if (v11 < HIDWORD(v66))
        {
          goto LABEL_75;
        }

        goto LABEL_106;
      }

      if (v12 == 4)
      {
        v57 = *(*a4 + 23);
        if (v57 >= 0)
        {
          v45 = *a4;
        }

        else
        {
          v45 = **a4;
        }

        if (v57 >= 0)
        {
          v46 = *(*a4 + 23);
        }

        else
        {
          v46 = (*a4)[1];
        }

        if (v11 >= HIDWORD(v66))
        {
          goto LABEL_106;
        }

        goto LABEL_75;
      }

      if (v12 == 3)
      {
        v45 = *a4;
        if (*a4)
        {
          v46 = strlen(*a4);
          if (v11 < HIDWORD(v66))
          {
            goto LABEL_75;
          }

          goto LABEL_106;
        }

        v46 = 0;
        if (v11 >= HIDWORD(v66))
        {
LABEL_106:
          v54 = v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
          v46 = v54;
          v11 = v66;
        }

LABEL_75:
        v47 = v65 + 16 * v11;
        *v47 = v45;
        v47[1] = v46;
        v11 = v66 + 1;
        LODWORD(v66) = v66 + 1;
        v13 = *(a5 + 32);
        if (v13 < 2)
        {
LABEL_4:
          v14 = *(a6 + 32);
          if (v14 < 2)
          {
            goto LABEL_5;
          }

LABEL_85:
          if (*(a6 + 33) == 1)
          {
            if (v14 - 5 < 2)
            {
              v51 = *a6;
              v52 = a6[1];
              if (v11 < HIDWORD(v66))
              {
                goto LABEL_93;
              }

              goto LABEL_110;
            }

            if (v14 == 4)
            {
              v59 = *(*a6 + 23);
              if (v59 >= 0)
              {
                v51 = *a6;
              }

              else
              {
                v51 = **a6;
              }

              if (v59 >= 0)
              {
                v52 = *(*a6 + 23);
              }

              else
              {
                v52 = (*a6)[1];
              }

              if (v11 >= HIDWORD(v66))
              {
                goto LABEL_110;
              }

              goto LABEL_93;
            }

            if (v14 == 3)
            {
              v51 = *a6;
              if (*a6)
              {
                v52 = strlen(*a6);
                if (v11 < HIDWORD(v66))
                {
                  goto LABEL_93;
                }

                goto LABEL_110;
              }

              v52 = 0;
              if (v11 >= HIDWORD(v66))
              {
LABEL_110:
                v56 = v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
                v52 = v56;
                v11 = v66;
              }

LABEL_93:
              v53 = v65 + 16 * v11;
              *v53 = v51;
              v53[1] = v52;
              v11 = v66 + 1;
              LODWORD(v66) = v11;
              v15 = v65;
              if (v11)
              {
                goto LABEL_6;
              }

LABEL_94:
              if (v15 == v67)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }
          }

          llvm::Twine::toVector(a6, &v68);
          v51 = v68;
          v52 = v69;
          v11 = v66;
          if (v66 < HIDWORD(v66))
          {
            goto LABEL_93;
          }

          goto LABEL_110;
        }

        goto LABEL_76;
      }
    }

    llvm::Twine::toVector(a4, &v74);
    v45 = v74;
    v46 = v75;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_75;
    }

    goto LABEL_106;
  }

  if (*(a3 + 33) != 1)
  {
    goto LABEL_56;
  }

  if (v10 - 5 < 2)
  {
    v42 = 0;
    v38 = *a3;
    v40 = a3[1];
    goto LABEL_66;
  }

  if (v10 != 4)
  {
    if (v10 == 3)
    {
      v38 = *a3;
      if (*a3)
      {
        v39 = a4;
        v40 = strlen(*a3);
        a4 = v39;
      }

      else
      {
        v40 = 0;
      }

      v42 = 0;
      goto LABEL_66;
    }

LABEL_56:
    v41 = a4;
    llvm::Twine::toVector(a3, &v77);
    v38 = v77;
    v40 = v78;
    v42 = v66;
    a4 = v41;
    goto LABEL_66;
  }

  v42 = 0;
  v43 = *(*a3 + 23);
  if (v43 >= 0)
  {
    v38 = *a3;
  }

  else
  {
    v38 = **a3;
  }

  if (v43 >= 0)
  {
    v40 = *(*a3 + 23);
  }

  else
  {
    v40 = (*a3)[1];
  }

LABEL_66:
  v44 = (v65 + 16 * v42);
  *v44 = v38;
  v44[1] = v40;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v12 = *(a4 + 32);
  if (v12 >= 2)
  {
    goto LABEL_67;
  }

LABEL_3:
  v13 = *(a5 + 32);
  if (v13 < 2)
  {
    goto LABEL_4;
  }

LABEL_76:
  if (*(a5 + 33) != 1)
  {
    goto LABEL_83;
  }

  if (v13 - 5 < 2)
  {
    v48 = *a5;
    v49 = a5[1];
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  if (v13 == 4)
  {
    v58 = (*a5)[23];
    if (v58 >= 0)
    {
      v48 = *a5;
    }

    else
    {
      v48 = **a5;
    }

    if (v58 >= 0)
    {
      v49 = (*a5)[23];
    }

    else
    {
      v49 = *(*a5 + 1);
    }

    if (v11 >= HIDWORD(v66))
    {
      goto LABEL_108;
    }

    goto LABEL_84;
  }

  if (v13 != 3)
  {
LABEL_83:
    llvm::Twine::toVector(a5, &v71);
    v48 = v71;
    v49 = v72;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v48 = *a5;
  if (*a5)
  {
    v49 = strlen(*a5);
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v49 = 0;
  if (v11 >= HIDWORD(v66))
  {
LABEL_108:
    v55 = v49;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
    v49 = v55;
    v11 = v66;
  }

LABEL_84:
  v50 = v65 + 16 * v11;
  *v50 = v48;
  v50[1] = v49;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v14 = *(a6 + 32);
  if (v14 >= 2)
  {
    goto LABEL_85;
  }

LABEL_5:
  v15 = v65;
  if (!v11)
  {
    goto LABEL_94;
  }

LABEL_6:
  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = "/";
  if (a2 > 1)
  {
    v17 = "\\/";
  }

  v61 = v17;
  v62 = v16;
  if (a2 == 3)
  {
    v18 = 92;
  }

  else
  {
    v18 = 47;
  }

  v60 = v18;
  v19 = a1[1];
  v20 = 16 * v11;
  do
  {
    if (!v19 || ((v21 = *(*a1 + v19 - 1), a2 > 1) ? (v22 = v21 == 92) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), v21 != 47 ? (v24 = v23 == 0) : (v24 = 0), v24))
    {
      v34 = v15[1];
      if (!v34 || (v35 = **v15, v35 != 47) && (a2 < 2 || v35 != 92))
      {
        if (v19)
        {
          v64 = 261;
          v63[0] = *v15;
          v63[1] = v34;
          has_root_name = llvm::sys::path::has_root_name(v63, a2);
          v19 = a1[1];
          if ((has_root_name & 1) == 0)
          {
            if ((v19 + 1) > a1[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + 1, 1);
              v19 = a1[1];
            }

            *(*a1 + v19) = v60;
            v19 = a1[1] + 1;
            a1[1] = v19;
          }
        }
      }

      v37 = *v15;
      v30 = v15[1];
      if (a1[2] < v19 + v30)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + v30, 1);
        v19 = a1[1];
      }

      if (v30)
      {
        v32 = (*a1 + v19);
        v33 = v37;
        goto LABEL_15;
      }
    }

    else
    {
      first_not_of = llvm::StringRef::find_first_not_of(v15, v61, v62, 0);
      v26 = first_not_of;
      v28 = *v15;
      v27 = v15[1];
      if (v27 >= first_not_of)
      {
        v29 = first_not_of;
      }

      else
      {
        v29 = v15[1];
      }

      v30 = v27 - v29;
      v19 = a1[1];
      v31 = v19 + v27 - v29;
      if (a1[2] < v31)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v31, 1);
        v19 = a1[1];
      }

      if (v27 > v26)
      {
        v32 = (*a1 + v19);
        v33 = &v29[v28];
LABEL_15:
        memcpy(v32, v33, v30);
        v19 = a1[1];
      }
    }

    v19 += v30;
    a1[1] = v19;
    v15 += 2;
    v20 -= 16;
  }

  while (v20);
  v15 = v65;
  if (v65 != v67)
  {
LABEL_95:
    free(v15);
  }

LABEL_96:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  if (v74 != v76)
  {
    free(v74);
  }

  if (v77 != v79)
  {
    free(v77);
  }
}

uint64_t llvm::sys::path::has_root_name(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v18 = v20;
  v19 = xmmword_1002B0230;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v18);
    v5 = v18;
    v6 = v19;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = (*this)[1];
  }

LABEL_15:
  llvm::sys::path::begin(v5, v6, v2, &v14);
  if (v14 == v5 && v17 == v6)
  {
    v10 = 0;
    v11 = v18;
    if (v18 == v20)
    {
      return v10;
    }

    goto LABEL_31;
  }

  if (v16 < 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = *v15;
    if (v8 == 47 || (v9 = 0, v2 >= 2) && v8 == 92)
    {
      v9 = v15[1] == v8;
    }
  }

  v12 = 0;
  if (v2 >= 2 && v16)
  {
    v12 = v15[v16 - 1] == 58;
  }

  v10 = (v16 != 0) & (v9 | v12);
  v11 = v18;
  if (v18 != v20)
  {
LABEL_31:
    free(v11);
  }

  return v10;
}

unsigned __int8 *llvm::sys::path::parent_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  if (sub_10005260C(a1, a2, a3) == -1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_10005260C(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v43 = a1;
  v44 = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = -1;
  }

  v8 = a3 > 1;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    v10 = "/";
  }

  else
  {
    v10 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(&v43, v10, v9, v6);
  if (a3 >= 2 && last_of == -1)
  {
    v12 = v44 - 1;
    if (v44 < v44 - 1)
    {
      v12 = v44;
    }

    while (v12)
    {
      last_of = v12 - 1;
      v13 = v43[--v12];
      if (v13 == 58)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_32;
  }

LABEL_19:
  if (last_of == -1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

  if (last_of == 1)
  {
    v6 = 0;
    v14 = *v43;
    v15 = a3 > 1 && v14 == 92;
    v16 = v15;
    if (v14 == 47 || v16)
    {
LABEL_32:
      if (a2)
      {
        goto LABEL_33;
      }

LABEL_96:
      v19 = 0;
      goto LABEL_97;
    }
  }

  v6 = last_of + 1;
  if (!a2)
  {
    goto LABEL_96;
  }

LABEL_33:
  v7 = a1[v6];
LABEL_34:
  v18 = a3 > 1 && v7 == 92;
  v19 = v7 == 47 || v18;
  v43 = a1;
  v44 = a2;
  v8 = a3 > 1;
  if (a3 > 1)
  {
    if (a2 < 3)
    {
LABEL_74:
      v23 = *a1;
      goto LABEL_75;
    }

    if (a1[1] == 58)
    {
      v20 = a1[2];
      v21 = 1;
      first_of = 2;
      if (v20 == 47 || v20 == 92)
      {
        goto LABEL_84;
      }
    }
  }

  if (a2 < 4)
  {
    goto LABEL_74;
  }

  v23 = *a1;
  v25 = a3 > 1 && v23 == 92;
  if ((v23 == 47 || v25) && v23 == a1[1])
  {
    v26 = a1[2];
    v27 = a3 > 1 && v26 == 92;
    v28 = v27;
    if (v26 != 47 && !v28)
    {
      if (a3 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (a3 <= 1)
      {
        v30 = "/";
      }

      else
      {
        v30 = "\\/";
      }

      v31 = v6;
      first_of = llvm::StringRef::find_first_of(&v43, v30, v29, 2uLL);
      v6 = v31;
      if (first_of == -1)
      {
        goto LABEL_97;
      }

LABEL_85:
      if (v6 >= first_of)
      {
        v34 = first_of;
      }

      else
      {
        v34 = v6;
      }

      while (v6 > first_of)
      {
        v35 = v6 - 1;
        v36 = a1[v6 - 1];
        v37 = v36 == 92 && v8;
        --v6;
        if (v36 != 47)
        {
          v6 = v35;
          if (!v37)
          {
            v34 = v35 + 1;
            goto LABEL_106;
          }
        }
      }

      goto LABEL_106;
    }
  }

LABEL_75:
  first_of = 0;
  v33 = a3 > 1 && v23 == 92;
  if (v23 == 47 || v33)
  {
    v21 = a3 > 1;
LABEL_84:
    v8 = v21;
    goto LABEL_85;
  }

LABEL_97:
  while (v6)
  {
    v38 = v6 - 1;
    v39 = a1[v6 - 1];
    v40 = v39 == 92 && v8;
    --v6;
    if (v39 != 47)
    {
      v6 = v38;
      if (!v40)
      {
        v34 = v38 + 1;
        goto LABEL_105;
      }
    }
  }

  v34 = 0;
LABEL_105:
  first_of = -1;
LABEL_106:
  if (v34 == first_of)
  {
    v41 = v19;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    return v34;
  }

  else
  {
    return first_of + 1;
  }
}

void sub_1000528E8(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *a1;
  if (*a1 != a1 + 3 && *a2 != a2 + 3)
  {
    v5 = a1[1];
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *a2 = v4;
    a2[1] = v5;
    v7 = a1[2];
    a1[2] = a2[2];
    a2[2] = v7;
    return;
  }

  v8 = a2[1];
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
    v9 = a1[1];
    if (a2[2] >= v9)
    {
LABEL_7:
      v10 = a2[1];
      if (v9 >= v10)
      {
        v11 = a2[1];
      }

      else
      {
        v11 = v9;
      }

      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = a1[1];
    if (a2[2] >= v9)
    {
      goto LABEL_7;
    }
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
  v9 = a1[1];
  v10 = a2[1];
  if (v9 >= v10)
  {
    v11 = a2[1];
  }

  else
  {
    v11 = a1[1];
  }

  if (!v11)
  {
LABEL_11:
    v12 = v9 - v10;
    if (v9 > v10)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  for (i = 0; i != v11; ++i)
  {
    v15 = *a2;
    v16 = *(*a1 + i);
    *(*a1 + i) = *(*a2 + i);
    *(v15 + i) = v16;
  }

  v9 = a1[1];
  v10 = a2[1];
  v12 = v9 - v10;
  if (v9 > v10)
  {
LABEL_12:
    v13 = v9 - v11;
    if (v13)
    {
      memcpy((*a2 + v10), (*a1 + v11), v13);
      v10 = a2[1];
    }

    a2[1] = v12 + v10;
    a1[1] = v11;
    return;
  }

LABEL_23:
  v17 = v10 - v9;
  if (v10 > v9)
  {
    v18 = v10 - v11;
    if (v18)
    {
      memcpy((*a1 + v9), (*a2 + v11), v18);
      v9 = a1[1];
    }

    a1[1] = v17 + v9;
    a2[1] = v11;
  }
}