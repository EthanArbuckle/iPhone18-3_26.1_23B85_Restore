uint64_t sub_2522A4BFC(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CCC();
}

uint64_t sub_2522A4C24(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CCC();
}

uint64_t sub_2522A4C4C(uint64_t a1)
{
  nullsub_4(a1);

  return sub_2522A6CCC();
}

uint64_t hc_EVP_get_cipherbyname(char *a1)
{
  v2 = &off_2864738B0;
  v3 = 10;
  while (strcasecmp(*(v2 - 1), a1))
  {
    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  v5 = *v2;

  return v5();
}

uint64_t sub_2522A4CEC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8)
{
  v8 = *(a1 + 8);
  if (a4)
  {
    v12 = a4;
    v16 = *(a1 + 12);
    v17 = malloc_type_malloc(*a2, 0xBFE6BDF6uLL);
    if (!v17)
    {
      return 0xFFFFFFFFLL;
    }

    v18 = v17;
    v32 = a3;
    v33[0] = 0;
    v28 = a1;
    LODWORD(a3) = 0;
    v19 = 0;
    v33[1] = 0;
    v34 = 0;
    v31 = a6 - 1;
    while (1)
    {
      sub_2522A44E0(v33, a2, 0);
      if (v19)
      {
        (*(v33[0] + 24))(v34, v18, a3);
      }

      (*(v33[0] + 24))(v34, v12, a5);
      if (v32)
      {
        (*(v33[0] + 24))(v34, v32, 8);
      }

      (*(v33[0] + 32))(v18, v34);
      a3 = *v33[0];
      if (*a2 != a3)
      {
        sub_2522A83DC();
      }

      v20 = v31;
      if (a6 >= 2)
      {
        do
        {
          sub_2522A44E0(v33, a2, 0);
          (*(v33[0] + 24))(v34, v18, a3);
          (*(v33[0] + 32))(v18, v34);
          a3 = *v33[0];
          if (*a2 != a3)
          {
            sub_2522A8408();
          }

          --v20;
        }

        while (v20);
      }

      if (v8)
      {
        break;
      }

      LODWORD(v21) = 0;
      if (v16)
      {
        goto LABEL_21;
      }

LABEL_29:
      v19 = 1;
      if (!(v8 | v16))
      {
        sub_2522A4480(v33);
        free(v18);
        return *(v28 + 8);
      }
    }

    if (v8 >= a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = v8;
    }

    if (a7)
    {
      memcpy(a7, v18, v21);
      a7 += v21;
    }

    LODWORD(v8) = v8 - v21;
    if (!v16)
    {
      goto LABEL_29;
    }

LABEL_21:
    v22 = a3 - v21;
    if (a3 > v21)
    {
      v29 = a7;
      v23 = v12;
      v24 = a5;
      v25 = a6;
      if (v16 >= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v16;
      }

      if (a8)
      {
        memcpy(a8, &v18[v21], v26);
        a8 += v26;
      }

      else
      {
        a8 = 0;
      }

      v16 -= v26;
      a6 = v25;
      a5 = v24;
      v12 = v23;
      a7 = v29;
    }

    goto LABEL_29;
  }

  return v8;
}

uint64_t hc_EVP_CIPHER_CTX_rand_key(int *a1)
{
  if ((*(*a1 + 17) & 2) != 0)
  {
    v5 = *(*a1 + 72);
    if (v5)
    {

      return v5();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = *MEMORY[0x277D85C28];
    v3 = a1[26];
    return CCRandomCopyBytes() == 0;
  }
}

uint64_t hc_EVP_CIPHER_CTX_ctrl(uint64_t a1)
{
  if (*a1 && (v1 = *(*a1 + 72)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void *sub_2522A4FEC(_DWORD *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F00409343F5F1uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 28) = 1;
    if (a1)
    {
      hc_ENGINE_up_ref(a1);
      v3[3] = a1;
      default_RSA = a1;
    }

    else
    {
      default_RSA = hc_ENGINE_get_default_RSA();
      v3[3] = default_RSA;
      if (!default_RSA)
      {
        RSA = v3[2];
        if (!RSA)
        {
          RSA = off_27F4D9108;
          v3[2] = off_27F4D9108;
        }

LABEL_6:
        (RSA[7])(v3);
        return v3;
      }
    }

    RSA = hc_ENGINE_get_RSA(default_RSA);
    v3[2] = RSA;
    if (!RSA)
    {
      hc_ENGINE_finish(a1);
      free(v3);
      return 0;
    }

    goto LABEL_6;
  }

  return v3;
}

void sub_2522A50B0(_DWORD *a1)
{
  v1 = a1[28];
  if (v1 <= 0)
  {
    abort();
  }

  v3 = v1 - 1;
  a1[28] = v3;
  if (!v3)
  {
    (*(*(a1 + 2) + 64))(a1);
    v4 = *(a1 + 3);
    if (v4)
    {
      hc_ENGINE_finish(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      sub_2522A3C3C(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      sub_2522A3C3C(v6);
    }

    v7 = *(a1 + 6);
    if (v7)
    {
      sub_2522A3C3C(v7);
    }

    v8 = *(a1 + 7);
    if (v8)
    {
      sub_2522A3C3C(v8);
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      sub_2522A3C3C(v9);
    }

    v10 = *(a1 + 9);
    if (v10)
    {
      sub_2522A3C3C(v10);
    }

    v11 = *(a1 + 10);
    if (v11)
    {
      sub_2522A3C3C(v11);
    }

    v12 = *(a1 + 11);
    if (v12)
    {
      sub_2522A3C3C(v12);
    }

    *(a1 + 20) = 0;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;

    free(a1);
  }
}

uint64_t sub_2522A51A4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 16) + 64))();
  v4 = *(a1 + 24);
  if (v4)
  {
    hc_ENGINE_finish(v4);
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = a2;
  (*(a2 + 56))(a1);
  return 1;
}

BOOL sub_2522A520C(void *a1)
{
  if (!a1[6] || (v2 = a1[4]) == 0)
  {
    if (!a1[7] || a1[8] || !a1[9] || !a1[10] || !a1[11])
    {
      return 0;
    }

    v2 = a1[4];
  }

  v3 = sub_2522A3D4C(v2);
  v4 = malloc_type_malloc(v3, 0xE7D08495uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (*(a1[2] + 24))(14, "hello, world!", v4, a1, 1);
  v7 = v6 != -1 && (*(a1[2] + 16))(v6, v5, v5, a1, 1) == 14 && !ct_memcmp(v5, "hello, world!", 14);
  free(v5);
  return v7;
}

uint64_t sub_2522A5350(int a1, uint64_t a2, unsigned int a3, uint64_t a4, int *a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(v9 + 88);
  if (!v10)
  {
    if (!*(v9 + 24))
    {
      return 0;
    }

    v20 = 0;
    v21 = 0uLL;
    v22 = 0;
    v12 = 0xFFFFFFFFLL;
    if (a1 <= 4)
    {
      if (a1 == 2)
      {
        v13 = &xmmword_279706408;
        goto LABEL_17;
      }

      if (a1 == 4)
      {
        v13 = &xmmword_2797063F0;
        goto LABEL_17;
      }
    }

    else
    {
      switch(a1)
      {
        case 5:
          v13 = &xmmword_279706420;
          goto LABEL_17;
        case 6:
          v13 = &xmmword_2797063C0;
          goto LABEL_17;
        case 7:
          v13 = &xmmword_2797063D8;
LABEL_17:
          v21 = *v13;
          v14 = *(v13 + 2);
          v24 = a2;
          v22 = v14;
          v23 = a3;
          v15 = sub_2522A23A8(&v21);
          v16 = malloc_type_malloc(v15, 0xC1EB3443uLL);
          if (!v16)
          {
            return 12;
          }

          v17 = v16;
          v18 = sub_2522A2388(v16 + v15 - 1, v15, &v21, &v20);
          if (v18)
          {
            v12 = v18;
            free(v17);
            return v12;
          }

          if (v15 != v20)
          {
            abort();
          }

          v19 = (*(*(a6 + 16) + 24))(v15, v17, a4, a6, 1);
          free(v17);
          if (v19 >= 1)
          {
            *a5 = v19;
            return 1;
          }

          return 0;
      }
    }

    return v12;
  }

  return v10();
}

uint64_t sub_2522A5510(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 104);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void *sub_2522A5528(void *a1, uint64_t *a2, uint64_t a3)
{
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  v5 = sub_2522A2308(*a2, a3, v8, &v7);
  result = 0;
  if (!v5)
  {
    *a2 += v7;
    if (a1 || (a1 = sub_2522A4FEC(0)) != 0)
    {
      a1[4] = sub_2522A6E10(v8 + 1, 0);
      a1[5] = sub_2522A6E10(v9, 0);
      a1[6] = sub_2522A6E10(&v9[1] + 1, 0);
      a1[7] = sub_2522A6E10(v10, 0);
      a1[8] = sub_2522A6E10(&v10[1] + 1, 0);
      a1[9] = sub_2522A6E10(v11, 0);
      a1[10] = sub_2522A6E10(&v11[1] + 1, 0);
      a1[11] = sub_2522A6E10(&v12, 0);
      sub_2522A2358(v8);
      if (a1[4] && a1[5] && a1[6] && a1[7] && a1[8] && a1[9] && a1[10] && a1[11])
      {
        return a1;
      }

      sub_2522A50B0(a1);
    }

    else
    {
      sub_2522A2358(v8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2522A56B8(unsigned int **a1, void **a2)
{
  v17 = 0;
  v3 = a1[4];
  if (!v3 || !a1[5] || !a1[6] || !a1[7] || !a1[8] || !a1[9] || !a1[10] || !a1[11])
  {
    return 0xFFFFFFFFLL;
  }

  v23 = 0;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v5 = sub_2522A6DA4(v3, v18 + 8);
  v6 = sub_2522A6DA4(a1[5], v19) | v5;
  v7 = sub_2522A6DA4(a1[6], &v19[1] + 8);
  v8 = v6 | v7 | sub_2522A6DA4(a1[7], v20);
  v9 = sub_2522A6DA4(a1[8], &v20[1] + 8);
  v10 = v9 | sub_2522A6DA4(a1[9], v21);
  v11 = v8 | v10 | sub_2522A6DA4(a1[10], &v21[1] + 8);
  if (v11 | sub_2522A6DA4(a1[11], &v22))
  {
    goto LABEL_10;
  }

  v14 = sub_2522A2348(v18);
  v12 = v14;
  if (!a2)
  {
    sub_2522A2358(v18);
    return v12;
  }

  v15 = malloc_type_malloc(v14, 0x7A2DA1F9uLL);
  if (!v15)
  {
LABEL_10:
    sub_2522A2358(v18);
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  if (sub_2522A2328((v15 + v12) - 1, v12, v18, &v17))
  {
    free(v16);
    goto LABEL_10;
  }

  sub_2522A2358(v18);
  if (v12 != v17)
  {
    abort();
  }

  memcpy(*a2, v16, v12);
  free(v16);
  v12 = v17;
  *a2 = *a2 + v17;
  return v12;
}

uint64_t sub_2522A5898(uint64_t a1, void **a2)
{
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  if (sub_2522A6DA4(*(a1 + 32), v10) || sub_2522A6DA4(*(a1 + 40), &v10[1] + 8))
  {
    goto LABEL_3;
  }

  v6 = sub_2522A22E8(v10);
  v4 = v6;
  if (!a2)
  {
    sub_2522A22F8(v10);
    return v4;
  }

  v7 = malloc_type_malloc(v6, 0x61C98924uLL);
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = v7;
  if (sub_2522A22C8((v7 + v4) - 1, v4, v10, &v9))
  {
    free(v8);
LABEL_3:
    sub_2522A22F8(v10);
    return 0xFFFFFFFFLL;
  }

  sub_2522A22F8(v10);
  if (v4 != v9)
  {
    abort();
  }

  memcpy(*a2, v8, v4);
  free(v8);
  v4 = v9;
  *a2 = *a2 + v9;
  return v4;
}

void *sub_2522A59B0(void *a1, uint64_t *a2, uint64_t a3)
{
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  v5 = sub_2522A22A8(*a2, a3, v8, &v7);
  result = 0;
  if (!v5)
  {
    *a2 += v7;
    if (a1 || (a1 = sub_2522A4FEC(0)) != 0)
    {
      a1[4] = sub_2522A6E10(v8, 0);
      a1[5] = sub_2522A6E10(&v8[1] + 1, 0);
      sub_2522A22F8(v8);
      if (a1[4] && a1[5])
      {
        return a1;
      }

      sub_2522A50B0(a1);
    }

    else
    {
      sub_2522A22F8(v8);
    }

    return 0;
  }

  return result;
}

uint64_t hc_UI_UTIL_read_pw_string(char *a1, int a2, const char *a3, int a4)
{
  v7 = a2;
  v8 = sub_2522A5B5C("", a3, a1, a2);
  if (!v8)
  {
    if (a4)
    {
      v10 = malloc_type_malloc(v7, 0x287E78E2uLL);
      if (v10)
      {
        v11 = v10;
        v8 = sub_2522A5B5C("Verify password - ", a3, v10, v7);
        if (!v8)
        {
          v8 = strcmp(v11, a1) != 0;
        }

        free(v11);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_2522A5B5C(const char *a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v34[62] = *MEMORY[0x277D85DE8];
  memset(&v32, 0, sizeof(v32));
  memset(&v31, 0, sizeof(v31));
  memset(v33, 0, 128);
  v8 = 1;
  *&v30.sa_mask = 0;
  do
  {
    v9 = 0;
    v30.sa_flags = 0;
    v30.__sigaction_u.__sa_handler = sub_2522A5E58;
    v10 = 1;
    while (2)
    {
      v11 = &unk_27F4D9110 + 8 * v9++;
      v12 = v11 + 4;
      while (1)
      {
        if (*(v12 - 1) == v8)
        {
          if (!*v12)
          {
            v30.__sigaction_u.__sa_handler = 1;
            v30.sa_flags = 2;
            goto LABEL_9;
          }

          if (*v12 == 1)
          {
            break;
          }
        }

LABEL_9:
        ++v9;
        v12 += 2;
        if (v9 == 5)
        {
          if ((v10 & 1) != 0 && !sigaction(v8, &v30, &v33[v8 + 8]))
          {
            *(v33 + v8) = 1;
          }

          goto LABEL_16;
        }
      }

      v10 = 0;
      if (v9 != 4)
      {
        continue;
      }

      break;
    }

LABEL_16:
    ++v8;
  }

  while (v8 != 32);
  v13 = fopen("/dev/tty", "r");
  v14 = MEMORY[0x277D85E00];
  if (v13)
  {
    v15 = v13;
    rk_cloexec_file(v13);
  }

  else
  {
    v15 = *MEMORY[0x277D85E00];
  }

  v16 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "%s%s", a1, a2);
  fflush(*v16);
  v17 = fileno(v15);
  tcgetattr(v17, &v31);
  *v32.c_cc = *v31.c_cc;
  *&v32.c_cc[16] = *&v31.c_cc[16];
  v32.c_ospeed = v31.c_ospeed;
  *&v32.c_iflag = *&v31.c_iflag;
  v32.c_cflag = v31.c_cflag;
  v32.c_lflag = v31.c_lflag & 0xFFFFFFFFFFFFFFF7;
  v18 = fileno(v15);
  tcsetattr(v18, 0, &v32);
  v19 = 0;
  dword_27F4D97F0 = 0;
  v20 = &a3[a4];
  while (1)
  {
    v21 = getc(v15);
    if (v21 == 10)
    {
LABEL_26:
      v22 = 1;
      goto LABEL_28;
    }

    if (v21 == -1)
    {
      break;
    }

    if (!v19)
    {
      *a3++ = v21;
    }

    v19 = a3 == v20;
    if (dword_27F4D97F0)
    {
      goto LABEL_26;
    }
  }

  v22 = ferror(v15) != 0;
LABEL_28:
  a3[-v19] = 0;
  fputc(10, *v16);
  v23 = fileno(v15);
  tcsetattr(v23, 0, &v31);
  if (v15 != *v14)
  {
    fclose(v15);
  }

  v24 = v34;
  for (i = 1; i != 32; ++i)
  {
    if (*(v33 + i))
    {
      sigaction(i, v24, 0);
    }

    ++v24;
  }

  if (v19)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (dword_27F4D97F0)
  {
    v27 = -2;
  }

  else
  {
    v27 = v26;
  }

  if (v22)
  {
    result = v27;
  }

  else
  {
    result = 4294967293;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t hc_ENGINE_finish(void *a1)
{
  v1 = (*a1)--;
  if (v1 <= 0)
  {
    abort();
  }

  if (v1 == 1)
  {
    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      v5(a1);
    }

    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    free(a1);
  }

  return 1;
}

uint64_t hc_ENGINE_up_ref(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    abort();
  }

  ++*a1;
  return 1;
}

BOOL hc_ENGINE_set_id(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  *(a1 + 16) = v3;
  return v3 != 0;
}

BOOL hc_ENGINE_set_name(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  *(a1 + 8) = v3;
  return v3 != 0;
}

uint64_t hc_ENGINE_get_default_RSA()
{
  result = qword_27F4D97F8;
  if (qword_27F4D97F8)
  {
    if ((*qword_27F4D97F8 & 0x80000000) != 0)
    {
      abort();
    }

    ++*qword_27F4D97F8;
  }

  return result;
}

uint64_t sub_2522A5FE8()
{
  result = qword_27F4D9800;
  if (qword_27F4D9800)
  {
    if ((*qword_27F4D9800 & 0x80000000) != 0)
    {
      abort();
    }

    ++*qword_27F4D9800;
  }

  return result;
}

uint64_t hc_ENGINE_get_default_DH()
{
  result = qword_27F4D9808;
  if (qword_27F4D9808)
  {
    if ((*qword_27F4D9808 & 0x80000000) != 0)
    {
      abort();
    }

    ++*qword_27F4D9808;
  }

  return result;
}

uint64_t hc_ENGINE_load_builtin_engines()
{
  v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040DCD6B6ADuLL);
  *v0 = 1;
  v0[2] = strdup("builtin");
  v0[1] = strdup("Heimdal crypto builtin engine version 1.3.99");
  v0[4] = sub_2522A66CC();
  v0[6] = sub_2522A715C();
  result = sub_2522A60E8(v0);
  if (!result)
  {

    return hc_ENGINE_finish(v0);
  }

  return result;
}

uint64_t sub_2522A60E8(uint64_t a1)
{
  if (hc_ENGINE_by_id(*(a1 + 16)))
  {
    return 0;
  }

  v3 = malloc_type_realloc(qword_27F4D9818, 8 * (dword_27F4D9810 + 1), 0x2004093837F09uLL);
  if (v3)
  {
    qword_27F4D9818 = v3;
    v4 = dword_27F4D9810++;
    v3[v4] = a1;
  }

  return 1;
}

_DWORD *hc_ENGINE_by_dso(const char *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040DCD6B6ADuLL);
  if (!v4)
  {
    return v4;
  }

  v5 = dlopen(a1, 2);
  if (!v5)
  {
LABEL_11:
    free(v4);
    return 0;
  }

  v6 = v5;
  v7 = dlsym(v5, "v_check");
  if (!v7 || !v7(0x20000) || (v8 = dlsym(v6, "bind_engine")) == 0 || (v8)(v4, a2, 0) != 1)
  {
    dlclose(v6);
    goto LABEL_11;
  }

  if ((*v4 & 0x80000000) != 0)
  {
    abort();
  }

  ++*v4;
  if (!sub_2522A60E8(v4))
  {
    dlclose(v6);
    hc_ENGINE_finish(v4);
    return 0;
  }

  return v4;
}

_DWORD *hc_ENGINE_by_id(char *__s1)
{
  v1 = dword_27F4D9810;
  if (!dword_27F4D9810)
  {
    return 0;
  }

  for (i = qword_27F4D9818; ; i += 8)
  {
    v4 = *i;
    if (!strcmp(__s1, *(*i + 16)))
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  if ((*v4 & 0x80000000) != 0)
  {
    abort();
  }

  ++*v4;
  return v4;
}

uint64_t sub_2522A62EC(int a1, const uint8_t *a2, uint8_t *a3, unsigned int **a4, int a5)
{
  v10 = sub_2522A66D8(a4, 1);
  cipherTextLen = sub_2522A5318(a4);
  result = 0xFFFFFFFFLL;
  if (a5 == 1 && v10)
  {
    v12 = SecKeyEncrypt(v10, 1u, a2, a1, a3, &cipherTextLen);
    CFRelease(v10);
    if (v12)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v13 = cipherTextLen;
      if (v13 > sub_2522A5318(a4))
      {
        abort();
      }

      return cipherTextLen;
    }
  }

  return result;
}

uint64_t sub_2522A63B4(int a1, const uint8_t *a2, uint8_t *a3, unsigned int **a4, int a5)
{
  v10 = sub_2522A66D8(a4, 1);
  plainTextLen = sub_2522A5318(a4);
  v11 = 0xFFFFFFFFLL;
  if (a5 == 1 && v10)
  {
    v12 = SecKeyDecrypt(v10, 0, a2, a1, a3, &plainTextLen);
    CFRelease(v10);
    if (!v12)
    {
      v14 = plainTextLen;
      if (v14 > sub_2522A5318(a4))
      {
        abort();
      }

      v15 = plainTextLen;
      if (plainTextLen)
      {
        if (*a3 == 1)
        {
          v16 = 1;
          while (plainTextLen != v16)
          {
            v17 = a3[v16++];
            if (v17 != 255)
            {
              if (v17)
              {
                return 0xFFFFFFFFLL;
              }

              v11 = plainTextLen - v16;
              plainTextLen -= v16;
              memmove(a3, &a3[v16], v15 - v16);
              return v11;
            }
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v11;
}

uint64_t sub_2522A64D0(int a1, const uint8_t *a2, uint8_t *a3, unsigned int **a4, int a5)
{
  v10 = sub_2522A66D8(a4, 0);
  cipherTextLen = sub_2522A5318(a4);
  result = 0xFFFFFFFFLL;
  if (a5 == 1 && v10)
  {
    v12 = SecKeyEncrypt(v10, 1u, a2, a1, a3, &cipherTextLen);
    CFRelease(v10);
    if (v12)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v13 = cipherTextLen;
      if (v13 > sub_2522A5318(a4))
      {
        abort();
      }

      return cipherTextLen;
    }
  }

  return result;
}

uint64_t sub_2522A6598(int a1, const uint8_t *a2, uint8_t *a3, unsigned int **a4, int a5)
{
  v10 = sub_2522A66D8(a4, 0);
  plainTextLen = sub_2522A5318(a4);
  v11 = 0xFFFFFFFFLL;
  if (a5 == 1 && v10)
  {
    v12 = SecKeyDecrypt(v10, 0, a2, a1, a3, &plainTextLen);
    CFRelease(v10);
    if (!v12)
    {
      v14 = plainTextLen;
      if (v14 > sub_2522A5318(a4))
      {
        abort();
      }

      v15 = plainTextLen;
      if (plainTextLen)
      {
        if (*a3 == 1)
        {
          v16 = 1;
          while (plainTextLen != v16)
          {
            v17 = a3[v16++];
            if (v17 != 255)
            {
              if (v17)
              {
                return 0xFFFFFFFFLL;
              }

              v11 = plainTextLen - v16;
              plainTextLen -= v16;
              memmove(a3, &a3[v16], v15 - v16);
              return v11;
            }
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v11;
}

uint64_t sub_2522A66D8(unsigned int **a1, int a2)
{
  v18 = 0;
  if (!a2)
  {
    v17 = 0;
    v16 = 0uLL;
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    memset(v13, 0, sizeof(v13));
    v11 = 0uLL;
    v12 = 0uLL;
    LODWORD(v11) = 1;
    if (!sub_2522A6DA4(a1[4], &v11 + 8) && !sub_2522A6DA4(a1[5], v13) && !sub_2522A6DA4(a1[6], &v13[1] + 8) && !sub_2522A6DA4(a1[7], v14) && !sub_2522A6DA4(a1[8], &v14[1] + 8) && !sub_2522A6DA4(a1[9], v15) && !sub_2522A6DA4(a1[10], &v15[1] + 8) && !sub_2522A6DA4(a1[11], &v16))
    {
      v9 = sub_2522A2348(&v11);
      v10 = malloc_type_malloc(v9, 0x58FC974FuLL);
      if (v10)
      {
        v7 = v10;
        if (!sub_2522A2328(v10 + v9 - 1, v9, &v11, &v18))
        {
          sub_2522A2358(&v11);
          if (v18 == v9)
          {
            v8 = MEMORY[0x277CDBE28](0, v7, v9, 1);
            goto LABEL_21;
          }

LABEL_27:
          abort();
        }

        free(v7);
      }
    }

    sub_2522A2358(&v11);
    return 0;
  }

  v12 = 0uLL;
  v13[0] = 0uLL;
  v11 = 0uLL;
  if (sub_2522A6DA4(a1[4], &v11))
  {
    goto LABEL_4;
  }

  if (sub_2522A6DA4(a1[5], &v12 + 8))
  {
    goto LABEL_4;
  }

  v5 = sub_2522A22E8(&v11);
  v6 = malloc_type_malloc(v5, 0x9F12B3B4uLL);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  if (!sub_2522A22C8(v6 + v5 - 1, v5, &v11, &v18))
  {
    sub_2522A22F8(&v11);
    if (v18 == v5)
    {
      v8 = MEMORY[0x277CDBE30](0, v7, v5, 1);
LABEL_21:
      v3 = v8;
      free(v7);
      return v3;
    }

    goto LABEL_27;
  }

  free(v7);
LABEL_4:
  sub_2522A22F8(&v11);
  return 0;
}

BOOL hc_PKCS5_PBKDF2_HMAC_SHA1(const char *a1, size_t passwordLen, uint8_t *salt, size_t saltLen, unsigned int rounds, size_t derivedKeyLen, uint8_t *derivedKey)
{
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = "";
  }

  return CCKeyDerivationPBKDF(2u, v12, passwordLen, salt, saltLen, 1u, rounds, derivedKey, derivedKeyLen) == 0;
}

void *sub_2522A6968(_DWORD *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040DB20BB55uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 12) = 1;
    if (a1)
    {
      hc_ENGINE_up_ref(a1);
      v3[3] = a1;
      v4 = a1;
    }

    else
    {
      v4 = sub_2522A5FE8();
      v3[3] = v4;
      if (!v4)
      {
        v5 = v3[2];
        if (!v5)
        {
          v5 = off_27F4D9130;
          v3[2] = off_27F4D9130;
        }

LABEL_6:
        (v5[5])(v3);
        return v3;
      }
    }

    v5 = sub_2522A5FA0(v4);
    v3[2] = v5;
    if (!v5)
    {
      hc_ENGINE_finish(a1);
      free(v3);
      return 0;
    }

    goto LABEL_6;
  }

  return v3;
}

void sub_2522A6A2C(_DWORD *a1)
{
  v1 = a1[12];
  if (v1 <= 0)
  {
    abort();
  }

  v3 = v1 - 1;
  a1[12] = v3;
  if (!v3)
  {
    (*(*(a1 + 2) + 48))(a1);
    v4 = *(a1 + 3);
    if (v4)
    {
      hc_ENGINE_finish(v4);
    }

    *(a1 + 6) = 0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;

    free(a1);
  }
}

uint64_t sub_2522A6AB4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 16) + 48))();
  v4 = *(a1 + 24);
  if (v4)
  {
    hc_ENGINE_finish(v4);
    *(a1 + 24) = 0;
  }

  *(a1 + 16) = a2;
  (*(a2 + 40))(a1);
  return 1;
}

uint64_t sub_2522A6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 + 16) + 64);
  if (v6)
  {
    return v6();
  }

  else
  {
    return 0;
  }
}

BOOL sub_2522A6B9C(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  v6 = *(a1 + 120);
  dataOutMoved = 0;
  v7 = __n;
  memcpy(__dst, __src, __n);
  return !CCCryptorUpdate(*v6, __src, v7, __dst, v7, &dataOutMoved) && dataOutMoved == v7;
}

uint64_t sub_2522A6C18(uint64_t a1)
{
  v1 = **(a1 + 120);
  if (v1)
  {
    CCCryptorRelease(v1);
  }

  return 1;
}

BOOL sub_2522A6D04(int a1, CCAlgorithm alg, CCOptions options, void *key, size_t keyLength, void *iv, CCCryptorRef *cryptorRef)
{
  v13 = a1 == 0;
  v14 = *cryptorRef;
  if (*cryptorRef)
  {
    if (!key && iv)
    {
      CCCryptorReset(v14, iv);
      return 1;
    }

    CCCryptorRelease(v14);
  }

  return CCCryptorCreate(v13, alg, options, key, keyLength, iv, cryptorRef) == 0;
}

uint64_t sub_2522A6DA4(unsigned int *a1, uint64_t a2)
{
  v4 = sub_2522A3D4C(a1);
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0xA85495A8uLL);
  *(a2 + 8) = v5;
  if (!v5)
  {
    return 12;
  }

  sub_2522A3E20(a1, v5);
  v6 = sub_2522A3E68(a1);
  result = 0;
  *(a2 + 16) = v6;
  return result;
}

void *sub_2522A6E10(const void **a1, void *a2)
{
  v3 = sub_2522A3D54(a1[1], *a1, a2);
  v4 = v3;
  if (v3)
  {
    sub_2522A3E54(v3, *(a1 + 4));
  }

  return v4;
}

unsigned int *sub_2522A6E58(uint64_t a1)
{
  v2 = sub_2522A4280(a1);
  v12 = 0;
  result = *(a1 + 8);
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (sub_2522A6DA4(result, v10) || sub_2522A6DA4(*(a1 + 16), &v10[1] + 8) || (v11 = 0, v4 = sub_2522A1D54(v10), v13 = v4, (v5 = malloc_type_malloc(v4, 0xE60F48EBuLL)) == 0))
  {
LABEL_5:
    sub_2522A1D64(v10);
    return 0;
  }

  v6 = v5;
  if (sub_2522A1D34(v5 + v4 - 1, v4, v10, &v12))
  {
    free(v6);
    goto LABEL_5;
  }

  sub_2522A1D64(v10);
  if (v12 != v4)
  {
    abort();
  }

  if (*v2)
  {
    SecDHDestroy();
    *v2 = 0;
  }

  if (!SecDHCreateFromParameters())
  {
    free(v6);
    v13 = sub_2522A3D4C(*(a1 + 8));
    v7 = malloc_type_malloc(v12, 0xBA66E9D9uLL);
    if (!v7)
    {
      goto LABEL_16;
    }

    v6 = v7;
    v8 = *v2;
    if (!SecDHGenerateKeypair())
    {
      v9 = sub_2522A3D54(v6, v13, 0);
      *(a1 + 32) = v9;
      if (v9)
      {
        free(v6);
        return 1;
      }
    }
  }

  free(v6);
LABEL_16:
  if (*v2)
  {
    SecDHDestroy();
  }

  result = 0;
  *v2 = 0;
  return result;
}

void *sub_2522A6FFC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = sub_2522A4280(a3);
  v11 = sub_2522A3D4C(*(a3 + 8));
  v6 = sub_2522A3D4C(a2);
  result = malloc_type_malloc(v6, 0xDB49E296uLL);
  if (result)
  {
    v8 = result;
    sub_2522A3E20(a2, result);
    v9 = *v5;
    v10 = SecDHComputeKey();
    free(v8);
    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

uint64_t sub_2522A70C0(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (result)
  {
    sub_2522A4274(a1, 0, result);
    return 1;
  }

  return result;
}

uint64_t sub_2522A7114(uint64_t a1)
{
  v1 = sub_2522A4280(a1);
  if (*v1)
  {
    SecDHDestroy();
  }

  free(v1);
  return 1;
}

void sub_2522A7188(char *a1, va_list a2)
{
  v3 = 0;
  if (vasprintf(&v3, a1, a2) >= 1 && v3 != 0)
  {
    syslog(3, "heim_abort: %s", v3);
    qword_27F4D9840 = v3;
  }

  abort();
}

void heim_warn_blocking(void *a1, dispatch_once_t *a2)
{
  heim_base_once_f(&qword_27F4D9820, 0, sub_2522A72A8);
  if (byte_27F4D9828 == 1 && pthread_is_threaded_np() && pthread_main_np())
  {

    heim_base_once_f(a2, a1, sub_2522A7278);
  }
}

uint64_t sub_2522A72A8()
{
  result = vproc_swap_integer();
  byte_27F4D9828 = 0;
  return result;
}

void heim_base_once_f(dispatch_once_t *predicate, void *context, dispatch_function_t function)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, context, function);
  }
}

CFTypeRef heim_retain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void heim_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFIndex heim_array_iterate_f(const __CFArray *a1, uint64_t a2, uint64_t (*a3)(const void *, int *, uint64_t))
{
  result = CFArrayGetCount(a1);
  v11 = 0;
  if (result >= 1)
  {
    v7 = result;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      result = a3(ValueAtIndex, &v11, a2);
      ++v8;
      if (v11)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 < v7;
      }
    }

    while (v10);
  }

  return result;
}

CFIndex heim_array_iterate(const __CFArray *a1, uint64_t a2)
{
  result = CFArrayGetCount(a1);
  v9 = 0;
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      result = (*(a2 + 16))(a2, ValueAtIndex, &v9);
      ++v6;
      if (v9)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 < v5;
      }
    }

    while (v8);
  }

  return result;
}

const void *heim_array_copy_value(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v3 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  return v3;
}

CFIndex heim_array_filter(const __CFArray *a1, uint64_t a2)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      if ((*(a2 + 16))(a2, ValueAtIndex))
      {
        CFArrayRemoveValueAtIndex(a1, v5);
      }

      else
      {
        ++v5;
      }

      result = CFArrayGetCount(a1);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t sub_2522A7558(const __CFArray *a1, const void *a2)
{
  v5.length = CFArrayGetCount(a1);
  v5.location = 0;
  return CFArrayContainsValue(a1, v5, a2);
}

const void *heim_dict_copy_value(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v3;
}

void sub_2522A761C(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a3;
  v3[1] = a2;
  CFDictionaryApplyFunction(a1, sub_2522A7654, v3);
}

void heim_dict_iterate(const __CFDictionary *a1, uint64_t a2)
{
  v2[0] = a2;
  v2[1] = 0;
  CFDictionaryApplyFunction(a1, sub_2522A7694, v2);
}

char *heim_string_copy_utf8(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x50C09CB0uLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

uint64_t heim_uniq_alloc(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_280C4F230 != -1)
  {
    sub_2522A8434();
  }

  if (a1 <= 0x1F)
  {
    sub_2522A8448(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  result = qword_280C4F238;
  if (qword_280C4F238)
  {
    result = sub_2522A7838(qword_280C4F238, a1, "base-uniq", a4, a5, a6, a7, a8);
    if (result)
    {
      *(result + 16) = a2;
      *(result + 24) = a3;
    }
  }

  return result;
}

uint64_t sub_2522A7838(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0xF)
  {
    sub_2522A8460(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v8 = a2 - 16;
  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), v8);
  }

  return v10;
}

void *heim_error_createv(int a1, const char *a2, va_list a3)
{
  if (qword_280C4F250 != -1)
  {
    sub_2522A8478();
  }

  if (!qword_280C4F258)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x400uLL, 0x35580A4CuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (vsnprintf(v6, 0x400uLL, a2, a3) < 0)
  {
    v9 = 0;
  }

  else
  {
    Instance = _CFRuntimeCreateInstance();
    v9 = Instance;
    if (Instance)
    {
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      v10 = CFStringCreateWithCString(0, v7, 0x8000100u);
      *(v9 + 4) = a1;
      v9[3] = v10;
      v9[4] = 0;
    }
  }

  free(v7);
  return v9;
}

uint64_t heim_error_copy_string(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRetain(*(a1 + 24));
  }

  return v1;
}

uint64_t heim_error_append(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 32) = cf;
  return a1;
}

uint64_t heim_number_get_int(const __CFNumber *a1)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  return valuePtr;
}

void sub_2522A7A78(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

intptr_t sub_2522A7A8C(NSObject *a1, uint64_t a2)
{
  v3 = dispatch_time(0, 1000000000 * a2);

  return dispatch_semaphore_wait(a1, v3);
}

uint64_t sub_2522A7AD8()
{
  result = _CFRuntimeRegisterClass();
  qword_280C4F238 = result;
  return result;
}

uint64_t sub_2522A7B00(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2522A7B10()
{
  result = _CFRuntimeRegisterClass();
  qword_280C4F258 = result;
  return result;
}

void sub_2522A7B38(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_2522A7DF4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136446210;
  v4 = a1;
  _os_log_debug_impl(&dword_252245000, a2, OS_LOG_TYPE_DEBUG, "%{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}