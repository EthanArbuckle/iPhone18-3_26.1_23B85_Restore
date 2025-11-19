void sub_6B2BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_4B5A18(&a22);
  sub_1F1A8(&a32);
  sub_59D84C(v32 - 184);
  sub_59D84C(v32 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_6B2EC8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *(a4 + 32);
  v11 = sub_59D570(*a1, v10 & 0xFFFFFFFFFFFFFFLL);
  v12 = *(a3 + 64);
  v13 = sub_5DBECC((a3 + 2008), a5 - *(a3 + 40));
  v14 = sub_4D1DC0(a2);
  v15 = v10 & 0xFFFFFFFFFFFFFFLL;
  if (v14 - 1 > a5)
  {
    v15 = *(sub_4D1F50(a2, a5 + 1) + 32) & 0xFFFFFFFFFFFFFFLL;
  }

  v16 = sub_59D570(*a1, v15);
  v17 = (a3 + 385);
  if (!*(a3 + 386))
  {
    v17 = a2 + 1097;
  }

  if (*(a3 + 64) < a5)
  {
    return 0;
  }

  v77 = a4;
  v19 = v16;
  v76 = *v17;
  if (v12 != a5 || sub_6CA9B0(v13) || (v20 = *(a3 + 160), v20 - 82 < 3) || (v18 = 1, v20 <= 0x27) && ((1 << v20) & 0x8600050000) != 0)
  {
    sub_59DC48(*a1, v10 & 0xFFFFFFFFFFFFFFLL, 0, a1 + 956);
    if ((sub_6C8EE0(v13) & 1) != 0 || (sub_6C8EEC(v13) & 1) != 0 || a1[956] != a1[957])
    {
      goto LABEL_34;
    }

    sub_6E5620((a1 + 1), v77, 0, __p);
    v21 = *__p[0];
    v22 = *(__p[0] + 1);
    if (*__p[0] == v22)
    {
      v26 = 1;
      v23 = v19;
    }

    else
    {
      v23 = v19;
      do
      {
        if (*(v21 + 241) == 1 && (*(v21 + 243) & 1) == 0)
        {
          v24 = *(v21 + 24);
          if (v24 != 3 && v24 != 0)
          {
            v26 = 0;
            goto LABEL_27;
          }
        }

        v21 += 248;
      }

      while (v21 != v22);
      v26 = 1;
    }

LABEL_27:
    v27 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v23 = v19;
    }

    v28 = v11 == v23 ? v26 : 0;
    if (v28 == 1)
    {
LABEL_34:
      *__p = 0u;
      v80 = 0u;
      v81 = 1065353216;
      v29 = a1[956];
      v30 = a1[957];
      if (v29 != v30)
      {
        if ((v10 & 0xFF000000000000) != 0)
        {
          do
          {
            v32 = *(v29 + 16);
            for (i = *(v29 + 24); v32 != i; v32 += 32)
            {
              v33 = *v32;
              v78 = *v32;
              v34 = *a1;
              v35 = sub_2B51D8(*a1, v10 & 0xFFFFFFFFFFFFLL);
              v36 = (v35 - *v35);
              if (*v36 >= 0x29u)
              {
                v37 = v36[20];
                if (v37)
                {
                  if (*(v35 + v37 + *(v35 + v37)) > v33)
                  {
                    v38 = sub_3EC10C(v34, v10 & 0xFFFFFFFFFFFFFFLL, v33);
                    v39 = (v38 - *v38);
                    if (*v39 >= 5u)
                    {
                      v40 = v39[2];
                      if (v40)
                      {
                        if ((*(v38 + v40) & 4) != 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }
              }

              sub_5F264C(__p, &v78);
            }

            v29 += 48;
          }

          while (v29 != v30);
        }

        else
        {
          do
          {
            v42 = *(v29 + 16);
            for (j = *(v29 + 24); v42 != j; v42 += 32)
            {
              v43 = *v42;
              v78 = *v42;
              v44 = *a1;
              v45 = sub_2B51D8(*a1, v10 & 0xFFFFFFFFFFFFLL);
              v46 = (v45 - *v45);
              if (*v46 >= 0x27u)
              {
                v47 = v46[19];
                if (v47)
                {
                  if (*(v45 + v47 + *(v45 + v47)) > v43)
                  {
                    v48 = sub_3EC10C(v44, v10 & 0xFFFFFFFFFFFFFFLL, v43);
                    v49 = (v48 - *v48);
                    if (*v49 >= 5u)
                    {
                      v50 = v49[2];
                      if (v50)
                      {
                        if ((*(v48 + v50) & 4) != 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }
              }

              sub_5F264C(__p, &v78);
            }

            v29 += 48;
          }

          while (v29 != v30);
        }
      }

      if (v11)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = v77;
        v55 = v76;
        do
        {
          if (*(&v80 + 1) + v52 >= v11)
          {
            break;
          }

          if (__p[1])
          {
            v56 = vcnt_s8(__p[1]);
            v56.i16[0] = vaddlv_u8(v56);
            if (v56.u32[0] > 1uLL)
            {
              v57 = v53;
              if (__p[1] <= v53)
              {
                v57 = v53 % LOBYTE(__p[1]);
              }
            }

            else
            {
              v57 = (LODWORD(__p[1]) - 1) & v53;
            }

            v58 = *(__p[0] + v57);
            if (v58)
            {
              v59 = *v58;
              if (v59)
              {
                if (v56.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v61 = v59[1];
                    if (v61 == v53)
                    {
                      if (*(v59 + 16) == v53)
                      {
                        goto LABEL_87;
                      }
                    }

                    else if ((v61 & (__p[1] - 1)) != v57)
                    {
                      goto LABEL_83;
                    }

                    v59 = *v59;
                    if (!v59)
                    {
                      goto LABEL_83;
                    }
                  }
                }

                do
                {
                  v60 = v59[1];
                  if (v60 == v53)
                  {
                    if (*(v59 + 16) == v53)
                    {
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    if (v60 >= __p[1])
                    {
                      v60 %= __p[1];
                    }

                    if (v60 != v57)
                    {
                      break;
                    }
                  }

                  v59 = *v59;
                }

                while (v59);
              }
            }
          }

LABEL_83:
          if ((v51 & 1) == 0 && !sub_6B5F94(a1, v77, v76 != 1, a1 + 956))
          {
            break;
          }

          ++v52;
          ++v53;
          v51 = 1;
        }

        while (v11 > v53);
      }

      else
      {
        v52 = 0;
        v54 = v77;
        v55 = v76;
      }

LABEL_87:
      if (v11)
      {
        v62 = v11 - 1;
      }

      else
      {
        v62 = 0;
      }

      if (v62)
      {
        v63 = 0;
        v64 = v62;
        do
        {
          if (*(&v80 + 1) + v52 >= v11)
          {
            break;
          }

          if (__p[1])
          {
            v65 = vcnt_s8(__p[1]);
            v65.i16[0] = vaddlv_u8(v65);
            if (v65.u32[0] > 1uLL)
            {
              v66 = v64;
              if (__p[1] <= v64)
              {
                v66 = v64 % LOBYTE(__p[1]);
              }
            }

            else
            {
              v66 = (__p[1] + 255) & v64;
            }

            v67 = *(__p[0] + v66);
            if (v67)
            {
              v68 = *v67;
              if (v68)
              {
                if (v65.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v70 = v68[1];
                    if (v70 == v64)
                    {
                      if (v64 == *(v68 + 16))
                      {
                        goto LABEL_116;
                      }
                    }

                    else if ((v70 & (__p[1] - 1)) != v66)
                    {
                      goto LABEL_114;
                    }

                    v68 = *v68;
                    if (!v68)
                    {
                      goto LABEL_114;
                    }
                  }
                }

                do
                {
                  v69 = v68[1];
                  if (v69 == v64)
                  {
                    if (v64 == *(v68 + 16))
                    {
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    if (v69 >= __p[1])
                    {
                      v69 %= __p[1];
                    }

                    if (v69 != v66)
                    {
                      break;
                    }
                  }

                  v68 = *v68;
                }

                while (v68);
              }
            }
          }

LABEL_114:
          if ((v63 & 1) == 0 && !sub_6B5F94(a1, v54, v55 == 1, a1 + 956))
          {
            break;
          }

          ++v52;
          --v62;
          --v64;
          v63 = 1;
        }

        while (v62);
      }

LABEL_116:
      v71 = v80;
      if (*(&v80 + 1))
      {
        v72 = *(&v80 + 1) + v52 == v11;
      }

      else
      {
        v72 = 1;
      }

      v18 = !v72;
      if (v80)
      {
        do
        {
          v73 = *v71;
          operator delete(v71);
          v71 = v73;
        }

        while (v73);
      }

      v74 = __p[0];
      __p[0] = 0;
      if (v74)
      {
        operator delete(v74);
      }
    }

    else
    {
      return 1;
    }
  }

  return v18;
}

void sub_6B358C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_6B35A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_6B35B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_6B35C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_6B35DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 2008) != *(a3 + 2016))
  {
    v3 = *(a3 + 160);
    v4 = v3 - 25 > 0x3F || ((1 << (v3 - 25)) & 0x9000000000000001) == 0;
    v5 = !v4 || v3 == 17;
    if (!v5 && v3 - 82 >= 3 && (v3 > 0x27 || ((1 << v3) & 0x8600050000) == 0))
    {
      v8 = sub_6B1BFC((a3 + 2008), *(a3 + 64) - *(a3 + 40));
      if (sub_6CA9B0(v8))
      {
        v9 = (a3 + 385);
        if (!*(a3 + 386))
        {
          v9 = (a2 + 1097);
        }

        v28 = *v9;
        sub_69D1C4(a2, *(a3 + 64), &__p);
        v10 = sub_7494F0(&__p);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        v11 = *(a3 + 64);
        v12 = v11 - 1;
        v13 = *(a3 + 40);
        if (v13 - 1 < v11 - 1)
        {
          v12 = v13 - 1;
        }

        v29 = v12;
        if (v11 > v13)
        {
          v14 = a3;
          for (i = v11 - 1; v29 != i; --i)
          {
            v17 = sub_6B1BFC((v14 + 2008), i - *(v14 + 40));
            if (v10 >= *(*(a1 + 7568) + 1888))
            {
              return;
            }

            v18 = v17;
            v19 = sub_6B82E0(i);
            sub_69D1C4(a2, v19, &__p);
            v20 = sub_7494F0(&__p);
            if (__p)
            {
              v32 = __p;
              operator delete(__p);
            }

            if ((sub_6C8EE0(v18) & 1) == 0 && !sub_6C8EEC(v18) || sub_6C6B88(v18))
            {
              v21 = sub_4D2130(v18);
              v22 = sub_6B79D0(0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3));
              v23 = sub_6C8E78(v18);
              v24 = sub_6B79D0(0xAAAAAAAAAAAAAAABLL * ((v23[1] - *v23) >> 3));
              if (v22 && (v25 = sub_4D2130(v8), *v25 == v25[1]))
              {
                v16 = sub_4D2130(v18);
                sub_6C8E80(v8, v16);
              }

              else
              {
                if (!v24)
                {
                  goto LABEL_25;
                }

                v26 = sub_6C8E78(v8);
                if (*v26 != v26[1])
                {
                  goto LABEL_25;
                }

                v27 = sub_6C8E78(v18);
                sub_6C8EB0(v8, v27);
              }

              sub_6C89B4(v8, v22, v28 == 0);
              sub_6C89B4(v8, v24, v28 == 1);
            }

LABEL_25:
            v10 += v20;
            v14 = a3;
          }
        }
      }
    }
  }
}

void sub_6B38B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6B38D0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 2008) != *(a3 + 2016))
  {
    v6 = sub_6B1BFC((a3 + 2008), *(a3 + 64) - *(a3 + 40));
    if (sub_6CA9B0(v6))
    {
      v7 = *(a3 + 160);
      v8 = v7 - 25 > 0x3F || ((1 << (v7 - 25)) & 0x9000000000000001) == 0;
      v9 = !v8 || v7 == 17;
      if (!v9 && v7 - 82 >= 3 && (v7 > 0x27 || ((1 << v7) & 0x8600050000) == 0) && !sub_68D7F4(v6) && !sub_6C8E70(v6))
      {
        v10 = sub_4D2130(v6);
        if (*v10 == v10[1])
        {
          v11 = sub_6C8E78(v6);
          if (*v11 == v11[1])
          {
            if (sub_919660(a1 + 7592, a2, a3))
            {

              sub_6B6BD8(a1, a2, a3);
            }

            else if (sub_91C960((a1 + 7592), a2, a3, 1))
            {

              sub_6B6DFC(a1, a2, a3);
            }

            else if (sub_91C8CC(a1 + 7592, a2, a3))
            {

              sub_6B7108(a1, a2, a3);
            }
          }
        }
      }
    }
  }
}

void sub_6B3A9C(uint64_t *a1, int **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v120 = *(*a2 + v11 + 1) >> 7;
    v111 = a2[4];
    if (!sub_69CBF0(a4))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v120 = 0;
    v111 = a2[4];
    if (!sub_69CBF0(a4))
    {
      goto LABEL_27;
    }
  }

  v12 = *(a5 + 72);
  if (v12 < sub_4D1DC0(a4))
  {
    v13 = *(sub_4D1F50(a4, *(a5 + 64)) + 32);
    v14 = v13 & 0xFFFFFFFFFFFFLL;
    v15 = BYTE6(v111) == BYTE6(v13);
    if ((v111 & 0xFFFFFFFFFFFFLL) != v14)
    {
      v15 = 0;
    }

    v114 = v15;
    v115 = a1;
    v16 = sub_6C6B88(a3);
    if (v16)
    {
      goto LABEL_28;
    }

LABEL_10:
    v124 = 0;
    goto LABEL_11;
  }

LABEL_27:
  v114 = 0;
  v115 = a1;
  v16 = sub_6C6B88(a3);
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_28:
  v24 = 0;
  v124 = 0;
  v25 = v16;
  do
  {
    if (sub_6C9078(a3))
    {
      v26 = sub_6C8244(a3, v24);
      v27 = v124;
      if (*v26 != v26[1])
      {
        v27 = (1 << v24) | v124;
      }

      v124 = v27;
    }

    ++v24;
  }

  while (v25 != v24);
LABEL_11:
  v119 = a3;
  sub_6E5620((v115 + 1), a2, 0, &v126);
  v17 = *v126;
  v18 = v126[1];
  v19 = v18 - *v126;
  v109 = a4;
  v110 = a5;
  if (v19)
  {
    if (!((0xEF7BDEF7BDEF7BDFLL * (v19 >> 3)) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  for (i = 0; v17 != v18; v17 += 31)
  {
    if (*(v17 + 241) == 1)
    {
      v20 = 1;
      switch(*(v17 + 6))
      {
        case 1:
        case 0x14:
        case 0x1B:
        case 0x1D:
        case 0x3C:
        case 0x3E:
        case 0x41:
          goto LABEL_18;
        case 2:
        case 0x15:
        case 0x1C:
        case 0x1E:
        case 0x3D:
        case 0x3F:
        case 0x42:
          goto LABEL_21;
        case 4:
          v20 = 4;
          break;
        case 0xB:
          if (v120)
          {
LABEL_18:
            v20 = 2;
          }

          else
          {
LABEL_21:
            v20 = 3;
          }

          break;
        default:
          break;
      }

      v21 = i;
      v22 = i >> 2;
      if (((i >> 2) + 1) >> 62)
      {
        sub_1794();
      }

      if (i >> 2 != -1)
      {
        if (!(((i >> 2) + 1) >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v22) = v20;
      i = 4 * v22 + 4;
      memcpy(0, 0, v21);
    }
  }

  if (v114)
  {
    v28 = 1;
    switch(*(v110 + 160))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x3C:
      case 0x3E:
      case 0x41:
        goto LABEL_37;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x3D:
      case 0x3F:
      case 0x42:
        goto LABEL_41;
      case 4:
        v28 = 4;
        break;
      case 0xB:
        if (v120)
        {
LABEL_37:
          v28 = 2;
        }

        else
        {
LABEL_41:
          v28 = 3;
        }

        break;
      default:
        break;
    }

    v29 = i;
    v30 = i >> 2;
    if (((i >> 2) + 1) >> 62)
    {
      sub_1794();
    }

    if (i >> 2 != -1)
    {
      if (!(((i >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v30) = v28;
    i = 4 * v30 + 4;
    memcpy(0, 0, v29);
  }

  v31 = v119;
  v32 = v115;
  sub_59DC48(*v115, v111 & 0xFFFFFFFFFFFFFFLL, 0, v115 + 956);
  v113 = v115[957];
  v123 = i;
  if (v115[956] != v113)
  {
    v33 = v115[956];
    v116 = 0;
    v34 = 0;
    v35 = 0;
    v37 = v109;
    v36 = v110;
    if (v120)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    v108 = v38;
    while (1)
    {
      v39 = *v33;
      v40 = v114;
      if (v114)
      {
        v43 = *(sub_4D1F50(v37, *(v36 + 72)) + 32);
        if (*v33 == v43)
        {
          if (*(v33 + 4) == WORD2(v43))
          {
            v40 = *(v33 + 6) == BYTE6(v43);
            v41 = *v126;
            v42 = v126[1];
            if (*v126 != v42)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v40 = 0;
            v41 = *v126;
            v42 = v126[1];
            if (*v126 != v42)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          v40 = 0;
          v41 = *v126;
          v42 = v126[1];
          if (*v126 != v42)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v41 = *v126;
        v42 = v126[1];
        if (*v126 != v42)
        {
          do
          {
LABEL_66:
            v44 = *v41;
            v45 = v41[1];
            if (*v41 != v45 && *(v41 + 241) == 1)
            {
              while (__PAIR64__(*(v44 + 4), *v44) != __PAIR64__(WORD2(v39), v39) || *(v44 + 6) != BYTE6(v39))
              {
                v44 += 8;
                if (v44 == v45)
                {
                  goto LABEL_65;
                }
              }

              goto LABEL_72;
            }

LABEL_65:
            v41 += 31;
          }

          while (v41 != v42);
          v41 = v42;
          if (v40)
          {
LABEL_73:
            v46 = (v41 + 3);
            v53 = !v40;
            v47 = (v110 + 160);
            if (v53)
            {
              v47 = v46;
            }

            v117 = *v47;
            v48 = *v47 - 1;
            v49 = 1;
            switch(v48)
            {
              case 0:
              case 26:
                v49 = 3;
                break;
              case 1:
              case 27:
                v49 = 4;
                break;
              case 3:
                v49 = 13;
                break;
              case 10:
                v49 = v108;
                break;
              case 19:
              case 28:
              case 61:
              case 64:
                break;
              case 20:
              case 29:
              case 62:
              case 65:
                v49 = 2;
                break;
              case 59:
                v49 = 5;
                break;
              case 60:
                v49 = 6;
                break;
              default:
                v49 = 12;
                break;
            }

            v125 = v49;
            v51 = *(v33 + 16);
            v50 = *(v33 + 24);
            v112 = v33;
            v121 = v50;
            while (2)
            {
              if (v51 == v50)
              {
                v37 = v109;
                v36 = v110;
                v33 = v112;
                goto LABEL_53;
              }

              v52 = sub_6C7F04(v31, *v51);
              v53 = v52 != 0xFF && ((1 << v52) & v124) == 0;
              if (!v53)
              {
LABEL_88:
                v51 += 32;
                v50 = v121;
                continue;
              }

              break;
            }

            __src = v34;
            if (v117 == 3 || !v117)
            {
              v54 = *v51;
              v55 = *v32;
              v32[960] = v32[959];
              v56 = sub_2B51D8(v55, v111 & 0xFFFFFFFFFFFFLL);
              v57 = (v56 - *v56);
              v58 = *v57;
              if ((v111 & 0xFF000000000000) != 0)
              {
                if (v58 < 0x29)
                {
                  goto LABEL_120;
                }

                v59 = v57[20];
                if (!v59)
                {
                  goto LABEL_120;
                }

LABEL_103:
                if (*(v56 + v59 + *(v56 + v59)) > v54)
                {
                  v60 = sub_3EC10C(v55, v111 & 0xFFFFFFFFFFFFFFLL, v54);
                  v61 = (v60 - *v60);
                  if (*v61 >= 0xBu)
                  {
                    v62 = v61[5];
                    if (v62)
                    {
                      v63 = (v60 + v62 + *(v60 + v62));
                      v64 = *v63;
                      if (v64)
                      {
                        v65 = v63 + 1;
                        v66 = v32[960];
                        do
                        {
                          v67 = v32[961];
                          if (v66 < v67)
                          {
                            *v66++ = *v65;
                          }

                          else
                          {
                            v68 = v32[959];
                            v69 = v66 - v68 + 1;
                            if (v69 < 0)
                            {
                              sub_1794();
                            }

                            v70 = v67 - v68;
                            if (2 * v70 > v69)
                            {
                              v69 = 2 * v70;
                            }

                            if (v70 >= 0x3FFFFFFFFFFFFFFFLL)
                            {
                              v69 = 0x7FFFFFFFFFFFFFFFLL;
                            }

                            if (v69)
                            {
                              operator new();
                            }

                            v32 = v115;
                            v71 = (v66 - v68);
                            *v71 = *v65;
                            v66 = (v66 - v68 + 1);
                            memcpy(0, v68, v71);
                            v115[959] = 0;
                            v115[960] = v66;
                            v115[961] = 0;
                            if (v68)
                            {
                              operator delete(v68);
                            }
                          }

                          v32[960] = v66;
                          ++v65;
                          --v64;
                        }

                        while (v64);
                      }
                    }
                  }
                }
              }

              else if (v58 >= 0x27)
              {
                v59 = v57[19];
                if (v59)
                {
                  goto LABEL_103;
                }
              }

LABEL_120:
              v72 = v32[959];
              v73 = v32[960];
              v31 = v119;
              v34 = __src;
              if (v72 != v73 && *v72)
              {
                while (*v72 != 12)
                {
                  if (++v72 == v73)
                  {
                    v72 = v32[960];
                    break;
                  }
                }

                if (v72 == v73)
                {
                  v116 |= 1 << v52;
                  goto LABEL_88;
                }
              }
            }

            if (v125 - 1 > 0x10)
            {
              v74 = 0;
            }

            else
            {
              v74 = dword_229E280[(v125 - 1)];
            }

            v75 = v35 - __src;
            v76 = (v35 - __src) >> 2;
            v77 = v76 + 1;
            if ((v76 + 1) >> 62)
            {
              sub_1794();
            }

            if (-__src >> 1 > v77)
            {
              v77 = -__src >> 1;
            }

            if (-__src >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v78 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v78 = v77;
            }

            if (v78)
            {
              if (!(v78 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            *(4 * v76) = v74;
            v35 = 4 * v76 + 4;
            memcpy(0, __src, v75);
            v34 = 0;
            sub_6C7A4C(v31, v52, &v125);
            goto LABEL_88;
          }

          goto LABEL_53;
        }
      }

LABEL_72:
      if (v41 != v42 || v40)
      {
        goto LABEL_73;
      }

LABEL_53:
      v33 += 48;
      if (v33 == v113)
      {
        v79 = v111 & 0xFFFFFFFFFFFFLL;
        goto LABEL_142;
      }
    }
  }

  v35 = 0;
  v34 = 0;
  v116 = 0;
  v79 = v111 & 0xFFFFFFFFFFFFLL;
LABEL_142:
  v80 = sub_2B51D8(*v32, v79);
  v81 = v34;
  v82 = (v80 - *v80);
  v83 = *v82;
  if ((v111 & 0xFF000000000000) != 0)
  {
    if (v83 < 0x29)
    {
      goto LABEL_215;
    }

    v84 = v82[20];
    if (!v84)
    {
      goto LABEL_215;
    }
  }

  else
  {
    if (v83 < 0x27)
    {
      goto LABEL_215;
    }

    v84 = v82[19];
    if (!v84)
    {
      goto LABEL_215;
    }
  }

  v122 = *(v80 + v84 + *(v80 + v84));
  if (*(v80 + v84 + *(v80 + v84)))
  {
    if (v34 == v35)
    {
      v85 = 0;
      if (v123)
      {
        do
        {
          sub_6B5B1C(*v115, v111 & 0xFFFFFFFFFFFFFFLL, v85, v115 + 959);
          v100 = v115[959];
          v101 = v115[960];
          while (v100 != v101)
          {
            v125 = *v100;
            if (v125 - 1 > 0x10)
            {
              v102 = 0;
            }

            else
            {
              v102 = dword_229E280[(v125 - 1)];
            }

            v103 = sub_6C7F04(v119, v85);
            if (v103 != 0xFF)
            {
              v104 = 0;
              while (*v104 != v102)
              {
                if (++v104 == v123)
                {
                  v104 = v123;
                  break;
                }
              }

              v106 = ((1 << v103) & v116) != 0 || v104 != v123;
              if (((1 << v103) & v124) == 0 && v106)
              {
                sub_6C7A4C(v119, v103, &v125);
              }
            }

            ++v100;
          }

          ++v85;
        }

        while (v85 != v122);
      }

      else
      {
        do
        {
          sub_6B5B1C(*v115, v111 & 0xFFFFFFFFFFFFFFLL, v85, v115 + 959);
          v86 = v115[959];
          for (j = v115[960]; v86 != j; ++v86)
          {
            v125 = *v86;
            v88 = sub_6C7F04(v119, v85);
            if (v88 != 0xFF)
            {
              v89 = ((1 << v88) & v116) == 0 && v123 == 0;
              v90 = !v89;
              if (((1 << v88) & v124) == 0 && v90)
              {
                sub_6C7A4C(v119, v88, &v125);
              }
            }
          }

          ++v85;
        }

        while (v85 != v122);
      }
    }

    else
    {
      v91 = 0;
      do
      {
        sub_6B5B1C(*v115, v111 & 0xFFFFFFFFFFFFFFLL, v91, v115 + 959);
        v92 = v115[959];
        v93 = v115[960];
        while (v92 != v93)
        {
          v125 = *v92;
          if (v125 - 1 > 0x10)
          {
            v94 = 0;
          }

          else
          {
            v94 = dword_229E280[(v125 - 1)];
          }

          v95 = v81;
          while (*v95 != v94)
          {
            if (++v95 == v35)
            {
              goto LABEL_178;
            }
          }

          if (v95 != v35)
          {
            goto LABEL_170;
          }

LABEL_178:
          v96 = sub_6C7F04(v119, v91);
          if (v96 != 0xFF)
          {
            v97 = 0;
            if (v123)
            {
              v97 = 0;
              while (*v97 != v94)
              {
                if (++v97 == v123)
                {
                  v97 = v123;
                  break;
                }
              }
            }

            v99 = ((1 << v96) & v116) != 0 || v97 != v123;
            if (((1 << v96) & v124) == 0 && v99)
            {
              sub_6C7A4C(v119, v96, &v125);
            }
          }

LABEL_170:
          ++v92;
        }

        ++v91;
      }

      while (v91 != v122);
    }
  }

LABEL_215:
  sub_6C79A0(v119);
  v107 = v127;
  if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v107->__on_zero_shared)(v107);
    std::__shared_weak_count::__release_weak(v107);
  }
}

void sub_6B48C8(_Unwind_Exception *a1)
{
  sub_1F1A8(v2 - 104);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_6B4C98(uint64_t *a1, int **a2, void *a3)
{
  v6 = a2[4];
  v7 = v6 & 0xFF000000000000;
  v8 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
  v9 = (v8 - *v8);
  v10 = *v9;
  if ((v6 & 0xFF000000000000) != 0)
  {
    if (v10 < 0x29)
    {
      return;
    }

    v11 = v9[20];
    if (!v11)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v10 >= 0x27)
  {
    v11 = v9[19];
    if (v11)
    {
LABEL_7:
      v12 = (v8 + v11);
      v13 = *v12;
      v14 = *(v12 + v13);
      if (!*(v12 + v13))
      {
        return;
      }

      for (i = 0; i != v14; ++i)
      {
        v17 = sub_6C7F04(a3, i);
        if (v17 == 0xFF)
        {
          continue;
        }

        v18 = v17;
        v19 = *a1;
        v20 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
        v21 = (v20 - *v20);
        v22 = *v21;
        if (v7)
        {
          if (v22 < 0x29)
          {
            goto LABEL_25;
          }

          v23 = v21[20];
          if (!v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v22 < 0x27)
          {
            goto LABEL_25;
          }

          v23 = v21[19];
          if (!v23)
          {
            goto LABEL_25;
          }
        }

        if (*(v20 + v23 + *(v20 + v23)) > i)
        {
          v24 = sub_3EC10C(v19, v6 & 0xFFFFFFFFFFFFFFLL, i);
          v25 = (v24 - *v24);
          if (*v25 >= 5u)
          {
            v26 = v25[2];
            if (v26)
            {
              if (*(v24 + v26))
              {
                sub_6C8BDC(a3, v18);
              }
            }
          }
        }

LABEL_25:
        v27 = *a1;
        v28 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
        v29 = (v28 - *v28);
        v30 = *v29;
        if (v7)
        {
          if (v30 < 0x29)
          {
            goto LABEL_36;
          }

          v31 = v29[20];
          if (!v31)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v30 < 0x27)
          {
            goto LABEL_36;
          }

          v31 = v29[19];
          if (!v31)
          {
            goto LABEL_36;
          }
        }

        if (*(v28 + v31 + *(v28 + v31)) > i)
        {
          v32 = sub_3EC10C(v27, v6 & 0xFFFFFFFFFFFFFFLL, i);
          v33 = (v32 - *v32);
          if (*v33 >= 5u)
          {
            v34 = v33[2];
            if (v34)
            {
              if ((*(v32 + v34) & 2) != 0)
              {
                sub_6C8148(a3, v18);
              }
            }
          }
        }

LABEL_36:
        v35 = *a1;
        v36 = sub_2B51D8(*a1, v6 & 0xFFFFFFFFFFFFLL);
        v37 = (v36 - *v36);
        v38 = *v37;
        if (v7)
        {
          if (v38 < 0x29)
          {
            continue;
          }

          v39 = v37[20];
          if (!v39)
          {
            continue;
          }
        }

        else
        {
          if (v38 < 0x27)
          {
            continue;
          }

          v39 = v37[19];
          if (!v39)
          {
            continue;
          }
        }

        if (*(v36 + v39 + *(v36 + v39)) > i)
        {
          v40 = sub_3EC10C(v35, v6 & 0xFFFFFFFFFFFFFFLL, i);
          v41 = (v40 - *v40);
          if (*v41 >= 5u)
          {
            v42 = v41[2];
            if (v42)
            {
              if ((*(v40 + v42) & 0x20) != 0)
              {
                v43 = (*a2 - **a2);
                if (*v43 >= 0x9Bu && (v44 = v43[77]) != 0)
                {
                  v45 = *a2 + v44;
                  if ((v45[3] & 2) == 0 || (*(a1[946] + 2072) & 1) == 0)
                  {
                    if ((v45[3] & 2) == 0)
                    {
                      goto LABEL_51;
                    }

LABEL_57:
                    __p[0] = 0;
                    __p[1] = 0;
                    v62 = 0;
                    sub_6C8C0C(a3, v18, __p);
                    v53 = __p[0];
                    if (!__p[0])
                    {
                      continue;
                    }

                    v54 = __p[1];
                    v16 = __p[0];
                    if (__p[1] != __p[0])
                    {
                      do
                      {
                        v55 = *(v54 - 1);
                        v54 -= 3;
                        if (v55 < 0)
                        {
                          operator delete(*v54);
                        }
                      }

                      while (v54 != v53);
                      v16 = __p[0];
                    }

                    __p[1] = v53;
LABEL_11:
                    operator delete(v16);
                    continue;
                  }
                }

                else
                {
LABEL_51:
                  if (*(a1[946] + 2073) != 1)
                  {
                    goto LABEL_57;
                  }
                }

                v46 = sub_3EC10C(*a1, v6 & 0xFFFFFFFFFFFFFFLL, i);
                v47 = (v46 - *v46);
                if (*v47 >= 0xFu && (v48 = v47[7]) != 0)
                {
                  v49 = v46 + v48;
                  v50 = *(v46 + v48);
                  __p[0] = 0;
                  __p[1] = 0;
                  v62 = 0;
                  if (*&v49[v50])
                  {
                    operator new();
                  }

                  sub_3219E8(&v49[v50], __p);
                  v51 = *__p;
                  v52 = v62;
                }

                else
                {
                  v52 = 0;
                  v51 = 0uLL;
                }

                v59 = v51;
                v60 = v52;
                sub_6C8C0C(a3, v18, &v59);
                v56 = v59;
                if (!v59)
                {
                  continue;
                }

                v57 = *(&v59 + 1);
                v16 = v59;
                if (*(&v59 + 1) != v59)
                {
                  do
                  {
                    v58 = *(v57 - 1);
                    v57 -= 3;
                    if (v58 < 0)
                    {
                      operator delete(*v57);
                    }
                  }

                  while (v57 != v56);
                  v16 = v59;
                }

                *(&v59 + 1) = v56;
                goto LABEL_11;
              }
            }
          }
        }
      }
    }
  }
}

void sub_6B510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_6B5120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_6B5134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_6B5148(uint64_t a1, uint64_t a2, int a3)
{
  if (!sub_6C8980(a2))
  {
    return;
  }

  v5 = sub_68D7F4(a2);
  v6 = sub_6C8E70(a2);
  if (!(v5 | v6))
  {
    return;
  }

  v7 = v6;
  if ((v6 + v5) == sub_6C6B88(a2))
  {
    v8 = sub_6C6B88(a2);
    if (v8)
    {
      v9 = 0;
      v10 = v8;
      do
      {
        LOBYTE(__p) = 12;
        sub_6C7A4C(a2, v9++, &__p);
      }

      while (v10 != v9);
    }

    return;
  }

  __p = 0;
  v54 = 0;
  v55 = 0;
  if (a3 == 1)
  {
    v11 = sub_6C8244(a2, v5);
    v12 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v13 = v11[1];
    v14 = v13 - *v11;
    if (v13 != *v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = sub_6C6B88(a2);
    v16 = sub_6C9794(a2);
    v11 = sub_6C8244(a2, v16 - v5);
    v12 = v15 - v5;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v17 = v11[1];
    v14 = v17 - *v11;
    if (v17 != *v11)
    {
LABEL_10:
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }

  v18 = sub_6B5CD4(v11, &v50, a3);
  v19 = v54;
  if (v54 >= v55)
  {
    v21 = __p;
    v22 = (v54 - __p);
    v23 = v54 - __p + 1;
    if (v23 < 0)
    {
      sub_1794();
    }

    v24 = v55 - __p;
    if (2 * (v55 - __p) > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      operator new();
    }

    v26 = v54 - __p;
    *v22 = v18;
    v20 = v22 + 1;
    memcpy(0, v21, v26);
    __p = 0;
    v55 = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v54 = v18;
    v20 = v19 + 1;
  }

  v54 = v20;
  v27 = (v12 + v5);
  if (v27 <= v12)
  {
    v28 = v12;
  }

  else
  {
    v28 = (v12 + v5);
  }

  if (v12 < v27)
  {
    do
    {
      sub_6C8830(a2, v12++, &__p);
    }

    while (v28 != v12);
  }

  if (a3 == 1)
  {
    v29 = sub_6C6B88(a2);
    v30 = sub_6C6B88(a2);
    v31 = sub_6C8244(a2, v30 + ~v7);
    v32 = v29 - v7;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v33 = v31[1];
    v34 = v33 - *v31;
    if (v33 == *v31)
    {
      goto LABEL_32;
    }

LABEL_34:
    if ((v34 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v31 = sub_6C8244(a2, v7);
  v32 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v35 = v31[1];
  v34 = v35 - *v31;
  if (v35 != *v31)
  {
    goto LABEL_34;
  }

LABEL_32:
  v54 = __p;
  v36 = sub_6B5E34(v31, &v47, a3);
  v37 = v54;
  if (v54 >= v55)
  {
    v39 = __p;
    v40 = (v54 - __p);
    v41 = v54 - __p + 1;
    if (v41 < 0)
    {
      sub_1794();
    }

    v42 = v55 - __p;
    if (2 * (v55 - __p) > v41)
    {
      v41 = 2 * v42;
    }

    if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      operator new();
    }

    v44 = v54 - __p;
    *v40 = v36;
    v38 = v40 + 1;
    memcpy(0, v39, v44);
    __p = 0;
    v54 = v40 + 1;
    v55 = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v54 = v36;
    v38 = v37 + 1;
  }

  v54 = v38;
  v45 = (v32 + v7);
  if (v45 <= v32)
  {
    v46 = v32;
  }

  else
  {
    v46 = (v32 + v7);
  }

  if (v32 < v45)
  {
    do
    {
      sub_6C8830(a2, v32++, &__p);
    }

    while (v46 != v32);
  }

  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }
}

void sub_6B55C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v18 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6B56AC(uint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6B5768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_6B57E8(void *a1, unint64_t a2)
{
  if (a1[1] - *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, a1[1] - *a1);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + a2;
}

void sub_6B5900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_6B59E0(uint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6B5A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_6B5B1C(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  a4[1] = *a4;
  v8 = a2 & 0xFF000000000000;
  v9 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v8)
  {
    if (v11 < 0x29)
    {
      return;
    }

    v12 = v10[20];
    if (!v12)
    {
      return;
    }
  }

  else
  {
    if (v11 < 0x27)
    {
      return;
    }

    v12 = v10[19];
    if (!v12)
    {
      return;
    }
  }

  if (*(v9 + v12 + *(v9 + v12)) > a3)
  {
    v13 = sub_3EC10C(a1, a2, a3);
    v14 = (v13 - *v13);
    if (*v14 >= 0xBu)
    {
      v15 = v14[5];
      if (v15)
      {
        v16 = (v13 + v15 + *(v13 + v15));
        v17 = *v16;
        if (v17)
        {
          v18 = (v16 + 1);
          v19 = a4[1];
          do
          {
            v20 = *v18;
            v21 = a4[2];
            if (v19 < v21)
            {
              *v19++ = v20;
            }

            else
            {
              v22 = *a4;
              v23 = &v19[-*a4];
              v24 = (v23 + 1);
              if ((v23 + 1) < 0)
              {
                sub_1794();
              }

              v25 = v21 - v22;
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v24;
              }

              if (v26)
              {
                operator new();
              }

              v27 = &v19[-*a4];
              *v23 = v20;
              v19 = v23 + 1;
              memcpy(0, v22, v27);
              *a4 = 0;
              a4[1] = v23 + 1;
              a4[2] = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            a4[1] = v19;
            ++v18;
            --v17;
          }

          while (v17);
        }
      }
    }
  }
}

uint64_t sub_6B5CD4(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  v5 = &qword_27A2CB8;
  if (a3 == 1)
  {
    v5 = &qword_27A2CA0;
  }

  v6 = *v5;
  v7 = &qword_27A2CC0;
  if (a3 == 1)
  {
    v7 = &qword_27A2CA8;
  }

  v8 = *v7;
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v3 + 1 != v4)
  {
    v3 = v4 - 1;
  }

  return *v3;
}

uint64_t sub_6B5E34(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  v5 = &qword_27A2CB8;
  if (a3 == 1)
  {
    v5 = &qword_27A2CA0;
  }

  v6 = *v5;
  v7 = &qword_27A2CC0;
  if (a3 == 1)
  {
    v7 = &qword_27A2CA8;
  }

  v8 = *v7;
  if (v8 != v6)
  {
    if (((v8 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v3 + 1 != v4)
  {
    v3 = v4 - 1;
  }

  return *v3;
}

uint64_t sub_6B5F94(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = sub_2B4EDC(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFLL, (*(a2 + 32) & 0xFF000000000000) == 0);
  sub_31BA24(*a1, v6, a1 + 962, 0, 1, 1);
  a1[954] = a1[953];
  v7 = a1[962];
  v75 = a1[963];
  while (v7 != v75)
  {
    a1[954] = a1[953];
    v8 = sub_6ABAB4((a1 + 461), v7);
    v9 = (*v7 - **v7);
    if (*v9 >= 0x9Bu && (v10 = v9[77]) != 0)
    {
      v11 = (*(*v7 + v10 + 3) >> 2) & 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    v12 = *v7;
    v13 = *(v7 + 1);
    v14 = v7[4];
    v78 = v14;
    v76 = v12;
    v77 = v13;
    v15 = a1[954];
    v16 = a1[955];
    if (v15 >= v16)
    {
      v18 = a1[953];
      v19 = v15 - v18;
      v20 = (v15 - v18) >> 3;
      v21 = v20 + 1;
      if ((v20 + 1) >> 61)
      {
LABEL_110:
        sub_1794();
      }

      v22 = v16 - v18;
      if (v22 >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (!(v23 >> 61))
        {
          operator new();
        }

LABEL_111:
        sub_1808();
      }

      v24 = v20;
      v25 = (8 * v20);
      v26 = v14 & 0xFFFFFFFFFFFFFFLL;
      v27 = &v25[-v24];
      *v25 = v26;
      v17 = v25 + 1;
      memcpy(v27, v18, v19);
      a1[953] = v27;
      a1[954] = v17;
      a1[955] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v15 = v14 & 0xFFFFFFFFFFFFFFLL;
      v17 = v15 + 1;
    }

    a1[954] = v17;
    if ((v8 | v11))
    {
      while (1)
      {
        v31 = sub_2B4EDC(*a1, v78 & 0xFFFFFFFFFFFFLL, (v78 & 0xFF000000000000) == 0);
        sub_31BA24(*a1, v31, a1 + 965, 0, 1, 1);
        v33 = a1[965];
        v34 = a1[966];
        if (v33 == v34)
        {
          v37 = a1[965];
        }

        else
        {
          v35 = v33 + 40;
          while (*(v35 - 8) != v78 || *(v35 - 4) != WORD2(v78))
          {
            v28 = v35 == v34;
            v35 += 40;
            if (v28)
            {
              goto LABEL_55;
            }
          }

          v37 = v35 - 40;
          if (v35 - 40 != v34 && v35 != v34)
          {
            do
            {
              if (*(v35 + 32) != v78 || *(v35 + 36) != WORD2(v78))
              {
                v32 = *v35;
                v39 = *(v35 + 16);
                *(v37 + 32) = *(v35 + 32);
                *v37 = v32;
                *(v37 + 16) = v39;
                v37 += 40;
              }

              v35 += 40;
            }

            while (v35 != v34);
            v34 = a1[966];
            v33 = a1[965];
          }
        }

        if (v37 != v34)
        {
          v34 = v37;
          a1[966] = v37;
        }

LABEL_55:
        if (v33 == v34)
        {
          break;
        }

        if (v34 - v33 != 40)
        {
          v40 = sub_7135C4((a1 + 180), &v76, a1 + 965, -1, *&v32);
          if (v40 == -1 || v40 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[966] - a1[965]) >> 3))
          {
            break;
          }

          v33 = sub_6B8D68(a1 + 965, v40);
        }

        v41 = *v33;
        v42 = *(v33 + 16);
        v43 = *(v33 + 32);
        v78 = v43;
        v76 = v41;
        v77 = v42;
        v44 = a1[953];
        v45 = a1[954];
        v46 = v44;
        if (v44 != v45)
        {
          v46 = a1[953];
          while (__PAIR64__(*(v46 + 2), *v46) != __PAIR64__(WORD2(v43), v43) || *(v46 + 6) != BYTE6(v43))
          {
            if (++v46 == v45)
            {
              goto LABEL_66;
            }
          }
        }

        if (v46 != v45)
        {
          break;
        }

LABEL_66:
        v47 = a1[955];
        if (v45 >= v47)
        {
          v49 = v45 - v44;
          v50 = v45 - v44;
          v51 = v50 + 1;
          if ((v50 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v52 = v47 - v44;
          if (v52 >> 2 > v51)
          {
            v51 = v52 >> 2;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 61))
            {
              operator new();
            }

            goto LABEL_111;
          }

          *(8 * v50) = v43 & 0xFFFFFFFFFFFFFFLL;
          v48 = 8 * v50 + 8;
          memcpy(0, v44, v49);
          a1[953] = 0;
          a1[954] = v48;
          a1[955] = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v45 = v43 & 0xFFFFFFFFFFFFFFLL;
          v48 = (v45 + 1);
        }

        a1[954] = v48;
        v54 = sub_6ABAB4((a1 + 461), &v76);
        v55 = (v76 - *v76);
        if (*v55 >= 0x9Bu && (v56 = v55[77]) != 0)
        {
          if (!(v54 & 1 | (*(v76 + v56 + 3) >> 2) & 1))
          {
            break;
          }
        }

        else if ((v54 & 1) == 0)
        {
          break;
        }
      }
    }

    v28 = WORD2(v78) == *(a2 + 36) && v78 == *(a2 + 32);
    if (v28)
    {
      goto LABEL_3;
    }

    v29 = *a4;
    v30 = a4[1];
    if (*a4 != v30)
    {
      while (__PAIR64__(*(v29 + 4), *v29) != __PAIR64__(WORD2(v78), v78) || *(v29 + 6) != BYTE6(v78))
      {
        v29 += 48;
        if (v29 == v30)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_3;
    }

LABEL_83:
    v57 = *(a2 + 8);
    v58 = (v57 - *v57);
    v59 = *v58;
    if (*(a2 + 38))
    {
      if (v59 >= 5)
      {
        v60 = v58[2];
        if (v60)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v59 >= 9)
    {
      v60 = v58[4];
      if (v60)
      {
LABEL_89:
        v61 = *(v57 + v60);
        v62 = *(&v76 + 1);
        v63 = (*(&v76 + 1) - **(&v76 + 1));
        v64 = *v63;
        if (BYTE6(v78))
        {
          goto LABEL_94;
        }

        goto LABEL_90;
      }
    }

    v61 = 0;
    v62 = *(&v76 + 1);
    v63 = (*(&v76 + 1) - **(&v76 + 1));
    v64 = *v63;
    if (BYTE6(v78))
    {
LABEL_94:
      if (v64 >= 9)
      {
        v65 = v63[4];
        if (v65)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_97;
    }

LABEL_90:
    if (v64 >= 5)
    {
      v65 = v63[2];
      if (v65)
      {
LABEL_96:
        v66 = *(v62 + v65);
        goto LABEL_98;
      }
    }

LABEL_97:
    v66 = 0;
LABEL_98:
    v67 = *(a1[946] + 2304);
    v68 = v61 + 18000;
    v69 = v61 - 18000;
    if ((v68 >> 5) < 0x465u)
    {
      v69 = v68;
    }

    v70 = v66 - v69;
    if (v70 > 18000)
    {
      v70 -= 36000;
    }

    if (v70 < -17999)
    {
      v70 += 36000;
    }

    v71 = v70 / 100.0;
    if (a3 && v71 >= v67 || (a3 & 1) == 0 && v71 <= -v67)
    {
      return 1;
    }

LABEL_3:
    v7 += 5;
  }

  return 0;
}

void sub_6B6624(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_6C6B88(a2);
  if (v5)
  {
    v6 = 0;
    v7 = v5;
    v8 = -1;
    do
    {
      v10 = sub_6C91A4(v4, v6);
      if (v6 && v10)
      {
        v11 = v8;
        do
        {
          v12 = v11;
          if (!v11)
          {
            break;
          }

          v13 = sub_6C9214(v4, v11--);
        }

        while ((v13 & 1) != 0);
        v9 = sub_6CA868(v4, v6);
        sub_6CA924(v4, v12, v9);
      }

      ++v6;
      ++v8;
    }

    while (v6 != v7);
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  v14 = sub_6C6B88(v4);
  if (v14)
  {
    v15 = 0;
    v30 = v14;
    v31 = v4;
    do
    {
      v16 = sub_6CA868(v4, v15);
      v32 = v15;
      v34 = __p;
      v17 = v16[1];
      v18 = v17 - *v16;
      if (v17 != *v16)
      {
        v19 = 0;
        do
        {
          v20 = sub_6C7F04(a3, *(*v16 + v19));
          if (v20 != 0xFF)
          {
            v22 = __p;
            v21 = v34;
            v23 = __p;
            if (__p != v34)
            {
              v23 = __p;
              while (*v23 != v20)
              {
                if (++v23 == v34)
                {
                  v23 = v34;
                  break;
                }
              }
            }

            if (v23 == v34)
            {
              if (v34 >= v35)
              {
                v25 = (v34 - __p);
                v26 = v34 - __p + 1;
                if (v26 < 0)
                {
                  sub_1794();
                }

                v27 = v35 - __p;
                if (2 * (v35 - __p) > v26)
                {
                  v26 = 2 * v27;
                }

                if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v28 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v26;
                }

                if (v28)
                {
                  operator new();
                }

                v29 = v34 - __p;
                *v25 = v20;
                v24 = v25 + 1;
                memcpy(0, v22, v29);
                __p = 0;
                v34 = v25 + 1;
                v35 = 0;
                if (v22)
                {
                  operator delete(v22);
                }
              }

              else
              {
                *v34 = v20;
                v24 = v21 + 1;
              }

              v34 = v24;
            }
          }

          ++v19;
        }

        while (v19 != v18);
      }

      v4 = v31;
      sub_6CA8A8(v31, v32, &__p);
      v15 = v32 + 1;
    }

    while (v32 + 1 != v30);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_6B689C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    v13 = a1;
    operator delete(__p);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_6B68C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 1;
  v8 = sub_4D1F50(a2, a4);
  v9 = v7;
  if (v7 < sub_4D1DC0(a2))
  {
    v9 = v7;
    if (v7 <= *(a3 + 64))
    {
      v10 = v7;
      while (1)
      {
        v11 = sub_4D1F50(a2, v10);
        v12 = (*v11 - **v11);
        if (*v12 < 0x9Bu)
        {
          break;
        }

        v13 = v12[77];
        if (!v13 || (*(*v11 + v13 + 3) & 4) == 0)
        {
          break;
        }

        v9 = v10 + 1;
        if (v10 + 1 < sub_4D1DC0(a2) && v10++ < *(a3 + 64))
        {
          continue;
        }

        goto LABEL_12;
      }

      v9 = v10;
    }
  }

LABEL_12:
  sub_311DB8(v8, (a1 + 7624));
  if (v9 >= sub_4D1DC0(a2) || v9 > *(a3 + 64))
  {
    return v7;
  }

  v15 = sub_4D1F50(a2, v9);
  v16 = *(a1 + 7624);
  v17 = *(a1 + 7632);
  if (v16 != v17)
  {
    v18 = *(v15 + 32);
    while (__PAIR64__(*(v16 + 4), *v16) != __PAIR64__(WORD2(v18), v18) || *(v16 + 6) != BYTE6(v18))
    {
      v16 += 8;
      if (v16 == v17)
      {
        return v7;
      }
    }
  }

  if (v16 == v17)
  {
    return v7;
  }

  return v9;
}

int *sub_6B6A40(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_6B1BFC((a3 + 2008), a4 - *(a3 + 40));
  v8 = sub_4D1F50(a2, a4 + 1);
  result = sub_6C8EF8(v7);
  if (result)
  {
    result = sub_6CA9B0(v7);
    if (!result)
    {
      v10 = sub_6C6B88(v7);
      v11 = *a1;
      v12 = *(v8 + 32);
      v13 = v12 & 0xFF000000000000;
      result = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
      v14 = (result - *result);
      v15 = *v14;
      if (v13)
      {
        if (v15 < 0x29)
        {
          v16 = 0;
          goto LABEL_12;
        }

        v16 = v14[20];
        if (!v16)
        {
LABEL_12:
          if (v16 != v10)
          {
            return result;
          }

LABEL_13:
          result = sub_6C6B88(v7);
          if (result)
          {
            __p = 0;
            v18 = 0;
            v19 = 0;
            operator new();
          }

          return result;
        }
      }

      else
      {
        if (v15 < 0x27)
        {
          if (v10)
          {
            return result;
          }

          goto LABEL_13;
        }

        v16 = v14[19];
        if (!v16)
        {
          goto LABEL_12;
        }
      }

      if (*(result + v16 + *(result + v16)) != v10)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  return result;
}

void sub_6B6BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6B6BD8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_6B1BFC(a3 + 251, a3[8] - a3[5]);
  sub_4D1F50(a2, a3[8]);
  sub_6B7268();
  sub_6CACBC(v5);
  sub_6B748C();
  sub_6C6B88(v5);
}

void sub_6B6DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_6B6DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_6B6DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_6B6DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_6B6DFC(uint64_t a1, void *a2, void *a3)
{
  sub_4D1F50(a2, a3[8]);
  v4 = sub_6B1BFC(a3 + 251, a3[8] - a3[5]);
  sub_6CACBC(v4);
  sub_6B7268();
  sub_6B748C();
}

void sub_6B708C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_34BE0(&a12);
  _Unwind_Resume(a1);
}

void sub_6B7108(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_6B1BFC(a3 + 251, a3[8] - a3[5]);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_6B7B0C(a1, a2, a3, &__p);
  v7 = __p;
  if (__p != v17)
  {
    v8 = sub_6C6B88(v6);
    v9 = sub_6B79D0(0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3));
    sub_6C97D0(v6, v9);
    v7 = __p;
    v10 = v17;
    if (__p != v17)
    {
      do
      {
        sub_6C826C(v6, v8++, v7);
        v7 += 3;
      }

      while (v7 != v10);
      v7 = __p;
    }
  }

  if (v7)
  {
    v11 = v17;
    v12 = v7;
    if (v17 != v7)
    {
      v13 = v17;
      do
      {
        v15 = *(v13 - 3);
        v13 -= 3;
        v14 = v15;
        if (v15)
        {
          *(v11 - 2) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v7);
      v12 = __p;
    }

    v17 = v7;
    operator delete(v12);
  }
}

void sub_6B722C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_6B7240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_6B7254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6B7268()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  sub_5F1934(v16, v1);
  sub_69CA74(v15);
  bzero(v14, 0xA38uLL);
  sub_6B987C(v14);
  sub_6B3A9C(v5, v4, v16, v15, v14);
  sub_5C25A8(v14);
  sub_5C186C(v15);
  if (sub_6C9078(v16) && (v6 = sub_6C6B88(v2)) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = sub_6CA868(v2, v7);
      if (*v10 != v10[1])
      {
        v11 = sub_6C7F04(v2, v7);
        if (v11 != 0xFF && sub_6C6B88(v16) > v11)
        {
          v12 = sub_6C8244(v16, v11);
          if (v12[1] - *v12 <= 1uLL)
          {
            v8 = v8;
          }

          else
          {
            v8 = (v8 + 1);
          }
        }
      }

      ++v7;
    }

    while (v9 != v7);
  }

  else
  {
    v8 = 0;
  }

  sub_5C3168(v16);
  return v8;
}

void sub_6B7414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5C25A8(&a9);
  sub_5C186C(&STACK[0xA38]);
  sub_5C3168(&STACK[0x3BA8]);
  _Unwind_Resume(a1);
}

void sub_6B748C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = *v1;
  v10 = v1[1];
  if (v10 != *v1)
  {
    v12 = v1[1];
    do
    {
      v14 = *(v12 - 3);
      v12 -= 3;
      v13 = v14;
      if (v14)
      {
        *(v10 - 2) = v13;
        operator delete(v13);
      }

      v10 = v12;
    }

    while (v12 != v11);
  }

  v2[1] = v11;
  v15 = sub_4D1F50(v8, v6);
  sub_6B8418(v9, v15, &v56);
  if (v60)
  {
    v16 = v56 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16 || v57 == 0)
  {
    return;
  }

  v18 = (v56 - *v56);
  if (*v18 >= 9u && (v19 = v18[4]) != 0)
  {
    v20 = *(v56 + v19);
  }

  else
  {
    v20 = 0;
  }

  sub_6C6A34(v55);
  v21 = 2000;
  if (v4)
  {
    v21 = 2024;
  }

  v22 = *(v9[946] + v21);
  while (v20 <= v22)
  {
    sub_6E5620((v9 + 1), &v56, 0, &v53);
    v23 = *v53;
    v24 = v53[1];
    if (*v53 != v24)
    {
      v25 = *v53;
      while (1)
      {
        if (*(v25 + 241) == 1)
        {
          v26 = *(v25 + 6);
          if (v26 != 3 && v26 != 0)
          {
            break;
          }
        }

        v25 += 31;
        if (v25 == v24)
        {
LABEL_34:
          while (1)
          {
            if (*(v23 + 241) == 1)
            {
              v30 = *(v23 + 6);
              if (!v30 || v30 == 3)
              {
                goto LABEL_40;
              }
            }

            v23 += 31;
            if (v23 == v24)
            {
              goto LABEL_46;
            }
          }
        }
      }

      if (v25 == v24)
      {
        goto LABEL_34;
      }

      sub_6B1E18(v9, &v56, v55);
      sub_6CAA4C(v55);
      sub_69CA74(v52);
      bzero(v51, 0xA38uLL);
      sub_6B987C(v51);
      sub_6B3A9C(v9, &v56, v55, v52, v51);
      sub_5C25A8(v51);
      sub_5C186C(v52);
      v28 = 0;
      v29 = v54;
      if (v54)
      {
        goto LABEL_56;
      }

      goto LABEL_20;
    }

LABEL_40:
    if (v23 != v24)
    {
      v33 = *v23;
      v32 = v23[1];
      if (v33 != v32)
      {
        v34 = *v9;
        v35 = *(v32 - 8);
        v36 = sub_2B51D8(*v9, v35 & 0xFFFFFFFFFFFFLL);
        if (*(v34 + 7772) == 1)
        {
          v37 = sub_30C50C(v34 + 3896, v35, 0);
          v38 = &v37[-*v37];
          if (*v38 < 5u)
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v38 + 2);
            if (v39)
            {
              v39 += &v37[*&v37[v39]];
            }
          }

          v40 = v39 + ((v35 >> 30) & 0x3FFFC) + 4 + *(v39 + ((v35 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v40 = 0;
        }

        v41 = sub_31D7E8(v34, v35 & 0xFFFFFFFFFFFFLL, 1);
        v56 = v36;
        v57 = v40;
        v58 = v41;
        v59 = v42;
        v60 = v35;
        v43 = (v36 - *v36);
        if (*v43 < 9u)
        {
          v44 = 0;
        }

        else
        {
          v44 = v43[4];
          if (v44)
          {
            v44 = *(v36 + v44);
          }
        }

        v20 += v44;
        v28 = 1;
        v29 = v54;
        if (!v54)
        {
          goto LABEL_20;
        }

LABEL_56:
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        goto LABEL_20;
      }
    }

LABEL_46:
    v28 = 0;
    v29 = v54;
    if (v54)
    {
      goto LABEL_56;
    }

LABEL_20:
    if ((v28 & 1) == 0)
    {
      break;
    }
  }

  if (sub_6C9078(v55))
  {
    v45 = sub_6C6B88(v55);
    if (v45)
    {
      v46 = 0;
      v47 = v45;
      do
      {
        while (1)
        {
          v48 = sub_6C8244(v55, v46);
          v49 = v2[1];
          if (v49 < v2[2])
          {
            break;
          }

          v2[1] = sub_6B9BF8(v2, v48);
          if (v47 == ++v46)
          {
            goto LABEL_67;
          }
        }

        *v49 = 0;
        v49[1] = 0;
        v49[2] = 0;
        v50 = v48[1];
        if (v50 != *v48)
        {
          if (((v50 - *v48) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v2[1] = v49 + 3;
        v2[1] = v49 + 3;
        ++v46;
      }

      while (v47 != v46);
    }
  }

LABEL_67:
  sub_5C3168(v55);
}

void sub_6B7924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5C25A8(&a9);
  sub_5C186C(&STACK[0xA38]);
  sub_1F1A8(&STACK[0x3BA8]);
  sub_5C3168(&STACK[0x3BB8]);
  _Unwind_Resume(a1);
}

unint64_t sub_6B79D0(unint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6B7A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_6B7B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8 != *a4)
  {
    v10 = a4[1];
    do
    {
      v12 = *(v10 - 24);
      v10 -= 24;
      v11 = v12;
      if (v12)
      {
        *(v8 - 16) = v11;
        operator delete(v11);
      }

      v8 = v10;
    }

    while (v10 != v9);
  }

  a4[1] = v9;
  v13 = *(a3 + 64);
  if (v13 != *(a3 + 40))
  {
    v14 = sub_4D1F50(a2, *(a3 + 64));
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v33 = *v14;
    v34 = v16;
    v35 = v15;
    sub_69D1C4(a2, v13, __p);
    v17 = sub_7494F0(__p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v30 = 0;
    v18 = *(a3 + 40);
    v19 = v18 - 1 >= v13 - 1 ? v13 - 1 : v18 - 1;
    if (v13 > v18)
    {
      v20 = v13 - 1;
      v21 = (v13 << 32) - 0x100000000;
      do
      {
        v22 = sub_4D1F50(a2, v20);
        v23 = *(v22 + 32);
        v24 = *(v22 + 16);
        v33 = *v22;
        v34 = v24;
        v35 = v23;
        if (v17 > *(*(a1 + 7568) + 2000) || (sub_6ABAB4(a1 + 3688, &v33) & 1) != 0)
        {
          break;
        }

        v25 = sub_6B80C4(a1, a2, &v33, &v30 + 1, &v30);
        if (v25)
        {
          v28 = v25;
          v29 = sub_6B1BFC((a3 + 2008), (v21 >> 32) - *(a3 + 40));
          if (sub_312B7C(&v33, v28 & 0xFFFFFFFFFFFFFFLL))
          {
            __p[0] = 0;
            __p[1] = 0;
            v32 = 0;
            operator new();
          }

          sub_6C7E98(v29, 1);
          return;
        }

        v26 = sub_6B82E0(v20);
        sub_69D1C4(a2, v26, __p);
        v27 = sub_7494F0(__p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v17 += v27;
        --v20;
        v21 -= 0x100000000;
      }

      while (v19 != v20);
    }
  }
}

void sub_6B7DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **sub_6B7DEC(uint64_t *a1, uint64_t a2, char **a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v32 = a1;
    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v29 = 8 * ((a2 - v16) >> 3);
    v30 = v29;
    v31 = 0;
    sub_6B9338(&__p, a3);
    v4 = sub_6B95AC(a1, &__p, v4);
    v24 = v29;
LABEL_37:
    for (i = v30; i != v24; i -= 24)
    {
      v25 = *(i - 24);
      v30 = i - 24;
      if (v25)
      {
        *(i - 16) = v25;
        operator delete(v25);
        goto LABEL_37;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    v23 = a3[1] - *a3;
    if (v23)
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    a1[1] = (v7 + 3);
  }

  else
  {
    v8 = v7 - 3;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = (v7 + 3);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = *v8;
      v7[2] = *(v7 - 1);
      *v8 = 0;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
    }

    a1[1] = v9;
    if (v7 != (a2 + 24))
    {
      v10 = 0;
      v11 = a2 - v7 + 24;
      do
      {
        v13 = &v7[v10 / 8];
        v15 = &v7[v10 / 8 - 3];
        v14 = *v15;
        if (*v15)
        {
          *(v13 - 2) = v14;
          operator delete(v14);
          *v15 = 0;
          v7[v10 / 8 - 2] = 0;
          v7[v10 / 8 - 1] = 0;
        }

        v12 = v13 - 6;
        *v15 = *(v13 - 3);
        *(v13 - 1) = *(v13 - 4);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v10 -= 24;
      }

      while (v11 != v10);
      v9 = a1[1];
    }

    v20 = v9 <= a3 || v4 > a3;
    v21 = 3;
    if (v20)
    {
      v21 = 0;
    }

    v22 = &a3[v21];
    if (v4 != v22)
    {
      sub_384B90(v4, *v22, v22[1], v22[1] - *v22);
    }
  }

  return v4;
}

void sub_6B8090(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_6B80B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_6B80C4(uint64_t a1, uint64_t a2, int **a3, _BYTE *a4, _BYTE *a5)
{
  sub_6E5620(a1 + 8, a3, 0, &v24);
  v8 = *v24;
  v9 = v24[1];
  if (*v24 == v9)
  {
LABEL_30:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0x1000000000000;
    v22 = v25;
    if (!v25)
    {
      return v19 | v18 | v21 | v20;
    }

    goto LABEL_31;
  }

  while (1)
  {
    if (*(v8 + 241) != 1 || (*(v8 + 242) & 1) != 0)
    {
      goto LABEL_4;
    }

    v10 = *(v8 + 24);
    v11 = (v10 - 21) > 0x2D || ((1 << (v10 - 21)) & 0x250000002281) == 0;
    if (!v11 || v10 == 2)
    {
      v13 = 1;
      v14 = 1;
      v15 = v10 - 20;
      if ((v10 - 20) <= 0x2D)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
      v15 = v10 - 20;
      if ((v10 - 20) <= 0x2D)
      {
LABEL_16:
        if (((1 << v15) & 0x250000002281) != 0)
        {
          goto LABEL_17;
        }
      }
    }

    if (v10 != 1)
    {
      v14 = 0;
    }

LABEL_17:
    if (*(v8 + 208) != -1 && *(v8 + 216) != 0x7FFFFFFFFFFFFFFFLL && (v13 && *a4 != 1 || v14 && (*a5 & 1) == 0))
    {
      v17 = *v8;
      v16 = *(v8 + 8);
      if (*v8 != v16)
      {
        break;
      }
    }

LABEL_3:
    *a4 |= v13;
    *a5 |= v14;
LABEL_4:
    v8 += 248;
    if (v8 == v9)
    {
      goto LABEL_30;
    }
  }

  while (!sub_312B7C(a3, *v17))
  {
    if (++v17 == v16)
    {
      goto LABEL_3;
    }
  }

  v20 = *v17 & 0xFF00000000000000;
  v21 = *v17 & 0xFF000000000000;
  v18 = *v17 & 0xFFFF00000000;
  v19 = *v17;
  v22 = v25;
  if (v25)
  {
LABEL_31:
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  return v19 | v18 | v21 | v20;
}

uint64_t sub_6B82E0(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6B8398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_6B8418(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_6E5620((a1 + 1), a2, 0, &v21);
  v5 = *v21;
  v6 = v21[1];
  if (*v21 != v6)
  {
    while (1)
    {
      if (*(v5 + 241) == 1)
      {
        v7 = *(v5 + 6);
        if (!v7 || v7 == 3)
        {
          break;
        }
      }

      v5 += 31;
      if (v5 == v6)
      {
        goto LABEL_16;
      }
    }
  }

  if (v5 == v6 || (v10 = *v5, v9 = v5[1], v10 == v9))
  {
LABEL_16:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0x1000000000000;
    v17 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_22;
  }

  v11 = *a1;
  v12 = *(v9 - 8);
  v13 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v14 = sub_30C50C(v11 + 3896, v12, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v18 = v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  *a3 = v13;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v12;
  v17 = v22;
  if (v22)
  {
LABEL_22:
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_6B85E0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_59DC48(a1, a2, 1, (a1 + 7776));
  v8 = *(a1 + 7776);
  v9 = *(a1 + 7784);
  if (v8 == v9)
  {
LABEL_14:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 6) = 1;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    return;
  }

  while (1)
  {
    if (__PAIR64__(*(v8 + 4), *v8) == __PAIR64__(WORD2(a2), a2) && *(v8 + 6) == BYTE6(a2))
    {
      goto LABEL_4;
    }

    v10 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, (a2 & 0xFF000000000000) == 0);
    if (v10 == sub_2B4EDC(a1, *v8 & 0xFFFFFFFFFFFFLL, (*v8 & 0xFF000000000000) == 0))
    {
      goto LABEL_4;
    }

    if (a3 == 1)
    {
      break;
    }

    if (!a3 && *(v8 + 40) == 1)
    {
      *a4 = *v8;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v12 != v11)
      {
        if (((v12 - v11) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      goto LABEL_18;
    }

LABEL_4:
    v8 += 48;
    if (v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (*(v8 + 41) != 1)
  {
    goto LABEL_4;
  }

  *a4 = *v8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_18:
  *(a4 + 40) = *(v8 + 40);
}

void sub_6B880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 24) = v10;
  sub_4B5A18(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_6B8850(void *a1, void *a2, unsigned int a3, unsigned int a4, unint64_t a5)
{
  if (a3 >= a4)
  {
    return 1;
  }

  v25 = v5;
  v26 = v6;
  v10 = a4;
  v11 = a3;
  do
  {
    v15 = sub_4D1F50(a2, v11);
    v14 = v11 + 1;
    v16 = sub_6B89EC(a1, a2, v11, v11 + 1);
    if (v16 == -1)
    {
      sub_6E5620((a1 + 1), v15, 0, &v23);
      for (i = *v23; ; i += 248)
      {
        if (i == v23[1])
        {
          v20 = 1;
          v21 = v24;
          if (!v24)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (*(i + 241) == 1 && (*(i + 243) & 1) == 0)
        {
          v18 = *(i + 24);
          if (v18 != 3 && v18 != 0)
          {
            break;
          }
        }
      }

      v20 = 0;
      v21 = v24;
      if (!v24)
      {
LABEL_19:
        if (v20)
        {
          goto LABEL_4;
        }

        return 0;
      }

LABEL_18:
      if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_19;
      }

      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      if (v20)
      {
        goto LABEL_4;
      }

      return 0;
    }

    v12 = v16;
    v13 = sub_4D1F50(a2, v16);
    v14 = v12;
    if (sub_312B7C(v15, *(v13 + 32) & 0xFFFFFFFFFFFFFFLL) < a5)
    {
      return 0;
    }

LABEL_4:
    v11 = v14;
  }

  while (v14 < v10);
  return 1;
}

uint64_t sub_6B89EC(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (sub_4D1DC0(a2) <= a4)
  {
    return -1;
  }

  v8 = sub_4D1F50(a2, a3);
  sub_311DB8(v8, a1 + 953);
  if (a1[953] == a1[954])
  {
    return -1;
  }

  sub_4D0560();
  v10 = v9;
  v12 = v11 + a4;
  v13 = *(a1[946] + 2056) + a4;
  if (v13 < sub_4D1DC0(a2))
  {
    v14 = v12 + *(a1[946] + 2056);
    v15 = v10;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_30:
    if (!v15 || v14 >= sub_4D1DC0(v15))
    {
      goto LABEL_47;
    }

    do
    {
      v29 = sub_4D1F50(v10, v12);
      v30 = a1[953];
      v31 = a1[954];
      if (v30 != v31)
      {
        v32 = *(v29 + 32);
        while (__PAIR64__(*(v30 + 4), *v30) != __PAIR64__(WORD2(v32), v32) || *(v30 + 6) != BYTE6(v32))
        {
          v30 += 8;
          if (v30 == v31)
          {
            goto LABEL_34;
          }
        }
      }

      if (v30 != v31)
      {
        break;
      }

LABEL_34:
      ++v12;
    }

    while (v14 < sub_4D1DC0(v15));
LABEL_41:
    if (v10)
    {
      goto LABEL_42;
    }

LABEL_47:
    if (!v15 || v14 >= sub_4D1DC0(v15))
    {
      return -1;
    }

    goto LABEL_49;
  }

  sub_4D0568();
  v15 = v27;
  v14 = v28;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_5:
  if (v15)
  {
    while (1)
    {
      v16 = sub_4D1DC0(v10);
      v17 = sub_4D1DC0(v15);
      if (v12 >= v16 || v14 >= v17)
      {
        if (v12 < v16 == v14 < v17)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v18 = sub_4D1F50(v10, v12);
        if (v18 == sub_4D1F50(v15, v14))
        {
          goto LABEL_41;
        }
      }

      v19 = sub_4D1F50(v10, v12);
      v20 = a1[953];
      v21 = a1[954];
      if (v20 != v21)
      {
        v22 = *(v19 + 32);
        while (__PAIR64__(*(v20 + 4), *v20) != __PAIR64__(WORD2(v22), v22) || *(v20 + 6) != BYTE6(v22))
        {
          v20 += 8;
          if (v20 == v21)
          {
            goto LABEL_9;
          }
        }
      }

      if (v20 != v21)
      {
        goto LABEL_41;
      }

LABEL_9:
      ++v12;
    }
  }

  if (v12 < sub_4D1DC0(v10))
  {
    while (1)
    {
      v23 = sub_4D1F50(v10, v12);
      v24 = a1[953];
      v25 = a1[954];
      if (v24 != v25)
      {
        v26 = *(v23 + 32);
        while (__PAIR64__(*(v24 + 4), *v24) != __PAIR64__(WORD2(v26), v26) || *(v24 + 6) != BYTE6(v26))
        {
          v24 += 8;
          if (v24 == v25)
          {
            goto LABEL_22;
          }
        }
      }

      if (v24 != v25)
      {
        goto LABEL_41;
      }

LABEL_22:
      if (++v12 >= sub_4D1DC0(v10))
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  v33 = sub_4D1DC0(v10);
  v34 = v33;
  if (v15)
  {
    v35 = sub_4D1DC0(v15);
    if (v12 >= v34 || v14 >= v35)
    {
      if (v12 < v34 == v14 < v35)
      {
        return -1;
      }
    }

    else
    {
      v36 = sub_4D1F50(v10, v12);
      if (v36 == sub_4D1F50(v15, v14))
      {
        return -1;
      }
    }

LABEL_49:
    sub_4D0560();
    return v12 - v37;
  }

  if (v12 < v33)
  {
    goto LABEL_49;
  }

  return -1;
}

uint64_t sub_6B8D68(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 40 * a2;
}

void sub_6B8EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

__n128 sub_6B8F84(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *a1 = v2;
  *(a1 + 8) = v3;
  a2[1] = 0;
  v4 = a2[2];
  *(a1 + 16) = v4;
  v5 = a2[3];
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 8);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = a1 + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  v8 = a2[7];
  *(a1 + 56) = v8;
  v9 = a2[5];
  *(a1 + 48) = a2[6];
  a2[5] = 0;
  *(a1 + 40) = v9;
  a2[6] = 0;
  v10 = a2[8];
  *(a1 + 64) = v10;
  *(a1 + 72) = *(a2 + 18);
  if (v10)
  {
    v11 = *(v8 + 8);
    v12 = *(a1 + 48);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v9 + 8 * v11) = a1 + 56;
    a2[7] = 0;
    a2[8] = 0;
  }

  v13 = a2[12];
  *(a1 + 96) = v13;
  v14 = a2[10];
  *(a1 + 88) = a2[11];
  a2[10] = 0;
  *(a1 + 80) = v14;
  a2[11] = 0;
  v15 = a2[13];
  *(a1 + 104) = v15;
  *(a1 + 112) = *(a2 + 28);
  if (v15)
  {
    v16 = *(v13 + 8);
    v17 = *(a1 + 88);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v14 + 8 * v16) = a1 + 96;
    a2[12] = 0;
    a2[13] = 0;
  }

  v18 = a2[17];
  *(a1 + 136) = v18;
  v19 = a2[15];
  *(a1 + 128) = a2[16];
  a2[15] = 0;
  *(a1 + 120) = v19;
  a2[16] = 0;
  v20 = a2[18];
  *(a1 + 144) = v20;
  *(a1 + 152) = *(a2 + 38);
  if (v20)
  {
    v21 = *(v18 + 8);
    v22 = *(a1 + 128);
    if ((v22 & (v22 - 1)) != 0)
    {
      if (v21 >= v22)
      {
        v21 %= v22;
      }
    }

    else
    {
      v21 &= v22 - 1;
    }

    *(v19 + 8 * v21) = a1 + 136;
    a2[17] = 0;
    a2[18] = 0;
  }

  *(a1 + 160) = *(a2 + 40);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = a2[23];
  a2[21] = 0;
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 12);
  *(a1 + 208) = a2[26];
  a2[24] = 0;
  a2[25] = 0;
  a2[26] = 0;
  v23 = a2[27];
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 216) = v23;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 248) = a2[31];
  a2[30] = 0;
  a2[31] = 0;
  a2[29] = 0;
  v25 = *(a2 + 20);
  v24 = *(a2 + 21);
  v26 = *(a2 + 19);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v25;
  *(a1 + 336) = v24;
  *(a1 + 304) = v26;
  result = *(a2 + 18);
  v28 = *(a2 + 16);
  *(a1 + 272) = *(a2 + 17);
  *(a1 + 288) = result;
  *(a1 + 256) = v28;
  return result;
}

uint64_t sub_6B91D4(uint64_t **a1, uint64_t *a2)
{
  v2 = 0x4FA4FA4FA4FA4FA5 * (a1[1] - *a1);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xB60B60B60B60B6)
  {
    sub_1794();
  }

  if (0x9F49F49F49F49F4ALL * (a1[2] - *a1) > v3)
  {
    v3 = 0x9F49F49F49F49F4ALL * (a1[2] - *a1);
  }

  if ((0x4FA4FA4FA4FA4FA5 * (a1[2] - *a1)) >= 0x5B05B05B05B05BLL)
  {
    v5 = 0xB60B60B60B60B6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB60B60B60B60B6)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * (a1[1] - *a1);
  sub_6B8F84(v6, a2);
  v7 = 360 * v2 + 360;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_6B8F84(v12, v11);
      v11 += 45;
      v12 = v13 + 360;
    }

    while (v11 != v9);
    do
    {
      sub_5C3168(v8);
      v8 += 45;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_6B9338(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
    v5 = v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        v9 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v9;
          operator delete(v9);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        v6 += 24;
        v5 += 24;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 24 * v8;
    a1[2] = v5;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v11 = a2[1] - *a2;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[2] += 24;
}

void sub_6B9590(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6B95AC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v8 += 3;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v11 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v11;
        operator delete(v11);
      }

      v10 += 24;
    }

    while (v10 != v7);
  }

  v12 = *a1;
  v13 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v14 = v13 + v12 - a3;
  if (v12 != a3)
  {
    v15 = v12;
    v16 = (v13 + v12 - a3);
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      *v16 = *v15;
      v16[2] = *(v15 + 16);
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v15 += 24;
      v16 += 3;
    }

    while (v15 != a3);
    do
    {
      v17 = *v12;
      if (*v12)
      {
        *(v12 + 8) = v17;
        operator delete(v17);
      }

      v12 += 24;
    }

    while (v12 != a3);
  }

  a2[1] = v14;
  v18 = *a1;
  *a1 = v14;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_6B9710(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v8[1] = v13;
        operator delete(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_6B987C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 72) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 256) = -1;
  *(a1 + 224) = v2;
  *(a1 + 240) = v2;
  *(a1 + 208) = v2;
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 304) = xmmword_2297C80;
  *(a1 + 320) = 98;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 374) = 0;
  *(a1 + 384) = 5;
  *(a1 + 386) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  sub_734CE0(a1 + 464);
  *(a1 + 616) = 0;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a1 + 624) = v3;
  *(a1 + 640) = v3;
  *(a1 + 656) = v3;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 688) = -1;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 769) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 804) = 0;
  *(a1 + 809) = 0;
  *(a1 + 788) = 0u;
  sub_734CE0(a1 + 848);
  *(a1 + 1000) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1016) = xmmword_2291180;
  sub_608080(a1 + 1032);
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 2041) = 0u;
  *(a1 + 2057) = 3;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1;
  *(a1 + 2092) = 0;
  *(a1 + 2104) = -1;
  *(a1 + 2096) = -1;
  *(a1 + 2112) = -1;
  *(a1 + 2116) = 0x7FFFFFFF;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = 0xBFF0000000000000;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0x7FFFFFFF;
  *(a1 + 2212) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2224) = 0;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2232) = off_266BB28;
  *(a1 + 2272) = 0;
  *(a1 + 2276) = 1;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0;
  *(a1 + 2280) = off_266BB60;
  *(a1 + 2312) = 0;
  *(a1 + 2314) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2416) = 1;
  *(a1 + 2433) = 0;
  *(a1 + 2440) = 0;
  *(a1 + 2417) = 0u;
  *(a1 + 2448) = 0x7FFFFFFF;
  *(a1 + 2464) = 0;
  *(a1 + 2456) = 0x7FFFFFFF;
  *(a1 + 2460) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2472) = 0;
  *(a1 + 2480) = 0x8000000080000000;
  *(a1 + 2536) = 0;
  *(a1 + 2504) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2540) = 0x7FFFFFFF;
  *(a1 + 2544) = 0x8000000080000000;
  *(a1 + 2560) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2592) = -1;
  *(a1 + 2584) = -1;
  *(a1 + 2600) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2608) = 0;
  return a1;
}

void sub_6B9B94(_Unwind_Exception *a1)
{
  sub_3E5388(v1 + 848);
  sub_5ED22C((v1 + 824));
  sub_528FAC((v1 + 792));
  sub_5ED8EC((v1 + 704));
  sub_3E5388(v1 + 464);
  sub_593FC8((v1 + 440));
  sub_593FC8((v1 + 416));
  sub_593FC8(v2);
  sub_5ECFBC(v1 + 136);
  _Unwind_Resume(a1);
}

void **sub_6B9BF8(void ***a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v2)
  {
    v2 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = (8 * (a1[1] - *a1));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = (v5 + 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v5 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v11;
      v12[2] = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 3;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v8[1] = v13;
        operator delete(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_6B9DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

void *sub_6B9DE4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_6B9F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

void sub_6B9F80()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A2CD0 = 0u;
  unk_27A2CE0 = 0u;
  dword_27A2CF0 = 1065353216;
  sub_3A9A34(&xmmword_27A2CD0, v0);
  sub_3A9A34(&xmmword_27A2CD0, v3);
  sub_3A9A34(&xmmword_27A2CD0, __p);
  sub_3A9A34(&xmmword_27A2CD0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A2CA8 = 0;
    qword_27A2CB0 = 0;
    qword_27A2CA0 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6BA1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2CB8)
  {
    qword_27A2CC0 = qword_27A2CB8;
    operator delete(qword_27A2CB8);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BA310(_Unwind_Exception *a1)
{
  sub_6BA518((v1 + 2568));
  if (*(v1 + 2375) < 0)
  {
    operator delete(*(v1 + 2352));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6BA350(uint64_t a1, void *a2)
{
  sub_6B0CE8((a1 + 2568), a2);
  sub_6BAA34(a1 + 10312, a2);
  sub_6C51A0((a1 + 10784), a2);
  v4 = a2[138];
  v5 = a2[139];
  while (v4 != v5)
  {
    if ((*(v4 + 160) - 89) <= 1)
    {
      v6 = *(v4 + 2016);
        ;
      }

      *(v4 + 2016) = i;
    }

    v4 += 2616;
  }

  return sub_92CC7C(a1 + 10808, a2);
}

uint64_t sub_6BA418(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      sub_6B0CE8((a1 + 2568), v4);
      sub_6BAA34(a1 + 10312, v4);
      sub_6C51A0((a1 + 10784), v4);
      v6 = v4[138];
      v7 = v4[139];
      while (v6 != v7)
      {
        if ((*(v6 + 160) - 89) <= 1)
        {
          v8 = *(v6 + 2016);
            ;
          }

          *(v6 + 2016) = i;
        }

        v6 += 2616;
      }

      result = sub_92CC7C(a1 + 10808, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

void *sub_6BA518(void *a1)
{
  v2 = a1[965];
  if (v2)
  {
    a1[966] = v2;
    operator delete(v2);
  }

  v3 = a1[962];
  if (v3)
  {
    a1[963] = v3;
    operator delete(v3);
  }

  v4 = a1[959];
  if (v4)
  {
    a1[960] = v4;
    operator delete(v4);
  }

  v5 = a1[956];
  if (v5)
  {
    v6 = a1[957];
    v7 = a1[956];
    if (v6 != v5)
    {
      do
      {
        v9 = *(v6 - 32);
        if (v9)
        {
          v10 = *(v6 - 24);
          v8 = *(v6 - 32);
          if (v10 != v9)
          {
            do
            {
              v11 = *(v10 - 24);
              if (v11)
              {
                *(v10 - 16) = v11;
                operator delete(v11);
              }

              v10 -= 32;
            }

            while (v10 != v9);
            v8 = *(v6 - 32);
          }

          *(v6 - 24) = v9;
          operator delete(v8);
        }

        v6 -= 48;
      }

      while (v6 != v5);
      v7 = a1[956];
    }

    a1[957] = v5;
    operator delete(v7);
  }

  v12 = a1[953];
  if (v12)
  {
    a1[954] = v12;
    operator delete(v12);
  }

  sub_6D2D60(a1 + 1);
  return a1;
}

void sub_6BA610()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A2D28 = 0u;
  unk_27A2D38 = 0u;
  dword_27A2D48 = 1065353216;
  sub_3A9A34(&xmmword_27A2D28, v0);
  sub_3A9A34(&xmmword_27A2D28, v3);
  sub_3A9A34(&xmmword_27A2D28, __p);
  sub_3A9A34(&xmmword_27A2D28, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A2D00 = 0;
    qword_27A2D08 = 0;
    qword_27A2CF8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6BA858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2D10)
  {
    qword_27A2D18 = qword_27A2D10;
    operator delete(qword_27A2D10);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BA904(uint64_t a1, uint64_t a2)
{
  v5[23] = 19;
  strcpy(v5, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_EE90(a1, v3);
}

void sub_6BAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6BAA34(uint64_t a1, void *a2)
{
  v4 = a2[138];
  v5 = a2[139];
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 2008) != *(v4 + 2016))
      {
        v6 = (v4 + 385);
        if (!*(v4 + 386))
        {
          v6 = a2 + 1097;
        }

        sub_6BAD38(a1, v4, *v6);
        sub_6BAFC8(a1, a2, v4);
      }

      v4 += 2616;
    }

    while (v4 != v5);
    v4 = a2[138];
    v5 = a2[139];
  }

  while (v4 != v5)
  {
    v7 = *(v4 + 2008);
    v8 = *(v4 + 2016);
    while (v7 != v8)
    {
      v9 = sub_6C6B88(v7);
      if (v9)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (sub_6C784C(v7, v10))
          {
            if (sub_6BCFEC(a1, a2, v7, v10))
            {
              sub_6CA738(v7, v10);
            }
          }

          ++v10;
        }

        while (v11 != v10);
      }

      v7 += 360;
    }

    v4 += 2616;
  }

  sub_6BB414(a1, a2);
  v12 = sub_6BB604(a1, a2);
  v13 = sub_6BBDDC(v12, a2);
  v14 = a2[138];
  v15 = a2[139];
  if (v14 != v15)
  {
    do
    {
      v17 = *(v14 + 2016) - *(v14 + 2008);
      if (v17)
      {
        v18 = 0;
        v19 = 0x4FA4FA4FA4FA4FA5 * (v17 >> 3);
        do
        {
          v20 = sub_6B1BFC((v14 + 2008), v18);
          v13 = sub_6C6B88(v20);
          if (v13)
          {
            v21 = 0;
            v22 = v13;
            do
            {
              if (!sub_6C784C(v20, v21) || (v13 = sub_6C75FC(v20, v21), v13))
              {
                v31 = sub_6BDF88(a1, v14, v18, v21);
                v13 = sub_6CA720(v20, v21, &v31);
              }

              ++v21;
            }

            while (v22 != v21);
          }

          ++v18;
        }

        while (v18 != v19);
      }

      v16 = (v14 + 385);
      if (!*(v14 + 386))
      {
        v16 = a2 + 1097;
      }

      sub_6BC31C(v13, v14, *v16);
      v14 += 2616;
    }

    while (v14 != v15);
    v14 = a2[138];
    v15 = a2[139];
  }

  for (; v14 != v15; v14 += 2616)
  {
    v23 = *(v14 + 2008);
    for (i = *(v14 + 2016); v23 != i; v23 += 360)
    {
      if (*(v14 + 386))
      {
        v25 = (v14 + 385);
      }

      else
      {
        v25 = a2 + 1097;
      }

      v26 = *v25;
      v27 = sub_6C6E64(v23);
      if (v27)
      {
        sub_6BD830(v27, v23);
        sub_6BDAA4(v28, v23);
      }

      if (v26 != 1)
      {
        sub_6C9634(v23);
      }
    }
  }

  v29 = sub_74700();
  result = sub_74244(v29);
  if (result == 1)
  {
    return sub_6BC63C(result, a2);
  }

  return result;
}

uint64_t sub_6BAD38(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 160);
  if ((v3 - 25) <= 0x3F && ((1 << (v3 - 25)) & 0x9000000000000001) != 0 || v3 == 17)
  {
    return result;
  }

  v6 = *(a2 + 2008) + 360 * (*(a2 + 64) - *(a2 + 40));
  v7 = result;
  result = sub_6C9078(v6);
  if (!result || (*(*(v7 + 464) + 2501) & 1) == 0 && ((v3 - 41) < 0x13 || v3 == 7 || v3 == 26))
  {
    return result;
  }

  v10 = *(a2 + 160);
  if (v10 - 82 >= 3 && (v10 > 0x27 || ((1 << v10) & 0x8600050000) == 0))
  {
    goto LABEL_24;
  }

  if (sub_6C6B88(v6) < 2u)
  {
    v10 = *(a2 + 160);
    if (v10 - 82 < 3)
    {
LABEL_26:
      if (sub_6C6B88(v6) == 1)
      {
LABEL_36:
        v16 = v6;
        v17 = 0;
        v18 = 1;
        goto LABEL_39;
      }

LABEL_27:
      v13 = sub_6C6B88(v6);
      if (v13)
      {
        v14 = 0;
        v15 = v13;
        do
        {
          if ((sub_6C90A0(v6, v14) & 1) != 0 || sub_6CA980(v6, v14))
          {
            sub_6C90D0(v6, v14, 1);
          }

          ++v14;
        }

        while (v15 != v14);
      }

      if (sub_6CA980(v6, 0) || sub_6C6B88(v6) != 1)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_24:
    if (v10 > 0x27 || ((1 << v10) & 0x8600050000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v3 == 33)
  {
    v12 = 0;
    v11 = 1;
  }

  else
  {
    if (v3 != 34)
    {
      v20 = sub_6C6B88(v6);
      if (v20)
      {
        v21 = 0;
        v22 = v20;
        do
        {
          sub_6C90D0(v6, v21++, 1);
        }

        while (v22 != v21);
      }

      goto LABEL_40;
    }

    v11 = 0;
    v12 = 1;
  }

  sub_6C90D0(v6, 0, v11 == a3);
  v19 = sub_6C6B88(v6) - 1;
  v18 = v12 == a3;
  v17 = v19;
  v16 = v6;
LABEL_39:
  sub_6C90D0(v16, v17, v18);
LABEL_40:

  return sub_6C7E98(v6, 4);
}

uint64_t sub_6BAFC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a3[8];
  v7 = sub_6B1BFC(a3 + 251, v6 - a3[5]);
  sub_5F1934(v46, v7);
  v44 = a2;
  v8 = sub_4D1F50(a2, v6);
  v9 = (*v8 - **v8);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*v8 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *sub_6BCA74((v44 + 11832), v6);
  v42 = sub_67A3D8(*(a1 + 464), v12);
  v41 = sub_67A3F4(*(a1 + 464), v12);
  v40 = sub_67A448(*(a1 + 464), v12);
  v39 = sub_67A410(*(a1 + 464), v12);
  v37 = sub_67A42C(*(a1 + 464), v12);
  v13 = *(a3 + 10);
  v14 = v13 - 1;
  v15 = v6 - 1;
  if (v13 - 1 >= v6 - 1)
  {
    v14 = v6 - 1;
  }

  v43 = v14;
  if (v15 >= v13)
  {
    v17 = v15;
    v18 = v11;
    v38 = a1;
    do
    {
      v19 = sub_6BCC6C(v17);
      sub_69D1C4(v44, v19, __p);
      v20 = sub_7494F0(__p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v21 = sub_6B1BFC(a3 + 251, v17 - a3[5]);
      if (((sub_6C8EE0(v21) & 1) != 0 || sub_6C8EEC(v21)) && !sub_6C6B88(v21))
      {
        goto LABEL_11;
      }

      v22 = sub_5DBECC(a3 + 251, v17 - a3[5]);
      v23 = sub_6C8EF8(v22);
      if ((v23 & 1) != 0 || (v24 = sub_6CA9B0(v22), v23 = sub_6C6B88(v22), v23 == v24) || (v23 = sub_6C6B88(v22), !v23))
      {
        v27 = 0;
      }

      else
      {
        v25 = 0;
        v26 = v23 - 1;
        do
        {
          v23 = sub_6C75FC(v22, v25);
          v27 = v23;
          if (v26 == v25++)
          {
            v29 = 1;
          }

          else
          {
            v29 = v23;
          }
        }

        while (v29 != 1);
        a1 = v38;
      }

      v30 = sub_6BCDA8(v23, a3, v17);
      v31 = v30;
      if (v18 <= v42 || v11 <= v41)
      {
        sub_6BCE8C(v30, a3, v17, v46);
      }

      if (!sub_6C7034(v21))
      {
        v32 = sub_6C6A34(__p);
        sub_6BCE8C(v32, a3, v17, __p);
        sub_5C3168(__p);
      }

      sub_5FB8BC(v46, v21);
      if (sub_6C7E90(v21))
      {
        goto LABEL_11;
      }

      sub_6C7E98(v21, 1);
      if (v18 < v40)
      {
        goto LABEL_11;
      }

      v33 = sub_6BCA74((v44 + 11832), v17);
      v34 = v27 & v31;
      v35 = *v33;
      if (v18 > v39)
      {
        v34 = 0;
      }

      if (v34 == 1)
      {
        sub_6C7E98(v21, 7);
        v41 = sub_67A3F4(*(a1 + 464), v35);
      }

      else
      {
        if (v31)
        {
          if (v18 <= v39)
          {
            v36 = 5;
          }

          else
          {
            v36 = 3;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_11;
          }

          if (v18 <= v37)
          {
            v36 = 6;
          }

          else
          {
            v36 = 3;
          }
        }

        sub_6C7E98(v21, v36);
        v41 = sub_67A3F4(*(a1 + 464), v35);
      }

      v11 = 0;
LABEL_11:
      v11 += v20;
      v18 += v20;
      --v17;
    }

    while (v43 != v17);
  }

  return sub_5C3168(v46);
}

void sub_6BB414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1112);
  v3 = *(a2 + 1104);
  v4 = 0x3795876FF3795877 * ((v2 - v3) >> 3);
  if (v4 >= 3)
  {
    v7 = 2616;
    while (v2 + v7 - 2616 != v3)
    {
      v8 = *(v2 + v7 - 4848);
      v7 -= 2616;
      if (v8 == 5)
      {
        v9 = v4 + ~(0x3795876FF3795877 * (-v7 >> 3));
        v10 = v2 + v7;
        if (*(v10 - 608) != *(v10 - 600))
        {
          v11 = sub_6B1BFC((v10 - 608), *(v10 - 2552) - *(v10 - 2576));
          sub_6C94B4(v11, v11);
        }

        if (v9 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v9;
        }

        if (v9 >= 2)
        {
          v13 = 1;
          do
          {
            v14 = sub_578320((a2 + 1104), v13);
            if (v14[251] == v14[252])
            {
              ++v13;
            }

            else
            {
              v15 = v14;
              v16 = sub_6B1BFC(v14 + 251, v14[8] - v14[5]);
              v17 = sub_578320((a2 + 1104), ++v13);
              if (*(v17 + 1008) > sub_67A3D8(*(a1 + 464), *(v17 + 2057)) || (v18 = sub_6C7034(v16), v18 <= 1u))
              {
                sub_6C94B4(v16, v16);
              }

              else if ((*(v17 + 2058) & 1) != 0 || v15[9] < v15[3] || (sub_6BD330(v18, v15, v17, v16), v18 = sub_6C6E64(v16), !v18))
              {
                v19 = v15 + 385;
                if (!*(v15 + 386))
                {
                  v19 = (a2 + 1097);
                }

                sub_6BD478(v18, v17, v16, *v19);
              }
            }
          }

          while (v13 != v12);
        }

        return;
      }
    }
  }
}

uint64_t sub_6BB604(uint64_t result, void *a2)
{
  v2 = a2[138];
  v65 = a2[139];
  v66 = result;
  if (v2 != v65)
  {
    v3 = 0x1020C0086475758;
    while (*(v2 + 2008) == *(v2 + 2016))
    {
LABEL_4:
      v2 += 2616;
      if (v2 == v65)
      {
        return result;
      }
    }

    v4 = *(v2 + 64);
    v5 = sub_6B57E8(a2 + 1479, v4);
    v67 = sub_67A42C(*(v66 + 464), *v5);
    sub_69D1C4(a2, v4, &__p);
    v6 = sub_7494F0(&__p);
    if (__p)
    {
      v75 = __p;
      operator delete(__p);
    }

    v7 = sub_6B1BFC((v2 + 2008), *(v2 + 64) - *(v2 + 40));
    sub_5F1934(&__p, v7);
    v8 = *(v2 + 64);
    v9 = v8 - 1;
    v10 = *(v2 + 40);
    if (v10 - 1 < v8 - 1)
    {
      v9 = v10 - 1;
    }

    v69 = v9;
    if (v8 <= v10)
    {
LABEL_71:
      v47 = sub_6B1BFC((v2 + 2008), v8 - v10);
      v48 = *(v2 + 160);
      if (v48 - 82 >= 3)
      {
        v49 = v47;
        if (v48 > 0x27 || ((1 << v48) & 0x8600050000) == 0)
        {
          v50 = *(v2 + 72);
          v51 = *(v2 + 24);
          v52 = v50 >= v51;
          if (v50 > v51)
          {
            v51 = *(v2 + 72);
          }

          v68 = v51;
          if (!v52)
          {
            do
            {
              v70 = v50;
              v53 = sub_6B1BFC((v2 + 2008), v50 - *(v2 + 40));
              v54 = sub_6C6B88(v49);
              if (v54)
              {
                v55 = 0;
                v56 = v54;
                do
                {
                  v57 = sub_6CA868(v49, v55);
                  v58 = v2;
                  v59 = v3;
                  v61 = *v57;
                  v60 = v57[1];
                  if (*v57 != v60)
                  {
                    do
                    {
                      v62 = *v61;
                      v63 = sub_6C784C(v49, v55);
                      sub_6C90D0(v53, v62, v63);
                      v64 = sub_6C9088(v49, v55);
                      sub_6C90F0(v53, v62, v64);
                      ++v61;
                    }

                    while (v61 != v60);
                  }

                  ++v55;
                  v3 = v59;
                  v2 = v58;
                }

                while (v55 != v56);
              }

              v49 = sub_6B1BFC((v2 + 2008), v70 - *(v2 + 40));
              v50 = v70 + 1;
            }

            while (v70 + 1 != v68);
          }
        }
      }

      result = sub_5C3168(&__p);
      goto LABEL_4;
    }

    v11 = v8 - 1;
    while (1)
    {
      v18 = sub_6B1BFC((v2 + 2008), v11 - *(v2 + 40));
      if (((sub_6C8EE0(v18) & 1) != 0 || sub_6C8EEC(v18)) && !sub_6C6B88(v18))
      {
        v46 = sub_6BCC6C(v11);
        sub_69D1C4(a2, v46, &v72);
        v30 = sub_7494F0(&v72);
        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        goto LABEL_14;
      }

      if (v6 <= v67)
      {
        if (sub_6C8EF8(v18) && !sub_6CA9B0(v18) && (v23 = sub_6C6B88(v18), sub_6C6B88(&__p) == v23))
        {
          sub_6C93D0(v18, &__p);
        }

        else
        {
          v24 = sub_6C6B88(v18);
          if (v24)
          {
            v25 = 0;
            v26 = v24;
            do
            {
              v27 = sub_6CA868(v18, v25);
              if (sub_6C784C(v18, v25))
              {
                v28 = sub_6CA128(&__p, v27);
              }

              else
              {
                v28 = 0;
              }

              sub_6C90F0(v18, v25++, v28);
            }

            while (v26 != v25);
          }

          if (!sub_6C6E64(v18))
          {
            sub_6BD594(v66, v2, v18);
          }
        }
      }

      else
      {
        v19 = sub_6C6B88(v18);
        if (v19)
        {
          v20 = 0;
          v21 = v19;
          do
          {
            if (sub_6C784C(v18, v20))
            {
              v22 = !sub_6C75FC(v18, v20);
            }

            else
            {
              v22 = 0;
            }

            sub_6C90F0(v18, v20++, v22);
          }

          while (v21 != v20);
        }
      }

      v29 = sub_6BCC6C(v11);
      sub_69D1C4(a2, v29, &v72);
      v30 = sub_7494F0(&v72);
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (&__p != v18)
      {
        break;
      }

      v82 = *(v18 + 160);
      v12 = *(v18 + 223);
      v85[0] = *(v18 + 216);
      *(v85 + 7) = v12;
LABEL_13:
      v13 = *(v18 + 256);
      v14 = *(v18 + 288);
      v88 = *(v18 + 272);
      v89 = v14;
      v87 = v13;
      v15 = *(v18 + 304);
      v16 = *(v18 + 320);
      v17 = *(v18 + 336);
      v93 = *(v18 + 352);
      v91 = v16;
      v92 = v17;
      v90 = v15;
LABEL_14:
      v6 += v30;
      if (v69 == --v11)
      {
        v10 = *(v2 + 40);
        v8 = *(v2 + 64);
        goto LABEL_71;
      }
    }

    v78 = *(v18 + 32);
    v31 = *(v18 + 16);
    if (!*&v75 || (bzero(__p, 8 * *&v75), v32 = v76, v76 = 0, v77 = 0, !v32))
    {
LABEL_43:
      if (v31)
      {
        operator new();
      }

LABEL_67:
      v79[8] = *(v18 + 72);
      sub_5FC0A8(v79, *(v18 + 56), 0);
      v80[8] = *(v18 + 112);
      sub_5FC2D0(v80, *(v18 + 96), 0);
      v81[8] = *(v18 + 152);
      sub_5FC2D0(v81, *(v18 + 136), 0);
      v82 = *(v18 + 160);
      sub_5FC404(&v83, *(v18 + 168), *(v18 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 176) - *(v18 + 168)) >> 3));
      sub_5FC404(&v84, *(v18 + 192), *(v18 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 200) - *(v18 + 192)) >> 3));
      v45 = *(v18 + 216);
      *(v85 + 7) = *(v18 + 223);
      v85[0] = v45;
      sub_5FC668(&v86, *(v18 + 232), *(v18 + 240), (*(v18 + 240) - *(v18 + 232)) >> 6);
      goto LABEL_13;
    }

    while (1)
    {
      v35 = v32;
      if (!v31)
      {
        do
        {
          v44 = *v35;
          operator delete(v35);
          v35 = v44;
        }

        while (v44);
        goto LABEL_67;
      }

      v36 = *(v31 + 16);
      v32[16] = v36;
      v37 = (v32 + 16);
      v32[17] = *(v31 + 17);
      v32 = *v32;
      v35[1] = v36;
      v38 = sub_5FBC6C(&__p, v36, v37);
      v39 = v75;
      v40 = v35[1];
      v41 = vcnt_s8(v75);
      v41.i16[0] = vaddlv_u8(v41);
      if (v41.u32[0] > 1uLL)
      {
        if (v40 >= *&v75)
        {
          v40 %= *&v75;
        }
      }

      else
      {
        v40 &= *&v75 - 1;
      }

      if (v38)
      {
        *v35 = *v38;
        *v38 = v35;
        if (!*v35)
        {
          goto LABEL_48;
        }

        v42 = *(*v35 + 8);
        if (v41.u32[0] > 1uLL)
        {
          if (v42 >= *&v39)
          {
            v42 %= *&v39;
          }
        }

        else
        {
          v42 &= *&v39 - 1;
        }

        if (v42 == v40)
        {
          goto LABEL_48;
        }

        v34 = __p + 8 * v42;
      }

      else
      {
        *v35 = v76;
        v76 = v35;
        v43 = __p;
        *(__p + v40) = &v76;
        if (!*v35)
        {
          goto LABEL_48;
        }

        v33 = *(*v35 + 8);
        if (v41.u32[0] <= 1uLL)
        {
          v33 &= *&v39 - 1;
        }

        else if (v33 >= *&v39)
        {
          v33 %= *&v39;
        }

        v34 = &v43[8 * v33];
      }

      *v34 = v35;
LABEL_48:
      ++v77;
      v31 = *v31;
      if (!v32)
      {
        goto LABEL_43;
      }
    }
  }

  return result;
}

uint64_t sub_6BBDDC(uint64_t a1, uint64_t a2)
{
  sub_6C6A3C(v41, 0);
  v38 = a2;
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v4 = 0;
    v37 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v5 = sub_578320((v38 + 1104), v4);
      v6 = v5[251];
      if (v6 != v5[252])
      {
        if (sub_6C6E64(v41))
        {
          v7 = sub_6C6B88(v41);
          if (v7)
          {
            v8 = 0;
            v9 = v7;
            do
            {
              v10 = sub_6CA868(v41, v8);
              v11 = *v10;
              v12 = v10[1];
              while (v11 != v12)
              {
                v13 = *v11;
                if (v13 < sub_6C6B88(v6))
                {
                  if (sub_6C9088(v41, v8))
                  {
                    sub_6C911C(v6, v13, 1);
                  }
                }

                ++v11;
              }

              ++v8;
            }

            while (v8 != v9);
          }
        }

        else
        {
          v14 = sub_6C6B88(v6);
          if (v14)
          {
            v15 = 0;
            v16 = v14;
            do
            {
              sub_6C911C(v6, v15++, 1);
            }

            while (v16 != v15);
          }
        }

        v17 = sub_6C7168(v6);
        v39 = v4;
        if (v17 > sub_6C7034(v6) && sub_6C7E90(v6) <= 1)
        {
          sub_6C7E98(v6, 2);
        }

        v18 = 0x4FA4FA4FA4FA4FA5 * ((v5[252] - v5[251]) >> 3);
        if (v18 >= 2)
        {
          for (i = 1; i != v18; ++i)
          {
            v23 = sub_6B1BFC(v5 + 251, i - 1);
            v24 = sub_6B1BFC(v5 + 251, i);
            if (sub_6C7168(v23))
            {
              v25 = sub_6C6B88(v23);
              if (v25)
              {
                v26 = 0;
                v27 = v25;
                do
                {
                  if (sub_6C90B8(v23, v26))
                  {
                    v28 = sub_6CA868(v23, v26);
                    v29 = *v28;
                    v30 = v28[1];
                    while (v29 != v30)
                    {
                      v31 = *v29;
                      if (v31 < sub_6C6B88(v24))
                      {
                        sub_6C911C(v24, v31, 1);
                      }

                      ++v29;
                    }
                  }

                  v32 = sub_6C7168(v24);
                  if (sub_6C6B88(v24) == v32)
                  {
                    break;
                  }

                  ++v26;
                }

                while (v26 != v27);
              }
            }

            if (!sub_6C7168(v24))
            {
              v33 = sub_6C6B88(v24);
              if (v33)
              {
                v34 = 0;
                v35 = v33;
                do
                {
                  sub_6C911C(v24, v34++, 1);
                }

                while (v35 != v34);
              }
            }
          }
        }

        v19 = v5[9];
        v20 = v5[3];
        if (v19 == v20)
        {
          v21 = sub_6B1BFC(v5 + 251, v5[8] - v5[5]);
          v4 = v39;
LABEL_45:
          sub_5F1934(v40, v21);
          goto LABEL_4;
        }

        v4 = v39;
        if (v19 < v20)
        {
          v21 = v5[252] - 360;
          goto LABEL_45;
        }
      }

      sub_6C6A3C(v40, 0);
LABEL_4:
      sub_6BDD8C(v41, v40);
      sub_5C3168(v40);
      ++v4;
    }

    while (v4 != v37);
  }

  return sub_5C3168(v41);
}

void sub_6BC31C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 1;
  switch(*(a2 + 160))
  {
    case 1:
    case 0x1B:
      v3 = 3;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 != v5)
      {
        goto LABEL_21;
      }

      return;
    case 2:
    case 0x1C:
      v3 = 4;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 != v5)
      {
        goto LABEL_21;
      }

      return;
    case 4:
      v3 = 13;
      goto LABEL_18;
    case 0xB:
      if (a3)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    case 0x14:
    case 0x1D:
    case 0x3E:
    case 0x41:
LABEL_18:
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 != v5)
      {
        goto LABEL_21;
      }

      return;
    case 0x15:
    case 0x1E:
    case 0x3F:
    case 0x42:
      v3 = 2;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    case 0x3C:
      v3 = 5;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    case 0x3D:
      v3 = 6;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    default:
      v3 = 12;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      break;
  }

  do
  {
LABEL_21:
    if ((sub_6C7D08(v4) & 1) != 0 || sub_6C7D24(v4))
    {
      v6 = sub_6C6B88(v4);
      if (v6)
      {
        v7 = 0;
        v8 = v6;
        do
        {
          if (sub_6C9088(v4, v7))
          {
            v9 = sub_6C8244(v4, v7);
            if (sub_6C7D24(v4))
            {
              v10 = v3;
            }

            else
            {
              v10 = 12;
            }

            v13 = v10;
            v11 = v9[1];
            v12 = *v9;
            if (*v9 != v11)
            {
              while (*v12 != v10)
              {
                if (++v12 == v11)
                {
                  v12 = v9[1];
                  break;
                }
              }
            }

            if (v11 == v12)
            {
              sub_6C82CC(v4, v7, &v13);
            }

            else
            {
              sub_6C8538(v4, v7, &v12[-*v9], 0);
            }
          }

          ++v7;
        }

        while (v7 != v8);
      }
    }

    v4 += 360;
  }

  while (v4 != v5);
}

uint64_t sub_6BC63C(uint64_t a1, void *a2)
{
  v3 = sub_74700();
  if (*sub_7424C(v3))
  {
    v4 = sub_7424C(v3);
    if (!*(*v4 + *(**v4 - 24) + 32))
    {
      v7 = sub_7424C(v3);
      sub_5DC0E8(*v7, a2);
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v15);
      sub_4A5C(&v15, "Successfully wrote DOT graph.", 29);
      if ((v25 & 0x10) != 0)
      {
        v11 = v24;
        if (v24 < v21)
        {
          v24 = v21;
          v11 = v21;
        }

        v12 = v20;
        v8 = v11 - v20;
        if (v11 - v20 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((v25 & 8) == 0)
        {
          v8 = 0;
          v14 = 0;
LABEL_30:
          *(&__p + v8) = 0;
          sub_7E854(&__p, 1u);
          goto LABEL_31;
        }

        v12 = v18;
        v8 = v19 - v18;
        if ((v19 - v18) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_38:
          sub_3244();
        }
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v14 = v8;
      if (v8)
      {
        memmove(&__p, v12, v8);
      }

      goto LABEL_30;
    }
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v15);
  sub_4A5C(&v15, "Could not write DOT graph to debug stream!", 42);
  if ((v25 & 0x10) != 0)
  {
    v9 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v9 = v21;
    }

    v10 = v20;
    v6 = v9 - v20;
    if (v9 - v20 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_21:
      sub_3244();
    }

LABEL_14:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v14 = v6;
    if (v6)
    {
      memmove(&__p, v10, v6);
    }

    goto LABEL_19;
  }

  if ((v25 & 8) != 0)
  {
    v10 = v18;
    v6 = v19 - v18;
    if ((v19 - v18) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v14 = 0;
LABEL_19:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 3u);
LABEL_31:
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  std::locale::~locale(&v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_6BC9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

unint64_t sub_6BCA74(void *a1, unint64_t a2)
{
  if (a1[1] - *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, a1[1] - *a1);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + a2;
}

void sub_6BCB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_6BCC6C(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6BCD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6BCDA8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = sub_5DBECC((a2 + 2008), a3 - *(a2 + 40));
  if (sub_6C8EF8(v3))
  {
    return 0;
  }

  v4 = sub_6C6B88(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4;
  while (1)
  {
    v7 = sub_6C8244(v3, v5);
    if (v7[1] - *v7 >= 2uLL)
    {
      v8 = sub_6C8244(v3, v5);
      v9 = *v8;
      v10 = v8[1];
      if (*v8 != v10)
      {
        while (*v9 != 12)
        {
          if (++v9 == v10)
          {
            v9 = v8[1];
            break;
          }
        }
      }

      if (v9 != v10)
      {
        return 1;
      }
    }

    if (++v5 == v6)
    {
      return 0;
    }
  }
}

void sub_6BCE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_6B1BFC((a2 + 2008), a3 - *(a2 + 40));
  if (!sub_6CA9B0(v5) && (v6 = sub_6C6B88(v5), sub_6C6B88(a4) == v6) && sub_6C8EF8(v5))
  {

    sub_6C92F0(v5, a4);
  }

  else
  {
    v7 = sub_6C6B88(v5);
    if (v7)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        v11 = sub_6CA868(v5, v8);
        if (*v11 == v11[1])
        {
          if (sub_6CA9B0(v5))
          {
            v10 = 0;
          }

          else
          {
            v10 = !sub_6C75FC(v5, v8);
          }
        }

        else
        {
          v12 = v11;
          v13 = sub_6C7034(a4);
          v14 = sub_6C6B88(a4);
          v10 = 1;
          if (v14 && v13)
          {
            v10 = sub_6CA0D8(a4, v12);
          }
        }

        sub_6C90D0(v5, v8++, v10);
      }

      while (v9 != v8);
    }
  }
}

uint64_t sub_6BCFEC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (!sub_6C8C84(a3, a4))
  {
    return 0;
  }

  v8 = sub_6C8D70(a3, a4);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  sub_353184(&v32, *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3));
  v9 = v32;
  if (v32 != v33)
  {
    v10 = sub_6C6B4C(a3);
    v11 = sub_6BE3B8(a2 + 150, v10);
    v12 = sub_4D26AC(a2);
    v13 = *v11;
    v14 = *(a1 + 464);
    v15 = *(v14 + 2064) * (10 * (*v11 - v12));
    if (v15 >= 0.0)
    {
      if (v15 >= 4.50359963e15)
      {
        goto LABEL_12;
      }

      v16 = (v15 + v15) + 1;
    }

    else
    {
      if (v15 <= -4.50359963e15)
      {
        goto LABEL_12;
      }

      v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
    }

    v15 = (v16 >> 1);
LABEL_12:
    v18 = *(v14 + 2060);
    v19 = v18 + v15;
    if (v19 < 0 != __OFADD__(v18, v15))
    {
      v20 = -5;
    }

    else
    {
      v20 = 5;
    }

    sub_4D26AC(a2);
    v21 = v19 / 10;
    v22 = (v20 + v19 % 10);
    v23 = *(a1 + 456);
    v24 = sub_6C6B4C(a3);
    v25 = sub_4D1F50(a2, v24);
    sub_320EC8(v23, *(v25 + 32) | (*(v25 + 36) << 32), v31);
    sub_386C(v30, v21 + v13 + (((103 * v22) >> 15) & 1) + ((103 * v22) >> 10));
  }

  v17 = 1;
  if (v32)
  {
    v26 = v33;
    v27 = v32;
    if (v33 != v32)
    {
      do
      {
        v28 = *(v26 - 1);
        v26 -= 3;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v9);
      v27 = v32;
    }

    v33 = v9;
    operator delete(v27);
  }

  return v17;
}

void sub_6BD2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_3874(va);
  sub_25F00(va1);
  sub_1A104((v8 - 88));
  _Unwind_Resume(a1);
}

unint64_t sub_6BD330(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 2008);
  v7 = *(a3 + 2016);
  if (v6 == v7)
  {
    v9 = *(a3 + 2008);
  }

  else
  {
    while (sub_6C8EEC(v6))
    {
      v6 += 360;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v9 = v6;
    v7 = *(a3 + 2016);
    v6 = *(a3 + 2008);
  }

  if (v9 != v7)
  {
    v6 = v9;
  }

  v10 = a2[8] - a2[5];
  v11 = sub_6B1BFC(a2 + 251, v10);
  result = sub_6C6B88(v11);
  if (result)
  {
    v13 = 0;
    v14 = result;
    do
    {
      v16 = sub_6B1BFC(a2 + 251, v10);
      v17 = sub_6CA868(v16, v13);
      v18 = *v17;
      v19 = v17[1];
      if (*v17 == v19)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v21 = *v18;
          v22 = sub_6C6B88(v6);
          v23 = v21 >= v22;
          v15 = (v21 < v22) | v20;
          if (!v23 && (v20 & 1) == 0)
          {
            v15 = sub_6C784C(v6, v21);
          }

          ++v18;
          v20 = v15;
        }

        while (v18 != v19);
      }

      result = sub_6C90F0(a4, v13++, v15 & 1);
    }

    while (v13 != v14);
  }

  return result;
}

void sub_6BD478(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = *(a2 + 160);
  v9 = (v6 - 20) <= 0x2D && ((1 << (v6 - 20)) & 0x250000002281) != 0 || v6 == 1;
  v10 = 1;
  if ((v6 - 21) <= 0x2D && ((1 << (v6 - 21)) & 0x250000002281) != 0)
  {
    v11 = sub_6C9DC8(a3);
    v12 = sub_6C9F58(a3);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = v6 == 2;
    v11 = sub_6C9DC8(a3);
    v12 = sub_6C9F58(a3);
    if (v9)
    {
LABEL_13:
      if (a4 == 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_21;
    }
  }

  if (v10)
  {
    if (a4 == 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

LABEL_21:

    sub_6C90F0(a3, v13, 1);
    return;
  }

  sub_6C94B4(a3, a3);
}

void sub_6BD594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_6B1BFC((a2 + 2008), *(a2 + 64) - *(a2 + 40));
  v6 = sub_6C6E64(v5);
  if (!v6)
  {
    v9 = *(a2 + 160);
    v12 = (v9 - 20) <= 0x2D && ((1 << (v9 - 20)) & 0x250000002281) != 0 || v9 == 1;
    if (((v9 - 21) > 0x2D || ((1 << (v9 - 21)) & 0x250000002281) == 0) && v9 != 2 && !v12)
    {
      goto LABEL_4;
    }

    v13 = a3;
    v14 = 1;

LABEL_20:
    sub_6BD6CC(v6, v13, v14, v12);
    return;
  }

  v7 = v6;
  v8 = sub_6C9694(v5);
  v6 = sub_6C9718(v5);
  if (v8 & 1) != 0 || (v6)
  {
    v14 = v7;
    v13 = a3;
    v12 = v8;

    goto LABEL_20;
  }

LABEL_4:

  sub_6C94B4(a3, a3);
}

void sub_6BD6CC(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = a3;
  if (a3 <= sub_6C6B88(a2))
  {
    v7 = sub_6C6B88(a2);
    if (a4)
    {
      if (v7)
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (sub_6C784C(a2, v8))
          {
            v10 = (v5 != 0) & ~sub_6CA768(a2, v8);
          }

          else
          {
            v10 = 0;
          }

          sub_6C90F0(a2, v8, v10);
          v5 -= sub_6C9088(a2, v8++);
        }

        while (v9 != v8);
      }
    }

    else
    {
      v11 = (v7 - 1);
      if (v11 >= -1)
      {
        v12 = -1;
      }

      else
      {
        v12 = (v7 - 1);
      }

      if (((v7 - 1) & 0x80) == 0)
      {
        do
        {
          v14 = sub_6B59E0(v11);
          if (sub_6C784C(a2, v14))
          {
            v13 = (v5 != 0) & ~sub_6CA768(a2, v14);
          }

          else
          {
            v13 = 0;
          }

          sub_6C90F0(a2, v14, v13);
          v5 -= sub_6C9088(a2, v14);
          v11 = (v11 - 1);
        }

        while (v12 != v11);
      }
    }
  }

  else
  {

    sub_6C94B4(a2, a2);
  }
}

void sub_6BD830(uint64_t a1, uint64_t a2)
{
  if (sub_6C6B98(a2))
  {
    v3 = sub_6C6B88(a2);
    if (v3)
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (sub_6C6BA0(a2, v4))
        {
          operator new();
        }

        ++v4;
      }

      while (v5 != v4);
    }

    if (sub_6C7034(a2))
    {
      v6 = sub_6C6E64(a2);
      v7 = sub_6C6B88(a2);
      if (v7)
      {
        v8 = v7;
        if (v6)
        {
          v9 = 0;
          do
          {
            v10 = sub_6C9088(a2, v9);
            sub_6C90F0(a2, v9++, v10);
          }

          while (v8 != v9);
        }

        else
        {
          v11 = 0;
          do
          {
            v12 = sub_6C784C(a2, v11);
            sub_6C90F0(a2, v11++, v12);
          }

          while (v8 != v11);
        }
      }
    }
  }
}

void sub_6BDA6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BDAA4(uint64_t a1, uint64_t a2)
{
  if (!sub_6CA4E4(a2))
  {
    return;
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v3 = sub_6C6B88(a2);
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      while (1)
      {
        v6 = sub_6C9088(a2, v4);
        v7 = v32;
        if (v32 == v33 << 6)
        {
          if ((v32 + 1) < 0)
          {
            sub_1794();
          }

          v8 = v33 << 7;
          if (v33 << 7 <= (v32 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v8 = (v32 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v32 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v9 = v8;
          }

          else
          {
            v9 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&__p, v9);
          v7 = v32;
        }

        v32 = v7 + 1;
        v10 = v7 >> 6;
        v11 = 1 << v7;
        if (v6)
        {
          break;
        }

        *(__p + v10) &= ~v11;
        if (v5 == ++v4)
        {
          goto LABEL_15;
        }
      }

      *(__p + v10) |= v11;
      ++v4;
    }

    while (v5 != v4);
  }

LABEL_15:
  v12 = sub_6C6B88(a2);
  if (v12)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      if ((*(__p + (v13 >> 6)) & (1 << v13)) != 0 && sub_6CA768(a2, v13))
      {
        *(__p + (v13 >> 6)) &= ~(1 << v13);
      }

      ++v13;
    }

    while (v14 != v13);
  }

  v15 = __p;
  v16 = v32 - 64;
  if (v32 < 0x40)
  {
    v17 = 0;
    v19 = v32;
    v18 = __p;
  }

  else
  {
    if (v16 >= 0xC0)
    {
      v20 = (v16 >> 6) + 1;
      v18 = (__p + 8 * (v20 & 0x7FFFFFFFFFFFFFCLL));
      v19 = v32 - ((v20 & 0x7FFFFFFFFFFFFFCLL) << 6);
      v21 = (__p + 16);
      v22 = 0uLL;
      v23 = v20 & 0x7FFFFFFFFFFFFFCLL;
      v24 = 0uLL;
      do
      {
        v22 = vpadalq_u32(v22, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v21[-1]))));
        v24 = vpadalq_u32(v24, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v21))));
        v21 += 2;
        v23 -= 4;
      }

      while (v23);
      v17 = vaddvq_s64(vaddq_s64(v24, v22));
      if (v20 == (v20 & 0x7FFFFFFFFFFFFFCLL))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = 0;
      v18 = __p;
      v19 = v32;
    }

    do
    {
      v25 = *v18++;
      v26 = vcnt_s8(v25);
      v26.i16[0] = vaddlv_u8(v26);
      v17 += v26.u32[0];
      v19 -= 64;
    }

    while (v19 > 0x3F);
  }

LABEL_29:
  if (v19)
  {
    v27 = vcnt_s8((*v18 & (0xFFFFFFFFFFFFFFFFLL >> -v19)));
    v27.i16[0] = vaddlv_u8(v27);
    v17 += v27.u32[0];
  }

  v28 = v32;
  if (v17 >= 1 && v32 != 0)
  {
    v30 = 0;
    do
    {
      sub_6C90F0(a2, v30, (*(__p + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30) & 1);
      ++v30;
    }

    while (v28 != v30);
    v15 = __p;
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_6BDD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BDD8C(uint64_t a1, uint64_t a2)
{
  sub_6BE5B4(a1, a2);
  sub_6BE698(a1 + 40, (a2 + 40));
  sub_6BE5B4(a1 + 80, (a2 + 80));
  sub_6BE5B4(a1 + 120, (a2 + 120));
  v4 = (a1 + 168);
  v5 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  if (v5)
  {
    v6 = *(a1 + 176);
    v7 = v5;
    if (v6 != v5)
    {
      v8 = *(a1 + 176);
      do
      {
        v10 = *(v8 - 3);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v6 - 2) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
      v7 = *v4;
    }

    *(a1 + 176) = v5;
    operator delete(v7);
    *v4 = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v11 = (a1 + 192);
  v12 = *(a1 + 192);
  if (v12)
  {
    v13 = *(a1 + 200);
    v14 = *(a1 + 192);
    if (v13 != v12)
    {
      v15 = *(a1 + 200);
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 16) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = *v11;
    }

    *(a1 + 200) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(a2 + 216);
  v19 = (a1 + 232);
  v20 = *(a1 + 232);
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 216) = v18;
  if (v20)
  {
    v21 = *(a1 + 240);
    v22 = v20;
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 3);
        if (v23)
        {
          *(v21 - 2) = v23;
          operator delete(v23);
        }

        v24 = *(v21 - 6);
        if (v24)
        {
          *(v21 - 5) = v24;
          operator delete(v24);
        }

        v21 -= 64;
      }

      while (v21 != v20);
      v22 = *v19;
    }

    *(a1 + 240) = v20;
    operator delete(v22);
    *v19 = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  v26 = *(a2 + 320);
  v25 = *(a2 + 336);
  v27 = *(a2 + 304);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v26;
  *(a1 + 336) = v25;
  *(a1 + 304) = v27;
  v28 = *(a2 + 288);
  v29 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v28;
  *(a1 + 256) = v29;
  return a1;
}

uint64_t sub_6BDF88(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v8 = sub_6B1BFC((a2 + 2008), a3);
  if (a4 >= sub_6C6B88(v8))
  {
    return 0;
  }

  if (sub_6CA500(v8, a4) < 1)
  {
    if (a3)
    {
      v10 = 0;
      v11 = a3 - 1;
      if ((v11 & 0x80000000) == 0)
      {
        v12 = v11 & 0x7FFFFFFF;
        while (1)
        {
          v13 = sub_5DBECC((a2 + 2008), v12);
          if ((sub_6C8EEC(v13) & 1) == 0)
          {
            break;
          }

          sub_6CA4B8(v13, &v19);
          v10 += sub_681630(&v19);
          if (v12-- <= 0)
          {
            goto LABEL_18;
          }
        }

        if (sub_6CA9B0(v13))
        {
          v11 = v12;
        }
      }

LABEL_18:
      v15 = sub_6B1BFC((a2 + 2008), v11);
      sub_6C6B88(v15);
      v16 = sub_6C6B88(v8);
      v17 = sub_6BE124(v16, v15, a4, v16);
      sub_6CA4B8(v8, &v19);
      v18 = sub_681630(&v19) + v10;
      return v18 + sub_6BDF88(a1, a2, v11, v17);
    }

    else
    {
      sub_6CA4B8(v8, &v19);
      return sub_681630(&v19);
    }
  }

  else
  {

    return sub_6CA500(v8, a4);
  }
}

uint64_t sub_6BE124(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!sub_6CA9B0(a2) && (a4 == sub_6C6B88(a2) || (sub_6C8EE0(a2) & 1) != 0 || (sub_6C8EEC(a2) & 1) != 0))
  {
    return a3;
  }

  else
  {
    v14 = sub_6C6B88(a2);
    v7 = sub_6C6B88(a2);
    if (v7)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        v10 = sub_6CA868(a2, v8);
        v11 = v10[1];
        if (*v10 != v11)
        {
          v12 = *v10;
          do
          {
            if (*v12 == a3)
            {
              break;
            }

            ++v12;
          }

          while (v12 != v11);
          if ((&v11[-*v10] & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  return v14;
}

void sub_6BE3A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BE3B8(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 4 * a2;
}

void sub_6BE4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_6BE5B4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      bzero(*a1, 8 * v6);
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v11 = a2[2];
  v10 = a2 + 2;
  v9 = v11;
  v12 = *(v10 - 1);
  *(a1 + 16) = v11;
  *(a1 + 8) = v12;
  *(v10 - 1) = 0;
  v13 = v10[1];
  *(a1 + 24) = v13;
  *(a1 + 32) = *(v10 + 4);
  if (v13)
  {
    v14 = *(v9 + 8);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
    *v10 = 0;
    v10[1] = 0;
  }
}

void sub_6BE698(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v16 = *v4;
        v17 = v4[3];
        if (v17)
        {
          v18 = v4[4];
          v15 = v4[3];
          if (v18 != v17)
          {
            do
            {
              v19 = *(v18 - 1);
              v18 -= 3;
              if (v19 < 0)
              {
                operator delete(*v18);
              }
            }

            while (v18 != v17);
            v15 = v4[3];
          }

          v4[4] = v17;
          operator delete(v15);
        }

        operator delete(v4);
        v4 = v16;
      }

      while (v16);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void sub_6BE7D0()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A2D80 = 0u;
  *algn_27A2D90 = 0u;
  dword_27A2DA0 = 1065353216;
  sub_3A9A34(&xmmword_27A2D80, v0);
  sub_3A9A34(&xmmword_27A2D80, v3);
  sub_3A9A34(&xmmword_27A2D80, __p);
  sub_3A9A34(&xmmword_27A2D80, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A2D58 = 0;
    qword_27A2D60 = 0;
    qword_27A2D50 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6BEA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2D68)
  {
    qword_27A2D70 = qword_27A2D68;
    operator delete(qword_27A2D68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BEAC4(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a3;
  HIBYTE(v13[2]) = 21;
  strcpy(v13, "LaneGuidanceCountries");
  __p = 0;
  v11 = 0;
  v12 = 0;
  v4 = sub_3AEC94(a2, v13, &__p);
  v5 = __p;
  if (__p)
  {
    v6 = v11;
    v7 = __p;
    if (v11 != __p)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v11 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_6BEB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_6BEBC4(uint64_t a1, uint64_t a2)
{
  if (!sub_5FC3C(*(a1 + 8), a2))
  {
    return 0;
  }

  v4 = sub_5F5AC(*(a1 + 8), a2);
  sub_5ADDC(v13, v4);
  v12 = 14;
  strcpy(__p, "enabled_on_fwy");
  v5 = sub_5F9D0(v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v6 = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C198[v8])(__p, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
    goto LABEL_13;
  }

  v6 = v14;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = v13[0];
  v13[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v5;
}

void sub_6BECF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_6BED18(uint64_t a1, uint64_t a2)
{
  if (!sub_5FC3C(*(a1 + 8), a2))
  {
    return 0;
  }

  v4 = sub_5F5AC(*(a1 + 8), a2);
  sub_5ADDC(v13, v4);
  v12 = 18;
  strcpy(__p, "enabled_on_non_fwy");
  v5 = sub_5F9D0(v13, __p);
  if (v12 < 0)
  {
    operator delete(*__p);
    v6 = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C198[v8])(__p, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
    goto LABEL_13;
  }

  v6 = v14;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = v13[0];
  v13[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v5;
}

void sub_6BEE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_6BEE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return 1;
  }

  v7 = sub_5FC3C(*(a1 + 8), a3);
  result = 0;
  if (v7 && *(a2 + 160) != 97)
  {
    v8 = sub_6BEBC4(a1, a3);
    v9 = sub_6BED18(a1, a3);
    if (*(a2 + 2057))
    {
      if (*(a2 + 1028))
      {
        return v8;
      }

      else
      {
        v10 = v9;
        result = v8;
        if ((*(a2 + 1029) & 1) == 0)
        {
          if (*(a2 + 1030))
          {
            return v8;
          }

          else
          {
            return v10;
          }
        }
      }
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_6BEF4C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    sub_5F5AC(*(a1 + 8), a3);
    if (!a2[2057] || (a2[1028] & 1) != 0 || (a2[1029] & 1) != 0 || a2[1030] == 1)
    {
      operator new();
    }

    operator new();
  }

  return 1;
}

void sub_6BF084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BF0A8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    sub_5F5AC(*(a1 + 8), a3);
    if (!a2[2057] || (a2[1028] & 1) != 0 || (a2[1029] & 1) != 0 || a2[1030] == 1)
    {
      operator new();
    }

    operator new();
  }

  return 1;
}

void sub_6BF1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BF204()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A2DD8 = 0u;
  unk_27A2DE8 = 0u;
  dword_27A2DF8 = 1065353216;
  sub_3A9A34(&xmmword_27A2DD8, v0);
  sub_3A9A34(&xmmword_27A2DD8, v3);
  sub_3A9A34(&xmmword_27A2DD8, __p);
  sub_3A9A34(&xmmword_27A2DD8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A2DB0 = 0;
    qword_27A2DB8 = 0;
    qword_27A2DA8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6BF44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2DC0)
  {
    qword_27A2DC8 = qword_27A2DC0;
    operator delete(qword_27A2DC0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BF4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_266C1F0;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_6C6A34(a1 + 32);
  sub_6C6A34(a1 + 392);
  v7 = *(a2 + 1104) + 2616 * a3;
  v8 = *(v7 + 2008);
  v9 = *(v7 + 2016);
  if (v8 != v9)
  {
    while (1)
    {
      if (sub_6C7CF8(v8) && sub_6C7864(a1 + 392))
      {
        sub_5FB8BC(a1 + 392, v8);
        v10 = *(a1 + 16);
        if (v10 < *(a1 + 24))
        {
          goto LABEL_11;
        }

LABEL_3:
        *(a1 + 16) = sub_6C1CA0(v6, v8);
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else if (sub_6C7CE4(v8) || sub_6C7C8C(v8))
      {
        v10 = *(a1 + 16);
        if (v10 >= *(a1 + 24))
        {
          goto LABEL_3;
        }

LABEL_11:
        sub_5F1934(*(a1 + 16), v8);
        *(a1 + 16) = v10 + 360;
        *(a1 + 16) = v10 + 360;
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else
      {
        if (sub_6C7D24(v8))
        {
          sub_5FB8BC(a1 + 32, v8);
        }

        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }
    }
  }

  *(a1 + 752) = *(v7 + 2056);
  return a1;
}

void sub_6BF660(_Unwind_Exception *a1)
{
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

void sub_6BF690(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_5C3168(v2 + 392);
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6BF6C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_6C7D24(a1);
  if (result)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
  }

  else
  {

    return sub_67E494(a2, "Continue_Sign");
  }

  return result;
}

uint64_t sub_6BF738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_6C7864(a2);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_6C7D24(a2))
  {
    (*(*a1 + 40))(v8, a1, 1, 0);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  if (sub_6C7C8C(a2))
  {
    sub_6BF994(a2, 1, v8);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  result = sub_6C7CE4(a2);
  if (result)
  {
    v7 = *(*a1 + 16);

    return v7(a1, a2);
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6BF948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ****a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  sub_5F07DC(&a9);
  sub_662AC8(&a11);
  _Unwind_Resume(a1);
}

void sub_6BF994(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  sub_6BFEF4(a1, &v24);
  v5 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = *(&v24 + 1);
  }

  if (!v6)
  {
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 1;
    *(a3 + 80) = 0;
    *(a3 + 95) = 0;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v24);
    return;
  }

  if (!a2)
  {
    if (v6 + 17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 + 17 > 0x16)
      {
        operator new();
      }

      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      HIBYTE(v21) = v6 + 17;
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v20, v8, v6);
      v9 = v20 + v6;
      v9[16] = 121;
      *v9 = *"_Spoken_Secondary";
      *(&v21 + v6 + 1) = 0;
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_42:
    sub_3244();
  }

  if (v6 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_42;
  }

  if (v6 + 15 > 0x16)
  {
    operator new();
  }

  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  HIBYTE(v21) = v6 + 15;
  if (v25 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24;
  }

  memmove(v20, v7, v6);
  strcpy(v20 + v6, "_Spoken_Primary");
  if (SHIBYTE(v25) < 0)
  {
LABEL_23:
    operator delete(v24);
  }

LABEL_24:
  v24 = *v20;
  v25 = v21;
  sub_67E494(v20, &v24);
  v18 = 0;
  v19 = 0;
  sub_680484(a3, v20, 1, &v18);
  v10 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v23;
  if (v23)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v20[0];
  if (v20[0])
  {
    v15 = v20[1];
    v16 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20[0];
    }

    v20[1] = v14;
    operator delete(v16);
  }

  if (v25 < 0)
  {
    goto LABEL_41;
  }
}

void sub_6BFCC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

void *sub_6BFCF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_6C6E64(a1);
  result = sub_6C6B88(a1);
  v6 = result;
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      result = sub_6C9088(a1, 1u);
      if (result)
      {
        *(a2 + 16) = 0x1000000000000000;
        *a2 = *"Left_Second_Lane";
        return result;
      }

      result = sub_6C9088(a1, v6 - 2);
      if (result)
      {
        v7 = "Right_Second_Lane";
        goto LABEL_15;
      }

      result = sub_6C9088(a1, 2u);
      if (result)
      {
        *(a2 + 16) = 0xF00000000000000;
        strcpy(a2, "Left_Third_Lane");
        return result;
      }

      result = sub_6C9088(a1, v6 - 3);
      if (result)
      {
        *(a2 + 16) = 0x1000000000000000;
        *a2 = *"Right_Third_Lane";
        return result;
      }
    }

    goto LABEL_20;
  }

  if (sub_6C9088(a1, 1u) && (result = sub_6C9088(a1, 2u), result))
  {
    if ((byte_27A348F & 0x80000000) == 0)
    {
      v7 = &xmmword_27A3478;
LABEL_15:
      *a2 = *v7;
      *(a2 + 16) = *(v7 + 2);
      return result;
    }

    v8 = &xmmword_27A3478;
  }

  else
  {
    result = sub_6C9088(a1, v6 - 2);
    if (!result || (result = sub_6C9088(a1, v6 - 3), !result))
    {
LABEL_20:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    if ((byte_27A34A7 & 0x80000000) == 0)
    {
      v7 = &xmmword_27A3490;
      goto LABEL_15;
    }

    v8 = &xmmword_27A3490;
  }

  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_325C(a2, v9, v10);
}

double sub_6BFEF4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (!sub_6C7D24(a1) || !sub_6C72BC(a1))
  {
    if (sub_6C7CE4(a1))
    {
      *(a2 + 16) = 0x800000000000000;
      result = *"Continue";
      *a2 = *"Continue";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (sub_6C6CE8(a1))
    {
      v5 = "Left";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x400000000000000;
LABEL_12:
        __p.__r_.__value_.__r.__words[2] = v6;
        *&__p.__r_.__value_.__l.__data_ = *v5;
        goto LABEL_30;
      }

      v7 = 4;
    }

    else if (sub_6C6CF8(a1))
    {
      v5 = "Right";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *"Right";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_30;
      }

      v7 = 5;
    }

    else
    {
      if (!sub_6C6C8C(a1))
      {
        if (sub_6C6D08(a1))
        {
          sub_6BFCF8(a1, &v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v20;
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_68;
          }

          goto LABEL_55;
        }

LABEL_30:
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        if (!v9)
        {
          goto LABEL_68;
        }

        v10 = sub_6C6E64(a1);
        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 != 5)
            {
              v11 = "_Six_Lanes";
LABEL_41:
              v20 = *v11;
              v12 = 10;
              goto LABEL_53;
            }

            v13 = "_Five_Lanes";
            goto LABEL_49;
          }

          if (v10 == 7)
          {
            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Seven_Lanes";
          }

          else
          {
            if (v10 != 8)
            {
              goto LABEL_3;
            }

            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Eight_Lanes";
          }
        }

        else
        {
          if (v10 <= 2)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                goto LABEL_3;
              }

              v11 = "_Two_Lanes";
              goto LABEL_41;
            }

            *&v20.__r_.__value_.__l.__data_ = *"_One_Lane";
            v20.__r_.__value_.__r.__words[2] = 0x900000000000000;
            v12 = 9;
LABEL_53:
            std::string::append(&__p, &v20, v12);
            if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

LABEL_55:
            if (sub_6C7C8C(a1))
            {
              v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v15 = __p.__r_.__value_.__l.__size_;
                v16 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v16 - __p.__r_.__value_.__l.__size_ < 5)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v16)
                  {
                    sub_3244();
                  }

LABEL_61:
                  operator new();
                }

                p_p = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
                {
                  goto LABEL_61;
                }

                p_p = &__p;
              }

              v18 = p_p + v15;
              v18[4] = 121;
              *v18 = 1635013471;
              v19 = v15 + 5;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v15 + 5;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
              }

              p_p->__r_.__value_.__s.__data_[v19] = 0;
            }

LABEL_68:
            result = *&__p.__r_.__value_.__l.__data_;
            *a2 = __p;
            memset(&__p, 0, sizeof(__p));
            return result;
          }

          if (v10 != 3)
          {
            v13 = "_Four_Lanes";
LABEL_49:
            v20 = *v13;
            v12 = 11;
            goto LABEL_53;
          }

          v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
          v14 = "_Three_Lanes";
        }

        *&v20.__r_.__value_.__l.__data_ = *v14;
        v12 = 12;
        goto LABEL_53;
      }

      v5 = "Middle";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x600000000000000;
        goto LABEL_12;
      }

      v7 = 6;
    }

    sub_13B38(&__p, v5, v7);
    goto LABEL_30;
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_7:
  operator delete(__p.__r_.__value_.__l.__data_);
  return result;
}