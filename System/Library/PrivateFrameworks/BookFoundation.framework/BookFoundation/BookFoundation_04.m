uint64_t sub_241CD8920(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 328);
  v8 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v9 = sub_241CD903C;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v9 = sub_241CD8A54;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_241CD8A54()
{
  v1 = *(v0 + 304);
  MEMORY[0x245CFD2E0](*(v0 + 352), *(v0 + 344));
  v2 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v2;
  v3 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v3;
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_241CD8B08;

  return sub_241CD97F4();
}

uint64_t sub_241CD8B08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_241CD90D4;
  }

  else
  {
    v5 = sub_241CD8C1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CD8C1C()
{
  if (*(*(v0 + 368) + 16))
  {
    v1 = *(v0 + 304);
    v2 = sub_241CF8B48();
    if (!v2)
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_241CD8394(v2);
    sub_241CF8B58();
  }

  else
  {
    v3 = *(v0 + 368);
  }

  v4 = *(v0 + 224);
  *(v0 + 144) = *(v0 + 208);
  *(v0 + 160) = v4;
  v5 = *(v0 + 312);
  *(v0 + 176) = *(v0 + 240);
  *(v0 + 192) = v5;
  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = sub_241CD8D18;

  return sub_241CDABD0();
}

uint64_t sub_241CD8D18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 384);
  v8 = *v3;
  *(*v3 + 392) = v2;

  if (v2)
  {
    v9 = sub_241CD916C;
  }

  else
  {
    *(v6 + 400) = a2;
    *(v6 + 408) = a1;
    v9 = sub_241CD8E4C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_241CD8E4C()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[38];
  v4 = v0[34];
  sub_241CF8B98();
  MEMORY[0x245CFD2D0](v1, v2);
  sub_241CF8B68();
  v5 = sub_241CF8CF8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  if (v7 == 1)
  {
    sub_241C8EA54(v0[34], &qword_27EC69EF0, &unk_241CFBC20);
    sub_241CE04A0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    (*(v9 + 8))(v8, v10);
    v12 = v0[38];
    v13 = v0[34];
    v14 = v0[35];
  }

  else
  {
    v17 = v0[34];
    v16 = v0[35];
    v18 = v0[32];
    (*(v9 + 8))(v0[38], v0[36]);
    (*(v6 + 32))(v18, v17, v5);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_241CD903C()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[42];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];

  v5 = v0[1];

  return v5();
}

uint64_t sub_241CD90D4()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[47];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];

  v5 = v0[1];

  return v5();
}

uint64_t sub_241CD916C()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[49];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];

  v5 = v0[1];

  return v5();
}

unint64_t MCatalogRequestURLBuilder.BuilderError.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000032;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t MCatalogRequestURLBuilder.BuilderError.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

unint64_t sub_241CD92CC()
{
  if (*v0)
  {
    result = 0xD000000000000032;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_241CD9308()
{
  v2 = v0[4];
  *(v1 + 160) = *v0;
  *(v1 + 168) = v2;
  return MEMORY[0x2822009F8](sub_241CD9330, 0, 0);
}

uint64_t sub_241CD9330()
{
  v1 = [*(v0 + 168) countryCode];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_241CD9468;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_241C93918(&qword_27EC6A7B8, &qword_241CFED68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241CD2564;
  *(v0 + 104) = &unk_2853DE848;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241CD9468()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_241CD9578;
  }

  else
  {
    v3 = sub_241CD95E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241CD9578()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_241CD95E8()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = sub_241CF9038();
  v5 = v4;

  strcpy(v21, "/v1/catalog/");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  MEMORY[0x245CFD860](v3, v5);

  v7 = v21[0];
  v6 = v21[1];
  if (*(v1 + 16) <= 1uLL)
  {
    sub_241CD7E7C(*(v0 + 160), v21);
    v8 = LOBYTE(v21[0]);
    if (LOBYTE(v21[0]) == 6)
    {
      v21[0] = v7;
      v21[1] = v6;
      MEMORY[0x245CFD860](0x746E65746E6F632FLL, 0xE900000000000073);
    }

    else
    {
      if (LOBYTE(v21[0]) == 7)
      {
        goto LABEL_22;
      }

      v21[0] = v7;
      v21[1] = v6;
      MEMORY[0x245CFD860](47, 0xE100000000000000);
      v9 = 0xEB00000000736B6FLL;
      v10 = 0x6F622D6F69647561;
      v11 = 0xE500000000000000;
      v12 = 0x736B6F6F62;
      v13 = 0x7265732D6B6F6F62;
      v14 = 0xE600000000000000;
      if (v8 == 4)
      {
        v14 = 0xEB00000000736569;
      }

      else
      {
        v13 = 0x7365726E6567;
      }

      if (v8 != 3)
      {
        v12 = v13;
        v11 = v14;
      }

      v15 = 0x8000000241D008F0;
      v16 = 0xD000000000000011;
      if (v8 != 1)
      {
        v16 = 0x73726F68747561;
        v15 = 0xE700000000000000;
      }

      if (v8)
      {
        v10 = v16;
        v9 = v15;
      }

      if (v8 <= 2)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      if (v8 <= 2)
      {
        v18 = v9;
      }

      else
      {
        v18 = v11;
      }

      MEMORY[0x245CFD860](v17, v18);
    }

    v7 = v21[0];
    v6 = v21[1];
  }

LABEL_22:
  v19 = *(v0 + 8);

  return v19(v7, v6);
}

uint64_t sub_241CD97F4()
{
  v2 = sub_241CF8B38();
  *(v1 + 320) = v2;
  v3 = *(v2 - 8);
  *(v1 + 328) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  *(v1 + 368) = swift_task_alloc();
  v5 = *(v0 + 16);
  *(v1 + 376) = *v0;
  *(v1 + 392) = v5;
  *(v1 + 408) = *(v0 + 32);
  *(v1 + 208) = *(v0 + 40);
  *(v1 + 224) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_241CD990C, 0, 0);
}

uint64_t sub_241CD990C()
{
  v75 = v0;
  v1 = (v0 + 47);
  v2 = v0[47];
  v0[35] = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3 >= 2)
  {
    v65 = v0 + 47;
    v4 = sub_241CE8880(v3, 0);
    v5 = sub_241CE95C8(&v70, v4 + 32, v3, v2);
    i = v71;
    v1 = v74;
    v64 = v2;

    sub_241C90BFC();
    if (v5 == v3)
    {
      v70 = v4;

      sub_241CE01A4(&v70, 0x73746E65746E6F63, 0xE800000000000000);

      v9 = v70;
      v3 = *(v70 + 16);
      if (!v3)
      {

        i = MEMORY[0x277D84F90];
        v0 = v68;
        v1 = v65;
        goto LABEL_54;
      }

      v10 = 0;
      v0 = v68;
      v62 = v68[47];
      i = MEMORY[0x277D84F90];
      v59 = v68[41];
      v11 = v64;
      v1 = v65;
      v60 = *(v70 + 16);
      v61 = v70;
      while (1)
      {
        v7 = v9[2];
        if (v10 >= v7)
        {
          break;
        }

        if (*(v11 + 16))
        {
          v14 = *(v9 + v10 + 32);
          v4 = *v1;
          v15 = sub_241CF4160(*(v9 + v10 + 32));
          if (v16)
          {
            v1 = *(*(v62 + 56) + 8 * v15);
            v70 = 1534289001;
            v71 = 0xE400000000000000;
            v17 = 0x7365726E6567;
            if (v14 != 5)
            {
              v17 = 0x73746E65746E6F63;
            }

            v18 = 0xE800000000000000;
            if (v14 == 5)
            {
              v18 = 0xE600000000000000;
            }

            v19 = 0x736B6F6F62;
            if (v14 != 3)
            {
              v19 = 0x7265732D6B6F6F62;
            }

            v20 = 0xE500000000000000;
            if (v14 != 3)
            {
              v20 = 0xEB00000000736569;
            }

            if (v14 <= 4)
            {
              v17 = v19;
              v18 = v20;
            }

            v21 = 0xEB00000000736B6FLL;
            v22 = 0xD000000000000011;
            if (v14 != 1)
            {
              v22 = 0x73726F68747561;
            }

            v23 = 0x8000000241D008F0;
            if (v14 != 1)
            {
              v23 = 0xE700000000000000;
            }

            if (v14)
            {
              v21 = v23;
            }

            else
            {
              v22 = 0x6F622D6F69647561;
            }

            if (v14 <= 2)
            {
              v24 = v22;
            }

            else
            {
              v24 = v17;
            }

            if (v14 <= 2)
            {
              v25 = v21;
            }

            else
            {
              v25 = v18;
            }

            MEMORY[0x245CFD860](v24, v25);

            MEMORY[0x245CFD860](93, 0xE100000000000000);
            v4 = *(v1 + 16);
            if (v4)
            {
              v26 = i;
              sub_241C93918(&qword_27EC69D98, &unk_241CFED80);
              v27 = swift_allocObject();
              v28 = j__malloc_size(v27);
              v29 = v28 - 32;
              if (v28 < 32)
              {
                v29 = v28 - 17;
              }

              v27[2] = v4;
              v27[3] = 2 * (v29 >> 4);
              v63 = sub_241CE9470(&v70, v27 + 4, v4, v1);
              v3 = v70;
              i = v72;
              v0 = v73;

              sub_241C90BFC();
              v7 = v63;
              if (v63 != v4)
              {
                goto LABEL_74;
              }

              v0 = v68;
              i = v26;
              v11 = v64;
            }

            else
            {
              v27 = MEMORY[0x277D84F90];
            }

            v69 = v27;
            sub_241CDC274(&v69);
            v30 = v0[46];

            v0[39] = v69;
            sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
            sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30);
            sub_241CF8FA8();

            sub_241CF8B18();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              i = sub_241CBF9B0(0, i[2] + 1, 1, i);
            }

            v1 = v65;
            v9 = v61;
            v32 = i[2];
            v31 = i[3];
            v4 = (v32 + 1);
            if (v32 >= v31 >> 1)
            {
              i = sub_241CBF9B0(v31 > 1, v32 + 1, 1, i);
            }

            v12 = v0[46];
            v13 = v0[40];
            i[2] = v4;
            (*(v59 + 32))(i + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v32, v12, v13);
            v0[35] = i;
            v3 = v60;
          }
        }

        if (v3 == ++v10)
        {

          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
    }

    __break(1u);
    goto LABEL_76;
  }

  sub_241CD7EF8(v2, &v70);
  v4 = v71;
  if (v71)
  {
    v8 = *(v71 + 16);
    if (v8)
    {
      v3 = sub_241CE87FC(*(v71 + 16), 0);
      v0 = sub_241CE9470(&v70, (v3 + 32), v8, v4);
      i = v72;

      sub_241C90BFC();
      if (v0 != v8)
      {
        goto LABEL_77;
      }

      v0 = v68;
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v69 = v3;
    sub_241CDC274(&v69);
    v33 = v0[45];

    v0[38] = v69;
    sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
    sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30);
    sub_241CF8FA8();

    sub_241CF8B18();

    i = sub_241CBF9B0(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = i[2];
    v7 = i[3];
    v4 = (v3 + 1);
    if (v3 >= v7 >> 1)
    {
      goto LABEL_79;
    }

    goto LABEL_51;
  }

  for (i = MEMORY[0x277D84F90]; ; v0[35] = i)
  {
LABEL_54:
    v37 = v0[48];
    v4 = *(v37 + 16);
    if (v4)
    {
      v66 = i;
      v38 = sub_241CE87FC(v4, 0);
      v0 = sub_241CE9470(&v70, v38 + 4, v4, v37);
      v3 = v70;
      i = v72;

      sub_241C90BFC();
      if (v0 != v4)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v69 = v38;
      sub_241CDC274(&v69);
      v0 = v68;
      v39 = v68[44];
      v68[36] = v69;
      sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
      sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30);
      sub_241CF8FA8();

      sub_241CF8B18();

      i = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_241CBF9B0(0, v66[2] + 1, 1, v66);
      }

      v41 = i[2];
      v40 = i[3];
      if (v41 >= v40 >> 1)
      {
        i = sub_241CBF9B0(v40 > 1, v41 + 1, 1, i);
      }

      v42 = v68[44];
      v43 = v68[40];
      v44 = v68[41];
      i[2] = v41 + 1;
      (*(v44 + 32))(i + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41, v42, v43);
      v68[35] = i;
    }

    v45 = v0[49];
    v4 = *(v45 + 16);
    if (!v4)
    {
      goto LABEL_68;
    }

    v67 = i;
    v46 = sub_241CE87FC(v4, 0);
    v0 = sub_241CE9470(&v70, v46 + 4, v4, v45);
    v3 = v70;
    i = v72;

    sub_241C90BFC();
    if (v0 == v4)
    {
      break;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    i = sub_241CBF9B0(v7 > 1, v4, 1, i);
LABEL_51:
    v34 = v0[45];
    v35 = v0[40];
    v36 = v0[41];
    i[2] = v4;
    (*(v36 + 32))(i + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v3, v34, v35);
  }

  v69 = v46;
  sub_241CDC274(&v69);
  v47 = v67;
  v0 = v68;
  v48 = v68[43];
  v68[37] = v69;
  sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30);
  sub_241CF8FA8();

  sub_241CF8B18();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_241CBF9B0(0, v67[2] + 1, 1, v67);
  }

  v50 = v47[2];
  v49 = v47[3];
  if (v50 >= v49 >> 1)
  {
    v47 = sub_241CBF9B0(v49 > 1, v50 + 1, 1, v47);
  }

  v51 = v68[43];
  v52 = v68[40];
  v53 = v68[41];
  v47[2] = v50 + 1;
  (*(v53 + 32))(v47 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50, v51, v52);
  v68[35] = v47;
LABEL_68:
  v54 = v0[50];
  if (*(v54 + 16))
  {
    v70 = v0[50];

    sub_241CDC2E0(&v70);
    sub_241CD8394(v70);
    v54 = v0[50];
  }

  v55 = v0[51];
  v56 = v0[49];
  *(v0 + 5) = *v1;
  v0[12] = v56;
  v0[13] = v54;
  v0[14] = v55;
  *(v0 + 15) = *(v0 + 13);
  v0[17] = v0[28];
  v57 = swift_task_alloc();
  v0[52] = v57;
  *v57 = v0;
  v57[1] = sub_241CDA474;

  return sub_241CD9308();
}

uint64_t sub_241CDA474(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 416);
  v8 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v9 = sub_241CDA7C4;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v9 = sub_241CDA5A8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_241CDA5A8()
{
  *(v0 + 232) = *(v0 + 440);
  *(v0 + 240) = *(v0 + 432);
  *(v0 + 248) = 0x6F6363612F656D2FLL;
  *(v0 + 256) = 0xEB00000000746E75;
  sub_241C8DFF0();
  v1 = sub_241CF95E8();

  if (v1)
  {
    v3 = *(v0 + 360);
    v2 = *(v0 + 368);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v6 = *(v0 + 336);
    v7 = *(v0 + 280);

    v8 = *(v0 + 8);

    return v8(v7);
  }

  else
  {
    v10 = [*(v0 + 408) languageTag];
    *(v0 + 448) = v10;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 264;
    *(v0 + 24) = sub_241CDA86C;
    v11 = swift_continuation_init();
    *(v0 + 200) = sub_241C93918(&qword_27EC6A7B8, &qword_241CFED68);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_241CD2564;
    *(v0 + 168) = &unk_2853DE820;
    *(v0 + 176) = v11;
    [v10 valueWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_241CDA7C4()
{
  v1 = v0[53];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t sub_241CDA86C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  if (v2)
  {
    v3 = sub_241CDAB14;
  }

  else
  {
    v3 = sub_241CDA97C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241CDA97C()
{
  v1 = *(v0 + 264);

  v2 = sub_241CF9038();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *(v0 + 336);
    sub_241CF8B18();

    v7 = *(v0 + 280);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_241CBF9B0(0, v7[2] + 1, 1, v7);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_241CBF9B0(v8 > 1, v9 + 1, 1, v7);
    }

    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 320);
    v7[2] = v9 + 1;
    (*(v11 + 32))(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v10, v12);
  }

  else
  {

    v7 = *(v0 + 280);
  }

  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v16 = *(v0 + 344);
  v15 = *(v0 + 352);
  v17 = *(v0 + 336);

  v18 = *(v0 + 8);

  return v18(v7);
}

uint64_t sub_241CDAB14()
{
  v1 = v0[56];
  v2 = v0[57];
  swift_willThrow();

  v3 = v0[57];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v9 = v0[35];

  v10 = v0[1];

  return v10();
}

uint64_t sub_241CDABD0()
{
  *(v1 + 160) = *(v0 + 32);
  *(v1 + 153) = *(v0 + 40);
  return MEMORY[0x2822009F8](sub_241CDABFC, 0, 0);
}

uint64_t sub_241CDABFC()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  if (*(v1 + 153) == 3)
  {
    v4 = &selRef_priceTrackingMediaAPIHost;
  }

  else
  {
    v4 = &selRef_booksMediaAPIHost;
  }

  v5 = [*(v1 + 160) *v4];
  *(v1 + 168) = v5;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_241CDAD4C;
  v6 = swift_continuation_init();
  *(v1 + 136) = sub_241C93918(&qword_27EC6A7B8, &qword_241CFED68);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_241CD2564;
  *(v1 + 104) = &unk_2853DE7F8;
  *(v1 + 112) = v6;
  [v5 valueWithCompletion_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_241CDAD4C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_241CDAEE8;
  }

  else
  {
    v3 = sub_241CDAE5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241CDAE5C()
{
  v1 = *(v0 + 144);

  v2 = sub_241CF9038();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_241CDAEE8()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_241CDAF58(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a2;
  if (v5 <= 2)
  {
    v9 = 0xD000000000000011;
    v10 = 0x8000000241D008F0;
    if (v5 != 1)
    {
      v9 = 0x73726F68747561;
      v10 = 0xE700000000000000;
    }

    if (*a1)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0x6F622D6F69647561;
    }

    if (v5)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xEB00000000736B6FLL;
    }

    if (*a2 <= 2u)
    {
LABEL_31:
      if (v6)
      {
        if (v6 == 1)
        {
          a4 = 0x8000000241D008F0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_44;
          }
        }

        else
        {
          a4 = 0xE700000000000000;
          if (v7 != 0x73726F68747561)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        a4 = 0xEB00000000736B6FLL;
        if (v7 != 0x6F622D6F69647561)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_42;
    }
  }

  else if (*a1 > 4u)
  {
    if (v5 == 5)
    {
      v8 = 0xE600000000000000;
      v7 = 0x7365726E6567;
      if (*a2 <= 2u)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v11 = a3;

      a3 = v11;
      v7 = v11;
      v8 = a4;
      if (v6 <= 2)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v5 == 3)
    {
      v7 = 0x736B6F6F62;
    }

    else
    {
      v7 = 0x7265732D6B6F6F62;
    }

    if (v5 == 3)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xEB00000000736569;
    }

    if (*a2 <= 2u)
    {
      goto LABEL_31;
    }
  }

  if (v6 > 4)
  {
    if (v6 == 5)
    {
      a4 = 0xE600000000000000;
      if (v7 != 0x7365726E6567)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v12 = v7;
      v13 = a3;

      if (v12 != v13)
      {
LABEL_44:
        v14 = sub_241CF98C8();
        goto LABEL_45;
      }
    }
  }

  else if (v6 == 3)
  {
    a4 = 0xE500000000000000;
    if (v7 != 0x736B6F6F62)
    {
      goto LABEL_44;
    }
  }

  else
  {
    a4 = 0xEB00000000736569;
    if (v7 != 0x7265732D6B6F6F62)
    {
      goto LABEL_44;
    }
  }

LABEL_42:
  if (v8 != a4)
  {
    goto LABEL_44;
  }

  v14 = 0;
LABEL_45:

  return v14 & 1;
}

uint64_t sub_241CDB1BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_241CF9998();
  sub_241CF90B8();
  v9 = sub_241CF99C8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_241CF98C8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_241CDB8B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_241CDB30C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_241CF9998();
  MEMORY[0x245CFE100](a2);
  v7 = sub_241CF99C8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_241CDBA34(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_241CDB404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_241C93918(&qword_27EC6A7B0, &qword_241CFED60);
  result = sub_241CF9688();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_241CDB664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_241C93918(&qword_27EC6A7A8, &unk_241CFED50);
  result = sub_241CF9688();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_241CF9998();
      MEMORY[0x245CFE100](v18);
      result = sub_241CF99C8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_241CDB8B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_241CDB404(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_241CDBB80();
      goto LABEL_16;
    }

    sub_241CDBE1C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_241CF9998();
  sub_241CF90B8();
  result = sub_241CF99C8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_241CF98C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_241CF9928();
  __break(1u);
  return result;
}

uint64_t sub_241CDBA34(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_241CDB664(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_241CDBCDC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_241CDC054(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_241CF9998();
  MEMORY[0x245CFE100](v4);
  result = sub_241CF99C8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_241CF9928();
  __break(1u);
  return result;
}

void *sub_241CDBB80()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A7B0, &qword_241CFED60);
  v2 = *v0;
  v3 = sub_241CF9678();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_241CDBCDC()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A7A8, &unk_241CFED50);
  v2 = *v0;
  v3 = sub_241CF9678();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_241CDBE1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_241C93918(&qword_27EC6A7B0, &qword_241CFED60);
  result = sub_241CF9688();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_241CF9998();

      sub_241CF90B8();
      result = sub_241CF99C8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_241CDC054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_241C93918(&qword_27EC6A7A8, &unk_241CFED50);
  result = sub_241CF9688();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_241CF9998();
      MEMORY[0x245CFE100](v17);
      result = sub_241CF99C8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_241CDC274(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_241CDE800(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_241CDC388(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_241CDC2E0(void **a1)
{
  v2 = *(sub_241CF8B38() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_241CDE814(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_241CDC480(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_241CDC388(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_241CF9898();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241CF92D8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_241CDC988(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_241CDC5AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241CDC480(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_241CF9898();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_241CF8B38();
        v6 = sub_241CF92D8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_241CF8B38() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_241CDCF64(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_241CDC67C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241CDC5AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_241CF98C8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241CDC67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_241CF8B38();
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_241CF8B28();
      v28 = v27;
      if (v26 == sub_241CF8B28() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_241CF98C8();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241CDC988(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_241CDE470(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_241CDDB20((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_241CF98C8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_241CF98C8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241CBFB88(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_241CBFB88((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_241CDDB20((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_241CDE470(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_241CDE3E4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_241CF98C8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_241CDCF64(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_241CF8B38();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_241CDDD48(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_241CDE470(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_241CDE3E4(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_241CDE470(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_241CF8B28();
      v38 = v37;
      v39 = sub_241CF8B28();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_241CF98C8();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_241CF8B28();
        v53 = v52;
        if (v51 == sub_241CF8B28() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_241CF98C8();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_241CBFB88(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_241CBFB88((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_241CDDD48(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_241CDE470(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_241CDE3E4(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_241CF8B28();
    v70 = v69;
    if (v5 == sub_241CF8B28() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_241CF98C8();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_241CDDB20(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_241CF98C8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_241CF98C8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_241CDDD48(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_241CF8B38();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_241CF8B28();
            v53 = v52;
            if (v51 != sub_241CF8B28())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_241CF98C8();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_241CF8B28();
        v33 = v32;
        if (v31 == sub_241CF8B28() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_241CF98C8();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_241CDE484(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_241CDE3E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_241CDE470(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_241CDE484(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_241CF8B38();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_241CDE568(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_241CF97D8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_241CF96F8();
  *v1 = result;
  return result;
}

uint64_t sub_241CDE608(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_241CF97D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_241CF97D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_241CE0A58(&qword_27EC6A7D8, &qword_27EC69F80, &unk_241CFBAA0);
          for (i = 0; i != v6; ++i)
          {
            sub_241C93918(&qword_27EC69F80, &unk_241CFBAA0);
            v9 = sub_241CF4D00(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MResource();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_241CDE7AC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

_BYTE *sub_241CDE850(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56);
    *result = *(*(a5 + 48) + a2);
    v6 = *(v5 + 8 * a2);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_241CDE8A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245CFDB50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_241CDB1BC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_241CDE940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_241C93918(&qword_27EC6A7D0, &qword_241CFEDC8);
    v3 = sub_241CF9808();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_241C8E1DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_241CDEA54(unsigned __int8 *__src, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *__dst, uint64_t a5, unint64_t a6)
{
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v10);
    }

    v12 = &v6[v10];
    if (v10 >= 1)
    {
      if (v8 < v7)
      {
        while (1)
        {
          v13 = *v8;
          v14 = *v6;
          if (v13 <= 2)
          {
            v17 = 0xD000000000000011;
            if (v13 != 1)
            {
              v17 = 0x73726F68747561;
            }

            v18 = 0xE700000000000000;
            if (v13 == 1)
            {
              v18 = 0x8000000241D008F0;
            }

            if (*v8)
            {
              v16 = v17;
            }

            else
            {
              v16 = 0x6F622D6F69647561;
            }

            if (*v8)
            {
              v15 = v18;
            }

            else
            {
              v15 = 0xEB00000000736B6FLL;
            }

            if (*v6 <= 2u)
            {
LABEL_29:
              if (v14)
              {
                if (v14 == 1)
                {
                  v19 = 0x8000000241D008F0;
                  if (v16 != 0xD000000000000011)
                  {
                    goto LABEL_49;
                  }
                }

                else
                {
                  v19 = 0xE700000000000000;
                  if (v16 != 0x73726F68747561)
                  {
                    goto LABEL_49;
                  }
                }
              }

              else
              {
                v19 = 0xEB00000000736B6FLL;
                if (v16 != 0x6F622D6F69647561)
                {
                  goto LABEL_49;
                }
              }

              goto LABEL_47;
            }
          }

          else if (*v8 > 4u)
          {
            if (v13 == 5)
            {
              v15 = 0xE600000000000000;
              v16 = 0x7365726E6567;
              if (*v6 <= 2u)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v15 = a6;

              v16 = a5;
              if (v14 <= 2)
              {
                goto LABEL_29;
              }
            }
          }

          else if (v13 == 3)
          {
            v15 = 0xE500000000000000;
            v16 = 0x736B6F6F62;
            if (*v6 <= 2u)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v16 = 0x7265732D6B6F6F62;
            v15 = 0xEB00000000736569;
            if (*v6 <= 2u)
            {
              goto LABEL_29;
            }
          }

          if (v14 > 4)
          {
            if (v14 == 5)
            {
              v19 = 0xE600000000000000;
              if (v16 != 0x7365726E6567)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v20 = v16;
              v19 = a6;

              if (v20 != a5)
              {
                goto LABEL_49;
              }
            }
          }

          else if (v14 == 3)
          {
            v19 = 0xE500000000000000;
            if (v16 != 0x736B6F6F62)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v19 = 0xEB00000000736569;
            if (v16 != 0x7265732D6B6F6F62)
            {
              goto LABEL_49;
            }
          }

LABEL_47:
          if (v15 == v19)
          {

            goto LABEL_53;
          }

LABEL_49:
          v21 = sub_241CF98C8();

          if (v21)
          {
            v22 = v8 + 1;
            v23 = v8;
            if (v9 >= v8 && v9 < v22)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

LABEL_53:
          v24 = v6 + 1;
          v23 = v6;
          v22 = v8;
          if (v9 < v6)
          {
            ++v6;
          }

          else
          {
            ++v6;
            if (v9 < v24)
            {
              goto LABEL_58;
            }
          }

LABEL_57:
          *v9 = *v23;
LABEL_58:
          ++v9;
          if (v6 < v12)
          {
            v8 = v22;
            if (v22 < v7)
            {
              continue;
            }
          }

          v8 = v9;
          goto LABEL_126;
        }
      }

      v8 = v9;
      if (v9 != v6)
      {
        goto LABEL_133;
      }

LABEL_132:
      if (v8 >= v12)
      {
        goto LABEL_133;
      }

      return 1;
    }

    v8 = v9;
LABEL_131:
    if (v8 != v6)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v12 = &v6[v11];
  if (v11 < 1 || v8 <= v9)
  {
    goto LABEL_131;
  }

LABEL_66:
  v25 = v8 - 1;
  --v7;
  v26 = v12;
  __dsta = v8 - 1;
  do
  {
    v28 = *--v26;
    v27 = v28;
    v29 = *v25;
    if (v28 <= 2)
    {
      v33 = 0xD000000000000011;
      if (v27 != 1)
      {
        v33 = 0x73726F68747561;
      }

      v34 = 0x8000000241D008F0;
      if (v27 != 1)
      {
        v34 = 0xE700000000000000;
      }

      if (v27)
      {
        v30 = v33;
      }

      else
      {
        v30 = 0x6F622D6F69647561;
      }

      if (v27)
      {
        v31 = v34;
      }

      else
      {
        v31 = 0xEB00000000736B6FLL;
      }

      if (*v25 <= 2u)
      {
LABEL_78:
        if (v29)
        {
          if (v29 == 1)
          {
            v32 = 0x8000000241D008F0;
            if (v30 != 0xD000000000000011)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v32 = 0xE700000000000000;
            if (v30 != 0x73726F68747561)
            {
              goto LABEL_114;
            }
          }
        }

        else
        {
          v32 = 0xEB00000000736B6FLL;
          if (v30 != 0x6F622D6F69647561)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_112;
      }
    }

    else if (v27 > 4)
    {
      if (v27 == 5)
      {
        v31 = 0xE600000000000000;
        v30 = 0x7365726E6567;
        if (*v25 <= 2u)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v31 = a6;

        v30 = a5;
        if (v29 <= 2)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (v27 == 3)
      {
        v30 = 0x736B6F6F62;
      }

      else
      {
        v30 = 0x7265732D6B6F6F62;
      }

      if (v27 == 3)
      {
        v31 = 0xE500000000000000;
      }

      else
      {
        v31 = 0xEB00000000736569;
      }

      if (*v25 <= 2u)
      {
        goto LABEL_78;
      }
    }

    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v32 = 0xE600000000000000;
        if (v30 != 0x7365726E6567)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v35 = v30;
        v32 = a6;

        if (v35 != a5)
        {
          goto LABEL_114;
        }
      }
    }

    else if (v29 == 3)
    {
      v32 = 0xE500000000000000;
      if (v30 != 0x736B6F6F62)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v32 = 0xEB00000000736569;
      if (v30 != 0x7265732D6B6F6F62)
      {
        goto LABEL_114;
      }
    }

LABEL_112:
    if (v31 == v32)
    {

      goto LABEL_115;
    }

LABEL_114:
    v36 = sub_241CF98C8();

    if (v36)
    {
      if (v7 + 1 < v8 || v7 >= v8)
      {
        *v7 = *__dsta;
      }

      if (v12 > v6)
      {
        --v8;
        if (__dsta > v9)
        {
          goto LABEL_66;
        }
      }

      v8 = __dsta;
      if (__dsta == v6)
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    }

LABEL_115:
    v25 = v8 - 1;
    if ((v7 + 1) < v12 || v7 >= v12)
    {
      *v7 = *v26;
    }

    --v7;
    v12 = v26;
  }

  while (v26 > v6);
  v12 = v26;
LABEL_126:
  if (v8 == v6)
  {
    goto LABEL_132;
  }

LABEL_133:
  memmove(v8, v6, v12 - v6);
  return 1;
}

uint64_t sub_241CDF128(char **a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v8 = a1;
  v9 = *a1;

  v24 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_241CDE470(v24);
  }

  v20 = v8;
  *v8 = v24;
  v10 = (v24 + 16);
  v8 = *(v24 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v24[16 * v8];
      v13 = *v12;
      v14 = &v10[2 * v8];
      v15 = *v14;
      v16 = v14[1];

      sub_241CDEA54((v11 + v13), (v11 + v15), v11 + v16, a2, a4, a5);

      if (v6)
      {
        *v20 = v24;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v10;
      if (v8 - 2 >= *v10)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_14;
      }

      v8 = v17 - 1;
      memmove(v14, v14 + 2, 16 * v18);
      *v10 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_241CDF2B4(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v127 = MEMORY[0x277D84F90];
  v10 = a3[1];
  if (v10 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v124 = a6;
    v112 = a4;
    v113 = a1;
    while (1)
    {
      v14 = v12;
      v15 = (v12 + 1);
      if (v12 + 1 < v10)
      {
        v16 = a4;
        v17 = v13;
        v18 = *a3;
        v19 = v12 + 1;
        v126 = v15[*a3];
        v125 = *(v18 + v12);
        v120 = sub_241CDAF58(&v126, &v125, a5, a6);
        if (v7)
        {
          goto LABEL_196;
        }

        v114 = v14;
        v15 = (v14 + 2);
        if (v14 + 2 < v10)
        {
          v20 = (v14 + 2);
          while (1)
          {
            v15 = v20;
            v22 = &v20[v18];
            v23 = v20[v18];
            v24 = *(v22 - 1);
            if (v23 <= 2)
            {
              v26 = 0xD000000000000011;
              if (v23 != 1)
              {
                v26 = 0x73726F68747561;
              }

              v27 = 0x8000000241D008F0;
              if (v23 != 1)
              {
                v27 = 0xE700000000000000;
              }

              if (v23)
              {
                v25 = v26;
              }

              else
              {
                v25 = 0x6F622D6F69647561;
              }

              if (v23)
              {
                a6 = v27;
              }

              else
              {
                a6 = 0xEB00000000736B6FLL;
              }

              if (*(v22 - 1) <= 2u)
              {
LABEL_43:
                if (v24)
                {
                  if (v24 == 1)
                  {
                    v28 = 0x8000000241D008F0;
                    if (v25 != 0xD000000000000011)
                    {
                      goto LABEL_9;
                    }
                  }

                  else
                  {
                    v28 = 0xE700000000000000;
                    if (v25 != 0x73726F68747561)
                    {
                      goto LABEL_9;
                    }
                  }
                }

                else
                {
                  v28 = 0xEB00000000736B6FLL;
                  if (v25 != 0x6F622D6F69647561)
                  {
                    goto LABEL_9;
                  }
                }

                goto LABEL_54;
              }
            }

            else if (v23 > 4)
            {
              if (v23 == 5)
              {
                a6 = 0xE600000000000000;
                v25 = 0x7365726E6567;
                if (*(v22 - 1) <= 2u)
                {
                  goto LABEL_43;
                }
              }

              else
              {

                v25 = a5;
                if (v24 <= 2)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              if (v23 == 3)
              {
                v25 = 0x736B6F6F62;
              }

              else
              {
                v25 = 0x7265732D6B6F6F62;
              }

              if (v23 == 3)
              {
                a6 = 0xE500000000000000;
              }

              else
              {
                a6 = 0xEB00000000736569;
              }

              if (*(v22 - 1) <= 2u)
              {
                goto LABEL_43;
              }
            }

            if (v24 > 4)
            {
              if (v24 == 5)
              {
                v28 = 0xE600000000000000;
                if (v25 != 0x7365726E6567)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                v29 = v25;
                v28 = v124;

                if (v29 != a5)
                {
                  goto LABEL_9;
                }
              }
            }

            else if (v24 == 3)
            {
              v28 = 0xE500000000000000;
              if (v25 != 0x736B6F6F62)
              {
                goto LABEL_9;
              }
            }

            else
            {
              v28 = 0xEB00000000736569;
              if (v25 != 0x7265732D6B6F6F62)
              {
                goto LABEL_9;
              }
            }

LABEL_54:
            if (a6 == v28)
            {

              if (v120)
              {
                v19 = (v15 - 1);
                v13 = v17;
                v14 = v114;
                a4 = v16;
                goto LABEL_61;
              }

              goto LABEL_10;
            }

LABEL_9:
            v21 = sub_241CF98C8();

            if ((v120 ^ v21))
            {
              v19 = (v15 - 1);
              break;
            }

LABEL_10:
            v20 = v15 + 1;
            a6 = v124;
            if (v10 == v15 + 1)
            {
              v15 = v10;
              v13 = v17;
              v19 = v10 - 1;
              goto LABEL_60;
            }
          }
        }

        v13 = v17;
LABEL_60:
        v14 = v114;
        a4 = v16;
        if (v120)
        {
LABEL_61:
          a1 = v113;
          if (v15 < v14)
          {
            goto LABEL_217;
          }

          if (v14 <= v19)
          {
            v30 = v15 - 1;
            v31 = v14;
            do
            {
              if (v31 != v30)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_222;
                }

                v32 = v31[v34];
                v31[v34] = v30[v34];
                v30[v34] = v32;
              }
            }

            while (++v31 < v30--);
          }
        }

        else
        {
          a1 = v113;
        }
      }

      v35 = a3[1];
      if (v15 >= v35)
      {
        goto LABEL_140;
      }

      if (__OFSUB__(v15, v14))
      {
        goto LABEL_216;
      }

      if (&v15[-v14] >= a4)
      {
        goto LABEL_140;
      }

      v36 = (v14 + a4);
      if (__OFADD__(v14, a4))
      {
        goto LABEL_218;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v14)
      {
        break;
      }

      if (v15 == v36)
      {
        goto LABEL_140;
      }

      v111 = v13;
      v121 = v7;
      v37 = *a3;
      v38 = &v15[*a3];
      v115 = v14;
      __dst = v36;
      v39 = v14 - v15;
      while (2)
      {
        v40 = v15;
        v41 = v15[v37];
        v42 = v39;
        v43 = v38;
        while (1)
        {
          v44 = *(v43 - 1);
          if (v41 <= 2u)
          {
            break;
          }

          if (v41 > 4u)
          {
            if (v41 == 5)
            {
              v46 = 0xE600000000000000;
              v45 = 0x7365726E6567;
              if (*(v43 - 1) > 2u)
              {
                goto LABEL_107;
              }
            }

            else
            {
              v46 = v124;

              v45 = a5;
              if (v44 > 2)
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            if (v41 == 3)
            {
              v45 = 0x736B6F6F62;
            }

            else
            {
              v45 = 0x7265732D6B6F6F62;
            }

            if (v41 == 3)
            {
              v46 = 0xE500000000000000;
            }

            else
            {
              v46 = 0xEB00000000736569;
            }

            if (*(v43 - 1) > 2u)
            {
              goto LABEL_107;
            }
          }

LABEL_120:
          v51 = 0xD000000000000011;
          if (v44 != 1)
          {
            v51 = 0x73726F68747561;
          }

          v52 = 0x8000000241D008F0;
          if (v44 != 1)
          {
            v52 = 0xE700000000000000;
          }

          if (v44)
          {
            v53 = v51;
          }

          else
          {
            v53 = 0x6F622D6F69647561;
          }

          if (v44)
          {
            v50 = v52;
          }

          else
          {
            v50 = 0xEB00000000736B6FLL;
          }

          if (v45 == v53)
          {
            goto LABEL_133;
          }

LABEL_134:
          v55 = sub_241CF98C8();

          if ((v55 & 1) == 0)
          {
            goto LABEL_81;
          }

          if (!v37)
          {
            goto LABEL_220;
          }

          v41 = *v43;
          *v43 = *(v43 - 1);
          *--v43 = v41;
          if (__CFADD__(v42++, 1))
          {
            goto LABEL_81;
          }
        }

        v47 = 0xD000000000000011;
        if (v41 != 1)
        {
          v47 = 0x73726F68747561;
        }

        v48 = 0x8000000241D008F0;
        if (v41 != 1)
        {
          v48 = 0xE700000000000000;
        }

        if (v41)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0x6F622D6F69647561;
        }

        if (v41)
        {
          v46 = v48;
        }

        else
        {
          v46 = 0xEB00000000736B6FLL;
        }

        if (*(v43 - 1) <= 2u)
        {
          goto LABEL_120;
        }

LABEL_107:
        if (v44 <= 4)
        {
          if (v44 == 3)
          {
            v49 = 0x736B6F6F62;
          }

          else
          {
            v49 = 0x7265732D6B6F6F62;
          }

          if (v44 == 3)
          {
            v50 = 0xE500000000000000;
          }

          else
          {
            v50 = 0xEB00000000736569;
          }

          if (v45 == v49)
          {
            goto LABEL_133;
          }

          goto LABEL_134;
        }

        if (v44 == 5)
        {
          v50 = 0xE600000000000000;
          if (v45 == 0x7365726E6567)
          {
            goto LABEL_133;
          }

          goto LABEL_134;
        }

        v54 = v45;
        v50 = v124;

        if (v54 != a5)
        {
          goto LABEL_134;
        }

LABEL_133:
        if (v46 != v50)
        {
          goto LABEL_134;
        }

LABEL_81:
        v15 = v40 + 1;
        ++v38;
        --v39;
        if (v40 + 1 != __dst)
        {
          continue;
        }

        break;
      }

      v15 = __dst;
      v7 = v121;
      a4 = v112;
      a1 = v113;
      v13 = v111;
      v14 = v115;
LABEL_140:
      if (v15 < v14)
      {
        goto LABEL_215;
      }

      v57 = v13;
      v116 = v15;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v57;
      }

      else
      {
        v13 = sub_241CBFB88(0, *(v57 + 2) + 1, 1, v57);
      }

      v59 = *(v13 + 2);
      v58 = *(v13 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v13 = sub_241CBFB88((v58 > 1), v59 + 1, 1, v13);
      }

      *(v13 + 2) = v60;
      v61 = v13 + 32;
      v62 = &v13[16 * v59 + 32];
      *v62 = v14;
      *(v62 + 1) = v15;
      v127 = v13;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_223;
      }

      if (v59)
      {
        v122 = v7;
        while (1)
        {
          v63 = v60 - 1;
          if (v60 >= 4)
          {
            break;
          }

          if (v60 == 3)
          {
            v64 = *(v13 + 4);
            v65 = *(v13 + 5);
            v74 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            v67 = v74;
LABEL_161:
            if (v67)
            {
              goto LABEL_206;
            }

            v80 = &v13[16 * v60];
            v82 = *v80;
            v81 = *(v80 + 1);
            v83 = __OFSUB__(v81, v82);
            v84 = v81 - v82;
            v85 = v83;
            if (v83)
            {
              goto LABEL_209;
            }

            v86 = &v61[16 * v63];
            v88 = *v86;
            v87 = *(v86 + 1);
            v74 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v74)
            {
              goto LABEL_212;
            }

            if (__OFADD__(v84, v89))
            {
              goto LABEL_213;
            }

            if (v84 + v89 >= v66)
            {
              if (v66 < v89)
              {
                v63 = v60 - 2;
              }

              goto LABEL_182;
            }

            goto LABEL_175;
          }

          v90 = &v13[16 * v60];
          v92 = *v90;
          v91 = *(v90 + 1);
          v74 = __OFSUB__(v91, v92);
          v84 = v91 - v92;
          v85 = v74;
LABEL_175:
          if (v85)
          {
            goto LABEL_208;
          }

          v93 = &v61[16 * v63];
          v95 = *v93;
          v94 = *(v93 + 1);
          v74 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v74)
          {
            goto LABEL_211;
          }

          if (v96 < v84)
          {
            goto LABEL_3;
          }

LABEL_182:
          if (v63 - 1 >= v60)
          {
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
            goto LABEL_219;
          }

          v101 = *a3;
          if (!*a3)
          {
            goto LABEL_221;
          }

          v102 = v13;
          v103 = &v61[16 * v63 - 16];
          v104 = *v103;
          v105 = &v61[16 * v63];
          v107 = *v105;
          v106 = *(v105 + 1);

          sub_241CDEA54((v101 + v104), (v101 + v107), v101 + v106, __dsta, a5, v124);
          if (v122)
          {
            goto LABEL_195;
          }

          if (v106 < v104)
          {
            goto LABEL_201;
          }

          v108 = *(v102 + 2);
          if (v63 > v108)
          {
            goto LABEL_202;
          }

          *v103 = v104;
          *(v103 + 1) = v106;
          if (v63 >= v108)
          {
            goto LABEL_203;
          }

          v60 = v108 - 1;
          memmove(&v61[16 * v63], v105 + 16, 16 * (v108 - 1 - v63));
          v13 = v102;
          *(v102 + 2) = v108 - 1;
          if (v108 <= 2)
          {
LABEL_3:
            v127 = v13;
            v7 = v122;
            a4 = v112;
            a1 = v113;
            goto LABEL_4;
          }
        }

        v68 = &v61[16 * v60];
        v69 = *(v68 - 8);
        v70 = *(v68 - 7);
        v74 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        if (v74)
        {
          goto LABEL_204;
        }

        v73 = *(v68 - 6);
        v72 = *(v68 - 5);
        v74 = __OFSUB__(v72, v73);
        v66 = v72 - v73;
        v67 = v74;
        if (v74)
        {
          goto LABEL_205;
        }

        v75 = &v13[16 * v60];
        v77 = *v75;
        v76 = *(v75 + 1);
        v74 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v74)
        {
          goto LABEL_207;
        }

        v74 = __OFADD__(v66, v78);
        v79 = v66 + v78;
        if (v74)
        {
          goto LABEL_210;
        }

        if (v79 >= v71)
        {
          v97 = &v61[16 * v63];
          v99 = *v97;
          v98 = *(v97 + 1);
          v74 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v74)
          {
            goto LABEL_214;
          }

          if (v66 < v100)
          {
            v63 = v60 - 2;
          }

          goto LABEL_182;
        }

        goto LABEL_161;
      }

LABEL_4:
      v10 = a3[1];
      v12 = v116;
      a6 = v124;
      if (v116 >= v10)
      {
        goto LABEL_193;
      }
    }

LABEL_219:
    __break(1u);
LABEL_220:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_221:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_222:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_223:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_224;
  }

  swift_bridgeObjectRetain_n();
LABEL_193:
  v109 = *a1;
  if (!*a1)
  {
LABEL_224:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  sub_241CDF128(&v127, v109, a3, a5, a6);
  if (v7)
  {
LABEL_195:

LABEL_196:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_241CDFD6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + a3);
    v9 = result - a3;
LABEL_6:
    v10 = *(v7 + v6);
    v25 = v9;
    v26 = v8;
    while (1)
    {
      v11 = *(v8 - 1);
      if (v10 <= 2u)
      {
        v14 = 0xD000000000000011;
        if (v10 != 1)
        {
          v14 = 0x73726F68747561;
        }

        v15 = 0xE700000000000000;
        if (v10 == 1)
        {
          v15 = 0x8000000241D008F0;
        }

        if (v10)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0x6F622D6F69647561;
        }

        if (v10)
        {
          v13 = v15;
        }

        else
        {
          v13 = 0xEB00000000736B6FLL;
        }

        if (*(v8 - 1) <= 2u)
        {
LABEL_44:
          v18 = 0xD000000000000011;
          if (v11 != 1)
          {
            v18 = 0x73726F68747561;
          }

          v19 = 0xE700000000000000;
          if (v11 == 1)
          {
            v19 = 0x8000000241D008F0;
          }

          if (v11)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0x6F622D6F69647561;
          }

          if (v11)
          {
            v17 = v19;
          }

          else
          {
            v17 = 0xEB00000000736B6FLL;
          }

          if (v12 != v20)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }
      }

      else if (v10 > 4u)
      {
        if (v10 == 5)
        {
          v13 = 0xE600000000000000;
          v12 = 0x7365726E6567;
          if (*(v8 - 1) <= 2u)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v13 = a6;

          v12 = a5;
          if (v11 <= 2)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v10 == 3)
        {
          v12 = 0x736B6F6F62;
        }

        else
        {
          v12 = 0x7265732D6B6F6F62;
        }

        if (v10 == 3)
        {
          v13 = 0xE500000000000000;
        }

        else
        {
          v13 = 0xEB00000000736569;
        }

        if (*(v8 - 1) <= 2u)
        {
          goto LABEL_44;
        }
      }

      if (v11 > 4)
      {
        if (v11 == 5)
        {
          v17 = 0xE600000000000000;
          if (v12 != 0x7365726E6567)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v21 = v12;
          v17 = a6;

          if (v21 != a5)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v11 == 3)
        {
          v16 = 0x736B6F6F62;
        }

        else
        {
          v16 = 0x7265732D6B6F6F62;
        }

        if (v11 == 3)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = 0xEB00000000736569;
        }

        if (v12 != v16)
        {
          goto LABEL_58;
        }
      }

LABEL_57:
      if (v13 == v17)
      {

LABEL_5:
        ++v6;
        v8 = v26 + 1;
        v9 = v25 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_58:
      v22 = sub_241CF98C8();

      if ((v22 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v7)
      {
        __break(1u);
        return result;
      }

      v10 = *v8;
      *v8 = *(v8 - 1);
      *--v8 = v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_241CE0038(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_241CF9898();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_241C93918(&qword_27EC69BE8, "vE");
        v10 = sub_241CF92D8();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_241CDF2B4(v11, v12, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_241CDFD6C(0, v6, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_241CE01A4(char **a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_241CDE828(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = (v6 + 32);
  v9[1] = v7;

  sub_241CE0038(v9, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_241CE0258(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x245CFDB50](result, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_241CDB1BC(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_241CE031C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_241CE0618();
  result = MEMORY[0x245CFDB50](v2, &type metadata for MResourceType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_241CDB30C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_241CE0390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_241C93918(&qword_27EC69BD8, &qword_241CFEDD0);
  v3 = sub_241CF9808();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_241CF4160(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_241CF4160(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_241CE04A0()
{
  result = qword_27EC6A798;
  if (!qword_27EC6A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A798);
  }

  return result;
}

unint64_t sub_241CE04F8()
{
  result = qword_27EC6A7A0;
  if (!qword_27EC6A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A7A0);
  }

  return result;
}

__n128 sub_241CE054C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241CE0560(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241CE05A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241CE0618()
{
  result = qword_2810D5768;
  if (!qword_2810D5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D5768);
  }

  return result;
}

unint64_t sub_241CE066C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_241C93918(&qword_27EC6A488, &unk_241CFD308);
  v3 = sub_241CF9808();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_241C8E174(&v24, v23, &qword_27EC6A7C0, &unk_241CFEDB0);
  result = sub_241C8E1DC(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_241C8E174(&v24, v23, &qword_27EC6A7C0, &unk_241CFEDB0);
    result = sub_241C8E1DC(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_241CE0808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_241C93918(&qword_27EC6A490, &qword_241CFD318);
    v3 = sub_241CF9808();
    v4 = a1 + 32;

    while (1)
    {
      sub_241C8E174(v4, v13, &qword_27EC6A4C0, &unk_241CFEDA0);
      result = sub_241CF45AC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_241C8E30C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_241CE0944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
    v3 = sub_241CF9808();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_241C8E1DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_241CE0A58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_241C9452C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_241CE0AC0(uint64_t a1, char a2, uint64_t (*a3)(BOOL, unint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v30 = MEMORY[0x277D84F90];
  a3(0, v3, 0);
  v4 = v30;
  v6 = a1 + 56;
  v7 = -1 << *(a1 + 32);
  result = sub_241CF9628();
  v9 = result;
  v10 = 0;
  v26 = v3;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(a1 + 36);
    v13 = (*(a1 + 48) + 16 * v9);
    v14 = v13[1];
    v29 = *v13;
    v16 = *(v30 + 16);
    v15 = *(v30 + 24);

    if (v16 >= v15 >> 1)
    {
      result = a3(v15 > 1, v16 + 1, 1);
    }

    *(v30 + 16) = v16 + 1;
    v17 = v30 + 24 * v16;
    *(v17 + 32) = v29;
    *(v17 + 40) = v14;
    *(v17 + 48) = a2;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v6 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v12);
    if ((v18 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v9 & 0x3F));
    if (v19)
    {
      v11 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 64 + 8 * v12);
      while (v21 < (v11 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_241CEB95C(v9, v28, 0);
          v11 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_241CEB95C(v9, v28, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v26)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_241CE0D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_241CF9998();
  sub_241CF90B8();
  v7 = sub_241CF99C8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_241CF98C8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t MCatalogService.FetchError.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 6:
      return 0xD000000000000034;
    case 7:
      return 0xD00000000000007FLL;
    case 8:
      return 0xD000000000000029;
  }

  sub_241CF96C8();

  v3 = 0xEB00000000736B6FLL;
  v4 = 0x6F622D6F69647561;
  v5 = 0xE500000000000000;
  v6 = 0x736B6F6F62;
  v7 = 0x7265732D6B6F6F62;
  v8 = 0xE600000000000000;
  if (v1 == 4)
  {
    v8 = 0xEB00000000736569;
  }

  else
  {
    v7 = 0x7365726E6567;
  }

  if (v1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x8000000241D008F0;
  v10 = 0x73726F68747561;
  if (v1 == 1)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v1 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x245CFD860](v11, v12);

  return 0xD00000000000002ALL;
}

BOOL static MCatalogService.FetchError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
    case 8:
      return v3 == 8;
  }

  if ((v3 - 6) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_241CE1008(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 6;
  v5 = v3 == 7;
  v6 = v3 == 8;
  v8 = v2 == v3 && (v3 - 9) < 0xFFFFFFFD;
  if (v2 == 8)
  {
    v8 = v6;
  }

  if (v2 == 7)
  {
    v8 = v5;
  }

  if (v2 == 6)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

id MCatalogService.init(config:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 40) = &type metadata for MCatalogRequestHandler;
  *(a2 + 48) = &off_2853DC530;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  return v3;
}

uint64_t MCatalogService.init(config:requestHandler:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  return sub_241C914E4(a2, a3 + 16);
}

uint64_t MCatalogService.batchRequests<A>(for:batchSize:relationships:views:additionalParameters:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(v8 + 56) = a5;
  *(v8 + 64) = a7;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = *a6;
  v10 = a6[1];
  *(v8 + 72) = v7;
  *(v8 + 80) = v9;
  *(v8 + 88) = v10;
  *(v8 + 120) = *(a6 + 4);
  return MEMORY[0x2822009F8](sub_241CE10E0, 0, 0);
}

uint64_t sub_241CE10E0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = *(v0 + 48);
  sub_241CF8ED8();

  v7 = sub_241CF8F38();
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v12;
  *(v8 + 40) = v5;
  *(v8 + 48) = v6;
  *(v8 + 56) = v13;
  *(v8 + 72) = v3;
  *(v8 + 80) = v2;
  *(v8 + 88) = v1;
  v9 = *(MEMORY[0x277D859B8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_241CE1250;

  return MEMORY[0x282200740](v0 + 16, v7, v7, 0, 0, &unk_241CFEDF0, v8, v7);
}

uint64_t sub_241CE1250()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_241CE1388;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_241CE136C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CE1388()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_241CE13EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v15;
  *(v8 + 144) = a8;
  *(v8 + 152) = v14;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_241C93918(&qword_27EC6A868, &qword_241CFF040);
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CE14D8, 0, 0);
}

uint64_t sub_241CE14D8()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 96);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = *(*(v1 + 56) + (v14 | (v12 << 6)));
      if (v15 != 6)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0(0, *(v13 + 16) + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0((v17 > 1), v18 + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    *(v13 + 16) = v18 + 1;
    *(v13 + v18 + 32) = v15;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v16);
    ++v12;
    if (v4)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);

  v21 = sub_241CE031C(v13);

  v22 = *(v21 + 16);

  v23 = 100;
  if (v22 == 1)
  {
    v23 = 150;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v20 <= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = sub_241CEB39C(0, v29[2], v25, v25, v29);

    v31 = *(v30 + 16);
    if (!v31)
    {

      v33 = MEMORY[0x277D84F90];
LABEL_45:
      v51 = MEMORY[0x277D84F98];
      v52 = *(v0 + 176);
      v53 = *(v0 + 36);
      v54 = *(v0 + 152);
      v55 = *(v0 + 112);
      v56 = *(v0 + 88);
      v57 = swift_task_alloc();
      v58 = *(v0 + 120);
      v59 = *(v0 + 136);
      *(v57 + 16) = v56;
      *(v57 + 24) = v55;
      *(v57 + 32) = v58;
      *(v57 + 48) = v59;
      *(v57 + 64) = v54;
      *(v57 + 72) = v53;
      sub_241C92D9C(sub_241CEBD90, v57, v33);

      v60 = *v56;
      sub_241C93918(&qword_27EC6A808, &qword_241CFEE00);
      sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
      sub_241CF93A8();
      *(v0 + 184) = v51;
      v61 = *(MEMORY[0x277D85828] + 4);
      v62 = swift_task_alloc();
      *(v0 + 192) = v62;
      *v62 = v0;
      v62[1] = sub_241CE1AF4;
      v63 = *(v0 + 176);
      v10 = *(v0 + 160);
      isUniquelyReferenced_nonNull_native = v0 + 64;
      v11 = v0 + 72;
      v8 = 0;
      v9 = 0;

      return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
    }

    v72 = v27;
    isUniquelyReferenced_nonNull_native = sub_241C94614(0, v31, 0);
    v32 = 0;
    v33 = v72;
    v66 = v30;
    v67 = v30 + 32;
    v65 = v31;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_49;
      }

      v70 = v32;
      v34 = *(v67 + 8 * v32);
      v35 = *(v34 + 16);
      if (v35)
      {
        v68 = v33;
        v71 = v27;

        sub_241C94694(0, v35, 0);
        v36 = v71;
        v37 = (v34 + 48);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *(v0 + 40) = *(v37 - 2);
          *(v0 + 48) = v38;
          *(v0 + 56) = v39;

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          sub_241C93918(&qword_27EC69D50, &qword_241CFB058);
          swift_dynamicCast();
          v40 = *(v0 + 16);
          v41 = *(v0 + 24);
          v42 = *(v0 + 32);
          v71 = v36;
          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_241C94694((v43 > 1), v44 + 1, 1);
            v36 = v71;
          }

          v37 += 24;
          *(v36 + 16) = v44 + 1;
          v45 = v36 + 24 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          --v35;
        }

        while (v35);
        v27 = MEMORY[0x277D84F90];
        v33 = v68;
        v31 = v65;
        v30 = v66;
        if (!*(v36 + 16))
        {
LABEL_39:
          v46 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

      else
      {
        v47 = *(v67 + 8 * v32);

        v36 = v27;
        if (!*(v27 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
      v46 = sub_241CF9808();
LABEL_40:
      v71 = v46;
      sub_241CE8984(v36, 1, &v71);

      v48 = v71;
      v72 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_241C94614((v49 > 1), v50 + 1, 1);
        v33 = v72;
      }

      v32 = v70 + 1;
      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v48;
      if (v70 + 1 == v31)
      {

        goto LABEL_45;
      }
    }
  }

  v28 = *(v0 + 96);
  v29 = sub_241CE88F4(v26, 0);
  v69 = sub_241CE96C4(&v71, (v29 + 4), v26, v28);

  isUniquelyReferenced_nonNull_native = sub_241C90BFC();
  if (v69 == v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_241CE1AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_241CEC0C4;
  }

  else
  {
    v5 = sub_241CE1C0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CE1C0C()
{
  v1 = v0[8];
  v47 = v0 + 8;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[23];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v2;
      v4 = v1 + 64;
      v5 = -1 << *(v1 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v1 + 64);
      v44 = -1 << *(v1 + 32);
      v8 = (63 - v5) >> 6;

      v13 = 0;
      v45 = v0;
      v46 = v1;
      v14 = v0[23];
      for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
      {
        if (!v7)
        {
          v20 = v13;
          while (1)
          {
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v19 >= v8)
            {
              sub_241C90BFC();

              v0 = v45;
              v45[23] = v14;
              goto LABEL_29;
            }

            v7 = *(v4 + 8 * v19);
            ++v20;
            if (v7)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
        }

        v19 = v13;
LABEL_15:
        v21 = __clz(__rbit64(v7)) | (v19 << 6);
        v22 = *(v1 + 56);
        v23 = (*(v1 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(v22 + 8 * v21);

        v27 = v26;
        v9 = sub_241C8E1DC(v25, v24);
        v28 = v14[2];
        v29 = (v10 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_36;
        }

        v32 = v10;
        if (v14[3] >= v31)
        {
          if ((i & 1) == 0)
          {
            v43 = v9;
            sub_241CC8488();
            v9 = v43;
          }
        }

        else
        {
          sub_241CC6E84(v31, i & 1);
          v33 = v47[2];
          v9 = sub_241C8E1DC(v25, v24);
          if ((v32 & 1) != (v10 & 1))
          {

            return sub_241CF9938();
          }
        }

        v7 &= v7 - 1;
        v14 = v47[2];
        if (v32)
        {
          v16 = v9;

          v17 = v14[7];
          v18 = *(v17 + 8 * v16);
          *(v17 + 8 * v16) = v27;
        }

        else
        {
          v14[(v9 >> 6) + 8] |= 1 << v9;
          v34 = (v14[6] + 16 * v9);
          *v34 = v25;
          v34[1] = v24;
          *(v14[7] + 8 * v9) = v27;
          v35 = v14[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_37;
          }

          v14[2] = v36;
        }

        v13 = v19;
        v1 = v46;
      }
    }

LABEL_29:
    v40 = *(MEMORY[0x277D85828] + 4);
    v41 = swift_task_alloc();
    v0[24] = v41;
    *v41 = v0;
    v41[1] = sub_241CE1AF4;
    v42 = v0[22];
    v13 = v0[20];
    v12 = v0 + 9;
    v9 = v47;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
  }

  else
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v37 = v0[1];
    v38 = v0[23];

    return v37(v38);
  }
}

uint64_t sub_241CE1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v15;
  *(v8 + 144) = a8;
  *(v8 + 152) = v14;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_241C93918(&qword_27EC6A860, &qword_241CFF020);
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CE2084, 0, 0);
}

uint64_t sub_241CE2084()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 96);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = *(*(v1 + 56) + (v14 | (v12 << 6)));
      if (v15 != 6)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0(0, *(v13 + 16) + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0((v17 > 1), v18 + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    *(v13 + 16) = v18 + 1;
    *(v13 + v18 + 32) = v15;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v16);
    ++v12;
    if (v4)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);

  v21 = sub_241CE031C(v13);

  v22 = *(v21 + 16);

  v23 = 100;
  if (v22 == 1)
  {
    v23 = 150;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v20 <= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = sub_241CEB39C(0, v29[2], v25, v25, v29);

    v31 = *(v30 + 16);
    if (!v31)
    {

      v33 = MEMORY[0x277D84F90];
LABEL_45:
      v51 = MEMORY[0x277D84F98];
      v52 = *(v0 + 176);
      v53 = *(v0 + 36);
      v54 = *(v0 + 152);
      v55 = *(v0 + 112);
      v56 = *(v0 + 88);
      v57 = swift_task_alloc();
      v58 = *(v0 + 120);
      v59 = *(v0 + 136);
      *(v57 + 16) = v56;
      *(v57 + 24) = v55;
      *(v57 + 32) = v58;
      *(v57 + 48) = v59;
      *(v57 + 64) = v54;
      *(v57 + 72) = v53;
      sub_241C92D9C(sub_241CEBC48, v57, v33);

      v60 = *v56;
      sub_241C93918(&qword_27EC6A810, &qword_241CFEE28);
      sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
      sub_241CF93A8();
      *(v0 + 184) = v51;
      v61 = *(MEMORY[0x277D85828] + 4);
      v62 = swift_task_alloc();
      *(v0 + 192) = v62;
      *v62 = v0;
      v62[1] = sub_241CE26A0;
      v63 = *(v0 + 176);
      v10 = *(v0 + 160);
      isUniquelyReferenced_nonNull_native = v0 + 64;
      v11 = v0 + 72;
      v8 = 0;
      v9 = 0;

      return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
    }

    v72 = v27;
    isUniquelyReferenced_nonNull_native = sub_241C94614(0, v31, 0);
    v32 = 0;
    v33 = v72;
    v66 = v30;
    v67 = v30 + 32;
    v65 = v31;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_49;
      }

      v70 = v32;
      v34 = *(v67 + 8 * v32);
      v35 = *(v34 + 16);
      if (v35)
      {
        v68 = v33;
        v71 = v27;

        sub_241C94694(0, v35, 0);
        v36 = v71;
        v37 = (v34 + 48);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *(v0 + 40) = *(v37 - 2);
          *(v0 + 48) = v38;
          *(v0 + 56) = v39;

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          sub_241C93918(&qword_27EC69D50, &qword_241CFB058);
          swift_dynamicCast();
          v40 = *(v0 + 16);
          v41 = *(v0 + 24);
          v42 = *(v0 + 32);
          v71 = v36;
          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_241C94694((v43 > 1), v44 + 1, 1);
            v36 = v71;
          }

          v37 += 24;
          *(v36 + 16) = v44 + 1;
          v45 = v36 + 24 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          --v35;
        }

        while (v35);
        v27 = MEMORY[0x277D84F90];
        v33 = v68;
        v31 = v65;
        v30 = v66;
        if (!*(v36 + 16))
        {
LABEL_39:
          v46 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

      else
      {
        v47 = *(v67 + 8 * v32);

        v36 = v27;
        if (!*(v27 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
      v46 = sub_241CF9808();
LABEL_40:
      v71 = v46;
      sub_241CE8984(v36, 1, &v71);

      v48 = v71;
      v72 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_241C94614((v49 > 1), v50 + 1, 1);
        v33 = v72;
      }

      v32 = v70 + 1;
      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v48;
      if (v70 + 1 == v31)
      {

        goto LABEL_45;
      }
    }
  }

  v28 = *(v0 + 96);
  v29 = sub_241CE88F4(v26, 0);
  v69 = sub_241CE96C4(&v71, (v29 + 4), v26, v28);

  isUniquelyReferenced_nonNull_native = sub_241C90BFC();
  if (v69 == v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_241CE26A0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_241CEC0C4;
  }

  else
  {
    v5 = sub_241CE27B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CE27B8()
{
  v1 = v0[8];
  v47 = v0 + 8;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[23];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v2;
      v4 = v1 + 64;
      v5 = -1 << *(v1 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v1 + 64);
      v44 = -1 << *(v1 + 32);
      v8 = (63 - v5) >> 6;

      v13 = 0;
      v45 = v0;
      v46 = v1;
      v14 = v0[23];
      for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
      {
        if (!v7)
        {
          v20 = v13;
          while (1)
          {
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v19 >= v8)
            {
              sub_241C90BFC();

              v0 = v45;
              v45[23] = v14;
              goto LABEL_29;
            }

            v7 = *(v4 + 8 * v19);
            ++v20;
            if (v7)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
        }

        v19 = v13;
LABEL_15:
        v21 = __clz(__rbit64(v7)) | (v19 << 6);
        v22 = *(v1 + 56);
        v23 = (*(v1 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(v22 + 8 * v21);

        v27 = v26;
        v9 = sub_241C8E1DC(v25, v24);
        v28 = v14[2];
        v29 = (v10 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_36;
        }

        v32 = v10;
        if (v14[3] >= v31)
        {
          if ((i & 1) == 0)
          {
            v43 = v9;
            sub_241CC8DC4();
            v9 = v43;
          }
        }

        else
        {
          sub_241CC7C60(v31, i & 1);
          v33 = v47[2];
          v9 = sub_241C8E1DC(v25, v24);
          if ((v32 & 1) != (v10 & 1))
          {

            return sub_241CF9938();
          }
        }

        v7 &= v7 - 1;
        v14 = v47[2];
        if (v32)
        {
          v16 = v9;

          v17 = v14[7];
          v18 = *(v17 + 8 * v16);
          *(v17 + 8 * v16) = v27;
        }

        else
        {
          v14[(v9 >> 6) + 8] |= 1 << v9;
          v34 = (v14[6] + 16 * v9);
          *v34 = v25;
          v34[1] = v24;
          *(v14[7] + 8 * v9) = v27;
          v35 = v14[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_37;
          }

          v14[2] = v36;
        }

        v13 = v19;
        v1 = v46;
      }
    }

LABEL_29:
    v40 = *(MEMORY[0x277D85828] + 4);
    v41 = swift_task_alloc();
    v0[24] = v41;
    *v41 = v0;
    v41[1] = sub_241CE26A0;
    v42 = v0[22];
    v13 = v0[20];
    v12 = v0 + 9;
    v9 = v47;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
  }

  else
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v37 = v0[1];
    v38 = v0[23];

    return v37(v38);
  }
}

uint64_t sub_241CE2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v15;
  *(v8 + 144) = a8;
  *(v8 + 152) = v14;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_241C93918(&qword_27EC6A858, &qword_241CFF000);
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CE2C30, 0, 0);
}

uint64_t sub_241CE2C30()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 96);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = *(*(v1 + 56) + (v14 | (v12 << 6)));
      if (v15 != 6)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0(0, *(v13 + 16) + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0((v17 > 1), v18 + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    *(v13 + 16) = v18 + 1;
    *(v13 + v18 + 32) = v15;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v16);
    ++v12;
    if (v4)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);

  v21 = sub_241CE031C(v13);

  v22 = *(v21 + 16);

  v23 = 100;
  if (v22 == 1)
  {
    v23 = 150;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v20 <= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = sub_241CEB39C(0, v29[2], v25, v25, v29);

    v31 = *(v30 + 16);
    if (!v31)
    {

      v33 = MEMORY[0x277D84F90];
LABEL_45:
      v51 = MEMORY[0x277D84F98];
      v52 = *(v0 + 176);
      v53 = *(v0 + 36);
      v54 = *(v0 + 152);
      v55 = *(v0 + 112);
      v56 = *(v0 + 88);
      v57 = swift_task_alloc();
      v58 = *(v0 + 120);
      v59 = *(v0 + 136);
      *(v57 + 16) = v56;
      *(v57 + 24) = v55;
      *(v57 + 32) = v58;
      *(v57 + 48) = v59;
      *(v57 + 64) = v54;
      *(v57 + 72) = v53;
      sub_241C92D9C(sub_241CEBB00, v57, v33);

      v60 = *v56;
      sub_241C93918(&qword_27EC6A818, &qword_241CFEE48);
      sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
      sub_241CF93A8();
      *(v0 + 184) = v51;
      v61 = *(MEMORY[0x277D85828] + 4);
      v62 = swift_task_alloc();
      *(v0 + 192) = v62;
      *v62 = v0;
      v62[1] = sub_241CE324C;
      v63 = *(v0 + 176);
      v10 = *(v0 + 160);
      isUniquelyReferenced_nonNull_native = v0 + 64;
      v11 = v0 + 72;
      v8 = 0;
      v9 = 0;

      return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
    }

    v72 = v27;
    isUniquelyReferenced_nonNull_native = sub_241C94614(0, v31, 0);
    v32 = 0;
    v33 = v72;
    v66 = v30;
    v67 = v30 + 32;
    v65 = v31;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_49;
      }

      v70 = v32;
      v34 = *(v67 + 8 * v32);
      v35 = *(v34 + 16);
      if (v35)
      {
        v68 = v33;
        v71 = v27;

        sub_241C94694(0, v35, 0);
        v36 = v71;
        v37 = (v34 + 48);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *(v0 + 40) = *(v37 - 2);
          *(v0 + 48) = v38;
          *(v0 + 56) = v39;

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          sub_241C93918(&qword_27EC69D50, &qword_241CFB058);
          swift_dynamicCast();
          v40 = *(v0 + 16);
          v41 = *(v0 + 24);
          v42 = *(v0 + 32);
          v71 = v36;
          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_241C94694((v43 > 1), v44 + 1, 1);
            v36 = v71;
          }

          v37 += 24;
          *(v36 + 16) = v44 + 1;
          v45 = v36 + 24 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          --v35;
        }

        while (v35);
        v27 = MEMORY[0x277D84F90];
        v33 = v68;
        v31 = v65;
        v30 = v66;
        if (!*(v36 + 16))
        {
LABEL_39:
          v46 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

      else
      {
        v47 = *(v67 + 8 * v32);

        v36 = v27;
        if (!*(v27 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
      v46 = sub_241CF9808();
LABEL_40:
      v71 = v46;
      sub_241CE8984(v36, 1, &v71);

      v48 = v71;
      v72 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_241C94614((v49 > 1), v50 + 1, 1);
        v33 = v72;
      }

      v32 = v70 + 1;
      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v48;
      if (v70 + 1 == v31)
      {

        goto LABEL_45;
      }
    }
  }

  v28 = *(v0 + 96);
  v29 = sub_241CE88F4(v26, 0);
  v69 = sub_241CE96C4(&v71, (v29 + 4), v26, v28);

  isUniquelyReferenced_nonNull_native = sub_241C90BFC();
  if (v69 == v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_241CE324C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_241CEC0C4;
  }

  else
  {
    v5 = sub_241CE3364;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CE3364()
{
  v1 = v0[8];
  v47 = v0 + 8;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[23];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v2;
      v4 = v1 + 64;
      v5 = -1 << *(v1 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v1 + 64);
      v44 = -1 << *(v1 + 32);
      v8 = (63 - v5) >> 6;

      v13 = 0;
      v45 = v0;
      v46 = v1;
      v14 = v0[23];
      for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
      {
        if (!v7)
        {
          v20 = v13;
          while (1)
          {
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v19 >= v8)
            {
              sub_241C90BFC();

              v0 = v45;
              v45[23] = v14;
              goto LABEL_29;
            }

            v7 = *(v4 + 8 * v19);
            ++v20;
            if (v7)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
        }

        v19 = v13;
LABEL_15:
        v21 = __clz(__rbit64(v7)) | (v19 << 6);
        v22 = *(v1 + 56);
        v23 = (*(v1 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(v22 + 8 * v21);

        v27 = v26;
        v9 = sub_241C8E1DC(v25, v24);
        v28 = v14[2];
        v29 = (v10 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_36;
        }

        v32 = v10;
        if (v14[3] >= v31)
        {
          if ((i & 1) == 0)
          {
            v43 = v9;
            sub_241CC8DD8();
            v9 = v43;
          }
        }

        else
        {
          sub_241CC7C74(v31, i & 1);
          v33 = v47[2];
          v9 = sub_241C8E1DC(v25, v24);
          if ((v32 & 1) != (v10 & 1))
          {

            return sub_241CF9938();
          }
        }

        v7 &= v7 - 1;
        v14 = v47[2];
        if (v32)
        {
          v16 = v9;

          v17 = v14[7];
          v18 = *(v17 + 8 * v16);
          *(v17 + 8 * v16) = v27;
        }

        else
        {
          v14[(v9 >> 6) + 8] |= 1 << v9;
          v34 = (v14[6] + 16 * v9);
          *v34 = v25;
          v34[1] = v24;
          *(v14[7] + 8 * v9) = v27;
          v35 = v14[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_37;
          }

          v14[2] = v36;
        }

        v13 = v19;
        v1 = v46;
      }
    }

LABEL_29:
    v40 = *(MEMORY[0x277D85828] + 4);
    v41 = swift_task_alloc();
    v0[24] = v41;
    *v41 = v0;
    v41[1] = sub_241CE324C;
    v42 = v0[22];
    v13 = v0[20];
    v12 = v0 + 9;
    v9 = v47;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
  }

  else
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v37 = v0[1];
    v38 = v0[23];

    return v37(v38);
  }
}

uint64_t sub_241CE36F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v15;
  *(v8 + 144) = a8;
  *(v8 + 152) = v14;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_241C93918(&qword_27EC6A850, &qword_241CFEFE0);
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CE37DC, 0, 0);
}

uint64_t sub_241CE37DC()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 96);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = *(*(v1 + 56) + (v14 | (v12 << 6)));
      if (v15 != 6)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0(0, *(v13 + 16) + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0((v17 > 1), v18 + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    *(v13 + 16) = v18 + 1;
    *(v13 + v18 + 32) = v15;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v16);
    ++v12;
    if (v4)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);

  v21 = sub_241CE031C(v13);

  v22 = *(v21 + 16);

  v23 = 100;
  if (v22 == 1)
  {
    v23 = 150;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v20 <= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = sub_241CEB39C(0, v29[2], v25, v25, v29);

    v31 = *(v30 + 16);
    if (!v31)
    {

      v33 = MEMORY[0x277D84F90];
LABEL_45:
      v51 = MEMORY[0x277D84F98];
      v52 = *(v0 + 176);
      v53 = *(v0 + 36);
      v54 = *(v0 + 152);
      v55 = *(v0 + 112);
      v56 = *(v0 + 88);
      v57 = swift_task_alloc();
      v58 = *(v0 + 120);
      v59 = *(v0 + 136);
      *(v57 + 16) = v56;
      *(v57 + 24) = v55;
      *(v57 + 32) = v58;
      *(v57 + 48) = v59;
      *(v57 + 64) = v54;
      *(v57 + 72) = v53;
      sub_241C92D9C(sub_241CEB968, v57, v33);

      v60 = *v56;
      sub_241C93918(&qword_27EC6A820, &qword_241CFEE68);
      sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
      sub_241CF93A8();
      *(v0 + 184) = v51;
      v61 = *(MEMORY[0x277D85828] + 4);
      v62 = swift_task_alloc();
      *(v0 + 192) = v62;
      *v62 = v0;
      v62[1] = sub_241CE3DF8;
      v63 = *(v0 + 176);
      v10 = *(v0 + 160);
      isUniquelyReferenced_nonNull_native = v0 + 64;
      v11 = v0 + 72;
      v8 = 0;
      v9 = 0;

      return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
    }

    v72 = v27;
    isUniquelyReferenced_nonNull_native = sub_241C94614(0, v31, 0);
    v32 = 0;
    v33 = v72;
    v66 = v30;
    v67 = v30 + 32;
    v65 = v31;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_49;
      }

      v70 = v32;
      v34 = *(v67 + 8 * v32);
      v35 = *(v34 + 16);
      if (v35)
      {
        v68 = v33;
        v71 = v27;

        sub_241C94694(0, v35, 0);
        v36 = v71;
        v37 = (v34 + 48);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *(v0 + 40) = *(v37 - 2);
          *(v0 + 48) = v38;
          *(v0 + 56) = v39;

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          sub_241C93918(&qword_27EC69D50, &qword_241CFB058);
          swift_dynamicCast();
          v40 = *(v0 + 16);
          v41 = *(v0 + 24);
          v42 = *(v0 + 32);
          v71 = v36;
          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_241C94694((v43 > 1), v44 + 1, 1);
            v36 = v71;
          }

          v37 += 24;
          *(v36 + 16) = v44 + 1;
          v45 = v36 + 24 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          --v35;
        }

        while (v35);
        v27 = MEMORY[0x277D84F90];
        v33 = v68;
        v31 = v65;
        v30 = v66;
        if (!*(v36 + 16))
        {
LABEL_39:
          v46 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

      else
      {
        v47 = *(v67 + 8 * v32);

        v36 = v27;
        if (!*(v27 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
      v46 = sub_241CF9808();
LABEL_40:
      v71 = v46;
      sub_241CE8984(v36, 1, &v71);

      v48 = v71;
      v72 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_241C94614((v49 > 1), v50 + 1, 1);
        v33 = v72;
      }

      v32 = v70 + 1;
      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v48;
      if (v70 + 1 == v31)
      {

        goto LABEL_45;
      }
    }
  }

  v28 = *(v0 + 96);
  v29 = sub_241CE88F4(v26, 0);
  v69 = sub_241CE96C4(&v71, (v29 + 4), v26, v28);

  isUniquelyReferenced_nonNull_native = sub_241C90BFC();
  if (v69 == v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_241CE3DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_241CEC0C4;
  }

  else
  {
    v5 = sub_241CE3F10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CE3F10()
{
  v1 = v0[8];
  v47 = v0 + 8;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[23];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v2;
      v4 = v1 + 64;
      v5 = -1 << *(v1 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v1 + 64);
      v44 = -1 << *(v1 + 32);
      v8 = (63 - v5) >> 6;

      v13 = 0;
      v45 = v0;
      v46 = v1;
      v14 = v0[23];
      for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
      {
        if (!v7)
        {
          v20 = v13;
          while (1)
          {
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v19 >= v8)
            {
              sub_241C90BFC();

              v0 = v45;
              v45[23] = v14;
              goto LABEL_29;
            }

            v7 = *(v4 + 8 * v19);
            ++v20;
            if (v7)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
        }

        v19 = v13;
LABEL_15:
        v21 = __clz(__rbit64(v7)) | (v19 << 6);
        v22 = *(v1 + 56);
        v23 = (*(v1 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(v22 + 8 * v21);

        v27 = v26;
        v9 = sub_241C8E1DC(v25, v24);
        v28 = v14[2];
        v29 = (v10 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_36;
        }

        v32 = v10;
        if (v14[3] >= v31)
        {
          if ((i & 1) == 0)
          {
            v43 = v9;
            sub_241CC8DEC();
            v9 = v43;
          }
        }

        else
        {
          sub_241CC7C88(v31, i & 1);
          v33 = v47[2];
          v9 = sub_241C8E1DC(v25, v24);
          if ((v32 & 1) != (v10 & 1))
          {

            return sub_241CF9938();
          }
        }

        v7 &= v7 - 1;
        v14 = v47[2];
        if (v32)
        {
          v16 = v9;

          v17 = v14[7];
          v18 = *(v17 + 8 * v16);
          *(v17 + 8 * v16) = v27;
        }

        else
        {
          v14[(v9 >> 6) + 8] |= 1 << v9;
          v34 = (v14[6] + 16 * v9);
          *v34 = v25;
          v34[1] = v24;
          *(v14[7] + 8 * v9) = v27;
          v35 = v14[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_37;
          }

          v14[2] = v36;
        }

        v13 = v19;
        v1 = v46;
      }
    }

LABEL_29:
    v40 = *(MEMORY[0x277D85828] + 4);
    v41 = swift_task_alloc();
    v0[24] = v41;
    *v41 = v0;
    v41[1] = sub_241CE3DF8;
    v42 = v0[22];
    v13 = v0[20];
    v12 = v0 + 9;
    v9 = v47;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
  }

  else
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v37 = v0[1];
    v38 = v0[23];

    return v37(v38);
  }
}

uint64_t sub_241CE429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 36) = v15;
  *(v8 + 144) = a8;
  *(v8 + 152) = v14;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_241C93918(&qword_27EC6A830, &qword_241CFEFA8);
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CE4388, 0, 0);
}

uint64_t sub_241CE4388()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 96);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = *(*(v1 + 56) + (v14 | (v12 << 6)));
      if (v15 != 6)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0(0, *(v13 + 16) + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0((v17 > 1), v18 + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    *(v13 + 16) = v18 + 1;
    *(v13 + v18 + 32) = v15;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v16);
    ++v12;
    if (v4)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);

  v21 = sub_241CE031C(v13);

  v22 = *(v21 + 16);

  v23 = 100;
  if (v22 == 1)
  {
    v23 = 150;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v20 <= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = sub_241CEB39C(0, v29[2], v25, v25, v29);

    v31 = *(v30 + 16);
    if (!v31)
    {

      v33 = MEMORY[0x277D84F90];
LABEL_45:
      v51 = MEMORY[0x277D84F98];
      v52 = *(v0 + 176);
      v53 = *(v0 + 36);
      v54 = *(v0 + 152);
      v55 = *(v0 + 112);
      v56 = *(v0 + 88);
      v57 = swift_task_alloc();
      v58 = *(v0 + 120);
      v59 = *(v0 + 136);
      *(v57 + 16) = v56;
      *(v57 + 24) = v55;
      *(v57 + 32) = v58;
      *(v57 + 48) = v59;
      *(v57 + 64) = v54;
      *(v57 + 72) = v53;
      sub_241C92D9C(sub_241CEB76C, v57, v33);

      v60 = *v56;
      sub_241C93918(&qword_27EC6A828, &qword_241CFEE88);
      sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
      sub_241CF93A8();
      *(v0 + 184) = v51;
      v61 = *(MEMORY[0x277D85828] + 4);
      v62 = swift_task_alloc();
      *(v0 + 192) = v62;
      *v62 = v0;
      v62[1] = sub_241CE49A4;
      v63 = *(v0 + 176);
      v10 = *(v0 + 160);
      isUniquelyReferenced_nonNull_native = v0 + 64;
      v11 = v0 + 72;
      v8 = 0;
      v9 = 0;

      return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
    }

    v72 = v27;
    isUniquelyReferenced_nonNull_native = sub_241C94614(0, v31, 0);
    v32 = 0;
    v33 = v72;
    v66 = v30;
    v67 = v30 + 32;
    v65 = v31;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_49;
      }

      v70 = v32;
      v34 = *(v67 + 8 * v32);
      v35 = *(v34 + 16);
      if (v35)
      {
        v68 = v33;
        v71 = v27;

        sub_241C94694(0, v35, 0);
        v36 = v71;
        v37 = (v34 + 48);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *(v0 + 40) = *(v37 - 2);
          *(v0 + 48) = v38;
          *(v0 + 56) = v39;

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          sub_241C93918(&qword_27EC69D50, &qword_241CFB058);
          swift_dynamicCast();
          v40 = *(v0 + 16);
          v41 = *(v0 + 24);
          v42 = *(v0 + 32);
          v71 = v36;
          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_241C94694((v43 > 1), v44 + 1, 1);
            v36 = v71;
          }

          v37 += 24;
          *(v36 + 16) = v44 + 1;
          v45 = v36 + 24 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          --v35;
        }

        while (v35);
        v27 = MEMORY[0x277D84F90];
        v33 = v68;
        v31 = v65;
        v30 = v66;
        if (!*(v36 + 16))
        {
LABEL_39:
          v46 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

      else
      {
        v47 = *(v67 + 8 * v32);

        v36 = v27;
        if (!*(v27 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
      v46 = sub_241CF9808();
LABEL_40:
      v71 = v46;
      sub_241CE8984(v36, 1, &v71);

      v48 = v71;
      v72 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_241C94614((v49 > 1), v50 + 1, 1);
        v33 = v72;
      }

      v32 = v70 + 1;
      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v48;
      if (v70 + 1 == v31)
      {

        goto LABEL_45;
      }
    }
  }

  v28 = *(v0 + 96);
  v29 = sub_241CE88F4(v26, 0);
  v69 = sub_241CE96C4(&v71, (v29 + 4), v26, v28);

  isUniquelyReferenced_nonNull_native = sub_241C90BFC();
  if (v69 == v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_241CE49A4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 184);

    v5 = sub_241CE4E48;
  }

  else
  {
    v5 = sub_241CE4ABC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CE4ABC()
{
  v1 = v0[8];
  v47 = v0 + 8;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[23];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v2;
      v4 = v1 + 64;
      v5 = -1 << *(v1 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v1 + 64);
      v44 = -1 << *(v1 + 32);
      v8 = (63 - v5) >> 6;

      v13 = 0;
      v45 = v0;
      v46 = v1;
      v14 = v0[23];
      for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
      {
        if (!v7)
        {
          v20 = v13;
          while (1)
          {
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v19 >= v8)
            {
              sub_241C90BFC();

              v0 = v45;
              v45[23] = v14;
              goto LABEL_29;
            }

            v7 = *(v4 + 8 * v19);
            ++v20;
            if (v7)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
        }

        v19 = v13;
LABEL_15:
        v21 = __clz(__rbit64(v7)) | (v19 << 6);
        v22 = *(v1 + 56);
        v23 = (*(v1 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(v22 + 8 * v21);

        v27 = v26;
        v9 = sub_241C8E1DC(v25, v24);
        v28 = v14[2];
        v29 = (v10 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_36;
        }

        v32 = v10;
        if (v14[3] >= v31)
        {
          if ((i & 1) == 0)
          {
            v43 = v9;
            sub_241CC8E00();
            v9 = v43;
          }
        }

        else
        {
          sub_241CC7C9C(v31, i & 1);
          v33 = v47[2];
          v9 = sub_241C8E1DC(v25, v24);
          if ((v32 & 1) != (v10 & 1))
          {

            return sub_241CF9938();
          }
        }

        v7 &= v7 - 1;
        v14 = v47[2];
        if (v32)
        {
          v16 = v9;

          v17 = v14[7];
          v18 = *(v17 + 8 * v16);
          *(v17 + 8 * v16) = v27;
        }

        else
        {
          v14[(v9 >> 6) + 8] |= 1 << v9;
          v34 = (v14[6] + 16 * v9);
          *v34 = v25;
          v34[1] = v24;
          *(v14[7] + 8 * v9) = v27;
          v35 = v14[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_37;
          }

          v14[2] = v36;
        }

        v13 = v19;
        v1 = v46;
      }
    }

LABEL_29:
    v40 = *(MEMORY[0x277D85828] + 4);
    v41 = swift_task_alloc();
    v0[24] = v41;
    *v41 = v0;
    v41[1] = sub_241CE49A4;
    v42 = v0[22];
    v13 = v0[20];
    v12 = v0 + 9;
    v9 = v47;
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822004E8](v9, v10, v11, v13, v12);
  }

  else
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v37 = v0[1];
    v38 = v0[23];

    return v37(v38);
  }
}

uint64_t sub_241CE4E48()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[9];

  v2 = v0[1];

  return v2();
}

uint64_t sub_241CE4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v15;
  *(v8 + 168) = v17;
  *(v8 + 36) = v16;
  *(v8 + 144) = a8;
  *(v8 + 152) = v14;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  *(v8 + 176) = sub_241CF8F38();
  *(v8 + 184) = sub_241C9452C(&qword_27EC6A1F0, &unk_241CFED70);
  v9 = sub_241CF93C8();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CE4FFC, 0, 0);
}

uint64_t sub_241CE4FFC()
{
  v76 = v0;
  v1 = *(v0 + 104);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 104);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = *(*(v1 + 56) + (v14 | (v12 << 6)));
      if (v15 != 6)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0(0, *(v13 + 16) + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_241CBFEE0((v17 > 1), v18 + 1, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    *(v13 + 16) = v18 + 1;
    *(v13 + v18 + 32) = v15;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v16);
    ++v12;
    if (v4)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  v19 = *(v0 + 104);
  v20 = *(v0 + 112);

  v21 = sub_241CE031C(v13);

  v22 = *(v21 + 16);

  v23 = 100;
  if (v22 == 1)
  {
    v23 = 150;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v20 <= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_28:
    v30 = sub_241CEB39C(0, v29[2], v25, v25, v29);

    v31 = *(v30 + 16);
    if (!v31)
    {

      v51 = MEMORY[0x277D84F90];
LABEL_45:
      v52 = *(v0 + 176);
      v70 = *(v0 + 208);
      v73 = *(v0 + 184);
      v53 = *(v0 + 36);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v56 = *(v0 + 120);
      v57 = *(v0 + 96);
      v58 = swift_task_alloc();
      v59 = *(v0 + 128);
      v60 = *(v0 + 144);
      *(v58 + 16) = v54;
      *(v58 + 24) = v57;
      *(v58 + 32) = v56;
      *(v58 + 56) = v60;
      *(v58 + 40) = v59;
      *(v58 + 72) = v55;
      *(v58 + 80) = v53;
      sub_241C92D9C(sub_241CEBF48, v58, v51);

      *(v0 + 64) = sub_241CF8ED8();
      v61 = *v57;
      *(v0 + 216) = swift_checkMetadataState();
      sub_241CF93A8();
      v62 = *(MEMORY[0x277D85828] + 4);
      v63 = swift_task_alloc();
      *(v0 + 224) = v63;
      *v63 = v0;
      v63[1] = sub_241CE5620;
      v64 = *(v0 + 208);
      v10 = *(v0 + 192);
      isUniquelyReferenced_nonNull_native = v0 + 72;
      v11 = v0 + 80;
      v8 = 0;
      v9 = 0;

      return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
    }

    v75 = v27;
    isUniquelyReferenced_nonNull_native = sub_241C94614(0, v31, 0);
    v32 = 0;
    v33 = v75;
    v67 = v30;
    v68 = v30 + 32;
    v66 = v31;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_49;
      }

      v72 = v32;
      v34 = *(v68 + 8 * v32);
      v35 = *(v34 + 16);
      if (v35)
      {
        v69 = v33;
        v74 = v27;

        sub_241C94694(0, v35, 0);
        v36 = v74;
        v37 = (v34 + 48);
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          *(v0 + 40) = *(v37 - 2);
          *(v0 + 48) = v38;
          *(v0 + 56) = v39;

          sub_241C93918(&qword_27EC6A838, &qword_241CFEFB0);
          sub_241C93918(&qword_27EC69D50, &qword_241CFB058);
          swift_dynamicCast();
          v40 = *(v0 + 16);
          v41 = *(v0 + 24);
          v42 = *(v0 + 32);
          v74 = v36;
          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_241C94694((v43 > 1), v44 + 1, 1);
            v36 = v74;
          }

          v37 += 24;
          *(v36 + 16) = v44 + 1;
          v45 = v36 + 24 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v41;
          *(v45 + 48) = v42;
          --v35;
        }

        while (v35);
        v27 = MEMORY[0x277D84F90];
        v33 = v69;
        v31 = v66;
        v30 = v67;
        if (!*(v36 + 16))
        {
LABEL_39:
          v46 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

      else
      {
        v47 = *(v68 + 8 * v32);

        v36 = v27;
        if (!*(v27 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
      v46 = sub_241CF9808();
LABEL_40:
      v74 = v46;
      sub_241CE8984(v36, 1, &v74);

      v48 = v74;
      v75 = v33;
      v50 = *(v33 + 16);
      v49 = *(v33 + 24);
      if (v50 >= v49 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_241C94614((v49 > 1), v50 + 1, 1);
        v33 = v75;
      }

      v32 = v72 + 1;
      *(v33 + 16) = v50 + 1;
      *(v33 + 8 * v50 + 32) = v48;
      if (v72 + 1 == v31)
      {

        v51 = v33;
        goto LABEL_45;
      }
    }
  }

  v28 = *(v0 + 104);
  v29 = sub_241CE88F4(v26, 0);
  v71 = sub_241CE96C4(&v74, (v29 + 4), v26, v28);

  isUniquelyReferenced_nonNull_native = sub_241C90BFC();
  if (v71 == v26)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return MEMORY[0x2822004E8](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}