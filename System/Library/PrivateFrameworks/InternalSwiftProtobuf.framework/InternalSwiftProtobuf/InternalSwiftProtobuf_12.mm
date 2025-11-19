void sub_1AC50CFCC()
{
  v2 = v0;
  OUTLINED_FUNCTION_59_3();
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_83_2(__src);
    v4 = (v1 + 32);
    for (i = v3 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(v8, __src, sizeof(v8));
      sub_1AC48604C(__dst, &v7);
      sub_1AC4838E0(v8);
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
        v2 = 0;
      }

      v6 = sub_1AC486084(__dst);
      if (!i)
      {
        break;
      }

      memcpy(__src, v8, sizeof(__src));
      v4 += 104;
    }

    OUTLINED_FUNCTION_77_1(v6, v8);
  }
}

void sub_1AC50D0A4()
{
  OUTLINED_FUNCTION_60();
  v55 = v2;
  v5 = OUTLINED_FUNCTION_37_6(v3, v4);
  MEMORY[0x1AC5B48A0](v5);
  v57 = *(v0 + 16);
  if (v57)
  {
    v54 = v1;
    OUTLINED_FUNCTION_64_2(v75);
    v6 = 0;
    v56 = v0 + 32;
    while (1)
    {
      v7 = v56 + 120 * v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 32);
      HIDWORD(v69) = *(v7 + 48);
      v64 = *(v7 + 40);
      v65 = *(v7 + 56);
      v66 = *(v7 + 72);
      v67 = *(v7 + 24);
      LODWORD(v70) = *(v7 + 64);
      HIDWORD(v70) = *(v7 + 80);
      v12 = v6;
      v13 = *(v7 + 88);
      v14 = *(v7 + 96);
      v15 = *(v7 + 112);
      v68 = *(v7 + 104);
      OUTLINED_FUNCTION_75_2(v74);
      v16 = *(v9 + 16);
      v71 = v14;
      if (v16)
      {
        v63 = v12;
        MEMORY[0x1AC5B48A0](2);
        memcpy(__dst, v74, sizeof(__dst));

        v62 = v8;
        v60 = v10;
        sub_1AC4578F4(v8, v10);
        v61 = v11;

        v58 = v13;
        v17 = OUTLINED_FUNCTION_19();
        sub_1AC4B39F0(v17, v18);

        v26 = v16 - 1;
        v59 = v9;
        v27 = (v9 + 64);
        while (1)
        {
          v28 = *(v27 - 4);
          v29 = *(v27 - 3);
          v31 = *(v27 - 2);
          v30 = *(v27 - 1);
          v32 = *v27;
          OUTLINED_FUNCTION_88_2(__src, v19, v20, v21, v22, v23, v24, v25, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __dst[0]);
          if (v30)
          {
            MEMORY[0x1AC5B48A0](1);
            sub_1AC4578F4(v28, v29);

            sub_1AC51EEB8();
          }

          else
          {
            sub_1AC4578F4(v28, v29);
          }

          if (v32 != 2)
          {
            MEMORY[0x1AC5B48A0](2);
            sub_1AC51F488();
          }

          v27 += 40;
          switch(v29 >> 62)
          {
            case 1uLL:
              v33 = v28;
              v34 = v28 >> 32;
              goto LABEL_15;
            case 2uLL:
              v33 = *(v28 + 16);
              v34 = *(v28 + 24);
LABEL_15:
              if (v33 != v34)
              {
                goto LABEL_16;
              }

              goto LABEL_17;
            case 3uLL:
              goto LABEL_17;
            default:
              if ((v29 & 0xFF000000000000) == 0)
              {
                goto LABEL_17;
              }

LABEL_16:
              sub_1AC51EC58();
LABEL_17:
              sub_1AC4513F8(v28, v29);

              if (!v26)
              {
                memcpy(v74, __src, sizeof(v74));
                v8 = v62;
                v35 = v63;
                v10 = v60;
                v36 = v58;
                if (v61)
                {
                  goto LABEL_20;
                }

                goto LABEL_21;
              }

              memcpy(__dst, __src, sizeof(__dst));
              --v26;
              break;
          }
        }
      }

      v38 = OUTLINED_FUNCTION_40_7();
      sub_1AC4578F4(v38, v39);

      v40 = OUTLINED_FUNCTION_19();
      sub_1AC4B39F0(v40, v41);

      v36 = v13;
      v35 = v12;
      if (v11)
      {
LABEL_20:
        MEMORY[0x1AC5B48A0](3);
        sub_1AC51EEB8();
      }

LABEL_21:
      if ((v69 & 0x100000000) == 0)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48D0](v64);
      }

      if ((v70 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48D0](v65);
      }

      if ((v70 & 0x100000000) == 0)
      {
        MEMORY[0x1AC5B48A0](6);
        if ((v66 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v66;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x1AC5B48D0](v37);
      }

      if (v71 >> 60 != 15)
      {
        MEMORY[0x1AC5B48A0](7);
        sub_1AC4578F4(v36, v71);
        sub_1AC51EC58();
        sub_1AC45AC74(v36, v71);
      }

      if (v15)
      {
        MEMORY[0x1AC5B48A0](8);
        sub_1AC51EEB8();
      }

      v6 = v35 + 1;
      switch(v10 >> 62)
      {
        case 1uLL:
          v42 = v8;
          v43 = v8 >> 32;
          goto LABEL_41;
        case 2uLL:
          v42 = *(v8 + 16);
          v43 = *(v8 + 24);
LABEL_41:
          if (v42 != v43)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 3uLL:
          goto LABEL_43;
        default:
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_43;
          }

LABEL_42:
          sub_1AC51EC58();
LABEL_43:

          v44 = OUTLINED_FUNCTION_40_7();
          sub_1AC4513F8(v44, v45);

          sub_1AC45AC74(v36, v71);

          if (v6 == v57)
          {
            OUTLINED_FUNCTION_86_2(v46, v74, v47, v48, v49, v50, v51, v52, v53, v54);
            goto LABEL_46;
          }

          memcpy(v75, v74, 0x48uLL);
          break;
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_61();
}

void sub_1AC50D4C4()
{
  OUTLINED_FUNCTION_59_3();
  v2 = *(v1 + 16);
  if (v2)
  {
    v44 = v0;
    v3 = OUTLINED_FUNCTION_83_2(v43);
    v11 = v2 - 1;
    v12 = (v1 + 64);
    while (1)
    {
      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v16 = *(v12 - 2);
      v15 = *(v12 - 1);
      v17 = *v12;
      OUTLINED_FUNCTION_78_1(v3, v4, v5, v6, v7, v8, v9, v10, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43[0]);
      if (v15)
      {
        MEMORY[0x1AC5B48A0](1);
        v18 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v18, v19);

        sub_1AC51EEB8();
      }

      else
      {
        v20 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v20, v21);
      }

      if (v17 != 2)
      {
        MEMORY[0x1AC5B48A0](2);
        sub_1AC51F488();
      }

      v12 += 40;
      switch(v14 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_13;
        case 2uLL:
          v22 = *(v13 + 16);
          v23 = *(v13 + 24);
LABEL_13:
          if (v22 != v23)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        case 3uLL:
          goto LABEL_15;
        default:
          if ((v14 & 0xFF000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          sub_1AC51EC58();
LABEL_15:
          v24 = OUTLINED_FUNCTION_41_5();
          sub_1AC4513F8(v24, v25);

          if (!v11)
          {
            OUTLINED_FUNCTION_77_1(v26, &v34);
            return;
          }

          v3 = OUTLINED_FUNCTION_79_1(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43[0]);
          --v11;
          break;
      }
    }
  }
}

void *sub_1AC50D620(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v6 = *(v2 + 16);
  if (v6)
  {
    v32 = v3;
    OUTLINED_FUNCTION_64_2(__src);
    v37 = v6 - 1;
    v7 = (v2 + 89);
    while (1)
    {
      v8 = *(v7 - 57);
      v9 = *(v7 - 49);
      v10 = *(v7 - 41);
      v11 = *(v7 - 37);
      v12 = *(v7 - 33);
      v13 = *(v7 - 25);
      v33 = *(v7 - 17);
      v14 = *(v7 - 9);
      v15 = *(v7 - 1);
      v34 = *v7;
      memcpy(__dst, __src, sizeof(__dst));
      if ((v11 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48D0](v10);
      }

      if (!v13)
      {
        break;
      }

      MEMORY[0x1AC5B48A0](2);
      v16 = OUTLINED_FUNCTION_100();
      sub_1AC4578F4(v16, v17);

      sub_1AC51EEB8();
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (v15 != 2)
      {
        MEMORY[0x1AC5B48A0](5);
        sub_1AC51F488();
      }

      if (v34 != 2)
      {
        MEMORY[0x1AC5B48A0](6);
        sub_1AC51F488();
      }

      v7 += 64;
      switch(v9 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_19;
        case 2uLL:
          v20 = *(v8 + 16);
          v21 = *(v8 + 24);
LABEL_19:
          if (v20 != v21)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        case 3uLL:
          goto LABEL_21;
        default:
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          OUTLINED_FUNCTION_175();
          sub_1AC51EC58();
LABEL_21:
          v22 = OUTLINED_FUNCTION_100();
          sub_1AC4513F8(v22, v23);

          if (!v37)
          {
            return OUTLINED_FUNCTION_86_2(v24, __dst, v25, v26, v27, v28, v29, v30, v31, v32);
          }

          memcpy(__src, __dst, 0x48uLL);
          --v37;
          break;
      }
    }

    v18 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v18, v19);

    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_7:
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51EEB8();
    goto LABEL_8;
  }

  return result;
}

void sub_1AC50D840()
{
  OUTLINED_FUNCTION_76_2();
  v3 = *(v2 + 16);
  if (v3)
  {
    v47 = v1;
    __dst = v0;
    v4 = OUTLINED_FUNCTION_64_2(v46);
    v12 = v3 - 1;
    v13 = (v2 + 64);
    while (1)
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 3);
      v16 = *(v13 - 16);
      v18 = *(v13 - 1);
      v17 = *v13;
      v19 = OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v41, __dst, v45[0]);
      memcpy(v19, v20, v21);
      if (v17)
      {
        MEMORY[0x1AC5B48A0](2);
        v22 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v22, v23);

        sub_1AC51EEB8();
      }

      else
      {
        v24 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v24, v25);
      }

      if (v16 != 12)
      {
        MEMORY[0x1AC5B48A0](3);
        MEMORY[0x1AC5B48A0](qword_1AC52BD98[v16]);
      }

      v13 += 5;
      switch(v15 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_13;
        case 2uLL:
          v26 = *(v14 + 16);
          v27 = *(v14 + 24);
LABEL_13:
          if (v26 != v27)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        case 3uLL:
          goto LABEL_15;
        default:
          if ((v15 & 0xFF000000000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          sub_1AC51EC58();
LABEL_15:
          v28 = OUTLINED_FUNCTION_41_5();
          sub_1AC4513F8(v28, v29);

          if (!v12)
          {
            OUTLINED_FUNCTION_86_2(v30, v45, v32, v33, v34, v35, v36, v37, v42, __dsta);
            return;
          }

          v38 = OUTLINED_FUNCTION_18_13(v30, v31, v32, v33, v34, v35, v36, v37, v42, __dsta, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v46[0]);
          v4 = memcpy(v38, v39, v40);
          --v12;
          break;
      }
    }
  }
}

void *sub_1AC50D9AC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v35 = *(v2 + 16);
  if (v35)
  {
    v33 = v3;
    OUTLINED_FUNCTION_64_2(__src);
    v6 = 0;
    v34 = v2 + 32;
    while (1)
    {
      v37 = v6;
      v7 = (v34 + 72 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[4];
      v36 = v7[5];
      v13 = v7[7];
      v40 = v7[6];
      v14 = v7[8];
      memcpy(__dst, __src, sizeof(__dst));
      v15 = *(v8 + 16);
      if (v15)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48A0](*(v8 + 16));
        v16 = (v8 + 32);
        do
        {
          v17 = *v16++;
          sub_1AC51F498();
          --v15;
        }

        while (v15);
      }

      v18 = *(v9 + 16);
      if (v18)
      {
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48A0](*(v9 + 16));
        v19 = (v9 + 32);
        do
        {
          v20 = *v19++;
          sub_1AC51F498();
          --v18;
        }

        while (v18);
      }

      if (v40)
      {
        break;
      }

      v27 = OUTLINED_FUNCTION_22_0();
      sub_1AC4578F4(v27, v28);

      if (v14)
      {
        goto LABEL_11;
      }

LABEL_12:
      v23 = *(v10 + 16);
      if (v23)
      {
        MEMORY[0x1AC5B48A0](6);
        MEMORY[0x1AC5B48A0](*(v10 + 16));
        v24 = (v10 + 40);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;

          sub_1AC51EEB8();

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      v6 = v37 + 1;
      switch(v12 >> 62)
      {
        case 1uLL:
          v29 = v11;
          v30 = v11 >> 32;
          goto LABEL_22;
        case 2uLL:
          v29 = *(v11 + 16);
          v30 = *(v11 + 24);
LABEL_22:
          if (v29 != v30)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        case 3uLL:
          goto LABEL_24;
        default:
          if ((v12 & 0xFF000000000000) == 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          sub_1AC51EC58();
LABEL_24:

          v31 = OUTLINED_FUNCTION_22_0();
          sub_1AC4513F8(v31, v32);

          if (v6 == v35)
          {
            return memcpy(v33, __dst, 0x48uLL);
          }

          memcpy(__src, __dst, 0x48uLL);
          break;
      }
    }

    MEMORY[0x1AC5B48A0](3);

    v21 = OUTLINED_FUNCTION_22_0();
    sub_1AC4578F4(v21, v22);

    sub_1AC51EEB8();
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_11:
    MEMORY[0x1AC5B48A0](4);
    sub_1AC51EEB8();
    goto LABEL_12;
  }

  return result;
}

void sub_1AC50DC94()
{
  v2 = v0;
  OUTLINED_FUNCTION_59_3();
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_83_2(v16);
    v4 = (v1 + 32);
    for (i = v3 - 1; ; --i)
    {
      memcpy(__dst, v4, 0x91uLL);
      OUTLINED_FUNCTION_88_2(__src, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v16[0]);
      sub_1AC485D8C(__dst, v14);
      sub_1AC4AA0CC();
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
        v2 = 0;
      }

      v13 = sub_1AC485DE8(__dst);
      if (!i)
      {
        break;
      }

      memcpy(v16, __src, sizeof(v16));
      v4 += 152;
    }

    OUTLINED_FUNCTION_77_1(v13, __src);
  }
}

void sub_1AC50DD64()
{
  OUTLINED_FUNCTION_60();
  v102 = v2;
  v5 = OUTLINED_FUNCTION_37_6(v3, v4);
  MEMORY[0x1AC5B48A0](v5);
  v93 = *(v0 + 16);
  if (!v93)
  {
    goto LABEL_130;
  }

  v100 = v1;
  OUTLINED_FUNCTION_64_2(v132);
  v94 = v0 + 32;
  v95 = 0;
  while (1)
  {
    memcpy(__dst, (v94 + 104 * v95), 0x67uLL);
    v6 = __dst[4];
    OUTLINED_FUNCTION_75_2(__src);
    if (v6)
    {
      MEMORY[0x1AC5B48A0](1);
      sub_1AC485E3C(__dst, v128);
      OUTLINED_FUNCTION_94_2();
      sub_1AC51EEB8();
    }

    else
    {
      sub_1AC485E3C(__dst, v128);
    }

    v7 = __dst[0];
    v99 = *(__dst[0] + 16);
    if (!v99)
    {
      v11 = v100;
      goto LABEL_90;
    }

    MEMORY[0x1AC5B48A0](2);
    memcpy(v129, __src, sizeof(v129));
    v103 = 0;
    v98 = v7 + 32;
LABEL_8:
    memcpy(v128, (v98 + 136 * v103), sizeof(v128));
    memcpy(v127, v129, sizeof(v127));
    if (v128[3])
    {
      MEMORY[0x1AC5B48A0](1);
      sub_1AC485754(v128, v126);
      OUTLINED_FUNCTION_94_2();
      sub_1AC51EEB8();
    }

    else
    {
      sub_1AC485754(v128, v126);
    }

    if (v128[5])
    {
      MEMORY[0x1AC5B48A0](2);
      sub_1AC51EEB8();
    }

    if (v128[7])
    {
      MEMORY[0x1AC5B48A0](3);
      sub_1AC51EEB8();
    }

    v8 = v128[8];
    if (v128[8])
    {
      break;
    }

LABEL_75:
    if (BYTE6(v128[16]) != 2)
    {
      MEMORY[0x1AC5B48A0](5);
      sub_1AC51F488();
    }

    if (HIBYTE(v128[16]) != 2)
    {
      MEMORY[0x1AC5B48A0](6);
      sub_1AC51F488();
    }

    ++v103;
    v11 = v100;
    switch(v128[1] >> 62)
    {
      case 1:
        OUTLINED_FUNCTION_73();
        goto LABEL_84;
      case 2:
        v61 = *(v128[0] + 16);
        v62 = *(v128[0] + 24);
LABEL_84:
        if (v61 != v62)
        {
          goto LABEL_85;
        }

        goto LABEL_86;
      case 3:
        goto LABEL_86;
      default:
        if ((v128[1] & 0xFF000000000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_85:
        sub_1AC51EC58();
LABEL_86:
        sub_1AC4857B0(v128);
        if (v103 != v99)
        {
          memcpy(v129, v127, sizeof(v129));
          goto LABEL_8;
        }

        memcpy(__src, v127, sizeof(__src));
        break;
    }

LABEL_90:
    v63 = __dst[5];
    if (__dst[5])
    {
      v133 = __dst[6];
      v121 = __dst[7];
      v64 = __dst[8];
      v65 = __dst[9];
      v66 = __dst[10];
      v67 = __dst[11];
      v68 = WORD2(__dst[12]);
      v69 = LODWORD(__dst[12]);
      v70 = BYTE6(__dst[12]);
      MEMORY[0x1AC5B48A0](3);
      memcpy(v128, __src, 0x48uLL);
      if (v70 != 2)
      {
        MEMORY[0x1AC5B48A0](33);
        sub_1AC51F488();
      }

      if (v67)
      {
        v71 = v69 | (v68 << 32);
        MEMORY[0x1AC5B48A0](34);
        memcpy(v126, v128, 0x48uLL);
        if (v71 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v71);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v72)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v71));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v72)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v71));
        }

        if (BYTE3(v71) != 3)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v71)]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v72)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v71));
        }

        if (BYTE5(v71) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v71));
        }

        sub_1AC4B3394(&__dst[5], v129, &qword_1EB5580B0, &qword_1AC5203B8);
        v73 = OUTLINED_FUNCTION_20_14();
        sub_1AC485860(v73, v74, v75);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v76, v77, v78, v67);
        if (v102)
        {
          v11 = v100;
          MEMORY[0x1AC5B4BA0](v102);
        }

        else
        {
          sub_1AC4937B8(v126, v65, v66);
          v11 = v100;
        }

        v102 = 0;
        v84 = OUTLINED_FUNCTION_20_14();
        sub_1AC485714(v84, v85, v86);
        OUTLINED_FUNCTION_102_2(v128);
      }

      else
      {

        v79 = OUTLINED_FUNCTION_29_8();
        sub_1AC4578F4(v79, v80);

        v81 = OUTLINED_FUNCTION_20_14();
        sub_1AC485860(v81, v82, v83);
        v11 = v100;
      }

      if (*(v63 + 16))
      {
        v87 = v102;
        sub_1AC50D0A4();
        if (v102)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v87 = v102;
      }

      OUTLINED_FUNCTION_154();
      sub_1AC5175D4(v88, v89, v90, v64);
      if (!v87)
      {
        sub_1AC4937B8(v128, v133, v121);
        v102 = 0;
LABEL_118:
        sub_1AC5165E8(&__dst[5], &qword_1EB5580B0);
        memcpy(__src, v128, sizeof(__src));
        goto LABEL_119;
      }

LABEL_117:
      v102 = 0;
      MEMORY[0x1AC5B4BA0](v87);
      goto LABEL_118;
    }

LABEL_119:
    ++v95;
    switch(__dst[2] >> 62)
    {
      case 1:
        OUTLINED_FUNCTION_73();
        goto LABEL_124;
      case 2:
        v91 = *(__dst[1] + 16);
        v92 = *(__dst[1] + 24);
LABEL_124:
        if (v91 != v92)
        {
          goto LABEL_125;
        }

        goto LABEL_126;
      case 3:
        goto LABEL_126;
      default:
        if ((__dst[2] & 0xFF000000000000) == 0)
        {
          goto LABEL_126;
        }

LABEL_125:
        sub_1AC51EC58();
LABEL_126:
        sub_1AC485E98(__dst);
        if (v95 == v93)
        {
          goto LABEL_129;
        }

        memcpy(v132, __src, 0x48uLL);
        break;
    }
  }

  v96 = v128[10];
  v97 = v128[9];
  v101 = v128[11];
  v9 = LOBYTE(v128[12]);
  v10 = BYTE1(v128[12]);
  v11 = v128[13];
  v12 = v128[15];
  MEMORY[0x1AC5B48A0](4);
  memcpy(v126, v127, 0x48uLL);
  if (v9 != 2)
  {
    MEMORY[0x1AC5B48A0](33);
    sub_1AC51F488();
  }

  if (v10 != 3)
  {
    MEMORY[0x1AC5B48A0](34);
    MEMORY[0x1AC5B48A0](v10);
  }

  if (v12)
  {
    MEMORY[0x1AC5B48A0](35);
    OUTLINED_FUNCTION_102_2(v125);
    sub_1AC4B3394(&v128[8], v123, &qword_1EB5580B8, &qword_1AC5203C0);
    v13 = OUTLINED_FUNCTION_52_3();
    sub_1AC485860(v13, v14, v15);
    OUTLINED_FUNCTION_94_2();
    sub_1AC4BBFB4();
    if (v102)
    {
      MEMORY[0x1AC5B4BA0](v102);
    }

    v102 = 0;
    v21 = OUTLINED_FUNCTION_52_3();
    sub_1AC485714(v21, v22, v23);
    memcpy(v126, v125, 0x48uLL);
  }

  else
  {
    v11 = v128[10];

    v16 = OUTLINED_FUNCTION_29_8();
    sub_1AC4578F4(v16, v17);

    OUTLINED_FUNCTION_28_8();
    sub_1AC485860(v18, v19, v20);
  }

  v106 = *(v8 + 16);
  if (!v106)
  {
LABEL_71:
    OUTLINED_FUNCTION_154();
    sub_1AC5175D4(v58, v59, v60, v101);
    if (v102)
    {
      MEMORY[0x1AC5B4BA0](v102);
    }

    else
    {
      sub_1AC4937B8(v126, v97, v96);
    }

    v102 = 0;
    sub_1AC5165E8(&v128[8], &qword_1EB5580B8);
    OUTLINED_FUNCTION_102_2(v127);
    goto LABEL_75;
  }

  MEMORY[0x1AC5B48A0](999);
  OUTLINED_FUNCTION_102_2(v125);
  v24 = 0;
  v104 = v8;
  v105 = v8 + 32;
  while (2)
  {
    if (v24 < *(v8 + 16))
    {
      v25 = v8;
      v26 = (v105 + 120 * v24);
      v119 = v24;
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[4];
      v116 = *(v26 + 48);
      v111 = v26[5];
      v112 = v26[7];
      v113 = v26[9];
      v114 = v26[3];
      v117 = *(v26 + 64);
      v118 = *(v26 + 80);
      v32 = v26[11];
      v31 = v26[12];
      v33 = v26[14];
      v115 = v26[13];
      memcpy(v124, v125, sizeof(v124));
      v34 = *(v27 + 16);
      v120 = v31;
      if (v34)
      {
        MEMORY[0x1AC5B48A0](2);
        memcpy(v123, v124, sizeof(v123));

        v110 = v28;
        v108 = v29;
        sub_1AC4578F4(v28, v29);
        v109 = v30;

        v107 = v32;
        sub_1AC4B39F0(v32, v31);

        v35 = v34 - 1;
        v36 = (v27 + 64);
        while (1)
        {
          v37 = *(v36 - 4);
          v38 = *(v36 - 3);
          v40 = *(v36 - 2);
          v39 = *(v36 - 1);
          v41 = *v36;
          memcpy(v122, v123, sizeof(v122));
          if (v39)
          {
            MEMORY[0x1AC5B48A0](1);
            v42 = OUTLINED_FUNCTION_18();
            sub_1AC4578F4(v42, v43);

            sub_1AC51EEB8();
          }

          else
          {
            v44 = OUTLINED_FUNCTION_18();
            sub_1AC4578F4(v44, v45);
          }

          if (v41 != 2)
          {
            MEMORY[0x1AC5B48A0](2);
            sub_1AC51F488();
          }

          v36 += 40;
          switch(v38 >> 62)
          {
            case 1uLL:
              v46 = v37;
              v47 = v37 >> 32;
              goto LABEL_40;
            case 2uLL:
              v46 = *(v37 + 16);
              v47 = *(v37 + 24);
LABEL_40:
              if (v46 != v47)
              {
                goto LABEL_41;
              }

              goto LABEL_42;
            case 3uLL:
              goto LABEL_42;
            default:
              if ((v38 & 0xFF000000000000) == 0)
              {
                goto LABEL_42;
              }

LABEL_41:
              sub_1AC51EC58();
LABEL_42:
              v48 = OUTLINED_FUNCTION_18();
              sub_1AC4513F8(v48, v49);

              if (!v35)
              {
                memcpy(v124, v122, sizeof(v124));
                v8 = v104;
                v50 = v119;
                v28 = v110;
                v29 = v108;
                v11 = v107;
                if (v109)
                {
                  goto LABEL_45;
                }

                goto LABEL_46;
              }

              memcpy(v123, v122, sizeof(v123));
              --v35;
              break;
          }
        }
      }

      sub_1AC4578F4(v28, v29);

      sub_1AC4B39F0(v32, v31);

      v11 = v32;
      v8 = v25;
      v50 = v119;
      if (v30)
      {
LABEL_45:
        MEMORY[0x1AC5B48A0](3);
        sub_1AC51EEB8();
      }

LABEL_46:
      if ((v116 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48D0](v111);
      }

      if ((v117 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48D0](v112);
      }

      if ((v118 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](6);
        if ((v113 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v51 = v113;
        }

        else
        {
          v51 = 0;
        }

        MEMORY[0x1AC5B48D0](v51);
      }

      if (v120 >> 60 != 15)
      {
        MEMORY[0x1AC5B48A0](7);
        sub_1AC4578F4(v11, v120);
        OUTLINED_FUNCTION_38_7();
        sub_1AC51EC58();
        v52 = OUTLINED_FUNCTION_44();
        sub_1AC45AC74(v52, v53);
      }

      if (v33)
      {
        MEMORY[0x1AC5B48A0](8);
        sub_1AC51EEB8();
      }

      v24 = v50 + 1;
      switch(v29 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_66;
        case 2uLL:
          v54 = *(v28 + 16);
          v55 = *(v28 + 24);
LABEL_66:
          if (v54 != v55)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        case 3uLL:
          goto LABEL_68;
        default:
          if ((v29 & 0xFF000000000000) == 0)
          {
            goto LABEL_68;
          }

LABEL_67:
          sub_1AC51EC58();
LABEL_68:

          sub_1AC4513F8(v28, v29);

          v56 = OUTLINED_FUNCTION_44();
          sub_1AC45AC74(v56, v57);

          if (v24 != v106)
          {
            memcpy(v125, v124, sizeof(v125));
            continue;
          }

          memcpy(v126, v124, 0x48uLL);
          break;
      }

      goto LABEL_71;
    }

    break;
  }

  __break(1u);
LABEL_129:
  memcpy(v11, __src, 0x48uLL);
LABEL_130:
  OUTLINED_FUNCTION_61();
}

void sub_1AC50E9D0()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_37_6(v4, v5);
  MEMORY[0x1AC5B48A0](v6);
  v84 = *(v0 + 16);
  if (v84)
  {
    v72 = v1;
    OUTLINED_FUNCTION_64_2(v106);
    v7 = 0;
    for (i = v0 + 32; ; OUTLINED_FUNCTION_104_2(v106, v65, v66, v67, v68, v69, v70, v71, v72, v73, v75, v77, v79, v81, i, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0], v95[1], v95[2], v95[3], v95[4], v95[5], v95[6], v95[7], v95[8], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v97, v98, v99, v100, v101, v102, v103, v104[0]))
    {
      memcpy(__dst, (i + (v7 << 7)), 0x7EuLL);
      v8 = __dst[6];
      OUTLINED_FUNCTION_75_2(v104);
      if (v8)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485EEC(__dst, __src);
        OUTLINED_FUNCTION_27_8();
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485EEC(__dst, __src);
      }

      if (*(__dst[0] + 16) && (sub_1AC50EFF0(), v3))
      {
        MEMORY[0x1AC5B4BA0](v3);
        v3 = 0;
      }

      else
      {
        v9 = __dst[7];
        if (__dst[7])
        {
          v107 = v3;
          v74 = __dst[9];
          v76 = __dst[8];
          v10 = LOBYTE(__dst[11]);
          v11 = BYTE1(__dst[11]);
          v12 = BYTE2(__dst[11]);
          v78 = __dst[10];
          v80 = __dst[12];
          v82 = __dst[13];
          v13 = __dst[14];
          v14 = WORD2(__dst[15]);
          v15 = LODWORD(__dst[15]);
          MEMORY[0x1AC5B48A0](3);
          OUTLINED_FUNCTION_104_2(__src, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v80, v82, i, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0], v95[1], v95[2], v95[3], v95[4], v95[5], v95[6], v95[7], v95[8], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v97, v98, v99, v100, v101, v102, v103, v104[0]);
          if (v10 != 2)
          {
            MEMORY[0x1AC5B48A0](2);
            sub_1AC51F488();
          }

          if (v11 != 2)
          {
            MEMORY[0x1AC5B48A0](3);
            sub_1AC51F488();
          }

          if (v12 != 2)
          {
            MEMORY[0x1AC5B48A0](6);
            sub_1AC51F488();
          }

          if (v13)
          {
            v23 = v13;
            v24 = v15 | (v14 << 32);
            MEMORY[0x1AC5B48A0](7);
            memcpy(v85, __src, sizeof(v85));
            if (v24 != 4)
            {
              MEMORY[0x1AC5B48A0](1);
              MEMORY[0x1AC5B48A0](v24);
            }

            OUTLINED_FUNCTION_22_13();
            if (!v25)
            {
              MEMORY[0x1AC5B48A0](2);
              MEMORY[0x1AC5B48A0](BYTE1(v24));
            }

            OUTLINED_FUNCTION_22_13();
            if (!v25)
            {
              MEMORY[0x1AC5B48A0](3);
              MEMORY[0x1AC5B48A0](BYTE2(v24));
            }

            if (BYTE3(v24) != 3)
            {
              MEMORY[0x1AC5B48A0](4);
              MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v24)]);
            }

            OUTLINED_FUNCTION_22_13();
            if (!v25)
            {
              MEMORY[0x1AC5B48A0](5);
              MEMORY[0x1AC5B48A0](BYTE4(v24));
            }

            if (BYTE5(v24) != 3)
            {
              MEMORY[0x1AC5B48A0](6);
              MEMORY[0x1AC5B48A0](BYTE5(v24));
            }

            sub_1AC4B3394(&__dst[7], &v86, &qword_1EB5589B8, "R6");
            sub_1AC485860(v79, v81, v13);
            OUTLINED_FUNCTION_61_2();
            sub_1AC5175D4(v26, v27, v28, v13);
            v29 = v107;
            if (v107)
            {
              MEMORY[0x1AC5B4BA0](v107);
              v29 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_38_7();
              sub_1AC4937B8(v30, v31, v32);
            }

            v33 = OUTLINED_FUNCTION_44();
            sub_1AC485714(v33, v34, v23);
            memcpy(__src, v85, sizeof(__src));
          }

          else
          {
            memcpy(v85, &__dst[7], 0x46uLL);
            sub_1AC4B3294(v85, &v86);
            v29 = v107;
          }

          if (*(v9 + 16) && (v35 = v29, sub_1AC50D0A4(), v29) || (OUTLINED_FUNCTION_154(), v35 = v29, sub_1AC5175D4(v36, v37, v38, v77), v29))
          {
            v3 = 0;
            MEMORY[0x1AC5B4BA0](v35);
          }

          else
          {
            sub_1AC4937B8(__src, v75, v73);
            v3 = 0;
          }

          sub_1AC5165E8(&__dst[7], &qword_1EB5589B8);
          memcpy(v104, __src, sizeof(v104));
        }

        v39 = __dst[1];
        v40 = *(__dst[1] + 16);
        if (v40)
        {
          v108 = v3;
          MEMORY[0x1AC5B48A0](4);
          OUTLINED_FUNCTION_104_2(__src, v41, v42, v43, v44, v45, v46, v47, v72, v73, v75, v77, v79, v81, i, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v86, v87, v88, v89, v90, v91, v92, v93, v94, v95[0], v95[1], v95[2], v95[3], v95[4], v95[5], v95[6], v95[7], v95[8], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], v97, v98, v99, v100, v101, v102, v103, v104[0]);
          v48 = v40 - 1;
          v49 = (v39 + 60);
          while (1)
          {
            v50 = *(v49 - 28);
            v51 = *(v49 - 20);
            v52 = *(v49 - 3);
            v53 = *(v49 - 8);
            v54 = *(v49 - 1);
            v55 = *v49;
            memcpy(v95, __src, sizeof(v95));
            if ((v53 & 1) == 0)
            {
              MEMORY[0x1AC5B48A0](1);
              MEMORY[0x1AC5B48D0](v52);
            }

            if ((v55 & 1) == 0)
            {
              MEMORY[0x1AC5B48A0](2);
              MEMORY[0x1AC5B48D0](v54);
            }

            switch(v51 >> 62)
            {
              case 1uLL:
                v56 = v50;
                v57 = v50 >> 32;
                goto LABEL_51;
              case 2uLL:
                v56 = *(v50 + 16);
                v57 = *(v50 + 24);
LABEL_51:
                if (v56 != v57)
                {
                  goto LABEL_52;
                }

                goto LABEL_53;
              case 3uLL:
                goto LABEL_53;
              default:
                if ((v51 & 0xFF000000000000) == 0)
                {
                  goto LABEL_53;
                }

LABEL_52:
                sub_1AC4578F4(v50, v51);
                OUTLINED_FUNCTION_27_8();
                sub_1AC51EC58();
                sub_1AC4513F8(v50, v51);
LABEL_53:
                if (!v48)
                {
                  memcpy(v104, v95, sizeof(v104));
                  v3 = v108;
                  goto LABEL_56;
                }

                memcpy(__src, v95, sizeof(__src));
                --v48;
                v49 += 32;
                break;
            }
          }
        }

LABEL_56:
        v58 = __dst[2];
        v59 = *(__dst[2] + 16);
        if (v59)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](*(v58 + 16));
          v60 = (v58 + 40);
          do
          {
            v62 = *(v60 - 1);
            v61 = *v60;

            sub_1AC51EEB8();

            v60 += 2;
            --v59;
          }

          while (v59);
        }

        switch(__dst[4] >> 62)
        {
          case 1:
            OUTLINED_FUNCTION_73();
            goto LABEL_64;
          case 2:
            v63 = *(__dst[3] + 16);
            v64 = *(__dst[3] + 24);
LABEL_64:
            if (v63 != v64)
            {
              goto LABEL_65;
            }

            break;
          case 3:
            break;
          default:
            if ((__dst[4] & 0xFF000000000000) == 0)
            {
              break;
            }

LABEL_65:
            sub_1AC51EC58();
            break;
        }
      }

      ++v7;
      sub_1AC485F48(__dst);
      if (v7 == v84)
      {
        break;
      }
    }

    memcpy(v72, v104, 0x48uLL);
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC50EFF0()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = v1;
  v7 = OUTLINED_FUNCTION_37_6(v5, v6);
  MEMORY[0x1AC5B48A0](v7);
  v8 = *(v0 + 16);
  if (v8)
  {
    memcpy(v82, v4, sizeof(v82));
    v9 = (v0 + 32);
    v10 = v8 - 1;
    v59 = v4;
    while (1)
    {
      memcpy(__dst, v9, 0x99uLL);
      v11 = __dst[3];
      OUTLINED_FUNCTION_75_2(__src);
      if (v11)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485910(__dst, v79);
        OUTLINED_FUNCTION_27_8();
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485910(__dst, v79);
      }

      if ((__dst[4] & 0x100000000) == 0)
      {
        v12 = SLODWORD(__dst[4]);
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48D0](v12);
      }

      v13 = __dst[5];
      if (!__dst[5])
      {
        goto LABEL_56;
      }

      v68 = v10;
      v69 = v9;
      v60 = __dst[7];
      v61 = __dst[6];
      v14 = LOBYTE(__dst[9]);
      v15 = __dst[10];
      v62 = __dst[8];
      v63 = __dst[11];
      v16 = __dst[12];
      v17 = WORD2(__dst[13]);
      v18 = LODWORD(__dst[13]);
      HIDWORD(v66) = BYTE6(__dst[13]);
      v64 = __dst[14];
      v67 = __dst[15];
      v83 = __dst[16];
      v65 = __dst[17];
      v19 = __dst[18];
      v70 = SLOBYTE(__dst[19]);
      MEMORY[0x1AC5B48A0](3);
      memcpy(v78, __src, sizeof(v78));
      if (v14 != 2)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC51F488();
      }

      if (v16)
      {
        v20 = v18 | (v17 << 32);
        MEMORY[0x1AC5B48A0](2);
        OUTLINED_FUNCTION_88_2(v71, v21, v22, v23, v24, v25, v26, v27, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77, v78[0]);
        v28 = v19;
        if (v20 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v20);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v29)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v20));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v29)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v20));
        }

        if (BYTE3(v20) != 3)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v20)]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v29)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v20));
        }

        if (BYTE5(v20) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v20));
        }

        sub_1AC4B3394(&__dst[5], v79, &qword_1EB5589C0, &qword_1AC520E30);
        sub_1AC485860(v15, v63, v16);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v30, v31, v32, v16);
        if (v3)
        {
          v4 = v59;
          MEMORY[0x1AC5B4BA0](v3);
          v3 = 0;
        }

        else
        {
          sub_1AC4937B8(v71, v15, v63);
          v3 = 0;
          v4 = v59;
        }

        sub_1AC485714(v15, v63, v16);
        memcpy(v78, v71, sizeof(v78));
      }

      else
      {
        memcpy(v79, &__dst[5], 0x71uLL);
        sub_1AC4B32FC(v79, v71);
        v4 = v59;
        v28 = v19;
      }

      v10 = v68;
      v9 = v69;
      v33 = v83;
      v34 = v67;
      if (HIDWORD(v66) != 2)
      {
        MEMORY[0x1AC5B48A0](3);
        v9 = v69;
        v10 = v68;
        v34 = v67;
        v33 = v83;
        sub_1AC51F488();
      }

      if (v28 != 1)
      {
        MEMORY[0x1AC5B48A0](4);
        OUTLINED_FUNCTION_88_2(v79, v35, v36, v37, v38, v39, v40, v41, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77, v78[0]);
        if (v33 != 12)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](qword_1AC52BD98[v33]);
        }

        if ((v33 & 0xFF00) != 0xC00)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](qword_1AC52BD98[v33 >> 8]);
        }

        if (v28)
        {
          MEMORY[0x1AC5B48A0](3);
          v42 = v64;
          sub_1AC4578F4(v64, v34);

          sub_1AC51EEB8();
        }

        else
        {
          v42 = v64;
          sub_1AC4578F4(v64, v34);
        }

        if (v70 != 12)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BD98[v70]);
          v42 = v64;
        }

        switch(v34 >> 62)
        {
          case 1uLL:
            v43 = v42;
            v44 = v42 >> 32;
            goto LABEL_46;
          case 2uLL:
            v43 = *(v42 + 16);
            v44 = *(v42 + 24);
LABEL_46:
            if (v43 != v44)
            {
              goto LABEL_47;
            }

            goto LABEL_48;
          case 3uLL:
            goto LABEL_48;
          default:
            if ((v34 & 0xFF000000000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_47:
            sub_1AC51EC58();
LABEL_48:
            sub_1AC4B39AC(v42, v34, v33, v65, v28);
            memcpy(v78, v79, sizeof(v78));
            break;
        }
      }

      if (*(v13 + 16))
      {
        sub_1AC50D0A4();
        if (v3)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_154();
      v45 = v3;
      sub_1AC5175D4(v46, v47, v48, v62);
      if (v3)
      {
        goto LABEL_54;
      }

      sub_1AC4937B8(v78, v61, v60);
LABEL_55:
      sub_1AC5165E8(&__dst[5], &qword_1EB5589C0);
      OUTLINED_FUNCTION_88_2(__src, v49, v50, v51, v52, v53, v54, v55, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v72, v73, v74, v75, v76, v77, v78[0]);
LABEL_56:
      switch(__dst[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_61;
        case 2:
          v56 = *(__dst[0] + 16);
          v57 = *(__dst[0] + 24);
LABEL_61:
          if (v56 != v57)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        case 3:
          goto LABEL_63;
        default:
          if ((__dst[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_62:
          sub_1AC51EC58();
LABEL_63:
          sub_1AC48596C(__dst);
          if (!v10)
          {
            memcpy(v4, __src, 0x48uLL);
            goto LABEL_66;
          }

          memcpy(v82, __src, sizeof(v82));
          --v10;
          v9 += 160;
          break;
      }
    }

    v45 = v3;
LABEL_54:
    v3 = 0;
    MEMORY[0x1AC5B4BA0](v45);
    goto LABEL_55;
  }

LABEL_66:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC50F660(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  result = MEMORY[0x1AC5B48A0](a2);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_64_2(v37);
    v16 = v7 - 1;
    for (i = (a1 + 48); ; i += 3)
    {
      v18 = *(i - 2);
      v19 = *(i - 1);
      v20 = *i;
      OUTLINED_FUNCTION_78_1(v8, v9, v10, v11, v12, v13, v14, v15, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v37[0]);
      v21 = OUTLINED_FUNCTION_19();
      sub_1AC4578F4(v21, v22);

      sub_1AC4A6904(v23);
      if (v4)
      {
        MEMORY[0x1AC5B4BA0](v4);
        v4 = 0;
      }

      else
      {
        switch(v19 >> 62)
        {
          case 1uLL:
            OUTLINED_FUNCTION_94();
            goto LABEL_12;
          case 2uLL:
            v34 = *(v18 + 16);
            v35 = *(v18 + 24);
LABEL_12:
            if (v34 != v35)
            {
              goto LABEL_13;
            }

            break;
          case 3uLL:
            break;
          default:
            if ((v19 & 0xFF000000000000) == 0)
            {
              break;
            }

LABEL_13:
            OUTLINED_FUNCTION_28_8();
            sub_1AC51EC58();
            break;
        }
      }

      v24 = OUTLINED_FUNCTION_19();
      sub_1AC4513F8(v24, v25);

      if (!v16)
      {
        break;
      }

      v8 = OUTLINED_FUNCTION_79_1(v26, v27, v28, v29, v30, v31, v32, v33, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v37[0]);
      --v16;
    }

    return memcpy(v2, v36, 0x48uLL);
  }

  return result;
}

void sub_1AC50F784()
{
  OUTLINED_FUNCTION_59_3();
  v2 = *(v1 + 16);
  if (v2)
  {
    v43 = v0;
    v3 = OUTLINED_FUNCTION_83_2(v42);
    v11 = v2 - 1;
    v12 = (v1 + 60);
    while (1)
    {
      v13 = *(v12 - 28);
      v14 = *(v12 - 20);
      v15 = *(v12 - 3);
      v16 = *(v12 - 8);
      v17 = *(v12 - 1);
      v18 = *v12;
      v19 = OUTLINED_FUNCTION_78_1(v3, v4, v5, v6, v7, v8, v9, v10, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]);
      if ((v16 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](1);
        v19 = MEMORY[0x1AC5B48D0](v15);
      }

      if ((v18 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](2);
        v19 = MEMORY[0x1AC5B48D0](v17);
      }

      switch(v14 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_12;
        case 2uLL:
          v27 = *(v13 + 16);
          v28 = *(v13 + 24);
LABEL_12:
          if (v27 != v28)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        case 3uLL:
          goto LABEL_14;
        default:
          if ((v14 & 0xFF000000000000) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          v29 = OUTLINED_FUNCTION_19();
          sub_1AC4578F4(v29, v30);
          OUTLINED_FUNCTION_28_8();
          sub_1AC51EC58();
          v31 = OUTLINED_FUNCTION_19();
          v19 = sub_1AC4513F8(v31, v32);
LABEL_14:
          if (!v11)
          {
            OUTLINED_FUNCTION_77_1(v19, &v33);
            return;
          }

          v3 = OUTLINED_FUNCTION_79_1(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]);
          --v11;
          v12 += 32;
          break;
      }
    }
  }
}

void sub_1AC50F8C4()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v6 = OUTLINED_FUNCTION_37_6(v4, v5);
  MEMORY[0x1AC5B48A0](v6);
  v7 = *(v0 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_64_2(v46);
    v8 = (v0 + 32);
    v9 = v7 - 1;
    while (1)
    {
      memcpy(v45, v8, 0x5EuLL);
      v10 = v45[3];
      OUTLINED_FUNCTION_75_2(__src);
      if (v10)
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485B7C(v45, __dst);
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485B7C(v45, __dst);
      }

      v11 = v45[4];
      if (!v45[4])
      {
        goto LABEL_33;
      }

      v47 = v9;
      v38 = v45[6];
      v39 = v45[5];
      v40 = v45[7];
      v12 = v45[10];
      v13 = WORD2(v45[11]);
      v14 = LODWORD(v45[11]);
      MEMORY[0x1AC5B48A0](2);
      memcpy(__dst, __src, 0x48uLL);
      if (v12)
      {
        v15 = v14 | (v13 << 32);
        MEMORY[0x1AC5B48A0](1);
        memcpy(v42, __dst, sizeof(v42));
        if (v15 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v15);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v15));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v15));
        }

        OUTLINED_FUNCTION_69_2();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[v15]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v16)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v15));
        }

        if (BYTE5(v15) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v15));
        }

        sub_1AC4B3394(&v45[4], v41, &qword_1EB5580C0, &unk_1AC520E20);
        v17 = OUTLINED_FUNCTION_100();
        sub_1AC485860(v17, v18, v12);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v19, v20, v21, v12);
        if (v3)
        {
          v9 = v47;
          MEMORY[0x1AC5B4BA0](v3);
          v3 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_175();
          sub_1AC4937B8(v27, v28, v29);
          v9 = v47;
        }

        v30 = OUTLINED_FUNCTION_100();
        sub_1AC485714(v30, v31, v12);
        memcpy(__dst, v42, 0x48uLL);
      }

      else
      {

        v22 = OUTLINED_FUNCTION_24();
        sub_1AC4578F4(v22, v23);

        v24 = OUTLINED_FUNCTION_20_14();
        sub_1AC485860(v24, v25, v26);
        v9 = v47;
      }

      if (*(v11 + 16))
      {
        sub_1AC50D0A4();
        if (v3)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_154();
      v32 = v3;
      sub_1AC5175D4(v33, v34, v35, v40);
      if (v3)
      {
        goto LABEL_31;
      }

      sub_1AC4937B8(__dst, v39, v38);
LABEL_32:
      sub_1AC5165E8(&v45[4], &qword_1EB5580C0);
      memcpy(__src, __dst, sizeof(__src));
LABEL_33:
      switch(v45[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_38;
        case 2:
          v36 = *(v45[0] + 16);
          v37 = *(v45[0] + 24);
LABEL_38:
          if (v36 != v37)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 3:
          goto LABEL_40;
        default:
          if ((v45[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_40;
          }

LABEL_39:
          sub_1AC51EC58();
LABEL_40:
          sub_1AC485BD8(v45);
          if (!v9)
          {
            memcpy(v1, __src, 0x48uLL);
            goto LABEL_43;
          }

          memcpy(v46, __src, 0x48uLL);
          --v9;
          v8 += 96;
          break;
      }
    }

    v32 = v3;
LABEL_31:
    v3 = 0;
    MEMORY[0x1AC5B4BA0](v32);
    goto LABEL_32;
  }

LABEL_43:
  OUTLINED_FUNCTION_61();
}

void sub_1AC50FCB4()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v4 = v1;
  v7 = OUTLINED_FUNCTION_37_6(v5, v6);
  MEMORY[0x1AC5B48A0](v7);
  v8 = *(v0 + 16);
  if (v8)
  {
    memcpy(v74, v1, sizeof(v74));
    v9 = 0;
    v62 = v0 + 32;
    v50 = v8;
    v51 = v1;
    while (1)
    {
      memcpy(__dst, (v62 + 104 * v9), 0x67uLL);
      v10 = SLODWORD(__dst[2]);
      v11 = BYTE4(__dst[2]);
      OUTLINED_FUNCTION_75_2(__src);
      if ((v11 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48D0](v10);
      }

      if ((__dst[3] & 0x100000000) == 0)
      {
        v12 = SLODWORD(__dst[3]);
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48D0](v12);
      }

      v13 = __dst[4];
      if (__dst[4])
      {
        break;
      }

      sub_1AC485C2C(__dst, v71);
LABEL_59:
      ++v9;
      switch(__dst[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_64;
        case 2:
          v48 = *(__dst[0] + 16);
          v49 = *(__dst[0] + 24);
LABEL_64:
          if (v48 != v49)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        case 3:
          goto LABEL_66;
        default:
          if ((__dst[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_66;
          }

LABEL_65:
          sub_1AC51EC58();
LABEL_66:
          sub_1AC485C88(__dst);
          if (v9 == v8)
          {
            memcpy(v4, __src, 0x48uLL);
            goto LABEL_69;
          }

          memcpy(v74, __src, sizeof(v74));
          break;
      }
    }

    v14 = __dst[5];
    v52 = __dst[7];
    v53 = __dst[6];
    v60 = __dst[10];
    v61 = __dst[9];
    v15 = WORD2(__dst[12]);
    v58 = __dst[8];
    v59 = LODWORD(__dst[12]);
    v63 = BYTE6(__dst[12]);
    v64 = __dst[11];
    MEMORY[0x1AC5B48A0](3);
    memcpy(v70, __src, sizeof(v70));
    v16 = *(v14 + 16);
    if (v16)
    {
      v54 = v15;
      v55 = v13;
      v56 = v9;
      v57 = v3;
      MEMORY[0x1AC5B48A0](2);
      memcpy(v69, v70, sizeof(v69));
      sub_1AC485C2C(__dst, v71);
      sub_1AC4B3394(&__dst[4], v71, &qword_1EB5589B0, &qword_1AC520E18);
      v75 = v16 - 1;
      v17 = (v14 + 89);
      while (1)
      {
        v18 = *(v17 - 57);
        v19 = *(v17 - 49);
        v20 = *(v17 - 41);
        v21 = *(v17 - 37);
        v22 = *(v17 - 33);
        v23 = *(v17 - 25);
        v65 = *(v17 - 17);
        v24 = *(v17 - 9);
        v25 = *(v17 - 1);
        v66 = *v17;
        memcpy(v68, v69, sizeof(v68));
        if ((v21 & 1) == 0)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48D0](v20);
        }

        if (!v23)
        {
          break;
        }

        MEMORY[0x1AC5B48A0](2);
        v26 = OUTLINED_FUNCTION_22_0();
        sub_1AC4578F4(v26, v27);

        sub_1AC51EEB8();
        if (v24)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (v25 != 2)
        {
          MEMORY[0x1AC5B48A0](5);
          sub_1AC51F488();
        }

        if (v66 != 2)
        {
          MEMORY[0x1AC5B48A0](6);
          sub_1AC51F488();
        }

        v17 += 64;
        switch(v19 >> 62)
        {
          case 1uLL:
            v30 = v18;
            v31 = v18 >> 32;
            goto LABEL_26;
          case 2uLL:
            v30 = *(v18 + 16);
            v31 = *(v18 + 24);
LABEL_26:
            if (v30 != v31)
            {
              goto LABEL_27;
            }

            goto LABEL_28;
          case 3uLL:
            goto LABEL_28;
          default:
            if ((v19 & 0xFF000000000000) == 0)
            {
              goto LABEL_28;
            }

LABEL_27:
            sub_1AC51EC58();
LABEL_28:
            v32 = OUTLINED_FUNCTION_22_0();
            sub_1AC4513F8(v32, v33);

            if (!v75)
            {
              memcpy(v70, v68, sizeof(v70));
              v8 = v50;
              v4 = v51;
              v9 = v56;
              v3 = v57;
              v15 = v54;
              v13 = v55;
              goto LABEL_33;
            }

            memcpy(v69, v68, sizeof(v69));
            --v75;
            break;
        }
      }

      v28 = OUTLINED_FUNCTION_22_0();
      sub_1AC4578F4(v28, v29);

      if (!v24)
      {
        goto LABEL_15;
      }

LABEL_14:
      MEMORY[0x1AC5B48A0](3);
      sub_1AC51EEB8();
      goto LABEL_15;
    }

    sub_1AC485C2C(__dst, v71);
    sub_1AC4B3394(&__dst[4], v71, &qword_1EB5589B0, &qword_1AC520E18);
LABEL_33:
    if (v63 != 2)
    {
      MEMORY[0x1AC5B48A0](3);
      MEMORY[0x1AC5B48A0](v63 & 1);
    }

    if (v64)
    {
      v34 = v59 | (v15 << 32);
      MEMORY[0x1AC5B48A0](50);
      memcpy(v71, v70, 0x48uLL);
      if (v34 != 4)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48A0](v34);
      }

      OUTLINED_FUNCTION_22_13();
      if (!v35)
      {
        MEMORY[0x1AC5B48A0](2);
        MEMORY[0x1AC5B48A0](BYTE1(v34));
      }

      OUTLINED_FUNCTION_22_13();
      if (!v35)
      {
        MEMORY[0x1AC5B48A0](3);
        MEMORY[0x1AC5B48A0](BYTE2(v34));
      }

      if (BYTE3(v34) != 3)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48A0](qword_1AC52BDF8[SBYTE3(v34)]);
      }

      OUTLINED_FUNCTION_22_13();
      if (!v35)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48A0](BYTE4(v34));
      }

      if (BYTE5(v34) != 3)
      {
        MEMORY[0x1AC5B48A0](6);
        MEMORY[0x1AC5B48A0](BYTE5(v34));
      }

      v69[0] = v61;
      v69[1] = v60;
      v69[2] = v64;
      LODWORD(v69[3]) = v34;
      WORD2(v69[3]) = WORD2(v34);
      sub_1AC4AEF40(v69, v67);
      OUTLINED_FUNCTION_61_2();
      sub_1AC5175D4(v36, v37, v38, v64);
      if (v3)
      {
        MEMORY[0x1AC5B4BA0](v3);
        v3 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_38_7();
        sub_1AC4937B8(v39, v40, v41);
      }

      v42 = OUTLINED_FUNCTION_44();
      sub_1AC485714(v42, v43, v64);
      memcpy(v70, v71, sizeof(v70));
    }

    if (*(v13 + 16) && (sub_1AC50D0A4(), v3))
    {
      v44 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_154();
      v44 = v3;
      sub_1AC5175D4(v45, v46, v47, v58);
      if (!v3)
      {
        sub_1AC4937B8(v70, v53, v52);
LABEL_58:
        sub_1AC5165E8(&__dst[4], &qword_1EB5589B0);
        memcpy(__src, v70, sizeof(__src));
        goto LABEL_59;
      }
    }

    v3 = 0;
    MEMORY[0x1AC5B4BA0](v44);
    goto LABEL_58;
  }

LABEL_69:
  OUTLINED_FUNCTION_61();
}

void sub_1AC510320()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_76_2();
  v3 = *(v2 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_64_2(v37);
    v4 = (v2 + 32);
    v5 = v3 - 1;
    while (1)
    {
      memcpy(v36, v4, 0x56uLL);
      v6 = SLOBYTE(v36[2]);
      OUTLINED_FUNCTION_75_2(__src);
      if (v6 != 12)
      {
        MEMORY[0x1AC5B48A0](3);
        MEMORY[0x1AC5B48A0](qword_1AC52BD98[v6]);
      }

      v7 = v36[5];
      if (v36[5])
      {
        v8 = v36[3];
        v9 = v36[4];
        v10 = LODWORD(v36[6]) | (WORD2(v36[6]) << 32);
        v11 = LOBYTE(v36[6]);
        MEMORY[0x1AC5B48A0](4);
        memcpy(v32, __src, sizeof(v32));
        if (v11 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v10);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v10));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v10));
        }

        OUTLINED_FUNCTION_69_2();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[v11]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v10));
        }

        if (BYTE5(v10) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v10));
        }

        sub_1AC485664(v36, __dst);
        v13 = OUTLINED_FUNCTION_93_0();
        sub_1AC485860(v13, v14, v7);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v15, v16, v17, v7);
        if (v1)
        {
          MEMORY[0x1AC5B4BA0](v1);
        }

        else
        {
          sub_1AC4937B8(v32, v8, v9);
        }

        v1 = 0;
        v18 = OUTLINED_FUNCTION_93_0();
        sub_1AC485714(v18, v19, v7);
        memcpy(__src, v32, sizeof(__src));
      }

      else
      {
        sub_1AC485664(v36, __dst);
      }

      v20 = v36[9];
      if (v36[9])
      {
        v21 = v36[7];
        v22 = v36[8];
        v23 = LODWORD(v36[10]) | (WORD2(v36[10]) << 32);
        v24 = LOBYTE(v36[10]);
        MEMORY[0x1AC5B48A0](5);
        memcpy(__dst, __src, 0x48uLL);
        if (v24 != 4)
        {
          MEMORY[0x1AC5B48A0](1);
          MEMORY[0x1AC5B48A0](v23);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](2);
          MEMORY[0x1AC5B48A0](BYTE1(v23));
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](3);
          MEMORY[0x1AC5B48A0](BYTE2(v23));
        }

        OUTLINED_FUNCTION_69_2();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](4);
          MEMORY[0x1AC5B48A0](qword_1AC52BDF8[v24]);
        }

        OUTLINED_FUNCTION_22_13();
        if (!v12)
        {
          MEMORY[0x1AC5B48A0](5);
          MEMORY[0x1AC5B48A0](BYTE4(v23));
        }

        if (BYTE5(v23) != 3)
        {
          MEMORY[0x1AC5B48A0](6);
          MEMORY[0x1AC5B48A0](BYTE5(v23));
        }

        v32[0] = v21;
        v32[1] = v22;
        v32[2] = v20;
        LODWORD(v32[3]) = v23;
        WORD2(v32[3]) = WORD2(v23);
        sub_1AC4AEF40(v32, v33);
        OUTLINED_FUNCTION_61_2();
        sub_1AC5175D4(v25, v26, v27, v20);
        if (v1)
        {
          MEMORY[0x1AC5B4BA0](v1);
        }

        else
        {
          sub_1AC4937B8(__dst, v21, v22);
        }

        v1 = 0;
        v28 = OUTLINED_FUNCTION_93_0();
        sub_1AC485714(v28, v29, v20);
        memcpy(__src, __dst, sizeof(__src));
      }

      switch(v36[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_45;
        case 2:
          v30 = *(v36[0] + 16);
          v31 = *(v36[0] + 24);
LABEL_45:
          if (v30 != v31)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        case 3:
          goto LABEL_47;
        default:
          if ((v36[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_47;
          }

LABEL_46:
          sub_1AC51EC58();
LABEL_47:
          sub_1AC4856C0(v36);
          if (!v5)
          {
            memcpy(v0, __src, 0x48uLL);
            goto LABEL_50;
          }

          memcpy(v37, __src, 0x48uLL);
          --v5;
          v4 += 88;
          break;
      }
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC510784(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v35 = *(v2 + 16);
  if (v35)
  {
    v33 = v3;
    OUTLINED_FUNCTION_64_2(__src);
    v6 = 0;
    v34 = v2 + 32;
    while (1)
    {
      v42 = v6;
      v7 = (v34 + 56 * v6);
      v9 = *v7;
      v8 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = v7[4];
      v13 = *(v7 + 44);
      v36 = *(v7 + 10);
      v37 = *(v7 + 12);
      v38 = *(v7 + 52);
      v39 = *(v7 + 53);
      memcpy(__dst, __src, sizeof(__dst));
      v14 = *(v9 + 16);
      if (v14)
      {
        MEMORY[0x1AC5B48A0](1);
        MEMORY[0x1AC5B48A0](*(v9 + 16));
        v15 = (v9 + 32);
        do
        {
          v16 = *v15++;
          sub_1AC51F498();
          --v14;
        }

        while (v14);
      }

      if (!v12)
      {
        break;
      }

      MEMORY[0x1AC5B48A0](2);

      v17 = OUTLINED_FUNCTION_100();
      sub_1AC4578F4(v17, v18);

      sub_1AC51EEB8();
      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      if ((v38 & 1) == 0)
      {
        MEMORY[0x1AC5B48A0](4);
        MEMORY[0x1AC5B48D0](v37);
      }

      if (v39 != 3)
      {
        MEMORY[0x1AC5B48A0](5);
        MEMORY[0x1AC5B48A0](v39);
      }

      v6 = v42 + 1;
      switch(v11 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_20;
        case 2uLL:
          v21 = *(v8 + 16);
          v22 = *(v8 + 24);
LABEL_20:
          if (v21 != v22)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        case 3uLL:
          goto LABEL_22;
        default:
          if ((v11 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          OUTLINED_FUNCTION_175();
          sub_1AC51EC58();
LABEL_22:

          v23 = OUTLINED_FUNCTION_100();
          sub_1AC4513F8(v23, v24);

          if (v6 == v35)
          {
            return OUTLINED_FUNCTION_86_2(v25, __dst, v26, v27, v28, v29, v30, v31, v32, v33);
          }

          memcpy(__src, __dst, 0x48uLL);
          break;
      }
    }

    v19 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v19, v20);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v36);
    goto LABEL_9;
  }

  return result;
}

void sub_1AC5109CC()
{
  v2 = v0;
  OUTLINED_FUNCTION_59_3();
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_83_2(__src);
    v4 = (v1 + 32);
    for (i = v3 - 1; ; --i)
    {
      memcpy(__dst, v4, 0xB1uLL);
      memcpy(v8, __src, sizeof(v8));
      sub_1AC485F9C(__dst, &v7);
      sub_1AC4A49BC();
      if (v2)
      {
        MEMORY[0x1AC5B4BA0](v2);
        v2 = 0;
      }

      v6 = sub_1AC485FF8(__dst);
      if (!i)
      {
        break;
      }

      memcpy(__src, v8, sizeof(__src));
      v4 += 184;
    }

    OUTLINED_FUNCTION_77_1(v6, v8);
  }
}

uint64_t *sub_1AC510AA4(uint64_t *result, void *a2)
{
  v4 = *result;
  v5 = result[1];
  v6 = result[2];
  v7 = *(result + 24);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 5)
  {
    MEMORY[0x1AC5B48A0](6);
    OUTLINED_FUNCTION_64_2(__src);
    v8 = OUTLINED_FUNCTION_52_3();
    sub_1AC485440(v8, v9, v10, v11);
    OUTLINED_FUNCTION_94_2();
    sub_1AC4F85C0(v12, v13);
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    v14 = OUTLINED_FUNCTION_52_3();
    sub_1AC4854E8(v14, v15, v16, v7);
    return memcpy(a2, __src, 0x48uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Google_Protobuf_Type.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Type.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_Type.oneofs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_Type.options.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void Google_Protobuf_Type.sourceContext.getter(void *a1@<X8>)
{
  v2 = v1[12];
  if (v2)
  {
    v3 = v1[11];
    v4 = v1[12];
    v5 = v1[13];
    v6 = v1[14];
  }

  OUTLINED_FUNCTION_46_7(v1[11], v2, v1[13], v1[14], a1);
}

double sub_1AC510D48@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_Type.sourceContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  result = *&v5;
  *(a1 + 16) = v5;
  return result;
}

double sub_1AC510D8C(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5.n128_u64[0] = *a1;
  v5.n128_u64[1] = v1;
  v6 = v2;
  v7 = v3;

  sub_1AC4578F4(v2, v3);
  *&result = Google_Protobuf_Type.sourceContext.setter(&v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Type.sourceContext.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_1AC4802C0(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = v5;
  *(v1 + 88) = v5;
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

void (*Google_Protobuf_Type.sourceContext.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  OUTLINED_FUNCTION_95_2();
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v14 = v10;
    v16 = v11;
  }

  if (!v8)
  {
    v13 = v12;
  }

  *v3 = v15;
  v3[1] = v14;
  v3[2] = v16;
  v3[3] = v13;
  sub_1AC480274(v9, v10, v11, v12);
  return sub_1AC510EB8;
}

void sub_1AC510EB8(uint64_t **a1)
{
  OUTLINED_FUNCTION_92_2(a1);
  v7 = v5[11];
  v8 = v5[12];
  v9 = v5[13];
  v10 = v5[14];
  if (v11)
  {

    v12 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v12, v13);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v14, v15, v16, v17);
    v5[11] = v6;
    v5[12] = v4;
    v5[13] = v3;
    v5[14] = v2;
    v18 = v1[1];
    v19 = v1[2];
    v20 = v1[3];

    v21 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v23, v24, v25, v26);
    v5[11] = v6;
    v5[12] = v4;
    v5[13] = v3;
    v5[14] = v2;
  }

  free(v1);
}

Swift::Void __swiftcall Google_Protobuf_Type.clearSourceContext()()
{
  sub_1AC4802C0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
}

void Google_Protobuf_Type.syntax.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_84_0(a1);
}

uint64_t Google_Protobuf_Type.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Google_Protobuf_Type.edition.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Type.edition.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Google_Protobuf_Type.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

double Google_Protobuf_Type.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void Google_Protobuf_Field.kind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_84_0(a1);
}

uint64_t Google_Protobuf_Field.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Google_Protobuf_Field.cardinality.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_84_0(a1);
}

uint64_t Google_Protobuf_Field.cardinality.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Google_Protobuf_Field.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Field.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.typeURL.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Field.typeURL.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.options.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Google_Protobuf_Field.jsonName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Field.jsonName.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.defaultValue.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Field.defaultValue.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Google_Protobuf_Field.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

double Google_Protobuf_Field.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 112) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_Enum.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Enum.enumvalue.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_Enum.options.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void Google_Protobuf_Enum.sourceContext.getter(void *a1@<X8>)
{
  v2 = v1[11];
  if (v2)
  {
    v3 = v1[10];
    v4 = v1[11];
    v5 = v1[12];
    v6 = v1[13];
  }

  OUTLINED_FUNCTION_46_7(v1[10], v2, v1[12], v1[13], a1);
}

double sub_1AC5116B0@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_Enum.sourceContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  result = *&v5;
  *(a1 + 16) = v5;
  return result;
}

double sub_1AC5116F4(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5.n128_u64[0] = *a1;
  v5.n128_u64[1] = v1;
  v6 = v2;
  v7 = v3;

  sub_1AC4578F4(v2, v3);
  *&result = Google_Protobuf_Enum.sourceContext.setter(&v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Enum.sourceContext.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_1AC4802C0(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  result = v5;
  *(v1 + 80) = v5;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

void (*Google_Protobuf_Enum.sourceContext.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  OUTLINED_FUNCTION_95_2();
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v14 = v10;
    v16 = v11;
  }

  if (!v8)
  {
    v13 = v12;
  }

  *v3 = v15;
  v3[1] = v14;
  v3[2] = v16;
  v3[3] = v13;
  sub_1AC480274(v9, v10, v11, v12);
  return sub_1AC511820;
}

void sub_1AC511820(uint64_t **a1)
{
  OUTLINED_FUNCTION_92_2(a1);
  v7 = v5[10];
  v8 = v5[11];
  v9 = v5[12];
  v10 = v5[13];
  if (v11)
  {

    v12 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v12, v13);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v14, v15, v16, v17);
    v5[10] = v6;
    v5[11] = v4;
    v5[12] = v3;
    v5[13] = v2;
    v18 = v1[1];
    v19 = v1[2];
    v20 = v1[3];

    v21 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v23, v24, v25, v26);
    v5[10] = v6;
    v5[11] = v4;
    v5[12] = v3;
    v5[13] = v2;
  }

  free(v1);
}

Swift::Void __swiftcall Google_Protobuf_Enum.clearSourceContext()()
{
  sub_1AC4802C0(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
}

void Google_Protobuf_Enum.syntax.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_84_0(a1);
}

uint64_t Google_Protobuf_Enum.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Google_Protobuf_Enum.edition.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Enum.edition.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Google_Protobuf_Enum.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

double Google_Protobuf_Enum.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 64) = xmmword_1AC51F990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

uint64_t Google_Protobuf_EnumValue.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_EnumValue.options.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_EnumValue.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

double Google_Protobuf_EnumValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_Option.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Option.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  if (v5)
  {
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
  }

  else
  {
    *a1 = xmmword_1AC51F990;
    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    a1[2] = qword_1ED6E4C40;
  }

  return sub_1AC4852EC(v4, v3, v5);
}

double sub_1AC511CC4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[6];
  v10 = *a1;
  v11 = v3;
  v5 = *(a1 + 2);
  v12 = *(a1 + 1);
  v13 = v5;
  v14 = v4;
  Google_Protobuf_Option.value.getter(&v8);
  v6 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v6;
  return result;
}

double sub_1AC511D24(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4.n128_u64[0] = *a1;
  v4.n128_u64[1] = v1;
  v5 = v2;
  sub_1AC4578F4(v4.n128_i64[0], v1);

  *&result = Google_Protobuf_Option.value.setter(&v4).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Option.value.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1AC48532C(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v4;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

uint64_t (*Google_Protobuf_Option.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  if (v5)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }

  else
  {
    *a1 = xmmword_1AC51F990;
    if (qword_1ED6E3410 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    a1[2] = qword_1ED6E4C40;
  }

  sub_1AC4852EC(v3, v4, v5);
  return sub_1AC511E68;
}

uint64_t sub_1AC511E68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  if (a2)
  {
    v9 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v9, v10);

    OUTLINED_FUNCTION_28_8();
    sub_1AC48532C(v11, v12, v13);
    v5[4] = v3;
    v5[5] = v2;
    v5[6] = v4;
    v14 = OUTLINED_FUNCTION_24();
    sub_1AC4513F8(v14, v15);
  }

  else
  {
    v17 = v5[4];
    OUTLINED_FUNCTION_28_8();
    result = sub_1AC48532C(v18, v19, v20);
    v5[4] = v3;
    v5[5] = v2;
    v5[6] = v4;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_Option.clearValue()()
{
  sub_1AC48532C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t Google_Protobuf_Option.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

double Google_Protobuf_Option.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static Google_Protobuf_Syntax._protobuf_nameMap.getter()
{
  if (qword_1EB557F18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559D40);
}

uint64_t static Google_Protobuf_Type._protobuf_nameMap.getter()
{
  if (qword_1EB557F20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559D60);
}

uint64_t Google_Protobuf_Type.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    result = v5(v6);
    if (v3 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_12;
      case 2:
        v19 = OUTLINED_FUNCTION_7();
        sub_1AC512224(v19, v20, v21, v22);
        break;
      case 3:
        v13 = *(v4 + 352);
        OUTLINED_FUNCTION_36_0();
        v14();
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_7();
        sub_1AC5122A4(v15, v16, v17, v18);
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC480CB4(v9, v10, v11, v12);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_7();
        sub_1AC512324(v23, v24, v25, v26);
        break;
      case 7:
        v27 = *(v4 + 336);
LABEL_12:
        OUTLINED_FUNCTION_36_0();
        v28();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC512224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC5126A8();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Field, v8, a3, a4);
}

uint64_t sub_1AC5122A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 32, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC512324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 40, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC5123A4()
{
  OUTLINED_FUNCTION_49();
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_11_0();
  if (v5)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v6 = v2[2];
  if (!*(v6 + 16) || (sub_1AC50C974(v6, 2), !v0))
  {
    if (*(v2[3] + 16))
    {
      MEMORY[0x1AC5B48A0](3);
      v7 = OUTLINED_FUNCTION_48();
      sub_1AC51AAC4(v7, v8);
    }

    v9 = v2[4];
    if (!*(v9 + 16) || (sub_1AC50C78C(v9, 4), !v0))
    {
      sub_1AC4811B0(v2, v1);
      if (!v0)
      {
        v10 = v2[5];
        if (v10)
        {
          v11 = *(v2 + 48);
          MEMORY[0x1AC5B48A0](6);
          v12 = 1;
          if (v10 == 2)
          {
            v12 = 2;
          }

          if (v11)
          {
            v13 = v12;
          }

          else
          {
            v13 = v10;
          }

          MEMORY[0x1AC5B48A0](v13);
        }

        v14 = v2[7];
        v15 = v2[8];
        OUTLINED_FUNCTION_11_0();
        if (v16)
        {
          MEMORY[0x1AC5B48A0](7);
          OUTLINED_FUNCTION_11_17();
          sub_1AC51EEB8();
        }

        sub_1AC4937B8(v1, v2[9], v2[10]);
      }
    }
  }
}

uint64_t Google_Protobuf_Type.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, sizeof(__dst));
  OUTLINED_FUNCTION_29();
  if (!v5 || (OUTLINED_FUNCTION_9_6(), result = v6(), (v0 = v2) == 0))
  {
    if (!*(__dst[2] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC5126A8(), OUTLINED_FUNCTION_28(), result = (v4)(), (v0 = v2) == 0))
    {
      if (!*(__dst[3] + 16) || (v8 = *(v3 + 256), v2 = v0, OUTLINED_FUNCTION_25_7(), result = v9(), !v0))
      {
        if (!*(__dst[4] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), result = (v4)(), (v0 = v2) == 0))
        {
          OUTLINED_FUNCTION_25_7();
          result = sub_1AC481280(v10, v11, v12, v13);
          if (!v0)
          {
            if (__dst[5])
            {
              OUTLINED_FUNCTION_101_1();
              OUTLINED_FUNCTION_28();
              v4();
            }

            OUTLINED_FUNCTION_29();
            if (v23)
            {
              v24 = *(v3 + 112);
              OUTLINED_FUNCTION_27();
              v14 = v25();
            }

            OUTLINED_FUNCTION_69_1(*&__dst[9], v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v22);
            OUTLINED_FUNCTION_36_0();
            UnknownStorage.traverse<A>(visitor:)(v26, v27, v28);
            return sub_1AC4513F8(v31, v32);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AC5126A8()
{
  result = qword_1EB559E40;
  if (!qword_1EB559E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E40);
  }

  return result;
}

uint64_t static Google_Protobuf_Type.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v111 = *(v3 + 48);
  v105 = *(v3 + 56);
  v103 = *(v3 + 64);
  v98 = *(v3 + 72);
  v97 = *(v3 + 80);
  v7 = *(v3 + 96);
  v112 = *(v3 + 40);
  v113 = *(v3 + 88);
  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 32);
  v109 = *(v2 + 40);
  v108 = *(v2 + 48);
  v99 = *(v2 + 64);
  v101 = *(v2 + 56);
  v95 = *(v2 + 80);
  v96 = *(v2 + 72);
  v13 = *(v2 + 96);
  v114 = *(v2 + 88);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v115 = *(v2 + 104);
  v116 = *(v2 + 112);
  if (!v14 && (sub_1AC51F3D8() & 1) == 0 || (sub_1AC477F88(v4, v11) & 1) == 0 || (sub_1AC47808C(v6, v10) & 1) == 0 || (sub_1AC477E08(v5, v12) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v13)
    {
      v15 = v113 == v114 && v7 == v13;
      if (v15 || (OUTLINED_FUNCTION_95(), (sub_1AC51F3D8() & 1) != 0))
      {
        v16 = OUTLINED_FUNCTION_3_31();
        sub_1AC480274(v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_93_0();
        sub_1AC480274(v20, v21, v115, v116);
        v22 = OUTLINED_FUNCTION_3_31();
        sub_1AC480274(v22, v23, v24, v25);
        v26 = OUTLINED_FUNCTION_65_2();
        sub_1AC4578F4(v26, v27);
        sub_1AC4578F4(v115, v116);
        v28 = OUTLINED_FUNCTION_65_2();
        v29 = MEMORY[0x1AC5B4070](v28);
        sub_1AC4513F8(v115, v116);
        v30 = OUTLINED_FUNCTION_65_2();
        sub_1AC4513F8(v30, v31);
        v32 = OUTLINED_FUNCTION_93_0();
        sub_1AC4802C0(v32, v33, v115, v116);

        v34 = OUTLINED_FUNCTION_65_2();
        sub_1AC4513F8(v34, v35);
        v36 = OUTLINED_FUNCTION_3_31();
        sub_1AC4802C0(v36, v37, v38, v39);
        if ((v29 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_24;
      }

      v81 = OUTLINED_FUNCTION_3_31();
      sub_1AC480274(v81, v82, v83, v84);
      v85 = OUTLINED_FUNCTION_93_0();
      sub_1AC480274(v85, v86, v115, v116);
      v87 = OUTLINED_FUNCTION_3_31();
      sub_1AC480274(v87, v88, v89, v90);
      v91 = OUTLINED_FUNCTION_93_0();
      sub_1AC4802C0(v91, v92, v115, v116);

      v93 = OUTLINED_FUNCTION_65_2();
      sub_1AC4513F8(v93, v94);
      v65 = OUTLINED_FUNCTION_3_31();
LABEL_22:
      sub_1AC4802C0(v65, v66, v67, v68);
      return 0;
    }

    v51 = OUTLINED_FUNCTION_3_31();
    sub_1AC480274(v51, v52, v53, v54);
    v48 = v114;
    v50 = v115;
    v49 = v116;
    sub_1AC480274(v114, 0, v115, v116);
    v55 = OUTLINED_FUNCTION_3_31();
    sub_1AC480274(v55, v56, v57, v58);

    v59 = OUTLINED_FUNCTION_65_2();
    sub_1AC4513F8(v59, v60);
LABEL_21:
    v61 = OUTLINED_FUNCTION_3_31();
    sub_1AC4802C0(v61, v62, v63, v64);
    v65 = v48;
    v66 = v13;
    v67 = v50;
    v68 = v49;
    goto LABEL_22;
  }

  sub_1AC480274(v113, 0, v8, v9);
  if (v13)
  {
    v48 = v114;
    v50 = v115;
    v49 = v116;
    sub_1AC480274(v114, v13, v115, v116);
    goto LABEL_21;
  }

  sub_1AC480274(v114, 0, v115, v116);
  sub_1AC4802C0(v113, 0, v8, v9);
LABEL_24:
  if (OUTLINED_FUNCTION_99_2(v40, v41, v42, v43, v44, v45, v46, v47, v95, v96, v97, v98, v99, v101, v103, v105, v107, v108, v109, v110, v111, v112))
  {
    v69 = v106 == v102 && v104 == v100;
    if (v69 || (sub_1AC51F3D8() & 1) != 0)
    {
      v70 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v70, v71);
      v72 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v72, v73);
      v74 = OUTLINED_FUNCTION_52();
      v75 = MEMORY[0x1AC5B4070](v74);
      v76 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v76, v77);
      v78 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v78, v79);
      return v75 & 1;
    }
  }

  return 0;
}

uint64_t Google_Protobuf_Type.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC5123A4();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC512BD0()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC5123A4();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Field._protobuf_nameMap.getter()
{
  if (qword_1EB557F28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559D80);
}

void Google_Protobuf_Field.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC512E54(v9, v10, v11, v12);
        continue;
      case 2:
        v21 = OUTLINED_FUNCTION_7();
        sub_1AC512ED4(v21, v22, v23, v24);
        continue;
      case 3:
        v15 = v1[9];
        goto LABEL_13;
      case 4:
        v16 = v1[42];
        goto LABEL_13;
      case 6:
        v13 = v1[42];
        goto LABEL_13;
      case 7:
        v25 = v1[9];
        goto LABEL_13;
      case 8:
        v27 = v1[39];
        OUTLINED_FUNCTION_36_0();
        v28();
        continue;
      case 9:
        v17 = OUTLINED_FUNCTION_7();
        sub_1AC512F54(v17, v18, v19, v20);
        continue;
      case 10:
        v29 = v1[42];
        goto LABEL_13;
      case 11:
        v14 = v1[42];
LABEL_13:
        OUTLINED_FUNCTION_36_0();
        v26();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC512E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC5154E8();
  return v7(a2, &type metadata for Google_Protobuf_Field.Kind, v8, a3, a4);
}

uint64_t sub_1AC512ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC51553C();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Field.Cardinality, v8, a3, a4);
}

uint64_t sub_1AC512F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 72, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

void sub_1AC512FD4()
{
  OUTLINED_FUNCTION_49();
  if (*v2)
  {
    v3 = *(v2 + 8);
    MEMORY[0x1AC5B48A0](1);
    v4 = OUTLINED_FUNCTION_48();
    sub_1AC471208(v4, v5);
  }

  v6 = *(v2 + 16);
  if (v6)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48A0](v6);
  }

  v7 = *(v2 + 28);
  if (v7)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v7);
  }

  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  OUTLINED_FUNCTION_11_0();
  if (v10)
  {
    MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  OUTLINED_FUNCTION_11_0();
  if (v13)
  {
    MEMORY[0x1AC5B48A0](6);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v14 = *(v2 + 64);
  if (v14)
  {
    MEMORY[0x1AC5B48A0](7);
    MEMORY[0x1AC5B48D0](v14);
  }

  if (*(v2 + 68))
  {
    MEMORY[0x1AC5B48A0](8);
    sub_1AC51F488();
  }

  v15 = *(v2 + 72);
  if (!*(v15 + 16) || (sub_1AC50C78C(v15, 9), !v0))
  {
    v16 = *(v2 + 80);
    v17 = *(v2 + 88);
    OUTLINED_FUNCTION_11_0();
    if (v18)
    {
      MEMORY[0x1AC5B48A0](10);
      OUTLINED_FUNCTION_11_17();
      sub_1AC51EEB8();
    }

    v19 = *(v2 + 96);
    v20 = *(v2 + 104);
    OUTLINED_FUNCTION_11_0();
    if (v21)
    {
      MEMORY[0x1AC5B48A0](11);
      OUTLINED_FUNCTION_11_17();
      sub_1AC51EEB8();
    }

    sub_1AC4937B8(v1, *(v2 + 112), *(v2 + 120));
  }
}

uint64_t Google_Protobuf_Field.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a1;
  v8 = *v3;
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 28);
  v12 = *(v3 + 40);
  v50 = *(v3 + 32);
  v46 = *(v3 + 48);
  v47 = v12;
  v45 = *(v3 + 56);
  v43 = *(v3 + 68);
  v44 = *(v3 + 64);
  v38 = *(v3 + 72);
  v39 = *(v3 + 88);
  v42 = *(v3 + 96);
  v40 = *(v3 + 80);
  v41 = *(v3 + 104);
  v36 = *(v3 + 120);
  v37 = *(v3 + 112);
  if (v8)
  {
    v13 = *(v3 + 8);
    v48 = v8;
    LOBYTE(v49) = v13;
    v15 = a3[16];
    v16 = sub_1AC5154E8();
    result = v15(&v48, 1, &type metadata for Google_Protobuf_Field.Kind, v16, a2, a3);
    if (v4)
    {
      return result;
    }

    v7 = a1;
  }

  if (!v9 || (v48 = v9, LOBYTE(v49) = v10, v18 = a3[16], sub_1AC51553C(), OUTLINED_FUNCTION_53_0(), result = v18(), !v4))
  {
    if (!v11 || (v19 = a3[3], OUTLINED_FUNCTION_53_0(), result = v20(), !v4))
    {
      v21 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v21 = v50 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), result = v22(), !v4))
      {
        OUTLINED_FUNCTION_29();
        if (!v23 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), result = v24(), !v4))
        {
          if (!v44 || (v25 = a3[3], OUTLINED_FUNCTION_53_0(), result = v26(), !v4))
          {
            if (!v43 || (v27 = a3[13], OUTLINED_FUNCTION_53_0(), result = v28(), !v4))
            {
              v30 = v39;
              v29 = v40;
              if (*(v38 + 16))
              {
                v31 = a3[35];
                sub_1AC4847F8();
                OUTLINED_FUNCTION_53_0();
                result = v31();
                if (v4)
                {
                  return result;
                }

                v30 = v39;
                v29 = v40;
              }

              v32 = HIBYTE(v30) & 0xF;
              if ((v30 & 0x2000000000000000) == 0)
              {
                v32 = v29 & 0xFFFFFFFFFFFFLL;
              }

              if (!v32 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), result = v33(), !v4))
              {
                OUTLINED_FUNCTION_29();
                if (!v34 || (OUTLINED_FUNCTION_89_2(), OUTLINED_FUNCTION_19_13(), result = v35(), !v4))
                {
                  v48 = v37;
                  v49 = v36;
                  sub_1AC4578F4(v37, v36);
                  UnknownStorage.traverse<A>(visitor:)(v7, a2, a3);
                  return sub_1AC4513F8(v48, v49);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Google_Protobuf_Field.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v47 = *(a1 + 56);
  v48 = *(a1 + 48);
  v44 = *(a1 + 64);
  v42 = *(a1 + 68);
  v40 = *(a1 + 72);
  v38 = *(a1 + 80);
  v37 = *(a1 + 88);
  v34 = *(a1 + 96);
  v33 = *(a1 + 104);
  v30 = *(a1 + 112);
  v29 = *(a1 + 120);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v45 = *(a2 + 56);
  v46 = *(a2 + 48);
  v43 = *(a2 + 64);
  v41 = *(a2 + 68);
  v39 = *(a2 + 72);
  v36 = *(a2 + 80);
  v35 = *(a2 + 88);
  v32 = *(a2 + 96);
  v31 = *(a2 + 104);
  v28 = *(a2 + 112);
  v27 = *(a2 + 120);
  if ((sub_1AC48610C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1AC48610C(v2, v3, v7, v8) & 1) == 0 || v4 != v9)
  {
    return 0;
  }

  v12 = v5 == v10 && v6 == v11;
  if (!v12 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v13 = v48 == v46 && v47 == v45;
  if (!v13 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v44 != v43 || ((v42 ^ v41) & 1) != 0 || (sub_1AC477E08(v40, v39) & 1) == 0)
  {
    return 0;
  }

  v14 = v38 == v36 && v37 == v35;
  if (!v14 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v15 = v34 == v32 && v33 == v31;
  if (!v15 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v16 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v16, v17);
  v18 = OUTLINED_FUNCTION_18();
  sub_1AC4578F4(v18, v19);
  v20 = OUTLINED_FUNCTION_52();
  v21 = MEMORY[0x1AC5B4070](v20);
  v22 = OUTLINED_FUNCTION_18();
  sub_1AC4513F8(v22, v23);
  v24 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v24, v25);
  return v21 & 1;
}

uint64_t Google_Protobuf_Field.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_17_17(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28);
  memcpy(v9, v10, v11);
  sub_1AC512FD4();
  v20 = OUTLINED_FUNCTION_18_13(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  memcpy(v20, v21, v22);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC513820()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC512FD4();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Field.Kind._protobuf_nameMap.getter()
{
  if (qword_1EB557F30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559DA0);
}

uint64_t static Google_Protobuf_Field.Cardinality._protobuf_nameMap.getter()
{
  if (qword_1EB557F38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559DC0);
}

uint64_t static Google_Protobuf_Enum._protobuf_nameMap.getter()
{
  if (qword_1EB557F40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559DE0);
}

uint64_t Google_Protobuf_Enum.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    result = v5(v6);
    if (v3 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_11;
      case 2:
        v21 = OUTLINED_FUNCTION_7();
        sub_1AC513B8C(v21, v22, v23, v24);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC513C0C(v13, v14, v15, v16);
        break;
      case 4:
        v17 = OUTLINED_FUNCTION_7();
        sub_1AC513C8C(v17, v18, v19, v20);
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC513D0C(v9, v10, v11, v12);
        break;
      case 6:
        v25 = *(v4 + 336);
LABEL_11:
        OUTLINED_FUNCTION_36_0();
        v26();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC513B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC515590();
  return v7(a2 + 16, &type metadata for Google_Protobuf_EnumValue, v8, a3, a4);
}

uint64_t sub_1AC513C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 24, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC513C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4860B4();
  return v7(a2 + 80, &type metadata for Google_Protobuf_SourceContext, v8, a3, a4);
}

uint64_t sub_1AC513D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 32, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC513D8C()
{
  OUTLINED_FUNCTION_49();
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_11_0();
  if (v5)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v6 = v2[2];
  if (!*(v6 + 16) || (sub_1AC50CA68(v6, 2), !v0))
  {
    v7 = v2[3];
    if (!*(v7 + 16) || (sub_1AC50C78C(v7, 3), !v0))
    {
      sub_1AC51403C(v2, v1);
      if (!v0)
      {
        v8 = v2[4];
        if (v8)
        {
          v9 = *(v2 + 40);
          MEMORY[0x1AC5B48A0](5);
          v10 = 1;
          if (v8 == 2)
          {
            v10 = 2;
          }

          if (v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = v8;
          }

          MEMORY[0x1AC5B48A0](v11);
        }

        v12 = v2[6];
        v13 = v2[7];
        OUTLINED_FUNCTION_11_0();
        if (v14)
        {
          MEMORY[0x1AC5B48A0](6);
          OUTLINED_FUNCTION_11_17();
          sub_1AC51EEB8();
        }

        sub_1AC4937B8(v1, v2[8], v2[9]);
      }
    }
  }
}

uint64_t Google_Protobuf_Enum.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  memcpy(__dst, v1, sizeof(__dst));
  OUTLINED_FUNCTION_29();
  if (!v5 || (OUTLINED_FUNCTION_9_6(), result = v6(), (v0 = v2) == 0))
  {
    if (!*(__dst[1].n128_u64[0] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC515590(), OUTLINED_FUNCTION_28(), result = (v4)(), (v0 = v2) == 0))
    {
      if (!*(__dst[1].n128_u64[1] + 16) || (OUTLINED_FUNCTION_138(), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), result = (v4)(), (v0 = v2) == 0))
      {
        OUTLINED_FUNCTION_25_7();
        result = sub_1AC51410C(v8, v9, v10, v11);
        if (!v0)
        {
          if (__dst[2].n128_u64[0])
          {
            OUTLINED_FUNCTION_101_1();
            OUTLINED_FUNCTION_28();
            v4();
          }

          OUTLINED_FUNCTION_29();
          if (v21)
          {
            v22 = *(v3 + 112);
            OUTLINED_FUNCTION_27();
            v12 = v23();
          }

          OUTLINED_FUNCTION_69_1(__dst[4], v12, v13, v14, v15, v16, v17, v18, v19, v27, v28, v20);
          OUTLINED_FUNCTION_36_0();
          UnknownStorage.traverse<A>(visitor:)(v24, v25, v26);
          return sub_1AC4513F8(v29, v30);
        }
      }
    }
  }

  return result;
}

void *sub_1AC51403C(void *result, void *a2)
{
  v3 = result[11];
  if (v3)
  {
    v5 = result[10];
    v6 = result[12];
    v7 = result[13];
    MEMORY[0x1AC5B48A0](4);
    memcpy(__dst, a2, sizeof(__dst));

    sub_1AC4578F4(v6, v7);
    sub_1AC4F5320(__dst, v5, v3, v6, v7);
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    sub_1AC4802C0(v5, v3, v6, v7);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC51410C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 88);
  if (v4)
  {
    v7 = *(result + 80);
    v11 = *(result + 96);
    v10[0] = v7;
    v10[1] = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4860B4();
    return v8(v10, 4, &type metadata for Google_Protobuf_SourceContext, v9, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_Enum.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v131 = *(v3 + 32);
  HIDWORD(v130) = *(v3 + 40);
  v124 = *(v3 + 56);
  v126 = *(v3 + 48);
  v118 = *(v3 + 72);
  v119 = *(v3 + 64);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  v9 = *(v3 + 104);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v129 = *(v2 + 32);
  HIDWORD(v128) = *(v2 + 40);
  v120 = *(v2 + 56);
  v122 = *(v2 + 48);
  v116 = *(v2 + 72);
  v117 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v132 = *(v2 + 96);
  v133 = *(v2 + 104);
  if (!v14 && (sub_1AC51F3D8() & 1) == 0 || (sub_1AC478118(v4, v10) & 1) == 0 || (sub_1AC477E08(v5, v11) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v13)
    {
      v15 = v6 == v12 && v7 == v13;
      if (v15 || (OUTLINED_FUNCTION_95(), (sub_1AC51F3D8() & 1) != 0))
      {
        v16 = OUTLINED_FUNCTION_2_27();
        sub_1AC480274(v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_42_6(v20, v21, v22, v23, v24, v25, v26, v27, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
        v28 = OUTLINED_FUNCTION_2_27();
        sub_1AC480274(v28, v29, v30, v31);
        v32 = OUTLINED_FUNCTION_60_3();
        sub_1AC4578F4(v32, v33);
        sub_1AC4578F4(v7, v12);
        OUTLINED_FUNCTION_28_8();
        v34 = MEMORY[0x1AC5B4070]();
        sub_1AC4513F8(v7, v12);
        v35 = OUTLINED_FUNCTION_60_3();
        sub_1AC4513F8(v35, v36);
        v37 = OUTLINED_FUNCTION_93_0();
        sub_1AC4802C0(v37, v38, v7, v12);

        v39 = OUTLINED_FUNCTION_60_3();
        sub_1AC4513F8(v39, v40);
        v41 = OUTLINED_FUNCTION_2_27();
        sub_1AC4802C0(v41, v42, v43, v44);
        if ((v34 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }

      v96 = OUTLINED_FUNCTION_2_27();
      sub_1AC480274(v96, v97, v98, v99);
      v100 = OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_42_6(v100, v101, v102, v103, v104, v105, v106, v107, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
      v108 = OUTLINED_FUNCTION_2_27();
      sub_1AC480274(v108, v109, v110, v111);
      v112 = OUTLINED_FUNCTION_93_0();
      sub_1AC4802C0(v112, v113, v7, v12);

      v114 = OUTLINED_FUNCTION_60_3();
      sub_1AC4513F8(v114, v115);
      v80 = OUTLINED_FUNCTION_2_27();
LABEL_21:
      sub_1AC4802C0(v80, v81, v82, v83);
      return 0;
    }

    v60 = OUTLINED_FUNCTION_2_27();
    sub_1AC480274(v60, v61, v62, v63);
    v59 = v12;
    OUTLINED_FUNCTION_42_6(v12, 0, v64, v65, v66, v67, v68, v69, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
    v70 = OUTLINED_FUNCTION_2_27();
    sub_1AC480274(v70, v71, v72, v73);

    v74 = OUTLINED_FUNCTION_60_3();
    sub_1AC4513F8(v74, v75);
LABEL_20:
    v76 = OUTLINED_FUNCTION_2_27();
    sub_1AC4802C0(v76, v77, v78, v79);
    v80 = v59;
    v81 = v13;
    v82 = v7;
    v83 = v12;
    goto LABEL_21;
  }

  sub_1AC480274(v6, 0, v8, v9);
  if (v13)
  {
    v59 = v12;
    OUTLINED_FUNCTION_42_6(v12, v13, v53, v54, v55, v56, v57, v58, v116, v117, v118, v119, v120, v122, v124, v126, v128, v129, v130, v131, v132);
    goto LABEL_20;
  }

  sub_1AC480274(v12, 0, v132, v133);
  sub_1AC4802C0(v6, 0, v8, v9);
LABEL_23:
  if (OUTLINED_FUNCTION_99_2(v45, v46, v47, v48, v49, v50, v51, v52, v116, v117, v118, v119, v120, v122, v124, v126, v128, HIDWORD(v128), v129, v130, HIDWORD(v130), v131))
  {
    v84 = v127 == v123 && v125 == v121;
    if (v84 || (sub_1AC51F3D8() & 1) != 0)
    {
      v85 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v85, v86);
      v87 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v87, v88);
      v89 = OUTLINED_FUNCTION_52();
      v90 = MEMORY[0x1AC5B4070](v89);
      v91 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v91, v92);
      v93 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v93, v94);
      return v90 & 1;
    }
  }

  return 0;
}

uint64_t Google_Protobuf_Enum.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_17_17(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28);
  memcpy(v9, v10, v11);
  sub_1AC513D8C();
  v20 = OUTLINED_FUNCTION_18_13(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  memcpy(v20, v21, v22);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC514628()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC513D8C();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559E00);
}

uint64_t Google_Protobuf_EnumValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    result = v5(v6);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v12 = OUTLINED_FUNCTION_7();
        sub_1AC513C0C(v12, v13, v14, v15);
        break;
      case 2:
        v10 = *(v4 + 72);
        OUTLINED_FUNCTION_36_0();
        v11();
        break;
      case 1:
        OUTLINED_FUNCTION_90_2();
        OUTLINED_FUNCTION_36_0();
        v9();
        break;
    }
  }

  return result;
}

void sub_1AC514828()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_11_0();
  if (v4)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v5 = *(v1 + 4);
  if (v5)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](v5);
  }

  v6 = v1[3];
  if (!*(v6 + 16) || (sub_1AC50C78C(v6, 3), !v0))
  {
    v7 = v1[4];
    v8 = v1[5];
    switch(v8 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_73();
        goto LABEL_12;
      case 2uLL:
        v9 = *(v7 + 16);
        v10 = *(v7 + 24);
LABEL_12:
        if (v9 != v10)
        {
          goto LABEL_13;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v8 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_13:
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t Google_Protobuf_EnumValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  v8 = v1[3];
  v7 = v1[4];
  v9 = v1[5];
  OUTLINED_FUNCTION_29();
  if (!v10 || (OUTLINED_FUNCTION_9_6(), result = v11(), (v0 = v2) == 0))
  {
    if (!v6 || (v13 = *(v3 + 24), v2 = v0, OUTLINED_FUNCTION_25_7(), result = v14(), !v0))
    {
      if (!*(v8 + 16) || (v15 = *(v3 + 280), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), result = v15(), !v2))
      {
        v16 = OUTLINED_FUNCTION_93_0();
        sub_1AC4578F4(v16, v17);
        OUTLINED_FUNCTION_36_0();
        UnknownStorage.traverse<A>(visitor:)(v18, v19, v20);
        return sub_1AC4513F8(v7, v9);
      }
    }
  }

  return result;
}

uint64_t static Google_Protobuf_EnumValue.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v12 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8)
  {
    return 0;
  }

  v13 = OUTLINED_FUNCTION_19();
  if ((sub_1AC477E08(v13, v14) & 1) == 0)
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v15, v16);
  sub_1AC4578F4(v9, v11);
  v17 = OUTLINED_FUNCTION_44();
  v18 = MEMORY[0x1AC5B4070](v17);
  sub_1AC4513F8(v9, v11);
  v19 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v19, v20);
  return v18 & 1;
}

uint64_t Google_Protobuf_EnumValue.hashValue.getter()
{
  OUTLINED_FUNCTION_91_2(v38);
  v0 = OUTLINED_FUNCTION_232();
  v8 = OUTLINED_FUNCTION_17_17(v0, v1, v2, v3, v4, v5, v6, v7, v23, v25, v27);
  memcpy(v8, v9, v10);
  sub_1AC514828();
  v19 = OUTLINED_FUNCTION_18_13(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  memcpy(v19, v20, v21);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC514BBC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1AC51B89C();
}

void *sub_1AC514BFC(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  return sub_1AC4819B4(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC514C38()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC514828();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Option._protobuf_nameMap.getter()
{
  if (qword_1EB557F50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559E20);
}

uint64_t Google_Protobuf_Option.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    result = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v9 = OUTLINED_FUNCTION_7();
      sub_1AC514E08(v9, v10, v11, v12);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_90_2();
      OUTLINED_FUNCTION_36_0();
      v8();
    }
  }

  return result;
}

uint64_t sub_1AC514E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC472D54();
  return v7(a2 + 32, &type metadata for Google_Protobuf_Any, v8, a3, a4);
}

void sub_1AC514E88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_175();
    sub_1AC51EEB8();
  }

  v4 = v0[6];
  if (v4)
  {
    v6 = v0[4];
    v5 = v0[5];
    MEMORY[0x1AC5B48A0](2);
    sub_1AC4578F4(v6, v5);

    sub_1AC476370();
    sub_1AC48532C(v6, v5, v4);
  }

  v7 = v0[2];
  v8 = v0[3];
  switch(v8 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_12;
    case 2uLL:
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
LABEL_12:
      if (v9 != v10)
      {
        goto LABEL_13;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v8 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_13:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_Option.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v18 = v1[2];
  v19 = *(v1 + 6);
  OUTLINED_FUNCTION_29();
  if (!v4 || (OUTLINED_FUNCTION_9_6(), result = v5(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_25_7();
    result = sub_1AC515060(v7, v8, v9, v10);
    if (!v0)
    {
      v20 = v17;
      v15 = v17;
      sub_1AC4848F4(&v20, &v14);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v11, v12, v13);
      return sub_1AC4513F8(v15, *(&v15 + 1));
    }
  }

  return result;
}

uint64_t sub_1AC515060(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4)
  {
    v9 = *(result + 32);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC472D54();
    return v7(&v9, 2, &type metadata for Google_Protobuf_Any, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_Option.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v81 = v3[2];
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = v2[6];
  v13 = v1 == *v2 && v3[1] == v2[1];
  if (!v13 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v14 = OUTLINED_FUNCTION_29_8();
  if (!v7)
  {
    sub_1AC4852EC(v14, v15, 0);
    if (!v12)
    {
      v62 = OUTLINED_FUNCTION_44_6();
      sub_1AC4852EC(v62, v63, 0);
      v64 = OUTLINED_FUNCTION_29_8();
      sub_1AC48532C(v64, v65, 0);
      goto LABEL_19;
    }

    v21 = OUTLINED_FUNCTION_31_7();
    sub_1AC4852EC(v21, v22, v23);
    goto LABEL_13;
  }

  if (!v12)
  {
    sub_1AC4852EC(v14, v15, v7);
    v24 = OUTLINED_FUNCTION_44_6();
    sub_1AC4852EC(v24, v25, 0);
    v26 = OUTLINED_FUNCTION_15_15();
    sub_1AC4852EC(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_29_8();
    sub_1AC4513F8(v29, v30);

LABEL_13:
    v31 = OUTLINED_FUNCTION_15_15();
    sub_1AC48532C(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_31_7();
LABEL_14:
    sub_1AC48532C(v34, v35, v36);
    return 0;
  }

  if (v7 == v12)
  {
    sub_1AC4852EC(v14, v15, v7);
    v16 = OUTLINED_FUNCTION_44_6();
    sub_1AC4852EC(v16, v17, v7);
    v18 = OUTLINED_FUNCTION_15_15();
    sub_1AC4852EC(v18, v19, v20);
    goto LABEL_16;
  }

  sub_1AC4852EC(v14, v15, v7);
  v37 = OUTLINED_FUNCTION_31_7();
  sub_1AC4852EC(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_15_15();
  sub_1AC4852EC(v40, v41, v42);
  if ((sub_1AC472EE4(v12) & 1) == 0)
  {
    v76 = OUTLINED_FUNCTION_31_7();
    sub_1AC48532C(v76, v77, v78);
    v79 = OUTLINED_FUNCTION_29_8();
    sub_1AC4513F8(v79, v80);

    v34 = OUTLINED_FUNCTION_15_15();
    goto LABEL_14;
  }

LABEL_16:
  v43 = OUTLINED_FUNCTION_29_8();
  sub_1AC4578F4(v43, v44);
  v45 = OUTLINED_FUNCTION_44_6();
  sub_1AC4578F4(v45, v46);
  v47 = OUTLINED_FUNCTION_29_8();
  v48 = MEMORY[0x1AC5B4070](v47);
  v49 = OUTLINED_FUNCTION_44_6();
  sub_1AC4513F8(v49, v50);
  v51 = OUTLINED_FUNCTION_29_8();
  sub_1AC4513F8(v51, v52);
  v53 = OUTLINED_FUNCTION_31_7();
  sub_1AC48532C(v53, v54, v55);
  v56 = OUTLINED_FUNCTION_29_8();
  sub_1AC4513F8(v56, v57);

  v58 = OUTLINED_FUNCTION_15_15();
  sub_1AC48532C(v58, v59, v60);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v66 = OUTLINED_FUNCTION_48();
  sub_1AC4578F4(v66, v67);
  v68 = OUTLINED_FUNCTION_100();
  sub_1AC4578F4(v68, v69);
  v70 = OUTLINED_FUNCTION_11_17();
  v71 = MEMORY[0x1AC5B4070](v70);
  v72 = OUTLINED_FUNCTION_100();
  sub_1AC4513F8(v72, v73);
  v74 = OUTLINED_FUNCTION_48();
  sub_1AC4513F8(v74, v75);
  return v71 & 1;
}

uint64_t Google_Protobuf_Option.hashValue.getter()
{
  OUTLINED_FUNCTION_91_2(v39);
  v40 = *(v0 + 48);
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_17_17(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28);
  memcpy(v9, v10, v11);
  sub_1AC514E88();
  v20 = OUTLINED_FUNCTION_18_13(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  memcpy(v20, v21, v22);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC5153C4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_1AC51B8B8();
}

void *sub_1AC51540C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = *(v8 + 6);
  return sub_1AC4817B8(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC515450()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  v8 = *(v0 + 6);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC514E88();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC5154E8()
{
  result = qword_1EB559E48;
  if (!qword_1EB559E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E48);
  }

  return result;
}

unint64_t sub_1AC51553C()
{
  result = qword_1EB559E50;
  if (!qword_1EB559E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E50);
  }

  return result;
}

unint64_t sub_1AC515590()
{
  result = qword_1EB559E58;
  if (!qword_1EB559E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E58);
  }

  return result;
}

unint64_t sub_1AC515610()
{
  result = qword_1EB559E60;
  if (!qword_1EB559E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E60);
  }

  return result;
}

unint64_t sub_1AC515664()
{
  result = qword_1EB559E68;
  if (!qword_1EB559E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E68);
  }

  return result;
}

unint64_t sub_1AC5156EC()
{
  result = qword_1EB559E80;
  if (!qword_1EB559E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E80);
  }

  return result;
}

unint64_t sub_1AC51576C()
{
  result = qword_1EB559E88;
  if (!qword_1EB559E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E88);
  }

  return result;
}

unint64_t sub_1AC5157C0()
{
  result = qword_1EB559E90;
  if (!qword_1EB559E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E90);
  }

  return result;
}

unint64_t sub_1AC515848()
{
  result = qword_1EB559EA8;
  if (!qword_1EB559EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EA8);
  }

  return result;
}

unint64_t sub_1AC5158C8()
{
  result = qword_1EB559EB0;
  if (!qword_1EB559EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EB0);
  }

  return result;
}

unint64_t sub_1AC51591C()
{
  result = qword_1EB559EB8;
  if (!qword_1EB559EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EB8);
  }

  return result;
}

unint64_t sub_1AC5159A4()
{
  result = qword_1EB559ED0;
  if (!qword_1EB559ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559ED0);
  }

  return result;
}

unint64_t sub_1AC5159F8(uint64_t a1)
{
  result = sub_1AC515A20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515A20()
{
  result = qword_1EB559ED8;
  if (!qword_1EB559ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559ED8);
  }

  return result;
}

unint64_t sub_1AC515AA0()
{
  result = qword_1EB559EE0;
  if (!qword_1EB559EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EE0);
  }

  return result;
}

unint64_t sub_1AC515AF4()
{
  result = qword_1EB559EE8;
  if (!qword_1EB559EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EE8);
  }

  return result;
}

unint64_t sub_1AC515B4C()
{
  result = qword_1EB559EF0;
  if (!qword_1EB559EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EF0);
  }

  return result;
}

unint64_t sub_1AC515BA0(uint64_t a1)
{
  result = sub_1AC515BC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515BC8()
{
  result = qword_1EB559EF8;
  if (!qword_1EB559EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EF8);
  }

  return result;
}

unint64_t sub_1AC515C48()
{
  result = qword_1EB559F00;
  if (!qword_1EB559F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F00);
  }

  return result;
}

unint64_t sub_1AC515CA0()
{
  result = qword_1EB559F08;
  if (!qword_1EB559F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F08);
  }

  return result;
}

unint64_t sub_1AC515CF4(uint64_t a1)
{
  result = sub_1AC515D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515D1C()
{
  result = qword_1EB559F10;
  if (!qword_1EB559F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F10);
  }

  return result;
}

unint64_t sub_1AC515D9C()
{
  result = qword_1EB559F18;
  if (!qword_1EB559F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F18);
  }

  return result;
}

unint64_t sub_1AC515DF0()
{
  result = qword_1EB559F20;
  if (!qword_1EB559F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F20);
  }

  return result;
}

unint64_t sub_1AC515E48()
{
  result = qword_1EB559F28;
  if (!qword_1EB559F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F28);
  }

  return result;
}

unint64_t sub_1AC515E9C(uint64_t a1)
{
  result = sub_1AC515EC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515EC4()
{
  result = qword_1EB559F30;
  if (!qword_1EB559F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F30);
  }

  return result;
}

unint64_t sub_1AC515F44()
{
  result = qword_1EB559F38;
  if (!qword_1EB559F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F38);
  }

  return result;
}

unint64_t sub_1AC515F9C()
{
  result = qword_1EB559F40;
  if (!qword_1EB559F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F40);
  }

  return result;
}

unint64_t sub_1AC515FF0(uint64_t a1)
{
  result = sub_1AC516018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC516018()
{
  result = qword_1EB559F48;
  if (!qword_1EB559F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F48);
  }

  return result;
}

uint64_t sub_1AC516098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC5160D4()
{
  result = qword_1EB559F50;
  if (!qword_1EB559F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F50);
  }

  return result;
}

unint64_t sub_1AC51612C()
{
  result = qword_1EB559F58;
  if (!qword_1EB559F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F58);
  }

  return result;
}

uint64_t sub_1AC5161A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC5161E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC51626C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC5162AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C4_AnyVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC516354(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC516394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC516414(const void *a1, uint64_t a2)
{
  v22 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v21 = (v2 + 63) >> 6;

  v25 = 0;
  v6 = 0;
  if (v4)
  {
LABEL_8:
    while (1)
    {
      v8 = *(a2 + 56);
      v9 = (*(a2 + 48) + 16 * (__clz(__rbit64(v4)) | (v6 << 6)));
      v11 = *v9;
      v10 = v9[1];
      OUTLINED_FUNCTION_96_2();
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = *(v12 + 24);
      v18 = v12[4];
      v17 = v12[5];

      v19 = OUTLINED_FUNCTION_93_0();
      sub_1AC48541C(v19, v20, v15, v16);
      sub_1AC4578F4(v18, v17);
      if (!v10)
      {
        break;
      }

      v28[0] = v13;
      v28[1] = v14;
      v28[2] = v15;
      v28[3] = v16;
      v28[4] = v18;
      v28[5] = v17;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1AC51EEB8();

      memcpy(v26, __dst, sizeof(v26));
      sub_1AC4F7938(v26);
      v4 &= v4 - 1;
      sub_1AC4DD16C(v28);
      memcpy(__dst, v26, sizeof(__dst));
      result = sub_1AC51F4C8();
      v25 ^= result;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    return MEMORY[0x1AC5B48A0](v25);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v21)
      {
        goto LABEL_11;
      }

      v4 = *(v22 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5165E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_37_6(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return sub_1AC51F468();
}

void OUTLINED_FUNCTION_59_3()
{

  JUMPOUT(0x1AC5B48A0);
}

void *OUTLINED_FUNCTION_64_2(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_70_2()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

void *OUTLINED_FUNCTION_75_2(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

void OUTLINED_FUNCTION_76_2()
{

  JUMPOUT(0x1AC5B48A0);
}

void *OUTLINED_FUNCTION_77_1(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x48uLL);
}

void *OUTLINED_FUNCTION_79_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, &a9, 0x48uLL);
}

void *OUTLINED_FUNCTION_83_2(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_84_2()
{

  return sub_1AC51F468();
}

uint64_t **OUTLINED_FUNCTION_92_2(uint64_t **result)
{
  v1 = (*result)[3];
  v2 = (*result)[4];
  v4 = **result;
  v3 = (*result)[1];
  v5 = (*result)[2];
  return result;
}

unint64_t OUTLINED_FUNCTION_101_1()
{
  v2 = *(v0 + 128);

  return sub_1AC4848A0();
}

BOOL sub_1AC516844(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t UnknownStorage.data.getter()
{
  v1 = *v0;
  sub_1AC4578F4(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1AC5168CC(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AC51691C()
{
  v4 = sub_1AC51F3B8();
  v5 = v0;
  MEMORY[0x1AC5B4340](46, 0xE100000000000000);
  v1 = sub_1AC51F3B8();
  MEMORY[0x1AC5B4340](v1);

  MEMORY[0x1AC5B4340](46, 0xE100000000000000);
  v2 = sub_1AC51F3B8();
  MEMORY[0x1AC5B4340](v2);

  qword_1EB559F60 = v4;
  *algn_1EB559F68 = v5;
  return result;
}

uint64_t static Version.versionString.getter()
{
  if (qword_1EB557F58 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB559F60;

  return v0;
}

_BYTE *storeEnumTagSinglePayload for Version(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1AC516B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC516DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC517074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for BinaryEncodingVisitor, &off_1F211B110, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC517324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC517B20(int a1, unint64_t a2)
{
  v3 = a1;
  sub_1AC502478(a2);
  sub_1AC45FE50(": ", 2, 2);
  sub_1AC5010CC(v3);
  sub_1AC45A774();
  v4 = *(*v2 + 16);
  result = sub_1AC45A85C(v4);
  v6 = *v2;
  *(v6 + 16) = v4 + 1;
  *(v6 + v4 + 32) = 10;
  *v2 = v6;
  return result;
}

uint64_t sub_1AC517BC8(unsigned int a1, unint64_t a2)
{
  v3 = a1;
  sub_1AC502478(a2);
  sub_1AC45FE50(": ", 2, 2);
  sub_1AC500DF8(v3);
  sub_1AC45A774();
  v4 = *(*v2 + 16);
  result = sub_1AC45A85C(v4);
  v6 = *v2;
  *(v6 + 16) = v4 + 1;
  *(v6 + v4 + 32) = 10;
  *v2 = v6;
  return result;
}

uint64_t sub_1AC517C70(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = (8 * a2) | 5;
      }

      else
      {
        v7 = (8 * (a2 & 0x1FFFFFFF)) | 5;
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v8;
      *(v5 + 1) = v6;
      v5 += 5;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFloatField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v6)
    {
      break;
    }

    v8 = *v7++;
    (*(v2 + 8))(v5, v4, v2, v8);
    --v6;
  }

  while (!v3);
}

uint64_t sub_1AC517D40(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = (8 * a2) | 1;
      }

      else
      {
        v7 = (8 * (a2 & 0x1FFFFFFF)) | 1;
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v8;
      *(v5 + 1) = v6;
      v5 += 9;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedDoubleField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v6)
    {
      break;
    }

    v8 = *v7++;
    (*(v2 + 16))(v5, v4, v2, v8);
    --v6;
  }

  while (!v3);
}

uint64_t sub_1AC517E28(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      *v5 = v8;
      v10 = v5 + 1;
      if (v6 < 0x80)
      {
        LOBYTE(v11) = v6;
      }

      else
      {
        do
        {
          *v10++ = v6 | 0x80;
          v11 = v6 >> 7;
          v12 = v6 >> 14;
          v6 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v10 = v11;
      v5 = v10 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 24);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 32);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

uint64_t sub_1AC517F7C(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      *v5 = v8;
      v10 = v5 + 1;
      if (v6 < 0x80)
      {
        LOBYTE(v11) = v6;
      }

      else
      {
        do
        {
          *v10++ = v6 | 0x80;
          v11 = v6 >> 7;
          v12 = v6 >> 14;
          v6 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v10 = v11;
      v5 = v10 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 40);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

uint64_t sub_1AC518060(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      *v5 = v8;
      v10 = v5 + 1;
      if (v6 < 0x80)
      {
        LOBYTE(v11) = v6;
      }

      else
      {
        do
        {
          *v10++ = v6 | 0x80;
          v11 = v6 >> 7;
          v12 = v6 >> 14;
          v6 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v10 = v11;
      v5 = v10 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 48);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

uint64_t sub_1AC51815C(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      v10 = (2 * v6) ^ (v6 >> 63);
      *v5 = v8;
      v11 = v5 + 1;
      if (v10 < 0x80)
      {
        LOBYTE(v12) = v10;
      }

      else
      {
        do
        {
          *v11++ = v10 | 0x80;
          v12 = v10 >> 7;
          v13 = v10 >> 14;
          v10 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v11 = v12;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 56);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

uint64_t sub_1AC518260(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      v10 = (2 * v6) ^ (v6 >> 63);
      *v5 = v8;
      v11 = v5 + 1;
      if (v10 < 0x80)
      {
        LOBYTE(v12) = v10;
      }

      else
      {
        do
        {
          *v11++ = v10 | 0x80;
          v12 = v10 >> 7;
          v13 = v10 >> 14;
          v10 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v11 = v12;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 64);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 72);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 80);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 88);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 96);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

uint64_t sub_1AC5184C4(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v8;
      v5[1] = v6;
      v5 += 2;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBoolField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37(value._rawValue);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    v7 = *(v2 + 104);
    OUTLINED_FUNCTION_3_32();
    v8();
    --v4;
  }

  while (!v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedStringField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v4;
  v6 = v3;
  v13 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 40);
  if (v8)
  {
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(v6 + 112);

      v12(v10, v11, fieldNumber, v13, v6);
      if (v5)
      {
        break;
      }

      v9 += 2;
      if (!--v8)
      {
        return;
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBytesField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v12 = v2;
  v6 = *(value._rawValue + 2);
  v7 = (value._rawValue + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v5 + 120);
      sub_1AC4578F4(v8, *v7);
      v10(v8, v9, fieldNumber, v12, v5);
      if (v4)
      {
        break;
      }

      sub_1AC4513F8(v8, v9);
      v7 += 2;
      if (!--v6)
      {
        return;
      }
    }

    sub_1AC4513F8(v8, v9);
  }
}

uint64_t Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_27(a1, a2, a3, a4, a5, a6);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_15_16(v12);
  while (1)
  {
    OUTLINED_FUNCTION_20_15();
    result = sub_1AC51F0B8();
    if (v7 == result)
    {
      break;
    }

    OUTLINED_FUNCTION_20_15();
    sub_1AC51F0A8();
    OUTLINED_FUNCTION_13_16();
    if (v8)
    {
      v14 = OUTLINED_FUNCTION_4_24();
      v15(v14);
    }

    else
    {
      OUTLINED_FUNCTION_19_14();
      result = sub_1AC51F2F8();
      if (v23 != 8)
      {
        __break(1u);
        return result;
      }

      v21 = OUTLINED_FUNCTION_7_20(result);
      v22(v21);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_14();
    sub_1AC51F0F8();
    v16 = *(v24 + 128);
    v17 = OUTLINED_FUNCTION_10_16();
    v18(v17);
    v19 = OUTLINED_FUNCTION_16_14();
    result = v20(v19);
    if (v6)
    {
      return result;
    }

    v7 = v25;
  }

  return result;
}

uint64_t Visitor.visitRepeatedGroupField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_27(a1, a2, a3, a4, a5, a6);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_15_16(v12);
  while (1)
  {
    OUTLINED_FUNCTION_20_15();
    result = sub_1AC51F0B8();
    if (v7 == result)
    {
      break;
    }

    OUTLINED_FUNCTION_20_15();
    sub_1AC51F0A8();
    OUTLINED_FUNCTION_13_16();
    if (v8)
    {
      v14 = OUTLINED_FUNCTION_4_24();
      v15(v14);
    }

    else
    {
      OUTLINED_FUNCTION_19_14();
      result = sub_1AC51F2F8();
      if (v23 != 8)
      {
        __break(1u);
        return result;
      }

      v21 = OUTLINED_FUNCTION_7_20(result);
      v22(v21);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_14();
    sub_1AC51F0F8();
    v16 = *(v24 + 144);
    v17 = OUTLINED_FUNCTION_10_16();
    v18(v17);
    v19 = OUTLINED_FUNCTION_16_14();
    result = v20(v19);
    if (v6)
    {
      return result;
    }

    v7 = v25;
  }

  return result;
}

uint64_t sub_1AC518AF0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  sub_1AC502478(a2);
  sub_1AC45FE50(": ", 2, 2);
  a3(a1);
  sub_1AC45A774();
  v6 = *(*v3 + 16);
  result = sub_1AC45A85C(v6);
  v8 = *v3;
  *(v8 + 16) = v6 + 1;
  *(v8 + v6 + 32) = 10;
  *v3 = v8;
  return result;
}

uint64_t sub_1AC518B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = sub_1AC459C7C(a2);
  if (!v5)
  {
    if (*(v4 + 56))
    {
      return a3(a1);
    }

    else
    {
      return a4(a1);
    }
  }

  return result;
}

uint64_t sub_1AC518C54(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        if (v9)
        {
          v12 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v12 + 16);
            sub_1AC45A78C();
            v12 = v18;
          }

          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_1AC45A78C();
            v12 = v19;
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + v13 + 32) = 44;
          *v2 = v12;
        }

        if ((~LODWORD(v11) & 0x7F800000) != 0)
        {
          v15 = sub_1AC51F1A8();
          sub_1AC45FA3C(v15, v16);
        }

        else
        {
          if ((LODWORD(v11) & 0x7FFFFF) != 0)
          {
            v14 = "NaN";
          }

          else if (v11 >= 0.0)
          {
            v14 = "Infinity";
          }

          else
          {
            v14 = "-Infinity";
          }

          sub_1AC45FD18(v14);
        }

        ++v10;
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v20 = *(*v2 + 16);
    result = sub_1AC45A85C(v20);
    v21 = *v2;
    *(v21 + 16) = v20 + 1;
    *(v21 + v20 + 32) = 93;
    *v2 = v21;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC518E94(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        if (v9)
        {
          v12 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v12 + 16);
            sub_1AC45A78C();
            v12 = v18;
          }

          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_1AC45A78C();
            v12 = v19;
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + v13 + 32) = 44;
          *v2 = v12;
        }

        if ((~*&v11 & 0x7FF0000000000000) != 0)
        {
          v15 = sub_1AC51F188();
          sub_1AC45FA3C(v15, v16);
        }

        else
        {
          if ((*&v11 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v14 = "NaN";
          }

          else if (v11 >= 0.0)
          {
            v14 = "Infinity";
          }

          else
          {
            v14 = "-Infinity";
          }

          sub_1AC45FD18(v14);
        }

        ++v10;
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v20 = *(*v2 + 16);
    result = sub_1AC45A85C(v20);
    v21 = *v2;
    *(v21 + 16) = v20 + 1;
    *(v21 + v20 + 32) = 93;
    *v2 = v21;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC5190BC(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          v13 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v13 + 16);
            sub_1AC45A78C();
            v13 = v18;
          }

          v14 = *(v13 + 16);
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_1AC45A78C();
            v13 = v19;
          }

          *(v13 + 16) = v14 + 1;
          *(v13 + v14 + 32) = 44;
          *v2 = v13;
        }

        if ((v11 & 0x80000000) != 0)
        {
          v15 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = *(v15 + 16);
            sub_1AC45A78C();
            v15 = v21;
          }

          v16 = *(v15 + 16);
          if (v16 >= *(v15 + 24) >> 1)
          {
            sub_1AC45A78C();
            v15 = v22;
          }

          *(v15 + 16) = v16 + 1;
          *(v15 + v16 + 32) = 45;
          *v2 = v15;
          v11 = -v11;
        }

        sub_1AC45FBF4(v11);
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v23 = *(*v2 + 16);
    result = sub_1AC45A85C(v23);
    v24 = *v2;
    *(v24 + 16) = v23 + 1;
    *(v24 + v23 + 32) = 93;
    *v2 = v24;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC5192C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_1AC459C7C(a2);
  if (v5 == 1)
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v7 = *(*v2 + 16);
    sub_1AC45A85C(v7);
    v8 = *v2;
    *(v8 + 16) = v7 + 1;
    *(v8 + v7 + 32) = 91;
    *v2 = v8;
    *(v2 + 4) = 256;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a1 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v10)
        {
          v14 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = *(v14 + 16);
            sub_1AC45A78C();
            v14 = v19;
          }

          v15 = *(v14 + 16);
          if (v15 >= *(v14 + 24) >> 1)
          {
            sub_1AC45A78C();
            v14 = v20;
          }

          *(v14 + 16) = v15 + 1;
          *(v14 + v15 + 32) = 44;
          *v2 = v14;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          v16 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = *(v16 + 16);
            sub_1AC45A78C();
            v16 = v22;
          }

          v17 = *(v16 + 16);
          if (v17 >= *(v16 + 24) >> 1)
          {
            sub_1AC45A78C();
            v16 = v23;
          }

          *(v16 + 16) = v17 + 1;
          *(v16 + v17 + 32) = 45;
          *v2 = v16;
          v12 = -v12;
        }

        sub_1AC45FBF4(v12);
        v10 = 1;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v24 = *(*v2 + 16);
    sub_1AC45A85C(v24);
    v25 = *v2;
    *(v25 + 16) = v24 + 1;
    *(v25 + v24 + 32) = 91;
    *v2 = v25;
    *(v2 + 4) = 256;
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = (a1 + 32);
      do
      {
        v30 = *v28++;
        v29 = v30;
        v31 = *(v25 + 16);
        if (v27)
        {
          v32 = v31 + 1;
          if (v31 >= *(v25 + 24) >> 1)
          {
            sub_1AC45A78C();
            v25 = v40;
          }

          *(v25 + 16) = v32;
          *(v25 + v31 + 32) = 44;
        }

        else
        {
          v32 = *(v25 + 16);
        }

        v33 = v32 + 1;
        if (v32 >= *(v25 + 24) >> 1)
        {
          sub_1AC45A78C();
          v25 = v36;
        }

        *(v25 + 16) = v33;
        *(v25 + v32 + 32) = 34;
        *v2 = v25;
        if ((v29 & 0x8000000000000000) != 0)
        {
          v34 = v32 + 2;
          if (v34 > *(v25 + 24) >> 1)
          {
            sub_1AC45A78C();
            v25 = v41;
          }

          *(v25 + 16) = v34;
          *(v25 + v33 + 32) = 45;
          *v2 = v25;
          v29 = -v29;
        }

        sub_1AC45FBF4(v29);
        v25 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v25 + 16);
          sub_1AC45A78C();
          v25 = v38;
        }

        v35 = *(v25 + 16);
        if (v35 >= *(v25 + 24) >> 1)
        {
          sub_1AC45A78C();
          v25 = v39;
        }

        *(v25 + 16) = v35 + 1;
        *(v25 + v35 + 32) = 34;
        *v2 = v25;
        v27 = 1;
        --v26;
      }

      while (v26);
    }
  }

  sub_1AC45A774();
  v42 = *(*v2 + 16);
  result = sub_1AC45A85C(v42);
  v43 = *v2;
  *(v43 + 16) = v42 + 1;
  *(v43 + v42 + 32) = 93;
  *v2 = v43;
  *(v2 + 4) = 44;
  return result;
}

uint64_t sub_1AC519688(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          v13 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = *(v13 + 16);
            sub_1AC45A78C();
            v13 = v16;
          }

          v14 = *(v13 + 16);
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_1AC45A78C();
            v13 = v17;
          }

          *(v13 + 16) = v14 + 1;
          *(v13 + v14 + 32) = 44;
          *v2 = v13;
        }

        sub_1AC45FBF4(v11);
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v18 = *(*v2 + 16);
    result = sub_1AC45A85C(v18);
    v19 = *v2;
    *(v19 + 16) = v18 + 1;
    *(v19 + v18 + 32) = 93;
    *v2 = v19;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC519810(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_1AC459C7C(a2);
  if (v5 == 1)
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v7 = *(*v2 + 16);
    sub_1AC45A85C(v7);
    v8 = *v2;
    *(v8 + 16) = v7 + 1;
    *(v8 + v7 + 32) = 91;
    *v2 = v8;
    *(v2 + 4) = 256;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a1 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v10)
        {
          v14 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = *(v14 + 16);
            sub_1AC45A78C();
            v14 = v17;
          }

          v15 = *(v14 + 16);
          if (v15 >= *(v14 + 24) >> 1)
          {
            sub_1AC45A78C();
            v14 = v18;
          }

          *(v14 + 16) = v15 + 1;
          *(v14 + v15 + 32) = 44;
          *v2 = v14;
        }

        sub_1AC45FBF4(v12);
        v10 = 1;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v19 = *(*v2 + 16);
    sub_1AC45A85C(v19);
    v20 = *v2;
    *(v20 + 16) = v19 + 1;
    *(v20 + v19 + 32) = 91;
    *v2 = v20;
    *(v2 + 4) = 256;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (a1 + 32);
      do
      {
        v25 = *v23++;
        v24 = v25;
        v26 = *(v20 + 16);
        if (v22)
        {
          v27 = v26 + 1;
          if (v26 >= *(v20 + 24) >> 1)
          {
            sub_1AC45A78C();
            v20 = v33;
          }

          *(v20 + 16) = v27;
          *(v20 + v26 + 32) = 44;
        }

        else
        {
          v27 = *(v20 + 16);
        }

        if (v27 >= *(v20 + 24) >> 1)
        {
          sub_1AC45A78C();
          v20 = v29;
        }

        *(v20 + 16) = v27 + 1;
        *(v20 + v27 + 32) = 34;
        *v2 = v20;
        sub_1AC45FBF4(v24);
        v20 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v20 + 16);
          sub_1AC45A78C();
          v20 = v31;
        }

        v28 = *(v20 + 16);
        if (v28 >= *(v20 + 24) >> 1)
        {
          sub_1AC45A78C();
          v20 = v32;
        }

        *(v20 + 16) = v28 + 1;
        *(v20 + v28 + 32) = 34;
        *v2 = v20;
        v22 = 1;
        --v21;
      }

      while (v21);
    }
  }

  sub_1AC45A774();
  v34 = *(*v2 + 16);
  result = sub_1AC45A85C(v34);
  v35 = *v2;
  *(v35 + 16) = v34 + 1;
  *(v35 + v34 + 32) = 93;
  *v2 = v35;
  *(v2 + 4) = 44;
  return result;
}

uint64_t sub_1AC519BF8(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        if (v9)
        {
          v12 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = *(v12 + 16);
            sub_1AC45A78C();
            v12 = v16;
          }

          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_1AC45A78C();
            v12 = v17;
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + v13 + 32) = 44;
          *v2 = v12;
        }

        if (v11)
        {
          v14 = "true";
        }

        else
        {
          v14 = "false";
        }

        sub_1AC45FD18(v14);
        ++v10;
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v18 = *(*v2 + 16);
    result = sub_1AC45A85C(v18);
    v19 = *v2;
    *(v19 + 16) = v18 + 1;
    *(v19 + v18 + 32) = 93;
    *v2 = v19;
    v2[4] = 44;
  }

  return result;
}

void sub_1AC51A8E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1AC5B48D0](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51A924(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_1AC51F498();
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51A964(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_1AC4578F4(v5, *v4);
      sub_1AC51EC58();
      sub_1AC4513F8(v5, v6);
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51A9D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x1AC5B48D0](*&v6);
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51AA2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_1AC51F498();
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51AA84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_1AC51F488();
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51AAC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1AC51EEB8();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1AC51AB2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1AC5B48A0](v5);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1AC51ADFC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC450A70(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WireFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WireFormat(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AC51AF9C()
{
  result = qword_1EB559F70;
  if (!qword_1EB559F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F70);
  }

  return result;
}

uint64_t Google_Protobuf_StringValue.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_StringValue.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double Google_Protobuf_BytesValue.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  a1[1] = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_BytesValue.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v3, v4);
  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_BytesValue.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1AC4513F8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_1AC51BD38(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_DoubleValue._protobuf_nameMap.getter()
{
  if (qword_1EB557C80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557C88);
}

void Google_Protobuf_DoubleValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 48);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51BE98()
{
  OUTLINED_FUNCTION_36_7();
  if (v3 == 0.0 || (sub_1AC4DF9DC(v3), !v0))
  {
    switch(v1 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_94();
        goto LABEL_8;
      case 2uLL:
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
LABEL_8:
        if (v4 != v5)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v1 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t static Google_Protobuf_DoubleValue.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1, a2);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t Google_Protobuf_DoubleValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
  sub_1AC51BE98();
  OUTLINED_FUNCTION_108(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51C0E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1AC51B8F8();
}

uint64_t sub_1AC51C0F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC51BE98();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FloatValue._protobuf_nameMap.getter()
{
  if (qword_1EB557BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557BB8);
}

void Google_Protobuf_FloatValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 24);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51C29C()
{
  OUTLINED_FUNCTION_36_7();
  if (v3 == 0.0 || (sub_1AC4DF9DC(v3), !v0))
  {
    switch(v1 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_94();
        goto LABEL_8;
      case 2uLL:
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
LABEL_8:
        if (v4 != v5)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v1 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t static Google_Protobuf_FloatValue.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1, a2);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t Google_Protobuf_FloatValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
  sub_1AC51C29C();
  OUTLINED_FUNCTION_108(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51C4EC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  return sub_1AC51B940();
}

uint64_t sub_1AC51C4FC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC51C29C();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Int64Value._protobuf_nameMap.getter()
{
  if (qword_1EB557F60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559F78);
}

void Google_Protobuf_Int64Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 96);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t static Google_Protobuf_UInt64Value._protobuf_nameMap.getter()
{
  if (qword_1EB557F68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559F98);
}

void Google_Protobuf_UInt64Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 144);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51C8B8()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t _s21InternalSwiftProtobuf07Google_C11_Int64ValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1, a2);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t _s21InternalSwiftProtobuf07Google_C11_Int64ValueV04hashF0Sivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
  OUTLINED_FUNCTION_30_7();
  sub_1AC51C8B8();
  if (v2)
  {
    v12 = MEMORY[0x1AC5B4BA0](v2);
  }

  OUTLINED_FUNCTION_108(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51CB20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
  OUTLINED_FUNCTION_30_7();
  sub_1AC51C8B8();
  if (v2)
  {
    v12 = MEMORY[0x1AC5B4BA0](v2);
  }

  OUTLINED_FUNCTION_108(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Int32Value._protobuf_nameMap.getter()
{
  if (qword_1EB557B80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557B88);
}

void Google_Protobuf_Int32Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 72);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51CC9C()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_UInt32Value._protobuf_nameMap.getter()
{
  if (qword_1EB557C30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557C38);
}

void sub_1AC51CF0C()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t sub_1AC51CFC0(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = OUTLINED_FUNCTION_232();
  v14 = OUTLINED_FUNCTION_109(v6, v7, v8, v9, v10, v11, v12, v13, v32, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57);
  v22 = OUTLINED_FUNCTION_20_11(v14, v15, v16, v17, v18, v19, v20, v21, v33, v36, v39);
  v23 = a1(v22);
  if (v3)
  {
    v23 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v23, v24, v25, v26, v27, v28, v29, v30, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51D09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = *v4;
  v8 = *(v4 + 1);
  v7 = *(v4 + 2);
  v9 = sub_1AC51F468();
  v17 = OUTLINED_FUNCTION_109(v9, v10, v11, v12, v13, v14, v15, v16, v35, v38, v41, v44, v46, v48, v50, v52, v54, v56, v58, v60);
  v25 = OUTLINED_FUNCTION_20_11(v17, v18, v19, v20, v21, v22, v23, v24, v36, v39, v42);
  v26 = a4(v25);
  if (v6)
  {
    v26 = MEMORY[0x1AC5B4BA0](v6);
  }

  OUTLINED_FUNCTION_108(v26, v27, v28, v29, v30, v31, v32, v33, v37, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_BoolValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559FB8);
}

void Google_Protobuf_BoolValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 312);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51D228()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51F488();
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
LABEL_8:
      if (v3 != v4)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_BoolValue.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1, a2);
  v3 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v3, v4);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v7, v8);
  v9 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v9, v10);
  return v6 & 1;
}

uint64_t Google_Protobuf_BoolValue.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43);
  OUTLINED_FUNCTION_30_7();
  sub_1AC51D228();
  if (v3)
  {
    v12 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51D458()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  return sub_1AC51B9B8();
}

uint64_t sub_1AC51D468()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC51D228();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_StringValue._protobuf_nameMap.getter()
{
  if (qword_1EB557C58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557C60);
}

void sub_1AC51D59C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51EEB8();
  }

  switch(a5 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_10;
    case 2uLL:
      v8 = *(a4 + 16);
      v9 = *(a4 + 24);
LABEL_10:
      if (v8 != v9)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_StringValue.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v7, v8);
  v9 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v9, v10);
  v11 = OUTLINED_FUNCTION_44();
  v12 = MEMORY[0x1AC5B4070](v11);
  v13 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v13, v14);
  v15 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v15, v16);
  return v12 & 1;
}

uint64_t static Google_Protobuf_BytesValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559FD8);
}

void Google_Protobuf_BytesValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 360);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51D948(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      v7 = a2;
      v8 = a2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      MEMORY[0x1AC5B48A0](1);
      sub_1AC51EC58();
LABEL_8:
      switch(a5 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_13;
        case 2uLL:
          v9 = *(a4 + 16);
          v10 = *(a4 + 24);
LABEL_13:
          if (v9 != v10)
          {
            goto LABEL_14;
          }

          return;
        case 3uLL:
          return;
        default:
          if ((a5 & 0xFF000000000000) == 0)
          {
            return;
          }

LABEL_14:
          OUTLINED_FUNCTION_36_0();
          sub_1AC51EC58();
          return;
      }
  }
}

uint64_t static Google_Protobuf_BytesValue.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1AC5B4070](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v6, v7);
  v8 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v8, v9);
  v10 = OUTLINED_FUNCTION_44();
  v11 = MEMORY[0x1AC5B4070](v10);
  v12 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v12, v13);
  v14 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v14, v15);
  return v11 & 1;
}

uint64_t sub_1AC51DBAC(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = OUTLINED_FUNCTION_232();
  v15 = OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36, v39, v42, v44, v46, v48, v50, v52, v54, v56, v58);
  v23 = OUTLINED_FUNCTION_26_12(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v40);
  v24 = a1(v23);
  if (v3)
  {
    v24 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = sub_1AC51F468();
  v18 = OUTLINED_FUNCTION_109(v10, v11, v12, v13, v14, v15, v16, v17, v36, v39, v42, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  v26 = OUTLINED_FUNCTION_26_12(v18, v19, v20, v21, v22, v23, v24, v25, v37, v40, v43);
  v27 = a4(v26);
  if (v6)
  {
    v27 = MEMORY[0x1AC5B4BA0](v6);
  }

  OUTLINED_FUNCTION_108(v27, v28, v29, v30, v31, v32, v33, v34, v38, v41, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC51DD34(uint64_t a1)
{
  result = sub_1AC51DD5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51DD5C()
{
  result = qword_1ED6E3430;
  if (!qword_1ED6E3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3430);
  }

  return result;
}

unint64_t sub_1AC51DDDC()
{
  result = qword_1EB559FF8;
  if (!qword_1EB559FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559FF8);
  }

  return result;
}

unint64_t sub_1AC51DE34()
{
  result = qword_1EB55A000;
  if (!qword_1EB55A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A000);
  }

  return result;
}

unint64_t sub_1AC51DE88(uint64_t a1)
{
  result = sub_1AC51DEB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51DEB0()
{
  result = qword_1EB557CD0;
  if (!qword_1EB557CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CD0);
  }

  return result;
}

unint64_t sub_1AC51DF30()
{
  result = qword_1EB55A008;
  if (!qword_1EB55A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A008);
  }

  return result;
}

unint64_t sub_1AC51DF88()
{
  result = qword_1EB55A010;
  if (!qword_1EB55A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A010);
  }

  return result;
}

unint64_t sub_1AC51DFDC(uint64_t a1)
{
  result = sub_1AC51E004();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E004()
{
  result = qword_1EB557CC0;
  if (!qword_1EB557CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CC0);
  }

  return result;
}

unint64_t sub_1AC51E084()
{
  result = qword_1EB55A018;
  if (!qword_1EB55A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A018);
  }

  return result;
}

unint64_t sub_1AC51E0DC()
{
  result = qword_1EB55A020;
  if (!qword_1EB55A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A020);
  }

  return result;
}

unint64_t sub_1AC51E130(uint64_t a1)
{
  result = sub_1AC51E158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E158()
{
  result = qword_1EB557B50;
  if (!qword_1EB557B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B50);
  }

  return result;
}

unint64_t sub_1AC51E1D8()
{
  result = qword_1EB55A028;
  if (!qword_1EB55A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A028);
  }

  return result;
}

unint64_t sub_1AC51E230()
{
  result = qword_1EB55A030;
  if (!qword_1EB55A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A030);
  }

  return result;
}

unint64_t sub_1AC51E284(uint64_t a1)
{
  result = sub_1AC51E2AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E2AC()
{
  result = qword_1EB557CC8;
  if (!qword_1EB557CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CC8);
  }

  return result;
}

unint64_t sub_1AC51E32C()
{
  result = qword_1EB55A038;
  if (!qword_1EB55A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A038);
  }

  return result;
}

unint64_t sub_1AC51E384()
{
  result = qword_1EB55A040;
  if (!qword_1EB55A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A040);
  }

  return result;
}

unint64_t sub_1AC51E3D8(uint64_t a1)
{
  result = sub_1AC51E400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E400()
{
  result = qword_1EB557CB8;
  if (!qword_1EB557CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CB8);
  }

  return result;
}

unint64_t sub_1AC51E480()
{
  result = qword_1EB55A048;
  if (!qword_1EB55A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A048);
  }

  return result;
}

unint64_t sub_1AC51E4D8()
{
  result = qword_1EB55A050;
  if (!qword_1EB55A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A050);
  }

  return result;
}

unint64_t sub_1AC51E52C(uint64_t a1)
{
  result = sub_1AC51E554();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E554()
{
  result = qword_1EB557C10;
  if (!qword_1EB557C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C10);
  }

  return result;
}

unint64_t sub_1AC51E5D4()
{
  result = qword_1EB55A058;
  if (!qword_1EB55A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A058);
  }

  return result;
}

unint64_t sub_1AC51E62C()
{
  result = qword_1EB55A060;
  if (!qword_1EB55A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A060);
  }

  return result;
}

unint64_t sub_1AC51E680(uint64_t a1)
{
  result = sub_1AC51E6A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E6A8()
{
  result = qword_1ED6E3BB0;
  if (!qword_1ED6E3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3BB0);
  }

  return result;
}

unint64_t sub_1AC51E728()
{
  result = qword_1EB55A068;
  if (!qword_1EB55A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A068);
  }

  return result;
}

unint64_t sub_1AC51E780()
{
  result = qword_1EB55A070;
  if (!qword_1EB55A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A070);
  }

  return result;
}

unint64_t sub_1AC51E7D4(uint64_t a1)
{
  result = sub_1AC51E7FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E7FC()
{
  result = qword_1EB557BE0;
  if (!qword_1EB557BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BE0);
  }

  return result;
}

uint64_t sub_1AC51E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC51E8B8()
{
  result = qword_1EB55A078;
  if (!qword_1EB55A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A078);
  }

  return result;
}

unint64_t sub_1AC51E910()
{
  result = qword_1EB55A080;
  if (!qword_1EB55A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A080);
  }

  return result;
}

uint64_t sub_1AC51E98C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC51E9D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AC51EA28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1AC51EA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}