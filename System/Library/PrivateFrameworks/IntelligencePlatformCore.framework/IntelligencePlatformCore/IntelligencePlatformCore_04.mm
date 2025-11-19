uint64_t sub_1C444CAA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0;
      *(result + 48) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1C444CB04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 56))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v3 = *(a1 + 48) >> 60;
      if (((4 * v3) & 0xC) != 0)
      {
        v2 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
      }

      else
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

__n128 sub_1C444CB58(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ActivityIntervalType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C444CBFC()
{
  result = qword_1EDDF9D38;
  if (!qword_1EDDF9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D38);
  }

  return result;
}

unint64_t sub_1C444CC50()
{
  result = qword_1EDDF9D30;
  if (!qword_1EDDF9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D30);
  }

  return result;
}

uint64_t sub_1C444CCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444CC50();
  v7 = sub_1C444CBFC();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1C444CD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4440C20();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AmbientLightType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C444CDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444CE38();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C444CE38()
{
  result = qword_1EDDF8828;
  if (!qword_1EDDF8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8828);
  }

  return result;
}

void sub_1C444CE8C()
{
  sub_1C43FE628();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C45E8, &qword_1C4F5A568);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C444D218();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    sub_1C4407D60();
    v10 = sub_1C4F026B8();
    sub_1C444CC50();
    sub_1C44126BC();
    sub_1C4F026C8();
    sub_1C4407D60();
    sub_1C4F02678();
    v12 = v11;
    LOBYTE(v22[0]) = 3;
    sub_1C444D374();
    sub_1C44126BC();
    sub_1C4F026C8();
    sub_1C4407D60();
    sub_1C4F02698();
    v14 = v13;
    LOBYTE(v23) = 5;
    sub_1C4407D60();
    v21 = sub_1C4F02688();
    v32 = 6;
    sub_1C444C16C();
    sub_1C44126BC();
    sub_1C4F02658();
    v15 = sub_1C43FBF04();
    v16(v15);
    v17 = v33;
    v18 = v34;
    sub_1C441DFEC(0, 0xF000000000000000);
    v22[0] = v10;
    LOBYTE(v22[1]) = 0;
    sub_1C440E3C8();
    v22[2] = v19;
    v22[3] = v12;
    LOBYTE(v22[4]) = 2;
    v22[5] = v14;
    LOBYTE(v22[6]) = v21 & 1;
    v22[7] = v17;
    v22[8] = v18;
    sub_1C444AAD0(v22, &v23);
    sub_1C440962C(v2);
    v23 = v10;
    v24 = 0;
    sub_1C440E3C8();
    v25 = v20;
    v26 = v12;
    v27 = 2;
    v28 = v14;
    v29 = v21 & 1;
    v30 = v17;
    v31 = v18;
    sub_1C44528B0(&v23);
    memcpy(v4, v22, 0x48uLL);
  }

  sub_1C4403810();
  sub_1C44109F8();
}

void sub_1C444D1CC(void *a1@<X8>)
{
  sub_1C444CE8C();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

unint64_t sub_1C444D218()
{
  result = qword_1EDDF8858;
  if (!qword_1EDDF8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8858);
  }

  return result;
}

uint64_t sub_1C444D274(char a1)
{
  result = 0x6449656372756F73;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_6;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 0x657461647075;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6C62616C69617661;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C444D374()
{
  result = qword_1EDDF9D60;
  if (!qword_1EDDF9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D60);
  }

  return result;
}

uint64_t sub_1C444D3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444D374();
  v7 = sub_1C444D440();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1C444D440()
{
  result = qword_1EDDF9D68;
  if (!qword_1EDDF9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D68);
  }

  return result;
}

uint64_t sub_1C444D494()
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C444D4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C444D494();
  *a2 = result;
  return result;
}

uint64_t sub_1C444D50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C444D55C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

__n128 sub_1C444D59C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C444D5B8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 34) = 5;
  v4 = sub_1C4450454();
  v6 = v5;
  v7 = v4;
  v8 = a1;
  if (!a1)
  {
    swift_unknownObjectRetain();
    v8 = v6;
  }

  v9 = *(v1 + 336);
  v10 = *(v2 + 344);
  *(v2 + 336) = v8;
  *(v2 + 344) = v7;
  swift_unknownObjectRetain();
  sub_1C4CC21C4(v9);
  v11 = *(v2 + 272);
  v12 = *(v2 + 280);
  v13 = *(v2 + 288);
  v14 = *(v2 + 296);
  *(v2 + 288) = v11;
  *(v2 + 296) = v12;
  sub_1C4431E64(v11, v12);
  v15 = sub_1C43FD168();
  sub_1C441DFEC(v15, v16);
  *(v2 + 33) = 4;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDE2DF70);

  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    v22 = sub_1C44355B0();
    v24 = sub_1C441D828(v22, v23, &v28);

    *(v20 + 4) = v24;
    sub_1C44003E4(&dword_1C43F8000, v25, v26, "ViewUpdate: %s: Finished update");
    sub_1C440962C(v21);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C444D768()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FEB84();
  *v4 = v3;
  v6 = *(v5 + 232);
  v9 = *v1;
  *(v3 + 240) = v0;

  if (v0)
  {
    v7 = sub_1C4D0F1F8;
  }

  else
  {
    v7 = sub_1C444D870;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C444D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 240);
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
  while (1)
  {
    if (!*(v17 + 16))
    {
LABEL_46:
      __break(1u);
      JUMPOUT(0x1C444DF2CLL);
    }

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
}

void sub_1C444DF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
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
    sub_1C44048F0();
    while (2)
    {
      if (v31 < *(v26 + 16))
      {
        sub_1C444B3EC(v33);
        ++v31;
        sub_1C440622C(&a10);
        v35 = *(v34 + 72);
        v36 = sub_1C4408DF8();
        switch(v37(v36))
        {
          case 1u:
          case 4u:
            goto LABEL_8;
          case 2u:
            sub_1C43FE1B4();
            goto LABEL_8;
          case 3u:
            sub_1C44081A8();
            goto LABEL_8;
          case 5u:
            sub_1C4413C84();
LABEL_8:
            v38 = sub_1C4F02938();

            v33 = sub_1C440962C(&a10);
            if (v38)
            {
              goto LABEL_12;
            }

            v32 += 40;
            if (v27 == v31)
            {
              goto LABEL_12;
            }

            continue;
          default:

            sub_1C440962C(&a10);
            goto LABEL_12;
        }
      }

      break;
    }

    __break(1u);
    JUMPOUT(0x1C444E0B4);
  }

LABEL_12:

  sub_1C4405950();
}

uint64_t sub_1C444E0CC()
{
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v5 = &unk_1F43D2FB8 + v3++;
    switch(v5[32])
    {
      case 1:
        v45 = v86[8];
        if (v45 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_149:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_150;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_149;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_206;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v46 = _s20KnowledgeGraphSourceCMa();
          sub_1C44255B4(v46);
          v47 = sub_1C444EE58(&qword_1EDDFC3F8, _s20KnowledgeGraphSourceCMa);
          sub_1C440B7E0(v47);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v49 = *(v48 + 64);
          MEMORY[0x1EEE9AC00](v50);
          v52 = sub_1C441AA34(v51, v86);
          v53(v52);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_150:
        sub_1C440FEB4();
        if (v72)
        {
          goto LABEL_195;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v82;
        }

        if (!*(v0 + 16))
        {

          if (v45)
          {
            goto LABEL_203;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v73 != v72)
        {
          goto LABEL_213;
        }

        sub_1C440A2BC();
        sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498();

        if (!v45)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v72)
        {
          goto LABEL_220;
        }

        goto LABEL_186;
      case 2:
        v18 = v86[9];
        if (v18 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_107:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_108;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_107;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_211;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          updated = _s18AlwaysUpdateSourceCMa();
          sub_1C44255B4(updated);
          v20 = sub_1C444EE58(&qword_1EDDFC888, _s18AlwaysUpdateSourceCMa);
          sub_1C440B7E0(v20);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v22 = *(v21 + 64);
          MEMORY[0x1EEE9AC00](v23);
          v25 = sub_1C441AA34(v24, v86);
          v26(v25);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_108:
        sub_1C440FEB4();
        if (v72)
        {
          goto LABEL_193;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v76;
        }

        if (!*(v0 + 16))
        {

          if (v18)
          {
            goto LABEL_200;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v73 != v72)
        {
          goto LABEL_212;
        }

        sub_1C440A2BC();
        sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498();

        if (!v18)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v72)
        {
          goto LABEL_225;
        }

        goto LABEL_186;
      case 3:
        v27 = v86[10];
        if (v27 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_121:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_122;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_121;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_208;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v28 = _s11BiomeSourceCMa();
          sub_1C44255B4(v28);
          v29 = sub_1C444EE58(&qword_1EDDFC688, _s11BiomeSourceCMa);
          sub_1C440B7E0(v29);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v31 = *(v30 + 64);
          MEMORY[0x1EEE9AC00](v32);
          v34 = sub_1C441AA34(v33, v86);
          v35(v34);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_122:
        sub_1C440FEB4();
        if (v72)
        {
          goto LABEL_198;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v77;
        }

        if (!*(v0 + 16))
        {

          if (v27)
          {
            goto LABEL_204;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v73 != v72)
        {
          goto LABEL_216;
        }

        sub_1C440A2BC();
        sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498();

        if (!v27)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v72)
        {
          goto LABEL_221;
        }

        goto LABEL_186;
      case 4:
        v7 = v86[11];
        if (v7 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_93:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_94;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_93;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_209;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v8 = _s10ViewSourceCMa();
          sub_1C44255B4(v8);
          v9 = sub_1C444EE58(&qword_1EDDFC780, _s10ViewSourceCMa);
          sub_1C440B7E0(v9);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v12 = *(v11 + 64);
          MEMORY[0x1EEE9AC00](v13);
          v15 = sub_1C441AA34(v14, v86);
          v16(v15);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_94:
        sub_1C440FEB4();
        if (v72)
        {
          goto LABEL_197;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v74;
        }

        if (!*(v0 + 16))
        {

          if (v7)
          {
            goto LABEL_201;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v73 != v72)
        {
          goto LABEL_217;
        }

        sub_1C440A2BC();
        sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498();

        if (!v7)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v72)
        {
          goto LABEL_222;
        }

        goto LABEL_186;
      case 5:
        v54 = v86[12];
        if (v54 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_163:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_164;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_163;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_207;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v55 = _s14KeyValueSourceCMa();
          sub_1C44255B4(v55);
          v56 = sub_1C444EE58(&qword_1EDDF9B40, _s14KeyValueSourceCMa);
          sub_1C440B7E0(v56);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v58 = *(v57 + 64);
          MEMORY[0x1EEE9AC00](v59);
          v61 = sub_1C441AA34(v60, v86);
          v62(v61);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_164:
        sub_1C440FEB4();
        if (v72)
        {
          goto LABEL_194;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v83;
        }

        if (!*(v0 + 16))
        {

          if (v54)
          {
            goto LABEL_199;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v73 != v72)
        {
          goto LABEL_218;
        }

        sub_1C440A2BC();
        sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498();

        if (!v54)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v72)
        {
          goto LABEL_223;
        }

        goto LABEL_186;
      case 6:
        v63 = v86[13];
        if (v63 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_177:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_178;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_177;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_205;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v64 = _s26GlobalKnowledgeGraphSourceCMa();
          sub_1C44255B4(v64);
          v65 = sub_1C444EE58(&qword_1EDDF97C8, _s26GlobalKnowledgeGraphSourceCMa);
          sub_1C440B7E0(v65);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v67 = *(v66 + 64);
          MEMORY[0x1EEE9AC00](v68);
          v70 = sub_1C441AA34(v69, v86);
          v71(v70);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_178:
        sub_1C440FEB4();
        if (v72)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
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
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
          JUMPOUT(0x1C444EE38);
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v84;
        }

        if (*(v0 + 16))
        {
          sub_1C4401380();
          if (v73 != v72)
          {
            goto LABEL_215;
          }

          sub_1C440A2BC();
          sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
          sub_1C4411498();

          if (v63)
          {
            sub_1C441512C();
            if (v72)
            {
              goto LABEL_219;
            }

LABEL_186:
            *(v4 + 16) = v75;
          }

          goto LABEL_187;
        }

        if (!v63)
        {
LABEL_187:
          if (v3 == 8)
          {
            return v4;
          }

          continue;
        }

        __break(1u);
        return v4;
      case 7:
        v36 = v86[14];
        if (v36 >> 62)
        {
          v2 = sub_1C4405C30();
          if (!v2)
          {
LABEL_135:
            v0 = MEMORY[0x1E69E7CC0];
            goto LABEL_136;
          }
        }

        else
        {
          sub_1C440550C();
          if (!v2)
          {
            goto LABEL_135;
          }
        }

        sub_1C43FE1C8(MEMORY[0x1E69E7CC0]);
        if (v2 < 0)
        {
          goto LABEL_210;
        }

        sub_1C4420940();
        do
        {
          if (v1)
          {
            sub_1C4418D04();
          }

          else
          {
            sub_1C43FCBA8();
          }

          v37 = _s18NotificationSourceCMa();
          sub_1C44255B4(v37);
          v38 = sub_1C444EE58(&qword_1EDDF9A20, _s18NotificationSourceCMa);
          sub_1C440B7E0(v38);
          if (v10)
          {
            sub_1C4403B04();
          }

          sub_1C441CF9C();
          sub_1C44081C0();
          v40 = *(v39 + 64);
          MEMORY[0x1EEE9AC00](v41);
          v43 = sub_1C441AA34(v42, v86);
          v44(v43);
          sub_1C4417B04();
          sub_1C440962C(&v88);
          sub_1C43FF8D4();
        }

        while (!v17);
        v4 = v87;
LABEL_136:
        sub_1C440FEB4();
        if (v72)
        {
          goto LABEL_196;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (sub_1C441E8A8(), !(v73 ^ v72 | v17)))
        {
          sub_1C440DB64();
          v4 = v78;
        }

        if (!*(v0 + 16))
        {

          if (v36)
          {
            goto LABEL_202;
          }

          goto LABEL_187;
        }

        sub_1C4401380();
        if (v73 != v72)
        {
          goto LABEL_214;
        }

        sub_1C440A2BC();
        sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
        sub_1C4411498();

        if (!v36)
        {
          goto LABEL_187;
        }

        sub_1C441512C();
        if (v72)
        {
          goto LABEL_224;
        }

        goto LABEL_186;
      default:
        v6 = v86[7];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = *(v4 + 16);
          sub_1C443F95C();
          v4 = v80;
        }

        v1 = *(v4 + 16);
        v0 = v1 + 1;
        if (v1 >= *(v4 + 24) >> 1)
        {
          sub_1C443F95C();
          v4 = v81;
        }

        v89 = _s13ControlSourceCMa();
        v90 = sub_1C444EE58(&qword_1EDDFC678, _s13ControlSourceCMa);
        *&v88 = v6;
        *(v4 + 16) = v0;
        sub_1C443FA18(&v88, v4 + 40 * v1 + 32);
        goto LABEL_187;
    }
  }
}

uint64_t sub_1C444EE58(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C444EEA0(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = *(a1 + 248);
  sub_1C4431E64(v1, v2);
  return sub_1C4440600(v1, v2);
}

uint64_t sub_1C444F05C(uint64_t a1, uint64_t a2)
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC62D0);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](124, 0xE100000000000000);
  sub_1C4F02438();
  MEMORY[0x1C6940010](124, 0xE100000000000000);
  v4 = sub_1C4F02858();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

void sub_1C444F17C()
{
  *(v0 + 33) = 1284;
  sub_1C44261E0(*(v0 + 104), *(v0 + 112));
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v1 = sub_1C4F00978();
  sub_1C4417A74(v1, qword_1EDE2DF70);
  v19 = sub_1C4F00968();
  sub_1C4F01CF8();
  v2 = sub_1C43FF844();
  if (sub_1C4409310(v2, v3, v4, v5, v6, v7, v8, v9, v19))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v11 = sub_1C43FE144(4.8151e-34, v10);
    *(v0 + 14) = sub_1C44080CC(v11, v12);
    sub_1C4420830(&dword_1C43F8000, v13, v14, "ViewUpdate: %s: %s: Finished update", v15, v16, v17, v18, v20);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

uint64_t sub_1C444F290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (*(v9 + 16) && (v10 = sub_1C444F264(a2), (v11 & 1) != 0))
  {
    sub_1C442E860(*(v9 + 56) + 40 * v10, v16);
    sub_1C441D670(v16, a4);
    return swift_endAccess();
  }

  else
  {
    v13 = swift_endAccess();
    v14 = *(*(a3 + 16) + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox);
    MEMORY[0x1EEE9AC00](v13);

    sub_1C456902C(&qword_1EC0C5430, &qword_1C4F61330);
    sub_1C4EFFA58();

    if (!v4)
    {
      sub_1C442E860(v16, v15);
      swift_beginAccess();
      sub_1C4C81380(v15, a2);
      swift_endAccess();
      return sub_1C441D670(v16, a4);
    }
  }

  return result;
}

uint64_t sub_1C444F41C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1C443309C();
  a2(a1);
  sub_1C4F01298();

  v5 = sub_1C4F02B68();

  return a3(a1, v5);
}

void sub_1C444F4B0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v46 = sub_1C4F00978();
  v6 = sub_1C43FCDF8(v46);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v45 = v12 - v11;
  v13 = *(a1 + 56);
  v14 = *(a1 + 80);
  v48 = v13;
  v49 = sub_1C4428DA0(v14);
  v51 = v14;
  if (v49)
  {
    v15 = 0;
    v52 = v14 & 0xFFFFFFFFFFFFFF8;
    v53 = v14 & 0xC000000000000001;
    v44 = (v8 + 8);
    v16 = v14;
    v47 = v4;
    do
    {
      if (v53)
      {
        v17 = MEMORY[0x1C6940F90](v15, v16);
      }

      else
      {
        if (v15 >= *(v52 + 16))
        {
          goto LABEL_61;
        }

        v17 = *(v16 + 8 * v15 + 32);
      }

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_60;
      }

      if ((*(v13 + 32) & 1) != 0 || *(v17 + 32) == 1)
      {
        switch(sub_1C44503C8(v13))
        {
          case 1u:
            sub_1C442D5A0();
            sub_1C441A6F0();
            sub_1C4EFA618();
            goto LABEL_21;
          case 2u:
            v29 = v4[5];
            v30 = v4[6];
            v31 = v4[2];
            v32 = v4[3];
            v33 = v4[4];
            v50 = v3;
            v34 = *(v17 + 184);
            v35 = *(v17 + 192);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v2 = v50;
            sub_1C4EFA628();
            v3 = v50;
            if (v50)
            {
              goto LABEL_54;
            }

            sub_1C4CC0428();
            goto LABEL_23;
          case 3u:
            sub_1C442D5A0();
            sub_1C441A6F0();
            sub_1C4EFA638();
LABEL_21:
            v3 = v2;
            if (v2)
            {
              goto LABEL_54;
            }

            sub_1C444D5B8(0);
            goto LABEL_23;
          case 4u:
            *(v17 + 34) = 1;

            goto LABEL_24;
          default:
            sub_1C4F00178();

            v19 = sub_1C4F00968();
            v20 = sub_1C4F01CF8();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v54 = v22;
              *v21 = 136315138;
              *(v21 + 4) = sub_1C441D828(v4[2], v4[3], &v54);
              _os_log_impl(&dword_1C43F8000, v19, v20, "BiomeIncrementalViewGenerator: %s: truncation is not supported, treating as a clear instead.", v21, 0xCu);
              sub_1C440962C(v22);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            (*v44)(v45, v46);
            v24 = v4[5];
            v23 = v4[6];
            v2 = v4[2];
            v25 = v4[3];
            v26 = v4[4];
            v28 = *(v17 + 184);
            v27 = *(v17 + 192);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C441A6F0();
            sub_1C4EFA628();
            v3 = v2;
            if (v2)
            {
LABEL_54:

              return;
            }

            sub_1C4CC0440();
LABEL_23:

            v4 = v47;
            v13 = v48;
LABEL_24:
            v16 = v51;
            break;
        }
      }

      else
      {
        *(v17 + 34) = 1;
      }

      ++v15;
    }

    while (v18 != v49);
  }

  else
  {
    v52 = v14 & 0xFFFFFFFFFFFFFF8;
    v53 = v14 & 0xC000000000000001;
    v16 = v14;
  }

  v36 = sub_1C4428DA0(v16);
  v37 = 0;
  while (v36 != v37)
  {
    if (v53)
    {
      v38 = MEMORY[0x1C6940F90](v37, v16);
    }

    else
    {
      if (v37 >= *(v52 + 16))
      {
        goto LABEL_57;
      }

      v38 = *(v16 + 8 * v37 + 32);
    }

    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      JUMPOUT(0x1C444FB48);
    }

    switch(*(v38 + 34))
    {
      case 2:

        goto LABEL_37;
      default:
        v39 = sub_1C4F02938();

        if ((v39 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_37:
        ++v37;
        break;
    }
  }

LABEL_39:
  v40 = sub_1C4428DA0(v16);
  v41 = 0;
  while (v40 != v41)
  {
    if (v53)
    {
      v42 = MEMORY[0x1C6940F90](v41, v16);
    }

    else
    {
      if (v41 >= *(v52 + 16))
      {
        goto LABEL_59;
      }

      v42 = *(v16 + 8 * v41 + 32);
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_58;
    }

    switch(*(v42 + 34))
    {
      case 1:

        v16 = v51;
        goto LABEL_48;
      default:
        v43 = sub_1C4F02938();

        v16 = v51;
        if ((v43 & 1) == 0)
        {
          if (v36 == v37)
          {
LABEL_53:
            sub_1C4CCD7DC();
          }

          else
          {
            sub_1C444F17C();
          }

          return;
        }

LABEL_48:
        ++v41;
        break;
    }
  }

  if (v36 == v37)
  {
    goto LABEL_53;
  }

  *(v48 + 34) = 1;
}

uint64_t sub_1C444FB8C(uint64_t a1)
{
  sub_1C444F4B0(a1);
  v2 = *(v1 + 8);

  return v2();
}

id sub_1C444FC44(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_1C444FC74()
{

  objc_autoreleasePoolPop(v0);
}

__n128 sub_1C444FCAC@<Q0>(uint64_t a1@<X8>, __int128 a2, __n128 a3, uint64_t a4)
{
  v5 = *(v4 + 48) + 40 * a1;
  *v5 = a2;
  result = a3;
  *(v5 + 16) = a3;
  *(v5 + 32) = a4;
  v7 = *(v4 + 56);
  return result;
}

uint64_t sub_1C444FCE8()
{
  v3 = *(v1 - 136) + *(v0 + 20);

  return type metadata accessor for PhaseStores();
}

uint64_t sub_1C444FD38()
{

  return sub_1C4724FA0(v1, v0, v2 & 1, (v3 - 208));
}

uint64_t sub_1C444FD58()
{

  return sub_1C4EFB2A8();
}

uint64_t sub_1C444FD74()
{

  return sub_1C4EFAF88();
}

uint64_t sub_1C444FD94()
{

  return sub_1C4F01578();
}

void *sub_1C444FDBC(void *a1, uint64_t a2)
{
  result = sub_1C4409678(a1, a2);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1C444FDF0@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 48) = v1;
  *(a1 - 40) = v3;
  *(a1 - 32) = v2;
  *(a1 - 24) = v4;
  *(a1 - 16) = v5;
}

uint64_t sub_1C444FE30()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C444FE50()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 112) = 30;
  *(v2 - 104) = 0xE100000000000000;

  return sub_1C4415EA8();
}

uint64_t sub_1C444FE74()
{
  *(v0 + *(v2 + 48)) = v1;
  *(v0 + *(v2 + 52)) = 1;
  return *(v3 - 128);
}

uint64_t sub_1C444FE94()
{

  return sub_1C4F01578();
}

void sub_1C444FEAC()
{
  *(v1 - 144) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

unint64_t sub_1C444FEF8()
{
  *(v0 - 240) = 0x2E7564652ELL;
  *(v0 - 232) = 0xE500000000000000;

  return sub_1C4415EA8();
}

uint64_t sub_1C444FF34()
{

  return sub_1C4EF97C8();
}

uint64_t sub_1C444FF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1C4B10474(v3, v4, a3);
}

uint64_t sub_1C444FF8C()
{
  v1 = *(*(v0 - 280) + 16);
  result = *(v0 - 320);
  v3 = *(v0 - 272);
  return result;
}

void sub_1C444FFE4()
{
  v2 = *(v0 - 168);
  v1 = *(v0 - 160);
  v3 = *(v0 - 152);
}

uint64_t sub_1C444FFFC()
{
  v1 = *(v0 - 352) + 8;
  result = *(v0 - 272);
  v3 = *(v0 - 320);
  v4 = *(v0 - 384);
  return result;
}

uint64_t sub_1C4450030()
{

  return swift_once();
}

uint64_t sub_1C4450050(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2);
}

void sub_1C4450068()
{

  sub_1C4C81AA0();
}

uint64_t sub_1C44500B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  *(v1 + a1) = 0;
}

void *sub_1C44500CC(void *a1)
{

  return memcpy(a1, (v1 + 1312), 0x140uLL);
}

uint64_t sub_1C44500E4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 296);
  return v2;
}

uint64_t sub_1C4450114(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C4450124()
{
}

uint64_t sub_1C445015C()
{
  v2 = *(v0 - 488);
}

uint64_t sub_1C4450174()
{
  v2 = *(v0 - 304);

  return swift_arrayDestroy();
}

uint64_t sub_1C44501B8()
{

  return sub_1C44DBDB4(v0, type metadata accessor for ConstructionGraphTriple);
}

uint64_t sub_1C44501E0(double a1)
{
  v6 = (v4 + v3[8]);
  *v6 = v2;
  v6[1] = v1;
  v7 = (v4 + v3[10]);
  result = *(v5 - 120);
  *v7 = *(v5 - 128);
  v7[1] = result;
  *(v4 + v3[11]) = a1;
  v9 = v3[12];
  return result;
}

uint64_t sub_1C445020C@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 352);
  v4 = *(v1 - 280);
  v5 = *(v1 - 296);
  return result;
}

uint64_t sub_1C4450278()
{
  v2 = *(*(v1 - 296) + 8);
  result = v0;
  v4 = *(v1 - 288);
  return result;
}

uint64_t sub_1C44502B8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1C44503C8(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return *(v1 + 33);
  }

  result = *(a1 + 33);
  if (result >= 3)
  {
    if (*(v1 + 33) >= 3u)
    {
      return result;
    }

    else
    {
      return *(v1 + 33);
    }
  }

  return result;
}

uint64_t sub_1C44503F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 1)
  {
    swift_unknownObjectRelease();

    return sub_1C441DFEC(a2, a3);
  }

  return result;
}

uint64_t sub_1C4450444(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

double sub_1C4450454()
{
  if (*(v0 + 304) == 1)
  {
    v1 = sub_1C444EEA0(v0);
    v3 = v2;
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    *(v0 + 304) = v1;
    *(v0 + 312) = v2;
    swift_unknownObjectRetain();
    sub_1C4CC21C4(v4);
  }

  else
  {
    v3 = *(v0 + 312);
    v6 = *(v0 + 304);
  }

  v7 = sub_1C4402CD0();
  sub_1C4450444(v7);
  return v3;
}

unint64_t sub_1C44504DC()
{
  result = qword_1EDDFA450;
  if (!qword_1EDDFA450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA450);
  }

  return result;
}

void sub_1C4450520(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 5:
      return;
    case 4:
      sub_1C43FE984();
      break;
    default:
      sub_1C441AA58();
      break;
  }
}

uint64_t sub_1C4450608()
{

  return sub_1C447E868(v0, v1);
}

uint64_t sub_1C4450650(uint64_t result)
{
  *(v1 - 200) = result;
  v2 = *(v1 - 360);
  return result;
}

char *sub_1C445067C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;

  return sub_1C459E0D8(0, v1, 0);
}

uint64_t sub_1C44506A0()
{
  v1 = v0[6];
  sub_1C4409678(v0 + 2, v0[5]);
  v3 = v0[5];
  v2 = v0[6];
  sub_1C4409678(v0 + 2, v3);
  v4 = *(*(v2 + 8) + 48);
  return v3;
}

void sub_1C44506EC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4450724()
{
  v1 = *(v0 + 544);
  sub_1C441D670((v0 + 136), v0 + 96);

  return sub_1C4938228(v1 + 136, v0 + 216);
}

uint64_t sub_1C44507CC(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2);
}

uint64_t sub_1C4450808(uint64_t a1)
{
  v4 = *(v2 + 344);
  v5 = *(v1 + 56) + 32 * a1;

  return sub_1C442B870(v5, v2 + 80);
}

uint64_t sub_1C4450828()
{
  result = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[15];
  return result;
}

uint64_t sub_1C4450838()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[18];

  return sub_1C4BF7970();
}

__n128 sub_1C4450888(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v11 + 128) = a1;
  a1[1].n128_u64[0] = v10;
  a1[1].n128_u64[1] = v13;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u64[1] = v9;
  result = a9;
  a1[3] = a9;
  return result;
}

uint64_t sub_1C44508EC()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_1C4450938@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 288);
  v4 = *(v1 - 144);

  return sub_1C4F02618();
}

void sub_1C4450974()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
}

uint64_t sub_1C4450984@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02738();
}

uint64_t sub_1C44509AC()
{
  sub_1C44509E0();

  return swift_deallocClassInstance();
}

void *sub_1C44509E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t sub_1C4450A18()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1C444E0CC();
  v33 = *(v1 + 16);
  if (!v33)
  {

    v3 = MEMORY[0x1E69E7CC0];
LABEL_37:
    objc_autoreleasePoolPop(v0);
    return v3;
  }

  v29 = v0;
  v2 = 0;
  v32 = v1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C442E860(v32 + 40 * v2, v35);
    v4 = v35[4];
    sub_1C4409678(v35, v35[3]);
    v5 = *(v4 + 136);
    v6 = sub_1C4414C9C();
    v8 = v7(v6);
    sub_1C440962C(v35);
    v9 = v8 >> 62 ? sub_1C4F02128() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v3 >> 62;
    result = v3 >> 62 ? sub_1C4F02128() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = result + v9;
    if (__OFADD__(result, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v10)
      {
        goto LABEL_15;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v10)
      {
LABEL_15:
        sub_1C4F02128();
        goto LABEL_16;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = *(v13 + 16);
LABEL_16:
    result = sub_1C4F022B8();
    v3 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v13 + 16);
    v16 = (*(v13 + 24) >> 1) - v15;
    v17 = v13 + 8 * v15;
    if (v8 >> 62)
    {
      v19 = sub_1C4F02128();
      if (v19)
      {
        v20 = v19;
        result = sub_1C4F02128();
        v31 = result;
        if (v16 < result)
        {
          goto LABEL_41;
        }

        if (v20 < 1)
        {
          goto LABEL_43;
        }

        v30 = v13;
        v21 = v17 + 32;
        sub_1C4D0F254();
        for (i = 0; i != v20; ++i)
        {
          sub_1C456902C(&qword_1EC0C6080, &qword_1C4F6A200);
          v23 = sub_1C4CD79AC(v34, i, v8);
          v25 = *v24;
          v23(v34, 0);
          *(v21 + 8 * i) = v25;
        }

        v13 = v30;
        v18 = v31;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        if (v16 < v18)
        {
          goto LABEL_42;
        }

        sub_1C44504DC();
        swift_arrayInitWithCopy();
LABEL_27:

        if (v18 < v9)
        {
          goto LABEL_39;
        }

        if (v18 > 0)
        {
          v26 = *(v13 + 16);
          v27 = __OFADD__(v26, v18);
          v28 = v26 + v18;
          if (v27)
          {
            goto LABEL_40;
          }

          *(v13 + 16) = v28;
        }

        goto LABEL_32;
      }
    }

    if (v9 > 0)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (++v2 == v33)
    {

      v0 = v29;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1C4450D30()
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
    *(v1 + 120);
    sub_1C4409528(v4);
    v8 = v7;
    v10 = v9;
    v12 = *(v1 + 128);
    v11 = *(v1 + 136);
    v13 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4440254(v2, v3, v8, v10, v5);
    v15 = *(v1 + 144);
    v16 = *(v1 + 152);
    sub_1C4450520(*(v1 + 34));
    v17 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    sub_1C4431E64(v15, v16);
    *(v18 + 32) = sub_1C4450F04(v14, v15, v16);
    return v18;
  }

  __break(1u);
  return result;
}

id sub_1C4450F04(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1C4EF9A38();
    sub_1C441DFEC(a2, a3);
  }

  v8 = sub_1C4F01108();

  v9 = [v3 initWithConfigIdentifier:a1 bookmark:v5 response:v8];

  return v9;
}

uint64_t sub_1C4450FC4()
{
  v1 = v0;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C4F10430;
  v3 = *(v0 + 64);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v23 = *(v0 + 152);
    v24 = result;
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C43FBC98();
    sub_1C44505F8(v8);
    v9 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4440254(v5, v4, 0x656D6F6962, 0xE500000000000000, v3);
    sub_1C44545EC();
    v11 = v10;
    sub_1C4450520(*(v0 + 34));
    v12 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    v13 = sub_1C43FBC98();
    *(v24 + 32) = sub_1C4450F04(v13, v14, v11);
    sub_1C44505F8(v23);
    v15 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    sub_1C4440254(v5, v4, 0x656D6F6962, 0xE500000000000000, v3);
    v16 = *(v0 + 288);
    v17 = *(v1 + 296);
    sub_1C4450520(*(v1 + 34));
    v18 = objc_allocWithZone(MEMORY[0x1E69A9F20]);
    v19 = sub_1C43FD168();
    sub_1C4431E64(v19, v20);
    v21 = sub_1C43FBC98();
    *(v24 + 40) = sub_1C4450F04(v21, v22, v17);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C44511EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4441254();
    MEMORY[0x1C6940010](v7);
    MEMORY[0x1C6940010](a3, a4);
    return a1;
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v4;
}

void sub_1C4451274(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1C4451290()
{
  v4 = *v2;

  return sub_1C445FAA8(v1, v0);
}

uint64_t sub_1C44512AC()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_1C44512C4()
{
  v2 = *(v0 - 264);
}

void sub_1C44512F0()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_1C4451304()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C445136C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(a1 + 28));
}

void sub_1C4451388()
{
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  v0[11] = 0xE000000000000000;
  v0[12] = 0xE000000000000000;
  v0[13] = 0xE000000000000000;
  v0[14] = 0xE000000000000000;
}

void sub_1C445139C()
{
  v1 = v0[49];
  v2 = v0[33];
  v3 = v0[28];
}

uint64_t sub_1C44513AC()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v5 = *(v3 - 536);

  return sub_1C441D828(v5, v2, (v3 - 176));
}

uint64_t sub_1C44513D8()
{

  return sub_1C4EFBD48();
}

void sub_1C4451418()
{
  v1[1] = *(v0 + 136);
  v1[2] = v2;

  bzero(v1 + 3, 0xE3uLL);
}

uint64_t sub_1C4451438()
{

  return sub_1C4F01748();
}

uint64_t sub_1C4451468()
{
  v2 = *(*(v1 - 240) + 8);
  result = v0;
  v4 = *(v1 - 248);
  return result;
}

uint64_t sub_1C4451494()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 224);
  v3 = *(v0 - 216);
  return result;
}

uint64_t sub_1C44514A8()
{
  *(v0 - 112) = 6;
  v2 = *(v0 - 264);

  return sub_1C4F026C8();
}

uint64_t sub_1C44514E8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = v1;
  *(v2 - 224) = a1;

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4451520@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(a1 - 256) + 8);
  result = v1;
  v5 = *(v2 - 256);
  return result;
}

void sub_1C4451534(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 96);
  v4 = *(v1 - 392);
}

uint64_t sub_1C4451548()
{
  sub_1C447CCA8();
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C440101C();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A82C();
  swift_unownedRetainStrong();
  v15 = sub_1C4458808();
  result = sub_1C4461D94();
  if (!v1)
  {
    v17 = *(v15 + 400);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v18 = sub_1C44331AC();
    v19 = MEMORY[0x1E69E6530];
    *(v18 + 16) = xmmword_1C4F0D130;
    v20 = MEMORY[0x1E69A0180];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v4;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v12 + 8))(v2, v9);
    v21 = sub_1C44038D0();
    sub_1C44554A8(v21, v22, v23);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C44516D8(uint64_t a1, uint64_t a2, int a3, void *a4, int a5)
{
  v7 = v6;
  v124 = a5;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v122 = &v112 - v14;
  v15 = sub_1C4EFB768();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a4[1];
  v125 = *a4;
  v19 = a4[2];
  updated = _s17ViewUpdateResultsVMa(0);
  if (*(a4 + *(updated + 28)) != 1)
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v54 = sub_1C4F00978();
    sub_1C442B738(v54, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CF8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v126 = v58;
      *v57 = 136446210;
      v59 = sub_1C444AB08();
      v61 = sub_1C441D828(v59, v60, &v126);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_1C43F8000, v55, v56, "ViewUpdate: %{public}s: View was not updated (ignored all sources)", v57, 0xCu);
      sub_1C440962C(v58);
      MEMORY[0x1C6942830](v58, -1, -1);
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    if (v124)
    {
      sub_1C4BBAC48();
    }

    return;
  }

  v21 = updated;
  v22 = *(a4 + *(updated + 24));
  v118 = a2;
  v123 = v19;
  v115 = v5;
  HIDWORD(v117) = a3;
  if (v22 == 1)
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v23 = sub_1C4F00978();
    v24 = sub_1C442B738(v23, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v113 = v24;
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();

    v27 = os_log_type_enabled(v25, v26);
    v116 = v18;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v114 = v6;
      v29 = v28;
      v30 = swift_slowAlloc();
      v126 = v30;
      *v29 = 136446210;
      v31 = sub_1C444AB08();
      v33 = a1;
      v34 = sub_1C441D828(v31, v32, &v126);

      *(v29 + 4) = v34;
      a1 = v33;
      _os_log_impl(&dword_1C43F8000, v25, v26, "ViewUpdate: %{public}s: View was cleared", v29, 0xCu);
      sub_1C440962C(v30);
      MEMORY[0x1C6942830](v30, -1, -1);
      v35 = v29;
      v7 = v114;
      MEMORY[0x1C6942830](v35, -1, -1);
    }

    v36 = *(a4 + *(v21 + 36) + 64);
    v37 = &selRef_localizedName;
    v38 = [v36 bookmark];
    v39 = v118;
    if (v38)
    {
      v40 = v38;
      v114 = v36;
      v41 = sub_1C4EF9A68();
      v43 = v42;

      sub_1C4434000(v41, v43);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v44 = sub_1C4F00968();
      v45 = sub_1C4F01CD8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v126 = v113;
        *v46 = 136315138;
        v47 = v116;
        v48 = sub_1C444AB08();
        v50 = a1;
        v51 = sub_1C441D828(v48, v49, &v126);
        v18 = v47;

        *(v46 + 4) = v51;
        a1 = v50;
        _os_log_impl(&dword_1C43F8000, v44, v45, "ViewUpdate: %s: View was cleared but bookmark is not nil and the view will still be available", v46, 0xCu);
        v52 = v113;
        sub_1C440962C(v113);
        MEMORY[0x1C6942830](v52, -1, -1);
        v53 = v46;
        v37 = &selRef_localizedName;
        MEMORY[0x1C6942830](v53, -1, -1);
      }

      else
      {

        v18 = v116;
      }

LABEL_29:
      v36 = v114;
      goto LABEL_30;
    }

    v18 = v116;
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v62 = sub_1C4F00978();
    sub_1C442B738(v62, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CF8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v114 = v6;
      v66 = v65;
      v113 = swift_slowAlloc();
      v126 = v113;
      *v66 = 136446210;
      v67 = sub_1C444AB08();
      v116 = v18;
      v69 = v62;
      v70 = a1;
      v71 = sub_1C441D828(v67, v68, &v126);
      v18 = v116;

      *(v66 + 4) = v71;
      a1 = v70;
      v62 = v69;
      _os_log_impl(&dword_1C43F8000, v63, v64, "ViewUpdate: %{public}s: View was updated", v66, 0xCu);
      v72 = v113;
      sub_1C440962C(v113);
      MEMORY[0x1C6942830](v72, -1, -1);
      v73 = v66;
      v7 = v114;
      MEMORY[0x1C6942830](v73, -1, -1);
    }

    v36 = *(a4 + *(v21 + 36) + 64);
    v37 = &selRef_localizedName;
    v74 = [v36 bookmark];
    if (!v74)
    {
      v114 = v36;
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v62, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v79 = sub_1C4F00968();
      v80 = sub_1C4F01CD8();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v126 = v82;
        *v81 = 136446210;
        v83 = sub_1C444AB08();
        v85 = a1;
        v86 = sub_1C441D828(v83, v84, &v126);

        *(v81 + 4) = v86;
        a1 = v85;
        _os_log_impl(&dword_1C43F8000, v79, v80, "ViewUpdate: %{public}s: View was updated but bookmark is nil, so the view will remain unavailable", v81, 0xCu);
        sub_1C440962C(v82);
        MEMORY[0x1C6942830](v82, -1, -1);
        v87 = v81;
        v37 = &selRef_localizedName;
        MEMORY[0x1C6942830](v87, -1, -1);
      }

      v39 = v118;
      goto LABEL_29;
    }

    v75 = v74;
    v76 = sub_1C4EF9A68();
    v78 = v77;

    sub_1C4434000(v76, v78);
    v39 = v118;
  }

LABEL_30:
  v88 = [v36 v37[234]];
  v89 = v88;
  if (v124)
  {
    if (v88)
    {
      v90 = sub_1C4EF9A68();
      v92 = v91;
    }

    else
    {
      v90 = 0;
      v92 = 0xF000000000000000;
    }

    swift_unownedRetainStrong();
    v97 = sub_1C4440C6C(a1);
    if (v7)
    {
      sub_1C441DFEC(v90, v92);

      return;
    }

    v99 = v97;

    v100 = *(v99 + 144);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1C4F13950;
    v102 = MEMORY[0x1E69E6530];
    v103 = MEMORY[0x1E69A0180];
    *(v101 + 56) = MEMORY[0x1E69E6530];
    *(v101 + 64) = v103;
    *(v101 + 32) = 0;
    *(v101 + 96) = v102;
    *(v101 + 104) = v103;
    *(v101 + 72) = 0;
    *(v101 + 112) = 0u;
    *(v101 + 128) = 0u;
    *(v101 + 144) = 0;
    if (v92 >> 60 == 15)
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      *(v101 + 168) = 0;
    }

    else
    {
      v107 = MEMORY[0x1E699FD70];
      v106 = MEMORY[0x1E6969080];
      v104 = v90;
      v105 = v92;
    }

    v98 = HIDWORD(v117);
    *(v101 + 152) = v104;
    *(v101 + 160) = v105;
    *(v101 + 176) = v106;
    *(v101 + 184) = v107;
    *(v101 + 216) = v102;
    *(v101 + 224) = v103;
    *(v101 + 192) = v125;
    sub_1C4431E64(v90, v92);
    v108 = v119;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v109 = v108;
    v110 = v121;
    (*(v120 + 8))(v109, v121);
    v111 = v122;
    sub_1C440BAA8(v122, 1, 1, v110);
    sub_1C4EFC0A8();

    sub_1C441DFEC(v90, v92);
    sub_1C4420C3C(v111, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v39 = v118;
    v93 = v123;
    goto LABEL_45;
  }

  v93 = v123;
  if (v88)
  {
    v94 = sub_1C4EF9A68();
    v96 = v95;
  }

  else
  {
    v94 = 0;
    v96 = 0xF000000000000000;
  }

  v98 = HIDWORD(v117);
  sub_1C4BBAFAC();
  sub_1C441DFEC(v94, v96);
  if (!v7)
  {
LABEL_45:
    sub_1C4420C94(a1, v39, 4, v18, v93, 0, v98, 1, v112, v113, SWORD2(v113), SBYTE6(v113), SHIBYTE(v113), v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  }
}

uint64_t sub_1C445219C()
{
  sub_1C44521D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44521D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 128);

  v6 = *(v0 + 160);
  v7 = *(v0 + 176);

  v8 = *(v0 + 192);

  v9 = *(v0 + 208);

  sub_1C441DFEC(*(v0 + 224), *(v0 + 232));
  sub_1C441DFEC(*(v0 + 240), *(v0 + 248));
  sub_1C441DFEC(*(v0 + 256), *(v0 + 264));
  sub_1C441DFEC(*(v0 + 272), *(v0 + 280));
  sub_1C441DFEC(*(v0 + 288), *(v0 + 296));
  v10 = *(v0 + 312);
  sub_1C4CC21C4(*(v0 + 304));
  v11 = *(v0 + 328);
  sub_1C4CC21C4(*(v0 + 320));
  v12 = *(v0 + 344);
  sub_1C4CC21C4(*(v0 + 336));
  return v0;
}

uint64_t sub_1C445229C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

void sub_1C4452380(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v53 = a1;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1C4EFB768();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  swift_unownedRetainStrong();
  v21 = sub_1C4440C6C(a2);

  if (!v3)
  {
    v38 = a3;
    v22 = *(v21 + 256);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E6530];
    *(v23 + 16) = xmmword_1C4F0D130;
    v25 = MEMORY[0x1E69A0180];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    v26 = v53;
    *(v23 + 32) = v53;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v15 + 8))(v20, v12);
    sub_1C43FCF64();
    sub_1C440BAA8(v27, v28, v29, v12);
    sub_1C444C5E8();
    memset(v45, 0, sizeof(v45));
    v46 = 0;
    sub_1C4EFB408();
    sub_1C4423A0C(v45, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v11, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v43 = v47;
    v30 = v49;
    v44 = v48;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    if (v49)
    {

      v31 = v38;
      *v38 = v43;
      *(v31 + 2) = v44;
      *(v31 + 3) = v30;
      v32 = v41;
      v31[2] = v40;
      v31[3] = v32;
      *(v31 + 8) = v42;
    }

    else
    {
      *&v39 = v26;
      v33 = sub_1C4F02858();
      v35 = v34;
      sub_1C450B034();
      swift_allocError();
      *v36 = v33;
      *(v36 + 8) = v35;
      *(v36 + 16) = xmmword_1C4F5A290;
      *(v36 + 32) = 0;
      *(v36 + 40) = 0xE000000000000000;
      *(v36 + 48) = v39;
      *(v36 + 64) = 0;
      swift_willThrow();
    }
  }

  sub_1C4403810();
}

void sub_1C44526E8()
{
  sub_1C43FE96C();
  sub_1C44238D0();
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C440101C();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C441C544();
  sub_1C4440C6C(v3);
  sub_1C4402530();
  if (!v1)
  {
    v16 = *(v3 + 304);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v17 = sub_1C4404370();
    *(v17 + 16) = xmmword_1C4F0CE60;
    v18 = MEMORY[0x1E69E6530];
    v19 = MEMORY[0x1E69A0180];
    *(v17 + 56) = MEMORY[0x1E69E6530];
    *(v17 + 64) = v19;
    *(v17 + 32) = v5;
    *(v17 + 96) = v18;
    *(v17 + 104) = v19;
    *(v17 + 72) = v2;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v20 = *(v13 + 8);
    v21 = sub_1C43FD018();
    v22(v21);
    v23 = sub_1C44038D0();
    sub_1C440BAA8(v23, v24, v25, v10);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C44528E0()
{
  sub_1C43FBD3C();
  v112 = v1;
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v108 = &v94[-v6];
  sub_1C43FBE44();
  v101 = sub_1C4F00908();
  v7 = sub_1C43FCDF8(v101);
  v103 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v104 = (v12 - v11);
  sub_1C43FBE44();
  v13 = sub_1C4F008B8();
  v14 = sub_1C43FCDF8(v13);
  v107 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v111 = v19 - v18;
  sub_1C43FBE44();
  v20 = sub_1C4F008F8();
  v21 = sub_1C43FCDF8(v20);
  v106 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v110 = v26 - v25;
  v27 = sub_1C456902C(&qword_1EC0C6438, &qword_1C4F6D808);
  v28 = sub_1C43FBD18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v94[-v35];
  v37 = sub_1C4EFD618();
  v38 = sub_1C43FCDF8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  v46 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost;
  sub_1C440F1BC();
  swift_beginAccess();
  v105 = v46;
  v109 = v0;
  sub_1C44DDE2C();
  if (sub_1C44157D4(v36, 1, v37) == 1)
  {
    sub_1C4420C3C(v36, &qword_1EC0C6438, &qword_1C4F6D808);
LABEL_20:
    sub_1C43FE9F0();
    return;
  }

  v98 = v20;
  v99 = v13;
  v100 = v33;
  v96 = v40;
  v47 = *(v40 + 32);
  v102 = v45;
  v97 = v37;
  v47(v45, v36, v37);
  v48 = sub_1C440F54C();
  *(v48 + 16) = v112;
  v49 = sub_1C440F54C();
  *(v49 + 16) = 34;
  v50 = sub_1C440F54C();
  *(v50 + 16) = 8;
  v51 = swift_allocObject();
  v52 = v109;
  *(v51 + 16) = sub_1C4454B90;
  *(v51 + 24) = v52;
  v53 = sub_1C440F54C();
  *(v53 + 16) = 34;
  v54 = sub_1C440F54C();
  *(v54 + 16) = 8;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1C4454C30;
  *(v55 + 24) = v48;
  v56 = sub_1C440F54C();
  *(v56 + 16) = 32;
  v57 = sub_1C440F54C();
  *(v57 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v49;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v50;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v51;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v53;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v54;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v55;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v56;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v57;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;

  v59 = v110;
  v60 = v102;
  sub_1C4EFD5C8();
  v61 = sub_1C4EFD5F8();
  v63 = v62;
  v64 = v60;
  sub_1C4EFD608();
  v65 = sub_1C4F008D8();
  v66 = v111;
  sub_1C4F00928();
  v95 = sub_1C4F01E18();
  if ((sub_1C4F01F28() & 1) == 0)
  {
    v69 = v59;
    v70 = v64;

    sub_1C43FFB20(v119);
    v71(v66, v99);
    sub_1C43FFB20(&v118);
    v72(v69, v98);
LABEL_19:
    sub_1C4454D24(qword_1C4F6D948[v112]);
    sub_1C43FFB20(&v117);
    v85 = v97;
    v86(v70, v97);
    sub_1C43FCF64();
    sub_1C440BAA8(v87, v88, v89, v85);
    sub_1C4403138();
    sub_1C468282C();
    swift_endAccess();
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C440BAA8(v90, v91, v92, v93);
    sub_1C4403138();
    sub_1C468282C();
    swift_endAccess();
    goto LABEL_20;
  }

  if ((v63 & 1) == 0)
  {
    v67 = v104;
    if (v61)
    {
      v68 = v103;
LABEL_12:

      sub_1C4F00958();

      v73 = v101;
      if ((*(v68 + 88))(v67, v101) == *MEMORY[0x1E69E93E8])
      {
        v74 = 0;
        v75 = 0;
        v104 = "[Error] Interval already ended";
      }

      else
      {
        (*(v68 + 8))(v67, v73);
        v104 = "viewName=%{signpost.telemetry:string1,public}s result=%{signpost.telemetry:string2,public}s %s";
        v75 = 2;
        v74 = 3;
      }

      sub_1C43FEC60();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = 0;
      v114 = 0;
      v113 = v77;
      *v76 = v75;
      v76[1] = v74;
      v116 = v76 + 2;
      while (v78 != 144)
      {
        v79 = *(inited + v78 + 32);
        v80 = *(inited + v78 + 40);

        v79(&v116, &v114, &v113);

        v78 += 16;
      }

      v81 = v111;
      v82 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v65, v95, v82, v61, v104, v76, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      sub_1C43FFB20(v119);
      v83(v81, v99);
      sub_1C43FFB20(&v118);
      v84(v110, v98);
      v70 = v102;
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  v67 = v104;
  if (HIDWORD(v61))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v68 = v103;
  if ((v61 & 0xFFFFF800) != 0xD800)
  {
    if (v61 >> 16 <= 0x10)
    {
      v61 = &v115;
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1C4453248()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C445329C()
{
  v1 = *(v0 + 16);
  sub_1C43FBCF0();
  return v2();
}

uint64_t sub_1C44532C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t a8, char a9, uint64_t a10)
{
  v14 = *(a8 + 8);
  v94 = *a8;
  v92 = *(a8 + 24);
  sub_1C4409528(*(a8 + 16));
  v17 = v16 == 0x7055737961776C61 && v15 == 0xEC00000065746164;
  v96 = a1;
  if (v17)
  {

    v19 = 0.0;
  }

  else
  {
    v18 = sub_1C4F02938();

    v19 = 0.0;
    if ((v18 & 1) == 0)
    {
      v19 = *(a8 + 48);
    }
  }

  v20 = *(a8 + 33);
  sub_1C4450520(v20);
  if (v22 == 0x64657261656C63 && v21 == 0xE700000000000000)
  {
    goto LABEL_19;
  }

  v24 = sub_1C4F02938();

  if (v24)
  {
    goto LABEL_20;
  }

  sub_1C4450520(v20);
  if (v26 == 0x657461636E757274 && v25 == 0xE900000000000064)
  {
LABEL_19:
  }

  else
  {
    v28 = sub_1C4F02938();

    if ((v28 & 1) == 0)
    {
      v29 = *(a8 + 64);
LABEL_21:
      v32 = sub_1C4459750(v29);
      v34 = v33;
      goto LABEL_27;
    }
  }

LABEL_20:
  v29 = *(a8 + 64);
  v30 = sub_1C4459750(v29);
  if (v31 >> 60 == 15)
  {
    goto LABEL_21;
  }

  sub_1C441DFEC(v30, v31);
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v35 = sub_1C4F00978();
  sub_1C442B738(v35, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CD8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    __dst[0] = v39;
    *v38 = 136315138;
    v40 = sub_1C444F05C(v94, v14);
    v42 = sub_1C441D828(v40, v41, __dst);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1C43F8000, v36, v37, "Expected nil bookmark for cleared/truncated view %s", v38, 0xCu);
    sub_1C440962C(v39);
    MEMORY[0x1C6942830](v39, -1, -1);
    MEMORY[0x1C6942830](v38, -1, -1);
  }

  v32 = 0;
  v34 = 0xF000000000000000;
LABEL_27:
  v43 = a6[6];
  v44 = v34 >> 60 == 15 && v43 >> 60 == 15;
  if (v43 >> 60 != 15 && v34 >> 60 != 15)
  {
    v46 = a6[5];
    sub_1C444C58C(a6, __dst);
    sub_1C4431E64(v32, v34);
    v44 = MEMORY[0x1C6938740](v46, v43, v32, v34);
    sub_1C441DFEC(v32, v34);
    sub_1C444053C(a6);
  }

  sub_1C4450520(v20);
  if (v48 == 0xD000000000000010 && 0x80000001C4F84260 == v47)
  {
    goto LABEL_56;
  }

  v50 = sub_1C4F02938();

  if (v50 & 1) != 0 || (a9 & 1) != 0 || (a7)
  {
    goto LABEL_57;
  }

  v95 = v32;
  v51 = *(a8 + 40);
  v90 = *(a8 + 57);
  v93 = *(a8 + 58);
  if (sub_1C4424B10(*(a8 + 58)) == 1701736302 && v52 == 0xE400000000000000)
  {
    goto LABEL_56;
  }

  v54 = sub_1C4F02938();

  if (v54)
  {
LABEL_57:
    if ((v44 & 1) == 0)
    {
      v62 = *a6;
      sub_1C4BB6FB0();
      v56 = v32;
      return sub_1C441DFEC(v56, v34);
    }

    v95 = v32;
    goto LABEL_59;
  }

  if ([v51 triggered])
  {
    goto LABEL_48;
  }

  sub_1C4450520(v20);
  if (v64 == 0xD000000000000014 && 0x80000001C4F84230 == v63)
  {
    goto LABEL_56;
  }

  v66 = sub_1C4F02938();

  if (v66)
  {
    goto LABEL_57;
  }

  sub_1C4450520(v20);
  if (v68 == 0x6465726F6E6769 && v67 == 0xE700000000000000)
  {
LABEL_56:

    goto LABEL_57;
  }

  v70 = sub_1C4F02938();

  if (v70)
  {
    goto LABEL_57;
  }

LABEL_48:
  sub_1C4458FE0(a10, v93);
  v55 = *a6;
  sub_1C445916C();
  v56 = v32;
  if (v10)
  {
    return sub_1C441DFEC(v56, v34);
  }

  v57 = a6[2];
  sub_1C4451548();
  sub_1C4452380(v57, v96, __src);
  sub_1C4409528(v90);
  if (v59 == 0x7055737961776C61 && v58 == 0xEC00000065746164)
  {

    goto LABEL_77;
  }

  v61 = sub_1C4F02938();

  if (v61)
  {
LABEL_77:
    sub_1C442AE14();
    v71 = v91[12];
    v72 = v91[13];
    sub_1C4409678(v91 + 9, v71);
    (*(v72 + 8))(v93, v71, v72);
    sub_1C44528B0(__src);
LABEL_59:
    v56 = v95;
    return sub_1C441DFEC(v56, v34);
  }

  if (*(&__src[2] + 1) == v19)
  {
    sub_1C44526E8();
    sub_1C4451548();
    sub_1C441DFEC(v32, v34);
    return sub_1C44528B0(__src);
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v73 = sub_1C4F00978();
    sub_1C442B738(v73, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453C5C(a8, __dst);
    sub_1C444AAD0(__src, __dst);
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CF8();

    sub_1C4452880(a8);
    sub_1C44528B0(__src);
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v101 = v77;
      *v76 = 136446722;
      v78 = sub_1C444AB08();
      v80 = sub_1C441D828(v78, v79, &v101);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2082;
      v81 = sub_1C4424B10(v93);
      v83 = sub_1C441D828(v81, v82, &v101);

      *(v76 + 14) = v83;
      *(v76 + 22) = 2082;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C444AAD0(__src, v98);
      v84 = sub_1C4F01198();
      v86 = sub_1C441D828(v84, v85, &v101);

      *(v76 + 24) = v86;
      _os_log_impl(&dword_1C43F8000, v74, v75, "ViewUpdate: %{public}s: re-adding to schedule %{public}s as source timestamp has changed since the update for %{public}s", v76, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v77, -1, -1);
      MEMORY[0x1C6942830](v76, -1, -1);
    }

    sub_1C442AE14();
    v87 = v91[12];
    v88 = v91[13];
    sub_1C4409678(v91 + 9, v87);
    (*(v88 + 8))(v93, v87, v88);
    sub_1C446769C();
    sub_1C441DFEC(v95, v34);
    return sub_1C44528B0(__src);
  }
}

uint64_t sub_1C4453C94()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C4453CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453D40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453D98()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C4453DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4453EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4453F54()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C4453FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44540B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4454110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454168()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C44541BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C445421C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FD3F8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454270()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FD3F8(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C44542C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4454378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44543D8()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C445442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C44544DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4454534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C445458C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C44545EC()
{
  v1 = *(v0 + 336);
  if (v1 == 1)
  {
    sub_1C4450520(*(v0 + 34));
    if (v3 == 0x6574656C706D6F63 && v2 == 0xE900000000000064)
    {
    }

    else
    {
      v5 = sub_1C4F02938();

      if ((v5 & 1) == 0)
      {
        v6 = *(v0 + 224);
        v7 = *(v0 + 232);
LABEL_11:
        v13 = sub_1C43FBC98();
        sub_1C4431E64(v13, v14);
        return sub_1C43FBC98();
      }
    }

    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    goto LABEL_11;
  }

  v8 = *(v0 + 344);
  v9 = *(v0 + 336);
  v10 = swift_unknownObjectRetain();
  sub_1C4440344(v10, v8);
  sub_1C4CC21C4(v1);
  return sub_1C43FBC98();
}

uint64_t sub_1C44546CC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C4F02128())
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    v26 = v3;
    v30 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x1C6940F90](v6, v3);
      }

      else
      {
        if (v6 >= *(v31 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 response];
      sub_1C4F01138();

      v12 = sub_1C4F025D8();

      if (v12 < 2)
      {
      }

      else
      {
        if (v12 - 2 < 4)
        {

          return 1;
        }

        if (qword_1EDDFD018 != -1)
        {
          swift_once();
        }

        v13 = sub_1C4F00978();
        sub_1C442B738(v13, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v14 = v9;
        v15 = sub_1C4F00968();
        v16 = sub_1C4F01CD8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v32 = v29;
          *v17 = 136315394;
          *(v17 + 4) = sub_1C441D828(a1, a2, &v32);
          *(v17 + 12) = 2080;
          v18 = i;
          v19 = [v14 response];
          v20 = sub_1C4F01138();
          v28 = v14;
          v21 = a2;
          v23 = v22;

          i = v18;
          v24 = sub_1C441D828(v20, v23, &v32);
          a2 = v21;

          *(v17 + 14) = v24;
          v3 = v26;
          _os_log_impl(&dword_1C43F8000, v15, v16, "Invalid response for %s: %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v29, -1, -1);
          MEMORY[0x1C6942830](v17, -1, -1);
        }

        else
        {
        }

        v7 = v30;
      }

      ++v6;
      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return 0;
}

_BYTE **sub_1C44549F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1C4454A08()
{
  v1 = v0[3];

  v2 = v0[6];

  sub_1C441DFEC(v0[11], v0[12]);
  sub_1C441DFEC(v0[13], v0[14]);
  v3 = v0[17];

  sub_1C441DFEC(v0[18], v0[19]);
  return v0;
}

uint64_t sub_1C4454A50()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_1C440C470();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 48);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_1C4454B98(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C441D828(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1C4454BF4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name);
  v2 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4454C3C(char a1)
{
  result = 0x64657461647075;
  switch(a1)
  {
    case 1:
      result = 0x6465727265666564;
      break;
    case 2:
      result = 0x6574616470556F6ELL;
      break;
    case 3:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4454CCC(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  sub_1C4EFD5D8();
  v5 = sub_1C4F02278();
  v7 = sub_1C441D828(v5, v6, a3);

  v9 = *a1;
  *v9 = v7;
  *a1 = v9 + 1;
  return result;
}

uint64_t sub_1C4454D24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v63 - v8);
  v10 = sub_1C4EF9CD8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v63 - v20);
  v22 = v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_config;
  result = type metadata accessor for Configuration();
  v24 = *(v22 + *(result + 20));
  if (qword_1EDDFFA60 != -1)
  {
LABEL_30:
    v69 = v24;
    result = swift_once();
    v24 = v69;
  }

  v25 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFFA68, v24), xmmword_1EDDFFA68));
  if (v25.i32[0] & v25.i32[1])
  {
    sub_1C440F1BC();
    swift_beginAccess();
    sub_1C44DDE2C();
    v26 = sub_1C440EF74();
    if (sub_1C44157D4(v26, v27, v10) == 1)
    {
      return sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v28 = *(v13 + 32);
      v29 = sub_1C447F668();
      v30(v29);
      sub_1C4EF9CC8();
      sub_1C4EF9B78();
      v32 = v31;
      v33 = *(v13 + 8);
      v13 += 8;
      v9 = v33;
      (v33)(v18, v10);
      if (v32 <= 5.0)
      {
        return (v9)(v21, v10);
      }

      else
      {
        v65 = a1;
        v66 = v9;
        v67 = v21;
        v68 = v13;
        v69.i64[0] = v10;
        v64 = v2;
        v18 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_requests);
        v70 = MEMORY[0x1E69E7CC0];
        a1 = sub_1C4428DA0();
        v2 = 0;
        v10 = v18 & 0xC000000000000001;
        v21 = &selRef_localizedName;
        while (a1 != v2)
        {
          if (v10)
          {
            v34 = MEMORY[0x1C6940F90](v2, v18);
          }

          else
          {
            if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v34 = *(v18 + 8 * v2 + 32);
          }

          v35 = v34;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if ([v34 triggered])
          {
            v9 = &v70;
            sub_1C4F02318();
            v13 = v70[2];
            sub_1C4F02358();
            sub_1C4F02368();
            sub_1C4F02328();
          }

          else
          {
          }

          ++v2;
        }

        v36 = v70;
        sub_1C4D1D528(v70);
        v38 = v37;
        v39 = sub_1C4D1D820(v36);
        v41 = v40;

        sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
        inited = swift_initStackObject();
        sub_1C449AF48(inited, xmmword_1C4F13950);
        v43 = *(v64 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name + 8);
        v44 = MEMORY[0x1E69E6158];
        inited[3].n128_u64[0] = *(v64 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name);
        inited[3].n128_u64[1] = v43;
        inited[4].n128_u64[1] = v44;
        strcpy(&inited[5], "durationMillis");
        inited[5].n128_u8[15] = -18;
        v45 = MEMORY[0x1E69E63B0];
        inited[6].n128_f64[0] = v32 * 1000.0;
        inited[7].n128_u64[1] = v45;
        inited[8].n128_u64[0] = 0x746C75736572;
        v46 = MEMORY[0x1E69E6530];
        v47 = v65;
        inited[8].n128_u64[1] = 0xE600000000000000;
        inited[9].n128_u64[0] = v47;
        inited[10].n128_u64[1] = v46;
        inited[11].n128_u64[0] = 0x6E6F69746361;
        inited[11].n128_u64[1] = 0xE600000000000000;
        inited[12].n128_u64[0] = v38;
        inited[13].n128_u64[1] = v46;
        inited[14].n128_u64[0] = 0x73656372756F73;
        inited[16].n128_u64[1] = v44;
        inited[14].n128_u64[1] = 0xE700000000000000;
        inited[15].n128_u64[0] = v39;
        inited[15].n128_u64[1] = v41;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = MEMORY[0x1E69E7CA0];
        v49 = sub_1C4F00F28();
        if (qword_1EDDFD018 != -1)
        {
          sub_1C441A86C();
          swift_once();
        }

        v50 = sub_1C4F00978();
        sub_1C43FCEE8(v50, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v51 = sub_1C4F00968();
        sub_1C4F01CC8();
        sub_1C4475E34();

        if (sub_1C443E1FC())
        {
          sub_1C43FECF0();
          v52 = swift_slowAlloc();
          sub_1C43FEC60();
          v53 = swift_slowAlloc();
          v70 = v53;
          *v52 = 136315138;
          v54 = sub_1C4F00EE8();
          sub_1C441D828(v54, v55, &v70);
          sub_1C443EFD8();

          *(v52 + 4) = v48;
          sub_1C4403218(&dword_1C43F8000, v56, v57, "ViewUpdate: PowerLog: %s");
          sub_1C440962C(v53);
          v58 = sub_1C4416E14();
          MEMORY[0x1C6942830](v58);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v59 = v69.i64[0];
        v61 = v66;
        v60 = v67;
        if (qword_1EDDF5340 != -1)
        {
          swift_once();
        }

        if (qword_1EDE2DD28)
        {
          sub_1C465DD4C(v49);
          sub_1C44036EC();
          v62 = sub_1C4F00EC8();

          PPSSendTelemetry();

          return (v61)(v60, v59);
        }

        else
        {
          (v61)(v60, v59);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4455364()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17] + v0[29];
  return v0[26];
}

uint64_t sub_1C4455394()
{
  result = *(v0 - 160);
  v2 = *(v0 - 152);
  v3 = *(v0 - 176);
  v4 = *(v0 - 168);
  return result;
}

__n128 sub_1C4455428()
{
  v2 = *(v0 + 576);
  *(v1 - 240) = *(v0 + 560);
  *(v1 - 224) = v2;
  result = *(v0 + 592);
  *(v1 - 208) = result;
  return result;
}

double sub_1C445543C()
{
  result = 0.0;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

uint64_t sub_1C4455448()
{

  return sub_1C4EFF808();
}

uint64_t sub_1C4455478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(a21 + 16);
  v22 = *(a21 + 24);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44554A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C440BAA8(a1, a2, a3, v3);

  return sub_1C4EFC0A8();
}

uint64_t sub_1C44554F0()
{
  v2 = *(v0 - 200);

  return sub_1C4F02658();
}

uint64_t sub_1C445555C()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  v4 = *(v0 - 120);
  v5 = *(v0 - 88);

  return sub_1C4F02658();
}

uint64_t sub_1C4455598()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_signpost, &qword_1EC0C6438, &qword_1C4F6D808);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_startDate, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_name + 8);

  v2 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_requests);

  sub_1C44544DC(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate14SignpostHelper_config, type metadata accessor for Configuration);
  return v0;
}

uint64_t sub_1C4455638()
{
  sub_1C4455598();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C44556E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C44556FC()
{
  sub_1C4454A08();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4455744()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for Configuration() + 20));
  if (qword_1EDDFA628 != -1)
  {
    sub_1C442CC60();
    v17 = v16;
    swift_once();
    v2 = v17;
  }

  v3.n128_u64[0] = sub_1C43FC158(xmmword_1EDDFA630, v2);
  if (v4)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDF8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v8, v9, "IntelligencePlatformComputeSystem: Tearing down...");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v10 = *(v0 + 16);

    type metadata accessor for ViewGeneration.ViewClients(0);
    sub_1C4C819E0(v10);
    if (qword_1EDDFB828 != -1)
    {
      sub_1C43FF20C();
    }

    v11 = *(v0 + 16);
    sub_1C49497C0();
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    v12 = *(v0 + 16);
    sub_1C4949780();
    if (qword_1EDDFE628 != -1)
    {
      sub_1C4402394();
    }

    v13 = *(v0 + 16);
    sub_1C4949814();
    static ViewUpdate.GenerationRunnerSingleton.deinitInstance(for:)(v13);
    static IntelligencePlatformComputeSystem.tearDownDatabases(config:)(v13);
  }

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t sub_1C4455938()
{
  v3 = *(v1 - 352);

  return sub_1C447E868(v0, v3);
}

uint64_t sub_1C4455960()
{
  v3 = *(v1 - 176);
  v4 = *v3;
  v5 = v3[1];
  *(v1 - 128) = *(v1 - 344);
  *(v1 - 120) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44559B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C441D828(a1, a2, &a9);
}

uint64_t sub_1C44559D0(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_1C4455A0C()
{
  v3 = *(v1 - 168);
  *(v1 - 224) = v0;
  v4 = *(v3 + 20);

  return sub_1C4EFEEF8();
}

uint64_t sub_1C4455A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 256);
  v5 = *(v1 - 328);
  v6 = *(v1 - 128);

  return sub_1C4F026C8();
}

uint64_t sub_1C4455A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = *(a1 + 8);
  v81 = *a1;
  v14 = *(a1 + 16);
  updated = _s17ViewUpdateRequestVMa(0);
  v86 = v7;
  v87 = v12;
  v88 = v4;
  v80 = *(v7 + 16);
  v80(v12, a1 + *(updated + 28), v4);
  v103[0] = MEMORY[0x1E69E7CC8];
  v16 = *(a1 + 48);
  v90 = *(v16 + 16);
  v91 = v13;
  v83 = a1;
  v92 = v14;
  if (v90)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = 0;
    v18 = (v16 + 50);
    v19 = MEMORY[0x1E69E7CC8];
    v89 = v16;
    while (v17 < *(v16 + 16))
    {
      v93 = v17;
      v20 = *(v18 - 10);
      v94 = *(v18 - 2);
      v95 = *(v18 - 1);
      v96 = *v18;
      v21 = *(v18 - 18);
      v22 = [v21 configIdentifier];
      v23 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      *&v100 = v19;
      v24 = v22;
      v25 = sub_1C4459558(v22);
      if (__OFADD__(v19[2], (v26 & 1) == 0))
      {
        goto LABEL_41;
      }

      v27 = v25;
      v28 = v26;
      sub_1C456902C(&qword_1EC0BA798, &qword_1C4F146C8);
      if (sub_1C4F02458())
      {
        v29 = sub_1C4459558(v24);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_43;
        }

        v27 = v29;
      }

      v19 = v100;
      if (v28)
      {
        v31 = (*(v100 + 56) + 24 * v27);
        v32 = *v31;
        sub_1C44D403C(v31);
      }

      else
      {
        *(v100 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        *(v19[6] + 8 * v27) = v24;
        sub_1C44D403C(v19[7] + 24 * v27);
        v33 = v19[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_42;
        }

        v19[2] = v35;
      }

      v17 = v93 + 1;
      v18 += 24;
      v16 = v89;
      if (v90 == v93 + 1)
      {
        v103[0] = v19;
        a1 = v83;
        v36 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    sub_1C4461BB8(0, &qword_1EDDDB8A8, 0x1E69A9EE8);
    result = sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v36 = MEMORY[0x1E69E7CC8];
LABEL_15:
    v37 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v38 = sub_1C43FFE24();
    v41 = sub_1C4440254(v38, v39, v40, 0xE700000000000000, 0);
    v42 = *(a1 + 24);
    v43 = *(a1 + 32);
    v44 = *(a1 + 42);
    v45 = *(a1 + 40);
    v46 = v41;
    v47 = v42;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44595F4(v47, v45 | (v44 << 16), v46, v43);

    v103[0] = v36;
    memset(v102, 0, sizeof(v102));
    v100 = 0u;
    v101 = 0u;
    v99 = 0;
    v48 = v46;
    v49 = sub_1C44563A8(a2, v103, &v99, v48, &v100);
    if (v84)
    {
      (*(v86 + 8))(v87, v88);

      sub_1C44081DC();
      sub_1C44544DC(a1, v50);
      sub_1C447F8A0();
      sub_1C4420C3C(&v97, &qword_1EC0C6458, qword_1C4F6D890);
    }

    else
    {
      v52 = v49;

      v53 = _s17ViewUpdateResultsVMa(0);
      *(a3 + v53[10]) = v52;
      v54 = v100;
      v55 = BYTE1(v102[0]);
      if (*(&v100 + 1))
      {
        v56 = v53;
        *a3 = v81;
        a3[1] = v91;
        a3[2] = v92;
        v57 = a3 + v53[9];
        *v57 = v54;
        *(v57 + 1) = v101;
        v57[32] = v102[0];
        v57[33] = v55;
        *(v57 + 34) = *(v102 + 2);
        *(v57 + 50) = *(&v102[2] + 2);
        *(v57 + 8) = v102[4];
        v80(a3 + v53[5], v87, v88);
        sub_1C4450520(v55);
        if (v59 == 0x64657261656C63 && v58 == 0xE700000000000000)
        {
          sub_1C4401FB8();

          v62 = 1;
          v63 = v83;
          v64 = v86;
        }

        else
        {
          v61 = sub_1C4F02938();
          sub_1C4401FB8();

          if (v61)
          {
            v62 = 1;
            v63 = v83;
            v64 = v86;
          }

          else
          {
            sub_1C4450520(v55);
            v79 = v78 == 0x657461636E757274 && v77 == 0xE900000000000064;
            v63 = v83;
            v64 = v86;
            if (v79)
            {

              v62 = 1;
            }

            else
            {
              v62 = sub_1C4F02938();
            }
          }
        }

        *(a3 + v56[6]) = v62 & 1;
        sub_1C4450520(v55);
        if (v73 == 0xD000000000000010 && 0x80000001C4F84260 == v72)
        {
          v75 = 1;
        }

        else
        {
          v75 = sub_1C4F02938();
        }

        (*(v64 + 8))(v87, v88);
        sub_1C44081DC();
        sub_1C44544DC(v63, v76);
        *(a3 + v56[8]) = v75 & 1;
        *(a3 + v56[7]) = v99;
        sub_1C447F8A0();
        sub_1C4420C3C(&v97, &qword_1EC0C6458, qword_1C4F6D890);
      }

      else
      {
        sub_1C4F02248();

        sub_1C43FBDF0();
        v97 = 0xD000000000000026;
        v98 = v65;
        v66 = sub_1C444AB08();
        v68 = v67;

        MEMORY[0x1C6940010](v66, v68);

        v69 = v98;
        sub_1C446D0DC();
        sub_1C441C114();
        swift_allocError();
        *v70 = 0xD000000000000026;
        v70[1] = v69;
        sub_1C442F9BC(v70, 3);
        swift_willThrow();

        (*(v86 + 8))(v87, v88);
        sub_1C44081DC();
        sub_1C44544DC(v83, v71);
        sub_1C447F8A0();
        sub_1C4420C3C(&v97, &qword_1EC0C6458, qword_1C4F6D890);
      }
    }
  }

  return result;
}

uint64_t sub_1C4456268()
{

  return sub_1C440962C((v0 - 120));
}

uint64_t sub_1C4456294()
{
  v4 = *(v1 - 248);
  v3 = *(v1 - 240);
  v5 = *(v1 - 256);
  v6 = *(v1 - 224);

  return sub_1C47F1518(v3, v4, v0, v1 - 136);
}

uint64_t sub_1C44562D0()
{
  *(v1 - 504) = v0;
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4456348()
{
  v3 = *(v0 - 256);
  v4 = *(v1 - 240);

  return sub_1C4F02658();
}

uint64_t sub_1C445636C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 136);
  v5 = *(v1 - 128);

  return sub_1C4F026C8();
}

uint64_t sub_1C44563A8(uint64_t a1, uint64_t *a2, _BYTE *a3, void *a4, void *a5)
{
  v33 = sub_1C4428DA0(a1);
  v8 = 0;
  v27 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v8; ; ++i)
  {
    if (v33 == i)
    {

      return v27;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      JUMPOUT(0x1C44568B4);
    }

    v11 = *a2;
    v12 = v10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4458178(v12, v11, __src);
    if (v5)
    {
      break;
    }

    memcpy(__dst, __src, sizeof(__dst));
    switch(LOBYTE(__src[4]))
    {
      case 4:
LABEL_14:

        break;
      default:
        v13 = sub_1C4F02938();

        if ((v13 & 1) == 0)
        {
          v14 = BYTE1(__src[4]);
          switch(BYTE1(__src[4]))
          {
            case 1:
              goto LABEL_14;
            default:
              v15 = sub_1C4F02938();

              if ((v15 & 1) == 0)
              {
                switch(v14)
                {
                  case 0:
                    goto LABEL_14;
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                    v18 = sub_1C4F02938();

                    if ((v18 & 1) == 0)
                    {
                      *a3 = 1;
                    }

                    goto LABEL_15;
                  default:
                    JUMPOUT(0);
                }
              }

              return result;
          }
        }

        return result;
    }

LABEL_15:
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    v16 = [__src[8] configIdentifier];
    v17 = sub_1C4F01EE8();

    if ((v17 & 1) == 0)
    {

      v19 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v27 + 16);
        sub_1C4458A50();
        v19 = v22;
      }

      v20 = *(v19 + 16);
      if (v20 >= *(v19 + 24) >> 1)
      {
        sub_1C4458A50();
        v19 = v23;
      }

      *(v19 + 16) = v20 + 1;
      v27 = v19;
      memcpy((v19 + 72 * v20 + 32), __src, 0x48uLL);
      goto LABEL_2;
    }

    memcpy(v30, a5, sizeof(v30));
    memcpy(a5, __dst, 0x48uLL);
    sub_1C4420C3C(v30, &qword_1EC0C6458, qword_1C4F6D890);
  }

  v24 = v27;

  return v24;
}

uint64_t sub_1C44568F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1C4459558(a1), (v4 & 1) != 0))
  {
    sub_1C447E2D4(v3);
    v6 = *(v5 + 16) | (*(v5 + 18) << 16);
    v7 = v2;
  }

  else
  {
    sub_1C4455358();
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C4456960()
{

  return swift_arrayInitWithCopy();
}

void sub_1C44569F0()
{

  sub_1C459CF48();
}

uint64_t sub_1C4456A58@<X0>(void *a1@<X8>, double a2@<D0>)
{
  *a1 = *(v2 - 256);
  a1[1] = v3;
  v10 = (v6 + v7[10]);
  *v10 = v5;
  v10[1] = v4;
  *(v6 + v7[11]) = a2;
  *(v6 + v7[12]) = *(v8 - 244);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4456AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v115 = a7;
  v114 = a6;
  v125 = a5;
  v124 = a4;
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v112 - v18;
  sub_1C43FBE44();
  v19 = sub_1C4EFB768();
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v119 = sub_1C4EF9CD8();
  v25 = sub_1C43FCDF8(v119);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v122 = v31 - v30;
  sub_1C4EF9C88();
  swift_unownedRetainStrong();
  v118 = a1;
  v123 = a2;
  v32 = sub_1C4440C6C(a1);
  v116 = a8;
  if (a8)
  {
    if (!v8)
    {
      v113 = v27;
      v33 = 240;
      goto LABEL_9;
    }

LABEL_5:
    (*(v27 + 8))(v122, v119);
    v34 = &v133;
    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v113 = v27;
  v33 = 248;
LABEL_9:

  v37 = *(v32 + v33);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E6530];
  *(v38 + 16) = xmmword_1C4F0D130;
  v40 = MEMORY[0x1E69A0180];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  *(v38 + 32) = a3;
  sub_1C4EFB728();
  sub_1C4EFC088();
  v41 = *(v22 + 8);
  v42 = sub_1C43FE5F8();
  v43(v42);
  sub_1C4EFBC58();
  v44 = v132;
  sub_1C43FCF64();
  sub_1C440BAA8(v45, v46, v47, v19);
  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v48 = sub_1C4EFBBC8();
  v112 = v37;
  sub_1C4420C3C(v127, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v44, &unk_1EC0C06C0, &unk_1C4F10DB0);
  v126 = MEMORY[0x1E69E7CC8];
  v120 = a3;
  v121 = v48;
  while (1)
  {
    v49 = v48;
    v50 = sub_1C4458EE8();
    if (v9)
    {
      v78 = sub_1C4432E8C();
      v79(v78);

      sub_1C445FC3C();
    }

    v51 = v50;
    if (!v50)
    {
      break;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440C0F8();
    v52 = sub_1C4EFBBE8();
    if (v52)
    {
      v132 = 0;
      MEMORY[0x1EEE9AC00](v52);
      sub_1C44417A0();
      *(v53 - 16) = v51;
      *(v53 - 8) = 0;
      v55 = sqlite3_column_type(v54, 0);
      if (v55 == 5)
      {
        MEMORY[0x1EEE9AC00](v55);
        sub_1C43FD954();
        *(v105 - 16) = sub_1C487BF24;
        *(v105 - 8) = v19;
        sub_1C44628BC();
        goto LABEL_44;
      }

      v56 = sub_1C4F011E8();
      v58 = v57;
    }

    else
    {
      sub_1C4EFBB98();
      v132 = 0;
      v58 = *(&v127[0] + 1);
      v56 = *&v127[0];
    }

    sub_1C440C0F8();
    v59 = sub_1C4EFBBE8();
    if (v59)
    {
      MEMORY[0x1EEE9AC00](v59);
      sub_1C44417A0();
      *(v60 - 16) = v51;
      *(v60 - 8) = 1;
      v62 = sqlite3_column_type(v61, 1);
      if (v62 == 5 || (sub_1C440EF74(), v62 = sub_1C4F02AA8(), v63 = v62, v62 != v62))
      {
        MEMORY[0x1EEE9AC00](v62);
        sub_1C43FD954();
        *(v104 - 16) = sub_1C487BF24;
        *(v104 - 8) = v19;
        sub_1C440EF74();
LABEL_44:
        v106 = v132;
        sub_1C4EFB968();
        v132 = v106;
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C4488280();
      v132 = 0;
      v63 = LODWORD(v127[0]);
    }

    sub_1C440C0F8();
    v64 = sub_1C4EFBBE8();
    if (v64)
    {
      v65 = MEMORY[0x1EEE9AC00](v64);
      v110 = v51;
      v111 = 2;
      v66 = sqlite3_column_type(v65, 2);
      if (v66 == 5)
      {
        goto LABEL_45;
      }

      *&v127[0] = sub_1C4F011E8();
    }

    else
    {
      sub_1C4488280();
      v132 = 0;
    }

    sub_1C440C0F8();
    v67 = sub_1C4EFBBE8();
    if (v67)
    {
      v19 = &v112;
      v68 = MEMORY[0x1EEE9AC00](v67);
      v110 = v51;
      v111 = 3;
      v66 = sqlite3_column_type(v68, 3);
      if (v66 == 5)
      {
LABEL_45:
        MEMORY[0x1EEE9AC00](v66);
        sub_1C43FD954();
        *(v107 - 16) = sub_1C487BF24;
        *(v107 - 8) = &v112 - 4;
        sub_1C44628BC();
        v108 = v132;
        sub_1C4EFB968();
        v132 = v108;
        goto LABEL_46;
      }

      v69 = sub_1C4F011E8();
      v71 = v70;
      *&v127[0] = v69;
    }

    else
    {
      sub_1C4488280();
      v132 = 0;
      v71 = *(&v127[0] + 1);
    }

    v110 = v71;
    v72 = objc_allocWithZone(MEMORY[0x1E69A9EE8]);
    v73 = sub_1C4440254(v124, v125, v56, v58, v63);
    sub_1C440C0F8();
    v74 = sub_1C4EFBBE8();
    if (v74)
    {
      v72 = v74;
      MEMORY[0x1EEE9AC00](v74);
      sub_1C44417A0();
      *(v75 - 16) = v51;
      *(v75 - 8) = 4;
      v77 = sqlite3_column_type(v76, 4);
      a3 = v120;
      v48 = v121;
      v9 = v132;
      if (v77 == 5)
      {
        while (1)
        {
          MEMORY[0x1EEE9AC00](v77);
          sub_1C43FD954();
          *(v109 - 16) = sub_1C487BDA4;
          *(v109 - 8) = v19;
          sub_1C44628BC();
          sub_1C4EFB968();
LABEL_46:
          v77 = swift_unexpectedError();
          __break(1u);
        }
      }

      v19 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C4488280();
      v9 = 0;
      a3 = v120;
      v48 = v121;
      v19 = *&v127[0];
    }

    sub_1C44D0BA8();
    swift_isUniquelyReferenced_nonNull_native();
    *&v127[0] = v72;
    sub_1C4457A48();

    v126 = *&v127[0];
  }

  v80 = *(v114 + 16);
  v81 = (v114 + 32);
  v82 = v115 & 1;
  while (1)
  {
    sub_1C44D0BA8();
    if (!v80)
    {
      break;
    }

    memcpy(__dst, v81, sizeof(__dst));
    v83 = __dst[8];
    sub_1C4453C5C(__dst, v127);
    v84 = [v83 configIdentifier];
    if (!*(v49 + 16) || (sub_1C44D0BA8(), sub_1C4459558(v85), sub_1C44D0BA8(), (v87 & 1) == 0))
    {

      *&v127[0] = 0;
      *(&v127[0] + 1) = 0xE000000000000000;
      sub_1C4F02248();

      sub_1C43FBDF0();
      *&v127[0] = 0xD000000000000024;
      *(&v127[0] + 1) = v92;
      v93 = [v83 configIdentifier];
      v94 = [v93 description];
      v95 = sub_1C4F01138();
      v97 = v96;

      MEMORY[0x1C6940010](v95, v97);

      v98 = v127[0];
      sub_1C446D0DC();
      sub_1C441C114();
      swift_allocError();
      *v99 = v98;
      sub_1C442F9BC(v99, 2);
      swift_willThrow();
      sub_1C445FC3C();

      sub_1C4452880(__dst);
      v100 = sub_1C4432E8C();
      v101(v100);
    }

    v88 = *(*(v49 + 56) + 8 * v86);

    v89 = v118;
    v90 = v123;
    sub_1C4457B8C();
    v91 = v90;
    v49 = v117;
    sub_1C44532C4(v89, v91, a3, v124, v125, v129, v116 & 1, __dst, v82, v122);
    sub_1C444053C(v129);
    sub_1C4452880(__dst);
    v81 += 72;
    --v80;
  }

  v102 = sub_1C4432E8C();
  v103(v102);

  sub_1C445FC3C();
  v34 = &v131;
LABEL_6:
  v35 = *(v34 - 32);
}

uint64_t sub_1C44577E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C445782C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C445782C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = sub_1C4EFB4D8();
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1C4457890()
{

  return type metadata accessor for PhaseStores();
}

uint64_t sub_1C44578A8()
{

  return MEMORY[0x1EEE6DC30](v0, 0);
}

void sub_1C44578D4()
{
  v1 = *(v0 - 376);
  v2 = *(v0 - 384);
  v3 = *(v0 - 360);
}

uint64_t sub_1C44578F0()
{

  return sub_1C4F02438();
}

uint64_t sub_1C4457910()
{
  *(v2 + *(v1 + 48)) = v0;
  *(v2 + *(v1 + 52)) = 0;
  v6 = *(v4 - 176);
  v7 = *(v4 - 216);

  return sub_1C4471988(v6, v3);
}

uint64_t sub_1C4457944()
{
  v2 = *(v0 - 256);

  return swift_arrayDestroy();
}

__n128 sub_1C4457964(__n128 *a1)
{
  result = *(v1 - 288);
  a1[1] = result;
  return result;
}

uint64_t sub_1C4457984()
{

  return swift_unownedRetain();
}

uint64_t sub_1C44579C0@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 - 200) + a1);
  v4 = *v3;
  v5 = v3[1];
  *(v1 - 65) = 6;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C44579E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 348);
  v9 = *(v6 - 348);

  _os_log_impl(a1, v4, v9, a4, v5, 0x1Cu);
}

uint64_t sub_1C4457A10(uint64_t a1)
{

  return sub_1C44157D4(v1, 1, a1);
}

unint64_t sub_1C4457A48()
{
  v2 = v1;
  sub_1C44041A4();
  v15 = v3;
  v4 = sub_1C4459558(v3);
  sub_1C442C5D8(v4, v5);
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  sub_1C456902C(&qword_1EC0BA790, &qword_1C4F146C0);
  result = sub_1C4423638();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *v1;
  result = sub_1C4459558(v15);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1C4461BB8(0, &qword_1EDDDB8A8, 0x1E69A9EE8);
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v14 = *v2;
  if (v10)
  {
    *(*(v14 + 56) + 8 * v9) = v0;
  }

  else
  {
    sub_1C4457B50(v9, v15, v0, v14);

    return v15;
  }

  return result;
}

void sub_1C4457B50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C441F324(a1, a2, a3, a4);
  *(*(v5 + 48) + 8 * v4) = v6;
  sub_1C440572C(v4, v8, v7, v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1C4431E88(v9, v10);
  }
}

void sub_1C4457B8C()
{
  sub_1C4414FE4();
  v3 = v2;
  *&v34 = v4;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35[-1] - v11;
  v13 = sub_1C4EFB768();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C44247B4();
  v19 = sub_1C4440C6C(v3);

  if (!v0)
  {
    v43 = v6;
    v20 = *(v19 + 176);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E6530];
    *(v21 + 16) = xmmword_1C4F0D130;
    v23 = MEMORY[0x1E69A0180];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    v24 = v34;
    *(v21 + 32) = v34;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v16 + 8))(v1, v13);
    sub_1C440BAA8(v12, 1, 1, v13);
    sub_1C444C538();
    memset(v35, 0, sizeof(v35));
    v36 = 0;
    sub_1C43FE990();
    sub_1C4EFB408();
    sub_1C4423A0C(v35, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4423A0C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v25 = v42;
    if (v42 >> 60 == 11)
    {
      *&v35[0] = v24;
      v26 = sub_1C4F02858();
      v28 = v27;
      sub_1C450B034();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0xD000000000000013;
      *(v29 + 24) = 0x80000001C4F87A80;
      *(v29 + 32) = 0xD00000000000001DLL;
      *(v29 + 40) = 0x80000001C4FB6260;
      *(v29 + 48) = v35[0];
      *(v29 + 64) = 0;
      swift_willThrow();
    }

    else
    {
      v30 = v41;
      v32 = v39;
      v31 = v40;
      v33 = v38;
      v34 = v37;

      *v43 = v34;
      *(v43 + 16) = v33;
      *(v43 + 24) = v32;
      *(v43 + 32) = v31;
      *(v43 + 40) = v30;
      *(v43 + 48) = v25;
    }
  }

  sub_1C440A17C();
}

uint64_t sub_1C4457EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v16 = *(v14 + 96);
  v15 = *(v14 + 104);
  v17 = *(v14 + 72);
  v18 = *(v14 + 56);
  v19 = *(v14 + 40);
  sub_1C4459500();
  sub_1C4455A6C(v18, v15, v17);
  if (v16)
  {
    v29 = *(v14 + 72);
    v30 = *(v14 + 56);

    sub_1C43FC560();
    sub_1C43FD0C0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v20 = *(v14 + 72);
    v22 = *(v14 + 40);
    v21 = *(v14 + 48);
    HIDWORD(a9) = *(v14 + 113);
    v23 = *(v14 + 112);
    v24 = *(v14 + 24);
    v25 = *(v14 + 32);
    v26 = *(v14 + 16);
    v51 = *(v21 + 16);
    v27 = swift_task_alloc();
    *(v27 + 16) = v22;
    *(v27 + 24) = v20;
    *(v27 + 32) = v26;
    *(v27 + 40) = v24;
    *(v27 + 48) = v25;
    *(v27 + 56) = v21;
    *(v27 + 64) = BYTE4(a9);
    *(v27 + 65) = v23;
    sub_1C4422934();

    v28 = *(v14 + 72);
    v41 = *(v14 + 56);
    v40 = *(v14 + 64);
    v42 = *(v28 + *(v40 + 28));
    LODWORD(v20) = *(v28 + *(v40 + 32));
    sub_1C448F268();

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, v51, a11, a12, a13, a14);
  }
}

unint64_t sub_1C4458058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1C445959C();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1C4F01EE8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1C4458118(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, double a6)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  *(a5[6] + 8 * a1) = a2;
  v6 = a5[7] + 24 * a1;
  *v6 = a3;
  *(v6 + 8) = a6;
  *(v6 + 16) = a4;
  *(v6 + 18) = BYTE2(a4);
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    sub_1C43FEA08(a5, v9);
  }
}

void sub_1C4458178(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [a1 configIdentifier];
  v8 = sub_1C44568F8(v7, a2);
  v10 = v9;
  v12 = v11;

  if (!v8)
  {
    sub_1C43FBFCC();
    sub_1C4F02248();

    sub_1C43FBDF0();
    v33 = v22;
    v23 = [a1 configIdentifier];
    v24 = [v23 description];
    sub_1C4F01138();

    v25 = sub_1C43FD2BC();
    MEMORY[0x1C6940010](v25);

    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v26 = 0xD00000000000001CLL;
    v26[1] = v33;
    sub_1C442F9BC(v26, 3);
    swift_willThrow();
LABEL_7:

    return;
  }

  v13 = [a1 response];
  sub_1C4F01138();
  sub_1C44B9050();

  v14 = sub_1C4458924();
  if (v14 == 6)
  {
    sub_1C43FBFCC();
    sub_1C4F02248();

    sub_1C43FBDF0();
    v32 = v15;
    v16 = [a1 response];
    sub_1C4F01138();

    v17 = sub_1C43FD2BC();
    MEMORY[0x1C6940010](v17);

    MEMORY[0x1C6940010](0x20726F6620, 0xE500000000000000);
    v18 = [a1 configIdentifier];
    v19 = [v18 description];
    sub_1C4F01138();

    v20 = sub_1C43FFE24();
    MEMORY[0x1C6940010](v20);

    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v21 = 0xD000000000000017;
    v21[1] = v32;
    sub_1C442F9BC(v21, 3);
    swift_willThrow();
LABEL_6:

    goto LABEL_7;
  }

  v27 = v14;
  v28 = sub_1C443ED0C([a1 configIdentifier]);
  if (v3)
  {
    goto LABEL_6;
  }

  *a3 = v28;
  *(a3 + 8) = v29;
  *(a3 + 16) = v30;
  *(a3 + 24) = v31;
  *(a3 + 32) = v12;
  *(a3 + 33) = v27;
  *(a3 + 40) = v8;
  *(a3 + 48) = v10;
  *(a3 + 56) = v12;
  *(a3 + 58) = BYTE2(v12);
  *(a3 + 64) = a1;
}

void sub_1C44584C0()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44584F4()
{
  sub_1C440962C(v0 + 9);
  sub_1C440962C(v0 + 4);
  v0[2] = 0;
}

id sub_1C4458538(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1C4458550()
{
  result = *(v0 - 392);
  v2 = *(v0 - 208);
  return result;
}

void sub_1C4458568()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C44585A0()
{

  JUMPOUT(0x1C693FEF0);
}

void sub_1C44585EC(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 152);
  v4 = *(v1 - 136);
}

char *sub_1C4458664(uint64_t a1)
{
  *(v2 - 136) = v1;

  return sub_1C459D488(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1C4458688()
{
}

uint64_t sub_1C44586A4(uint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(v2 - 72);

  return sub_1C45A8B28(v1, v4, v5);
}

__n128 sub_1C44586C4()
{
  v2 = *(v0 + 16);
  *(v1 - 80) = *v0;
  *(v1 - 64) = v2;
  result = *(v0 + 28);
  *(v1 - 52) = result;
  return result;
}

uint64_t sub_1C44586F8()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4458710()
{
  v3 = *(v1 - 288);

  return sub_1C441D828(v3, v0, (v1 - 240));
}

uint64_t sub_1C445874C()
{
  v2 = *(v0 - 1104);
  v3 = *(v0 - 1112);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44587AC(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C44587CC()
{

  return sub_1C4EFB638();
}

unint64_t sub_1C44587E4(uint64_t a1)
{

  return sub_1C4AB180C(a1);
}

uint64_t sub_1C4458808()
{

  return sub_1C4440C6C(v0);
}

void sub_1C4458820()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
}

uint64_t sub_1C4458830()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);

  return sub_1C444AF3C(v0 + 16);
}

uint64_t sub_1C445886C(uint64_t a1, uint64_t a2)
{
  sub_1C440BAA8(*(v4 - 128), a2, 1, v3);

  return sub_1C448D818(v2);
}

uint64_t sub_1C44588F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  *v5 = result;
  v5[1] = a2;
  *(v4 - 69) = 6;
  return result;
}

uint64_t sub_1C4458924()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4458970(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

void sub_1C44589B0()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v7 == v8)
  {
LABEL_7:
    sub_1C44108C0(v6);
    if (v3)
    {
      sub_1C4422208(v9, v10, v11, v12, v13, v14);
      v15 = sub_1C4440F6C();
      sub_1C43FEA8C(v15);
      if (v2)
      {
LABEL_9:
        v16 = sub_1C44330CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_12:

        sub_1C4422220();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v7)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1C4458A80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

void sub_1C4458AA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10)
{
  updated = _s17ViewUpdateRequestVMa(0);
  v17 = *(a3 + *(updated + 32));
  if (v17 == 1)
  {
    v18 = _s17ViewUpdateResultsVMa(0);
    if (*(a4 + *(v18 + 32)) == 1)
    {
      v19 = v18;
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42 = v37;
        *v23 = 136446210;
        v24 = sub_1C444AB08();
        v36 = v22;
        v26 = a5;
        v27 = sub_1C441D828(v24, v25, &v42);

        *(v23 + 4) = v27;
        a5 = v26;
        _os_log_impl(&dword_1C43F8000, v21, v36, "ViewUpdate: %{public}s: Full rebuild did not complete. Storing view bookmarks for full rebuild", v23, 0xCu);
        sub_1C440962C(v37);
        MEMORY[0x1C6942830](v37, -1, -1);
        MEMORY[0x1C6942830](v23, -1, -1);
      }

      sub_1C4456AA4(a1, a2, a5, a6, a7, *(a4 + *(v19 + 40)), 0, 1);
      if (!v10 && (a9 & 1) != 0)
      {
        sub_1C4BBAC48();
      }

      return;
    }
  }

  v38 = a3;
  v28 = _s17ViewUpdateResultsVMa(0);
  sub_1C4456AA4(a1, a2, a5, a6, a7, *(a4 + v28[10]), 0, 0);
  if (v10)
  {
    return;
  }

  sub_1C44516D8(a1, a2, a10, a4, a9 & 1);
  if (v17)
  {
    sub_1C4BB71C8();
  }

  v29 = a8;
  if (a10 != 11)
  {
    if (sub_1C4424B10(a10) == 1702259052 && v30 == 0xE400000000000000)
    {
    }

    else
    {
      v32 = sub_1C4F02938();

      if ((v32 & 1) == 0)
      {
        v29 = a8;
        if ((*(a4 + v28[8]) & 1) == 0)
        {
          if (__OFADD__(a5, 1))
          {
            __break(1u);
            return;
          }

          sub_1C4BB4E1C(a10, a5 + 1, a1);
        }

        goto LABEL_26;
      }
    }

    v29 = a8;
  }

LABEL_26:
  if (*(a4 + v28[7]) == 1 && *(v38 + *(updated + 48)) == 1)
  {
    v33 = *(v29 + 112);
    if (v33)
    {
      v34 = objc_allocWithZone(MEMORY[0x1E698EC58]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v35 = sub_1C4D1DD80(a6, a7);
      [v33 sendEvent_];
    }
  }
}

uint64_t sub_1C4458EE8()
{
  sub_1C43FC20C();
  if (sub_1C4EFB4B8())
  {
    return 0;
  }

  sub_1C4EFB2A8();
  sub_1C43FBE94();
  sub_1C4EFBC58();

  sub_1C4EFC098();
  sub_1C4460A3C();

  if (!v0)
  {
    result = v2;
    if (!v2)
    {
      sub_1C4416AA8();
      sub_1C4EFB4C8();
      return 0;
    }
  }

  return result;
}

double sub_1C4458FE0(uint64_t a1, char a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = 0.0;
  switch(a2)
  {
    case 1:
      sub_1C4EF9B58();
      goto LABEL_4;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      sub_1C4EF9BE8();
LABEL_4:
      sub_1C4EF9AD8();
      v9 = v10;
      v11 = *(v6 + 8);
      v12 = sub_1C4404C28();
      v13(v12);
      break;
    default:
      return v9;
  }

  return v9;
}

void sub_1C445916C()
{
  sub_1C4414FE4();
  v4 = v3;
  v39 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C440101C();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C44247B4();
  v24 = sub_1C4440C6C(v4);

  if (!v1)
  {
    v25 = *(v24 + 208);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C4F0D480;
    v27 = MEMORY[0x1E69E63B0];
    v28 = MEMORY[0x1E69A0168];
    *(v26 + 56) = MEMORY[0x1E69E63B0];
    *(v26 + 64) = v28;
    *(v26 + 32) = v11;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 72) = v9;
    v29 = v39;
    if (v39 >> 60 == 15)
    {
      sub_1C44053F0();
      *(v26 + 128) = 0;
    }

    else
    {
      v30 = MEMORY[0x1E699FD70];
      v31 = MEMORY[0x1E6969080];
      v32 = v7;
      v33 = v39;
    }

    *(v26 + 112) = v32;
    *(v26 + 120) = v33;
    v34 = MEMORY[0x1E69E6530];
    *(v26 + 136) = v31;
    *(v26 + 144) = v30;
    v35 = MEMORY[0x1E69A0180];
    *(v26 + 176) = v34;
    *(v26 + 184) = v35;
    *(v26 + 152) = v13;
    sub_1C4431E64(v7, v29);
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v21 + 8))(v2, v18);
    v36 = sub_1C44038D0();
    sub_1C440FD0C(v36, v37, v38, v18);
    sub_1C4423A0C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C440A17C();
}

uint64_t sub_1C4459390()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  v5[12] = v0;

  if (!v0)
  {
    v11 = v5[10];

    v5[13] = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C44594A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4459500()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

unint64_t sub_1C4459558(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C4F01ED8();

  return sub_1C4458058(a1, v5);
}

unint64_t sub_1C445959C()
{
  result = qword_1EDDDB8A8;
  if (!qword_1EDDDB8A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDB8A8);
  }

  return result;
}

__n128 sub_1C44595E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

void sub_1C44595F4(uint64_t a1, int a2, void *a3, double a4)
{
  v7 = v4;
  v11 = *v4;
  v12 = sub_1C4459558(a3);
  sub_1C442C5D8(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_14:
    sub_1C4461BB8(0, &qword_1EDDDB8A8, 0x1E69A9EE8);
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  sub_1C456902C(&qword_1EC0BA798, &qword_1C4F146C8);
  if (sub_1C440D17C())
  {
    v15 = *v7;
    sub_1C4459558(a3);
    sub_1C44331E4();
    if (!v17)
    {
      goto LABEL_14;
    }

    v5 = v16;
  }

  v18 = *v7;
  if (v6)
  {
    v19 = v18[7] + 24 * v5;
    v20 = *v19;
    *v19 = a1;
    *(v19 + 8) = a4;
    *(v19 + 16) = a2;
    *(v19 + 18) = BYTE2(a2);
  }

  else
  {
    sub_1C4458118(v5, a3, a1, a2 & 0xFFFFFF, v18, a4);

    v21 = a3;
  }
}

uint64_t sub_1C4459750(void *a1)
{
  v1 = [a1 bookmark];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C44597B4()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1C44598B4(v1, v2);
  v5 = *(v0 + 64);
  if (v4 == -1)
  {
    v9 = *(v0 + 64);

    sub_1C4459988(v1, v2);
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v8 = *(v0 + 32);
    sub_1C4474164(*(v0 + 48), v3, v4 & 1);

    sub_1C4459988(v1, v2);
    sub_1C4474DF8(v6, v7);
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  sub_1C4429198();

  v13 = *(v12 + v11);
  *(v12 + v11) = 0;

  v14 = *(v0 + 40);

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C44598B4(id a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = a1;
    }

    else if (a1 >= 2)
    {
      sub_1C4F01828();
      sub_1C4411404();
      sub_1C4428DF0(v4, v5);
      v2 = swift_allocError();
      sub_1C4F00EA8();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

uint64_t sub_1C445996C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1C4459988(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_1C44599A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 72);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C44597B4, v3, 0);
}

uint64_t sub_1C4459AA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4459AF0()
{
  *(v0 - 64) = 0;
  *(v0 - 56) = 0xE000000000000000;

  return sub_1C4F02248();
}

id sub_1C4459B20(uint64_t a1)
{
  v4 = *(*(v1 + 56) + 8 * a1);
  v5 = *(v2 - 224);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  v8 = *(*(v5 + 64) + 16);

  return v4;
}

uint64_t sub_1C4459B80()
{
  v2 = *(v0 - 96);

  return swift_dynamicCast();
}

uint64_t sub_1C4459C2C()
{
  v2 = *(v0 - 328);
}

uint64_t sub_1C4459C50()
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  return result;
}

uint64_t sub_1C4459C78()
{
  v2 = (v0 + *(*(v1 - 96) + 40));
  result = *v2;
  v4 = v2[1];
  return result;
}

void *sub_1C4459CA8()
{
  v4 = *(v0 + 56);
  *(v3 - 112) = v1;
  v5 = (v1 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2;
  v7 = v2[3];
  v8 = v2[4];
  *(v3 - 128) = v6;
  return sub_1C4409678(v6, v7);
}

uint64_t sub_1C4459CE0()
{
  *(v2 + *(v1 + 44)) = v5;
  *(v2 + *(v1 + 48)) = *(v0 + 220);
  v6 = *(v3 - 96);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4459D20()
{
  sub_1C4404B08();
  v77 = v0;
  v5 = *(v0 + 280);
  v6 = *(v0 + 248);
  sub_1C444AF3C(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44624E4();

  if (sub_1C444AD54())
  {
    v2 = *(v0 + 240);
    v8 = *(v0 + 248);
    v3 = *(v0 + 232);
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440A2C8();
    swift_slowAlloc();
    sub_1C442AD20();
    *v1 = 136446210;
    sub_1C43FE990();
    v9 = sub_1C444AB08();
    sub_1C448602C(v9, v10, v11);
    sub_1C4D1ED44();
    *(v1 + 4) = v3;
    sub_1C4415A90();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C440962C(v4);
    v17 = sub_1C4416E14();
    MEMORY[0x1C6942830](v17);
    v18 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v18);
  }

  else
  {
    v19 = *(v0 + 248);
  }

  v20 = *(v0 + 224);
  v21 = v20[6];
  v22 = sub_1C4409678(v20 + 2, v20[5]);
  v23 = *(v21 + 32);
  v24 = v22;
  v25 = sub_1C4402B58();
  if (v26(v25))
  {
    if ((*(v0 + 376) & 0xC000) == 0x8000)
    {
      v28 = sub_1C44889D0() == v21 && v27 == 0xE400000000000000;
      if (v28)
      {
      }

      else
      {
        sub_1C442E6C0();
        sub_1C44624E4();

        if ((v21 & 1) == 0)
        {
          v29 = *(*(*(v0 + 160) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager) + 16);
          v30 = swift_task_alloc();
          *(v30 + 16) = v24;
          v31 = *(v29 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
          swift_task_alloc();
          sub_1C441692C();
          v32[2] = v33;
          v32[3] = v30;
          v32[4] = v29;

          sub_1C444AE28();
        }
      }
    }

    sub_1C44752DC();

    v45 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C440D060();

    if (sub_1C44020E0())
    {
      v46 = *(v0 + 256);
      v47 = *(v0 + 376);
      sub_1C43FECF0();
      v48 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *v48 = 136446210;
      v49 = sub_1C43FD2BC();
      v51 = sub_1C442A10C(v49, v50);
      sub_1C441D828(v51, v52, &v76);
      sub_1C44036EC();
      *(v48 + 4) = v47;
      sub_1C4402B48();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
      sub_1C4406614();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v58 = *(v0 + 264);
    v59 = *(v0 + 272);
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);
    v62 = *(v0 + 160);
    sub_1C440F1BC();
    swift_beginAccess();
    v43 = *(v60 + 88);
    sub_1C44DDE2C();
    sub_1C4401818(v61);
    sub_1C4466DD0();
    if (v28)
    {
      v63 = v4[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v64 = sub_1C43FD2BC();
      v63(v64);

      sub_1C4420C3C(v3, &qword_1EC0C6428, &unk_1C4F6D7E8);
    }

    else
    {
      v65 = *(v0 + 160);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4420C3C(v3, &qword_1EC0C6428, &unk_1C4F6D7E8);
      sub_1C445A19C(v61);

      v66 = v4[1];
      v67 = sub_1C43FD2BC();
      v68(v67);
    }

    v44 = 0;
  }

  else
  {
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 200);
    v37 = *(v0 + 160);
    sub_1C44DDE2C();
    sub_1C442F7D8();
    sub_1C441D778();
    if (v28)
    {
      v38 = sub_1C4402694();
      v39(v38);

      sub_1C4420C3C(v2, &qword_1EC0C6428, &unk_1C4F6D7E8);
    }

    else
    {
      v40 = *(v0 + 160);
      sub_1C4420C3C(v2, &qword_1EC0C6428, &unk_1C4F6D7E8);
      sub_1C445A19C(v36);

      v41 = sub_1C4402694();
      v42(v41);
    }

    v43 = 0;
    v44 = 2;
  }

  v70 = *(v0 + 208);
  v69 = *(v0 + 216);
  v72 = *(v0 + 192);
  v71 = *(v0 + 200);
  v73 = *(v0 + 184);

  sub_1C4D1ECD4();

  return v74(v43, v44);
}

uint64_t sub_1C445A19C(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1C456902C(&qword_1EC0C6428, &unk_1C4F6D7E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = _s7MetricsO7PayloadVMa();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v39 - v13;
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - v16;
  v18 = sub_1C444AF90();
  if (!sub_1C44157D4(v19, 1, v10))
  {
    sub_1C4EF9CC8();
    v20 = sub_1C4EF9CD8();
    sub_1C440BAA8(v17, 0, 1, v20);
    v21 = *(v10 + 40);
    sub_1C468282C();
  }

  (v18)(v44, 0);
  v22 = sub_1C444AF90();
  if (!sub_1C44157D4(v23, 1, v10))
  {
    sub_1C4EF9CC8();
    v24 = sub_1C4EF9CD8();
    sub_1C440BAA8(v17, 0, 1, v24);
    v25 = *(v10 + 48);
    sub_1C468282C();
  }

  (v22)(v44, 0);
  swift_beginAccess();
  sub_1C44DDE2C();
  v26 = v10;
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    sub_1C4420C3C(v9, &qword_1EC0C6428, &unk_1C4F6D7E8);
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDF8);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CE8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C43F8000, v28, v29, "EventLog.WriteEvent payload was not defined.", v30, 2u);
      MEMORY[0x1C6942830](v30, -1, -1);
    }
  }

  else
  {
    v39 = v7;
    v40 = v10;
    sub_1C446268C();
    sub_1C4F00288();
    sub_1C4459500();
    v31 = *(v42 + 80);
    swift_allocObject();
    sub_1C446268C();
    sub_1C4F00278();

    v32 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery);
    v33 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8);
    if (v33 >> 14)
    {
      v7 = v39;
      if (v33 >> 14 == 1)
      {
        v32 = (v33 >> 8) & 0x3F;
      }

      else
      {
        v32 >>= 16;
      }
    }

    else
    {
      v7 = v39;
    }

    v26 = v40;
    if (v32 == 2)
    {
      v34 = v41;
      swift_beginAccess();
      sub_1C4589678();
      v35 = *(*(v34 + 88) + 16);
      sub_1C458A1F8();
      v36 = *(v34 + 88);
      *(v36 + 16) = v35 + 1;
      v37 = v36 + ((v31 + 32) & ~v31) + *(v42 + 72) * v35;
      sub_1C4459500();
      *(v34 + 88) = v36;
      v26 = v40;
      swift_endAccess();
    }

    sub_1C44544DC(v43, _s7MetricsO7PayloadVMa);
  }

  sub_1C440BAA8(v7, 1, 1, v26);
  swift_beginAccess();
  sub_1C468282C();
  return swift_endAccess();
}

uint64_t sub_1C445A770()
{
  sub_1C43FBD3C();
  v1 = _s7MetricsO7PayloadVMa();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[9];
  v7 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C443E470();
  v9(v10);
  v11 = v1[10];
  if (!sub_1C4418138())
  {
    v12 = sub_1C443E470();
    v9(v12);
  }

  v13 = v1[11];
  if (!sub_1C4418138())
  {
    v14 = sub_1C443E470();
    v9(v14);
  }

  v15 = v1[12];
  if (!sub_1C4418138())
  {
    v16 = sub_1C443E470();
    v9(v16);
  }

  v17 = v1[13];
  if (!sub_1C4418138())
  {
    v18 = sub_1C443E470();
    v9(v18);
  }

  v19 = v1[14];
  if (!sub_1C4418138())
  {
    v20 = sub_1C443E470();
    v9(v20);
  }

  v21 = v1[15];
  if (!sub_1C4418138())
  {
    v22 = sub_1C443E470();
    v9(v22);
  }

  v23 = v1[16];
  if (!sub_1C44157D4(v3 + v23, 1, v7))
  {
    (v9)(v3 + v23, v7);
  }

  sub_1C43FE9F0();

  return MEMORY[0x1EEE6BDD0](v24, v25, v26);
}

void sub_1C445A93C()
{

  sub_1C4785250();
}

void sub_1C445A960()
{
  v4 = *(v3 - 304);
  *(v3 - 312) = v2;
  *(v3 - 256) = v0;
  *(v3 - 248) = v1;
}

uint64_t sub_1C445A998()
{
  v2 = *(v0 - 672);
  v3 = *(v0 - 680);

  return sub_1C44239FC(v2);
}

void sub_1C445A9C8(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void sub_1C445A9DC()
{
  v1 = *(v0 - 256);
  v2 = *(v0 - 248);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
}

uint64_t sub_1C445AA1C()
{

  return sub_1C4F02938();
}

uint64_t sub_1C445AA3C()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_1C445AA94@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 288);
  v4 = *(v1 - 120);

  return sub_1C4F02618();
}

uint64_t sub_1C445AAC8()
{

  return swift_beginAccess();
}

uint64_t sub_1C445AAE8()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 160);
  v4 = *(v0 - 112);

  return sub_1C4471988(v2, v3);
}

uint64_t sub_1C445AB38()
{
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[49];

  return sub_1C4F01828();
}

uint64_t sub_1C445AB80(uint64_t a1)
{

  return sub_1C4430900(v1, a1);
}

uint64_t sub_1C445ABB8()
{
  v2 = *(v0 - 240);

  return sub_1C4851984();
}

uint64_t sub_1C445ABE8()
{
  v2 = *(v0 - 424);
  v3 = *(v0 - 432);

  return sub_1C44239FC(v2);
}

void sub_1C445AC20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C445AC50()
{
  *(v1 - 216) = v0;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C445ACCC()
{
  v1 = *(*(*(v0 + 16) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);

  sub_1C440CABC();
  v2 = sub_1C445AD5C();

  return v2 & 1;
}

uint64_t sub_1C445ADFC()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_1C43FBDAC();
  *v9 = v8;

  sub_1C4D1ECD4();
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_1C445AEFC()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v2 + 80);
  v6 = *v1;
  *(v3 + 105) = v7;
  *(v3 + 88) = v8;
  *(v3 + 96) = v0;

  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_1C4CDB7A8;
  }

  else
  {
    v10 = sub_1C445B028;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C445B028()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 105);
  if (v2 < 2)
  {
    goto LABEL_9;
  }

  if (v2 == 2 && *(v0 + 88) == 2)
  {
    LOBYTE(v2) = 2;
LABEL_9:
    v13 = *(v0 + 48);
    v14 = (*(v0 + 56) + *(v0 + 72));
    *v13 = *(v0 + 88);
    *(v13 + 8) = v2;
    v15 = *v14;
    v16 = v14[1];
    *v14 = 0;
    v14[1] = 0;
    sub_1C44239FC(v15);
    goto LABEL_10;
  }

  v3 = *(v0 + 96);
  sub_1C4F01968();
  LOBYTE(v2) = *(v0 + 105);
  if (!v3)
  {
    goto LABEL_9;
  }

  sub_1C4459988(*(v0 + 88), v2);
  sub_1C43FF870();
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1C4D118BC();
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);

    v10 = *(v8 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    if (v10 == 1)
    {
      sub_1C44054BC(v11);
    }

    else
    {
      sub_1C43FCB64(v11);
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DDF8);
    v27 = sub_1C43FCFC0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CD8();

    if (os_log_type_enabled(v28, v29))
    {
      sub_1C43FD084();
      v30 = sub_1C4405A9C();
      *v1 = 138412290;
      v31 = v3;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      sub_1C4416538(v32);
      sub_1C43FF718(&dword_1C43F8000, v33, v29, "ViewUpdate.JobScheduler/ExecutorTask: Job 'next' threw an error: %@");
      sub_1C4420C3C(v30, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    v35 = *(v0 + 48);
    v34 = *(v0 + 56);

    *v35 = v3;
    *(v35 + 8) = 1;
  }

LABEL_10:
  sub_1C44500B4(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
  sub_1C44500B4(OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask);
  sub_1C43FBDA0();
  sub_1C4426C44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1C445B22C()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;
  v4 = v1[5];
  v5 = v1[4];
  v6 = *v0;
  *v3 = *v0;

  v7 = *(v2 + 24);
  *v5 = v1[2];
  *(v5 + 8) = v7;
  v8 = v6[1];

  return v8();
}

uint64_t sub_1C445B354()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 496);
  v6 = *v2;
  sub_1C43FEB84();
  *v7 = v6;
  *(v9 + 512) = v8;
  *(v9 + 504) = v0;

  sub_1C4461DAC();
  v11 = *(v10 + 392);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C445B46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C44A3C24();
  a19 = v24;
  a20 = v25;
  sub_1C4404B08();
  a18 = v22;
  if (*(v22 + 512))
  {
    if ((*(v22 + 512) & 0x100) == 0)
    {
      sub_1C445C3F8();
      v27 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        sub_1C43FFD98(v28);
        sub_1C445C3F8();
        v27 = v70;
      }

      v31 = *(v22 + 352);
      *(v27 + 16) = v30;
      *(v27 + 8 * v29 + 32) = v31;

      goto LABEL_8;
    }

LABEL_15:
    sub_1C445AB38();
    sub_1C4440AFC();
    sub_1C443D71C(v43, 255, v44);
    sub_1C441C114();
    swift_allocError();
    sub_1C4F00EA8();
    swift_willThrow();
    sub_1C445B84C();
    sub_1C4420C3C(v20, &qword_1EC0BE5A8, &qword_1C4F376A8);
    sub_1C44081DC();
    sub_1C44544DC(v21, v45);
    sub_1C4413FF0();

    sub_1C43FBDA0();
    goto LABEL_27;
  }

  if ((*(v22 + 512) & 0x100) != 0)
  {

    goto LABEL_15;
  }

  v30 = *(MEMORY[0x1E69E7CC0] + 16);

  if (!v30)
  {
    v32 = v22 + 288;
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v46 = *(v22 + 456);
    v47 = *(v22 + 368);
    v48 = sub_1C4F00978();
    sub_1C442B738(v48, qword_1EDE2DDF8);
    sub_1C43FCFC0();
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = sub_1C4F00968();
    v49 = sub_1C4F01CF8();

    if (os_log_type_enabled(v30, v49))
    {
      v50 = *(v22 + 456);
      sub_1C43FECF0();
      v51 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44057F8();
      *v51 = 136315138;
      if (v50)
      {
        v52 = (v22 + 448);
      }

      else
      {
        v46 = *(v22 + 368);
        v52 = (v22 + 360);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v53 = sub_1C441D828(*v52, v46, &a10);

      *(v51 + 4) = v53;
      sub_1C440A610(&dword_1C43F8000, v54, v49, "ViewUpdate: %s did not update");
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
    v57 = sub_1C4462128(v55, v56);
    if (!sub_1C44157D4(v57, v58, v49))
    {
      *(v46 + 32) = 4;
    }

    goto LABEL_26;
  }

LABEL_8:
  v32 = v22 + 256;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v33 = sub_1C4F00978();
  sub_1C43FCEE8(v33, qword_1EDE2DF70);
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();
  if (os_log_type_enabled(v34, v35))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    sub_1C4485C10(&dword_1C43F8000, v36, v37, "ViewUpdate: completed update");
    v38 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v38);
  }

  sub_1C4D1ECF8();

  sub_1C444AF90();
  sub_1C44249A8();
  v41 = sub_1C4462128(v39, v40);
  if (!sub_1C44157D4(v41, v42, v23))
  {
    *(v35 + 32) = 1;
  }

LABEL_26:
  v59 = sub_1C4401EF4();
  (v30)(v59);
  sub_1C44D4570();
  sub_1C4420C3C(v30, &qword_1EC0BE5A8, &qword_1C4F376A8);
  sub_1C44081DC();
  sub_1C44544DC(v32, v60);
  sub_1C4413FF0();

  sub_1C43FC1B0();
LABEL_27:
  sub_1C4410B00();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
}

uint64_t sub_1C445B84C()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11[-v2];
  v4 = sub_1C444AF90();
  v6 = v5;
  v7 = _s7MetricsO7PayloadVMa();
  if (!sub_1C44157D4(v6, 1, v7))
  {
    sub_1C4EF9CC8();
    v8 = sub_1C4EF9CD8();
    sub_1C440BAA8(v3, 0, 1, v8);
    v9 = *(v7 + 64);
    sub_1C468282C();
  }

  return (v4)(v11, 0);
}

uint64_t sub_1C445B95C()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v1 + 336);
  *v4 = *v2;
  *(v3 + 344) = v0;

  sub_1C4461DAC();
  v7 = *(v6 + 160);
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C445BA70@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v3 + v1, v2 + a1);
}

uint64_t sub_1C445BA94()
{

  return sub_1C4EFF0C8();
}

uint64_t sub_1C445BAB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C444088C(v4, v5 + v6, a3, a4);
}

uint64_t sub_1C445BAE8()
{

  return sub_1C4F010B8();
}

uint64_t sub_1C445BB3C()
{
  result = *(v0 - 464);
  v2 = *(v0 - 408);
  return result;
}

uint64_t sub_1C445BB70()
{
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
}

uint64_t sub_1C445BBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4F00DA8();
}

uint64_t sub_1C445BBF0()
{

  return sub_1C4F01198();
}

uint64_t sub_1C445BC14(float a1)
{
  *v1 = a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445BC48()
{
}

uint64_t sub_1C445BCC8()
{

  return sub_1C4F02618();
}

uint64_t sub_1C445BCE4()
{

  return swift_dynamicCast();
}

uint64_t sub_1C445BD08()
{

  return sub_1C4430900(v1, v0);
}

void sub_1C445BD24()
{
  v2 = *(v0 - 184);

  sub_1C45D9880();
}

uint64_t sub_1C445BD44()
{
  v3 = *(v0 - 3);
  v4 = *(v0 - 2);
  *(v1 - 119) = *(v0 - 23);
  *(v1 - 144) = v3;
  *(v1 - 128) = v4;
  v5 = *v0;

  return sub_1C45A2358(v1 - 144, v1 - 208);
}

uint64_t sub_1C445BD88()
{
  *(v0 - 96) = 0;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C445BDB4()
{
  v2 = *(v0 - 472);
  v3 = *(v0 - 480);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C445BE04(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1C4424B10(v2);
}

uint64_t sub_1C445BE98()
{

  return type metadata accessor for PHPersonStructs.Person(0);
}

uint64_t sub_1C445BEB8()
{
  result = v2 + v1;
  v4 = *(v0 + 168);
  return result;
}

uint64_t sub_1C445BF00()
{

  return swift_dynamicCast();
}

void sub_1C445BF24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C445BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_1C441D828(v14, v13, va);
}

id sub_1C445BF60(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C445BF78()
{
  v2 = *(v0 - 368);
}

uint64_t sub_1C445BFA4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  v5 = *(v2 + 8 * v4);
  *(v2 + 8 * v4) = v1;
}

uint64_t sub_1C445BFE0()
{
  v2 = *(v0 - 112);

  return sub_1C4EFF808();
}

double sub_1C445C02C(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 128) = a1;
  *(v1 + 136) = *(v2 + 24);
  return *(v1 + 104);
}

uint64_t sub_1C445C048()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C445C058@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 144);

  return sub_1C4F02618();
}

uint64_t sub_1C445C08C()
{
  result = v0 + *(v1 - 184);
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_1C445C0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 96);
  v4 = *(*(v2 - 104) + 16);
  result = v1 + a1;
  v6 = *(v2 - 176);
  return result;
}

uint64_t sub_1C445C0FC()
{
  v2 = (v0 + *(v1 + 44));
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_1C445C110()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
}

uint64_t sub_1C445C128()
{
  v5 = (*(v0 + 48) + 16 * v3);
  v6 = v5[1];
  *v5 = v2;
  v5[1] = v1;
}

uint64_t sub_1C445C154()
{
  *(v1 + 240) = *(v2 + 8);
  *(v1 + 248) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_1C445C170()
{
  v2 = *(v0 - 72);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C445C198()
{
  v2 = *(v0 - 776);
  v3 = *(v0 - 784);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C445C1D0()
{
  sub_1C440962C(v0 + 17);
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
}

void sub_1C445C200()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 1024;
  *(v1 + 24) = 0;
}

uint64_t sub_1C445C228()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0xE000000000000000;

  return sub_1C4F02248();
}

uint64_t *sub_1C445C254()
{
  sub_1C441D670(v1, v0);
  result = sub_1C4409678(v0, *(v2 + 184));
  v4 = *result;
  return result;
}

void sub_1C445C280()
{

  sub_1C44CD9C0();
}

uint64_t sub_1C445C2C4()
{
  v2 = *(v1 - 184);
  *(v1 - 208) = *(*(v1 - 176) + 16);
  *(v1 - 200) = v0;
  return v2;
}

uint64_t sub_1C445C32C@<X0>(void *a1@<X8>)
{
  result = *(v1 + 224);
  *a1 = v2;
  a1[1] = result;
  v5 = *(v3 + 44);
  return result;
}

void sub_1C445C33C()
{
  sub_1C441B754();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C441E1B8(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = sub_1C44182F4();
      j__malloc_size(v16);
      sub_1C441EA34();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44099F4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = sub_1C440CAA0();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C445C448()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  v22 = sub_1C4EFB1E8();
  v2 = sub_1C43FCDF8(v22);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FC010();
  v6 = sub_1C4EFAD98();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v12 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v13 = *(v9 + 8);
  v14 = sub_1C43FD574();
  v13(v14);
  if (v0)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v15 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v16 = sub_1C43FD574();
  v13(v16);
  v17 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v18 = sub_1C44132A8();
  v19(v18);
  v20 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v20, v21);
  __break(1u);
}

uint64_t sub_1C445C6B0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C445C6FC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1C445C6FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(&v10, v7, a4);

  swift_unownedRelease();
  if (!v4)
  {
    v8 = v10;
  }

  return v8 & 1;
}

void sub_1C445C780()
{
  sub_1C43FE96C();
  sub_1C44054CC();
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = sub_1C4EFB768();
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A82C();
  if (sub_1C4424B10(v3) == v5 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v16 = sub_1C442E6C0();

    if ((v16 & 1) == 0)
    {
      sub_1C442F794();
      v0 = v1;
      if (v1)
      {
        goto LABEL_11;
      }
    }
  }

  swift_unownedRetainStrong();
  v17 = sub_1C4440C6C(v4);
  sub_1C441CEF4();

  if (!v0)
  {
    v18 = *(v17 + 328);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = sub_1C4404370();
    v20 = sub_1C445BE04(v19, xmmword_1C4F0CE60);
    v21 = MEMORY[0x1E69A0138];
    v19[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v19[4].n128_u64[0] = v21;
    v19[2].n128_u64[0] = v20;
    v19[2].n128_u64[1] = v22;
    sub_1C4401F74();
    sub_1C4466DA4();
    sub_1C4EFC088();
    v23 = sub_1C441B144();
    v24(v23, v10);
    v25 = sub_1C44179F4();
    sub_1C43FF8A0(v25, v26, v27, v10);
    sub_1C443474C();
    sub_1C44150DC();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

LABEL_11:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C445C9B8(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_1C445C780();
  if (!v2)
  {
    *a2 = v5 & 1;
  }
}

uint64_t sub_1C445CA14(void *a1)
{
  v1 = [a1 latestBookmark];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C445CA78(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0xE000000000000000;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 80) = a4 & 1;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 144) = a5;
  *(v9 + 152) = a6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4431E64(a5, a6);
  sub_1C441DFEC(0, 0xF000000000000000);
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 33) = a9;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  return v9;
}

void sub_1C445CB4C(uint64_t a1)
{
  v4 = sub_1C49E1A90(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5(v4, 1);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_1C44A1EDC();
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_1C43FE99C();
  sub_1C456902C(v11, v12);
  sub_1C44D3DF4();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return;
  }

  v13 = *(v7 + 16);
  v6 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v6)
  {
    *(v7 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C445CC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C445CCA8()
{

  return swift_allocObject();
}

uint64_t sub_1C445CCD4()
{
  result = v0;
  v3 = *(v1 - 120);
  v5 = *(v1 - 248);
  v4 = *(v1 - 240);
  return result;
}

uint64_t sub_1C445CCE4(float a1)
{
  *v1 = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C445CD08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_arrayDestroy();
}

uint64_t sub_1C445CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  result = a16;
  v18 = *(v16 + 34);
  return result;
}

uint64_t sub_1C445CD44()
{

  return sub_1C4F02738();
}

uint64_t sub_1C445CD68(uint64_t result, uint64_t a2)
{
  v3 = *(v2 - 216);
  *v3 = result;
  v3[1] = a2;
  *(v2 - 70) = 7;
  return result;
}

void sub_1C445CDD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = sub_1C4428DA0();
  v10 = 0;
  v11 = a6 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v10)
    {

      sub_1C445DA1C(a5);
      sub_1C440AD7C();
      sub_1C4F02248();

      sub_1C4401288();
      sub_1C43FCB40(v19);
      sub_1C441F098();

      v20 = sub_1C4402CD0();
      MEMORY[0x1C6940010](v20);

      sub_1C446D0DC();
      v21 = sub_1C43FFB2C();
      sub_1C440B6F4(v21, v22);
LABEL_33:

LABEL_34:

      return;
    }

    if (v11)
    {
      v12 = MEMORY[0x1C6940F90](v10, a6);
    }

    else
    {
      if (v10 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v12 = *(a6 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    v130 = v12;
    v13 = [v12 configIdentifier];
    v14 = [v13 updateType];

    v15 = sub_1C4F01138();
    v17 = v16;

    if (v15 == 0x6E6F6974656C6564 && v17 == 0xE800000000000000)
    {

LABEL_16:
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          sub_1C445DA1C(a5);
          sub_1C440AD7C();
          sub_1C4F02248();

          sub_1C4401288();
          sub_1C43FCB40(v32);
          sub_1C441F098();

          v33 = sub_1C4402CD0();
          MEMORY[0x1C6940010](v33);

          sub_1C446D0DC();
          v34 = sub_1C43FFB2C();
          sub_1C440B6F4(v34, v35);

          goto LABEL_33;
        }

        if (v11)
        {
          v24 = MEMORY[0x1C6940F90](i, a6);
        }

        else
        {
          if (i >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v24 = *(a6 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_98;
        }

        v25 = v24;
        v26 = [v24 configIdentifier];
        v27 = [v26 updateType];

        v28 = sub_1C4F01138();
        v30 = v29;

        if (v28 == 0x6C616D726F6ELL && v30 == 0xE600000000000000)
        {
          break;
        }

        sub_1C4F02938();
        sub_1C4406248();
        if (v28)
        {
          goto LABEL_31;
        }
      }

LABEL_31:

      v36 = [v25 state];
      sub_1C4F01138();

      sub_1C43FD168();
      v37 = sub_1C443BE78();
      if (v37 == 5)
      {
        sub_1C445DA1C(a5);
        sub_1C440AD7C();
        sub_1C4F02248();

        sub_1C4401288();
        sub_1C4430348(v38);

        MEMORY[0x1C6940010](8250, 0xE200000000000000);
        v39 = [v25 state];
        v40 = sub_1C4F01138();
        v42 = v41;

        MEMORY[0x1C6940010](v40, v42);

        sub_1C446D0DC();
        v43 = sub_1C43FFB2C();
        sub_1C440B6F4(v43, v44);

        goto LABEL_33;
      }

      v45 = v37;
      v46 = [v130 state];
      sub_1C4F01138();

      sub_1C43FD168();
      v47 = sub_1C443BE78();
      if (v47 == 5)
      {
        sub_1C445DA1C(a5);
        sub_1C440AD7C();
        sub_1C4F02248();

        sub_1C4401288();
        sub_1C4430348(v48);

        MEMORY[0x1C6940010](8250, 0xE200000000000000);
        v49 = [v130 state];
        v50 = sub_1C4F01138();
        v52 = v51;

        MEMORY[0x1C6940010](v50, v52);

        sub_1C446D0DC();
        v53 = sub_1C43FFB2C();
        sub_1C440B6F4(v53, v54);

        goto LABEL_34;
      }

      v55 = v47;
      sub_1C4441C50(v47);
      if (v57 == 0x7165527261656C63 && v56 == 0xED00006465726975)
      {

        v59 = v55;
      }

      else
      {
        sub_1C441BE04();
        sub_1C4406248();
        if (v28)
        {
          v59 = v55;
        }

        else
        {
          v59 = v45;
        }
      }

      sub_1C4441C50(v55);
      if (v61 == 0xD000000000000013 && 0x80000001C4F87C40 == v60)
      {
      }

      else
      {
        sub_1C4F02938();
        sub_1C4406248();
        if ((v28 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      sub_1C4441C50(v59);
      if (v64 == 0x7165527261656C63 && v63 == 0xED00006465726975)
      {
      }

      else
      {
        v66 = sub_1C441BE04();

        if ((v66 & 1) == 0)
        {
          v59 = v55;
        }
      }

LABEL_59:
      sub_1C4441C50(v55);
      if (v68 == 0x676E616843736168 && v67 == 0xEA00000000007365)
      {
      }

      else
      {
        v70 = sub_1C4F02938();

        if ((v70 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      sub_1C4441C50(v59);
      if (v72 == 0x65676E6168436F6ELL && v71 == 0xE900000000000073)
      {

        v59 = v55;
      }

      else
      {
        v74 = sub_1C442C0D4();

        if (v74)
        {
          v59 = v55;
        }
      }

LABEL_74:
      v75 = [v25 configIdentifier];
      v76 = [v75 sourceIdentifier];

      sub_1C4F01138();
      sub_1C441F098();

      v77 = sub_1C4402CD0();
      v121 = sub_1C4441B18(v77);
      v128 = v78;
      v80 = v79;
      v82 = v81;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v83 = sub_1C43FD024();
      v85 = sub_1C445D7D0(v83, v84);
      v86 = v85;
      if (v82)
      {
        if (!v85)
        {
          sub_1C44F638C();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v87 = sub_1C43FD024();
          v86 = sub_1C445D7D0(v87, v88);

          if (!v86)
          {
            sub_1C445DA1C(a5);

            sub_1C440AD7C();
            sub_1C4F02248();

            sub_1C43FBDF0();
            v129 = v108;
            v109 = sub_1C43FD024();
            MEMORY[0x1C6940010](v109);

            sub_1C446D0DC();
            sub_1C43FFB2C();
            *v110 = 0xD00000000000001BLL;
            v110[1] = v129;
            sub_1C440DB00(v110, 3);

            goto LABEL_34;
          }
        }

        v119 = v86;
      }

      else
      {
        v119 = v85;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ([v25 triggered])
      {
        v118 = 1;
      }

      else
      {
        v118 = [v130 triggered];
      }

      v120 = v59;
      sub_1C4441C50(v59);
      v90 = v80;
      if (v91 == 0x65676E6168436F6ELL && v89 == 0xE900000000000073)
      {

        v94 = 1;
      }

      else
      {
        v93 = sub_1C442C0D4();

        v94 = v93 & 1;
      }

      v95 = sub_1C443D554(v25);
      v116 = v96;
      v117 = v95;
      v97 = sub_1C445CA14(v25);
      v114 = v98;
      v115 = v97;
      v99 = sub_1C443D554(v130);
      v112 = v100;
      v113 = v99;
      v101 = sub_1C445CA14(v130);
      v103 = v102;
      sub_1C4441C50(v55);
      if (v105 == 0x65676E6168436F6ELL && v104 == 0xE900000000000073)
      {

        v107 = 0;
      }

      else
      {
        sub_1C442C0D4();
        sub_1C4406248();
        v107 = 111;
      }

      swift_allocObject();
      HIBYTE(v111) = v94;
      LOBYTE(v111) = v120;
      sub_1C445D864(a1, a2, a5, a1, a2, a3, a4, v118, v111, v119, a8, v121, v128, v90, v82, v117, v116, v115, v114, v113, v112, v101, v103, v107 & 1);

      return;
    }

    sub_1C4F02938();
    sub_1C4406248();
    if (v14)
    {
      goto LABEL_16;
    }

    ++v10;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1C445D7D0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 6);
  sub_1C44F69C4(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 6);
  return v5;
}

uint64_t sub_1C445D864(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, __int16 a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v24 + 288) = xmmword_1C4F29230;
  *(v24 + 304) = xmmword_1C4F14630;
  *(v24 + 320) = xmmword_1C4F14630;
  *(v24 + 336) = xmmword_1C4F14630;
  v25 = a3[1];
  *(v24 + 72) = *a3;
  *(v24 + 88) = v25;
  v26 = a3[3];
  *(v24 + 104) = a3[2];
  v27 = a24;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 120) = v26;
  *(v24 + 40) = a4;
  *(v24 + 48) = a5;
  *(v24 + 56) = a6;
  *(v24 + 64) = a7;
  *(v24 + 32) = a8;
  *(v24 + 33) = a9;
  *(v24 + 136) = a10;
  *(v24 + 144) = a11;
  *(v24 + 184) = a12;
  *(v24 + 192) = a13;
  if (a10)
  {
    v38 = a11;
    v28 = a10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = [v28 deviceIdentifier];
    v30 = sub_1C4F01138();
    v32 = v31;

    v27 = a24;
    v33 = *(v24 + 288);
    v34 = *(v24 + 296);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0xF000000000000000;
  }

  *(v24 + 200) = v30;
  *(v24 + 208) = v32;
  *(v24 + 152) = a12;
  *(v24 + 160) = a13;
  *(v24 + 168) = a14;
  *(v24 + 176) = a15;
  *(v24 + 224) = a16;
  *(v24 + 232) = a17;
  *(v24 + 240) = a18;
  *(v24 + 248) = a19;
  *(v24 + 256) = a20;
  *(v24 + 264) = a21;
  *(v24 + 272) = a22;
  *(v24 + 280) = a23;
  *(v24 + 288) = a20;
  *(v24 + 296) = a21;
  v35 = sub_1C4404C28();
  sub_1C4431E64(v35, v36);
  sub_1C441DFEC(v33, v34);
  *(v24 + 216) = v27 & 1;
  return v24;
}

void sub_1C445DA70()
{
  sub_1C43FBD3C();
  sub_1C44236D8();
  if (v2)
  {
    v1 = sub_1C4405C30();
  }

  else
  {
    sub_1C441DD08();
  }

  if (!v1)
  {
LABEL_14:
    sub_1C43FE9F0();
    return;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1C441CA38();
  sub_1C445E6E0();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v21;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        sub_1C444192C();
        v6 = v5;
      }

      else
      {
        v6 = *(v0 + 8 * v3 + 32);
      }

      v7 = _s11BiomeSourceCMa();
      v19 = v7;
      v8 = sub_1C445E5E8(&qword_1EDDFC688, _s11BiomeSourceCMa);
      v20 = v8;
      v21 = v4;
      v18[0] = v6;
      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1C441B964();
        sub_1C445E6E0();
        v7 = v19;
        v10 = v20;
      }

      else
      {
        v10 = v8;
      }

      ++v3;
      sub_1C4418280(v18, v7);
      sub_1C43FCE64();
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v13);
      sub_1C43FBCC4();
      v16 = v15 - v14;
      (*(v17 + 16))(v15 - v14);
      sub_1C445EC18(v9, v16, &v21, v7, v10);
      sub_1C440962C(v18);
      v4 = v21;
    }

    while (v1 != v3);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1C445DC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a3;
  *a5 = a1;
  a5[1] = a2;
  sub_1C445E254(a3, (a5 + 2));
  v47 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v7 = *(a4 + 16);
  if (v7)
  {
    v30 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = a4 + 32;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    while (v8 < *(a4 + 16))
    {
      sub_1C442E860(v10, v39);
      sub_1C442E860(v39, v38);
      sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
      _s13ControlSourceCMa();
      if (sub_1C4432E68())
      {

        MEMORY[0x1C6940330](v12);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C440A93C();
        }

        sub_1C4F01748();

        v11 = v47;
      }

      else
      {
        _s20KnowledgeGraphSourceCMa();
        if (sub_1C4432E68())
        {

          MEMORY[0x1C6940330](v13);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C440A93C();
          }

          sub_1C4F01748();

          v9 = v46;
        }

        else
        {
          _s26GlobalKnowledgeGraphSourceCMa();
          if (sub_1C4432E68())
          {
            v14 = sub_1C442F4D8();
            MEMORY[0x1C6940330](v14);
            sub_1C4405468(v45);
            if (v15)
            {
              sub_1C44303E4();
            }

            sub_1C4433EF8();

            v37 = v45;
          }

          else
          {
            _s11BiomeSourceCMa();
            if (sub_1C4432E68())
            {
              v16 = sub_1C442F4D8();
              MEMORY[0x1C6940330](v16);
              sub_1C4405468(v44);
              if (v15)
              {
                sub_1C44303E4();
              }

              sub_1C4433EF8();

              v36 = v44;
            }

            else
            {
              _s18AlwaysUpdateSourceCMa();
              if (sub_1C4432E68())
              {
                v17 = sub_1C442F4D8();
                MEMORY[0x1C6940330](v17);
                sub_1C4405468(v43);
                if (v15)
                {
                  sub_1C44303E4();
                }

                sub_1C4433EF8();

                v35 = v43;
              }

              else
              {
                _s10ViewSourceCMa();
                if (sub_1C4432E68())
                {
                  v18 = sub_1C442F4D8();
                  MEMORY[0x1C6940330](v18);
                  sub_1C4405468(v42);
                  if (v15)
                  {
                    sub_1C44303E4();
                  }

                  sub_1C4433EF8();

                  v34 = v42;
                }

                else
                {
                  _s14KeyValueSourceCMa();
                  if (sub_1C4432E68())
                  {
                    v19 = sub_1C442F4D8();
                    MEMORY[0x1C6940330](v19);
                    sub_1C4405468(v41);
                    if (v15)
                    {
                      sub_1C44303E4();
                    }

                    sub_1C4433EF8();

                    v32 = v41;
                  }

                  else
                  {
                    _s18NotificationSourceCMa();
                    if (!sub_1C4432E68())
                    {
                      goto LABEL_47;
                    }

                    v20 = sub_1C442F4D8();
                    MEMORY[0x1C6940330](v20);
                    sub_1C4405468(v40);
                    if (v15)
                    {
                      sub_1C44303E4();
                    }

                    sub_1C4433EF8();

                    v31 = v40;
                  }
                }
              }
            }
          }
        }
      }

      ++v8;
      sub_1C440962C(v38);
      sub_1C440962C(v39);
      v10 += 40;
      if (v7 == v8)
      {

        v6 = v30;
        v21 = v31;
        v22 = v32;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_47:

    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FC6280);
    v27 = v39[4];
    sub_1C4409678(v39, v39[3]);
    v28 = *(v27 + 8);
    sub_1C4F028F8();
    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 16) = 2;
    swift_willThrow();
    sub_1C445E30C(v30);
    sub_1C440962C(v38);
    sub_1C440962C(v39);

    v23 = a5;
    return sub_1C445E30C((v23 + 2));
  }

  v9 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v23 = a5;
  if (sub_1C4428DA0() != 1 || !sub_1C4428DA0())
  {

    sub_1C446D0DC();
    sub_1C441C114();
    swift_allocError();
    *v26 = 0xD000000000000023;
    *(v26 + 8) = 0x80000001C4FC62A0;
    *(v26 + 16) = 2;
    swift_willThrow();
    sub_1C445E30C(v6);

    return sub_1C445E30C((v23 + 2));
  }

  sub_1C4431590(0, (v11 & 0xC000000000000001) == 0);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1C6940F90](0, v11);
  }

  else
  {
    v24 = *(v11 + 32);
  }

  result = sub_1C445E30C(v6);
  a5[7] = v24;
  a5[8] = v9;
  a5[9] = v35;
  a5[10] = v36;
  a5[11] = v34;
  a5[12] = v22;
  a5[13] = v37;
  a5[14] = v21;
  return result;
}

uint64_t sub_1C445E254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C5438, &qword_1C4F61338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C445E30C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C5438, &qword_1C4F61338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C445E374(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 248) = a3;
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C445E398, 0, 0);
}

uint64_t sub_1C445E398()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = v1[3];
  v4 = v1[4];
  sub_1C4409678(v1, v3);
  v5 = *v2;
  *(v0 + 168) = *v2;
  v6 = v2[1];
  *(v0 + 176) = v6;
  v7 = *(v4 + 8);
  sub_1C4411260();
  v14 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_1C445F764;
  v12 = *(v0 + 248);

  return v14(v5, v6, v12, v3, v4);
}

uint64_t sub_1C445E4D8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C4BE616C;

  return sub_1C445E588(a1, a2, a3);
}

uint64_t sub_1C445E588(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 112) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C443B0F8, 0, 0);
}

uint64_t sub_1C445E5E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}