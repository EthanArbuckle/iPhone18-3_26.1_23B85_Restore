uint64_t client_dispose(void *a1)
{
  v2 = a1[568];
  if (v2)
  {
    v3 = *(*(v2 + 16) + 56);
    if (v3)
    {
      v3(a1[269], *(a1[569] + 24));
    }
  }

  a1[269] = 0;
  v4 = a1[570];
  if (v4)
  {
    off_280B0E738(v4);
  }

  v5 = a1[569];
  if (v5)
  {
    _sasl_free_utils((v5 + 24));
    off_280B0E738(a1[569]);
  }

  v6 = a1[571];
  if (v6 != *(cmechlist + 16) && v6 != 0)
  {
    do
    {
      v8 = *(v6 + 24);
      off_280B0E738(v6);
      v6 = v8;
    }

    while (v8);
  }

  return _sasl_conn_dispose(a1);
}

int sasl_client_start(sasl_conn_t *conn, const char *mechlist, sasl_interact_t **prompt_need, const char **clientout, unsigned int *clientoutlen, const char **mech)
{
  if (!_sasl_client_active)
  {
    return -12;
  }

  v6 = conn;
  if (!conn)
  {
    return -7;
  }

  if (!mechlist)
  {
    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/client.c near line %d", 819);
    v12 = -7;
    goto LABEL_87;
  }

  v10 = prompt_need;
  if (prompt_need && *prompt_need)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v76 = clientout;
  v77 = clientoutlen;
  v13 = *(conn + 576);
  v14 = *(conn + 584);
  v15 = v13 >= v14;
  v16 = v13 - v14;
  if (!v15)
  {
    v16 = 0;
  }

  v78 = v16;
  v17 = *(conn + 569);
  v80 = *(v17 + 24);
  v18 = *(v17 + 128) != 0;
  v19 = strdup(mechlist);
  __lasts = 0;
  if (*v19)
  {
    v20 = 0;
    v21 = 2;
    v22 = MEMORY[0x277D85DE0];
    do
    {
      v23 = v19[v20];
      if ((v23 & 0x80000000) != 0)
      {
        v24 = __maskrune(v19[v20], 0x500uLL);
      }

      else
      {
        v24 = *(v22 + 4 * v23 + 60) & 0x500;
      }

      if (v23 != 95 && v23 != 45 && v24 == 0)
      {
        ++v21;
      }

      ++v20;
    }

    while (v20 < strlen(v19));
  }

  else
  {
    v21 = 2;
  }

  v27 = (*(v80 + 40))(8 * v21);
  bzero(v27, 8 * v21);
  if (v28)
  {
    v74 = mech;
    v29 = 0;
    while (1)
    {
      v27[v29++] = v28;
      if (v29 > v21)
      {
        goto LABEL_42;
      }

      if (!v28)
      {
        goto LABEL_38;
      }
    }
  }

  if (!v27)
  {
LABEL_42:
    free(v19);
    goto LABEL_83;
  }

  v74 = mech;
  v29 = 0;
LABEL_38:
  qsort_b(v27, v29, 8uLL, &__block_literal_global_25);
  v30 = *v27;
  if (*v27)
  {
    v31 = v6;
    v32 = v27 + 1;
    v33 = 1;
    do
    {
      v33 += strlen(v30) + 1;
      v34 = *v32++;
      v30 = v34;
    }

    while (v34);
  }

  else
  {
    v31 = v6;
    v33 = 1;
  }

  v35 = (*(v80 + 40))(v33);
  bzero(v35, v33);
  v36 = *v27;
  if (*v27)
  {
    v37 = v27 + 1;
    do
    {
      strlcat(v35, v36, v33);
      strlcat(v35, " ", v33);
      v38 = *v37++;
      v36 = v38;
    }

    while (v38);
  }

  (*(v80 + 64))(v27);
  (*(v80 + 64))(v19);
  if (!v35)
  {
    v12 = -4;
    v6 = v31;
    goto LABEL_87;
  }

  v6 = v31;
  if (!*v35)
  {
LABEL_83:
    v12 = -4;
    goto LABEL_87;
  }

  v39 = strlen(v35);
  v40 = (*(v80 + 40))(v39 + 1);
  if (!v40)
  {
    v12 = -2;
    goto LABEL_87;
  }

  v82 = 0;
  v81 = 0;
  v72 = (v31 + 2304);
  conna = v31;
  v41 = MEMORY[0x277D85DE0];
  __s = v40;
  v42 = v40;
  do
  {
    v43 = 0;
    v44 = 0;
    v45 = v18;
    do
    {
      v46 = v35[v44];
      if ((v46 & 0x80000000) != 0)
      {
        if (__maskrune(v35[v44], 0x500uLL))
        {
          goto LABEL_76;
        }
      }

      else if ((*(v41 + 4 * v46 + 60) & 0x500) != 0)
      {
        goto LABEL_76;
      }

      if (v46 != 45 && v46 != 95)
      {
        v47 = v44 - v43;
        if (v44 != v43)
        {
          v48 = v47 >= 6 && strncasecmp(&v35[v44 - 5], "-PLUS", 5uLL) == 0;
          if (v48 == v18)
          {
            memcpy(v42, &v35[v43], v44 - v43);
            v49 = v81;
            if (v81)
            {
              v50 = 1;
            }

            else
            {
              v50 = v18 == 0;
            }

            v42[v44 - v43] = 0;
            v42 += v47 + 1;
            ++v82;
            if (!v50)
            {
              v49 = 1;
            }

            v81 = v49;
          }
        }

        v43 = v44 + 1;
      }

LABEL_76:
      ++v44;
    }

    while (v44 <= v39);
    v18 = 0;
  }

  while (v45);
  v51 = *(v80 + 64);
  if (!v82)
  {
    v51(__s);
    v12 = -4;
    v6 = conna;
    goto LABEL_87;
  }

  v51(v35);
  v6 = conna;
  v52 = *(*(conna + 569) + 128);
  v11 = __s;
  if (v52)
  {
    v53 = v78;
    if (v82 == 1)
    {
      if (*(v52 + 8))
      {
        v54 = 2;
      }

      else
      {
        v54 = 0;
      }

      goto LABEL_93;
    }

    if (v81 || !*(v52 + 8))
    {
      v54 = 1;
      goto LABEL_93;
    }

LABEL_135:
    v12 = -4;
    goto LABEL_45;
  }

  v54 = 0;
  v53 = v78;
LABEL_93:
  v56 = *(conna + 571);
  if (!v56)
  {
    goto LABEL_134;
  }

  v57 = 0;
  while (2)
  {
    v58 = v82;
    while (1)
    {
      v83 = -1431655766;
      v59 = strlen(v11);
      if (_sasl_is_equal_mech(v11, **(v56 + 16), v59, &v83))
      {
        break;
      }

      v11 += v59 + 1;
      if (!--v58)
      {
        goto LABEL_117;
      }
    }

    if (!have_prompts(conna, *(v56 + 16)))
    {
      v58 = 0;
LABEL_117:
      v11 = __s;
      goto LABEL_118;
    }

    v60 = *(v56 + 16);
    v11 = __s;
    if (v53 <= *(v60 + 8))
    {
      v61 = *(conna + 579);
      v62 = *(conna + 584);
      if (v62 > 1 && *(conna + 576) <= v62)
      {
        v61 &= ~1u;
      }

      if ((v61 & ~*(v60 + 12)) == 0)
      {
        v64 = *(v60 + 16);
        if ((v54 != 2 || (v64 & 0x800) != 0) && ((v64 & 1) == 0 || *(conna + 298)))
        {
          v65 = *(conna + 6);
          if (((v64 & 0x20) != 0 || (v65 & 8) == 0) && ((v64 & 0x1000) != 0 || (v65 & 0x10) == 0))
          {
            if (v83)
            {
              v66 = *(*(conna + 569) + 128) == 0;
            }

            else
            {
              v66 = 1;
            }

            if (v66)
            {
              v57 = v54;
            }

            else
            {
              v57 = 2;
            }

            if (v74)
            {
              *v74 = *v60;
            }

            v58 = v56;
            break;
          }
        }
      }
    }

    v58 = 0;
LABEL_118:
    v56 = *(v56 + 24);
    if (v56)
    {
      continue;
    }

    break;
  }

  if (!v58)
  {
LABEL_134:
    sasl_seterror(conna, 0, "No worthy mechs found");
    goto LABEL_135;
  }

  v67 = *(conna + 2);
  v68 = *(conna + 569);
  *v68 = v67;
  *(v68 + 56) = strlen(v67);
  v69 = *(conna + 298);
  if (v69)
  {
    *(v68 + 8) = v69;
    *(v68 + 60) = strlen(v69);
  }

  v70 = *(conna + 570);
  *(v68 + 16) = v70;
  *(v68 + 64) = strlen(v70);
  *(v68 + 112) = *(conna + 584);
  v71 = v72[1];
  *(v68 + 80) = *v72;
  *(v68 + 96) = v71;
  *(*(conna + 569) + 168) = v57;
  *(conna + 568) = v58;
  v12 = (*(*(v58 + 16) + 40))(*(*(v58 + 16) + 32), *(conna + 569), conna + 2152);
  clientout = v76;
  clientoutlen = v77;
  v10 = prompt_need;
  if (!v12)
  {
LABEL_7:
    if (clientout)
    {
      if ((*(*(*(v6 + 568) + 16) + 16) & 0x10) == 0)
      {
        v12 = sasl_client_step(v6, 0, 0, v10, clientout, clientoutlen);
        goto LABEL_45;
      }

      *clientout = 0;
      *clientoutlen = 0;
    }

    v12 = 1;
  }

LABEL_45:
  if (v11)
  {
    (*(*(*(v6 + 569) + 24) + 64))(v11);
  }

  if (v12 < 0)
  {
LABEL_87:
    *(v6 + 600) = v12;
  }

  return v12;
}

uint64_t have_prompts(sasl_conn_t *conn, uint64_t a2)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a2 + 24);
  if (!v2)
  {
    v2 = &have_prompts_default_prompts;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 1;
  }

  v5 = v2 + 1;
  while ((_sasl_getcallback(conn, v3, &v9, &v8) & 0xFFFFFFFD) == 0)
  {
    v6 = *v5++;
    v3 = v6;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sasl_client_mechs()
{
  if (!_sasl_client_active)
  {
    return 0;
  }

  v0 = *(cmechlist + 16);
  if (v0)
  {
    v1 = 0;
    while (1)
    {
      result = _sasl_allocation_utils(16);
      if (!(v1 | result))
      {
        break;
      }

      if (!result)
      {
        v3 = *(v1 + 8);
        do
        {
          off_280B0E738(v1);
          v1 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
        return 0;
      }

      *result = **(v0 + 16);
      *(result + 8) = v1;
      v0 = *(v0 + 24);
      v1 = result;
      if (!v0)
      {
        return result;
      }
    }
  }

  return 0;
}

int sasl_client_plugin_info(const char *mech_list, sasl_client_info_callback_t *info_cb, void *info_cb_rock)
{
  if (info_cb)
  {
    v3 = info_cb;
  }

  else
  {
    v3 = _sasl_print_mechanism;
  }

  memset(v16, 170, 24);
  if (!cmechlist)
  {
    return -12;
  }

  (v3)(0, 0);
  if (mech_list)
  {
    v6 = strdup(mech_list);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      do
      {
        v9 = v8;
        v10 = strchr(v8, 32);
        v8 = v10;
        if (v10)
        {
          *v10 = 0;
          v8 = v10 + 1;
        }

        for (i = *(cmechlist + 16); i; i = *(i + 3))
        {
          if (!strcasecmp(v9, **(i + 2)))
          {
            v12 = *i;
            *&v16[1] = *(i + 2);
            v16[0] = v12;
            (v3)(v16, 1, info_cb_rock);
          }
        }
      }

      while (v8);
    }

    free(v7);
  }

  else
  {
    for (j = *(cmechlist + 16); j; j = *(j + 3))
    {
      v15 = *j;
      *&v16[1] = *(j + 2);
      v16[0] = v15;
      (v3)(v16, 1, info_cb_rock);
    }
  }

  (v3)(0, 2, info_cb_rock);
  return 0;
}

uint64_t _sasl_print_mechanism(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    return result;
  }

  if (!a2)
  {

    return puts("List of client plugins follows");
  }

  v3 = result;
  printf("Plugin %s ", *(result + 8));
  printf("[loaded]");
  printf(", \tAPI version: %d\n", *v3);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_35;
  }

  printf("\tSASL mechanism: %s, best SSF: %d\n", *v4, *(v4 + 8));
  printf("\tsecurity flags:");
  v5 = *(*(v3 + 16) + 12);
  if ((v5 & 0x10) != 0)
  {
    printf("%cNO_ANONYMOUS", 32);
    v5 = *(*(v3 + 16) + 12);
    v6 = 124;
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = 32;
  if (v5)
  {
LABEL_12:
    printf("%cNO_PLAINTEXT", v6);
    v5 = *(*(v3 + 16) + 12);
    v6 = 124;
  }

LABEL_13:
  if ((v5 & 2) != 0)
  {
    printf("%cNO_ACTIVE", v6);
    v5 = *(*(v3 + 16) + 12);
    v6 = 124;
    if ((v5 & 4) == 0)
    {
LABEL_15:
      if ((v5 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_15;
  }

  printf("%cNO_DICTIONARY", v6);
  v5 = *(*(v3 + 16) + 12);
  v6 = 124;
  if ((v5 & 8) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  printf("%cFORWARD_SECRECY", v6);
  v5 = *(*(v3 + 16) + 12);
  v6 = 124;
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_25:
  printf("%cPASS_CREDENTIALS", v6);
  v6 = 124;
  if ((*(*(v3 + 16) + 12) & 0x40) != 0)
  {
LABEL_18:
    printf("%cMUTUAL_AUTH", v6);
  }

LABEL_19:
  printf("\n\tfeatures:");
  v7 = *(*(v3 + 16) + 16);
  if ((v7 & 2) != 0)
  {
    printf("%cWANT_CLIENT_FIRST", 32);
    v7 = *(*(v3 + 16) + 16);
    v8 = 124;
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v8 = 32;
  if ((v7 & 0x10) != 0)
  {
LABEL_28:
    printf("%cSERVER_FIRST", v8);
    v7 = *(*(v3 + 16) + 16);
    v8 = 124;
  }

LABEL_29:
  if ((v7 & 0x20) != 0)
  {
    printf("%cPROXY_AUTHENTICATION", v8);
    v7 = *(*(v3 + 16) + 16);
    v8 = 124;
    if ((v7 & 1) == 0)
    {
LABEL_31:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_40;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_31;
  }

  printf("%cNEED_SERVER_FQDN", v8);
  v7 = *(*(v3 + 16) + 16);
  v8 = 124;
  if ((v7 & 0x100) == 0)
  {
LABEL_32:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_33;
    }

LABEL_41:
    printf("%cCHANNEL_BINDING", v8);
    v8 = 124;
    if ((*(*(v3 + 16) + 16) & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_40:
  printf("%cGSS_FRAMING", v8);
  v7 = *(*(v3 + 16) + 16);
  v8 = 124;
  if ((v7 & 0x800) != 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  if ((v7 & 0x1000) != 0)
  {
LABEL_34:
    printf("%cSUPPORTS_HTTP", v8);
  }

LABEL_35:

  return putchar(10);
}

uint64_t ___sasl_sort_mechlist_block_invoke(uint64_t a1, char **a2, char **a3)
{
  v3 = *a3;
  v4 = _sasl_mech_index(*a2);
  return v4 - _sasl_mech_index(v3);
}

uint64_t _sasl_mech_index(char *__s)
{
  v6 = 0;
  v1 = *(cmechlist + 16);
  if (!v1)
  {
    return 0x7FFFFFFFLL;
  }

  v3 = 0;
  while (1)
  {
    v4 = strlen(__s);
    if (_sasl_is_equal_mech(__s, **(v1 + 16), v4, &v6))
    {
      break;
    }

    v3 = (v3 + 1);
    v1 = *(v1 + 24);
    if (!v1)
    {
      return 0x7FFFFFFFLL;
    }
  }

  return v3;
}

pthread_mutex_t *sasl_mutex_alloc()
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init(v0, 0);
  }

  return v1;
}

uint64_t sasl_mutex_lock(pthread_mutex_t *a1)
{
  if (pthread_mutex_lock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sasl_mutex_unlock(pthread_mutex_t *a1)
{
  if (pthread_mutex_unlock(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sasl_mutex_free(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);

    free(a1);
  }
}

uint64_t _sasl_strdup(const char *a1, char **a2, size_t *a3)
{
  v6 = strlen(a1);
  if (a3)
  {
    *a3 = v6;
  }

  v7 = _sasl_allocation_utils((v6 + 1));
  *a2 = v7;
  if (!v7)
  {
    return 4294967294;
  }

  strcpy(v7, a1);
  return 0;
}

uint64_t _sasl_add_string(uint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = "(null)";
  }

  v8 = strlen(v7);
  if (_buf_alloc(a1, a2, *a3 + v8))
  {
    return 4294967294;
  }

  strncpy((*a1 + *a3), v7, v8);
  result = 0;
  *a3 += v8;
  return result;
}

uint64_t _buf_alloc(uint64_t *a1, unint64_t *a2, unint64_t a3)
{
  if (*a1)
  {
    v6 = *a2;
    if (*a2 < a3)
    {
      do
      {
        v6 *= 2;
      }

      while (v6 < a3);
      v7 = off_280B0E730();
      *a1 = v7;
      v8 = v7 ? v6 : 0;
      *a2 = v8;
      if (!v7)
      {
        return 4294967294;
      }
    }

    return 0;
  }

  v9 = _sasl_allocation_utils(a3);
  *a1 = v9;
  if (v9)
  {
    *a2 = a3;
    return 0;
  }

  *a2 = 0;
  return 4294967294;
}

int sasl_encode(sasl_conn_t *conn, const char *input, unsigned int inputlen, const char **output, unsigned int *outputlen)
{
  if (!conn)
  {
    return -7;
  }

  if (input && inputlen && output && outputlen)
  {
    invec.iov_base = input;
    invec.iov_len = inputlen;
    result = sasl_encodev(conn, &invec, 1u, output, outputlen);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", 343);
    result = -7;
  }

  *(conn + 600) = result;
  return result;
}

int sasl_encodev(sasl_conn_t *conn, const iovec *invec, unsigned int numiov, const char **output, unsigned int *outputlen)
{
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0;
  if (!conn)
  {
    return -7;
  }

  LODWORD(v5) = numiov;
  if (!numiov || (v7 = invec) == 0 || !output || !outputlen)
  {
    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", 468);
    v31 = -7;
LABEL_34:
    *(conn + 600) = v31;
    return v31;
  }

  if (!*(conn + 578))
  {
    sasl_seterror(conn, 0, "called sasl_encode[v] with application that does not support security layers");
    return -15;
  }

  if (!*(conn + 276))
  {
    v32 = (conn + 2392);
    v33 = _iovec_to_buf(invec, numiov, conn + 299);
    v31 = v33;
    if (!v33)
    {
      *output = **v32;
      *outputlen = (*v32)[1];
      return v31;
    }

    sasl_seterror(conn, 0, "Internal Error %d in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", v33, 481);
    goto LABEL_34;
  }

  v38 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *&v41 = 0;
  v15 = *(conn + 548);
  do
  {
    while (1)
    {
      v39 = v5;
      v16 = v14;
      v17 = &v7[v14];
      if (v17->iov_len + v13 <= v15)
      {
        ++v14;
        v13 += v17->iov_len;
        v5 = v39;
        goto LABEL_28;
      }

      v37 = v7;
      *&v41 = v17->iov_base;
      *(&v41 + 1) = v15 - v13;
      v18 = v14 + 2;
      if (v18 <= v38)
      {
        v22 = v12;
      }

      else
      {
        v19 = v12;
        v20 = v10;
        v21 = off_280B0E730(v12, 16 * (v14 + 2));
        v10 = v20;
        v22 = v21;
        v38 = v16 + 2;
        if (!v21)
        {
          if (v19)
          {
            off_280B0E738(v19);
          }

          sasl_seterror(conn, 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", 525);
          v31 = -2;
          goto LABEL_34;
        }
      }

      v36 = v16 + 1;
      if (v11)
      {
        *v22 = v11;
        v22[1] = v10;
        v23 = 1;
      }

      else
      {
        v23 = 0;
        v18 = (v16 + 1);
      }

      if (v16)
      {
        v24 = &v22[2 * v23];
        v25 = v16;
        v26 = v37;
        do
        {
          v27 = *v26++;
          *v24++ = v27;
          --v25;
        }

        while (v25);
      }

      *&v22[2 * v23 + 2 * v16] = v41;
      v28 = _sasl_encodev(conn, v22, v18, &v40, output, outputlen);
      if (v28)
      {
        v31 = v28;
LABEL_51:
        off_280B0E738(v22);
        goto LABEL_52;
      }

      v11 = v41 + *(&v41 + 1);
      v13 = v17->iov_len + v13 - *(conn + 548);
      v7 = &v37[v36];
      v5 = v39 - v36;
      while (1)
      {
        v15 = *(conn + 548);
        v29 = v13 - v15;
        if (v13 <= v15)
        {
          break;
        }

        *&v41 = v11;
        *(&v41 + 1) = v15;
        v11 += v15;
        v30 = _sasl_encodev(conn, &v41, 1, &v40, output, outputlen);
        v13 = v29;
        if (v30)
        {
          goto LABEL_49;
        }
      }

      if (v13)
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v14 = 0;
      v31 = 0;
      v12 = v22;
      if (!v5)
      {
        goto LABEL_50;
      }
    }

    v14 = 0;
    v12 = v22;
    v10 = v13;
LABEL_28:
    ;
  }

  while (v14 < v5);
  v22 = v12;
  if (v11)
  {
    *&v41 = v11;
    *(&v41 + 1) = v10;
    v34 = _sasl_encodev(conn, &v41, 1, &v40, output, outputlen);
    v31 = v34;
    if (!v5 || v34)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v5)
  {
LABEL_48:
    v30 = _sasl_encodev(conn, v7, v5, &v40, output, outputlen);
LABEL_49:
    v31 = v30;
LABEL_50:
    if (!v22)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v31 = 0;
  if (v12)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (v31 < 0)
  {
    goto LABEL_34;
  }

  return v31;
}

uint64_t _iovec_to_buf(uint64_t a1, int a2, void **a3)
{
  result = 4294967289;
  if (a1 && a3)
  {
    LODWORD(v6) = a2;
    v7 = *a3;
    if (!*a3)
    {
      v8 = _sasl_allocation_utils(24);
      *a3 = v8;
      if (!v8)
      {
        return 4294967294;
      }

      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v7 = *a3;
    }

    v7[1] = 0;
    v9 = 0;
    if (v6)
    {
      v10 = v6;
      v11 = (a1 + 8);
      do
      {
        v12 = *v11;
        v11 += 2;
        v9 += v12;
        --v10;
      }

      while (v10);
      v7[1] = v9;
    }

    if (_buf_alloc(v7, v7 + 2, v9))
    {
      return 4294967294;
    }

    bzero(*v7, v7[2]);
    if (v6)
    {
      v13 = *v7;
      v6 = v6;
      v14 = (a1 + 8);
      do
      {
        memcpy(v13, *(v14 - 1), *v14);
        v15 = *v14;
        v14 += 2;
        v13 += v15;
        --v6;
      }

      while (v6);
    }

    return 0;
  }

  return result;
}

uint64_t _sasl_encodev(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, const void **a5, _DWORD *a6)
{
  v6 = *(a1 + 2208);
  if (!v6)
  {
    _sasl_encodev_cold_1();
  }

  if (*a4 == 1)
  {
    v13 = *a6;
    *(a1 + 4528) = v13;
    v14 = *(a1 + 4520);
    if (v14)
    {
      if (*(a1 + 4536) < v13)
      {
        *(a1 + 4536) = v13 + 4096;
        v14 = (off_280B0E730)();
        if (!v14)
        {
          v22 = 397;
          goto LABEL_22;
        }

        *(a1 + 4520) = v14;
      }
    }

    else
    {
      *(a1 + 4536) = v13 + 4096;
      v14 = _sasl_allocation_utils(v13 + 4097);
      *(a1 + 4520) = v14;
      if (!v14)
      {
        v22 = 384;
        goto LABEL_22;
      }
    }

    memcpy(v14, *a5, *a6);
    v6 = *(a1 + 2208);
  }

  result = v6(*(a1 + 2152), a2, a3, a5, a6);
  if (*a4 < 1 || result != 0)
  {
    ++*a4;
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  v17 = *(a1 + 4528);
  v18 = *a6;
  v19 = v17 + v18;
  v20 = *(a1 + 4520);
  if (v17 + v18 <= *(a1 + 4536))
  {
LABEL_18:
    memcpy((v20 + v17), *a5, v18);
    result = 0;
    v21 = *(a1 + 4528) + *a6;
    *(a1 + 4528) = v21;
    *a5 = *(a1 + 4520);
    *a6 = v21;
    ++*a4;
    return result;
  }

  *(a1 + 4536) = v19;
  v20 = off_280B0E730(v20, v19 + 1);
  if (v20)
  {
    *(a1 + 4520) = v20;
    v17 = *(a1 + 4528);
    v18 = *a6;
    goto LABEL_18;
  }

  v22 = 423;
LABEL_22:
  sasl_seterror(a1, 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", v22);
  result = 4294967294;
LABEL_23:
  *(a1 + 2400) = result;
  return result;
}

uint64_t _sasl_free_utils(uint64_t *a1)
{
  if (!a1)
  {
    return 4294967289;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  sasl_randfree((v2 + 16));
  off_280B0E738(v2);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t _sasl_conn_init(uint64_t a1, const char *a2, int a3, int a4, uint64_t a5, const char *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = a4;
  if (_sasl_strdup(a2, (a1 + 16), 0))
  {
    v16 = 781;
LABEL_3:
    sasl_seterror(a1, 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", v16);
    result = 4294967294;
LABEL_6:
    *(a1 + 2400) = result;
    goto LABEL_7;
  }

  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 24) = a3;
  result = sasl_setprop(a1, 8, a7);
  if (result)
  {
    goto LABEL_6;
  }

  result = sasl_setprop(a1, 9, a8);
  if (result)
  {
    goto LABEL_6;
  }

  *(a1 + 2392) = 0;
  *(a1 + 2152) = 0;
  *(a1 + 2352) = 0;
  *(a1 + 2360) = a5;
  *(a1 + 2368) = a9;
  *(a1 + 2376) = a10;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2400) = 0;
  *(a1 + 2408) = 0u;
  *(a1 + 2424) = vdupq_n_s64(0x96uLL);
  if (_buf_alloc((a1 + 2408), (a1 + 2424), 0x96uLL))
  {
    v16 = 811;
    goto LABEL_3;
  }

  if (_buf_alloc((a1 + 2416), (a1 + 2432), 0x96uLL))
  {
    v16 = 813;
    goto LABEL_3;
  }

  **(a1 + 2408) = 0;
  **(a1 + 2416) = 0;
  *(a1 + 2456) = 0;
  if (a6)
  {
    v19 = (a1 + 2384);
    v20 = a6;
  }

  else
  {
    if (*a1 != 1)
    {
      result = 0;
      *(a1 + 2384) = 0;
      goto LABEL_7;
    }

    memset(v21, 0, sizeof(v21));
    if (get_fqhostname(v21, 256, 0))
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_7;
    }

    v20 = v21;
    v19 = (a1 + 2384);
  }

  result = _sasl_strdup(v20, v19, 0);
  if (result)
  {
    v16 = 839;
    goto LABEL_3;
  }

LABEL_7:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

int sasl_setprop(sasl_conn_t *conn, int propnum, const void *value)
{
  if (!conn)
  {
    return -7;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v5 = -7;
  v6 = "Unknown parameter type";
  if (propnum > 20)
  {
    if (propnum <= 99)
    {
      if (propnum == 21)
      {
        v5 = 0;
        if (*conn == 1)
        {
          *(*(conn + 572) + 168) = value;
        }

        else
        {
          *(*(conn + 569) + 128) = value;
        }
      }

      else
      {
        if (propnum != 22)
        {
          goto LABEL_60;
        }

        v5 = 0;
        if (*conn == 1)
        {
          *(*(conn + 572) + 176) = value;
        }

        else
        {
          *(*(conn + 569) + 136) = value;
        }
      }
    }

    else
    {
      switch(propnum)
      {
        case 'f':
          if (value && *value)
          {
            if (_sasl_strdup(value, &v32, 0))
            {
              v8 = 1167;
              goto LABEL_46;
            }
          }

          else
          {
            v32 = 0;
          }

          v13 = *(conn + 293);
          if (v13)
          {
            off_280B0E738(v13);
          }

          v5 = 0;
          *(conn + 293) = v32;
          break;
        case 'e':
          if (!*(value + 2) && *value)
          {
            sasl_seterror(conn, 0, "Attempt to disable security layers (maxoutbuf == 0) with min_ssf > 0");
            v5 = -15;
            goto LABEL_61;
          }

          v10 = *value;
          *(conn + 145) = *(value + 1);
          *(conn + 144) = v10;
          v5 = 0;
          if (*conn == 1)
          {
            v11 = *(conn + 572);
            v12 = *(value + 1);
            *(v11 + 96) = *value;
            *(v11 + 112) = v12;
          }

          else
          {
            v15 = *(conn + 569);
            v16 = *(value + 1);
            *(v15 + 80) = *value;
            *(v15 + 96) = v16;
          }

          break;
        case 'd':
          v7 = *value;
          *(conn + 584) = *value;
          v5 = 0;
          if (*conn == 1)
          {
            *(*(conn + 572) + 128) = v7;
          }

          else
          {
            *(*(conn + 569) + 112) = v7;
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else
  {
    if (propnum > 8)
    {
      if (propnum != 9)
      {
        if (propnum != 17)
        {
          if (propnum == 18)
          {
            v5 = 0;
            if (*conn == 2)
            {
              *(*(conn + 569) + 120) = value;
            }

            else
            {
              *(*(conn + 572) + 160) = value;
            }

            return v5;
          }

          goto LABEL_60;
        }

        if (*conn == 1)
        {
          v9 = *(conn + 568);
          if (v9)
          {
            off_280B0E738(v9);
            *(conn + 568) = 0;
          }

          if (!value || !*value)
          {
            v5 = 0;
            v19 = *(conn + 572);
            *(v19 + 8) = 0;
            *(v19 + 52) = 0;
            return v5;
          }

          if (!_sasl_strdup(value, conn + 568, 0))
          {
            v30 = *(conn + 568);
            v31 = *(conn + 572);
            *(v31 + 8) = v30;
            v5 = 0;
            *(v31 + 52) = strlen(v30);
            return v5;
          }

          v8 = 1321;
          goto LABEL_46;
        }

        v5 = -5;
        v6 = "Tried to set application name on non-server connection";
LABEL_60:
        sasl_seterror(conn, 0, v6);
        goto LABEL_61;
      }

      if (value)
      {
        if (_sasl_ipfromstring(value, 0, 0))
        {
          v6 = "Bad IPREMOTEPORT value";
          goto LABEL_60;
        }

        v20 = conn + 1093;
        __strcpy_chk();
        *(conn + 8) = 1;
        if (*conn != 1)
        {
          if (*conn == 2)
          {
            v22 = *(conn + 569);
            *(v22 + 48) = v20;
            v23 = strlen(v20);
            v5 = 0;
            *(v22 + 72) = v23;
            return v5;
          }

          return 0;
        }

        v21 = *(conn + 572);
LABEL_86:
        *(v21 + 40) = v20;
        v27 = strlen(v20);
        v5 = 0;
        *(v21 + 68) = v27;
        return v5;
      }

      *(conn + 8) = 0;
      if (*conn != 1)
      {
        if (*conn == 2)
        {
          v5 = 0;
          v18 = *(conn + 569);
          *(v18 + 48) = 0;
          *(v18 + 72) = 0;
          return v5;
        }

        return 0;
      }

      v5 = 0;
      v17 = *(conn + 572);
      goto LABEL_83;
    }

    if (propnum != 3)
    {
      if (propnum != 8)
      {
        goto LABEL_60;
      }

      if (value)
      {
        if (_sasl_ipfromstring(value, 0, 0))
        {
          v6 = "Bad IPLOCALPORT value";
          goto LABEL_60;
        }

        v20 = conn + 36;
        __strcpy_chk();
        *(conn + 7) = 1;
        if (*conn == 1)
        {
          v25 = *(conn + 572);
          *(v25 + 32) = v20;
          v26 = strlen(v20);
          v5 = 0;
          *(v25 + 64) = v26;
          return v5;
        }

        if (*conn == 2)
        {
          v21 = *(conn + 569);
          goto LABEL_86;
        }

        return 0;
      }

      *(conn + 7) = 0;
      if (*conn == 1)
      {
        v5 = 0;
        v24 = *(conn + 572);
        *(v24 + 32) = 0;
        *(v24 + 64) = 0;
        return v5;
      }

      if (*conn != 2)
      {
        return 0;
      }

      v5 = 0;
      v17 = *(conn + 569);
LABEL_83:
      *(v17 + 40) = 0;
      *(v17 + 68) = 0;
      return v5;
    }

    if (*conn != 1)
    {
      v5 = -5;
      v6 = "Tried to set realm on non-server connection";
      goto LABEL_60;
    }

    if (!value || !*value)
    {
      sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d");
      goto LABEL_61;
    }

    if (_sasl_strdup(value, &v32, 0))
    {
      v8 = 1188;
LABEL_46:
      sasl_seterror(conn, 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", v8);
      v5 = -2;
LABEL_61:
      *(conn + 600) = v5;
      return v5;
    }

    v28 = *(conn + 569);
    if (v28)
    {
      off_280B0E738(v28);
    }

    v5 = 0;
    v29 = v32;
    *(conn + 569) = v32;
    *(*(conn + 572) + 24) = v29;
  }

  return v5;
}

uint64_t _sasl_common_init(uint64_t a1)
{
  v1 = sasl_global_utils;
  if (sasl_global_utils)
  {
    *(sasl_global_utils + 24) = a1;
    *(v1 + 32) = _sasl_global_getopt;
    if (!free_mutex)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (free_mutex)
  {
    return 0;
  }

  sasl_global_utils = _sasl_alloc_utils(0, a1);
  if (!sasl_global_utils)
  {
    return 4294967294;
  }

LABEL_6:
  result = sasl_canonuser_add_plugin("INTERNAL", internal_canonuser_init);
  if (result)
  {
    return result;
  }

  if (free_mutex)
  {
    return 0;
  }

  free_mutex = _sasl_mutex_utils();
  if (free_mutex)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _sasl_global_getopt(void *a1, uint64_t a2, char *__s1, const char **a4, _DWORD *a5)
{
  if (a1 && *a1)
  {
    for (i = (*a1 + 16); ; i += 3)
    {
      v10 = *(i - 2);
      if (v10 == 1)
      {
        v11 = *(i - 1);
        if (!v11)
        {
          return 0xFFFFFFFFLL;
        }

        result = v11(*i, a2, __s1, a4, a5);
        if (!result)
        {
          return result;
        }
      }

      else if (!v10)
      {
        break;
      }
    }
  }

  v13 = sasl_config_getstring(__s1, 0);
  *a4 = v13;
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0;
  }

  v14 = strlen(v13);
  result = 0;
  *a5 = v14;
  return result;
}

uint64_t _sasl_alloc_utils(uint64_t a1, uint64_t a2)
{
  v4 = _sasl_allocation_utils(392);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = a1;
    sasl_randcreate((v4 + 16));
    v6 = _sasl_conn_getopt;
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v6 = _sasl_global_getopt;
      v7 = a2;
    }

    *(v5 + 24) = v7;
    *(v5 + 32) = v6;
    v8 = *&off_280B0E730;
    *(v5 + 40) = *&_sasl_allocation_utils;
    *(v5 + 56) = v8;
    v9 = *&off_280B0E710;
    *(v5 + 72) = _sasl_mutex_utils;
    *(v5 + 88) = v9;
    *(v5 + 104) = _sasl_MD5Init;
    *(v5 + 112) = _sasl_MD5Update;
    *(v5 + 120) = _sasl_MD5Final;
    *(v5 + 128) = _sasl_hmac_md5;
    *(v5 + 136) = _sasl_hmac_md5_init;
    *(v5 + 144) = _sasl_hmac_md5_final;
    *(v5 + 152) = _sasl_hmac_md5_precalc;
    *(v5 + 160) = _sasl_hmac_md5_import;
    *(v5 + 168) = sasl_mkchal;
    *(v5 + 176) = sasl_utf8verify;
    *(v5 + 184) = sasl_rand;
    *(v5 + 192) = sasl_churn;
    *(v5 + 200) = 0;
    *(v5 + 216) = sasl_encode64;
    *(v5 + 208) = sasl_decode64;
    *(v5 + 224) = sasl_erasebuffer;
    *(v5 + 232) = sasl_getprop;
    *(v5 + 240) = sasl_setprop;
    *(v5 + 248) = _sasl_getcallback;
    *(v5 + 256) = _sasl_log;
    *(v5 + 264) = sasl_seterror;
    *(v5 + 280) = prop_new;
    *(v5 + 288) = prop_dup;
    *(v5 + 296) = prop_request;
    *(v5 + 304) = prop_get;
    *(v5 + 312) = prop_getnames;
    *(v5 + 320) = prop_clear;
    *(v5 + 328) = prop_dispose;
    *(v5 + 336) = prop_format;
    *(v5 + 344) = prop_set;
    *(v5 + 352) = prop_setvals;
    *(v5 + 360) = prop_erase;
    *(v5 + 272) = 0;
    *(v5 + 376) = 0;
    *(v5 + 384) = 0;
    *(v5 + 368) = sasl_auxprop_store;
  }

  return v5;
}

void sasl_dispose(sasl_conn_t **pconn)
{
  if (pconn)
  {
    if (*pconn)
    {
      if ((free_mutex || (free_mutex = _sasl_mutex_utils()) != 0) && !(*(&_sasl_mutex_utils + 1))())
      {
        if (*pconn)
        {
          (*(*pconn + 1))();
          off_280B0E738(*pconn);
          *pconn = 0;
        }

        v2 = off_280B0E710;
        v3 = free_mutex;

        v2(v3);
      }
    }
  }
}

uint64_t _sasl_conn_dispose(void *a1)
{
  v2 = a1[298];
  if (v2)
  {
    off_280B0E738(v2);
  }

  v3 = a1[293];
  if (v3)
  {
    off_280B0E738(v3);
  }

  v4 = a1[299];
  if (v4)
  {
    if (*v4)
    {
      off_280B0E738(*v4);
      v4 = a1[299];
    }

    off_280B0E738(v4);
  }

  v5 = a1[301];
  if (v5)
  {
    off_280B0E738(v5);
  }

  v6 = a1[302];
  if (v6)
  {
    off_280B0E738(v6);
  }

  v7 = a1[307];
  if (v7)
  {
    off_280B0E738(v7);
  }

  v8 = a1[305];
  if (v8)
  {
    off_280B0E738(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    off_280B0E738(v9);
  }

  result = a1[565];
  if (result)
  {
    v11 = off_280B0E738;

    return v11();
  }

  return result;
}

int sasl_getprop(sasl_conn_t *conn, int propnum, const void **pvalue)
{
  if (conn)
  {
    if (pvalue)
    {
      if (propnum <= 99)
      {
        switch(propnum)
        {
          case 0:
            v4 = *(conn + 271);
            if (!v4)
            {
              goto LABEL_56;
            }

            goto LABEL_50;
          case 1:
            v5 = 0;
            v4 = conn + 2196;
            goto LABEL_62;
          case 2:
            v5 = 0;
            v4 = conn + 2192;
            goto LABEL_62;
          case 3:
            if (*conn != 1)
            {
              goto LABEL_48;
            }

            v5 = 0;
            v4 = *(conn + 569);
            goto LABEL_62;
          case 4:
            v5 = 0;
            *pvalue = conn;
            return v5;
          case 7:
            v5 = 0;
            v4 = *(conn + 296);
            goto LABEL_62;
          case 8:
            if (!*(conn + 7))
            {
              goto LABEL_55;
            }

            v5 = 0;
            v4 = conn + 36;
            goto LABEL_62;
          case 9:
            if (*(conn + 8))
            {
              v5 = 0;
              v4 = conn + 1093;
              goto LABEL_62;
            }

LABEL_55:
            *pvalue = 0;
            goto LABEL_56;
          case 10:
            v5 = 0;
            v4 = *(conn + 301);
            goto LABEL_62;
          case 11:
            v4 = *(conn + 279);
            if (v4)
            {
              goto LABEL_50;
            }

            goto LABEL_56;
          case 12:
            v5 = 0;
            v4 = *(conn + 2);
            goto LABEL_62;
          case 13:
            v5 = 0;
            v4 = *(conn + 298);
            goto LABEL_62;
          case 14:
            if (*conn == 1)
            {
              v7 = *(conn + 571);
              if (!v7)
              {
                goto LABEL_56;
              }
            }

            else
            {
              if (*conn != 2)
              {
                goto LABEL_36;
              }

              v7 = *(conn + 568);
              if (!v7)
              {
                goto LABEL_56;
              }
            }

            v5 = 0;
            goto LABEL_61;
          case 15:
            if (*conn == 1)
            {
              v8 = *(conn + 571);
              if (!v8)
              {
                goto LABEL_56;
              }
            }

            else
            {
              if (*conn != 2)
              {
                goto LABEL_36;
              }

              v8 = *(conn + 568);
              if (!v8)
              {
                goto LABEL_56;
              }
            }

            v10 = **(v8 + 16);
            *pvalue = v10;
            if (!v10)
            {
              goto LABEL_56;
            }

            return 0;
          case 16:
            v4 = *(conn + 272);
            if (!v4)
            {
              goto LABEL_56;
            }

            goto LABEL_50;
          case 17:
            if (*conn != 1)
            {
LABEL_48:
              v5 = -5;
              sasl_seterror(conn, 0, "Internal Error %d in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", -5, 1132);
              goto LABEL_10;
            }

            v5 = 0;
            v7 = *(conn + 572);
LABEL_61:
            v4 = *(v7 + 8);
            goto LABEL_62;
          case 18:
            v5 = 0;
            if (*conn == 2)
            {
              v4 = *(*(conn + 569) + 120);
            }

            else
            {
              v4 = *(*(conn + 572) + 160);
            }

            goto LABEL_62;
          case 19:
            v4 = *(conn + 280);
            if (!v4)
            {
              goto LABEL_56;
            }

            goto LABEL_50;
          case 20:
            goto LABEL_16;
          case 22:
            v5 = 0;
            if (*conn == 1)
            {
              v4 = *(*(conn + 572) + 176);
            }

            else
            {
              v4 = *(*(conn + 569) + 136);
            }

            goto LABEL_62;
          default:
            goto LABEL_36;
        }
      }

      if (propnum <= 101)
      {
        v5 = 0;
        if (propnum == 100)
        {
          v4 = conn + 2336;
        }

        else
        {
          v4 = conn + 2304;
        }

        goto LABEL_62;
      }

      if (propnum == 102)
      {
        v5 = 0;
        v4 = *(conn + 293);
        goto LABEL_62;
      }

      if (propnum == 700)
      {
LABEL_16:
        v4 = *(conn + 281);
        if (!v4)
        {
LABEL_56:
          sasl_seterror(conn, 1u, "Information that was requested is not yet available.");
          v5 = -6;
          goto LABEL_10;
        }

LABEL_50:
        v5 = 0;
LABEL_62:
        *pvalue = v4;
        return v5;
      }

LABEL_36:
      v6 = 1126;
    }

    else
    {
      v6 = 959;
    }

    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d", v6);
    v5 = -7;
LABEL_10:
    *(conn + 600) = v5;
    return v5;
  }

  return -7;
}

uint64_t _sasl_getcallback(sasl_conn_t *conn, uint64_t a2, uint64_t (**a3)(), void *a4)
{
  if (a3 && a4)
  {
    if (a2 == 1)
    {
      v5 = 0;
      v6 = _sasl_conn_getopt;
      if (!conn)
      {
        v6 = _sasl_global_getopt;
      }

      *a3 = v6;
    }

    else
    {
      if (!a2)
      {
        v5 = 0xFFFFFFFFLL;
        if (conn)
        {
          sasl_seterror(conn, 0, "Internal Error %d in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d");
LABEL_9:
          *(conn + 600) = v5;
          return v5;
        }

        return v5;
      }

      if (conn)
      {
        v8 = *(conn + 296);
        if (v8)
        {
          v9 = *v8;
          if (*v8)
          {
            v10 = v8 + 2;
            while (v9 != a2)
            {
              v9 = v10[1];
              v10 += 3;
              if (!v9)
              {
                goto LABEL_21;
              }
            }

            goto LABEL_37;
          }
        }

LABEL_21:
        v11 = *(conn + 297);
        if (v11)
        {
          v12 = *v11;
          if (v12)
          {
            v13 = *v12;
            if (*v12)
            {
              v10 = v12 + 2;
              while (v13 != a2)
              {
                v13 = v10[1];
                v10 += 3;
                if (!v13)
                {
                  goto LABEL_27;
                }
              }

LABEL_37:
              *a3 = *(v10 - 1);
              *a4 = *v10;
              return 2 * (*(v10 - 1) == 0);
            }
          }
        }
      }

LABEL_27:
      if (a2 > 4)
      {
        if (a2 == 5)
        {
          v5 = 0;
          v16 = &off_280B0E130;
          goto LABEL_43;
        }

        if (a2 != 16386)
        {
          if (a2 == 32769)
          {
            v5 = 0;
            v14 = _sasl_proxy_policy;
            goto LABEL_36;
          }

LABEL_40:
          *a3 = 0;
          *a4 = 0;
          sasl_seterror(conn, 1u, "Unable to find a callback: %d", a2);
          v5 = 0xFFFFFFFFLL;
          if (!conn)
          {
            return v5;
          }

          goto LABEL_9;
        }

        v5 = 0;
        v15 = _sasl_getsimple;
      }

      else
      {
        if (a2 != 2)
        {
          if (a2 != 3)
          {
            if (a2 == 4)
            {
              v5 = 0;
              v14 = _sasl_verifyfile;
LABEL_36:
              *a3 = v14;
              *a4 = 0;
              return v5;
            }

            goto LABEL_40;
          }

          v5 = 0;
          v16 = &off_280B0E118;
LABEL_43:
          *a3 = *v16;
          *a4 = v16[1];
          return v5;
        }

        v5 = 0;
        v15 = _sasl_syslog;
      }

      *a3 = v15;
    }

    *a4 = conn;
    return v5;
  }

  v5 = 4294967289;
  if (conn)
  {
    sasl_seterror(conn, 1u, "Parameter error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/lib/common.c near line %d");
    goto LABEL_9;
  }

  return v5;
}

uint64_t _sasl_ipfromstring(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  __endptr = 0;
  if (!a1)
  {
    goto LABEL_20;
  }

  memset(__b, 170, sizeof(__b));
  for (i = 0; ; ++i)
  {
    v7 = *(a1 + i);
    if (!*(a1 + i) || v7 == 59)
    {
      break;
    }

    if (i == 1025)
    {
      goto LABEL_20;
    }

    __b[i] = v7;
  }

  v15.s_addr = -1431655766;
  __b[i] = 0;
  if (v7 == 59)
  {
    v8 = (i + 1);
  }

  else
  {
    v8 = i;
  }

  if (*(a1 + v8))
  {
    v9 = strtol((a1 + v8), &__endptr, 10);
    if (__endptr && *__endptr)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
  }

  if (inet_aton(__b, &v15) != 1)
  {
    memset(&v17, 0, sizeof(v17));
    v17.ai_socktype = 1;
    v17.ai_flags = 5;
    if (getaddrinfo(__b, (a1 + v8), &v17, &v16))
    {
      goto LABEL_20;
    }

    v12 = v16;
    if (a2)
    {
      ai_addrlen = v16->ai_addrlen;
      if (ai_addrlen > a3)
      {
        freeaddrinfo(v16);
        result = 4294967293;
        goto LABEL_21;
      }

      memcpy(a2, v16->ai_addr, ai_addrlen);
    }

    freeaddrinfo(v12);
LABEL_27:
    result = 0;
    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (a3 < 0x10)
  {
LABEL_20:
    result = 4294967289;
    goto LABEL_21;
  }

  bzero(a2, a3);
  result = 0;
  *(a2 + 1) = 2;
  *(a2 + 2) = bswap32(v9) >> 16;
  *(a2 + 4) = v15;
LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

const char *__cdecl sasl_errstring(int saslerr, const char *langlist, const char **outlang)
{
  if (outlang)
  {
    *outlang = "en-us";
  }

  v3 = saslerr + 32;
  result = "another step is needed in authentication";
  switch(v3)
  {
    case 0:
      result = "channel binding failure";
      break;
    case 1:
    case 7:
      goto LABEL_7;
    case 2:
      result = "sasl_setpass can't store a property because of a constraint violation";
      break;
    case 3:
      result = "sasl_setpass needs old password in order to perform password change";
      break;
    case 4:
      result = "user supplied passwords are not permitted";
      break;
    case 5:
      result = "passphrase is too weak for security policy";
      break;
    case 6:
      result = "user exists, but no verifier for user";
      break;
    case 8:
      result = "remote authentication server unavailable";
      break;
    case 9:
      result = "version mismatch with plug-in";
      break;
    case 10:
      result = "requested change was not needed";
      break;
    case 11:
      result = "passphrase locked";
      break;
    case 12:
      result = "user not found";
      break;
    case 13:
      result = "account disabled";
      break;
    case 14:
      result = "passphrase expired, has to be reset";
      break;
    case 15:
      result = "One time use of a plaintext password will enable requested mechanism for user";
      break;
    case 16:
      result = "encryption needed to use mechanism";
      break;
    case 17:
      result = "mechanism too weak for this user";
      break;
    case 18:
      result = "authorization failure";
      break;
    case 19:
      result = "authentication failure";
      break;
    case 20:
      result = "SASL library is not initialized";
      break;
    case 21:
      result = "mechanism doesn't support requested feature";
      break;
    case 22:
      result = "server failed mutual authentication step";
      break;
    case 23:
      result = "integrity check failed";
      break;
    case 24:
      result = "transient failure (e.g., weak key)";
      break;
    case 25:
      result = "invalid parameter supplied";
      break;
    case 26:
      result = "can't request information until later in exchange";
      break;
    case 27:
      result = "bad protocol / cancel";
      break;
    case 28:
      result = "no mechanism available";
      break;
    case 29:
      result = "overflowed buffer";
      break;
    case 30:
      result = "no memory available";
      break;
    case 31:
      result = "generic failure";
      break;
    case 32:
      result = "successful result";
      break;
    case 33:
      return result;
    case 34:
      result = "needs user interaction";
      break;
    default:
      if ("another step is needed in authentication" == -100)
      {
        result = "error when parsing configuration file";
      }

      else
      {
LABEL_7:
        result = "undefined error!";
      }

      break;
  }

  return result;
}

const char *__cdecl sasl_errdetail(const char *conn)
{
  v18 = *MEMORY[0x277D85DE8];
  if (conn)
  {
    v2 = conn;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v3;
    v17 = v3;
    v14 = v3;
    v15 = v3;
    v12 = v3;
    v13 = v3;
    *__str = v3;
    v11 = v3;
    v4 = *(conn + 600);
    v5 = sasl_errstring(v4, v1, 0);
    if (v4 == -20)
    {
      v6 = -13;
    }

    else
    {
      v6 = v4;
    }

    snprintf(__str, 0x80uLL, "SASL(%d): %s: ", v6, v5);
    v7 = strlen(__str);
    v8 = v7 + strlen(*(v2 + 301)) + 12;
    if (_buf_alloc(v2 + 302, v2 + 304, v8))
    {
      conn = 0;
    }

    else
    {
      snprintf(*(v2 + 302), v8, "%s%s", __str, *(v2 + 301));
      conn = *(v2 + 302);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return conn;
}

uint64_t _sasl_conn_getopt(uint64_t a1, uint64_t a2, char *__s1, const char **a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294967289;
  }

  v10 = *(a1 + 2368);
  if (v10)
  {
    for (i = (v10 + 16); ; i += 3)
    {
      v12 = *(i - 2);
      if (v12 == 1)
      {
        result = (*(i - 1))(*i, a2, __s1, a4, a5);
        if (!result)
        {
          return result;
        }
      }

      else if (!v12)
      {
        break;
      }
    }
  }

  v14 = *(a1 + 2376);

  return _sasl_global_getopt(v14, a2, __s1, a4, a5);
}

uint64_t _sasl_syslog(uint64_t a1, int a2, const char *a3)
{
  if (!a1 || *a1 != 1 || *(*(a1 + 4576) + 72) >= a2)
  {
    if (a2 > 1)
    {
      if (a2 == 2 || a2 == 4)
      {
        v3 = 37;
        goto LABEL_14;
      }

      if (a2 == 3)
      {
        v3 = 36;
LABEL_14:
        syslog(v3, "%s", a3);
        return 0;
      }

      goto LABEL_13;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 35;
        goto LABEL_14;
      }

LABEL_13:
      v3 = 39;
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t _sasl_getsimple(uint64_t a1, int a2, char **a3, size_t *a4)
{
  if (a2 != 16386 || a1 == 0 || a3 == 0)
  {
    return 4294967289;
  }

  v9 = getenv("USER");
  if (!v9)
  {
    v9 = getenv("USERNAME");
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *a3 = v9;
  if (!a4)
  {
    return 0;
  }

  v10 = strlen(v9);
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t _sasl_proxy_policy(sasl_conn_t *conn, int a2, _BYTE *__s2, size_t __n, void *__s1, int a6)
{
  if (!conn)
  {
    return 4294967289;
  }

  if (!__s2 || !*__s2)
  {
    return 0;
  }

  if (!__s1 || __n != a6 || (result = memcmp(__s1, __s2, __n), result))
  {
    sasl_seterror(conn, 0, "Requested identity not authenticated identity", __n);
    result = 4294967283;
    *(conn + 600) = -13;
  }

  return result;
}

uint64_t _sasl_log(uint64_t result, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 100;
  if (a3)
  {
    v11 = result;
    result = _sasl_allocation_utils(250);
    v37 = result;
    if (result)
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v12 = strlen(a3);
      if (!_sasl_getcallback(v11, 2, &v34, &v33) && v34)
      {
        v32 = &a9;
        if (v12)
        {
          v14 = 0;
          while (1)
          {
            if (a3[v14] == 37)
            {
              v40 = 0xAAAAAAAAAAAAAAAALL;
              v41 = -86;
              memset(__str, 170, 21);
              ++v14;
              v15 = 2;
              __format = 37;
              while (1)
              {
                v16 = a3[v14];
                if (v16 <= 0x6C)
                {
                  if (a3[v14] <= 0x62u)
                  {
                    if (v16 == 37)
                    {
                      v28 = v35;
                      v20 = v35 + 1;
                      if (_buf_alloc(&v37, &v36, v35 + 1))
                      {
                        goto LABEL_46;
                      }

                      *(v37 + v28) = 37;
                      goto LABEL_31;
                    }

                    if (v16 == 88)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    if (v16 == 99)
                    {
                      *(&__format + v15 - 1) = 99;
                      v29 = v32;
                      v32 += 2;
                      __str[0] = *v29;
                      __str[1] = 0;
LABEL_33:
                      v24 = __str;
LABEL_36:
                      if (_sasl_add_string(&v37, &v36, &v35, v24))
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_37;
                    }

                    if (v16 == 100 || v16 == 105)
                    {
LABEL_32:
                      v21 = &__format + v15;
                      *(v21 - 1) = v16;
                      *v21 = 0;
                      v22 = v32;
                      v32 += 2;
                      snprintf(__str, 0x14uLL, &__format, *v22);
                      goto LABEL_33;
                    }
                  }
                }

                else if (a3[v14] > 0x74u)
                {
                  if (v16 == 117 || v16 == 120)
                  {
                    goto LABEL_32;
                  }

                  if (v16 == 122)
                  {
                    v26 = v32;
                    v32 += 2;
                    v27 = sasl_errstring(*v26, v13, 0);
                    goto LABEL_35;
                  }
                }

                else
                {
                  switch(v16)
                  {
                    case 'm':
                      v25 = v32;
                      v32 += 2;
                      v27 = strerror(*v25);
LABEL_35:
                      v24 = v27;
                      goto LABEL_36;
                    case 'o':
                      goto LABEL_32;
                    case 's':
                      v23 = v32;
                      v32 += 2;
                      v24 = *v23;
                      goto LABEL_36;
                  }
                }

                v17 = &__format + v15;
                *(v17 - 1) = v16;
                *v17 = 0;
                if (++v14 <= v12)
                {
                  v18 = v15++ - 1;
                  if (v18 < 9)
                  {
                    continue;
                  }
                }

                goto LABEL_38;
              }
            }

            v19 = v35;
            v20 = v35 + 1;
            if (_buf_alloc(&v37, &v36, v35 + 1))
            {
              break;
            }

            *(v37 + v19) = a3[v14];
LABEL_31:
            v35 = v20;
LABEL_37:
            ++v14;
LABEL_38:
            if (v14 >= v12)
            {
              v30 = v35;
              goto LABEL_44;
            }
          }
        }

        else
        {
          v30 = 0;
LABEL_44:
          if (!_buf_alloc(&v37, &v36, v30 + 1))
          {
            *(v37 + v30) = 0;
            v34(v33, a2);
          }
        }
      }

LABEL_46:
      result = v37;
      if (v37)
      {
        result = off_280B0E738(v37);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *_sasl_find_getpath_callback(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      while (v1 != 3)
      {
        v2 = result[3];
        result += 3;
        v1 = v2;
        if (!v2)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      result = 0;
    }
  }

  if (!result)
  {
    return &default_getpath_cb;
  }

  return result;
}

uint64_t *_sasl_find_verifyfile_callback(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      while (v1 != 4)
      {
        v2 = result[3];
        result += 3;
        v1 = v2;
        if (!v2)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      result = 0;
    }
  }

  if (!result)
  {
    return &_sasl_find_verifyfile_callback_default_verifyfile_cb;
  }

  return result;
}

uint64_t _sasl_get_errorbuf(uint64_t result, void *a2, void *a3)
{
  *a2 = result + 2408;
  *a3 = result + 2424;
  return result;
}

uint64_t _sasl_build_mechlist()
{
  v0 = _sasl_client_mechs();
  v14 = v0;
  v1 = _sasl_server_mechs();
  v2 = v1;
  if (v0)
  {
    if (!v1)
    {
      v2 = v0;
      goto LABEL_16;
    }

    do
    {
      v3 = *(v2 + 8);
      v4 = v14;
      if (v14)
      {
        v5 = *v2;
        while (1)
        {
          v6 = v4;
          if (!strcmp(*v4, v5))
          {
            break;
          }

          v4 = v6[1];
          if (!v4)
          {
            v7 = v6 + 1;
            goto LABEL_9;
          }
        }

        off_280B0E738(v2);
      }

      else
      {
        v7 = &v14;
LABEL_9:
        *v7 = v2;
        *(v2 + 8) = 0;
      }

      v2 = v3;
    }

    while (v3);
    v2 = v14;
  }

  if (!v2)
  {
    printf("no olist");
    return 0xFFFFFFFFLL;
  }

LABEL_16:
  v9 = 8;
  v10 = v2;
  do
  {
    v10 = *(v10 + 8);
    v9 += 8;
  }

  while (v10);
  if (global_mech_list)
  {
    off_280B0E738(global_mech_list);
    global_mech_list = 0;
  }

  v11 = _sasl_allocation_utils(v9);
  global_mech_list = v11;
  if (!v11)
  {
    return 4294967294;
  }

  bzero(v11, v9);
  v12 = 0;
  do
  {
    v13 = *(v2 + 8);
    *(global_mech_list + v12) = *v2;
    off_280B0E738(v2);
    v12 += 8;
    v2 = v13;
  }

  while (v13);
  return 0;
}

BOOL _sasl_is_equal_mech(const char *a1, char *__s, unint64_t a3, int *a4)
{
  v5 = a3;
  if (a3 >= 6 && !strcasecmp(&a1[a3 - 5], "-PLUS"))
  {
    v8 = 1;
    v5 -= 5;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return v5 >= strlen(__s) && strncasecmp(a1, __s, v5) == 0;
}

uint64_t _sasl_getpath(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 4294967289;
  }

  v3 = default_plugin_path;
  if (default_plugin_path)
  {
LABEL_3:
    result = 0;
    *a2 = v3;
    return result;
  }

  default_unix_path = _sasl_get_default_unix_path("SASL_PATH", "");
  result = _sasl_strdup(default_unix_path, &default_plugin_path, 0);
  if (!result)
  {
    v3 = default_plugin_path;
    goto LABEL_3;
  }

  return result;
}

char *_sasl_get_default_unix_path(const char *a1, uint64_t a2)
{
  v4 = getuid();
  if (v4 == geteuid() && (v5 = getgid(), v5 == getegid()))
  {
    result = getenv(a1);
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    return a2;
  }

  return result;
}

uint64_t _sasl_getconfpath(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 4294967289;
  }

  v3 = default_conf_path;
  if (default_conf_path)
  {
LABEL_3:
    result = 0;
    *a2 = v3;
    return result;
  }

  default_unix_path = _sasl_get_default_unix_path("SASL_CONF_PATH", "/etc/sasl");
  result = _sasl_strdup(default_unix_path, &default_conf_path, 0);
  if (!result)
  {
    v3 = default_conf_path;
    goto LABEL_3;
  }

  return result;
}

uint64_t sasl_config_getstring(char *__s1, uint64_t a2)
{
  v3 = nconfiglist;
  if (nconfiglist >= 1)
  {
    v5 = *__s1;
    for (i = configlist + 8; ; i += 16)
    {
      v7 = *(i - 8);
      if (v5 == *v7 && !strcmp(__s1, v7))
      {
        break;
      }

      if (!--v3)
      {
        return a2;
      }
    }

    return *i;
  }

  return a2;
}

uint64_t crammd5_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &crammd5_server_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "CRAM version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t crammd5_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    result = 0;
    *a3 = 4;
    *a4 = &crammd5_client_plugins;
    *a5 = 1;
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "CRAM version mismatch");
    return 4294967273;
  }

  return result;
}

uint64_t crammd5_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (*(*(a2 + 80) + 40))(16);
  if (v7)
  {
    v8 = v7;
    result = 0;
    *v8 = 0;
    v8[1] = 0;
    *v8 = 1;
    *a5 = v8;
  }

  else
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/cram.c near line %d", 110);
    return 4294967294;
  }

  return result;
}

uint64_t crammd5_server_mech_step(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  v56[3] = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *a6 = 0;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (a4 >= 0x401)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "CRAM-MD5 input longer than 1024 bytes");
LABEL_4:
    v9 = 4294967291;
    goto LABEL_5;
  }

  if (*a1 != 2)
  {
    if (*a1 != 1)
    {
      (*(*(a2 + 80) + 256))(0, 1, "Invalid CRAM-MD5 server step %d\n", *a1);
      v9 = 0xFFFFFFFFLL;
      goto LABEL_5;
    }

    *(a1 + 8) = 0;
    if (a4)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "CRAM-MD5 does not accept inital data");
      goto LABEL_4;
    }

    v26 = time(0);
    v27 = (*(*(a2 + 80) + 40))(15);
    v28 = v27;
    if (v27)
    {
      snprintf(v27, 0xFuLL, "%lu", v26 % 0xFFFFFF);
    }

    BYTE4(v50[0]) = -86;
    LODWORD(v50[0]) = -1431655766;
    (*(*(a2 + 80) + 184))(*(*(a2 + 80) + 16), v50, 4);
    v29 = LOBYTE(v50[0]);
    v30 = BYTE1(v50[0]);
    v31 = BYTE2(v50[0]);
    v32 = BYTE3(v50[0]);
    v33 = (*(*(a2 + 80) + 40))(15);
    if (v33 && (v34 = v33, sprintf(v33, "%u", (v29 << 24) | (v30 << 16) | (v31 << 8) | v32), v28))
    {
      v35 = *(a1 + 8);
      if (v35)
      {
LABEL_31:
        *a5 = v35;
        *a6 = strlen(*(a1 + 8));
        (*(*(a2 + 80) + 64))(v28);
        (*(*(a2 + 80) + 64))(v34);
        *a1 = 2;
        v9 = 1;
        goto LABEL_5;
      }

      v36 = (*(*(a2 + 80) + 40))(201);
      *(a1 + 8) = v36;
      if (v36)
      {
        snprintf(v36, 0xC8uLL, "<%s.%s@%s>", v34, v28, *(a2 + 16));
        v35 = *(a1 + 8);
        goto LABEL_31;
      }

      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/cram.c near line %d", 214);
    }

    else
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/cram.c near line %d", 204);
    }

LABEL_34:
    v9 = 4294967294;
    goto LABEL_5;
  }

  v15 = 0;
  v48 = 0;
  v56[0] = "*userPassword";
  v56[1] = "*cmusaslsecretCRAM-MD5";
  v56[2] = 0;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v16;
  v54 = v16;
  v51 = v16;
  v52 = v16;
  v50[9] = v16;
  v50[10] = v16;
  v50[7] = v16;
  v50[8] = v16;
  v50[5] = v16;
  v50[6] = v16;
  v50[3] = v16;
  v50[4] = v16;
  v50[1] = v16;
  v50[2] = v16;
  v50[0] = v16;
  v49[0] = 0xAAAAAAAAAAAAAAAALL;
  v49[1] = 0xAAAAAAAAAAAAAAAALL;
  v46 = v16;
  v47 = v16;
  do
  {
    if ((a4 + v15) < 2)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "need authentication name");
      goto LABEL_4;
    }

    v17 = a3[a4 - 1 + v15--];
  }

  while (v17 != 32);
  v18 = (*(*(a2 + 80) + 40))((a4 + v15 + 1) & 0x7FFFFFFF);
  if (!v18)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/cram.c near line %d", 271);
    goto LABEL_34;
  }

  v19 = v18;
  v20 = a4 - 1;
  memcpy(v18, a3, v20 + v15 + 1);
  v19[v20 + 1 + v15] = 0;
  v21 = (*(*(a2 + 80) + 296))(*(a2 + 152), v56);
  if (v21 || (v21 = (*(a2 + 144))(*(*(a2 + 80) + 8), v19, 0, 3, a7), v21))
  {
    v9 = v21;
    v22 = 0;
    goto LABEL_17;
  }

  v37 = (*(*(a2 + 80) + 312))(*(a2 + 152), v56, &v51);
  if ((v37 & 0x80000000) != 0)
  {
    goto LABEL_48;
  }

  if (!v51 || !*(&v51 + 1))
  {
    if (*(&v52 + 1) && v53)
    {
      v22 = 0;
      v42 = *(*v53 + 16);
      v46 = **v53;
      v47 = v42;
      goto LABEL_45;
    }

LABEL_48:
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "no secret in database");
    v22 = 0;
    v23 = 0;
    if (*(a2 + 136))
    {
      v9 = 4294967279;
    }

    else
    {
      v9 = 4294967276;
    }

    goto LABEL_18;
  }

  v9 = v37;
  v38 = strlen(**(&v51 + 1));
  v39 = *(a2 + 80);
  if (!v38)
  {
    (*(v39 + 264))(*(v39 + 8), 0, "empty secret");
    v22 = 0;
    v23 = 0;
    v9 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v40 = v38;
  v41 = (*(v39 + 40))(v38 + 16);
  v22 = v41;
  v48 = v41;
  if (v41)
  {
    *v41 = v40;
    strncpy((v41 + 8), **(&v51 + 1), v40 + 1);
    (*(*(a2 + 80) + 152))(&v46, v22 + 2, *v22);
LABEL_45:
    (*(*(a2 + 80) + 360))(*(a2 + 152), v56[0]);
    (*(*(a2 + 80) + 160))(v50, &v46);
    v43 = *(a1 + 8);
    v44 = strlen(v43);
    (*(*(a2 + 80) + 112))(v50, v43, v44);
    (*(*(a2 + 80) + 144))(v49, v50);
    v23 = convert16(v49, *(a2 + 80));
    v45 = strlen(v23);
    if (v45 <= ~v15 && !strncmp(v23, &a3[v15 + 2 + v20], v45))
    {
      v9 = 0;
      *a7 = 1;
      *(a7 + 136) = 0;
      *(a7 + 32) = 0u;
      *(a7 + 48) = 0u;
      *(a7 + 64) = 0;
    }

    else
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 1, "incorrect digest response");
      v9 = 4294967283;
    }

    goto LABEL_18;
  }

LABEL_17:
  v23 = 0;
LABEL_18:
  (*(*(a2 + 80) + 64))(v19);
  if (v22)
  {
    _plug_free_secret(*(a2 + 80), &v48);
  }

  if (v23)
  {
    (*(*(a2 + 80) + 64))(v23);
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t crammd5_server_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8))
    {
      _plug_free_string(a2, (result + 8));
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

uint64_t convert16(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))(33);
  if (result)
  {
    v4 = 0;
    v5 = (result + 1);
    do
    {
      *(v5 - 1) = convert16_hex[*(a1 + v4) >> 4];
      *v5 = convert16_hex[*(a1 + v4) & 0xF];
      v5 += 2;
      ++v4;
    }

    while (v4 != 16);
    *(result + 32) = 0;
  }

  return result;
}

uint64_t crammd5_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*(a2 + 24) + 40))(16);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *v6 = 0;
    v6[1] = 0;
    *a3 = v6;
  }

  else
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/cram.c near line %d", 513);
    return 4294967294;
  }

  return result;
}

uint64_t crammd5_client_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, void *a6, _DWORD *a7, uint64_t a8)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  *a6 = 0;
  *a7 = 0;
  if (a4 >= 0x401)
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "CRAM-MD5 input longer than 1024 bytes");
    return 4294967291;
  }

  if (*(a2 + 80) > *(a2 + 112))
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "SSF requested of CRAM-MD5 plugin");
    return 4294967281;
  }

  if (*(a8 + 16))
  {
    v17 = 0;
  }

  else
  {
    simple = _plug_get_simple(*(a2 + 24), 16386, 1, &v31, a5);
    v17 = simple;
    password = simple;
    if ((simple & 0xFFFFFFFD) != 0)
    {
      return password;
    }
  }

  password = _plug_get_password(*(a2 + 24), &v30, &v29, a5);
  if ((password & 0xFFFFFFFD) == 0)
  {
    if (a5 && *a5)
    {
      (*(*(a2 + 24) + 64))();
      *a5 = 0;
    }

    if (v17 == 2 || password == 2)
    {
      if (v17 == 2)
      {
        v25 = "Please enter your authentication name";
      }

      else
      {
        v25 = 0;
      }

      if (password == 2)
      {
        v26 = "Please enter your password";
      }

      else
      {
        v26 = 0;
      }

      prompts = _plug_make_prompts(*(a2 + 24), a5, 0, 0, v25, 0, v26, 0, 0, 0, 0, 0, 0, 0);
      if (!prompts)
      {
        return 2;
      }
    }

    else
    {
      if (!v30)
      {
        (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/cram.c near line %d", 633);
        return 4294967289;
      }

      prompts = (*(a2 + 152))(*(*(a2 + 24) + 8), v31, 0, 3, a8);
      if (!prompts)
      {
        hashed = make_hashed(v30, a3, a4, *(a2 + 24));
        v28 = hashed;
        if (hashed)
        {
          v20 = hashed;
          v21 = strlen(*(a8 + 16));
          v22 = v21 + 63;
          password = _plug_buf_alloc(*(a2 + 24), a1, (a1 + 8), v21 + 63);
          if (!password)
          {
            snprintf(*a1, v22, "%s %s", *(a8 + 16), v20);
            v23 = *a1;
            *a6 = *a1;
            *a7 = strlen(v23);
            *a8 = 1;
            *(a8 + 136) = 0;
            *(a8 + 64) = 0;
            *(a8 + 32) = 0u;
            *(a8 + 48) = 0u;
          }

          _plug_free_string(*(a2 + 24), &v28);
        }

        else
        {
          (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "whoops, make_hashed failed us this time");
          password = 0xFFFFFFFFLL;
        }

        goto LABEL_29;
      }
    }

    password = prompts;
LABEL_29:
    if (v29)
    {
      _plug_free_secret(*(a2 + 24), &v30);
    }
  }

  return password;
}

void *crammd5_client_mech_dispose(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      (*(a2 + 64))();
    }

    v4 = *(a2 + 64);

    return v4(v3);
  }

  return result;
}

unsigned int *make_hashed(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  memset(v6, 170, 24);
  if (result)
  {
    (*(a4 + 128))(a2, a3, result + 2, *result, v6);
    result = convert16(v6, a4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DigestCalcResponse(uint64_t a1, uint64_t a2, const char *a3, int a4, const char *a5, const char *a6, const char *a7, const char *a8, uint64_t a9, uint64_t a10)
{
  v34 = *MEMORY[0x277D85DE8];
  v33 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[3] = v18;
  v32[4] = v18;
  v32[1] = v18;
  v32[2] = v18;
  v32[0] = v18;
  memset(v31, 170, 17);
  memset(v30, 170, 17);
  v29 = -86;
  v28[0] = v18;
  v28[1] = v18;
  memset(__s, 170, 10);
  (*(a1 + 104))(v32);
  if (a8)
  {
    v19 = strlen(a8);
    (*(a1 + 112))(v32, a8, v19);
  }

  (*(a1 + 112))(v32, &COLON, 1);
  v20 = strlen(a7);
  (*(a1 + 112))(v32, a7, v20);
  if (strcasecmp(a6, "auth"))
  {
    (*(a1 + 112))(v32, &COLON, 1);
    (*(a1 + 112))(v32, a9, 32);
  }

  (*(a1 + 120))(v31, v32);
  CvtHex(v31, v28);
  (*(a1 + 104))(v32);
  (*(a1 + 112))(v32, a2, 32);
  (*(a1 + 112))(v32, &COLON, 1);
  v21 = strlen(a3);
  (*(a1 + 112))(v32, a3, v21);
  (*(a1 + 112))(v32, &COLON, 1);
  if (*a6)
  {
    __sprintf_chk(__s, 0, 0xAuLL, "%08x", a4);
    v22 = strlen(__s);
    (*(a1 + 112))(v32, __s, v22);
    (*(a1 + 112))(v32, &COLON, 1);
    v23 = strlen(a5);
    (*(a1 + 112))(v32, a5, v23);
    (*(a1 + 112))(v32, &COLON, 1);
    v24 = strlen(a6);
    (*(a1 + 112))(v32, a6, v24);
    (*(a1 + 112))(v32, &COLON, 1);
  }

  (*(a1 + 112))(v32, v28, 32);
  (*(a1 + 120))(v30, v32);
  result = CvtHex(v30, a10);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CvtHex(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 1);
  do
  {
    if (*(result + v2) >= 0xA0u)
    {
      v4 = (*(result + v2) >> 4) + 87;
    }

    else
    {
      v4 = (*(result + v2) >> 4) | 0x30;
    }

    *(v3 - 1) = v4;
    v5 = *(result + v2) & 0xF;
    v6 = v5 + 87;
    if (v5 < 0xA)
    {
      v6 = *(result + v2) & 0xF | 0x30;
    }

    *v3 = v6;
    v3 += 2;
    ++v2;
  }

  while (v2 != 16);
  *(a2 + 32) = 0;
  return result;
}

uint64_t enc_rc4(uint64_t a1, char *a2, unsigned int a3, char *a4, _BYTE *a5, _DWORD *a6)
{
  *a6 = a3 + 10;
  rc4_encrypt(*(a1 + 296), a2, a5, a3);
  rc4_encrypt(*(a1 + 296), a4, &a5[a3], 10);
  return 0;
}

uint64_t dec_rc4(uint64_t a1, char *a2, int a3, uint64_t a4, _BYTE *a5, _DWORD *a6)
{
  v6 = *(a1 + 304);
  v7 = *(v6 + 256);
  v8 = *(v6 + 260);
  if (a3)
  {
    v9 = &a2[a3];
    do
    {
      v10 = -++v7 < 0;
      v7 = v7;
      if (!v10)
      {
        v7 = --v7;
      }

      v11 = *(v6 + v7);
      v12 = v8 + v11;
      v13 = v12;
      v14 = -v12;
      if (v14 >= 0)
      {
        v8 = -v14;
      }

      else
      {
        v8 = v13;
      }

      *(v6 + v7) = *(v6 + v8);
      *(v6 + v8) = v11;
      v15 = *a2++;
      *a5++ = v15 ^ *(v6 + (*(v6 + v7) + v11));
    }

    while (a2 < v9);
  }

  *(v6 + 256) = v7;
  *(v6 + 260) = v8;
  *a6 = a3 - 10;
  return 0;
}

uint64_t init_rc4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a1[19] + 40))(264);
  a1[37] = v6;
  if (!v6)
  {
    return 4294967294;
  }

  v7 = (*(a1[19] + 40))(264);
  a1[38] = v7;
  if (!v7)
  {
    return 4294967294;
  }

  v8 = 0;
  v9 = xmmword_22D0EEE30;
  v10 = a1[37];
  v11.i64[0] = 0x1010101010101010;
  v11.i64[1] = 0x1010101010101010;
  do
  {
    *(v10 + v8) = v9;
    v8 += 16;
    v9 = vaddq_s8(v9, v11);
  }

  while (v8 != 256);
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(v10 + v12);
    v13 += v14 + *(a2 + (v12 & 0xF));
    *(v10 + v12) = *(v10 + v13);
    *(v10 + v13) = v14;
    ++v12;
  }

  while (v12 != 256);
  v15 = 0;
  *(v10 + 256) = 0;
  v16 = xmmword_22D0EEE30;
  v17 = a1[38];
  v18.i64[0] = 0x1010101010101010;
  v18.i64[1] = 0x1010101010101010;
  do
  {
    *(v17 + v15) = v16;
    v15 += 16;
    v16 = vaddq_s8(v16, v18);
  }

  while (v15 != 256);
  v19 = 0;
  v20 = 0;
  do
  {
    v21 = *(v17 + v19);
    v20 += v21 + *(a3 + (v19 & 0xF));
    *(v17 + v19) = *(v17 + v20);
    *(v17 + v20) = v21;
    ++v19;
  }

  while (v19 != 256);
  result = 0;
  *(v17 + 256) = 0;
  return result;
}

uint64_t free_rc4(void *a1)
{
  if (a1[37])
  {
    (*(a1[19] + 64))();
  }

  result = a1[38];
  if (result)
  {
    v3 = *(a1[19] + 64);

    return v3();
  }

  return result;
}

uint64_t digestmd5_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  __str = 0;
  if (a2 < 4)
  {
    return 4294967273;
  }

  v10 = (*(a1 + 40))(40);
  if (!v10)
  {
    return 4294967294;
  }

  v11 = v10;
  v15 = -1431655766;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *v10 = 0;
  (*(a1 + 32))(*(a1 + 24), "DIGEST-MD5", "reauth_timeout", &__str, &v15);
  if (!__str)
  {
    v12 = *(v11 + 8);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    *(v11 + 8) = 0;
    goto LABEL_12;
  }

  v12 = 60 * strtol(__str, 0, 10);
  *(v11 + 8) = v12;
  if (v12 < 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!v12)
  {
LABEL_12:
    result = 0;
    *off_280B0E058 = v11;
    *a3 = 4;
    *a4 = &digestmd5_server_plugins;
    *a5 = 1;
    return result;
  }

  v13 = (*(a1 + 72))();
  *(v11 + 16) = v13;
  if (!v13)
  {
    (*(a1 + 64))(v11);
    return 0xFFFFFFFFLL;
  }

  *(v11 + 24) = 100;
  v14 = (*(a1 + 40))(8800);
  *(v11 + 32) = v14;
  if (v14)
  {
    bzero(v14, 88 * *(v11 + 24));
    goto LABEL_12;
  }

  (*(a1 + 96))(*(v11 + 16));
  (*(a1 + 64))(v11);
  return 4294967294;
}

uint64_t digestmd5_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 < 4)
  {
    return 4294967273;
  }

  v10 = (*(a1 + 40))(40);
  if (!v10)
  {
    return 4294967294;
  }

  v11 = v10;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *v10 = 1;
  v12 = (*(a1 + 72))();
  *(v11 + 16) = v12;
  if (v12)
  {
    *(v11 + 24) = 10;
    v13 = (*(a1 + 40))(880);
    *(v11 + 32) = v13;
    if (v13)
    {
      bzero(v13, 88 * *(v11 + 24));
      result = 0;
      *off_280B0E0C8 = v11;
      *a3 = 4;
      *a4 = &digestmd5_client_plugins;
      *a5 = 1;
      return result;
    }

    return 4294967294;
  }

  return 0xFFFFFFFFLL;
}

uint64_t rc4_encrypt(uint64_t result, char *a2, _BYTE *a3, int a4)
{
  v4 = *(result + 256);
  v5 = *(result + 260);
  if (a4)
  {
    v6 = &a2[a4];
    do
    {
      v7 = -++v4 < 0;
      v4 = v4;
      if (!v7)
      {
        v4 = --v4;
      }

      v8 = *(result + v4);
      v9 = v5 + v8;
      v10 = v9;
      v11 = -v9;
      if (v11 >= 0)
      {
        v5 = -v11;
      }

      else
      {
        v5 = v10;
      }

      *(result + v4) = *(result + v5);
      *(result + v5) = v8;
      v12 = *a2++;
      *a3++ = v12 ^ *(result + (*(result + v4) + v8));
    }

    while (a2 < v6);
  }

  *(result + 256) = v4;
  *(result + 260) = v5;
  return result;
}

uint64_t digestmd5_server_mech_new(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = (*(*(a2 + 80) + 40))(336);
  if (!v8)
  {
    return 4294967294;
  }

  v9 = v8;
  result = 0;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  *v9 = 1;
  *(v9 + 8) = *(a2 + 220) & 0x10;
  *(v9 + 16) = *a1;
  *a5 = v9;
  return result;
}

uint64_t digestmd5_server_mech_step(unsigned int *a1, uint64_t a2, const void *a3, unsigned int a4, const char **a5, _DWORD *a6, _OWORD *a7)
{
  v68 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *a6 = 0;
  result = 4294967291;
  if (!a1 || a4 > 0x1000)
  {
    goto LABEL_59;
  }

  if (*a1 != 2)
  {
    if (*a1 != 1)
    {
      v60 = *a1;
      (*(*(a2 + 80) + 256))(0, 1, "Invalid DIGEST-MD5 server step %d\n");
LABEL_58:
      result = 0xFFFFFFFFLL;
      goto LABEL_59;
    }

    if (a1[2] || (v13 = *(a2 + 104)) != 0)
    {
      v14 = *(a2 + 128);
      v16 = *(a2 + 96);
      v15 = *(a2 + 100);
      v17 = v15 >= v14;
      v18 = v15 - v14;
      if (!v17)
      {
        v18 = 0;
      }

      a1[81] = v18;
      v17 = v16 >= v14;
      v13 = v16 - v14;
      if (!v17)
      {
        v13 = 0;
      }
    }

    else
    {
      a1[81] = 0;
    }

    a1[82] = v13;
    if (a3 && *(*(a1 + 2) + 8))
    {
      result = digestmd5_server_mech_step2(a1, a2, a3, a4, a5, a6, a7);
      if (!result)
      {
LABEL_59:
        v40 = *MEMORY[0x277D85DE8];
        return result;
      }

      (*(*(a2 + 80) + 256))(0, 3, "DIGEST-MD5 reauth failed\n");
      a7[7] = 0u;
      a7[8] = 0u;
      a7[5] = 0u;
      a7[6] = 0u;
      a7[3] = 0u;
      a7[4] = 0u;
      a7[1] = 0u;
      a7[2] = 0u;
      *a7 = 0u;
      if (*(a1 + 5))
      {
        (*(*(a2 + 80) + 64))();
      }

      if (*(a1 + 4))
      {
        (*(*(a2 + 80) + 64))();
      }

      *(a1 + 4) = 0;
      *(a1 + 5) = 0;
    }

    memset(__b, 170, sizeof(__b));
    memset(__s, 170, sizeof(__s));
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v19;
    v65 = v19;
    *__str = v19;
    v63 = v19;
    (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "DIGEST-MD5 server step 1");
    v20 = *(a2 + 24);
    if (v20)
    {
      if (!*v20)
      {
        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "user_realm is an empty string!");
        result = 4294967289;
        goto LABEL_59;
      }
    }

    else
    {
      v20 = *(a2 + 16);
      if (!v20)
      {
        v35 = *(a2 + 80);
        v36 = *(v35 + 264);
        v37 = *(v35 + 8);
        v38 = "no way to obtain domain";
LABEL_57:
        v36(v37, 0, v38);
        goto LABEL_58;
      }
    }

    __b[0] = 0;
    __s[0] = 0;
    v22 = a1[82];
    if (!v22)
    {
      __strcat_chk();
      v22 = a1[82];
    }

    if (v22 <= 1 && a1[81])
    {
      if (__b[0])
      {
        __strcat_chk();
      }

      __strcat_chk();
    }

    v61 = -1431655766;
    v23 = available_ciphers;
    if (available_ciphers)
    {
      v24 = 0;
      v25 = &available_ciphers;
      do
      {
        v26 = *(v25 + 2);
        if (a1[82] <= v26 && a1[81] >= v26)
        {
          if (!v24)
          {
            if (__b[0])
            {
              __strcat_chk();
            }

            __strcat_chk();
            v23 = *v25;
          }

          v27 = strlen(__s);
          if (v27 + strlen(v23) - 1023 < 0xFFFFFFFFFFFFFC00)
          {
            goto LABEL_58;
          }

          if (__s[0])
          {
            __strcat_chk();
            v28 = *v25;
          }

          __strcat_chk();
          v24 = 1;
        }

        v29 = v25[7];
        v25 += 7;
        v23 = v29;
      }

      while (v29);
    }

    if (!__b[0])
    {
      result = 4294967281;
      goto LABEL_59;
    }

    nonce = create_nonce(*(a2 + 80));
    if (nonce)
    {
      v31 = nonce;
      v61 = 0;
      *(a1 + 20) = 0;
      a1[42] = 0;
      v32 = add_to_challenge(*(a2 + 80), a1 + 20, a1 + 42, &v61, "nonce", nonce, 1);
      v33 = *(a2 + 80);
      if (v32 || (v34 = add_to_challenge(v33, a1 + 20, a1 + 42, &v61, "realm", v20, 1), v33 = *(a2 + 80), v34))
      {
        (*(v33 + 264))(*(v33 + 8), 0, "internal error: add_to_challenge failed");
        goto LABEL_58;
      }

      if (add_to_challenge(v33, a1 + 20, a1 + 42, &v61, "qop", __b, 1))
      {
        v41 = *(a2 + 80);
        v36 = *(v41 + 264);
        v37 = *(v41 + 8);
        v38 = "internal error: add_to_challenge 3 failed";
      }

      else if (__s[0] && add_to_challenge(*(a2 + 80), a1 + 20, a1 + 42, &v61, "cipher", __s, 1))
      {
        v42 = *(a2 + 80);
        v36 = *(v42 + 264);
        v37 = *(v42 + 8);
        v38 = "internal error: add_to_challenge 4 failed";
      }

      else if (a1[80] && add_to_challenge(*(a2 + 80), a1 + 20, a1 + 42, &v61, "stale", "true", 0))
      {
        v43 = *(a2 + 80);
        v36 = *(v43 + 264);
        v37 = *(v43 + 8);
        v38 = "internal error: add_to_challenge failed";
      }

      else if (*(a2 + 104) && (snprintf(__str, 0x40uLL, "%u", *(a2 + 104)), add_to_challenge(*(a2 + 80), a1 + 20, a1 + 42, &v61, "maxbuf", __str, 0)))
      {
        v44 = *(a2 + 80);
        v36 = *(v44 + 264);
        v37 = *(v44 + 8);
        v38 = "internal error: add_to_challenge 5 failed";
      }

      else
      {
        v45 = add_to_challenge(*(a2 + 80), a1 + 20, a1 + 42, &v61, "charset", "utf-8", 0);
        v46 = *(a2 + 80);
        if (v45)
        {
          (*(v46 + 264))(*(v46 + 8), 0, "internal error: add_to_challenge 6 failed");
          goto LABEL_58;
        }

        if (add_to_challenge(v46, a1 + 20, a1 + 42, &v61, "algorithm", "md5-sess", 0))
        {
          v47 = *(a2 + 80);
          v36 = *(v47 + 264);
          v37 = *(v47 + 8);
          v38 = "internal error: add_to_challenge 7 failed";
        }

        else if (*a6 < 0x801u)
        {
          *(a1 + 3) = 0;
          if (!_plug_strdup(*(a2 + 80), v20, a1 + 4, 0))
          {
            if (a1[2] && (v50 = *(a1 + 2), *(v50 + 8)) && !(*(*(a2 + 80) + 80))(*(v50 + 16)))
            {
              v52 = *v31;
              if (*v31)
              {
                v53 = 0;
                v54 = (v31 + 1);
                do
                {
                  v53 = 2 * (v53 ^ v52);
                  v55 = *v54++;
                  v52 = v55;
                }

                while (v55);
              }

              else
              {
                v53 = 0;
              }

              v56 = *(a1 + 2);
              v57 = v53 % *(v56 + 24);
              clear_reauth_entry(*(v56 + 32) + 88 * v57, 0, *(a2 + 80));
              v58 = *(*(a1 + 2) + 32) + 88 * v57;
              v59 = *(a1 + 4);
              *v58 = 0;
              *(v58 + 8) = v59;
              *(a1 + 4) = 0;
              *(v58 + 16) = v31;
              *(v58 + 24) = 1;
              *(v58 + 32) = 0;
              *(*(*(a1 + 2) + 32) + 88 * v57 + 40) = time(0);
              (*(*(a2 + 80) + 88))(*(*(a1 + 2) + 16));
            }

            else
            {
              *(a1 + 5) = v31;
              a1[12] = 1;
              *(a1 + 7) = 0;
              *(a1 + 39) = time(0);
            }

            v51 = *(a1 + 20);
            *a6 = strlen(v51);
            *a5 = v51;
            *a1 = 2;
            result = 1;
            goto LABEL_59;
          }

          v49 = *(a2 + 80);
          v36 = *(v49 + 264);
          v37 = *(v49 + 8);
          v38 = "internal error: out of memory when saving realm";
        }

        else
        {
          v48 = *(a2 + 80);
          v36 = *(v48 + 264);
          v37 = *(v48 + 8);
          v38 = "internal error: challenge larger than 2048 bytes";
        }
      }
    }

    else
    {
      v39 = *(a2 + 80);
      v36 = *(v39 + 264);
      v37 = *(v39 + 8);
      v38 = "internal erorr: failed creating a nonce";
    }

    goto LABEL_57;
  }

  v21 = *MEMORY[0x277D85DE8];

  return digestmd5_server_mech_step2(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t digestmd5_server_mech_dispose(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return digestmd5_common_mech_dispose(a1, a2);
    }
  }

  return a1;
}

uint64_t digestmd5_common_mech_free(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = (*(a2 + 256))(*(a2 + 8), 5, "DIGEST-MD5 common mech free");
  *a1 = 0;
  if (v4)
  {
    if (*(v4 + 24))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        clear_reauth_entry(*(v4 + 32) + v6, *v4, a2);
        ++v7;
        v6 += 88;
      }

      while (v7 < *(v4 + 24));
    }

    if (*(v4 + 32))
    {
      (*(a2 + 64))();
    }

    if (*(v4 + 16))
    {
      (*(a2 + 96))();
      *(v4 + 16) = 0;
    }

    v8 = *(a2 + 64);

    return v8(v4);
  }

  return result;
}

uint64_t digestmd5_server_mech_step2(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, const char **a5, _DWORD *a6, uint64_t a7)
{
  v138[3] = *MEMORY[0x277D85DE8];
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  __s1 = 0;
  v126 = 0;
  v124 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v122 = v14;
  v123 = v14;
  v120 = 0x10000;
  __s2 = 0;
  v118 = 0;
  v119 = 0;
  memset(v138, 170, 17);
  memset(v137, 170, 17);
  v116 = 0;
  v117 = 0;
  v136[0] = "*userPassword";
  v136[1] = 0;
  v135[1] = v14;
  v135[2] = v14;
  v135[0] = v14;
  (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "DIGEST-MD5 server step 2");
  if (!a4)
  {
    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "input expected in DIGEST-MD5, step 2");
    v17 = 0;
    v18 = 4294967283;
    goto LABEL_112;
  }

  if (*(a1 + 8))
  {
    v15 = *(a2 + 176);
    if (!v15)
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "missing HTTP request in DIGEST-MD5, step 2");
      v16 = 0;
      v17 = 0;
      v18 = 4294967289;
      goto LABEL_93;
    }
  }

  else
  {
    *&v122 = "AUTHENTICATE";
    *(&v122 + 1) = 0;
    v123 = 0uLL;
    LODWORD(v124) = 0;
    v15 = &v122;
  }

  v114 = a7;
  v115 = v15;
  v16 = (*(*(a2 + 80) + 40))(a4 + 1);
  v116 = v16;
  memcpy(v16, a3, a4);
  v16[a4] = 0;
  if (!*v16)
  {
    v19 = 0;
    v21 = 0x10000;
LABEL_66:
    if (v131)
    {
      if (v128)
      {
        if (v19)
        {
          if (v127)
          {
            if (__s1)
            {
              if (__s2)
              {
                if (!v129)
                {
                  _plug_strdup(*(a2 + 80), "", &v129, 0);
                  (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "The client didn't send a realm, assuming empty string.");
                }

                v40 = a1;
                v42 = *(a1 + 40);
                v41 = (a1 + 40);
                v106 = a5;
                v107 = v40;
                if (!v42)
                {
                  v64 = *(v40 + 16);
                  if (!*(v64 + 8))
                  {
                    goto LABEL_169;
                  }

                  v47 = *(v64 + 24);
                  if (!v47)
                  {
                    goto LABEL_170;
                  }

                  if (v128 && (v65 = *v128) != 0)
                  {
                    v66 = 0;
                    v67 = v128 + 1;
                    do
                    {
                      v66 = 2 * (v66 ^ v65);
                      v68 = *v67++;
                      v65 = v68;
                    }

                    while (v68);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  if (!(*(*(a2 + 80) + 80))(*(v64 + 16)))
                  {
                    v112 = v21;
                    v69 = a6;
                    v70 = v66 % v47;
                    v71 = *(v107 + 16);
                    v72 = *(v71 + 32) + 88 * v70;
                    v73 = *(v72 + 8);
                    if (v73 && !strcmp(v129, *(v72 + 8)) && (*(v72 + 24) == 1 || *v72 && !strcmp(v131, *v72)))
                    {
                      _plug_strdup(*(a2 + 80), v73, (v107 + 32), 0);
                      _plug_strdup(*(a2 + 80), *(*(*(v107 + 16) + 32) + 88 * v70 + 16), v41, 0);
                      v71 = *(v107 + 16);
                      v74 = *(v71 + 32) + 88 * v70;
                      *(v107 + 48) = *(v74 + 24);
                      *(v107 + 312) = *(v74 + 40);
                    }

                    (*(*(a2 + 80) + 88))(*(v71 + 16));
                    a6 = v69;
                    v21 = v112;
                  }

                  v40 = v107;
                  if (!*v41)
                  {
                    (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "No reauth info for '%s' found", v128);
                    if (!*v41)
                    {
LABEL_169:
                      v47 = 0;
                      goto LABEL_170;
                    }
                  }
                }

                v43 = v21;
                v46 = *(v40 + 32);
                v44 = (v40 + 32);
                v45 = v46;
                if (v46)
                {
                  if (strcmp(v129, v45) && *v45)
                  {
                    (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "The client tries to override server provided realm");
                    v21 = v43;
                    if (*v44)
                    {
                      (*(*(a2 + 80) + 64))();
                    }

                    _plug_strdup(*(a2 + 80), v129, v44, 0);
                    v47 = 1;
LABEL_148:
                    if (strcmp(v128, *v41))
                    {
                      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "nonce changed: authentication aborted");
                      v17 = 0;
                      v18 = 4294967283;
LABEL_184:
                      a1 = v107;
                      goto LABEL_93;
                    }

LABEL_170:
                    v75 = (*(*(a2 + 80) + 296))(*(a2 + 152), v136);
                    if (v75)
                    {
                      v18 = v75;
                      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "unable to obtain user password");
LABEL_183:
                      v17 = 0;
                      goto LABEL_184;
                    }

                    if (v47)
                    {
                      v76 = strlen(*(v107 + 32));
                      v77 = *(a2 + 80);
                      v78 = v114;
                      if (v76)
                      {
                        v79 = *(v77 + 40);
                        v80 = strlen(v131);
                        v117 = v79(v76 + v80 + 2);
                        *v117 = 0;
                        sprintf(v117, "%s@%s", v131, *(v107 + 32));
                        v81 = &v117;
                      }

                      else
                      {
                        v81 = &v117;
                        _plug_strdup(v77, v131, &v117, 0);
                      }
                    }

                    else
                    {
                      v81 = &v131;
                      v78 = v114;
                    }

                    if (v130 && *v130)
                    {
                      v82 = 1;
                    }

                    else
                    {
                      v82 = 3;
                    }

                    v83 = (*(a2 + 144))(*(*(a2 + 80) + 8), *v81, 0, v82, v78);
                    if (v83)
                    {
                      v18 = v83;
                      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "unable to canonify user and get auxprops");
                      goto LABEL_183;
                    }

                    if (v130)
                    {
                      if (*v130)
                      {
                        v84 = (*(a2 + 144))(*(*(a2 + 80) + 8));
                        if (v84)
                        {
                          v18 = v84;
                          (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "unable to canonify authorization ID");
                          goto LABEL_183;
                        }
                      }
                    }

                    if (((*(*(a2 + 80) + 312))(*(a2 + 152), v136, v135) & 0x80000000) != 0 || !*&v135[0] || !*(&v135[0] + 1))
                    {
                      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "no secret in database");
                      v17 = 0;
                      if (*(a2 + 136))
                      {
                        v18 = 4294967279;
                      }

                      else
                      {
                        v18 = 4294967276;
                      }

                      goto LABEL_184;
                    }

                    v85 = strlen(**(&v135[0] + 1));
                    v17 = v85;
                    v86 = *(a2 + 80);
                    if (v85)
                    {
                      v87 = (*(v86 + 40))(v85 + 16);
                      v132 = v87;
                      if (v87)
                      {
                        v113 = v21;
                        *v87 = v17;
                        strncpy((v87 + 8), **(&v135[0] + 1), v17 + 1);
                        v88 = DigestCalcSecret(*(a2 + 80), v131, v129, v132 + 8, *v132, 0, v138);
                        LOBYTE(v138[2]) = 0;
                        if (v88)
                        {
                          DigestCalcSecret(*(a2 + 80), v131, v129, v132 + 8, *v132, 1, v137);
                          LOBYTE(v137[2]) = 0;
                        }

                        _plug_free_secret(*(a2 + 80), &v132);
                        (*(*(a2 + 80) + 360))(*(a2 + 152), v136[0]);
                        if (!v126)
                        {
                          _plug_strdup(*(a2 + 80), "auth", &v126, 0);
                        }

                        v110 = a6;
                        if (*(v114 + 36) < 2u)
                        {
                          v108 = 0;
                        }

                        else
                        {
                          v108 = *(v107 + 288);
                        }

                        v89 = v126;
                        if (!strcasecmp(v126, "auth-conf"))
                        {
                          v90 = v118;
                          if (v118)
                          {
                            v91 = available_ciphers;
                            if (available_ciphers)
                            {
                              v92 = &xmmword_280B0E278;
                              while (1)
                              {
                                if (!strcasecmp(v90, v91))
                                {
                                  v93 = *(v92 - 8);
                                  if (*(v107 + 328) <= v93 && *(v107 + 324) >= v93)
                                  {
                                    break;
                                  }
                                }

                                v91 = *(v92 + 2);
                                v92 = (v92 + 56);
                                if (!v91)
                                {
                                  goto LABEL_215;
                                }
                              }

                              *(v107 + 264) = *(v92 - 1);
                              *(v107 + 280) = *v92;
                              *(v114 + 36) = v93;
                              v94 = *(v92 - 7);
                              *(v114 + 48) = digestmd5_encode;
                              *(v114 + 64) = digestmd5_decode;
LABEL_227:
                              response = create_response(v107, *(a2 + 80), v128, v19, v127, v89, v115, v138, v130, (v107 + 80));
                              v17 = response;
                              if (response)
                              {
                                if (!strcmp(response, __s2))
                                {
                                  goto LABEL_234;
                                }

                                v96 = *(a2 + 80);
                                if (!v88)
                                {
                                  (*(v96 + 264))(*(v96 + 8), 0, "client response doesn't match what we generated");
                                  goto LABEL_242;
                                }

                                (*(v96 + 64))(v17);
                                v97 = create_response(v107, *(a2 + 80), v128, v19, v127, v126, v115, v137, v130, (v107 + 80));
                                v17 = v97;
                                if (v97)
                                {
                                  if (strcmp(v97, __s2))
                                  {
                                    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "client response doesn't match what we generated (tried bogus)");
LABEL_242:
                                    v18 = 4294967283;
                                    goto LABEL_243;
                                  }

LABEL_234:
                                  if (!*v41)
                                  {
                                    goto LABEL_244;
                                  }

                                  if (v19 != *(v107 + 48))
                                  {
LABEL_239:
                                    if (v19 == *(v107 + 48))
                                    {
                                      v98 = "server nonce expired";
                                    }

                                    else
                                    {
                                      v98 = "incorrect nonce-count";
                                    }

                                    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, v98);
                                    goto LABEL_249;
                                  }

                                  if (*(*(v107 + 16) + 8) && time(0) - *(v107 + 312) > *(*(v107 + 16) + 8))
                                  {
                                    if (*v41)
                                    {
                                      goto LABEL_239;
                                    }

LABEL_244:
                                    (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "no cached server nonce");
LABEL_249:
                                    a1 = v107;
                                    *(v107 + 320) = 1;
                                    goto LABEL_92;
                                  }

                                  *v114 = 1;
                                  *(v114 + 32) = v113 - 4;
                                  v99 = *(v114 + 36);
                                  if (v99 <= 1)
                                  {
                                    if (v99 != 1)
                                    {
LABEL_253:
                                      *(v114 + 136) = 0;
                                      *(v107 + 88) = 0;
                                      v101 = *(a2 + 80);
                                      *(v107 + 152) = v101;
                                      if (v108)
                                      {
                                        v108(v107);
                                        v101 = *(v107 + 152);
                                      }

                                      if (*(a2 + 104))
                                      {
                                        v102 = *(a2 + 104);
                                      }

                                      else
                                      {
                                        v102 = 0xFFFF;
                                      }

                                      _plug_decode_init(v107 + 224, v101, v102);
                                      if (*(v114 + 36))
                                      {
                                        memset(__str, 170, sizeof(__str));
                                        __s[0] = 0xAAAAAAAAAAAAAAAALL;
                                        __s[1] = 0xAAAAAAAAAAAAAAAALL;
                                        create_layer_keys(v107, *(a2 + 80), v107 + 130, v94, __str, __s);
                                        v103 = *(v107 + 280);
                                        if (v103)
                                        {
                                          if (v103(v107, __str, __s))
                                          {
                                            (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "couldn't init cipher");
                                          }
                                        }
                                      }

                                      LODWORD(__s[0]) = 0;
                                      if (add_to_challenge(*(a2 + 80), (v107 + 160), (v107 + 168), __s, "rspauth", *(v107 + 80), *(v107 + 8) != 0))
                                      {
                                        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "internal error: add_to_challenge failed");
                                      }

                                      else if (!*(v107 + 8) || (memset(__str, 170, 10), !add_to_challenge(*(a2 + 80), (v107 + 160), (v107 + 168), __s, "cnonce", v127, 1)) && (snprintf(__str, 0xAuLL, "%08x", *(v107 + 48)), !add_to_challenge(*(a2 + 80), (v107 + 160), (v107 + 168), __s, "nc", __str, 0)) && !add_to_challenge(*(a2 + 80), (v107 + 160), (v107 + 168), __s, "qop", v126, 1))
                                      {
                                        v104 = *(v107 + 160);
                                        v105 = strlen(v104);
                                        if (v105 <= 0x800)
                                        {
                                          v18 = 0;
                                          *v110 = v105;
                                          *v106 = v104;
                                          goto LABEL_243;
                                        }
                                      }

                                      v18 = 0xFFFFFFFFLL;
LABEL_243:
                                      a1 = v107;
                                      goto LABEL_93;
                                    }

                                    v100 = -20;
                                  }

                                  else
                                  {
                                    v100 = -29;
                                  }

                                  *(v114 + 32) = v100 + v113;
                                  goto LABEL_253;
                                }
                              }

                              (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "internal error: unable to create response");
                              v18 = 4294967294;
                              goto LABEL_243;
                            }

LABEL_215:
                            (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 3, "protocol violation: client requested invalid cipher");
                            (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "client requested invalid cipher");
                            v17 = 0;
                            *(v114 + 36) = 2;
LABEL_224:
                            v18 = 0xFFFFFFFFLL;
                            goto LABEL_184;
                          }
                        }

                        if (!strcasecmp(v89, "auth-int") && *(v107 + 328) <= 1u && *(v107 + 324))
                        {
                          v94 = 0;
                          *(v114 + 48) = digestmd5_encode;
                          *(v114 + 64) = digestmd5_decode;
                          *(v114 + 36) = 1;
                          goto LABEL_227;
                        }

                        if (!strcasecmp(v89, "auth") && !*(v107 + 328))
                        {
                          v94 = 0;
                          *(v114 + 48) = 0;
                          *(v114 + 64) = 0;
                          *(v114 + 36) = 0;
                          goto LABEL_227;
                        }

                        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "protocol violation: client requested invalid qop");
                      }

                      else
                      {
                        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "unable to allocate secret");
                      }

                      v17 = 0;
                      goto LABEL_224;
                    }

                    (*(v86 + 264))(*(v86 + 8), 0, "empty secret");
                    goto LABEL_224;
                  }
                }

                else
                {
                  (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "The client specifies a realm when the server hasn't provided one. Using client's realm.");
                  _plug_strdup(*(a2 + 80), v129, v44, 0);
                }

                v47 = 0;
                v21 = v43;
                goto LABEL_148;
              }

              (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "required parameters missing: response");
            }

            else
            {
              (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "required parameters missing: digesturi");
            }
          }

          else
          {
            (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "required parameters missing: cnonce");
          }
        }

        else
        {
          (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "required parameters missing: noncecount");
        }
      }

      else
      {
        (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "required parameters missing: nonce");
      }
    }

    else
    {
      (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "required parameters missing: username");
    }

    v17 = 0;
LABEL_92:
    v18 = 4294967283;
    goto LABEL_93;
  }

  v111 = 0;
  v19 = 0;
  v20 = "Parse error";
  v21 = 0x10000;
  while (1)
  {
    *__str = 0;
    __s[0] = 0;
    get_pair(&v116, __str, __s);
    v22 = *__str;
    if (!*__str)
    {
      v18 = 4294967283;
      goto LABEL_85;
    }

    if (!**__str)
    {
      goto LABEL_66;
    }

    if (!strcasecmp(*__str, "username"))
    {
      v24 = *(a2 + 80);
      v25 = __s[0];
      v26 = &v131;
LABEL_40:
      _plug_strdup(v24, v25, v26, 0);
      goto LABEL_41;
    }

    if (!strcasecmp(v22, "authzid"))
    {
      v24 = *(a2 + 80);
      v25 = __s[0];
      v26 = &v130;
      goto LABEL_40;
    }

    if (!strcasecmp(v22, "cnonce"))
    {
      v24 = *(a2 + 80);
      v25 = __s[0];
      v26 = &v127;
      goto LABEL_40;
    }

    if (!strcasecmp(v22, "nc"))
    {
      v27 = __s[0];
      v28 = strlen(__s[0]);
      v19 = 0;
      if (v28)
      {
        while (1)
        {
          v30 = *v27++;
          v29 = v30;
          v31 = v30 - 48;
          if ((v30 - 48) > 0x36 || ((0x7E0000007E03FFuLL >> v31) & 1) == 0)
          {
            break;
          }

          v19 = v29 + 16 * v19 + dword_22D0EEE4C[v31];
          if (!--v28)
          {
            goto LABEL_41;
          }
        }

        v18 = 4294967283;
        v20 = "error converting hex to int";
        goto LABEL_85;
      }

      goto LABEL_41;
    }

    if (!strcasecmp(v22, "realm"))
    {
      v24 = *(a2 + 80);
      if (v129)
      {
        v18 = 0xFFFFFFFFLL;
        v20 = "duplicate realm: authentication aborted";
        goto LABEL_86;
      }

      v25 = __s[0];
      v26 = &v129;
      goto LABEL_40;
    }

    if (!strcasecmp(v22, "nonce"))
    {
      v24 = *(a2 + 80);
      v25 = __s[0];
      v26 = &v128;
      goto LABEL_40;
    }

    if (!strcasecmp(v22, "qop"))
    {
      v24 = *(a2 + 80);
      if (v126)
      {
        v18 = 0xFFFFFFFFLL;
        v20 = "duplicate qop: authentication aborted";
        goto LABEL_86;
      }

      v25 = __s[0];
      v26 = &v126;
      goto LABEL_40;
    }

    v109 = a6;
    if (!strcasecmp(v22, "digest-uri") || (v23 = *(a1 + 8)) != 0 && !strcasecmp(v22, "uri"))
    {
      v24 = *(a2 + 80);
      if (__s1)
      {
        v18 = 0xFFFFFFFFLL;
        v20 = "duplicate digest-uri: authentication aborted";
        goto LABEL_86;
      }

      _plug_strdup(v24, __s[0], &__s1, 0);
      if (!*(a1 + 8) || (v32 = *(v115 + 8)) == 0)
      {
        v33 = strlen(*a2);
        v34 = __s1;
        if (strncasecmp(__s1, *a2, v33) || v34[v33] != 47)
        {
          v18 = 4294967283;
          v20 = "bad digest-uri: doesn't match service";
          goto LABEL_85;
        }

        *(&v122 + 1) = v34;
        goto LABEL_54;
      }

      a6 = v109;
      if (strcmp(__s1, v32))
      {
        v18 = 4294967283;
        v20 = "bad digest-uri: doesn't match HTTP request";
LABEL_85:
        v24 = *(a2 + 80);
        goto LABEL_86;
      }

      goto LABEL_41;
    }

    if (!strcasecmp(v22, "response"))
    {
      v35 = *(a2 + 80);
      v36 = __s[0];
      p_s2 = &__s2;
LABEL_53:
      _plug_strdup(v35, v36, p_s2, 0);
      goto LABEL_54;
    }

    if (!strcasecmp(v22, "cipher"))
    {
      v35 = *(a2 + 80);
      v36 = __s[0];
      p_s2 = &v118;
      goto LABEL_53;
    }

    if (!strcasecmp(v22, "maxbuf"))
    {
      if (v111)
      {
        v18 = 4294967283;
        v20 = "duplicate maxbuf: authentication aborted";
        goto LABEL_85;
      }

      if (!str2ul32(__s[0], &v120))
      {
        v18 = 4294967283;
        v20 = "invalid maxbuf parameter";
        goto LABEL_85;
      }

      v21 = v120;
      if (v120 < 0x11)
      {
        v18 = 4294967283;
        v20 = "maxbuf parameter too small";
        goto LABEL_85;
      }

      if (v120 >> 24)
      {
        v18 = 4294967283;
        v20 = "maxbuf parameter too big";
        goto LABEL_85;
      }

      v111 = 1;
      goto LABEL_54;
    }

    if (!strcasecmp(v22, "charset"))
    {
      break;
    }

    if (strcasecmp(v22, "algorithm"))
    {
      (*(*(a2 + 80) + 256))(*(*(a2 + 80) + 8), 5, "DIGEST-MD5 unrecognized pair %s/%s: ignoring", v22, __s[0]);
LABEL_54:
      a6 = v109;
      goto LABEL_41;
    }

    if (!v23)
    {
      goto LABEL_54;
    }

    a6 = v109;
    if (strcasecmp(__s[0], "md5-sess"))
    {
      v18 = 0xFFFFFFFFLL;
      v20 = "'algorithm' isn't 'md5-sess'";
      goto LABEL_85;
    }

LABEL_41:
    if (!*v116)
    {
      goto LABEL_66;
    }
  }

  v38 = __s[0];
  v39 = strcasecmp(__s[0], "utf-8");
  v24 = *(a2 + 80);
  a6 = v109;
  if (!v39)
  {
    v26 = &v119;
    v25 = v38;
    goto LABEL_40;
  }

  v18 = 0xFFFFFFFFLL;
  v20 = "client doesn't support UTF-8";
LABEL_86:
  (*(v24 + 264))(*(v24 + 8), 0, v20);
  v17 = 0;
LABEL_93:
  v48 = *(a1 + 16);
  if (*(v48 + 8) && !(*(*(a2 + 80) + 80))(*(v48 + 16)))
  {
    if (v128 && (v50 = *v128) != 0)
    {
      v51 = 0;
      v52 = v128 + 1;
      do
      {
        v51 = 2 * (v51 ^ v50);
        v53 = *v52++;
        v50 = v53;
      }

      while (v53);
    }

    else
    {
      v51 = 0;
    }

    v54 = *(a1 + 16);
    v55 = v51 % *(v54 + 24);
    v56 = *(a1 + 48);
    if (v18)
    {
      if (v56 >= 2)
      {
        v57 = *(v54 + 32) + 88 * v55;
        goto LABEL_107;
      }
    }

    else
    {
      v58 = *(v54 + 32);
      if (v56 == 1)
      {
        clear_reauth_entry(v58 + 88 * v55, 0, *(a2 + 80));
        v58 = *(*(a1 + 16) + 32);
        v59 = v58 + 88 * v55;
        *v59 = v131;
        v131 = 0;
        v60 = *(a1 + 32);
        *(a1 + 32) = 0;
        *(v59 + 8) = v60;
        *(a1 + 40) = 0;
        *(v59 + 32) = v127;
        v127 = 0;
        v56 = *(a1 + 48);
      }

      v57 = v58 + 88 * v55;
      if (v56 >= *(v57 + 24))
      {
        v61 = v56 + 1;
        *(a1 + 48) = v61;
        *(v58 + 88 * v55 + 24) = v61;
        *(*(*(a1 + 16) + 32) + 88 * v55 + 40) = time(0);
      }

      else
      {
LABEL_107:
        v49.n128_f64[0] = clear_reauth_entry(v57, 0, *(a2 + 80));
      }
    }

    (*(*(a2 + 80) + 88))(*(*(a1 + 16) + 16), v49);
  }

  if (v16)
  {
    (*(*(a2 + 80) + 64))(v16);
  }

LABEL_112:
  if (v117)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v131)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v130)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v129)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v128)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v127)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (__s2)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v118)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v17)
  {
    (*(*(a2 + 80) + 64))(v17);
  }

  if (v119)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (__s1)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v126)
  {
    (*(*(a2 + 80) + 64))();
  }

  if (v132)
  {
    _plug_free_secret(*(a2 + 80), &v132);
  }

  v62 = *MEMORY[0x277D85DE8];
  return v18;
}

void get_pair(char **a1, char **a2, void *a3)
{
  v4 = *a1;
  *a2 = 0;
  *a3 = 0;
  if (!v4)
  {
    return;
  }

  v6 = *v4;
  if (!*v4)
  {
    goto LABEL_10;
  }

  while (1)
  {
    while (1)
    {
      if (v6 > 0x2C)
      {
        goto LABEL_12;
      }

      if (((1 << v6) & 0x100002600) == 0)
      {
        break;
      }

      v8 = *++v4;
      v6 = v8;
    }

    if (v6 != 44)
    {
      break;
    }

    v9 = *++v4;
    v6 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (!v6)
  {
LABEL_10:
    *a2 = "";
    return;
  }

LABEL_12:
  *a2 = v4;
  v10 = skip_token(v4);
  if (*v10 && *v10 != 61)
  {
    *v10++ = 0;
  }

  v11 = 0;
  v12 = v10 + 3;
  while (1)
  {
    v13 = v10[v11];
    if (v13 > 0x3D)
    {
      goto LABEL_39;
    }

    if (((1 << v13) & 0x100002600) == 0)
    {
      break;
    }

    ++v11;
  }

  if (v13 != 61)
  {
LABEL_39:
    *a2 = 0;
    return;
  }

  v10[v11] = 0;
  while (1)
  {
    v14 = &v10[v11];
    v15 = v10[v11 + 1];
    if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
    {
      break;
    }

    ++v11;
  }

  if (v15 == 34)
  {
    v17 = v14 + 1;
  }

  else
  {
    v17 = &v10[v11];
  }

  *a3 = v17 + 1;
  v19 = v14[1];
  v18 = v14 + 1;
  if (v19 != 34)
  {
    v25 = skip_token(v18);
    if (v25)
    {
      goto LABEL_41;
    }

    goto LABEL_57;
  }

  v20 = &v10[v11];
  v23 = v20[2];
  v21 = v20 + 2;
  v22 = v23;
  if (!v23)
  {
    goto LABEL_57;
  }

  v24 = 0;
  v25 = v18 + 2;
  v26 = &v12[v11];
  while (1)
  {
    if (!v24)
    {
      if (v22 == 92)
      {
        --v21;
        v24 = 1;
        goto LABEL_37;
      }

      if (v22 == 34)
      {
        break;
      }
    }

    v24 = 0;
    *v21 = v22;
LABEL_37:
    ++v21;
    v27 = *v25++;
    v22 = v27;
    ++v26;
    if (!v27)
    {
      goto LABEL_57;
    }
  }

  if (v21 <= v25 - 1)
  {
    if (v26 <= (v21 + 1))
    {
      v26 = (v21 + 1);
    }

    bzero(v21, v26 - v21);
  }

LABEL_41:
  v28 = *v25;
  if (v28 <= 0x20 && ((1 << v28) & 0x100002600) != 0)
  {
    *v25++ = 0;
    while (1)
    {
      v28 = *v25;
      if (v28 > 0x20 || ((1 << v28) & 0x100002600) == 0)
      {
        break;
      }

      ++v25;
    }
  }

  if (v28)
  {
    if (v28 == 44)
    {
      *v25++ = 0;
      goto LABEL_56;
    }

LABEL_57:
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
LABEL_56:
    *a1 = v25;
  }
}

uint64_t str2ul32(uint64_t result, void *a2)
{
  if (result)
  {
    *a2 = 0;
    while (1)
    {
      v2 = *result;
      if (v2 > 0x20)
      {
        break;
      }

      if (((1 << v2) & 0x100002600) == 0)
      {
        if (!*result)
        {
          return 0;
        }

        break;
      }

      ++result;
    }

    LODWORD(v3) = 0;
    v4 = 1;
    while (1)
    {
      v5 = v2;
      v6 = v2 - 48;
      v7 = v6 > 9 || v3 > 0x19999999;
      if (v7 || v3 == 429496729 && (v5 - 54) < 0xFFFFFFFA)
      {
        break;
      }

      v3 = v6 + 10 * v3;
      v2 = *(result + v4++);
      if (!v2)
      {
        *a2 = v3;
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DigestCalcSecret(uint64_t a1, char *a2, char *a3, unsigned __int8 *a4, uint64_t a5, int a6, uint64_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[3] = v14;
  v31[4] = v14;
  v31[1] = v14;
  v31[2] = v14;
  v31[0] = v14;
  (*(a1 + 104))(v31);
  if (a6)
  {
    v15 = strlen(a2);
    (*(a1 + 112))(v31, a2, v15);
    v16 = 0;
  }

  else
  {
    v17 = strlen(a2);
    v18 = &a2[v17];
    i = a2;
    if (v17 >= 1)
    {
      for (i = a2; i < v18; ++i)
      {
        v20 = *i;
        if (v20 > 0xC3)
        {
          break;
        }

        if (v20 >= 0xC0)
        {
          if (++i == v18)
          {
            i = &a2[v17];
            break;
          }

          if (*i > -65)
          {
            break;
          }
        }
      }
    }

    v16 = i >= v18;
    MD5_UTF8_8859_1(a1, v31, i >= v18, a2, v17);
  }

  (*(a1 + 112))(v31, &COLON, 1);
  if (a3 && *a3)
  {
    if (a6)
    {
      v21 = strlen(a3);
      (*(a1 + 112))(v31, a3, v21);
      (*(a1 + 112))(v31, &COLON, 1);
LABEL_31:
      (*(a1 + 112))(v31, a4, a5);
      goto LABEL_45;
    }

    v22 = strlen(a3);
    v23 = &a3[v22];
    j = a3;
    if (v22 >= 1)
    {
      for (j = a3; j < v23; ++j)
      {
        v25 = *j;
        if (v25 > 0xC3)
        {
          break;
        }

        if (v25 >= 0xC0)
        {
          if (++j == v23)
          {
            j = &a3[v22];
            break;
          }

          if (*j > -65)
          {
            break;
          }
        }
      }
    }

    if (j >= v23)
    {
      v16 = 1;
    }

    else
    {
      v16 = v16;
    }

    MD5_UTF8_8859_1(a1, v31, j >= v23, a3, v22);
  }

  (*(a1 + 112))(v31, &COLON, 1);
  if (a6)
  {
    goto LABEL_31;
  }

  v26 = &a4[a5];
  k = a4;
  if (a5 >= 1)
  {
    for (k = a4; k < v26; ++k)
    {
      v28 = *k;
      if (v28 > 0xC3)
      {
        break;
      }

      if (v28 >= 0xC0)
      {
        if (++k == v26)
        {
          k = &a4[a5];
          break;
        }

        if (*k > -65)
        {
          break;
        }
      }
    }
  }

  if (k >= v26)
  {
    v16 = 1;
  }

  else
  {
    v16 = v16;
  }

  MD5_UTF8_8859_1(a1, v31, k >= v26, a4, a5);
LABEL_45:
  (*(a1 + 120))(a7, v31);
  v29 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t digestmd5_encode(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 && a2 && a3 && a4 && a5)
  {
    if (a3 < 2)
    {
      v18 = *a2;
      v10 = *(a2 + 8);
      LODWORD(v19) = v10;
      v9 = &v18;
    }

    else
    {
      result = _plug_iovec_to_buf(*(a1 + 152), a2, a3, (a1 + 176));
      if (result)
      {
        goto LABEL_18;
      }

      v9 = *(a1 + 176);
      v10 = *(v9 + 2);
    }

    result = _plug_buf_alloc(*(a1 + 152), (a1 + 184), (a1 + 208), v10 + 28);
    if (!result)
    {
      v11 = *(a1 + 184);
      *v11 = bswap32(*(a1 + 88));
      v12 = v11 + 1;
      memcpy((*(a1 + 184) + 4), *v9, *(v9 + 2));
      if (*(a1 + 264))
      {
        v20[0] = 0xAAAAAAAAAAAAAAAALL;
        v20[1] = 0xAAAAAAAAAAAAAAAALL;
        (*(*(a1 + 152) + 128))(*(a1 + 184), (*(v9 + 2) + 4), a1 + 96, 16, v20);
        (*(a1 + 264))(a1, *v9, *(v9 + 2), v20, v12, a5);
        v13 = *a5;
      }

      else
      {
        v14 = *(a1 + 184);
        v15 = *(v9 + 2);
        (*(*(a1 + 152) + 128))();
        *a5 = *(v9 + 2) + 10;
        v13 = *(v9 + 2) + 10;
      }

      result = 0;
      v16 = v12 + v13;
      *v16 = 256;
      *a5 += 2;
      *(v16 + 2) = bswap32(*(a1 + 88));
      LODWORD(v16) = *a5 + 4;
      *a5 = v16;
      **(a1 + 184) = bswap32(v16);
      *a5 += 4;
      *a4 = *(a1 + 184);
      ++*(a1 + 88);
    }
  }

  else
  {
    if (a1)
    {
      (*(*(a1 + 152) + 264))(*(*(a1 + 152) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/digestmd5.c near line %d", 1405);
    }

    result = 4294967289;
  }

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t digestmd5_decode(uint64_t a1, char *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  result = _plug_decode(a1 + 224, a2, a3, (a1 + 192), (a1 + 212), a5, digestmd5_decode_packet, a1);
  *a4 = *(a1 + 192);
  return result;
}

uint64_t create_response(uint64_t a1, uint64_t a2, const char *a3, int a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, const char *a9, void **a10)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = -86;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[0] = v17;
  v33[1] = v17;
  memset(v32, 170, 17);
  v31 = -86;
  v30[0] = v17;
  v30[1] = v17;
  if (a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = "auth";
  }

  v42 = 0xAAAAAAAAAAAAAAAALL;
  v40 = v17;
  v41 = v17;
  v38 = v17;
  v39 = v17;
  v37 = v17;
  (*(a2 + 104))(&v37);
  if (*(a1 + 8))
  {
    v36 = -86;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35[0] = v19;
    v35[1] = v19;
    CvtHex(a8, v35);
    (*(a2 + 112))(&v37, v35, 32);
  }

  else
  {
    (*(a2 + 112))(&v37, a8, 16);
  }

  (*(a2 + 112))(&v37, &COLON, 1);
  v20 = strlen(a3);
  (*(a2 + 112))(&v37, a3, v20);
  (*(a2 + 112))(&v37, &COLON, 1);
  v21 = strlen(a5);
  (*(a2 + 112))(&v37, a5, v21);
  if (a9)
  {
    (*(a2 + 112))(&v37, &COLON, 1);
    v22 = strlen(a9);
    (*(a2 + 112))(&v37, a9, v22);
  }

  (*(a2 + 120))(a8, &v37);
  CvtHex(a8, v33);
  v23 = *a8;
  *(a1 + 146) = *(a8 + 16);
  *(a1 + 130) = v23;
  if (*(a1 + 8))
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v24;
    v41 = v24;
    v38 = v24;
    v39 = v24;
    v37 = v24;
    (*(a2 + 104))(&v37);
    (*(a2 + 112))(&v37, *(a7 + 16), *(a7 + 24));
    (*(a2 + 120))(v32, &v37);
  }

  else
  {
    v32[0] = 0;
    v32[1] = 0;
  }

  LOBYTE(v39) = -86;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v25;
  v38 = v25;
  CvtHex(v32, v30);
  DigestCalcResponse(a2, v33, a3, a4, a5, v18, *(a7 + 8), *a7, v30, &v37);
  v26 = (*(a2 + 40))(33);
  *v26 = v37;
  *(v26 + 16) = v38;
  *(v26 + 32) = 0;
  if (a10)
  {
    DigestCalcResponse(a2, v33, a3, a4, a5, v18, *(a7 + 8), 0, v30, &v37);
    v27 = (*(a2 + 56))(*a10, 33);
    if (v27)
    {
      *a10 = v27;
      *v27 = v37;
      v27[1] = v38;
      *(*a10 + 32) = 0;
    }

    else
    {
      free(*a10);
      v26 = 0;
      *a10 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t create_layer_keys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[3] = v12;
  v27[4] = v12;
  v27[1] = v12;
  v27[2] = v12;
  v27[0] = v12;
  (*(a2 + 256))(*(a2 + 8), 5, "DIGEST-MD5 create_layer_keys()");
  (*(a2 + 104))(v27);
  (*(a2 + 112))(v27, a3, a4);
  if (*(a1 + 4))
  {
    v13 = SEALING_CLIENT_SERVER;
  }

  else
  {
    v13 = SEALING_SERVER_CLIENT;
  }

  v14 = *v13;
  v15 = strlen(*v13);
  (*(a2 + 112))(v27, v14, v15);
  (*(a2 + 120))(a5, v27);
  (*(a2 + 104))(v27);
  (*(a2 + 112))(v27, a3, a4);
  if (*(a1 + 4))
  {
    v16 = SEALING_SERVER_CLIENT;
  }

  else
  {
    v16 = SEALING_CLIENT_SERVER;
  }

  v17 = *v16;
  v18 = strlen(*v16);
  (*(a2 + 112))(v27, v17, v18);
  (*(a2 + 120))(a6, v27);
  (*(a2 + 104))(v27);
  (*(a2 + 112))(v27, a1 + 130, 16);
  if (*(a1 + 4))
  {
    v19 = SIGNING_CLIENT_SERVER;
  }

  else
  {
    v19 = &SIGNING_SERVER_CLIENT;
  }

  v20 = *v19;
  v21 = strlen(*v19);
  (*(a2 + 112))(v27, v20, v21);
  (*(a2 + 120))(a1 + 96, v27);
  (*(a2 + 104))(v27);
  (*(a2 + 112))(v27, a1 + 130, 16);
  if (*(a1 + 4))
  {
    v22 = &SIGNING_SERVER_CLIENT;
  }

  else
  {
    v22 = SIGNING_CLIENT_SERVER;
  }

  v23 = *v22;
  v24 = strlen(*v22);
  (*(a2 + 112))(v27, v23, v24);
  result = (*(a2 + 120))(a1 + 113, v27);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t add_to_challenge(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, char *__s, char *a6, int a7)
{
  v14 = strlen(__s);
  v15 = v14 + strlen(a6) + *a4 + 5;
  v16 = _plug_buf_alloc(a1, a2, a3, v15);
  if (!v16)
  {
    if (*a4)
    {
      *(*a2 + strlen(*a2)) = 44;
      strcat(*a2, __s);
    }

    else
    {
      strcpy(*a2, __s);
    }

    v17 = (*a2 + strlen(*a2));
    if (!a7)
    {
      *v17 = 61;
      strcat(*a2, a6);
LABEL_26:
      v16 = 0;
      *a4 = v15;
      return v16;
    }

    strcpy(v17, "=");
    if (!strpbrk(a6, "\"))
    {
      strcat(*a2, a6);
LABEL_25:
      *(*a2 + strlen(*a2)) = 34;
      goto LABEL_26;
    }

    if (a6)
    {
      v18 = strpbrk(a6, "\");
      if (v18)
      {
        v19 = 1;
        do
        {
          v18 = strpbrk(v18 + 1, "\");
          ++v19;
        }

        while (v18);
        v20 = strlen(a6);
        v21 = malloc_type_malloc(v20 + v19, 0x468B61D5uLL);
        if (v21)
        {
          v22 = v21;
          for (i = v21; ; ++i)
          {
            v24 = *a6;
            if (v24 == 34 || v24 == 92)
            {
              *i++ = 92;
              LOBYTE(v24) = *a6;
            }

            else if (!*a6)
            {
              *i = 0;
              goto LABEL_22;
            }

            *i = v24;
            ++a6;
          }
        }
      }

      else
      {
        v22 = strdup(a6);
        if (v22)
        {
          goto LABEL_22;
        }
      }
    }

    (*(a1 + 264))(*(a1 + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/digestmd5.c near line %d", 564);
    v22 = 0;
LABEL_22:
    v25 = _plug_buf_alloc(a1, a2, a3, v15);
    if (v25)
    {
      v16 = v25;
      free(v22);
      return v16;
    }

    strcat(*a2, v22);
    free(v22);
    goto LABEL_25;
  }

  return v16;
}

double clear_reauth_entry(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    if (*a1)
    {
      (*(a3 + 64))();
    }

    if (*(a1 + 8))
    {
      (*(a3 + 64))();
    }

    if (*(a1 + 16))
    {
      (*(a3 + 64))();
    }

    if (*(a1 + 32))
    {
      (*(a3 + 64))();
    }

    if (a2 == 1)
    {
      if (*(a1 + 40))
      {
        (*(a3 + 64))();
      }
    }

    *(a1 + 80) = 0;
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

char *__cdecl skip_token(char *result)
{
  if (result && *result >= 33)
  {
    v2 = *result;
    do
    {
      if (((v2 - 39) <= 0x36 && ((1 << (v2 - 39)) & 0x70000003F80127) != 0 || (v2 - 123) <= 4 && ((1 << (v2 - 123)) & 0x15) != 0) && (v1 != 1 || (*(MEMORY[0x277D85DE0] + 4 * v2 + 60) & 0x8000) == 0))
      {
        break;
      }

      v3 = *++result;
      v2 = v3;
    }

    while (v3 > 32);
  }

  return result;
}

uint64_t MD5_UTF8_8859_1(uint64_t result, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = result;
  if (a3)
  {
    v7 = &a4[a5];
    v11 = -86;
    do
    {
      if (a4 >= v7)
      {
        v9 = a4;
      }

      else
      {
        v8 = v7 - a4;
        v9 = a4;
        while (*v9 <= 0xBFu)
        {
          ++v9;
          if (!--v8)
          {
            v9 = v7;
            break;
          }
        }

        if (v9 != a4)
        {
          result = (*(v6 + 112))(a2, a4, (v9 - a4));
        }
      }

      if ((v9 + 1) >= v7)
      {
        break;
      }

      v11 = v9[1] & 0x3F | (*v9 << 6);
      result = (*(v6 + 112))(a2, &v11, 1);
      a4 = v9 + 2;
    }

    while ((v9 + 2) < v7);
  }

  else
  {
    v10 = *(result + 112);

    return v10(a2, a4, a5);
  }

  return result;
}

uint64_t digestmd5_decode_packet(uint64_t a1, char *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v24[0] = 0xAAAAAAAAAAAAAAAALL;
  v24[1] = 0xAAAAAAAAAAAAAAAALL;
  if (a3 <= 0xF)
  {
    (*(*(a1 + 152) + 264))(*(*(a1 + 152) + 8), 0, "DIGEST-MD5 SASL packets must be at least 16 bytes long");
LABEL_10:
    result = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v8 = &a2[a3];
  if (*(v8 - 3) != 256)
  {
    (*(*(a1 + 152) + 264))(*(*(a1 + 152) + 8), 0, "Wrong Version");
    goto LABEL_10;
  }

  v9 = bswap32(*(v8 - 1));
  v10 = *(a1 + 92);
  v11 = *(a1 + 152);
  if (v9 != v10)
  {
    (*(v11 + 264))(*(v11 + 8), 0, "Incorrect Sequence Number: received %u, expected %u", v9, v10);
    goto LABEL_10;
  }

  result = _plug_buf_alloc(v11, (a1 + 200), (a1 + 216), a3 - 2);
  if (!result)
  {
    v15 = a3 - 6;
    **(a1 + 200) = bswap32((*(a1 + 92))++);
    v16 = (*(a1 + 200) + 4);
    *a4 = v16;
    v17 = *(a1 + 272);
    if (!v17)
    {
      memcpy(v16, a2, v15);
      v19 = a3 - 16;
      *a5 = a3 - 16;
      v18 = a3 - 16;
LABEL_14:
      v21 = *a4 + v19;
      (*(*(a1 + 152) + 128))(*(a1 + 200), v18 + 4, a1 + 113, 16, v24);
      v22 = 0;
      v23 = 0;
      do
      {
        v23 |= *(v21 + v22) ^ *(v24 + v22);
        ++v22;
      }

      while (v22 != 10);
      if (!v23)
      {
        result = 0;
        goto LABEL_11;
      }

      (*(*(a1 + 152) + 264))(*(*(a1 + 152) + 8), 0, "CMAC doesn't match!");
      goto LABEL_10;
    }

    result = v17(a1, a2, v15, 0);
    if (!result)
    {
      v18 = *a5;
      v19 = a3 - 16;
      goto LABEL_14;
    }
  }

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t create_nonce(uint64_t a1)
{
  result = (*(a1 + 40))(32);
  if (result)
  {
    v3 = result;
    (*(a1 + 184))(*(a1 + 16), result, 32);
    v4 = (*(a1 + 40))(47);
    if (v4)
    {
      v5 = v4;
      v6 = (*(a1 + 216))(v3, 32, v4, 46, 0);
      (*(a1 + 64))(v3);
      if (v6)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      (*(a1 + 264))(*(a1 + 8), 0, "Unable to allocate final buffer");
      return 0;
    }
  }

  return result;
}

uint64_t digestmd5_common_mech_dispose(uint64_t a1, uint64_t a2)
{
  (*(a2 + 256))(*(a2 + 8), 5, "DIGEST-MD5 common mech dispose");
  if (*(a1 + 24))
  {
    (*(a2 + 64))();
  }

  if (*(a1 + 32))
  {
    (*(a2 + 64))();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    if (*(a1 + 72) >= 1)
    {
      v5 = 0;
      do
      {
        (*(a2 + 64))(*(*(a1 + 64) + 8 * v5++));
      }

      while (v5 < *(a1 + 72));
      v4 = *(a1 + 64);
    }

    (*(a2 + 64))(v4);
  }

  if (*(a1 + 40))
  {
    (*(a2 + 64))();
  }

  if (*(a1 + 56))
  {
    (*(a2 + 64))();
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    v6(a1);
  }

  if (*(a1 + 80))
  {
    (*(a2 + 64))();
  }

  _plug_decode_free((a1 + 224));
  if (*(a1 + 184))
  {
    (*(a2 + 64))();
  }

  if (*(a1 + 192))
  {
    (*(a2 + 64))();
  }

  if (*(a1 + 200))
  {
    (*(a2 + 64))();
  }

  if (*(a1 + 160))
  {
    (*(a2 + 64))();
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    if (*v7)
    {
      (*(a2 + 64))(*v7);
      v7 = *(a1 + 176);
    }

    (*(a2 + 64))(v7);
  }

  v8 = *(a2 + 64);

  return v8(a1);
}

uint64_t digestmd5_client_mech_new(void *a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a2 + 180) & 0x10) != 0 && !*(a2 + 136))
  {
    (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "DIGEST-MD5 unavailable due to lack of HTTP request");
    return 4294967289;
  }

  else
  {
    v6 = (*(*(a2 + 24) + 40))(360);
    if (v6)
    {
      v7 = v6;
      result = 0;
      *(v7 + 352) = 0;
      *(v7 + 320) = 0u;
      *(v7 + 336) = 0u;
      *(v7 + 288) = 0u;
      *(v7 + 304) = 0u;
      *(v7 + 256) = 0u;
      *(v7 + 272) = 0u;
      *(v7 + 224) = 0u;
      *(v7 + 240) = 0u;
      *(v7 + 192) = 0u;
      *(v7 + 208) = 0u;
      *(v7 + 160) = 0u;
      *(v7 + 176) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *v7 = 0x100000001;
      *(v7 + 8) = *(a2 + 180) & 0x10;
      *(v7 + 16) = *a1;
      *a3 = v7;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t digestmd5_client_mech_step(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t **a5, const char **a6, _DWORD *a7, uint64_t a8)
{
  v16 = *(a2 + 8);
  if (v16 && (v17 = *v16) != 0)
  {
    v18 = 0;
    v19 = v16 + 1;
    do
    {
      v18 = 2 * (v18 ^ v17);
      v20 = *v19++;
      v17 = v20;
    }

    while (v20);
  }

  else
  {
    v18 = 0;
  }

  if (a4 > 0x800)
  {
    return 4294967291;
  }

  v22 = *(*(a1 + 16) + 24);
  *a6 = 0;
  *a7 = 0;
  v23 = *a1;
  if (*a1 == 3)
  {
    goto LABEL_131;
  }

  if (v23 == 2)
  {
LABEL_23:
    (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 client step 2");
    if (*(a2 + 80) > *(a2 + 84))
    {
      return 4294967289;
    }

    if (*(a1 + 40))
    {
      v26 = *(a1 + 64);
      v27 = *(a1 + 72);
LABEL_29:
      client_response = ask_user_info(a1, a2, v26, v27, a5, a8);
      if (client_response)
      {
        return client_response;
      }

      client_response = make_client_response(a1, a2, a8);
      if (client_response)
      {
        return client_response;
      }

      v75 = *(a1 + 160);
      *a7 = strlen(v75);
      *a6 = v75;
      v29 = 3;
LABEL_34:
      *a1 = v29;
      return 1;
    }

    (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 parse_server_challenge()");
    v30 = *(a2 + 24);
    if (a3 && a4)
    {
      v31 = (*(v30 + 40))(a4 + 1);
      v107 = v31;
      if (v31)
      {
        v32 = v31;
        memcpy(v31, a3, a4);
        v32[a4] = 0;
        *(a1 + 336) = 0x10000;
        nonce = create_nonce(*(a2 + 24));
        *(a1 + 56) = nonce;
        v99 = v32;
        if (!nonce)
        {
          (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "failed to create cnonce");
          v26 = 0;
          v27 = 0;
          v102 = 0;
          LODWORD(v76) = 0;
LABEL_197:
          v21 = 0xFFFFFFFFLL;
          goto LABEL_198;
        }

        if (!*v32)
        {
          v102 = 0;
          LODWORD(v76) = 0;
          goto LABEL_195;
        }

        v97 = 0;
        v98 = (a1 + 40);
        v95 = 0;
        v96 = 0;
        v103 = 0;
        v26 = 0;
        while (1)
        {
          __s = 0xAAAAAAAAAAAAAAAALL;
          v106 = 0xAAAAAAAAAAAAAAAALL;
          get_pair(&v107, &v106, &__s);
          v34 = v106;
          if (!v106)
          {
            v102 = v26;
            (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Parse error");
            goto LABEL_211;
          }

          if (!*v106)
          {
            goto LABEL_169;
          }

          if (!strcasecmp(v106, "realm"))
          {
            v35 = *(a2 + 24);
            v36 = 8 * v103;
            if (v26)
            {
              v37 = (*(v35 + 56))(v26, v36 + 16);
            }

            else
            {
              v37 = (*(v35 + 40))(v36 + 16);
            }

            v26 = v37;
            if (v37)
            {
              _plug_strdup(*(a2 + 24), __s, (v37 + 8 * v103), 0);
              v26[++v103] = 0;
              goto LABEL_83;
            }

            v102 = 0;
            v21 = 4294967294;
            LODWORD(v76) = v103 + 1;
            goto LABEL_216;
          }

          if (!strcasecmp(v34, "nonce"))
          {
            _plug_strdup(*(a2 + 24), __s, v98, 0);
            *(a1 + 48) = 1;
          }

          else
          {
            if (!strcasecmp(v34, "qop"))
            {
              v100 = v26;
              v38 = __s;
              if (!__s)
              {
LABEL_79:
                HIDWORD(v97) = 1;
                v26 = v100;
                goto LABEL_83;
              }

              while (2)
              {
                if (!*v38)
                {
                  goto LABEL_79;
                }

                for (i = v38; ; __s = ++i)
                {
                  while (1)
                  {
                    v40 = *i;
                    v88 = v40 > 0x20;
                    v41 = (1 << v40) & 0x100002600;
                    if (v88 || v41 == 0)
                    {
                      break;
                    }

                    ++i;
                  }

                  __s = i;
                  if (*i != 44)
                  {
                    break;
                  }
                }

                if (!*i)
                {
                  goto LABEL_79;
                }

                v43 = strchr(i, 44);
                v38 = v43;
                if (v43)
                {
                  *v43 = 0;
                  v38 = v43 + 1;
                }

                v44 = skip_r_lws(i);
                if (v44)
                {
                  *v44 = 0;
                  if (!strcasecmp(i, "auth-conf"))
                  {
                    v45 = v97 | 4;
                  }

                  else if (!strcasecmp(i, "auth-int"))
                  {
                    v45 = v97 | 2;
                  }

                  else
                  {
                    if (strcasecmp(i, "auth"))
                    {
                      (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "Server supports unknown layer: %s\n", i);
                      goto LABEL_78;
                    }

                    v45 = v97 | 1;
                  }

                  LODWORD(v97) = v45;
                }

LABEL_78:
                __s = v38;
                if (!v38)
                {
                  goto LABEL_79;
                }

                continue;
              }
            }

            if (!strcasecmp(v34, "cipher"))
            {
              v46 = __s;
              if (__s)
              {
                do
                {
                  if (!*v46)
                  {
                    break;
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v47 = *v46;
                      v88 = v47 > 0x20;
                      v48 = (1 << v47) & 0x100002600;
                      if (v88 || v48 == 0)
                      {
                        break;
                      }

                      ++v46;
                    }

                    __s = v46;
                    if (*v46 != 44)
                    {
                      break;
                    }

                    __s = ++v46;
                  }

                  if (!*v46)
                  {
                    break;
                  }

                  v50 = strchr(v46, 44);
                  if (v50)
                  {
                    *v50 = 0;
                    v94 = v50 + 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  v51 = skip_r_lws(v46);
                  if (v51)
                  {
                    v101 = v26;
                    *v51 = 0;
                    v52 = available_ciphers;
                    if (available_ciphers)
                    {
                      v53 = &off_280B0E288;
                      while (strcasecmp(v46, v52))
                      {
                        v54 = *v53;
                        v53 += 7;
                        v52 = v54;
                        if (!v54)
                        {
                          goto LABEL_104;
                        }
                      }

                      LODWORD(v96) = *(v53 - 10) | v96;
                    }

                    else
                    {
LABEL_104:
                      (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "Server supports unknown cipher: %s\n", v46);
                    }

                    v26 = v101;
                  }

                  v46 = v94;
                  __s = v94;
                }

                while (v94);
              }

              goto LABEL_83;
            }

            if (!strcasecmp(v34, "stale") && *(a1 + 312))
            {
              if (*(a1 + 320))
              {
                _plug_free_secret(*(a2 + 24), (a1 + 312));
              }

              *(a1 + 312) = 0;
              goto LABEL_83;
            }

            if (!strcasecmp(v34, "maxbuf"))
            {
              if (HIDWORD(v95))
              {
                v102 = v26;
                (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "At least two maxbuf directives found. Authentication aborted");
              }

              else if (str2ul32(__s, (a1 + 336)))
              {
                v55 = *(a1 + 336);
                if (v55 <= 0x10)
                {
                  v102 = v26;
                  (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Invalid maxbuf parameter received from server (too small: %s)");
                }

                else
                {
                  if (!(v55 >> 24))
                  {
                    HIDWORD(v95) = 1;
                    goto LABEL_83;
                  }

                  v102 = v26;
                  (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Invalid maxbuf parameter received from server (too big: %s)");
                }
              }

              else
              {
                v102 = v26;
                (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Invalid maxbuf parameter received from server (%s)");
              }

LABEL_211:
              v21 = 4294967283;
              goto LABEL_212;
            }

            if (!strcasecmp(v34, "charset"))
            {
              if (!strcasecmp(__s, "utf-8"))
              {
                goto LABEL_83;
              }

              v102 = v26;
              (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Charset must be UTF-8");
              goto LABEL_211;
            }

            if (!strcasecmp(v34, "algorithm"))
            {
              v56 = __s;
              if (*(a1 + 8))
              {
                if (!strcasecmp(__s, "md5") || !strcasecmp(v56, "md5-sess"))
                {
                  _plug_strdup(*(a2 + 24), v56, (a1 + 344), 0);
                  goto LABEL_128;
                }

LABEL_239:
                v102 = v26;
                (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "'algorithm' isn't 'md5-sess'");
              }

              else
              {
                if (strcasecmp(__s, "md5-sess"))
                {
                  goto LABEL_239;
                }

LABEL_128:
                if (SHIDWORD(v96) < 1)
                {
                  ++HIDWORD(v96);
                  goto LABEL_83;
                }

                v102 = v26;
                (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Must see 'algorithm' only once");
              }

LABEL_241:
              v21 = 0xFFFFFFFFLL;
LABEL_212:
              LODWORD(v76) = v103;
LABEL_216:
              v26 = 0;
              v27 = 0;
              goto LABEL_198;
            }

            if (!strcasecmp(v34, "opaque"))
            {
              if (!*(a1 + 8))
              {
                goto LABEL_83;
              }

              _plug_strdup(*(a2 + 24), __s, (a1 + 352), 0);
              if (v95 < 1)
              {
                LODWORD(v95) = v95 + 1;
                goto LABEL_83;
              }

              v102 = v26;
              (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Must see 'opaque' only once");
              goto LABEL_241;
            }

            (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 unrecognized pair %s/%s: ignoring", v34, __s);
          }

LABEL_83:
          if (!*v107)
          {
LABEL_169:
            LODWORD(v76) = v103;
            v77 = v97;
            v102 = v26;
            if (!v97)
            {
              if (HIDWORD(v97))
              {
                (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Server doesn't support any known qop level");
                v26 = 0;
                v27 = 0;
                v21 = 4294967283;
                goto LABEL_198;
              }

              v77 = 1;
            }

            if (HIDWORD(v96) == 1)
            {
              if (*v98)
              {
                v78 = *(a2 + 112);
                if (*(a1 + 8) || *(a2 + 88))
                {
                  v80 = *(a2 + 80);
                  v79 = *(a2 + 84);
                  v81 = v79 >= v78;
                  v82 = v79 - v78;
                  if (v81)
                  {
                    v83 = v82;
                  }

                  else
                  {
                    v83 = 0;
                  }

                  v81 = v80 >= v78;
                  v84 = v80 - v78;
                  if (v81)
                  {
                    v85 = v84;
                  }

                  else
                  {
                    v85 = 0;
                  }

                  if ((v77 & 4) != 0 && v83 >= 2)
                  {
                    if (available_ciphers)
                    {
                      v86 = &available_ciphers;
                      do
                      {
                        v87 = *(v86 + 2);
                        v88 = v83 < v87 || v85 > v87;
                        if (!v88 && (v86[2] & v96) != 0)
                        {
                          v89 = *(a1 + 328);
                          if (!v89 || v87 > *(v89 + 8))
                          {
                            *(a1 + 328) = v86;
                          }
                        }

                        v90 = v86[7];
                        v86 += 7;
                      }

                      while (v90);
                    }

                    if (*(a1 + 328))
                    {
                      *(a1 + 324) = 4;
                    }

                    else
                    {
                      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "No good privacy layers");
                    }
                  }
                }

                else
                {
                  v85 = 0;
                  v83 = 0;
                }

                if (*(a1 + 328))
                {
                  v21 = 0;
                }

                else
                {
                  if ((v77 & 2) == 0 || !v83 || v85 > 1)
                  {
                    if (v85)
                    {
                      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Can't find an acceptable layer");
                      v26 = 0;
                      v27 = 0;
                      v21 = 4294967281;
                    }

                    else
                    {
                      *(a1 + 324) = 1;
                      if (v77)
                      {
                        v21 = 0;
                        goto LABEL_227;
                      }

                      (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Server doesn't support no layer");
                      v26 = 0;
                      v27 = 0;
                      v21 = 0xFFFFFFFFLL;
                    }

                    LODWORD(v76) = v103;
LABEL_198:
                    (*(*(a2 + 24) + 64))(v99);
                    if (v21 && v102)
                    {
                      v104 = a8;
                      if (v76 >= 1)
                      {
                        v76 = v76;
                        v91 = v102;
                        do
                        {
                          v92 = *v91++;
                          (*(*(a2 + 24) + 64))(v92);
                          --v76;
                        }

                        while (v76);
                      }

                      (*(*(a2 + 24) + 64))(v102);
                      a8 = v104;
                    }

                    if (v21)
                    {
                      return v21;
                    }

                    if (v27 == 1)
                    {
                      v93 = *(a1 + 32);
                      if (v93)
                      {
                        (*(*(a2 + 24) + 64))(v93);
                      }

                      *(a1 + 32) = *v26;
                      (*(*(a2 + 24) + 64))(v26);
                      v26 = 0;
                      v27 = 1;
                    }

                    else
                    {
                      *(a1 + 64) = v26;
                      *(a1 + 72) = v27;
                    }

                    goto LABEL_29;
                  }

                  v21 = 0;
                  *(a1 + 324) = 2;
                }

LABEL_227:
                LODWORD(v76) = v103;
                v27 = v103;
                goto LABEL_198;
              }

              (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Don't have nonce.");
              goto LABEL_196;
            }

LABEL_195:
            (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "Must see 'algorithm' once. Didn't see at all");
LABEL_196:
            v26 = 0;
            v27 = 0;
            goto LABEL_197;
          }
        }
      }

      return 4294967294;
    }

    (*(v30 + 264))(*(v30 + 8), 0, "no server challenge");
    return 0xFFFFFFFFLL;
  }

  if (v23 != 1)
  {
    (*(*(a2 + 24) + 256))(0, 1, "Invalid DIGEST-MD5 client step %d\n", *a1);
    return 0xFFFFFFFFLL;
  }

  v24 = v18 % v22;
  if (a3)
  {
    if (strncasecmp(a3, "rspauth=", 8uLL))
    {
      *a1 = 2;
      if (!(*(*(a2 + 24) + 80))(*(*(a1 + 16) + 16)))
      {
        v25 = clear_reauth_entry(*(*(a1 + 16) + 32) + 88 * v24, 1, *(a2 + 24));
        (*(*(a2 + 24) + 88))(*(*(a1 + 16) + 16), v25);
      }

      if (*(a1 + 32))
      {
        (*(*(a2 + 24) + 64))();
      }

      if (*(a1 + 40))
      {
        (*(*(a2 + 24) + 64))();
      }

      if (*(a1 + 56))
      {
        (*(*(a2 + 24) + 64))();
      }

      *(a1 + 56) = 0;
      *(a1 + 328) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      goto LABEL_23;
    }

    *a1 = 3;
LABEL_131:
    (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 client step 3");
    v57 = (*(*(a2 + 24) + 40))(a4 + 1);
    v107 = v57;
    if (v57)
    {
      v58 = v57;
      memcpy(v57, a3, a4);
      v58[a4] = 0;
      if (*v58)
      {
        while (1)
        {
          __s = 0xAAAAAAAAAAAAAAAALL;
          v106 = 0xAAAAAAAAAAAAAAAALL;
          get_pair(&v107, &v106, &__s);
          v59 = v106;
          if (!v106)
          {
            (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "DIGEST-MD5 Received Garbage");
            v21 = 4294967283;
            goto LABEL_138;
          }

          if (!*v106)
          {
            goto LABEL_137;
          }

          if (!strcasecmp(v106, "rspauth"))
          {
            break;
          }

          (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 unrecognized pair %s/%s: ignoring", v59, __s);
          if (!*v107)
          {
            goto LABEL_137;
          }
        }

        if (!strcmp(*(a1 + 80), __s))
        {
          v21 = 0;
          *a8 = 1;
          *(a8 + 136) = 0;
        }

        else
        {
          (*(*(a2 + 24) + 264))(*(*(a2 + 24) + 8), 0, "DIGEST-MD5: This server wants us to believe that it knows shared secret");
          v21 = 4294967286;
        }
      }

      else
      {
LABEL_137:
        v21 = 0xFFFFFFFFLL;
      }

LABEL_138:
      (*(*(a2 + 24) + 64))(v58);
      if (!(*(*(a2 + 24) + 80))(*(*(a1 + 16) + 16)))
      {
        v61 = *(a2 + 8);
        if (v61 && (v62 = *v61) != 0)
        {
          v63 = 0;
          v64 = v61 + 1;
          do
          {
            v63 = 2 * (v63 ^ v62);
            v65 = *v64++;
            v62 = v65;
          }

          while (v65);
        }

        else
        {
          v63 = 0;
        }

        v66 = *(a1 + 16);
        v67 = v63 % *(v66 + 24);
        v68 = *(a1 + 48);
        if (v21)
        {
          if (v68 >= 2)
          {
            v60.n128_f64[0] = clear_reauth_entry(*(v66 + 32) + 88 * v67, 1, *(a2 + 24));
          }
        }

        else if (v68 == 1)
        {
          clear_reauth_entry(*(v66 + 32) + 88 * v67, 1, *(a2 + 24));
          _plug_strdup(*(a2 + 24), *(a8 + 16), (*(*(a1 + 16) + 32) + 88 * v67), 0);
          v73 = *(*(a1 + 16) + 32) + 88 * v67;
          v74 = *(a1 + 32);
          *(a1 + 32) = 0;
          *(v73 + 8) = v74;
          *(a1 + 40) = 0;
          *(v73 + 24) = *(a1 + 48);
          *(v73 + 32) = *(a1 + 56);
          *(a1 + 56) = 0;
          _plug_strdup(*(a2 + 24), *(a2 + 8), (v73 + 40), 0);
          if (*(a1 + 8))
          {
            *(*(*(a1 + 16) + 32) + 88 * v67 + 72) = *(a1 + 344);
            *(a1 + 344) = 0;
            *(*(*(a1 + 16) + 32) + 88 * v67 + 80) = *(a1 + 352);
            *(a1 + 352) = 0;
          }

          *(*(*(a1 + 16) + 32) + 88 * v67 + 48) = *(a1 + 324);
          *(*(*(a1 + 16) + 32) + 88 * v67 + 56) = *(a1 + 328);
          *(*(*(a1 + 16) + 32) + 88 * v67 + 64) = *(a1 + 336);
        }

        (*(*(a2 + 24) + 88))(*(*(a1 + 16) + 16), v60);
      }

      return v21;
    }

    return 4294967294;
  }

  if ((*(*(a2 + 24) + 80))(*(*(a1 + 16) + 16)))
  {
    goto LABEL_33;
  }

  v69 = *(a1 + 16);
  v70 = *(*(v69 + 32) + 88 * v24 + 40);
  if (!v70)
  {
    (*(*(a2 + 24) + 88))(*(v69 + 16));
    goto LABEL_33;
  }

  v71 = strcasecmp(v70, *(a2 + 8));
  (*(*(a2 + 24) + 88))(*(v69 + 16));
  if (v71)
  {
LABEL_33:
    v29 = 2;
    goto LABEL_34;
  }

  return digestmd5_client_mech_step1(a1, a2, a5, a6, a7, a8);
}

uint64_t digestmd5_client_mech_dispose(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    (*(a2 + 256))(*(a2 + 8), 5, "DIGEST-MD5 client mech dispose");
    if (*(v3 + 320))
    {
      _plug_free_secret(a2, (v3 + 312));
    }

    if (*(v3 + 344))
    {
      (*(a2 + 64))();
    }

    if (*(v3 + 352))
    {
      (*(a2 + 64))();
    }

    return digestmd5_common_mech_dispose(v3, a2);
  }

  return result;
}

uint64_t digestmd5_client_mech_step1(uint64_t a1, uint64_t a2, uint64_t **a3, const char **a4, _DWORD *a5, uint64_t a6)
{
  (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 client step 1");
  result = ask_user_info(a1, a2, 0, 0, a3, a6);
  if (!result)
  {
    v13 = *(a2 + 8);
    if (v13 && (v14 = *v13) != 0)
    {
      v15 = 0;
      v16 = v13 + 1;
      do
      {
        v15 = 2 * (v15 ^ v14);
        v17 = *v16++;
        v14 = v17;
      }

      while (v17);
    }

    else
    {
      v15 = 0;
    }

    v18 = *(a1 + 16);
    v19 = *(v18 + 24);
    if (!(*(*(a2 + 24) + 80))(*(v18 + 16)))
    {
      v20 = v15 % v19;
      v21 = *(a1 + 16);
      v22 = *(v21 + 32);
      v23 = (v22 + 88 * v20);
      v24 = v23[5];
      if (v24 && !strcasecmp(v24, *(a2 + 8)) && !strcmp(*v23, *(a6 + 16)))
      {
        if (*(a1 + 32))
        {
          (*(*(a2 + 24) + 64))();
          v22 = *(*(a1 + 16) + 32);
        }

        _plug_strdup(*(a2 + 24), *(v22 + 88 * v20 + 8), (a1 + 32), 0);
        _plug_strdup(*(a2 + 24), *(*(*(a1 + 16) + 32) + 88 * v20 + 16), (a1 + 40), 0);
        v25 = *(*(a1 + 16) + 32) + 88 * v20;
        v26 = *(v25 + 24) + 1;
        *(v25 + 24) = v26;
        *(a1 + 48) = v26;
        _plug_strdup(*(a2 + 24), *(v25 + 32), (a1 + 56), 0);
        v21 = *(a1 + 16);
        if (*(a1 + 8))
        {
          _plug_strdup(*(a2 + 24), *(*(v21 + 32) + 88 * v20 + 72), (a1 + 344), 0);
          v21 = *(a1 + 16);
          v27 = *(*(v21 + 32) + 88 * v20 + 80);
          if (v27)
          {
            _plug_strdup(*(a2 + 24), v27, (a1 + 352), 0);
            v21 = *(a1 + 16);
          }
        }

        v28 = *(v21 + 32) + 88 * v20;
        *(a1 + 324) = *(v28 + 48);
        *(a1 + 328) = *(v28 + 56);
        *(a1 + 336) = *(v28 + 64);
      }

      (*(*(a2 + 24) + 88))(*(v21 + 16));
    }

    if (*(a1 + 40))
    {
      result = make_client_response(a1, a2, a6);
      if (result)
      {
        return result;
      }

      v29 = *(a1 + 160);
      *a5 = strlen(v29);
      *a4 = v29;
    }

    else
    {
      *a1 = 2;
    }

    return 1;
  }

  return result;
}

uint64_t ask_user_info(uint64_t a1, uint64_t a2, const char **a3, int a4, uint64_t **a5, uint64_t a6)
{
  v44 = 0;
  v45 = 0;
  __s = 0;
  (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 ask_user_info()");
  if (*(a6 + 16))
  {
    v12 = 0;
  }

  else
  {
    simple = _plug_get_simple(*(a2 + 24), 16386, 1, &v45, a5);
    v12 = simple;
    realm = simple;
    if ((simple & 0xFFFFFFFD) != 0)
    {
      return realm;
    }
  }

  if (*(a6 + 8))
  {
    v13 = 0;
  }

  else
  {
    v19 = _plug_get_simple(*(a2 + 24), 16385, 0, &v44, a5);
    v13 = v19;
    realm = v19;
    if ((v19 & 0xFFFFFFFD) != 0)
    {
      return realm;
    }
  }

  if (*(a1 + 312))
  {
    v14 = 0;
  }

  else
  {
    password = _plug_get_password(*(a2 + 24), (a1 + 312), (a1 + 320), a5);
    v14 = password;
    realm = password;
    if ((password & 0xFFFFFFFD) != 0)
    {
      return realm;
    }
  }

  v16 = *(a1 + 32);
  v15 = (a1 + 32);
  if (!v16)
  {
    if (a3)
    {
      if (a4 == 1)
      {
        LODWORD(realm) = 0;
        v21 = *a3;
LABEL_21:
        __s = v21;
        goto LABEL_22;
      }

      realm = _plug_get_realm(*(a2 + 24), a3, &__s, a5);
      if ((realm & 0xFFFFFFFD) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      realm = 0xFFFFFFFFLL;
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      return realm;
    }

    goto LABEL_21;
  }

  LODWORD(realm) = -1;
LABEL_22:
  if (a5 && *a5)
  {
    (*(*(a2 + 24) + 64))();
    *a5 = 0;
  }

  if (v12 != 2 && v13 != 2 && v14 != 2 && realm != 2)
  {
    if (*(a6 + 16))
    {
LABEL_30:
      if (__s && !*v15)
      {
        _plug_strdup(*(a2 + 24), __s, v15, 0);
      }

      return 0;
    }

    if (v44)
    {
      v31 = v45;
      if (*v44)
      {
        realm = (*(a2 + 152))(*(*(a2 + 24) + 8), v45, 0, 1, a6);
        if (realm)
        {
          return realm;
        }

        v32 = (*(a2 + 152))(*(*(a2 + 24) + 8), v44, 0, 2, a6);
        goto LABEL_52;
      }
    }

    else
    {
      v31 = v45;
    }

    v32 = (*(a2 + 152))(*(*(a2 + 24) + 8), v31, 0, 3, a6);
LABEL_52:
    realm = v32;
    if (v32)
    {
      return realm;
    }

    goto LABEL_30;
  }

  if (realm == 2)
  {
    if (a3)
    {
      v42 = v14;
      v22 = a4;
      v23 = 17;
      if (a4 >= 1)
      {
        v24 = a4;
        v25 = a3;
        do
        {
          v26 = *v25++;
          v23 += strlen(v26) + 4;
          --v24;
        }

        while (v24);
      }

      v27 = (*(*(a2 + 24) + 40))(v23 + 1);
      strcpy(v27, "Available realms:");
      if (a4 >= 1)
      {
        do
        {
          strcat(v27, " {");
          v28 = *a3++;
          v29 = strcat(v27, v28);
          strcpy(&v27[strlen(v29)], "},");
          --v22;
        }

        while (v22);
      }

      v27[v23 - 1] = 46;
      v30 = "Please enter your realm";
      v14 = v42;
    }

    else
    {
      v33 = *(a2 + 8);
      if (v33)
      {
        v34 = strlen(v33);
        v35 = (*(*(a2 + 24) + 40))(v34 + 3);
        if (!v35)
        {
          return 4294967294;
        }

        v27 = v35;
        sprintf(v35, "{%s}", *(a2 + 8));
      }

      else
      {
        v27 = 0;
      }

      v30 = "Please enter your realm";
    }
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

  if (v13 == 2)
  {
    v36 = "Please enter your authorization name";
  }

  else
  {
    v36 = 0;
  }

  if (v12 == 2)
  {
    v37 = "Please enter your authentication name";
  }

  else
  {
    v37 = 0;
  }

  if (v14 == 2)
  {
    v38 = "Please enter your password";
  }

  else
  {
    v38 = 0;
  }

  v39 = "{}";
  if (v27)
  {
    v39 = v27;
  }

  prompts = _plug_make_prompts(*(a2 + 24), a5, v36, 0, v37, 0, v38, 0, 0, 0, 0, v39, v30, *(a2 + 8));
  if (prompts)
  {
    return prompts;
  }

  else
  {
    return 2;
  }
}

uint64_t make_client_response(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  memset(__str, 170, 10);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v6;
  v65 = v6;
  *v62 = v6;
  v63 = v6;
  v61 = 0;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v58 = v6;
  v59 = v6;
  (*(*(a2 + 24) + 256))(*(*(a2 + 24) + 8), 5, "DIGEST-MD5 make_client_response()");
  if (*(a3 + 36) < 2u)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 288);
  }

  v8 = *(a1 + 324);
  if (v8 == 2)
  {
    v10 = 0;
    *(a3 + 48) = digestmd5_encode;
    *(a3 + 64) = digestmd5_decode;
    *(a3 + 36) = 1;
    v11 = "auth-int";
  }

  else
  {
    if (v8 != 4)
    {
      v10 = 0;
      *(a3 + 48) = 0;
      *(a3 + 64) = 0;
      v53 = "auth";
      *(a3 + 36) = 0;
      goto LABEL_10;
    }

    *(a3 + 48) = digestmd5_encode;
    *(a3 + 64) = digestmd5_decode;
    v9 = *(a1 + 328);
    *(a3 + 36) = *(v9 + 8);
    v10 = *(v9 + 12);
    *(a1 + 264) = *(v9 + 24);
    *(a1 + 280) = *(v9 + 40);
    v11 = "auth-conf";
  }

  v53 = v11;
LABEL_10:
  if (*(a1 + 8))
  {
    v52 = v7;
    v51 = v10;
    v54 = 0;
    v12 = *(a2 + 136);
  }

  else
  {
    v13 = strlen(*a2);
    v14 = strlen(*(a2 + 8));
    v15 = (*(*(a2 + 24) + 40))(v13 + v14 + 3);
    if (!v15)
    {
      v31 = 4294967294;
      goto LABEL_52;
    }

    v16 = v15;
    v52 = v7;
    v51 = v10;
    v17 = strcpy(v15, *a2);
    *&v16[strlen(v17)] = 47;
    strcat(v16, *(a2 + 8));
    *&v58 = "AUTHENTICATE";
    *(&v58 + 1) = v16;
    v54 = v16;
    v59 = 0uLL;
    LODWORD(v60) = 0;
    v12 = &v58;
  }

  v55 = a2;
  v18 = *(a2 + 24);
  v19 = *(a1 + 344);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v56 = *(a1 + 48);
  __s = *(a1 + 56);
  v22 = *(a1 + 312);
  v24 = *(a3 + 8);
  v23 = *(a3 + 16);
  v25 = strcmp(v24, v23);
  v71 = -86;
  if (!v25)
  {
    v24 = 0;
  }

  v69 = 0xAAAAAAAAAAAAAAAALL;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  if (v22 && v12 && v56 && v21 && v23 && __s)
  {
    v73 = -86;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72[0] = v26;
    v72[1] = v26;
    v67[0] = v26;
    v67[1] = v26;
    v68 = -86;
    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = "";
    }

    v82 = 0xAAAAAAAAAAAAAAAALL;
    v80 = v26;
    v81 = v26;
    v78 = v26;
    v79 = v26;
    v77 = v26;
    memset(v76, 170, sizeof(v76));
    DigestCalcSecret(v18, v23, v27, v22 + 8, *v22, 0, v76);
    if (!*(a1 + 8) || v19 && !strcasecmp(v19, "md5-sess"))
    {
      (*(v18 + 104))(&v77);
      if (*(a1 + 8))
      {
        v75 = -86;
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v74[0] = v28;
        v74[1] = v28;
        CvtHex(v76, v74);
        (*(v18 + 112))(&v77, v74, 32);
      }

      else
      {
        (*(v18 + 112))(&v77, v76, 16);
      }

      (*(v18 + 112))(&v77, &COLON, 1);
      v32 = strlen(v21);
      (*(v18 + 112))(&v77, v21, v32);
      (*(v18 + 112))(&v77, &COLON, 1);
      v33 = strlen(__s);
      (*(v18 + 112))(&v77, __s, v33);
      if (v24)
      {
        (*(v18 + 112))(&v77, &COLON, 1);
        v34 = strlen(v24);
        (*(v18 + 112))(&v77, v24, v34);
      }

      (*(v18 + 120))(v76, &v77);
    }

    CvtHex(v76, v72);
    *(a1 + 130) = *v76;
    *(a1 + 146) = v76[16];
    if (*(a1 + 8))
    {
      v82 = 0xAAAAAAAAAAAAAAAALL;
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v80 = v35;
      v81 = v35;
      v78 = v35;
      v79 = v35;
      v77 = v35;
      (*(v18 + 104))(&v77);
      (*(v18 + 112))(&v77, *(v12 + 2), *(v12 + 6));
      (*(v18 + 120))(&v69, &v77);
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    LOBYTE(v79) = -86;
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v36;
    v78 = v36;
    CvtHex(&v69, v67);
    DigestCalcResponse(v18, v72, v21, v56, __s, v53, *(v12 + 1), *v12, v67, &v77);
    v37 = (*(v18 + 40))(33);
    *v37 = v77;
    *(v37 + 16) = v78;
    v29 = v37;
    *(v37 + 32) = 0;
    DigestCalcResponse(v18, v72, v21, v56, __s, v53, *(v12 + 1), 0, v67, &v77);
    v38 = (*(v18 + 56))(*(a1 + 80), 33);
    if (v38)
    {
      *(a1 + 80) = v38;
      *v38 = v77;
      v38[1] = v78;
      *(*(a1 + 80) + 32) = 0;
    }

    else
    {
      free(*(a1 + 80));
      v29 = 0;
      *(a1 + 80) = 0;
    }

    v30 = v55;
  }

  else
  {
    (*(v18 + 264))(*(v18 + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/digestmd5.c near line %d", 3297);
    v29 = 0;
    v30 = v55;
  }

  v61 = 0;
  if (*(a1 + 160))
  {
    (*(*(v30 + 24) + 64))();
  }

  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  if (!add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "username", *(a3 + 16), 1) && !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "realm", *(a1 + 32), 1))
  {
    v41 = *(a3 + 8);
    if ((!strcmp(v41, *(a3 + 16)) || !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "authzid", v41, 1)) && !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "nonce", *(a1 + 40), 1) && !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "cnonce", *(a1 + 56), 1))
    {
      snprintf(__str, 0xAuLL, "%08x", *(a1 + 48));
      if (!add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "nc", __str, 0) && !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "qop", v53, 0))
      {
        v42 = *(a1 + 328);
        if (!v42 || !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "cipher", *v42, 0))
        {
          if (*(v30 + 88))
          {
            snprintf(v62, 0x40uLL, "%d", *(v30 + 88));
            if (add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "maxbuf", v62, 0))
            {
              (*(*(v30 + 24) + 264))(*(*(v30 + 24) + 8), 0, "internal error: add_to_challenge maxbuf failed");
              v31 = 0;
              goto LABEL_48;
            }
          }

          v43 = *(a1 + 8) ? "uri" : "digest-uri";
          if (!add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, v43, *(v12 + 1), 1) && (!*(a1 + 8) || !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "algorithm", *(a1 + 344), 0) && ((v44 = *(a1 + 352)) == 0 || !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "opaque", v44, 1))) && !add_to_challenge(*(v30 + 24), (a1 + 160), (a1 + 168), &v61, "response", v29, 0))
          {
            if (strlen(*(a1 + 160)) > 0x800)
            {
              v31 = 0xFFFFFFFFLL;
LABEL_89:
              v30 = v55;
              goto LABEL_48;
            }

            v45 = *(a1 + 336);
            *(a3 + 32) = v45;
            v46 = *(a3 + 36);
            if (v46 <= 1)
            {
              if (v46 != 1)
              {
LABEL_80:
                *(a1 + 88) = 0;
                v48 = *(v55 + 24);
                *(a1 + 152) = v48;
                if (v52)
                {
                  v52(a1);
                  v48 = *(a1 + 152);
                }

                if (*(v55 + 88))
                {
                  v49 = *(v55 + 88);
                }

                else
                {
                  v49 = 0xFFFF;
                }

                _plug_decode_init(a1 + 224, v48, v49);
                if (*(a3 + 36))
                {
                  *&v77 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *&v74[0] = 0xAAAAAAAAAAAAAAAALL;
                  *(&v74[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
                  create_layer_keys(a1, *(v55 + 24), a1 + 130, v51, &v77, v74);
                  v50 = *(a1 + 280);
                  if (v50)
                  {
                    v50(a1, &v77, v74);
                  }
                }

                v31 = 0;
                goto LABEL_89;
              }

              v47 = -16;
            }

            else
            {
              v47 = -25;
            }

            *(a3 + 32) = v47 + v45;
            goto LABEL_80;
          }
        }
      }
    }
  }

  v31 = 0xFFFFFFFFLL;
LABEL_48:
  if (v54)
  {
    (*(*(v30 + 24) + 64))();
  }

  if (v29)
  {
    (*(*(v30 + 24) + 64))(v29);
  }

LABEL_52:
  v39 = *MEMORY[0x277D85DE8];
  return v31;
}

const char *skip_r_lws(const char *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result)
    {
      result += v1;
      v2 = result - 1;
      if ((result - 1) > v1)
      {
        result = (v1 + 1);
        while (1)
        {
          v3 = *v2;
          v4 = v3 > 0x20;
          v5 = (1 << v3) & 0x100002600;
          if (v4 || v5 == 0)
          {
            break;
          }

          if (--v2 <= v1)
          {
            goto LABEL_13;
          }
        }

        result = v2 + 1;
      }

      if (v2 == v1)
      {
LABEL_13:
        v7 = *v1;
        v4 = v7 > 0x20;
        v8 = (1 << v7) & 0x100002600;
        if (!v4 && v8 != 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _sasl_load_plugins(const char **a1, void *a2, void *a3)
{
  result = 4294967289;
  if (a1 && a2 && *a2 == 3 && a3 && a2[1] && *a3 == 4 && a3[1])
  {
    v5 = *a1;
    if (!*a1)
    {
      return 0;
    }

    do
    {
      if (!strcmp(v5, "sasl_server_plug_init"))
      {
        v6 = sasl_server_add_plugin;
        v7 = 1;
      }

      else if (!strcmp(v5, "sasl_client_plug_init"))
      {
        v6 = sasl_client_add_plugin;
        v7 = 2;
      }

      else if (!strcmp(v5, "sasl_auxprop_plug_init"))
      {
        v6 = sasl_auxprop_add_plugin;
        v7 = 3;
      }

      else
      {
        if (strcmp(v5, "sasl_canonuser_init"))
        {
          return 0xFFFFFFFFLL;
        }

        v6 = sasl_canonuser_add_plugin;
        v7 = 4;
      }

      v8 = _sasl_static_plugins;
      if (_sasl_static_plugins)
      {
        v9 = &dword_280B0E538;
        do
        {
          if (v7 == v8)
          {
            (v6)(*(v9 - 2), *(v9 - 1));
          }

          v10 = *v9;
          v9 += 6;
          v8 = v10;
        }

        while (v10);
      }

      result = 0;
      v11 = a1[2];
      a1 += 2;
      v5 = v11;
    }

    while (v11);
  }

  return result;
}

uint64_t external_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  result = 4294967289;
  if (a1 && a3 && a4 && a5)
  {
    if (a2 == 4)
    {
      result = 0;
      *a3 = 4;
      *a4 = &external_client_plugins;
      *a5 = 1;
    }

    else
    {
      (*(a1 + 264))(*(a1 + 8), 0, "EXTERNAL version mismatch");
      return 4294967273;
    }
  }

  return result;
}

uint64_t external_client_mech_new(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 4294967289;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a3)
  {
    v6 = *(v3 + 8);
    if (v6)
    {
      if (*(v6 + 2344))
      {
        v7 = _sasl_allocation_utils(16);
        if (v7)
        {
          v8 = v7;
          result = 0;
          *v8 = 0;
          v8[1] = 0;
          *a3 = v8;
        }

        else
        {
          return 4294967294;
        }
      }

      else
      {
        return 4294967292;
      }
    }
  }

  return result;
}

uint64_t external_client_mech_step(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5, void *a6, _DWORD *a7, uint64_t a8)
{
  __s = 0;
  if (!a2)
  {
    return 4294967289;
  }

  v9 = *(a2 + 24);
  if (!v9)
  {
    return 4294967289;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    return 4294967289;
  }

  simple = 4294967289;
  if (a8)
  {
    if (a7)
    {
      if (a6)
      {
        if (*(v9 + 248))
        {
          simple = 4294967291;
          if (!a4)
          {
            if (*(v10 + 2344))
            {
              *a6 = 0;
              *a7 = 0;
              simple = _plug_get_simple(*(a2 + 24), 16385, 0, &__s, a5);
              if ((simple & 0xFFFFFFFD) == 0)
              {
                if (a5 && *a5)
                {
                  (*(*(a2 + 24) + 64))();
                  *a5 = 0;
                }

                if (simple == 2)
                {
                  prompts = _plug_make_prompts(*(a2 + 24), a5, "Please enter your authorization name", "", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                  if (prompts)
                  {
                    return prompts;
                  }

                  else
                  {
                    return 2;
                  }
                }

                v19 = __s;
                if (__s)
                {
                  v19 = strlen(__s);
                }

                *a7 = v19;
                v20 = _buf_alloc(a1, (a1 + 8), (v19 + 1));
                if (v20)
                {
                  return v20;
                }

                if (__s && *__s)
                {
                  v20 = (*(a2 + 152))(*(*(a2 + 24) + 8));
                  if (v20)
                  {
                    return v20;
                  }

                  v20 = (*(a2 + 152))(*(*(a2 + 24) + 8), *(*(*(a2 + 24) + 8) + 2344), 0, 1, a8);
                  if (v20)
                  {
                    return v20;
                  }

                  memcpy(*a1, __s, *a7);
                }

                else
                {
                  v20 = (*(a2 + 152))(*(*(a2 + 24) + 8), *(*(*(a2 + 24) + 8) + 2344), 0, 3, a8);
                  if (v20)
                  {
                    return v20;
                  }
                }

                simple = 0;
                *(*a1 + *a7) = 0;
                *a6 = *a1;
                *a8 = 1;
                *(a8 + 136) = 0;
                *(a8 + 32) = 0u;
                *(a8 + 48) = 0u;
                *(a8 + 64) = 0;
              }
            }
          }
        }
      }
    }
  }

  return simple;
}

void *external_client_mech_dispose(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      off_280B0E738(v2);
    }

    v3 = off_280B0E738;

    return v3(v1);
  }

  return result;
}

uint64_t gssapiv2_server_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 < 4)
  {
    return 4294967273;
  }

  *a3 = 4;
  *a4 = &gssapi_server_plugins;
  *a5 = 1;
  if (gss_mutex)
  {
    return 0;
  }

  gss_mutex = (*(a1 + 72))();
  if (gss_mutex)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t gssapiv2_client_plug_init(uint64_t a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (a2 > 3)
  {
    *a3 = 4;
    *a4 = &gssapi_client_plugins;
    *a5 = 1;
    if (gss_mutex)
    {
      return 0;
    }

    gss_mutex = (*(a1 + 72))();
    if (gss_mutex)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    (*(a1 + 264))(*(a1 + 8), 0, "Version mismatch in GSSAPI");
    return 4294967273;
  }
}

uint64_t gssapi_server_mech_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *(a2 + 80);
  v9 = (*(v8 + 40))(216);
  if (v9)
  {
    v10 = v9;
    *(v9 + 208) = 0;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
    *(v9 + 80) = v8;
    v11 = (*(v8 + 72))();
    *(v10 + 208) = v11;
    if (v11)
    {
      result = 0;
      *(v10 + 56) = 0;
      *(v10 + 40) = 0u;
      *(v10 + 24) = 0u;
      *v10 = 1;
      *(v10 + 16) = *(a2 + 220) & 0x10;
      *(v10 + 8) = a1;
      *a5 = v10;
      return result;
    }

    (*(v8 + 64))(v10);
  }

  (*(*(a2 + 80) + 264))(*(*(a2 + 80) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/gssapi.c near line %d", 806);
  return 4294967294;
}

uint64_t gssapi_server_mech_step(int *a1, const char **a2, void *a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  if (!a5)
  {
    (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "Parameter Error in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/gssapi.c near line %d", 1443);
    return 4294967289;
  }

  *a5 = 0;
  *a6 = 0;
  if (!a1)
  {
    return 4294967291;
  }

  (*(a2[10] + 32))(*(a2[10] + 1), 5, "GSSAPI server step %d\n", *a1);
  v14 = *a1;
  if (*a1 != 3)
  {
    if (v14 == 2)
    {
      input_token.length = 0xAAAAAAAAAAAAAAAALL;
      input_token.value = 0xAAAAAAAAAAAAAAAALL;
      LODWORD(v82.length) = 0;
      output_token.length = 0;
      output_token.value = 0;
      if (a4)
      {
        (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI server is not expecting data at this stage");
        sasl_gss_free_context_contents(a1);
        return 4294967283;
      }

LABEL_91:
      v43 = *(a2 + 25);
      v44 = *(a2 + 32);
      if (v43 >= v44)
      {
        v45 = v43 - v44;
      }

      else
      {
        v45 = 0;
      }

      a1[16] = v45;
      v46 = *(a2 + 24);
      v47 = *(a2 + 26);
      v48 = HIBYTE(v47);
      v49 = HIWORD(v47);
      if (v47 >= 0xFFFFFF)
      {
        v50 = -1;
      }

      else
      {
        v50 = *(a2 + 26);
      }

      v51 = v48 == 0;
      if (v48)
      {
        v52 = -1;
      }

      else
      {
        v52 = BYTE1(*(a2 + 26));
      }

      if (!v51)
      {
        LOBYTE(v49) = -1;
      }

      BYTE3(input_name_buffer.length) = v50;
      BYTE2(input_name_buffer.length) = v52;
      BYTE1(input_name_buffer.length) = v49;
      LOBYTE(input_name_buffer.length) = 0;
      v53 = v46 >= v44;
      v54 = v46 - v44;
      if (v53)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

      a1[17] = v55;
      if (v54 != 0 && v53)
      {
        if (!v47)
        {
          (*(a2[10] + 33))(*(a2[10] + 1), 0, "GSSAPI needs a security layer but one is forbidden");
          return 4294967281;
        }

        v56 = 0;
        v57 = *(a1 + 72);
        if (v55 != 1 || (a1[18] & 2) == 0)
        {
LABEL_117:
          if (v55 > 0x38 || (v57 & 4) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_119;
        }
      }

      else
      {
        v56 = 1;
        LOBYTE(input_name_buffer.length) = 1;
        v57 = *(a1 + 72);
        if ((v57 & 2) == 0)
        {
          if ((a1[18] & 4) == 0)
          {
LABEL_123:
            BYTE3(input_name_buffer.length) = 0;
            *(&input_name_buffer.length + 1) = 0;
LABEL_124:
            *(a1 + 72) = v56;
            input_token.length = 4;
            input_token.value = &input_name_buffer;
            if ((*(a2[10] + 10))(*(a1 + 26)))
            {
              goto LABEL_138;
            }

            v58 = gss_wrap(&v82, *(a1 + 3), 0, 0, &input_token, 0, &output_token);
            if ((*(a2[10] + 11))(*(a1 + 26)))
            {
              goto LABEL_138;
            }

            if (v58 < 0x10000)
            {
              length = output_token.length;
              *a6 = output_token.length;
              if (!output_token.value)
              {
                goto LABEL_152;
              }

              v60 = _plug_buf_alloc(*(a1 + 10), a1 + 22, a1 + 46, length);
              if (v60)
              {
                LODWORD(v20) = v60;
                if (!(*(a2[10] + 10))(*(a1 + 26)))
                {
                  gss_release_buffer(&v82, &output_token);
                  if ((*(a2[10] + 11))(*(a1 + 26)))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  else
                  {
                    return v20;
                  }
                }

                goto LABEL_138;
              }

              memcpy(*(a1 + 22), output_token.value, *a6);
              *a5 = *(a1 + 22);
              if (!(*(a2[10] + 10))(*(a1 + 26)))
              {
                gss_release_buffer(&v82, &output_token);
                if (!(*(a2[10] + 11))(*(a1 + 26)))
                {
LABEL_152:
                  *a1 = 3;
                  return 1;
                }
              }

LABEL_138:
              v20 = 0xFFFFFFFFLL;
              goto LABEL_139;
            }

            sasl_gss_seterror_(*(a1 + 10), v58, v82.length, 0);
LABEL_135:
            if (output_token.value)
            {
              goto LABEL_136;
            }

LABEL_48:
            sasl_gss_free_context_contents(a1);
            goto LABEL_138;
          }

LABEL_119:
          if (v45 >= 0x38 && v47)
          {
            LOBYTE(v56) = v56 | 4;
            LOBYTE(input_name_buffer.length) = v56;
            goto LABEL_124;
          }

LABEL_122:
          if (v56 > 1)
          {
            goto LABEL_124;
          }

          goto LABEL_123;
        }
      }

      if (v43 > v44 && v47)
      {
        v56 |= 2u;
        LOBYTE(input_name_buffer.length) = v56;
      }

      goto LABEL_117;
    }

    if (v14 != 1)
    {
      (*(a2[10] + 32))(*(a2[10] + 1), 1, "Invalid GSSAPI server step %d\n", *a1);
      return 0xFFFFFFFFLL;
    }

    minor_status = 0;
    v82.length = 0xAAAAAAAAAAAAAAAALL;
    v82.value = 0xAAAAAAAAAAAAAAAALL;
    input_name_buffer.value = 0xAAAAAAAAAAAAAAAALL;
    *ret_flags = 0;
    v15 = a2[20];
    output_name = 0;
    input_name_buffer.length = 0xAAAAAAAAAAAAAAAALL;
    mech_type = 0xAAAAAAAAAAAAAAAALL;
    input_name = 0;
    output_token.length = 0;
    output_token.value = 0;
    v16 = *(a1 + 5);
    input_token.length = 0;
    input_token.value = 0;
    if (v16)
    {
LABEL_7:
      if (a4)
      {
        input_token.length = a4;
        input_token.value = a3;
      }

      if ((*(a2[10] + 10))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      v17 = gss_accept_sec_context(&minor_status, a1 + 3, v15, &input_token, 0, a1 + 4, &mech_type, &output_token, ret_flags, 0, a1 + 7);
      if ((*(a2[10] + 11))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      if (v17 >= 0x10000)
      {
        sasl_gss_seterror_(*(a1 + 10), v17, minor_status, 1);
        (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 1, "GSSAPI Failure: gss_accept_sec_context");
        if (output_token.value)
        {
          if ((*(a2[10] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          gss_release_buffer(&minor_status, &output_token);
          if ((*(a2[10] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      else
      {
        v18 = output_token.length;
        *a6 = output_token.length;
        if (output_token.value)
        {
          v19 = _plug_buf_alloc(*(a1 + 10), a1 + 22, a1 + 46, v18);
          if (v19)
          {
            v20 = v19;
            if ((*(a2[10] + 10))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }

            gss_release_buffer(&minor_status, &output_token);
            v21 = (*(a2[10] + 11))(*(a1 + 26));
            goto LABEL_16;
          }

          memcpy(*(a1 + 22), output_token.value, *a6);
          *a5 = *(a1 + 22);
          if ((*(a2[10] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          gss_release_buffer(&minor_status, &output_token);
          if ((*(a2[10] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          *a5 = "";
          *a6 = 0;
        }

        if (v17 == 1)
        {
LABEL_63:
          if (*a6)
          {
            return 1;
          }

          input_token.length = 0xAAAAAAAAAAAAAAAALL;
          input_token.value = 0xAAAAAAAAAAAAAAAALL;
          LODWORD(v82.length) = 0;
          output_token.length = 0;
          output_token.value = 0;
          goto LABEL_91;
        }

        if (v17)
        {
          gssapi_server_mech_step_cold_1();
        }

        v38 = ret_flags[0];
        if ((ret_flags[0] & 0x20) != 0)
        {
          if ((ret_flags[0] & 0x10) != 0)
          {
            v39 = 7;
          }

          else
          {
            v39 = 3;
          }
        }

        else
        {
          v39 = 1;
        }

        *(a1 + 72) = v39;
        if ((*(a2 + 108) & 0x20) != 0 && ((v38 & 1) == 0 || !*(a1 + 7)))
        {
          (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 3, "GSSAPI warning: no credentials were passed");
        }

        if ((*(a2[10] + 10))(*(a1 + 26)))
        {
          return 0xFFFFFFFFLL;
        }

        v66 = gss_canonicalize_name(&minor_status, *(a1 + 4), mech_type, &output_name);
        if ((*(a2[10] + 11))(*(a1 + 26)))
        {
          return 0xFFFFFFFFLL;
        }

        if (v66 < 0x10000)
        {
          v82.value = 0;
          input_name_buffer.value = 0;
          if ((*(a2[10] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          v67 = gss_display_name(&minor_status, output_name, &v82, 0);
          if ((*(a2[10] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          if (v67 >= 0x10000)
          {
            (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure: gss_display_name");
          }

          else
          {
            value = v82.value;
            if (!strchr(v82.value, 64))
            {
              ret_flags[1] = 0;
LABEL_179:
              v75 = strdup(value);
              *(a1 + 24) = v75;
              if (v75)
              {
                v20 = a1[4] == 0;
                if (a1[4])
                {
                  v76 = 4;
                }

                else
                {
                  v76 = 2;
                }

                *a1 = v76;
                if (*(a1 + 6))
                {
                  gss_release_cred(&minor_status, a1 + 6);
                  *(a1 + 6) = 0;
                }

                goto LABEL_188;
              }

              (*(a2[10] + 33))(*(a2[10] + 1), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/gssapi.c near line %d", 1102);
              goto LABEL_187;
            }

            v69 = strlen(value);
            v70 = (*(a2[10] + 5))(v69 + 1);
            input_name_buffer.value = v70;
            if (!v70)
            {
              (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/gssapi.c near line %d", 1045);
LABEL_187:
              v20 = 4294967294;
              goto LABEL_188;
            }

            v71 = v70;
            v72 = strcpy(v70, v82.value);
            *strchr(v72, 64) = 0;
            input_name_buffer.length = strlen(v71);
            if ((*(a2[10] + 10))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }

            v73 = gss_import_name(&minor_status, &input_name_buffer, MEMORY[0x277CCAF00], &input_name);
            if ((*(a2[10] + 11))(*(a1 + 26)))
            {
              return 0xFFFFFFFFLL;
            }

            if (v73 >= 0x10000)
            {
              (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure: gss_import_name");
            }

            else
            {
              if ((*(a2[10] + 10))(*(a1 + 26)))
              {
                return 0xFFFFFFFFLL;
              }

              v74 = gss_compare_name(&minor_status, output_name, input_name, &ret_flags[1]);
              if ((*(a2[10] + 11))(*(a1 + 26)))
              {
                return 0xFFFFFFFFLL;
              }

              if (v74 < 0x10000)
              {
                if (ret_flags[1])
                {
                  value = input_name_buffer.value;
                }

                else
                {
                  value = v82.value;
                }

                goto LABEL_179;
              }

              (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure: gss_compare_name");
            }
          }

          sasl_gss_free_context_contents(a1);
          v20 = 4294967283;
LABEL_188:
          if (*(a1 + 6))
          {
            if ((*(a2[10] + 10))(gss_mutex))
            {
              return 0xFFFFFFFFLL;
            }

            gss_release_cred(&minor_status, a1 + 6);
            if ((*(a2[10] + 11))(gss_mutex))
            {
              return 0xFFFFFFFFLL;
            }

            *(a1 + 6) = 0;
          }

          if (output_name)
          {
            if ((*(a2[10] + 10))(gss_mutex))
            {
              return 0xFFFFFFFFLL;
            }

            gss_release_name(&minor_status, &output_name);
            if ((*(a2[10] + 11))(gss_mutex))
            {
              return 0xFFFFFFFFLL;
            }
          }

          if (v82.value)
          {
            if ((*(a2[10] + 10))(gss_mutex))
            {
              return 0xFFFFFFFFLL;
            }

            gss_release_buffer(&minor_status, &v82);
            if ((*(a2[10] + 11))(gss_mutex))
            {
              return 0xFFFFFFFFLL;
            }
          }

          if (input_name_buffer.value)
          {
            (*(a2[10] + 8))();
          }

          if (!input_name)
          {
LABEL_17:
            if (v20 != 1)
            {
LABEL_139:
              if (v20)
              {
                return v20;
              }

              goto LABEL_140;
            }

            goto LABEL_63;
          }

          if ((*(a2[10] + 10))(gss_mutex))
          {
            return 0xFFFFFFFFLL;
          }

          gss_release_name(&minor_status, &input_name);
          v21 = (*(a2[10] + 11))(gss_mutex);
LABEL_16:
          if (!v21)
          {
            goto LABEL_17;
          }

          return 0xFFFFFFFFLL;
        }

        (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure: gss_canonicalize_name");
      }

      sasl_gss_free_context_contents(a1);
      return 4294967283;
    }

    v24 = a2[2];
    if (v24 && (v25 = strlen(v24)) != 0)
    {
      v26 = v25;
      v27 = strlen(*a2);
      v82.length = v26 + v27 + 1;
      v28 = (*(a2[10] + 5))(v26 + v27 + 2);
      v82.value = v28;
      if (!v28)
      {
        (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "Out of Memory in /Library/Caches/com.apple.xbs/Sources/Mail_Email/Email/SASL/cyrus_sasl/plugins/gssapi.c near line %d", 860);
        sasl_gss_free_context_contents(a1);
        return 4294967294;
      }

      v29 = *a2;
      sprintf(v28, "%s@%s", *a2, a2[2]);
      if ((*(a2[10] + 10))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      v30 = gss_import_name(&minor_status, &v82, MEMORY[0x277CCAEF8], a1 + 5);
      if ((*(a2[10] + 11))(*(a1 + 26)))
      {
        return 0xFFFFFFFFLL;
      }

      (*(a2[10] + 8))(v82.value);
      v82.value = 0;
      if (v30 < 0x10000)
      {
        v31 = (a1 + 12);
        if (*(a1 + 6))
        {
          if ((*(a2[10] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          gss_release_cred(&minor_status, a1 + 6);
          if ((*(a2[10] + 11))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          *v31 = 0;
        }

        if (!v15)
        {
          v32 = a3;
          v33 = a4;
          if ((*(a2[10] + 10))(*(a1 + 26)))
          {
            return 0xFFFFFFFFLL;
          }

          v20 = 0xFFFFFFFFLL;
          v34 = gss_acquire_cred(&minor_status, *(a1 + 5), 0xFFFFFFFF, 0, 2, a1 + 6, 0, 0);
          if ((*(a2[10] + 11))(*(a1 + 26)))
          {
            return v20;
          }

          if (v34 >= 0x10000)
          {
            sasl_gss_seterror_(*(a1 + 10), v34, minor_status, 0);
LABEL_144:
            sasl_gss_free_context_contents(a1);
            return v20;
          }

          v15 = *v31;
          a4 = v33;
          a3 = v32;
        }

        goto LABEL_7;
      }

      sasl_gss_seterror_(*(a1 + 10), v30, minor_status, 0);
    }

    else
    {
      (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "GSSAPI Failure: no serverFQDN");
    }

    sasl_gss_free_context_contents(a1);
    return 0xFFFFFFFFLL;
  }

  LODWORD(v82.length) = 0;
  output_token.length = 0;
  output_token.value = 0;
  input_token.length = a4;
  input_token.value = a3;
  if ((*(a2[10] + 10))(*(a1 + 26)))
  {
    goto LABEL_138;
  }

  v22 = gss_unwrap(&v82, *(a1 + 3), &input_token, &output_token, 0, 0);
  if ((*(a2[10] + 11))(*(a1 + 26)))
  {
    goto LABEL_138;
  }

  if (v22 >= 0x10000)
  {
    sasl_gss_seterror_(*(a1 + 10), v22, v82.length, 0);
    goto LABEL_48;
  }

  v23 = output_token.length;
  if (output_token.length <= 3)
  {
    (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "token too short");
LABEL_136:
    if ((*(a2[10] + 10))(*(a1 + 26)))
    {
      goto LABEL_138;
    }

    gss_release_buffer(&v82, &output_token);
    if ((*(a2[10] + 11))(*(a1 + 26)))
    {
      goto LABEL_138;
    }

    goto LABEL_48;
  }

  v35 = output_token.value;
  if (*output_token.value & 6) == 0 && (a1[18])
  {
    v37 = 0;
    v36 = 0;
    v40 = 0;
  }

  else if ((*output_token.value & 2) != 0 && (v36 = gssapi_decode, v37 = gssapi_integrity_encode, (a1[18] & 2) != 0))
  {
    v40 = 1;
  }

  else
  {
    if ((*output_token.value & 6) == 0 || (v36 = gssapi_decode, v37 = gssapi_privacy_encode, (a1[18] & 4) == 0))
    {
      (*(*(a1 + 10) + 264))(*(*(a1 + 10) + 8), 0, "protocol violation: client requested invalid layer");
      *(a7 + 36) = 2;
      goto LABEL_135;
    }

    v40 = 56;
  }

  *(a7 + 48) = v37;
  *(a7 + 64) = v36;
  *(a7 + 36) = v40;
  if (v23 != 4)
  {
    v41 = (a2[18])(*(a2[10] + 1), v35 + 4, (v23 - 4), 6, a7);
    if (v41)
    {
      v20 = v41;
      sasl_gss_free_context_contents(a1);
      if (v20)
      {
        return v20;
      }

      goto LABEL_140;
    }

    v35 = output_token.value;
  }

  *(a7 + 32) = (v35[1] << 16) | (v35[2] << 8) | v35[3];
  if ((*(a2[10] + 10))(*(a1 + 26)))
  {
    goto LABEL_138;
  }

  gss_release_buffer(&v82, &output_token);
  if ((*(a2[10] + 11))(*(a1 + 26)))
  {
    goto LABEL_138;
  }

  if (*(a7 + 36) && gssapi_wrap_sizes(a1, a7))
  {
    goto LABEL_48;
  }

  *a1 = 4;
  if (*(a2 + 26) >= 0xFFFFFFu)
  {
    v42 = 0xFFFFFF;
  }

  else
  {
    v42 = *(a2 + 26);
  }

  _plug_decode_init((a1 + 22), *(a1 + 10), v42);
LABEL_140:
  if (*(a7 + 8))
  {
    v61 = 5;
  }

  else
  {
    v61 = 7;
  }

  v20 = (a2[18])(*(a2[10] + 1), *(a1 + 24), 0, v61, a7);
  if (v20)
  {
    goto LABEL_144;
  }

  v63 = *(a1 + 7);
  v62 = a1 + 14;
  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0;
  }

  *(a7 + 72) = v64;
  *a7 = 1;
  return v20;
}