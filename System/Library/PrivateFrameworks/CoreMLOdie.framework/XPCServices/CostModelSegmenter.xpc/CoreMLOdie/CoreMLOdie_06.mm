uint64_t sub_100045848(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 - *a1 < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v1 = &byte_1002C4510;
    *a1 = &byte_1002C4510;
    *(a1 + 8) = &byte_1002C4510;
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
    v11 = &off_1002B4870;
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
  *a1 = &byte_1002C4510;
  *(a1 + 8) = &byte_1002C4510;
LABEL_32:
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 3;
  }

  *a1 = &byte_1002C4510;
  *(a1 + 8) = &byte_1002C4510;
  return v12;
}

__n128 sub_100045A58(__n128 *a1, char a2)
{
  v5 = a2;
  v6 = 93;
  v4 = *a1;
  a1->n128_u64[0] = &v5;
  a1->n128_u64[1] = &v6 + 1;
  sub_1000438C0();
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
    v8 = &dword_1002B4E60;
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
    sub_100048938(v129, v77, v19, v81, 132, v81);
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
        sub_100048938(v129, v77, v19, v81, v87, v81);
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
        sub_100048938(v129, v77, v19, v81, v87, v81);
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

        v95 = sub_100047EC4(&v129, v82, v127, v77, v19);
        if (!v95)
        {
          v97 = v121;
          do
          {
            ++*(&v132 + 1);
            v98 = sub_100047EC4(&v129, *(&v132 + 1), v127, v77, v19);
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
            v102 = sub_1000476B4(&v129, *(&v132 + 1), v96, v77, v19, 0, 0);
            goto LABEL_252;
          }

          free(*(&v130 + 1));
          v112 = 12;
          goto LABEL_267;
        }

        v102 = sub_100048318(&v129, *(&v132 + 1), v96, v77, v19);
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

          v96 = sub_100047EC4(&v129, *(&v132 + 1), v96 - 1, v77, v19);
          v105 = *(&v132 + 1);
          if (!v96)
          {
            break;
          }

          if (sub_1000476B4(&v129, *(&v132 + 1), v96, v77, v19, 0, 0))
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
      sub_100048938(v129, v77, v19, *(&v80 + 1), v83, v81);
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
    v46 = sub_100047CA0(v129, v43, v11, v117, 132, v117);
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
          v48 = sub_100047CA0(v45, v43, v11, v48, v52, v48);
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
        v48 = sub_100047CA0(v129, v43, v11, v48, v52, v48);
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
      v48 = sub_100047CA0(v129, v43, v11, v48, v49, v46);
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

    for (j = sub_100046C88(&v129, v128, v54, v43, v11); !j; j = sub_100046C88(&v129, *(&v132 + 1), v54, v43, v11))
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

      v66 = sub_1000476B4(&v129, *(&v132 + 1), v62, v43, v11, 0, 0);
    }

    else
    {
      v66 = sub_100047094(&v129, *(&v132 + 1), v62, v43, v11);
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

        v62 = sub_100046C88(&v129, *(&v132 + 1), v62 - 1, v43, v11);
        v69 = *(&v132 + 1);
        if (!v62)
        {
          break;
        }

        if (sub_1000476B4(&v129, *(&v132 + 1), v62, v43, v11, 0, 0))
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

char *sub_100046C88(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
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
      v15 = sub_100047CA0(*a1, v6, a5, 1 << v6, 132, 1 << v6);
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
            v15 = sub_100047CA0(v14, v6, a5, v15, v20, v15);
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
        v15 = sub_100047CA0(*v16, v6, a5, v15, v20, v15);
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
        v15 = sub_100047CA0(*v16, v6, a5, v15, v17, v26);
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

char *sub_100047094(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
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
          for (i = sub_100046C88(a1, v5, a3, v11, v16 + 1); sub_100046C88(a1, i, a3, v16 + 1, a5) != a3; i = sub_100046C88(a1, v5, v21, v11, v16 + 1))
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
            v52 = sub_100046C88(a1, v5, i, v11 + 1, v16);
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

          sub_100047094(a1, v53, v54, v11 + 1, v16);
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
            i = sub_100046C88(a1, v5, v31, v11, v16 + 1);
            v32 = sub_100046C88(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sub_100046C88(a1, v5, i, v34, v33) != i)
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

          sub_100047094(a1, v5, i, v34, v33);
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
        for (i = sub_100046C88(a1, v5, a3, v11, v16 + 1); sub_100046C88(a1, i, a3, v16 + 1, a5) != a3; i = sub_100046C88(a1, v5, v40, v11, v16 + 1))
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

        if (sub_100046C88(a1, v5, i, v11 + 1, v16))
        {
          sub_100047094(a1, v5, i, v11 + 1, v16);
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

uint64_t sub_1000476B4(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
        result = sub_1000476B4(a1, a2, a3, v14 + 1, a5, a6, a7);
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
            result = sub_1000476B4(a1, a2, a3, v12, a5, a6, a7);
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
            result = sub_1000476B4(a1, a2, a3, v14 + 1, a5, a6, a7);
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
              result = sub_1000476B4(a1, a2, a3, v14 + 1, a5, a6, a7);
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

                  result = sub_1000476B4(a1, a2, a3, v41 + 2, a5, a6, a7);
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
              result = sub_1000476B4(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
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

unint64_t sub_100047CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
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

char *sub_100047EC4(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
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
      sub_100048938(*a1, v6, a5, v14, 132, v14);
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
          sub_100048938(*a1, v6, a5, v14, v19, v14);
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
        sub_100048938(*a1, v6, a5, v14, v19, v14);
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
        sub_100048938(*a1, v6, a5, __dst, v16, v14);
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

char *sub_100048318(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
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
          for (i = sub_100047EC4(a1, v5, a3, v11, v16 + 1); sub_100047EC4(a1, i, a3, v16 + 1, a5) != a3; i = sub_100047EC4(a1, v5, v21, v11, v16 + 1))
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
            v52 = sub_100047EC4(a1, v5, i, v11 + 1, v16);
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

          sub_100048318(a1, v53, v54, v11 + 1, v16);
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
            i = sub_100047EC4(a1, v5, v31, v11, v16 + 1);
            v32 = sub_100047EC4(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sub_100047EC4(a1, v5, i, v34, v33) != i)
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

          sub_100048318(a1, v5, i, v34, v33);
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
        for (i = sub_100047EC4(a1, v5, a3, v11, v16 + 1); sub_100047EC4(a1, i, a3, v16 + 1, a5) != a3; i = sub_100047EC4(a1, v5, v40, v11, v16 + 1))
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

        if (sub_100047EC4(a1, v5, i, v11 + 1, v16))
        {
          sub_100048318(a1, v5, i, v11 + 1, v16);
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

uint64_t sub_100048938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
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
      return sub_100049254(a1, a2);
    }

    else
    {
      return sub_100048FA0(a1, a2);
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
        return sub_100049588(a1, a2);
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

unint64_t sub_100048FA0(int8x16_t *a1, unint64_t a2)
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
    v11 = &unk_10028F3F0;
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

unint64_t sub_100049254(int8x16_t *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) >= 0x400)
  {
    v7 = 0;
    v3 = xmmword_10028F260;
    v4 = xmmword_10028F270;
    v5 = xmmword_10028F280;
    v6 = xmmword_10028F290;
    v8 = a1 + 2;
    v9 = vdup_n_s32(0x9E3779B1);
    do
    {
      v10 = v8;
      v11 = &xmmword_10028F390;
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
      v29 = veorq_s8(vshrq_n_u64(v3, 0x2FuLL), veorq_s8(v3, xmmword_10028F2A0));
      v3 = vmlal_u32(vmulq_s32(v29, xmmword_10028F2B0), vmovn_s64(v29), v9);
      v30 = veorq_s8(vshrq_n_u64(v4, 0x2FuLL), veorq_s8(v4, xmmword_10028F2C0));
      v4 = vmlal_u32(vmulq_s32(v30, xmmword_10028F2B0), vmovn_s64(v30), v9);
      v31 = veorq_s8(vshrq_n_u64(v5, 0x2FuLL), veorq_s8(v5, xmmword_10028F2D0));
      v5 = vmlal_u32(vmulq_s32(v31, xmmword_10028F2B0), vmovn_s64(v31), v9);
      v32 = veorq_s8(vshrq_n_u64(v6, 0x2FuLL), veorq_s8(v6, xmmword_10028F2E0));
      v6 = vmlal_u32(vmulq_s32(v32, xmmword_10028F2B0), vmovn_s64(v32), v9);
      ++v7;
      v8 += 64;
    }

    while (v7 != v2 >> 10);
  }

  else
  {
    v3 = xmmword_10028F260;
    v4 = xmmword_10028F270;
    v5 = xmmword_10028F280;
    v6 = xmmword_10028F290;
  }

  v33 = (v2 >> 6) & 0xF;
  if (v33)
  {
    v34 = (a1 + (v2 & 0xFFFFFFFFFFFFFC00) + 32);
    v35 = &xmmword_10028F390;
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
  v56 = veorq_s8(v52, xmmword_10028F2F0);
  v57 = veorq_s8(v53, xmmword_10028F300);
  v58 = vuzp1q_s32(v56, v57);
  v59 = vuzp2q_s32(v56, v57);
  v60 = vaddq_s64(vmlal_u32(v54, *v58.i8, *v59.i8), v3);
  v61 = vaddq_s64(vmlal_high_u32(v55, v58, v59), v4);
  v62 = *(&a1[-2] + a2);
  v63 = *(&a1[-1] + a2);
  v64 = vextq_s8(v62, v62, 8uLL);
  v65 = vextq_s8(v63, v63, 8uLL);
  v66 = veorq_s8(v62, xmmword_10028F310);
  v67 = veorq_s8(v63, xmmword_10028F320);
  v68 = vuzp1q_s32(v66, v67);
  v69 = vuzp2q_s32(v66, v67);
  v70 = veorq_s8(v60, xmmword_10028F330);
  v71 = (((v70.u64[1] * v70.u64[0]) >> 64) ^ (v70.i64[1] * v70.i64[0])) - 0x61C8864E7A143579 * a2;
  v72 = veorq_s8(v61, xmmword_10028F340);
  v73 = veorq_s8(vaddq_s64(vmlal_u32(v64, *v68.i8, *v69.i8), v5), xmmword_10028F350);
  v74 = ((v73.u64[1] * v73.u64[0]) >> 64) ^ (v73.i64[1] * v73.i64[0]);
  v75 = veorq_s8(vaddq_s64(vmlal_high_u32(v65, v68, v69), v6), xmmword_10028F360);
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
  v78 = xmmword_10028F130;
  v74 = v76;
  v75 = xmmword_10028F130;
  v71 = v73;
  v72 = xmmword_10028F130;
  v68 = v70;
  v69 = xmmword_10028F130;
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
  v19 = xmmword_10028F100;
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
  if (sub_10004A540(a1, a2, a3) == -1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_10004A540(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
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

void sub_10004A81C(void *a1, void *a2)
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

BOOL llvm::sys::path::has_root_directory(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v12 = v14;
  v13 = xmmword_10028F100;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_directory(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v14 = v16;
  v15 = xmmword_10028F100;
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
      v6 = *(this + 1);
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
    llvm::Twine::toVector(this, &v14);
    v5 = v14;
    v6 = v15;
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
    v6 = *(*this + 8);
  }

LABEL_15:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_directory = llvm::sys::path::has_root_directory(&v11, a2);
  if (a2 < 2)
  {
    has_root_name = 1;
    v9 = v14;
    if (v14 == v16)
    {
      return has_root_directory & has_root_name;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_name = llvm::sys::path::has_root_name(&v11, a2);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_19:
    free(v9);
  }

  return has_root_directory & has_root_name;
}

void llvm::sys::fs::createUniquePath(uint64_t a1, uint64_t a2, int a3)
{
  v20 = v22;
  v21 = xmmword_10028F100;
  llvm::Twine::toVector(a1, &v20);
  if (a3)
  {
    v19[4] = 261;
    v17 = v20;
    *&v18 = v21;
    if ((llvm::sys::path::is_absolute(&v17, 0) & 1) == 0)
    {
      v17 = v19;
      v18 = xmmword_10028F100;
      llvm::sys::path::system_temp_directory(1, &v17);
      v16 = 261;
      v15[0] = v20;
      v15[1] = v21;
      v14 = 257;
      v12 = 257;
      v10 = 257;
      llvm::sys::path::append(&v17, 0, v15, &v13, &v11, &v9);
      sub_10004A81C(&v20, &v17);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }

  if (&v20 == a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v21;
    v6 = *(a2 + 8);
    if (v6 >= v21)
    {
      if (v21)
      {
        memmove(*a2, v20, v21);
      }
    }

    else
    {
      if (*(a2 + 16) >= v21)
      {
        if (v6)
        {
          memmove(*a2, v20, *(a2 + 8));
        }
      }

      else
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5, 1);
        v6 = 0;
      }

      if (v21 != v6)
      {
        memcpy((*a2 + v6), &v20[v6], v21 - v6);
      }
    }

    *(a2 + 8) = v5;
  }

  if (v5 + 1 > *(a2 + 16))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5 + 1, 1);
    *(*a2 + *(a2 + 8)) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(*a2 + v5) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v8 = 0;
  do
  {
    if (v20[v8] == 37)
    {
      *(*a2 + v8) = a0123456789abcd_2[llvm::sys::Process::GetRandomNumber() & 0xF];
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_24:
  if (v20 != v22)
  {
    free(v20);
  }
}

void llvm::sys::path::system_temp_directory(int a1, uint64_t a2)
{
  v3 = 65537;
  *(a2 + 8) = 0;
  if (a1)
  {
    v4 = getenv("TMPDIR");
    if (v4 || (v4 = getenv("TMP")) != 0 || (v4 = getenv("TEMP")) != 0 || (v4 = getenv("TEMPDIR")) != 0)
    {
      v5 = v4;
      v6 = strlen(v4);
      v7 = v6;
      if (*(a2 + 16) >= v6)
      {
        v8 = 0;
        v13 = 0;
        if (!v6)
        {
LABEL_24:
          *(a2 + 8) = v13 + v7;
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v6, 1);
        v8 = *(a2 + 8);
      }

      memcpy((*a2 + v8), v5, v7);
      v13 = *(a2 + 8);
      goto LABEL_24;
    }
  }

  else
  {
    v3 = 65538;
  }

  v9 = confstr(v3, 0, 0);
  v10 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_26;
  }

  v11 = v9;
  while (v10 == v11)
  {
    v12 = confstr(v3, *a2, v10);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_20:
    v11 = v12;
    v10 = *(a2 + 8);
    if (v12 == v10)
    {
      *(a2 + 8) = v12 - 1;
      return;
    }
  }

  if (v10 <= v11)
  {
    if (*(a2 + 16) < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v11, 1);
      v10 = *(a2 + 8);
    }

    if (v11 != v10)
    {
      bzero((*a2 + v10), v11 - v10);
    }
  }

  *(a2 + 8) = v11;
  v12 = confstr(v3, *a2, v11);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_25:
  v10 = 0;
  *(a2 + 8) = 0;
LABEL_26:
  if (*(a2 + 16) < v10 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10 + 9, 1);
    v10 = *(a2 + 8);
  }

  v14 = *a2 + v10;
  *v14 = *"/var/tmp/";
  *(v14 + 8) = 47;
  *(a2 + 8) += 9;
}

void sub_10004B0C4(uint64_t a1, int *a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v14 = std::system_category();
  if (a5 == 2)
  {
    v22 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v23 = *a3;
      v37 = 257;
      if (*v23)
      {
        v36 = v23;
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v37) = v24;
      v38 = &v40;
      v39 = xmmword_10028F100;
      v25 = llvm::Twine::toNullTerminatedStringRef(&v36, &v38);
      v26 = 0;
      v27 = v14;
      if (access(v25, 0) == -1)
      {
        break;
      }

      v28 = v38;
      if (v38 != &v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((v27 != std::generic_category() || v26 != 2) && !v26 && --v22 >= 2)
      {
        continue;
      }

      return;
    }

    v26 = *__error();
    v27 = std::generic_category();
    v28 = v38;
    if (v38 == &v40)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v28);
    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v15 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v16 = *a3;
      v41 = 257;
      if (*v16)
      {
        v38 = v16;
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v41) = v17;
      v19 = llvm::sys::fs::openFile(&v38, a2, 1, 3, a6, a7);
      if (!v19)
      {
        break;
      }

      v20 = v18;
      v21 = std::generic_category();
      if (v19 == 17 && v21 == v20)
      {
        if (--v15 <= 1)
        {
          return;
        }
      }

      else
      {
        if (v19 != 13)
        {
          return;
        }

        if (v21 != v20)
        {
          return;
        }

        if (--v15 <= 1)
        {
          return;
        }
      }
    }
  }

  else if (a5)
  {
    llvm::sys::fs::createUniquePath(a1, a3, a4);
    __break(1u);
  }

  else
  {
    for (i = 129; i > 1; --i)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v30 = *a3;
      v41 = 257;
      if (*v30)
      {
        v38 = v30;
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      LOBYTE(v41) = v31;
      directory = llvm::sys::fs::create_directory(&v38, 0, 0x1F8u);
      if (!directory)
      {
        break;
      }

      v34 = v32;
      v35 = std::generic_category();
      if (directory != 17)
      {
        break;
      }

      if (v35 != v34)
      {
        break;
      }
    }
  }
}

void sub_10004B42C(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, void *a5, int a6, int a7)
{
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v23 = v11;
    LOBYTE(v25) = v12;
    BYTE1(v25) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOBYTE(v12) = 0;
      LOWORD(v25) = 256;
LABEL_20:
      v14 = 1;
      goto LABEL_26;
    }

    if (*v11)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 33) == 1;
      BYTE1(v25) = v12;
      if (v17)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      *&v23 = v18;
      *(&v23 + 1) = v16;
      *&v24 = v11;
      LOBYTE(v25) = v12;
    }

    else
    {
      v22 = *(a1 + 1);
      v23 = *a1;
      v24 = v22;
      v25 = a1[4];
      v12 = v25;
      if (!v25)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 == 1)
  {
    v26 = a2;
    v27 = a3;
    v14 = 1;
    LOBYTE(v12) = 5;
  }

  else
  {
    if (BYTE1(v25) != 1)
    {
      LOBYTE(v12) = 2;
    }

    v19 = &v23;
    if (BYTE1(v25) == 1)
    {
      v19 = v23;
    }

    v26 = v19;
    v27 = *(&v23 + 1);
    v28 = a2;
    v29 = a3;
    v14 = 5;
  }

LABEL_26:
  v30 = v12;
  v31 = v14;
  v35 = v37;
  v36 = xmmword_10028F100;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v26, &v35);
  v21 = 1;
  v34 = 1;
  if (*v20)
  {
    v32 = v20;
    v21 = 3;
  }

  v33 = v21;
  sub_10004B0C4(&v32, a4, a5, 1, a6, a7, 438);
  if (v35 != v37)
  {
    free(v35);
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4, int a5)
{
  v6 = 0;
  sub_10004B42C(a1, a2, a3, &v6, a4, 1, a5);
  if (!v5)
  {
    close(v6);
  }
}

uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v9 = v11;
  v10 = xmmword_10028F100;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v6 = *__error();
    std::generic_category();
    v7 = v9;
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_5;
  }

  std::system_category();
  v6 = 0;
  v7 = v9;
  if (v9 != v11)
  {
LABEL_5:
    free(v7);
  }

  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, int a3, void *a4)
{
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v10 = strlen(__s);
        v11 = a4[1];
        if (a4[2] < v11 + v10)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v11 + v10, 1);
          v11 = a4[1];
        }

        if (v10)
        {
          memcpy((*a4 + v11), __s, v10);
          v11 = a4[1];
        }

        a4[1] = v11 + v10;
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        *&v19.__val_ = std::generic_category();
        result = llvm::errorCodeToError(v16, v19, &v18);
        v17 = v18;
        goto LABEL_17;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_17:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

unint64_t llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  bufsize = 1024;
  result = _NSGetExecutablePath(buf, &bufsize);
  if (result || (result = realpath_DARWIN_EXTSN(buf, __s)) == 0)
  {
    a1[23] = 0;
    *a1 = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a1[23] = result;
    if (result)
    {
      result = memcpy(a1, __s, result);
    }

    a1[v6] = 0;
  }

  return result;
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v10 = v12;
  v11 = xmmword_10028F100;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v9.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v5 = 1;
LABEL_15:
      std::generic_category();
      v7 = v10;
      if (v10 == v12)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (remove(v3, v4) == -1 && (*__error() != 2 || (v2 & 1) == 0))
    {
LABEL_4:
      v5 = *__error();
      goto LABEL_15;
    }
  }

  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_12:
    free(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v9 = v11;
  v10 = xmmword_10028F100;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (!a2)
  {
LABEL_9:
    if (access(v3, a2) != -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = *__error();
    std::generic_category();
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    a2 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (access(v3, 5) == -1)
  {
    goto LABEL_13;
  }

  if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v5 = 13;
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::system_category();
  v5 = 0;
  v6 = v9;
  if (v9 != v11)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

uint64_t sub_10004BD50(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    result = v4;
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = a2[10];
    v7 = a2[14];
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = v8 >> 12;
    if (v10 == 7)
    {
      v11 = 9;
    }

    else
    {
      v11 = dword_10028F438[v10 ^ 8];
    }

    v12 = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 1);
    v15 = *(a2 + 6);
    v16 = *(a2 + 12);
    v17 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v15;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v17;
    *(a3 + 32) = v16;
    *(a3 + 40) = v11;
    *(a3 + 44) = v9;
    *(a3 + 48) = v12;
    *(a3 + 52) = v13;
    *(a3 + 56) = v14;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::mapped_file_region(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *llvm::sys::fs::mapped_file_region::unmapImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return munmap(result, *this);
  }

  return result;
}

void *llvm::sys::fs::mapped_file_region::dontNeedImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return posix_madvise(result, *this, 4);
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::alignment(llvm::sys::fs::mapped_file_region *this)
{
  llvm::sys::Process::getPageSize(&v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  v1 = v6;
  v6 = 0;
  v4 = v1;
  sub_10002B334(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7)
  {
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return 4096;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_10028F100;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    v17 = v19;
    if (v19 == v21)
    {
      return v16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *__error();
  std::generic_category();
  v17 = v19;
  if (v19 == v21)
  {
    return v16;
  }

LABEL_23:
  free(v17);
  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v8, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v7);
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v8;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v13.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      *a5 = v12;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::closeFile(llvm::sys::fs *this, int *a2)
{
  v2 = *this;
  *this = -1;
  return llvm::sys::Process::SafelyCloseFileDescriptor(v2);
}

void llvm::sys::Process::getPageSize(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_1002C4528, memory_order_acquire))
  {
    v3 = dword_1002C4520;
    if (dword_1002C4520 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v3;
      return;
    }
  }

  else
  {
    sub_100278D24();
    v3 = dword_1002C4520;
    if (dword_1002C4520 != -1)
    {
      goto LABEL_3;
    }
  }

  v4 = *__error();
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(v4, v6, &v5);
  *(a1 + 8) |= 1u;
  *a1 = v5;
}

uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_41;
        }

        break;
      case 5uLL:
        if (*v4 == 1970170220 && v4[4] == 120)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_41:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_40:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_40;
        }

        break;
    }

    if (*v4 == 1701995379 && *(v4 + 2) == 28261)
    {
      goto LABEL_41;
    }

LABEL_27:
    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_41;
    }

    v10 = *v4 == 808547446 && v4[4] == 48;
    if (v10 || *v4 == 1953921138)
    {
      goto LABEL_41;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t llvm::sys::ExecuteAndWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v18[0] = 0;
  v18[2] = 0;
  v16 = *a5;
  v17 = *(a5 + 2);
  LODWORD(v15) = a9;
  if (sub_10004C774(v18, a1, a2, a3, a4, &v16, a6, a7, v15, a10))
  {
    if (a11)
    {
      *a11 = 0;
    }

    llvm::sys::Wait(v18, a8 | ((a8 != 0) << 32), a10, a12, 0);
    return v13;
  }

  else
  {
    if (a11)
    {
      *a11 = 1;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10004C774(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __src = a2;
  __len = a3;
  v35 = 261;
  v33.__r_.__value_.__r.__words[0] = a2;
  v33.__r_.__value_.__l.__size_ = a3;
  if (!llvm::sys::fs::access(&v33, 0))
  {
    *&v33.__r_.__value_.__l.__data_ = 0uLL;
    v33.__r_.__value_.__r.__words[2] = &v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0;
    v38[0] = 0;
    v38[1] = 1;
    *__s = &v33;
    if (a5)
    {
      llvm::StringSaver::save(__s, *a4, *(a4 + 8));
      operator new();
    }

    operator new();
  }

  if (a10)
  {
    *(&v32.__r_.__value_.__s + 23) = 12;
    strcpy(&v32, "Executable ");
    if (a2)
    {
      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_10002BC08();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      v15 = HIBYTE(v31);
      v13 = *(&__dst + 1);
      v14 = __dst;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      __dst = 0uLL;
      v31 = 0;
    }

    if ((v15 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = v14;
    }

    if ((v15 & 0x80u) == 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    v18 = std::string::append(&v32, p_dst, v17);
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v27 = 16;
    strcpy(__s, " doesn't exist!");
    v20 = std::string::append(&v33, __s, 0x10uLL);
    v21 = v20->__r_.__value_.__r.__words[0];
    v39[0] = v20->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    v23 = v39[0];
    *a10 = v21;
    *(a10 + 8) = v23;
    *(a10 + 15) = *(v39 + 7);
    *(a10 + 23) = v22;
    if (v27 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_31:
      operator delete(v32.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_30:
    operator delete(__dst);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t llvm::sys::Wait(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v25.__sigaction_u.__sa_handler = nullsub_109;
    *&v25.sa_mask = 0;
    sigaction(14, &v25, &v24);
    alarm(a2);
    v23 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v23 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v23, v11, &v22);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v23, v11, &v22);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    if ((a2 & 0x100000000) != 0 && *__error() == 4 && (a5 & 1) == 0)
    {
      kill(*a1, 9);
      alarm(0);
      sigaction(14, &v24, 0);
      if (wait(&v23) != v10)
      {
        operator new();
      }

      *(&v21.__r_.__value_.__s + 23) = 15;
      strcpy(&v21, "Child timed out");
      sub_10004E068(a3, &v21.__r_.__value_.__l.__data_, 0);
      LODWORD(result) = v13;
      return result;
    }

    if (*__error() != 4)
    {
      operator new();
    }

    LODWORD(result) = v13;
  }

LABEL_18:
  if ((a2 & 0x100000000) != 0)
  {
    v14 = result;
    alarm(0);
    sigaction(14, &v24, 0);
    LODWORD(result) = v14;
  }

  if (a4)
  {
    v15 = v22.ru_utime.tv_usec + 1000000 * v22.ru_utime.tv_sec;
    ru_maxrss = v22.ru_maxrss;
    v17 = *(a4 + 24);
    *a4 = v15 + 1000000 * v22.ru_stime.tv_sec + v22.ru_stime.tv_usec;
    *(a4 + 8) = v15;
    *(a4 + 16) = ru_maxrss;
    if ((v17 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v23 & 0x7F) != 0x7F)
  {
    if ((v23 & 0x7F) != 0)
    {
      if (!a3)
      {
        return result;
      }

      v18 = result;
      v19 = strsignal(v23 & 0x7F);
      std::string::assign(a3, v19);
      if ((v23 & 0x80) != 0)
      {
        std::string::append(a3, " (core dumped)");
      }
    }

    else
    {
      if (BYTE1(v23) == 126)
      {
        if (a3)
        {
          v20 = result;
          std::string::assign(a3, "Program could not be executed");
          LODWORD(result) = v20;
        }

        return result;
      }

      if (BYTE1(v23) != 127 || !a3)
      {
        return result;
      }

      v18 = result;
      llvm::sys::StrError(2, &v21);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v21;
    }

    LODWORD(result) = v18;
  }

  return result;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__n)
  {
    v9 = memchr(__s, 47, __n);
    if (v9)
    {
      if (v9 - __s != -1)
      {
        if (__n > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_38:
          sub_10002BC08();
        }

        if (__n >= 0x17)
        {
          operator new();
        }

        HIBYTE(v41[0]) = __n;
        memmove(v40, __s, __n);
        *(v40 + __n) = 0;
        *(a5 + 24) &= ~1u;
        result = *v40;
        *a5 = *v40;
        *(a5 + 16) = v41[0];
        return result;
      }
    }
  }

  v40[0] = v41;
  v40[1] = 0x1000000000;
  if (a4)
  {
    v10 = &a3[2 * a4];
    goto LABEL_11;
  }

  v22 = getenv("PATH");
  if (v22)
  {
    v23 = v22;
    v24 = strlen(v22);
    llvm::SplitString(v23, v24, v40, ":", 1);
    if (LODWORD(v40[1]))
    {
      a3 = v40[0];
      v10 = (v40[0] + 16 * LODWORD(v40[1]));
      do
      {
LABEL_11:
        v11 = a3[1];
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = *a3;
        __src = v39;
        __len = xmmword_10028F100;
        if (v11 < 0x81)
        {
          v13 = 0;
          v14 = v39;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, v11, 1);
          v14 = __src;
          v13 = __len;
        }

        memcpy(&v14[v13], v12, v11);
        *&__len = __len + v11;
        v36 = 261;
        *&__dst = __s;
        *(&__dst + 1) = __n;
        v33 = 257;
        v31 = 257;
        v29 = 257;
        llvm::sys::path::append(&__src, &__dst, &v32, &v30, &v28);
        if ((__len + 1) > *(&__len + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, __len + 1, 1);
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
LABEL_17:
            *&__dst = v16;
            LOBYTE(v36) = 3;
            can_execute = llvm::sys::fs::can_execute(&__dst, v15);
            v18 = can_execute;
            v19 = __src;
            if (!can_execute)
            {
              goto LABEL_28;
            }

            goto LABEL_21;
          }
        }

        else
        {
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
            goto LABEL_17;
          }
        }

        LOBYTE(v36) = 1;
        v20 = llvm::sys::fs::can_execute(&__dst, v15);
        v18 = v20;
        v19 = __src;
        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_21:
        v21 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_38;
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v35) = __len;
        if (__len)
        {
          memmove(&__dst, v19, __len);
        }

        *(&__dst + v21) = 0;
        *(a5 + 24) &= ~1u;
        result = *&__dst;
        *a5 = __dst;
        *(a5 + 16) = v35;
        v19 = __src;
LABEL_28:
        if (v19 != v39)
        {
          free(v19);
        }

        if (v18)
        {
          goto LABEL_34;
        }

LABEL_10:
        a3 += 2;
      }

      while (a3 != v10);
    }
  }

  *(a5 + 24) |= 1u;
  v25 = std::generic_category();
  *a5 = 2;
  *(a5 + 8) = v25;
LABEL_34:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return result;
}

_BYTE *sub_10004DFB4(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_10004E068(uint64_t a1, const void **a2, std::string *this)
{
  if (a1)
  {
    v3 = this;
    if (this == -1)
    {
      v3 = *__error();
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + 2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }

    if (v6 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v15, 0, sizeof(v15));
    *(&v15.__r_.__value_.__s + 23) = v6 + 2;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(&v15, v7, v6);
    }

    strcpy(&v15 + v6, ": ");
    llvm::sys::StrError(v3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, p_p, size);
    v11 = v10->__r_.__value_.__r.__words[0];
    v16[0] = v10->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = v16[0];
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 15) = *(v16 + 7);
    *(a1 + 23) = v12;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v15.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }
}

_BYTE *sub_10004E24C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
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

uint64_t sub_10004E324(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    memmove(&__dst, v6, v5);
    __dst.__r_.__value_.__s.__data_[v5] = 0;
    v19 = __dst;
  }

  else
  {
    std::string::assign(&v19, "/dev/null");
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v9 = open(v8, 513, 438);
  }

  else
  {
    v9 = open(v8, 0, 438);
  }

  if (v9 != -1)
  {
    v10 = v9;
    if (dup2(v9, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      sub_10004E068(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
      close(v10);
      result = 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      close(v10);
      result = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    return result;
  }

  std::operator+<char>();
  v11 = std::string::append(&v16, "' for ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v13 = "output";
  }

  else
  {
    v13 = "input";
  }

  v14 = std::string::append(&v17, v13);
  __dst = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  sub_10004E068(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    result = 1;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  operator delete(v16.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_33:
    v15 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v15;
  }

  return result;
}

uint64_t sub_10004E5D4(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

llvm::sys::RWMutexImpl *llvm::sys::RWMutexImpl::RWMutexImpl(llvm::sys::RWMutexImpl *this)
{
  *this = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

void llvm::sys::RWMutexImpl::~RWMutexImpl(pthread_rwlock_t **this)
{
  v1 = *this;
  pthread_rwlock_destroy(*this);
  free(v1);
}

uint64_t sub_10004E764(unint64_t a1, unint64_t a2, uint64_t a3, int a4, llvm::raw_ostream *a5)
{
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v84 = a3;
  v83 = a4;
  if ((byte_1002C4530 & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v121 |= 1u;
  v119.n128_u64[0] = 0;
  v119.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (!v8)
  {
    if (__src.n128_u64[1])
    {
      *v104 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
      *&v104[8] = v12;
      if (v12)
      {
        llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v104, 1, &__p);
        sub_10004F558(&v119, &__p);
        if ((v88 & 1) == 0 && SHIBYTE(v87) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if ((v121 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = strlen(v8);
  llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
  v11 = v121;
  if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
  {
    operator delete(v119.n128_u64[0]);
    v11 = v121;
  }

  if (v88)
  {
    v121 = v11 | 1;
    v119 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v121;
    if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
    {
      operator delete(v119.n128_u64[0]);
      v11 = v121;
    }

    if (v88)
    {
      return 0;
    }
  }

  v121 = v11 & 0xFE;
  v119 = __p;
  v120 = v87;
LABEL_22:
  LOWORD(v89) = 261;
  __p = __src;
  if (llvm::sys::fs::access(&__p, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
  }

  else
  {
    v13 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }

    if (__src.n128_u64[1] >= 0x17)
    {
      operator new();
    }

    v82 = __src.n128_i8[8];
    if (__src.n128_u64[1])
    {
      memmove(&__dst, __src.n128_u64[0], __src.n128_u64[1]);
    }

    *(&__dst + v13) = 0;
  }

  v112[4] = 0;
  v112[5] = 0;
  v113 = v115;
  v114 = 0x400000000;
  v116 = v118;
  v117 = 0;
  v118[0] = 0;
  v118[1] = 1;
  if (v83)
  {
    if ((v83 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v14 = _dyld_image_count();
  if (v14)
  {
    v15 = v14;
    for (i = 0; i != v15; ++i)
    {
      _dyld_get_image_name(i);
      _dyld_get_image_vmaddr_slide(i);
      _dyld_get_image_header(i);
    }
  }

  v80 = 0;
  v110 = v112;
  v111 = xmmword_10028F130;
  v107 = v109;
  v108 = xmmword_10028F130;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v89) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v80, &v110, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v89) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v107, 0);
  v17 = v111;
  if ((v111 + 1) > *(&v111 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v110, v112, v111 + 1, 1);
    v17 = v111;
  }

  *(v110 + v17) = 0;
  LOWORD(v89) = 257;
  if (*v110)
  {
    __p.n128_u64[0] = v110;
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v89) = v18;
  *v104 = v105;
  *&v104[8] = xmmword_10028F100;
  v106 = 1;
  llvm::Twine::toVector(&__p, v104);
  v19 = v108;
  if ((v108 + 1) > *(&v108 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v107, v109, v108 + 1, 1);
    v19 = v108;
  }

  *(v107 + v19) = 0;
  LOWORD(v89) = 257;
  if (*v107)
  {
    __p.n128_u64[0] = v107;
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  LOBYTE(v89) = v20;
  *v101 = v102;
  *&v101[8] = xmmword_10028F100;
  v103 = 1;
  llvm::Twine::toVector(&__p, v101);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v80, 1, 0, 0);
  if (v83 >= 1)
  {
    for (j = 0; j < v83; ++j)
    {
      v25 = *(8 * j);
      if (!v25)
      {
        continue;
      }

      v26 = strlen(*(8 * j));
      v27 = v26;
      v28 = v89;
      if (v26 <= v88 - v89)
      {
        if (v26)
        {
          memcpy(v89, v25, v26);
          v28 = &v89[v27];
          v89 += v27;
        }

        p_p = &__p;
        if (v88 != v28)
        {
LABEL_59:
          *v28 = 32;
          ++p_p[2].n128_u64[0];
          v23 = llvm::raw_ostream::operator<<(p_p, *(8 * j));
          v24 = v23[4];
          if (v23[3] == v24)
          {
LABEL_60:
            llvm::raw_ostream::write(v23, "\n", 1uLL);
            continue;
          }

          goto LABEL_50;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v25, v26);
        v28 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v28)
        {
          goto LABEL_59;
        }
      }

      v22 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v23 = llvm::raw_ostream::operator<<(v22, *(8 * j));
      v24 = v23[4];
      if (v23[3] == v24)
      {
        goto LABEL_60;
      }

LABEL_50:
      *v24 = 10;
      ++v23[4];
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  v93[0] = v110;
  v93[1] = v111;
  v94 = 1;
  v95 = v107;
  v96 = v108;
  v97 = 1;
  v98 = "";
  v99 = 0;
  v100 = 1;
  v92[0] = off_1002B4FF8;
  v92[1] = *&off_1002B5008;
  v92[2] = off_1002B5018;
  v92[3] = *&off_1002B5028;
  if (v120 >= 0)
  {
    v30 = &v119;
  }

  else
  {
    v30 = v119.n128_u64[0];
  }

  if (v120 >= 0)
  {
    v31 = SHIBYTE(v120);
  }

  else
  {
    v31 = v119.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v87) = 0;
  v32 = llvm::sys::ExecuteAndWait(v30, v31, v92, 4, &__p, v93, 3, 0, 0, 0, 0, 0);
  v33 = 0;
  if (v32)
  {
    goto LABEL_123;
  }

  v34 = sub_10004F614(&v107);
  LOWORD(v89) = 257;
  if (*v34)
  {
    __p.n128_u64[0] = v34;
    v35 = 3;
  }

  else
  {
    v35 = 1;
  }

  LOBYTE(v89) = v35;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v90);
  v33 = 0;
  if (v91)
  {
    goto LABEL_123;
  }

  v36 = *(v90 + 16) - *(v90 + 8);
  *&v79 = *(v90 + 8);
  *(&v79 + 1) = v36;
  __p.n128_u64[0] = &v87;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v79, &__p, "\n", 1uLL, -1, 1);
  v37 = __p.n128_u64[0];
  v78 = 0;
  if (v83 < 1)
  {
    goto LABEL_116;
  }

  for (k = 0; k < v83; LODWORD(v78) = k)
  {
    v77[0] = a5;
    v77[1] = &v78 + 4;
    v77[2] = &v83;
    v77[3] = &v84;
    v77[4] = &v78;
    if (*(8 * k))
    {
      v39 = __p.n128_u64[0];
      if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_117:
        v37 = v39;
        v33 = 0;
        goto LABEL_118;
      }

      v37 += 2;
      while (1)
      {
        v41 = *(v37 - 1);
        if (!v41)
        {
          goto LABEL_114;
        }

        v42 = *(v37 - 2);
        sub_10004F678(v77);
        if (v41 == 1 || *v42 != 16191)
        {
          v43 = *(a5 + 4);
          if (v41 <= *(a5 + 3) - v43)
          {
            memcpy(v43, v42, v41);
            v45 = (*(a5 + 4) + v41);
            *(a5 + 4) = v45;
            v44 = a5;
            if (v45 >= *(a5 + 3))
            {
LABEL_84:
              llvm::raw_ostream::write(v44, 32);
              goto LABEL_87;
            }
          }

          else
          {
            v44 = llvm::raw_ostream::write(a5, v42, v41);
            v45 = *(v44 + 4);
            if (v45 >= *(v44 + 3))
            {
              goto LABEL_84;
            }
          }

          *(v44 + 4) = v45 + 1;
          *v45 = 32;
        }

LABEL_87:
        v39 = __p.n128_u64[0];
        if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }

        v46 = *v37;
        v47 = v37[1];
        if (v47 >= 2 && *v46 == 16191)
        {
          v51 = *(a5 + 4);
          if (*(a5 + 3) == v51)
          {
            v52 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v51 = 40;
            ++*(a5 + 4);
            v52 = a5;
          }

          v53 = *(8 * v78);
          if (v53)
          {
            v54 = v52;
            v55 = strlen(*(8 * v78));
            v52 = v54;
            if (v55 <= *(v54 + 3) - *(v54 + 4))
            {
              if (v55)
              {
                memcpy(*(v54 + 4), v53, v55);
                v52 = v54;
                *(v54 + 4) += v55;
              }
            }

            else
            {
              v52 = llvm::raw_ostream::write(v54, v53, v55);
            }
          }

          v56 = *(v52 + 4);
          if (v56 >= *(v52 + 3))
          {
            v52 = llvm::raw_ostream::write(v52, 43);
          }

          else
          {
            *(v52 + 4) = v56 + 1;
            *v56 = 43;
          }

          v73[0] = *(8 * v78);
          v73[1] = 0;
          v74 = 0;
          v75 = 1;
          v76 = 1;
          v49 = llvm::raw_ostream::operator<<(v52, v73);
          v57 = v49[4];
          if (v49[3] != v57)
          {
            *v57 = 41;
            ++v49[4];
            goto LABEL_108;
          }

          v46 = ")";
          v47 = 1;
        }

        else
        {
          v48 = *(a5 + 4);
          if (v47 <= *(a5 + 3) - v48)
          {
            if (v47)
            {
              v50 = v37[1];
              memcpy(v48, v46, v47);
              *(a5 + 4) += v50;
            }

            goto LABEL_108;
          }

          v49 = a5;
        }

        llvm::raw_ostream::write(v49, v46, v47);
LABEL_108:
        v58 = *(a5 + 4);
        if (*(a5 + 3) == v58)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v58 = 10;
          ++*(a5 + 4);
        }

        v39 = __p.n128_u64[0];
        v40 = v37 + 2;
        v37 += 4;
        if (v40 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }
      }
    }

    sub_10004F678(v77);
    v59 = *(a5 + 4);
    if (v59 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v59 + 1;
      *v59 = 10;
    }

LABEL_114:
    k = v78 + 1;
  }

  v37 = __p.n128_u64[0];
LABEL_116:
  v33 = 1;
LABEL_118:
  if (v37 != &v87)
  {
    v60 = v33;
    free(v37);
    v33 = v60;
  }

  if ((v91 & 1) == 0)
  {
    v61 = v90;
    v90 = 0;
    if (v61)
    {
      v62 = v33;
      (*(*v61 + 8))(v61);
      v33 = v62;
    }
  }

LABEL_123:
  v63 = v33;
  if (v103 == 1)
  {
    LOWORD(v89) = 261;
    __p = *v101;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v101 != v102)
  {
    free(*v101);
  }

  if (v106 == 1)
  {
    LOWORD(v89) = 261;
    __p = *v104;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v104 != v105)
  {
    free(*v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (v110 != v112)
  {
    free(v110);
  }

  if (v114)
  {
    v64 = v113;
    v65 = 8 * v114;
    v66 = v113;
    do
    {
      v67 = ((v64 - v113) >> 10) & 0x1FFFFFF;
      if (v67 >= 0x1E)
      {
        LOBYTE(v67) = 30;
      }

      v68 = *v66++;
      llvm::deallocate_buffer(v68, (4096 << v67), 8uLL);
      ++v64;
      v65 -= 8;
    }

    while (v65);
  }

  v69 = v116;
  if (v117)
  {
    v70 = &v116[2 * v117];
    do
    {
      v71 = *v69;
      v72 = v69[1];
      v69 += 2;
      llvm::deallocate_buffer(v71, v72, 8uLL);
    }

    while (v69 != v70);
    v69 = v116;
  }

  if (v69 != v118)
  {
    free(v69);
  }

  if (v113 != v115)
  {
    free(v113);
  }

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
  {
    operator delete(v119.n128_u64[0]);
  }

  return v63;
}

__n128 sub_10004F558(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v2 = a1[1].n128_u8[8];
  if ((v2 & 1) == 0 && a1[1].n128_i8[7] < 0)
  {
    v7 = a1;
    v8 = a2;
    operator delete(a1->n128_u64[0]);
    a2 = v8;
    a1 = v7;
    v2 = v7[1].n128_u8[8];
    if (v8[1].n128_u8[8])
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[1].n128_u8[8] = v2 & 0xFE;
    result = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    return result;
  }

  if ((a2[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  a1[1].n128_u8[8] = v2 | 1;
  if (a2[1].n128_u8[8])
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
  }

  else
  {
    v5 = a1;
    v3 = std::system_category();
    a1 = v5;
    v4 = 0;
  }

  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  return result;
}

uint64_t sub_10004F614(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v1 + 1, 1);
    *(*a1 + a1[1]) = 0;
    return *a1;
  }

  else
  {
    *(*a1 + v1) = 0;
    return *a1;
  }
}

void sub_10004F678(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v21[0] = "#{0}";
  v21[1] = 4;
  v21[2] = &v25;
  v21[3] = 1;
  v22 = 1;
  v23 = &off_1002B5048;
  v24 = v4;
  v25 = &v23;
  __p = 0;
  v27 = 0;
  v28 = 0;
  LODWORD(v30) = 0;
  v34 = 0;
  v35 = 1;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  p_p = &__p;
  v29 = &off_1002B45C0;
  v36 = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v29, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v29, v21, v6, v7, v8, v9, v10);
  if (v33 != v31)
  {
    llvm::raw_ostream::flush_nonempty(&v29);
  }

  llvm::raw_ostream::~raw_ostream(&v29);
  if (v28 < 0)
  {
    p_p = __p;
  }

  if (v28 >= 0)
  {
    v11 = SHIBYTE(v28);
  }

  else
  {
    v11 = v27;
  }

  v12 = log10(**(a1 + 16));
  v29 = p_p;
  v30 = v11;
  LODWORD(v31) = (v12 + 2.0);
  HIDWORD(v31) = 2;
  v13 = llvm::raw_ostream::operator<<(v3, &v29);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    v13 = llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v17[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v17[1] = 0;
  v18 = 18;
  v19 = 1;
  v20 = 1;
  v15 = llvm::raw_ostream::operator<<(v13, v17);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
    if (SHIBYTE(v28) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10004F880(const void *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (!v4 || !*v4)
  {
    return 0;
  }

  v7 = 261;
  v6[0] = a1;
  v6[1] = a2;
  if (llvm::sys::fs::access(v6, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10002BC08();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    v9 = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
    }

    *(&__dst + a2) = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(__dst);
  return 0;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(qword_1002C4568, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3)
      {
        if (!stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
        {
          unlink(v3);
        }

        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(qword_1002C4568, v1);
}

uint64_t llvm::sys::PrintStackTrace(llvm::sys *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  result = backtrace(&qword_1002C4858, 256);
  if (result)
  {
    v5 = result;
    if (!v2)
    {
      v2 = result;
    }

    sub_10004F880(qword_1002C4540, qword_1002C4548[0]);
    result = sub_10004E764(qword_1002C4540, qword_1002C4548[0], &qword_1002C4858, v2, this);
    if ((result & 1) == 0)
    {
      v6 = *(this + 4);
      if (*(this + 3) - v6 > 0x90uLL)
      {
        *(this + 4) += 145;
        if (v5 < 1)
        {
          return result;
        }
      }

      else
      {
        if (v5 < 1)
        {
          return result;
        }
      }

      v7 = 0;
      v8 = v5;
      v9 = &qword_1002C4858;
      v10 = v5;
      do
      {
        while (1)
        {
          dladdr(*v9, &v32);
          dli_fname = v32.dli_fname;
          v13 = strrchr(v32.dli_fname, 47);
          if (v13)
          {
            break;
          }

          v14 = strlen(dli_fname);
          if (v14 > v7)
          {
            v7 = v14;
          }

          ++v9;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        v11 = strlen(v13) - 1;
        if (v11 > v7)
        {
          v7 = v11;
        }

        ++v9;
        --v10;
      }

      while (v10);
      do
      {
        while (1)
        {
LABEL_19:
          v15 = (&unk_1002C4538 + 8 * v10);
          dladdr(v15[100], &v32);
          v28 = &off_1002B5078;
          v29 = "%-2d";
          LODWORD(v30) = v10;
          llvm::raw_ostream::operator<<(this, &v28);
          v16 = v32.dli_fname;
          v17 = strrchr(v32.dli_fname, 47);
          v28 = &off_1002B5098;
          v29 = " %-*s";
          LODWORD(v30) = v7;
          if (v17)
          {
            v31 = v17 + 1;
          }

          else
          {
            v31 = v16;
          }

          llvm::raw_ostream::operator<<(this, &v28);
          v18 = v15[100];
          v28 = &off_1002B50B8;
          v29 = " %#0*lx";
          LODWORD(v30) = 18;
          v31 = v18;
          result = llvm::raw_ostream::operator<<(this, &v28);
          if (v32.dli_sname)
          {
            v19 = *(this + 4);
            if (v19 >= *(this + 3))
            {
              llvm::raw_ostream::write(this, 32);
            }

            else
            {
              *(this + 4) = v19 + 1;
              *v19 = 32;
            }

            strlen(v32.dli_sname);
            v20 = llvm::itaniumDemangle(v32.dli_sname);
            if (v20)
            {
              v21 = v20;
              v22 = strlen(v20);
              v23 = *(this + 4);
              if (v22 <= *(this + 3) - v23)
              {
                if (v22)
                {
                  memcpy(v23, v21, v22);
                  *(this + 4) += v22;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v21, v22);
              }

              free(v21);
            }

            else if (v32.dli_sname)
            {
              v24 = strlen(v32.dli_sname);
              v25 = *(this + 4);
              if (v24 <= *(this + 3) - v25)
              {
                if (v24)
                {
                  memcpy(v25, v32.dli_sname, v24);
                  *(this + 4) += v24;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v32.dli_sname, v24);
              }
            }

            v26 = v15[100] - v32.dli_saddr;
            v28 = &off_1002B50D8;
            v29 = " + %tu";
            v30 = v26;
            result = llvm::raw_ostream::operator<<(this, &v28);
          }

          v27 = *(this + 4);
          if (v27 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v27 + 1;
          *v27 = 10;
          if (v8 == ++v10)
          {
            return result;
          }
        }

        result = llvm::raw_ostream::write(this, 10);
        ++v10;
      }

      while (v8 != v10);
    }
  }

  return result;
}

uint64_t llvm::ThreadPoolStrategy::compute_thread_count(llvm::ThreadPoolStrategy *this)
{
  if (*(this + 4) == 1)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    v5 = *this;
    if (!*this)
    {
      return result;
    }

LABEL_16:
    if (v5 >= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (*(this + 5))
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if ((atomic_load_explicit(&qword_1002C5060, memory_order_acquire) & 1) == 0)
  {
    sub_100278D74();
  }

  if (dword_1002C5058 <= 1)
  {
    result = 1;
  }

  else
  {
    result = dword_1002C5058;
  }

  v5 = *this;
  if (*this)
  {
    goto LABEL_16;
  }

  return result;
}

pthread_t llvm::llvm_execute_on_thread_impl(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v6 = pthread_attr_init(&v13);
  if (v6)
  {
    sub_1000500CC("pthread_attr_init failed", v6);
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v13, a3);
    if (v7)
    {
      sub_1000500CC("pthread_attr_setstacksize failed", v7);
    }
  }

  v12 = 0;
  v8 = pthread_create(&v12, &v13, a1, a2);
  if (v8)
  {
    sub_1000500CC("pthread_create failed", v8);
  }

  v9 = v12;
  v10 = pthread_attr_destroy(&v13);
  if (v10)
  {
    sub_1000500CC("pthread_attr_destroy failed", v10);
  }

  return v9;
}

void sub_1000500CC(char *__s, std::string *a2)
{
  memset(v5, 0, sizeof(v5));
  sub_10004E24C(&v3, __s);
  sub_10004E068(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  llvm::report_fatal_error(&v3, 1);
}

std::string *llvm::llvm_thread_join_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    sub_1000500CC("pthread_join failed", result);
  }

  return result;
}

uint64_t llvm::get_threadid(llvm *this)
{
  v1 = off_1002C3408;
  off_1002C3408();
  if (*v2 == 1)
  {
    off_1002C33F0();
    return *v3;
  }

  else
  {
    sub_1000501FC();
    off_1002C33F0();
    *v5 = v6;
    *(v1)(&off_1002C3408) = 1;
    return *v7;
  }
}

uint64_t sub_1000501FC()
{
  v0 = mach_thread_self();
  off_1002C33F0();
  mach_port_deallocate(v2, *v1);
  return v0;
}

void llvm::set_thread_name(llvm *this, const llvm::Twine *a2)
{
  v5 = v7;
  v6 = xmmword_10028F190;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v5);
  v4 = v3 - 63;
  if (v3 < v3 - 63)
  {
    v4 = v3;
  }

  if (v3 <= 0x3F)
  {
    v4 = 0;
  }

  pthread_setname_np(&v2[v4]);
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t sub_1000502EC()
{
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0);
  result = v2;
  if (!v2)
  {
    *v3 = 0x1900000006;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    result = v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseAffineMapOrIntegerSetReference(mlir::detail::Parser *this, mlir::AffineMap *a2, mlir::IntegerSet *a3)
{
  v5 = *(this + 1);
  v26 = **v5;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v33;
  v32 = 0x400000000;
  v18 = 0;
  v19 = 0;
  *&v34 = &v19;
  *(&v34 + 1) = &v26;
  if ((mlir::detail::Parser::parseCommaSeparatedList(&v26, 1, sub_100050DF4, &v34, " in dimensional identifier list", 31) & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v27;
  v7 = *(v27 + 14);
  if (v7 == 22)
  {
    *&v34 = &v18;
    *(&v34 + 1) = &v26;
    if ((mlir::detail::Parser::parseCommaSeparatedList(&v26, 2, sub_100051244, &v34, " in symbol list", 15) & 1) == 0)
    {
      goto LABEL_10;
    }

    v6 = v27;
    if (*(v27 + 14) != 13)
    {
LABEL_5:
      *&v34 = "expected '->' or ':'";
      v36 = 259;
      if (mlir::detail::Parser::parseToken(&v26, 15, &v34))
      {
        v8 = v18;
        v9 = v19;
        *&v34 = v35;
        *(&v34 + 1) = 0x400000000;
        v22[2] = &v23;
        v23 = &v25;
        v24 = xmmword_10028F1F0;
        v22[0] = &v26;
        v22[1] = &v34;
        if (mlir::detail::Parser::parseCommaSeparatedList(&v26, 1, sub_100052AF0, v22, " in integer set constraint list", 31))
        {
          if (DWORD2(v34))
          {
            *a3 = mlir::IntegerSet::get(v9, v8, v34, DWORD2(v34), v23, v24);
            v11 = 1;
            v12 = v23;
            if (v23 == &v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            AffineConstantExpr = mlir::getAffineConstantExpr(0, **v27, v10);
            v11 = 1;
            v20 = 1;
            *a3 = mlir::IntegerSet::get(v9, v8, &AffineConstantExpr, 1, &v20, 1);
            v12 = v23;
            if (v23 == &v25)
            {
LABEL_22:
              v17 = v34;
              if (v34 == v35)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }
          }
        }

        else
        {
          v11 = 0;
          v12 = v23;
          if (v23 == &v25)
          {
            goto LABEL_22;
          }
        }

        free(v12);
        goto LABEL_22;
      }

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (v7 != 13)
    {
      goto LABEL_5;
    }
  }

  *(v6 + 5) = *(v6 + 7);
  v6[12] = v6[9];
  mlir::Lexer::lexToken((v6 + 1), &v34);
  v14 = v27;
  *(v27 + 7) = v34;
  v14[9] = v35[0];
  v16 = v18;
  v15 = v19;
  *&v34 = v35;
  *(&v34 + 1) = 0x400000000;
  v23 = &v26;
  *&v24 = &v34;
  if (mlir::detail::Parser::parseCommaSeparatedList(&v26, 1, sub_100051298, &v23, " in affine map range", 20))
  {
    *a2 = mlir::AffineMap::get(v15, v16, v34, DWORD2(v34), **v27);
    v11 = 1;
    v17 = v34;
    if (v34 == v35)
    {
      goto LABEL_11;
    }

LABEL_23:
    free(v17);
    goto LABEL_11;
  }

  v11 = 0;
  v17 = v34;
  if (v34 != v35)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v31 != v33)
  {
    free(v31);
  }

  return v11;
}

BOOL mlir::detail::Parser::parseAffineMapReference(mlir::detail::Parser *this, mlir::AffineMap *a2)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v16 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, a2, &v16) & 1) == 0)
  {
    return 0;
  }

  if (!v16)
  {
    return 1;
  }

  v14 = "expected AffineMap, but got IntegerSet";
  v15 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v14, v17);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = sub_100052FFC(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
      {
        do
        {
          v12 = *--v10;
          *v10 = 0;
          if (v12)
          {
            operator delete[]();
          }
        }

        while (v10 != v9);
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

BOOL mlir::detail::Parser::parseAffineExprReference(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = *(a1 + 8);
  v13[0] = **v7;
  v13[1] = v7;
  v14 = 0;
  v15 = 0;
  v8 = 3 * a3;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3);
  v16 = 0;
  v17 = v19;
  v18 = 0x400000000;
  if (v9 >= 5)
  {
    v10 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3), 24);
    a2 = v10;
    v6 = v18;
  }

  if (a3)
  {
    memcpy(v17 + 24 * v6, a2, 8 * v8);
    v6 = v18;
  }

  LODWORD(v18) = v6 + v9;
  v11 = sub_10005131C(v13, 0, 0);
  *a4 = v11;
  if (v17 != v19)
  {
    free(v17);
  }

  return v11 != 0;
}

BOOL mlir::detail::Parser::parseIntegerSetReference(mlir::detail::Parser *this, mlir::IntegerSet *a2)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v16 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, &v16, a2) & 1) == 0)
  {
    return 0;
  }

  if (!v16)
  {
    return 1;
  }

  v14 = "expected IntegerSet, but got AffineMap";
  v15 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v14, v17);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = sub_100052FFC(v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
      {
        do
        {
          v12 = *--v10;
          *v10 = 0;
          if (v12)
          {
            operator delete[]();
          }
        }

        while (v10 != v9);
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 8);
  v10 = **v6;
  v11 = v6;
  v12 = 1;
  v13 = a3;
  v14 = a4;
  v15 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v19 = v21;
  v20 = 0x400000000;
  v9[0] = &v10;
  v9[1] = &v19;
  v7 = 0;
  if (mlir::detail::Parser::parseCommaSeparatedList(&v10, a5, sub_10005310C, v9, " in affine map", 14))
  {
    *a2 = mlir::AffineMap::get(v15, v17 - v15, v19, v20, **v11);
    v7 = 1;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v7;
}

BOOL mlir::detail::Parser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v8[0] = **v5;
  v8[1] = v5;
  v9 = 1;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v13 = v15;
  v14 = 0x400000000;
  v6 = sub_10005131C(v8, 0, 0);
  *a2 = v6;
  if (v13 != v15)
  {
    free(v13);
  }

  return v6 != 0;
}

uint64_t sub_100050DF4(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineDimExpr = mlir::getAffineDimExpr(v5, ***(v4 + 8), a3);

  return sub_100050E48(v4, AffineDimExpr);
}

uint64_t sub_100050E48(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = a1 + 48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (!v11)
    {
LABEL_30:
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v39);
      v22 = *(a1 + 8);
      *(v22 + 56) = v39;
      *(v22 + 72) = v40;
      *&v39 = v8;
      *(&v39 + 1) = v7;
      v40 = a2;
      v23 = *(a1 + 56);
      v24 = *(a1 + 48);
      v25 = &v39;
      if (v23 >= *(a1 + 60))
      {
        if (v24 <= &v39 && v24 + 24 * v23 > &v39)
        {
          v34 = &v39 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (a1 + 64), v23 + 1, 24);
          v24 = *(a1 + 48);
          v25 = &v34[v24];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (a1 + 64), v23 + 1, 24);
          v24 = *(a1 + 48);
          v25 = &v39;
        }
      }

      v26 = v24 + 24 * *(a1 + 56);
      v27 = *v25;
      *(v26 + 16) = *(v25 + 2);
      *v26 = v27;
      ++*(a1 + 56);
      return 1;
    }

LABEL_7:
    v12 = v10 + 24 * v11;
    while (*(v10 + 8) != v7 || v7 && memcmp(*v10, v8, v7))
    {
      v10 += 24;
      if (v10 == v12)
      {
        goto LABEL_30;
      }
    }

    v36 = 1283;
    v35[0] = "redefinition of identifier '";
    v35[2] = v8;
    v35[3] = v7;
    v37[0] = v35;
    v37[2] = "'";
    v38 = 770;
    mlir::detail::Parser::emitError(a1, v37, &v39);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v46;
        v16 = __p;
        if (v46 != __p)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v46 = v14;
        operator delete(v16);
      }

      v17 = v43;
      if (!v43)
      {
        goto LABEL_51;
      }

      v18 = v44;
      v19 = v43;
      if (v44 == v43)
      {
LABEL_50:
        v44 = v17;
        operator delete(v19);
LABEL_51:
        if (v41 != &v42)
        {
          free(v41);
        }

        return v13;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
LABEL_49:
      v19 = v43;
      goto LABEL_50;
    }

    return v13;
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(a1 + 8);
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = a1 + 48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v37[0] = "expected bare identifier";
  v38 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v37, &v39);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v46;
      v31 = __p;
      if (v46 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v46 = v29;
      operator delete(v31);
    }

    v17 = v43;
    if (!v43)
    {
      goto LABEL_51;
    }

    v32 = v44;
    v19 = v43;
    if (v44 == v43)
    {
      goto LABEL_50;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v17);
    goto LABEL_49;
  }

  return v13;
}

uint64_t sub_100051244(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, ***(v4 + 8), a3);

  return sub_100050E48(v4, AffineSymbolExpr);
}

BOOL sub_100051298(uint64_t a1)
{
  v2 = sub_10005131C(*a1, 0, 0);
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v6 = v2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v4 + 1, 8);
    v2 = v6;
    LODWORD(v4) = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

uint64_t sub_10005131C(mlir::detail::Parser *a1, uint64_t a2, int a3)
{
  sub_1000515DC(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 1);
    v9 = (v8 + 56);
    v10 = *(v8 + 56);
    if (v10 == 24)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v14 = *(a1 + 1);
      *(v14 + 56) = v34;
      *(v14 + 72) = v35;
      v12 = 2;
      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    if (v10 == 25)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v11 = *(a1 + 1);
      *(v11 + 56) = v34;
      *(v11 + 72) = v35;
      v12 = 1;
      if (a2)
      {
LABEL_5:
        *&v34 = a2;
        if (a3 == 1)
        {
          v13 = mlir::AffineExpr::operator+(&v34, v7);
        }

        else
        {
          v13 = mlir::AffineExpr::operator-(&v34, v7);
        }

        v16 = v13;
        v15 = a1;
        goto LABEL_17;
      }

LABEL_8:
      v15 = a1;
      v16 = v7;
LABEL_17:
      v25 = v12;
      return sub_10005131C(v15, v16, v25);
    }

    Loc = mlir::Token::getLoc(v9);
    v18 = sub_100051C8C(a1);
    if (!v18)
    {
      if (!a2)
      {
        return v7;
      }

      *&v34 = a2;
      if (a3 == 1)
      {
        return mlir::AffineExpr::operator+(&v34, v7);
      }

      else
      {
        return mlir::AffineExpr::operator-(&v34, v7);
      }
    }

    v19 = v18;
    sub_1000515DC(a1, v7);
    if (v20)
    {
      while (1)
      {
        v21 = v20;
        v22 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v23 = sub_100051C8C(a1);
        if (!v23)
        {
          break;
        }

        v24 = v19;
        Loc = v22;
        v19 = v23;
        v7 = sub_10005258C(a1, v24, v7, v21, v22);
        if (!v7)
        {
          return v7;
        }

        sub_1000515DC(a1, v7);
        if (!v20)
        {
          return 0;
        }
      }

      v7 = sub_10005258C(a1, v19, v7, v21, Loc);
      if (v7)
      {
        if (a2)
        {
          *&v34 = a2;
          if (a3 == 1)
          {
            v28 = mlir::AffineExpr::operator+(&v34, v7);
          }

          else
          {
            v28 = mlir::AffineExpr::operator-(&v34, v7);
          }

          v7 = v28;
        }

        v29 = *(a1 + 1);
        v30 = (v29 + 56);
        v31 = *(v29 + 56);
        if (v31 == 24)
        {
          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v33 = *(a1 + 1);
          *(v33 + 56) = v34;
          *(v33 + 72) = v35;
          v25 = 2;
        }

        else
        {
          if (v31 != 25)
          {
            return v7;
          }

          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v32 = *(a1 + 1);
          *(v32 + 56) = v34;
          *(v32 + 72) = v35;
          v25 = 1;
        }

        v15 = a1;
        v16 = v7;
        return sub_10005131C(v15, v16, v25);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void sub_1000515DC(mlir::detail::Parser *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v5 = *(v2 + 56);
  v3 = (v2 + 56);
  v4 = v5;
  if (v5 > 20)
  {
    v6 = (v4 - 25);
    if (v6 <= 0x33)
    {
      if (((1 << (v4 - 25)) & 0x101000004000) != 0)
      {
        goto LABEL_43;
      }

      if (((1 << (v4 - 25)) & 0x21) != 0)
      {
        if (a2)
        {
          v72[0] = "missing right operand of binary operator";
          v74 = 259;
          mlir::detail::Parser::emitError(a1, v72, v63);
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }

          if (v71 != 1)
          {
            return;
          }

          if (v70 != &v71)
          {
            free(v70);
          }

          v7 = __p;
          if (__p)
          {
            v8 = v69;
            v9 = __p;
            if (v69 != __p)
            {
              do
              {
                v8 = sub_100052FFC(v8 - 1);
              }

              while (v8 != v7);
              v9 = __p;
            }

            v69 = v7;
            operator delete(v9);
          }

          v10 = v66;
          if (v66)
          {
            v11 = v67;
            v12 = v66;
            if (v67 != v66)
            {
              do
              {
                v13 = *--v11;
                *v11 = 0;
                if (v13)
                {
                  operator delete[]();
                }
              }

              while (v11 != v10);
              v12 = v66;
            }

            v67 = v10;
            operator delete(v12);
          }

          v46 = v64;
          if (v64 == &v65)
          {
            return;
          }
        }

        else
        {
          v72[0] = "missing left operand of binary operator";
          v74 = 259;
          mlir::detail::Parser::emitError(a1, v72, v54);
          if (v54[0])
          {
            mlir::InFlightDiagnostic::report(v54);
          }

          if (v62 != 1)
          {
            return;
          }

          if (v61 != &v62)
          {
            free(v61);
          }

          v38 = v59;
          if (v59)
          {
            v39 = v60;
            v40 = v59;
            if (v60 != v59)
            {
              do
              {
                v39 = sub_100052FFC(v39 - 1);
              }

              while (v39 != v38);
              v40 = v59;
            }

            v60 = v38;
            operator delete(v40);
          }

          v41 = v57;
          if (v57)
          {
            v42 = v58;
            v43 = v57;
            if (v58 != v57)
            {
              do
              {
                v44 = *--v42;
                *v42 = 0;
                if (v44)
                {
                  operator delete[]();
                }
              }

              while (v42 != v41);
              v43 = v57;
            }

            v58 = v41;
            operator delete(v43);
          }

          v46 = v55;
          if (v55 == &v56)
          {
            return;
          }
        }

        goto LABEL_104;
      }

      if (v6 == 51)
      {
        v72[0] = "expected symbol keyword";
        v74 = 259;
        v21 = a1;
        if ((mlir::detail::Parser::parseToken(a1, 76, v72) & 1) == 0)
        {
          return;
        }

        *&v47 = "expected '(' at start of SSA symbol";
        v49 = 259;
        if ((mlir::detail::Parser::parseToken(v21, 21, &v47) & 1) == 0)
        {
          return;
        }

        sub_100051DFC(v21, 1);
        if (!v22)
        {
          return;
        }

        v23 = "expected ')' at end of SSA symbol";
LABEL_90:
        v72[0] = v23;
        v74 = 259;
        mlir::detail::Parser::parseToken(v21, 28, v72);
        return;
      }
    }

    if (v4 == 21)
    {
      v72[0] = "expected '('";
      v74 = 259;
      v21 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 21, v72) & 1) == 0)
      {
        return;
      }

      v30 = v21;
      if (*(*(v21 + 1) + 56) != 28)
      {
        if (!sub_10005131C(v21, 0, 0))
        {
          return;
        }

        v23 = "expected ')'";
        goto LABEL_90;
      }

      *&v47 = "no expression inside parentheses";
      v49 = 259;
    }

    else
    {
      if (v4 != 24)
      {
        goto LABEL_42;
      }

      v72[0] = "expected '-'";
      v74 = 259;
      v25 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 24, v72) & 1) == 0)
      {
        return;
      }

      v26 = sub_1000515DC(v25, a2);
      if (v26)
      {
        v72[0] = v26;
        mlir::AffineExpr::operator*(v72, -1);
        return;
      }

      *&v47 = "missing operand of negation";
      v49 = 259;
      v30 = v25;
    }

    mlir::detail::Parser::emitError(v30, &v47, v72);
    if (v72[0])
    {
      mlir::InFlightDiagnostic::report(v72);
    }

    if (v81 == 1)
    {
      v45 = v72;
      goto LABEL_100;
    }

    return;
  }

  if (v4 > 9)
  {
    if (v4 != 10)
    {
      if (v4 != 12)
      {
        goto LABEL_42;
      }

LABEL_43:
      sub_10005225C(a1);
      return;
    }

    v14 = a1;
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(*(a1 + 1) + 64), *(*(a1 + 1) + 72));
    if (v16)
    {
      v17 = UInt64IntegerValue;
      if ((UInt64IntegerValue & 0x8000000000000000) == 0)
      {
        v18 = v14[1];
        *(v18 + 5) = *(v18 + 56);
        *(v18 + 12) = *(v18 + 9);
        mlir::Lexer::lexToken((v14[1] + 8), &v47);
        v19 = v14[1];
        *(v19 + 56) = v47;
        *(v19 + 9) = v48;
        mlir::Builder::getAffineConstantExpr(v14, v17, v20);
        return;
      }
    }

    *&v47 = "constant too large for index";
    v49 = 259;
    mlir::detail::Parser::emitError(v14, &v47, v72);
    if (v72[0])
    {
      mlir::InFlightDiagnostic::report(v72);
    }

    if (v81 != 1)
    {
      return;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v31 = v78;
    if (v78)
    {
      v32 = v79;
      v33 = v78;
      if (v79 != v78)
      {
        do
        {
          v32 = sub_100052FFC(v32 - 1);
        }

        while (v32 != v31);
        v33 = v78;
      }

      v79 = v31;
      operator delete(v33);
    }

    v34 = v76;
    if (v76)
    {
      v35 = v77;
      v36 = v76;
      if (v77 != v76)
      {
        do
        {
          v37 = *--v35;
          *v35 = 0;
          if (v37)
          {
            operator delete[]();
          }
        }

        while (v35 != v34);
        v36 = v76;
      }

      v77 = v34;
      operator delete(v36);
    }

    v46 = v73;
    if (v73 == &v75)
    {
      return;
    }

LABEL_104:
    free(v46);
    return;
  }

  if (v4 == 3)
  {
    goto LABEL_43;
  }

  if (v4 == 6)
  {
    sub_100051DFC(a1, 0);
    return;
  }

LABEL_42:
  v27 = a1;
  isKeyword = mlir::Token::isKeyword(v3);
  a1 = v27;
  if (isKeyword)
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v72[0] = "missing right operand of binary operator";
    v74 = 259;
    mlir::detail::Parser::emitError(v27, v72, v52);
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
    }

    if (v53 == 1)
    {
      v45 = v52;
LABEL_100:
      sub_100052F18(v45 + 1);
    }
  }

  else
  {
    v72[0] = "expected affine expression";
    v74 = 259;
    mlir::detail::Parser::emitError(v27, v72, v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v51 == 1)
    {
      v45 = v50;
      goto LABEL_100;
    }
  }
}