void sub_1B5D3A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned __int16 a32, uint64_t a33, uint64_t a34, unsigned __int16 a35, uint64_t a36, int a37, __int16 a38, char a39, void *a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59)
{
  v62 = *(v59 + 72);
  if (v62 && a59 == 1)
  {
    free(v62);
  }

  if (a35 >= 0xFu && a36)
  {
    MEMORY[0x1B8C880C0](a36, v60);
  }

  if (a32 >= 0xFu && a33)
  {
    MEMORY[0x1B8C880C0](a33, v60);
  }

  if (a40)
  {
    v63 = a39 == 1;
  }

  else
  {
    v63 = 0;
  }

  if (v63)
  {
    free(a40);
  }

  if (a46)
  {
    if (a45 == 1)
    {
      free(a46);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1B5D3AF54(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v32 = 0x100000;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (*(a2 + 1928))
  {
    sub_1B5CDF770(&v32, (a2 + 1928));
    goto LABEL_63;
  }

  LODWORD(v45) = 0x100000;
  WORD2(v45) = 0;
  BYTE6(v45) = 1;
  v46 = 0;
  sub_1B5CDCAAC(&v45, "/", 0, 1u);
  if (*(a2 + 1904))
  {
    v6 = *(a2 + 1904);
  }

  else
  {
    v6 = (a2 + 1912);
  }

  v7 = v46;
  if (v46)
  {
    v8 = v46;
  }

  else
  {
    v8 = v47;
  }

  v9 = strstr(v6, v8);
  if (v9)
  {
    v10 = (v9 - v6) == 0xFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    __assert_rtn("default_output_path", "UnigramsCompiler.cpp", 1090, "m_unigrams_path.find(String(/)) != String::NotAnIndex");
  }

  if (v7 && BYTE6(v45) == 1)
  {
    free(v7);
  }

  LODWORD(v42) = 0x100000;
  WORD2(v42) = 0;
  BYTE6(v42) = 1;
  v43 = 0;
  sub_1B5CDCAAC(&v42, "/", 0, 1u);
  v11 = *(a2 + 1904);
  if (!v11)
  {
    v11 = (a2 + 1912);
  }

  v12 = *(a2 + 1896);
  v13 = &v11[v12];
  v14 = v43;
  if (!v43)
  {
    v14 = &v44;
  }

  if (*(a2 + 1896) && v42)
  {
    v17 = *v14;
    v15 = v14 + 1;
    v16 = v17;
    v18 = v11;
    v19 = &v11[v12];
    do
    {
      v20 = v18 + 1;
      while (*v18 != v16)
      {
        ++v18;
        ++v20;
        if (v18 == v13)
        {
          goto LABEL_34;
        }
      }

      v21 = v42 - 1;
      v22 = v15;
      while (v21)
      {
        if (v20 == v13)
        {
          goto LABEL_34;
        }

        v24 = *v20++;
        v23 = v24;
        v25 = *v22++;
        --v21;
        if (v23 != v25)
        {
          goto LABEL_33;
        }
      }

      v19 = v18;
LABEL_33:
      ++v18;
    }

    while (v18 != v13);
LABEL_34:
    v10 = v19 == v13;
    LOWORD(v13) = v19;
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else if (!v42)
  {
LABEL_35:
    v26 = v13 - v11 + 1;
    goto LABEL_38;
  }

  v26 = 0;
LABEL_38:
  sub_1B5D5D250(&v45, (a2 + 1896), v26, v12);
  if (v43 && BYTE6(v42) == 1)
  {
    free(v43);
  }

  LODWORD(v42) = 0x100000;
  WORD2(v42) = 0;
  BYTE6(v42) = 1;
  v43 = 0;
  sub_1B5CDCAAC(&v42, "words", 0, 5u);
  if (!sub_1B5D5DDEC(&v45, &v42))
  {
    __assert_rtn("default_output_path", "UnigramsCompiler.cpp", 1092, "input_filename.ends_with(String(words))");
  }

  if (v43 && BYTE6(v42) == 1)
  {
    free(v43);
  }

  v27 = v45;
  LODWORD(v40) = 0x100000;
  WORD2(v40) = 0;
  BYTE6(v40) = 1;
  v41 = 0;
  sub_1B5CDCAAC(&v40, "dat", 0, 3u);
  sub_1B5D5D658(&v42, &v45, (v27 - 5), 5, &v40);
  if (v41 && BYTE6(v40) == 1)
  {
    free(v41);
  }

  sub_1B5D5CABC(v37, (a2 + 176));
  sub_1B5D5DCB4(&v40, v37, "/");
  sub_1B5D5DD0C(v29, &v40, &v42);
  if (v41 && BYTE6(v40) == 1)
  {
    free(v41);
  }

  if (v39 && v38 == 1)
  {
    free(v39);
  }

  if (v43 && BYTE6(v42) == 1)
  {
    free(v43);
  }

  if (v46 && BYTE6(v45) == 1)
  {
    free(v46);
  }

  sub_1B5D5CBBC(&v32, v29);
  if (v31 && v30 == 1)
  {
    free(v31);
  }

LABEL_63:
  LODWORD(v45) = 0x100000;
  WORD2(v45) = 0;
  BYTE6(v45) = 1;
  v46 = 0;
  sub_1B5CDCAAC(&v45, ".dat", 0, 4u);
  if (!sub_1B5D5DDEC(&v32, &v45))
  {
    __assert_rtn("output_path", "UnigramsCompiler.cpp", 1107, "dat_path.ends_with(String(.dat))");
  }

  if (v46 && BYTE6(v45) == 1)
  {
    free(v46);
  }

  sub_1B5D5D658(a1, &v32, (v32 - 3), 3, a3);
  if (v35 && v34 == 1)
  {
    free(v35);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1B5D3B40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, void *a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, void *a35)
{
  if (a29 && a28 == 1)
  {
    free(a29);
  }

  if (a23 && a22 == 1)
  {
    free(a23);
  }

  if (a35 && a34 == 1)
  {
    free(a35);
  }

  v37 = *(v35 - 96);
  if (v37 && *(v35 - 98) == 1)
  {
    free(v37);
  }

  if (a17)
  {
    if (a16 == 1)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D3B4F0(uint64_t a1)
{
  v136 = *MEMORY[0x1E69E9840];
  sub_1B5D4188C(a1, a1 + 1896);
  *v133 = 0u;
  v134 = 0u;
  v135 = 1065353216;
  v2 = *(a1 + 280);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 256);
      v7 = *(*v3 + 264);
      if (v6 != v7)
      {
        do
        {
          sub_1B5D4703C(v133, v6);
          v6 += 16;
        }

        while (v6 != v7);
        v5 = *v3;
      }

      v8 = *(v5 + 280);
      v9 = *(v5 + 288);
      while (v8 != v9)
      {
        sub_1B5D4703C(v133, v8);
        v8 += 16;
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(&v134 + 1))
    {
      if (*(&v134 + 1) >= 0xDuLL)
      {
        __assert_rtn("convert_combining_classes_to_bits", "UnigramsCompiler.cpp", 357, "classes.size() <= Word::MaxCombiningClassCount");
      }

      memset(__p, 0, sizeof(__p));
      if (v134)
      {
        v10 = -1;
        v11 = v134;
        do
        {
          v12 = v10;
          v11 = *v11;
          ++v10;
        }

        while (v11);
        *buf = __p;
        buf[8] = 0;
        if (v10 < 0x7FFFFFFFFFFFFFFLL)
        {
          sub_1B5D4894C(v12 + 2);
        }

        sub_1B5D04FA0();
      }

      sub_1B5D472C4(0, 0, 0, 1);
      *v127 = 0u;
      v128 = 0u;
      v129 = 1065353216;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1B5D47DB4;
      *&buf[24] = &unk_1F2D58130;
      sub_1B5D47E4C(v132, v127);
      v13 = *(a1 + 280);
      v14 = *v13;
      v15 = v13[1];
      while (v14 != v15)
      {
        v16 = *v14;
        *(v16 + 56) = *(v16 + 56) & 0xFFFFF000 | (*&buf[16])(buf, *v14 + 256) & 0xFFF;
        v17 = *v14;
        *(v17 + 56) = *(v17 + 56) & 0xFF000FFF | (((*&buf[16])(buf, *v14 + 280) & 0xFFF) << 12);
        v18 = *v14;
        v19 = *(*v14 + 256);
        v20 = *(*v14 + 264);
        v21 = *v14;
        if (v20 != v19)
        {
          do
          {
            v22 = *(v20 - 24);
            if (v22 && *(v20 - 26) == 1)
            {
              free(v22);
            }

            v20 -= 32;
          }

          while (v20 != v19);
          v21 = *v14;
        }

        *(v18 + 264) = v19;
        v23 = *(v21 + 280);
        for (i = *(v21 + 288); i != v23; i -= 32)
        {
          v25 = *(i - 24);
          if (v25 && *(i - 26) == 1)
          {
            free(v25);
          }
        }

        *(v21 + 288) = v23;
        ++v14;
      }

      sub_1B5D48118(v132);
      sub_1B5D48118(v127);
      v127[0] = __p;
      sub_1B5D1BF88(v127);
    }
  }

  sub_1B5D48118(v133);
  v26 = *(a1 + 240);
  if ((v26 & 0xC00000) != 0)
  {
    v27 = atomic_load(byte_1EB90C7D0);
    if (v27)
    {
      v28 = atomic_load(byte_1EB90CC20);
      if (v28)
      {
        printf("    Calculating emission cost per each head POS");
        putchar(10);
      }

      else
      {
        v31 = sub_1B5D32914();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v31, OS_LOG_TYPE_DEFAULT, "    Calculating emission cost per each head POS", buf, 2u);
        }
      }
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    *&v133[8] = 0;
    *&v134 = 0;
    *v133 = &v133[8];
    v32 = *(a1 + 280);
    v33 = *v32;
    v34 = v32[1];
    if (*v32 != v34)
    {
      do
      {
        if ((v26 & 0x400000) != 0)
        {
          v35 = *(*v33 + 76);
          v36 = *(*v33 + 88);
          LODWORD(__p[0]) = v35;
          v127[0] = __p;
          v37 = sub_1B5D46E00(buf, v35);
          *(v37 + 5) = v36 + *(v37 + 5);
        }

        if ((v26 & 0x800000) != 0)
        {
          v38 = *(*v33 + 88);
          LODWORD(__p[0]) = HIWORD(*(*v33 + 76));
          v127[0] = __p;
          v39 = sub_1B5D46E00(v133, __p[0]);
          *(v39 + 5) = v38 + *(v39 + 5);
        }

        ++v33;
      }

      while (v33 != v34);
      v40 = *(a1 + 280);
      v33 = *v40;
      v34 = v40[1];
    }

    if (v33 != v34)
    {
      while (1)
      {
        v41 = *v33;
        v42 = *(*v33 + 76);
        if (((v26 & 0x400000) == 0 || *(*v33 + 76)) && ((v26 & 0x800000) == 0 || v42 >= 0x10000))
        {
          break;
        }

        LOWORD(v43) = 0x7FFF;
LABEL_65:
        *(v41 + 80) = v43;
        if (++v33 == v34)
        {
          goto LABEL_66;
        }
      }

      if ((v26 & 0x400000) != 0)
      {
        LODWORD(__p[0]) = *(*v33 + 76);
        v127[0] = __p;
        v44 = sub_1B5D46E00(buf, v42);
        v41 = *v33;
        v45 = llround((log(*(*v33 + 88) / *(v44 + 5)) + -0.0001) * -*(a1 + 1976));
        if ((v26 & 0x800000) == 0)
        {
LABEL_60:
          if (v45 >= 0x7FFF)
          {
            v43 = 0x7FFFLL;
          }

          else
          {
            v43 = v45;
          }

          if (v43 <= -32768)
          {
            LOWORD(v43) = 0x8000;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v45 = 0;
        if ((v26 & 0x800000) == 0)
        {
          goto LABEL_60;
        }
      }

      LODWORD(__p[0]) = HIWORD(v42);
      v127[0] = __p;
      v46 = sub_1B5D46E00(v133, HIWORD(v42));
      v41 = *v33;
      v45 += llround((log(*(*v33 + 88) / *(v46 + 5)) + -0.0001) * -*(a1 + 1976));
      if ((v26 & 0xC00000) == 0xC00000)
      {
        v45 /= 2;
      }

      goto LABEL_60;
    }

LABEL_66:
    sub_1B5D46FF0(*&v133[8]);
    sub_1B5D46FF0(*&buf[8]);
  }

  else
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    v29 = atomic_load(byte_1EB90C7D0);
    if (v29)
    {
      v30 = atomic_load(byte_1EB90CC20);
      if (v30)
      {
        printf("    Calculating emission cost per Head/Tail POS");
        putchar(10);
      }

      else
      {
        v47 = sub_1B5D32914();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v133 = 0;
          _os_log_impl(&dword_1B5CDB000, v47, OS_LOG_TYPE_DEFAULT, "    Calculating emission cost per Head/Tail POS", v133, 2u);
        }
      }
    }

    v48 = *(a1 + 280);
    v49 = *v48;
    v50 = v48[1];
    if (*v48 != v50)
    {
      do
      {
        v51 = HIWORD(*(*v49 + 76));
        v52 = *(*v49 + 88);
        v53 = *(*v49 + 76);
        v127[0] = __PAIR64__(v51, v53);
        *v133 = v127;
        v54 = sub_1B5D46EE4(buf, v53, v51);
        *(v54 + 5) = v52 + *(v54 + 5);
        ++v49;
      }

      while (v49 != v50);
      v55 = *(a1 + 280);
      v49 = *v55;
      v50 = v55[1];
    }

    for (; v49 != v50; ++v49)
    {
      v56 = *v49;
      v57 = *(*v49 + 76);
      if (v57 < 0x10000 || v57 == 0)
      {
        LOWORD(v59) = 0x7FFF;
      }

      else
      {
        LODWORD(v127[0]) = *(*v49 + 76);
        HIDWORD(v127[0]) = HIWORD(v57);
        *v133 = v127;
        v60 = sub_1B5D46EE4(buf, v57, HIWORD(v57));
        v56 = *v49;
        v61 = *(*v49 + 88);
        v59 = llround((log(v61 / *(v60 + 5)) + -0.0001) * -*(a1 + 1976));
        if (v59 <= -32768)
        {
          v59 = -32768;
        }

        if (v59 >= 0x7FFF)
        {
          LOWORD(v59) = 0x7FFF;
        }
      }

      *(v56 + 80) = v59;
    }

    sub_1B5D46FF0(*&buf[8]);
  }

  v62 = **(a1 + 280);
  v63 = *(*(a1 + 280) + 8) - v62;
  if (v63)
  {
    v64 = v63 >> 3;
    v65 = 1;
    v66 = **(a1 + 280);
    v67 = 0.0;
    v68 = 0.0;
    do
    {
      v69 = *(*v66 + 88);
      if (v69 > 0.0)
      {
        v70 = v69 >= v67 && v67 > 0.0;
        if (!v70)
        {
          v67 = *(*v66 + 88);
        }

        if (v69 > v68)
        {
          v68 = *(*v66 + 88);
        }
      }

      v66 += 8;
      v70 = v64 > v65++;
    }

    while (v70);
    v71 = 1;
    v72 = 0.0;
    do
    {
      v73 = *v62++;
      v74 = *(v73 + 88);
      if ((v74 < v72 || v72 <= 0.0) && v74 > v67)
      {
        v72 = v74;
      }

      v70 = v64 > v71++;
    }

    while (v70);
  }

  else
  {
    v67 = 0.0;
    v68 = 0.0;
    v72 = 0.0;
  }

  v77 = atomic_load(byte_1EB90C7D0);
  if (v77)
  {
    v78 = atomic_load(byte_1EB90CC20);
    if (v78)
    {
      printf("    Frequency distribution:  Lowest=%lf, NextLowest=%lf, Highest=%lf", v67, v72, v68);
      putchar(10);
    }

    else
    {
      v79 = sub_1B5D32914();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v67;
        *&buf[12] = 2048;
        *&buf[14] = v72;
        *&buf[22] = 2048;
        *&buf[24] = v68;
        _os_log_impl(&dword_1B5CDB000, v79, OS_LOG_TYPE_DEFAULT, "    Frequency distribution:  Lowest=%lf, NextLowest=%lf, Highest=%lf", buf, 0x20u);
      }
    }
  }

  if (v67 != 1.0 || v72 != 2.0)
  {
    v80 = 2.0;
    if (v72 > 2.0)
    {
      v80 = 2.0 / v72 + 1.0;
    }

    v81 = **(a1 + 280);
    v82 = *(*(a1 + 280) + 8) - v81;
    if (v82)
    {
      v83 = v82 >> 3;
      v84 = 1;
      while (1)
      {
        v85 = *(*v81 + 88);
        if (v85 == v67)
        {
          break;
        }

        v86 = v80;
        if (v85 == v72)
        {
          goto LABEL_125;
        }

        if (v72 > 0.0)
        {
          v86 = v80 * v85 / v72;
LABEL_125:
          *(*v81 + 88) = v86;
        }

LABEL_126:
        v81 += 8;
        v70 = v83 > v84++;
        if (!v70)
        {
          goto LABEL_127;
        }
      }

      v86 = 1.0;
      if (v67 == 1.0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

LABEL_127:
    if (v72 > 0.0)
    {
      v68 = v68 * v80 / v72;
    }
  }

  if (v68 > 65000.0)
  {
    v87 = log(v68);
    v88 = atomic_load(byte_1EB90C7D0);
    v89 = 11.0821425 / v87;
    if (v88)
    {
      v90 = atomic_load(byte_1EB90CC20);
      if (v90)
      {
        printf("Squashing with root power %.3lf to achieve frequency target range %.0f to %.0f", 11.0821425 / v87, 1.0, 65000.0);
        putchar(10);
      }

      else
      {
        v91 = sub_1B5D32914();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v89;
          *&buf[12] = 2048;
          *&buf[14] = 0x3FF0000000000000;
          *&buf[22] = 2048;
          *&buf[24] = 0x40EFBD0000000000;
          _os_log_impl(&dword_1B5CDB000, v91, OS_LOG_TYPE_DEFAULT, "Squashing with root power %.3lf to achieve frequency target range %.0f to %.0f", buf, 0x20u);
        }
      }
    }

    v92 = *(a1 + 280);
    v93 = *v92;
    v94 = *(v92 + 8) - *v92;
    if (v94)
    {
      v95 = v94 >> 3;
      v96 = 1;
      do
      {
        v97 = *v93++;
        *(v97 + 88) = pow(*(v97 + 88), v89);
        v70 = v95 > v96++;
      }

      while (v70);
    }
  }

  sub_1B5D4480C(a1);
  v98 = *(a1 + 280);
  v100 = *v98;
  v99 = v98[1];
  if (*v98 == v99)
  {
    goto LABEL_183;
  }

  v101 = (a1 + 1776);
  v125 = v98[1];
LABEL_140:
  v102 = *v100;
  if ((*v100)[152])
  {
    goto LABEL_182;
  }

  if (*(a1 + 1840))
  {
    __assert_rtn("train", "TIHuffmanCoder.cpp", 73, "!is_compiled()");
  }

  v126 = v100;
  v103 = *(v102 + 1);
  if (!v103)
  {
    v103 = v102 + 8;
  }

  *buf = v103;
  *&buf[8] = 0;
  *&buf[12] = *v102;
  *&buf[16] = 0;
  sub_1B5CDCF70(buf);
  v104 = *v102;
  v105 = *(v102 + 1);
  if (!v105)
  {
    v105 = v102 + 8;
  }

  *v133 = v105;
  *&v133[8] = v104;
  *&v133[12] = v104;
  LODWORD(v134) = 0;
  sub_1B5CDCF70(v133);
  v107 = *buf;
  if (*buf != *v133)
  {
LABEL_196:
    __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
  }

  v108 = *&v133[8];
LABEL_148:
  if (*&buf[8] != v108)
  {
    v109 = *(a1 + 1784);
    if (!v109)
    {
      goto LABEL_165;
    }

    v110 = vcnt_s8(v109);
    v110.i16[0] = vaddlv_u8(v110);
    if (v110.u32[0] > 1uLL)
    {
      v111 = *&buf[16];
      if (v109 <= *&buf[16])
      {
        v111 = *&buf[16] % v109;
      }
    }

    else
    {
      v111 = (v109 - 1) & *&buf[16];
    }

    v112 = (*v101)[v111];
    if (!v112 || (v113 = *v112) == 0)
    {
LABEL_165:
      operator new();
    }

    while (1)
    {
      v114 = v113[1];
      if (v114 == *&buf[16])
      {
        if (*(v113 + 4) == *&buf[16])
        {
          ++*(v113 + 5);
          sub_1B5CDCF70(buf);
          if (*buf != v107)
          {
            goto LABEL_196;
          }

          goto LABEL_148;
        }
      }

      else
      {
        if (v110.u32[0] > 1uLL)
        {
          if (v114 >= v109)
          {
            v114 %= v109;
          }
        }

        else
        {
          v114 &= v109 - 1;
        }

        if (v114 != v111)
        {
          goto LABEL_165;
        }
      }

      v113 = *v113;
      if (!v113)
      {
        goto LABEL_165;
      }
    }
  }

  v115 = *(a1 + 1784);
  if (!*&v115 || (v116 = **v101) == 0 || (v117 = *v116) == 0)
  {
LABEL_181:
    operator new();
  }

  v106.n128_u64[0] = vcnt_s8(v115);
  v106.n128_u16[0] = vaddlv_u8(v106.n128_u64[0]);
  while (1)
  {
    v118 = v117[1];
    if (v118)
    {
      if (v106.n128_u32[0] > 1uLL)
      {
        if (v118 < *&v115 || v118 % *&v115)
        {
          goto LABEL_181;
        }
      }

      else if ((v118 & (*&v115 - 1)) != 0)
      {
        goto LABEL_181;
      }
    }

    else if (!*(v117 + 4))
    {
      ++*(v117 + 5);
      v100 = v126;
      (*(**(a1 + 264) + 16))(*(a1 + 264), *(*v126 + 9), v106);
      v99 = v125;
LABEL_182:
      if (++v100 == v99)
      {
LABEL_183:
        if (!*(a1 + 1840))
        {
          if (*(a1 + 1800) > 1uLL)
          {
            memset(v133, 0, sizeof(v133));
            *&v134 = 0;
            v119 = *(a1 + 1792);
            if (v119)
            {
              v120 = *(v119 + 16);
              v121 = *(v119 + 20);
              v122 = (*&v133[8] - *v133) >> 5;
              if (!((v122 + 1) >> 59))
              {
                v123 = (v134 - *v133) >> 4;
                if (v123 <= v122 + 1)
                {
                  v123 = v122 + 1;
                }

                if (v134 - *v133 >= 0x7FFFFFFFFFFFFFE0uLL)
                {
                  v124 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v124 = v123;
                }

                v132[0] = v133;
                if (v124)
                {
                  sub_1B5D32100(v124);
                }

                *buf = 0;
                *&buf[8] = 32 * v122;
                *&buf[16] = (32 * v122);
                sub_1B5D30420((32 * v122));
              }

              sub_1B5D04FA0();
            }

            __assert_rtn("compile", "TIHuffmanCoder.cpp", 145, "queue.size() == 1");
          }

          __assert_rtn("compile", "TIHuffmanCoder.cpp", 129, "m_freq_table.size() >= 2");
        }

        __assert_rtn("compile", "TIHuffmanCoder.cpp", 128, "!is_compiled()");
      }

      goto LABEL_140;
    }

    v117 = *v117;
    if (!v117)
    {
      goto LABEL_181;
    }
  }
}

void sub_1B5D3D1A8()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v152[1610] = *MEMORY[0x1E69E9840];
  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  v146[0] = 0;
  sub_1B5CDCAAC(buf, "idx", 0, 3u);
  sub_1B5D3AF54(v142, v0, buf);
  if (v146[0] && buf[6] == 1)
  {
    free(v146[0]);
  }

  *versionArray = 0;
  v1 = *(*(v0 + 248) + 8);
  ucol_getVersion();
  u_versionToString(versionArray, versionString);
  v2 = *(*(v0 + 248) + 8);
  ucol_getUCAVersion();
  u_versionToString(versionArray, v140);
  v3 = atomic_load(byte_1EB90C7D0);
  if (v3)
  {
    v4 = atomic_load(byte_1EB90CC20);
    if (v4)
    {
      if (v143)
      {
        v5 = v143;
      }

      else
      {
        v5 = v144;
      }

      printf("writing version %x.%x, collator v%s, UCA v%s, %s", 3, 21, versionString, v140, v5);
      putchar(10);
    }

    else
    {
      v6 = sub_1B5D32914();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v143;
        if (!v143)
        {
          v7 = v144;
        }

        *buf = 67110146;
        *&buf[4] = 3;
        LOWORD(v146[0]) = 1024;
        *(v146 + 2) = 21;
        HIWORD(v146[0]) = 2080;
        v146[1] = versionString;
        LOWORD(v146[2]) = 2080;
        *(&v146[2] + 2) = v140;
        WORD1(v146[3]) = 2080;
        *(&v146[3] + 4) = v7;
        _os_log_impl(&dword_1B5CDB000, v6, OS_LOG_TYPE_DEFAULT, "writing version %x.%x, collator v%s, UCA v%s, %s", buf, 0x2Cu);
      }
    }
  }

  v8 = v144;
  if (v143)
  {
    v9 = v143;
  }

  else
  {
    v9 = v144;
  }

  sub_1B5DA5160(v127, v9);
  if ((v128 & 1) == 0)
  {
    sub_1B5CF7CDC(buf);
    v113 = sub_1B5CE599C(&v146[1], "invalid index file at ", 22);
    if (v143)
    {
      v8 = v143;
    }

    v114 = strlen(v8);
    sub_1B5CE599C(v113, v8, v114);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5D3F684(&v138, buf);
    sub_1B5D32AFC(exception, &v138);
    __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  v10 = atomic_load(byte_1EB90C7D0);
  if (v10)
  {
    v11 = atomic_load(byte_1EB90CC20);
    if (v11)
    {
      printf("\tAllocating trie slots: magic_number=%u, root_usage_sum=%f", 1, *(*(v0 + 272) + 40));
      putchar(10);
    }

    else
    {
      v12 = sub_1B5D32914();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(v0 + 272) + 40);
        *buf = 67109376;
        *&buf[4] = 1;
        LOWORD(v146[0]) = 2048;
        *(v146 + 2) = v13;
        _os_log_impl(&dword_1B5CDB000, v12, OS_LOG_TYPE_DEFAULT, "\tAllocating trie slots: magic_number=%u, root_usage_sum=%f", buf, 0x12u);
      }
    }
  }

  sub_1B5D3F72C(v0, v127, 1);
  v14 = sub_1B5DA53A0(__fd);
  v15 = *(v0 + 240);
  v16 = (v15 & 0x100) != 0 && *(v0 + 1960) == 5;
  sub_1B5DA6BD0(*(v0 + 272), v14, (v15 >> 12) & 1, v16);
  sub_1B5DA6AF0(*(v0 + 272));
  v17 = sub_1B5DA6BD0(*(v0 + 272), v14, (*(v0 + 240) >> 12) & 1, v16);
  if (v17 >= 0x1000001)
  {
    sub_1B5CF7CDC(buf);
    v116 = sub_1B5CE599C(&v146[1], "Trie size=", 10);
    v117 = MEMORY[0x1B8C87F10](v116, v17);
    v118 = sub_1B5CE599C(v117, " bytes exceeds trie addressing capacity=", 40);
    MEMORY[0x1B8C87F00](v118, 0x1000000);
    v119 = __cxa_allocate_exception(0x20uLL);
    sub_1B5D3F684(&v138, buf);
    sub_1B5D32AFC(v119, &v138);
    __cxa_throw(v119, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 248);
  v126 = v0;
  v124 = v18;
  if ((*(v0 + 240) & 0x800) == 0)
  {
    v121 = *(v0 + 248);
    if (*(v0 + 1960) == 5)
    {
      v120 = *(v0 + 240);
      *(&v138 + 1) = 0;
      v139 = 0;
      *&v138 = &v138 + 8;
      v20 = *v18;
      if (v18[1] == *v18)
      {
LABEL_60:
        if (*(v0 + 1768))
        {
          *buf = &unk_1F2D58EC0;
          v146[0] = &v138;
          v146[1] = (v0 + 328);
          v146[2] = buf;
          sub_1B5D5EECC(v124, v121, buf);
          sub_1B5D5F224(buf);
        }

        memset(v137, 0, 24);
        v38 = v138;
        if (v138 != (&v138 + 8))
        {
          v39 = 0;
          do
          {
            if (v39 >= v137[2])
            {
              v42 = 0x8E38E38E38E38E39 * ((v39 - v137[0]) >> 3);
              v43 = v42 + 1;
              if (v42 + 1 > 0x38E38E38E38E38ELL)
              {
                sub_1B5D04FA0();
              }

              if (0x1C71C71C71C71C72 * ((v137[2] - v137[0]) >> 3) > v43)
              {
                v43 = 0x1C71C71C71C71C72 * ((v137[2] - v137[0]) >> 3);
              }

              if (0x8E38E38E38E38E39 * ((v137[2] - v137[0]) >> 3) >= 0x1C71C71C71C71C7)
              {
                v44 = 0x38E38E38E38E38ELL;
              }

              else
              {
                v44 = v43;
              }

              v146[3] = v137;
              if (v44)
              {
                sub_1B5D0161C(v137, v44);
              }

              *buf = 0;
              v146[0] = (8 * ((v39 - v137[0]) >> 3));
              *&v146[1] = v146[0];
              v46 = *(v38 + 6);
              v45 = v146[0];
              *(v146[0] + 1) = 0;
              *v45 = v46;
              v45[2] = 0;
              v45[3] = 0;
              sub_1B5D01774(72 * v42 + 8, *(v38 + 7), *(v38 + 8), *(v38 + 8) - *(v38 + 7));
              v45[4] = 0;
              v45[5] = 0;
              v45[6] = 0;
              sub_1B5D01774(72 * v42 + 32, *(v38 + 10), *(v38 + 11), *(v38 + 11) - *(v38 + 10));
              v47 = *(v38 + 13);
              *(v45 + 61) = *(v38 + 109);
              v45[7] = v47;
              v146[1] = v146[1] + 72;
              v48 = v146[0] + v137[0] - v137[1];
              sub_1B5D68DC0(v137[0], v137[1], v48);
              v49 = v137[0];
              v50 = v137[2];
              v137[0] = v48;
              v125 = v146[1];
              *&v137[1] = *&v146[1];
              v146[1] = v49;
              v146[2] = v50;
              *buf = v49;
              v146[0] = v49;
              sub_1B5D68E6C(buf);
              v39 = v125;
            }

            else
            {
              v40 = *(v38 + 6);
              v39[1] = 0;
              *v39 = v40;
              v39[2] = 0;
              v39[3] = 0;
              sub_1B5D01774((v39 + 1), *(v38 + 7), *(v38 + 8), *(v38 + 8) - *(v38 + 7));
              v39[4] = 0;
              v39[5] = 0;
              v39[6] = 0;
              sub_1B5D01774((v39 + 4), *(v38 + 10), *(v38 + 11), *(v38 + 11) - *(v38 + 10));
              v41 = *(v38 + 13);
              *(v39 + 61) = *(v38 + 109);
              v39[7] = v41;
              v39 += 9;
            }

            v137[1] = v39;
            v51 = *(v38 + 1);
            if (v51)
            {
              do
              {
                v52 = v51;
                v51 = *v51;
              }

              while (v51);
            }

            else
            {
              do
              {
                v52 = *(v38 + 2);
                v53 = *v52 == v38;
                v38 = v52;
              }

              while (!v53);
            }

            v38 = v52;
          }

          while (v52 != (&v138 + 8));
        }

        *(&__dst + 1) = 0;
        v136 = 0;
        *&__dst = &__dst + 8;
        v54 = *(v0 + 1640);
        if (v54)
        {
          v55 = *(v54 + 32);
          if (*(v54 + 16) < 0xFu)
          {
            if (!*(v54 + 16))
            {
              operator new();
            }
          }

          else
          {
            v56 = *(v54 + 24);
          }

          v57 = *(v54 + 16);
          operator new();
        }

        memset(v146, 0, 40);
        *buf = &unk_1F2D58F40;
        LODWORD(v146[5]) = v120 | 1;
        sub_1B5D0195C(&v147, &__dst);
        v150 = 0;
        v151 = 0;
        sub_1B5D69650(v152);
        sub_1B5D01F0C(&__dst, *(&__dst + 1));
        LODWORD(v146[5]) = v146[5] & 0xFFFFFFFE | v120 & 1;
        sub_1B5D5F528(buf);
      }

      v21 = 0;
      while (1)
      {
        v22 = *(v20 + 8 * v21);
        if ((&v138 + 8) == sub_1B5D5ECC8(&v138, (v22 + 136)))
        {
          memset(v146, 0, sizeof(v146));
          v24 = *(v20 + 8 * v21);
          v25 = *(v24 + 248);
          LODWORD(v24) = *(v24 + 60);
          *buf = v25;
          *&buf[4] = v24;
          v26 = *(v22 + 136);
          if (v26 < 0xF)
          {
            v27 = (v22 + 138);
          }

          else
          {
            v27 = *(v22 + 144);
          }

          sub_1B5CFF868(v146, v27, &v27[v26], v26);
          v28 = *(v20 + 8 * v21);
          memset(v137, 0, 24);
          sub_1B5D01774(v137, *(v28 + 200), *(v28 + 208), *(v28 + 208) - *(v28 + 200));
          if (v146[3])
          {
            v146[4] = v146[3];
            operator delete(v146[3]);
          }

          *&v146[3] = *v137;
          v146[5] = v137[2];
          v29 = *(v20 + 8 * v21);
          v147 = *(v29 + 88);
          v148 = 1;
          v149 = (*(v29 + 56) & 0xFFF000) != 0;
          sub_1B5D5F3A4(&v138, (v22 + 136));
          if (v146[3])
          {
            v146[4] = v146[3];
            operator delete(v146[3]);
          }

          v30 = v146[0];
          if (!v146[0])
          {
            goto LABEL_59;
          }

          v146[1] = v146[0];
        }

        else
        {
          v23 = *sub_1B5D4171C(&v138, buf, (v22 + 136));
          if (!v23)
          {
            operator new();
          }

          v31 = *(v20 + 8 * v21);
          v32 = *(v31 + 248);
          if (v32 >= *(v23 + 48))
          {
            v32 = *(v23 + 48);
          }

          *(v23 + 48) = v32;
          ++*(v23 + 112);
          *(v23 + 116) |= (*(v31 + 56) & 0xFFF000) != 0;
          *(v23 + 104) = *(v31 + 88) + *(v23 + 104);
          *buf = 0;
          v146[0] = 0;
          v146[1] = 0;
          sub_1B5D01774(buf, *(v31 + 200), *(v31 + 208), *(v31 + 208) - *(v31 + 200));
          v33 = *buf;
          if (v146[0] != *buf)
          {
            v34 = 0;
            do
            {
              v35 = *(v23 + 80);
              v36 = *(v23 + 88);
              if (v34 >= &v36[-v35])
              {
                if (v36 >= *(v23 + 96))
                {
                  if (&v36[-v35 + 1] >= 0)
                  {
                    operator new();
                  }

                  sub_1B5D04FA0();
                }

                *v36 = v34[v33];
                *(v23 + 88) = v36 + 1;
              }

              else
              {
                v37 = v34[v33];
                if (v37 >= v34[v35])
                {
                  LOBYTE(v37) = v34[v35];
                }

                v34[v35] = v37;
              }

              ++v34;
              v33 = *buf;
            }

            while (v34 < v146[0] - *buf);
          }

          if (!v33)
          {
            goto LABEL_59;
          }

          v146[0] = v33;
          v30 = v33;
        }

        operator delete(v30);
LABEL_59:
        ++v21;
        v20 = *v124;
        if (v21 >= (v124[1] - *v124) >> 3)
        {
          goto LABEL_60;
        }
      }
    }

    v123 = *(v0 + 1960);
    *(&v138 + 1) = 0;
    v139 = 0;
    *&v138 = &v138 + 8;
    v137[1] = 0;
    v137[2] = 0;
    v137[0] = &v137[1];
    v72 = *v18;
    v71 = v18[1];
    if (*v18 == v71)
    {
LABEL_172:
      if (*(v0 + 1768))
      {
        *buf = &unk_1F2D59218;
        v146[0] = &v138;
        v146[2] = buf;
        sub_1B5D5EECC(v124, v19, buf);
        sub_1B5D5F224(buf);
      }

      __dst = 0uLL;
      v136 = 0;
      __p = 0;
      v133 = 0;
      v134 = 0;
      memset(v131, 0, sizeof(v131));
      v101 = v138;
      if (v138 != (&v138 + 8))
      {
        do
        {
          if (*(v101 + 16) < 0xFu)
          {
            v102 = v101 + 34;
          }

          else
          {
            v102 = *(v101 + 5);
          }

          *buf = v102;
          sub_1B5D140B0(&__dst, buf);
          *buf = *(v101 + 16);
          sub_1B5D14180(&__p, buf);
          *buf = *(v101 + 12);
          sub_1B5D5F2A4(v131, buf);
          v103 = *(v101 + 1);
          if (v103)
          {
            do
            {
              v104 = v103;
              v103 = *v103;
            }

            while (v103);
          }

          else
          {
            do
            {
              v104 = *(v101 + 2);
              v53 = *v104 == v101;
              v101 = v104;
            }

            while (!v53);
          }

          v101 = v104;
        }

        while (v104 != (&v138 + 8));
      }

      if (v123 <= 4)
      {
        if (v123 <= 2)
        {
          if (v123 == 1)
          {
            operator new();
          }

          operator new();
        }

        if (v123 == 3)
        {
          operator new();
        }

        operator new();
      }

      if (v123 <= 6)
      {
        operator new();
      }

      if (v123 == 7)
      {
        operator new();
      }

      operator new();
    }

    while (1)
    {
      v73 = *v72;
      v74 = *(*v72 + 248);
      if (v74 >= 0x200000)
      {
        sub_1B5CF7CDC(buf);
        v109 = sub_1B5CE599C(&v146[1], "Unigram index length=", 21);
        v110 = MEMORY[0x1B8C87F10](v109, v74);
        v111 = sub_1B5CE599C(v110, " bytes exceeds trie addressing capacity=", 40);
        MEMORY[0x1B8C87F10](v111, 0x1FFFFFLL);
        v112 = __cxa_allocate_exception(0x20uLL);
        sub_1B5D3F684(&__dst, buf);
        sub_1B5D32AFC(v112, &__dst);
        __cxa_throw(v112, &unk_1F2D56F00, sub_1B5D32BEC);
      }

      v75 = *(v73 + 88);
      v76 = *(v73 + 136);
      if (v76 < 0xF)
      {
        HIBYTE(v146[1]) = *(v73 + 136);
        v79 = buf;
        if (!v76)
        {
          goto LABEL_127;
        }

        v77 = (v73 + 138);
        v78 = (v73 + 138 + v76);
      }

      else
      {
        v77 = *(v73 + 144);
        v78 = &v77[v76];
        if (v76 > 0x16)
        {
          operator new();
        }

        HIBYTE(v146[1]) = *(v73 + 136);
        v79 = buf;
      }

      do
      {
        v80 = *v77++;
        *v79++ = v80;
      }

      while (v77 != v78);
LABEL_127:
      *v79 = 0;
      *&__dst = buf;
      v81 = sub_1B5D5F6C8(v137, buf);
      *(v81 + 56) = v75 + *(v81 + 56);
      if (SHIBYTE(v146[1]) < 0)
      {
        operator delete(*buf);
      }

      v82 = *v72;
      v83 = *(*v72 + 224);
      if (v83)
      {
        if (atomic_fetch_add(v83, 1u) < 1)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v82 = *v72;
      }

      if ((*(v82 + 304) & 1) != 0 || *(v82 + 248))
      {
        if (!v83)
        {
          goto LABEL_136;
        }

LABEL_135:
        sub_1B5D1BCD4(v83);
        goto LABEL_136;
      }

      if (((*(v83 + 16) - *(v83 + 8)) & 0x7FFFFFFF8) == 0)
      {
        goto LABEL_135;
      }

      v85 = *(v83 + 32);
      if (!v85)
      {
        goto LABEL_135;
      }

      v86 = (v85[1] - *v85) & 0x7FFFFFFF8;
      sub_1B5D1BCD4(v83);
      if (v86 == 8)
      {
        v87 = *v72;
        v88 = *(*v72 + 88);
        v89 = 0.0;
        v0 = v126;
        if (v88 != 0.0)
        {
          v90 = *(v87 + 224);
          if (v90)
          {
            v91 = *(v90 + 40);
            goto LABEL_160;
          }

          v97 = *(v87 + 336);
          if (v97)
          {
            v91 = v97;
LABEL_160:
            v89 = v88 / v91;
          }

          else
          {
            v89 = 1.0;
          }
        }

        v98 = sqrt(v89) * 255.0;
        if (v98)
        {
          v99 = 1;
        }

        else
        {
          v99 = v89 <= 0.0;
        }

        v100 = v98 | 0x400000;
        if (!v99)
        {
          v100 = 4194305;
        }

        *buf = v100;
        sub_1B5D5F768(&v138, (v73 + 136));
        goto LABEL_155;
      }

LABEL_136:
      if ((&v138 + 8) != sub_1B5D5ECC8(&v138, (v73 + 136)))
      {
        v84 = *sub_1B5D4171C(&v138, buf, (v73 + 136));
        if (!v84)
        {
          operator new();
        }

        v92 = *(v84 + 48);
        v93 = v92 & 0x1FFFFF;
        if ((v92 & 0x400000) != 0)
        {
          v93 = 0;
        }

        if (v74 < v93)
        {
          v93 = v74;
        }

        v94 = v92 & 0xFFE00000 | v93;
        *(v84 + 48) = v94;
        if ((v92 & 0x600000) == 0x200000)
        {
          v95 = v94 & 0xFF9FFFFF;
          v0 = v126;
          goto LABEL_153;
        }

        v95 = v94 & 0xFFDFFFFF;
        v0 = v126;
        if ((*(*v72 + 56) & 0xFFF000) != 0)
        {
LABEL_153:
          v96 = 0x200000;
        }

        else
        {
          v96 = 0;
        }

        *(v84 + 48) = v96 | v95;
        goto LABEL_155;
      }

      *buf = v74 | (((*(*v72 + 56) & 0xFFF000) != 0) << 21);
      sub_1B5D5F768(&v138, (v73 + 136));
      v0 = v126;
LABEL_155:
      v72 += 8;
      if (v72 == v71)
      {
        goto LABEL_172;
      }
    }
  }

  v122 = *(v0 + 1960);
  *(&v138 + 1) = 0;
  v139 = 0;
  *&v138 = &v138 + 8;
  v58 = *v18;
  v59 = v18[1];
  if (*v18 == v59)
  {
LABEL_102:
    if (*(v0 + 1768))
    {
      *buf = &unk_1F2D58850;
      v146[0] = &v138;
      v146[2] = buf;
      sub_1B5D5EECC(v124, v19, buf);
      sub_1B5D5F224(buf);
    }

    memset(v137, 0, 24);
    __dst = 0uLL;
    v136 = 0;
    __p = 0;
    v133 = 0;
    v134 = 0;
    v67 = v138;
    if (v138 != (&v138 + 8))
    {
      do
      {
        if (*(v67 + 16) < 0xFu)
        {
          v68 = v67 + 34;
        }

        else
        {
          v68 = *(v67 + 5);
        }

        *buf = v68;
        sub_1B5D140B0(v137, buf);
        *buf = *(v67 + 16);
        sub_1B5D14180(&__dst, buf);
        *buf = *(v67 + 12);
        sub_1B5D5F2A4(&__p, buf);
        v69 = *(v67 + 1);
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = *(v67 + 2);
            v53 = *v70 == v67;
            v67 = v70;
          }

          while (!v53);
        }

        v67 = v70;
      }

      while (v70 != (&v138 + 8));
    }

    if (v122 <= 4)
    {
      if (v122 <= 2)
      {
        if (v122 == 1)
        {
          operator new();
        }

        operator new();
      }

      if (v122 == 3)
      {
        operator new();
      }

      operator new();
    }

    if (v122 <= 6)
    {
      if (v122 == 5)
      {
        operator new();
      }

      operator new();
    }

    if (v122 == 7)
    {
      operator new();
    }

    operator new();
  }

  while (1)
  {
    v60 = *v58;
    v61 = *(*v58 + 248);
    if (v61 >= 0x200000)
    {
      sub_1B5CF7CDC(buf);
      v105 = sub_1B5CE599C(&v146[1], "Unigram index length=", 21);
      v106 = MEMORY[0x1B8C87F10](v105, v61);
      v107 = sub_1B5CE599C(v106, " bytes exceeds trie addressing capacity=", 40);
      MEMORY[0x1B8C87F10](v107, 0x1FFFFFLL);
      v108 = __cxa_allocate_exception(0x20uLL);
      sub_1B5D3F684(v137, buf);
      sub_1B5D32AFC(v108, v137);
      __cxa_throw(v108, &unk_1F2D56F00, sub_1B5D32BEC);
    }

    if ((&v138 + 8) != sub_1B5D5ECC8(&v138, (v60 + 136)))
    {
      break;
    }

    *buf = v61 | (((*(v60 + 56) & 0xFFF000) != 0) << 21);
    sub_1B5D5EDC0(&v138, (v60 + 136));
LABEL_101:
    v58 += 8;
    if (v58 == v59)
    {
      goto LABEL_102;
    }
  }

  v62 = *sub_1B5D4171C(&v138, buf, (v60 + 136));
  if (!v62)
  {
    operator new();
  }

  v63 = *(v62 + 48);
  v64 = v63 & 0x3FFFFFFF;
  if (v61 < (v63 & 0x3FFFFFFFu))
  {
    v64 = v61;
  }

  v65 = v64 | v63 & 0xC0000000;
  *(v62 + 48) = v65;
  if ((v63 & 0x40000000) != 0)
  {
    v65 &= 0x801FFFFF;
  }

  else if ((*(*v58 + 56) & 0xFFF000) == 0)
  {
    v66 = 0;
LABEL_100:
    *(v62 + 48) = v66 | v65;
    goto LABEL_101;
  }

  v66 = 0x40000000;
  goto LABEL_100;
}

void sub_1B5D3F0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, void *a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      sub_1B5D0B3AC(&a60);
      sub_1B5DA4D68(&a21);
      if (a57)
      {
        if (a56 == 1)
        {
          free(a57);
        }
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v60);
  goto LABEL_6;
}

const void *sub_1B5D3F684(_BYTE *a1, uint64_t a2)
{
  result = sub_1B5D03500(a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

void sub_1B5D3F72C(uint64_t a1, ssize_t a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  LODWORD(v39) = 0x1000000;
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = 50331648;
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = 352321536;
  sub_1B5DA51F0(a2, &v39, 4);
  v37 = 0;
  v6 = *(*(a1 + 248) + 8);
  ucol_getVersion();
  sub_1B5DA51F0(a2, &v37, 4);
  v7 = *(*(a1 + 248) + 8);
  ucol_getUCAVersion();
  sub_1B5DA51F0(a2, &v37, 4);
  sub_1B5DA51F0(a2, a1, 16);
  if (a3)
  {
    *&v8 = *(*(a1 + 272) + 40);
    LODWORD(v39) = bswap32(v8);
  }

  else
  {
    LODWORD(v39) = bswap32((*(*(a1 + 280) + 8) - **(a1 + 280)) >> 3);
  }

  sub_1B5DA51F0(a2, &v39, 4);
  v10 = *(a1 + 240);
  if ((v10 & 0x20) != 0)
  {
    v11 = 24596;
  }

  else
  {
    v11 = 24580;
  }

  v9.i32[0] = *(a1 + 240);
  v12 = vshlq_u32(vdupq_n_s32(v10), xmmword_1B5DC3A30);
  v12.i32[0] = vshlq_u32(v9, xmmword_1B5DC3A20).u32[0];
  v13 = vandq_s8(v12, xmmword_1B5DC3A40);
  v14 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  v15 = v14.i32[0] | (v10 >> 4) & 8 | v14.i32[1] | v10 & 0x400 | (((v10 >> 12) & 1) << 17) | v11 & 0xFFFBFFFF | (((v10 >> 3) & 1) << 18);
  if (!*(a1 + 1764))
  {
    v15 |= 0x100u;
  }

  if (*(a1 + 1768))
  {
    v15 |= 0x1000u;
  }

  if ((v10 & 0x2000000) != 0)
  {
    v16 = (v10 >> 2) & 0x80000 | (((v10 >> 11) & 1) << 20) | v15;
  }

  else
  {
    v16 = (v10 >> 2) & 0x80000 | (((v10 >> 11) & 1) << 20) | v15 | 0x400000;
  }

  LODWORD(v39) = bswap32(v16);
  sub_1B5DA51F0(a2, &v39, 4);
  if (!a3)
  {
    LODWORD(v39) = bswap32(*(a1 + 1960));
    sub_1B5DA51F0(a2, &v39, 4);
    LODWORD(v39) = 0;
    sub_1B5DA51F0(a2, &v39, 4);
    LODWORD(v39) = 0;
    sub_1B5DA51F0(a2, &v39, 4);
    LODWORD(v39) = 0x80000000;
    sub_1B5DA51F0(a2, &v39, 4);
    LODWORD(v39) = 0;
    sub_1B5DA51F0(a2, &v39, 4);
LABEL_65:
    v22 = 0;
    goto LABEL_67;
  }

  LODWORD(v39) = 0x100000;
  WORD2(v39) = 0;
  BYTE6(v39) = 0;
  v40 = 0;
  LOBYTE(v41) = 0;
  if (v16)
  {
    sub_1B5D5D760(&v39, " DenseKeyCodes,", 0xFFFFuLL);
  }

  if ((v16 & 2) != 0)
  {
    sub_1B5D5D760(&v39, " CommonLetterForms,", 0xFFFFuLL);
  }

  if ((v16 & 8) != 0)
  {
    sub_1B5D5D760(&v39, " SubstitutionLists,", 0xFFFFuLL);
  }

  if ((v16 & 4) != 0)
  {
    sub_1B5D5D760(&v39, " UnigramRecordV2,", 0xFFFFuLL);
  }

  if ((v16 & 0x2000) != 0)
  {
    sub_1B5D5D760(&v39, " VarByteTrieNodesV2,", 0xFFFFuLL);
  }

  if ((v16 & 0x4000) != 0)
  {
    sub_1B5D5D760(&v39, " RelativeChildOffsetsV2,", 0xFFFFuLL);
  }

  if ((v16 & 0x10) != 0)
  {
    sub_1B5D5D760(&v39, " SkipDerivableUnigrams,", 0xFFFFuLL);
  }

  if ((v16 & 0x40) != 0)
  {
    sub_1B5D5D760(&v39, " PatriciaTrieRuns,", 0xFFFFuLL);
  }

  if ((v16 & 0x80) != 0)
  {
    sub_1B5D5D760(&v39, " CompressTrieTails,", 0xFFFFuLL);
  }

  if ((v16 & 0x20) != 0)
  {
    sub_1B5D5D760(&v39, " NonDerivablePrefixUnigrams,", 0xFFFFuLL);
  }

  if ((v16 & 0x400) != 0)
  {
    sub_1B5D5D760(&v39, " Exclude0FreqWords,", 0xFFFFuLL);
  }

  if ((v16 & 0x100) != 0)
  {
    sub_1B5D5D760(&v39, " AllSortKeysAreDistributive,", 0xFFFFuLL);
  }

  if ((v16 & 0x1000) != 0)
  {
    sub_1B5D5D760(&v39, " SortKeysChangeRetroactively", 0xFFFFuLL);
  }

  if ((v16 & 0x10000) != 0)
  {
    sub_1B5D5D760(&v39, " WriteWordIds", 0xFFFFuLL);
  }

  if ((v16 & 0x20000) != 0)
  {
    sub_1B5D5D760(&v39, " Write4ByteUnigramOffsets", 0xFFFFuLL);
  }

  if ((v16 & 0x40000) != 0)
  {
    sub_1B5D5D760(&v39, " HuffmanEncodeSurfaceForms", 0xFFFFuLL);
  }

  if ((v16 & 0x400000) != 0)
  {
    sub_1B5D5D760(&v39, " CollationMappingTable", 0xFFFFuLL);
  }

  if ((*(a1 + 243) & 4) != 0)
  {
    sub_1B5D5D760(&v39, " EnableVisuallyConfusableLookup", 0xFFFFuLL);
  }

  v17 = atomic_load(byte_1EB90C7D0);
  if (v17)
  {
    v18 = atomic_load(byte_1EB90CC20);
    if (v18)
    {
      v19 = v40;
      if (!v40)
      {
        v19 = &v41;
      }

      printf("    Options: %s", v19);
      putchar(10);
    }

    else
    {
      v20 = sub_1B5D32914();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v40;
        if (!v40)
        {
          v21 = &v41;
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&dword_1B5CDB000, v20, OS_LOG_TYPE_DEFAULT, "    Options: %s", buf, 0xCu);
      }
    }
  }

  if (v40 && BYTE6(v39) == 1)
  {
    free(v40);
  }

  LODWORD(v39) = bswap32(*(a1 + 1960));
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = 0;
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = 0;
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = 0x80000000;
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = 0;
  sub_1B5DA51F0(a2, &v39, 4);
  if ((*(a1 + 240) & 0x10) == 0)
  {
    goto LABEL_65;
  }

  v22 = 8 * *(a1 + 1648) + 8;
LABEL_67:
  LODWORD(v39) = bswap32(v22);
  sub_1B5DA51F0(a2, &v39, 4);
  LODWORD(v39) = bswap32(v22 + 128);
  sub_1B5DA51F0(a2, &v39, 4);
  sub_1B5DA53E8(*(a2 + 32), 128);
  if (v22)
  {
    LODWORD(v39) = bswap32(*(a1 + 1648));
    sub_1B5DA51F0(a2, &v39, 4);
    LODWORD(v39) = 0;
    sub_1B5DA51F0(a2, &v39, 4);
    sub_1B5D8024C(buf, a1 + 328);
    v23 = *buf;
    if (*buf == &buf[8])
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = *(v23 + 20);
        if (v25 <= 4)
        {
          v26 = *(v23 + 8);
          sub_1B5DA51F0(a2, (v23 + 42), v25);
          v27 = *(v23 + 20);
          if (v27 <= 3)
          {
            v28 = (4 - v27) + 1;
            do
            {
              LOBYTE(v39) = 0;
              sub_1B5DA51F0(a2, &v39, 1);
              --v28;
            }

            while (v28 > 1);
          }

          LODWORD(v39) = bswap32(v26);
          sub_1B5DA51F0(a2, &v39, 4);
          v24 = (v24 + 1);
        }

        v29 = *(v23 + 1);
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = *(v23 + 2);
            v31 = *v30 == v23;
            v23 = v30;
          }

          while (!v31);
        }

        v23 = v30;
      }

      while (v30 != &buf[8]);
    }

    if (v24 != *(a1 + 1648))
    {
      sub_1B5CF7CDC(&v39);
      v33 = sub_1B5CE599C(&v41, "Common sort-key letter form table wrote ", 40);
      v34 = MEMORY[0x1B8C87F10](v33, v24);
      v35 = sub_1B5CE599C(v34, " entries, expected ", 19);
      MEMORY[0x1B8C87F10](v35, *(a1 + 1648));
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1B5D32A54(&v38, &v42);
      sub_1B5D32AFC(exception, &v38);
      __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
    }

    sub_1B5D32B78(*&buf[8]);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1B5D3FEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, int a11, char a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a9 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      sub_1B5CFBC44(&a10, MEMORY[0x1E69E54D8]);
      MEMORY[0x1B8C88080](va);
      sub_1B5D32B78(*(v29 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t *sub_1B5D3FF9C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1B5D40048(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

int8x16_t sub_1B5D40274(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v136 = a2 - 3;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        if ((*a3)(v8, v10))
        {
          v69 = *v10;
LABEL_120:
          *v10 = *v8;
LABEL_121:
          *v8 = v69;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v72 = (*a3)(v10 + 1, v10);
      v73 = (*a3)(v10 + 2, v10 + 1);
      if (v72)
      {
        v74 = *v10;
        if (v73)
        {
          *v10 = v10[2];
          v10[2] = v74;
        }

        else
        {
          *v10 = v10[1];
          v10[1] = v74;
          if ((*a3)(v10 + 2, v10 + 1))
          {
            *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
          }
        }
      }

      else if (v73)
      {
        *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
        if ((*a3)(v10 + 1, v10))
        {
          *v10 = vextq_s8(*v10, *v10, 8uLL);
        }
      }

      if (!(*a3)(v8, v10 + 2))
      {
        return result;
      }

      v135 = v10[2];
      v10[2] = *v8;
      *v8 = v135;
      if (!(*a3)(v10 + 2, v10 + 1))
      {
        return result;
      }

      *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
LABEL_219:
      if ((*a3)(v10 + 1, v10))
      {
        result = vextq_s8(*v10, *v10, 8uLL);
        *v10 = result;
      }

      return result;
    }

    if (v11 == 5)
    {

      sub_1B5D4104C(v10, v10 + 1, v10 + 2, v10 + 3, v8, a3);
      return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v75 = v10 + 1;
      v77 = v10 == a2 || v75 == a2;
      if (a5)
      {
        if (!v77)
        {
          v78 = 0;
          v79 = v10;
          do
          {
            v80 = v79;
            v79 = v75;
            if ((*a3)(v75, v80))
            {
              v81 = 0;
              v82 = *v79;
              *v79 = 0;
              v139 = v82;
              for (i = v78; ; i -= 8)
              {
                v84 = (v10 + i);
                v85 = *(v10 + i);
                *v84 = 0;
                v84[1] = v85;
                if (v81)
                {
                  sub_1B5D1BE14(v81 + 84);
                }

                if (!i)
                {
                  v86 = v10;
                  goto LABEL_143;
                }

                if (!(*a3)(&v139, (v10 + i - 8)))
                {
                  break;
                }

                v81 = *v84;
              }

              v86 = (v10 + i);
LABEL_143:
              v87 = v139;
              v139 = 0;
              v88 = *v86;
              *v86 = v87;
              if (v88)
              {
                sub_1B5D1BE14(v88 + 84);
                if (v139)
                {
                  sub_1B5D1BE14(v139 + 84);
                }
              }
            }

            v75 = v79 + 1;
            v78 += 8;
          }

          while (v79 + 1 != a2);
        }
      }

      else if (!v77)
      {
        do
        {
          v128 = v75;
          if ((*a3)(v75, a1))
          {
            v129 = 0;
            v130 = *v128;
            *v128 = 0;
            v139 = v130;
            while (1)
            {
              v131 = *a1;
              *a1 = 0;
              a1[1] = v131;
              if (v129)
              {
                sub_1B5D1BE14(v129 + 84);
              }

              if (!(*a3)(&v139, a1 - 1))
              {
                break;
              }

              v129 = *a1--;
            }

            v132 = v139;
            v139 = 0;
            v133 = *a1;
            *a1 = v132;
            if (v133)
            {
              sub_1B5D1BE14(v133 + 84);
              if (v139)
              {
                sub_1B5D1BE14(v139 + 84);
              }
            }
          }

          v75 = v128 + 1;
          a1 = v128;
        }

        while (v128 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v89 = v12 >> 1;
      v90 = v12 >> 1;
      do
      {
        v91 = v90;
        if (v89 >= v90)
        {
          v92 = (2 * v90) | 1;
          v93 = &a1[v92];
          if (2 * v90 + 2 < v11 && (*a3)(&a1[v92], v93 + 1))
          {
            ++v93;
            v92 = 2 * v91 + 2;
          }

          v94 = &a1[v91];
          if (!(*a3)(v93, v94))
          {
            v95 = *v94;
            *v94 = 0;
            v139 = v95;
            do
            {
              v96 = v93;
              v97 = *v93;
              *v93 = 0;
              v98 = *v94;
              *v94 = v97;
              if (v98)
              {
                sub_1B5D1BE14(v98 + 84);
              }

              if (v89 < v92)
              {
                break;
              }

              v99 = (2 * v92) | 1;
              v93 = &a1[v99];
              v92 = 2 * v92 + 2;
              if (v92 >= v11)
              {
                v92 = v99;
              }

              else if ((*a3)(&a1[v99], v93 + 1))
              {
                ++v93;
              }

              else
              {
                v92 = v99;
              }

              v94 = v96;
            }

            while (!(*a3)(v93, &v139));
            v100 = v139;
            v139 = 0;
            v101 = *v96;
            *v96 = v100;
            if (v101)
            {
              sub_1B5D1BE14(v101 + 84);
            }

            if (v139)
            {
              sub_1B5D1BE14(v139 + 84);
            }
          }
        }

        v90 = v91 - 1;
      }

      while (v91);
      while (2)
      {
        if (v11 >= 2)
        {
          v102 = 0;
          v103 = *a1;
          *a1 = 0;
          v104 = a1;
          do
          {
            v105 = &v104[v102];
            v106 = v105 + 1;
            v107 = 2 * v102;
            v102 = (2 * v102) | 1;
            v108 = v107 + 2;
            if (v107 + 2 < v11)
            {
              v109 = v105 + 2;
              if ((*a3)(v105 + 1, v105 + 2))
              {
                v106 = v109;
                v102 = v108;
              }
            }

            v110 = *v106;
            *v106 = 0;
            v111 = *v104;
            *v104 = v110;
            if (v111)
            {
              sub_1B5D1BE14(v111 + 84);
            }

            v104 = v106;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v112 = a2 - 1;
          if (v106 == a2 - 1)
          {
            v127 = *v106;
            *v106 = v103;
            if (!v127)
            {
              goto LABEL_195;
            }
          }

          else
          {
            v113 = *v112;
            *v112 = 0;
            v114 = *v106;
            *v106 = v113;
            if (v114)
            {
              sub_1B5D1BE14(v114 + 84);
            }

            v115 = *v112;
            *v112 = v103;
            if (v115)
            {
              sub_1B5D1BE14(v115 + 84);
            }

            v116 = (v106 - a1 + 8) >> 3;
            v117 = v116 < 2;
            v118 = v116 - 2;
            if (v117)
            {
              goto LABEL_195;
            }

            v119 = v118 >> 1;
            v120 = &a1[v118 >> 1];
            if (!(*a3)(v120, v106))
            {
              goto LABEL_195;
            }

            v121 = *v106;
            *v106 = 0;
            v139 = v121;
            do
            {
              v122 = v120;
              v123 = *v120;
              *v120 = 0;
              v124 = *v106;
              *v106 = v123;
              if (v124)
              {
                sub_1B5D1BE14(v124 + 84);
              }

              if (!v119)
              {
                break;
              }

              v119 = (v119 - 1) >> 1;
              v120 = &a1[v119];
              v106 = v122;
            }

            while ((*a3)(v120, &v139));
            v125 = v139;
            v139 = 0;
            v126 = *v122;
            *v122 = v125;
            if (!v126)
            {
              goto LABEL_195;
            }

            sub_1B5D1BE14(v126 + 84);
            v127 = v139;
            if (!v139)
            {
              goto LABEL_195;
            }
          }

          sub_1B5D1BE14(v127 + 84);
        }

LABEL_195:
        --a2;
        v117 = v11-- > 2;
        if (!v117)
        {
          return result;
        }

        continue;
      }
    }

    v13 = &v10[v11 >> 1];
    v14 = *a3;
    if (v11 >= 0x81)
    {
      v15 = v14(&a1[v11 >> 1], a1);
      v16 = (*a3)(v8, &a1[v11 >> 1]);
      if (v15)
      {
        v17 = *a1;
        if (v16)
        {
          *a1 = *v8;
          goto LABEL_26;
        }

        *a1 = *v13;
        *v13 = v17;
        if ((*a3)(v8, &a1[v11 >> 1]))
        {
          v17 = *v13;
          *v13 = *v8;
LABEL_26:
          *v8 = v17;
        }
      }

      else if (v16)
      {
        v21 = *v13;
        *v13 = *v8;
        *v8 = v21;
        if ((*a3)(&a1[v11 >> 1], a1))
        {
          v22 = *a1;
          *a1 = *v13;
          *v13 = v22;
        }
      }

      v25 = v13 - 1;
      v26 = (*a3)(v13 - 1, a1 + 1);
      v27 = (*a3)(v9, v13 - 1);
      if (v26)
      {
        v28 = a1[1];
        if (v27)
        {
          a1[1] = *v9;
          goto LABEL_38;
        }

        a1[1] = *v25;
        *v25 = v28;
        if ((*a3)(v9, v13 - 1))
        {
          v28 = *v25;
          *v25 = *v9;
LABEL_38:
          *v9 = v28;
        }
      }

      else if (v27)
      {
        v29 = *v25;
        *v25 = *v9;
        *v9 = v29;
        if ((*a3)(v13 - 1, a1 + 1))
        {
          v30 = a1[1];
          a1[1] = *v25;
          *v25 = v30;
        }
      }

      v31 = (*a3)(v13 + 1, a1 + 2);
      v32 = (*a3)(v136, v13 + 1);
      if (v31)
      {
        v33 = a1[2];
        if (v32)
        {
          v34 = a2 - 3;
          a1[2] = *v136;
          goto LABEL_47;
        }

        a1[2] = v13[1];
        v13[1] = v33;
        if ((*a3)(v136, v13 + 1))
        {
          v33 = v13[1];
          v34 = a2 - 3;
          v13[1] = *v136;
LABEL_47:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v35 = v13[1];
        v13[1] = *v136;
        *v136 = v35;
        if ((*a3)(v13 + 1, a1 + 2))
        {
          v36 = a1[2];
          a1[2] = v13[1];
          v13[1] = v36;
        }
      }

      v37 = (*a3)(&a1[v11 >> 1], v13 - 1);
      v38 = (*a3)(v13 + 1, &a1[v11 >> 1]);
      if (v37)
      {
        v39 = *v25;
        if (v38)
        {
          v40 = *v13;
          *v25 = v13[1];
          v13[1] = v39;
LABEL_57:
          v44 = *a1;
          *a1 = v40;
          *v13 = v44;
          goto LABEL_58;
        }

        *v25 = *v13;
        *v13 = v39;
        v43 = (*a3)(v13 + 1, &a1[v11 >> 1]);
        v40 = *v13;
        if (!v43)
        {
          goto LABEL_57;
        }

        v42 = v13[1];
        *v13 = v42;
        v13[1] = v40;
      }

      else
      {
        v40 = *v13;
        if (!v38)
        {
          goto LABEL_57;
        }

        *v13 = v13[1];
        v13[1] = v40;
        v41 = (*a3)(&a1[v11 >> 1], v13 - 1);
        v40 = *v13;
        if (!v41)
        {
          goto LABEL_57;
        }

        v42 = *v25;
        *v25 = v40;
        *v13 = v42;
      }

      v40 = v42;
      goto LABEL_57;
    }

    v18 = v14(a1, &a1[v11 >> 1]);
    v19 = (*a3)(v8, a1);
    if (!v18)
    {
      if (v19)
      {
        v23 = *a1;
        *a1 = *v8;
        *v8 = v23;
        if ((*a3)(a1, &a1[v11 >> 1]))
        {
          v24 = *v13;
          *v13 = *a1;
          *a1 = v24;
        }
      }

      goto LABEL_58;
    }

    v20 = *v13;
    if (v19)
    {
      *v13 = *v8;
LABEL_35:
      *v8 = v20;
      goto LABEL_58;
    }

    *v13 = *a1;
    *a1 = v20;
    if ((*a3)(v8, a1))
    {
      v20 = *a1;
      *a1 = *v8;
      goto LABEL_35;
    }

LABEL_58:
    --a4;
    if (a5)
    {
      v45 = *a1;
LABEL_61:
      *a1 = 0;
      v139 = v45;
      v47 = a1;
      do
      {
        ++v47;
      }

      while ((*a3)(v47, &v139));
      v48 = v47 - 1;
      v49 = a2;
      if (v47 - 1 == a1)
      {
        v49 = a2;
        do
        {
          if (v47 >= v49)
          {
            break;
          }

          --v49;
        }

        while (!(*a3)(v49, &v139));
      }

      else
      {
        do
        {
          --v49;
        }

        while (!(*a3)(v49, &v139));
      }

      if (v47 < v49)
      {
        v50 = v47;
        v51 = v49;
        do
        {
          v52 = *v50;
          *v50 = *v51;
          *v51 = v52;
          do
          {
            ++v50;
          }

          while ((*a3)(v50, &v139));
          v48 = v50 - 1;
          do
          {
            --v51;
          }

          while (!(*a3)(v51, &v139));
        }

        while (v50 < v51);
      }

      if (v48 != a1)
      {
        v53 = *v48;
        *v48 = 0;
        v54 = *a1;
        *a1 = v53;
        if (v54)
        {
          sub_1B5D1BE14(v54 + 84);
        }
      }

      v55 = v139;
      v139 = 0;
      v56 = *v48;
      *v48 = v55;
      if (v56)
      {
        sub_1B5D1BE14(v56 + 84);
      }

      if (v139)
      {
        sub_1B5D1BE14(v139 + 84);
      }

      if (v47 < v49)
      {
        goto LABEL_86;
      }

      v57 = sub_1B5D4123C(a1, v48, a3);
      v10 = v48 + 1;
      if (sub_1B5D4123C(v48 + 1, a2, a3))
      {
        a2 = v48;
        if (v57)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v57)
      {
LABEL_86:
        sub_1B5D40274(a1, v48, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v48 + 1;
      }
    }

    else
    {
      v46 = (*a3)(a1 - 1, a1);
      v45 = *a1;
      if (v46)
      {
        goto LABEL_61;
      }

      *a1 = 0;
      v139 = v45;
      v10 = a1;
      if ((*a3)(&v139, v8))
      {
        do
        {
          ++v10;
        }

        while (!(*a3)(&v139, v10));
      }

      else
      {
        v58 = a1 + 1;
        do
        {
          v10 = v58;
          if (v58 >= a2)
          {
            break;
          }

          v59 = (*a3)(&v139, v58);
          v58 = v10 + 1;
        }

        while (!v59);
      }

      v60 = a2;
      if (v10 < a2)
      {
        v60 = a2;
        do
        {
          --v60;
        }

        while ((*a3)(&v139, v60));
      }

      while (v10 < v60)
      {
        v61 = *v10;
        *v10 = *v60;
        *v60 = v61;
        do
        {
          ++v10;
        }

        while (!(*a3)(&v139, v10));
        do
        {
          --v60;
        }

        while ((*a3)(&v139, v60));
      }

      v62 = v10 - 1;
      if (v10 - 1 != a1)
      {
        v63 = *v62;
        *v62 = 0;
        v64 = *a1;
        *a1 = v63;
        if (v64)
        {
          sub_1B5D1BE14(v64 + 84);
        }
      }

      v65 = v139;
      v139 = 0;
      v66 = *v62;
      *v62 = v65;
      if (v66)
      {
        sub_1B5D1BE14(v66 + 84);
      }

      if (v139)
      {
        sub_1B5D1BE14(v139 + 84);
      }

      a5 = 0;
    }
  }

  v67 = (*a3)(v10 + 1, v10);
  v68 = (*a3)(v8, v10 + 1);
  if (!v67)
  {
    if (!v68)
    {
      return result;
    }

    v134 = v10[1];
    v10[1] = *v8;
    *v8 = v134;
    goto LABEL_219;
  }

  v69 = *v10;
  if (v68)
  {
    goto LABEL_120;
  }

  *v10 = v10[1];
  v10[1] = v69;
  if ((*a3)(v8, v10 + 1))
  {
    v69 = v10[1];
    v10[1] = *v8;
    goto LABEL_121;
  }

  return result;
}

void sub_1B5D40FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_1B5D1BE14(a12 + 84);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D4104C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_1B5D4123C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v34 = a1[2];
        a1[2] = *v17;
        *v17 = v34;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        sub_1B5D4104C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v25 = 0;
      v26 = *v22;
      *v22 = 0;
      v35 = v26;
      for (i = v23; ; i -= 8)
      {
        v28 = a1 + i;
        v29 = *(a1 + i + 16);
        *(v28 + 16) = 0;
        *(v28 + 24) = v29;
        if (v25)
        {
          sub_1B5D1BE14(v25 + 84);
        }

        if (i == -16)
        {
          v30 = a1;
          goto LABEL_43;
        }

        if (!(*a3)(&v35, (a1 + i + 8)))
        {
          break;
        }

        v25 = *(v28 + 16);
      }

      v30 = (a1 + i + 16);
LABEL_43:
      v31 = v35;
      v35 = 0;
      v32 = *v30;
      *v30 = v31;
      if (v32)
      {
        sub_1B5D1BE14(v32 + 84);
      }

      if (v35)
      {
        sub_1B5D1BE14(v35 + 84);
      }

      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

void sub_1B5D41628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1B5D1BE14(a10 + 84);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5D41644(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1B5D416A8(void *a1)
{
  if (a1)
  {
    sub_1B5D416A8(*a1);
    sub_1B5D416A8(a1[1]);
    if (*(a1 + 16) >= 0xFu)
    {
      v2 = a1[5];
      if (v2)
      {
        MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
      }
    }

    operator delete(a1);
  }
}

void *sub_1B5D4171C(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    if (v6 <= 0xE)
    {
      v7 = a3 + 1;
    }

    else
    {
      v7 = *(a3 + 1);
    }

    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        if (v9 <= 0xE)
        {
          v11 = v8 + 34;
        }

        else
        {
          v11 = v10;
        }

        if (v9 >= v6)
        {
          v12 = v6;
        }

        else
        {
          v12 = v9;
        }

        v13 = memcmp(v7, v11, v12);
        v14 = v6 < v9;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      v15 = memcmp(v11, v7, v12);
      v16 = v9 < v6;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_22:
  *a2 = v8;
  return v5;
}

void sub_1B5D41818(char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 16) >= 0xFu)
    {
      v3 = __p[5];
      if (v3)
      {
        MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1B5D4188C(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 280);
  v5 = *v4;
  for (i = v4[1]; i != v5; i -= 8)
  {
    v8 = *(i - 8);
    v7 = v8;
    if (v8)
    {
      sub_1B5D1BE14(v7 + 84);
    }
  }

  v4[1] = v5;
  if (*(a1 + 312))
  {
    sub_1B5D1C01C(*(a1 + 304));
    *(a1 + 304) = 0;
    v9 = *(a1 + 296);
    if (v9)
    {
      for (j = 0; j != v9; ++j)
      {
        *(*(a1 + 288) + 8 * j) = 0;
      }
    }

    *(a1 + 312) = 0;
  }

  if (*(a2 + 8))
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = (a2 + 16);
  }

  v12 = fopen(v11, "r");
  if (!v12)
  {
    sub_1B5CF7CDC(v59);
    v46 = sub_1B5CE599C(v60, "Failed to open ", 15);
    if (*(a2 + 8))
    {
      v47 = *(a2 + 8);
    }

    else
    {
      v47 = (a2 + 16);
    }

    v48 = strlen(v47);
    v49 = sub_1B5CE599C(v46, v47, v48);
    v50 = sub_1B5CE599C(v49, " (errno=", 8);
    v51 = __error();
    v52 = MEMORY[0x1B8C87F00](v50, *v51);
    sub_1B5CE599C(v52, ")", 1);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1B5D3F684(v61, v59);
    sub_1B5D32AFC(exception, v61);
    __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
  }

  v13 = v12;
  v54[0] = &unk_1F2D58190;
  *v59 = 0;
  v54[1] = uspoof_open();
  while (!feof(v13) && !ferror(v13))
  {
    v14 = fgets(v59, 256, v13);
    if (v14)
    {
      v15 = v14;
      *v61 = 0x100000;
      *&v61[4] = 0;
      v61[6] = 1;
      *v62 = 0;
      v16 = strlen(v14);
      sub_1B5CDCAAC(v61, v15, 0, v16);
      LODWORD(v63) = 0x100000;
      WORD2(v63) = 0;
      BYTE6(v63) = 1;
      v64 = 0;
      sub_1B5CDCAAC(&v63, " \t\n", 0, 3u);
      sub_1B5D5D354(&v55, v61, &v63);
      if (v64 && BYTE6(v63) == 1)
      {
        free(v64);
      }

      if (*v62 && v61[6] == 1)
      {
        free(*v62);
      }

      if (v55)
      {
        LODWORD(v63) = 0x100000;
        WORD2(v63) = 0;
        BYTE6(v63) = 1;
        v64 = 0;
        sub_1B5CDCAAC(&v63, " \t\n", 0, 3u);
        if (v63)
        {
          *v61 = 0x100000;
          *&v61[4] = 0;
          v61[6] = 0;
          *v62 = 0;
          v62[8] = 0;
          sub_1B5CDCB48(v61, v55);
          v17 = v55;
          if (v55)
          {
            v18 = 0;
            do
            {
              v19 = v56;
              if (!v56)
              {
                v19 = &v57;
              }

              v20 = v19[v18];
              v21 = v63;
              if (v63)
              {
                v22 = v64;
                if (!v64)
                {
                  v22 = &v65;
                }

                while (1)
                {
                  v23 = *v22++;
                  if (v23 == v20)
                  {
                    break;
                  }

                  if (!--v21)
                  {
                    goto LABEL_35;
                  }
                }
              }

              else
              {
LABEL_35:
                sub_1B5D5CC40(v61, v20);
                v17 = v55;
              }

              ++v18;
            }

            while (v18 < v17);
          }
        }

        else
        {
          sub_1B5D5CABC(v61, &v55);
        }

        if (*v61)
        {
          if (!v55)
          {
            if (BYTE6(v55) || (sub_1B5D5C954(&v55), v55 < 2uLL))
            {
              sub_1B5CDCB48(&v55, 1);
              v26 = v56;
              if (!v56)
              {
                v26 = &v57;
              }

              v25 = 1 - v55;
              v24 = &v26[v55];
            }

            else
            {
              if (v56)
              {
                v24 = v56 + 1;
              }

              else
              {
                v24 = v58;
              }

              v25 = v55 - 1;
            }

            bzero(v24, v25);
            LOWORD(v55) = 1;
            WORD2(v55) = 0;
          }

          v27 = v56;
          if (!v56)
          {
            v27 = &v57;
          }

          v28 = *v27;
          if (*v62 && v61[6] == 1)
          {
            free(*v62);
          }

          if (v64 && BYTE6(v63) == 1)
          {
            free(v64);
          }

          if (v28 != 35)
          {
            v30 = *(a1 + 248);
            v29 = *(a1 + 256);
            if (v29)
            {
              atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
            }

            v31 = *(a1 + 240);
            operator new();
          }
        }

        else
        {
          if (*v62 && v61[6] == 1)
          {
            free(*v62);
          }

          if (v64 && BYTE6(v63) == 1)
          {
            free(v64);
          }
        }
      }

      if (v56 && BYTE6(v55) == 1)
      {
        free(v56);
      }
    }
  }

  v32 = atomic_load(byte_1EB90C7D0);
  if (v32)
  {
    v33 = atomic_load(byte_1EB90CC20);
    if (v33)
    {
      printf("    Read %d unigrams.  Registered %lu words.", 0, (*(*(a1 + 280) + 8) - **(a1 + 280)) >> 3);
      putchar(10);
    }

    else
    {
      v34 = sub_1B5D32914();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = (*(*(a1 + 280) + 8) - **(a1 + 280)) >> 3;
        *v61 = 67109376;
        *&v61[4] = 0;
        *v62 = 2048;
        *&v62[2] = v35;
        _os_log_impl(&dword_1B5CDB000, v34, OS_LOG_TYPE_DEFAULT, "    Read %d unigrams.  Registered %lu words.", v61, 0x12u);
      }
    }
  }

  if (*(a1 + 1880))
  {
    v36 = atomic_load(byte_1EB90C7D0);
    if (v36)
    {
      v37 = atomic_load(byte_1EB90CC20);
      if (v37)
      {
        printf("        Excluded %d 0-frequency neighbor-key macros.", *(a1 + 1880));
        putchar(10);
      }

      else
      {
        v38 = sub_1B5D32914();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(a1 + 1880);
          *v61 = 67109120;
          *&v61[4] = v39;
          _os_log_impl(&dword_1B5CDB000, v38, OS_LOG_TYPE_DEFAULT, "        Excluded %d 0-frequency neighbor-key macros.", v61, 8u);
        }
      }
    }
  }

  v40 = atomic_load(byte_1EB90C7D0);
  if (v40)
  {
    v41 = atomic_load(byte_1EB90CC20);
    if (v41)
    {
      printf("        Merged %d duplicate surface forms.  %d shared sort-key strings remain", 0, *(a1 + 1884));
      putchar(10);
    }

    else
    {
      v42 = sub_1B5D32914();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a1 + 1884);
        *v61 = 67109376;
        *&v61[4] = 0;
        *v62 = 1024;
        *&v62[2] = v43;
        _os_log_impl(&dword_1B5CDB000, v42, OS_LOG_TYPE_DEFAULT, "        Merged %d duplicate surface forms.  %d shared sort-key strings remain", v61, 0xEu);
      }
    }
  }

  result = sub_1B5D4DEA0(v54);
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D43EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, unsigned __int16 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, void *a49)
{
  v52 = (v49 + 8);
  STACK[0x260] = &STACK[0x2A0];
  sub_1B5D1BF88(&STACK[0x260]);
  v53 = *(v50 - 248);
  if (v53 && *(v50 - 250) == 1)
  {
    free(v53);
  }

  v54 = *(v50 - 216);
  if (v54 && *(v50 - 218) == 1)
  {
    free(v54);
  }

  v55 = *(v50 - 144);
  if (v55 && *(v50 - 146) == 1)
  {
    free(v55);
  }

  *(v50 - 152) = &a38;
  sub_1B5D1BF88((v50 - 152));
  v56 = *(v50 - 184);
  if (v56 && *(v50 - 186) == 1)
  {
    free(v56);
  }

  if (STACK[0x288] && LOBYTE(STACK[0x286]) == 1)
  {
    free(STACK[0x288]);
  }

  *(v50 - 192) = &a41;
  sub_1B5D1BF88((v50 - 192));
  v57 = *(v49 + 320);
  if (v57)
  {
    sub_1B5CDD904(v57);
  }

  *(v50 - 192) = a13;
  sub_1B5D1BF88((v50 - 192));
  *(v50 - 192) = a14;
  sub_1B5D1BF88((v50 - 192));
  v58 = *(v49 + 240);
  if (v58)
  {
    sub_1B5D1BC34((v58 + 24));
  }

  v59 = *(v49 + 232);
  if (v59)
  {
    sub_1B5D1BC34((v59 + 24));
  }

  v60 = *(v49 + 224);
  if (v60)
  {
    sub_1B5D1BCD4(v60);
  }

  v61 = *a12;
  if (*a12)
  {
    *(v49 + 208) = v61;
    operator delete(v61);
  }

  if (*(v49 + 176) >= 0xFu)
  {
    v62 = *(v49 + 184);
    if (v62)
    {
      MEMORY[0x1B8C880C0](v62, 0x1000C8077774924);
    }
  }

  if (*(v49 + 152) >= 0xFu)
  {
    v63 = *(v49 + 160);
    if (v63)
    {
      MEMORY[0x1B8C880C0](v63, 0x1000C8077774924);
    }
  }

  if (*a21 >= 0xFu)
  {
    v64 = *(v49 + 144);
    if (v64)
    {
      MEMORY[0x1B8C880C0](v64, 0x1000C8077774924);
    }
  }

  v65 = *(v49 + 112);
  if (v65 && *(v49 + 110) == 1)
  {
    free(v65);
  }

  if (*v52 && *(v49 + 6) == 1)
  {
    free(*v52);
  }

  if (a19)
  {
    sub_1B5CDD904(a19);
    MEMORY[0x1B8C880F0](v49, 0x1072C403E83EB7CLL);
    sub_1B5CDD904(a19);
  }

  else
  {
    MEMORY[0x1B8C880F0](v49, 0x1072C403E83EB7CLL);
  }

  if (a49)
  {
    if (a48 == 1)
    {
      free(a49);
    }
  }

  sub_1B5D4DEA0(&a36);
  _Unwind_Resume(a1);
}

void sub_1B5D4480C(uint64_t a1)
{
  v317 = *MEMORY[0x1E69E9840];
  v2 = **(a1 + 280);
  if (*(*(a1 + 280) + 8) != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v3);
      v299 = 0;
      LODWORD(v314) = 0x100000;
      WORD2(v314) = 0;
      BYTE6(v314) = 0;
      v315 = 0;
      LOBYTE(v316[0]) = 0;
      LODWORD(v312) = 0x100000;
      WORD2(v312) = 0;
      BYTE6(v312) = 0;
      *(&v312 + 1) = 0;
      v313[0] = 0;
      sub_1B5D5CABC(v310, v5);
      v292 = v4;
      v6 = 0;
      for (i = 0; ; v6 = HIWORD(i))
      {
        v7 = *&v310[4];
        if (!*&v310[4])
        {
          sub_1B5CDF8F4(v310);
          v7 = *&v310[4];
        }

        if (v6 >= v7)
        {
          break;
        }

        v8 = sub_1B5D8EBAC(v310);
        sub_1B5D5CC40(&v312, v8);
        (*(**(v5 + 312) + 8))(&v297);
        if (v299 && !sub_1B5D5234C(&v297, &v299))
        {
          if ((*(v5 + 329) & 0x80) != 0)
          {
            v14 = atomic_load(byte_1EB90C7D0);
            if (v14)
            {
              v15 = atomic_load(byte_1EB90CC20);
              if (v15)
              {
                if (v315)
                {
                  v16 = v315;
                }

                else
                {
                  v16 = v316;
                }

                if (*(&v312 + 1))
                {
                  v17 = *(&v312 + 1);
                }

                else
                {
                  v17 = v313;
                }

                if (*(v5 + 8))
                {
                  v18 = *(v5 + 8);
                }

                else
                {
                  v18 = (v5 + 16);
                }

                if (v299 <= 0xEu)
                {
                  v19 = v300;
                }

                else
                {
                  v19 = v301;
                }

                sub_1B5D8C1E4(buf, v19, v299, v9, v10, v11, v12, v13);
                v25 = *&buf[8];
                if (v297 <= 0xEu)
                {
                  v26 = &v297 + 2;
                }

                else
                {
                  v26 = v298;
                }

                sub_1B5D8C1E4(&__p, v26, v297, v20, v21, v22, v23, v24);
                v27 = &buf[16];
                if (v25)
                {
                  v27 = v25;
                }

                v28 = v306;
                if (!v306)
                {
                  v28 = v307;
                }

                printf("NOTE: Prefix sort-key changed retroactively at %s -> %s for %s:  0x%s -> 0x%s ", v16, v17, v18, v27, v28);
                if (v306 && BYTE6(__p) == 1)
                {
                  free(v306);
                }

                if (*&buf[8] && buf[6] == 1)
                {
                  free(*&buf[8]);
                }

                putchar(10);
              }

              else
              {
                v29 = sub_1B5D32914();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  if (v315)
                  {
                    v35 = v315;
                  }

                  else
                  {
                    v35 = v316;
                  }

                  if (*(&v312 + 1))
                  {
                    v36 = *(&v312 + 1);
                  }

                  else
                  {
                    v36 = v313;
                  }

                  if (*(v5 + 8))
                  {
                    v37 = *(v5 + 8);
                  }

                  else
                  {
                    v37 = v5 + 16;
                  }

                  if (v299 <= 0xEu)
                  {
                    v38 = v300;
                  }

                  else
                  {
                    v38 = v301;
                  }

                  sub_1B5D8C1E4(&__p, v38, v299, v30, v31, v32, v33, v34);
                  v44 = v306;
                  if (v297 <= 0xEu)
                  {
                    v45 = &v297 + 2;
                  }

                  else
                  {
                    v45 = v298;
                  }

                  sub_1B5D8C1E4(&v302, v45, v297, v39, v40, v41, v42, v43);
                  v46 = v303;
                  v47 = v307;
                  if (v44)
                  {
                    v47 = v44;
                  }

                  *buf = 136316162;
                  if (!v303)
                  {
                    v46 = &v304;
                  }

                  *&buf[4] = v35;
                  *&buf[12] = 2080;
                  *&buf[14] = v36;
                  *&buf[22] = 2080;
                  *&buf[24] = v37;
                  *&buf[32] = 2080;
                  *&buf[34] = v47;
                  *&buf[42] = 2080;
                  v309 = v46;
                  _os_log_impl(&dword_1B5CDB000, v29, OS_LOG_TYPE_DEFAULT, "NOTE: Prefix sort-key changed retroactively at %s -> %s for %s:  0x%s -> 0x%s ", buf, 0x34u);
                  if (v303 && BYTE6(v302) == 1)
                  {
                    free(v303);
                  }

                  if (v306 && BYTE6(__p) == 1)
                  {
                    free(v306);
                  }
                }
              }
            }
          }

          if (v297 >= 0xFu && v298)
          {
            MEMORY[0x1B8C880C0](v298, 0x1000C8077774924);
          }

          break;
        }

        sub_1B5CDF770(&v314, &v312);
        sub_1B5D522BC(&v299, &v297);
        if (v297 >= 0xFu)
        {
          if (v298)
          {
            MEMORY[0x1B8C880C0](v298, 0x1000C8077774924);
          }
        }
      }

      if (*&v310[8])
      {
        v48 = v310[6] == 1;
      }

      else
      {
        v48 = 0;
      }

      if (v48)
      {
        free(*&v310[8]);
      }

      if (*(&v312 + 1) && BYTE6(v312) == 1)
      {
        free(*(&v312 + 1));
      }

      if (v315 && BYTE6(v314) == 1)
      {
        free(v315);
      }

      if (v299 >= 0xFu && v301)
      {
        MEMORY[0x1B8C880C0](v301, 0x1000C8077774924);
      }

      if (v6 < v7)
      {
        ++*(a1 + 1768);
      }

      v49 = *(v5 + 112);
      if (!v49)
      {
        v49 = v5 + 120;
      }

      *v310 = v49;
      v50 = *(v5 + 104);
      *&v310[8] = 0;
      *&v310[12] = v50;
      sub_1B5CDCF70(v310);
      v51 = *(v5 + 104);
      v52 = *(v5 + 112);
      if (!v52)
      {
        v52 = (v5 + 120);
      }

      v314 = v52;
      LODWORD(v315) = v51;
      HIDWORD(v315) = v51;
      v316[0] = 0;
      sub_1B5CDCF70(&v314);
      v294 = *v310;
      if (*v310 != v314)
      {
LABEL_335:
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      v296 = v315;
LABEL_94:
      if (*&v310[8] != v296)
      {
        v53 = *&v310[16];
        (*(**(a1 + 1704) + 16))(&v312);
        v54 = v312;
        if (v312 > 2u)
        {
          ++*(a1 + 336);
          if (v54 >= 0xF)
          {
            *buf = v54;
            operator new[]();
          }
        }

        *buf = v312;
        v55 = v312;
        *&buf[16] = v53;
        if (v312 >= 0xFu)
        {
          v56 = *(&v312 + 1);
        }

        else
        {
          v56 = &buf[2];
        }

        v57 = sub_1B5CE3124(v56, v312);
        v58 = v53 + v57;
        v59 = *(a1 + 1728);
        if (!*&v59)
        {
          goto LABEL_118;
        }

        v60 = vcnt_s8(v59);
        v60.i16[0] = vaddlv_u8(v60);
        v61 = v60.u32[0];
        if (v60.u32[0] > 1uLL)
        {
          v62 = v53 + v57;
          if (v58 >= *&v59)
          {
            v62 = v58 % *&v59;
          }
        }

        else
        {
          v62 = (*&v59 - 1) & v58;
        }

        v63 = *(*(a1 + 1720) + 8 * v62);
        if (!v63 || (v64 = *v63) == 0)
        {
LABEL_118:
          operator new();
        }

        while (1)
        {
          v65 = v64[1];
          if (v65 == v58)
          {
            if (sub_1B5CE401C(v64 + 8, buf) && *(v64 + 8) == v53)
            {
              ++*(v64 + 10);
              if (v55 >= 0xF && *&buf[8])
              {
                MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
              }

              if (v312 >= 0xFu && *(&v312 + 1))
              {
                MEMORY[0x1B8C880C0](*(&v312 + 1), 0x1000C8077774924);
              }

              sub_1B5CDCF70(v310);
              if (*v310 != v294)
              {
                goto LABEL_335;
              }

              goto LABEL_94;
            }
          }

          else
          {
            if (v61 > 1)
            {
              if (v65 >= *&v59)
              {
                v65 %= *&v59;
              }
            }

            else
            {
              v65 &= *&v59 - 1;
            }

            if (v65 != v62)
            {
              goto LABEL_118;
            }
          }

          v64 = *v64;
          if (!v64)
          {
            goto LABEL_118;
          }
        }
      }

      v3 = (v292 + 1);
      v2 = **(a1 + 280);
      v4 = v292 + 1;
    }

    while (v3 < (*(*(a1 + 280) + 8) - v2) >> 3);
  }

  memset(buf, 0, 32);
  *&buf[32] = 1065353216;
  v66 = *(a1 + 1736);
  if (!v66)
  {
    goto LABEL_154;
  }

  do
  {
    v67 = *(v66 + 8);
    v68 = v66[3];
    if (v67 <= 0xE)
    {
      v69 = v66 + 18;
    }

    else
    {
      v69 = v66[3];
    }

    v70 = sub_1B5CE3124(v69, v67);
    v71 = v70;
    v72 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_148;
    }

    v73 = vcnt_s8(*&buf[8]);
    v73.i16[0] = vaddlv_u8(v73);
    v74 = v73.u32[0];
    if (v73.u32[0] > 1uLL)
    {
      v75 = v70;
      if (*&buf[8] <= v70)
      {
        v75 = v70 % *&buf[8];
      }
    }

    else
    {
      v75 = (*&buf[8] - 1) & v70;
    }

    v76 = *(*buf + 8 * v75);
    if (!v76 || (v77 = *v76) == 0)
    {
LABEL_148:
      operator new();
    }

    while (1)
    {
      v78 = *(v77 + 1);
      if (v78 == v71)
      {
        break;
      }

      if (v74 > 1)
      {
        if (v78 >= v72)
        {
          v78 %= v72;
        }
      }

      else
      {
        v78 &= v72 - 1;
      }

      if (v78 != v75)
      {
        goto LABEL_148;
      }

LABEL_147:
      v77 = *v77;
      if (!v77)
      {
        goto LABEL_148;
      }
    }

    if (!sub_1B5CE401C(v77 + 8, v66 + 8))
    {
      goto LABEL_147;
    }

    v79 = *(v66 + 10);
    if (v79 > *(v77 + 9))
    {
      *(v77 + 8) = *(v66 + 8);
      *(v77 + 9) = v79;
    }

    v66 = *v66;
  }

  while (v66);
  v80 = *&buf[16];
  if (*&buf[16])
  {
    do
    {
      sub_1B5CE2A50(a1 + 328, v80 + 8, *(v80 + 8));
      v80 = *v80;
    }

    while (v80);
  }

LABEL_154:
  v293 = *(a1 + 1648);
  sub_1B5D329D0(buf);
  v81 = *(a1 + 280);
  v82 = *v81;
  v83 = v81[1];
  if (*v81 != v83)
  {
    do
    {
      v84 = *v82;
      v85 = (*v82 + 152);
      if (*v85 >= 0xFu)
      {
        v86 = *(v84 + 160);
        if (v86)
        {
          MEMORY[0x1B8C880C0](v86, 0x1000C8077774924);
        }
      }

      *v85 = 0;
      *(v85 + 1) = 0;
      v88 = (v84 + 176);
      v87 = *(v84 + 176);
      *(v84 + 168) = 0;
      if (v87 >= 0xF)
      {
        v89 = *(v84 + 184);
        if (v89)
        {
          MEMORY[0x1B8C880C0](v89, 0x1000C8077774924);
        }
      }

      *v88 = 0;
      *(v84 + 184) = 0;
      *(v84 + 192) = 0;
      __p = 0;
      v306 = 0;
      v307[0] = 0;
      sub_1B5D5CABC(v310, v84);
      v90 = 0;
      for (i = 0; ; v90 = HIWORD(i))
      {
        v91 = *&v310[4];
        if (!*&v310[4])
        {
          sub_1B5CDF8F4(v310);
          v91 = *&v310[4];
        }

        if (v90 >= v91)
        {
          break;
        }

        buf[0] = *v85;
        sub_1B5D7A7FC(&__p, buf);
        v92 = sub_1B5D8EBAC(v310);
        (*(**(a1 + 1704) + 16))(&v314);
        if (v314 >= 3u)
        {
          ++*(a1 + 336);
        }

        sub_1B5CDD368(buf, a1 + 328, v85, v92, &v314);
        if (*v85 >= 0xFu)
        {
          v93 = *(v84 + 160);
          if (v93)
          {
            MEMORY[0x1B8C880C0](v93, 0x1000C8077774924);
          }
        }

        v94 = *buf;
        *v85 = *buf;
        if (v94 >= 0xF)
        {
          *buf = 0;
        }

        *(v84 + 168) = buf[16];
        if (*(v84 + 176) >= 0xFu)
        {
          v95 = *(v84 + 184);
          if (v95)
          {
            MEMORY[0x1B8C880C0](v95, 0x1000C8077774924);
          }
        }

        v96 = *&buf[24];
        *v88 = *&buf[24];
        if (v96 >= 0xF)
        {
          *&buf[24] = 0;
        }

        *(v84 + 192) = *&buf[40];
        if (*buf >= 0xFu && *&buf[8])
        {
          MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
        }

        if (v314 >= 0xFu && v315)
        {
          MEMORY[0x1B8C880C0](v315, 0x1000C8077774924);
        }
      }

      v97 = sub_1B5CE401C((v84 + 136), v85);
      v98 = v84 + 200;
      *(v84 + 208) = *(v84 + 200);
      if (v97)
      {
        v99 = __p;
        v100 = v306 - __p;
        if (v306 != __p)
        {
          v101 = 0;
          v102 = 0;
          v103 = 0;
          do
          {
            if (v103 <= v99[v101])
            {
              do
              {
                buf[0] = v102;
                sub_1B5D7A7FC(v98, buf);
                v104 = (v103 + 1);
                v105 = v103 >= v99[v101];
                LODWORD(v103) = v103 + 1;
              }

              while (!v105);
            }

            else
            {
              v104 = v103;
            }

            v101 = ++v102;
            v103 = v104;
          }

          while (v100 > v102);
        }
      }

      else
      {
        ++*(a1 + 1760);
        (*(**(v84 + 312) + 8))(buf);
        v111 = sub_1B5CE401C(v85, buf);
        if (*buf >= 0xFu && *&buf[8])
        {
          MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
        }

        if (!v111)
        {
          v113 = *(a1 + 1764) + 1;
          *(a1 + 1764) = v113;
          if ((*(v84 + 329) & 0x80) != 0 && v113 <= 0x13)
          {
            v114 = atomic_load(byte_1EB90C7D0);
            if (v114)
            {
              v115 = atomic_load(byte_1EB90CC20);
              if (v115)
              {
                if (*(v84 + 112))
                {
                  v116 = *(v84 + 112);
                }

                else
                {
                  v116 = (v84 + 120);
                }

                if (*(v84 + 8))
                {
                  v117 = *(v84 + 8);
                }

                else
                {
                  v117 = (v84 + 16);
                }

                v118 = *(v84 + 88);
                v119 = *(v84 + 152);
                v120 = *(v84 + 160);
                if (v119 <= 0xE)
                {
                  v121 = (v84 + 154);
                }

                else
                {
                  v121 = *(v84 + 160);
                }

                sub_1B5D8C1E4(buf, v121, v119, v106, v107, v108, v109, v110);
                if (*&buf[8])
                {
                  v122 = *&buf[8];
                }

                else
                {
                  v122 = &buf[16];
                }

                (*(**(v84 + 312) + 8))(&v312);
                if (v312 <= 0xEu)
                {
                  v128 = &v312 + 2;
                }

                else
                {
                  v128 = *(&v312 + 1);
                }

                sub_1B5D8C1E4(&v314, v128, v312, v123, v124, v125, v126, v127);
                v129 = v315;
                if (!v315)
                {
                  v129 = v316;
                }

                printf("NOTE:  Sort key for %s->%s freq=%.1f is not distributive:\n    0x%s / 0x%s", v116, v117, v118, v122, v129);
                if (v315 && BYTE6(v314) == 1)
                {
                  free(v315);
                }

                if (v312 >= 0xFu && *(&v312 + 1))
                {
                  MEMORY[0x1B8C880C0](*(&v312 + 1), 0x1000C8077774924);
                }

                if (*&buf[8] && buf[6] == 1)
                {
                  free(*&buf[8]);
                }

                putchar(10);
              }

              else
              {
                v130 = sub_1B5D32914();
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v84 + 112))
                  {
                    v136 = *(v84 + 112);
                  }

                  else
                  {
                    v136 = v84 + 120;
                  }

                  if (*(v84 + 8))
                  {
                    v137 = *(v84 + 8);
                  }

                  else
                  {
                    v137 = v84 + 16;
                  }

                  v138 = *(v84 + 88);
                  v139 = *(v84 + 152);
                  v140 = *(v84 + 160);
                  if (v139 <= 0xE)
                  {
                    v141 = (v84 + 154);
                  }

                  else
                  {
                    v141 = *(v84 + 160);
                  }

                  sub_1B5D8C1E4(&v314, v141, v139, v131, v132, v133, v134, v135);
                  if (v315)
                  {
                    v142 = v315;
                  }

                  else
                  {
                    v142 = v316;
                  }

                  (*(**(v84 + 312) + 8))(&v302);
                  if (v302 <= 0xEu)
                  {
                    v148 = &v302 + 2;
                  }

                  else
                  {
                    v148 = v303;
                  }

                  sub_1B5D8C1E4(&v312, v148, v302, v143, v144, v145, v146, v147);
                  v149 = *(&v312 + 1);
                  if (!*(&v312 + 1))
                  {
                    v149 = v313;
                  }

                  *buf = 136316162;
                  *&buf[4] = v136;
                  *&buf[12] = 2080;
                  *&buf[14] = v137;
                  *&buf[22] = 2048;
                  *&buf[24] = v138;
                  *&buf[32] = 2080;
                  *&buf[34] = v142;
                  *&buf[42] = 2080;
                  v309 = v149;
                  _os_log_impl(&dword_1B5CDB000, v130, OS_LOG_TYPE_DEFAULT, "NOTE:  Sort key for %s->%s freq=%.1f is not distributive:\n    0x%s / 0x%s", buf, 0x34u);
                  if (*(&v312 + 1) && BYTE6(v312) == 1)
                  {
                    free(*(&v312 + 1));
                  }

                  if (v302 >= 0xFu && v303)
                  {
                    MEMORY[0x1B8C880C0](v303, 0x1000C8077774924);
                  }

                  if (v315 && BYTE6(v314) == 1)
                  {
                    free(v315);
                  }
                }
              }
            }
          }
        }
      }

      if (*&v310[8])
      {
        v112 = v310[6] == 1;
      }

      else
      {
        v112 = 0;
      }

      if (v112)
      {
        free(*&v310[8]);
      }

      if (__p)
      {
        operator delete(__p);
      }

      ++v82;
    }

    while (v82 != v83);
    v150 = *(a1 + 280);
    v82 = *v150;
    v83 = v150[1];
  }

  if (v82 != v83)
  {
    v151 = &__p + 2;
    v152 = &v310[16];
    v153 = v316;
    v154 = v313;
    do
    {
      v155 = *v82;
      v156 = *(a1 + 240);
      sub_1B5D80088(v310, a1 + 328, (*v82 + 136));
      (*(**(a1 + 1704) + 8))(&__p);
      if (!sub_1B5CE401C((v155 + 136), &__p))
      {
        v162 = *(a1 + 1772) + 1;
        *(a1 + 1772) = v162;
        if ((v156 & 0x8000) != 0 && v162 <= 0x13)
        {
          v163 = atomic_load(byte_1EB90C7D0);
          if (v163)
          {
            v164 = atomic_load(byte_1EB90CC20);
            if (v164)
            {
              if (*(v155 + 112))
              {
                v165 = *(v155 + 112);
              }

              else
              {
                v165 = (v155 + 120);
              }

              v166 = *(v155 + 136);
              v167 = *(v155 + 144);
              if (v166 <= 0xE)
              {
                v168 = (v155 + 138);
              }

              else
              {
                v168 = *(v155 + 144);
              }

              sub_1B5D8C1E4(buf, v168, v166, v157, v158, v159, v160, v161);
              v174 = *&buf[8];
              v175 = *&v310[8];
              if (__p <= 0xEu)
              {
                v176 = v151;
              }

              else
              {
                v176 = v306;
              }

              sub_1B5D8C1E4(&v314, v176, __p, v169, v170, v171, v172, v173);
              if (v175)
              {
                v177 = v175;
              }

              else
              {
                v177 = v152;
              }

              v178 = &buf[16];
              if (v174)
              {
                v178 = v174;
              }

              v179 = v315;
              if (!v315)
              {
                v179 = v153;
              }

              printf("WARNING:  Derivation of base form failed.  Expected %s (0x%s).  Got %s (0x%s).  ", v165, v178, v177, v179);
              if (v315 && BYTE6(v314) == 1)
              {
                free(v315);
              }

              if (*&buf[8] && buf[6] == 1)
              {
                free(*&buf[8]);
              }

              putchar(10);
            }

            else
            {
              v180 = sub_1B5D32914();
              if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
              {
                v295 = v153;
                v186 = v152;
                v187 = v151;
                v188 = v154;
                if (*(v155 + 112))
                {
                  v189 = *(v155 + 112);
                }

                else
                {
                  v189 = v155 + 120;
                }

                v190 = *(v155 + 136);
                v191 = *(v155 + 144);
                if (v190 <= 0xE)
                {
                  v192 = (v155 + 138);
                }

                else
                {
                  v192 = *(v155 + 144);
                }

                sub_1B5D8C1E4(&v314, v192, v190, v181, v182, v183, v184, v185);
                v198 = v315;
                v199 = *&v310[8];
                if (__p <= 0xEu)
                {
                  v200 = v187;
                }

                else
                {
                  v200 = v306;
                }

                sub_1B5D8C1E4(&v312, v200, __p, v193, v194, v195, v196, v197);
                v201 = *(&v312 + 1);
                if (v199)
                {
                  v202 = v199;
                }

                else
                {
                  v202 = v186;
                }

                *buf = 136315906;
                v203 = v295;
                if (v198)
                {
                  v203 = v198;
                }

                *&buf[4] = v189;
                v154 = v188;
                if (!*(&v312 + 1))
                {
                  v201 = v188;
                }

                *&buf[12] = 2080;
                *&buf[14] = v203;
                *&buf[22] = 2080;
                *&buf[24] = v202;
                *&buf[32] = 2080;
                *&buf[34] = v201;
                _os_log_impl(&dword_1B5CDB000, v180, OS_LOG_TYPE_DEFAULT, "WARNING:  Derivation of base form failed.  Expected %s (0x%s).  Got %s (0x%s).  ", buf, 0x2Au);
                if (*(&v312 + 1) && BYTE6(v312) == 1)
                {
                  free(*(&v312 + 1));
                }

                v151 = v187;
                if (v315 && BYTE6(v314) == 1)
                {
                  free(v315);
                }

                v152 = v186;
                v153 = v295;
              }
            }
          }
        }
      }

      if (__p >= 0xFu && v306)
      {
        MEMORY[0x1B8C880C0](v306, 0x1000C8077774924);
      }

      if (*&v310[8] && v310[6] == 1)
      {
        free(*&v310[8]);
      }

      ++v82;
    }

    while (v82 != v83);
  }

  v204 = *(a1 + 1764);
  v205 = atomic_load(byte_1EB90C7D0);
  if (v204)
  {
    if (v205)
    {
      v206 = atomic_load(byte_1EB90CC20);
      if (v206)
      {
        v207 = *(a1 + 1764);
        printf("    %d surface-forms sort-keys are non-distributive.");
        goto LABEL_334;
      }

      v209 = sub_1B5D32914();
      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
      {
        v210 = *(a1 + 1764);
        *buf = 67109120;
        *&buf[4] = v210;
        v211 = "    %d surface-forms sort-keys are non-distributive.";
        v212 = v209;
        v213 = 8;
        goto LABEL_340;
      }
    }
  }

  else if (v205)
  {
    v208 = atomic_load(byte_1EB90CC20);
    if (v208)
    {
      printf("    ALL surface-form sort-keys are distributive!");
LABEL_334:
      putchar(10);
    }

    else
    {
      v214 = sub_1B5D32914();
      if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v211 = "    ALL surface-form sort-keys are distributive!";
        v212 = v214;
        v213 = 2;
LABEL_340:
        _os_log_impl(&dword_1B5CDB000, v212, OS_LOG_TYPE_DEFAULT, v211, buf, v213);
      }
    }
  }

  if (*(a1 + 1768))
  {
    v215 = atomic_load(byte_1EB90C7D0);
    if (v215)
    {
      v216 = atomic_load(byte_1EB90CC20);
      if (v216)
      {
        printf("    %d unigram sort-keys do not build cumulatively. They change retroactively!", *(a1 + 1768));
        putchar(10);
      }

      else
      {
        v217 = sub_1B5D32914();
        if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
        {
          v218 = *(a1 + 1768);
          *buf = 67109120;
          *&buf[4] = v218;
          _os_log_impl(&dword_1B5CDB000, v217, OS_LOG_TYPE_DEFAULT, "    %d unigram sort-keys do not build cumulatively. They change retroactively!", buf, 8u);
        }
      }
    }
  }

  if (*(a1 + 1772))
  {
    v219 = atomic_load(byte_1EB90C7D0);
    if (v219)
    {
      v220 = atomic_load(byte_1EB90CC20);
      if (v220)
      {
        printf("    %d unigram base forms are not derivable from their sort-keys!", *(a1 + 1772));
        putchar(10);
      }

      else
      {
        v221 = sub_1B5D32914();
        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          v222 = *(a1 + 1772);
          *buf = 67109120;
          *&buf[4] = v222;
          _os_log_impl(&dword_1B5CDB000, v221, OS_LOG_TYPE_DEFAULT, "    %d unigram base forms are not derivable from their sort-keys!", buf, 8u);
        }
      }
    }
  }

  v223 = *(a1 + 1760) - *(a1 + 1764);
  if (v223 >= 1)
  {
    v224 = atomic_load(byte_1EB90C7D0);
    if (v224)
    {
      v225 = atomic_load(byte_1EB90CC20);
      if (v225)
      {
        printf("    %d surface forms don't align with their dict/sort keys.", v223);
        putchar(10);
      }

      else
      {
        v226 = sub_1B5D32914();
        if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v223;
          _os_log_impl(&dword_1B5CDB000, v226, OS_LOG_TYPE_DEFAULT, "    %d surface forms don't align with their dict/sort keys.", buf, 8u);
        }
      }
    }
  }

  v227 = atomic_load(byte_1EB90C7D0);
  if (v227)
  {
    v228 = atomic_load(byte_1EB90CC20);
    if (v228)
    {
      printf("Mapped %d sort key units to letter forms.", v293);
      putchar(10);
    }

    else
    {
      v229 = sub_1B5D32914();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v293;
        _os_log_impl(&dword_1B5CDB000, v229, OS_LOG_TYPE_DEFAULT, "Mapped %d sort key units to letter forms.", buf, 8u);
      }
    }
  }

  v230 = *(a1 + 240);
  if ((v230 & 0x28000) != 0)
  {
    sub_1B5D8024C(&v314, a1 + 328);
    v236 = v314;
    if (v314 != &v315)
    {
      do
      {
        v237 = *(v236 + 20);
        v238 = v236[6];
        if (v237 <= 0xE)
        {
          v239 = v236 + 42;
        }

        else
        {
          v239 = v236[6];
        }

        sub_1B5D8C1E4(buf, v239, v237, v231, v232, v233, v234, v235);
        v240 = *&buf[8];
        sub_1B5CDD970(v310, *(v236 + 8));
        if (v240)
        {
          v241 = v240;
        }

        else
        {
          v241 = &buf[16];
        }

        v242 = *&v310[8];
        if (!*&v310[8])
        {
          v242 = &v310[16];
        }

        printf("\tSK=0x%s: %s\n", v241, v242);
        if (*&v310[8] && v310[6] == 1)
        {
          free(*&v310[8]);
        }

        if (*&buf[8] && buf[6] == 1)
        {
          free(*&buf[8]);
        }

        v243 = v236[1];
        if (v243)
        {
          do
          {
            v244 = v243;
            v243 = *v243;
          }

          while (v243);
        }

        else
        {
          do
          {
            v244 = v236[2];
            v48 = *v244 == v236;
            v236 = v244;
          }

          while (!v48);
        }

        v236 = v244;
      }

      while (v244 != &v315);
    }

    sub_1B5D32B78(v315);
    v230 = *(a1 + 240);
  }

  if ((v230 & 0x28080) != 0)
  {
    v245 = atomic_load(byte_1EB90C7D0);
    if (v245)
    {
      v246 = atomic_load(byte_1EB90CC20);
      if (v246)
      {
        printf("Non-empty surface-form substitution lists:");
        putchar(10);
      }

      else
      {
        v247 = sub_1B5D32914();
        if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v247, OS_LOG_TYPE_DEFAULT, "Non-empty surface-form substitution lists:", buf, 2u);
        }
      }
    }

    v248 = *(a1 + 280);
    v249 = *v248;
    if (v248[1] != *v248)
    {
      v250 = 0;
      v251 = 0;
      while (1)
      {
        memset(buf, 0, 24);
        LODWORD(v314) = 0;
        sub_1B5DA31A4(*(v249 + 8 * v250), a1 + 328, buf, &v314);
        if (*&buf[8] != *buf)
        {
          v252 = atomic_load(byte_1EB90C7D0);
          if (v252)
          {
            v253 = atomic_load(byte_1EB90CC20);
            if (v253)
            {
              v254 = *(v249 + 8 * v250);
              v255 = *(v254 + 112);
              if (!v255)
              {
                v255 = (v254 + 120);
              }

              v256 = *(v254 + 8);
              v257 = (v254 + 16);
              if (v256)
              {
                v257 = v256;
              }

              printf("    %s -> %s            ", v255, v257);
              putchar(10);
            }

            else
            {
              v258 = sub_1B5D32914();
              if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
              {
                v259 = *(v249 + 8 * v250);
                v260 = *(v259 + 112);
                if (!v260)
                {
                  v260 = v259 + 120;
                }

                v261 = *(v259 + 8);
                v262 = v259 + 16;
                if (v261)
                {
                  v262 = v261;
                }

                *v310 = 136315394;
                *&v310[4] = v260;
                *&v310[12] = 2080;
                *&v310[14] = v262;
                _os_log_impl(&dword_1B5CDB000, v258, OS_LOG_TYPE_DEFAULT, "    %s -> %s            ", v310, 0x16u);
              }
            }
          }

          v263 = *buf;
          if (*&buf[8] != *buf)
          {
            break;
          }
        }

LABEL_437:
        *v310 = buf;
        sub_1B5D46D6C(v310);
        v287 = *(a1 + 280);
        v249 = *v287;
        v250 = ++v251;
        if (v251 >= ((v287[1] - *v287) >> 3))
        {
          goto LABEL_438;
        }
      }

      v264 = 0;
      v265 = 1;
      while (2)
      {
        v266 = *(v263 + 40 * v264 + 32);
        if ((v266 & 0x20) != 0)
        {
          v269 = atomic_load(byte_1EB90C7D0);
          if ((v269 & 1) == 0)
          {
            goto LABEL_436;
          }

          v270 = atomic_load(byte_1EB90CC20);
          if (v270)
          {
            *(*buf + 40 * v264 + 8);
            printf("<%d: %s  ");
LABEL_422:
            putchar(10);
            goto LABEL_436;
          }

          v272 = sub_1B5D32914();
          if (!os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_436;
          }

          v273 = *buf + 40 * v264;
          v274 = *(v273 + 8);
          v275 = v273 + 16;
          if (v274)
          {
            v275 = v274;
          }

          *v310 = 67109378;
          *&v310[4] = v266 & 0xFFFFFFDF;
          *&v310[8] = 2080;
          *&v310[10] = v275;
          v276 = v272;
          v277 = "<%d: %s  ";
        }

        else
        {
          v267 = atomic_load(byte_1EB90C7D0);
          if ((v266 & 0x40) == 0)
          {
            if (v267)
            {
              v268 = atomic_load(byte_1EB90CC20);
              if (v268)
              {
                *(*buf + 40 * v264 + 8);
                printf("@%d: %s  ");
                goto LABEL_422;
              }

              v278 = sub_1B5D32914();
              if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
              {
                v279 = *buf + 40 * v264;
                v280 = *(v279 + 8);
                v281 = v279 + 16;
                if (v280)
                {
                  v281 = v280;
                }

                *v310 = 67109378;
                *&v310[4] = v266;
                *&v310[8] = 2080;
                *&v310[10] = v281;
                v276 = v278;
                v277 = "@%d: %s  ";
                break;
              }
            }

LABEL_436:
            v264 = v265;
            v263 = *buf;
            if (0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 3) <= v265++)
            {
              goto LABEL_437;
            }

            continue;
          }

          if ((v267 & 1) == 0)
          {
            goto LABEL_436;
          }

          v271 = atomic_load(byte_1EB90CC20);
          if (v271)
          {
            *(*buf + 40 * v264 + 8);
            printf("^%d: %s  ");
            goto LABEL_422;
          }

          v282 = sub_1B5D32914();
          if (!os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_436;
          }

          v283 = *buf + 40 * v264;
          v284 = *(v283 + 8);
          v285 = v283 + 16;
          if (v284)
          {
            v285 = v284;
          }

          *v310 = 67109378;
          *&v310[4] = v266 & 0xFFFFFF9F;
          *&v310[8] = 2080;
          *&v310[10] = v285;
          v276 = v282;
          v277 = "^%d: %s  ";
        }

        break;
      }

      _os_log_impl(&dword_1B5CDB000, v276, OS_LOG_TYPE_DEFAULT, v277, v310, 0x12u);
      goto LABEL_436;
    }

LABEL_438:
    v288 = atomic_load(byte_1EB90C7D0);
    if (v288)
    {
      v289 = atomic_load(byte_1EB90CC20);
      if (v289)
      {
        putchar(10);
      }

      else
      {
        v290 = sub_1B5D32914();
        if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B5CDB000, v290, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
        }
      }
    }
  }

  v291 = *MEMORY[0x1E69E9840];
}

void sub_1B5D46A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, uint64_t a36, __int16 a37, uint64_t a38, unsigned __int16 a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, void *a44, uint64_t a45, uint64_t a46, char a47, int a48, char a49, char a50, uint64_t a51)
{
  if (a39 >= 0xFu && a40)
  {
    MEMORY[0x1B8C880C0](a40, 0x1000C8077774924);
  }

  v53 = *(v51 - 144);
  if (v53 && *(v51 - 146) == 1)
  {
    free(v53);
  }

  v54 = *(v51 - 216);
  if (v54)
  {
    v55 = *(v51 - 218) == 1;
  }

  else
  {
    v55 = 0;
  }

  if (v55)
  {
    free(v54);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D46D6C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6 && *(v4 - 34) == 1)
        {
          free(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_1B5D46E00(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1B5D46EE4(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v4 = v3;
    v5 = *(v3 + 8);
    if (v5 != a2)
    {
      break;
    }

    v6 = *(v4 + 9);
    v7 = v6 == a3;
    if (v6 > a3)
    {
LABEL_12:
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= a3)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (v7)
      {
        v8 = 0;
      }

      if ((v8 & 0x80) == 0)
      {
        return v4;
      }

LABEL_18:
      v3 = v4[1];
      if (!v3)
      {
        goto LABEL_19;
      }
    }
  }

  if (v5 > a2)
  {
    goto LABEL_12;
  }

  if (v5 >= a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  return v4;
}

void sub_1B5D46FF0(void *a1)
{
  if (a1)
  {
    sub_1B5D46FF0(*a1);
    sub_1B5D46FF0(a1[1]);

    operator delete(a1);
  }
}

unsigned __int16 *sub_1B5D4703C(void *a1, unsigned __int16 *a2)
{
  if (*(a2 + 1))
  {
    v4 = *(a2 + 1);
  }

  else
  {
    v4 = (a2 + 8);
  }

  v5 = sub_1B5CE3124(v4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  result = (v12 + 2);
  if (v12 + 2 != a2)
  {
    result = sub_1B5D5DD60(result, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void sub_1B5D472AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D48994(va);
  _Unwind_Resume(a1);
}

void sub_1B5D472C4(unsigned __int16 *a1, unint64_t a2, uint64_t a3, char a4)
{
  v140[2] = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a1;
  v126 = a1 + 8;
  v127 = a1 - 8;
  v128 = a1 + 24;
  while (1)
  {
    v8 = (a2 - v7) >> 5;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          sub_1B5D48358(v7, v7 + 32, a2 - 32);
          goto LABEL_269;
        case 4:
          sub_1B5D48484(v7, v7 + 32, v7 + 64, a2 - 32);
          goto LABEL_269;
        case 5:
          sub_1B5D48578(v7, v7 + 32, v7 + 64, v7 + 96, a2 - 32);
          goto LABEL_269;
      }
    }

    else
    {
      if (v8 < 2)
      {
        goto LABEL_269;
      }

      if (v8 == 2)
      {
        if (*(a2 - 24))
        {
          v62 = *(a2 - 24);
        }

        else
        {
          v62 = (a2 - 16);
        }

        if (*(v7 + 8))
        {
          v63 = *(v7 + 8);
        }

        else
        {
          v63 = (v7 + 16);
        }

        if (strcmp(v62, v63) < 0)
        {
          sub_1B5D482B0(v7, (a2 - 32));
        }

        goto LABEL_269;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v131 = a2;
        v79 = v9 >> 1;
        v80 = v9 >> 1;
        do
        {
          v81 = v80;
          if (v79 >= v80)
          {
            v82 = (2 * v80) | 1;
            v83 = v7 + 32 * v82;
            if (2 * v80 + 2 < v8)
            {
              v84 = *(v83 + 8) ? *(v83 + 8) : (v83 + 16);
              v85 = *(v83 + 40) ? *(v83 + 40) : (v83 + 48);
              v86 = strcmp(v84, v85);
              v83 += (v86 >> 26) & 0x20;
              if (v86 < 0)
              {
                v82 = 2 * v81 + 2;
              }
            }

            v87 = v7 + 32 * v81;
            if (*(v83 + 8))
            {
              v88 = *(v83 + 8);
            }

            else
            {
              v88 = (v83 + 16);
            }

            if (*(v87 + 8))
            {
              v89 = *(v87 + 8);
            }

            else
            {
              v89 = (v87 + 16);
            }

            if ((strcmp(v88, v89) & 0x80000000) == 0)
            {
              v136 = 0x100000;
              v137 = 0;
              v138 = 0;
              v139 = 0;
              sub_1B5D5CBBC(&v136, (v7 + 32 * v81));
              do
              {
                v90 = v83;
                sub_1B5D5CBBC(v87, v83);
                if (v79 < v82)
                {
                  break;
                }

                v91 = (2 * v82) | 1;
                v83 = v7 + 32 * v91;
                v92 = 2 * v82 + 2;
                if (v92 < v8)
                {
                  v93 = *(v83 + 8) ? *(v83 + 8) : (v83 + 16);
                  v94 = *(v83 + 40) ? *(v83 + 40) : (v83 + 48);
                  v95 = strcmp(v93, v94);
                  v83 += (v95 >> 26) & 0x20;
                  if (v95 < 0)
                  {
                    v91 = v92;
                  }
                }

                v96 = *(v83 + 8) ? *(v83 + 8) : (v83 + 16);
                v97 = (v139 ? v139 : v140);
                v87 = v90;
                v82 = v91;
              }

              while ((strcmp(v96, v97) & 0x80000000) == 0);
              sub_1B5D5CBBC(v90, &v136);
              if (v139)
              {
                v98 = v138 == 1;
              }

              else
              {
                v98 = 0;
              }

              if (v98)
              {
                free(v139);
              }
            }
          }

          v80 = v81 - 1;
        }

        while (v81);
        v99 = v131;
        do
        {
          if (v8 >= 2)
          {
            v132 = 0x100000;
            v133 = 0;
            v134 = 0;
            v135 = 0;
            sub_1B5D5CBBC(&v132, v7);
            v100 = 0;
            v101 = v7;
            do
            {
              v102 = v101 + 32 * v100;
              v103 = v102 + 32;
              v104 = (2 * v100) | 1;
              v100 = 2 * v100 + 2;
              if (v100 >= v8)
              {
                v100 = v104;
              }

              else
              {
                if (*(v102 + 40))
                {
                  v105 = *(v102 + 40);
                }

                else
                {
                  v105 = (v102 + 48);
                }

                if (*(v102 + 72))
                {
                  v106 = *(v102 + 72);
                }

                else
                {
                  v106 = (v102 + 80);
                }

                if (strcmp(v105, v106) >= 0)
                {
                  v100 = v104;
                }

                else
                {
                  v103 = v102 + 64;
                }
              }

              sub_1B5D5CBBC(v101, v103);
              v101 = v103;
            }

            while (v100 <= ((v8 - 2) >> 1));
            if (v103 == v99 - 32)
            {
              sub_1B5D5CBBC(v103, &v132);
            }

            else
            {
              sub_1B5D5CBBC(v103, (v99 - 32));
              sub_1B5D5CBBC(v99 - 32, &v132);
              v107 = (v103 - v7 + 32) >> 5;
              v108 = v107 < 2;
              v109 = v107 - 2;
              if (!v108)
              {
                v110 = v109 >> 1;
                v111 = v7 + 32 * (v109 >> 1);
                v112 = *(v111 + 8) ? *(v111 + 8) : (v111 + 16);
                v113 = *(v103 + 8) ? *(v103 + 8) : (v103 + 16);
                if (strcmp(v112, v113) < 0)
                {
                  v136 = 0x100000;
                  v137 = 0;
                  v138 = 0;
                  v139 = 0;
                  sub_1B5D5CBBC(&v136, v103);
                  do
                  {
                    v114 = v111;
                    sub_1B5D5CBBC(v103, v111);
                    if (!v110)
                    {
                      break;
                    }

                    v110 = (v110 - 1) >> 1;
                    v111 = v7 + 32 * v110;
                    v115 = *(v111 + 8) ? *(v111 + 8) : (v111 + 16);
                    v116 = (v139 ? v139 : v140);
                    v103 = v114;
                  }

                  while (strcmp(v115, v116) < 0);
                  sub_1B5D5CBBC(v114, &v136);
                  if (v139 && v138 == 1)
                  {
                    free(v139);
                  }
                }
              }
            }

            if (v135 && v134 == 1)
            {
              free(v135);
            }
          }

          v99 -= 32;
          v108 = v8-- > 2;
        }

        while (v108);
      }

      goto LABEL_269;
    }

    v10 = v7 + 32 * (v8 >> 1);
    v11 = a2 - 32;
    if (v8 < 0x81)
    {
      sub_1B5D48358(v7 + 32 * (v8 >> 1), v7, v11);
    }

    else
    {
      sub_1B5D48358(v7, v7 + 32 * (v8 >> 1), v11);
      sub_1B5D48358(v7 + 32, v10 - 32, a2 - 64);
      sub_1B5D48358(v7 + 64, v10 + 32, a2 - 96);
      sub_1B5D48358(v10 - 32, v7 + 32 * (v8 >> 1), v10 + 32);
      v136 = 0x100000;
      v137 = 0;
      v138 = 0;
      v139 = 0;
      sub_1B5D5CBBC(&v136, v7);
      sub_1B5D5CBBC(v7, (v7 + 32 * (v8 >> 1)));
      sub_1B5D5CBBC(v7 + 32 * (v8 >> 1), &v136);
      if (v139 && v138 == 1)
      {
        free(v139);
      }
    }

    --a3;
    if ((a4 & 1) == 0)
    {
      v12 = *(v7 - 24) ? *(v7 - 24) : v127;
      v13 = *(v7 + 8) ? *(v7 + 8) : v126;
      if ((strcmp(v12, v13) & 0x80000000) == 0)
      {
        v136 = 0x100000;
        v137 = 0;
        v138 = 0;
        v139 = 0;
        sub_1B5D5CBBC(&v136, v7);
        if (v139)
        {
          v42 = v139;
        }

        else
        {
          v42 = v140;
        }

        if (*(a2 - 24))
        {
          v43 = *(a2 - 24);
        }

        else
        {
          v43 = (a2 - 16);
        }

        v44 = (v7 + 48);
        if (strcmp(v42, v43) < 0)
        {
          do
          {
            if (*(v44 - 1))
            {
              v45 = *(v44 - 1);
            }

            else
            {
              v45 = v44;
            }

            v44 += 32;
          }

          while ((strcmp(v42, v45) & 0x80000000) == 0);
          a1 = (v44 - 48);
        }

        else
        {
          do
          {
            a1 = (v44 - 16);
            if ((v44 - 16) >= a2)
            {
              break;
            }

            v46 = *(v44 - 1) ? *(v44 - 1) : v44;
            v44 += 32;
          }

          while ((strcmp(v42, v46) & 0x80000000) == 0);
        }

        v47 = a2;
        if (a1 < a2)
        {
          v48 = a2;
          do
          {
            v47 = (v48 - 32);
            v49 = *(v48 - 24);
            v50 = (v48 - 16);
            if (v49)
            {
              v51 = v49;
            }

            else
            {
              v51 = v50;
            }

            v52 = strcmp(v42, v51);
            v48 = v47;
          }

          while (v52 < 0);
        }

        while (a1 < v47)
        {
          sub_1B5D482B0(a1, v47);
          if (v139)
          {
            v53 = v139;
          }

          else
          {
            v53 = v140;
          }

          v54 = a1 + 24;
          do
          {
            v55 = v54;
            v56 = *(v54 - 1);
            if (v56)
            {
              v57 = v56;
            }

            else
            {
              v57 = v55;
            }

            v58 = strcmp(v53, v57);
            v54 = (v55 + 32);
          }

          while ((v58 & 0x80000000) == 0);
          a1 = (v55 - 16);
          do
          {
            v59 = *(v47 - 3);
            v60 = (v47 - 8);
            v47 -= 16;
            if (v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = v60;
            }
          }

          while (strcmp(v53, v61) < 0);
        }

        if (a1 - 16 != v7)
        {
          sub_1B5D5CBBC(v7, a1 - 16);
        }

        sub_1B5D5CBBC((a1 - 16), &v136);
        if (v139 && v138 == 1)
        {
          free(v139);
        }

        a4 = 0;
        goto LABEL_2;
      }
    }

    v130 = a3;
    v136 = 0x100000;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    sub_1B5D5CBBC(&v136, v7);
    if (v139)
    {
      v14 = v139;
    }

    else
    {
      v14 = v140;
    }

    v15 = v128;
    do
    {
      v16 = v15;
      v17 = *(v15 - 1);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v19 = strcmp(v18, v14);
      v15 = v16 + 32;
    }

    while (v19 < 0);
    v20 = (v16 - 48);
    v21 = v16 - 16;
    v22 = a2;
    if (v16 - 48 == v7)
    {
      v25 = a2;
      while (v21 < v25)
      {
        v23 = (v25 - 32);
        v26 = *(v25 - 24);
        v27 = (v25 - 16);
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        v29 = strcmp(v28, v14);
        v25 = v23;
        if (v29 < 0)
        {
          goto LABEL_47;
        }
      }

      v23 = v25;
    }

    else
    {
      do
      {
        v23 = (a2 - 32);
        if (*(a2 - 24))
        {
          v24 = *(a2 - 24);
        }

        else
        {
          v24 = (a2 - 16);
        }

        a2 -= 32;
      }

      while ((strcmp(v24, v14) & 0x80000000) == 0);
    }

LABEL_47:
    if (v21 < v23)
    {
      v30 = (v16 - 16);
      v31 = v23;
      do
      {
        sub_1B5D482B0(v30, v31);
        if (v139)
        {
          v32 = v139;
        }

        else
        {
          v32 = v140;
        }

        v33 = v30 + 24;
        do
        {
          v34 = v33;
          v35 = *(v33 - 1);
          if (v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v34;
          }

          v37 = strcmp(v36, v32);
          v33 = (v34 + 32);
        }

        while (v37 < 0);
        v20 = (v34 - 48);
        v30 = (v34 - 16);
        do
        {
          v38 = *(v31 - 3);
          v39 = (v31 - 8);
          v31 -= 16;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }
        }

        while ((strcmp(v40, v32) & 0x80000000) == 0);
      }

      while (v30 < v31);
    }

    if (v20 != v7)
    {
      sub_1B5D5CBBC(v7, v20);
    }

    sub_1B5D5CBBC(v20, &v136);
    if (v139 && v138 == 1)
    {
      free(v139);
    }

    a2 = v22;
    a3 = v130;
    if (v21 < v23)
    {
      goto LABEL_73;
    }

    v41 = sub_1B5D486A0(v7, v20);
    a1 = v20 + 16;
    if (!sub_1B5D486A0((v20 + 16), a2))
    {
      if (v41)
      {
        goto LABEL_2;
      }

LABEL_73:
      sub_1B5D472C4(v7, v20, v130, a4 & 1);
      a4 = 0;
      a1 = v20 + 16;
      goto LABEL_2;
    }

    a2 = v20;
    if (v41)
    {
      goto LABEL_269;
    }
  }

  if (a4)
  {
    if (v7 != a2)
    {
      v64 = v7 + 32;
      if (v7 + 32 != a2)
      {
        v65 = 0;
        v66 = v7;
        do
        {
          v67 = *(v66 + 40);
          v68 = (v66 + 48);
          v69 = *(v66 + 8);
          v70 = (v66 + 16);
          v66 = v64;
          if (v67)
          {
            v71 = v67;
          }

          else
          {
            v71 = v68;
          }

          if (v69)
          {
            v72 = v69;
          }

          else
          {
            v72 = v70;
          }

          if (strcmp(v71, v72) < 0)
          {
            v136 = 0x100000;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            sub_1B5D5CBBC(&v136, v66);
            v73 = v65;
            while (1)
            {
              v74 = v7 + v73;
              sub_1B5D5CBBC(v7 + v73 + 32, (v7 + v73));
              if (!v73)
              {
                break;
              }

              if (v139)
              {
                v75 = v139;
              }

              else
              {
                v75 = v140;
              }

              if (*(v74 - 24))
              {
                v76 = *(v74 - 24);
              }

              else
              {
                v76 = (v74 - 16);
              }

              v73 -= 32;
              if ((strcmp(v75, v76) & 0x80000000) == 0)
              {
                v77 = v7 + v73 + 32;
                goto LABEL_151;
              }
            }

            v77 = v7;
LABEL_151:
            sub_1B5D5CBBC(v77, &v136);
            if (v139)
            {
              v78 = v138 == 1;
            }

            else
            {
              v78 = 0;
            }

            if (v78)
            {
              free(v139);
            }
          }

          v64 = v66 + 32;
          v65 += 32;
        }

        while (v66 + 32 != a2);
      }
    }
  }

  else if (v7 != a2)
  {
    v118 = (v7 + 32);
    if (v7 + 32 != a2)
    {
      do
      {
        v119 = v118;
        if (*(v7 + 40))
        {
          v120 = *(v7 + 40);
        }

        else
        {
          v120 = (v7 + 48);
        }

        if (*(v7 + 8))
        {
          v121 = *(v7 + 8);
        }

        else
        {
          v121 = (v7 + 16);
        }

        if (strcmp(v120, v121) < 0)
        {
          v136 = 0x100000;
          v137 = 0;
          v138 = 0;
          v139 = 0;
          sub_1B5D5CBBC(&v136, v119);
          do
          {
            v122 = v7;
            sub_1B5D5CBBC(v7 + 32, v7);
            v7 -= 32;
            if (v139)
            {
              v123 = v139;
            }

            else
            {
              v123 = v140;
            }

            if (*(v122 - 24))
            {
              v124 = *(v122 - 24);
            }

            else
            {
              v124 = (v122 - 16);
            }
          }

          while (strcmp(v123, v124) < 0);
          sub_1B5D5CBBC(v122, &v136);
          if (v139)
          {
            if (v138 == 1)
            {
              free(v139);
            }
          }
        }

        v118 = v119 + 16;
        v7 = v119;
      }

      while (v119 + 16 != a2);
    }
  }

LABEL_269:
  v125 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5D47DB4(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    v6 = sub_1B5D4819C((a1 + 32), v2);
    if (!v6)
    {
      __assert_rtn("convert_combining_classes_to_bits_block_invoke", "UnigramsCompiler.cpp", 370, "class_ids.count(class_name)");
    }

    v5 = (1 << *(v6 + 12)) | v5;
    v2 += 16;
  }

  while (v2 != v3);
  return v5;
}

uint64_t sub_1B5D47E4C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1B5D3021C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    if (*(i + 3))
    {
      v5 = *(i + 3);
    }

    else
    {
      v5 = (i + 16);
    }

    v6 = sub_1B5CE3124(v5, i[8]);
    v7 = v6;
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v8 <= v6)
      {
        v11 = v6 % v8;
      }
    }

    else
    {
      v11 = (v8 - 1) & v6;
    }

    v12 = *(*a1 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v14 = *(v13 + 1);
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= v8)
        {
          v14 %= v8;
        }
      }

      else
      {
        v14 &= v8 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_22;
      }

LABEL_21:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    if (v13 != i && !sub_1B5D5DD60(v13 + 8, i + 8))
    {
      goto LABEL_21;
    }
  }

  return a1;
}

uint64_t sub_1B5D48118(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && *(v3 + 22) == 1)
    {
      free(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

unsigned __int16 *sub_1B5D4819C(void *a1, unsigned __int16 *a2)
{
  if (*(a2 + 1))
  {
    v4 = *(a2 + 1);
  }

  else
  {
    v4 = (a2 + 8);
  }

  v5 = sub_1B5CE3124(v4, *a2);
  v6 = a1[1];
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v6 <= v5)
    {
      v10 = v5 % v6;
    }
  }

  else
  {
    v10 = (v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = *(i + 1);
    if (v13 == v7)
    {
      if (i + 8 == a2 || sub_1B5D5DD60(i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= v6)
        {
          v13 %= v6;
        }
      }

      else
      {
        v13 &= v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1B5D482B0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0x100000;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_1B5D5CBBC(&v6, a1);
  sub_1B5D5CBBC(a1, a2);
  sub_1B5D5CBBC(a2, &v6);
  if (v9)
  {
    v4 = v8 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v9);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B5D48358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 16);
  if (*(a2 + 8))
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = (a2 + 16);
  }

  v8 = a1 + 16;
  if (*(a1 + 8))
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = (a1 + 16);
  }

  v10 = strcmp(v7, v9);
  if (*(a3 + 8))
  {
    v11 = *(a3 + 8);
  }

  else
  {
    v11 = (a3 + 16);
  }

  v12 = strcmp(v11, v7);
  if (v10 < 0)
  {
    if (v12 < 0)
    {
      v13 = a1;
LABEL_30:
      v16 = a3;
      goto LABEL_31;
    }

    sub_1B5D482B0(a1, a2);
    if (*(a3 + 8))
    {
      v17 = *(a3 + 8);
    }

    else
    {
      v17 = (a3 + 16);
    }

    if (*(a2 + 8))
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = v6;
    }

    if (strcmp(v17, v18) < 0)
    {
      v13 = a2;
      goto LABEL_30;
    }
  }

  else if (v12 < 0)
  {
    sub_1B5D482B0(a2, a3);
    v14 = *(a2 + 8) ? *(a2 + 8) : v6;
    v15 = *(a1 + 8) ? *(a1 + 8) : v8;
    if (strcmp(v14, v15) < 0)
    {
      v13 = a1;
      v16 = a2;
LABEL_31:

      sub_1B5D482B0(v13, v16);
    }
  }
}

void sub_1B5D48484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5D48358(a1, a2, a3);
  if (*(a4 + 8))
  {
    v8 = *(a4 + 8);
  }

  else
  {
    v8 = (a4 + 16);
  }

  if (*(a3 + 8))
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = (a3 + 16);
  }

  if (strcmp(v8, v9) < 0)
  {
    sub_1B5D482B0(a3, a4);
    v10 = *(a3 + 8) ? *(a3 + 8) : (a3 + 16);
    v11 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
    if (strcmp(v10, v11) < 0)
    {
      sub_1B5D482B0(a2, a3);
      v12 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
      v13 = *(a1 + 8) ? *(a1 + 8) : (a1 + 16);
      if (strcmp(v12, v13) < 0)
      {

        sub_1B5D482B0(a1, a2);
      }
    }
  }
}

void sub_1B5D48578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B5D48484(a1, a2, a3, a4);
  if (*(a5 + 8))
  {
    v10 = *(a5 + 8);
  }

  else
  {
    v10 = (a5 + 16);
  }

  if (*(a4 + 8))
  {
    v11 = *(a4 + 8);
  }

  else
  {
    v11 = (a4 + 16);
  }

  if (strcmp(v10, v11) < 0)
  {
    sub_1B5D482B0(a4, a5);
    v12 = *(a4 + 8) ? *(a4 + 8) : (a4 + 16);
    v13 = *(a3 + 8) ? *(a3 + 8) : (a3 + 16);
    if (strcmp(v12, v13) < 0)
    {
      sub_1B5D482B0(a3, a4);
      v14 = *(a3 + 8) ? *(a3 + 8) : (a3 + 16);
      v15 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
      if (strcmp(v14, v15) < 0)
      {
        sub_1B5D482B0(a2, a3);
        v16 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
        v17 = *(a1 + 8) ? *(a1 + 8) : (a1 + 16);
        if (strcmp(v16, v17) < 0)
        {

          sub_1B5D482B0(a1, a2);
        }
      }
    }
  }
}

BOOL sub_1B5D486A0(uint64_t a1, uint64_t a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (*(a2 - 24))
        {
          v5 = *(a2 - 24);
        }

        else
        {
          v5 = (a2 - 16);
        }

        if (*(a1 + 8))
        {
          v6 = *(a1 + 8);
        }

        else
        {
          v6 = (a1 + 16);
        }

        if (strcmp(v5, v6) < 0)
        {
          sub_1B5D482B0(a1, (a2 - 32));
        }

        goto LABEL_44;
      }

      goto LABEL_17;
    }

LABEL_44:
    v18 = 1;
    goto LABEL_45;
  }

  switch(v4)
  {
    case 3:
      sub_1B5D48358(a1, a1 + 32, a2 - 32);
      goto LABEL_44;
    case 4:
      sub_1B5D48484(a1, a1 + 32, a1 + 64, a2 - 32);
      goto LABEL_44;
    case 5:
      sub_1B5D48578(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
      goto LABEL_44;
  }

LABEL_17:
  v7 = a1 + 64;
  sub_1B5D48358(a1, a1 + 32, a1 + 64);
  v8 = a1 + 96;
  if (a1 + 96 == a2)
  {
    goto LABEL_44;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v8 + 8) ? *(v8 + 8) : (v8 + 16);
    v12 = *(v7 + 8) ? *(v7 + 8) : (v7 + 16);
    if (strcmp(v11, v12) < 0)
    {
      break;
    }

LABEL_41:
    v7 = v8;
    v9 += 32;
    v8 += 32;
    if (v8 == a2)
    {
      goto LABEL_44;
    }
  }

  v21 = 0x100000;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_1B5D5CBBC(&v21, v8);
  v13 = v9;
  while (1)
  {
    v14 = a1 + v13;
    sub_1B5D5CBBC(a1 + v13 + 96, (a1 + v13 + 64));
    if (v13 == -64)
    {
      break;
    }

    if (v24)
    {
      v15 = v24;
    }

    else
    {
      v15 = v25;
    }

    if (*(v14 + 40))
    {
      v16 = *(v14 + 40);
    }

    else
    {
      v16 = (v14 + 48);
    }

    v13 -= 32;
    if ((strcmp(v15, v16) & 0x80000000) == 0)
    {
      v17 = a1 + v13 + 96;
      goto LABEL_37;
    }
  }

  v17 = a1;
LABEL_37:
  sub_1B5D5CBBC(v17, &v21);
  if (++v10 != 8)
  {
    if (v24 && v23 == 1)
    {
      free(v24);
    }

    goto LABEL_41;
  }

  v18 = v8 + 32 == a2;
  if (v24 && v23 == 1)
  {
    free(v24);
  }

LABEL_45:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1B5D4890C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1B5D4894C(a2);
  }

  sub_1B5D04FA0();
}

void sub_1B5D4894C(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t *sub_1B5D48994(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        if (*(v2 + 22) == 1)
        {
          free(v3);
        }
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B5D489F0(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_1B5D1BC34((v3 + 24));
    }

    if (*(__p + 8) >= 0xFu)
    {
      v4 = __p[3];
      if (v4)
      {
        MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1B5D48A74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1B5D48AD4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1B5D48AD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1B5D48B4C(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1B5CE5D7C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

BOOL sub_1B5D48B94(void *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (qword_1EB90C830 != -1)
  {
    dispatch_once(&qword_1EB90C830, &unk_1F2D58160);
  }

  v2 = qword_1EB90C838;
  if (!qword_1EB90C838 || (TypeID = CFLocaleGetTypeID(), !sub_1B5DA9E54(v2, TypeID)))
  {
    v46 = 0;
    goto LABEL_87;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, @"enumerateCachedOnlyOTAPaths", *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(Mutable, @"type", @"unigrams");
  v56 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v56, @"enumerateCachedOnlyOTAPaths", v4);
  CFDictionaryAddValue(v56, @"type", @"phrases");
  v55 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v55, @"enumerateCachedOnlyOTAPaths", v4);
  CFDictionaryAddValue(v55, @"type", @"morphemes");
  v5 = 0;
  cf = 0;
  v49 = a1 + 10;
LABEL_6:
  if (CFArrayGetCount(v2) > v5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    sub_1B5D4EA54(&v53, ValueAtIndex);
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v53;
    }

    else
    {
      v7 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v53.__r_.__value_.__l.__size_;
    }

    v9 = sub_1B5D4EB98(v7, size);
    v10 = v9;
    v12 = v11;
    if (v11 == 2 && *v9 == 29300)
    {
      sub_1B5D4E4D0(v55, ValueAtIndex);
      operator new();
    }

    v13 = Mutable;
    v52 = sub_1B5D4E224(Mutable, ValueAtIndex);
    v51 = sub_1B5D4E3C4(v13, ValueAtIndex);
    v50 = sub_1B5D4E224(v56, ValueAtIndex);
    if (!v51)
    {
      sub_1B5D0E3EC(&v53, v10, v12);
      goto LABEL_66;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1B5D114C8();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v64 = v12;
    if (v12)
    {
      memmove(__dst, v10, v12);
    }

    *(__dst + v12) = 0;
    if (v64 >= 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if (v64 >= 0)
    {
      v15 = v64;
    }

    else
    {
      v15 = __dst[1];
    }

    v16 = sub_1B5D2CC6C(v14, v15);
    v17 = v16;
    v18 = a1[11];
    if (!*&v18)
    {
      goto LABEL_46;
    }

    v19 = v5;
    v20 = a1;
    v21 = v2;
    v22 = vcnt_s8(v18);
    v22.i16[0] = vaddlv_u8(v22);
    v23 = v22.u32[0];
    if (v22.u32[0] > 1uLL)
    {
      v24 = v16;
      if (v16 >= *&v18)
      {
        v24 = v16 % *&v18;
      }
    }

    else
    {
      v24 = (*&v18 - 1) & v16;
    }

    v25 = *(*v49 + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_46:
      operator new();
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v17)
      {
        if (sub_1B5D17E50(v26 + 2, __dst))
        {
          v2 = v21;
          a1 = v20;
          v5 = v19;
          v29 = v26[6];
          v28 = v26[7];
          if (v29 >= v28)
          {
            v31 = v26[5];
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 3) + 1;
            if (v32 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1B5D04FA0();
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 3);
            if (2 * v33 > v32)
            {
              v32 = 2 * v33;
            }

            if (v33 >= 0x555555555555555)
            {
              v34 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v34 = v32;
            }

            v62 = v26 + 5;
            if (v34)
            {
              sub_1B5CE5E20((v26 + 5), v34);
            }

            v36 = (8 * ((v29 - v31) >> 3));
            __p = 0;
            v59 = v36;
            v37 = 0;
            v60 = v36;
            v61 = 0;
            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_1B5CE4AC4(v36, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
              v36 = v59;
              v39 = v60;
              v37 = v61;
            }

            else
            {
              v38 = *&v53.__r_.__value_.__l.__data_;
              *(8 * ((v29 - v31) >> 3) + 0x10) = *(&v53.__r_.__value_.__l + 2);
              *v36 = v38;
              v39 = 8 * ((v29 - v31) >> 3);
            }

            v35 = v39 + 24;
            v40 = v26[5];
            v41 = v26[6] - v40;
            v42 = &v36[-v41];
            memcpy(&v36[-v41], v40, v41);
            v43 = v26[5];
            v26[5] = v42;
            v26[6] = v35;
            v44 = v26[7];
            v26[7] = v37;
            v60 = v43;
            v61 = v44;
            __p = v43;
            v59 = v43;
            sub_1B5CE5E78(&__p);
          }

          else
          {
            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_1B5CE4AC4(v26[6], v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
            }

            else
            {
              v30 = *&v53.__r_.__value_.__l.__data_;
              *(v29 + 16) = *(&v53.__r_.__value_.__l + 2);
              *v29 = v30;
            }

            v35 = v29 + 24;
            v26[6] = v35;
          }

          v26[6] = v35;
          if (v64 < 0)
          {
            operator delete(__dst[0]);
          }

LABEL_66:
          v45 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v45 = v53.__r_.__value_.__l.__size_;
          }

          if (!v45)
          {
            __assert_rtn("loadLexicons", "StaticLexiconRepository.cpp", 171, "!localeIdentifier.empty() && Invalid locale. Failed to obtain locale identifier from the locale.");
          }

          if (!sub_1B5D4A0D0(a1, &v53))
          {
            operator new();
          }

          if (v50)
          {
            CFRelease(v50);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          if (v52)
          {
            CFRelease(v52);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          ++v5;
          goto LABEL_6;
        }
      }

      else
      {
        if (v23 > 1)
        {
          if (v27 >= *&v18)
          {
            v27 %= *&v18;
          }
        }

        else
        {
          v27 &= *&v18 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_46;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_46;
      }
    }
  }

  v46 = a1[3] != 0;
  if (v55)
  {
    CFRelease(v55);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_87:
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

void sub_1B5D49A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, const void *a27, const void *a28, __int16 a29, char a30, char a31)
{
  (*(*v31 + 8))(v31);
  sub_1B5CE5794(&a16, 0);
  sub_1B5CE5794(&a17, 0);
  sub_1B5CE5794(&a18, 0);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1B5CE5680(&a26, 0);
  sub_1B5CE5680(&a27, 0);
  sub_1B5CE5680(&a28, 0);
  _Unwind_Resume(a1);
}

void *sub_1B5D49C38(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = sub_1B5D2CC6C(v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!sub_1B5D17E50(v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void sub_1B5D4A0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D4A22C(va);
  _Unwind_Resume(a1);
}

void *sub_1B5D4A0D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = sub_1B5D2CC6C(v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (sub_1B5D17E50(v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

uint64_t sub_1B5D4A1E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D48B4C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1B5D4A22C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1B5D48AD4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B5D4A278()
{
  v2[27] = *MEMORY[0x1E69E9840];
  v2[0] = CFLocaleCreate(0, @"en");
  v2[1] = CFLocaleCreate(0, @"it");
  v2[2] = CFLocaleCreate(0, @"fr");
  v2[3] = CFLocaleCreate(0, @"de");
  v2[4] = CFLocaleCreate(0, @"es");
  v2[5] = CFLocaleCreate(0, @"pt");
  v2[6] = CFLocaleCreate(0, @"vi");
  v2[7] = CFLocaleCreate(0, @"nl");
  v2[8] = CFLocaleCreate(0, @"da");
  v2[9] = CFLocaleCreate(0, @"sv");
  v2[10] = CFLocaleCreate(0, @"nb");
  v2[11] = CFLocaleCreate(0, @"tr");
  v2[12] = CFLocaleCreate(0, @"en-US");
  v2[13] = CFLocaleCreate(0, @"en-AU");
  v2[14] = CFLocaleCreate(0, @"en-CA");
  v2[15] = CFLocaleCreate(0, @"en-GB");
  v2[16] = CFLocaleCreate(0, @"en-IN");
  v2[17] = CFLocaleCreate(0, @"en-JP");
  v2[18] = CFLocaleCreate(0, @"en-NZ");
  v2[19] = CFLocaleCreate(0, @"en-SG");
  v2[20] = CFLocaleCreate(0, @"en-ZA");
  v2[21] = CFLocaleCreate(0, @"fr-FR");
  v2[22] = CFLocaleCreate(0, @"fr-CA");
  v2[23] = CFLocaleCreate(0, @"es-ES");
  v2[24] = CFLocaleCreate(0, @"es-MX");
  v2[25] = CFLocaleCreate(0, @"pt-BR");
  v2[26] = CFLocaleCreate(0, @"pt-PT");
  v0 = 0;
  qword_1EB90C838 = CFArrayCreate(*MEMORY[0x1E695E480], v2, 27, MEMORY[0x1E695E9C0]);
  do
  {
    CFRelease(v2[v0++]);
  }

  while (v0 != 27);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5D4A530(size_t *a1, void *a2, const __CFArray *a3)
{
  v5 = a1;
  v166 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1B5D4B7CC(a1, a2[3]);
  v153 = v5;
  if (!a3)
  {
    v117 = a2[2];
    if (v117)
    {
      v118 = v5;
      v119 = v5[1];
      do
      {
        v120 = v117[5];
        v121 = v118[2];
        if (v119 >= v121)
        {
          v123 = (v119 - *v118) >> 5;
          if ((v123 + 1) >> 59)
          {
            sub_1B5D04FA0();
          }

          v124 = v121 - *v118;
          v125 = v124 >> 4;
          if (v124 >> 4 <= (v123 + 1))
          {
            v125 = v123 + 1;
          }

          if (v124 >= 0x7FFFFFFFFFFFFFE0)
          {
            v126 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v126 = v125;
          }

          v165 = v118;
          if (v126)
          {
            sub_1B5D4BF1C(v126);
          }

          v127 = 32 * v123;
          *&v163 = 0;
          *(&v163 + 1) = v127;
          v128 = 0;
          v164 = v127;
          if (*(v117 + 39) < 0)
          {
            sub_1B5CE4AC4(v127, v117[2], v117[3]);
            v130 = *(&v163 + 1);
            v128 = *(&v164 + 1);
            v131 = v164;
          }

          else
          {
            v129 = *(v117 + 1);
            *(v127 + 16) = v117[4];
            *v127 = v129;
            v130 = v127;
            v131 = v127;
          }

          *(v127 + 24) = v120;
          v119 = v131 + 32;
          v118 = v153;
          v132 = v153[1] - *v153;
          v133 = v130 - v132;
          memcpy((v130 - v132), *v153, v132);
          v134 = *v153;
          *v153 = v133;
          v153[1] = v119;
          v135 = v153[2];
          v153[2] = v128;
          *&v164 = v134;
          *(&v164 + 1) = v135;
          *&v163 = v134;
          *(&v163 + 1) = v134;
          sub_1B5D4BF64(&v163);
        }

        else
        {
          if (*(v117 + 39) < 0)
          {
            sub_1B5CE4AC4(v119, v117[2], v117[3]);
          }

          else
          {
            v122 = *(v117 + 1);
            *(v119 + 16) = v117[4];
            *v119 = v122;
          }

          *(v119 + 24) = v120;
          v119 += 32;
          v118 = v153;
        }

        v118[1] = v119;
        v117 = *v117;
      }

      while (v117);
    }

    BYTE7(v164) = 5;
    strcpy(&v163, "es-MX");
    result = sub_1B5D4A0D0(a2, &v163);
    if (result)
    {
      v136 = *(result + 40);
      v137 = v153;
      v138 = v153[1];
      v139 = v153[2];
      if (v138 >= v139)
      {
        v141 = (v138 - *v153) >> 5;
        v142 = v141 + 1;
        if ((v141 + 1) >> 59)
        {
          sub_1B5D04FA0();
        }

        v143 = v139 - *v153;
        if (v143 >> 4 > v142)
        {
          v142 = v143 >> 4;
        }

        if (v143 >= 0x7FFFFFFFFFFFFFE0)
        {
          v144 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v144 = v142;
        }

        v165 = v153;
        if (v144)
        {
          sub_1B5D4BF1C(v144);
        }

        v145 = 32 * v141;
        *(v145 + 23) = 6;
        strcpy((32 * v141), "es-419");
        *(v145 + 24) = v136;
        v140 = 32 * v141 + 32;
        v146 = v153[1] - *v153;
        v147 = v145 - v146;
        memcpy((v145 - v146), *v153, v146);
        v148 = *v153;
        *v153 = v147;
        v153[1] = v140;
        v149 = v153[2];
        v153[2] = 0;
        v137 = v153;
        *&v164 = v148;
        *(&v164 + 1) = v149;
        *&v163 = v148;
        *(&v163 + 1) = v148;
        result = sub_1B5D4BF64(&v163);
      }

      else
      {
        *(v138 + 23) = 6;
        strcpy(v138, "es-419");
        v140 = v138 + 32;
        *(v138 + 24) = v136;
      }

      v137[1] = v140;
    }

    goto LABEL_233;
  }

  v6 = 0;
  v151 = a3;
LABEL_3:
  if (CFArrayGetCount(a3) > v6)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v6);
    sub_1B5D4EA54(__p, ValueAtIndex);
    if ((SBYTE7(v155) & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((SBYTE7(v155) & 0x80u) == 0)
    {
      v9 = BYTE7(v155);
    }

    else
    {
      v9 = __p[1];
    }

    if ((atomic_load_explicit(&qword_1EB90C868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90C868))
    {
      operator new();
    }

    v10 = qword_1EB90C820;
    v11 = sub_1B5D2CC6C(v8, v9);
    v12 = v10[1];
    if (!*&v12)
    {
      goto LABEL_28;
    }

    v13 = v11;
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.u32[0];
    if (v14.u32[0] > 1uLL)
    {
      v16 = v11;
      if (v11 >= *&v12)
      {
        v16 = v11 % *&v12;
      }
    }

    else
    {
      v16 = (*&v12 - 1) & v11;
    }

    v17 = *(*v10 + 8 * v16);
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = *v17;
    if (!*v17)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v19 = v18[1];
      if (v13 == v19)
      {
        if (v18[3] == v9 && !memcmp(v18[2], v8, v9))
        {
          v8 = v18[4];
          v9 = v18[5];
LABEL_28:
          if (v9 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1B5D114C8();
          }

          if (v9 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v160) = v9;
          if (v9)
          {
            memmove(&__dst, v8, v9);
          }

          *(&__dst + v9) = 0;
          if (v160 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (v160 >= 0)
          {
            v21 = SHIBYTE(v160);
          }

          else
          {
            v21 = *(&__dst + 1);
          }

          v22 = sub_1B5D2CC6C(p_dst, v21);
          v23 = a2[11];
          if (!*&v23)
          {
            goto LABEL_56;
          }

          v24 = v22;
          v25 = vcnt_s8(v23);
          v25.i16[0] = vaddlv_u8(v25);
          v26 = v25.u32[0];
          if (v25.u32[0] > 1uLL)
          {
            v27 = v22;
            if (v22 >= *&v23)
            {
              v27 = v22 % *&v23;
            }
          }

          else
          {
            v27 = (*&v23 - 1) & v22;
          }

          v28 = *(a2[10] + 8 * v27);
          if (!v28 || (v29 = *v28) == 0)
          {
LABEL_56:
            v158 = 0;
            v31 = 0uLL;
            v157 = 0u;
            v5 = v153;
            goto LABEL_57;
          }

          while (2)
          {
            v30 = v29[1];
            if (v24 == v30)
            {
              if (sub_1B5D17E50(v29 + 2, &__dst))
              {
                v158 = 0;
                v31 = 0uLL;
                v157 = 0u;
                v68 = v29[5];
                v67 = v29[6];
                v5 = v153;
                if (v68 != v67)
                {
                  v69 = 0;
                  do
                  {
                    v70 = sub_1B5D4A0D0(a2, v68);
                    if (v70)
                    {
                      v71 = v70[5];
                      *&v163 = v71;
                      if (v71)
                      {
                        if (v69 >= v158)
                        {
                          v69 = sub_1B5D4BD80(&v157, v68, &v163);
                        }

                        else
                        {
                          if (*(v68 + 23) < 0)
                          {
                            sub_1B5CE4AC4(v69, *v68, *(v68 + 8));
                            v71 = v163;
                          }

                          else
                          {
                            v72 = *v68;
                            *(v69 + 16) = *(v68 + 16);
                            *v69 = v72;
                          }

                          *(v69 + 24) = v71;
                          v69 += 32;
                        }

                        *(&v157 + 1) = v69;
                      }
                    }

                    v68 += 24;
                  }

                  while (v68 != v67);
                  v31 = v157;
                }

LABEL_57:
                v32 = *(&v31 + 1);
                v33 = v31;
                if (v31 != *(&v31 + 1))
                {
                  v34 = *(&v31 + 1) - v31;
                  v35 = (*(&v31 + 1) - v31) >> 5;
                  if (v35 >= 1)
                  {
                    v37 = v5[1];
                    v36 = v5[2];
                    if ((v36 - v37) >= v34)
                    {
                      v161 = v5[1];
                      v162 = v37;
                      *&v163 = v5;
                      *(&v163 + 1) = &v161;
                      *&v164 = &v162;
                      v42 = v37;
                      BYTE8(v164) = 0;
                      do
                      {
                        if (*(v33 + 23) < 0)
                        {
                          sub_1B5CE4AC4(v42, *v33, *(v33 + 1));
                          v44 = v162;
                        }

                        else
                        {
                          v43 = *v33;
                          v42[2] = *(v33 + 2);
                          *v42 = v43;
                          v44 = v42;
                        }

                        v42[3] = *(v33 + 3);
                        v33 += 2;
                        v42 = v44 + 4;
                        v162 = v44 + 4;
                      }

                      while (v33 != v32);
                      BYTE8(v164) = 1;
                      sub_1B5D4C024(&v163);
                      v5[1] = v42;
                    }

                    else
                    {
                      v38 = v37 - *v5;
                      v39 = v35 + (v38 >> 5);
                      if (v39 >> 59)
                      {
                        sub_1B5D04FA0();
                      }

                      v40 = v36 - *v5;
                      if (v40 >> 4 > v39)
                      {
                        v39 = v40 >> 4;
                      }

                      if (v40 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v41 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v41 = v39;
                      }

                      v165 = v5;
                      if (v41)
                      {
                        sub_1B5D4BF1C(v41);
                      }

                      v45 = 32 * (v38 >> 5);
                      *&v163 = 0;
                      *(&v163 + 1) = v45;
                      v164 = v45;
                      v46 = (v45 + v34);
                      do
                      {
                        if (*(v33 + 23) < 0)
                        {
                          sub_1B5CE4AC4(v45, *v33, *(v33 + 1));
                        }

                        else
                        {
                          v47 = *v33;
                          *(v45 + 16) = *(v33 + 2);
                          *v45 = v47;
                        }

                        *(v45 + 24) = *(v33 + 3);
                        v45 += 32;
                        v33 += 2;
                        v34 -= 32;
                      }

                      while (v34);
                      *&v164 = v46;
                      memcpy(v46, v37, v5[1] - v37);
                      v48 = *v5;
                      v49 = *(&v163 + 1);
                      *&v164 = v164 + v5[1] - v37;
                      v5[1] = v37;
                      v50 = (v49 - (v37 - v48));
                      memcpy(v50, v48, v37 - v48);
                      v51 = *v5;
                      *v5 = v50;
                      v52 = v5[2];
                      *(v5 + 1) = v164;
                      *&v164 = v51;
                      *(&v164 + 1) = v52;
                      *&v163 = v51;
                      *(&v163 + 1) = v51;
                      sub_1B5D4BF64(&v163);
                    }
                  }
                }

                *&v163 = &v157;
                sub_1B5D4BCF4(&v163);
                v53 = sub_1B5D4A0D0(a2, &__dst);
                if (v53 && (v54 = v53[5], (*&v163 = v54) != 0))
                {
                  v55 = v5[1];
                  if (v55 >= v5[2])
                  {
                    v65 = sub_1B5D4BD80(v5, __p, &v163);
                  }

                  else
                  {
                    if (SBYTE7(v155) < 0)
                    {
                      sub_1B5CE4AC4(v5[1], __p[0], __p[1]);
                    }

                    else
                    {
                      v56 = *__p;
                      *(v55 + 16) = v155;
                      *v55 = v56;
                    }

                    *(v55 + 24) = v54;
                    v65 = v55 + 32;
                  }

                  a3 = v151;
                  v5[1] = v65;
                }

                else
                {
                  if (v160 >= 0)
                  {
                    v57 = &__dst;
                  }

                  else
                  {
                    v57 = __dst;
                  }

                  if (v160 >= 0)
                  {
                    v58 = SHIBYTE(v160);
                  }

                  else
                  {
                    v58 = *(&__dst + 1);
                  }

                  v59 = sub_1B5D4EB98(v57, v58);
                  if (v60 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_1B5D114C8();
                  }

                  v61 = v60;
                  if (v60 >= 0x17)
                  {
                    operator new();
                  }

                  BYTE7(v164) = v60;
                  if (v60)
                  {
                    memmove(&v163, v59, v60);
                  }

                  *(&v163 + v61) = 0;
                  v62 = sub_1B5D4A0D0(a2, &v163);
                  if (v62)
                  {
                    v63 = v62[5];
                    *&v157 = v63;
                    if (v63)
                    {
                      v64 = v5[1];
                      if (v64 >= v5[2])
                      {
                        v66 = sub_1B5D4BD80(v5, &v163, &v157);
                      }

                      else
                      {
                        if (SBYTE7(v164) < 0)
                        {
                          sub_1B5CE4AC4(v5[1], v163, *(&v163 + 1));
                        }

                        else
                        {
                          *v64 = v163;
                          *(v64 + 16) = v164;
                        }

                        *(v64 + 24) = v63;
                        v66 = v64 + 32;
                      }

                      v5[1] = v66;
                    }
                  }

                  if (SBYTE7(v164) < 0)
                  {
                    operator delete(v163);
                  }

                  a3 = v151;
                }

                if (SHIBYTE(v160) < 0)
                {
                  operator delete(__dst);
                }

                if (SBYTE7(v155) < 0)
                {
                  operator delete(__p[0]);
                }

                ++v6;
                goto LABEL_3;
              }
            }

            else
            {
              if (v26 > 1)
              {
                if (v30 >= *&v23)
                {
                  v30 %= *&v23;
                }
              }

              else
              {
                v30 &= *&v23 - 1;
              }

              if (v30 != v27)
              {
                goto LABEL_56;
              }
            }

            v29 = *v29;
            if (!v29)
            {
              goto LABEL_56;
            }

            continue;
          }
        }
      }

      else
      {
        if (v15 > 1)
        {
          if (v19 >= *&v12)
          {
            v19 %= *&v12;
          }
        }

        else
        {
          v19 &= *&v12 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_28;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  *__p = 0u;
  v155 = 0u;
  v156 = 1065353216;
  __dst = 0uLL;
  v160 = 0;
  sub_1B5D4B7CC(&__dst, (v5[1] - *v5) >> 5);
  v74 = *v5;
  v73 = v5[1];
  if (*v5 == v73)
  {
    goto LABEL_199;
  }

  v152 = v5[1];
  do
  {
    v75 = *(v74 + 23);
    v76 = *v74;
    v77 = v74[1];
    if (v75 >= 0)
    {
      v78 = v74;
    }

    else
    {
      v78 = *v74;
    }

    if (v75 >= 0)
    {
      v79 = *(v74 + 23);
    }

    else
    {
      v79 = v74[1];
    }

    v80 = sub_1B5D2CC6C(v78, v79);
    v81 = __p[1];
    if (!__p[1])
    {
      goto LABEL_157;
    }

    v82 = v80;
    v83 = vcnt_s8(__p[1]);
    v83.i16[0] = vaddlv_u8(v83);
    v84 = v83.u32[0];
    if (v83.u32[0] > 1uLL)
    {
      v85 = v80;
      if (v80 >= __p[1])
      {
        v85 = v80 % __p[1];
      }
    }

    else
    {
      v85 = (__p[1] - 1) & v80;
    }

    v86 = *(__p[0] + v85);
    if (!v86 || (v87 = *v86) == 0)
    {
LABEL_157:
      v89 = *(&__dst + 1);
      if (*(&__dst + 1) >= v160)
      {
        v91 = (*(&__dst + 1) - __dst) >> 5;
        if ((v91 + 1) >> 59)
        {
          sub_1B5D04FA0();
        }

        v92 = (v160 - __dst) >> 4;
        if (v92 <= v91 + 1)
        {
          v92 = v91 + 1;
        }

        if ((v160 - __dst) >= 0x7FFFFFFFFFFFFFE0)
        {
          v93 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v93 = v92;
        }

        v165 = &__dst;
        if (v93)
        {
          sub_1B5D4BF1C(v93);
        }

        v95 = 32 * v91;
        *&v163 = 0;
        *(&v163 + 1) = v95;
        v96 = 0;
        v164 = v95;
        if (*(v74 + 23) < 0)
        {
          sub_1B5CE4AC4(v95, *v74, v74[1]);
          v98 = *(&v163 + 1);
          v96 = *(&v164 + 1);
          v99 = v164;
        }

        else
        {
          v97 = *v74;
          *(v95 + 16) = v74[2];
          *v95 = v97;
          v98 = v95;
          v99 = v95;
        }

        *(v95 + 24) = v74[3];
        v94 = v99 + 32;
        v100 = (v98 - (*(&__dst + 1) - __dst));
        memcpy(v100, __dst, *(&__dst + 1) - __dst);
        v101 = __dst;
        v102 = v160;
        *&__dst = v100;
        *(&__dst + 1) = v94;
        v160 = v96;
        *&v164 = v101;
        *(&v164 + 1) = v102;
        *&v163 = v101;
        *(&v163 + 1) = v101;
        sub_1B5D4BF64(&v163);
      }

      else
      {
        if ((v75 & 0x80000000) != 0)
        {
          sub_1B5CE4AC4(*(&__dst + 1), v76, v77);
        }

        else
        {
          v90 = *v74;
          *(*(&__dst + 1) + 16) = v74[2];
          *v89 = v90;
        }

        *(v89 + 24) = v74[3];
        v94 = v89 + 32;
      }

      *(&__dst + 1) = v94;
      v103 = *(v74 + 23);
      if (v103 >= 0)
      {
        v104 = v74;
      }

      else
      {
        v104 = *v74;
      }

      if (v103 >= 0)
      {
        v105 = *(v74 + 23);
      }

      else
      {
        v105 = v74[1];
      }

      v106 = sub_1B5D2CC6C(v104, v105);
      v107 = v106;
      v108 = __p[1];
      if (__p[1])
      {
        v109 = vcnt_s8(__p[1]);
        v109.i16[0] = vaddlv_u8(v109);
        v110 = v109.u32[0];
        if (v109.u32[0] > 1uLL)
        {
          v111 = v106;
          if (v106 >= __p[1])
          {
            v111 = v106 % __p[1];
          }
        }

        else
        {
          v111 = (__p[1] - 1) & v106;
        }

        v112 = *(__p[0] + v111);
        if (v112)
        {
          v113 = *v112;
          if (*v112)
          {
            do
            {
              v114 = v113[1];
              if (v114 == v107)
              {
                if (sub_1B5D17E50(v113 + 2, v74))
                {
                  goto LABEL_197;
                }
              }

              else
              {
                if (v110 > 1)
                {
                  if (v114 >= v108)
                  {
                    v114 %= v108;
                  }
                }

                else
                {
                  v114 &= v108 - 1;
                }

                if (v114 != v111)
                {
                  break;
                }
              }

              v113 = *v113;
            }

            while (v113);
          }
        }
      }

      operator new();
    }

    while (1)
    {
      v88 = v87[1];
      if (v82 == v88)
      {
        break;
      }

      if (v84 > 1)
      {
        if (v88 >= v81)
        {
          v88 %= v81;
        }
      }

      else
      {
        v88 &= v81 - 1;
      }

      if (v88 != v85)
      {
        goto LABEL_157;
      }

LABEL_156:
      v87 = *v87;
      if (!v87)
      {
        goto LABEL_157;
      }
    }

    if (!sub_1B5D17E50(v87 + 2, v74))
    {
      goto LABEL_156;
    }

LABEL_197:
    v74 += 4;
  }

  while (v74 != v152);
  v5 = v153;
  v74 = *v153;
  v73 = v153[1];
LABEL_199:
  *v5 = __dst;
  *&__dst = v74;
  *(&__dst + 1) = v73;
  v115 = v5[2];
  v5[2] = v160;
  v160 = v115;
  *&v163 = &__dst;
  sub_1B5D4BCF4(&v163);
  result = sub_1B5D4BEB4(__p);
LABEL_233:
  v150 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D4B5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  MEMORY[0x1B8C880F0](v33, 0x10A0C408EF24B1CLL);
  __cxa_guard_abort(&qword_1EB90C868);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = a12;
  sub_1B5D4BCF4(&__p);
  _Unwind_Resume(a1);
}

void *sub_1B5D4B7CC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1B5D4BF1C(a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}