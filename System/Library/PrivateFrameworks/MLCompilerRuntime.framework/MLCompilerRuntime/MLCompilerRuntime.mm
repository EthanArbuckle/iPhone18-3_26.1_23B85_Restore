uint64_t sub_25632B460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 152) = a1;
  *(a3 + 160) = a2;
  if (*(a3 + 80))
  {
    goto LABEL_13;
  }

  *(a3 + 80) = 1;
  if (*(a3 + 84))
  {
    if (*(a3 + 8))
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(a3 + 84) = 1;
    if (*(a3 + 8))
    {
LABEL_4:
      if (*(a3 + 16))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  *(a3 + 8) = *MEMORY[0x277D85E00];
  if (*(a3 + 16))
  {
LABEL_5:
    v4 = *(a3 + 40);
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a3 + 16) = *MEMORY[0x277D85E08];
  v4 = *(a3 + 40);
  if (!v4)
  {
LABEL_11:
    sub_25632C058(a3);
    v7 = sub_25632C0FC(*(v3 + 8), 0x4000, v3);
    v5 = *(v3 + 24);
    *(*(v3 + 40) + 8 * v5) = v7;
    v4 = *(v3 + 40);
    v6 = *(v4 + 8 * v5);
    goto LABEL_12;
  }

LABEL_10:
  v5 = *(a3 + 24);
  v6 = *(v4 + 8 * v5);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(v3 + 56) = *(v6 + 32);
  v8 = *(v6 + 16);
  *(v3 + 72) = v8;
  *(v3 + 136) = v8;
  *(v3 + 8) = **(v4 + 8 * v5);
  *(v3 + 48) = *v8;
LABEL_13:
  v9 = MEMORY[0x277D85DF8];
  while (2)
  {
    v10 = *(v3 + 72);
    *v10 = *(v3 + 48);
    v11 = *(v3 + 84);
    v12 = v10;
LABEL_15:
    LODWORD(v13) = v11;
    do
    {
      v14 = byte_25637C898[*v12];
      if (word_25637C998[v13])
      {
        *(v3 + 112) = v13;
        *(v3 + 120) = v12;
      }

      v15 = v13;
      v16 = word_25637CD38[v13] + v14;
      if (v13 != word_25637CA2C[v16])
      {
        do
        {
          v15 = word_25637CDDC[v15];
          if (v15 >= 74)
          {
            v14 = *(&unk_25637CE80 + v14);
          }

          v16 = word_25637CD38[v15] + v14;
        }

        while (word_25637CA2C[v16] != v15);
      }

      v13 = word_25637CEAC[v16];
      ++v12;
    }

    while (word_25637CD38[v13] != 347);
LABEL_24:
    v92 = v10;
    v17 = v13;
LABEL_25:
    v18 = word_25637C998[v17];
    if (!v18)
    {
      v12 = *(v3 + 120);
      v18 = word_25637C998[*(v3 + 112)];
    }

    v19 = v18;
    *(v3 + 136) = v92;
    *(v3 + 64) = v12 - v92;
    *(v3 + 48) = *v12;
    *v12 = 0;
    *(v3 + 72) = v12;
    if (!*(v3 + 132))
    {
      goto LABEL_35;
    }

    while (1)
    {
      if (!v19)
      {
        fwrite("--scanner backing up\n", 0x15uLL, 1uLL, *v9);
LABEL_102:
        *v12 = *(v3 + 48);
        v12 = *(v3 + 120);
        v17 = *(v3 + 112);
        goto LABEL_25;
      }

      v20 = *v9;
      if (v19 <= 14)
      {
        v21 = word_25637D1B8[v19];
        v91 = *(v3 + 136);
        fprintf(v20, "--accepting rule at line %ld (%s)\n");
        goto LABEL_35;
      }

      if (v19 != 16)
      {
        break;
      }

      fwrite("--(end of buffer or a NUL)\n", 0x1BuLL, 1uLL, v20);
LABEL_36:
      v93 = *(v3 + 136);
      *v12 = *(v3 + 48);
      v23 = *(v3 + 40);
      v24 = *(v3 + 24);
      v25 = *(v23 + 8 * v24);
      if (*(v25 + 64))
      {
        v26 = *(v3 + 56);
      }

      else
      {
        v26 = *(v25 + 32);
        *(v3 + 56) = v26;
        *v25 = *(v3 + 8);
        v25 = *(v23 + 8 * v24);
        *(v25 + 64) = 1;
      }

      v27 = *(v3 + 72);
      v28 = *(v25 + 8);
      if (v27 <= &v28[v26])
      {
        v66 = v12 - v93;
        v67 = *(v3 + 136);
        v12 = &v67[v12 - v93 - 1];
        *(v3 + 72) = v12;
        v17 = *(v3 + 84);
        v92 = v67;
        if (v66 >= 2)
        {
          v68 = v67;
          while (*v68)
          {
            v69 = byte_25637C898[*v68];
            if (word_25637C998[v17])
            {
              goto LABEL_93;
            }

LABEL_94:
            v70 = v17;
            v71 = word_25637CD38[v17] + v69;
            if (v17 != word_25637CA2C[v71])
            {
              do
              {
                v70 = word_25637CDDC[v70];
                if (v70 >= 74)
                {
                  v69 = *(&unk_25637CE80 + v69);
                }

                v71 = word_25637CD38[v70] + v69;
              }

              while (word_25637CA2C[v71] != v70);
            }

            v17 = word_25637CEAC[v71];
            if (++v68 == v12)
            {
              goto LABEL_103;
            }
          }

          v69 = 1u;
          if (!word_25637C998[v17])
          {
            goto LABEL_94;
          }

LABEL_93:
          *(v3 + 112) = v17;
          *(v3 + 120) = v68;
          goto LABEL_94;
        }

LABEL_103:
        if (word_25637C998[v17])
        {
          *(v3 + 112) = v17;
          *(v3 + 120) = v12;
        }

        v72 = v17;
        v73 = word_25637CD38[v17] + 1;
        if (v17 != word_25637CA2C[v73])
        {
          do
          {
            v74 = word_25637CDDC[v72];
            v72 = v74;
            v73 = word_25637CD38[v74] + 1;
          }

          while (v74 != word_25637CA2C[v73]);
        }

        if (v73)
        {
          v75 = word_25637CEAC[v73];
          if (v75 != 73)
          {
            v11 = v75;
            *(v3 + 72) = ++v12;
            v10 = v92;
            goto LABEL_15;
          }
        }

        goto LABEL_25;
      }

      if (v27 > &v28[v26 + 1])
      {
        sub_25632C238("fatal flex scanner internal error--end of buffer missed");
      }

      v10 = *(v3 + 136);
      if (!*(v25 + 60))
      {
        if (v27 - v10 != 1)
        {
          goto LABEL_86;
        }

        goto LABEL_82;
      }

      v29 = ~v10 + v27;
      if (v29 >= 1)
      {
        LODWORD(v30) = 0;
        v31 = (v27 - v10 - 2);
        if (v31 < 7)
        {
          v32 = *(v3 + 136);
        }

        else
        {
          v32 = *(v3 + 136);
          if ((v28 - v10) >= 0x20)
          {
            v33 = v31 + 1;
            if (v31 >= 0x1F)
            {
              v34 = v33 & 0x1FFFFFFE0;
              v35 = (v10 + 16);
              v36 = v28 + 16;
              v37 = v33 & 0x1FFFFFFE0;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v35 += 2;
                v36 += 2;
                v37 -= 32;
              }

              while (v37);
              if (v33 == v34)
              {
                goto LABEL_62;
              }

              if ((v33 & 0x18) != 0)
              {
                goto LABEL_54;
              }

              v32 = &v10[v34];
              v28 += v34;
              LODWORD(v30) = v33 & 0xFFFFFFE0;
            }

            else
            {
              v34 = 0;
LABEL_54:
              v30 = v33 & 0x1FFFFFFF8;
              v39 = &v28[v33 & 0x1FFFFFFF8];
              v32 = &v10[v33 & 0x1FFFFFFF8];
              v40 = &v10[v34];
              v41 = &v28[v34];
              v42 = v34 - (v33 & 0x1FFFFFFF8);
              do
              {
                v43 = *v40++;
                *v41++ = v43;
                v42 += 8;
              }

              while (v42);
              v28 = v39;
              if (v33 == v30)
              {
LABEL_62:
                v25 = *(*(v3 + 40) + 8 * *(v3 + 24));
                goto LABEL_63;
              }
            }
          }
        }

        v44 = v30 + v10 - v27 + 1;
        do
        {
          v45 = *v32++;
          *v28++ = v45;
        }

        while (!__CFADD__(v44++, 1));
        goto LABEL_62;
      }

LABEL_63:
      if (*(v25 + 64) == 2)
      {
        *(v3 + 56) = 0;
        *(v25 + 32) = 0;
        if (v29)
        {
          goto LABEL_65;
        }

LABEL_76:
        sub_25632C270(*(v3 + 8), v3);
        v47 = *(v3 + 56);
        v25 = *(*(v3 + 40) + 8 * *(v3 + 24));
        v48 = 1;
        goto LABEL_77;
      }

      v94 = v3;
      v49 = v29 + 1;
      if (*(v25 + 24) == v29 + 1)
      {
        v50 = *(v3 + 72);
        do
        {
          if (!*(v25 + 40))
          {
            *(v25 + 8) = 0;
LABEL_155:
            sub_25632C238("fatal error - scanner input buffer overflow");
          }

          v51 = *(v25 + 8);
          *(v25 + 24) = 2 * v49;
          v52 = malloc_type_realloc(v51, 2 * v49 + 2, 0xAC8B59EEuLL);
          *(v25 + 8) = v52;
          if (!v52)
          {
            goto LABEL_155;
          }

          v50 = &v52[v50 - v51];
          v94[9] = v50;
          v25 = *(v94[5] + 8 * v94[3]);
        }

        while (*(v25 + 24) == v49);
      }

      v3 = v94;
      v53 = *v94;
      v54 = std::istream::get();
      if (v54 == -1)
      {
        v94[7] = 0;
        ++*(v94[20] + 12);
        v25 = *(v94[5] + 8 * v94[3]);
        v9 = MEMORY[0x277D85DF8];
        *(v25 + 32) = 0;
        if (v29)
        {
LABEL_65:
          v47 = 0;
          v48 = 2;
          *(v25 + 64) = 2;
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      *(*(*(v94[5] + 8 * v94[3]) + 8) + v29) = v54;
      v94[7] = 1;
      v55 = v94[20];
      ++*(v55 + 12);
      v9 = MEMORY[0x277D85DF8];
      if (v54 == 10)
      {
        *(v55 + 8) = (*(v55 + 8) + 1);
      }

      v48 = 0;
      v25 = *(v94[5] + 8 * v94[3]);
      *(v25 + 32) = 1;
      v47 = 1;
LABEL_77:
      v56 = v47 + v29;
      if (v56 <= *(v25 + 24))
      {
        v63 = *(v25 + 8);
      }

      else
      {
        v57 = v9;
        v58 = v56 + (v47 >> 1);
        v59 = malloc_type_realloc(*(v25 + 8), v58, 0xAC8B59EEuLL);
        v60 = *(v3 + 40);
        v61 = *(v3 + 24);
        *(*(v60 + 8 * v61) + 8) = v59;
        v62 = *(v60 + 8 * v61);
        v63 = *(v62 + 8);
        if (!v63)
        {
          sub_25632C238("out of dynamic memory in yy_get_next_buffer()");
        }

        *(v62 + 24) = v58 - 2;
        v56 = *(v3 + 56) + v29;
        v9 = v57;
      }

      *(v3 + 56) = v56;
      *(v63 + v56) = 0;
      *(*(*(*(v3 + 40) + 8 * *(v3 + 24)) + 8) + *(v3 + 56) + 1) = 0;
      v64 = *(v3 + 40);
      v65 = *(v3 + 24);
      v10 = *(*(v64 + 8 * v65) + 8);
      *(v3 + 136) = v10;
      if (v48 != 1)
      {
        if (v48)
        {
          v28 = *(*(v64 + 8 * v65) + 8);
          v26 = *(v3 + 56);
LABEL_86:
          v12 = &v28[v26];
          *(v3 + 72) = &v28[v26];
          v17 = *(v3 + 84);
          v92 = v10;
          if (v10 < v12)
          {
            LODWORD(v13) = *(v3 + 84);
            v76 = v10;
            while (*v76)
            {
              v77 = byte_25637C898[*v76];
              if (word_25637C998[v13])
              {
                goto LABEL_113;
              }

LABEL_114:
              v78 = v13;
              v79 = word_25637CD38[v13] + v77;
              if (v13 != word_25637CA2C[v79])
              {
                do
                {
                  v78 = word_25637CDDC[v78];
                  if (v78 >= 74)
                  {
                    v77 = *(&unk_25637CE80 + v77);
                  }

                  v79 = word_25637CD38[v78] + v77;
                }

                while (word_25637CA2C[v79] != v78);
              }

              LODWORD(v13) = word_25637CEAC[v79];
              if (++v76 == v12)
              {
                goto LABEL_24;
              }
            }

            v77 = 1u;
            if (!word_25637C998[v13])
            {
              goto LABEL_114;
            }

LABEL_113:
            *(v3 + 112) = v13;
            *(v3 + 120) = v76;
            goto LABEL_114;
          }

          goto LABEL_25;
        }

        v80 = v12 - v93;
        v12 = &v10[v12 - v93 - 1];
        *(v3 + 72) = v12;
        v11 = *(v3 + 84);
        if (v80 >= 2)
        {
          v81 = v10;
          while (*v81)
          {
            v82 = byte_25637C898[*v81];
            if (word_25637C998[v11])
            {
              goto LABEL_126;
            }

LABEL_127:
            v83 = v11;
            v84 = word_25637CD38[v11] + v82;
            if (v11 != word_25637CA2C[v84])
            {
              do
              {
                v83 = word_25637CDDC[v83];
                if (v83 >= 74)
                {
                  v82 = *(&unk_25637CE80 + v82);
                }

                v84 = word_25637CD38[v83] + v82;
              }

              while (word_25637CA2C[v84] != v83);
            }

            v11 = word_25637CEAC[v84];
            if (++v81 == v12)
            {
              goto LABEL_15;
            }
          }

          v82 = 1u;
          if (!word_25637C998[v11])
          {
            goto LABEL_127;
          }

LABEL_126:
          *(v3 + 112) = v11;
          *(v3 + 120) = v81;
          goto LABEL_127;
        }

        goto LABEL_15;
      }

LABEL_82:
      *(v3 + 88) = 0;
      *(v3 + 72) = v10;
      v19 = (*(v3 + 84) - 1) / 2 + 17;
      if (!*(v3 + 132))
      {
        goto LABEL_35;
      }
    }

    if (v19 == 15)
    {
      fprintf(v20, "--accepting default rule (%s)\n", *(v3 + 136));
LABEL_160:
      sub_25632C238("flex scanner jammed");
    }

    v22 = ((*(v3 + 84) - 1) / 2);
    fprintf(v20, "--EOF (start condition %d)\n");
LABEL_35:
    switch(v19)
    {
      case 0:
        goto LABEL_102;
      case 1:
      case 12:
      case 13:
        continue;
      case 2:
        return 262;
      case 3:
        return 263;
      case 4:
        return 264;
      case 5:
        return 265;
      case 6:
        v86 = strlen(*(v3 + 136));
        v87 = strndup((*(v3 + 136) + 1), v86 - 2);
        goto LABEL_151;
      case 7:
        *__error() = 0;
        **(v3 + 152) = strtod(*(v3 + 136), 0);
        if (*__error() == 34)
        {
          v88 = *(v3 + 136);
          fprintf(*v9, "Error converting '%s' to an fp64 value.\n");
          goto LABEL_148;
        }

        result = 259;
        break;
      case 8:
        *__error() = 0;
        **(v3 + 152) = strtoll(*(v3 + 136), 0, 10);
        if (*__error() != 34)
        {
          goto LABEL_149;
        }

        v90 = *(v3 + 136);
        fprintf(*v9, "Error converting '%s' to an i64 value.\n");
        goto LABEL_148;
      case 9:
        *__error() = 0;
        **(v3 + 152) = strtoll(*(v3 + 136), 0, 16);
        if (*__error() == 34)
        {
          v89 = *(v3 + 136);
          fprintf(*v9, "Error converting hex value '%s' to an i64.\n");
LABEL_148:
          result = 0;
        }

        else
        {
LABEL_149:
          result = 260;
        }

        break;
      case 10:
        **(v3 + 152) = strdup(*(v3 + 136));
        return 258;
      case 11:
        v87 = strdup(*(v3 + 136));
LABEL_151:
        **(v3 + 152) = v87;
        return 261;
      case 14:
        **(v3 + 152) = **(v3 + 136);
        return **(v3 + 136);
      case 15:
        goto LABEL_160;
      case 16:
        goto LABEL_36;
      case 17:
        return 0;
      default:
        sub_25632C238("fatal flex scanner internal error--no action found");
    }

    return result;
  }
}

double sub_25632C058(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0xAC8B59EEuLL);
      a1[5] = v5;
      if (v5)
      {
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      sub_25632C238("out of dynamic memory in yyensure_buffer_stack()");
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0x36F1E75FuLL);
    a1[5] = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_25637C880;
  }

  return result;
}

_DWORD *sub_25632C0FC(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0x36F1E75FuLL);
  if (!v6 || (v7 = v6, v6[6] = a2, v8 = malloc_type_malloc(a2 + 2, 0x36F1E75FuLL), (*(v7 + 1) = v8) == 0))
  {
    sub_25632C238("out of dynamic memory in yy_create_buffer()");
  }

  v7[10] = 1;
  v9 = *__error();
  *(v7 + 4) = 0;
  **(v7 + 1) = 0;
  *(*(v7 + 1) + 1) = 0;
  *(v7 + 2) = *(v7 + 1);
  v7[12] = 1;
  v7[16] = 0;
  v10 = *(a3 + 40);
  if (!v10)
  {
    *v7 = a1;
    v7[15] = 1;
LABEL_7:
    *(v7 + 13) = 1;
    goto LABEL_8;
  }

  v11 = *(a3 + 24);
  v12 = *(v10 + 8 * v11);
  if (v12 == v7)
  {
    *(a3 + 56) = *(v12 + 32);
    v13 = *(v12 + 16);
    *(a3 + 72) = v13;
    *(a3 + 136) = v13;
    *(a3 + 8) = **(v10 + 8 * v11);
    *(a3 + 48) = *v13;
  }

  *v7 = a1;
  v7[15] = 1;
  if (*(v10 + 8 * *(a3 + 24)) != v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7[11] = 0;
  *__error() = v9;
  return v7;
}

int *sub_25632C270(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (sub_25632C058(a2), v6 = sub_25632C0FC(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = v6, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
    v8 = *__error();
    if (v7)
    {
      *(v7 + 32) = 0;
      **(v7 + 8) = 0;
      *(*(v7 + 8) + 1) = 0;
      *(v7 + 16) = *(v7 + 8);
      *(v7 + 48) = 1;
      *(v7 + 64) = 0;
      v9 = *(a2 + 40);
      if (v9)
      {
        if (*(v9 + 8 * *(a2 + 24)) == v7)
        {
          v10 = *(a2 + 24);
          v11 = *(v9 + 8 * v10);
          *(a2 + 56) = *(v11 + 32);
          v12 = *(v11 + 16);
          *(a2 + 72) = v12;
          *(a2 + 136) = v12;
          *(a2 + 8) = **(v9 + 8 * v10);
          *(a2 + 48) = *v12;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = *__error();
  }

  *v7 = a1;
  *(v7 + 60) = 1;
  v13 = *(a2 + 40);
  if (v13)
  {
    v13 = *(v13 + 8 * *(a2 + 24));
  }

  if (v13 != v7)
  {
    *(v7 + 52) = 1;
  }

  *(v7 + 44) = 0;
  result = __error();
  v15 = *(a2 + 40);
  v16 = *(a2 + 24);
  v17 = *(v15 + 8 * v16);
  *result = v8;
  *(a2 + 56) = *(v17 + 32);
  v18 = *(v17 + 16);
  *(a2 + 72) = v18;
  *(a2 + 136) = v18;
  *(a2 + 8) = **(v15 + 8 * v16);
  *(a2 + 48) = *v18;
  return result;
}

uint64_t sub_25632C3E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = malloc_type_malloc(0xA8uLL, 0x36F1E75FuLL);
    *a2 = v4;
    if (v4)
    {
      v5 = v4;
      result = 0;
      v5[20] = 0;
      *(v5 + 8) = 0u;
      *(v5 + 9) = 0u;
      *(v5 + 6) = 0u;
      *(v5 + 7) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      **a2 = a1;
      v7 = *a2;
      *(v7 + 23) = 0;
      *(v7 + 24) = 0;
      v7[13] = 0;
      *(v7 + 1) = 0u;
      *(v7 + 3) = 0u;
      v7[5] = 0;
      v7[9] = 0;
      v7[10] = 0;
      return result;
    }

    v8 = __error();
    v9 = 12;
  }

  else
  {
    v8 = __error();
    v9 = 22;
  }

  *v8 = v9;
  return 1;
}

uint64_t sub_25632C490(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = &v2[*(a1 + 24)];
    for (i = *v3; *v3; i = *v3)
    {
      *v3 = 0;
      if (*(i + 40))
      {
        free(*(i + 8));
      }

      free(i);
      v5 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v5) = 0;
      v2 = *(a1 + 40);
      if (!v2)
      {
        break;
      }

      v6 = v2[v5];
      if (v6)
      {
        v2[v5] = 0;
        if (*(v6 + 40))
        {
          free(*(v6 + 8));
        }

        free(v6);
        v5 = *(a1 + 24);
        *(*(a1 + 40) + 8 * v5) = 0;
        if (v5)
        {
          *(a1 + 24) = --v5;
        }

        v2 = *(a1 + 40);
        if (!v2)
        {
          break;
        }

        v7 = v2[v5];
        if (v7)
        {
          v8 = *(v7 + 32);
          v9 = *(v7 + 16);
          *(a1 + 72) = v9;
          *(a1 + 136) = v9;
          v10 = v2[v5];
          *(a1 + 56) = v8;
          *(a1 + 8) = *v10;
          *(a1 + 48) = *v9;
          *(a1 + 88) = 1;
        }
      }

      v3 = &v2[v5];
    }
  }

  free(v2);
  *(a1 + 40) = 0;
  free(*(a1 + 104));
  free(a1);
  return 0;
}

void sub_25632C5AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_2563504CC(a1, &v17);
  v3 = v17;
  v4 = v18;
  if (v17 != v18)
  {
    while (1)
    {
      v5 = *v3;
      if ((*(**v3 + 16))(*v3) == 1)
      {
        v6 = *(v5 + 96);
        if (v6 <= 1)
        {
          if (!v6)
          {
            if (*(v5 + 71) < 0)
            {
              sub_25632CB5C(__p, *(v5 + 48), *(v5 + 56));
            }

            else
            {
              *__p = *(v5 + 48);
              v14 = *(v5 + 64);
            }

            *&v15 = *(v5 + 72);
            sub_25632D24C(a2, __p);
LABEL_6:
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_8;
          }

          if (v6 == 1)
          {
            if (*(v5 + 71) < 0)
            {
              sub_25632CB5C(__p, *(v5 + 48), *(v5 + 56));
            }

            else
            {
              *__p = *(v5 + 48);
              v14 = *(v5 + 64);
            }

            *&v15 = *(v5 + 72);
            sub_25632DBF0(a2, __p);
            goto LABEL_6;
          }
        }

        else
        {
          switch(v6)
          {
            case 2:
              if (*(v5 + 71) < 0)
              {
                sub_25632CB5C(__p, *(v5 + 48), *(v5 + 56));
              }

              else
              {
                *__p = *(v5 + 48);
                v14 = *(v5 + 64);
              }

              if (*(v5 + 95) < 0)
              {
                sub_25632CB5C(&v15, *(v5 + 72), *(v5 + 80));
              }

              else
              {
                v15 = *(v5 + 72);
                v16 = *(v5 + 88);
              }

              sub_25632DF74(a2, __p);
              if (SHIBYTE(v16) < 0)
              {
                operator delete(v15);
              }

              goto LABEL_6;
            case 3:
              if (*(v5 + 71) < 0)
              {
                sub_25632CB5C(__p, *(v5 + 48), *(v5 + 56));
              }

              else
              {
                *__p = *(v5 + 48);
                v14 = *(v5 + 64);
              }

              sub_25632CD38(&v15, (v5 + 72));
              sub_25632E308(a2, __p);
              v7 = v15;
              if (v15)
              {
                v8 = *(&v15 + 1);
                v9 = v15;
                if (*(&v15 + 1) != v15)
                {
                  do
                  {
                    v10 = *(v8 - 1);
                    v8 -= 3;
                    if (v10 < 0)
                    {
                      operator delete(*v8);
                    }
                  }

                  while (v8 != v7);
                  v9 = v15;
                }

                *(&v15 + 1) = v7;
                operator delete(v9);
              }

              goto LABEL_6;
            case 4:
              if (*(v5 + 71) < 0)
              {
                sub_25632CB5C(__p, *(v5 + 48), *(v5 + 56));
              }

              else
              {
                *__p = *(v5 + 48);
                v14 = *(v5 + 64);
              }

              v15 = 0uLL;
              v16 = 0;
              v12 = *(v5 + 72);
              v11 = *(v5 + 80);
              if (v11 != v12)
              {
                if (((v11 - v12) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_25632CE68();
              }

              sub_25632E69C(a2, __p);
              if (v15)
              {
                *(&v15 + 1) = v15;
                operator delete(v15);
              }

              goto LABEL_6;
          }
        }
      }

LABEL_8:
      if (++v3 == v4)
      {
        v3 = v17;
        break;
      }
    }
  }

  if (v3)
  {
    v18 = v3;
    operator delete(v3);
  }
}

void sub_25632C8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v20);
  _Unwind_Resume(a1);
}

void sub_25632C98C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a1 != *(a1 + 8))
  {
    sub_25636265C(a2, *a1, &v3);
    if (v4)
    {
      std::__shared_weak_count::lock(v4);
    }

    operator new();
  }
}

void sub_25632CB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_25632EA30(&a11);
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  sub_25632D02C(v14);
  _Unwind_Resume(a1);
}

void *sub_25632CB5C(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_25632CBF8();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_25632CC10(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_25632CC6C(exception, a1);
  __cxa_throw(exception, &unk_286854828, MEMORY[0x277D825F0]);
}

std::logic_error *sub_25632CC6C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_25632CCA0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_286854858, MEMORY[0x277D82620]);
}

uint64_t sub_25632CCE8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_5:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_5;
  }

  return a1;
}

void *sub_25632CD38(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_25632CE68();
  }

  return result;
}

uint64_t sub_25632CE80(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_25632CEE0(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_25632CF64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_25632CFE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_25632D02C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_25632D0E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 16);
      if (v4 != -1)
      {
        (off_286854870[v4])(&v7, v2 + 5);
      }

      *(v2 + 16) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_25632D198(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_25632D1AC(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
    }

    a2[1] = v2;

    operator delete(v5);
  }
}

void sub_25632D238(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t **sub_25632D24C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25632D5B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_25632D5C8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != -1)
      {
        (off_286854870[v3])(&v5, v2 + 40);
      }

      *(v2 + 64) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_25632D654(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v38 + v32 + v29;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v30 + v38 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v44 + v31 + v33;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v65 + v56 + v54 + v55;
      v47 = __ROR8__(v65 + v56 + v54, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

void sub_25632DA8C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_25632CCA0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_25632DBF0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25632DF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_25632DF74(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25632E2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_25632E308(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25632E684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_25632E69C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25632EA18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25632EA30(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

double sub_25632EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 4)
  {
    v6 = *(a3 + 32);

    *&result = sub_25637969C(v6, 5, a2 + 48).n128_u64[0];
  }

  return result;
}

void sub_25632EB1C()
{
  v0 = nullsub_34();

  j__free(v0);
}

void sub_25632EB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 5)
  {
    sub_25632C5AC(a2, v18);
    v15 = 0;
    sub_25632ED40(v16, v18);
    v5 = *(a3 + 208);
    if (v5 >= *(a3 + 216))
    {
      v6 = sub_25632F420((a3 + 200), &v15);
    }

    else
    {
      *v5 = v15;
      sub_25632ED40((v5 + 2), v16);
      v6 = (v5 + 12);
      *(a3 + 208) = v5 + 12;
    }

    *(a3 + 208) = v6;
    v7 = __p;
    if (__p)
    {
      do
      {
        v8 = *v7;
        v9 = *(v7 + 16);
        if (v9 != -1)
        {
          (off_2868548E8[v9])(&v20, v7 + 5);
        }

        *(v7 + 16) = -1;
        if (*(v7 + 39) < 0)
        {
          operator delete(v7[2]);
        }

        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v10 = v16[0];
    v16[0] = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = v19;
    if (v19)
    {
      do
      {
        v12 = *v11;
        v13 = *(v11 + 16);
        if (v13 != -1)
        {
          (off_2868548E8[v13])(&v15, v11 + 5);
        }

        *(v11 + 16) = -1;
        if (*(v11 + 39) < 0)
        {
          operator delete(v11[2]);
        }

        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }
}

void sub_25632ECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_25632D0E0(v7 + 8);
  sub_25632D0E0(va);
  _Unwind_Resume(a1);
}

void sub_25632ED18()
{
  v0 = nullsub_34();

  j__free(v0);
}

uint64_t sub_25632ED40(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_25632DA8C(a1, prime);
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
    sub_25632EE74(a1, (i + 2));
  }

  return a1;
}

uint64_t **sub_25632EE74(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    sub_25632F1CC();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25632F1B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

double sub_25632F2E8(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void *sub_25632F2F8(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_25632CB5C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

void **sub_25632F32C(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_25632CE68();
  }

  return result;
}

void sub_25632F3A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25632F3C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2868548E8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_25632F420(void **a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_25632CE68();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_25632CCA0();
  }

  v12 = (16 * ((a1[1] - *a1) >> 4));
  *v12 = *a2;
  sub_25632ED40(48 * v2 + 8, (a2 + 2));
  v6 = 48 * v2 + 48;
  v13 = v6;
  v7 = *a1;
  v8 = a1[1];
  v9 = v12 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = 0;
    do
    {
      *&v9[v10] = *&v7[v10];
      sub_25632ED40(&v9[v10 + 8], &v7[v10 + 8]);
      v10 += 48;
    }

    while (&v7[v10] != v8);
    do
    {
      sub_25632D0E0((v7 + 8));
      v7 += 48;
    }

    while (v7 != v8);
    v7 = *a1;
    v6 = v13;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_25632F598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632F5D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25632F5D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_25632D0E0(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_25632F628(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) == 6 || (result = (*(*a2 + 16))(a2), !result))
  {
    sub_25632C5AC(a2, &v4);
    operator new();
  }

  return result;
}

void sub_25632FF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  sub_256330084((v39 - 184));
  sub_2563300F8(&a29);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_25632EA30(v39 - 160);
  sub_25632D0E0(v39 - 144);
  _Unwind_Resume(a1);
}

void ***sub_256330084(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2563300F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_286854978[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_256330158()
{
  v0 = nullsub_34();

  j__free(v0);
}

_BYTE *sub_256330180(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_25632CBF8();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_256330250(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_25632CBF8();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void sub_256330378()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, &unk_286854960, std::exception::~exception);
}

uint64_t sub_2563303C8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2868549D8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_25632CE68();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_25632CE68();
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = *(a2 + 96);
  prime = *(a2 + 72);
  if (prime == 1)
  {
    prime = 2;
LABEL_23:
    sub_25632DA8C(a1 + 64, prime);
    goto LABEL_24;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 72));
    v9 = *(a1 + 72);
    v10 = prime >= *&v9;
    if (prime > *&v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_23;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(*(a1 + 88) / *(a1 + 96));
    if (*&v9 < 3uLL || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < *&v9)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  for (i = *(a2 + 80); i; i = *i)
  {
    sub_25632EE74((a1 + 64), (i + 2));
  }

  return a1;
}

void sub_25633063C(_Unwind_Exception *a1)
{
  sub_25632D0E0(v4);
  sub_25632D02C(v3);
  sub_25632D02C(v2);
  nullsub_34(v1);
  _Unwind_Resume(a1);
}

void sub_256330690(void *a1)
{
  v1 = sub_25633077C(a1);

  j__free(v1);
}

void ***sub_2563306B8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_25633077C(void *a1)
{
  *a1 = &unk_2868549D8;
  sub_25632D0E0((a1 + 8));
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[2];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 8);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v6);
      v8 = a1[2];
    }

    a1[3] = v6;
    operator delete(v8);
  }

  return nullsub_34(a1);
}

uint64_t sub_2563308E0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 != -1)
  {
    (off_2868549E8[v2])(&v4, a1);
  }

  *(a1 + 128) = -1;
  return a1;
}

uint64_t sub_256330944(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286854A08;
  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  return sub_25633077C(a2);
}

uint64_t sub_2563309A4(uint64_t a1)
{
  *a1 = &unk_286854A08;
  if (*(a1 + 127) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 104));
    a1 = v3;
  }

  return sub_25633077C(a1);
}

void sub_256330A18(uint64_t a1)
{
  *a1 = &unk_286854A08;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = sub_25633077C(a1);

  j__free(v2);
}

void sub_256330A80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t sub_256330AB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_256330B00(result);

    JUMPOUT(0x259C60EF0);
  }

  return result;
}

uint64_t sub_256330B00(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 72);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 8);
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v5 -= 16;
      }

      while (v5 != v4);
      v6 = *(a1 + 72);
    }

    *(a1 + 80) = v4;
    operator delete(v6);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 48);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = *(a1 + 48);
    }

    *(a1 + 56) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 24);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = *(a1 + 24);
    }

    *(a1 + 32) = v13;
    operator delete(v15);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_256330D04(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_256330B00(v2);
    MEMORY[0x259C60EF0](v4, 0x10B2C40FF0754E7);
    return v3;
  }

  return v1;
}

uint64_t **sub_256330D58(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_2563310C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25632D5C8(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2563310DC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_256331468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256331484(va);
  _Unwind_Resume(a1);
}

void *sub_256331484(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_2563314F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t sub_256331528(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_25633155C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 7)
  {
    sub_25632C5AC(a2, v32);
    v31 = 9;
    strcpy(__p, "n_filters");
    v5 = sub_256331F64(v32, __p);
    if (*(v5 + 16))
    {
      sub_256330378();
    }

    v6 = v5[5];
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a3 + 224);
    v8 = (*(a3 + 232) - v7) >> 3;
    if (v6 <= v8)
    {
      if (v6 < v8)
      {
        *(a3 + 232) = v7 + 8 * v6;
      }
    }

    else
    {
      sub_256331B68(a3 + 224, v6 - v8);
    }

    v31 = 9;
    strcpy(__p, "n_threads");
    v9 = sub_256331F64(v32, __p);
    if (*(v9 + 16))
    {
      sub_256330378();
    }

    v10 = v9[5];
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    *(a3 + 472) = v10;
    v31 = 15;
    strcpy(__p, "bnns_graph_args");
    v11 = sub_256331F64(v32, __p);
    if (*(v11 + 16))
    {
      sub_256330378();
    }

    v12 = v11[5];
    *&v29.__r_.__value_.__l.__data_ = 0uLL;
    v13 = *(a3 + 248);
    v14 = (*(a3 + 256) - v13) >> 4;
    if (v12 <= v14)
    {
      if (v12 < v14)
      {
        *(a3 + 256) = v13 + 16 * v12;
      }
    }

    else
    {
      sub_256331CBC(a3 + 248, v12 - v14, &v29);
    }

    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    v31 = 6;
    strcpy(__p, "events");
    v15 = sub_256331F64(v32, __p);
    if (*(v15 + 16))
    {
      sub_256330378();
    }

    v16 = v15[5];
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *(a3 + 128);
    v18 = *(a3 + 136);
    v19 = (v18 - v17) >> 4;
    v20 = v16 - v19;
    if (v16 > v19)
    {
      sub_256331E10(a3 + 128, v20);
      goto LABEL_33;
    }

    if (v16 < v19)
    {
      for (i = v17 + 16 * v16; v18 != i; v18 -= 16)
      {
        v22 = *(v18 - 8);
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22, v20);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      *(a3 + 136) = i;
    }

    if (v16)
    {
LABEL_33:
      v23 = *(a3 + 128);
      mlc_event_create();
    }

    v31 = 10;
    strcpy(__p, "lk_buffers");
    v24 = sub_256331F64(v32, __p);
    if (*(v24 + 16))
    {
      sub_256330378();
    }

    *(a3 + 384) = v24[5] != 0;
    if (v31 < 0)
    {
      operator delete(__p[0]);
      v25 = v33;
      if (!v33)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v25 = v33;
      if (!v33)
      {
LABEL_45:
        v28 = v32[0];
        v32[0] = 0;
        if (v28)
        {
          operator delete(v28);
        }

        return;
      }
    }

    do
    {
      v26 = *v25;
      v27 = *(v25 + 16);
      if (v27 != -1)
      {
        (off_286854AB0[v27])(__p, v25 + 5);
      }

      *(v25 + 16) = -1;
      if (*(v25 + 39) < 0)
      {
        operator delete(v25[2]);
      }

      operator delete(v25);
      v25 = v26;
    }

    while (v26);
    goto LABEL_45;
  }
}

void sub_256331B14(void *a1)
{
  __cxa_begin_catch(a1);
  v2(v1);
  __cxa_rethrow();
}

void sub_256331B40()
{
  v0 = nullsub_34();

  j__free(v0);
}

void sub_256331B68(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_25632CE68();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_256331CBC(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_25632CE68();
    }

    v8 = v5 - *a1;
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
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_256331E10(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_25632CE68();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t **sub_256331F64(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

void sub_2563320CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

void sub_256332128()
{
  v15[256] = *MEMORY[0x277D85DE8];
  v0[0] = &unk_286854B70;
  v0[1] = sub_2563336B0;
  v0[3] = v0;
  v1[23] = 7;
  strcpy(v1, "acquire");
  v2[0] = &unk_286854B70;
  v2[1] = sub_256333C84;
  v2[3] = v2;
  v4 = 7;
  strcpy(v3, "address");
  v5[0] = &unk_286854B70;
  v5[1] = sub_256333E58;
  v6[23] = 8;
  v5[3] = v5;
  strcpy(v6, "allocate");
  v7[0] = &unk_286854B70;
  v7[1] = sub_256334440;
  v7[3] = v7;
  v8[23] = 7;
  strcpy(v8, "avgpool");
  v9[0] = &unk_286854B70;
  v9[1] = sub_256334618;
  v9[3] = v9;
  v10[23] = 7;
  strcpy(v10, "bnns-md");
  v11[0] = &unk_286854B70;
  v11[1] = sub_256334BEC;
  v12[23] = 11;
  v11[3] = v11;
  strcpy(v12, "bnns-filter");
  v13[0] = &unk_286854B70;
  v13[1] = sub_256334FD8;
  v13[3] = v13;
  strcpy(v14, "bnns-graph-infer-shape");
  v14[23] = 22;
  v15[0] = &unk_286854B70;
  v15[1] = sub_2563355AC;
  v15[3] = v15;
  operator new();
}

void sub_2563334DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_25633077C(v30);
  sub_25633F930(&a30);
  sub_25633F85C(&a25);
  _Unwind_Resume(a1);
}

void sub_256333520(_Unwind_Exception *a1)
{
  do
  {
    v2 -= 56;
    sub_25633F0D0(v2);
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_2563336B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 1;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256333BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256333C84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 0;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_256333E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 3;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  HIBYTE(v47) = 6;
  strcpy(__p, "inputs");
  v14 = sub_25633F16C(v48, __p);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    LOBYTE(v42[0]) = 0;
    v43 = -1;
    v15 = *(v14 + 16);
    if (v15 == -1 || (v38[0] = v42, (off_286854B38[v15])(v38, v14 + 5), v43 = v15, v15 != 3))
    {
      sub_256330378();
    }

    sub_25632CD38(&v44, v42);
    sub_25632C98C(&v44, a2, __p);
    v16 = *v5;
    if (*v5)
    {
      v17 = *(a3 + 24);
      v18 = *v5;
      if (v17 != v16)
      {
        do
        {
          v19 = *(v17 - 1);
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          v17 -= 16;
        }

        while (v17 != v16);
        v18 = *v5;
      }

      *(a3 + 24) = v16;
      operator delete(v18);
    }

    *(a3 + 16) = *__p;
    *(a3 + 32) = v47;
    __p[1] = 0;
    v47 = 0;
    __p[0] = 0;
    v20 = v44;
    if (v44)
    {
      v21 = v45;
      v22 = v44;
      if (v45 != v44)
      {
        do
        {
          v23 = *(v21 - 1);
          v21 -= 3;
          if (v23 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v20);
        v22 = v44;
      }

      v45 = v20;
      operator delete(v22);
    }

    if (v43 != -1)
    {
      (off_286854B10[v43])(v38, v42);
    }

    v43 = -1;
  }

  v39 = 7;
  strcpy(v38, "outputs");
  v24 = sub_25633F16C(v48, v38);
  LOBYTE(v40[0]) = 0;
  v41 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v40, (off_286854B38[v25])(&v50, v24 + 5), v41 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&v44, v40);
  sub_25632C98C(&v44, a2, __p);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = *__p;
  *(a3 + 56) = v47;
  __p[1] = 0;
  v47 = 0;
  __p[0] = 0;
  v30 = v44;
  if (v44)
  {
    v31 = v45;
    v32 = v44;
    if (v45 != v44)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v44;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v41 != -1)
  {
    (off_286854B10[v41])(&v50, v40);
  }

  v41 = -1;
  if (v39 < 0)
  {
    operator delete(v38[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_82;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(__p, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_82:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633438C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_256330084(&a23);
  sub_2563300F8(&a19);
  sub_25632D0E0(v32 - 128);
  sub_25633077C(v31);
  _Unwind_Resume(a1);
}

void sub_256334440(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 2;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_256334618(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 5;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256334B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256334BEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 11;
  sub_25632C5AC(a1, v35);
  v5 = v36;
  if (v36)
  {
    do
    {
      v7 = (v5 + 16);
      if (v5[39] < 0)
      {
        if (*(v5 + 3) == 6 && **v7 == 1970302569 && *(*v7 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v5 + 3) == 7)
        {
          v8 = *v7;
LABEL_20:
          v10 = *v8;
          v11 = *(v8 + 3);
          if (v10 == 1886680431 && v11 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v5[39] == 6)
      {
        if (*v7 == 1970302569 && *(v5 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = (v5 + 16);
        if (v5[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v7);
LABEL_8:
      v5 = *v5;
    }

    while (v5);
  }

  v28 = 7;
  strcpy(v27, "outputs");
  v13 = sub_25633F16C(v35, v27);
  LOBYTE(v29[0]) = 0;
  v30 = -1;
  v14 = *(v13 + 16);
  if (v14 == -1 || (v37 = v29, (off_286854B38[v14])(&v37, v13 + 5), v30 = v14, v14 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v29);
  sub_25632C98C(&__p, a2, &v33);
  v15 = *(a3 + 40);
  if (v15)
  {
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = *(a3 + 40);
    }

    *(a3 + 48) = v15;
    operator delete(v17);
  }

  *(a3 + 40) = v33;
  *(a3 + 56) = v34;
  v34 = 0;
  v33 = 0uLL;
  v19 = __p;
  if (__p)
  {
    v20 = v32;
    v21 = __p;
    if (v32 != __p)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = __p;
    }

    v32 = v19;
    operator delete(v21);
  }

  if (v30 != -1)
  {
    (off_286854B10[v30])(&v37, v29);
  }

  v30 = -1;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v24 = *v23;
    v25 = *(v23 + 16);
    if (v25 != -1)
    {
      (off_286854B10[v25])(&v33, v23 + 5);
    }

    *(v23 + 16) = -1;
    if (*(v23 + 39) < 0)
    {
      operator delete(v23[2]);
    }

    operator delete(v23);
    v23 = v24;
  }

  while (v24);
LABEL_57:
  v26 = v35[0];
  v35[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_256334F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_256334FD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 6;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256335508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_2563355AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 9;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256335ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256335B80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 7;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_256335D58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 10;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_256335F30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 8;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256336460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256336504(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 12;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256336A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256336AD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 15;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256337008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_2563370AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 14;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_2563375DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256337680(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 16;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256337BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256337C54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 17;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_256337E2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 18;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_25633835C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256338400(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 42;
  sub_25632C5AC(a1, v35);
  v5 = v36;
  if (v36)
  {
    do
    {
      v7 = (v5 + 16);
      if (v5[39] < 0)
      {
        if (*(v5 + 3) == 6 && **v7 == 1970302569 && *(*v7 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v5 + 3) == 7)
        {
          v8 = *v7;
LABEL_20:
          v10 = *v8;
          v11 = *(v8 + 3);
          if (v10 == 1886680431 && v11 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v5[39] == 6)
      {
        if (*v7 == 1970302569 && *(v5 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = (v5 + 16);
        if (v5[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v7);
LABEL_8:
      v5 = *v5;
    }

    while (v5);
  }

  v28 = 7;
  strcpy(v27, "outputs");
  v13 = sub_25633F16C(v35, v27);
  LOBYTE(v29[0]) = 0;
  v30 = -1;
  v14 = *(v13 + 16);
  if (v14 == -1 || (v37 = v29, (off_286854B38[v14])(&v37, v13 + 5), v30 = v14, v14 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v29);
  sub_25632C98C(&__p, a2, &v33);
  v15 = *(a3 + 40);
  if (v15)
  {
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = *(a3 + 40);
    }

    *(a3 + 48) = v15;
    operator delete(v17);
  }

  *(a3 + 40) = v33;
  *(a3 + 56) = v34;
  v34 = 0;
  v33 = 0uLL;
  v19 = __p;
  if (__p)
  {
    v20 = v32;
    v21 = __p;
    if (v32 != __p)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = __p;
    }

    v32 = v19;
    operator delete(v21);
  }

  if (v30 != -1)
  {
    (off_286854B10[v30])(&v37, v29);
  }

  v30 = -1;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v24 = *v23;
    v25 = *(v23 + 16);
    if (v25 != -1)
    {
      (off_286854B10[v25])(&v33, v23 + 5);
    }

    *(v23 + 16) = -1;
    if (*(v23 + 39) < 0)
    {
      operator delete(v23[2]);
    }

    operator delete(v23);
    v23 = v24;
  }

  while (v24);
LABEL_57:
  v26 = v35[0];
  v35[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_25633877C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_2563387EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 20;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256338D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256338DC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 21;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_2563392F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256339394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 24;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_2563398C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256339968(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 26;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}

void sub_256339E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  sub_256330084(&a23);
  sub_2563300F8(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(v24 - 128);
  sub_25633077C(v23);
  _Unwind_Resume(a1);
}

void sub_256339F3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 27;
  sub_25632C5AC(a1, v35);
  v5 = v36;
  if (v36)
  {
    do
    {
      v7 = (v5 + 16);
      if (v5[39] < 0)
      {
        if (*(v5 + 3) == 6 && **v7 == 1970302569 && *(*v7 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v5 + 3) == 7)
        {
          v8 = *v7;
LABEL_20:
          v10 = *v8;
          v11 = *(v8 + 3);
          if (v10 == 1886680431 && v11 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v5[39] == 6)
      {
        if (*v7 == 1970302569 && *(v5 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = (v5 + 16);
        if (v5[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v7);
LABEL_8:
      v5 = *v5;
    }

    while (v5);
  }

  v28 = 7;
  strcpy(v27, "outputs");
  v13 = sub_25633F16C(v35, v27);
  LOBYTE(v29[0]) = 0;
  v30 = -1;
  v14 = *(v13 + 16);
  if (v14 == -1 || (v37 = v29, (off_286854B38[v14])(&v37, v13 + 5), v30 = v14, v14 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v29);
  sub_25632C98C(&__p, a2, &v33);
  v15 = *(a3 + 40);
  if (v15)
  {
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = *(a3 + 40);
    }

    *(a3 + 48) = v15;
    operator delete(v17);
  }

  *(a3 + 40) = v33;
  *(a3 + 56) = v34;
  v34 = 0;
  v33 = 0uLL;
  v19 = __p;
  if (__p)
  {
    v20 = v32;
    v21 = __p;
    if (v32 != __p)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = __p;
    }

    v32 = v19;
    operator delete(v21);
  }

  if (v30 != -1)
  {
    (off_286854B10[v30])(&v37, v29);
  }

  v30 = -1;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v24 = *v23;
    v25 = *(v23 + 16);
    if (v25 != -1)
    {
      (off_286854B10[v25])(&v33, v23 + 5);
    }

    *(v23 + 16) = -1;
    if (*(v23 + 39) < 0)
    {
      operator delete(v23[2]);
    }

    operator delete(v23);
    v23 = v24;
  }

  while (v24);
LABEL_57:
  v26 = v35[0];
  v35[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_25633A2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_25633A328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2868549D8;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  *(a2 + 8) = 28;
  sub_25632C5AC(a1, &v15);
  v3 = __p;
  if (!__p)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = (v3 + 16);
    if (v3[39] < 0)
    {
      if (*(v3 + 3) == 6 && **v5 == 1970302569 && *(*v5 + 4) == 29556)
      {
        goto LABEL_8;
      }

      if (*(v3 + 3) != 7)
      {
        goto LABEL_7;
      }

      v6 = *v5;
      goto LABEL_20;
    }

    if (v3[39] != 6)
    {
      v6 = (v3 + 16);
      if (v3[39] != 7)
      {
        goto LABEL_7;
      }

LABEL_20:
      v8 = *v6;
      v9 = *(v6 + 3);
      if (v8 != 1886680431 || v9 != 1937012080)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    if (*v5 != 1970302569 || *(v3 + 10) != 29556)
    {
LABEL_7:
      sub_25632EE74((a2 + 64), v5);
    }

LABEL_8:
    v3 = *v3;
  }

  while (v3);
  v11 = __p;
  if (__p)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 16);
      if (v13 != -1)
      {
        (off_286854B10[v13])(&v17, v11 + 5);
      }

      *(v11 + 16) = -1;
      if (*(v11 + 39) < 0)
      {
        operator delete(v11[2]);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

LABEL_33:
  v14 = v15;
  v15 = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_25633A500(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 29;
  sub_25632C5AC(a1, v35);
  v5 = v36;
  if (v36)
  {
    do
    {
      v7 = (v5 + 16);
      if (v5[39] < 0)
      {
        if (*(v5 + 3) == 6 && **v7 == 1970302569 && *(*v7 + 4) == 29556)
        {
          goto LABEL_8;
        }

        if (*(v5 + 3) == 7)
        {
          v8 = *v7;
LABEL_20:
          v10 = *v8;
          v11 = *(v8 + 3);
          if (v10 == 1886680431 && v11 == 1937012080)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v5[39] == 6)
      {
        if (*v7 == 1970302569 && *(v5 + 10) == 29556)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = (v5 + 16);
        if (v5[39] == 7)
        {
          goto LABEL_20;
        }
      }

      sub_25632EE74((a3 + 64), v7);
LABEL_8:
      v5 = *v5;
    }

    while (v5);
  }

  v28 = 7;
  strcpy(v27, "outputs");
  v13 = sub_25633F16C(v35, v27);
  LOBYTE(v29[0]) = 0;
  v30 = -1;
  v14 = *(v13 + 16);
  if (v14 == -1 || (v37 = v29, (off_286854B38[v14])(&v37, v13 + 5), v30 = v14, v14 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v29);
  sub_25632C98C(&__p, a2, &v33);
  v15 = *(a3 + 40);
  if (v15)
  {
    v16 = *(a3 + 48);
    v17 = *(a3 + 40);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = *(a3 + 40);
    }

    *(a3 + 48) = v15;
    operator delete(v17);
  }

  *(a3 + 40) = v33;
  *(a3 + 56) = v34;
  v34 = 0;
  v33 = 0uLL;
  v19 = __p;
  if (__p)
  {
    v20 = v32;
    v21 = __p;
    if (v32 != __p)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = __p;
    }

    v32 = v19;
    operator delete(v21);
  }

  if (v30 != -1)
  {
    (off_286854B10[v30])(&v37, v29);
  }

  v30 = -1;
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v23 = v36;
    if (!v36)
    {
      goto LABEL_57;
    }
  }

  do
  {
    v24 = *v23;
    v25 = *(v23 + 16);
    if (v25 != -1)
    {
      (off_286854B10[v25])(&v33, v23 + 5);
    }

    *(v23 + 16) = -1;
    if (*(v23 + 39) < 0)
    {
      operator delete(v23[2]);
    }

    operator delete(v23);
    v23 = v24;
  }

  while (v24);
LABEL_57:
  v26 = v35[0];
  v35[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_25633A87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_256330084(&a19);
  sub_2563300F8(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a26);
  sub_25633077C(v26);
  _Unwind_Resume(a1);
}

void sub_25633A8EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_2868549D8;
  *(a3 + 16) = 0u;
  v5 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  *(a3 + 8) = 37;
  sub_25632C5AC(a1, v48);
  for (i = v49; i; i = *i)
  {
    v8 = (i + 2);
    if (*(i + 39) < 0)
    {
      if (i[3] == 6 && **v8 == 1970302569 && *(*v8 + 4) == 29556)
      {
        continue;
      }

      if (i[3] == 7)
      {
        v9 = *v8;
LABEL_20:
        v11 = *v9;
        v12 = *(v9 + 3);
        if (v11 == 1886680431 && v12 == 1937012080)
        {
          continue;
        }
      }
    }

    else if (*(i + 39) == 6)
    {
      if (*v8 == 1970302569 && *(i + 10) == 29556)
      {
        continue;
      }
    }

    else
    {
      v9 = (i + 2);
      if (*(i + 39) == 7)
      {
        goto LABEL_20;
      }
    }

    sub_25632EE74((a3 + 64), v8);
  }

  v41 = 6;
  strcpy(v40, "inputs");
  v14 = sub_25633F16C(v48, v40);
  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v15 = *(v14 + 16);
  if (v15 == -1 || (v50 = v42, (off_286854B38[v15])(&v50, v14 + 5), v43 = v15, v15 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v42);
  sub_25632C98C(&__p, a2, &v46);
  v16 = *v5;
  if (*v5)
  {
    v17 = *(a3 + 24);
    v18 = *v5;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *v5;
    }

    *(a3 + 24) = v16;
    operator delete(v18);
  }

  *(a3 + 16) = v46;
  *(a3 + 32) = v47;
  v47 = 0;
  v46 = 0uLL;
  v20 = __p;
  if (__p)
  {
    v21 = v45;
    v22 = __p;
    if (v45 != __p)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v45 = v20;
    operator delete(v22);
  }

  if (v43 != -1)
  {
    (off_286854B10[v43])(&v50, v42);
  }

  v43 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  v41 = 7;
  strcpy(v40, "outputs");
  v24 = sub_25633F16C(v48, v40);
  LOBYTE(v38[0]) = 0;
  v39 = -1;
  v25 = *(v24 + 16);
  if (v25 == -1 || (v50 = v38, (off_286854B38[v25])(&v50, v24 + 5), v39 = v25, v25 != 3))
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, v38);
  sub_25632C98C(&__p, a2, &v46);
  v26 = *(a3 + 40);
  if (v26)
  {
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 8);
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v27 -= 16;
      }

      while (v27 != v26);
      v28 = *(a3 + 40);
    }

    *(a3 + 48) = v26;
    operator delete(v28);
  }

  *(a3 + 40) = v46;
  *(a3 + 56) = v47;
  v47 = 0;
  v46 = 0uLL;
  v30 = __p;
  if (__p)
  {
    v31 = v45;
    v32 = __p;
    if (v45 != __p)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = __p;
    }

    v45 = v30;
    operator delete(v32);
  }

  if (v39 != -1)
  {
    (off_286854B10[v39])(&v50, v38);
  }

  v39 = -1;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v34 = v49;
    if (!v49)
    {
      goto LABEL_80;
    }
  }

  do
  {
    v35 = *v34;
    v36 = *(v34 + 16);
    if (v36 != -1)
    {
      (off_286854B10[v36])(&v46, v34 + 5);
    }

    *(v34 + 16) = -1;
    if (*(v34 + 39) < 0)
    {
      operator delete(v34[2]);
    }

    operator delete(v34);
    v34 = v35;
  }

  while (v35);
LABEL_80:
  v37 = v48[0];
  v48[0] = 0;
  if (v37)
  {
    operator delete(v37);
  }
}