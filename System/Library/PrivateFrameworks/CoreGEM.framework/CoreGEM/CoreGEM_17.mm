void sub_2454521D4(uint64_t a1, int a2, unsigned int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    sub_245451C10(v21, a2);
    if (v22 >= 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = v21[0];
    }

    sub_245451CE0(v19, *(a1 + 16));
    v9 = v20;
    v10 = v19[0];
    v11 = *(a1 + 20);
    v12 = *(a1 + 24);
    if (a3 > 3)
    {
      std::to_string(&v23, a3);
      v13 = std::string::insert(&v23, 0, "unknown ");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v18 = v13->__r_.__value_.__r.__words[2];
      *__p = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_2453B414C(__p, off_278E36ED0[a3]);
    }

    v15 = v19;
    if (v9 < 0)
    {
      v15 = v10;
    }

    v16 = __p;
    if (v18 < 0)
    {
      v16 = __p[0];
    }

    *buf = 136316162;
    v25 = v8;
    v26 = 2080;
    v27 = v15;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = v12;
    v32 = 2080;
    v33 = v16;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, " #posp,#lpp,#lpp_session,initiator,%s,session_type,%s,session_id,%d,ue_initiated_transaction_number,%d,session_action,%s", buf, 0x2Cu);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2454523B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_245452408(int a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109376;
    v6[1] = a1;
    v7 = 1024;
    v8 = a2;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#posp,#lpp,#lpp_cp_ul_data_clear,index,%d,session_number,%d", v6, 0xEu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2454524C4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 14);
    v6 = *(a1 + 16);
    v7 = *(a1 + 17);
    v8 = *(a1 + 18);
    v9[0] = 67110144;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "#posp,#lpp,#gps_aid_request,aidMask,%d,gpsWeek,%d,gpsTow,%d,numOfSats,%d,toeLimit,%d", v9, 0x20u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

char *sub_2454525A0(uint64_t a1, _DWORD *a2, char a3, int a4, uint64_t a5)
{
  v5 = **(a1 + 72);
  if (!v5)
  {
    return sub_2454525E0(a1, a2, a3, a4, a5);
  }

  while (*(v5 + 4) != *a2 || *(v5 + 5) != a2[1])
  {
    v5 = *v5;
    if (!v5)
    {
      return sub_2454525E0(a1, a2, a3, a4, a5);
    }
  }

  return v5;
}

char *sub_2454525E0(uint64_t a1, _DWORD *a2, char a3, int a4, uint64_t a5)
{
  if (!*a2)
  {
    v13 = *(a1 + 72);
    if (*v13)
    {
      if (!a4 && a5 && *(a5 + 2592) == 1 && !*(a5 + 16) && *(a5 + 24) == 6)
      {
        return 0;
      }

      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (!*(v13 + 16))
        {
          sub_2454527F0(a1, v13);
          break;
        }
      }
    }
  }

  v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x57089378uLL);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  *(v8 + 2) = *a2;
  v8[24] = 0;
  *(v8 + 111) = 0;
  *(v8 + 13) = 0;
  v8[115] = 1;
  v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
  *v9 = 0;
  v9[1] = 0;
  *(v8 + 5) = v9;
  v10 = *(v8 + 4);
  if (v10 == 1)
  {
    v8[64] = a3;
    *(v8 + 6) = sub_245452F54;
    *(v8 + 7) = sub_2454530B8;
  }

  else
  {
    if (v10)
    {
      sub_245479990(287, "lpp_session.c");
      return v8;
    }

    *(v8 + 16) = 0x1000000;
    v8[80] = 0;
    *(v8 + 9) = 0;
    *(v8 + 48) = 256;
    v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x57089378uLL);
    *v11 = 0;
    v11[1] = 0;
    *(v8 + 11) = v11;
    *(v8 + 6) = sub_2454528DC;
    *(v8 + 7) = sub_245452C54;
    v12 = *(a1 + 48);
    v8[115] = v12;
    if (!v12 && !*(a1 + 105))
    {
      v8[114] = 1;
      sub_24547A7C8();
    }
  }

  sub_245453E48(*(a1 + 72), v8);
  *(v8 + 4) = 1000000 * sub_24539D8D0();
  sub_245449BCC(a1, 0);
  sub_2454521D4(v8, 0, 0);
  return v8;
}

void sub_2454527F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2454521D4(a2, 0, 2u);
    if (!*(a2 + 16))
    {
      v5 = sub_2454616D4();
      sub_2454619A8(v5);
      *(a2 + 96) = 1;
      sub_245449D00(a1, (a2 + 16));
    }

    v6 = **(a2 + 40);
    if (v6)
    {
      do
      {
        v7 = *v6;
        sub_24544A530(a1);
        v6 = v7;
      }

      while (v7);
    }

    v8 = sub_2454616D4();
    sub_245461FD0(v8);
    sub_245453284(a1, a2);

    sub_245449BCC(a1, 1);
  }

  else
  {

    sub_245479990(378, "lpp_session.c");
  }
}

void sub_2454528DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  if (!a5)
  {
    return;
  }

  v8 = *a4;
  if (*a4 >= 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 5;
  }

  v10 = *(a5 + 16);
  v11 = *v10;
  v12 = v11 > 1;
  if (*(a2 + 97) == 1)
  {
    v13 = v10[2];
    if (v8 > 0 || v11 > 1 || v13 == 0)
    {
      v16 = 1;
    }

    else
    {
      v12 = v11 == 1;
      v16 = v11 != 1;
    }
  }

  else
  {
    v16 = 1;
  }

  *(a2 + 97) = 0;
  if (v8 > 0 || v12)
  {
    goto LABEL_21;
  }

  v18 = *(a5 + 16);
  if (!*(v18 + 2592))
  {
    v20 = (a2 + 114);
    v19 = *(a2 + 114);
    if (v19 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (*(v18 + 2592) != 1 || *(v18 + 4))
  {
    goto LABEL_55;
  }

  bzero(v30, 0x368uLL);
  v20 = (a2 + 114);
  v19 = *(a2 + 114);
  if (v19 == 1)
  {
    v33 = 6;
    v21 = *(v18 + 6);
    if (v21 <= 3)
    {
      if (!v21)
      {
        v22 = 0;
        v33 = 0;
        goto LABEL_68;
      }

      if (v21 == 3)
      {
        v33 = 3;
        v22 = 1;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v21)
      {
        case 4:
          v33 = 4;
          v22 = 2;
          goto LABEL_68;
        case 6:
          v22 = 4;
          goto LABEL_68;
        case 7:
          v22 = 3;
LABEL_68:
          if (*(a1 + 108) == 4)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          v28 = *(a2 + 20);
          if (*(v18 + 2) == 1)
          {
            v31 = *v18;
            v32 = 1;
            sub_245453D9C(a1, v27, v28, v22, v30);
          }

          else
          {
            v37 = v27;
            v38 = v28;
            v36 = 0;
            v35 = 0;
            v34 = 1;
            v29 = sub_2453B4548();
            sub_2453B523C(v29 + 200, &v37, v22);
          }

          break;
      }
    }

LABEL_34:
    v19 = *v20;
    v18 = *(a5 + 16);
  }

LABEL_35:
  if (v19)
  {
    if (*(v18 + 9) && *(v18 + 8) || *(v18 + 2592) && !*(v18 + 4) && (v23 = *(v18 + 6), v23 <= 4) && ((1 << v23) & 0x19) != 0)
    {
      if (!sub_2454533CC(a1, a2, v18))
      {
        v24 = *(a5 + 16);
        if (*(v24 + 2592))
        {
          v25 = *(v24 + 24);
          if (v25 <= 4 && ((1 << v25) & 0x19) != 0)
          {
            sub_24545367C(a1, a2, v24);
          }
        }
      }
    }

    goto LABEL_55;
  }

  if (!*(v18 + 2592))
  {
    *(v18 + 2) = 0;
    *(v18 + 5) = 0;
LABEL_51:
    *(v18 + 6) = 0;
    goto LABEL_52;
  }

  if (!*(v18 + 5))
  {
    goto LABEL_51;
  }

LABEL_52:
  if (!sub_2454533CC(a1, a2, v18) && *(*(a5 + 16) + 2) == 1)
  {
    v9 = sub_24544A660(a1, a2, a5);
    LOBYTE(v12) = 0;
LABEL_21:
    if (v9 != 5 && !v12)
    {
      sub_24545378C(a1, a2, *(a5 + 16), v9);
    }
  }

LABEL_55:
  if (v16)
  {
    v26 = sub_2454616D4();

    sub_245461E1C(v26, a1, 0x1FBD0u);
  }

  else
  {

    sub_2454527F0(a1, a2);
  }
}

void sub_245452C54(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 72) && ((v6 = qword_2813CF018, !os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG)) || (*v23 = 0, _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#lpp, Packet to be acked. LPP message not sent", v23, 2u), *(a2 + 72))) || *(a2 + 96))
      {
        v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x57089378uLL);
        v7[1] = 0u;
        v7[2] = 0u;
        *v7 = 0u;
        v8 = *a3;
        v9 = a3[2];
        v7[1] = a3[1];
        v7[2] = v9;
        *v7 = v8;
        sub_245453E88(*(a2 + 88), v7);
        return;
      }

      v11 = malloc_type_calloc(1uLL, 0x30uLL, 0x57089378uLL);
      *(v11 + 2) = 0u;
      *v11 = 0u;
      *(v11 + 1) = 0u;
      v12 = *(a3 + 2);
      *(v11 + 2) = v12;
      *(v12 + 5) = 1;
      *(v12 + 4) = *(a2 + 64);
      if (sub_24547903C(4, 7u, v11 + 4, 0, v11 + 6, v12, 0, 0))
      {
        sub_245479990(891, "lpp_session.c");
      }

      else
      {
        sub_2454491C4(*(v11 + 4), v11[6], 0);
        sub_2454498C8(a1, a2 + 16, (v11 + 6));
        v15 = sub_2454616D4();
        sub_245461E1C(v15, a1, 0x1FBD0u);
        *(a2 + 32) = 1000000 * sub_24539D8D0();
        v16 = *(v11 + 2);
        if (*(v16 + 9) == 1 && *(v16 + 6) == 1)
        {
          v17 = v11[6];
          v18 = malloc_type_calloc(1uLL, v17, 0x57089378uLL);
          bzero(v18, v17);
          memcpy(v18, *(v11 + 4), v11[6]);
          *(a2 + 72) = v11;
          *(v11 + 4) = v18;
          *(a2 + 80) = 0;
          v19 = sub_2454616D4();
          sub_2454617F0(v19, a1, 0x5DCu);
          return;
        }

        v20 = *(a2 + 64);
        if (v20 == 255)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20 + 1;
        }

        *(a2 + 64) = v21;
        v13 = *(v11 + 2);
        if (v13[3] != 1)
        {
          goto LABEL_16;
        }

        v22 = **(a2 + 40);
        if (!v22)
        {
          goto LABEL_16;
        }

        while (*(v22 + 16) != *v13 || *(v22 + 17) != v13[1])
        {
          v22 = *v22;
          if (!v22)
          {
            goto LABEL_16;
          }
        }

        if (*(v22 + 24) != 2)
        {
          goto LABEL_16;
        }

        sub_24544AA28(a1, v22);
      }

      v13 = *(v11 + 2);
LABEL_16:
      sub_2454554AC(v13, &unk_278E53388);
      v14 = *(v11 + 2);
      if (v14)
      {
        free(v14);
      }

      free(v11);
      return;
    }

    v10 = 849;
  }

  else
  {
    v10 = 844;
  }

  sub_245479990(v10, "lpp_session.c");
}

void sub_245452F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) == 1)
  {
    v18 = v3;
    v19 = v4;
    v5 = *(a3 + 8);
    if (v5)
    {
      v6 = *a3;
      if (*a3)
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        *&v17 = v5;
        DWORD2(v16) = v6;
        v9 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
        bzero(v9, 0xA28uLL);
        *&v16 = v9;
        v10 = sub_245478E8C(4u, 7u, v5, v6, v9, 0, v14, 0, 0);
        v9[5] = 0;
        v9[9] = 0;
        if (!v9[2592])
        {
          v9[2] = 0;
        }

        if (v10 <= 0)
        {
          if (v9[2] != 1)
          {
            goto LABEL_14;
          }

          v12 = sub_24544A660(a1, a2, &v15);
          if (v12 == 5)
          {
            goto LABEL_14;
          }

          v11 = v12;
          v9 = v16;
        }

        else
        {
          v11 = 2;
        }

        sub_24545378C(a1, a2, v9, v11);
LABEL_14:
        v13 = sub_2454616D4();
        sub_245461E1C(v13, a1, 0x1FBD0u);
        sub_24545438C(&v16);
      }
    }
  }

  else
  {

    sub_245479990(735, "lpp_session.c");
  }
}

void sub_2454530B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v8 = 1044;

    goto LABEL_9;
  }

  if (!a3)
  {
    v8 = 1050;

LABEL_9:
    sub_245479990(v8, "lpp_session.c");
    return;
  }

  *size = 0u;
  *__src = 0u;
  v6 = *(a3 + 16);
  size[0] = v6;
  *(v6 + 5) = 0;
  *(v6 + 9) = 0;
  if (*(v6 + 24) == 5 && *(v6 + 144) == 1 && *(v6 + 100) == 1)
  {
    v7 = *(v6 + 99);
  }

  if (!sub_24547903C(4, 7u, __src, 0, &size[1], v6, 0, 0))
  {
    v9 = LODWORD(size[1]);
    v10 = malloc_type_calloc(1uLL, LODWORD(size[1]), 0x57089378uLL);
    bzero(v10, v9);
    LODWORD(v9) = size[1];
    memcpy(v10, __src[0], SLODWORD(size[1]));
    sub_245449E8C(a1, *(a2 + 20), 0, v9, v10);
    v11 = sub_2454616D4();
    sub_245461E1C(v11, a1, 0x1FBD0u);
  }

  v12 = **(a2 + 40);
  if (v12)
  {
    while (*(v12 + 16) != *size[0] || *(v12 + 17) != *(size[0] + 1))
    {
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (*(v12 + 24) == 2)
    {
      sub_24544AA28(a1, v12);
    }
  }

LABEL_22:
  sub_24545438C(size);
}

void sub_245453284(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v4 = *(a2 + 72);
    if (v4)
    {
      sub_2454554AC(*(v4 + 16), &unk_278E53388);
      v5 = *(a2 + 72);
      v6 = v5[2];
      if (v6)
      {
        free(v6);
        v5[2] = 0;
        v5 = *(a2 + 72);
      }

      v7 = v5[4];
      if (!v7 || (free(v7), v5[4] = 0, (v5 = *(a2 + 72)) != 0))
      {
        free(v5);
        *(a2 + 72) = 0;
      }
    }

    v8 = *(a2 + 88);
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = *v9;
        sub_245453ED0(*(a2 + 88), v9);
        sub_2454554AC(v9[2], &unk_278E53388);
        v11 = v9[2];
        if (v11)
        {
          free(v11);
          v9[2] = 0;
        }

        v12 = v9[4];
        if (v12)
        {
          free(v12);
        }

        free(v9);
        v9 = v10;
      }

      while (v10);
      v8 = *(a2 + 88);
    }

    sub_245453F14(v8);
  }

  v13 = *(a2 + 40);
  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = *v14;
      sub_245453ED0(*(a2 + 40), v14);
      free(v14);
      v14 = v15;
    }

    while (v15);
    v13 = *(a2 + 40);
  }

  sub_245453F14(v13);
  sub_245453ED0(*(a1 + 72), a2);

  free(a2);
}

uint64_t sub_2454533CC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    v8 = 1491;
LABEL_8:
    sub_245479990(v8, "lpp_session.c");
    return 3;
  }

  if (!a3)
  {
    v8 = 1496;
    goto LABEL_8;
  }

  if (a3[5] == 1)
  {
    v6 = a3[4];
    if (*(a2 + 66) == v6)
    {
      v7 = 2;
      sub_245479990(1256, "lpp_session.c");
    }

    else
    {
      v7 = 0;
      *(a2 + 66) = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  if (a3[9] == 1)
  {
    if (a3[6] == 1)
    {
      v9 = a3[4];
      v24 = 0;
      v25 = 0;
      v26 = 0u;
      memset(v27, 0, sizeof(v27));
      v10 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
      bzero(v10, 0xA28uLL);
      *&v27[0] = v10;
      *(v10 + 4) = 257;
      *(v10 + 7) = v9;
      if (!sub_24547903C(4, 7u, &v25, 0, &v24, v10, 0, 0))
      {
        sub_2454498C8(a1, a2 + 16, &v24);
      }

      sub_24545438C(v27);
    }

    if (a3[8] == 1)
    {
      v11 = *(a2 + 72);
      if (v11)
      {
        if (*(*(v11 + 16) + 4) == a3[7])
        {
          v12 = sub_2454616D4();
          sub_2454619A8(v12);
          *(a2 + 80) = 0;
          v13 = *(a2 + 72);
          if (v13)
          {
            v14 = *(v13 + 16);
            if (v14[2] == 1 && v14[3] == 1)
            {
              for (i = **(a2 + 40); i; i = *i)
              {
                if (*(i + 16) == *v14 && *(i + 17) == v14[1])
                {
                  break;
                }
              }
            }

            else
            {
              i = 0;
            }

            sub_2454554AC(v14, &unk_278E53388);
            v16 = *(a2 + 72);
            v17 = v16[2];
            if (v17)
            {
              free(v17);
              v16[2] = 0;
              v16 = *(a2 + 72);
            }

            v18 = v16[4];
            if (!v18 || (free(v18), v16[4] = 0, (v16 = *(a2 + 72)) != 0))
            {
              free(v16);
              *(a2 + 72) = 0;
            }

            v19 = *(a2 + 64);
            if (v19 == 255)
            {
              v20 = 0;
            }

            else
            {
              v20 = v19 + 1;
            }

            *(a2 + 64) = v20;
            if (i && *(i + 24) == 2)
            {
              sub_24544AA28(a1, i);
            }
          }

          else
          {
            v21 = *(a2 + 64);
            if (v21 == 255)
            {
              v22 = 0;
            }

            else
            {
              v22 = v21 + 1;
            }

            *(a2 + 64) = v22;
          }

          sub_2454538B4(a1, a2);
        }
      }
    }
  }

  return v7;
}

void sub_24545367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (a2 && a3)
  {
    sub_24547A7C8();
    v6 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
    bzero(v6, 0xA28uLL);
    *&v9 = v6;
    *(v6 + 6) = 6;
    *(v6 + 10) = 0;
    *(v6 + 49) = 1;
    v7 = *(a3 + 2);
    *(v6 + 2) = v7;
    if (v7 == 1)
    {
      *v6 = *a3;
    }

    *(v6 + 6) = 1;
    v6[4] = 256;
    *(v6 + 3) = 1;
    *(v6 + 2592) = 1;
    *(v6 + 4) = 0;
    (*(a2 + 56))(a1, a2, &v8);
  }

  else
  {

    sub_245479990(1145, "lpp_session.c");
  }
}

void sub_24545378C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 && a3)
  {
    if (*(a3 + 2592) != 1 || (*(a3 + 24) & 0xFFFFFFFE) != 6)
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v8 = malloc_type_calloc(1uLL, 0xA28uLL, 0x57089378uLL);
      bzero(v8, 0xA28uLL);
      *&v11 = v8;
      v9 = *(a3 + 2);
      *(v8 + 2) = v9;
      if (v9 == 1)
      {
        *v8 = *a3;
      }

      *(v8 + 9) = 0;
      *(v8 + 3) = 0;
      *(v8 + 2592) = 1;
      *(v8 + 4) = 0;
      *(v8 + 6) = 7;
      *(v8 + 8) = 0;
      *(v8 + 41) = 1;
      *(v8 + 40) = a4;
      (*(a2 + 56))(a1, a2, &v10);
    }
  }

  else
  {

    sub_245479990(1183, "lpp_session.c");
  }
}

void sub_2454538B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = **(a2 + 88);
    if (v4)
    {
      do
      {
        if (*(a2 + 72) || *(a2 + 96))
        {
          break;
        }

        v6 = *v4;
        sub_245453ED0(*(a2 + 88), v4);
        sub_245452C54(a1, a2, v4);
        v7 = v4[4];
        if (v7)
        {
          free(v7);
        }

        free(v4);
        v4 = v6;
      }

      while (v6);
    }
  }

  else
  {

    sub_245479990(1422, "lpp_session.c");
  }
}

void sub_245453960(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (!*(a2 + 16))
  {
    v7 = *(a2 + 72);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (*v8 == *a3 && v8[1] == a3[1])
      {
        v9 = sub_2454616D4();
        sub_2454619A8(v9);
        *(a2 + 80) = 0;
        sub_2454554AC(*(*(a2 + 72) + 16), &unk_278E53388);
        v10 = *(a2 + 72);
        v11 = v10[2];
        if (v11)
        {
          free(v11);
          v10[2] = 0;
          v10 = *(a2 + 72);
        }

        v12 = v10[4];
        if (!v12 || (free(v12), v10[4] = 0, (v10 = *(a2 + 72)) != 0))
        {
          free(v10);
          *(a2 + 72) = 0;
        }

        v13 = *(a2 + 64);
        if (v13 == 255)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13 + 1;
        }

        *(a2 + 64) = v14;
      }
    }

    v15 = **(a2 + 88);
    while (v15)
    {
      v16 = v15;
      v15 = *v15;
      v17 = v16[2];
      if (*v17 == *a3 && v17[1] == a3[1])
      {
        sub_245453ED0(*(a2 + 88), v16);
        sub_2454554AC(v16[2], &unk_278E53388);
        v18 = v16[2];
        if (v18)
        {
          free(v18);
        }

        free(v16);
      }
    }

    sub_2454538B4(a1, a2);
  }
}

void sub_245453AC8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = 1671;
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  v3 = a2 + 16;
  if (v4)
  {
    v5 = 1677;
LABEL_5:

    sub_245479990(v5, "lpp_session.c");
    return;
  }

  v6 = *(a2 + 72);
  if (v6)
  {
    if (*(a2 + 80) > 2u)
    {

      sub_2454527F0(a1, a2);
    }

    else
    {
      sub_2454498C8(a1, v3, v6 + 24);
      ++*(a2 + 80);
      v8 = sub_2454616D4();
      sub_2454617F0(v8, a1, 1500);
      *(a2 + 32) = 1000000 * sub_24539D8D0();
    }
  }
}

void sub_245453BB8(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    v5 = *(a5 + 16);
    v6 = *(a5 + 17);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
  }

  v30 = v7;
  v31 = 0;
  v32 = v5;
  v33 = v6;
  memset(v34, 0, sizeof(v34));
  if (a2[13])
  {
    LOBYTE(__p[1]) = -1;
    v9 = a2[3];
    HIDWORD(__p[0]) = a2[2];
    v10 = a2[9];
    v22 = a2[8];
    v23 = v10;
    v11 = *(a2 + 59);
    BYTE4(v20) = *(a2 + 16);
    LOBYTE(v21) = *(a2 + 28);
    v12 = *(a2 + 56);
    HIDWORD(v21) = v11;
    v26 = *(a2 + 27);
    v24 = *(a2 + 40);
    v13 = *(a2 + 57);
    v27 = v12;
    v28 = v13;
    v29 = *(a2 + 43);
    LOWORD(__p[0]) = *(a2 + 4);
    v14 = *(a2 + 58);
    HIDWORD(__p[1]) = v9;
    LODWORD(v20) = v14;
    v25 = *(a2 + 41);
    v15 = a2[6];
    DWORD2(v20) = a2[5];
    HIDWORD(v20) = v15;
    v17 = a3;
    v18 = a4;
    v16 = a2[16];
    if (v16 == 1)
    {
      sub_24546CEC8(*a2, __p, &v17);
    }

    else if (v16 == 2)
    {
      sub_24546D048(__p, &v17, 1);
    }
  }

  else
  {
    v21 = 0;
    *__p = 0u;
    v20 = 0u;
    BYTE8(v20) = 1;
    HIDWORD(v20) = a4;
    sub_245443760();
    v8 = sub_24546A68C();
    sub_24546B598(v8, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_245453D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245453D28(uint64_t a1, __int128 *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    v7 = *(a5 + 16);
    v8 = *(a5 + 17);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  *&v18[11] = v5;
  *&v18[19] = v6;
  v14 = v9;
  v15 = 0;
  v16 = v7;
  v17 = v8;
  *v18 = 0;
  *&v18[7] = 0;
  v13 = a4;
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = a3;
  sub_24546BF74(&v10, &v12);
}

uint64_t sub_245453D9C(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v9 = a2;
  v10 = a3;
  if (a5 && a5[5] == 4)
  {
    v6 = a5[15];
    a5[12];
    a5[13];
    a5[14];
  }

  v7 = sub_2453B4548();
  return sub_2453B523C(v7 + 200, &v9, a4);
}

void sub_245453E48(uint64_t *a1, void *a2)
{
  if (a1 && a2)
  {
    v2 = *a1;
    *a1 = a2;
    *a2 = v2;
    a2[1] = 0;
    if (v2)
    {
      *(v2 + 8) = a2;
    }

    else
    {
      a1[1] = a2;
    }
  }

  else
  {
    sub_245479990(44, "lpm_utils.c");
  }
}

void sub_245453E88(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = a1[1];
      v2 = v3;
    }

    else
    {
      v3 = a1;
    }

    *v3 = a2;
    a1[1] = a2;
    *a2 = 0;
    a2[1] = v2;
  }

  else
  {
    sub_245479990(69, "lpm_utils.c");
  }
}

void sub_245453ED0(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = *a2;
    v2 = a2[1];
    if (v2)
    {
      v4 = a2[1];
    }

    else
    {
      v4 = a1;
    }

    *v4 = v3;
    if (!v3)
    {
      v3 = a1;
    }

    v3[1] = v2;
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    sub_245479990(97, "lpm_utils.c");
  }
}

void sub_245453F14(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  else
  {
    sub_245479990(141, "lpm_utils.c");
  }
}

uint64_t sub_245453F34(uint64_t a1, size_t size, unsigned int a3)
{
  if (!size)
  {
    return 0;
  }

  v4 = size;
  *a1 = size;
  *(a1 + 4) = 1;
  v6 = size;
  v7 = malloc_type_calloc(1uLL, size, 0x57089378uLL);
  bzero(v7, v6);
  v8 = 0;
  *(a1 + 8) = v7;
  v9 = -v4;
  v10 = v4 - 1;
  do
  {
    *(*(a1 + 8) + v8++) = (a3 >> v10--) & 1;
  }

  while (!__CFADD__(v9++, 1));
  return 1;
}

uint64_t sub_245453FDC(uint64_t a1, int a2, _BYTE *a3)
{
  if (a2 < 1 || !*(a1 + 4))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  *a3 = 0;
  do
  {
    if (*a1 <= v4)
    {
      break;
    }

    v3 |= *(*(a1 + 8) + v5) << (~v4 + a2);
    *a3 = v3;
    v4 = ++v5;
  }

  while (v5 < a2);
  return 1;
}

uint64_t sub_245454048(int *a1, int a2, _WORD *a3)
{
  if (a2 < 1 || !a1[1])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  *a3 = 0;
  v6 = *a1;
  do
  {
    if (v6 <= v4)
    {
      break;
    }

    v3 |= *(*(a1 + 1) + v5) << (~v4 + a2);
    *a3 = v3;
    v4 = ++v5;
  }

  while (v5 < a2);
  return 1;
}

uint64_t sub_2454540B4(unsigned int a1, size_t size, uint64_t a3)
{
  v4 = size;
  v6 = size;
  v7 = 1;
  v8 = malloc_type_calloc(1uLL, size, 0x57089378uLL);
  bzero(v8, v6);
  *(a3 + 8) = v8;
  if (!v8)
  {
    return 0;
  }

  *a3 = v4;
  *(a3 + 4) = 1;
  if (v4 >= 1)
  {
    v9 = v6 - 1;
    do
    {
      *(*(a3 + 8) + v9) = a1 & 1;
      a1 >>= 1;
      --v9;
      --v4;
    }

    while (v4);
    return 1;
  }

  return v7;
}

uint64_t sub_245454158(unint64_t a1, size_t size, uint64_t a3)
{
  v4 = size;
  v6 = size;
  v7 = 1;
  v8 = malloc_type_calloc(1uLL, size, 0x57089378uLL);
  bzero(v8, v6);
  *(a3 + 8) = v8;
  if (!v8)
  {
    return 0;
  }

  *a3 = v4;
  *(a3 + 4) = 1;
  if (v4)
  {
    v9 = (v4 - 1);
    do
    {
      *(*(a3 + 8) + v9) = a1 & 1;
      a1 >>= 1;
      --v9;
      --v6;
    }

    while (v6);
    return 1;
  }

  return v7;
}

uint64_t sub_2454541F8(uint64_t a1, size_t size, unsigned int a3)
{
  if (!size)
  {
    return 0;
  }

  v4 = size;
  *a1 = size;
  *(a1 + 4) = 1;
  v6 = size;
  v7 = malloc_type_calloc(1uLL, size, 0x57089378uLL);
  bzero(v7, v6);
  v8 = 0;
  v9 = 0;
  *(a1 + 8) = v7;
  do
  {
    *(*(a1 + 8) + v9++) = (a3 >> (~v8 + v4)) & 1;
    v8 = v9;
  }

  while (v9 < v4);
  return 1;
}

void sub_2454542A8(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_2454554AC(v2, &unk_278E4F6F8);
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }
  }
}

void sub_2454542F4(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_2454554AC(v2, &unk_278E506C8);
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }
  }
}

void sub_245454340(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_2454554AC(v2, &unk_278E51990);
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }
  }
}

void sub_24545438C(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      sub_2454554AC(v2, &unk_278E53388);
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }
  }
}

uint64_t sub_2454543D8(uint64_t a1)
{
  v2 = sub_245473C70(a1);
  *v2 = &unk_28585A4F0;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 360) = -1;
  *(v2 + 364) = 0;
  *(v2 + 370) = 0;
  *(v2 + 378) = -1;
  *(v2 + 387) = 0;
  *(v2 + 384) = 0;
  *(v2 + 16) = 7;
  *(v2 + 32) = 6;
  v3 = operator new(0x1E8uLL, MEMORY[0x277D826F0]);
  if (v3)
  {
    *v3 = 0;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    *(v3 + 40) = 0u;
    v3[60] = -1;
    *(v3 + 8) = 0;
    *(v3 + 18) = 0;
    v3[76] = -1;
    *(v3 + 39) = 0;
    v3[80] = 0;
    *(v3 + 14) = 0;
    *(v3 + 11) = 255;
    *(v3 + 4) = 0;
    *(v3 + 59) = 0;
    *(v3 + 60) = 0;
    *(v3 + 58) = 0;
    *(v3 + 6) = 0u;
    *(v3 + 7) = 0u;
    *(v3 + 8) = 0u;
    *(v3 + 9) = 0u;
    *(v3 + 10) = 0u;
    *(v3 + 11) = 0u;
    *(v3 + 12) = 0u;
    *(v3 + 13) = 0u;
    *(v3 + 14) = 0u;
    *(v3 + 15) = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 17) = 0u;
    *(v3 + 18) = 0u;
    *(v3 + 19) = 0u;
    *(v3 + 20) = 0u;
    *(v3 + 21) = 0u;
    *(v3 + 22) = 0u;
    *(v3 + 23) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 25) = 0u;
    *(v3 + 26) = 0u;
    *(v3 + 27) = 0u;
    *(v3 + 441) = 0u;
  }

  *(a1 + 40) = v3;
  return a1;
}

uint64_t sub_2454544F4(uint64_t a1)
{
  *a1 = &unk_28585A4F0;
  if (*(a1 + 32) == 6)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = v2[58];
      if (v3)
      {
        v2[59] = v3;
        operator delete(v3);
      }

      sub_245454DA0((v2 + 12));
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      MEMORY[0x245D6A0D0](v2, 0x1010C40F88FA712);
    }

    *(a1 + 40) = 0;
  }

  return sub_245473D60(a1);
}

void sub_2454545A0(uint64_t a1)
{
  sub_2454544F4(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_2454545E0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (v2 && (v3 = sub_24547473C(), (v4 = sub_24547547C(v3, *(v2 + 376))) != 0) && sub_245460E5C(v4, *(a1 + 40) + 464, *(*(a1 + 8) + 376), *(*(a1 + 8) + 596)))
  {
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 515;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }
  }

  else
  {
    *(*(a1 + 40) + 8) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2454546C8(uint64_t a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    sub_2454745A0(a1, a2);
    v25 = 0;
    v3 = *(a1 + 40);
    if (*(v3 + 4))
    {
      v4 = sub_24547473C();
      v3 = *(a1 + 40);
      sub_245476ED4(v4, *(v3 + 456), &v25);
    }

    if (!*v3)
    {
      v16 = sub_24547C334();
      v17 = *(*(a1 + 8) + 376);
      *(&buf + 1) = 0;
      v27 = 0;
      LODWORD(buf) = v17;
      v30 = -1;
      v28 = 6;
      v29 = v25;
      sub_24547D2BC(v16, &buf);
      *(a1 + 361) = -1;
LABEL_31:
      sub_245454A88(a1);
      v15 = 0;
      goto LABEL_32;
    }

    v5 = *(v3 + 56);
    if (*(v3 + 52))
    {
      if (v5)
      {
        *(a1 + 360) = 1;
        v6 = *(v3 + 64);
        *(a1 + 368) = v6;
        v7 = *(v3 + 60) == 1;
        *(a1 + 362) = v7;
        v8 = *(v3 + 68);
        *(a1 + 372) = v8;
        v9 = *(v3 + 78);
        *(a1 + 376) = v9;
        v10 = *(v3 + 76) == 1;
        *(a1 + 363) = v10;
        LOBYTE(v11) = *(v3 + 80);
        *(a1 + 381) = v11;
        *(a1 + 382) = *(v3 + 75);
        if (!*(v3 + 48))
        {
          v12 = *(a1 + 378);
          v13 = *(a1 + 379);
LABEL_23:
          buf = 0x100000000uLL;
          v30 = 0;
          v32 = -1;
          v33 = 0;
          if (v7)
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          v27 = v19;
          v28 = __PAIR64__(v8, v6);
          LOWORD(v29) = v9;
          if (v10)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v31 = v20;
          BYTE2(v29) = v12;
          HIBYTE(v29) = v13;
          LOBYTE(v32) = v11;
          v21 = sub_24547C334();
          sub_24547DC10(v21, *(*(a1 + 8) + 376), 6, 0, v25, &buf);
          v22 = *(*(a1 + 40) + 24);
          if (*(*(a1 + 40) + 32) - v22 == 13)
          {
            *(a1 + 384) = v22[1] + 10 * *v22 + 1472;
            *(a1 + 386) = v22[3] + 10 * v22[2] - 16;
            *(a1 + 387) = v22[5] + 10 * v22[4] - 16;
            *(a1 + 388) = v22[7] + 10 * v22[6] - 16;
            *(a1 + 389) = v22[9] + 10 * v22[8] - 16;
            *(a1 + 390) = v22[11] + 10 * v22[10] - 16;
          }

          goto LABEL_31;
        }

LABEL_21:
        v12 = *(v3 + 72);
        *(a1 + 378) = v12;
        v13 = *(v3 + 73);
        *(a1 + 379) = v13;
        *(a1 + 380) = *(v3 + 74);
        goto LABEL_23;
      }

      if (*(v3 + 48))
      {
        LOBYTE(v11) = 0;
        v10 = 0;
        v9 = 0;
        *(a1 + 360) = 1;
        v6 = *(v3 + 64);
        *(a1 + 368) = v6;
        v7 = *(v3 + 60) == 1;
        *(a1 + 362) = v7;
        v8 = *(v3 + 68);
        *(a1 + 372) = v8;
        *(a1 + 376) = 0;
        *(a1 + 363) = 0;
        *(a1 + 381) = 0;
        *(a1 + 382) = *(v3 + 75);
        goto LABEL_21;
      }
    }

    else if (v5)
    {
      v11 = *(v3 + 48);
      if (!v11)
      {
        v13 = 0;
        v12 = 0;
        *(a1 + 360) = 1;
        v6 = *(v3 + 64);
        *(a1 + 368) = v6;
        v7 = *(v3 + 60) == 1;
        *(a1 + 362) = v7;
        v8 = *(v3 + 68);
        *(a1 + 372) = v8;
        v9 = *(v3 + 78);
        *(a1 + 376) = v9;
        v18 = *(v3 + 76) == 1;
        *(a1 + 378) = 0;
        v10 = v18;
        *(a1 + 363) = v10;
        *(a1 + 382) = 0;
        goto LABEL_23;
      }
    }

    v13 = 0;
    v12 = 0;
    LOBYTE(v11) = 0;
    v10 = 0;
    v9 = 0;
    *(a1 + 360) = 1;
    v6 = *(v3 + 64);
    *(a1 + 368) = v6;
    v7 = *(v3 + 60) == 1;
    *(a1 + 362) = v7;
    v8 = *(v3 + 68);
    *(a1 + 376) = 0;
    *(a1 + 379) = 0;
    *(a1 + 372) = v8;
    *(a1 + 363) = 0;
    goto LABEL_23;
  }

  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *&buf = 0x20104000100;
    _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &buf, 8u);
  }

  v15 = -1;
LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_245454A88(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (**(a1 + 40))
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    *(a1 + 361) = -1;
    if (!v2)
    {
      return;
    }
  }

  v3 = sub_24546E30C();
  *(v3 + 40) = *(v3 + 32);
  v4 = sub_24546A68C();
  sub_245448DD0(off_27EE134B8, *(*(a1 + 8) + 376));
  sub_24546B0B4(v4);
  v5 = sub_24546E30C();
  v6 = *(*(a1 + 8) + 376);

  sub_24546F540(v5, v6);
}

BOOL sub_245454B20(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (v4)
  {
    sub_245454C74(a1 + 48, v4 + 64);
  }

  v13[0] = a2;
  v13[1] = a1 + 24;
  if (sub_245466354(v13))
  {
    v5 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109120;
      v15 = 770;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      result = 0;
    }
  }

  else
  {
    v12 = 0;
    if (*(*(a1 + 40) + 4))
    {
      v7 = sub_24547473C();
      sub_245476ED4(v7, *(*(a1 + 40) + 456), &v12);
      v8 = v12;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_24547C334();
    v10 = *(*(a1 + 8) + 376);
    v16 = 0;
    v17[0] = 0;
    *buf = v10;
    v18 = -1;
    *&v17[1] = 7;
    v17[3] = v8;
    sub_24547D2BC(v9, buf);
    sub_24547463C(a1, a2);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245454C74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_245454EB4(a1 + 24, a2 + 24);
  if (a1 == a2)
  {
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
  }

  else
  {
    sub_2453ADF3C((a1 + 200), *(a2 + 200), *(a2 + 208), *(a2 + 208) - *(a2 + 200));
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    sub_2453ADF3C((a1 + 240), *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
    sub_2453ADF3C((a1 + 264), *(a2 + 264), *(a2 + 272), *(a2 + 272) - *(a2 + 264));
    sub_2453ADF3C((a1 + 288), *(a2 + 288), *(a2 + 296), *(a2 + 296) - *(a2 + 288));
  }

  return a1;
}

void sub_245454D2C(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    *(a1 + 48) = 1;
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 56) = *(v2 + 376);
      v3 = *(v2 + 596);
      v4 = sub_24547473C();

      sub_245474B90(v4, a1 + 64, v3);
    }
  }
}

uint64_t sub_245454DA0(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    *(a1 + 296) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 264);
  if (v5)
  {
    *(a1 + 272) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    *(a1 + 248) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 216);
  if (v7)
  {
    *(a1 + 224) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    *(a1 + 200) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 168);
  if (v9)
  {
    *(a1 + 176) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 144);
  if (v10)
  {
    *(a1 + 152) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    *(a1 + 128) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    *(a1 + 104) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    *(a1 + 80) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    *(a1 + 56) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    *(a1 + 32) = v15;
    operator delete(v15);
  }

  v16 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v16;
    operator delete(v16);
  }

  return a1;
}

uint64_t sub_245454EB4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 120) = *(a2 + 120);
  }

  else
  {
    sub_2453ADF3C(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    sub_2453ADF3C((a1 + 24), *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
    sub_2453ADF3C((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    sub_2453ADF3C((a1 + 72), *(a2 + 72), *(a2 + 80), *(a2 + 80) - *(a2 + 72));
    sub_2453ADF3C((a1 + 96), *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
    *(a1 + 120) = *(a2 + 120);
    sub_2453ADF3C((a1 + 128), *(a2 + 128), *(a2 + 136), *(a2 + 136) - *(a2 + 128));
    sub_2453ADF3C((a1 + 152), *(a2 + 152), *(a2 + 160), *(a2 + 160) - *(a2 + 152));
  }

  return a1;
}

_BYTE **sub_245454F68(_BYTE **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  for (i = a4; ; i = *(i + 24))
  {
    v8 = *(i + 16);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        break;
      }
    }

    if ((*i & 0xFFFFFFFE) != 0xAA)
    {
      if ((*(i + 4) & 4) == 0)
      {
        if (a1 != a2)
        {
          if (*i == 128)
          {
            v10 = *(a4 + 8);
          }

          else
          {
            v10 = *(i + 8);
          }

          return memcpy(a1, a2, v10);
        }

        return a1;
      }

      if (a1 != a2 && (a3 & 0x10) != 0)
      {
        sub_2454554AC(a1, i);
      }

      if ((a3 & 0x10) != 0 && a1 == a2)
      {
LABEL_18:
        if ((*i - 136) <= 0x2D)
        {
          if (((1 << (*i + 120)) & 0x1E1) != 0)
          {
            if (*a1)
            {
              if ((a3 & 8) != 0)
              {
                v14 = 86;
              }

              else
              {
                v14 = 84;
              }

              **a1 = v14;
            }
          }

          else if (((1 << (*i + 120)) & 0x280000000400) != 0)
          {
            *(a1 + 5) = a3 & 8;
          }

          else if (((1 << (*i + 120)) & 0x14) != 0)
          {
            *(a1 + 1) = a3 & 8;
          }
        }

        return a1;
      }

      v12 = *i;
      if (*i <= 172)
      {
        if (v12 <= 140)
        {
          if (v12 == 136)
          {
            goto LABEL_25;
          }

          if (v12 == 138 || v12 == 140)
          {
            v17 = *a2;
            if (v17 >= 1 && ((a3 & 1) != 0 || (a3 & 2) != 0 && *(a2 + 1)))
            {
              v18 = malloc_type_calloc(1uLL, v17, 0x100004077774924uLL);
              a1[1] = v18;
              memcpy(v18, a2[1], *a2);
            }

            else
            {
              a1[1] = a2[1];
            }

            *a1 = *a2;
            goto LABEL_18;
          }

          goto LABEL_102;
        }

        if ((v12 - 141) < 4)
        {
LABEL_25:
          v13 = *a2;
          if (*a2 && ((a3 & 1) != 0 || (a3 & 2) != 0 && *v13 != 84))
          {
            v29 = strlen(v13);
            v30 = malloc_type_calloc(1uLL, v29 + 1, 0x100004077774924uLL);
            *a1 = v30;
            strcpy(v30, *a2);
          }

          else
          {
            *a1 = v13;
          }

          goto LABEL_18;
        }

        if (v12 != 146)
        {
          if (v12 == 172 && *(i + 24))
          {
            v21 = a1;
            v22 = a2;
            v23 = a3;
            goto LABEL_97;
          }

          goto LABEL_102;
        }

        goto LABEL_68;
      }

      if (v12 > 178)
      {
        if ((v12 - 179) >= 3)
        {
          if ((v12 - 183) < 2)
          {
            if (*(i + 32))
            {
              v19 = 0;
              do
              {
                v20 = *(*(i + 24) + 8) * v19;
                sub_245454F68(a1 + v20, a2 + v20, a3 & 0xF);
                ++v19;
              }

              while (v19 < *(i + 32));
            }

            goto LABEL_18;
          }

          if (v12 == 186)
          {
            v37 = *a2;
            if ((a3 & 1) == 0 || !v37)
            {
              *a1 = v37;
              *a2 = 0;
              goto LABEL_18;
            }

            v21 = malloc_type_calloc(1uLL, *(*(i + 24) + 8), 0x75BB7058uLL);
            *a1 = v21;
            v22 = *a2;
            v38 = *(i + 24);
            v23 = 9;
LABEL_97:
            sub_245454F68(v21, v22, v23);
            goto LABEL_18;
          }

LABEL_102:
          memcpy(a1, a2, *(i + 8));
          goto LABEL_18;
        }

LABEL_68:
        v24 = *(a2 + 4);
        if (v24 >= 1 && ((a3 & 1) != 0 || (a3 & 2) != 0 && *(a2 + 5)))
        {
          v25 = *a2;
          v26 = malloc_type_calloc(1uLL, *(i + 32), 0x1020040EDED9539uLL);
          *a1 = v26;
          while (1)
          {
            v27 = *(i + 24);
            sub_245454F68(&v26[*(i + 40)], v25 + *(i + 40), a3 & 7 | 8);
            if (*i == 180)
            {
              *(v26 + 2) = v25[2];
            }

            v25 = *v25;
            if (!v25)
            {
              break;
            }

            v28 = malloc_type_calloc(1uLL, *(i + 32), 0x1020040EDED9539uLL);
            *v26 = v28;
            v26 = v28;
          }

          *v26 = 0;
          a1[1] = v26;
          v24 = *(a2 + 4);
        }

        else
        {
          *a1 = *a2;
        }

        *(a1 + 4) = v24;
        goto LABEL_18;
      }

      if (v12 == 173)
      {
        if ((a3 & 0x20) == 0)
        {
          memcpy(a1, a2, *(i + 8));
        }

        v31 = *(i + 32);
        if (v31)
        {
          v32 = 0;
          for (j = 0; j < v31; ++j)
          {
            v34 = *(i + 24);
            if ((*(*(v34 + v32) + 4) & 4) != 0)
            {
              sub_245454F68(a1 + *(v34 + v32 + 8), a2 + *(v34 + v32 + 8), a3 & 0xF | 0x20);
              v31 = *(i + 32);
            }

            v32 += 24;
          }
        }

        goto LABEL_18;
      }

      if (v12 != 174 && v12 != 176)
      {
        goto LABEL_102;
      }

      bzero(a1, *(i + 8));
      v15 = *(i + 48);
      if (v15 > 3)
      {
        if (v15 == 8)
        {
          v16 = *a2;
          *a1 = *a2;
          goto LABEL_95;
        }
      }

      else
      {
        if (v15 == 1)
        {
          LODWORD(v16) = *a2;
          *a1 = v16;
          goto LABEL_95;
        }

        if (v15 == 2)
        {
          LODWORD(v16) = *a2;
          *a1 = *a2;
LABEL_95:
          if (v16 >= *(i + 32))
          {
            goto LABEL_18;
          }

          v35 = *(i + 40);
          v36 = *(*(i + 24) + 8 * v16);
          v21 = a1 + v35;
          v22 = (a2 + v35);
          v23 = a3 & 0xF;
          goto LABEL_97;
        }
      }

      LODWORD(v16) = *a2;
      *a1 = *a2;
      goto LABEL_95;
    }
  }

  return v9();
}

void sub_2454554AC(unsigned __int8 *a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {

        v5();
        return;
      }
    }

    v6 = *a2;
    if ((*a2 - 170) >= 2)
    {
      break;
    }

    a2 = *(a2 + 24);
  }

  if (v6 <= 172)
  {
    if (v6 <= 140)
    {
      if (v6 != 136)
      {
        if (v6 != 138 && v6 != 140)
        {
          return;
        }

        v9 = *(a1 + 1);
        if (!v9)
        {
          return;
        }

        goto LABEL_29;
      }
    }

    else if ((v6 - 141) >= 4)
    {
      if (v6 != 146)
      {
        return;
      }

      goto LABEL_47;
    }

    v9 = *a1;
    if (!*a1)
    {
      return;
    }

LABEL_29:

    free(v9);
    return;
  }

  if (v6 > 178)
  {
    if ((v6 - 179) >= 3)
    {
      if ((v6 - 183) < 2)
      {
        if ((*(*(a2 + 24) + 4) & 1) != 0 && *(a2 + 32))
        {
          v10 = 0;
          do
          {
            sub_2454554AC(&a1[*(*(a2 + 24) + 8) * v10++]);
          }

          while (v10 < *(a2 + 32));
        }

        return;
      }

      if (v6 != 186)
      {
        return;
      }

      v9 = *a1;
      if (!*a1)
      {
        return;
      }

      if (*(*(a2 + 24) + 4))
      {
        sub_2454554AC(v9);
        v9 = *a1;
      }

      goto LABEL_29;
    }

LABEL_47:
    while (1)
    {
      v15 = *a1;
      if (!*a1)
      {
        break;
      }

      if (*(*(a2 + 24) + 4))
      {
        sub_2454554AC(v15 + *(a2 + 40));
      }

      *a1 = *v15;
      free(v15);
    }

    return;
  }

  if (v6 != 173)
  {
    if (v6 != 174 && v6 != 176)
    {
      return;
    }

    v7 = *(a2 + 48);
    if (v7 > 3)
    {
      goto LABEL_38;
    }

    if (v7 == 1)
    {
      v8 = *a1;
    }

    else
    {
      if (v7 == 2)
      {
        v8 = *a1;
        goto LABEL_50;
      }

LABEL_38:
      v8 = *a1;
    }

LABEL_50:
    if (v8 < *(a2 + 32) && (*(*(*(a2 + 24) + 8 * v8) + 4) & 1) != 0)
    {
      sub_2454554AC(&a1[*(a2 + 40)]);
    }

    v16 = *(a2 + 8);

    bzero(a1, v16);
    return;
  }

  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = 0;
    for (i = 0; i < v11; ++i)
    {
      v14 = *(a2 + 24);
      if (*(*(v14 + v12) + 4))
      {
        sub_2454554AC(&a1[*(v14 + v12 + 8)]);
        v11 = *(a2 + 32);
      }

      v12 += 24;
    }
  }
}

uint64_t sub_24545573C(unsigned int *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = *a1;
  if (!result)
  {
    if (!setjmp(a1 + 1))
    {
      *(a1 + 196) = 1;
      *a1 = 0;
      *(a1 + 25) = a2;
      *(a1 + 89) = 1;
      *(a1 + 101) = a2;
      *(a1 + 102) = a3;
      v7 = *(a1 + 96);
      *(a1 + 105) = *(a1 + 95);
      *(a1 + 106) = v7;
      LOBYTE(v7) = *(a1 + 801);
      *(a1 + 872) = v7;
      v8 = *(a1 + 98);
      *(a1 + 107) = v8;
      *(a1 + 108) = v8;
      *(a1 + 873) = v7;
      if ((*(a1 + 825) & 8) == 0)
      {
        *(a1 + 103) = 2080;
      }

      sub_245457960(a1, a2, a3);
      if (*(a1 + 108) == *(a1 + 107) && *(a1 + 873) == *(a1 + 872))
      {
        sub_245455E6C(a1, 0);
      }

      if ((a1[206] & 0x10) != 0)
      {
        v10 = *(a1 + 108);
        v11 = *(a1 + 873);
      }

      else
      {
        v9 = *(a1 + 873);
        v10 = *(a1 + 108);
        v11 = 7;
        if (v9 != 7)
        {
          *v10 &= -2 << v9;
          v10 = (*(a1 + 108) + 1);
          *(a1 + 108) = v10;
          *(a1 + 873) = 7;
        }
      }

      v12 = &v10[-*(a1 + 107)];
      *(a1 + 98) += v12;
      *(a1 + 801) = v11;
      *(a1 + 104) = *(a1 + 872) - v11 + 8 * v12;
    }

    *(a1 + 196) = 0;
    return *a1;
  }

  return result;
}

char *sub_245455894(void *a1, uint64_t a2)
{
  v4 = a1[105];
  v5 = a1[107] - v4;
  v6 = a1[108] - v4;
  v7 = a1[106] - v4;
  result = sub_245478BC8(a1, a2);
  a1[105] = result;
  a1[106] = &result[a2 + v7];
  a1[107] = &result[v5];
  a1[108] = &result[v6];
  return result;
}

uint64_t sub_245455908(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 856);
  v5 = *(result + 736);
  if (v5)
  {
    result = v5(result, a2);
    *(v3 + 872) = *(v3 + 801);
    v6 = *(v3 + 784);
    *(v3 + 856) = v6;
  }

  else
  {
    v6 = *(result + 856);
  }

  if (v6 - v4 < a2)
  {

    return sub_24546A59C(v3, 22);
  }

  return result;
}

char *sub_24545599C(char *result, char a2)
{
  v3 = result;
  v4 = *(result + 108);
  if (v4 == *(result + 106))
  {
    v5 = *(result + 105);
    v6 = *(result + 107) - v5;
    v7 = &v4[-v5];
    result = sub_245478BC8(result, 1);
    *(v3 + 105) = result;
    v4 = &v7[result];
    *(v3 + 106) = &v7[result + 1];
    *(v3 + 107) = &result[v6];
    *(v3 + 108) = &v7[result];
  }

  v8 = v3[873];
  if (v8 == 7)
  {
    *v4 = a2 << 7;
    v9 = v3[873];
  }

  else
  {
    *v4 |= a2 << v8;
    v9 = v3[873];
    if (!v9)
    {
      ++*(v3 + 108);
      v10 = 7;
      goto LABEL_7;
    }
  }

  v10 = v9 - 1;
LABEL_7:
  v3[873] = v10;
  return result;
}

uint64_t sub_245455A60(uint64_t a1)
{
  v2 = *(a1 + 864);
  if (v2 == *(a1 + 856))
  {
    sub_245455908(a1, 1);
    v2 = *(a1 + 864);
  }

  v3 = *v2;
  v4 = *(a1 + 873);
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    *(a1 + 864) = v2 + 1;
    v5 = 7;
  }

  *(a1 + 873) = v5;
  return (v3 >> v4) & 1;
}

char *sub_245455ACC(char *result, unint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result;
    if (a3 >= 0x21)
    {
      sub_24546A610(result, 15);
    }

    v5 = result[873];
    v6 = a3 - v5 + 7;
    v7 = v6 & 7;
    v8 = v6 >> 3;
    v9 = *(result + 108);
    if ((v6 & 7) != 0)
    {
      v10 = &v9[v8 + 1];
    }

    else
    {
      v10 = &v9[v8];
    }

    v11 = *(result + 106);
    if (v10 > v11)
    {
      v12 = &v9[((v6 & 7) != 0) + v8 - v11];
      v13 = *(result + 105);
      v14 = *(result + 107) - v13;
      v15 = &v9[-v13];
      v16 = v11 - v13;
      result = sub_245478BC8(result, v12);
      *(v3 + 105) = result;
      *(v3 + 106) = &result[v16 + v12];
      *(v3 + 107) = &result[v14];
      v9 = &v15[result];
      *(v3 + 108) = &v15[result];
      v5 = v3[873];
    }

    if (v5 == 7)
    {
      *v9 = 0;
    }

    if (v6 >= 8u)
    {
      v19 = (*(v3 + 108) + v8);
      *(v3 + 108) = v19;
      if ((v6 & 7) != 0)
      {
        *v19 = a2 << (8 - v7);
        a2 >>= v7;
        v19 = *(v3 + 108);
      }

      v18 = v19 - 1;
      if (v6 >= 0x10u)
      {
        do
        {
          *v18-- = a2;
          LODWORD(v8) = v8 - 1;
          a2 >>= 8;
        }

        while (v8 > 1u);
      }

      v17 = (0xFFu >> (7 - v3[873])) & a2;
    }

    else
    {
      v17 = (0xFFu >> (7 - v3[873])) & (a2 << (8 - v7));
      v18 = *(v3 + 108);
    }

    *v18 |= v17;
    v3[873] = v7 ^ 7;
  }

  return result;
}

unint64_t sub_245455C80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 864);
  v3 = *(a1 + 856) - v2;
  if (v3 <= 0 || a2 > 0x20 || (v4 = *(a1 + 873), v5 = v4 - *(a1 + 872) + 8 * v3, v5 < a2))
  {
    sub_245455D34(a1, a2);
    return 0;
  }

  if (v5 < 0x40)
  {

    return sub_245455D7C(a1, a2);
  }

  else
  {
    v6 = *v2;
    *(a1 + 864) = v2 + ((7 - v4 + a2) >> 3);
    *(a1 + 873) = (v4 - a2) & 7;
    return bswap64(v6) << (7 - v4) >> -a2;
  }
}

uint64_t sub_245455D34(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    sub_24546A610(a1, 15);
  }

  return sub_24546A59C(a1, 22);
}

uint64_t sub_245455D7C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 873);
  if (v2 == 7)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 864);
    v5 = (*v4 << (7 - v2));
    if (v2 + 1 >= a2)
    {
      v3 = v5 >> (8 - a2);
      if (v2 + 1 == a2)
      {
        *(a1 + 873) = 7;
        *(a1 + 864) = v4 + 1;
        return v3;
      }

      v7 = v2 - a2;
LABEL_14:
      *(a1 + 873) = v7;
      return v3;
    }

    v3 = v5 >> (7 - v2);
    LOBYTE(a2) = ~v2 + a2;
    *(a1 + 864) = v4 + 1;
  }

  if (a2 >= 8u)
  {
    v6 = *(a1 + 864) + 1;
    do
    {
      v3 = *(v6 - 1) | (v3 << 8);
      LOBYTE(a2) = a2 - 8;
      *(a1 + 864) = v6++;
    }

    while (a2 > 7u);
  }

  if (!a2)
  {
    v7 = 7;
    goto LABEL_14;
  }

  *(a1 + 873) = a2 ^ 7;
  return (v3 << a2) | (**(a1 + 864) >> (8 - a2));
}

char *sub_245455E6C(char *result, unsigned int a2)
{
  v3 = result;
  v4 = result[873];
  v5 = *(result + 108);
  if (v4 == 7)
  {
    if (v5 == *(result + 106))
    {
      v6 = *(result + 105);
      v7 = *(result + 107) - v6;
      v8 = &v5[-v6];
      result = sub_245478BC8(result, 1);
      *(v3 + 105) = result;
      v5 = &v8[result];
      *(v3 + 106) = &v8[result + 1];
      *(v3 + 107) = &result[v7];
      *(v3 + 108) = &v8[result];
    }

    *v5 = a2;
    ++*(v3 + 108);
  }

  else
  {
    if (v5 + 1 == *(result + 106))
    {
      v9 = *(result + 105);
      v10 = *(result + 107) - v9;
      v11 = &v5[-v9];
      v12 = &v5[-v9 + 1];
      result = sub_245478BC8(result, 1);
      *(v3 + 105) = result;
      *(v3 + 106) = &v12[result + 1];
      *(v3 + 107) = &result[v10];
      v5 = &v11[result];
      *(v3 + 108) = &v11[result];
      LOBYTE(v4) = v3[873];
    }

    *v5 |= a2 >> (7 - v4);
    v13 = *(v3 + 108);
    *(v3 + 108) = v13 + 1;
    *(v13 + 1) = a2 << (v3[873] + 1);
  }

  return result;
}

uint64_t sub_245455F90(uint64_t a1)
{
  v2 = *(a1 + 873);
  if (v2 == 7)
  {
    v3 = *(a1 + 864);
    if (v3 == *(a1 + 856))
    {
      sub_245455908(a1, 1);
      v3 = *(a1 + 864);
    }

    LOBYTE(v4) = *v3;
    *(a1 + 864) = v3 + 1;
  }

  else
  {
    v5 = *(a1 + 864);
    v6 = *(a1 + 856) - v5;
    if (v6 <= 1)
    {
      sub_245455908(a1, 2 - v6);
      v5 = *(a1 + 864);
      LOBYTE(v2) = *(a1 + 873);
    }

    v7 = *v5 << (7 - v2);
    *(a1 + 864) = v5 + 1;
    return ((v5[1] >> (v2 + 1)) | v7);
  }

  return v4;
}

void sub_245456040(uint64_t a1, size_t a2)
{
  v4 = *(a1 + 873);
  v5 = *(a1 + 864);
  v6 = &v5[a2];
  v7 = *(a1 + 848);
  if (v4 == 7)
  {
    if (v6 > v7)
    {
      v8 = &v5[a2 - v7];
      v9 = *(a1 + 840);
      v10 = *(a1 + 856) - v9;
      v11 = &v5[-v9];
      v12 = v7 - v9;
      v13 = sub_245478BC8(a1, v8);
      *(a1 + 840) = v13;
      *(a1 + 848) = &v13[v12 + v8];
      *(a1 + 856) = &v13[v10];
      v5 = &v11[v13];
      *(a1 + 864) = v5;
    }
  }

  else
  {
    if (v6 >= v7)
    {
      v14 = &v5[a2 - v7 + 1];
      v15 = *(a1 + 840);
      v16 = *(a1 + 856) - v15;
      v17 = &v5[-v15];
      v18 = v7 - v15;
      v19 = sub_245478BC8(a1, v14);
      *(a1 + 840) = v19;
      *(a1 + 848) = &v19[v18 + v14];
      *(a1 + 856) = &v19[v16];
      v5 = &v17[v19];
      *(a1 + 864) = v5;
      LOBYTE(v4) = *(a1 + 873);
    }

    *v5 &= 510 << v4;
    v5 = (*(a1 + 864) + 1);
  }

  bzero(v5, a2);
  *(a1 + 864) += a2;
}

uint64_t sub_245456168(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 864);
    v5 = v4 + a2;
    if (*(result + 873) == 7)
    {
      v6 = *(result + 856);
      if (v5 > v6)
      {
        v7 = v4 + a2 - v6;
LABEL_7:
        result = sub_245455908(result, v7);
        v4 = *(v3 + 864);
      }
    }

    else
    {
      v8 = v5 + 1;
      v9 = *(result + 856);
      if (v8 > v9)
      {
        v7 = a2 + v4 - v9 + 1;
        goto LABEL_7;
      }
    }

    *(v3 + 864) = v4 + a2;
  }

  return result;
}

char *sub_2454561F0(char *result, unsigned __int8 *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v5 = result;
    v6 = result[873];
    result = *(result + 108);
    v7 = &result[__n];
    if (v6 == 7)
    {
      v8 = *(v5 + 848);
      if (v7 > v8)
      {
        v9 = result - v8 + __n;
        v10 = *(v5 + 840);
        v11 = *(v5 + 856) - v10;
        v12 = &result[-v10];
        v13 = &v8[-v10];
        v14 = sub_245478BC8(v5, v9);
        *(v5 + 840) = v14;
        *(v5 + 848) = &v13[v9 + v14];
        *(v5 + 856) = &v14[v11];
        result = &v12[v14];
        *(v5 + 864) = result;
      }

      result = memcpy(result, __src, v3);
      *(v5 + 864) += v3;
    }

    else
    {
      v15 = *(v5 + 848);
      if ((v7 + 1) > v15)
      {
        v16 = &result[__n - v15 + 1];
        v17 = *(v5 + 840);
        v18 = *(v5 + 856) - v17;
        v19 = &result[-v17];
        v20 = v15 - v17;
        result = sub_245478BC8(v5, v16);
        *(v5 + 840) = result;
        *(v5 + 848) = &result[v20 + v16];
        *(v5 + 856) = &result[v18];
        *(v5 + 864) = &v19[result];
      }

      do
      {
        **(v5 + 864) |= *__src >> (7 - *(v5 + 873));
        v21 = *(v5 + 864);
        *(v5 + 864) = v21 + 1;
        v22 = *__src++;
        *(v21 + 1) = v22 << (*(v5 + 873) + 1);
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_245456364(void *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x4000)
  {
    v6 = (a2 - 0x10000) >> 16;
    v7 = v6 + 1;
    if (a2 >> 16)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = a2 >> 14;
    if (a2 < 0x4000uLL)
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 + 1;
    }

    v11 = a2 < 0x4000uLL;
    if (a2 >= 0x4000uLL)
    {
      v12 = 0x4000;
    }

    else
    {
      v12 = 0;
    }

    if (a2 >= 0x8000uLL)
    {
      v10 = v8 + 1;
      v11 = 0;
      v12 = 0x8000;
    }

    v13 = v9 > 2;
    if (v9 > 2)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = v9 <= 2 && v11;
    v24 = v15;
    if (v13)
    {
      v16 = 49152;
    }

    else
    {
      v16 = v12;
    }

    v17 = a2 - v16;
    if (v17 < 0x80)
    {
      sub_245456040(a1, v14);
      v18 = (a1[108] - v17 - v14);
      if (v18 < a1[105])
      {
        sub_24546A59C(a1, 43);
      }

      if (v17 > a1[106] - &v18[v14])
      {
        sub_24546A59C(a1, 43);
      }

      result = memmove(&v18[v14], v18, v17);
    }

    else
    {
      sub_245456040(a1, v14 + 1);
      v18 = (a1[108] + ~(v17 + v14));
      if (v18 < a1[105])
      {
        sub_24546A59C(a1, 43);
      }

      if (v17 > a1[106] - &v18[v14 + 1])
      {
        sub_24546A59C(a1, 43);
      }

      result = memmove(&v18[v14 + 1], v18, v17);
      v18[v14] = v2;
      LODWORD(v2) = (v17 >> 8) | 0xFFFFFF80;
    }

    v18[v14 - 1] = v2;
    if (!v24)
    {
      --v14;
      v18 -= v16;
      if (v18 < a1[105])
      {
        result = sub_24546A59C(a1, 43);
      }

      if (v14)
      {
        v19 = v14;
        if (a1[106] - &v18[v14] < v16)
        {
          sub_24546A59C(a1, 43);
        }

        result = memmove(&v18[v14], v18, v16);
      }

      else
      {
        v19 = 0;
      }

      v18[v19 - 1] = (v16 >> 14) | 0xC0;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        v20 = v18;
      }

      else
      {
        v21 = v14 - 1;
        v22 = 0x10000 - v18;
        do
        {
          v20 = v18 - 0x10000;
          if ((v18 - 0x10000) < a1[105])
          {
            sub_24546A59C(a1, 43);
          }

          if (a1[106] + v22 - v21 < 0x10000)
          {
            sub_24546A59C(a1, 43);
          }

          v23 = &v18[v21];
          result = memmove(v23 - 0x10000, v20, 0x10000uLL);
          *(v23 - 65537) = -60;
          --v7;
          --v21;
          v22 += 0x10000;
          v18 = v20;
        }

        while (v7 > 1u);
      }

      if ((v20 - 65537) < a1[105])
      {
        result = sub_24546A59C(a1, 43);
      }

      *(v20 - 65537) = -60;
    }
  }

  else
  {
    sub_245456040(a1, 1uLL);
    v4 = (a1[108] + ~v2);
    if (v4 < a1[105])
    {
      sub_24546A59C(a1, 43);
    }

    if (a1[106] - (v4 + 1) < v2)
    {
      sub_24546A59C(a1, 43);
    }

    result = memmove(v4 + 1, v4, v2);
    *v4 = v2;
    *(v4 - 1) = BYTE1(v2) | 0x80;
  }

  return result;
}

unint64_t sub_2454566F8(uint64_t a1)
{
  v2 = *(a1 + 864);
  v3 = sub_245455F90(a1);
  if (v3 > 194)
  {
    if (v3 != 195)
    {
      if (v3 == 196)
      {
        v4 = *(a1 + 864) + 0x10000;
        *(a1 + 864) = v4;
        v5 = 0x10000;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = *(a1 + 864) + 49152;
    *(a1 + 864) = v4;
    v5 = 49152;
  }

  else
  {
    if (v3 != 193)
    {
      if (v3 == 194)
      {
        v4 = *(a1 + 864) + 0x8000;
        *(a1 + 864) = v4;
        v5 = 0x8000;
        goto LABEL_11;
      }

LABEL_8:
      sub_24546A59C(a1, 26);
      v5 = 0;
      v4 = *(a1 + 864);
      goto LABEL_11;
    }

    v4 = *(a1 + 864) + 0x4000;
    *(a1 + 864) = v4;
    v5 = 0x4000;
  }

LABEL_11:
  v6 = *(a1 + 856);
  if (v4 >= v6)
  {
    sub_245455908(a1, v4 - v6);
    v4 = *(a1 + 864);
  }

  v7 = sub_245455F90(a1);
  if (v7 == 196)
  {
    v8 = -v4;
    do
    {
      v9 = *(a1 + 856) - *(a1 + 864);
      if (v9 < 0x10000)
      {
        sub_245455908(a1, 0x10000 - v9);
      }

      v5 += 0x10000;
      if (v5 > v8 + *(a1 + 848))
      {
        sub_24546A59C(a1, 43);
      }

      memmove(v4, *(a1 + 864), 0x10000uLL);
      v4 += 0x10000;
      *(a1 + 864) += 0x10000;
      v7 = sub_245455F90(a1);
      v8 -= 0x10000;
    }

    while (v7 == 196);
  }

  v10 = v7;
  if (v7 >= 0xC1)
  {
    v11 = (v7 & 3) << 14;
    v12 = *(a1 + 856) - *(a1 + 864);
    if (v11 > v12)
    {
      sub_245455908(a1, v11 - v12);
    }

    v5 += v11;
    if ((*(a1 + 848) - v4) < v11)
    {
      sub_24546A59C(a1, 43);
    }

    memmove(v4, *(a1 + 864), v11);
    v4 += v11;
    *(a1 + 864) += v11;
    v10 = sub_245455F90(a1);
  }

  if ((v10 & 0xC0) == 0x80)
  {
    v13 = sub_245455F90(a1) & 0xFFFFC0FF | ((v10 & 0x3F) << 8);
    v14 = *(a1 + 856) - *(a1 + 864);
    if (v13 > v14)
    {
      sub_245455908(a1, v13 - v14);
    }

    v5 += v13;
    if (*(a1 + 848) - v4 >= v13)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ((v10 & 0x80) != 0)
  {
    sub_24546A59C(a1, 26);
    goto LABEL_32;
  }

  v13 = v10;
  v16 = *(a1 + 856) - *(a1 + 864);
  if (v10 > v16)
  {
    sub_245455908(a1, v10 - v16);
  }

  v5 += v10;
  if ((*(a1 + 848) - v4) < v10)
  {
LABEL_30:
    sub_24546A59C(a1, 43);
  }

LABEL_31:
  memmove(v4, *(a1 + 864), v13);
LABEL_32:
  *(a1 + 864) = v2 + 1;
  return v5;
}

uint64_t sub_2454569B4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 < 0x4000)
  {
    sub_245456040(a1, 1uLL);
    v4 = (*(a1 + 864) + ~v2);
    if (v4 < *(a1 + 840))
    {
      sub_24546A59C(a1, 43);
    }

    v5 = v4 + 1;
    if (*(a1 + 848) - (v4 + 1) <= v2)
    {
      sub_24546A59C(a1, 43);
    }

    result = memmove(v4 + 1, v4, v2 + 1);
    v7 = (a1 + 873);
    v8 = *(v4 - 1) & (510 << *(a1 + 873));
    *(v4 - 1) = v8;
    *(v4 - 1) = v8 | ((v2 | 0x8000) >> (15 - *(a1 + 873)));
    *v4 = (v2 | 0x8000) >> (7 - *(a1 + 873));
    goto LABEL_66;
  }

  v9 = (a2 - 0x10000) >> 16;
  if (a2 >> 16)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  if ((a2 >> 14) <= 2uLL)
  {
    if (a2 < 0x8000uLL)
    {
      if (a2 < 0x4000uLL)
      {
        v13 = 0;
        v11 = 1;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = v10 + 1;
        v13 = 0x4000;
      }
    }

    else
    {
      v11 = 0;
      v12 = v10 + 1;
      v13 = 0x8000;
    }
  }

  else
  {
    v11 = 0;
    v12 = v10 + 1;
    v13 = 49152;
  }

  v14 = a2 - v13;
  if (v14 < 0x80)
  {
    sub_245456040(a1, v12);
    v15 = (*(a1 + 864) - v14 - v12);
    if (v15 < *(a1 + 840))
    {
      sub_24546A59C(a1, 43);
    }

    if (v14 >= *(a1 + 848) - &v15[v12])
    {
      sub_24546A59C(a1, 43);
    }

    v19 = v14 + 1;
    v17 = &v15[v12];
    v18 = v15;
  }

  else
  {
    sub_245456040(a1, v12 + 1);
    v15 = (*(a1 + 864) + ~(v14 + v12));
    if (v15 < *(a1 + 840))
    {
      sub_24546A59C(a1, 43);
    }

    v16 = v14 + 1;
    if (v16 > *(a1 + 848) - &v15[v12 + 1])
    {
      sub_24546A59C(a1, 43);
    }

    v17 = &v15[v12 + 1];
    v18 = v15;
    v19 = v16;
  }

  result = memmove(v17, v18, v19);
  if ((v11 & 1) == 0)
  {
    --v12;
    v15 -= v13;
    if (v15 < *(a1 + 840))
    {
      result = sub_24546A59C(a1, 43);
    }

    if (v12)
    {
      v20 = v13 | 1;
      if (*(a1 + 848) - &v15[v12] < v20)
      {
        sub_24546A59C(a1, 43);
      }

      result = memmove(&v15[v12], v15, v20);
    }

    else
    {
      v12 = 0;
      --v15;
    }
  }

  if (v10)
  {
    if (v10 != 1)
    {
      v21 = v9 + 1;
      v22 = v15 - 0x10000;
      v23 = v12 - 1;
      v24 = 0x10000 - v15;
      do
      {
        if (v22 < *(a1 + 840))
        {
          sub_24546A59C(a1, 43);
        }

        if (*(a1 + 848) + v24 - v23 <= 0x10000)
        {
          sub_24546A59C(a1, 43);
        }

        result = memmove(&v22[v23], v22, 0x10001uLL);
        --v21;
        v22 -= 0x10000;
        --v23;
        v24 += 0x10000;
      }

      while (v21 > 1u);
      v15 = v22 + 0x10000;
    }

    v15 -= 65537;
  }

  if (v2 >= 0x10000)
  {
    do
    {
      if (v15 < *(a1 + 840))
      {
        result = sub_24546A59C(a1, 43);
      }

      v25 = *v15 & (510 << *(a1 + 873));
      *v15 = v25;
      *v15 = v25 | (0xC4u >> (7 - *(a1 + 873)));
      v26 = v15[1] & (0xFFu >> (7 - *(a1 + 873)));
      v15[1] = v26;
      v15[1] = v26 | (392 << *(a1 + 873));
      v2 -= 0x10000;
      v15 += 65537;
    }

    while (v2 >> 16);
  }

  if (v2 >= 0xC000)
  {
    v27 = -49152;
    v28 = *(a1 + 840);
    v29 = -122;
    v30 = 195;
    v31 = 49153;
LABEL_56:
    if (v15 < v28)
    {
      result = sub_24546A59C(a1, 43);
    }

    v32 = *v15 & (510 << *(a1 + 873));
    *v15 = v32;
    *v15 = v32 | (v30 >> (7 - *(a1 + 873)));
    v33 = v15[1] & (0xFFu >> (7 - *(a1 + 873)));
    v15[1] = v33;
    v15[1] = v33 | (v29 << *(a1 + 873));
    v2 += v27;
    v15 += v31;
    goto LABEL_59;
  }

  if (v2 >= 0x8000)
  {
    v27 = -32768;
    v28 = *(a1 + 840);
    v29 = -124;
    v30 = 194;
    v31 = 32769;
    goto LABEL_56;
  }

  if (v2 >= 0x4000)
  {
    v27 = -16384;
    v28 = *(a1 + 840);
    v29 = -126;
    v30 = 193;
    v31 = 16385;
    goto LABEL_56;
  }

LABEL_59:
  v34 = *(a1 + 840);
  if (v2 < 0x80)
  {
    if (v15 < v34)
    {
      result = sub_24546A59C(a1, 43);
    }

    v7 = (a1 + 873);
    v36 = *v15 & (510 << *(a1 + 873));
    *v15 = v36;
    *v15 = v36 | (v2 >> (7 - *(a1 + 873)));
    v5 = v15 + 1;
  }

  else
  {
    if (v15 < v34)
    {
      result = sub_24546A59C(a1, 43);
    }

    v7 = (a1 + 873);
    v35 = *v15 & (510 << *(a1 + 873));
    *v15 = v35;
    *v15 = v35 | ((v2 | 0x8000) >> (15 - *(a1 + 873)));
    v15[1] = (v2 | 0x8000) >> (7 - *(a1 + 873));
    v5 = v15 + 2;
  }

LABEL_66:
  v37 = *v5;
  v38 = v37 & (0xFFu >> (7 - *v7));
  *v5 = v37 & (0xFFu >> (7 - *v7));
  *v5 = v38 | (v2 << (*v7 + 1));
  return result;
}

uint64_t sub_245456F98(uint64_t a1)
{
  v2 = *(a1 + 864);
  v3 = sub_245455F90(a1);
  if (v3 > 194)
  {
    if (v3 != 195)
    {
      if (v3 == 196)
      {
        v4 = *(a1 + 864) + 0x10000;
        *(a1 + 864) = v4;
        v5 = 0x10000;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = *(a1 + 864) + 49152;
    *(a1 + 864) = v4;
    v5 = 49152;
  }

  else
  {
    if (v3 != 193)
    {
      if (v3 == 194)
      {
        v4 = *(a1 + 864) + 0x8000;
        *(a1 + 864) = v4;
        v5 = 0x8000;
        goto LABEL_11;
      }

LABEL_8:
      sub_24546A59C(a1, 26);
      v5 = 0;
      v4 = *(a1 + 864);
      goto LABEL_11;
    }

    v4 = *(a1 + 864) + 0x4000;
    *(a1 + 864) = v4;
    v5 = 0x4000;
  }

LABEL_11:
  v6 = *(a1 + 856);
  if (v4 >= v6)
  {
    sub_245455908(a1, v4 - v6);
    v4 = *(a1 + 864);
  }

  v7 = sub_245455F90(a1);
  if (v7 == 196)
  {
    v8 = ~v4;
    do
    {
      v9 = *(a1 + 856) - *(a1 + 864);
      if (v9 < 65537)
      {
        sub_245455908(a1, 65537 - v9);
      }

      *v4 &= 510 << *(a1 + 873);
      **(a1 + 864) &= 0xFFu >> (7 - *(a1 + 873));
      *v4 |= **(a1 + 864);
      v10 = *(a1 + 848);
      if (*(a1 + 864) + 65537 > v10)
      {
        sub_24546A59C(a1, 43);
        v10 = *(a1 + 848);
      }

      if ((v8 + v10) < 0x10000)
      {
        sub_24546A59C(a1, 43);
      }

      memmove((v4 + 1), (*(a1 + 864) + 1), 0x10000uLL);
      v4 += 0x10000;
      *(a1 + 864) += 0x10000;
      v7 = sub_245455F90(a1);
      v8 -= 0x10000;
      v5 += 0x10000;
    }

    while (v7 == 196);
  }

  v11 = v7;
  if (v7 >= 0xC1)
  {
    v12 = (v7 & 3) << 14;
    v13 = *(a1 + 856) - *(a1 + 864);
    v14 = (v7 << 14) | 1u;
    if (v14 > v13)
    {
      sub_245455908(a1, v14 - v13);
    }

    *v4 &= 510 << *(a1 + 873);
    **(a1 + 864) &= 0xFFu >> (7 - *(a1 + 873));
    *v4 |= **(a1 + 864);
    v15 = *(a1 + 848);
    if (*(a1 + 864) + v12 + 1 > v15)
    {
      sub_24546A59C(a1, 43);
      v15 = *(a1 + 848);
    }

    v5 += v12;
    if ((v15 - (v4 + 1)) < v12)
    {
      sub_24546A59C(a1, 43);
    }

    memmove((v4 + 1), (*(a1 + 864) + 1), (v11 & 3) << 14);
    v4 += v12;
    *(a1 + 864) += v12;
    v11 = sub_245455F90(a1);
  }

  if ((v11 & 0xC0) == 0x80)
  {
    v16 = sub_245455F90(a1) & 0xFFFFC0FF | ((v11 & 0x3F) << 8);
    v17 = *(a1 + 856) - *(a1 + 864);
    if (v16 > v17)
    {
      sub_245455908(a1, v16 - v17);
    }

    *v4 &= 510 << *(a1 + 873);
    **(a1 + 864) &= 0xFFu >> (7 - *(a1 + 873));
    *v4 |= **(a1 + 864);
    v18 = *(a1 + 848);
    if (*(a1 + 864) + v16 + 1 > v18)
    {
      sub_24546A59C(a1, 43);
      v18 = *(a1 + 848);
    }

    v5 += v16;
    v19 = (v4 + 1);
    if (v18 - (v4 + 1) >= v16)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ((v11 & 0x80) != 0)
  {
    sub_24546A59C(a1, 26);
    goto LABEL_38;
  }

  v16 = v11;
  v21 = *(a1 + 856) - *(a1 + 864);
  if (v11 > v21)
  {
    sub_245455908(a1, v11 - v21);
  }

  *v4 &= 510 << *(a1 + 873);
  **(a1 + 864) &= 0xFFu >> (7 - *(a1 + 873));
  *v4 |= **(a1 + 864);
  v22 = *(a1 + 848);
  if (*(a1 + 864) + v11 + 1 > v22)
  {
    sub_24546A59C(a1, 43);
    v22 = *(a1 + 848);
  }

  v5 += v11;
  v19 = (v4 + 1);
  if ((v22 - (v4 + 1)) < v16)
  {
LABEL_36:
    sub_24546A59C(a1, 43);
  }

LABEL_37:
  memmove(v19, (*(a1 + 864) + 1), v16);
LABEL_38:
  *(a1 + 864) = v2 + 1;
  return v5;
}

uint64_t sub_245457458(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 0x4000)
  {
    if (v4 >= 0x10000)
    {
      do
      {
        if ((*(a1 + 824) & 0x40) != 0)
        {
          v5 = *(a1 + 873);
          if (v5 != 7)
          {
            *(*(a1 + 864))++ &= 510 << v5;
            *(a1 + 873) = 7;
          }
        }

        sub_245455E6C(a1, 0xC4u);
        (*(a2 + 16))(a1, 0x10000, a2);
        v4 = *(a2 + 8);
      }

      while (v4 >> 16);
    }

    if (v4 >= 0xC000)
    {
      if ((*(a1 + 824) & 0x40) != 0)
      {
        v6 = *(a1 + 873);
        if (v6 != 7)
        {
          *(*(a1 + 864))++ &= 510 << v6;
          *(a1 + 873) = 7;
        }
      }

      sub_245455E6C(a1, 0xC3u);
      (*(a2 + 16))(a1, 49152, a2);
      v4 = *(a2 + 8);
    }

    if (v4 >= 0x8000)
    {
      if ((*(a1 + 824) & 0x40) != 0)
      {
        v7 = *(a1 + 873);
        if (v7 != 7)
        {
          *(*(a1 + 864))++ &= 510 << v7;
          *(a1 + 873) = 7;
        }
      }

      sub_245455E6C(a1, 0xC2u);
      (*(a2 + 16))(a1, 0x8000, a2);
      v4 = *(a2 + 8);
    }

    if (v4 >= 0x4000)
    {
      if ((*(a1 + 824) & 0x40) != 0)
      {
        v8 = *(a1 + 873);
        if (v8 != 7)
        {
          *(*(a1 + 864))++ &= 510 << v8;
          *(a1 + 873) = 7;
        }
      }

      sub_245455E6C(a1, 0xC1u);
      (*(a2 + 16))(a1, 0x4000, a2);
    }
  }

  if ((*(a1 + 824) & 0x40) != 0)
  {
    v9 = *(a1 + 873);
    if (v9 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v9;
      *(a1 + 873) = 7;
    }
  }

  v10 = *(a2 + 8);
  if (v10 > 0x7F)
  {
    sub_245455ACC(a1, v10 | 0x8000, 0x10u);
  }

  else
  {
    sub_245455E6C(a1, *(a2 + 8));
  }

  v11 = *(a2 + 8);
  v12 = *(a2 + 16);

  return v12(a1, v11, a2);
}

uint64_t sub_2454576CC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    if ((*(a1 + 824) & 0x40) != 0)
    {
      v5 = *(a1 + 873);
      if (v5 != 7)
      {
        *(*(a1 + 864))++ &= 510 << v5;
        *(a1 + 873) = 7;
      }
    }

    v6 = sub_245455F90(a1);
    if ((v6 + 63) >= 4u)
    {
      break;
    }

    v4 = ((v6 + 63) << 14) + 0x4000;
LABEL_10:
    result = (*(a2 + 16))(a1, v4, a2);
    if (!(v4 >> 14))
    {
      return result;
    }
  }

  if ((v6 & 0xC0) == 0x80)
  {
    v8 = sub_245455F90(a1) & 0xFFFFC0FF | ((v6 & 0x3F) << 8);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
    sub_24546A59C(a1, 26);
    goto LABEL_10;
  }

  v8 = v6;
LABEL_14:
  v9 = *(a2 + 16);

  return v9(a1, v8, a2);
}

uint64_t sub_2454577F8(unsigned int *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    if (!setjmp(a1 + 1))
    {
      *(a1 + 196) = 1;
      *a1 = 0;
      *(a1 + 25) = a2;
      *(a1 + 89) = 1;
      *(a1 + 101) = a2;
      *(a1 + 102) = a3;
      v7 = *(a1 + 96);
      *(a1 + 105) = *(a1 + 95);
      *(a1 + 106) = v7;
      LODWORD(v7) = *(a1 + 801);
      *(a1 + 872) = v7;
      if (v7 == 7)
      {
        v8 = *(a1 + 98);
      }

      else
      {
        v8 = *(a1 + 98) + 1;
      }

      *(a1 + 107) = v8;
      v9 = *(a1 + 802);
      *(a1 + 873) = v9;
      v10 = *(a1 + 99);
      *(a1 + 108) = v10;
      if ((*(a1 + 825) & 8) == 0)
      {
        *(a1 + 103) = 2080;
      }

      *(a1 + 110) = 0;
      sub_24545909C(a1, a2, a3, 0);
      if (*(a1 + 108) == v10 && *(a1 + 873) == v9)
      {
        sub_245455F90(a1);
      }

      if ((a1[206] & 0x10) != 0)
      {
        v12 = *(a1 + 108);
        v13 = *(a1 + 873);
      }

      else
      {
        v11 = *(a1 + 873);
        v12 = *(a1 + 108);
        v13 = 7;
        if (v11 != 7)
        {
          *v12 &= -2 << v11;
          v12 = (*(a1 + 108) + 1);
          *(a1 + 108) = v12;
          *(a1 + 873) = 7;
        }
      }

      v14 = &v12[-v10];
      *(a1 + 99) += v14;
      *(a1 + 802) = v13;
      *(a1 + 104) = v9 - v13 + 8 * v14;
    }

    *(a1 + 196) = 0;
    return *a1;
  }

  return result;
}

void sub_245457960(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = *(a1 + 808);
  *(a1 + 808) = a2;
  v7 = *a2;
  if (v7 > 0x1F)
  {
    if (*a2 <= 0x55u)
    {
      if (*a2 <= 0x42u)
      {
        if (*a2 <= 0x3Fu)
        {
          if (v7 != 32)
          {
            if (v7 == 48)
            {
              *(&v175 + 1) = 0;
              v8 = **(a2 + 1);
              v9 = a3;
              if (v8 != 182)
              {
                if (v8 != 181)
                {
                  goto LABEL_433;
                }

                v9 = (a3 + 16);
              }

              v10 = *v9;
              *&v173 = a3;
              *(&v173 + 1) = v10;
              *(&v174 + 1) = 0;
              *&v175 = a2;
              v11 = *(a1 + 712);
              if (v11 < 0x40)
              {
                *(a1 + 8 * v11 + 200) = a2;
                *(a1 + 712) = v11 + 1;
                *&v174 = sub_24545E56C;
                sub_245457458(a1, &v173);
LABEL_386:
                --*(v5 + 712);
                goto LABEL_387;
              }

LABEL_433:
              sub_24546A610(v5, 15);
            }

LABEL_419:
            sub_24546A610(a1, 16);
          }

          v46 = *(a2 + 1);
          v47 = *(v46 + 48);
          if (v47 > 3)
          {
            goto LABEL_233;
          }

          if (v47 == 1)
          {
            v48 = *a3;
            goto LABEL_338;
          }

          if (v47 == 2)
          {
            v48 = *a3;
          }

          else
          {
LABEL_233:
            v48 = *a3;
          }

LABEL_338:
          v144 = *(a2 + 4);
          if (v144)
          {
            v145 = *(a2 + 4);
            v146 = *(a2 + 3);
            while (*(v146 + 8) == 5 || v146[2] != v48)
            {
              v146 += 4;
              if (!--v145)
              {
                v146 = *(a2 + 3);
                break;
              }
            }

            v147 = &a3[*(v46 + 40)];
            v148 = v146 - *(a2 + 3);
            v150 = (a2 + 16);
            v149 = *(a2 + 2);
            if (v149 == -1)
            {
              if (v144 == 1)
              {
                goto LABEL_382;
              }

              LODWORD(v173) = v148 >> 5;
              v153 = v144 - 1;
              goto LABEL_357;
            }

            v151 = v148 >> 5;
          }

          else
          {
            v147 = &a3[*(v46 + 40)];
            v150 = (a2 + 16);
            v149 = *(a2 + 2);
            if (v149 == -1)
            {
              v146 = *(a2 + 3);
LABEL_382:
              if (!v146)
              {
                sub_24546A59C(v5, 44);
              }

              v165 = *(v5 + 712);
              if (v165 < 0x40)
              {
                *(v5 + 8 * v165 + 200) = v146;
                *(v5 + 712) = v165 + 1;
                sub_245457960(v5, *v146, v147);
                goto LABEL_386;
              }

              goto LABEL_433;
            }

            v151 = 0;
            v146 = *(a2 + 3);
          }

          if (v151 < v149)
          {
            sub_24545599C(a1, 0);
            v152 = *v150;
            if (*v150 < 2)
            {
              goto LABEL_382;
            }

            LODWORD(v173) = v151;
            v153 = v152 - 1;
LABEL_357:
            sub_24545ABC0(v5, v153, &v173);
            goto LABEL_382;
          }

          sub_24545599C(a1, 1);
          sub_24545BF80(v5, v151 - *v150);
          if (!v146)
          {
            sub_24546A59C(v5, 44);
          }

          v154 = *(v5 + 712);
          if (v154 >= 0x40)
          {
            goto LABEL_433;
          }

          *(v5 + 8 * v154 + 200) = v146;
          *(v5 + 712) = v154 + 1;
          v155 = *v146;
          a1 = v5;
          v156 = v147;
LABEL_366:
          sub_24545CF90(a1, v155, v156);
          goto LABEL_386;
        }

        if (v7 != 64)
        {
          if (v7 != 66)
          {
            goto LABEL_419;
          }

          v29 = a2[16];
          v30 = *(*(a2 + 1) + 8);
          if (v29)
          {
            if (v30 != 4)
            {
              if (v30 == 2)
              {
                v31 = *a3;
                goto LABEL_239;
              }

              if (v30 == 1)
              {
                v31 = *a3;
                goto LABEL_239;
              }
            }
          }

          else if (v30 != 4)
          {
            if (v30 == 2)
            {
              v31 = *a3;
              goto LABEL_239;
            }

            if (v30 == 1)
            {
              v31 = *a3;
LABEL_239:
              LODWORD(v170) = v31;
              if (a2[17] == 1)
              {
                if ((v29 & 0x20) != 0 && *(a2 + 3) > v31 || (v29 & 8) != 0 && *(a2 + 4) < v31)
                {
                  sub_24545599C(a1, 1);
                  goto LABEL_254;
                }

                v113 = v29 & 0x20;
                sub_24545599C(a1, 0);
              }

              else
              {
                sub_24545F948(a1, a2, &v170);
                v113 = v29 & 0x20;
              }

              if (!v113)
              {
LABEL_254:
                if ((*(v5 + 824) & 0x40) != 0)
                {
                  v115 = *(v5 + 873);
                  if (v115 != 7)
                  {
                    *(*(v5 + 864))++ &= 510 << v115;
                    *(v5 + 873) = 7;
                  }
                }

                *&v173 = 0;
                v39 = v170;
LABEL_263:
                LOBYTE(v173) = v39 < 0;
                DWORD1(v173) = v39 ^ (v39 >> 31);
                sub_24545AA58(v5, &v173);
                goto LABEL_387;
              }

              if ((v29 & 0x80) == 0)
              {
                LODWORD(v173) = v170 - *(a2 + 6);
                sub_24545AE50(v5, &v173);
                goto LABEL_387;
              }

              v160 = *(a2 + 6);
              LODWORD(v173) = v170 - v160;
              v114 = *(a2 + 8) - v160;
LABEL_370:
              sub_24545ABC0(v5, v114, &v173);
              goto LABEL_387;
            }
          }

          v31 = *a3;
          goto LABEL_239;
        }

        v52 = *(a2 + 1);
        v53 = *(a2 + 4);
        v54 = *(v52 + 48);
        if (v54 <= 3)
        {
          if (v54 == 1)
          {
            v55 = *a3;
LABEL_359:
            if (v53)
            {
              v157 = *(a2 + 3);
              while (v157[2] != v55)
              {
                v157 += 3;
                if (!--v53)
                {
                  goto LABEL_387;
                }
              }

              v158 = *(a1 + 712);
              if (v158 >= 0x40)
              {
                goto LABEL_433;
              }

              v159 = *(v52 + 40);
              *(a1 + 8 * v158 + 200) = v157;
              *(a1 + 712) = v158 + 1;
              v155 = *v157;
              v156 = &a3[v159];
              goto LABEL_366;
            }

            goto LABEL_387;
          }

          if (v54 == 2)
          {
            v55 = *a3;
            goto LABEL_359;
          }
        }

        v55 = *a3;
        goto LABEL_359;
      }

      if ((v7 - 82) >= 2)
      {
        if (v7 != 67)
        {
          if (v7 != 68)
          {
            goto LABEL_419;
          }

          v173 = 0uLL;
          *&v174 = 0;
          v13 = a2[16];
          v14 = *(a3 + 1);
          v15 = *a3;
          if (a2[17] == 1)
          {
            if (*(a2 + 3) > v15 || (a2[16] & 0x80) != 0 && *(a2 + 4) < v15)
            {
              sub_24545599C(a1, 1);
              *&v173 = v14;
              *(&v173 + 1) = v15;
              goto LABEL_273;
            }

            sub_24545599C(a1, 0);
          }

          else
          {
            sub_24545F980(a1, a2, *a3);
          }

          *&v173 = v14;
          *(&v173 + 1) = v15;
          if ((v13 & 0x80) != 0)
          {
            if ((v13 & 2) != 0)
            {
              v122 = *(a2 + 3);
              if (!v122)
              {
                goto LABEL_387;
              }

              if (v122 > 2)
              {
                if (v122 >> 16)
                {
                  goto LABEL_273;
                }

                if ((*(v5 + 824) & 0x40) != 0)
                {
                  v167 = *(v5 + 873);
                  if (v167 != 7)
                  {
                    *(*(v5 + 864))++ &= 510 << v167;
                    *(v5 + 873) = 7;
                    v122 = *(a2 + 3);
                    v14 = v173;
                  }
                }
              }

              v123 = v5;
              v121 = v14;
            }

            else
            {
              v118 = *(a2 + 4);
              if (v118 >> 16)
              {
                goto LABEL_273;
              }

              v119 = *(a2 + 6);
              LODWORD(v170) = v15 - v119;
              sub_24545ABC0(v5, v118 - v119, &v170);
              if ((*(v5 + 824) & 0x40) != 0)
              {
                v120 = *(v5 + 873);
                if (v120 != 7)
                {
                  *(*(v5 + 864))++ &= 510 << v120;
                  *(v5 + 873) = 7;
                }
              }

              v122 = *(&v173 + 1);
              v121 = v173;
              v123 = v5;
            }

            sub_2454561F0(v123, v121, v122);
            goto LABEL_387;
          }

LABEL_273:
          v89 = sub_24545B948;
          goto LABEL_285;
        }

        v173 = 0uLL;
        *&v174 = 0;
        v49 = a2[16];
        v50 = *(a3 + 1);
        v51 = *a3;
        if (a2[17] == 1)
        {
          if (*(a2 + 3) > v51 || (a2[16] & 0x80) != 0 && *(a2 + 4) < v51)
          {
            sub_24545599C(a1, 1);
            *&v173 = v50;
            *(&v173 + 1) = v51;
            goto LABEL_284;
          }

          sub_24545599C(a1, 0);
        }

        else
        {
          sub_24545F980(a1, a2, *a3);
        }

        *&v173 = v50;
        *(&v173 + 1) = v51;
        if ((v49 & 0x80) != 0)
        {
          if ((v49 & 2) != 0)
          {
            v128 = *(a2 + 3);
            if (!v128)
            {
              goto LABEL_387;
            }

            if (v128 > 0x10)
            {
              if (v128 >> 16)
              {
                goto LABEL_284;
              }

              if ((*(v5 + 824) & 0x40) != 0)
              {
                v168 = *(v5 + 873);
                if (v168 != 7)
                {
                  *(*(v5 + 864))++ &= 510 << v168;
                  *(v5 + 873) = 7;
                  v128 = *(a2 + 3);
                }
              }
            }

            v127 = v5;
          }

          else
          {
            v124 = *(a2 + 4);
            if (v124 >> 16)
            {
              goto LABEL_284;
            }

            v125 = *(a2 + 6);
            LODWORD(v170) = v51 - v125;
            sub_24545ABC0(v5, v124 - v125, &v170);
            if ((*(v5 + 824) & 0x40) != 0)
            {
              v126 = *(v5 + 873);
              if (v126 != 7)
              {
                *(*(v5 + 864))++ &= 510 << v126;
                *(v5 + 873) = 7;
              }
            }

            v127 = v5;
            v128 = v51;
          }

          sub_24545B1D8(v127, v128, &v173);
          goto LABEL_387;
        }

LABEL_284:
        v89 = sub_24545B1D8;
        goto LABEL_285;
      }

LABEL_38:
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v16 = a2[32];
      v17 = v7 & 0x1F;
      if (v17 > 22)
      {
        switch(v17)
        {
          case 23:
            v97 = *a3;
            v19 = (*a3 + 1);
            v170 = v19;
            v98 = strlen(v97);
            if (!v98)
            {
              goto LABEL_432;
            }

            v21 = v98 - 1;
            v171 = v98 - 1;
            LOBYTE(v172) = 1;
            if (v98 != 2049)
            {
              goto LABEL_182;
            }

            break;
          case 24:
            v93 = *a3;
            v19 = (*a3 + 1);
            v170 = v19;
            v94 = strlen(v93);
            if (!v94)
            {
              goto LABEL_432;
            }

            v21 = v94 - 1;
            v171 = v94 - 1;
            LOBYTE(v172) = 1;
            if (v94 != 2049)
            {
              goto LABEL_182;
            }

            break;
          case 26:
            v35 = *a3;
            v19 = (*a3 + 1);
            v170 = v19;
            v36 = strlen(v35);
            if (!v36)
            {
              goto LABEL_432;
            }

            v21 = v36 - 1;
            v171 = v36 - 1;
            LOBYTE(v172) = 1;
            if (v36 != 2049)
            {
              goto LABEL_182;
            }

            break;
          default:
            goto LABEL_433;
        }
      }

      else
      {
        switch(v17)
        {
          case 18:
            v95 = *a3;
            v19 = (*a3 + 1);
            v170 = v19;
            v96 = strlen(v95);
            if (!v96)
            {
              goto LABEL_432;
            }

            v21 = v96 - 1;
            v171 = v96 - 1;
            LOBYTE(v172) = 1;
            if (v96 != 2049)
            {
              goto LABEL_182;
            }

            break;
          case 19:
            v91 = *a3;
            v19 = (*a3 + 1);
            v170 = v19;
            v92 = strlen(v91);
            if (!v92)
            {
              goto LABEL_432;
            }

            v21 = v92 - 1;
            v171 = v92 - 1;
            LOBYTE(v172) = 1;
            if (v92 != 2049)
            {
              goto LABEL_182;
            }

            break;
          case 22:
            v18 = *a3;
            v19 = (*a3 + 1);
            v170 = v19;
            v20 = strlen(v18);
            if (v20)
            {
              v21 = v20 - 1;
              v171 = v20 - 1;
              LOBYTE(v172) = 1;
              if (v20 == 2049)
              {
                break;
              }

LABEL_182:
              v174 = 0u;
              v175 = 0u;
              v173 = 0u;
              if (a2[33] == 1)
              {
                if (v21 < *(a2 + 5) || (v16 & 0x80) != 0 && *(a2 + 6) < v21)
                {
                  sub_24545599C(v5, 1);
                  v16 = 0;
                  *&v173 = v19;
                  *(&v173 + 1) = v21;
                  goto LABEL_197;
                }

                sub_24545599C(v5, 0);
              }

              else
              {
                sub_24545F9D4(v5, a2, &v170);
                v19 = v170;
                v21 = v171;
              }

              *&v173 = v19;
              *(&v173 + 1) = v21;
              v99 = *(a2 + 3);
              if (v99)
              {
                v100 = *(a2 + 2);
                *&v175 = v100;
                *(&v175 + 1) = v99;
                v101 = (v99 - 1);
                if (v99 == 1)
                {
                  BYTE8(v174) = 0;
                  if ((*(v5 + 824) & 0x40) == 0)
                  {
                    goto LABEL_207;
                  }

                  v101 = 0;
                  v102 = 1;
                }

                else
                {
                  v101 = 32 - __clz(v101);
                  BYTE8(v174) = v101;
                  if ((*(v5 + 824) & 0x40) == 0)
                  {
                    goto LABEL_207;
                  }

                  LOBYTE(v102) = 1;
                  v103 = v101;
                  do
                  {
                    v104 = v103;
                    v103 >>= 1;
                    LOBYTE(v102) = 2 * v102;
                  }

                  while (v104 > 1);
                  v102 = v102;
                }

                if (v102 >> 1 >= v101)
                {
                  LOBYTE(v101) = v102 >> 1;
                }

                else
                {
                  LOBYTE(v101) = v102;
                }

                BYTE8(v174) = v101;
LABEL_207:
                if (*(v100 + v99 - 1) > ~(-1 << v101))
                {
                  BYTE9(v174) = 1;
                  goto LABEL_210;
                }

LABEL_209:
                BYTE9(v174) = 0;
LABEL_210:
                if ((v16 & 0x80) == 0)
                {
LABEL_211:
                  *&v174 = sub_24545BD6C;
                  sub_245457458(v5, &v173);
LABEL_212:
                  if (!v172 && v171)
                  {
                    free(v170);
                  }

                  goto LABEL_387;
                }

                if ((v16 & 2) != 0)
                {
                  v108 = *(a2 + 5);
                  if (!v108)
                  {
                    goto LABEL_212;
                  }

                  if (v108 > 2)
                  {
                    if (v108 >> 16)
                    {
                      goto LABEL_211;
                    }

                    if ((*(v5 + 824) & 0x40) != 0 && v108 * v101 >= 0x11)
                    {
                      v143 = *(v5 + 873);
                      if (v143 != 7)
                      {
                        *(*(v5 + 864))++ &= 510 << v143;
                        *(v5 + 873) = 7;
                        v108 = *(a2 + 5);
                      }
                    }
                  }
                }

                else
                {
                  v105 = *(a2 + 5);
                  v106 = *(a2 + 6) - v105;
                  if ((v106 + 1) >> 16)
                  {
                    goto LABEL_211;
                  }

                  v169 = v21 - v105;
                  sub_24545ABC0(v5, v106, &v169);
                  if ((*(v5 + 824) & 0x40) != 0)
                  {
                    v107 = *(v5 + 873);
                    if (v107 != 7)
                    {
                      *(*(v5 + 864))++ &= 510 << v107;
                      *(v5 + 873) = 7;
                    }
                  }

                  v108 = v171;
                }

                sub_24545BD6C(v5, v108, &v173);
                goto LABEL_212;
              }

              if ((*a2 & 0x1F) == 0x12)
              {
                *&v175 = " 0123456789";
                *(&v175 + 1) = 11;
                WORD4(v174) = 260;
                LOBYTE(v101) = 4;
                goto LABEL_210;
              }

LABEL_197:
              v175 = 0uLL;
              if ((*(v5 + 824) & 0x40) != 0)
              {
                LOBYTE(v101) = 8;
              }

              else
              {
                LOBYTE(v101) = 7;
              }

              BYTE8(v174) = v101;
              goto LABEL_209;
            }

LABEL_432:
            sub_24546A610(v5, 24);
          default:
            goto LABEL_433;
        }
      }

LABEL_429:
      sub_24546A610(v5, 42);
    }

    if (*a2 <= 0x6Fu)
    {
      if (v7 == 86 || v7 == 90)
      {
        goto LABEL_38;
      }

      if (v7 != 96)
      {
        goto LABEL_419;
      }
    }

    else
    {
      if (*a2 <= 0x9Fu)
      {
        if (v7 != 112)
        {
          if (v7 != 128)
          {
            goto LABEL_419;
          }

          goto LABEL_70;
        }

        v174 = 0u;
        v175 = 0u;
        v40 = a2[24];
        v41 = **(a2 + 1);
        v42 = a3;
        if (v41 != 182)
        {
          if (v41 != 181)
          {
            goto LABEL_433;
          }

          v42 = (a3 + 16);
        }

        v43 = *v42;
        *&v173 = a3;
        *(&v173 + 1) = v43;
        *&v175 = a2;
        if (a2[25] == 1)
        {
          if (*(a2 + 4) > v43 || (v40 & 0x80) != 0 && *(a2 + 5) < v43)
          {
            sub_24545599C(a1, 1);
            v44 = *(v5 + 712);
            if (v44 > 0x3F)
            {
              goto LABEL_433;
            }

            v45 = (v5 + 712);
            *(v5 + 8 * v44 + 200) = a2;
            *(v5 + 712) = v44 + 1;
            goto LABEL_327;
          }

          sub_24545599C(a1, 0);
        }

        else
        {
          sub_24545FAD0(a1, a2, v43);
        }

        v139 = *(v5 + 712);
        if (v139 > 0x3F)
        {
          goto LABEL_433;
        }

        v45 = (v5 + 712);
        *(v5 + 8 * v139 + 200) = a2;
        *(v5 + 712) = v139 + 1;
        if ((v40 & 0x80) == 0)
        {
          goto LABEL_327;
        }

        if ((v40 & 2) != 0)
        {
          v142 = *(a2 + 4);
          if (!v142)
          {
            goto LABEL_328;
          }

          if (!(v142 >> 16))
          {
LABEL_398:
            sub_24545E56C(v5, v142, &v173);
            goto LABEL_328;
          }
        }

        else
        {
          v140 = *(a2 + 5);
          if (!(v140 >> 16))
          {
            v141 = *(a2 + 8);
            LODWORD(v170) = v43 - v141;
            sub_24545ABC0(v5, v140 - v141, &v170);
            v142 = *(&v173 + 1);
            goto LABEL_398;
          }
        }

LABEL_327:
        *&v174 = sub_24545E56C;
        sub_245457458(v5, &v173);
LABEL_328:
        --*v45;
        goto LABEL_387;
      }

      if (v7 != 160)
      {
        if (v7 != 162)
        {
          goto LABEL_419;
        }

        v27 = a2[16];
        switch(v27)
        {
          case 1u:
            v28 = *a3 + 0x80000000;
            break;
          case 3u:
            v117 = *a3;
            if ((*a3 - 0x100000000) < 0xFFFFFFFE00000000)
            {
              sub_24546A59C(a1, 18);
            }

            v28 = v117 + 0x100000000;
            if ((*(v5 + 824) & 0x40) == 0)
            {
              goto LABEL_301;
            }

            goto LABEL_306;
          case 2u:
            v28 = *a3;
            break;
          default:
            v28 = *a3;
            if (v27 == 4 && v28 >> 33 || v27 == 16 && v28 >> 39)
            {
              sub_24546A59C(a1, 18);
            }

            break;
        }

        if ((*(v5 + 824) & 0x40) == 0)
        {
          if (v27 < 3)
          {
LABEL_305:
            v130 = v5;
            v131 = v28;
            v132 = 32;
LABEL_321:
            sub_245455ACC(v130, v131, v132);
            goto LABEL_387;
          }

LABEL_301:
          if (v27 == 16)
          {
            v129 = 7;
          }

          else
          {
            v129 = 1;
          }

          sub_245455ACC(v5, v28 >> 32, v129);
          goto LABEL_305;
        }

LABEL_306:
        if (v27 < 3)
        {
          v133 = 2;
        }

        else
        {
          v133 = 3;
        }

        v134 = 63;
        if (v28)
        {
          v134 = 64;
        }

        v135 = __clz(v28 | 1);
        v136 = v134 - v135;
        if (v134 == v135)
        {
          v137 = 1;
        }

        else if ((v136 & 7) != 0)
        {
          v137 = (v136 >> 3) + 1;
        }

        else
        {
          v137 = v136 >> 3;
        }

        sub_245455ACC(v5, v137 - 1, v133);
        v138 = *(v5 + 873);
        if (v138 != 7)
        {
          *(*(v5 + 864))++ &= 510 << v138;
          *(v5 + 873) = 7;
        }

        if (v136 >= 0x21)
        {
          sub_245455ACC(v5, v28 >> 32, 8u);
          --v137;
        }

        v132 = 8 * (v137 & 0x1F);
        v130 = v5;
        v131 = v28;
        goto LABEL_321;
      }
    }

LABEL_70:
    sub_245457960(a1, *(a2 + 2), a3);
    goto LABEL_387;
  }

  if (*a2 > 0xFu)
  {
    if (*a2 <= 0x15u)
    {
      if ((v7 - 18) >= 2)
      {
        if (v7 != 16)
        {
          goto LABEL_419;
        }

        if (a2[40])
        {
          v109 = *(a1 + 864);
          v110 = *(a1 + 856);
          v111 = *(a1 + 873);
          sub_24545599C(a1, 0);
          v112 = *(a2 + 9);
          if (v112)
          {
            v173 = 0uLL;
            *&v174 = 0;
            if (v112 >> 16)
            {
              sub_24545C0C0(v5, &v173, v112);
            }

            else
            {
              sub_24545C058(v5, &v173, v112);
            }

            sub_24545C2DC(v5, &v173, a2, a3);
          }

          else
          {
            sub_24545C63C(v5, a2, a3);
          }

          v161 = *(a2 + 10);
          if (v161)
          {
            v173 = 0uLL;
            *&v174 = 0;
            v162 = *(v5 + 864);
            v163 = *(v5 + 856);
            v164 = *(v5 + 873);
            if (v161 < 0x41)
            {
              sub_245455ACC(v5, v161 - 1, 7u);
              sub_24545C058(v5, &v173, *(a2 + 10));
            }

            else
            {
              sub_24545599C(v5, 1);
              sub_24545C0C0(v5, &v173, *(a2 + 10));
            }

            if (sub_24545C770(v5, &v173, a2, a3))
            {
              *(*(v5 + 856) + v109 - v110) |= 1 << v111;
            }

            else
            {
              v166 = *(v5 + 856);
              *(v5 + 864) = v166 + v162 - v163;
              *(v5 + 873) = v164;
              *(v166 + v162 - v163) &= -2 << v164;
            }
          }
        }

        else
        {
          v37 = *(a2 + 9);
          if (v37)
          {
            v173 = 0uLL;
            *&v174 = 0;
            if (v37 >> 16)
            {
              sub_24545C0C0(a1, &v173, v37);
            }

            else
            {
              sub_24545C058(a1, &v173, v37);
            }

            sub_24545C2DC(v5, &v173, a2, a3);
          }

          else
          {
            sub_24545C63C(a1, a2, a3);
          }
        }

        goto LABEL_387;
      }
    }

    else if ((v7 - 22) >= 3 && v7 != 26)
    {
      goto LABEL_419;
    }

    *(&v174 + 1) = 0;
    if (v7 > 22)
    {
      switch(v7)
      {
        case 23:
          v23 = *a3;
          v88 = strlen(*a3);
          if (!v88)
          {
            goto LABEL_432;
          }

          v25 = v88 - 1;
          if (v88 == 2049)
          {
            goto LABEL_429;
          }

          break;
        case 24:
          v23 = *a3;
          v81 = strlen(*a3);
          if (!v81)
          {
            goto LABEL_432;
          }

          v25 = v81 - 1;
          if (v81 == 2049)
          {
            goto LABEL_429;
          }

          break;
        case 26:
          v23 = *a3;
          v26 = strlen(*a3);
          if (!v26)
          {
            goto LABEL_432;
          }

          v25 = v26 - 1;
          if (v26 == 2049)
          {
            goto LABEL_429;
          }

          break;
        default:
          goto LABEL_433;
      }
    }

    else
    {
      switch(v7)
      {
        case 18:
          v82 = *a3;
          v83 = strlen(*a3);
          switch(v83)
          {
            case 1uLL:
              goto LABEL_167;
            case 0x801uLL:
              goto LABEL_429;
            case 0uLL:
              goto LABEL_432;
          }

          *&v173 = v82 + 1;
          *(&v173 + 1) = v83 - 1;
          v84 = 4;
          v85 = " 0123456789";
          v86 = 1;
          v87 = 11;
          goto LABEL_166;
        case 19:
          v23 = *a3;
          v80 = strlen(*a3);
          if (!v80)
          {
            goto LABEL_432;
          }

          v25 = v80 - 1;
          if (v80 == 2049)
          {
            goto LABEL_429;
          }

          break;
        case 22:
          v23 = *a3;
          v24 = strlen(*a3);
          if (!v24)
          {
            goto LABEL_432;
          }

          v25 = v24 - 1;
          if (v24 == 2049)
          {
            goto LABEL_429;
          }

          break;
        default:
          goto LABEL_433;
      }
    }

    if (!v25)
    {
      goto LABEL_167;
    }

    v86 = 0;
    v85 = 0;
    v87 = 0;
    *&v173 = v23 + 1;
    *(&v173 + 1) = v25;
    if ((*(v5 + 824) & 0x40) != 0)
    {
      v84 = 8;
    }

    else
    {
      v84 = 7;
    }

LABEL_166:
    BYTE9(v174) = v86;
    *&v175 = v85;
    *(&v175 + 1) = v87;
    BYTE8(v174) = v84;
    v89 = sub_24545BD6C;
LABEL_285:
    *&v174 = v89;
    sub_245457458(v5, &v173);
    goto LABEL_387;
  }

  if (*a2 <= 3u)
  {
    if (v7 == 1)
    {
      sub_24545599C(a1, *a3 != 0);
      goto LABEL_387;
    }

    if (v7 != 2)
    {
      if (v7 != 3)
      {
        goto LABEL_419;
      }

      v22 = *a3;
      if (v22)
      {
        *&v173 = *(a3 + 1);
        *(&v173 + 1) = v22;
        goto LABEL_284;
      }

LABEL_167:
      if ((*(v5 + 824) & 0x40) != 0)
      {
        v90 = *(v5 + 873);
        if (v90 != 7)
        {
          *(*(v5 + 864))++ &= 510 << v90;
          *(v5 + 873) = 7;
        }
      }

      sub_245455E6C(v5, 0);
      goto LABEL_387;
    }

    v38 = *(*(a2 + 1) + 8);
    if (v38 != 4)
    {
      if (v38 == 2)
      {
        v39 = *a3;
LABEL_259:
        if ((*(a1 + 824) & 0x40) != 0)
        {
          v116 = *(a1 + 873);
          if (v116 != 7)
          {
            *(*(a1 + 864))++ &= 510 << v116;
            *(a1 + 873) = 7;
          }
        }

        *&v173 = 0;
        goto LABEL_263;
      }

      if (v38 == 1)
      {
        v39 = *a3;
        goto LABEL_259;
      }
    }

    v39 = *a3;
    goto LABEL_259;
  }

  if (*a2 <= 5u)
  {
    if (v7 != 4)
    {
      goto LABEL_387;
    }

    v56 = *a3;
    if (v56)
    {
      *&v173 = *(a3 + 1);
      *(&v173 + 1) = v56;
      goto LABEL_273;
    }

    goto LABEL_167;
  }

  if (v7 != 6)
  {
    if (v7 != 10)
    {
      goto LABEL_419;
    }

    v32 = *a3;
    if (*(a2 + 4) <= v32)
    {
      sub_24546A59C(a1, 21);
    }

    v33 = *(a2 + 2);
    if (v33 == -1)
    {
      LODWORD(v173) = v32;
      v34 = *(a2 + 8);
    }

    else
    {
      if (v33 <= v32)
      {
        sub_24545599C(v5, 1);
        sub_24545BF80(v5, v32 - *(a2 + 2));
        goto LABEL_387;
      }

      sub_24545599C(v5, 0);
      LODWORD(v173) = v32;
      v34 = *(a2 + 4);
    }

    v114 = v34 - 1;
    goto LABEL_370;
  }

  if ((*(a1 + 824) & 0x40) != 0)
  {
    v57 = *(a1 + 873);
    if (v57 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v57;
      *(a1 + 873) = 7;
    }
  }

  v58 = *(a1 + 864);
  v59 = *(a1 + 856);
  sub_245456040(a1, 1uLL);
  v60 = *(a3 + 4);
  v61 = *a3;
  if (*a3)
  {
    v61 = *(v61 + 2);
  }

  v62 = 0;
  v63 = v58 - v59;
  v64 = 40 * v61;
  v65 = a3;
  while (1)
  {
    v65 = *v65;
    if (!v65)
    {
      break;
    }

    v66 = v62;
    v62 = 1;
    if (v66)
    {
      v61 = *(v65 + 2);
      break;
    }
  }

  v67 = &v61[v64];
  if ((&v61[v64] & 0xFFFFFF80) != 0)
  {
    sub_24546A59C(v5, 28);
  }

  sub_245455E6C(v5, v67);
  if (v60 >= 3)
  {
    v68 = 2;
    v69 = 3;
    do
    {
      v70 = *a3;
      v71 = v69;
      if (*a3)
      {
        while (--v71)
        {
          v70 = *v70;
          if (!v70)
          {
            goto LABEL_139;
          }
        }

        v67 = *(v70 + 2);
      }

LABEL_139:
      if (v67 >= 0x80)
      {
        v73 = 0;
        v74 = v67;
        do
        {
          v75 = v74 >> 14;
          v74 >>= 7;
          v73 += 7;
        }

        while (v75);
        for (; v73; v73 -= 7)
        {
          sub_245455E6C(v5, (v67 >> v73) | 0x80);
        }

        v72 = v67 & 0x7F;
      }

      else
      {
        v72 = v67;
      }

      sub_245455E6C(v5, v72);
      ++v68;
      ++v69;
    }

    while (v68 != v60);
  }

  v76 = *(v5 + 856);
  v77 = *(v5 + 864) - v76 + ~v63;
  if (v77 > 0x7F)
  {
    if (*(v5 + 873) == 7)
    {
      sub_245456364(v5, v77);
    }

    else
    {
      sub_2454569B4(v5, v77);
    }
  }

  else
  {
    v78 = (v76 + v63);
    v79 = *(v5 + 873);
    if (v79 == 7)
    {
      *v78 = v77;
    }

    else
    {
      *v78 |= v77 >> (7 - v79);
      v78[1] |= v77 << (*(v5 + 873) + 1);
    }
  }

LABEL_387:
  *(v5 + 808) = v6;
}

void sub_24545909C(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 808);
  *(a1 + 808) = a2;
  v9 = *a2;
  if (v9 <= 0x1F)
  {
    if (*a2 <= 0xFu)
    {
      if (*a2 > 3u)
      {
        if (*a2 <= 5u)
        {
          if (v9 != 4)
          {
            *a3 = 0;
            goto LABEL_452;
          }

          v174 = 0uLL;
          v16 = sub_24545B988;
          goto LABEL_150;
        }

        if (v9 == 6)
        {
          if ((*(a1 + 824) & 0x40) != 0)
          {
            v61 = *(a1 + 873);
            if (v61 != 7)
            {
              *(*(a1 + 864))++ &= 510 << v61;
              *(a1 + 873) = 7;
            }
          }

          v62 = sub_245455F90(a1);
          if (v62 < 0xC1)
          {
            v80 = v62;
            if ((v62 & 0xC0) == 0x80)
            {
              v81 = sub_245455F90(a1) & 0xFFFFC0FF | ((v62 & 0x3F) << 8);
              v82 = a1;
            }

            else
            {
              if ((v62 & 0x80) != 0)
              {
                v138 = a1;
                v139 = 26;
                goto LABEL_426;
              }

              if (!v62)
              {
                sub_24546A59C(a1, 26);
              }

              v82 = a1;
              v81 = v80;
            }

            sub_24545BBAC(v82, v81, a3);
          }

          else
          {
            --*(a1 + 864);
            v63 = *(a1 + 873);
            if (v63 == 7)
            {
              v64 = sub_2454566F8(a1);
              sub_24545BBAC(a1, v64, a3);
              if (*(a1 + 873) <= 6u)
              {
                ++*(a1 + 864);
                *(a1 + 873) = 7;
              }

              sub_245456364(a1, v64);
            }

            else
            {
              v140 = sub_245456F98(a1);
              sub_24545BBAC(a1, v140, a3);
              if (*(a1 + 873) < v63)
              {
                ++*(a1 + 864);
              }

              *(a1 + 873) = v63;
              sub_2454569B4(a1, v140);
            }
          }

          goto LABEL_452;
        }

        if (v9 != 10)
        {
          goto LABEL_462;
        }

        v171 = 0;
        if (*(a2 + 2) == -1)
        {
          LODWORD(v174) = 0;
          v85 = *(a2 + 8);
        }

        else
        {
          if (sub_245455A60(a1))
          {
            sub_24545BFFC(a1, &v171);
            v35 = v171 + *(a2 + 4);
            goto LABEL_117;
          }

          LODWORD(v174) = 0;
          v85 = *(a2 + 4);
        }

        sub_24545AF1C(a1, v85 - 1, &v174);
        v147 = v174;
        *a3 = v174;
        if (*(a2 + 4) <= v147)
        {
          v138 = a1;
          v139 = 21;
          goto LABEL_426;
        }

        goto LABEL_452;
      }

      if (v9 == 1)
      {
        *a3 = sub_245455A60(a1);
        goto LABEL_452;
      }

      if (v9 != 2)
      {
        if (v9 != 3)
        {
          goto LABEL_462;
        }

        v174 = 0uLL;
        v16 = sub_24545B4F4;
LABEL_150:
        *&v175 = v16;
        sub_2454576CC(a1, &v174);
        v59 = DWORD2(v174);
        v58 = v174;
        v11 = *(&v174 + 1) == 0;
        v60 = *(&v174 + 1) != 0;
        *(a1 + 880) = 0;
        if (v11)
        {
          v58 = 0;
        }

        *(a3 + 8) = v58;
        *a3 = v59;
        *(a3 + 4) = 8 * v60;
        goto LABEL_452;
      }

      if ((*(a1 + 824) & 0x40) != 0)
      {
        v39 = *(a1 + 873);
        if (v39 != 7)
        {
          *(*(a1 + 864))++ &= 510 << v39;
          *(a1 + 873) = 7;
        }
      }

      *&v174 = 0;
      sub_24545AB30(a1, &v174);
      LOBYTE(v35) = BYTE4(v174);
      v40 = *(*(a2 + 1) + 8);
      if (v40 == 4)
      {
        *a3 = DWORD1(v174);
        goto LABEL_452;
      }

      if (v40 == 2)
      {
        *a3 = WORD2(v174);
        goto LABEL_452;
      }

      if (v40 != 1)
      {
        *a3 = SDWORD1(v174);
        goto LABEL_452;
      }

LABEL_117:
      *a3 = v35;
      goto LABEL_452;
    }

    if (*a2 > 0x15u)
    {
      v11 = v9 - 22 < 3 || v9 == 26;
      if (!v11)
      {
        goto LABEL_462;
      }

LABEL_47:
      v175 = 0u;
      v176 = 0u;
      v174 = 0u;
      if (v9 == 18)
      {
        BYTE8(v175) = 4;
        *&v175 = sub_24545BE4C;
        sub_2454576CC(a1, &v174);
        v17 = *(&v174 + 1);
        if (!*(&v174 + 1))
        {
          goto LABEL_60;
        }

        v18 = v174;
        do
        {
          if (*v18)
          {
            v19 = *v18 + 47;
          }

          else
          {
            v19 = 32;
          }

          *v18++ = v19;
          --v17;
        }

        while (v17);
      }

      else
      {
        if ((*(a1 + 824) & 0x40) != 0)
        {
          v20 = 8;
        }

        else
        {
          v20 = 7;
        }

        BYTE8(v175) = v20;
        *&v175 = sub_24545BE4C;
        sub_2454576CC(a1, &v174);
      }

      v17 = *(&v174 + 1);
LABEL_60:
      v21 = v174;
      v22 = *a2 & 0x1F;
      if (v22 > 0x16)
      {
        switch(v22)
        {
          case 0x17u:
            if (!v17)
            {
              v23 = 1326908136;
              goto LABEL_233;
            }

            break;
          case 0x18u:
            if (!v17)
            {
              v23 = 3341786207;
              goto LABEL_233;
            }

            break;
          case 0x1Au:
            if (!v17)
            {
              v23 = 3304125818;
              goto LABEL_233;
            }

            break;
          default:
            goto LABEL_463;
        }
      }

      else
      {
        switch(v22)
        {
          case 0x12u:
            if (!v17)
            {
              v23 = 2134339073;
              goto LABEL_233;
            }

            break;
          case 0x13u:
            if (!v17)
            {
              v23 = 3844124297;
              goto LABEL_233;
            }

            break;
          case 0x16u:
            if (!v17)
            {
              v23 = 2639395195;
LABEL_233:
              v86 = malloc_type_calloc(1uLL, 2uLL, v23);
              *v86 = 0;
              *a3 = v86;
              *v86 = 86;
              *(*a3 + 1) = 0;
              goto LABEL_234;
            }

            break;
          default:
            goto LABEL_463;
        }
      }

      *(v174 + v17) = 0;
      *a3 = v21 - 1;
LABEL_234:
      *(a1 + 880) = 0;
      goto LABEL_452;
    }

    if (v9 - 18 < 2)
    {
      goto LABEL_47;
    }

    if (v9 != 16)
    {
      goto LABEL_462;
    }

    v171 = 0;
    v172 = 0;
    v36 = a4;
    v37 = a2[40];
    if ((v37 & 0x10) != 0)
    {
      if (a4)
      {
        v171 = *a4;
      }

      v36 = &v171;
    }

    v38 = (v37 & 1) != 0 && sub_245455A60(a1) != 0;
    v75 = *(a2 + 9);
    if (v75)
    {
      v174 = 0uLL;
      *&v175 = 0;
      if (v75 >> 16)
      {
        sub_24545D1D8(a1, &v174);
      }

      else
      {
        sub_24545D174(a1, &v174, v75);
      }

      v91 = *(a2 + 6);
      if (v91)
      {
        v92 = *(a2 + 2);
        v93 = a1 + 200;
        while (1)
        {
          v94 = *(v92 + 8);
          if (v94 <= 1)
          {
            break;
          }

          if (v94 == 2)
          {
            v99 = sub_24545E088(a1, &v174);
            v100 = *(*(a2 + 1) + 24);
            v101 = v92[2];
            if (v99)
            {
              v102 = v100 + 24 * v101;
              v103 = *(v102 + 8);
              *(a3 + **(v102 + 16)) = 1;
              v104 = *(a1 + 712);
              if (v104 >= 0x40)
              {
                goto LABEL_463;
              }

              goto LABEL_260;
            }

            *(a3 + **(v100 + 24 * v101 + 16)) = 0;
          }

          else
          {
            if (v94 != 3)
            {
              if (v94 == 5)
              {
                sub_24545E088(a1, &v174);
              }

              goto LABEL_262;
            }

            v105 = sub_24545E088(a1, &v174);
            v106 = *(a2 + 1);
            v107 = *(v106 + 24) + 24 * v92[2];
            if (v105)
            {
              v103 = *(v107 + 8);
              *(a3 + **(v107 + 16)) = 1;
              v104 = *(a1 + 712);
              if (v104 >= 0x40)
              {
                goto LABEL_463;
              }

LABEL_260:
              *(v93 + 8 * v104) = v92;
              *(a1 + 712) = v104 + 1;
              v97 = *v92;
              v98 = a3 + v103;
LABEL_261:
              sub_24545909C(a1, v97, v98, v36);
              --*(a1 + 712);
              goto LABEL_262;
            }

            *(a3 + **(v107 + 16)) = 0;
            v108 = (*(v106 + 24) + 24 * v92[2]);
            sub_245454F68((a3 + v108[1]), *(v108[2] + 8), 10, *v108);
          }

LABEL_262:
          if (!v175 && BYTE9(v174) == 1)
          {
            sub_24545E0F8(&v174);
          }

          v92 += 4;
          if (!--v91)
          {
            goto LABEL_269;
          }
        }

        if (*(v92 + 8))
        {
          if (v94 != 1)
          {
            goto LABEL_262;
          }

          sub_24545E088(a1, &v174);
        }

        v95 = *(a1 + 712);
        if (v95 >= 0x40)
        {
          goto LABEL_463;
        }

        v96 = *(*(*(a2 + 1) + 24) + 24 * v92[2] + 8);
        *(v93 + 8 * v95) = v92;
        *(a1 + 712) = v95 + 1;
        v97 = *v92;
        v98 = a3 + v96;
        goto LABEL_261;
      }

LABEL_269:
      v109 = *(a2 + 8);
      if (v109)
      {
        v110 = *(a2 + 4);
        v111 = a1 + 200;
        while (1)
        {
          v112 = *(v110 + 8);
          if (v112 <= 1)
          {
            break;
          }

          if (v112 == 2)
          {
            v117 = sub_24545E088(a1, &v174);
            v118 = *(*(a2 + 1) + 24);
            v119 = v110[2];
            if (v117)
            {
              v120 = v118 + 24 * v119;
              v121 = *(v120 + 8);
              *(a3 + **(v120 + 16)) = 1;
              v122 = *(a1 + 712);
              if (v122 >= 0x40)
              {
                goto LABEL_463;
              }

              goto LABEL_286;
            }

            *(a3 + **(v118 + 24 * v119 + 16)) = 0;
          }

          else
          {
            if (v112 != 3)
            {
              if (v112 == 5)
              {
                sub_24545E088(a1, &v174);
              }

              goto LABEL_288;
            }

            v123 = sub_24545E088(a1, &v174);
            v124 = *(a2 + 1);
            v125 = *(v124 + 24) + 24 * v110[2];
            if (v123)
            {
              v121 = *(v125 + 8);
              *(a3 + **(v125 + 16)) = 1;
              v122 = *(a1 + 712);
              if (v122 >= 0x40)
              {
                goto LABEL_463;
              }

LABEL_286:
              *(v111 + 8 * v122) = v110;
              *(a1 + 712) = v122 + 1;
              v115 = *v110;
              v116 = a3 + v121;
LABEL_287:
              sub_24545909C(a1, v115, v116, v36);
              --*(a1 + 712);
              goto LABEL_288;
            }

            *(a3 + **(v125 + 16)) = 0;
            v126 = (*(v124 + 24) + 24 * v110[2]);
            sub_245454F68((a3 + v126[1]), *(v126[2] + 8), 10, *v126);
          }

LABEL_288:
          if (!v175 && BYTE9(v174) == 1)
          {
            sub_24545E0F8(&v174);
          }

          v110 += 4;
          if (!--v109)
          {
            goto LABEL_295;
          }
        }

        if (*(v110 + 8))
        {
          if (v112 != 1)
          {
            goto LABEL_288;
          }

          sub_24545E088(a1, &v174);
        }

        v113 = *(a1 + 712);
        if (v113 >= 0x40)
        {
          goto LABEL_463;
        }

        v114 = *(*(*(a2 + 1) + 24) + 24 * v110[2] + 8);
        *(v111 + 8 * v113) = v110;
        *(a1 + 712) = v113 + 1;
        v115 = *v110;
        v116 = a3 + v114;
        goto LABEL_287;
      }
    }

    else
    {
      sub_24545D354(a1, a2, a3, v36);
    }

LABEL_295:
    if (v38)
    {
      v174 = 0uLL;
      *&v175 = 0;
      if (sub_245455A60(a1))
      {
        sub_24545D1D8(a1, &v174);
      }

      else
      {
        v149 = sub_245455C80(a1, 6u);
        *&v174 = *(a1 + 864);
        WORD4(v174) = *(a1 + 873);
        v150 = v149 + 1;
        *&v175 = v149 + 1;
        sub_245456168(a1, (v149 + 1) >> 3);
        sub_245455C80(a1, v150 & 7);
      }

      if (!*(a2 + 10) || sub_24545D494(a1, &v174, a2, a3, v36))
      {
        sub_24545DCFC(a1, &v174);
      }
    }

    else
    {
      v127 = *(a2 + 7);
      if (v127)
      {
        sub_24545DD74(a1, a2, v127, a3);
      }
    }

    if ((a2[40] & 0x10) != 0)
    {
      v151 = v172;
      if (v172)
      {
        sub_24545DE88(a1, &v171);
        v151 = v172;
      }

      if (a4)
      {
        if (v151)
        {
          v152 = (a4 + 8);
          v153 = *(a4 + 8);
          if (v153)
          {
            do
            {
              v154 = v153;
              v153 = *(v153 + 32);
            }

            while (v153);
            v152 = (v154 + 32);
          }

          *v152 = v151;
        }

        if (!*a4)
        {
          *a4 = v171;
        }
      }

      else
      {
        if (v151)
        {
          sub_24546A59C(a1, 38);
        }

        while (1)
        {
          v155 = v171;
          if (!v171)
          {
            break;
          }

          v171 = *(v171 + 2);
          sub_24545FFB8(a1, v155, 24);
        }
      }
    }

    goto LABEL_452;
  }

  if (*a2 <= 0x55u)
  {
    if (*a2 <= 0x42u)
    {
      if (*a2 <= 0x3Fu)
      {
        if (v9 != 32)
        {
          if (v9 == 48)
          {
            *&v174 = a3;
            *(&v175 + 1) = 0;
            *&v176 = a2;
            *(&v176 + 1) = a4;
            v10 = *(a1 + 712);
            if (v10 < 0x40)
            {
              *(a1 + 8 * v10 + 200) = a2;
              *(a1 + 712) = v10 + 1;
              *(&v174 + 1) = 0;
              *&v175 = sub_24545E664;
              sub_2454576CC(a1, &v174);
LABEL_451:
              --*(a1 + 712);
              goto LABEL_452;
            }

            goto LABEL_463;
          }

LABEL_462:
          sub_24546A610(a1, 16);
        }

        *&v174 = 0;
        v43 = *(a2 + 3);
        if (*(a2 + 2) == -1)
        {
          v83 = *(a2 + 4);
          if (v83 < 2)
          {
LABEL_356:
            v84 = 0;
LABEL_357:
            v142 = v84;
            if (*(a2 + 4) <= v84)
            {
              sub_24546A59C(a1, 37);
            }

            v143 = v43 + 32 * v142;
            if (*(v143 + 8) == 5)
            {
LABEL_360:
              v138 = a1;
              v139 = 37;
              goto LABEL_426;
            }

            v144 = *(a2 + 1);
            v145 = *(v144 + 48);
            v146 = *(v143 + 16);
            if (v145 > 3)
            {
              if (v145 == 8)
              {
                *a3 = v146;
                goto LABEL_430;
              }
            }

            else
            {
              if (v145 == 1)
              {
                *a3 = v146;
LABEL_430:
                v158 = *(a1 + 712);
                if (v158 < 0x40)
                {
                  v159 = *(v144 + 40);
                  *(a1 + 8 * v158 + 200) = v143;
                  *(a1 + 712) = v158 + 1;
                  sub_24545909C(a1, *v143, a3 + v159, a4);
                  goto LABEL_451;
                }

LABEL_463:
                sub_24546A610(a1, 15);
              }

              if (v145 == 2)
              {
                *a3 = v146;
                goto LABEL_430;
              }
            }

            *a3 = v146;
            goto LABEL_430;
          }
        }

        else
        {
          if (sub_245455A60(a1))
          {
            sub_24545BFFC(a1, &v174);
            v44 = *(a2 + 2) + v174;
            if (v44 < *(a2 + 4))
            {
              v45 = v43 + 32 * v44;
              if (*(v45 + 8) != 5)
              {
                v46 = *(a2 + 1);
                v47 = *(v46 + 48);
                v48 = *(v45 + 16);
                if (v47 > 3)
                {
                  if (v47 == 8)
                  {
                    *a3 = v48;
                    goto LABEL_448;
                  }
                }

                else
                {
                  if (v47 == 1)
                  {
                    *a3 = v48;
                    goto LABEL_448;
                  }

                  if (v47 == 2)
                  {
                    *a3 = v48;
LABEL_448:
                    v168 = *(a1 + 712);
                    if (v168 >= 0x40)
                    {
                      goto LABEL_463;
                    }

                    v169 = *(v46 + 40);
                    *(a1 + 8 * v168 + 200) = v45;
                    *(a1 + 712) = v168 + 1;
                    v164 = *v45;
                    v165 = a3 + v169;
                    v166 = a1;
                    v167 = a4;
LABEL_450:
                    sub_24545E1FC(v166, v164, v165, v167);
                    goto LABEL_451;
                  }
                }

                *a3 = v48;
                goto LABEL_448;
              }

              goto LABEL_360;
            }

            v148 = *(*(a2 + 1) + 48);
            if (v148 > 3)
            {
              if (v148 == 8)
              {
                *a3 = v44;
                goto LABEL_148;
              }
            }

            else
            {
              if (v148 == 1)
              {
                *a3 = v44;
                goto LABEL_148;
              }

              if (v148 == 2)
              {
                *a3 = v44;
                goto LABEL_148;
              }
            }

            *a3 = v44;
            goto LABEL_148;
          }

          v83 = *(a2 + 2);
          if (v83 < 2)
          {
            goto LABEL_356;
          }
        }

        LODWORD(v171) = 0;
        sub_24545AF1C(a1, v83 - 1, &v171);
        v84 = v171;
        goto LABEL_357;
      }

      if (v9 != 64)
      {
        if (v9 != 66)
        {
          goto LABEL_462;
        }

        v32 = a2[16];
        if (a2[17] == 1)
        {
          if (sub_245455A60(a1))
          {
            goto LABEL_91;
          }

          v32 = a2[16];
        }

        if ((v32 & 0x20) != 0)
        {
          LODWORD(v174) = 0;
          if ((v32 & 0x80) != 0)
          {
            sub_24545AF1C(a1, *(a2 + 8) - *(a2 + 6), &v174);
          }

          else
          {
            sub_24545B130(a1, &v174);
          }

          v34 = *(a2 + 3) + v174;
LABEL_401:
          LODWORD(v171) = v34;
          v157 = *(*(a2 + 1) + 8);
          switch(v157)
          {
            case 4:
              *a3 = v34;
              break;
            case 2:
              *a3 = v34;
              break;
            case 1:
              *a3 = v34;
              break;
            default:
              *a3 = v34;
              break;
          }

          if (!a2[17])
          {
            sub_24545F948(a1, a2, &v171);
          }

          goto LABEL_452;
        }

LABEL_91:
        if ((*(a1 + 824) & 0x40) != 0)
        {
          v33 = *(a1 + 873);
          if (v33 != 7)
          {
            *(*(a1 + 864))++ &= 510 << v33;
            *(a1 + 873) = 7;
          }
        }

        *&v174 = 0;
        sub_24545AB30(a1, &v174);
        LODWORD(v34) = DWORD1(v174);
        goto LABEL_401;
      }

      v53 = *a4;
      if (!*a4)
      {
LABEL_147:
        v55 = *(a1 + 864);
        v56 = *(a1 + 873);
        v57 = sub_24545FF18(a1, 0x28uLL);
        *v57 = v55;
        v57[8] = v56;
        *(v57 + 2) = a2;
        *(v57 + 3) = a3;
        *(v57 + 4) = *(a4 + 8);
        *(a4 + 8) = v57;
LABEL_148:
        sub_24545E478(a1);
        goto LABEL_452;
      }

      while (1)
      {
        v54 = a2;
        do
        {
          v54 = *(v54 + 2);
        }

        while (*v54 == 128);
        if (v54 == *v53)
        {
          break;
        }

        v53 = *(v53 + 2);
        if (!v53)
        {
          goto LABEL_147;
        }
      }

      *&v174 = 0;
      v87 = sub_24545E94C(a1, a2, *(v53 + 1), &v174);
      if (!v87)
      {
        v138 = a1;
        v139 = 39;
        goto LABEL_426;
      }

      v88 = *(a2 + 1);
      v89 = *(v88 + 48);
      v90 = v87[2];
      if (v89 > 3)
      {
        if (v89 == 8)
        {
          *a3 = v90;
          goto LABEL_443;
        }
      }

      else
      {
        if (v89 == 1)
        {
          *a3 = v90;
          goto LABEL_443;
        }

        if (v89 == 2)
        {
          *a3 = v90;
LABEL_443:
          v162 = *(a1 + 712);
          if (v162 >= 0x40)
          {
            goto LABEL_463;
          }

          v163 = *(v88 + 40);
          *(a1 + 8 * v162 + 200) = v87;
          *(a1 + 712) = v162 + 1;
          v164 = *v87;
          v165 = a3 + v163;
          v166 = a1;
          v167 = 0;
          goto LABEL_450;
        }
      }

      *a3 = v90;
      goto LABEL_443;
    }

    if (v9 - 82 >= 2)
    {
      if (v9 != 67)
      {
        if (v9 != 68)
        {
          goto LABEL_462;
        }

        v174 = 0uLL;
        *&v175 = 0;
        if (a2[17] == 1 && sub_245455A60(a1))
        {
          goto LABEL_31;
        }

        v12 = a2[16];
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        if ((v12 & 2) != 0)
        {
          v129 = *(a2 + 3);
          if (!v129)
          {
            goto LABEL_138;
          }

          if (v129 <= 2)
          {
LABEL_412:
            sub_24545B988(a1, v129, &v174);
            goto LABEL_138;
          }

          if (!(v129 >> 16))
          {
            if ((*(a1 + 824) & 0x40) != 0)
            {
              v160 = *(a1 + 873);
              if (v160 != 7)
              {
                *(*(a1 + 864))++ &= 510 << v160;
                *(a1 + 873) = 7;
                v129 = *(a2 + 3);
              }
            }

            goto LABEL_412;
          }
        }

        else
        {
          v128 = *(a2 + 4);
          if (!(v128 >> 16))
          {
            LODWORD(v171) = 0;
            sub_24545AF1C(a1, v128 - *(a2 + 6), &v171);
            v129 = *(a2 + 3) + v171;
            *(&v174 + 1) = v129;
            if ((*(a1 + 824) & 0x40) != 0)
            {
              v130 = *(a1 + 873);
              if (v130 != 7)
              {
                *(*(a1 + 864))++ &= 510 << v130;
                *(a1 + 873) = 7;
                v129 = *(&v174 + 1);
              }
            }

            goto LABEL_412;
          }
        }

LABEL_31:
        v13 = sub_24545B988;
LABEL_137:
        *&v175 = v13;
        sub_2454576CC(a1, &v174);
LABEL_138:
        v50 = *(&v174 + 1);
        v51 = v174;
        v11 = *(&v174 + 1) == 0;
        v52 = *(&v174 + 1) != 0;
        *(a1 + 880) = 0;
        if (v11)
        {
          v51 = 0;
        }

        *(a3 + 8) = v51;
        *a3 = v50;
        *(a3 + 4) = 8 * v52;
        if (!a2[17])
        {
          sub_24545F980(a1, a2, v50);
        }

        goto LABEL_452;
      }

      v174 = 0uLL;
      *&v175 = 0;
      if (a2[17] == 1 && sub_245455A60(a1) || (v49 = a2[16], (v49 & 0x80000000) == 0))
      {
LABEL_136:
        v13 = sub_24545B4F4;
        goto LABEL_137;
      }

      if ((v49 & 2) != 0)
      {
        v132 = *(a2 + 3);
        if (!v132)
        {
          goto LABEL_138;
        }

        if (v132 > 0x10)
        {
          if (v132 >> 16)
          {
            goto LABEL_136;
          }

          if ((*(a1 + 824) & 0x40) != 0)
          {
            v161 = *(a1 + 873);
            if (v161 != 7)
            {
              *(*(a1 + 864))++ &= 510 << v161;
              *(a1 + 873) = 7;
              v132 = *(a2 + 3);
            }
          }
        }
      }

      else
      {
        v131 = *(a2 + 4);
        if (v131 >> 16)
        {
          goto LABEL_136;
        }

        LODWORD(v171) = 0;
        sub_24545AF1C(a1, v131 - *(a2 + 6), &v171);
        v132 = *(a2 + 3) + v171;
        *(&v174 + 1) = v132;
        if ((*(a1 + 824) & 0x40) != 0)
        {
          v133 = *(a1 + 873);
          if (v133 != 7)
          {
            *(*(a1 + 864))++ &= 510 << v133;
            *(a1 + 873) = 7;
            v132 = *(&v174 + 1);
          }
        }
      }

      sub_24545B4F4(a1, v132, &v174);
      goto LABEL_138;
    }

LABEL_36:
    v173 = 0;
    v175 = 0u;
    v176 = 0u;
    v174 = 0u;
    if (a2[33] == 1 && sub_245455A60(a1))
    {
      *(&v176 + 1) = 0;
      if ((*(a1 + 824) & 0x40) != 0)
      {
        v15 = 8;
      }

      else
      {
        v15 = 7;
      }

      BYTE8(v175) = v15;
      goto LABEL_179;
    }

    v24 = *(a2 + 3);
    if (v24)
    {
      *&v176 = *(a2 + 2);
      *(&v176 + 1) = v24;
      v25 = (v24 - 1);
      if (v25)
      {
        v25 = 32 - __clz(v25);
        BYTE8(v175) = v25;
        if ((*(a1 + 824) & 0x40) == 0)
        {
          goto LABEL_178;
        }

        LOBYTE(v26) = 1;
        v27 = v25;
        do
        {
          v28 = v27;
          v27 >>= 1;
          LOBYTE(v26) = 2 * v26;
        }

        while (v28 > 1);
        v26 = v26;
      }

      else
      {
        BYTE8(v175) = 0;
        if ((*(a1 + 824) & 0x40) == 0)
        {
          goto LABEL_178;
        }

        v25 = 0;
        v26 = 1;
      }

      if (v26 >> 1 >= v25)
      {
        LOBYTE(v25) = v26 >> 1;
      }

      else
      {
        LOBYTE(v25) = v26;
      }
    }

    else if ((*a2 & 0x1F) == 0x12)
    {
      *&v176 = " 0123456789";
      *(&v176 + 1) = 11;
      LOBYTE(v25) = 4;
    }

    else
    {
      *(&v176 + 1) = 0;
      if ((*(a1 + 824) & 0x40) != 0)
      {
        LOBYTE(v25) = 8;
      }

      else
      {
        LOBYTE(v25) = 7;
      }
    }

    BYTE8(v175) = v25;
LABEL_178:
    v65 = a2[32];
    if ((v65 & 0x80000000) == 0)
    {
LABEL_179:
      *&v175 = sub_24545BE4C;
      sub_2454576CC(a1, &v174);
LABEL_180:
      if (*(&v176 + 1) && *(v176 + *(&v176 + 1) - 1) > ~(-1 << SBYTE8(v175)))
      {
        v67 = *(&v174 + 1);
        v66 = v174;
        if (*(&v174 + 1))
        {
          while (v66)
          {
            *v66 = *(v176 + *v66);
            ++v66;
            if (!--v67)
            {
              goto LABEL_185;
            }
          }

LABEL_453:
          sub_24546A610(a1, 44);
        }

        v68 = 0;
      }

      else
      {
LABEL_185:
        v68 = *(&v174 + 1);
        v66 = v174;
      }

      v172 = v68;
      if (!v66)
      {
        goto LABEL_453;
      }

      v171 = v66;
      v69 = *a2 & 0x1F;
      if (v69 > 0x16)
      {
        switch(v69)
        {
          case 0x17u:
            if (!v68)
            {
              v70 = 2757014489;
              goto LABEL_349;
            }

            break;
          case 0x18u:
            if (!v68)
            {
              v70 = 1815498200;
              goto LABEL_349;
            }

            break;
          case 0x1Au:
            if (!v68)
            {
              v70 = 2755792771;
              goto LABEL_349;
            }

            break;
          default:
            goto LABEL_463;
        }
      }

      else
      {
        switch(v69)
        {
          case 0x12u:
            if (!v68)
            {
              v70 = 3609762639;
              goto LABEL_349;
            }

            break;
          case 0x13u:
            if (!v68)
            {
              v70 = 2686394765;
              goto LABEL_349;
            }

            break;
          case 0x16u:
            if (!v68)
            {
              v70 = 2957751701;
LABEL_349:
              v141 = malloc_type_calloc(1uLL, 2uLL, v70);
              v74 = 0;
              *v141 = 0;
              *a3 = v141;
              *v141 = 86;
              *(*a3 + 1) = 0;
              goto LABEL_350;
            }

            break;
          default:
            goto LABEL_463;
        }
      }

      v66[v68] = 0;
      *a3 = v66 - 1;
      v74 = 1;
LABEL_350:
      LOBYTE(v173) = v74;
      *(a1 + 880) = 0;
      if (!a2[33])
      {
        sub_24545F9D4(a1, a2, &v171);
        v74 = v173;
        v68 = v172;
      }

      if (!v74 && v68)
      {
        free(v171);
      }

      goto LABEL_452;
    }

    if ((v65 & 2) != 0)
    {
      v72 = *(a2 + 5);
      if (!v72)
      {
        goto LABEL_180;
      }

      if (v72 > 2)
      {
        if (v72 >> 16)
        {
          goto LABEL_179;
        }

        if ((*(a1 + 824) & 0x40) != 0 && v72 * v25 >= 0x11)
        {
          v156 = *(a1 + 873);
          if (v156 != 7)
          {
            *(*(a1 + 864))++ &= 510 << v156;
            *(a1 + 873) = 7;
            v72 = *(a2 + 5);
          }
        }
      }
    }

    else
    {
      v71 = *(a2 + 6) - *(a2 + 5);
      if ((v71 + 1) >> 16)
      {
        goto LABEL_179;
      }

      v170 = 0;
      sub_24545AF1C(a1, v71, &v170);
      v72 = *(a2 + 5) + v170;
      *(&v174 + 1) = v72;
      if ((*(a1 + 824) & 0x40) != 0)
      {
        v73 = *(a1 + 873);
        if (v73 != 7)
        {
          *(*(a1 + 864))++ &= 510 << v73;
          *(a1 + 873) = 7;
          v72 = *(&v174 + 1);
        }
      }
    }

    sub_24545BE4C(a1, v72, &v174);
    goto LABEL_180;
  }

  if (*a2 > 0x6Fu)
  {
    if (*a2 > 0x9Fu)
    {
      if (v9 != 160)
      {
        if (v9 != 162)
        {
          goto LABEL_462;
        }

        v29 = a2[16];
        if ((*(a1 + 824) & 0x40) != 0)
        {
          if (v29 < 3)
          {
            v76 = 2;
          }

          else
          {
            v76 = 3;
          }

          v77 = sub_245455C80(a1, v76);
          v78 = *(a1 + 873);
          if (v78 != 7)
          {
            *(*(a1 + 864))++ &= 510 << v78;
            *(a1 + 873) = 7;
          }

          if (v77 == 4)
          {
            v79 = sub_245455F90(a1) << 32;
          }

          else
          {
            v79 = 0;
          }
        }

        else
        {
          if (v29 < 3)
          {
            v31 = 0;
          }

          else
          {
            if (v29 == 16)
            {
              v30 = 7;
            }

            else
            {
              v30 = 1;
            }

            v31 = sub_245455C80(a1, v30) << 32;
          }

          v79 = sub_245455C80(a1, 0x20u) + v31;
        }

        v136 = v79 - 0x80000000;
        if (v29 == 3)
        {
          v79 -= 0x100000000;
        }

        if (v29 == 1)
        {
          v79 = v136;
        }

        v137 = a2[16];
        if (v137 != 3 && (v137 == 2 || v137 == 1))
        {
          *a3 = v79;
        }

        else
        {
          *a3 = v79;
        }

        if (v29 == 1)
        {
          if (v79 == v79)
          {
            goto LABEL_452;
          }
        }

        else if ((v29 != 2 || !HIDWORD(v79)) && (v29 != 3 || v79 - 0x100000000 >= 0xFFFFFFFE00000000) && (v29 != 4 || !(v79 >> 33)) && (v29 != 16 || !(v79 >> 39)))
        {
          goto LABEL_452;
        }

        v138 = a1;
        v139 = 18;
LABEL_426:
        sub_24546A59C(v138, v139);
        goto LABEL_452;
      }

LABEL_100:
      sub_24545909C(a1, *(a2 + 2), a3, a4);
      goto LABEL_452;
    }

    if (v9 != 112)
    {
      if (v9 != 128)
      {
        goto LABEL_462;
      }

      goto LABEL_100;
    }

    v174 = a3;
    v175 = 0uLL;
    *&v176 = a2;
    *(&v176 + 1) = a4;
    v41 = *(a1 + 712);
    if (v41 >= 0x40)
    {
      goto LABEL_463;
    }

    *(a1 + 8 * v41 + 200) = a2;
    *(a1 + 712) = v41 + 1;
    if (a2[25] == 1 && sub_245455A60(a1))
    {
      goto LABEL_122;
    }

    v42 = a2[24];
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

    if ((v42 & 2) != 0)
    {
      v135 = *(a2 + 4);
      if (!v135)
      {
        goto LABEL_123;
      }

      if (!(v135 >> 16))
      {
LABEL_418:
        sub_24545E664(a1, v135, &v174);
LABEL_123:
        --*(a1 + 712);
        if (!a2[25])
        {
          sub_24545FAD0(a1, a2, *(&v175 + 1));
        }

        goto LABEL_452;
      }
    }

    else
    {
      v134 = *(a2 + 5);
      if (!(v134 >> 16))
      {
        LODWORD(v171) = 0;
        sub_24545AF1C(a1, v134 - *(a2 + 8), &v171);
        v135 = *(a2 + 4) + v171;
        *(&v174 + 1) = v135;
        goto LABEL_418;
      }
    }

LABEL_122:
    *&v175 = sub_24545E664;
    sub_2454576CC(a1, &v174);
    goto LABEL_123;
  }

  if (v9 == 86 || v9 == 90)
  {
    goto LABEL_36;
  }

  if (v9 != 96)
  {
    goto LABEL_462;
  }

  sub_24545909C(a1, *(a2 + 2), a3, 0);
  v14 = sub_24545FF18(a1, 0x18uLL);
  *v14 = a2;
  v14[1] = a3;
  v14[2] = *a4;
  *a4 = v14;
LABEL_452:
  *(a1 + 808) = v8;
}

char *sub_24545AA58(char *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 >= 0x80)
  {
    if (v4 >= 0x8000)
    {
      if (v4 >= 0x800000)
      {
        sub_245455E6C(a1, 4u);
        v5 = *(a2 + 4);
        if (*a2)
        {
          v5 = ~v5;
          *(a2 + 4) = v5;
        }
      }

      else
      {
        if (*a2)
        {
          v4 = 0xFFFFFF - v4;
          *(a2 + 4) = v4;
        }

        v5 = v4 | 0x3000000;
      }

      v6 = 32;
    }

    else
    {
      if (*a2)
      {
        v4 = 0xFFFF - v4;
        *(a2 + 4) = v4;
      }

      v5 = v4 | 0x20000;
      v6 = 24;
    }
  }

  else
  {
    if (*a2)
    {
      v4 = 255 - v4;
      *(a2 + 4) = v4;
    }

    v5 = v4 | 0x100;
    v6 = 16;
  }

  return sub_245455ACC(a1, v5, v6);
}

unint64_t sub_24545AB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_245455F90(a1);
  if (v4 - 5 <= 0xFFFFFFFB)
  {
    sub_24546A59C(a1, 24);
  }

  v5 = 8 * v4;
  result = sub_245455C80(a1, (8 * v4));
  *(a2 + 4) = result;
  if (v4 <= 3 && (result & (128 << (v5 - 8))) != 0)
  {
    *(a2 + 4) = (-1 << v5) | result;
  }

  return result;
}

char *sub_24545ABC0(char *result, unsigned int a2, int *a3)
{
  v4 = result;
  if ((result[824] & 0x40) != 0)
  {
    if (!a2)
    {
      return result;
    }

    if (a2 > 0xFE)
    {
      if (a2 == 255)
      {
        v9 = result[873];
        if (v9 == 7)
        {
          v10 = *(result + 108);
        }

        else
        {
          **(result + 108) &= 510 << v9;
          v10 = (*(result + 108) + 1);
          *(result + 108) = v10;
          result[873] = 7;
        }

        if (v10 == *(result + 106))
        {
          v13 = *(result + 105);
          v14 = *(result + 107) - v13;
          v15 = &v10[-v13];
          result = sub_245478BC8(result, 1);
          *(v4 + 105) = result;
          v10 = &v15[result];
          *(v4 + 106) = &v15[result + 1];
          *(v4 + 107) = &result[v14];
          *(v4 + 108) = &v15[result];
        }

        *v10 = *a3;
      }

      else
      {
        if (HIWORD(a2))
        {
          v16 = *a3;
          v17 = 64 - (__clz(a2 | 1) | 0x20);
          if ((v17 & 7) != 0)
          {
            v18 = (v17 >> 3) + 1;
          }

          else
          {
            v18 = v17 >> 3;
          }

          v19 = 32 - __clz((v18 - 1) & 0xFE | 1);
          if (v16)
          {
            v20 = 64;
          }

          else
          {
            v20 = 63;
          }

          v21 = __clz(v16 | 1) | 0x20;
          if (((v20 - v21) & 7) != 0)
          {
            v22 = ((v20 - v21) >> 3) + 1;
          }

          else
          {
            v22 = (v20 - v21) >> 3;
          }

          if (v20 == v21)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }

          sub_245455ACC(result, v23 - 1, v19);
          v24 = v4[873];
          if (v24 != 7)
          {
            *(*(v4 + 108))++ &= 510 << v24;
            v4[873] = 7;
          }

          v7 = *a3;
          v8 = 8 * (v23 & 0x1F);
          goto LABEL_9;
        }

        v11 = result[873];
        if (v11 == 7)
        {
          v12 = *(result + 108);
        }

        else
        {
          **(result + 108) &= 510 << v11;
          v12 = (*(result + 108) + 1);
          *(result + 108) = v12;
          result[873] = 7;
        }

        v25 = *(result + 106) - v12;
        if (v25 <= 1)
        {
          result = sub_245455894(result, 2 - v25);
          v12 = *(v4 + 108);
        }

        *v12 = BYTE1(*a3);
        v26 = *(v4 + 108);
        *(v4 + 108) = v26 + 1;
        *(v26 + 1) = *a3;
      }

      ++*(v4 + 108);
      return result;
    }

    v8 = 32 - __clz(a2 | 1);
    v7 = *a3;
  }

  else
  {
    v5 = __clz(a2 | 1);
    if (a2)
    {
      v6 = 32;
    }

    else
    {
      v6 = 31;
    }

    v7 = *a3;
    v8 = (v6 - v5);
  }

LABEL_9:

  return sub_245455ACC(v4, v7, v8);
}

char *sub_24545AE50(uint64_t a1, unsigned int *a2)
{
  if ((*(a1 + 824) & 0x40) != 0)
  {
    v4 = *(a1 + 873);
    if (v4 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v4;
      *(a1 + 873) = 7;
    }
  }

  v5 = *a2;
  if (*a2 >= 0x100)
  {
    if (v5 >= 0x10000)
    {
      if (HIBYTE(v5))
      {
        sub_245455E6C(a1, 4u);
        v6 = *a2;
      }

      else
      {
        v6 = v5 | 0x3000000;
      }

      v7 = 32;
    }

    else
    {
      v6 = v5 | 0x20000;
      v7 = 24;
    }
  }

  else
  {
    v6 = v5 | 0x100;
    v7 = 16;
  }

  return sub_245455ACC(a1, v6, v7);
}

uint64_t sub_24545AF1C(uint64_t result, unsigned int a2, int *a3)
{
  v4 = result;
  if ((*(result + 824) & 0x40) == 0)
  {
    v5 = __clz(a2 | 1);
    if (a2)
    {
      v6 = 32;
    }

    else
    {
      v6 = 31;
    }

    v7 = (v6 - v5);
    goto LABEL_9;
  }

  if (a2)
  {
    if (a2 <= 0xFE)
    {
      v7 = 32 - __clz(a2 | 1);
LABEL_9:
      result = sub_245455C80(v4, v7);
      *a3 = result;
      return result;
    }

    if (a2 == 255)
    {
      v8 = *(result + 873);
      if (v8 == 7)
      {
        v9 = *(result + 864);
      }

      else
      {
        **(result + 864) &= 510 << v8;
        v9 = (*(result + 864) + 1);
        *(result + 864) = v9;
        *(result + 873) = 7;
      }

      if (v9 == *(result + 856))
      {
        result = sub_245455908(result, 1);
        v9 = *(v4 + 864);
      }

      v13 = *v9;
      v12 = v9 + 1;
      *a3 = v13;
    }

    else
    {
      if (HIWORD(a2))
      {
        v14 = 64 - (__clz(a2 | 1) | 0x20);
        if ((v14 & 7) != 0)
        {
          v15 = (v14 >> 3) + 1;
        }

        else
        {
          v15 = v14 >> 3;
        }

        v16 = sub_245455C80(result, 32 - __clz((v15 - 1) & 0xFE | 1));
        *a3 = v16;
        v17 = *(v4 + 873);
        if (v17 != 7)
        {
          *(*(v4 + 864))++ &= 510 << v17;
          *(v4 + 873) = 7;
          v16 = *a3;
        }

        v7 = (8 * v16 + 8) & 0xF8;
        goto LABEL_9;
      }

      v10 = *(result + 873);
      if (v10 == 7)
      {
        v11 = *(result + 864);
      }

      else
      {
        **(result + 864) &= 510 << v10;
        v11 = (*(result + 864) + 1);
        *(result + 864) = v11;
        *(result + 873) = 7;
      }

      v18 = *(result + 856) - v11;
      if (v18 <= 1)
      {
        result = sub_245455908(result, 2 - v18);
        v11 = *(v4 + 864);
      }

      v19 = *v11;
      *a3 = v19 << 8;
      *(v4 + 864) = v11 + 1;
      *a3 = v11[1] | (v19 << 8);
      v12 = v11 + 2;
    }

    *(v4 + 864) = v12;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_24545B130(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 824) & 0x40) != 0)
  {
    v4 = *(a1 + 873);
    if (v4 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v4;
      *(a1 + 873) = 7;
    }
  }

  v5 = sub_245455F90(a1);
  if ((v5 - 5) <= 0xFBu)
  {
    sub_24546A59C(a1, 24);
  }

  result = sub_245455C80(a1, 8 * (v5 & 0x1Fu));
  *a2 = result;
  return result;
}

char *sub_24545B1D8(char *result, unint64_t a2, char **a3)
{
  v4 = result;
  v5 = a2 & 7;
  v6 = *a3;
  v7 = *a3;
  if (a2 >= 8)
  {
    v9 = a2 >> 3;
    v10 = result[873];
    v11 = *(result + 108);
    v12 = &v11[a2 >> 3];
    if (v10 == 7)
    {
      v13 = *(result + 106);
      if (v12 > v13)
      {
        v14 = &v11[v9 - v13];
        v15 = *(result + 105);
        v16 = *(result + 107) - v15;
        v17 = &v11[-v15];
        v18 = v13 - v15;
        result = sub_245478BC8(result, v14);
        *(v4 + 105) = result;
        *(v4 + 106) = &result[v18 + v14];
        *(v4 + 107) = &result[v16];
        v11 = &v17[result];
        *(v4 + 108) = &v17[result];
      }

      v19 = 0;
      if (v9 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = a2 >> 3;
      }

      do
      {
        v21 = 0;
        *v11 = 0;
        do
        {
          v22 = *v7++;
          v23 = v21;
          **(v4 + 108) |= v22 << (7 - v21++);
        }

        while (v23 < 7);
        ++v19;
        v11 = (*(v4 + 108) + 1);
        *(v4 + 108) = v11;
      }

      while (v19 != v20);
    }

    else
    {
      v24 = *(result + 106);
      if ((v12 + 1) > v24)
      {
        v25 = &v11[v9 - v24 + 1];
        v26 = *(result + 105);
        v27 = *(result + 107) - v26;
        v45 = &v11[-v26];
        v28 = v24 - v26;
        result = sub_245478BC8(result, v25);
        *(v4 + 105) = result;
        *(v4 + 106) = &result[v28 + v25];
        *(v4 + 107) = &result[v27];
        v11 = &v45[result];
        *(v4 + 108) = &v45[result];
        LOBYTE(v10) = v4[873];
      }

      v29 = 0;
      if (((v10 + 1) & 0xFE) != 0)
      {
        v30 = (v10 + 1);
      }

      else
      {
        v30 = 1;
      }

      v31 = 7;
      v32 = v30;
      do
      {
        v33 = *v7++;
        v29 |= v33 << v31--;
        --v32;
      }

      while (v32);
      v7 = &v6[v30];
      *v11 |= v29 >> (7 - v10);
      v34 = (*(v4 + 108) + 1);
      *(v4 + 108) = v34;
      if (v9 != 1)
      {
        v35 = 0;
        do
        {
          v36 = 0;
          *v34 = 0;
          do
          {
            v37 = *v7++;
            v38 = v36;
            **(v4 + 108) |= v37 << (7 - v36++);
          }

          while (v38 < 7);
          ++v35;
          v34 = (*(v4 + 108) + 1);
          *(v4 + 108) = v34;
        }

        while (v35 != v9 - 1);
      }

      *v34 = 0;
      if (v4[873] <= 6u)
      {
        v39 = 0;
        do
        {
          v40 = *v7++;
          **(v4 + 108) |= v40 << (7 - v39++);
        }

        while (7 - v4[873] > v39);
      }
    }

    v41 = &a3[1][-a2];
    *a3 += a2;
    a3[1] = v41;
  }

  if (v5)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = *v7++;
      v43 |= (v44 << (7 - v42++));
    }

    while (v5 > v42);

    return sub_245455ACC(v4, v43 >> (8 - v5), v5);
  }

  return result;
}

void sub_24545B4F4(uint64_t a1, size_t size, uint64_t a3)
{
  if (size <= 0x10000)
  {
    if (size)
    {
      v6 = *(a1 + 872);
      if (v6 == 7)
      {
        v7 = *(a1 + 873) + 8 * (*(a1 + 856) - *(a1 + 864)) - 7;
      }

      else
      {
        v7 = *(a1 + 873) - v6 + 8 * (~*(a1 + 864) + *(a1 + 856));
      }

      v8 = size >= v7;
      v9 = size - v7;
      if (v9 != 0 && v8)
      {
        if ((v9 & 7) != 0)
        {
          v10 = (v9 >> 3) + 1;
        }

        else
        {
          v10 = v9 >> 3;
        }

        sub_245455908(a1, v10);
      }

      v11 = *a3;
      if (*a3)
      {
        v39 = *a3;
        v12 = *(a1 + 944);
        if (v12 && (v13 = *v12) != 0 && (v14 = v13[1]) != 0)
        {
          v15 = v14(*v13, *(a3 + 8) + size);
        }

        else
        {
          v15 = malloc_type_calloc(1uLL, *(a3 + 8) + size, 0x4668289uLL);
          bzero(v15, *(a3 + 8) + size);
        }

        *a3 = v15;
        memcpy(v15, v11, *(a3 + 8));
        v16 = *(a1 + 944);
        if (v16 && (v17 = *v16) != 0 && (v18 = v17[2]) != 0)
        {
          v18(*v17, &v39);
        }

        else
        {
          free(v11);
        }

        v20 = *a3;
        v19 = *(a3 + 8);
        v21 = (*a3 + v19);
        *(a3 + 8) = v19 + size;
      }

      else
      {
        v22 = *(a1 + 944);
        if (v22 && (v23 = *v22) != 0 && (v24 = v23[1]) != 0)
        {
          v20 = v24(*v23, size);
        }

        else
        {
          v20 = malloc_type_calloc(1uLL, size, 0x4668289uLL);
          bzero(v20, size);
        }

        *a3 = v20;
        *(a3 + 8) = size;
        v21 = v20;
      }

      *(a1 + 880) = v20;
      if (size >= 8)
      {
        v25 = size >> 3;
        v26 = *(a1 + 873);
        if (v26 == 7)
        {
          do
          {
            v27 = 0;
            do
            {
              *v21++ = (**(a1 + 864) >> (7 - v27)) & 1;
              v8 = v27++ >= 7;
            }

            while (!v8);
            ++*(a1 + 864);
            --v25;
          }

          while (v25);
        }

        else
        {
          v28 = 0;
          v29 = (**(a1 + 864) << (7 - v26));
          do
          {
            *v21++ = (v29 >> (7 - v28++)) & 1;
            v30 = *(a1 + 873);
          }

          while (v30 >= v28);
          ++*(a1 + 864);
          if (size >= 0x10)
          {
            do
            {
              v31 = 0;
              do
              {
                *v21++ = (**(a1 + 864) >> (7 - v31)) & 1;
                v8 = v31++ >= 7;
              }

              while (!v8);
              --v25;
              ++*(a1 + 864);
            }

            while (v25 > 1);
            v30 = *(a1 + 873);
          }

          if (v30 <= 6)
          {
            v32 = 0;
            do
            {
              *v21++ = (**(a1 + 864) >> (7 - v32++)) & 1;
            }

            while (7 - *(a1 + 873) > v32);
          }
        }
      }

      if ((size & 7) != 0)
      {
        v33 = sub_245455C80(a1, size & 7) << (8 - (size & 7));
        v34 = vdupq_n_s64((size & 7) - 1);
        v35 = vmovn_s64(vcgeq_u64(v34, xmmword_24548B220));
        if (vuzp1_s8(vuzp1_s16(v35, *v34.i8), *v34.i8).u8[0])
        {
          *v21 = (v33 & 0x80) != 0;
        }

        if (vuzp1_s8(vuzp1_s16(v35, *&v34), *&v34).i8[1])
        {
          v21[1] = (v33 & 0x40) != 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, xmmword_24548B230))), *&v34).i8[2])
        {
          v21[2] = (v33 & 0x20) != 0;
          v21[3] = (v33 & 0x10) != 0;
        }

        v36 = vmovn_s64(vcgeq_u64(v34, xmmword_24548B240));
        if (vuzp1_s8(*&v34, vuzp1_s16(v36, *&v34)).i32[1])
        {
          v21[4] = (v33 & 8) != 0;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(v36, *&v34)).i8[5])
        {
          v21[5] = (v33 & 4) != 0;
        }

        v37 = vmovn_s64(vcgeq_u64(v34, xmmword_24548B250));
        if (vuzp1_s8(*&v37, vuzp1_s16(v37, v37)).i8[6])
        {
          v21[6] = (v33 & 2) != 0;
        }

        v38 = vuzp1_s16(v37, v37);
        if (vuzp1_s8(v38, v38).i8[7])
        {
          v21[7] = 0;
        }
      }
    }
  }

  else
  {

    sub_24546A59C(a1, 41);
  }
}

char *sub_24545B948(char *a1, size_t __n, uint64_t a3)
{
  result = sub_2454561F0(a1, *a3, __n);
  v6 = *(a3 + 8) - __n;
  *a3 += __n;
  *(a3 + 8) = v6;
  return result;
}

void sub_24545B988(uint64_t a1, size_t size, uint64_t a3)
{
  if (size <= 0x10000)
  {
    v4 = size;
    if (size)
    {
      v6 = *(a1 + 944);
      if (*a3)
      {
        if (v6 && (v7 = *v6) != 0 && (v8 = v7[1]) != 0)
        {
          v9 = v8(*v7, *(a3 + 8) + size);
        }

        else
        {
          v9 = malloc_type_calloc(1uLL, *(a3 + 8) + size, 0x2F77EB5DuLL);
          bzero(v9, *(a3 + 8) + v4);
        }

        memcpy(v9, *a3, *(a3 + 8));
        v10 = *(a1 + 944);
        if (v10 && (v11 = *v10) != 0 && (v12 = v11[2]) != 0)
        {
          v12(*v11, a3);
        }

        else
        {
          free(*a3);
        }

        v13 = *(a3 + 8);
        v14 = &v9[v13];
        *a3 = v9;
        *(a3 + 8) = v13 + v4;
      }

      else
      {
        if (v6 && (v15 = *v6) != 0 && (v16 = v15[1]) != 0)
        {
          v9 = v16(*v15, size);
        }

        else
        {
          v9 = malloc_type_calloc(1uLL, size, 0x2F77EB5DuLL);
          bzero(v9, v4);
        }

        *a3 = v9;
        *(a3 + 8) = v4;
        v14 = v9;
      }

      *(a1 + 880) = v9;
      v17 = *(a1 + 864);
      v18 = *(a1 + 856) - v17;
      if (*(a1 + 873) == 7)
      {
        v19 = __OFSUB__(v4, v18);
        v20 = v4 - v18;
        if (!((v20 < 0) ^ v19 | (v20 == 0)))
        {
          sub_245455908(a1, v20);
          v17 = *(a1 + 864);
        }

        memcpy(v14, v17, v4);
        *(a1 + 864) += v4;
      }

      else
      {
        v19 = __OFSUB__(v4, v18);
        v21 = v4 - v18;
        if (v21 < 0 == v19)
        {
          sub_245455908(a1, v21 + 1);
        }

        do
        {
          *v14 = **(a1 + 864) << (7 - *(a1 + 873));
          v22 = (*(a1 + 864) + 1);
          *(a1 + 864) = v22;
          *v14++ |= *v22 >> (*(a1 + 873) + 1);
          --v4;
        }

        while (v4);
      }
    }
  }

  else
  {

    sub_24546A59C(a1, 41);
  }
}

_DWORD *sub_24545BBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245455F90(a1);
  if ((v6 & 0x80) != 0)
  {
    sub_24546A59C(a1, 28);
  }

  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  v7[1] = v6 / 0x28u;
  *v7 = 0;
  if (*a3)
  {
    **(a3 + 8) = v7;
    ++*(a3 + 16);
  }

  else
  {
    *a3 = v7;
    *(a3 + 16) = 1;
  }

  v8 = a2 - 1;
  *(a3 + 8) = v7;
  *(a3 + 20) = 8;
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  result[2] = v6 % 0x28u;
  result[3] = 0;
  *result = 0;
  if (*a3)
  {
    **(a3 + 8) = result;
    ++*(a3 + 16);
  }

  else
  {
    *a3 = result;
    *(a3 + 16) = 1;
  }

  *(a3 + 8) = result;
  for (*(a3 + 20) = 8; v8; v8 -= v12)
  {
    v10 = sub_245455F90(a1);
    v11 = v10 & 0x7F;
    if (v10 < 0)
    {
      v13 = 1;
      do
      {
        v14 = sub_245455F90(a1);
        v11 = v14 & 0x7F | (v11 << 7);
        v12 = v13 + 1;
        if ((v14 & 0x80) == 0)
        {
          break;
        }
      }

      while (v13++ < 5);
    }

    else
    {
      v12 = 1;
    }

    result = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    result[2] = v11;
    result[3] = 0;
    *result = 0;
    if (*a3)
    {
      **(a3 + 8) = result;
      v16 = *(a3 + 16) + 1;
    }

    else
    {
      *a3 = result;
      v16 = 1;
    }

    *(a3 + 8) = result;
    *(a3 + 16) = v16;
    *(a3 + 20) = 8;
  }

  return result;
}

char *sub_24545BD6C(char *result, uint64_t a2, char **a3)
{
  v4 = a2;
  v5 = result;
  if (*(a3 + 25) == 1)
  {
    if (a2)
    {
      v6 = *a3;
      do
      {
        v7 = a3[4];
        v8 = *v6;
        if (*v7 == v8)
        {
          v9 = 0;
        }

        else
        {
          v10 = 0;
          v11 = (v7 + 1);
          while (a3[5] != v10)
          {
            v9 = (v10 + 1);
            v12 = (v10++)[v11];
            if (v12 == v8)
            {
              goto LABEL_11;
            }
          }

          v9 = a3[5];
        }

LABEL_11:
        result = sub_245455ACC(v5, v9, *(a3 + 24));
        v6 = *a3 + 1;
        *a3 = v6;
        --v4;
      }

      while (v4);
    }
  }

  else if (a2)
  {
    v13 = *a3;
    do
    {
      result = sub_245455ACC(v5, *v13, *(a3 + 24));
      v13 = *a3 + 1;
      *a3 = v13;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_24545BE4C(unint64_t result, unint64_t a2, uint64_t *a3)
{
  v3 = result;
  if (a2 < 0x801)
  {
    v4 = a2;
    if (a2)
    {
      if (*a3)
      {
        v6 = (*a3 - 1);
        v7 = malloc_type_calloc(1uLL, a3[1] + a2 + 2, 0xE6F3F0FEuLL);
        bzero(v7, a3[1] + v4 + 2);
        *a3 = v7;
        memcpy(v7, v6, a3[1]);
        free(v6);
        v8 = *a3;
        v9 = a3[1];
        v10 = *a3 + 1;
        v11 = (v10 + v9);
        *a3 = v10;
        a3[1] = v9 + v4;
      }

      else
      {
        v12 = malloc_type_calloc(1uLL, a2 + 2, 0xE6F3F0FEuLL);
        bzero(v12, v4 + 2);
        *a3 = v12;
        *v12 = 86;
        v8 = *a3;
        v11 = (*a3 + 1);
        *a3 = v11;
        a3[1] = v4;
      }

      *(v3 + 880) = v8;
      do
      {
        result = sub_245455C80(v3, *(a3 + 24));
        *v11++ = result;
        --v4;
      }

      while (v4);
    }
  }

  else
  {

    return sub_24546A59C(result, 41);
  }

  return result;
}

char *sub_24545BF80(char *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 > 0x3E)
  {
    sub_24545599C(a1, 1);
    v5 = v2;
    return sub_24545AE50(a1, &v5);
  }

  else
  {

    return sub_245455ACC(a1, a2, 7u);
  }
}

unint64_t sub_24545BFFC(uint64_t a1, unint64_t *a2)
{
  if (sub_245455A60(a1))
  {
    v5 = 0;
    sub_24545B130(a1, &v5);
    result = v5;
  }

  else
  {
    result = sub_245455C80(a1, 6u);
  }

  *a2 = result;
  return result;
}

char *sub_24545C058(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  *a2 = *(a1 + 864) - *(a1 + 856);
  *(a2 + 8) = *(a1 + 873);
  *(a2 + 16) = a3 + 1;
  sub_245456040(a1, a3 >> 3);

  return sub_245455ACC(a1, 0, v3 & 7);
}

char *sub_24545C0C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if ((*(a1 + 824) & 0x40) != 0)
  {
    v6 = *(a1 + 873);
    if (v6 != 7)
    {
      *(*(a1 + 864))++ &= 510 << v6;
      *(a1 + 873) = 7;
    }
  }

  *(a2 + 16) = 0;
  if (a3 >= 0x10000)
  {
    do
    {
      sub_245455E6C(a1, 0xC4u);
      if (!*(a2 + 16))
      {
        *a2 = *(a1 + 864) - *(a1 + 856);
        *(a2 + 8) = *(a1 + 873);
        *(a2 + 16) = 0x10000;
      }

      sub_245456040(a1, 0x2000uLL);
      v3 -= 0x10000;
    }

    while (v3 >> 16);
  }

  v7 = v3 - 49152;
  if (v3 > 0xC000)
  {
    sub_245455E6C(a1, 0xC3u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 864) - *(a1 + 856);
      *(a2 + 8) = *(a1 + 873);
      *(a2 + 16) = 49152;
    }

    v8 = a1;
    v9 = 6144;
LABEL_20:
    sub_245456040(v8, v9);
    v3 = v7;
    goto LABEL_21;
  }

  if (v3 >= 0x8000)
  {
    sub_245455E6C(a1, 0xC2u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 864) - *(a1 + 856);
      *(a2 + 8) = *(a1 + 873);
      *(a2 + 16) = 0x8000;
    }

    sub_245456040(a1, 0x1000uLL);
    v3 -= 0x8000;
  }

  v7 = v3 - 0x4000;
  if (v3 >= 0x4000)
  {
    sub_245455E6C(a1, 0xC1u);
    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 864) - *(a1 + 856);
      *(a2 + 8) = *(a1 + 873);
      *(a2 + 16) = 0x4000;
    }

    v8 = a1;
    v9 = 2048;
    goto LABEL_20;
  }

LABEL_21:
  if (v3 > 0x7F)
  {
    sub_245455ACC(a1, v3 | 0x8000, 0x10u);
  }

  else
  {
    sub_245455E6C(a1, v3);
  }

  if (!*(a2 + 16))
  {
    *a2 = *(a1 + 864) - *(a1 + 856);
    *(a2 + 8) = *(a1 + 873);
    *(a2 + 16) = v3;
  }

  sub_245456040(a1, v3 >> 3);

  return sub_245455ACC(a1, 0, v3 & 7);
}

uint64_t sub_24545C2DC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = result;
  v8 = a3[6];
  if (v8)
  {
    v9 = a3[2];
    v10 = result + 200;
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11 > 1)
      {
        break;
      }

      if (!*(v9 + 8))
      {
        goto LABEL_11;
      }

      if (v11 == 1)
      {
        sub_24545CE08(v7, a2, 1);
LABEL_11:
        v12 = *(v7 + 712);
        if (v12 >= 0x40)
        {
          goto LABEL_44;
        }

        v13 = *(*(a3[1] + 24) + 24 * v9[2] + 8);
        *(v10 + 8 * v12) = v9;
        *(v7 + 712) = v12 + 1;
        v14 = *v9;
        v15 = a4 + v13;
LABEL_19:
        result = sub_245457960(v7, v14, v15);
        --*(v7 + 712);
      }

LABEL_21:
      v9 += 4;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    switch(v11)
    {
      case 2u:
        v16 = *(a3[1] + 24) + 24 * v9[2];
        if (*(a4 + **(v16 + 16)) != 1)
        {
          goto LABEL_20;
        }

        v17 = *(v16 + 8);
        sub_24545CE08(v7, a2, 1);
        v18 = *(v7 + 712);
        if (v18 >= 0x40)
        {
          goto LABEL_44;
        }

        break;
      case 3u:
        v19 = *(a3[1] + 24) + 24 * v9[2];
        if (*(a4 + **(v19 + 16)) != 1)
        {
          goto LABEL_20;
        }

        v17 = *(v19 + 8);
        sub_24545CE08(v7, a2, 1);
        v18 = *(v7 + 712);
        if (v18 >= 0x40)
        {
LABEL_44:
          sub_24546A610(v7, 15);
        }

        break;
      case 5u:
LABEL_20:
        result = sub_24545CE08(v7, a2, 0);
        goto LABEL_21;
      default:
        goto LABEL_21;
    }

    *(v10 + 8 * v18) = v9;
    *(v7 + 712) = v18 + 1;
    v14 = *v9;
    v15 = a4 + v17;
    goto LABEL_19;
  }

LABEL_22:
  v20 = a3[8];
  if (v20)
  {
    v21 = a3[4];
    v22 = v7 + 200;
    while (1)
    {
      v23 = *(v21 + 8);
      if (v23 > 1)
      {
        break;
      }

      if (!*(v21 + 8))
      {
        goto LABEL_32;
      }

      if (v23 == 1)
      {
        sub_24545CE08(v7, a2, 1);
LABEL_32:
        v24 = *(v7 + 712);
        if (v24 >= 0x40)
        {
          goto LABEL_44;
        }

        v25 = *(*(a3[1] + 24) + 24 * v21[2] + 8);
        *(v22 + 8 * v24) = v21;
        *(v7 + 712) = v24 + 1;
        v26 = *v21;
        v27 = a4 + v25;
LABEL_40:
        result = sub_245457960(v7, v26, v27);
        --*(v7 + 712);
      }

LABEL_42:
      v21 += 4;
      if (!--v20)
      {
        return result;
      }
    }

    switch(v23)
    {
      case 2u:
        v28 = *(a3[1] + 24) + 24 * v21[2];
        if (*(a4 + **(v28 + 16)) != 1)
        {
          goto LABEL_41;
        }

        v29 = *(v28 + 8);
        sub_24545CE08(v7, a2, 1);
        v30 = *(v7 + 712);
        if (v30 >= 0x40)
        {
          goto LABEL_44;
        }

        break;
      case 3u:
        v31 = *(a3[1] + 24) + 24 * v21[2];
        if (*(a4 + **(v31 + 16)) != 1)
        {
          goto LABEL_41;
        }

        v29 = *(v31 + 8);
        sub_24545CE08(v7, a2, 1);
        v30 = *(v7 + 712);
        if (v30 >= 0x40)
        {
          goto LABEL_44;
        }

        break;
      case 5u:
LABEL_41:
        result = sub_24545CE08(v7, a2, 0);
        goto LABEL_42;
      default:
        goto LABEL_42;
    }

    *(v22 + 8 * v30) = v21;
    *(v7 + 712) = v30 + 1;
    v26 = *v21;
    v27 = a4 + v29;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_24545C63C(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = a2[6];
  if (v6)
  {
    v7 = a2[2];
    v8 = *(result + 712);
    while (v8 < 0x40)
    {
      v9 = *(*(a2[1] + 24) + 24 * v7[2] + 8);
      *(v5 + 200 + 8 * v8) = v7;
      *(v5 + 712) = v8 + 1;
      v10 = *v7;
      v7 += 4;
      result = sub_245457960(v5, v10, a3 + v9);
      v8 = *(v5 + 712) - 1;
      *(v5 + 712) = v8;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

LABEL_10:
    sub_24546A610(v5, 15);
  }

LABEL_5:
  v11 = a2[8];
  if (v11)
  {
    v12 = a2[4];
    v13 = *(v5 + 712);
    while (v13 < 0x40)
    {
      v14 = *(*(a2[1] + 24) + 24 * v12[2] + 8);
      *(v5 + 200 + 8 * v13) = v12;
      *(v5 + 712) = v13 + 1;
      v15 = *v12;
      v12 += 4;
      result = sub_245457960(v5, v15, a3 + v14);
      v13 = *(v5 + 712) - 1;
      *(v5 + 712) = v13;
      if (!--v11)
      {
        return result;
      }
    }

    goto LABEL_10;
  }

  return result;
}

BOOL sub_24545C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 56);
  if (v4)
  {
    v6 = a3;
    v7 = a2;
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 24);
    v59 = a1 + 200;
    while (1)
    {
      v12 = *(v11 + 8);
      if (v12 <= 2)
      {
        if (v12 >= 2)
        {
          v16 = *(*(v6 + 8) + 24) + 24 * *(v11 + 16);
          if (*(a4 + **(v16 + 16)) != 1)
          {
            goto LABEL_25;
          }

          v17 = *(v16 + 8);
          sub_24545CE08(a1, v7, 1);
          v18 = *(a1 + 712);
          if (v18 >= 0x40)
          {
LABEL_77:
            sub_24546A610(a1, 15);
          }

LABEL_23:
          *(v59 + 8 * v18) = v11;
          *(a1 + 712) = v18 + 1;
          sub_24545CF90(a1, *v11, a4 + v17);
          --*(a1 + 712);
          ++v10;
        }

        else
        {
          v13 = *(*(v6 + 8) + 24) + 24 * *(v11 + 16);
          if (*(a4 + **(v13 + 16)) != 1)
          {
            goto LABEL_25;
          }

          v14 = *(v13 + 8);
          sub_24545CE08(a1, v7, 1);
          v15 = *(a1 + 712);
          if (v15 >= 0x40)
          {
            goto LABEL_77;
          }

          *(v59 + 8 * v15) = v11;
          *(a1 + 712) = v15 + 1;
          sub_24545CF90(a1, *v11, a4 + v14);
          --*(a1 + 712);
          ++v9;
        }

        v6 = a3;
        goto LABEL_26;
      }

      if (v12 == 3)
      {
        v24 = *(*(v6 + 8) + 24) + 24 * *(v11 + 16);
        if (*(a4 + **(v24 + 16)) != 1)
        {
          goto LABEL_25;
        }

        v17 = *(v24 + 8);
        sub_24545CE08(a1, v7, 1);
        v18 = *(a1 + 712);
        if (v18 >= 0x40)
        {
          goto LABEL_77;
        }

        goto LABEL_23;
      }

      if (v12 != 4)
      {
        if (v12 != 5)
        {
          goto LABEL_77;
        }

LABEL_25:
        sub_24545CE08(a1, v7, 0);
        goto LABEL_26;
      }

      v57 = v10;
      v19 = *(v11 + 16);
      memset(v60, 0, sizeof(v60));
      v20 = *(v11 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = (v11 + 40);
        do
        {
          v23 = *v22;
          v22 += 32;
          if (v23)
          {
            ++v21;
          }

          --v20;
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      if ((*(a1 + 824) & 0x40) != 0)
      {
        v26 = *(a1 + 873);
        v25 = *(a1 + 864);
        v56 = 7;
        if (v26 != 7)
        {
          *v25 &= 510 << v26;
          v25 = (*(a1 + 864) + 1);
          *(a1 + 864) = v25;
          *(a1 + 873) = 7;
        }
      }

      else
      {
        v25 = *(a1 + 864);
        v56 = *(a1 + 873);
      }

      v27 = *(a1 + 856);
      sub_245456040(a1, 1uLL);
      if (v21 >> 16)
      {
        sub_24545C0C0(a1, v60, v21);
      }

      else
      {
        sub_24545C058(a1, v60, v21);
      }

      v4 -= v19;
      v28 = &v25[-v27];
      if (!*(v11 + 16))
      {
        goto LABEL_64;
      }

      v54 = &v25[-v27];
      v55 = v9;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v11 + 32;
      do
      {
        v34 = *(v33 + 8);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            v41 = *(*(v6 + 8) + 24) + 24 * *(v33 + 16);
            if (*(a4 + **(v41 + 16)) == 1)
            {
              v39 = *(v41 + 8);
              sub_24545CE08(a1, v60, 1);
              v40 = *(a1 + 712);
              if (v40 >= 0x40)
              {
                goto LABEL_77;
              }

              goto LABEL_54;
            }
          }

          else if (v34 != 5)
          {
            goto LABEL_77;
          }

          goto LABEL_55;
        }

        if (v34 >= 2)
        {
          v38 = *(*(v6 + 8) + 24) + 24 * *(v33 + 16);
          if (*(a4 + **(v38 + 16)) == 1)
          {
            v39 = *(v38 + 8);
            sub_24545CE08(a1, v60, 1);
            v40 = *(a1 + 712);
            if (v40 >= 0x40)
            {
              goto LABEL_77;
            }

LABEL_54:
            *(v59 + 8 * v40) = v33;
            *(a1 + 712) = v40 + 1;
            sub_245457960(a1, *v33, a4 + v39);
            --*(a1 + 712);
            ++v29;
            v6 = a3;
            goto LABEL_56;
          }

LABEL_55:
          sub_24545CE08(a1, v60, 0);
          goto LABEL_56;
        }

        v35 = *(*(v6 + 8) + 24) + 24 * *(v33 + 16);
        if (*(a4 + **(v35 + 16)) == 1)
        {
          v36 = *(a1 + 712);
          if (v36 >= 0x40)
          {
            goto LABEL_77;
          }

          v37 = *(v35 + 8);
          *(v59 + 8 * v36) = v33;
          *(a1 + 712) = v36 + 1;
          sub_245457960(a1, *v33, a4 + v37);
          --*(a1 + 712);
          if (*(v33 + 8) == 1)
          {
            sub_24545CE08(a1, v60, 1);
          }

          ++v30;
        }

        else
        {
          ++v31;
        }

LABEL_56:
        ++v32;
        v33 += 32;
      }

      while (v32 < *(v11 + 16));
      v11 = v33 - 32;
      if (v31 && v29)
      {
        sub_24546A59C(a1, 33);
        v28 = v54;
        v9 = v55;
        goto LABEL_61;
      }

      v42 = v30 | v29;
      v28 = v54;
      v9 = v55;
      if (!v42)
      {
LABEL_64:
        v49 = *(a1 + 856);
        *(a1 + 864) = v49 + v28;
        *(a1 + 873) = v56;
        *(v49 + v28) &= 510 << v56;
        v7 = a2;
        sub_24545CE08(a1, a2, 0);
        v10 = v57;
        goto LABEL_26;
      }

LABEL_61:
      v43 = *(a1 + 864);
      v44 = (v43 - *(a1 + 856));
      v45 = *(a1 + 873);
      v46 = v45 >= v56;
      v47 = v45 - v56;
      if (v46)
      {
        v48 = &v44[~v28];
        if (v48)
        {
          sub_245455ACC(a1, 0, v47);
          goto LABEL_67;
        }

LABEL_70:
        v6 = a3;
        *(a1 + 864) = v43 - 1;
        sub_245455ACC(a1, 0x100uLL, 0x10u);
      }

      else
      {
        sub_245455ACC(a1, 0, (v47 + 8));
        v48 = &v44[-v28];
        if (v44 == v28)
        {
          v43 = *(a1 + 864);
          goto LABEL_70;
        }

LABEL_67:
        v6 = a3;
        if (v48 > 0x7F)
        {
          if (*(a1 + 873) == 7)
          {
            sub_245456364(a1, v48);
          }

          else
          {
            sub_2454569B4(a1, v48);
          }
        }

        else
        {
          v50 = (*(a1 + 856) + v28);
          v51 = *(a1 + 873);
          if (v51 == 7)
          {
            *v50 = v48;
          }

          else
          {
            *v50 |= v48 >> (7 - v51);
            v50[1] |= v48 << (*(a1 + 873) + 1);
          }
        }
      }

      v7 = a2;
      sub_24545CE08(a1, a2, 1);
      v10 = v57 + 1;
LABEL_26:
      v11 += 32;
      if (!--v4)
      {
        return (v9 | v10) != 0;
      }
    }
  }

  return 0;
}

uint64_t sub_24545CE08(uint64_t result, uint64_t a2, char a3)
{
  *(*(result + 856) + *a2) |= a3 << *(a2 + 8);
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = (a2 + 16);
    v5 = *(a2 + 16);
    *(a2 + 8) = v3 - 1;
    *(a2 + 16) = --v5;
    if (v5)
    {
      return result;
    }

    v8 = (v3 - 1);
    v6 = *a2;
    if ((v3 - 1) != 7)
    {
      v12 = 0;
      v9 = *(result + 856);
      v13 = *(v9 + v6) << (8 - v3);
      v11 = v6 + 1;
      *a2 = v11;
      v10 = (*(v9 + v11) >> v3) | v13;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a2 + 1;
    *a2 = v6;
    *(a2 + 8) = 7;
    v4 = (a2 + 16);
    v7 = *(a2 + 16) - 1;
    *(a2 + 16) = v7;
    if (v7)
    {
      return result;
    }
  }

  v9 = *(result + 856);
  LOBYTE(v10) = *(v9 + v6);
  v11 = v6 + 1;
  *a2 = v11;
  LOBYTE(v8) = 7;
  v12 = 1;
LABEL_9:
  if (v10 > 0xC2u)
  {
    if (v10 == 195)
    {
      v14 = 49152;
      goto LABEL_25;
    }

    if (v10 == 196)
    {
      v14 = 0x10000;
      goto LABEL_25;
    }
  }

  else
  {
    if (v10 == 193)
    {
      v14 = 0x4000;
      goto LABEL_25;
    }

    if (v10 == 194)
    {
      v14 = 0x8000;
LABEL_25:
      *v4 = v14;
      return result;
    }
  }

  if ((v10 & 0xC0) == 0x80)
  {
    v15 = (v10 & 0x3F) << 8;
    *v4 = v15;
    v16 = *(v9 + v11);
    if (v12)
    {
      *a2 = v11 + 1;
    }

    else
    {
      v17 = v11 + 1;
      *a2 = v17;
      v16 = (*(v9 + v17) >> (v8 + 1)) | (v16 << (7 - v8));
    }

    v14 = v16 | v15;
    goto LABEL_25;
  }

  if ((v10 & 0x80) != 0)
  {
    return sub_24546A59C(result, 26);
  }

  *v4 = v10;
  return result;
}