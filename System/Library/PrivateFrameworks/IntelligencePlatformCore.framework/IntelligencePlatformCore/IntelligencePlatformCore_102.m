uint64_t sub_1C4D0D780()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 312);

  v2 = *(v0 + 352);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4D0D7DC()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C840);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0D86C()
{
  sub_1C43FCF70();
  sub_1C4408F38(&unk_1C4F6C868);
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C442092C(v1);

  return v4(v3);
}

uint64_t sub_1C4D0D8FC(void *a1)
{
  v2 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v3 = *(v2 + 72);
  v4 = sub_1C43FD2BC();
  v5 = v3(v4);
  sub_1C4450520(v5);
  if (v7 == 0xD000000000000014 && 0x80000001C4F84230 == v6)
  {
    goto LABEL_12;
  }

  v9 = sub_1C4F02938();

  if (v9)
  {
    goto LABEL_13;
  }

  v10 = sub_1C43FD2BC();
  v11 = v3(v10);
  sub_1C4450520(v11);
  if (v13 == 0xD000000000000010 && 0x80000001C4F84260 == v12)
  {
LABEL_12:
  }

  else
  {
    sub_1C445145C();
    v15 = sub_1C4F02938();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_13:
  v16 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v17 = *(v16 + 48);
  v18 = sub_1C4404CE0();
  v20 = v19(v18, v16);
  sub_1C4441C50(v20);
  if (v22 == 0xD000000000000013 && 0x80000001C4F87C40 == v21)
  {
  }

  else
  {
    v24 = sub_1C4F02938();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v27 = *(v26 + 40);
  v28 = sub_1C4404CE0();
  return v29(v28, v26) & 1;
}

uint64_t sub_1C4D0DB98(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 4);
  return sub_1C4D03CC0();
}

uint64_t sub_1C4D0DCAC()
{
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  return sub_1C4EF9C88();
}

uint64_t sub_1C4D0DCFC()
{

  return sub_1C442E860(v0 + 200, v0 + 240);
}

uint64_t sub_1C4D0DD2C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1C4D0DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a3 + 8;
  v4 = *(a3 + 8);
  return result;
}

void *sub_1C4D0DD80()
{

  return memcpy((v0 + 16), (v1 + 24), 0x48uLL);
}

uint64_t sub_1C4D0DD9C()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4D0DDC0()
{
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t sub_1C4D0DDD8()
{
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  return sub_1C4EF9AD8();
}

uint64_t sub_1C4D0DDF4()
{

  return sub_1C4D0D8FC((v0 + 16));
}

uint64_t sub_1C4D0DE0C()
{
}

uint64_t sub_1C4D0DE24()
{

  return sub_1C44F95AC(v0, v1);
}

BOOL sub_1C4D0DE3C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C4D0DE54()
{
}

uint64_t sub_1C4D0DE6C@<X0>(double a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, double a11)
{

  return sub_1C44F95AC(a1, a11);
}

uint64_t sub_1C4D0DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = a15;
  v17 = *(v15 + 34);
  return result;
}

uint64_t sub_1C4D0DF1C(uint64_t result, double a2)
{
  *(v2 + 232) = a2;
  *(v2 + 240) = result;
  v3 = *(result + 16);
  return result;
}

uint64_t sub_1C4D0DF54()
{
  v2 = *(*(v0 + 216) + 64);
  *(v0 + 288) = v2;

  return sub_1C4428DA0(v2);
}

uint64_t sub_1C4D0DF74()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C4D0DF94()
{

  return sub_1C442E860(v0 + 16, v0 + 56);
}

uint64_t sub_1C4D0DFAC()
{
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
}

uint64_t sub_1C4D0DFC4()
{

  return sub_1C4D0D8FC((v0 + 160));
}

uint64_t sub_1C4D0DFDC()
{

  return sub_1C442E860(v0, v1 + 160);
}

uint64_t sub_1C4D0DFF4()
{
}

uint64_t sub_1C4D0E00C()
{

  return sub_1C442E860(v1, v0 + 16);
}

uint64_t sub_1C4D0E024()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
}

uint64_t sub_1C4D0E03C()
{
  v2 = *(v0 + 104);

  return sub_1C4D0E2C0();
}

BOOL sub_1C4D0E054()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C4D0E06C()
{
}

void sub_1C4D0E084(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1C4D0E09C()
{

  return sub_1C442E860(v1, v0 + 200);
}

uint64_t sub_1C4D0E0B4()
{

  return sub_1C442E860(v1, v0 + 200);
}

_BYTE *_s7RunModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4D0E1BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1C4D0E1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4D0E26C()
{
  result = qword_1EC0C63A0;
  if (!qword_1EC0C63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C63A0);
  }

  return result;
}

uint64_t sub_1C4D0E2C0()
{
  result = sub_1C444E0CC();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    while (v3 < *(v1 + 16))
    {
      sub_1C442E860(v4, v10);
      ++v3;
      v5 = v10[4];
      sub_1C4409678(v10, v10[3]);
      v6 = *(v5 + 48);
      v7 = sub_1C4426CFC();
      switch(v8(v7))
      {
        case 2u:

          sub_1C440962C(v10);
          goto LABEL_10;
        case 4u:
          sub_1C44339E0();
          break;
        default:
          break;
      }

      v9 = sub_1C4F02938();

      result = sub_1C440962C(v10);
      if (v9)
      {
LABEL_10:

        return 1;
      }

      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return 0;
  }

  return result;
}

void sub_1C4D0E478()
{
  v1 = sub_1C444E0CC();
  v2 = sub_1C441BE8C(v1);
  if (v0)
  {
    do
    {
      sub_1C444B3EC(v2);
      sub_1C440622C(v9);
      v4 = *(v3 + 112);
      v5 = sub_1C4408DF8();
      v6(v5);
      sub_1C440962C(v9);
      sub_1C4435D3C();
    }

    while (!v7);

    sub_1C44238F4();
  }

  else
  {
    sub_1C44238F4();
  }
}

void sub_1C4D0E51C()
{
  v1 = sub_1C444E0CC();
  v2 = sub_1C441BE8C(v1);
  if (v0)
  {
    do
    {
      sub_1C444B3EC(v2);
      sub_1C440622C(v9);
      v4 = *(v3 + 128);
      v5 = sub_1C4408DF8();
      v6(v5);
      sub_1C440962C(v9);
      sub_1C4435D3C();
    }

    while (!v7);

    sub_1C44238F4();
  }

  else
  {
    sub_1C44238F4();
  }
}

void sub_1C4D0E5C0()
{
  v1 = sub_1C444E0CC();
  v2 = sub_1C441BE8C(v1);
  if (v0)
  {
    do
    {
      sub_1C444B3EC(v2);
      sub_1C440622C(v9);
      v4 = *(v3 + 104);
      v5 = sub_1C4408DF8();
      v6(v5);
      sub_1C440962C(v9);
      sub_1C4435D3C();
    }

    while (!v7);

    sub_1C44238F4();
  }

  else
  {
    sub_1C44238F4();
  }
}

void sub_1C4D0E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v28;
  a26 = v29;
  v30 = sub_1C444E0CC();
  sub_1C441BE8C(v30);
  if (v27)
  {
    v31 = 0;
    v32 = v26 + 32;
    sub_1C4410730();
    while (v31 < *(v26 + 16))
    {
      sub_1C444B3EC(v33);
      ++v31;
      sub_1C440622C(&a10);
      v35 = *(v34 + 48);
      v36 = sub_1C4408DF8();
      switch(v37(v36))
      {
        case 1u:

          sub_1C440962C(&a10);
          goto LABEL_11;
        case 3u:
          sub_1C4416588();
          break;
        case 4u:
          sub_1C44339E0();
          break;
        default:
          break;
      }

      v38 = sub_1C4F02938();

      v33 = sub_1C440962C(&a10);
      if ((v38 & 1) == 0)
      {
        v32 += 40;
        if (v27 != v31)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    sub_1C4405950();
  }
}

void sub_1C4D0E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v28;
  a26 = v29;
  v30 = sub_1C444E0CC();
  sub_1C441BE8C(v30);
  if (v27)
  {
    v31 = 0;
    v32 = v26 + 32;
    sub_1C4410730();
    while (v31 < *(v26 + 16))
    {
      sub_1C444B3EC(v33);
      ++v31;
      sub_1C440622C(&a10);
      v35 = *(v34 + 48);
      v36 = sub_1C4408DF8();
      switch(v37(v36))
      {
        case 1u:
        case 2u:
          break;
        case 3u:
          sub_1C4416588();
          break;
        case 4u:
          sub_1C44339E0();
          break;
        default:

          sub_1C440962C(&a10);
          goto LABEL_11;
      }

      v38 = sub_1C4F02938();

      v33 = sub_1C440962C(&a10);
      if ((v38 & 1) == 0)
      {
        v32 += 40;
        if (v27 != v31)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    sub_1C4405950();
  }
}

void sub_1C4D0E934()
{
  v1 = sub_1C444E0CC();
  v2 = sub_1C441BE8C(v1);
  if (v0)
  {
    do
    {
      sub_1C444B3EC(v2);
      sub_1C440622C(v9);
      v4 = *(v3 + 120);
      v5 = sub_1C4408DF8();
      v6(v5);
      sub_1C440962C(v9);
      sub_1C4435D3C();
    }

    while (!v7);

    sub_1C44238F4();
  }

  else
  {
    sub_1C44238F4();
  }
}

uint64_t sub_1C4D0E9D8()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FEB84();
  *v4 = v3;
  v6 = *(v5 + 216);
  v9 = *v1;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = sub_1C4D0F19C;
  }

  else
  {
    v7 = sub_1C4D0EAE0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C4D0EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 224);
  v12 = *(v8 + 160);
  sub_1C444DF5C(a1, a2, a3, a4, a5, a6, a7, a8, v73, v74, v75, v79, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v8, v93, v94);
  v14 = v13;
  v15 = *(v8 + 160);
  v16 = sub_1C444E0CC();
  v17 = v16;
  v76 = v16;
  if (v14)
  {
    sub_1C446C188();
    v18 = MEMORY[0x1E69E7CC0];
    while (v80 != v10)
    {
      if (v10 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      sub_1C442E860(v14, v8 + 56);
      v9 = *(v8 + 88);
      sub_1C4409678((v8 + 56), *(v8 + 80));
      v19 = *(v9 + 72);
      v20 = sub_1C4426CFC();
      v21(v20);
      sub_1C44693BC();
      switch(v22)
      {
        case 1:
          goto LABEL_11;
        case 2:
          sub_1C43FE1B4();
          goto LABEL_11;
        case 3:
          sub_1C44081A8();
          goto LABEL_11;
        case 4:
          sub_1C44061F8();
          goto LABEL_11;
        case 5:
          sub_1C4413C84();
LABEL_11:
          v23 = sub_1C4441300();

          if (v23)
          {
            goto LABEL_12;
          }

          sub_1C440962C((v8 + 56));
          break;
        default:

LABEL_12:
          sub_1C443FA18((v8 + 56), v8 + 96);
          v82 = v18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C4402670();
          }

          if (*(v18 + 16) >= *(v18 + 24) >> 1)
          {
            sub_1C445E6E0();
          }

          v24 = *(v8 + 128);
          sub_1C4418280(v8 + 96, *(v8 + 120));
          sub_1C440C844();
          v26 = *(v25 + 64) + 15;
          swift_task_alloc();
          sub_1C4434858();
          v28 = v27();
          sub_1C441D484(v28, v29, v30, v31);
          sub_1C440962C((v8 + 96));

          v18 = v82;
          v17 = v76;
          break;
      }

      v14 += 40;
      ++v10;
    }

    sub_1C441B16C();
    sub_1C4434328();
    sub_1C441F0EC();
    MEMORY[0x1C6940010](v17, v9);
    sub_1C4422594();
    v42 = *(sub_1C444E0CC() + 16);

    *(v8 + 136) = v42 - *(v18 + 16);
    sub_1C4414C9C();
    v43 = sub_1C4F02858();
    MEMORY[0x1C6940010](v43);

    MEMORY[0x1C6940010](47, 0xE100000000000000);
    v44 = *(sub_1C444E0CC() + 16);

    *(v8 + 144) = v44;
    sub_1C4414C9C();
    v45 = sub_1C4F02858();
    MEMORY[0x1C6940010](v45);

    sub_1C440C0D0();
    v46 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
    v47 = MEMORY[0x1C6940380](v18, v46);
    v49 = v48;

    MEMORY[0x1C6940010](v47, v49);

    sub_1C446D0DC();
    sub_1C441C114();
    v50 = swift_allocError();
    sub_1C443676C(v50, v51);
LABEL_32:
    swift_unknownObjectRelease();
    sub_1C43FBDA0();
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  if (!*(v16 + 16))
  {
    v37 = *(v8 + 192);
    v38 = *(v8 + 200);

    ObjectType = swift_getObjectType();
    (*(v38 + 24))(ObjectType, v38);
    swift_unknownObjectRelease();
    sub_1C440CDEC();
    sub_1C4409BA4();

    __asm { BRAA            X2, X16 }
  }

  sub_1C44061F8();
  sub_1C44048F0();
  v32 = v17 + 32;
  while (*(v17 + 16))
  {
    sub_1C442E860(v32, v8 + 16);
    v33 = sub_1C447F3B8();
    v34(v33);
    sub_1C44693BC();
    switch(v35)
    {
      case 2:
        sub_1C43FE1B4();
        goto LABEL_26;
      case 3:
        sub_1C44081A8();
        goto LABEL_26;
      case 4:

        sub_1C44508B4();
        goto LABEL_36;
      case 5:
        sub_1C4413C84();
        goto LABEL_26;
      default:
LABEL_26:
        v36 = sub_1C441DF14();

        sub_1C44508B4();
        if (v36)
        {
LABEL_36:

          sub_1C4F01968();
          v54 = *(v8 + 192);
          if (!v11)
          {
            v55 = *(v8 + 248);
            v56 = *(v8 + 192);
            swift_getObjectType();
            v57 = sub_1C4450104();
            if (!v58)
            {
              v66 = *(v57 + 8);
              sub_1C442E708();
              v78 = v67 + *v67;
              v69 = *(v68 + 4);
              v70 = swift_task_alloc();
              *(v8 + 232) = v70;
              *v70 = v8;
              sub_1C442D848(v70);
              sub_1C4409BA4();

              __asm { BRAA            X3, X16 }
            }

            v59 = *(v57 + 16);
            sub_1C442E708();
            v77 = v60 + *v60;
            v62 = *(v61 + 4);
            v63 = swift_task_alloc();
            *(v8 + 216) = v63;
            *v63 = v8;
            sub_1C442D848(v63);
            sub_1C4409BA4();

            __asm { BRAA            X3, X16 }
          }

          goto LABEL_32;
        }

        v32 += 40;
        break;
    }
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1C4D0F19C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 224);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4D0F1F8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 240);
  sub_1C43FBDA0();

  return v3();
}

unint64_t sub_1C4D0F254()
{
  result = qword_1EC0C63A8;
  if (!qword_1EC0C63A8)
  {
    sub_1C4572308(&qword_1EC0C6080, &qword_1C4F6A200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C63A8);
  }

  return result;
}

_BYTE *_s24ViewUpdateSourceResponseOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s21ViewUpdateSourceStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4D0F4D4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v16 = result;
    *(v1 + 88);
    sub_1C4409528(v4);
    v8 = v7;
    v10 = v9;
    v12 = *(v1 + 96);
    v11 = *(v1 + 104);
    v13 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4440254(v2, v3, v8, v10, v5);
    sub_1C4450520(*(v1 + 34));
    v15 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    *(v16 + 32) = sub_1C4450F04(v14, 0, 0xF000000000000000);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D0F674()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v19 = result;
    *(v1 + 168);
    sub_1C4409528(v4);
    v8 = v7;
    v10 = v9;
    v12 = *(v1 + 80);
    v11 = *(v1 + 88);
    v13 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4440254(v2, v3, v8, v10, v5);
    v15 = sub_1C4CD9F3C();
    v17 = v16;
    sub_1C4450520(*(v1 + 34));
    v18 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    *(v19 + 32) = sub_1C4450F04(v14, v15, v17);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D0F824()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v19 = result;
    *(v1 + 184);
    sub_1C4409528(v4);
    v8 = v7;
    v10 = v9;
    v12 = *(v1 + 48);
    v11 = *(v1 + 56);
    v13 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4440254(v2, v3, v8, v10, v5);
    v15 = sub_1C4CDE1F0();
    v17 = v16;
    sub_1C4450520(*(v1 + 34));
    v18 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    *(v19 + 32) = sub_1C4450F04(v14, v15, v17);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D0F9D4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v19 = result;
    *(v1 + 136);
    sub_1C4409528(v4);
    v8 = v7;
    v10 = v9;
    v12 = *(v1 + 80);
    v11 = *(v1 + 88);
    v13 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4440254(v2, v3, v8, v10, v5);
    v15 = sub_1C4CE46B8();
    v17 = v16;
    sub_1C4450520(*(v1 + 34));
    v18 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    *(v19 + 32) = sub_1C4450F04(v14, v15, v17);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D0FB84()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v18 = result;
    *(v1 + 224);
    sub_1C4409528(v4);
    v8 = v7;
    v10 = v9;
    v12 = *(v1 + 80);
    v11 = *(v1 + 88);
    v13 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4440254(v2, v3, v8, v10, v5);
    v15 = *(v1 + 152);
    v16 = *(v1 + 160);
    sub_1C4450520(*(v1 + 34));
    v17 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    sub_1C4431E64(v15, v16);
    *(v18 + 32) = sub_1C4450F04(v14, v15, v16);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D0FD34(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(a3 + 96))(a1, a3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F0FCC0;
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v12 <= 0x7FFFFFFF)
  {
    v33 = v6;
    v34 = result;
    v14 = a2[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C442D864();
    v14(v15);
    sub_1C4409528(v10);
    v17 = v16;
    v19 = v18;
    v20 = a2[2];
    v21 = sub_1C442D864();
    v22(v21);
    v23 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    v24 = sub_1C4440254(v33, v8, v17, v19, v12);

    v25 = a2[1];
    v26 = sub_1C442D864();
    v28 = v27(v26);
    v30 = v29;
    v31 = (*(a3 + 72))(a1, a3);
    sub_1C4450520(v31);
    v32 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    *(v34 + 32) = sub_1C4450F04(v24, v28, v30);
    return v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D10010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C46880DC();
}

uint64_t sub_1C4D10118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C443BE78();
  *a2 = result;
  return result;
}

void sub_1C4D10148(void *a1@<X8>)
{
  sub_1C4441C50(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1C4D10188()
{
  result = qword_1EC0C63C0;
  if (!qword_1EC0C63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C63C0);
  }

  return result;
}

uint64_t sub_1C4D1020C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4688600();
}

uint64_t sub_1C4D10230@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4458924();
  *a2 = result;
  return result;
}

void sub_1C4D10260(void *a1@<X8>)
{
  sub_1C4450520(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1C4D102A0()
{
  result = qword_1EC0C63D8;
  if (!qword_1EC0C63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C63D8);
  }

  return result;
}

unint64_t sub_1C4D102F8()
{
  result = qword_1EDDFC2E0;
  if (!qword_1EDDFC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC2E0);
  }

  return result;
}

BOOL sub_1C4D1034C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v13 = 0x6C6F72746E6F63;
  v14 = 0xE700000000000000;
  v15 = 0x6C6F72746E6F63;
  switch(a3)
  {
    case 1:
      v15 = 0x6764656C776F6E6BLL;
      v14 = 0xEE00687061724765;
      break;
    case 2:
      v15 = 0x7055737961776C61;
      v16 = 1702125924;
      goto LABEL_12;
    case 3:
      v14 = 0xE500000000000000;
      v15 = 0x656D6F6962;
      break;
    case 4:
      v14 = 0xE400000000000000;
      v15 = 2003134838;
      break;
    case 5:
      v15 = 0xD000000000000010;
      v14 = 0x80000001C4F842B0;
      break;
    case 6:
      v14 = 0x80000001C4F842D0;
      v15 = 0xD000000000000014;
      break;
    case 7:
      v15 = 0x6163696669746F6ELL;
      v16 = 1852795252;
LABEL_12:
      v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v17 = 0xE700000000000000;
  switch(a7)
  {
    case 1:
      v13 = 0x6764656C776F6E6BLL;
      v17 = 0xEE00687061724765;
      break;
    case 2:
      v13 = 0x7055737961776C61;
      v18 = 1702125924;
      goto LABEL_21;
    case 3:
      v17 = 0xE500000000000000;
      v13 = 0x656D6F6962;
      break;
    case 4:
      v17 = 0xE400000000000000;
      v13 = 2003134838;
      break;
    case 5:
      v13 = 0xD000000000000010;
      v17 = 0x80000001C4F842B0;
      break;
    case 6:
      v17 = 0x80000001C4F842D0;
      v13 = 0xD000000000000014;
      break;
    case 7:
      v13 = 0x6163696669746F6ELL;
      v18 = 1852795252;
LABEL_21:
      v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v15 == v13 && v14 == v17)
  {
  }

  else
  {
    v20 = sub_1C4F02938();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  return a4 == a8;
}

uint64_t sub_1C4D105C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4D106DC(char a1)
{
  if (!a1)
  {
    return 2003134838;
  }

  if (a1 == 1)
  {
    return 0x7954656372756F73;
  }

  return 0x7865646E69;
}

uint64_t sub_1C4D1072C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v17[1] = a5;
  v18 = a4;
  v7 = sub_1C456902C(&qword_1EC0C63F0, qword_1C4F6CD08);
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D10EA8();
  sub_1C4F02BF8();
  v22 = 0;
  sub_1C4F02798();
  if (!v5)
  {
    v21 = v18;
    v20 = 1;
    sub_1C444A808();
    sub_1C4F027E8();
    v19 = 2;
    sub_1C4F027D8();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1C4D108E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4409528(a3);
  sub_1C4F01298();

  MEMORY[0x1C69417F0](a4);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D10974(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C63E0, &qword_1C4F6CD00);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D10EA8();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C444CC50();
    sub_1C4F026C8();
    sub_1C4F026B8();
    v9 = sub_1C4402F74();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C4D10B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D105C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D10BA0(uint64_t a1)
{
  v2 = sub_1C4D10EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D10BDC(uint64_t a1)
{
  v2 = sub_1C4D10EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D10C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4D10974(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1C4D10C70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1C444F05C(*v0, *(v0 + 8));
}

uint64_t sub_1C4D10CC4(void *a1)
{
  sub_1C4401394();
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4FC6320);
  v2 = [a1 configIdentifier];
  v3 = [v2 description];
  v4 = sub_1C4F01138();
  v6 = v5;

  MEMORY[0x1C6940010](v4, v6);

  v7 = 0xE400000000000000;
  MEMORY[0x1C6940010](540701728, 0xE400000000000000);
  v8 = [a1 triggered];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v10, v7);

  MEMORY[0x1C6940010](0x3A657461747320, 0xE700000000000000);
  v11 = [a1 state];
  v12 = sub_1C4F01138();
  v14 = v13;

  MEMORY[0x1C6940010](v12, v14);

  MEMORY[0x1C6940010](3831072, 0xE300000000000000);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v16;
}

unint64_t sub_1C4D10EA8()
{
  result = qword_1EC0C63E8;
  if (!qword_1EC0C63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C63E8);
  }

  return result;
}

uint64_t sub_1C4D10EFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
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

uint64_t sub_1C4D10F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C4D10FA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C4D10FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15NameAndRequestsVMa()
{
  result = qword_1EDDEC5C8;
  if (!qword_1EDDEC5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D110B0()
{
  result = _s17ViewUpdateRequestVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s30SourceListenerConfigIdentifierV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10SourceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D11308()
{
  result = qword_1EC0C6408;
  if (!qword_1EC0C6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6408);
  }

  return result;
}

unint64_t sub_1C4D11360()
{
  result = qword_1EC0C6410;
  if (!qword_1EC0C6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6410);
  }

  return result;
}

unint64_t sub_1C4D113B8()
{
  result = qword_1EC0C6418;
  if (!qword_1EC0C6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6418);
  }

  return result;
}

unint64_t sub_1C4D11410()
{
  result = qword_1EC0C6420;
  if (!qword_1EC0C6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6420);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewUpdate(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4D11510()
{
  v1 = sub_1C456902C(&qword_1EC0C6428, &unk_1C4F6D7E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = _s7MetricsO7PayloadVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1C44DDE2C();
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    return sub_1C4420C3C(v4, &qword_1EC0C6428, &unk_1C4F6D7E8);
  }

  sub_1C446268C();
  sub_1C4459500();
  sub_1C4589678();
  v12 = *(*v0 + 16);
  sub_1C458A1F8();
  sub_1C44544DC(v10, _s7MetricsO7PayloadVMa);
  v13 = *v0;
  *(v13 + 16) = v12 + 1;
  v14 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v15 = *(v6 + 72);
  result = sub_1C446268C();
  *v0 = v13;
  return result;
}

uint64_t sub_1C4D11730(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0A8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4D1DDE4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4D1179C()
{
  v1 = *(v0 + 16);
  v2 = sub_1C440CABC();
  return sub_1C49559CC(v2, v3);
}

uint64_t sub_1C4D117E4()
{
  sub_1C4457984();

  v0(&v5, v3, v2);

  result = swift_unownedRelease();
  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1C4D11850()
{
  sub_1C4457984();

  v0(&v5, v3, v2);

  result = swift_unownedRelease();
  if (!v1)
  {
    return v5;
  }

  return result;
}

void sub_1C4D118BC()
{
  sub_1C43FBD3C();
  v26 = v0;
  v2 = v1;
  v3 = sub_1C4F01828();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = *(v2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v16 = *(v9 + 16);
  sub_1C4475B4C();
  v16();
  sub_1C43FFE24();
  if (swift_dynamicCast())
  {
    v17 = *(v6 + 8);
    v18 = sub_1C43FE5F8();
    v19(v18);
  }

  else
  {
    sub_1C4475B4C();
    v16();
    sub_1C43FD024();
    if (sub_1C4F028C8())
    {
      v20 = *(v9 + 8);
      v21 = sub_1C43FD024();
      v22(v21);
    }

    else
    {
      sub_1C43FBC98();
      sub_1C441C114();
      swift_allocError();
      (*(v9 + 32))(v23, v14, v2);
    }

    sub_1C4EF9798();

    if (sub_1C4F01E68() != 0xD000000000000017 || 0x80000001C4FC6800 != v24)
    {
      sub_1C4F02938();
      sub_1C44624E4();
    }
  }

  sub_1C43FE9F0();
}

void *sub_1C4D11B14(uint64_t a1, void *a2)
{
  v4 = v2;
  result = sub_1C4CE753C(a1, a2);
  if (!v3)
  {
    v6 = result;
    v7 = 0;
    v8 = result[2];
    while (1)
    {
      if (v8 == v7)
      {
      }

      if (v7 >= v6[2])
      {
        break;
      }

      v9 = v7 + 1;
      v10 = v4[12];
      v11 = v4[13];
      v12 = *(v6 + v7 + 32);
      sub_1C4409678(v4 + 9, v10);
      result = (*(v11 + 8))(v12, v10, v11);
      v7 = v9;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4D11BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t sub_1C4D11C1C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1C69417F0](a2);
  sub_1C4475B4C();

  return sub_1C4F01298();
}

uint64_t sub_1C4D11C6C(uint64_t a1)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a1);
  sub_1C4475B4C();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C4D11CD0()
{
  v1 = v0[1];
  v2 = v0[2];
  return sub_1C4D11C6C(*v0);
}

uint64_t sub_1C4D11CDC(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_1C4D11C1C(a1, *v1);
}

uint64_t sub_1C4D11CE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C4D11D64()
{
  sub_1C43FFB44();
  switch(v0)
  {
    case 3:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    case 4:
      return sub_1C4404C28();
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C43FBDF0();
      v1 = sub_1C4404C28();
      MEMORY[0x1C6940010](v1);
      break;
  }

  return sub_1C4404C28();
}

uint64_t sub_1C4D11E78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1C4D11D64();
}

uint64_t sub_1C4D11E90(uint64_t a1, unsigned __int16 a2, char a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v11 = sub_1C4D1179C();
    if (v4)
    {
      return v5;
    }

    v5 = v11;
    if (a3 != 11)
    {
      return v5;
    }

    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_1C459CF48();
      v13 = v27;
      v14 = *(v27 + 16);
      v15 = 32;
      do
      {
        v16 = *(v5 + v15);
        v17 = *(v27 + 24);
        if (v14 >= v17 >> 1)
        {
          sub_1C43FCFE8(v17);
          sub_1C459CF48();
        }

        *(v27 + 16) = v14 + 1;
        *(v27 + 8 * v14 + 32) = v16;
        v15 += 24;
        ++v14;
        --v12;
      }

      while (v12);
    }

LABEL_36:
    sub_1C459760C(v13);
    return v5;
  }

  if (a3 != 11)
  {
    v18 = sub_1C4D1179C();
    if (v4)
    {
      return v5;
    }

    v5 = v18;
    if ((a2 & 0xC000) != 0x8000 || (a1 & 0x100) == 0)
    {
      return v5;
    }

    if (*(sub_1C4D1179C() + 16))
    {
      sub_1C44569F0();
      v13 = v26;
      v19 = *(v26 + 16);
      do
      {
        sub_1C4488608();
        if (v21)
        {
          sub_1C43FCFE8(v20);
          sub_1C459CF48();
          v13 = v26;
        }

        sub_1C445BE1C();
      }

      while (!v22);
      goto LABEL_34;
    }

LABEL_35:

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v9 = a1;
  v10 = a2;
  if (a2 >> 14)
  {
    if (a2 >> 14 == 1)
    {
      v10 = a2 & 0x3F00 | 0x4001;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = a1;
    }

    else
    {
      v9 = a1 & 0xFF00FF | 0x100;
      v10 = 0x8000;
    }
  }

  v5 = sub_1C4D1179C();
  sub_1C4463890(v9, v10);
  if (!v4)
  {
    if (*(sub_1C4D1179C() + 16))
    {
      sub_1C44569F0();
      v13 = v26;
      v24 = *(v26 + 16);
      do
      {
        sub_1C4488608();
        if (v21)
        {
          sub_1C43FCFE8(v25);
          sub_1C459CF48();
          v13 = v26;
        }

        sub_1C445BE1C();
      }

      while (!v22);
LABEL_34:

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  return v5;
}

uint64_t sub_1C4D1214C()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 304);
  *v4 = *v2;
  *(v3 + 312) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 160);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D12260()
{
  sub_1C44249B4();
  sub_1C4404D98();
  if (*(v0 + 296) < 2)
  {
    goto LABEL_8;
  }

  sub_1C44264D0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v5 = *(v0 + 232);
    sub_1C43FECF0();
    v6 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44AE928();
    *v6 = 136446210;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE990();
    sub_1C444AB08();

    v7 = sub_1C43FFE24();
    v10 = sub_1C441D828(v7, v8, v9);

    *(v6 + 4) = v10;
    sub_1C4402B48();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C440962C(v1);
    v16 = sub_1C4416E14();
    MEMORY[0x1C6942830](v16);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if ((*(v0 + 56) & 2) != 0)
  {
LABEL_8:
    v27 = *(v0 + 248);
    v28 = swift_task_alloc();
    *(v0 + 336) = v28;
    *v28 = v0;
    sub_1C4430404(v28);
    v29 = *(v0 + 240);
    v30 = *(v0 + 224);
    v31 = *(v0 + 184);
    v32 = *(v0 + 160);
    sub_1C440F4D4(*(v0 + 232));
    sub_1C442642C();

    return sub_1C4449BAC(v33, v34, v35, v36, v37);
  }

  else
  {
    v17 = *(v0 + 248);
    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = sub_1C4D12450;
    v19 = *(v0 + 288);
    v20 = *(v0 + 240);
    sub_1C440F4D4(*(v0 + 232));
    sub_1C442642C();

    return sub_1C4D137F4(v21, v22, v23, v24);
  }
}

uint64_t sub_1C4D12450()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[41] = v0;

  if (v0)
  {
    v9 = v3[20];

    return MEMORY[0x1EEE6DFA0](sub_1C4D12BCC, v9, 0);
  }

  else
  {
    v10 = v3[31];
    v11 = swift_task_alloc();
    v3[42] = v11;
    *v11 = v7;
    sub_1C4430404(v11);
    v12 = v3[30];
    v13 = v3[28];
    v14 = v3[23];
    v15 = v3[20];
    v16 = sub_1C440F4D4(v3[29]);

    return sub_1C4449BAC(v16, v17, v10, v18, v19);
  }
}

uint64_t sub_1C4D125AC()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  v5 = v2[45];
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = v2[31];
  v7 = v2[20];

  if (v0)
  {
    v8 = sub_1C4D12E34;
  }

  else
  {
    v8 = sub_1C4D126E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C4D12E34()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);

  sub_1C44DDE2C();
  v5 = sub_1C442F7D8();
  v6 = *(v0 + 224);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  if (v5 == 1)
  {
    v11 = sub_1C4402694();
    v12(v11);

    sub_1C4420C3C(v8, &qword_1EC0C6428, &unk_1C4F6D7E8);
  }

  else
  {
    v13 = *(v0 + 160);
    sub_1C4420C3C(*(v0 + 192), &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C445A19C(v6);

    v14 = sub_1C4402694();
    v15(v14);
  }

  v16 = *(v0 + 368);
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v21 = *(v0 + 184);

  sub_1C43FBDA0();

  return v22();
}

uint64_t sub_1C4D12F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_1C4403120(sub_1C4D12FA4, 0);
}

uint64_t sub_1C4D12FA4()
{
  sub_1C4404B08();
  v22 = v0;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1C4F00978();
  v0[6] = sub_1C43FCEE8(v2, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v5 = v0[3];
    v4 = v0[4];
    sub_1C43FECF0();
    v6 = swift_slowAlloc();
    sub_1C43FEC60();
    v21 = swift_slowAlloc();
    *v6 = 136446210;
    *(v6 + 4) = sub_1C441D828(v5, v4, &v21);
    sub_1C441CFB8(&dword_1C43F8000, v7, v8, "ViewUpdate: %{public}s: truncating start");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v9 = v0[5];
  v10 = v9[7];
  v11 = v9[8];
  v12 = *(sub_1C441BE98(v9 + 4) + 32);
  sub_1C4411260();
  v20 = v13 + *v13;
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1C4D13190;
  v17 = v0[4];
  sub_1C440F4D4(v0[3]);
  sub_1C444B404();

  return v18();
}

uint64_t sub_1C4D13190()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 64) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D13288()
{
  sub_1C43FEAEC();
  v1 = v0[5];
  v2 = v1[7];
  v3 = v1[8];
  v4 = *(sub_1C441BE98(v1 + 4) + 32);
  sub_1C4411260();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1C4D13398;
  v9 = v0[4];
  sub_1C440F4D4(v0[3]);
  sub_1C444B404();

  return v10();
}

uint64_t sub_1C4D13398()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D13490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v15 = *(v14 + 80);
  v17 = *(v14 + 40);
  v16 = *(v14 + 48);
  v18 = *(v14 + 88);
  v20 = *(v14 + 24);
  v19 = *(v14 + 32);
  v21 = *(v14 + 16);
  v22 = v17[2];
  v23 = swift_task_alloc();
  *(v23 + 16) = v18;
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;
  *(v23 + 40) = v19;
  *(v23 + 48) = v17;
  sub_1C4422934();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();

  v26 = sub_1C44020E0();
  if (v15)
  {
    if (v26)
    {
      v28 = *(v14 + 24);
      v27 = *(v14 + 32);
      sub_1C43FECF0();
      v29 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C442AD20();
      *v29 = 136446210;
      v30 = sub_1C43FE5F8();
      *(v29 + 4) = sub_1C441D828(v30, v31, v32);
      sub_1C4417FB0(&dword_1C43F8000, v33, v25, "ViewUpdate: %{public}s: truncating end");
      sub_1C440962C(v17);
      v34 = sub_1C4416E14();
      MEMORY[0x1C6942830](v34);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FC560();
  }

  else
  {
    if (v26)
    {
      v36 = *(v14 + 24);
      v35 = *(v14 + 32);
      sub_1C43FECF0();
      v37 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *(v37 + 4) = sub_1C441EA40(4.8751e-34, v38);
      sub_1C441CFB8(&dword_1C43F8000, v39, v40, "ViewUpdate: %{public}s: truncating end");
      sub_1C4406614();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FC1B0();
  }

  sub_1C43FD0C0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4D1363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  v11 = v10[6];
  v12 = v10[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v15 = v10[3];
    v14 = v10[4];
    sub_1C43FECF0();
    v16 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v16 + 4) = sub_1C441EA40(4.8751e-34, v17);
    sub_1C441CFB8(&dword_1C43F8000, v18, v19, "ViewUpdate: %{public}s: truncating end");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20 = v10[8];
  sub_1C43FBDA0();
  sub_1C4402234();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C4D13718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  v11 = v10[6];
  v12 = v10[4];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v15 = v10[3];
    v14 = v10[4];
    sub_1C43FECF0();
    v16 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v16 + 4) = sub_1C441EA40(4.8751e-34, v17);
    sub_1C441CFB8(&dword_1C43F8000, v18, v19, "ViewUpdate: %{public}s: truncating end");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20 = v10[10];
  sub_1C43FBDA0();
  sub_1C4402234();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C4D137F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 200) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  return sub_1C4403120(sub_1C4D13818, 0);
}

uint64_t sub_1C4D13818()
{
  sub_1C44142CC();
  v40 = v0;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1C4F00978();
  *(v0 + 120) = sub_1C43FCEE8(v2, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    sub_1C43FECF0();
    v6 = swift_slowAlloc();
    sub_1C43FEC60();
    v39 = swift_slowAlloc();
    *v6 = 136446210;
    *(v6 + 4) = sub_1C441D828(v5, v4, &v39);
    sub_1C441CFB8(&dword_1C43F8000, v7, v8, "ViewUpdate: %{public}s: clearing start");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v36 = *(v0 + 88);
  v11 = v10[2];
  *(v0 + 128) = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v36;
  *(v12 + 32) = v9;
  v13 = *(v11 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v14 = swift_task_alloc();
  v14[2] = sub_1C4D1EC78;
  v14[3] = v12;
  v14[4] = v11;
  sub_1C4449610(sub_1C4449790, v14, v15, v16, v17, v18, v19, v20);

  LODWORD(v11) = *(v0 + 64);
  v21 = v10[7];
  v22 = v10[8];
  v23 = sub_1C441BE98(v10 + 4);
  if (v11 == 1)
  {
    v24 = *(v23 + 24);
    sub_1C4411260();
    v37 = v25 + *v25;
    v27 = *(v26 + 4);
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    sub_1C4433F10(v28);
    sub_1C444B404();
  }

  else
  {
    v31 = *(v23 + 32);
    sub_1C4411260();
    v38 = v32 + *v32;
    v34 = *(v33 + 4);
    v35 = swift_task_alloc();
    *(v0 + 168) = v35;
    *v35 = v0;
    sub_1C4433F10(v35);
    sub_1C444B404();
  }

  return v29();
}

uint64_t sub_1C4D13B6C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D13C64()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 112);
  v2 = v1[7];
  v3 = v1[8];
  v4 = *(sub_1C441BE98(v1 + 4) + 24);
  sub_1C4411260();
  v11 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  sub_1C4433F10(v8);
  sub_1C444B404();

  return v9();
}

uint64_t sub_1C4D13D6C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D13E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C44A3C24();
  sub_1C4404B08();
  v14 = v12[20];
  v15 = sub_1C449F468();
  sub_1C4441634(v15);
  v16 = v12[15];
  v17 = v12[13];
  sub_1C444AF3C((v12 + 2));

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();

  v20 = sub_1C44020E0();
  if (v14)
  {
    if (v20)
    {
      v22 = v12[12];
      v21 = v12[13];
      sub_1C43FECF0();
      v23 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C442AD20();
      *v23 = 136446210;
      v24 = sub_1C43FE5F8();
      *(v23 + 4) = sub_1C441D828(v24, v25, v26);
      sub_1C4417FB0(&dword_1C43F8000, v27, v19, "ViewUpdate: %{public}s: clearing end");
      sub_1C440962C(v13);
      v28 = sub_1C4416E14();
      MEMORY[0x1C6942830](v28);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FC560();
  }

  else
  {
    if (v20)
    {
      v30 = v12[12];
      v29 = v12[13];
      sub_1C43FECF0();
      v31 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *(v31 + 4) = sub_1C441EA40(4.8751e-34, v32);
      sub_1C441CFB8(&dword_1C43F8000, v33, v34, "ViewUpdate: %{public}s: clearing end");
      sub_1C4406614();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FC1B0();
  }

  sub_1C4410B00();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1C4D13FDC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D140D4()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 112);
  v2 = v1[7];
  v3 = v1[8];
  v4 = *(sub_1C441BE98(v1 + 4) + 32);
  sub_1C4411260();
  v11 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  sub_1C4433F10(v8);
  sub_1C444B404();

  return v9();
}

uint64_t sub_1C4D141DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D142D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C44A3C24();
  sub_1C4404B08();
  v14 = v12[24];
  v15 = sub_1C449F468();
  sub_1C4441634(v15);
  v16 = v12[15];
  v17 = v12[13];
  sub_1C444AF3C((v12 + 2));

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();

  v20 = sub_1C44020E0();
  if (v14)
  {
    if (v20)
    {
      v22 = v12[12];
      v21 = v12[13];
      sub_1C43FECF0();
      v23 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C442AD20();
      *v23 = 136446210;
      v24 = sub_1C43FE5F8();
      *(v23 + 4) = sub_1C441D828(v24, v25, v26);
      sub_1C4417FB0(&dword_1C43F8000, v27, v19, "ViewUpdate: %{public}s: clearing end");
      sub_1C440962C(v13);
      v28 = sub_1C4416E14();
      MEMORY[0x1C6942830](v28);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FC560();
  }

  else
  {
    if (v20)
    {
      v30 = v12[12];
      v29 = v12[13];
      sub_1C43FECF0();
      v31 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *(v31 + 4) = sub_1C441EA40(4.8751e-34, v32);
      sub_1C441CFB8(&dword_1C43F8000, v33, v34, "ViewUpdate: %{public}s: clearing end");
      sub_1C4406614();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FC1B0();
  }

  sub_1C4410B00();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1C4D1444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4458830();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v13 = v10[12];
    v12 = v10[13];
    sub_1C43FECF0();
    v14 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v14 + 4) = sub_1C441EA40(4.8751e-34, v15);
    sub_1C441CFB8(&dword_1C43F8000, v16, v17, "ViewUpdate: %{public}s: clearing end");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = v10[18];
  sub_1C43FBDA0();
  sub_1C4402234();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C4D14524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4458830();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v13 = v10[12];
    v12 = v10[13];
    sub_1C43FECF0();
    v14 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v14 + 4) = sub_1C441EA40(4.8751e-34, v15);
    sub_1C441CFB8(&dword_1C43F8000, v16, v17, "ViewUpdate: %{public}s: clearing end");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = v10[20];
  sub_1C43FBDA0();
  sub_1C4402234();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C4D145FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4458830();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v13 = v10[12];
    v12 = v10[13];
    sub_1C43FECF0();
    v14 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v14 + 4) = sub_1C441EA40(4.8751e-34, v15);
    sub_1C441CFB8(&dword_1C43F8000, v16, v17, "ViewUpdate: %{public}s: clearing end");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = v10[22];
  sub_1C43FBDA0();
  sub_1C4402234();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C4D146D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4458830();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v13 = v10[12];
    v12 = v10[13];
    sub_1C43FECF0();
    v14 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v14 + 4) = sub_1C441EA40(4.8751e-34, v15);
    sub_1C441CFB8(&dword_1C43F8000, v16, v17, "ViewUpdate: %{public}s: clearing end");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v18 = v10[24];
  sub_1C43FBDA0();
  sub_1C4402234();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C4D147AC()
{
  sub_1C43FEAEC();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = v6;
  sub_1C44001F0();
  *v8 = v7;
  v10 = *(v9 + 472);
  v11 = *v1;
  sub_1C43FBDAC();
  *v12 = v11;
  *(v7 + 480) = v0;

  if (v0)
  {
    v13 = *(v7 + 392);
    v14 = sub_1C4D14C6C;
  }

  else
  {
    v16 = *(v7 + 456);
    v15 = *(v7 + 464);
    v17 = *(v7 + 392);

    *(v7 + 514) = v3 & 1;
    *(v7 + 488) = v5;
    v14 = sub_1C4D148F0;
    v13 = v17;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1C4D148F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C44A3C24();
  a19 = v24;
  a20 = v25;
  sub_1C4404B08();
  a18 = v22;
  if (*(v22 + 514))
  {

    sub_1C445AB38();
    sub_1C4440AFC();
    sub_1C443D71C(v26, 255, v27);
    sub_1C441C114();
    swift_allocError();
    sub_1C4F00EA8();
    swift_willThrow();
    sub_1C445B84C();
    sub_1C4420C3C(v20, &qword_1EC0BE5A8, &qword_1C4F376A8);
    sub_1C44081DC();
    sub_1C44544DC(v21, v28);
    sub_1C4413FF0();

    sub_1C43FBDA0();
  }

  else
  {
    v29 = *(*(v22 + 488) + 16);

    if (v29)
    {
      v30 = v22 + 256;
      if (qword_1EDDFECD0 != -1)
      {
        sub_1C4400FC0();
        swift_once();
      }

      v31 = sub_1C4F00978();
      sub_1C43FCEE8(v31, qword_1EDE2DF70);
      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CF8();
      if (os_log_type_enabled(v32, v33))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        sub_1C4485C10(&dword_1C43F8000, v34, v35, "ViewUpdate: completed update");
        v36 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v36);
      }

      sub_1C4D1ECF8();

      sub_1C444AF90();
      sub_1C44249A8();
      v39 = sub_1C4462128(v37, v38);
      if (!sub_1C44157D4(v39, v40, v23))
      {
        *(v33 + 32) = 1;
      }
    }

    else
    {
      v30 = v22 + 288;
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v41 = *(v22 + 456);
      v42 = *(v22 + 368);
      v43 = sub_1C4F00978();
      sub_1C442B738(v43, qword_1EDE2DDF8);
      sub_1C43FCFC0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = sub_1C4F00968();
      v44 = sub_1C4F01CF8();

      if (os_log_type_enabled(v29, v44))
      {
        v45 = *(v22 + 456);
        sub_1C43FECF0();
        v46 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C44057F8();
        *v46 = 136315138;
        if (v45)
        {
          v47 = (v22 + 448);
        }

        else
        {
          v41 = *(v22 + 368);
          v47 = (v22 + 360);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v48 = sub_1C441D828(*v47, v41, &a10);

        *(v46 + 4) = v48;
        sub_1C440A610(&dword_1C43F8000, v49, v44, "ViewUpdate: %s did not update");
        sub_1C4406614();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      sub_1C4D1ECF8();
      sub_1C444AF90();
      sub_1C44249A8();
      v52 = sub_1C4462128(v50, v51);
      if (!sub_1C44157D4(v52, v53, v44))
      {
        *(v41 + 32) = 4;
      }
    }

    v54 = sub_1C4401EF4();
    (v29)(v54);
    sub_1C44D4570();
    sub_1C4420C3C(v29, &qword_1EC0BE5A8, &qword_1C4F376A8);
    sub_1C44081DC();
    sub_1C44544DC(v30, v55);
    sub_1C4413FF0();

    sub_1C43FC1B0();
  }

  sub_1C4410B00();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
}

uint64_t sub_1C4D14C6C()
{
  sub_1C43FCF70();
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[54];
  v4 = v0[52];
  v5 = v0[49];

  sub_1C445B84C();
  sub_1C4420C3C(v3, &qword_1EC0BE5A8, &qword_1C4F376A8);
  sub_1C44081DC();
  sub_1C44544DC(v4, v6);
  v7 = v0[60];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[52];
  v11 = v0[50];

  sub_1C43FBDA0();

  return v12();
}

uint64_t sub_1C4D14D38()
{
  sub_1C43FCF70();
  sub_1C44D4570();
  sub_1C4420C3C(v1, &qword_1EC0BE5A8, &qword_1C4F376A8);
  sub_1C44081DC();
  sub_1C44544DC(v0, v3);
  v4 = v2[63];
  v6 = v2[53];
  v5 = v2[54];
  v7 = v2[52];
  v8 = v2[50];

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4D14DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4D14E0C, v5, 0);
}

uint64_t sub_1C4D14E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v24;
  a22 = v25;
  sub_1C44142CC();
  a20 = v22;
  v26 = *(v22 + 120);
  sub_1C444AF90();
  sub_1C44106D4();
  v27 = _s7MetricsO7PayloadVMa();
  if (!sub_1C44157D4(v23, 1, v27))
  {
    *(v23 + 32) = 5;
  }

  v28 = sub_1C4401EF4();
  v26(v28);
  v29 = *(v22 + 88);
  v30 = *(v29 + 81);
  if (sub_1C4D1E170(*(v22 + 120), *(v22 + 80), *(v22 + 96), *(v22 + 104), *(v22 + 112), *(v29 + 81), *(*(v22 + 120) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager)))
  {
    v32 = *(v22 + 104);
    v31 = *(v22 + 112);
    v33 = *(v22 + 88);
    v34 = *(v22 + 96);
    v35 = v33[6];
    sub_1C4409678(v33 + 2, v33[5]);
    v36 = *(v35 + 24);
    v37 = sub_1C43FE990();
    v38(v37);
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v39 = *(v22 + 112);
    v40 = sub_1C4F00978();
    sub_1C43FCEE8(v40, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = sub_1C4F00968();
    sub_1C4F01CD8();

    if (sub_1C443E1FC())
    {
      v42 = *(v22 + 104);
      a9 = *(v22 + 112);
      v43 = v27;
      v44 = *(v22 + 96);
      sub_1C43FECF0();
      v45 = swift_slowAlloc();
      sub_1C43FEC60();
      v46 = swift_slowAlloc();
      a10 = v46;
      *v45 = 136446210;
      v27 = v43;
      v47 = sub_1C444AB08();
      v49 = sub_1C441D828(v47, v48, &a10);

      *(v45 + 4) = v49;
      sub_1C4403218(&dword_1C43F8000, v50, v51, "ViewUpdate: %{public}s: Giving up attempt to update");
      sub_1C440962C(v46);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  v52 = *(v22 + 80);
  swift_getErrorValue();
  v54 = *(v22 + 48);
  v53 = *(v22 + 56);
  v55 = *(v22 + 64);
  sub_1C4D118BC();
  if (v56)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v57 = *(v22 + 112);
    v58 = sub_1C4F00978();
    sub_1C442B738(v58, qword_1EDE2DDF8);
    sub_1C43FCFC0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v59 = sub_1C4F00968();
    v60 = sub_1C4F01CF8();

    if (os_log_type_enabled(v59, v60))
    {
      v62 = *(v22 + 104);
      v61 = *(v22 + 112);
      v63 = *(v22 + 96);
      sub_1C43FECF0();
      v64 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44C1320();
      *v64 = 136446210;
      sub_1C43FD018();
      v65 = sub_1C444AB08();
      v67 = sub_1C441D828(v65, v66, &a10);

      *(v64 + 4) = v67;
      sub_1C440A610(&dword_1C43F8000, v68, v60, "ViewUpdate: %{public}s: Deferred");
      sub_1C4415138();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v69 = *(v22 + 120);
    sub_1C444AF90();
    sub_1C44106D4();
    v72 = sub_1C4462128(v70, v71);
    if (!sub_1C44157D4(v72, v73, v27))
    {
      *(v60 + 32) = 2;
    }

    v74 = sub_1C4401EF4();
    v69(v74);
  }

  else if (v30)
  {
    sub_1C43FC1B0();
    goto LABEL_21;
  }

  v75 = *(v22 + 80);
  swift_willThrow();
  v76 = v75;
  sub_1C43FBDA0();
  v77 = *(v22 + 80);
LABEL_21:
  sub_1C43FD0C0();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
}

void sub_1C4D15198()
{
  sub_1C4D1DB4C(319, qword_1EDDEBCC8, _s7MetricsO7PayloadVMa);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C4D1528C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D1531C();
}

uint64_t sub_1C4D1531C()
{
  sub_1C43FBCD4();
  v1[14] = v0;
  v2 = sub_1C456902C(&qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[15] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D153E8, v0, 0);
}

uint64_t sub_1C4D153E8()
{
  sub_1C4404D98();
  v1 = v0[14];
  v2 = v0[15];
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C44DDE2C();
  v3 = _s7MetricsO7PayloadVMa();
  v4 = sub_1C440EF74();
  v6 = sub_1C44157D4(v4, v5, v3);
  v7 = v0[17];
  v8 = v0[15];
  if (v6)
  {
    sub_1C4420C3C(v0[15], &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C440BAA8(v9, v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 44);
    v14 = v0[17];
    sub_1C44DDE2C();
    sub_1C4420C3C(v8, &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C4EF9CD8();
    v15 = sub_1C440EF74();
    if (sub_1C44157D4(v15, v16, v17) != 1)
    {
      sub_1C4420C3C(v0[17], &unk_1EC0B84E0, qword_1C4F0D2D0);
      goto LABEL_7;
    }
  }

  v18 = v0[14];
  sub_1C4420C3C(v0[17], &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C444AF90();
  sub_1C44106D4();
  v21 = sub_1C4462128(v19, v20);
  if (!sub_1C44157D4(v21, v22, v3))
  {
    v23 = v0[16];
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v27);
    v28 = *(v3 + 44);
    sub_1C468282C();
  }

  v18(v0 + 7, 0);
LABEL_7:
  sub_1C442E860(*(v0[14] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager) + 32, (v0 + 2));
  v29 = v0[5];
  v30 = v0[6];
  v31 = *(sub_1C441BE98(v0 + 2) + 40);
  sub_1C4411260();
  v38 = (v32 + *v32);
  v34 = *(v33 + 4);
  v35 = swift_task_alloc();
  v0[18] = v35;
  *v35 = v0;
  v35[1] = sub_1C4D156A4;
  v36 = sub_1C4404904();

  return v38(v36);
}

uint64_t sub_1C4D156A4()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 112);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D157B8()
{
  sub_1C43FCF70();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1C440962C(v0 + 2);

  sub_1C43FC1B0();

  return v4();
}

uint64_t sub_1C4D15838()
{
  sub_1C43FCF70();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1C440962C(v0 + 2);

  sub_1C43FBDA0();
  v5 = v0[19];

  return v4();
}

void sub_1C4D158BC(uint64_t a1@<X5>, void *a2@<X8>)
{
  sub_1C4BB08D0();
  if (!v2)
  {
    v6 = v5;
    sub_1C4CE4DFC();
    v7 = 0;
    v9 = v8;
    v23 = a2;
    v10 = 0;
    v26 = v6 + 32;
    v27 = *(v6 + 16);
    v11 = v8 + 56;
    v12 = MEMORY[0x1E69E7CC0];
    v24 = v6;
    v25 = a1;
    while (1)
    {
      if (v10 == v27)
      {

        v28 = v12;

        sub_1C4D11730(&v28);

        *v23 = v28;
        return;
      }

      if (v10 >= *(v6 + 16))
      {
        break;
      }

      v13 = (v26 + 24 * v10);
      v14 = *v13;
      v7 = v13[1];
      v15 = v13[2];
      ++v10;
      if (*v13 == a1)
      {
        v14 = a1;
LABEL_10:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v28 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v12 + 16);
          sub_1C459EF78();
          v12 = v28;
        }

        v21 = *(v12 + 16);
        if (v21 >= *(v12 + 24) >> 1)
        {
          sub_1C459EF78();
          v12 = v28;
        }

        *(v12 + 16) = v21 + 1;
        v22 = (v12 + 24 * v21);
        v22[4] = v14;
        v22[5] = v7;
        v22[6] = v15;
        v6 = v24;
        a1 = v25;
      }

      else if (*(v9 + 16))
      {
        v16 = *(v9 + 40);
        v17 = sub_1C4F02AE8();
        v18 = ~(-1 << *(v9 + 32));
        while (1)
        {
          v19 = v17 & v18;
          if (((*(v11 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {
            break;
          }

          v17 = v19 + 1;
          if (*(*(v9 + 48) + 8 * v19) == v14)
          {
            goto LABEL_10;
          }
        }
      }
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1C4D15B00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 112) = a10;
  *(v11 + 120) = v10;
  *(v11 + 96) = a8;
  *(v11 + 104) = a9;
  *(v11 + 80) = a6;
  *(v11 + 88) = a7;
  *(v11 + 64) = a4;
  *(v11 + 72) = a5;
  *(v11 + 160) = a2;
  *(v11 + 48) = a1;
  *(v11 + 56) = a3;
  return sub_1C448885C(sub_1C4D15B3C, a1, 0);
}

uint64_t sub_1C4D15B3C()
{
  sub_1C44142CC();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v35 = *(v0 + 72);
  v5 = *(v0 + 160);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v35;
  *(v7 + 48) = v4;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  v8 = sub_1C4955A0C(sub_1C4D1E030, v7);
  *(v0 + 128) = v8;

  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 64);
  v11 = sub_1C4F00978();
  *(v0 + 136) = sub_1C442B738(v11, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C4428F14();

  v13 = sub_1C444AD54();
  v14 = *(v0 + 104);
  if (v13)
  {
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C440A2C8();
    swift_slowAlloc();
    *v10 = 136315650;
    v17 = sub_1C43FD018();
    *(v10 + 4) = sub_1C441D828(v17, v18, v19);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v8 + 16);

    *(v10 + 22) = 2048;
    *(v10 + 24) = *(v14 + 16);

    sub_1C4415A90();
    _os_log_impl(v20, v21, v22, v23, v24, 0x20u);
    sub_1C4415138();
    v25 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v25);
  }

  else
  {
    v26 = *(v0 + 104);
  }

  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  *v27 = v0;
  v27[1] = sub_1C4D15DDC;
  v28 = *(v0 + 120);
  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 64);
  v32 = *(v0 + 72);
  v33 = *(v0 + 160);
  sub_1C440F4D4(*(v0 + 56));

  return sub_1C4D19EA8();
}

uint64_t sub_1C4D15DDC()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  *(v3 + 40) = v0;
  *(v3 + 32) = v5;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  sub_1C4461DAC();
  v8 = *(v7 + 144);
  v9 = *(v1 + 128);
  *v10 = *v2;
  *(v11 + 152) = v0;

  sub_1C4461DAC();
  v13 = *(v12 + 48);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4D15F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  v11 = *(v10 + 136);
  v12 = *(v10 + 64);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v15 = *(v10 + 56);
    v14 = *(v10 + 64);
    sub_1C43FECF0();
    v16 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v16 + 4) = sub_1C441EA40(4.8149e-34, v17);
    sub_1C441CFB8(&dword_1C43F8000, v18, v19, "ViewUpdate: %s: Completed group processing");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20 = *(v10 + 32);
  v21 = *(v10 + 24);
  sub_1C4D1ECD4();
  sub_1C4402234();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1C4D15FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C447F614();
  sub_1C4404D98();
  v11 = v10[17];
  v12 = v10[8];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  if (sub_1C44020E0())
  {
    v15 = v10[7];
    v14 = v10[8];
    sub_1C43FECF0();
    v16 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C44057F8();
    *(v16 + 4) = sub_1C441EA40(4.8149e-34, v17);
    sub_1C441CFB8(&dword_1C43F8000, v18, v19, "ViewUpdate: %s: Completed group processing");
    sub_1C4406614();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20 = v10[19];
  sub_1C445C048();
  sub_1C4402234();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C4D160D4()
{
  sub_1C43FBCD4();
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4D1617C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  sub_1C443D71C(qword_1EDDECFC0, v3, type metadata accessor for ViewUpdate.ViewClearJob);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1C4D1ECC0;
  sub_1C440F4D4(*(v0 + 16));
  sub_1C442BBB8();

  return sub_1C4D16268();
}

uint64_t sub_1C4D16268()
{
  sub_1C43FCF70();
  sub_1C43FFB44();
  *(v1 + 248) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  v4 = _s7MetricsO7PayloadVMa();
  *(v1 + 72) = v4;
  v5 = *(v4 - 8);
  sub_1C4404280();
  *(v1 + 80) = v6;
  v8 = *(v7 + 64);
  *(v1 + 88) = sub_1C43FE604();
  *(v1 + 96) = swift_task_alloc();
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  *(v1 + 104) = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  *(v1 + 112) = sub_1C43FE604();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  swift_getObjectType();
  v16 = sub_1C4F017F8();
  *(v1 + 144) = v16;
  *(v1 + 152) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1C4D163CC, v16, v15);
}

uint64_t sub_1C4D163CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v24;
  a22 = v25;
  sub_1C44142CC();
  a20 = v22;
  v26 = *(v22 + 56);
  v27 = *(v22 + 64);
  v28 = *(v22 + 248);
  v29 = sub_1C4D1179C();
  *(v22 + 160) = v29;
  v30 = v29;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v31 = *(v22 + 56);
  v32 = *(v22 + 248);
  v33 = sub_1C4F00978();
  *(v22 + 168) = sub_1C43FCEE8(v33, qword_1EDE2DDF8);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();
  v34 = sub_1C43FD2BC();
  sub_1C4428D8C(v34, v35);
  v36 = sub_1C4F00968();
  sub_1C4F01CF8();
  v37 = sub_1C4428F14();
  sub_1C4463890(v37, v32);
  if (sub_1C444AD54())
  {
    v38 = *(v22 + 56);
    v39 = *(v22 + 248);
    sub_1C441024C();
    swift_slowAlloc();
    sub_1C440A2C8();
    v40 = swift_slowAlloc();
    a10 = v40;
    *v31 = 136446466;
    v41 = sub_1C442A10C(v38, v39);
    v43 = v42;
    v23 = sub_1C441D828(v41, v42, &a10);

    sub_1C4485F54();
    *(v31 + 14) = v43;

    sub_1C4415A90();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    sub_1C440962C(v40);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v49 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v49);
  }

  else
  {
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  v50 = *(v30 + 16);
  *(v22 + 176) = v50;
  if (v50)
  {
    v51 = *(v22 + 136);
    v52 = *(v22 + 72);
    v53 = MEMORY[0x1E69E7CC0];
    *(v22 + 40) = MEMORY[0x1E69E7CC0];
    sub_1C43FCF64();
    result = sub_1C440BAA8(v54, v55, v56, v57);
    *(v22 + 192) = v53;
    *(v22 + 200) = v53;
    *(v22 + 184) = 0;
    v59 = *(v22 + 160);
    if (v59[2])
    {
      v60 = *(v22 + 168);
      sub_1C4418D1C(v59);
      v61 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C4475E34();

      if (sub_1C443E1FC())
      {
        sub_1C43FECF0();
        v62 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C442AD20();
        sub_1C44995E0(4.8751e-34);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442C118();
        sub_1C444AB08();
        sub_1C44B9050();

        v64 = sub_1C443E01C(v63);

        *(v62 + 4) = v64;
        sub_1C4403218(&dword_1C43F8000, v65, v66, "ViewUpdate: %{public}s: Clear start");
        sub_1C440962C(v23);
        v67 = sub_1C4416E14();
        MEMORY[0x1C6942830](v67);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v68 = *(v22 + 248);
      sub_1C4480878();
      if (v70)
      {
        v86 = *(v22 + 56) >> 16;
      }

      else if (v69 != 1)
      {
        v87 = *(v22 + 56);
      }

      sub_1C44884F8();
      if (v70)
      {
        v88 = sub_1C44247F8();
        sub_1C442D874(v88);
        sub_1C4EF9CC8();
        sub_1C440B7F4();
        sub_1C447F668();
        sub_1C468282C();
      }

      sub_1C445BC64();
      v89 = sub_1C440EF74();
      if (!sub_1C44157D4(v89, v90, v91))
      {
        v61[32] = 1;
      }

      v92 = swift_task_alloc();
      *(v22 + 232) = v92;
      *v92 = v22;
      sub_1C440FEC4(v92);
      sub_1C43FD0C0();

      return sub_1C4D137F4(v93, v94, v95, v96);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1C4D1C120(*(v22 + 56), *(v22 + 248), v30, "ViewUpdate: %{public}s: Clearing %ld views end");

    v72 = *(v22 + 128);
    v71 = *(v22 + 136);
    v74 = *(v22 + 112);
    v73 = *(v22 + 120);
    v76 = *(v22 + 96);
    v75 = *(v22 + 104);
    v77 = *(v22 + 88);

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    return v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_1C4D167DC()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 232);
  *v4 = *v2;
  *(v3 + 240) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 152);
  v8 = *(v1 + 144);
  if (v0)
  {
    v9 = sub_1C4D16E90;
  }

  else
  {
    v9 = sub_1C4D16904;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

void sub_1C4D16904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v24;
  a22 = v25;
  sub_1C44142CC();
  a20 = v23;
  v26 = *(v23 + 240);
  sub_1C44F0984();
  if (!sub_1C442F7D8())
  {
    v27 = *(v23 + 104);
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v28, v29, v30, v31);
    v32 = *(v22 + 40);
    sub_1C468282C();
    sub_1C44F0984();
  }

  v34 = *(v23 + 112);
  v33 = *(v23 + 120);
  sub_1C4404BCC();
  sub_1C4D1ECE0();
  sub_1C43FD2BC();
  sub_1C4D1ECE0();
  if (sub_1C4401818(v34) == 1)
  {
    sub_1C4420C3C(*(v23 + 112), &qword_1EC0C6428, &unk_1C4F6D7E8);
    v35 = *(v23 + 192);
    v36 = *(v23 + 200);
  }

  else
  {
    v37 = *(v23 + 192);
    v38 = *(v23 + 112);
    v40 = *(v23 + 88);
    v39 = *(v23 + 96);
    sub_1C4420954();
    sub_1C446268C();
    sub_1C43FE1EC();
    sub_1C4459500();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v23 + 192);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441D4A8();
      v42 = v131;
    }

    v44 = *(v42 + 16);
    v43 = *(v42 + 24);
    if (v44 >= v43 >> 1)
    {
      v132 = sub_1C43FFD98(v43);
      sub_1C458F628(v132, v133, v134, v42);
      v42 = v135;
    }

    v45 = *(v23 + 88);
    v46 = *(v23 + 80);
    sub_1C44114B8(*(v23 + 96));
    *(v42 + 16) = v44 + 1;
    v47 = *(v46 + 80);
    sub_1C441B18C();
    v48 = *(v46 + 72);
    sub_1C4420954();
    sub_1C446268C();
    *(v23 + 40) = v42;
  }

  v49 = *(v23 + 224);
  v50 = *(v23 + 168);
  v51 = *(v23 + 136);
  v52 = *(v23 + 72);
  sub_1C4420C3C(*(v23 + 120), &qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C4420C3C(v51, &qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C44165A4(v51);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = sub_1C4F00968();
  LOBYTE(v51) = sub_1C4F01CF8();

  v54 = os_log_type_enabled(v53, v51);
  v55 = *(v23 + 224);
  v56 = &unk_1C4F6D000;
  if (v54)
  {
    v58 = *(v23 + 208);
    v57 = *(v23 + 216);
    sub_1C43FECF0();
    v52 = swift_slowAlloc();
    sub_1C43FEC60();
    a9 = v26;
    a10 = swift_slowAlloc();
    v59 = a10;
    *v52 = 136446210;
    sub_1C43FD574();
    v60 = sub_1C444AB08();
    sub_1C441D828(v60, v61, &a10);
    sub_1C443EFD8();
    v56 = &unk_1C4F6D000;

    *(v52 + 4) = v58;
    sub_1C44BBF64();
    _os_log_impl(v62, v63, v64, v65, v66, v67);
    sub_1C440962C(v59);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v68 = sub_1C4416E14();
    MEMORY[0x1C6942830](v68);
  }

  v70 = *(v23 + 176);
  v69 = *(v23 + 184);
  sub_1C4475894();
  if (v72)
  {
    sub_1C44307B4();
    sub_1C4422934();
    v73 = *(v23 + 160);
    v74 = *(v23 + 136);
    v75 = *(v23 + 248);
    v76 = *(v23 + 56);
    if (v26)
    {

      sub_1C4420C3C(v74, &qword_1EC0C6428, &unk_1C4F6D7E8);
      v77 = sub_1C43FE990();
      sub_1C4D1C120(v77, v78, v73, v79);

      sub_1C4D1ED04();

      sub_1C43FC560();
      sub_1C43FD0C0();

      v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_1C4420C3C(*(v23 + 136), &qword_1EC0C6428, &unk_1C4F6D7E8);
      v101 = sub_1C43FE990();
      sub_1C4D1C120(v101, v102, v73, v103);

      v105 = *(v23 + 128);
      v104 = *(v23 + 136);
      v107 = *(v23 + 112);
      v106 = *(v23 + 120);
      v109 = *(v23 + 96);
      v108 = *(v23 + 104);
      v110 = *(v23 + 88);

      sub_1C43FBCF0();
      sub_1C43FD0C0();

      v113(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    sub_1C4428A40(v71);
    if (v88)
    {
      __break(1u);
    }

    else
    {
      v91 = *(v23 + 168);
      sub_1C4418D1C((v90 + 24 * v89));
      v92 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C4475E34();

      if (sub_1C443E1FC())
      {
        sub_1C43FECF0();
        v93 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C442AD20();
        sub_1C44995E0(COERCE_FLOAT(v56[59]));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442C118();
        sub_1C444AB08();
        sub_1C44B9050();

        v95 = sub_1C443E01C(v94);

        *(v93 + 4) = v95;
        sub_1C4403218(&dword_1C43F8000, v96, v97, "ViewUpdate: %{public}s: Clear start");
        sub_1C440962C(v52);
        v98 = sub_1C4416E14();
        MEMORY[0x1C6942830](v98);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v99 = *(v23 + 248);
      sub_1C4480878();
      if (v72)
      {
        v119 = *(v23 + 56) >> 16;
      }

      else if (v100 != 1)
      {
        v120 = *(v23 + 56);
      }

      sub_1C44884F8();
      if (v72)
      {
        v121 = sub_1C44247F8();
        sub_1C442D874(v121);
        sub_1C4EF9CC8();
        sub_1C440B7F4();
        sub_1C447F668();
        sub_1C468282C();
      }

      sub_1C445BC64();
      v122 = sub_1C440EF74();
      if (!sub_1C44157D4(v122, v123, v124))
      {
        v92[32] = 1;
      }

      v125 = swift_task_alloc();
      *(v23 + 232) = v125;
      *v125 = v23;
      sub_1C440FEC4();
      sub_1C43FD0C0();

      sub_1C4D137F4(v126, v127, v128, v129);
    }
  }
}

void sub_1C4D16E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  sub_1C44142CC();
  a20 = v22;
  v25 = *(v22 + 240);
  v26 = *(v22 + 224);
  v27 = *(v22 + 168);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v28 = v25;
  v29 = sub_1C4F00968();
  sub_1C4F01CD8();
  sub_1C4428F14();

  if (sub_1C444AD54())
  {
    v30 = *(v22 + 240);
    v32 = *(v22 + 216);
    v31 = *(v22 + 224);
    v33 = *(v22 + 208);
    sub_1C441024C();
    swift_slowAlloc();
    v34 = sub_1C4475CA4();
    sub_1C43FEC60();
    v35 = swift_slowAlloc();
    a10 = v35;
    *v25 = 136446466;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FD574();
    sub_1C444AB08();
    sub_1C44B9050();

    sub_1C443E01C(v36);

    sub_1C44A3D04();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v37;
    *v34 = v37;
    sub_1C43FD0B4();
    _os_log_impl(v38, v39, v40, v41, v25, 0x16u);
    sub_1C4420C3C(v34, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v35);
    v42 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v42);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v43 = *(v22 + 240);
  swift_getErrorValue();
  v45 = *(v22 + 16);
  v44 = *(v22 + 24);
  v46 = *(v22 + 32);
  sub_1C4D118BC();
  if (v47)
  {
    sub_1C445BC64();
    v48 = sub_1C440EF74();
    if (!sub_1C44157D4(v48, v49, v50))
    {
      *(v45 + 32) = 2;
      v51 = *(v22 + 136);
    }

    v52 = *(v22 + 240);
    v53 = *(v22 + 224);
    v54 = *(v22 + 168);
    v55 = *(v22 + 128);
    sub_1C4D1ECE0();
    sub_1C4D11510();
    v56 = sub_1C43FFE24();
    sub_1C4420C3C(v56, v57, &unk_1C4F6D7E8);
    v58 = *(v22 + 40);

    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v59 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      v61 = *(v22 + 216);
      v60 = *(v22 + 224);
      v62 = *(v22 + 208);
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      swift_slowAlloc();
      sub_1C442AD20();
      *v54 = 136446210;
      sub_1C43FE990();
      v63 = sub_1C444AB08();
      sub_1C448602C(v63, v64, v65);
      sub_1C4D1ED44();
      *(v54 + 4) = v62;
      sub_1C4415A90();
      _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
      sub_1C440962C(&unk_1C4F6D7E8);
      v71 = sub_1C4416E14();
      MEMORY[0x1C6942830](v71);
      v72 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v72);
    }

    else
    {
      v87 = *(v22 + 224);
    }

    v88 = *(v22 + 160);
    v89 = *(v22 + 56);
    v90 = *(v22 + 248);
    sub_1C4420C3C(*(v22 + 136), &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C4D1C120(v89, v90, v88, "ViewUpdate: %{public}s: Clearing %ld views end");

    v91 = *(v22 + 240);
    v133 = *(v22 + 128);
    v132 = *(v22 + 136);
    v135 = *(v22 + 112);
    v134 = *(v22 + 120);
    v137 = *(v22 + 96);
    v136 = *(v22 + 104);
    v138 = *(v22 + 88);

    sub_1C43FBDA0();
    sub_1C43FD0C0();

    v140(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v73 = *(v22 + 136);
    v74 = *(v22 + 72);

    v75 = sub_1C440EF74();
    if (!sub_1C44157D4(v75, v76, v74))
    {
      *(*(v22 + 136) + 32) = 5;
    }

    sub_1C44F0984();
    if (!sub_1C442F7D8())
    {
      v77 = *(v22 + 104);
      sub_1C4EF9CC8();
      sub_1C4EF9CD8();
      sub_1C43FBD94();
      sub_1C440BAA8(v78, v79, v80, v81);
      v82 = *(v73 + 40);
      sub_1C468282C();
      sub_1C44F0984();
    }

    v84 = *(v22 + 112);
    v83 = *(v22 + 120);
    sub_1C4402B58();
    sub_1C44EC888();
    sub_1C43FBEF8();
    sub_1C44EC888();
    if (sub_1C4401818(v84) == 1)
    {
      sub_1C4420C3C(*(v22 + 112), &qword_1EC0C6428, &unk_1C4F6D7E8);
      v85 = *(v22 + 192);
      v86 = *(v22 + 200);
    }

    else
    {
      v92 = *(v22 + 192);
      v93 = *(v22 + 112);
      v95 = *(v22 + 88);
      v94 = *(v22 + 96);
      sub_1C4420954();
      sub_1C446268C();
      sub_1C43FE1EC();
      sub_1C4459500();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *(v22 + 192);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C441D4A8();
        v97 = v190;
      }

      v99 = *(v97 + 16);
      v98 = *(v97 + 24);
      if (v99 >= v98 >> 1)
      {
        v191 = sub_1C43FFD98(v98);
        sub_1C458F628(v191, v192, v193, v97);
        v97 = v194;
      }

      v100 = *(v22 + 88);
      v101 = *(v22 + 80);
      sub_1C44114B8(*(v22 + 96));
      *(v97 + 16) = v99 + 1;
      v102 = *(v101 + 80);
      sub_1C441B18C();
      v103 = *(v101 + 72);
      sub_1C4420954();
      sub_1C446268C();
      *(v22 + 40) = v97;
    }

    v104 = *(v22 + 224);
    v105 = *(v22 + 168);
    v106 = *(v22 + 136);
    v107 = *(v22 + 72);
    v108 = &qword_1EC0C6428;
    sub_1C4420C3C(*(v22 + 120), &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C4420C3C(v106, &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C43FCF64();
    sub_1C440BAA8(v109, v110, v111, v107);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v112 = sub_1C4F00968();
    sub_1C4F01CF8();

    v113 = sub_1C443E1FC();
    v114 = *(v22 + 224);
    v115 = &unk_1C4F6D000;
    if (v113)
    {
      v117 = *(v22 + 208);
      v116 = *(v22 + 216);
      sub_1C43FECF0();
      v118 = swift_slowAlloc();
      sub_1C43FEC60();
      v119 = swift_slowAlloc();
      a10 = v119;
      *v118 = 136446210;
      v120 = sub_1C444AB08();
      v108 = v121;
      v122 = sub_1C441D828(v120, v121, &a10);

      *(v118 + 4) = v122;
      v115 = &unk_1C4F6D000;
      sub_1C4403218(&dword_1C43F8000, v123, v124, "ViewUpdate: %{public}s: Clear end");
      sub_1C440962C(v119);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v126 = *(v22 + 176);
    v125 = *(v22 + 184);
    sub_1C4475894();
    if (v128)
    {
      sub_1C44307B4();
      sub_1C4422934();
      v129 = *(v22 + 160);
      v130 = *(v22 + 248);
      v131 = *(v22 + 56);
      sub_1C4420C3C(*(v22 + 136), &qword_1EC0C6428, &unk_1C4F6D7E8);
      v160 = sub_1C43FE990();
      sub_1C4D1C120(v160, v161, v129, v162);

      v164 = *(v22 + 128);
      v163 = *(v22 + 136);
      v166 = *(v22 + 112);
      v165 = *(v22 + 120);
      v168 = *(v22 + 96);
      v167 = *(v22 + 104);
      v169 = *(v22 + 88);

      sub_1C43FBCF0();
      sub_1C43FD0C0();

      v172(v170, v171, v172, v173, v174, v175, v176, v177, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_1C4428A40(v127);
      if (v147)
      {
        __break(1u);
      }

      else
      {
        v150 = *(v22 + 168);
        sub_1C4418D1C((v149 + 24 * v148));
        v151 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C4475E34();

        if (sub_1C443E1FC())
        {
          sub_1C43FECF0();
          v152 = swift_slowAlloc();
          sub_1C43FEC60();
          swift_slowAlloc();
          sub_1C442AD20();
          sub_1C44995E0(COERCE_FLOAT(v115[59]));
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C442C118();
          sub_1C444AB08();
          sub_1C44B9050();

          v154 = sub_1C443E01C(v153);

          *(v152 + 4) = v154;
          sub_1C4403218(&dword_1C43F8000, v155, v156, "ViewUpdate: %{public}s: Clear start");
          sub_1C440962C(v108);
          v157 = sub_1C4416E14();
          MEMORY[0x1C6942830](v157);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v158 = *(v22 + 248);
        sub_1C4480878();
        if (v128)
        {
          v178 = *(v22 + 56) >> 16;
        }

        else if (v159 != 1)
        {
          v179 = *(v22 + 56);
        }

        sub_1C44884F8();
        if (v128)
        {
          v180 = sub_1C44247F8();
          sub_1C442D874(v180);
          sub_1C4EF9CC8();
          sub_1C440B7F4();
          sub_1C447F668();
          sub_1C468282C();
        }

        sub_1C445BC64();
        v181 = sub_1C440EF74();
        if (!sub_1C44157D4(v181, v182, v183))
        {
          v151[32] = 1;
        }

        v184 = swift_task_alloc();
        *(v22 + 232) = v184;
        *v184 = v22;
        sub_1C440FEC4();
        sub_1C43FD0C0();

        sub_1C4D137F4(v185, v186, v187, v188);
      }
    }
  }
}

uint64_t sub_1C4D17710()
{
  sub_1C43FEAEC();
  sub_1C4D1ED24();
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(sub_1C441BE98(v0 + 2) + 40);
  sub_1C4411260();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1C4D17818;
  v8 = sub_1C4404904();

  return v10(v8);
}

uint64_t sub_1C4D17818()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 56);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D17950()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C445AEF8;

  return sub_1C4D16160();
}

uint64_t sub_1C4D179E4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4D176F4();
}

uint64_t sub_1C4D17A90(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  swift_defaultActor_initialize();
  *(v4 + 128) = a2;
  *(v4 + 112) = a3;
  *(v4 + 120) = a1;
  v9 = a2 >> 14;
  if (v9 < 2)
  {
    goto LABEL_6;
  }

  if (BYTE2(a1))
  {
    if (BYTE2(a1) == 1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    v10 = 2;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:
  *(v4 + 130) = v10;
  *(v4 + 131) = a4;
  v11 = (a2 >> 8) & 0x3F;
  if (v9 != 1)
  {
    LOBYTE(v11) = BYTE2(a1);
  }

  if (a2 >> 14)
  {
    v12 = v11;
  }

  else
  {
    v12 = a1;
  }

  *(v4 + 132) = v12;
  return v4;
}

uint64_t sub_1C4D17B60()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  sub_1C443D71C(&qword_1EC0C6440, v3, type metadata accessor for ViewUpdate.ViewTruncateJob);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1C4D17C48;
  sub_1C440F4D4(*(v0 + 16));
  sub_1C442BBB8();

  return sub_1C4D17D60();
}

uint64_t sub_1C4D17C48()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 24);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C4D1ECD4();
    v8 = sub_1C4401EF4();

    return v9(v8);
  }
}

uint64_t sub_1C4D17D60()
{
  sub_1C43FCF70();
  sub_1C43FFB44();
  *(v1 + 298) = v2;
  *(v1 + 296) = v3;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  v5 = _s7MetricsO7PayloadVMa();
  *(v1 + 120) = v5;
  v6 = *(v5 - 8);
  sub_1C4404280();
  *(v1 + 128) = v7;
  v9 = *(v8 + 64);
  *(v1 + 136) = sub_1C43FE604();
  *(v1 + 144) = swift_task_alloc();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  *(v1 + 152) = sub_1C43FBE7C();
  v13 = sub_1C456902C(&qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  *(v1 + 160) = sub_1C43FE604();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  swift_getObjectType();
  v17 = sub_1C4F017F8();
  *(v1 + 192) = v17;
  *(v1 + 200) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1C4D17EC8, v17, v16);
}

uint64_t sub_1C4D17EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v25;
  a22 = v26;
  sub_1C44142CC();
  a20 = v22;
  v27 = *(v22 + 104);
  v28 = *(v22 + 112);
  v29 = *(v22 + 296);
  v30 = sub_1C4D1179C();
  *(v22 + 208) = v30;
  v31 = v30;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v32 = *(v22 + 104);
  v33 = *(v22 + 296);
  v34 = sub_1C4F00978();
  *(v22 + 216) = sub_1C43FCEE8(v34, qword_1EDE2DDF8);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();
  v35 = sub_1C43FD2BC();
  sub_1C4428D8C(v35, v36);
  v37 = sub_1C4F00968();
  sub_1C4F01CF8();
  v38 = sub_1C4428F14();
  sub_1C4463890(v38, v33);
  if (sub_1C444AD54())
  {
    v39 = *(v22 + 104);
    v40 = *(v22 + 296);
    sub_1C441024C();
    swift_slowAlloc();
    sub_1C440A2C8();
    v41 = swift_slowAlloc();
    a10 = v41;
    *v32 = 136446466;
    v42 = sub_1C442A10C(v39, v40);
    v23 = v43;
    sub_1C441D828(v42, v43, &a10);

    sub_1C4485F54();
    *(v32 + 14) = v23;

    sub_1C4415A90();
    _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
    sub_1C440962C(v41);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v49 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v49);
  }

  else
  {
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  v50 = *(v31 + 16);
  *(v22 + 224) = v50;
  if (v50)
  {
    v51 = *(v22 + 184);
    v52 = *(v22 + 120);
    v53 = MEMORY[0x1E69E7CC0];
    *(v22 + 72) = MEMORY[0x1E69E7CC0];
    sub_1C43FCF64();
    result = sub_1C440BAA8(v54, v55, v56, v57);
    *(v22 + 240) = v53;
    *(v22 + 248) = v53;
    *(v22 + 232) = 0;
    v59 = *(v22 + 208);
    if (v59[2])
    {
      v60 = *(v22 + 216);
      sub_1C445EAF0(v59);
      v61 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C44AB2BC();

      if (os_log_type_enabled(v61, v23))
      {
        sub_1C43FECF0();
        v62 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C44C1320();
        sub_1C44AB1E0(4.8751e-34);
        v63 = sub_1C4F02858();
        sub_1C4424DA0(v63, v64);
        v65 = sub_1C43FBEF8();
        MEMORY[0x1C6940010](v65);

        sub_1C444C088(v66);
        sub_1C4460618();
        *(v62 + 4) = v24;
        sub_1C44BBF64();
        _os_log_impl(v67, v68, v69, v70, v71, v72);
        sub_1C4415138();
        v73 = sub_1C4416E14();
        MEMORY[0x1C6942830](v73);
      }

      v74 = *(v22 + 296);
      sub_1C4480878();
      if (v76)
      {
        v85 = *(v22 + 104) >> 16;
      }

      else if (v75 != 1)
      {
        v86 = *(v22 + 104);
      }

      sub_1C44884F8();
      if (v76)
      {
        v87 = sub_1C4416BC0();
        sub_1C442D874(v87);
        sub_1C4EF9CC8();
        sub_1C440B7F4();
        sub_1C447F668();
        sub_1C468282C();
      }

      v88 = swift_task_alloc();
      *(v22 + 280) = v88;
      *v88 = v22;
      sub_1C440E9F8(v88);
      sub_1C43FD0C0();

      return sub_1C4D12F80(v89, v90, v91, v92);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1C4D1C120(*(v22 + 104), *(v22 + 296), v31, "ViewUpdate: %{public}s: Truncating %ld views - end");

    sub_1C445BB70();

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    return v79(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_1C4D182C4()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 280);
  *v4 = *v2;
  *(v3 + 288) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 200);
  v8 = *(v1 + 192);
  if (v0)
  {
    v9 = sub_1C4D189B8;
  }

  else
  {
    v9 = sub_1C4D183EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

void sub_1C4D183EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v24;
  a22 = v25;
  sub_1C44142CC();
  a20 = v23;
  v26 = *(v23 + 288);
  sub_1C4475650();
  if (!sub_1C442F7D8())
  {
    v27 = *(v23 + 152);
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v28, v29, v30, v31);
    v32 = *(v22 + 40);
    sub_1C468282C();
    sub_1C4475650();
  }

  v34 = *(v23 + 160);
  v33 = *(v23 + 168);
  sub_1C4404BCC();
  sub_1C4D1ECE0();
  sub_1C43FD2BC();
  sub_1C4D1ECE0();
  if (sub_1C4401818(v34) == 1)
  {
    v35 = *(v23 + 160);
    sub_1C4420C3C(*(v23 + 168), &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C4420C3C(v35, &qword_1EC0C6428, &unk_1C4F6D7E8);
    v36 = *(v23 + 240);
    v37 = *(v23 + 248);
  }

  else
  {
    v38 = *(v23 + 240);
    v39 = *(v23 + 160);
    v41 = *(v23 + 136);
    v40 = *(v23 + 144);
    sub_1C4420954();
    sub_1C446268C();
    sub_1C43FE1EC();
    sub_1C4459500();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v23 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441D4A8();
      v36 = v125;
    }

    v44 = *(v36 + 16);
    v43 = *(v36 + 24);
    if (v44 >= v43 >> 1)
    {
      v126 = sub_1C43FFD98(v43);
      sub_1C458F628(v126, v127, v128, v36);
      v36 = v129;
    }

    v45 = *(v23 + 168);
    v46 = *(v23 + 136);
    v47 = *(v23 + 128);
    sub_1C44114B8(*(v23 + 144));
    sub_1C4420C3C(v45, &qword_1EC0C6428, &unk_1C4F6D7E8);
    *(v36 + 16) = v44 + 1;
    v48 = *(v47 + 80);
    sub_1C441B18C();
    v49 = *(v47 + 72);
    sub_1C4420954();
    sub_1C446268C();
    *(v23 + 72) = v36;
    v37 = v36;
  }

  v50 = *(v23 + 272);
  v51 = *(v23 + 216);
  v52 = *(v23 + 184);
  v53 = *(v23 + 120);
  sub_1C4420C3C(v52, &qword_1EC0C6428, &unk_1C4F6D7E8);
  sub_1C44165A4(v52);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = sub_1C4F00968();
  v55 = sub_1C4F01CF8();

  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v23 + 272);
  v58 = &unk_1C4F6D000;
  if (v56)
  {
    v59 = *(v23 + 256);
    v60 = *(v23 + 264);
    sub_1C43FECF0();
    a9 = v26;
    v61 = v37;
    v62 = swift_slowAlloc();
    sub_1C43FEC60();
    v63 = swift_slowAlloc();
    a10 = v63;
    *v62 = 136446210;
    *(v23 + 88) = v59;
    v64 = sub_1C4F02858();
    sub_1C44A83C0(v64, v65);
    MEMORY[0x1C6940010](v60, v57);
    v66 = sub_1C441D828(*(v23 + 40), *(v23 + 48), &a10);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_1C43F8000, v54, v55, "ViewUpdate: %{public}s: Truncation end", v62, 0xCu);
    sub_1C440962C(v63);
    v58 = &unk_1C4F6D000;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v37 = v61;
    v26 = a9;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v68 = *(v23 + 224);
  v67 = *(v23 + 232);
  sub_1C4475894();
  if (v70)
  {
    sub_1C447FB08();
    sub_1C4422934();
    v71 = *(v23 + 208);
    v72 = *(v23 + 184);
    v73 = *(v23 + 296);
    v74 = *(v23 + 104);
    if (v26)
    {

      sub_1C4420C3C(v72, &qword_1EC0C6428, &unk_1C4F6D7E8);
      v75 = sub_1C43FE990();
      sub_1C4D1C120(v75, v76, v71, v77);

      sub_1C44A150C();

      sub_1C43FC560();
      sub_1C43FD0C0();

      v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_1C4420C3C(*(v23 + 184), &qword_1EC0C6428, &unk_1C4F6D7E8);
      v105 = sub_1C43FE990();
      sub_1C4D1C120(v105, v106, v71, v107);

      sub_1C445BB70();

      sub_1C43FBCF0();
      sub_1C43FD0C0();

      v110(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    *(v23 + 240) = v36;
    *(v23 + 248) = v37;
    sub_1C4485AE4(v69);
    if (v86)
    {
      __break(1u);
    }

    else
    {
      v89 = *(v23 + 216);
      sub_1C445EAF0((v88 + 24 * v87));
      v90 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C44AB2BC();

      if (os_log_type_enabled(v90, v57))
      {
        sub_1C43FECF0();
        v91 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C44C1320();
        sub_1C44AB1E0(COERCE_FLOAT(v58[59]));
        v92 = sub_1C4F02858();
        sub_1C4424DA0(v92, v93);
        v94 = sub_1C43FBEF8();
        MEMORY[0x1C6940010](v94);

        sub_1C444C088(v95);
        sub_1C4460618();
        *(v91 + 4) = v58;
        sub_1C44BBF64();
        _os_log_impl(v96, v97, v98, v99, v100, v101);
        sub_1C4415138();
        v102 = sub_1C4416E14();
        MEMORY[0x1C6942830](v102);
      }

      v103 = *(v23 + 296);
      sub_1C4480878();
      if (v70)
      {
        v116 = *(v23 + 104) >> 16;
      }

      else if (v104 != 1)
      {
        v117 = *(v23 + 104);
      }

      sub_1C44884F8();
      if (v70)
      {
        v118 = sub_1C4416BC0();
        sub_1C442D874(v118);
        sub_1C4EF9CC8();
        sub_1C440B7F4();
        sub_1C447F668();
        sub_1C468282C();
      }

      v119 = swift_task_alloc();
      *(v23 + 280) = v119;
      *v119 = v23;
      sub_1C440E9F8();
      sub_1C43FD0C0();

      sub_1C4D12F80(v120, v121, v122, v123);
    }
  }
}

void sub_1C4D189B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  sub_1C44142CC();
  a20 = v22;
  v25 = *(v22 + 288);
  v26 = *(v22 + 272);
  v27 = *(v22 + 216);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v28 = v25;
  v29 = sub_1C4F00968();
  sub_1C4F01CD8();
  sub_1C4428F14();

  if (sub_1C444AD54())
  {
    v30 = *(v22 + 288);
    v32 = *(v22 + 264);
    v31 = *(v22 + 272);
    v33 = *(v22 + 256);
    sub_1C441024C();
    swift_slowAlloc();
    v34 = sub_1C4475CA4();
    sub_1C43FEC60();
    v35 = swift_slowAlloc();
    a10 = v35;
    *v25 = 136446466;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FD574();
    sub_1C444AB08();
    sub_1C44B9050();

    sub_1C443E01C(v36);

    sub_1C44A3D04();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v37;
    *v34 = v37;
    sub_1C43FD0B4();
    _os_log_impl(v38, v39, v40, v41, v25, 0x16u);
    sub_1C4420C3C(v34, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v35);
    v42 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v42);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v43 = *(v22 + 288);
  swift_getErrorValue();
  v45 = *(v22 + 16);
  v44 = *(v22 + 24);
  v46 = *(v22 + 32);
  sub_1C4D118BC();
  if (v47)
  {
    v48 = *(v22 + 184);
    v49 = *(v22 + 120);
    v50 = sub_1C440EF74();
    if (!sub_1C44157D4(v50, v51, v52))
    {
      *(v48 + 32) = 2;
      v53 = *(v22 + 184);
    }

    v54 = *(v22 + 288);
    v55 = *(v22 + 272);
    v56 = *(v22 + 216);
    v57 = *(v22 + 176);
    sub_1C4D1ECE0();
    sub_1C4D11510();
    v58 = sub_1C43FFE24();
    sub_1C4420C3C(v58, v59, &unk_1C4F6D7E8);
    v60 = *(v22 + 72);

    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v61 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      v63 = *(v22 + 264);
      v62 = *(v22 + 272);
      v64 = *(v22 + 256);
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      swift_slowAlloc();
      sub_1C442AD20();
      *v56 = 136446210;
      sub_1C43FE990();
      v65 = sub_1C444AB08();
      sub_1C448602C(v65, v66, v67);
      sub_1C4D1ED44();
      *(v56 + 4) = v64;
      sub_1C4415A90();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      sub_1C440962C(&unk_1C4F6D7E8);
      v73 = sub_1C4416E14();
      MEMORY[0x1C6942830](v73);
      v74 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v74);
    }

    else
    {
      v97 = *(v22 + 272);
    }

    v98 = *(v22 + 208);
    v99 = *(v22 + 104);
    v100 = *(v22 + 296);
    sub_1C4420C3C(*(v22 + 184), &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C4D1C120(v99, v100, v98, "ViewUpdate: %{public}s: Truncating %ld views - end");

    v101 = *(v22 + 288);
    v145 = *(v22 + 176);
    v144 = *(v22 + 184);
    v147 = *(v22 + 160);
    v146 = *(v22 + 168);
    v149 = *(v22 + 144);
    v148 = *(v22 + 152);
    v150 = *(v22 + 136);

    sub_1C43FBDA0();
    sub_1C43FD0C0();

    v152(v151, v152, v153, v154, v155, v156, v157, v158, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v75 = *(v22 + 184);
    v76 = *(v22 + 120);

    v77 = sub_1C440EF74();
    if (!sub_1C44157D4(v77, v78, v76))
    {
      *(*(v22 + 184) + 32) = 5;
    }

    sub_1C4475650();
    if (!sub_1C442F7D8())
    {
      v79 = *(v22 + 152);
      sub_1C4EF9CC8();
      sub_1C4EF9CD8();
      sub_1C43FBD94();
      sub_1C440BAA8(v80, v81, v82, v83);
      v84 = *(v75 + 40);
      sub_1C468282C();
      sub_1C4475650();
    }

    v86 = *(v22 + 160);
    v85 = *(v22 + 168);
    sub_1C4402B58();
    sub_1C44EC888();
    sub_1C43FBEF8();
    sub_1C44EC888();
    if (sub_1C4401818(v86) == 1)
    {
      v88 = *(v22 + 160);
      v87 = *(v22 + 168);
      sub_1C442BBB8();
      sub_1C4420C3C(v89, v90, v91);
      sub_1C442BBB8();
      sub_1C4420C3C(v92, v93, v94);
      v95 = *(v22 + 240);
      v96 = *(v22 + 248);
    }

    else
    {
      v102 = *(v22 + 240);
      v103 = *(v22 + 160);
      v105 = *(v22 + 136);
      v104 = *(v22 + 144);
      sub_1C4420954();
      sub_1C446268C();
      sub_1C43FE1EC();
      sub_1C4459500();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = *(v22 + 240);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C441D4A8();
        v95 = v205;
      }

      v108 = *(v95 + 16);
      v107 = *(v95 + 24);
      if (v108 >= v107 >> 1)
      {
        v206 = sub_1C43FFD98(v107);
        sub_1C458F628(v206, v207, v208, v95);
        v95 = v209;
      }

      v109 = *(v22 + 168);
      v110 = *(v22 + 136);
      v111 = *(v22 + 128);
      sub_1C44114B8(*(v22 + 144));
      sub_1C4420C3C(v109, &qword_1EC0C6428, &unk_1C4F6D7E8);
      *(v95 + 16) = v108 + 1;
      v112 = *(v111 + 80);
      sub_1C441B18C();
      v113 = *(v111 + 72);
      sub_1C4420954();
      sub_1C446268C();
      *(v22 + 72) = v95;
      v96 = v95;
    }

    v114 = *(v22 + 272);
    v115 = *(v22 + 216);
    v116 = *(v22 + 120);
    sub_1C4420C3C(*(v22 + 184), &qword_1EC0C6428, &unk_1C4F6D7E8);
    sub_1C43FCF64();
    sub_1C440BAA8(v117, v118, v119, v116);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v120 = sub_1C4F00968();
    v121 = sub_1C4F01CF8();

    v122 = os_log_type_enabled(v120, v121);
    v123 = *(v22 + 272);
    v124 = &unk_1C4F6D000;
    if (v122)
    {
      v125 = *(v22 + 256);
      v126 = *(v22 + 264);
      sub_1C43FECF0();
      v127 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44C1320();
      *v127 = 136446210;
      *(v22 + 88) = v125;
      v128 = sub_1C4F02858();
      sub_1C44A83C0(v128, v129);
      MEMORY[0x1C6940010](v126, v123);
      sub_1C441D828(*(v22 + 40), *(v22 + 48), &a10);
      sub_1C4460618();
      *(v127 + 4) = v126;
      v124 = &unk_1C4F6D000;
      sub_1C44BBF64();
      _os_log_impl(v130, v131, v132, v133, v134, v135);
      sub_1C4415138();
      v136 = sub_1C4416E14();
      MEMORY[0x1C6942830](v136);
    }

    v138 = *(v22 + 224);
    v137 = *(v22 + 232);
    sub_1C4475894();
    if (v140)
    {
      sub_1C447FB08();
      sub_1C4422934();
      v141 = *(v22 + 208);
      v142 = *(v22 + 296);
      v143 = *(v22 + 104);
      sub_1C4420C3C(*(v22 + 184), &qword_1EC0C6428, &unk_1C4F6D7E8);
      v178 = sub_1C43FE990();
      sub_1C4D1C120(v178, v179, v141, v180);

      v182 = *(v22 + 176);
      v181 = *(v22 + 184);
      v184 = *(v22 + 160);
      v183 = *(v22 + 168);
      v186 = *(v22 + 144);
      v185 = *(v22 + 152);
      v187 = *(v22 + 136);

      sub_1C43FBCF0();
      sub_1C43FD0C0();

      v190(v188, v189, v190, v191, v192, v193, v194, v195, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      *(v22 + 240) = v95;
      *(v22 + 248) = v96;
      sub_1C4485AE4(v139);
      if (v159)
      {
        __break(1u);
      }

      else
      {
        v162 = *(v22 + 216);
        sub_1C445EAF0((v161 + 24 * v160));
        v163 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C44AB2BC();

        if (os_log_type_enabled(v163, v121))
        {
          sub_1C43FECF0();
          v164 = swift_slowAlloc();
          sub_1C43FEC60();
          swift_slowAlloc();
          sub_1C44C1320();
          sub_1C44AB1E0(COERCE_FLOAT(v124[59]));
          v165 = sub_1C4F02858();
          sub_1C4424DA0(v165, v166);
          v167 = sub_1C43FBEF8();
          MEMORY[0x1C6940010](v167);

          sub_1C444C088(v168);
          sub_1C4460618();
          *(v164 + 4) = v124;
          sub_1C44BBF64();
          _os_log_impl(v169, v170, v171, v172, v173, v174);
          sub_1C4415138();
          v175 = sub_1C4416E14();
          MEMORY[0x1C6942830](v175);
        }

        v176 = *(v22 + 296);
        sub_1C4480878();
        if (v140)
        {
          v196 = *(v22 + 104) >> 16;
        }

        else if (v177 != 1)
        {
          v197 = *(v22 + 104);
        }

        sub_1C44884F8();
        if (v140)
        {
          v198 = sub_1C4416BC0();
          sub_1C442D874(v198);
          sub_1C4EF9CC8();
          sub_1C440B7F4();
          sub_1C447F668();
          sub_1C468282C();
        }

        v199 = swift_task_alloc();
        *(v22 + 280) = v199;
        *v199 = v22;
        sub_1C440E9F8();
        sub_1C43FD0C0();

        sub_1C4D12F80(v200, v201, v202, v203);
      }
    }
  }
}

uint64_t sub_1C4D19268()
{
  sub_1C43FEAEC();
  sub_1C4D1ED24();
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(sub_1C441BE98(v0 + 2) + 40);
  sub_1C4411260();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1C4D19370;
  v8 = sub_1C4404904();

  return v10(v8);
}

uint64_t sub_1C4D19370()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 56);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D19484()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  sub_1C43FC1B0();

  return v1();
}

uint64_t sub_1C4D194DC()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  sub_1C43FBDA0();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1C4D19538()
{
  v1 = *(v0 + 112);

  sub_1C4463890(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C4D1956C()
{
  sub_1C4D19538();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4D195BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C445ADFC;

  return sub_1C4D17B44();
}

uint64_t sub_1C4D19650()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442E8C4;

  return sub_1C4D1924C();
}

void sub_1C4D196E0(void *a1@<X8>)
{
  sub_1C4BBAA38();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4D1971C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v2 = sub_1C440CABC();
  return sub_1C446C37C(v2, v3);
}

void sub_1C4D19798(void *a1@<X8>)
{
  sub_1C4BABFC8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4D197DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v71 = a6;
  v76 = a5;
  v77 = a2;
  v72 = a4;
  v65 = a7;
  v70 = a8;
  updated = _s17ViewUpdateRequestVMa(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v60 - v16;
  v17 = sub_1C456902C(&qword_1EC0C5478, &qword_1C4F613C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v60 - v19);
  v21 = _s15NameAndRequestsVMa();
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v64 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v23);
  v62 = &v60 - v26;
  v27 = 0;
  v28 = *(a3 + 16);
  v29 = a3 + 48;
  v67 = MEMORY[0x1E69E7CC0];
  v75 = a1;
  v61 = v28;
  v60 = a3 + 48;
  while (1)
  {
    v30 = ~v27;
    v31 = (v29 + 24 * v27);
    v32 = v28 - v27;
    v33 = v72;
    if (!v32)
    {
      break;
    }

    while (1)
    {
      v78 = v32;
      v79 = v30;
      v34 = v21;
      v35 = v20;
      v36 = *(v31 - 2);
      v37 = *(v31 - 1);
      v38 = *v31;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v39 = v81;
      sub_1C4449828();
      if (v39)
      {
        v81 = v39;
      }

      if ((v80[48] & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v33 != 11 && v36 != v76)
      {
        sub_1C4CEB018();
        sub_1C4448688(v36, a1);
        a1 = v75;
      }

      if (v80[8])
      {
LABEL_11:
        v81 = 0;
        sub_1C444AF3C(v80);

        v20 = v35;
        v41 = v35;
        v21 = v34;
        sub_1C440BAA8(v41, 1, 1, v34);
        goto LABEL_12;
      }

      v43 = v70;
      v81 = *(v70 + 56);
      v44 = *(v70 + 72);
      v74 = *(v70 + 64);
      v45 = sub_1C4445828(v36, v44);
      v59 = *(v43 + 80);
      v46 = v73;
      sub_1C444412C(a1, v77, v80, v36, v37, v38, v81, v74, v73, v45 & 1, v59);
      v81 = 0;
      v47 = v68;
      sub_1C44DDE2C();
      if (sub_1C44157D4(v47, 1, updated) == 1)
      {
        sub_1C4420C3C(v47, &qword_1EC0BE5A8, &qword_1C4F376A8);
        a1 = v75;
        v48 = v81;
        sub_1C4BBAC48();
        v81 = v48;
        if (v48)
        {
          sub_1C444AF3C(v80);

          sub_1C4420C3C(v73, &qword_1EC0BE5A8, &qword_1C4F376A8);
        }

        sub_1C444AF3C(v80);

        sub_1C4420C3C(v73, &qword_1EC0BE5A8, &qword_1C4F376A8);
        v49 = 1;
        v20 = v35;
      }

      else
      {
        sub_1C4420C3C(v46, &qword_1EC0BE5A8, &qword_1C4F376A8);
        sub_1C444AF3C(v80);
        sub_1C446268C();
        v50 = *(v34 + 20);
        sub_1C446268C();
        v49 = 0;
        *v35 = v37;
        v35[1] = v38;
        v20 = v35;
        a1 = v75;
      }

      sub_1C440BAA8(v20, v49, 1, v34);
      v51 = sub_1C44157D4(v20, 1, v34);
      v33 = v72;
      v21 = v34;
      if (v51 != 1)
      {
        break;
      }

LABEL_12:
      v42 = v79;
      result = sub_1C4420C3C(v20, &qword_1EC0C5478, &qword_1C4F613C0);
      v30 = v42 - 1;
      v31 += 3;
      v32 = v78 - 1;
      if (v78 == 1)
      {
        goto LABEL_24;
      }
    }

    sub_1C446268C();
    sub_1C446268C();
    v52 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458F668(0, *(v52 + 16) + 1, 1, v52);
      v52 = v57;
    }

    v29 = v60;
    v54 = *(v52 + 16);
    v53 = *(v52 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1C458F668(v53 > 1, v54 + 1, 1, v52);
      v52 = v58;
    }

    v27 = -v79;
    *(v52 + 16) = v54 + 1;
    v55 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v67 = v52;
    v56 = *(v63 + 72);
    result = sub_1C446268C();
    a1 = v75;
    v28 = v61;
  }

LABEL_24:
  *v65 = v67;
  return result;
}

uint64_t sub_1C4D19EA8()
{
  sub_1C43FBCD4();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  *(v1 + 242) = v7;
  *(v1 + 104) = v8;
  v9 = _s15NameAndRequestsVMa();
  *(v1 + 160) = v9;
  v10 = *(v9 - 8);
  sub_1C4404280();
  *(v1 + 168) = v11;
  v13 = *(v12 + 64);
  *(v1 + 176) = sub_1C43FE604();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  sub_1C43FEAF8();
  return sub_1C448885C(v14, v15, v16);
}

uint64_t sub_1C4D19F70()
{
  v1 = v0[15];
  sub_1C442E860(v0[19] + 32, (v0 + 2));
  v2 = v0[6];
  sub_1C4409678(v0 + 2, v0[5]);
  v3 = *(v1 + 16);
  v0[25] = v3;
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_44:
    v0[26] = v4;
    v52 = *(v2 + 16);
    sub_1C4404280();
    v71 = (v53 + *v53);
    v55 = *(v54 + 4);
    v56 = swift_task_alloc();
    v0[27] = v56;
    *v56 = v0;
    v56[1] = sub_1C4D1A514;
    v57 = v0[14];
    v58 = sub_1C440F4D4(v0[13]);

    return v71(v58);
  }

  v59 = v2;
  v5 = (v0 + 7);
  v6 = v0[21];
  v64 = v0[20];
  v65 = v0[24];
  v7 = v0[15];
  v72 = MEMORY[0x1E69E7CC0];
  sub_1C4F02348();
  v8 = 0;
  v9 = *(v6 + 80);
  sub_1C441B18C();
  v62 = v0;
  v63 = *(v6 + 72);
  v61 = v3;
  while (1)
  {
    v10 = v0[24];
    v70 = v8;
    sub_1C4459500();
    v69 = objc_autoreleasePoolPush();
    v11 = *v10;
    v12 = v10 + *(v64 + 20);
    v13 = *(v12 + 3);
    v68 = *(v65 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = v13;
    MEMORY[0x1C6940330]();
    v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
    {
      sub_1C43FCFE8(v15);
      sub_1C4F016D8();
    }

    sub_1C4404BCC();
    sub_1C4F01748();
    v16 = v4;
    v17 = *(v12 + 6);
    v18 = *(v17 + 16);
    if (v18)
    {
      sub_1C4F02348();
      v19 = (v17 + 32);
      do
      {
        v20 = *v19;
        v19 += 3;
        v21 = v20;
        sub_1C4F02318();
        v22 = *(v4 + 16);
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
        --v18;
      }

      while (v18);
      v23 = v4;
      v16 = v4;
    }

    else
    {
      v23 = v4;
    }

    v24 = v23 >> 62 ? sub_1C4F02128() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v16 >> 62;
    result = v16 >> 62 ? sub_1C4F02128() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = result + v24;
    if (__OFADD__(result, v24))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v25)
      {
LABEL_22:
        sub_1C4F02128();
      }

      else
      {
        v28 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v30 = *(v28 + 16);
      }

      result = sub_1C4F022B8();
      v28 = result & 0xFFFFFFFFFFFFFF8;
      v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_24;
    }

    if (v25)
    {
      goto LABEL_22;
    }

    v28 = v16 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v29 < v27)
    {
      goto LABEL_21;
    }

LABEL_24:
    v31 = *(v28 + 16);
    v32 = v29 - v31;
    v33 = v28 + 8 * v31;
    v67 = v28;
    if (v23 >> 62)
    {
      v35 = sub_1C4F02128();
      if (v35)
      {
        v36 = v35;
        result = sub_1C4F02128();
        if (v32 < result)
        {
          goto LABEL_50;
        }

        if (v36 < 1)
        {
          goto LABEL_52;
        }

        v60 = result;
        v66 = v24;
        v37 = v33 + 32;
        sub_1C4D1E10C();
        for (i = 0; i != v36; ++i)
        {
          sub_1C456902C(&unk_1EC0C5F88, &unk_1C4F6D880);
          v39 = sub_1C4CD79AC(v5, i, v23);
          v41 = *v40;
          v39(v5, 0);
          *(v37 + 8 * i) = v41;
        }

        v0 = v62;
        v4 = MEMORY[0x1E69E7CC0];
        v34 = v60;
        goto LABEL_34;
      }
    }

    else
    {
      v34 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        if (v32 < v34)
        {
          goto LABEL_51;
        }

        v66 = v24;
        sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
        swift_arrayInitWithCopy();
        v0 = v62;
LABEL_34:

        v42 = v61;
        v43 = v70;
        if (v34 < v66)
        {
          goto LABEL_48;
        }

        if (v34 > 0)
        {
          v44 = *(v67 + 16);
          v45 = __OFADD__(v44, v34);
          v46 = v44 + v34;
          if (v45)
          {
            goto LABEL_49;
          }

          *(v67 + 16) = v46;
        }

        goto LABEL_40;
      }
    }

    v47 = v24 <= 0;
    v42 = v61;
    v0 = v62;
    v43 = v70;
    if (!v47)
    {
      goto LABEL_48;
    }

LABEL_40:
    v8 = v43 + 1;
    v48 = v0[24];
    v49 = objc_allocWithZone(MEMORY[0x1E69A9F08]);
    sub_1C4D1DCEC();
    objc_autoreleasePoolPop(v69);
    sub_1C4422C1C();
    sub_1C44544DC(v48, v50);
    sub_1C4F02318();
    v51 = *(v72 + 16);
    sub_1C4F02358();
    sub_1C4404C28();
    sub_1C4F02368();
    sub_1C4F02328();
    if (v8 == v42)
    {
      v4 = v72;
      v2 = v59;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1C4D1A514()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 216);
  *v4 = *v1;
  v3[28] = v7;
  v3[29] = v0;

  if (!v0)
  {
    v8 = v3[26];
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D1A61C()
{
  isUniquelyReferenced_nonNull_native = v0;
  sub_1C440962C((v0 + 16));
  if (qword_1EDDFD018 != -1)
  {
LABEL_31:
    sub_1C441A86C();
    swift_once();
  }

  v2 = *(isUniquelyReferenced_nonNull_native + 224);
  v3 = *(isUniquelyReferenced_nonNull_native + 112);
  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  v6 = sub_1C44020E0();
  v7 = *(isUniquelyReferenced_nonNull_native + 224);
  if (v6)
  {
    v9 = *(isUniquelyReferenced_nonNull_native + 104);
    v8 = *(isUniquelyReferenced_nonNull_native + 112);
    sub_1C441024C();
    v10 = swift_slowAlloc();
    sub_1C43FEC60();
    v84 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_1C43FE990();
    *(v10 + 4) = sub_1C441D828(v11, v12, v13);
    *(v10 + 12) = 2048;
    *(v10 + 14) = sub_1C4428DA0(v7);

    sub_1C4402B48();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    sub_1C440962C(v84);
    v19 = sub_1C4416E14();
    MEMORY[0x1C6942830](v19);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v20 = *(isUniquelyReferenced_nonNull_native + 224);
  }

  v21 = *(isUniquelyReferenced_nonNull_native + 200);
  *(isUniquelyReferenced_nonNull_native + 88) = MEMORY[0x1E69E7CC0];
  *(isUniquelyReferenced_nonNull_native + 240) = 0;
  v83 = isUniquelyReferenced_nonNull_native;
  if (!v21)
  {
    v25 = MEMORY[0x1E69E7CC8];
LABEL_19:
    v50 = isUniquelyReferenced_nonNull_native + 96;
    v79 = isUniquelyReferenced_nonNull_native + 240;
    v80 = isUniquelyReferenced_nonNull_native + 88;
    v78 = isUniquelyReferenced_nonNull_native + 241;
    v51 = *(isUniquelyReferenced_nonNull_native + 224);
    v82 = *(isUniquelyReferenced_nonNull_native + 232);
    v52 = *(v83 + 152);
    v53 = *(v83 + 144);
    v77 = *(v83 + 128);
    v54 = *(v83 + 242);
    v55 = *(v83 + 112);
    v56 = *(v83 + 104);
    *(v83 + 96) = v25;
    v57 = *(v52 + 16);
    v58 = swift_task_alloc();
    *(v58 + 16) = v51;
    *(v58 + 24) = v50;
    *(v58 + 32) = v56;
    *(v58 + 40) = v55;
    *(v58 + 48) = v52;
    *(v58 + 56) = v54;
    *(v58 + 64) = v80;
    *(v58 + 72) = v79;
    *(v58 + 80) = v78;
    *(v58 + 88) = v77;
    *(v58 + 104) = v53;
    sub_1C4422934();
    v59 = *(v83 + 224);
    if (v82)
    {

      v60 = *(v83 + 96);

      v61 = *(v83 + 88);

      v63 = *(v83 + 184);
      v62 = *(v83 + 192);
      v64 = *(v83 + 176);

      sub_1C445C048();
      sub_1C4416034();

      __asm { BRAA            X2, X16 }
    }

    v68 = *(v83 + 184);
    v67 = *(v83 + 192);
    v69 = *(v83 + 176);

    v70 = *(v83 + 240);
    v72 = *(v83 + 88);
    v71 = *(v83 + 96);

    sub_1C4D1ECD4();
    sub_1C4416034();

    __asm { BRAA            X3, X16 }
  }

  v22 = 0;
  v81 = *(isUniquelyReferenced_nonNull_native + 184);
  v23 = *(isUniquelyReferenced_nonNull_native + 168);
  v24 = *(isUniquelyReferenced_nonNull_native + 120) + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v25 = MEMORY[0x1E69E7CC8];
  v26 = *(v23 + 72);
  while (1)
  {
    v28 = *(isUniquelyReferenced_nonNull_native + 176);
    v27 = *(isUniquelyReferenced_nonNull_native + 184);
    sub_1C4459500();
    v29 = *v27;
    v30 = *(v81 + 8);
    sub_1C4459500();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_1C43FE990();
    v33 = sub_1C445FAA8(v31, v32);
    if (__OFADD__(v25[2], (v34 & 1) == 0))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v35 = v33;
    v36 = v34;
    sub_1C456902C(&qword_1EC0B8D88, &qword_1C4F0E328);
    if ((sub_1C4F02458() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = v83;
      goto LABEL_12;
    }

    v37 = sub_1C43FE990();
    v39 = sub_1C445FAA8(v37, v38);
    isUniquelyReferenced_nonNull_native = v83;
    if ((v36 & 1) != (v40 & 1))
    {
      break;
    }

    v35 = v39;
LABEL_12:
    if (v36)
    {
      sub_1C4D1E0A8(*(isUniquelyReferenced_nonNull_native + 176), v25[7] + v35 * v26);
    }

    else
    {
      v25[(v35 >> 6) + 8] |= 1 << v35;
      v41 = (v25[6] + 16 * v35);
      *v41 = v29;
      v41[1] = v30;
      v42 = v25[7];
      sub_1C446268C();
      v43 = v25[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_30;
      }

      v25[2] = v45;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    ++v22;
    v46 = *(isUniquelyReferenced_nonNull_native + 200);
    v47 = *(isUniquelyReferenced_nonNull_native + 184);
    sub_1C4422C1C();
    sub_1C44544DC(v48, v49);
    v24 += v26;
    if (v22 == v46)
    {
      goto LABEL_19;
    }
  }

  sub_1C4416034();

  return sub_1C4F029F8();
}

uint64_t sub_1C4D1AB0C()
{
  sub_1C43FCF70();
  v1 = v0[26];

  sub_1C440962C(v0 + 2);
  v2 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];

  sub_1C445C048();

  return v6();
}

void sub_1C4D1AB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint64_t *a9, _BYTE *a10, _BYTE *a11, char *a12)
{
  v13 = v12;
  v131 = a8;
  v133 = a7;
  v129 = a5;
  v147 = a4;
  v121 = a11;
  *&v143 = _s17ViewUpdateResultsVMa(0);
  v18 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = (&v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1C456902C(&qword_1EC0C5478, &qword_1C4F613C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v128 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v119 - v24;
  updated = _s17ViewUpdateRequestVMa(0);
  v25 = *(*(updated - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](updated);
  v134 = (&v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v127 = &v119 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v126 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v146 = (&v119 - v32);
  v33 = _s15NameAndRequestsVMa();
  v130 = *(v33 - 8);
  v34 = *(v130 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v125 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v122 = &v119 - v37;
  v38 = sub_1C4428DA0(a3);
  v40 = &unk_1C4F0C000;
  v138 = a2;
  v145 = a1;
  v132 = a6;
  v137 = v33;
  v141 = v38;
  if (v38)
  {
    v41 = 0;
    v140 = a3 & 0xC000000000000001;
    v124 = a3 & 0xFFFFFFFFFFFFFF8;
    v120 = a10;
    v119 = a9;
    *&v39 = 136315394;
    v123 = v39;
    v139 = a3;
    while (1)
    {
      if (v140)
      {
        v42 = MEMORY[0x1C6940F90](v41, a3);
      }

      else
      {
        if (v41 >= *(v124 + 16))
        {
          goto LABEL_77;
        }

        v42 = *(a3 + 8 * v41 + 32);
      }

      if (__OFADD__(v41, 1))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }

      v148 = v41 + 1;
      v150 = v42;
      v43 = [v42 name];
      v44 = sub_1C4F01138();
      v46 = v45;

      v47 = *v147;
      v48 = *(*v147 + 16);
      v149 = v44;
      if (v48)
      {
        v49 = sub_1C445FAA8(v44, v46);
        v50 = v142;
        if (v51)
        {
          v52 = *(v47 + 56) + *(v130 + 72) * v49;
          sub_1C4459500();
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }
      }

      else
      {
        v53 = 1;
        v50 = v142;
      }

      sub_1C440BAA8(v50, v53, 1, v33);
      if (sub_1C44157D4(v50, 1, v33))
      {
        sub_1C4420C3C(v50, &qword_1EC0C5478, &qword_1C4F613C0);
        if (qword_1EDDFD018 != -1)
        {
          swift_once();
        }

        v54 = sub_1C4F00978();
        sub_1C442B738(v54, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v55 = sub_1C4F00968();
        v56 = sub_1C4F01CD8();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v152 = v58;
          *v57 = v123;
          *(v57 + 4) = sub_1C441D828(v129, a6, &v152);
          *(v57 + 12) = 2080;
          v59 = sub_1C441D828(v149, v46, &v152);

          *(v57 + 14) = v59;
          _os_log_impl(&dword_1C43F8000, v55, v56, "ViewUpdate: %s: Have source responses for %s but unable to find corresponding source requests", v57, 0x16u);
          swift_arrayDestroy();
          v60 = v58;
          v33 = v137;
          MEMORY[0x1C6942830](v60, -1, -1);
          v61 = v57;
          a1 = v145;
          MEMORY[0x1C6942830](v61, -1, -1);
        }

        else
        {
        }

        a3 = v139;
        v40 = &unk_1C4F0C000;
        goto LABEL_40;
      }

      v62 = v125;
      sub_1C4459500();
      sub_1C4420C3C(v50, &qword_1EC0C5478, &qword_1C4F613C0);
      v63 = v13;
      v64 = v62 + *(v33 + 20);
      sub_1C4459500();
      sub_1C44544DC(v62, _s15NameAndRequestsVMa);
      v65 = v146;
      sub_1C446268C();
      sub_1C440BAA8(v128, 1, 1, v33);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C815F0();
      v66 = v65[1];
      v136 = *v65;
      v67 = v65[2];
      v68 = v127;
      sub_1C4459500();
      v69 = [v150 responses];
      sub_1C4461BB8(0, &qword_1EDDFA450, 0x1E69A9F20);
      v70 = sub_1C4F01678();

      v71 = v144;
      sub_1C4455A6C(v68, v70, v144);
      if (v63)
      {

        goto LABEL_74;
      }

      v72 = *(v71 + *(v143 + 32));
      if (v72 == 1 && *(v146 + *(updated + 32)) == 1)
      {
        v73 = v67;
        v74 = v133;
        sub_1C4456AA4(v145, v138, v136, v66, v73, *(v71 + *(v143 + 40)), 0, 1);
        a1 = v145;
        a6 = v132;
        v75 = v149;
      }

      else
      {
        v76 = *(v71 + *(v143 + 32));
        v77 = *(v71 + *(v143 + 40));
        v78 = v71;
        a1 = v145;
        v79 = v138;
        v80 = v67;
        v74 = v133;
        sub_1C4456AA4(v145, v138, v136, v66, v80, v77, 0, 0);
        sub_1C44516D8(a1, v79, v131, v78, 1);
        if (*(v146 + *(updated + 32)) == 1)
        {
          sub_1C4BB71C8();
        }

        a6 = v132;
        v75 = v149;
        LOBYTE(v72) = v76;
      }

      if (*(v144 + *(v143 + 28)) != 1)
      {
        break;
      }

      v13 = 0;
      if (*(v146 + *(updated + 48)) == 1)
      {
        v81 = *(v74 + 112);
        if (v81)
        {
          v82 = objc_allocWithZone(MEMORY[0x1E698EC58]);
          v83 = sub_1C4D1DD80(v75, v46);
          [v81 sendEvent_];
        }

        else
        {
        }

        a1 = v145;
        if ((v72 & 1) == 0)
        {
LABEL_37:
          v85 = v119;
          sub_1C4588C68();
          v86 = *(*v85 + 16);
          sub_1C4589894();

          v87 = *v85;
          *(v87 + 16) = v86 + 1;
          *(v87 + 8 * v86 + 32) = v136;
          a3 = v139;
          v40 = &unk_1C4F0C000;
LABEL_38:
          v84 = v121;
          goto LABEL_39;
        }
      }

      else
      {

        if ((v72 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v84 = v120;
      a3 = v139;
      v40 = &unk_1C4F0C000;
LABEL_39:
      sub_1C44544DC(v144, _s17ViewUpdateResultsVMa);
      *v84 = 1;
      sub_1C44544DC(v146, _s17ViewUpdateRequestVMa);
      v33 = v137;
LABEL_40:
      ++v41;
      if (v148 == v141)
      {
        goto LABEL_41;
      }
    }

    v13 = 0;

    v84 = v120;
    a3 = v139;
    v40 = &unk_1C4F0C000;
    if (v72)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_41:
  v142 = a12;
  v88 = *v147 + 64;
  v89 = 1 << *(*v147 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(*v147 + 64);
  v92 = (v89 + 63) >> 6;
  v149 = *v147;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v93 = 0;
  *&v94 = v40[457];
  v143 = v94;
  v146 = v92;
  v147 = v88;
  if (v91)
  {
    while (1)
    {
LABEL_48:
      v150 = v13;
      v96 = *(v149 + 56) + *(v130 + 72) * (__clz(__rbit64(v91)) | (v93 << 6));
      v97 = v122;
      sub_1C4459500();
      v98 = v97 + *(v33 + 20);
      v99 = v134;
      sub_1C4459500();
      sub_1C44544DC(v97, _s15NameAndRequestsVMa);
      v101 = *v99;
      v100 = v99[1];
      v102 = v99[2];
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v103 = sub_1C4F00978();
      sub_1C442B738(v103, qword_1EDE2DDF8);
      v104 = v132;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v105 = sub_1C4F00968();
      v106 = sub_1C4F01CF8();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v148 = v101;
        v108 = v107;
        v144 = swift_slowAlloc();
        v154 = v144;
        *v108 = v143;
        *(v108 + 4) = sub_1C441D828(v129, v104, &v154);
        *(v108 + 12) = 2080;
        v151 = v148;
        v152 = sub_1C4F02858();
        v153 = v109;
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v100, v102);
        v110 = sub_1C441D828(v152, v153, &v154);

        *(v108 + 14) = v110;
        v111 = v138;
        _os_log_impl(&dword_1C43F8000, v105, v106, "ViewUpdate: %s: did not process view %s", v108, 0x16u);
        v112 = v144;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v112, -1, -1);
        v113 = v108;
        v101 = v148;
        MEMORY[0x1C6942830](v113, -1, -1);
      }

      else
      {

        v111 = v138;
      }

      a1 = v145;
      v114 = v150;
      sub_1C4CDFF1C(v145, v111, v101, v100, v102, v134[6], 1, *(v134 + *(updated + 32)));
      if (v114)
      {
        break;
      }

      if (v131 == 11)
      {
        v13 = 0;
        v33 = v137;
        v88 = v147;
      }

      else
      {
        sub_1C442AE14();
        v33 = v137;
        v88 = v147;
        sub_1C4BBAC48();
        v13 = 0;
      }

      v91 &= v91 - 1;
      sub_1C44544DC(v134, _s17ViewUpdateRequestVMa);
      v92 = v146;
      if (!v91)
      {
        goto LABEL_44;
      }
    }

    v146 = v134;
LABEL_74:
    sub_1C44544DC(v146, _s17ViewUpdateRequestVMa);
  }

  else
  {
    while (1)
    {
LABEL_44:
      v95 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v95 >= v92)
      {
        break;
      }

      v91 = *(v88 + 8 * v95);
      ++v93;
      if (v91)
      {
        v93 = v95;
        goto LABEL_48;
      }
    }

    if (*v121 == 1 && v131 != 11)
    {
      if (sub_1C4424B10(v131) == 1702259052 && v116 == 0xE400000000000000)
      {

        return;
      }

      v118 = sub_1C4F02938();

      if (v118)
      {
        return;
      }

      if (!__OFADD__(v142, 1))
      {
        sub_1C4BB4E1C(v131, (v142 + 1), a1);
        return;
      }

      goto LABEL_78;
    }
  }
}

void sub_1C4D1BAD0(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = sub_1C4EFB768();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v27 = a4;
    swift_unownedRetainStrong();
    v21 = sub_1C4440C6C(a1);

    if (!v7)
    {
      v22 = *(v21 + 144);

      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E6530];
      *(v23 + 16) = xmmword_1C4F13950;
      v25 = MEMORY[0x1E69A0180];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = 0;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 72) = 0;
      *(v23 + 112) = 0u;
      *(v23 + 128) = 0u;
      *(v23 + 144) = 0u;
      *(v23 + 160) = 0u;
      *(v23 + 176) = 0u;
      *(v23 + 216) = v24;
      *(v23 + 224) = v25;
      *(v23 + 192) = v27;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*(v17 + 8))(v20, v16);
      sub_1C440BAA8(v15, 1, 1, v16);
      sub_1C4EFC0A8();

      sub_1C4420C3C(v15, &unk_1EC0C06C0, &unk_1C4F10DB0);
      sub_1C4BB7370();
      sub_1C4BB71C8();
      sub_1C4CE8700();
      sub_1C4D11B14(a1, a2);
    }
  }

  else
  {
    sub_1C4BBAFAC();
    if (!v7)
    {
      sub_1C4BB7370();
      sub_1C4BB71C8();
    }
  }
}

void sub_1C4D1BDD8(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = sub_1C4EFB768();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v27 = a4;
    swift_unownedRetainStrong();
    v21 = sub_1C4440C6C(a1);

    if (!v7)
    {
      v22 = *(v21 + 144);

      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E6530];
      *(v23 + 16) = xmmword_1C4F13950;
      v25 = MEMORY[0x1E69A0180];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = 0;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 72) = 0;
      *(v23 + 112) = 0u;
      *(v23 + 128) = 0u;
      *(v23 + 144) = 0u;
      *(v23 + 160) = 0u;
      *(v23 + 176) = 0u;
      *(v23 + 216) = v24;
      *(v23 + 224) = v25;
      *(v23 + 192) = v27;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*(v17 + 8))(v20, v16);
      sub_1C440BAA8(v15, 1, 1, v16);
      sub_1C4EFC0A8();

      sub_1C4420C3C(v15, &unk_1EC0C06C0, &unk_1C4F10DB0);
      sub_1C4BBADF4();
      sub_1C4BB7370();
      sub_1C4BB71C8();
      sub_1C4CE8700();
      sub_1C4D11B14(a1, a2);
    }
  }

  else
  {
    sub_1C4BBAFAC();
    if (!v7)
    {
      sub_1C4BBADF4();
      sub_1C4BB7370();
      sub_1C4BB71C8();
    }
  }
}

void sub_1C4D1C120(uint64_t a1, __int16 a2, uint64_t a3, const char *a4)
{
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DDF8);
  sub_1C43FCFC0();
  swift_bridgeObjectRetain_n();
  sub_1C4428D8C(a1, a2);
  v11 = sub_1C4F00968();
  sub_1C4F01CF8();
  v12 = sub_1C4475E34();
  sub_1C4463890(v12, a2);
  if (sub_1C443E1FC())
  {
    sub_1C441024C();
    v13 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C442AD20();
    v14 = sub_1C44995E0(4.8752e-34);
    v15 = sub_1C442A10C(v14, a2);
    v17 = sub_1C441D828(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = *(a3 + 16);

    *(v13 + 14) = v18;

    _os_log_impl(&dword_1C43F8000, v11, v4, a4, v13, 0x16u);
    sub_1C440962C(v5);
    v19 = sub_1C4416E14();
    MEMORY[0x1C6942830](v19);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

id sub_1C4D1C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v56 = a8;
  v57 = a5;
  v58 = a6;
  v54 = a4;
  v53 = a3;
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v51 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = sub_1C4EFB768();
  v24 = sub_1C43FCDF8(v23);
  v52 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  swift_unownedRetainStrong();
  v31 = sub_1C4440C6C(a1);
  v49 = v16;
  v50 = v9;
  v32 = MEMORY[0x1E69E6158];

  v33 = *(v31 + 144);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C4F13950;
  v35 = v58;
  v36 = MEMORY[0x1E69E6530];
  v37 = MEMORY[0x1E69A0180];
  *(v34 + 56) = MEMORY[0x1E69E6530];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  v38 = MEMORY[0x1E69A0138];
  *(v34 + 72) = 0;
  *(v34 + 136) = v32;
  *(v34 + 144) = v38;
  *(v34 + 112) = v55;
  *(v34 + 120) = v56;
  *(v34 + 152) = 0u;
  *(v34 + 168) = 0u;
  *(v34 + 216) = v36;
  *(v34 + 224) = v37;
  v39 = v53;
  *(v34 + 184) = 0;
  *(v34 + 192) = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  sub_1C43FFB20(&v60);
  v40(v30, v23);
  sub_1C43FCF64();
  sub_1C440BAA8(v41, v42, v43, v23);
  sub_1C4EFC0A8();

  sub_1C4420C3C(v22, &unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C4CE9968();
  sub_1C4CE7D58();
  if (v46 != 2)
  {
    v47 = v49;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    sub_1C43FFB20(&v59);
    v48(v47, v50);
    sub_1C4401EF4();
    sub_1C441DA58();
  }

  result = [objc_opt_self() isInternalDevice];
  if (result)
  {
    sub_1C4F00288();
    sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
    inited = swift_initStackObject();
    sub_1C449AF48(inited, xmmword_1C4F0C890);
    inited[3].n128_u64[0] = sub_1C4F01108();
    inited[3].n128_u64[1] = 0x6E6F73616572;
    inited[4].n128_u64[0] = 0xE600000000000000;
    inited[4].n128_u64[1] = sub_1C4F01B58();
    inited[5].n128_u64[0] = 0x726F727265;
    inited[5].n128_u64[1] = 0xE500000000000000;
    sub_1C43FE990();
    inited[6].n128_u64[0] = sub_1C4F01108();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C440F1BC();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4D1C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a4;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CE8();

  if (os_log_type_enabled(v15, v16))
  {
    sub_1C441024C();
    v42 = a8;
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = sub_1C444AB08();
    v19 = a6;
    v41 = a3;
    v21 = sub_1C441D828(v18, v20, &v45);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_1C4CC2358(a6);
    v24 = sub_1C441D828(v22, v23, &v45);
    a3 = v41;

    *(v17 + 14) = v24;
    a6 = v19;
    _os_log_impl(&dword_1C43F8000, v15, v16, "ViewUpdate: %{public}s: disabling for: %s", v17, 0x16u);
    swift_arrayDestroy();
    v25 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v25);
    a8 = v42;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v26 = sub_1C43FD024();
  sub_1C4D1C298(v26, v27, a3, v47, a5, a6, a7, a8);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v45 = 0xD000000000000015;
  v46 = v28;
  v29 = sub_1C444AB08();
  MEMORY[0x1C6940010](v29);

  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FC67E0);
  MEMORY[0x1C6940010](a7, a8);
  v31 = v45;
  v30 = v46;
  v32 = sub_1C4BAD398(a3, a1, a2);
  if (!v44)
  {
    v33 = *(v32 + 16);
    if (v33)
    {
      v47 = v32;
      v34 = (v32 + 48);
      do
      {
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        v34 += 3;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v38 = sub_1C43FD024();
        sub_1C4D1C298(v38, v39, v35, v36, v37, 1, v31, v30);

        --v33;
      }

      while (v33);
    }
  }
}

uint64_t sub_1C4D1CC0C()
{
  v1 = *(*(*(v0 + 16) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);

  v2 = sub_1C440CABC();
  sub_1C446C37C(v2, v3);
}

void sub_1C4D1CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v23;
  a20 = v24;
  sub_1C43FFB44();
  v25 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1C4EFE0F8();
  (*(v27 + 32))(v21 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess, v32, v25);
  *(v21 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewDb) = v20;
  v33 = *(v22 + 16);

  v34 = 0;
  for (i = (v22 + 48); ; i += 3)
  {
    if (v33 == v34)
    {

      sub_1C43FE9F0();
      return;
    }

    if (v34 >= *(v22 + 16))
    {
      break;
    }

    ++v34;
    v37 = *(i - 1);
    v36 = *i;
    v38 = *(i - 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE5F8();
    sub_1C4D1CE48();
  }

  __break(1u);
}

uint64_t sub_1C4D1CE48()
{
  sub_1C4403138();
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C4EFE118();
  return swift_endAccess();
}

uint64_t sub_1C4D1CEB4()
{
  sub_1C4403138();
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C4EFE108();
  v1 = swift_endAccess();
  v2 = v11;
  if (v13)
  {
    v3 = *(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewDb);
    MEMORY[0x1EEE9AC00](v1);
    v10[8] = v11;
    v10[9] = v12;
    v10[10] = v13;
    v5 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
    MEMORY[0x1EEE9AC00](v6);
    v10[2] = sub_1C4D1DF00;
    v10[3] = v7;
    v10[4] = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C37C(sub_1C4D1ECA8, v10);
  }

  return v2;
}

uint64_t sub_1C4D1CFF0()
{
  v0 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FFF80();
  sub_1C440F1BC();
  swift_beginAccess();
  v6 = sub_1C44AE0F4();
  v7(v6);
  v8 = sub_1C4EFE128();
  v9 = *(v2 + 8);
  v10 = sub_1C4404C28();
  v11(v10);
  return v8;
}

BOOL sub_1C4D1D0DC()
{
  v0 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FFF80();
  sub_1C440F1BC();
  swift_beginAccess();
  v6 = sub_1C44AE0F4();
  v7(v6);
  v8 = sub_1C4EFE128();
  v9 = *(v2 + 8);
  v10 = sub_1C4404C28();
  v11(v10);
  return v8 == 0;
}

uint64_t sub_1C4D1D1CC()
{
  v2 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FFF80();
  v8 = OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess;
  sub_1C440F1BC();
  swift_beginAccess();
  (*(v4 + 16))(v1, v0 + v8, v2);
  v9 = sub_1C4EFE0E8();
  v10 = *(v4 + 8);
  v11 = sub_1C4404C28();
  v12(v11);
  return v9;
}

uint64_t sub_1C4D1D2D0()
{
  v1 = OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess;
  v2 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewDb);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4D1D3A8()
{
  sub_1C4D1EC04(319, &qword_1EDDEFF98, &type metadata for ViewUpdate.ViewRef, MEMORY[0x1E69A9618]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C4D1D528(uint64_t a1)
{
  v2 = sub_1C4428DA0();
  v10 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = v2;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v12 = 0;
    v10 = v45;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C6940F90](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v13 state];
      v16 = sub_1C4F01138();
      v18 = v17;

      v44 = v10;
      v19 = *(v10 + 16);
      if (v19 >= *(v10 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      ++v12;
      *(v10 + 16) = v19 + 1;
      v20 = v10 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
    }

    while (v11 != v12);
  }

  sub_1C4499940(v10, v3, v4, v5, v6, v7, v8, v9, v40, v41, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v22 = v21;
  v23 = 0;
  v24 = v21 + 56;
  v25 = 0xED00006465726975;
  v26 = 0x7165527261656C63;
  v27 = &unk_1F43D9BD8;
  do
  {
    v28 = v27;
    v29 = v27[v23 + 32];
    v43 = v29;
    ++v23;
    v30 = v25;
    v31 = v26;
    switch(v29)
    {
      case 1:
        v26 = 0xD000000000000013;
        v25 = 0x80000001C4F87C40;
        break;
      case 2:
        break;
      case 3:
        v25 = 0xEA00000000007365;
        v26 = 0x676E616843736168;
        break;
      case 4:
        v25 = 0xE900000000000073;
        v26 = 0x65676E6168436F6ELL;
        break;
      default:
        v26 = 0xD000000000000010;
        v25 = 0x80000001C4F87C20;
        break;
    }

    if (*(v22 + 16))
    {
      v32 = *(v22 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      v33 = sub_1C4F02B68();
      v34 = ~(-1 << *(v22 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(v24 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v36 = (*(v22 + 48) + 16 * v35);
        if (*v36 != v26 || v36[1] != v25)
        {
          v38 = sub_1C4F02938();
          v33 = v35 + 1;
          if ((v38 & 1) == 0)
          {
            continue;
          }
        }

        v39 = qword_1C4F6D968[v43];
        return;
      }
    }

    v25 = v30;
    v26 = v31;
    v27 = v28;
  }

  while (v23 != 4);
}

uint64_t sub_1C4D1D820(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1C4F02128())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  sub_1C4431590(0, (a1 & 0xC000000000000001) == 0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6940F90](0, a1);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  v4 = [v2 configIdentifier];
  v5 = [v4 sourceIdentifier];

  v6 = sub_1C4F01138();
  v8 = v7;

  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v10 = [v3 configIdentifier];
  v11 = v10;
  v12 = &selRef_sourceType;
  if (v9)
  {
    v12 = &selRef_sourceIdentifier;
  }

  v13 = [v10 *v12];

  v14 = sub_1C4F01138();
  if (sub_1C4428DA0() < 2)
  {
  }

  else
  {
    MEMORY[0x1C6940010](35, 0xE100000000000000);
    v15 = sub_1C4F02858();
    MEMORY[0x1C6940010](v15);
  }

  return v14;
}

void sub_1C4D1D9F8()
{
  sub_1C4D1DB4C(319, &qword_1EDDFCCD0, MEMORY[0x1E69A9310]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C4D1DB4C(319, &qword_1EDDFF9E0, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Configuration();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C4D1DB4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4D1DBB0(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

unint64_t sub_1C4D1DBE4()
{
  result = qword_1EDDF9D88;
  if (!qword_1EDDF9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D88);
  }

  return result;
}

uint64_t sub_1C4D1DC38(uint64_t a1)
{
  result = sub_1C443D71C(&qword_1EDDECEC8, 255, type metadata accessor for ViewUpdate.ViewUpdateJob.NamedViewQueue);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D1DC94(uint64_t a1, uint64_t a2)
{
  result = sub_1C443D71C(qword_1EDDECE00, a2, type metadata accessor for ViewUpdate.ViewUpdateJob.ScheduledViewQueue);
  *(a1 + 8) = result;
  return result;
}

id sub_1C4D1DCEC()
{
  v1 = sub_1C4F01108();

  sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
  v2 = sub_1C4F01658();

  v3 = [v0 initWithName:v1 requests:v2];

  return v3;
}

id sub_1C4D1DD80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C4F01108();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithViewName_];

  return v4;
}

uint64_t sub_1C4D1DDE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4958C38(v7, v8, a1, v4);
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
    return sub_1C4958BB4(0, v2, 1, a1);
  }

  return result;
}

void sub_1C4D1DED8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 24);
  sub_1C442AE14();
}

void sub_1C4D1DF50(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C4D19798(a1);
}

void sub_1C4D1E008(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 32);
  sub_1C4D158BC(*(v1 + 40), a1);
}

uint64_t sub_1C4D1E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return sub_1C4D197DC(a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 56), a3, *(v3 + 64));
}

void sub_1C4D1E068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  sub_1C4D1AB94(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
}

uint64_t sub_1C4D1E0A8(uint64_t a1, uint64_t a2)
{
  v4 = _s15NameAndRequestsVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4D1E10C()
{
  result = qword_1EDDF0600;
  if (!qword_1EDDF0600)
  {
    sub_1C4572308(&unk_1EC0C5F88, &unk_1C4F6D880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0600);
  }

  return result;
}

uint64_t sub_1C4D1E170(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_getErrorValue();
  sub_1C4D118BC();
  v13 = *(a7 + 16);
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v14 = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  if (v15)
  {
    v59 = sub_1C4D1E9A8;
    v60 = v62;
    v61 = v13;
    sub_1C446C37C(sub_1C4D1ECA8, v58);
    return 1;
  }

  v59 = sub_1C4D1E970;
  v60 = v62;
  v61 = v13;
  v17 = sub_1C443DD50(sub_1C4959A38, v58);
  if (qword_1EDDECB20 != -1)
  {
    swift_once();
  }

  if (v17 >= qword_1EDE2D2B0)
  {
    v56 = v17;
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = a2;
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CE8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v35;
      *v33 = 136446722;
      v36 = sub_1C444AB08();
      v38 = sub_1C441D828(v36, v37, &v67);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v56;
      *(v33 + 22) = 2112;
      v39 = a2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v40;
      *v34 = v40;
      _os_log_impl(&dword_1C43F8000, v31, v32, "ViewUpdate: %{public}s: Update failed after %ld maximum attempts reached: %@", v33, 0x20u);
      sub_1C4420C3C(v34, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v34, -1, -1);
      sub_1C440962C(v35);
      MEMORY[0x1C6942830](v35, -1, -1);
      MEMORY[0x1C6942830](v33, -1, -1);
    }

    swift_getErrorValue();
    sub_1C4F02A38();
    sub_1C4D1971C();
    goto LABEL_20;
  }

  if ((a6 & 1) == 0)
  {
    swift_getErrorValue();
    sub_1C4F02A38();
    sub_1C4D1971C();
LABEL_20:

    return 0;
  }

  v70 = a2;
  v18 = a2;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    if (v69 == 2)
    {
      v55 = v17;
      sub_1C4D1E990(v67, v68, v69);
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v19 = sub_1C4F00978();
      sub_1C442B738(v19, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = a2;
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CE8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v66 = v54;
        *v23 = 136446722;
        v24 = sub_1C444AB08();
        v26 = sub_1C441D828(v24, v25, &v66);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2048;
        *(v23 + 14) = v55;
        *(v23 + 22) = 2112;
        v27 = a2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 24) = v28;
        *v53 = v28;
        _os_log_impl(&dword_1C43F8000, v21, v22, "ViewUpdate: %{public}s: unrecoverable error after %ld attempts: %@", v23, 0x20u);
        sub_1C4420C3C(v53, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v53, -1, -1);
        sub_1C440962C(v54);
        MEMORY[0x1C6942830](v54, -1, -1);
        MEMORY[0x1C6942830](v23, -1, -1);
      }

      swift_getErrorValue();
      sub_1C4F02A38();
      sub_1C4D1971C();

      return 0;
    }

    sub_1C4D1E990(v67, v68, v69);
  }

  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v41 = sub_1C4F00978();
  sub_1C442B738(v41, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = a2;
  v43 = sub_1C4F00968();
  v44 = sub_1C4F01CE8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v57 = v17;
    v47 = swift_slowAlloc();
    v67 = v47;
    *v45 = 136446722;
    v48 = sub_1C444AB08();
    v50 = sub_1C441D828(v48, v49, &v67);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v57;
    *(v45 + 22) = 2112;
    v51 = a2;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 24) = v52;
    *v46 = v52;
    _os_log_impl(&dword_1C43F8000, v43, v44, "ViewUpdate: %{public}s: Clearing and re-attempting update after %ld attempts: %@", v45, 0x20u);
    sub_1C4420C3C(v46, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v46, -1, -1);
    sub_1C440962C(v47);
    MEMORY[0x1C6942830](v47, -1, -1);
    MEMORY[0x1C6942830](v45, -1, -1);
  }

  return 1;
}

void sub_1C4D1E970(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1C4D196E0(a1);
}

uint64_t sub_1C4D1E990(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

void sub_1C4D1EA30()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4D1EC04(319, &qword_1EDDDBCE8, &_s20SourceListenerResultVN, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4D1EAFC()
{
  sub_1C4D1EC04(319, &qword_1EDDDBD18, &_s13SourceRequestVN, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v1 <= 0x3F)
    {
      sub_1C4D1EC04(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4D1EC04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C4D1ECE0()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C4D1ED04()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
}

uint64_t sub_1C4D1ED24()
{
  v2 = *(*(v0 + 56) + 112) + 32;

  return sub_1C442E860(v2, v0 + 16);
}

uint64_t sub_1C4D1ED44()
{
}

uint64_t sub_1C4D1ED5C(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  if (qword_1EDDFF7A0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v4 = sub_1C44273D4();
  v5 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  MEMORY[0x1EEE9AC00](v4);
  LOWORD(v24[-2]) = 519;
  v6 = sub_1C49A5628(sub_1C4D204E4, &v24[-4]);

  v7 = *(v6 + 16);
  if (v7)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v8 = v25;
    v24[1] = v6;
    v9 = (v6 + 56);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v25 = v8;
      v13 = v8[2];
      v12 = v8[3];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v13 >= v12 >> 1)
      {
        sub_1C44CD9C0();
        v8 = v25;
      }

      v8[2] = v13 + 1;
      v14 = &v8[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v9 += 9;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  v17 = v8[2];
  v18 = v8 + 5;
  while (v17 != v16)
  {
    if (v16 >= v8[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = *(v24[2] + 16);
    MEMORY[0x1EEE9AC00](v15);
    v24[-4] = a1;
    v24[-3] = v22;
    v24[-2] = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    os_unfair_lock_lock((v21 + 24));
    sub_1C4D20504((v21 + 16));
    ++v16;
    os_unfair_lock_unlock((v21 + 24));

    v18 += 2;
  }
}

uint64_t sub_1C4D1F15C()
{
  type metadata accessor for ViewUpdateNotificationSourceMonitor();
  v0 = swift_allocObject();
  result = sub_1C4D1F198();
  qword_1EDE2C9A0 = v0;
  return result;
}

uint64_t sub_1C4D1F198()
{
  type metadata accessor for ViewUpdateNotificationSourceMonitor.GuardedData();
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C456902C(&unk_1EC0C6470, &qword_1C4F6DA08);
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C6480, qword_1C4F6DA10);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4D1F278()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1C4D1F2E0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 16);

  return v0;
}

uint64_t sub_1C4D1F2E0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 16) + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v23 = *(v1 + 16);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v22 = v4;
  if (v8)
  {
LABEL_5:
    v12 = v11;
LABEL_9:
    v13 = *(*(v23 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
    v8 &= v8 - 1;
    v14 = 1 << *(v13 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v16; result = )
    {
      v19 = i;
LABEL_18:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v13 + 56) + ((v19 << 9) | (8 * v20)));

      sub_1C4F00BB8();
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        result = swift_bridgeObjectRelease_n();
        v11 = v12;
        v4 = v22;
        if (!v8)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++i;
      if (v16)
      {
        i = v19;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D1F4C0()
{
  sub_1C4D1F278();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4D1F53C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1C4EF98F8();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v65 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C4F01D88();
  v72 = *(v74 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v69 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C4F01E38();
  v68 = *(v70 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v73 = *(v75 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v71 = v62 - v18;
  v19 = sub_1C4F00978();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  swift_beginAccess();
  v76 = v24;
  v77 = a2;
  v25 = *(v24 + 16);
  if (*(v25 + 16) && (sub_1C43FE83C(), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4F00BC8();
    v28 = sub_1C4F00F28();
  }

  v29 = a3;
  v30 = sub_1C466324C(a3, a4, v28);
  swift_endAccess();

  if (v30)
  {
  }

  v63 = v29;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CB8();

  v34 = os_log_type_enabled(v32, v33);
  v64 = a4;
  v62[1] = v4;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v78 = v36;
    *v35 = 136315138;
    v37 = v63;
    *(v35 + 4) = sub_1C441D828(v63, v64, &v78);
    _os_log_impl(&dword_1C43F8000, v32, v33, "ViewUpdateNotificationSourceMonitor: Starting notification observation for %s", v35, 0xCu);
    sub_1C440962C(v36);
    MEMORY[0x1C6942830](v36, -1, -1);
    v38 = v35;
    a4 = v64;
    MEMORY[0x1C6942830](v38, -1, -1);

    (*(v20 + 8))(v23, v19);
  }

  else
  {

    (*(v20 + 8))(v23, v19);
    v37 = v63;
  }

  v39 = [objc_opt_self() defaultCenter];
  v40 = sub_1C4F01108();
  sub_1C4F01E48();

  v41 = v69;
  sub_1C4F01D78();
  sub_1C4665684();
  v42 = sub_1C4F01DA8();
  v78 = v42;
  sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20]);
  sub_1C4695550(&unk_1EDDDB910, sub_1C4665684);
  v43 = v71;
  v44 = v37;
  v45 = v70;
  sub_1C4F00D08();

  (*(v72 + 8))(v41, v74);
  (*(v68 + 8))(v16, v45);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = a4;
  sub_1C46953BC();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = v75;
  sub_1C4F00D28();

  (*(v73 + 8))(v43, v47);
  v48 = v76;
  swift_beginAccess();
  v49 = *(v48 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v79 = *(v48 + 16);
  v50 = v79;
  *(v48 + 16) = 0x8000000000000000;
  sub_1C43FE83C();
  if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v53 = v51;
  v54 = v52;
  sub_1C456902C(&unk_1EC0C6460, &unk_1C4F6D9E0);
  v55 = sub_1C4F02458();
  v56 = v79;
  if (v55)
  {
    sub_1C43FE83C();
    if ((v54 & 1) == (v58 & 1))
    {
      v53 = v57;
      goto LABEL_14;
    }

LABEL_18:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v48 + 16) = v56;
  if ((v54 & 1) == 0)
  {
    sub_1C4D1FCD8(&v79);
    v59 = v65;
    (*(v66 + 16))(v65, v77, v67);
    sub_1C457E9E4(v53, v59, v79, v56);
  }

  v60 = *(v56 + 56);
  v61 = *(v60 + 8 * v53);
  swift_isUniquelyReferenced_nonNull_native();
  v79 = *(v60 + 8 * v53);
  sub_1C4663070();
  *(v60 + 8 * v53) = v79;
  return swift_endAccess();
}

uint64_t sub_1C4D1FCD8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C4F00BC8();
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D1FD24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_1C4F00978();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4FC6900);
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4F011C8();

  v14 = os_transaction_create();

  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v14;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1C441D828(a2, a3, v26);
    _os_log_impl(&dword_1C43F8000, v15, v16, "ViewUpdateNotificationSourceMonitor: Received %s notification", v18, 0xCu);
    sub_1C440962C(v19);
    MEMORY[0x1C6942830](v19, -1, -1);
    v20 = v18;
    v14 = v25;
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = sub_1C4F018C8();
  sub_1C440BAA8(v8, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4785250();
}

uint64_t sub_1C4D20008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1C4F00978();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C4D20100, 0, 0);
}

uint64_t sub_1C4D20100()
{
  v46 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  v2 = v0[5];
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  if (v5)
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1C441D828(v10, v9, v45);
    _os_log_impl(&dword_1C43F8000, v3, v4, "ViewUpdateNotificationSourceMonitor: signaling source update for %s", v11, 0xCu);
    sub_1C440962C(v12);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = v0[4];
  v15 = v0[5];
  v16 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  v17 = sub_1C4F01108();
  v18 = sub_1C4F01108();
  v0[2] = 0;
  LODWORD(v14) = [v16 sourceUpdatedWithSourceType:v17 sourceIdentifier:v18 error:v0 + 2];

  v19 = v0[2];
  if (v14)
  {
    v20 = v19;
  }

  else
  {
    v21 = v0[8];
    v22 = v0[5];
    v23 = v19;
    v24 = sub_1C4EF97A8();

    swift_willThrow();
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = v24;
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[7];
    v30 = v0[8];
    v31 = v0[6];
    if (v28)
    {
      v33 = v0[4];
      v32 = v0[5];
      v44 = v0[8];
      v34 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v34 = 136315394;
      *(v34 + 4) = sub_1C441D828(v33, v32, v45);
      *(v34 + 12) = 2080;
      v0[3] = v24;
      v35 = v24;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v36 = sub_1C4F01198();
      v38 = sub_1C441D828(v36, v37, v45);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_1C43F8000, v26, v27, "ViewUpdateNotificationSourceMonitor: failed to update views for %s. Error: %s", v34, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      v13(v44, v31);
    }

    else
    {

      v13(v30, v31);
    }
  }

  v40 = v0[8];
  v39 = v0[9];

  v41 = v0[1];
  v42 = *MEMORY[0x1E69E9840];

  return v41();
}

uint64_t sub_1C4D2052C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C44A7DA0;

  return sub_1C4D20008(a1, v4, v5, v6, v7);
}

unint64_t sub_1C4D205F4(uint64_t a1)
{
  result = sub_1C4D2061C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4D2061C()
{
  result = qword_1EC0C6490;
  if (!qword_1EC0C6490)
  {
    sub_1C4EFFE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6490);
  }

  return result;
}

uint64_t sub_1C4D20674()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 64);
    }

    if (sub_1C4F02128())
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  sub_1C4431590(0, (v1 & 0xC000000000000001) == 0);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6940F90](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = *(v2 + 184);

  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v4 = *(sub_1C4EFEEF8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F13950;
  sub_1C4EFEBB8();
  sub_1C4EFE308();
  sub_1C4EFECF8();
  sub_1C4EFE818();
  sub_1C4EFE3F8();
  v7 = sub_1C4872C50();

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1C43F8000, v9, v10, "EntityInteractionHistogramViewGenerator: Found %ld triples", v11, 0xCu);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_1C4D20910()
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);

  return sub_1C442B738(v0, qword_1EDDF0C10);
}

void sub_1C4D20970(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FCED0();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "ViewXPC: starting...", v11, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  sub_1C43FCEE8(v2, qword_1EDDF0C10);
  sub_1C44098F0(a1, v7);
  v12 = type metadata accessor for Configuration();
  sub_1C440BAA8(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1C45A6EE0(v7, v9);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  v13 = sub_1C49AA56C();
  v14 = qword_1EDE2D378;
  qword_1EDE2D378 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2D380 = [objc_allocWithZone(type metadata accessor for ViewXPC.Delegate()) init];
    v16 = qword_1EDE2D380;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_1C43FCED0();
      sub_1C43FBD24(v18);
      sub_1C4402B48();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C4D20C10()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDDF0C10);
  v1 = sub_1C43FBC98();
  v3 = sub_1C442B738(v1, v2);
  v4 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v3, 1, 1, v4);
}

uint64_t static ViewXPC.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDF0C10);
  swift_beginAccess();
  return sub_1C446C964(v5, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t static ViewXPC.configuration.setter(uint64_t a1)
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C498E14C(a1, v5);
  swift_endAccess();
  v6 = sub_1C43FBC98();
  return sub_1C4420C3C(v6, v7, &unk_1C4F0F2E0);
}

uint64_t (*static ViewXPC.configuration.modify())()
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70();
  }

  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FCEE8(v0, qword_1EDDF0C10);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4D20E58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4D20910();
  swift_beginAccess();
  return sub_1C446C964(v2, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t sub_1C4D20EB4(uint64_t a1)
{
  v2 = sub_1C4D20910();
  swift_beginAccess();
  sub_1C498E14C(a1, v2);
  return swift_endAccess();
}

uint64_t sub_1C4D20F08(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 89) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D20F24()
{
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 32);
  v2 = sub_1C4415590();
  *(v0 + 48) = v2;
  v3 = *(v0 + 16);
  *(v0 + 56) = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_1C44CD9C0();
    v5 = v18;
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      switch(sub_1C4BB047C())
      {
        case 5u:

          break;
        case 7u:
        case 0xAu:
        case 0xCu:
        case 0xDu:
          sub_1C440CB64();
          goto LABEL_8;
        default:
LABEL_8:
          v9 = sub_1C4F02938();

          if ((v9 & 1) == 0)
          {
            v10 = *(v0 + 40);
            if (sub_1C4D215A4(v8, v7, *(v0 + 24)))
            {
              v8 = sub_1C4EFA6C8();
              v12 = v11;

              v7 = v12;
            }
          }

          break;
      }

      v13 = *(v18 + 16);
      if (v13 >= *(v18 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 16 * v13;
      *(v14 + 32) = v8;
      *(v14 + 40) = v7;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 64) = v5;
  v15 = *(v0 + 89);
  *(v0 + 88) = 3;
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_1C4D213B8;

  return sub_1C4427590(v5, v15 | 0x4000u, 0, 0, 1, (v0 + 88));
}