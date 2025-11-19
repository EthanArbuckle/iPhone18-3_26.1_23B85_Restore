uint64_t sub_2197BB820@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2197BB884(uint64_t a1)
{
  v2 = sub_2197BBB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197BB8C0(uint64_t a1)
{
  v2 = sub_2197BBB00();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2197BB920(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2197BB974(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2197BB920(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2197BB9E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2197BB920(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197BBA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2197BBAA4()
{
  if (!qword_27CC1F318)
  {
    sub_2197BBB00();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1F318);
    }
  }
}

unint64_t sub_2197BBB00()
{
  result = qword_27CC1F320;
  if (!qword_27CC1F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F320);
  }

  return result;
}

uint64_t sub_2197BBB54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197BBB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197BBC14()
{
  result = qword_27CC1F330;
  if (!qword_27CC1F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F330);
  }

  return result;
}

unint64_t sub_2197BBC6C()
{
  result = qword_27CC1F338;
  if (!qword_27CC1F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F338);
  }

  return result;
}

unint64_t sub_2197BBCC4()
{
  result = qword_27CC1F340;
  if (!qword_27CC1F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F340);
  }

  return result;
}

uint64_t sub_2197BBD18()
{
  result = sub_219BDC244();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2197BBDCC()
{

  v1 = qword_27CC1F348;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2197BBE44()
{
  sub_2197BBDCC();

  return swift_deallocClassInstance();
}

uint64_t sub_2197BBEB4(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_2197BDCDC();

  if (swift_dynamicCast())
  {
    sub_2186CB1F0(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_219BDB544();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2197BDD40(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_219BF73B4();
  }

  sub_2197BCF68(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2197BD2B4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2197BCB10(sub_2197BDE30);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_219BDB9C4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2197BD130(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_219BF55C4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_219BF55F4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_219BF73B4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2197BD130(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_219BF55D4();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_219BDB9D4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_219BDB9D4();
    sub_218822A5C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_218822A5C(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_218B87528(*&__src[0], *(&__src[0] + 1));

  sub_2186C6190(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_2197BC3BC()
{
  v1 = *v0;
  v2 = 0x4974736575716572;
  v3 = 0x726F73727563;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x5265766968637261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656B6154656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2197BC468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2197BD454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2197BC490(uint64_t a1)
{
  v2 = sub_2197BD9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197BC4CC(uint64_t a1)
{
  v2 = sub_2197BD9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2197BC508@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2197BD61C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_2197BC558()
{
  v1 = 0x7954746C75736572;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2197BC5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2197BE1A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2197BC5F0(uint64_t a1)
{
  v2 = sub_2197BDB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197BC62C(uint64_t a1)
{
  v2 = sub_2197BDB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197BC668@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_219BF1BC4();
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197BDB20(0, &qword_27CC1F3F8, sub_2197BDB80);
  v5 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult();
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197BDB80();
  v11 = v36;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v8;
  v12 = v33;
  v13 = v34;
  v40 = 0;
  v14 = v7;
  v15 = v10;
  *v10 = sub_219BF76F4();
  v10[1] = v16;
  v30 = v16;
  v39 = 1;
  v10[2] = sub_219BF76F4();
  v10[3] = v17;
  v38 = 2;
  v29 = 0;
  v10[4] = sub_219BF76F4();
  v10[5] = v18;
  v37 = 3;
  v19 = sub_219BF76F4();
  v27 = v5;
  v28 = v14;
  v20 = v19;
  v22 = v21;
  sub_219BE1994();
  swift_allocObject();
  sub_219BE1984();
  v23 = sub_2197BBEB4(v20, v22);
  v25 = v24;
  sub_2197BDBD4(&qword_27CC1F408, MEMORY[0x277D33540]);
  sub_219BE1974();
  (*(v12 + 8))(v28, v27);
  sub_2186C6190(v23, v25);

  (*(v31 + 32))(v15 + *(v36 + 28), v35, v13);
  sub_2197BDC1C(v15, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2197BDC80(v15);
}

char *sub_2197BCB10(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2186C6190(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2186C6190(v6, v5);
    *v3 = xmmword_219CA57E0;
    sub_2186C6190(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_219BDB384() && __OFSUB__(v6, sub_219BDB3B4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_219BDB3C4();
      swift_allocObject();
      v13 = sub_219BDB364();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_2197BCEB4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2186C6190(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_219CA57E0;
    sub_2186C6190(0, 0xC000000000000000);
    sub_219BDB964();
    result = sub_2197BCEB4(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

char *sub_2197BCEB4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_219BDB384();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_219BDB3B4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_219BDB3A4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2197BCF68@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2197BD1FC(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_219BDB3C4();
      swift_allocObject();
      v8 = sub_219BDB374();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_219BDB9B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

_BYTE *sub_2197BD030@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2197BD1FC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2197BD354(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2197BD3D0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2197BD0C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2197BD130(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_219BF5614();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CECC380](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2197BD1AC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_219BF7324();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197BD1FC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2197BD2B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_219BDB3C4();
      swift_allocObject();
      sub_219BDB394();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_219BDB9B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2197BD354(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_219BDB3C4();
  swift_allocObject();
  result = sub_219BDB374();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_219BDB9B4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2197BD3D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_219BDB3C4();
  swift_allocObject();
  result = sub_219BDB374();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2197BD454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B6154656D6974 && a2 == 0xE90000000000006ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F73727563 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CD8060 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5265766968637261 && a2 == 0xEE0073746C757365)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2197BD61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2197BDB20(0, &qword_27CC1F3D0, sub_2197BD9A8);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2197BD9A8();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v11 = v7;
  v39 = 0;
  v12 = v6;
  v13 = sub_219BF7694();
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v38 = 1;
  v18 = COERCE_DOUBLE(sub_219BF76B4());
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v18;
  }

  v37 = 2;
  v21 = sub_219BF7694();
  v23 = v22;
  v32 = v21;
  v36 = 3;
  v24 = sub_219BF76C4();
  v30 = v25;
  v31 = v24;
  sub_2197BDDCC(0, &qword_27CC1F3E0, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult, MEMORY[0x277D83940]);
  v34 = 4;
  sub_2197BDA48();
  sub_219BF76E4();
  v26 = v31;
  if (v30)
  {
    v26 = 0;
  }

  v31 = v26;
  (*(v11 + 8))(v9, v12);
  v27 = v35;

  __swift_destroy_boxed_opaque_existential_1(v33);

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v20;
  v28 = v31;
  *(a2 + 24) = v32;
  *(a2 + 32) = v23;
  *(a2 + 40) = v28;
  *(a2 + 48) = v27;
  return result;
}

unint64_t sub_2197BD9A8()
{
  result = qword_27CC1F3D8;
  if (!qword_27CC1F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F3D8);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult()
{
  result = qword_27CC1F420;
  if (!qword_27CC1F420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2197BDA48()
{
  result = qword_27CC1F3E8;
  if (!qword_27CC1F3E8)
  {
    sub_2197BDDCC(255, &qword_27CC1F3E0, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult, MEMORY[0x277D83940]);
    sub_2197BDBD4(&qword_27CC1F3F0, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F3E8);
  }

  return result;
}

void sub_2197BDB20(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_219BF7774();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2197BDB80()
{
  result = qword_27CC1F400;
  if (!qword_27CC1F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F400);
  }

  return result;
}

uint64_t sub_2197BDBD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197BDC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197BDC80(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2197BDCDC()
{
  result = qword_27CC1F410;
  if (!qword_27CC1F410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC1F410);
  }

  return result;
}

uint64_t sub_2197BDD40(uint64_t a1)
{
  sub_2197BDDCC(0, &qword_27CC1F418, sub_2197BDCDC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197BDDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_2197BDE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2197BD0C4(sub_2197BDE98, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2197BDF10()
{
  result = sub_219BF1BC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2197BDF98()
{
  result = qword_27CC1F430;
  if (!qword_27CC1F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F430);
  }

  return result;
}

unint64_t sub_2197BDFF0()
{
  result = qword_27CC1F438;
  if (!qword_27CC1F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F438);
  }

  return result;
}

unint64_t sub_2197BE048()
{
  result = qword_27CC1F440;
  if (!qword_27CC1F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F440);
  }

  return result;
}

unint64_t sub_2197BE0A0()
{
  result = qword_27CC1F448;
  if (!qword_27CC1F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F448);
  }

  return result;
}

unint64_t sub_2197BE0F8()
{
  result = qword_27CC1F450;
  if (!qword_27CC1F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F450);
  }

  return result;
}

unint64_t sub_2197BE150()
{
  result = qword_27CC1F458;
  if (!qword_27CC1F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F458);
  }

  return result;
}

uint64_t sub_2197BE1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2197BE304()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v29 = 19;
  sub_2189AE994(0);
  v27 = sub_219BEE964();
  sub_2197C9CFC(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = 2 * v10;
  v12 = swift_allocObject();
  v26 = v12;
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = (v12 + v11);
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  sub_219BEDD14();
  (*(v1 + 16))(v3, v6, v0);
  sub_2197C9978(v6, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  v14 = sub_219BF1784();
  v16 = v15;
  (*(v1 + 8))(v3, v0);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  sub_2197C9C7C(0, &qword_280E91230, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v13 = sub_219BEFB94();
  v18 = *MEMORY[0x277D32308];
  v19 = *(v9 + 104);
  v19(v13, v18, v8);
  swift_allocObject();
  *(v13 + v10) = sub_219BEFB94();
  v19((v13 + v10), v18, v8);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  swift_allocObject();
  v21 = sub_219BEFB94();
  v22 = v25;
  *(v13 + v25) = v21;
  v19((v13 + v22), v18, v8);
  v28 = v27;
  sub_2191EE478(v26);
  return v28;
}

uint64_t sub_2197BE7AC(uint64_t a1, uint64_t a2)
{
  v3[293] = v2;
  v3[287] = a2;
  v3[281] = a1;
  v4 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v3[299] = v4;
  v5 = *(v4 - 8);
  v3[305] = v5;
  v3[311] = *(v5 + 64);
  v3[317] = swift_task_alloc();
  v3[323] = swift_task_alloc();
  v3[329] = swift_task_alloc();
  v6 = sub_219BF1214();
  v3[335] = v6;
  v3[341] = *(v6 - 8);
  v3[347] = swift_task_alloc();
  v3[353] = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  v3[359] = swift_task_alloc();
  v3[365] = swift_task_alloc();
  v7 = sub_219BF1934();
  v3[371] = v7;
  v8 = *(v7 - 8);
  v3[372] = v8;
  v3[373] = *(v8 + 64);
  v3[374] = swift_task_alloc();
  v3[375] = swift_task_alloc();
  v3[376] = swift_task_alloc();
  v3[377] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197BE9B4, 0, 0);
}

uint64_t sub_2197BE9B4()
{
  v1 = v0[376];
  v2 = v0[372];
  v3 = v0[371];
  v4 = v0[365];
  v5 = v0[359];
  v20 = v0[347];
  v6 = v0[341];
  v18 = v0[353];
  v19 = v0[335];
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  sub_219BEDD14();
  v7 = *(v2 + 16);
  v0[378] = v7;
  v0[379] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v3);
  sub_2197C9978(v4, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v6 + 16))(v20, v5 + *(v18 + 28), v19);
  sub_2197C9978(v5, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v8 = v0[376];
  v9 = v0[372];
  v10 = v0[371];
  v11 = v0[347];
  v12 = v0[341];
  v13 = v0[335];
  sub_219BF1774();

  (*(v12 + 8))(v11, v13);
  v14 = *(v9 + 8);
  v0[380] = v14;
  v0[381] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  sub_219BEF164();
  v0[382] = v0[275];
  v15 = swift_task_alloc();
  v0[383] = v15;
  *v15 = v0;
  v15[1] = sub_2197BED44;
  v16 = v0[287];

  return sub_2197C090C(v16);
}

uint64_t sub_2197BED44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[384] = a1;
  v4[385] = a2;
  v4[386] = v2;

  if (v2)
  {
    v5 = sub_2197BFFE0;
  }

  else
  {
    v5 = sub_2197BEE60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2197BEE60()
{
  v30 = v0[385];
  v31 = v0[384];
  v1 = v0[378];
  v2 = v0[377];
  v25 = v2;
  v3 = v0[375];
  v22 = v3;
  v27 = v0[374];
  v28 = v0[382];
  v4 = v0[372];
  v5 = v0[371];
  v23 = v0[329];
  v26 = v0[323];
  v29 = v0[317];
  v6 = v0[311];
  v7 = v0[305];
  v32 = v0[287];
  v34 = v0[293];
  sub_2197C9910(v34, v23, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v8 = v2;
  v9 = v5;
  v1(v3, v8, v5);
  v33 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + 80);
  v13 = swift_allocObject();
  v0[387] = v13;
  sub_2197C9B98(v23, v13 + v33, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  *(v13 + v10) = v32;
  v14 = (v13 + v11);
  *v14 = v31;
  v14[1] = v30;
  v24 = *(v4 + 32);
  v24(v13 + ((v12 + v11 + 16) & ~v12), v22, v9);

  sub_2197C9CFC(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  sub_2197C9910(v34, v26, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v15 = v9;
  v1(v27, v25, v9);
  v16 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v0[388] = v17;
  sub_2197C9B98(v26, v17 + v33, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v18 = (v17 + v10);
  *v18 = v31;
  v18[1] = v30;
  *(v17 + v16) = v28;
  v24(v17 + ((v12 + v16 + 8) & ~v12), v27, v15);

  swift_asyncLet_begin();
  sub_2197C9910(v34, v29, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v19 = swift_allocObject();
  v0[389] = v19;
  sub_2197C9B98(v29, v19 + v33, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v20 = (v19 + v10);
  *v20 = v31;
  v20[1] = v30;
  *(v19 + v16) = v32;
  *(v19 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 247, sub_2197BF24C, v0 + 270);
}

uint64_t sub_2197BF24C()
{
  v1[390] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 255, sub_2197C00FC, v1 + 276);
  }

  else
  {
    v1[391] = v1[247];
    v1[392] = v1[248];
    v1[393] = v1[249];

    return MEMORY[0x282200930](v1 + 82, v1 + 255, sub_2197BF334, v1 + 294);
  }
}

uint64_t sub_2197BF334()
{
  v1[394] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 255, sub_2197C02D0, v1 + 300);
  }

  else
  {
    v2 = v1[255];
    v1[395] = v2;
    v3 = v1[256];
    v1[396] = v3;
    v4 = v1[257];
    v1[397] = v4;

    v5 = swift_task_alloc();
    v1[398] = v5;
    *v5 = v1;
    v5[1] = sub_2197BF4BC;
    v6 = v1[392];
    v7 = v1[391];
    v8 = v1[384];
    v9 = v1[382];
    v10 = v1[287];

    return sub_2197C82BC(v8, v10, v9, v7, v6, v2, v3, v4);
  }
}

uint64_t sub_2197BF4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[399] = a1;
  v5[400] = a2;
  v5[401] = a3;
  v5[402] = v3;

  if (v3)
  {
    v6 = sub_2197BF820;
  }

  else
  {

    v6 = sub_2197BF604;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2197BF604()
{
  v1 = v0[402];
  v2 = sub_2197C3FA0(v0[287], v0[399], v0[400], v0[401], v0[391], v0[392], v0[393]);
  v0[403] = v1;
  v0[404] = v2;
  v0[405] = v3;
  if (v1)
  {
    v4 = v0[399];

    sub_2187A9CC4(v4);

    return MEMORY[0x282200920](v0 + 82, v0 + 255, sub_2197C04A4, v0 + 336);
  }

  else
  {
    v5 = v0[384];

    sub_2191EE304(v6);
    v0[263] = v5;
    sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420);
    sub_218ACCA38();
    v0[406] = sub_219BF56E4();

    return MEMORY[0x282200928](v0 + 162, v0 + 269, sub_2197BFACC, v0 + 360);
  }
}

uint64_t sub_2197BF820()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 2040, sub_2197BF8F8, v0 + 2544);
}

uint64_t sub_2197BF98C()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197BFACC()
{
  v1 = v0[269];
  v0[407] = v1;

  v2 = swift_task_alloc();
  v0[408] = v2;
  *v2 = v0;
  v2[1] = sub_2197BFB94;
  v3 = v0[406];
  v4 = v0[405];
  v5 = v0[404];
  v6 = v0[377];
  v7 = v0[287];

  return sub_2197C467C(v7, v6, v5, v4, v3, v1);
}

uint64_t sub_2197BFB94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3272) = v1;

  if (v1)
  {
    v5 = sub_2197C0678;
  }

  else
  {

    *(v4 + 3280) = a1;
    v5 = sub_2197BFCF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2197BFCF0()
{
  v1 = v0[399];
  sub_2197C6D30(v0[410], v0[281]);

  sub_2187A9CC4(v1);

  sub_2197C9C7C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x282200920](v0 + 82, v0 + 255, sub_2197BFE04, v0 + 264);
}

uint64_t sub_2197BFE98()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197BFFE0()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0190()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0364()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0538()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0678()
{
  v1 = *(v0 + 3192);

  sub_2187A9CC4(v1);

  return MEMORY[0x282200920](v0 + 656, v0 + 2040, sub_2197C0738, v0 + 2928);
}

uint64_t sub_2197C07CC()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C090C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_219BF0BD4();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C09CC, 0, 0);
}

uint64_t sub_2197C09CC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v21 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v20 = *(v0 + 168);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v5 = *(v0 + 48);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v6 = *(v0 + 56);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 88);
  *(v0 + 120) = qword_280F616D8;
  sub_2186F20D4();
  *(v0 + 128) = v8;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_219C0B8C0;
  if (v20)
  {
    v11 = 0x636572506D616574;
  }

  else
  {
    v11 = 0x746C7561666564;
  }

  if (v20)
  {
    v12 = 0xEE0065636E656465;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v0 + 136) = v13;
  v10[4] = v11;
  v10[5] = v12;
  v14 = MEMORY[0x277D83B88];
  v15 = MEMORY[0x277D83C10];
  v10[12] = MEMORY[0x277D83B88];
  v10[13] = v15;
  v10[8] = v13;
  v10[9] = v5;
  v10[17] = v14;
  v10[18] = v15;
  v10[14] = v6;
  sub_219BF6214();
  sub_219BE5314();

  v16 = __swift_project_boxed_opaque_existential_1((v7 + *(v21 + 40)), *(v7 + *(v21 + 40) + 24));
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v17 = off_282A97438;
    type metadata accessor for MySportsTagService();
    *(v0 + 144) = v17(v5 + v6, v20 | 0x100u);
    v18 = swift_task_alloc();
    *(v0 + 152) = v18;
    *v18 = v0;
    v18[1] = sub_2197C0CE4;
    v16 = (v0 + 16);
  }

  return MEMORY[0x2821D23D8](v16);
}

uint64_t sub_2197C0CE4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2197C11B4;
  }

  else
  {

    v2 = sub_2197C0E00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_2197C0E00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  if (v2 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  if (v1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  *(v3 + 72) = v7;
  sub_219BF6214();
  sub_219BE5314();

  sub_2191EE304(v8);
  v0[9] = v1;
  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420);
  sub_218ACCA38();
  v9 = sub_219BF56E4();

  if (v9 >> 62)
  {
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_19:

    goto LABEL_20;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_7:
  v26 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v24 = v2;
  v25 = v1;
  v12 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](v12, v9);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v13 = [swift_unknownObjectRetain() identifier];
    v14 = sub_219BF5414();
    v16 = v15;

    swift_unknownObjectRelease_n();
    v18 = *(v26 + 16);
    v17 = *(v26 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_21870B65C((v17 > 1), v18 + 1, 1);
    }

    ++v12;
    *(v26 + 16) = v18 + 1;
    v19 = v26 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v10 != v12);

  v1 = v25;
  v2 = v24;
LABEL_20:
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_219BF5904();

  v22 = sub_219BF53D4();
  [v20 setValue:v21 forKey:v22];

  v23 = v0[1];

  return v23(v1, v2);
}

uint64_t sub_2197C11B4()
{
  v1 = v0[20];
  v2 = v0[17];

  sub_219BF61F4();
  v3 = swift_allocObject();
  v0[4] = 0;
  *(v3 + 16) = xmmword_219C09BA0;
  v0[5] = 0xE000000000000000;
  v0[8] = v1;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  v4 = v0[4];
  v5 = v0[5];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_219BE5314();

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2197C1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_219515964;

  return sub_2197C13CC(a3, a5, a6);
}

uint64_t sub_2197C13CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = sub_219BDBD34();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = sub_219BF4264();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  v4[40] = swift_task_alloc();
  sub_219BF4CF4();
  v4[41] = swift_task_alloc();
  sub_2197C9CFC(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  v4[44] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_219BF0644();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C1694, 0, 0);
}

uint64_t sub_2197C1694()
{
  v1 = v0;
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  sub_219BEF154();
  (*(v5 + 104))(v3, *MEMORY[0x277D32EF8], v4);
  sub_2197C7B08(&unk_280E90EE0, MEMORY[0x277D32F00]);
  v6 = sub_219BF53A4();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if ((v6 & 1) == 0)
  {
    v12 = *(v0 + 368);
    v11 = *(v0 + 376);
    v13 = *(v0 + 360);
    v14 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
    *(v0 + 416) = v14;
    v59 = v14;
    *(v0 + 520) = *(v14 + 20);
    *(v0 + 424) = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
    sub_219BEF134();
    sub_219BEF524();
    v15 = *(v12 + 8);
    *(v0 + 432) = v15;
    *(v0 + 440) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v13);
    v57 = *(v0 + 208);
    *(v0 + 448) = v57;
    sub_219BEF134();
    sub_219BEF524();
    v58 = v15;
    v15(v11, v13);
    v16 = *(v0 + 216);
    *(v0 + 456) = v16;
    sub_219BF1724();
    v17 = sub_219BF5AA4();

    if (v17 >> 62)
    {
      v18 = sub_219BF7214();
      v56 = v16;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v16;
      if (v18)
      {
LABEL_9:
        v61 = MEMORY[0x277D84F90];
        v19 = sub_21870B65C(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          __break(1u);
          return MEMORY[0x2821D23D8](v19);
        }

        v20 = 0;
        v21 = v61;
        v22 = v17;
        v23 = v17 & 0xC000000000000001;
        v24 = v17;
        do
        {
          if (v23)
          {
            MEMORY[0x21CECE0F0](v20, v22);
          }

          else
          {
          }

          v25 = sub_219BF3ED4();
          v27 = v26;

          v29 = *(v61 + 16);
          v28 = *(v61 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_21870B65C((v28 > 1), v29 + 1, 1);
          }

          ++v20;
          *(v61 + 16) = v29 + 1;
          v30 = v61 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          v22 = v24;
        }

        while (v18 != v20);

LABEL_20:
        v1[58] = sub_218845F78(v21);

        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v31 = v1;
        v32 = v1[47];
        v33 = v1[42];
        v54 = v1[44];
        v55 = v1[43];
        v52 = v1[45];
        v53 = v1[40];
        v60 = v1[33];
        v1[59] = qword_280F616D8;
        sub_2186F20D4();
        v1[60] = v34;
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_219C0B8C0;
        v36 = MEMORY[0x277D83B88];
        v37 = MEMORY[0x277D83C10];
        *(v35 + 56) = MEMORY[0x277D83B88];
        *(v35 + 64) = v37;
        *(v35 + 32) = v57;
        *(v35 + 96) = v36;
        *(v35 + 104) = v37;
        *(v35 + 72) = v56;
        v38 = MEMORY[0x277D837D0];
        v39 = sub_219BF5D54();
        v41 = v40;
        *(v35 + 136) = v38;
        v42 = sub_2186FC3BC();
        v31[61] = v42;
        *(v35 + 144) = v42;
        *(v35 + 112) = v39;
        *(v35 + 120) = v41;
        sub_219BF6214();
        sub_219BE5314();

        sub_219BEF134();
        sub_219BEF524();
        v58(v32, v52);
        sub_219BF4CE4();
        sub_219BF4CA4();
        v43 = *MEMORY[0x277D34400];
        v44 = sub_219BF43B4();
        v45 = *(v44 - 8);
        (*(v45 + 104))(v33, v43, v44);
        (*(v45 + 56))(v33, 0, 1, v44);
        v46 = sub_219BF4F64();
        (*(*(v46 - 8) + 56))(v53, 6, 6, v46);
        sub_218F6B224(v33, v54);
        sub_2197C9910(v53, v54 + v55[5], type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        v47 = (v54 + v55[6]);
        *v47 = 0;
        v47[1] = 0;
        sub_2197C9978(v53, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        sub_2197301F8(v33);
        v48 = v54 + v55[7];
        strcpy(v48, "introToSports");
        *(v48 + 14) = -4864;
        v49 = *(v60 + *(v59 + 48) + 8);
        ObjectType = swift_getObjectType();
        v31[62] = (*(v49 + 8))(v54, ObjectType, v49);
        v51 = swift_task_alloc();
        v31[63] = v51;
        *v51 = v31;
        v51[1] = sub_2197C1E8C;
        v19 = v31[39];

        return MEMORY[0x2821D23D8](v19);
      }
    }

    v21 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v8 = *(v0 + 8);
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

uint64_t sub_2197C1E8C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_2197C2548;
  }

  else
  {
    v2 = sub_2197C1FBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_2197C1FBC()
{
  v54 = *(v0 + 472);
  v55 = *(v0 + 456);
  v52 = *(v0 + 432);
  v56 = *(v0 + 464);
  v1 = *(v0 + 376);
  v51 = *(v0 + 360);
  v53 = *(v0 + 248);
  v50 = sub_219BF4234();
  sub_219BEF134();
  v2 = sub_219BEF264();
  v3 = sub_219BEF264();
  sub_219BEF524();
  v4 = *(v0 + 232);
  v5 = sub_219BF0BC4();
  v6 = MEMORY[0x277D84FA0];
  v7 = sub_2194796A0(MEMORY[0x277D84FA0], v5);
  sub_219BEF524();
  v52(v1, v51);
  v8 = *(v0 + 525);
  *(v0 + 104) = v54;
  strcpy((v0 + 112), "introToSports");
  *(v0 + 126) = -4864;
  *(v0 + 128) = v55;
  *(v0 + 136) = v56;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 168) = v7;
  *(v0 + 176) = v8;
  v9 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v9;
  v10 = *(v0 + 152);
  *(v0 + 80) = *(v0 + 168);
  v11 = *(v0 + 136);
  *(v0 + 64) = v10;
  *(v0 + 184) = v6;
  *(v0 + 96) = v6;
  *(v0 + 48) = v11;
  if (v53 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(v0 + 472);
  if (v12)
  {
    v57 = MEMORY[0x277D84F90];
    v14 = v13;
    result = sub_21870B65C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v57;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v17, *(v0 + 248));
        v18 = [swift_unknownObjectRetain() identifier];
        v19 = sub_219BF5414();
        v21 = v20;

        swift_unknownObjectRelease_n();
        v23 = *(v57 + 16);
        v22 = *(v57 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21870B65C((v22 > 1), v23 + 1, 1);
        }

        ++v17;
        *(v57 + 16) = v23 + 1;
        v24 = v57 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v17);
    }

    else
    {
      v42 = *(v0 + 248) + 32;
      do
      {
        v43 = [swift_unknownObjectRetain_n() identifier];
        v44 = sub_219BF5414();
        v46 = v45;

        swift_unknownObjectRelease_n();
        v48 = *(v57 + 16);
        v47 = *(v57 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21870B65C((v47 > 1), v48 + 1, 1);
        }

        *(v57 + 16) = v48 + 1;
        v49 = v57 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        v42 += 8;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v25 = v13;
    v16 = MEMORY[0x277D84F90];
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 288);
  v28 = *(v0 + 272);
  v29 = sub_218845F78(v16);

  sub_219BDBD24();
  v30 = sub_219AC4E80(v50, v0 + 16, v29, v27);

  (*(v26 + 8))(v27, v28);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C09EC0;
  if (v50 >> 62)
  {
    v32 = sub_219BF7214();
  }

  else
  {
    v32 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D83B88];
  v34 = MEMORY[0x277D83C10];
  *(v31 + 56) = MEMORY[0x277D83B88];
  *(v31 + 64) = v34;
  *(v31 + 32) = v32;
  if (v30 >> 62)
  {
    v35 = sub_219BF7214();
  }

  else
  {
    v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = *(v0 + 448);
  *(v31 + 96) = v33;
  *(v31 + 104) = v34;
  *(v31 + 72) = v35;
  sub_219BF6214();
  sub_219BE5314();

  v37 = *(v0 + 352);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);
  v40 = *(v0 + 296);
  if (v35 < v36)
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_218F6B454(v0 + 104);
  (*(v39 + 8))(v38, v40);
  sub_2197C9978(v37, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v41 = *(v0 + 8);

  return v41(v30);
}

uint64_t sub_2197C2548()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[44];
  sub_219BF61F4();
  v4 = swift_allocObject();
  v0[24] = 0;
  *(v4 + 16) = xmmword_219C09BA0;
  v0[25] = 0xE000000000000000;
  v0[28] = v1;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  v5 = v0[24];
  v6 = v0[25];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = v2;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_219BE5314();

  sub_2197C9978(v3, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_2197C2714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_218E5B904;

  return sub_2197C27CC(a3, a5, a6);
}

uint64_t sub_2197C27CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for SportsSectionCurationRequest();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C2894, 0, 0);
}

uint64_t sub_2197C2894()
{
  v1 = v0;
  v4 = v0 + 9;
  v3 = v0[9];
  v2 = v4[1];
  v5 = v1[6];
  v6 = *(v5 + 16);
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  swift_unknownObjectRetain();
  sub_219BEDD14();
  v7 = (v2 + *(v3 + 20));
  v8 = *v7;
  v9 = v7[1];

  sub_2197C9978(v2, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  v10 = *(v5 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BF1724();
  v11 = sub_219BF5AB4();

  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v8;
  v41 = v6;
  v39 = v9;
  if (v12)
  {
    v42 = MEMORY[0x277D84F90];
    v13 = sub_21870B65C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return MEMORY[0x2821D23D8](v13);
    }

    v38 = v10;
    v14 = 0;
    v15 = v42;
    v16 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v16);
      }

      else
      {
      }

      v17 = sub_219BF16A4();
      v19 = v18;

      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
      }

      ++v14;
      *(v42 + 16) = v21 + 1;
      v22 = v42 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v16 = v11;
    }

    while (v12 != v14);

    v10 = v38;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v23 = sub_2194B1FF0(v15, v10);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v25 = v1[11];
  v24 = v1[12];
  v26 = v1[5];
  v27 = qword_280F616D8;
  v28 = MEMORY[0x277D30BC8];
  v1[13] = qword_280F616D8;
  v29 = *v28;
  v30 = *(v25 + 40);
  v31 = *MEMORY[0x277D32998];
  v32 = sub_219BEFBD4();
  (*(*(v32 - 8) + 104))(v24 + v30, v31, v32);
  v33 = v27;
  v34 = v29;
  v35 = sub_219A09690(v26);
  *v24 = v26;
  v24[1] = v41;
  v24[2] = v40;
  v24[3] = v39;
  v24[4] = v23;
  v24[5] = v33;
  v24[6] = v34;
  *(v24 + *(v25 + 44)) = v35;

  sub_219BF6214();
  sub_219BE5314();
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v1[14] = sub_21924C6E8(v24);
  v36 = swift_task_alloc();
  v1[15] = v36;
  *v36 = v1;
  v36[1] = sub_2197C2C9C;
  v13 = (v1 + 2);

  return MEMORY[0x2821D23D8](v13);
}

uint64_t sub_2197C2C9C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2197C2E9C;
  }

  else
  {

    v2 = sub_2197C2DB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197C2DB8()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_219BF6214();
  sub_219BE5314();
  sub_2197C9978(v1, type metadata accessor for SportsSectionCurationRequest);

  v5 = v0[1];

  return v5(v2, v3, v4);
}

uint64_t sub_2197C2E9C()
{
  v1 = *(v0 + 96);

  sub_219BF6214();
  sub_219BE5314();
  sub_2197C9978(v1, type metadata accessor for SportsSectionCurationRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2197C2F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_2197C3024;

  return sub_2197C3188(a3, a5, a6);
}

uint64_t sub_2197C3024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = v9[1];

    return v10();
  }

  else
  {
    v8[4] = a3;
    v8[5] = a2;
    v8[6] = a1;

    return MEMORY[0x2822009F8](sub_2197C9DE8, 0, 0);
  }
}

uint64_t sub_2197C3188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_219BF0354();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_219BEFBD4();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext();
  v4[22] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for SportsTopicClusteringRequest();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v4[28] = *(v9 + 64);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C33C4, 0, 0);
}

uint64_t sub_2197C33C4()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(*(v0 + 88) + 16);
  v6 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v49 = v5;
  swift_unknownObjectRetain();
  sub_219BEF134();
  sub_219BEF0B4();
  sub_2197C9910(*(v0 + 40) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v4, type metadata accessor for TodayFeedServiceContext);

  sub_218D559C0(v1, v4);
  v46 = v7;
  sub_2197C9978(v4, type metadata accessor for TodayFeedServiceContext);
  v8 = *(v2 + 8);
  v8(v1, v3);
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v55 = v8;
  v8(v1, v3);
  v45 = *(v0 + 48);
  v9 = qword_280E8D7A0;
  v43 = *MEMORY[0x277D30BC8];
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 240);
  v47 = *(v0 + 232);
  v48 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v59 = *(v0 + 160);
  v60 = *(v0 + 168);
  v53 = *(v0 + 152);
  v54 = *(v0 + 144);
  v14 = *(v0 + 136);
  v51 = *(v0 + 128);
  v34 = *(v0 + 120);
  v35 = *(v0 + 112);
  v44 = *(v0 + 96);
  v36 = *(v0 + 104);
  v37 = *(v0 + 88);
  v58 = *(v0 + 72);
  v15 = qword_280F616D8;
  *(v0 + 248) = qword_280F616D8;
  v41 = v15;
  v40 = FCFeedBinForTopicsInForYou();
  v42 = v6;
  sub_219BEF134();
  sub_219BEF524();
  v55(v11, v13);
  v39 = *(v0 + 280);
  v16 = v14[13];
  v16(v60, *MEMORY[0x277D329C0], v51);
  v16(v59, *MEMORY[0x277D32998], v51);
  v38 = *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BEF134();
  sub_219BEF524();
  v55(v11, v13);
  v57 = *(v0 + 281);
  sub_219BEF134();
  sub_219BEF524();
  v55(v11, v13);
  v56 = *(v0 + 56);
  sub_219BEF0B4();

  v17 = NewsCoreUserDefaults();
  v18 = [v17 BOOLForKey_];

  v19 = 135486;
  if (v18)
  {
    v19 = 151870;
  }

  v52 = v19;
  v20 = v14[2];
  v20(v53, v60, v51);
  v20(v54, v59, v51);
  v50 = sub_2194B0D40(MEMORY[0x277D84F90]);
  sub_219BF0344();
  *v10 = v58;
  v21 = *MEMORY[0x277D32C88];
  v22 = sub_219BF03B4();
  (*(*(v22 - 8) + 104))(v10, v21, v22);
  v20(&v10[v12[12]], v53, v51);
  v20(&v10[v12[13]], v54, v51);
  (*(v35 + 16))(&v10[v12[24]], v34, v36);
  *&v10[v12[15]] = 1;
  *&v10[v12[16]] = 5;
  *&v10[v12[17]] = 1;
  *&v10[v12[18]] = 0x7FFFFFFFFFFFFFFFLL;
  v10[v12[19]] = 0;
  *&v10[v12[28]] = 0x7FFFFFFFFFFFFFFFLL;
  v23 = v12[29];
  v24 = *(v35 + 8);

  v24(v34, v36);
  v25 = v14[1];
  v25(v54, v51);
  v25(v53, v51);
  v25(v59, v51);
  v25(v60, v51);
  *&v10[v23] = MEMORY[0x277D84F90];
  *&v10[v12[5]] = v49;
  *&v10[v12[6]] = v46;
  *&v10[v12[7]] = v45;
  *&v10[v12[8]] = v43;
  *&v10[v12[9]] = v41;
  *&v10[v12[10]] = v40;
  v10[v12[11]] = v39;
  *&v10[v12[14]] = v38;
  *&v10[v12[20]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v10[v12[21]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v10[v12[22]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v10[v12[23]] = v50;
  v10[v12[25]] = v57;
  v26 = &v10[v12[26]];
  *v26 = v56;
  v26[8] = 0;
  *&v10[v12[27]] = v52;
  sub_219BF6214();
  sub_219BE5314();
  v27 = *(v44 + *(v42 + 28));
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v10;
  sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
  sub_219BE3204();

  sub_2197C9910(v10, v47, type metadata accessor for SportsTopicClusteringRequest);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = swift_allocObject();
  sub_2197C9B98(v47, v30 + v29, type metadata accessor for SportsTopicClusteringRequest);
  v31 = sub_219BE2E54();
  type metadata accessor for SportsTopicClusteringService();
  *(v0 + 256) = sub_219BE2F84();

  v32 = swift_task_alloc();
  *(v0 + 264) = v32;
  *v32 = v0;
  v32[1] = sub_2197C3C0C;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2197C3C0C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2197C3E6C;
  }

  else
  {

    v2 = sub_2197C3D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197C3D28()
{
  v1 = v0[30];
  v5 = v0[3];
  v6 = v0[2];
  v4 = v0[4];
  sub_219BF6214();
  sub_219BE5314();
  sub_2197C9978(v1, type metadata accessor for SportsTopicClusteringRequest);

  v2 = v0[1];

  return v2(v6, v5, v4);
}

uint64_t sub_2197C3E6C()
{
  v1 = *(v0 + 240);

  sub_219BF6214();
  sub_219BE5314();
  sub_2197C9978(v1, type metadata accessor for SportsTopicClusteringRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2197C3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v67 = a4;
  v45 = a3;
  v44 = a2;
  v31[1] = a1;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v35 = v7;
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  v37 = a5;

  v38 = a6;

  sub_219BEF134();
  sub_219BEF524();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v42 = v46;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v33 = qword_280F616D8;
  sub_218E59C4C(v44);

  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v41 = v46;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v32 = v46;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v40 = v46;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v39 = v46;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v15 = v46;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v16 = v46;
  sub_219BF6214();
  v17 = v33;
  sub_219BE5314();
  v18 = v32;
  v62[0] = v41;
  v62[1] = v32;
  v62[2] = v40;
  v62[3] = v39;
  v62[4] = v15;
  v62[5] = 3;
  v62[6] = v16;
  v62[7] = v44;
  v62[8] = v45;
  v62[9] = v67;
  v19 = v37;
  v20 = v38;
  v62[10] = v37;
  v62[11] = v38;
  v21 = v43;
  v62[12] = v43;
  v63 = v42;
  *v64 = *v66;
  *&v64[3] = *&v66[3];
  v65 = v17;
  sub_2197C99D8(v62, &v46);
  v22 = v36;
  v36 = sub_21924D498(v62);
  v24 = v23;
  if (v22)
  {
    v46 = v41;
    v47 = v18;
    v48 = v40;
    v49 = v39;
    v50 = v15;
    v51 = 3;
    v52 = v16;
    v53 = v44;
    v54 = v45;
    v55 = v67;
    v56 = v19;
    v57 = v20;
    v58 = v21;
    v59 = v42;
    *v60 = *v66;
    *&v60[3] = *&v66[3];
    v61 = v17;
    sub_2197C9A34(&v46);
    v25 = v62;
  }

  else
  {
    sub_2197C9A34(v62);
    sub_2186F20D4();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v27 = sub_219458290(v36, v24);
    v29 = v28;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_219BF6214();
    sub_219BE5314();

    v46 = v41;
    v47 = v18;
    v48 = v40;
    v49 = v39;
    v50 = v15;
    v51 = 3;
    v52 = v16;
    v53 = v44;
    v54 = v45;
    v55 = v67;
    v56 = v37;
    v57 = v38;
    v58 = v43;
    v59 = v42;
    *v60 = *v66;
    *&v60[3] = *&v66[3];
    v61 = v17;
    v25 = &v46;
  }

  sub_2197C9A34(v25);
  return v36;
}

uint64_t sub_2197C467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  v8 = MEMORY[0x277D83D88];
  sub_2197C9CFC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v7[30] = swift_task_alloc();
  sub_2197C9CFC(0, &qword_280E90150, MEMORY[0x277D33EC8], v8);
  v7[31] = swift_task_alloc();
  sub_2197C9CFC(0, &unk_280E91A10, sub_2189AE994, v8);
  v7[32] = swift_task_alloc();
  v9 = sub_219BF2AB4();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  sub_2197C9CFC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v8);
  v7[36] = swift_task_alloc();
  v10 = sub_219BF2034();
  v7[37] = v10;
  v7[38] = *(v10 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  v7[41] = swift_task_alloc();
  sub_2197C98A4();
  v7[42] = v11;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v12 = sub_219BF47F4();
  v7[47] = v12;
  v7[48] = *(v12 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v13 = sub_219BF3484();
  v7[51] = v13;
  v7[52] = *(v13 - 8);
  v7[53] = swift_task_alloc();
  v14 = sub_219BF3C84();
  v7[54] = v14;
  v7[55] = *(v14 - 8);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v15 = sub_219BF3E84();
  v7[61] = v15;
  v7[62] = *(v15 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v16 = sub_219BF0BD4();
  v7[68] = v16;
  v7[69] = *(v16 - 8);
  v7[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C4BA4, 0, 0);
}

uint64_t sub_2197C4BA4()
{
  v232 = v0;
  if (!*(v0[26] + 16) && !*(v0[25] + 16))
  {
    v69 = sub_219BEEDD4();
    sub_2197C7B08(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D323A8], v69);
    swift_willThrow();

    v71 = v0[1];

    return v71();
  }

  v207 = *(v0[26] + 16);
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[29];
  v5 = v0[23];
  v192 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v6 = v4 + *(v192 + 20);
  v7 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v10 = *(v2 + 8);
  v8 = v2 + 8;
  v9 = v10;
  v10(v1, v3);
  i = v0[20];
  v12 = *(v6 + *(v7 + 80));
  sub_219BEF134();
  v13 = v12;
  sub_219BEF524();
  v10(v1, v3);
  if ((i & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v191 = v6;
    v13 = v0[21];
    v226 = v0;
    v9 = v0[27];
    v6 = v9 >> 62;
    if (!(v9 >> 62))
    {
      v8 = 0;
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= i)
      {
        v15 = i;
      }

      else
      {
        v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (i)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14 >= v16)
      {
        goto LABEL_12;
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }
  }

  v14 = sub_219BF7214();
  v73 = sub_219BF7214();
  if (v73 < 0)
  {
    __break(1u);
    goto LABEL_168;
  }

  v8 = v14 >> 63;
  if (v14 >= i)
  {
    v74 = i;
  }

  else
  {
    v74 = v14;
  }

  if (v14 < 0)
  {
    v74 = i;
  }

  if (i)
  {
    v16 = v74;
  }

  else
  {
    v16 = 0;
  }

  if (sub_219BF7214() < v16)
  {
    goto LABEL_110;
  }

LABEL_12:
  v217 = v13;
  v221 = v9 & 0xC000000000000001;
  if ((v9 & 0xC000000000000001) == 0)
  {

    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_20:

    v18 = sub_219BF7564();
    v5 = v20;
    v16 = v21;
    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v16)
  {
    sub_2186D6710(0, &qword_280E8E420);
    v17 = 0;
    do
    {
      v13 = (v17 + 1);
      sub_219BF7334();
      v17 = v13;
    }

    while (v16 != v13);
  }

  if (v6)
  {
    goto LABEL_20;
  }

LABEL_17:
  v5 = 0;
  v18 = v9 & 0xFFFFFFFFFFFFFF8;
  v19 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
  v16 = (2 * v16) | 1;
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v13 = v19;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (__OFSUB__(v16 >> 1, v5))
  {
    goto LABEL_163;
  }

  if (v24 != (v16 >> 1) - v5)
  {
    goto LABEL_164;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (i)
  {
    goto LABEL_29;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v22)
  {
    swift_unknownObjectRelease();
LABEL_29:
    if ((i & 0x8000000000000000) != 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_111:
      v73 = sub_219BF7214();
      if (v73 < 0)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_71;
      }

LABEL_168:
      v16 = v73;
    }

    else
    {
      v16 = *(i + 16);
    }

    if (v14 >= v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v14;
    }

    if (v8)
    {
      v25 = v16;
    }

    if (v16)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v14 < v26)
    {
      goto LABEL_113;
    }

    if (v6)
    {
      if (v9 < 0)
      {
        v5 = v226[27];
      }

      else
      {
        v5 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_219BF7214() < v26)
      {
        goto LABEL_114;
      }

      v27 = sub_219BF7214();
    }

    else
    {
      v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 < v26)
      {
        goto LABEL_114;
      }
    }

    if (v27 < v14)
    {
      goto LABEL_115;
    }

    if (v8)
    {
      goto LABEL_116;
    }

    if (!v221 || v26 == v14)
    {

      if (!v6)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v26 >= v14)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        swift_unknownObjectRelease();
        v38 = v8;
        v37 = v14;
        v36 = v5;
LABEL_62:
        sub_218B673FC(v13, v36, v37, v38);
        v8 = v39;
        v9 = v226;
        goto LABEL_69;
      }

      sub_2186D6710(0, &qword_280E8E420);

      v28 = v26;
      do
      {
        v29 = v28 + 1;
        sub_219BF7334();
        v28 = v29;
      }

      while (v14 != v29);
      if (!v6)
      {
LABEL_58:
        v30 = v9 & 0xFFFFFFFFFFFFFF8;
        v31 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
        v32 = (2 * v14) | 1;
        goto LABEL_61;
      }
    }

    v30 = sub_219BF7564();
    v31 = v33;
    v26 = v34;
    v32 = v35;
LABEL_61:
    v13 = sub_219A781E8(v217, v30, v31, v26, v32);
    if ((v38 & 1) == 0)
    {
      goto LABEL_62;
    }

    v8 = v38;
    v14 = v37;
    v5 = v36;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
    }

    v41 = *(v40 + 16);

    v9 = v226;
    if (__OFSUB__(v8 >> 1, v14))
    {
      goto LABEL_165;
    }

    if (v41 != (v8 >> 1) - v14)
    {
      goto LABEL_166;
    }

    v8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_70;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_69:
    swift_unknownObjectRelease();
LABEL_70:
    if (qword_280E8D7A0 != -1)
    {
      goto LABEL_117;
    }

LABEL_71:
    v42 = qword_280F616D8;
    sub_2186F20D4();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D83B88];
    *(v43 + 16) = xmmword_219C09EC0;
    v5 = MEMORY[0x277D83C10];
    *(v43 + 56) = v44;
    *(v43 + 64) = v5;
    *(v43 + 32) = v16;
    if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
    {
      v75 = v43;
      v45 = sub_219BF7214();
      v43 = v75;
    }

    else
    {
      v45 = *(v8 + 16);
    }

    *(v43 + 96) = v44;
    *(v43 + 104) = v5;
    *(v43 + 72) = v45;
    sub_219BF6214();
    sub_219BE5314();

    v46 = sub_21946A4EC(i);

    if (v46 >> 62)
    {
      v16 = sub_219BF7214();
    }

    else
    {
      v16 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x277D34100];
    v190 = v42;
    if (v16)
    {
      v215 = v46;
      v231[0] = MEMORY[0x277D84F90];
      v13 = v231;
      sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v47 = 0;
      v6 = *(v9 + 440);
      v48 = v231[0];
      v49 = v215;
      v217 = v215 & 0xC000000000000001;
      v221 = v16;
      v50 = *v18;
      do
      {
        if (v217)
        {
          v51 = MEMORY[0x21CECE0F0](v47, v49);
        }

        else
        {
          v51 = swift_unknownObjectRetain();
        }

        v52 = v226[60];
        v53 = v226[54];
        *v52 = v51;
        (*(v6 + 104))(v52, v50, v53);
        v231[0] = v48;
        v18 = *(v48 + 16);
        v54 = *(v48 + 24);
        if (v18 >= v54 >> 1)
        {
          sub_218C34A88(v54 > 1, v18 + 1, 1);
          v49 = v215;
          v48 = v231[0];
        }

        v55 = v226[60];
        v56 = v226[54];
        ++v47;
        *(v48 + 16) = v18 + 1;
        (*(v6 + 32))(v48 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v55, v56);
      }

      while (v16 != v47);
    }

    v16 = v226[67];
    v5 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v5);
    sub_218F0BB90(v5);
    sub_219BF3E74();
    v57 = sub_21946A4EC(v8);

    if (v57 >> 62)
    {
      v14 = sub_219BF7214();
      v9 = v226;
      if (!v14)
      {
LABEL_121:

        goto LABEL_122;
      }
    }

    else
    {
      v14 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v226;
      if (!v14)
      {
        goto LABEL_121;
      }
    }

    v58 = v57;
    v231[0] = v5;
    v13 = v231;
    sub_218C34A88(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      goto LABEL_161;
    }

    v59 = 0;
    v8 = *(v9 + 440);
    v60 = v231[0];
    v61 = v58;
    v221 = v58 & 0xC000000000000001;
    LODWORD(v217) = *MEMORY[0x277D34100];
    v6 = v8 + 104;
    do
    {
      if (v221)
      {
        v62 = MEMORY[0x21CECE0F0](v59, v61);
      }

      else
      {
        v62 = swift_unknownObjectRetain();
      }

      v63 = v226[59];
      v64 = v226[54];
      *v63 = v62;
      (*v6)(v63, v217, v64);
      v231[0] = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_218C34A88(v65 > 1, v66 + 1, 1);
        v60 = v231[0];
      }

      v67 = v226[59];
      v68 = v226[54];
      ++v59;
      *(v60 + 16) = v66 + 1;
      (*(v8 + 32))(v60 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v66, v67, v68);
      v61 = v58;
    }

    while (v14 != v59);

    v9 = v226;
LABEL_122:
    v18 = *(v9 + 528);
    v76 = *(v9 + 224);
    v16 = MEMORY[0x277D84F90];
    v5 = sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v16);
    sub_218F0BB90(v16);
    sub_219BF3E74();
    if (v76 >> 62)
    {
      v14 = sub_219BF7214();
    }

    else
    {
      v14 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
      goto LABEL_136;
    }

    v231[0] = MEMORY[0x277D84F90];
    v13 = v231;
    sub_218C34A88(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_unknownObjectRelease();
    v19 = v13;
LABEL_21:
    sub_218B673FC(v18, v19, v5, v16);
  }

  v77 = v231[0];
  v78 = *(v9 + 440);
  v79 = *(v9 + 416);
  if ((v76 & 0xC000000000000001) != 0)
  {
    v80 = 0;
    v227 = *MEMORY[0x277D33DF0];
    v222 = (v79 + 104);
    v218 = *MEMORY[0x277D34130];
    do
    {
      v81 = *(v9 + 464);
      v82 = v9;
      v83 = *(v9 + 432);
      v84 = v82[53];
      v85 = v82[51];
      v86 = MEMORY[0x21CECE0F0](v80, v82[28]);
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *v84 = v87;
      (*v222)(v84, v227, v85);
      sub_219BF1AC4();
      (*(v78 + 104))(v81, v218, v83);
      v231[0] = v77;
      v89 = *(v77 + 16);
      v88 = *(v77 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_218C34A88(v88 > 1, v89 + 1, 1);
        v77 = v231[0];
      }

      v90 = v82[58];
      v91 = v82[54];
      ++v80;
      *(v77 + 16) = v89 + 1;
      (*(v78 + 32))(v77 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v89, v90, v91);
      v9 = v82;
    }

    while (v14 != v80);
  }

  else
  {
    v92 = (*(v9 + 224) + 32);
    v228 = *MEMORY[0x277D33DF0];
    v223 = (v79 + 104);
    v219 = *MEMORY[0x277D34130];
    do
    {
      v93 = v14;
      v94 = *(v9 + 448);
      v95 = v9;
      v98 = v9 + 424;
      v97 = *(v9 + 424);
      v96 = *(v98 + 8);
      v99 = v95[51];
      v100 = *v92;
      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      *v97 = v101;
      (*v223)(v97, v228, v99);

      sub_219BF1AC4();
      (*(v78 + 104))(v94, v219, v96);
      v231[0] = v77;
      v103 = *(v77 + 16);
      v102 = *(v77 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_218C34A88(v102 > 1, v103 + 1, 1);
        v77 = v231[0];
      }

      v104 = v95[56];
      v105 = v95[54];
      *(v77 + 16) = v103 + 1;
      (*(v78 + 32))(v77 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v103, v104, v105);
      ++v92;
      v14 = v93 - 1;
      v9 = v95;
    }

    while (v93 != 1);
  }

LABEL_136:
  v106 = *(v9 + 200);
  v107 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v107);
  sub_218F0BB90(v107);
  sub_219BF3E74();
  v108 = *(v106 + 16);
  if (v108)
  {
    v109 = *(v9 + 496);
    v110 = *(v9 + 440);
    v201 = *(v9 + 320);
    v203 = *(v9 + 336);
    v193 = *(v106 + 16);
    v111 = *(v9 + 200);
    sub_218C35610(0, v108, 0);
    v112 = type metadata accessor for SportsSection();
    v113 = v112;
    v114 = 0;
    v197 = v111 + ((*(*(v112 - 8) + 80) + 32) & ~*(*(v112 - 8) + 80));
    v115 = v193;
    v116 = v107;
    v195 = *(*(v112 - 8) + 72);
    if (v207)
    {
      v117 = v107;
    }

    else
    {
      v117 = &unk_282A29988;
    }

    v205 = v109;
    v194 = v117;
    v199 = v112;
    do
    {
      v213 = v116;
      v118 = *(v9 + 360);
      v119 = *(v9 + 368);
      v120 = *(v203 + 48);
      sub_2197C9910(v197 + v114 * v195, v119 + v120, type metadata accessor for SportsSection);
      *v118 = v114;
      v121 = v118 + *(v203 + 48);
      sub_2197C9B98(v119 + v120, v121, type metadata accessor for SportsSection);
      v231[0] = 0x2D6F726568;
      v231[1] = 0xE500000000000000;
      v216 = v114;
      *(v9 + 176) = v114;
      v122 = sub_219BF7894();
      MEMORY[0x21CECC330](v122);

      v123 = *(v121 + *(v113 + 20));
      v124 = *(v123 + 16);
      if (v124)
      {
        v210 = v121;
        v231[0] = v107;
        sub_218C34A88(0, v124, 0);
        v125 = v231[0];
        v126 = (v123 + 32);
        v127 = *(v110 + 104);
        do
        {
          **(v9 + 456) = *v126;
          v127();
          v231[0] = v125;
          v128 = v9;
          v130 = *(v125 + 16);
          v129 = *(v125 + 24);
          swift_unknownObjectRetain();
          if (v130 >= v129 >> 1)
          {
            sub_218C34A88(v129 > 1, v130 + 1, 1);
            v125 = v231[0];
          }

          v131 = *(v128 + 456);
          v132 = *(v128 + 432);
          *(v125 + 16) = v130 + 1;
          (*(v110 + 32))(v125 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v130, v131, v132);
          v126 += 3;
          --v124;
          v9 = v128;
        }

        while (v124);
        v107 = MEMORY[0x277D84F90];
        v115 = v193;
        v121 = v210;
      }

      v133 = *(v9 + 360);
      v134 = *(v9 + 328);
      sub_218E8BFB8();
      sub_218E8C1FC();
      sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
      sub_219BEDD14();
      v135 = (v134 + *(v201 + 24));
      v136 = v135[2];
      v137 = *v135;
      *(v9 + 32) = v135[1];
      *(v9 + 48) = v136;
      *(v9 + 16) = v137;
      v138 = *v135;
      v139 = *(v9 + 48);
      *(v9 + 80) = *(v9 + 32);
      *(v9 + 96) = v138;
      *(v9 + 64) = v139;
      sub_218A18DB4(v9 + 96, v9 + 112);
      sub_218A18DB4(v9 + 80, v9 + 128);
      sub_218A18DB4(v9 + 64, v9 + 144);
      sub_2197C9978(v134, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
      sub_2198F4470(v9 + 16);
      sub_2189AD3D8(v9 + 96);
      sub_2189AD3D8(v9 + 80);
      sub_2189AD3D8(v9 + 64);
      v113 = v199;
      v140 = *(v121 + *(v199 + 24));

      sub_2194B1FF0(v194, v140);

      sub_218F0BB90(v107);
      sub_219BF3E74();
      sub_2197C9978(v133, sub_2197C98A4);
      v116 = v213;
      v142 = *(v213 + 16);
      v141 = *(v213 + 24);
      if (v142 >= v141 >> 1)
      {
        sub_218C35610(v141 > 1, v142 + 1, 1);
        v116 = v213;
      }

      v143 = *(v9 + 512);
      v144 = *(v9 + 488);
      v114 = v216 + 1;
      *(v116 + 16) = v142 + 1;
      (*(v205 + 32))(v116 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v142, v143, v144);
    }

    while (v216 + 1 != v115);
  }

  sub_219BF47E4();
  v145 = MEMORY[0x277D84F90];
  if (v207)
  {
    v146 = *(v9 + 496);
    v224 = *(v9 + 336);
    v147 = *(v9 + 208);
    v231[0] = MEMORY[0x277D84F90];
    sub_218C35610(0, v207, 0);
    v148 = v231[0];
    v149 = 0;
    v150 = *(type metadata accessor for SportsSection() - 8);
    v151 = v147 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v220 = *(v150 + 72);
    v229 = v146;
    do
    {
      v152 = *(v9 + 504);
      v154 = *(v9 + 344);
      v153 = *(v9 + 352);
      v155 = *(v9 + 232);
      v156 = *(v224 + 48);
      sub_2197C9910(v151, v153 + v156, type metadata accessor for SportsSection);
      *v154 = v149;
      v157 = *(v224 + 48);
      sub_2197C9B98(v153 + v156, v154 + v157, type metadata accessor for SportsSection);
      sub_2197C70A8(v149, v154 + v157, v155, v152);
      sub_2197C9978(v154, sub_2197C98A4);
      v231[0] = v148;
      v159 = *(v148 + 16);
      v158 = *(v148 + 24);
      if (v159 >= v158 >> 1)
      {
        sub_218C35610(v158 > 1, v159 + 1, 1);
        v148 = v231[0];
      }

      v160 = *(v9 + 504);
      v161 = *(v9 + 488);
      ++v149;
      *(v148 + 16) = v159 + 1;
      (*(v229 + 32))(v148 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v159, v160, v161);
      v151 += v220;
    }

    while (v207 != v149);
    v145 = MEMORY[0x277D84F90];
  }

  v162 = *(v9 + 528);
  v196 = *(v9 + 536);
  v198 = *(v9 + 520);
  v163 = v9;
  v166 = v9 + 488;
  v165 = *(v9 + 488);
  v164 = *(v166 + 8);
  v200 = v162;
  v202 = *(v163 + 392);
  v167 = *(v163 + 384);
  v204 = *(v163 + 376);
  v206 = *(v163 + 400);
  v209 = *(v163 + 288);
  v211 = *(v163 + 256);
  v212 = *(v163 + 248);
  v168 = *(v163 + 232);
  v214 = *(v163 + 240);
  sub_219BF47E4();
  v169 = (v168 + *(v192 + 24));
  v225 = v169[3];
  v230 = v169[4];
  __swift_project_boxed_opaque_existential_1(v169, v225);
  v170 = MEMORY[0x277D84560];
  sub_2197C9CFC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v171 = *(v164 + 72);
  v172 = (*(v164 + 80) + 32) & ~*(v164 + 80);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_219C0B8C0;
  v173 = v208 + v172;
  v174 = *(v164 + 16);
  v174(v173, v196, v165);
  v174(v173 + v171, v198, v165);
  v174(v173 + 2 * v171, v200, v165);
  sub_2197C9CFC(0, &unk_280E8B780, MEMORY[0x277D34500], v170);
  v175 = *(v167 + 72);
  v176 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_219C09EC0;
  v178 = v177 + v176;
  v179 = *(v167 + 16);
  v179(v178, v206, v204);
  v179(v178 + v175, v202, v204);
  v180 = sub_219BEC004();
  (*(*(v180 - 8) + 56))(v209, 1, 1, v180);
  sub_219A95188(v145);
  sub_219A95188(v145);
  sub_219A951A0(v145);
  sub_219A951B8(v145);
  sub_219A952CC(v145);
  sub_219A952E4(v145);
  sub_219A953F8(v145);
  sub_219BF2024();
  sub_2189AE994(0);
  v182 = v181;
  v183 = *(v181 - 8);
  (*(v183 + 16))(v211, v191, v181);
  (*(v183 + 56))(v211, 0, 1, v182);
  v184 = sub_219BF35D4();
  (*(*(v184 - 8) + 56))(v212, 1, 1, v184);
  *(v163 + 592) = 19;
  sub_2197C9C7C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v185 = sub_219BF2774();
  (*(*(v185 - 8) + 56))(v214, 1, 1, v185);
  *MEMORY[0x277D30BC8];
  v190;
  sub_219BF2A84();
  v186 = swift_task_alloc();
  *(v163 + 568) = v186;
  *v186 = v163;
  v186[1] = sub_2197C66D8;
  v187 = *(v163 + 312);
  v188 = *(v163 + 280);
  v189 = *(v163 + 192);

  return MEMORY[0x2821921B8](v189, v187, v188, v225, v230);
}

uint64_t sub_2197C66D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 272);
  v4[72] = v1;

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  v9 = v4[39];
  v10 = v4[37];
  v11 = v4[35];
  v12 = v4[33];
  if (v1)
  {
    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = sub_2197C6B04;
  }

  else
  {
    v4[73] = a1;
    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = sub_2197C68DC;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2197C68DC()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[50];
  v7 = v0[47];
  v8 = *(v0[48] + 8);
  v8();
  (v8)(v6, v7);
  v9 = *(v5 + 8);
  v9(v3, v4);
  v9(v2, v4);
  v9(v1, v4);

  v10 = v0[1];
  v11 = v0[73];

  return v10(v11);
}

uint64_t sub_2197C6B04()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[50];
  v7 = v0[47];
  v8 = *(v0[48] + 8);
  v8(v0[49], v7);
  v8(v6, v7);
  v9 = *(v5 + 8);
  v9(v3, v4);
  v9(v2, v4);
  v9(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2197C6D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[3] = a1;
  v13 = a2;
  sub_2197C9CFC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEF554();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v12 = sub_219BED8D4();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);

  v8 = sub_219BEDCB4();
  v11[1] = v9;
  v11[2] = v8;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v5 + 32))(v13, v7, v12);
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2197C70A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v28 = sub_219BF3C84();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v29);
  v31 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38[0] = 0x2D6E6F6974636573;
  *(&v38[0] + 1) = 0xE800000000000000;
  *&v42[0] = a1;
  v11 = sub_219BF7894();
  MEMORY[0x21CECC330](v11);

  v12 = v38[0];
  v30 = type metadata accessor for SportsSection();
  v13 = *(a2 + *(v30 + 20));
  v14 = *(v13 + 16);
  if (v14)
  {
    v25[1] = *(&v12 + 1);
    v25[2] = v12;
    v26 = a2;
    v27 = a4;
    *&v38[0] = MEMORY[0x277D84F90];
    sub_218C34A88(0, v14, 0);
    v15 = *&v38[0];
    v16 = (v13 + 32);
    v36 = *MEMORY[0x277D34128];
    v34 = *(v7 + 104);
    v35 = v7 + 104;
    v33 = v7 + 32;
    v17 = v28;
    do
    {
      *v9 = *v16;
      v34(v9, v36, v17);
      *&v38[0] = v15;
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      swift_unknownObjectRetain();
      if (v18 >= v19 >> 1)
      {
        sub_218C34A88(v19 > 1, v18 + 1, 1);
        v15 = *&v38[0];
      }

      *(v15 + 16) = v18 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, v17);
      v16 += 3;
      --v14;
    }

    while (v14);
    a2 = v26;
  }

  sub_218E8BFB8();
  sub_218E8C1FC();
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  v20 = v31;
  sub_219BEDD14();
  v21 = (v20 + *(v29 + 24));
  v22 = v21[1];
  v38[0] = *v21;
  v38[1] = v22;
  v39 = v21[2];
  v40 = v38[0];
  v41 = v22;
  v42[0] = v39;
  sub_218A18DB4(&v40, v37);
  sub_218A18DB4(&v41, v37);
  sub_218A18DB4(v42, v37);
  sub_2197C9978(v20, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  sub_2198F4470(v38);
  sub_2189AD3D8(&v40);
  sub_2189AD3D8(&v41);
  sub_2189AD3D8(v42);
  v23 = *(a2 + *(v30 + 24));

  sub_2194B1FF0(&unk_282A29958, v23);
  sub_2189AD3D8(&unk_282A29978);
  sub_218F0BB90(MEMORY[0x277D84F90]);
  return sub_219BF3E74();
}

uint64_t sub_2197C74D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2197BE7AC(a1, a2);
}

uint64_t sub_2197C757C@<X0>(uint64_t a1@<X8>)
{
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2197C7640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  a2[4] = sub_2197C7B08(&qword_280EA6630, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  a2[5] = sub_2197C7B08(&qword_280EA6638, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2197C9910(v2 + v4, boxed_opaque_existential_1, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
}

uint64_t sub_2197C7708()
{
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);

  return sub_219BEDCA4();
}

uint64_t sub_2197C7778@<X0>(uint64_t *a1@<X8>)
{
  sub_2197C9CFC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197C9978(inited + 32, sub_2188317B0);
  sub_2197C9CFC(0, &qword_280EE76F0, type metadata accessor for IntroToSportsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2197C9D60();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2197C7940()
{
  sub_2197C7B08(&qword_280EA03D8, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2197C79AC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_219BF53D4();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_219BF5924();

    v4 = sub_218B0C5E4(v3);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197C7B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IntroToSportsTodayFeedGroupEmitter()
{
  result = qword_280EA03B0;
  if (!qword_280EA03B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197C7BB0()
{
  sub_2197C9A88(319, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsTopicClusteringService();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SportsSectionService();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SportsScoreSorter();
            if (v5 <= 0x3F)
            {
              sub_2186C709C(319, qword_280EC7670);
              if (v6 <= 0x3F)
              {
                sub_218735F3C();
                if (v7 <= 0x3F)
                {
                  sub_2186C709C(319, qword_280EA48C0);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2197C7E84(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntroToSportsTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BF1934() - 8);
  v10 = *(v1 + v7);
  v11 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = v1 + v8;
  v13 = *(v1 + v8);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187609C8;

  return sub_2197C1314(a1, v1 + v6, v10, v13, v14, v1 + v11);
}

uint64_t sub_2197C7FFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntroToSportsTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BF1934() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187608D4;

  return sub_2197C2714(a1, v1 + v6, v12, v13, v14, v1 + v10);
}

uint64_t sub_2197C8174(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntroToSportsTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2187609C8;

  return sub_2197C2F6C(a1, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_2197C82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = v17;
  v9[27] = v8;
  v9[24] = a7;
  v9[25] = a8;
  v9[22] = a5;
  v9[23] = a6;
  v9[20] = a3;
  v9[21] = a4;
  v9[18] = a1;
  v9[19] = a2;
  v10 = sub_219BF1934();
  v9[28] = v10;
  v9[29] = *(v10 - 8);
  v9[30] = swift_task_alloc();
  v9[31] = type metadata accessor for CuratedTagFeedGroupConfigData();
  v9[32] = swift_task_alloc();
  v11 = type metadata accessor for TagFeedCuration(0);
  v9[33] = v11;
  v9[34] = *(v11 - 8);
  v9[35] = swift_task_alloc();
  v12 = sub_219BF0354();
  v9[36] = v12;
  v9[37] = *(v12 - 8);
  v9[38] = swift_task_alloc();
  v13 = sub_219BEFBD4();
  v9[39] = v13;
  v9[40] = *(v13 - 8);
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext();
  v9[43] = swift_task_alloc();
  v14 = sub_219BF0BD4();
  v9[44] = v14;
  v9[45] = *(v14 - 8);
  v9[46] = swift_task_alloc();
  v9[47] = type metadata accessor for SportsTopicClusteringRequest();
  v9[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C859C, 0, 0);
}

uint64_t sub_2197C859C()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(*(v0 + 160) + 16);
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  v94 = v5;
  swift_unknownObjectRetain();
  sub_219BEF134();
  sub_219BEF0B4();
  sub_2197C9910(*(v0 + 40) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v3, type metadata accessor for TodayFeedServiceContext);

  sub_218D559C0(v1, v3);
  v93 = v6;
  sub_2197C9978(v3, type metadata accessor for TodayFeedServiceContext);
  v7 = *(v2 + 8);
  v7(v1, v4);
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v106 = v7;
  v7(v1, v4);
  v92 = *(v0 + 48);
  v8 = qword_280E8D7A0;
  v91 = *MEMORY[0x277D30BC8];
  if (v8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    v100 = *(v0 + 336);
    v103 = *(v0 + 328);
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v107 = *(v0 + 160);
    v13 = qword_280F616D8;
    *(v0 + 392) = qword_280F616D8;
    v95 = v13;
    v90 = FCFeedBinForTopicsInForYou();
    sub_219BEF134();
    sub_219BEF524();
    v106(v9, v10);
    v110 = v0;
    v14 = *(v0 + 424);
    v15 = *(v11 + 104);
    v15(v100, *MEMORY[0x277D329C0], v12);
    v15(v103, *MEMORY[0x277D32998], v12);
    v16 = *(v107 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

    v18 = sub_2194796A0(v17, v16);
    sub_219BF1724();
    v19 = sub_219BF5AB4();

    v20 = v19 >> 62 ? sub_219BF7214() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v110;
    v111 = MEMORY[0x277D84F90];
    v88 = v18;
    if (v20)
    {
      v112 = MEMORY[0x277D84F90];
      v22 = sub_21870B65C(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
        return MEMORY[0x2821D23D8](v22);
      }

      v23 = 0;
      v24 = v112;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v23, v19);
        }

        else
        {
        }

        v25 = sub_219BF16A4();
        v27 = v26;

        v29 = *(v112 + 16);
        v28 = *(v112 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_21870B65C((v28 > 1), v29 + 1, 1);
        }

        ++v23;
        *(v112 + 16) = v29 + 1;
        v30 = v112 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v20 != v23);

      v21 = v110;
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v31 = v21[47];
    v32 = v21[48];
    v33 = v21[46];
    v108 = v21[44];
    v101 = v21[42];
    v82 = v21[41];
    v99 = v21[40];
    v96 = v21[39];
    v97 = v21[38];
    v83 = v21[37];
    v85 = v21[36];
    v87 = v21[21];
    v98 = v21[18];
    v89 = sub_2194B1FF0(v24, v88);

    sub_219BEF204();
    sub_219BEF134();
    sub_219BEF524();

    v106(v33, v108);
    v86 = v21[7];
    sub_219BEF1E4();
    sub_219BEF134();
    sub_219BEF524();

    v106(v33, v108);
    v84 = v21[8];
    sub_219BEF1F4();
    sub_219BEF134();
    sub_219BEF524();

    v106(v33, v108);
    v81 = v21[9];
    sub_219BEF1B4();
    sub_219BEF134();
    sub_219BEF524();

    v106(v33, v108);
    v80 = v21[10];
    sub_219BEF1D4();
    sub_219BEF134();
    sub_219BEF524();

    v106(v33, v108);
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    v79 = *(v21 + 425);
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    v77 = v21[11];
    sub_219BEF0B4();

    v34 = NewsCoreUserDefaults();
    v35 = [v34 BOOLForKey_];

    v36 = 135486;
    if (v35)
    {
      v36 = 151870;
    }

    v74 = v36;
    *v32 = v98;
    v37 = *MEMORY[0x277D32C88];
    v38 = sub_219BF03B4();
    (*(*(v38 - 8) + 104))(v32, v37, v38);
    v39 = *(v99 + 16);
    v39(&v32[v31[12]], v101, v96);
    v39(&v32[v31[13]], v82, v96);
    (*(v83 + 16))(&v32[v31[24]], v97, v85);
    v40 = v31[15];
    *&v32[v40] = 1;
    v41 = v21;
    v72 = v40;
    v73 = v31[16];
    *&v32[v73] = 5;
    v75 = v31[17];
    *&v32[v75] = 1;
    v76 = v31[18];
    *&v32[v76] = 0x7FFFFFFFFFFFFFFFLL;
    v78 = v31[19];
    v32[v78] = 0;
    *&v32[v31[28]] = 0x7FFFFFFFFFFFFFFFLL;
    v42 = v31[29];
    v43 = *(v83 + 8);

    v43(v97, v85);
    v44 = *(v99 + 8);
    v44(v82, v96);
    v44(v101, v96);
    v102 = v42;
    *&v32[v42] = MEMORY[0x277D84F90];
    *&v32[v31[5]] = v94;
    *&v32[v31[6]] = v93;
    *&v32[v31[7]] = v92;
    *&v32[v31[8]] = v91;
    *&v32[v31[9]] = v95;
    *&v32[v31[10]] = v90;
    v32[v31[11]] = v14;
    *&v32[v31[14]] = v89;
    *&v32[v31[20]] = v86;
    *&v32[v31[21]] = v84;
    *&v32[v31[22]] = v81;
    *&v32[v31[23]] = v80;
    v32[v31[25]] = v79;
    v45 = &v32[v31[26]];
    *v45 = v77;
    v45[8] = 0;
    *&v32[v31[27]] = v74;
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    *&v32[v72] = v21[13];
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    *&v32[v73] = v21[14];
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    *&v32[v75] = v21[15];
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    *&v32[v76] = v21[16];
    sub_219BEF134();
    sub_219BEF524();
    v106(v33, v108);
    v104 = v32;
    v32[v78] = *(v21 + 426);
    v46 = *(v87 + 16);
    if (!v46)
    {
      break;
    }

    v47 = v41[34];
    v109 = v41[31];
    v48 = v41[29];
    v106 = *(v41[33] + 28);
    v49 = v41[21] + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v105 = *(v47 + 72);
    v50 = (v48 + 16);
    v51 = (v48 + 8);
    v111 = MEMORY[0x277D84F90];
    while (1)
    {
      v52 = v110[35];
      v53 = v110[32];
      v54 = v110[30];
      v55 = v110[28];
      sub_2197C9910(v49, v52, type metadata accessor for TagFeedCuration);
      sub_2197C9A88(0, &qword_280E92490, type metadata accessor for CuratedTagFeedGroupConfigData, sub_2197C9B14, sub_2197C9B48);
      sub_219BEDD14();
      (*v50)(v54, v53 + *(v109 + 20), v55);
      sub_2197C9978(v53, type metadata accessor for CuratedTagFeedGroupConfigData);
      v56 = sub_219BF1754();
      (*v51)(v54, v55);
      sub_2197C9978(v52, type metadata accessor for TagFeedCuration);
      v57 = *(v56 + 16);
      v58 = v111;
      v0 = *(v111 + 2);
      v59 = v0 + v57;
      if (__OFADD__(v0, v57))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v59 > *(v111 + 3) >> 1)
      {
        if (v0 <= v59)
        {
          v61 = v0 + v57;
        }

        else
        {
          v61 = v0;
        }

        v58 = sub_218840D24(isUniquelyReferenced_nonNull_native, v61, 1, v111);
      }

      if (*(v56 + 16))
      {
        if ((*(v58 + 3) >> 1) - *(v58 + 2) < v57)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v57)
        {
          v62 = *(v58 + 2);
          v63 = __OFADD__(v62, v57);
          v64 = v62 + v57;
          if (v63)
          {
            goto LABEL_39;
          }

          *(v58 + 2) = v64;
        }
      }

      else
      {

        if (v57)
        {
          goto LABEL_37;
        }
      }

      v111 = v58;
      v49 += v105;
      if (!--v46)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_33:
  v65 = v110[48];
  v67 = v110[24];
  v66 = v110[25];
  v68 = v110[23];
  v110[17] = v111;
  sub_2186D0BA8();
  sub_2197C7B08(&qword_280E8EDE0, sub_2186D0BA8);
  v69 = sub_219BF56E4();

  *(v104 + v102) = v69;
  sub_219BF6214();
  sub_219BE5314();
  v110[50] = sub_218E54FE0(v65, v68, v67, v66);
  v70 = swift_task_alloc();
  v110[51] = v70;
  *v70 = v110;
  v70[1] = sub_2197C9500;
  v22 = (v110 + 2);

  return MEMORY[0x2821D23D8](v22);
}

uint64_t sub_2197C9500()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_2197C9764;
  }

  else
  {

    v2 = sub_2197C961C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197C961C()
{
  v1 = v0[48];
  v5 = v0[3];
  v6 = v0[2];
  v4 = v0[4];
  sub_219BF6214();
  sub_219BE5314();
  sub_2197C9978(v1, type metadata accessor for SportsTopicClusteringRequest);

  v2 = v0[1];

  return v2(v6, v5, v4);
}

uint64_t sub_2197C9764()
{

  v1 = *(v0 + 384);
  sub_219BF6214();
  sub_219BE5314();
  sub_2197C9978(v1, type metadata accessor for SportsTopicClusteringRequest);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2197C98A4()
{
  if (!qword_280E8E960)
  {
    type metadata accessor for SportsSection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E960);
    }
  }
}

uint64_t sub_2197C9910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197C9978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2197C9A88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BEDD94();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2197C9B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2197C9C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2197C9CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2197C9D60()
{
  result = qword_280EE76F8;
  if (!qword_280EE76F8)
  {
    sub_2197C9CFC(255, &qword_280EE76F0, type metadata accessor for IntroToSportsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE76F8);
  }

  return result;
}

uint64_t sub_2197C9E14(uint64_t a1)
{
  v2 = sub_2197C9ED4(qword_280E94CD8);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2197C9ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2197C9F18()
{
  swift_getObjectType();
  if (sub_219BF2FA4())
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v0 = sub_219BE5434();
    __swift_project_value_buffer(v0, qword_280F62778);
    v4 = sub_219BE5414();
    v1 = sub_219BF6214();
    if (os_log_type_enabled(v4, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_2186C1000, v4, v1, "User already completed onboarding. Skipping.", v2, 2u);
      MEMORY[0x21CECF960](v2, -1, -1);
    }
  }

  else
  {
    MEMORY[0x28223BE20](0);
    sub_219BE3204();
    v3 = sub_219BE2E54();
    sub_219BE2F94();
  }
}

id sub_2197CA0DC()
{
  v1 = OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler____lazy_storage___sportsUpsellConfig;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler____lazy_storage___sportsUpsellConfig);
  v3 = v2;
  if (v2 != 1)
  {
LABEL_7:
    sub_2190AB1E0(v2);
    return v3;
  }

  result = [*(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_configurationManager) configuration];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v5 sportsUpsellConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_2190AAF44(v6);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2197CA1B4(void *a1)
{
  v3 = sub_2197CA0DC();
  if (!v3)
  {
    sub_21874D974();
    swift_allocObject();
    return sub_219BE3014();
  }

  v4 = v3;
  v5 = [v3 maxNumberOfTopics];

  v6 = [a1 topicIDs];
  if (v6)
  {
    v7 = v6;
    v8 = sub_219BF5924();

    v9 = sub_219A79734(v5, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v9 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90] + 32;
    v15 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_tagService), *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_tagService + 24));
  if ((v15 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_8:
    sub_218B666EC(v9, v11, v13, v15);
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v15 >> 1, v13))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v18 != (v15 >> 1) - v13)
  {
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v19 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_219BF1C34();

  v20 = sub_219BE2E54();
  v21 = sub_219BE2F64();
  swift_unknownObjectRelease();

  return v21;
}

void sub_2197CA3D8(_BYTE *a1, uint64_t a2)
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for SportsUpsellState();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v42 - v13);
  if (*a1 != 1)
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62778);
    v28 = sub_219BE5414();
    v29 = sub_219BF6214();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "Headline is not sports related. Skipping.", v30, 2u);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    goto LABEL_26;
  }

  v46 = v2;
  if (qword_280EE6060 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  __swift_project_value_buffer(v15, qword_280F62778);
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v9;
    v19 = a2;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2186C1000, v16, v17, "Headline is sports related. Proceeding...", v18, 2u);
    v21 = v20;
    a2 = v19;
    v9 = v45;
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  if ((sub_2197CA9A8() & 1) == 0)
  {
    v28 = sub_219BE5414();
    v31 = sub_219BF6214();
    if (os_log_type_enabled(v28, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2186C1000, v28, v31, "Quiescence interval has not elapsed. Skipping.", v32, 2u);
      MEMORY[0x21CECF960](v32, -1, -1);
    }

    goto LABEL_26;
  }

  v22 = (a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store);
  v23 = *(a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24);
  v43 = *(a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32);
  v44 = v23;
  v45 = a2;
  v42 = __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store), v23);
  v24 = v22[3];
  v25 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v24);
  (*(v25 + 8))(v24, v25);
  v26 = *(v9 + 48);
  if (v26(v7, 1, v8) == 1)
  {
    sub_219BDBBB4();
    *v12 = 0;
    *(v12 + v8[6]) = 0;
    *(v12 + v8[7]) = 0;
    if (v26(v7, 1, v8) != 1)
    {
      sub_2197CC7F8(v7);
    }
  }

  else
  {
    sub_2197CC884(v7, v12);
  }

  v33 = *v12 + 1;
  if (__OFADD__(*v12, 1))
  {
    __break(1u);
    return;
  }

  v34 = v8[5];
  v35 = sub_219BDBD34();
  (*(*(v35 - 8) + 16))(v14 + v34, v12 + v34, v35);
  LOBYTE(v34) = *(v12 + v8[6]);
  v36 = *(v12 + v8[7]);
  sub_218D49498(v12);
  *v14 = v33;
  *(v14 + v8[6]) = v34;
  *(v14 + v8[7]) = v36;
  (*(v43 + 24))(v14, v44);
  sub_218D49498(v14);
  v37 = sub_2197CB0EC();
  v28 = sub_219BE5414();
  v38 = sub_219BF6214();
  v39 = os_log_type_enabled(v28, v38);
  if ((v37 & 1) == 0)
  {
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2186C1000, v28, v38, "Upsell cannot be presented. Exiting.", v41, 2u);
      MEMORY[0x21CECF960](v41, -1, -1);
    }

LABEL_26:

    return;
  }

  if (v39)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2186C1000, v28, v38, "Presenting sports upsell...", v40, 2u);
    MEMORY[0x21CECF960](v40, -1, -1);
  }

  sub_2197CB908();
}

uint64_t sub_2197CA9A8()
{
  v63 = sub_219BDBD34();
  v61 = *(v63 - 8);
  v1 = MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v60 = &v58 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v59 = &v58 - v6;
  MEMORY[0x28223BE20](v5);
  v64 = &v58 - v7;
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = type metadata accessor for SportsUpsellState();
  v15 = *(v14 - 1);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v58 - v18);
  v20 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store);
  v21 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24);
  v22 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store), v21);
  (*(v22 + 8))(v21, v22);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    sub_219BDBBB4();
    *v19 = 0;
    *(v19 + v14[6]) = 0;
    *(v19 + v14[7]) = 0;
    if (v23(v13, 1, v14) != 1)
    {
      sub_2197CC7F8(v13);
    }
  }

  else
  {
    sub_2197CC884(v13, v19);
  }

  v24 = *(v19 + v14[6]);
  sub_218D49498(v19);
  v25 = sub_2197CA0DC();
  if (v25)
  {
    v26 = &selRef_engagedUserQuiescenceInterval;
    if (!v24)
    {
      v26 = &selRef_quiescenceInterval;
    }

    v27 = v25;
    v28 = [v25 *v26];

    v29 = v20[3];
    v30 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v29);
    (*(v30 + 8))(v29, v30);
    if (v23(v11, 1, v14) == 1)
    {
      v31 = v58;
      sub_219BDBBB4();
      v32 = v23(v11, 1, v14);
      v33 = v64;
      v34 = v61;
      v35 = v62;
      if (v32 != 1)
      {
        sub_2197CC7F8(v11);
      }
    }

    else
    {
      v31 = v58;
      sub_2197CC884(v11, v58);
      v33 = v64;
      v34 = v61;
      v35 = v62;
    }

    v41 = v63;
    (*(v34 + 32))(v33, v31 + v14[5], v63);
    v42 = v59;
    sub_219BDBBF4();
    v43 = v60;
    sub_219BDBCB4();
    LODWORD(v40) = sub_219BDBC24();
    v44 = *(v34 + 8);
    v44(v43, v41);
    v44(v42, v41);
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v45 = sub_219BE5434();
    __swift_project_value_buffer(v45, qword_280F62778);
    (*(v34 + 16))(v35, v33, v41);
    v46 = sub_219BE5414();
    v47 = sub_219BF6214();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      LODWORD(v62) = v40;
      v40 = v35;
      v49 = v48;
      v50 = swift_slowAlloc();
      v65 = v50;
      *v49 = 67109634;
      *(v49 + 4) = v62 & 1;
      *(v49 + 8) = 2048;
      *(v49 + 10) = v28;
      *(v49 + 18) = 2080;
      sub_21874E3C0(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
      v51 = sub_219BF7894();
      v53 = v52;
      v54 = v40;
      LOBYTE(v40) = v62;
      v44(v54, v41);
      v55 = sub_2186D1058(v51, v53, &v65);

      *(v49 + 20) = v55;
      _os_log_impl(&dword_2186C1000, v46, v47, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Upsell Shown Date [%s]", v49, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x21CECF960](v50, -1, -1);
      MEMORY[0x21CECF960](v49, -1, -1);

      v56 = v64;
    }

    else
    {

      v44(v35, v41);
      v56 = v33;
    }

    v44(v56, v41);
  }

  else
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v36 = sub_219BE5434();
    __swift_project_value_buffer(v36, qword_280F62778);
    v37 = sub_219BE5414();
    v38 = sub_219BF6214();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2186C1000, v37, v38, "Quiescence interval is null. Exiting.", v39, 2u);
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    LOBYTE(v40) = 0;
  }

  return v40 & 1;
}

uint64_t sub_2197CB0EC()
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v68 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  v10 = type metadata accessor for SportsUpsellState();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v68 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v68 - v18);
  v20 = sub_2197CA0DC();
  if (!v20)
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62778);
    v28 = sub_219BE5414();
    v29 = sub_219BF6214();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "No configuration found. Exiting.", v30, 2u);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    goto LABEL_37;
  }

  v68 = v14;
  v69 = v4;
  v70 = v0;
  v71 = v20;
  v21 = &v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store];
  v22 = *&v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24];
  v23 = *&v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store], v22);
  (*(v23 + 8))(v22, v23);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_219BDBBB4();
    *v19 = 0;
    *(v19 + *(v10 + 24)) = 0;
    *(v19 + *(v10 + 28)) = 0;
    v25 = v24(v9, 1, v10);
    v26 = v71;
    if (v25 != 1)
    {
      sub_2197CC7F8(v9);
    }
  }

  else
  {
    sub_2197CC884(v9, v19);
    v26 = v71;
  }

  v31 = *(v19 + *(v10 + 28));
  sub_218D49498(v19);
  if (v31 < [v26 maxNumberOfPresentations])
  {
    v32 = *(v21 + 3);
    v33 = *(v21 + 4);
    __swift_project_boxed_opaque_existential_1(v21, v32);
    (*(v33 + 8))(v32, v33);
    if (v24(v7, 1, v10) == 1)
    {
      sub_219BDBBB4();
      *v17 = 0;
      *(v17 + *(v10 + 24)) = 0;
      *(v17 + *(v10 + 28)) = 0;
      v34 = v24(v7, 1, v10);
      v35 = v71;
      if (v34 != 1)
      {
        sub_2197CC7F8(v7);
      }
    }

    else
    {
      sub_2197CC884(v7, v17);
      v35 = v71;
    }

    v45 = *v17;
    sub_218D49498(v17);
    if (v45 < [v35 minNumberOfArticlesRead])
    {
      if (qword_280EE6060 != -1)
      {
        swift_once();
      }

      v46 = sub_219BE5434();
      __swift_project_value_buffer(v46, qword_280F62778);
      v47 = v70;
      v48 = v35;
      v49 = sub_219BE5414();
      v50 = sub_219BF6214();
      if (os_log_type_enabled(v49, v50))
      {
        LODWORD(v70) = v50;
        v71 = v47;
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        v52 = *(v21 + 3);
        v53 = *(v21 + 4);
        __swift_project_boxed_opaque_existential_1(v21, v52);
        v54 = v69;
        (*(v53 + 8))(v52, v53);
        if (v24(v54, 1, v10) == 1)
        {
          v55 = v68;
          sub_219BDBBB4();
          *v55 = 0;
          *(v55 + *(v10 + 24)) = 0;
          *(v55 + *(v10 + 28)) = 0;
          v56 = &selRef__setPreferredLayout_;
          if (v24(v54, 1, v10) != 1)
          {
            sub_2197CC7F8(v54);
          }
        }

        else
        {
          v55 = v68;
          sub_2197CC884(v54, v68);
          v56 = &selRef__setPreferredLayout_;
        }

        v67 = *v55;
        sub_218D49498(v55);
        *(v51 + 4) = v67;

        *(v51 + 12) = 2048;
        *(v51 + 14) = [v48 v56[302]];

        _os_log_impl(&dword_2186C1000, v49, v70, "Required number of articles not reached [%ld/%lld]. Exiting.", v51, 0x16u);
        MEMORY[0x21CECF960](v51, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    v57 = [v35 landingPageArticleID];
    if (v57)
    {
      v58 = v57;
      v59 = sub_219BF5414();
      v61 = v60;

      v62 = HIBYTE(v61) & 0xF;
      v63 = (v61 & 0x2000000000000000) == 0;
      v35 = v71;
      if (v63)
      {
        v62 = v59 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {

        return 1;
      }
    }

    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v65 = sub_219BE5434();
    __swift_project_value_buffer(v65, qword_280F62778);
    v37 = sub_219BE5414();
    v66 = sub_219BF6214();
    if (!os_log_type_enabled(v37, v66))
    {

      return 0;
    }

    v28 = v35;
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Landing Page Article ID not found. Exiting.";
    v41 = v66;
    v42 = v37;
    v43 = v39;
    v44 = 2;
    goto LABEL_36;
  }

  if (qword_280EE6060 != -1)
  {
    swift_once();
  }

  v36 = sub_219BE5434();
  __swift_project_value_buffer(v36, qword_280F62778);
  v28 = v26;
  v37 = sub_219BE5414();
  v38 = sub_219BF6214();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = [v28 maxNumberOfPresentations];

    v40 = "Reached max number of presentations [%lld]. Exiting.";
    v41 = v38;
    v42 = v37;
    v43 = v39;
    v44 = 12;
LABEL_36:
    _os_log_impl(&dword_2186C1000, v42, v41, v40, v43, v44);
    MEMORY[0x21CECF960](v39, -1, -1);

    goto LABEL_37;
  }

LABEL_37:
  return 0;
}

uint64_t sub_2197CB908()
{
  v1 = v0;
  v2 = sub_219BED174();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BED1D4();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v46 - v6;
  v7 = type metadata accessor for SportsUpsellState();
  v56 = *(v7 - 1);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v46 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v21 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  *v20 = sub_2197CC8E8;
  v20[1] = v19;

  sub_2187FABEC(v21);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = (v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  *v23 = sub_2197CC910;
  v23[1] = v22;

  v25 = v24;
  v26 = v56;
  sub_2187FABEC(v25);

  v49 = v1;
  v27 = (v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store);
  v28 = v57;
  v29 = v27[3];
  v47 = v27[4];
  v48 = v29;
  v46 = __swift_project_boxed_opaque_existential_1(v27, v29);
  v31 = v27[3];
  v30 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v31);
  (*(v30 + 8))(v31, v30);
  v32 = *(v26 + 48);
  if (v32(v28, 1, v7) == 1)
  {
    sub_219BDBBB4();
    *v10 = 0;
    *(v10 + v7[6]) = 0;
    *(v10 + v7[7]) = 0;
    if (v32(v28, 1, v7) != 1)
    {
      sub_2197CC7F8(v28);
    }
  }

  else
  {
    sub_2197CC884(v28, v10);
  }

  v33 = v7[5];
  v34 = sub_219BDBD34();
  v35 = *(*(v34 - 8) + 16);
  v35(&v13[v33], v10 + v33, v34);
  v36 = *(v10 + v7[6]);
  v37 = *(v10 + v7[7]);
  sub_218D49498(v10);
  *v13 = 0;
  v13[v7[6]] = v36;
  *&v13[v7[7]] = v37;
  v38 = v7[5];
  sub_219BDBCB4();
  sub_218D49498(v13);
  *v16 = 0;
  *(v16 + v7[6]) = v36;
  *(v16 + v7[7]) = v37;
  v35(&v18[v7[5]], v16 + v38, v34);
  result = sub_218D49498(v16);
  if (__OFADD__(v37, 1))
  {
    __break(1u);
  }

  else
  {
    *v18 = 0;
    v18[v7[6]] = v36;
    *&v18[v7[7]] = v37 + 1;
    (*(v47 + 24))(v18, v48);
    sub_218D49498(v18);
    [*(v49 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager) addPostActionHandler:v49 forActionType:*MEMORY[0x277D55110]];
    sub_2187D9028();
    v40 = sub_219BF66A4();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2197CC938;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_172;
    v42 = _Block_copy(aBlock);

    v43 = v50;
    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21874E3C0(&qword_280E927E0, 255, MEMORY[0x277D85198]);
    sub_2197CC940(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v44 = v52;
    v45 = v55;
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v43, v44, v42);
    _Block_release(v42);

    (*(v54 + 8))(v44, v45);
    return (*(v51 + 8))(v43, v53);
  }

  return result;
}

void sub_2197CC01C(uint64_t a1, const char *a2, int a3)
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SportsUpsellState();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v36 = a3;
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62778);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, a2, v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    v21 = &v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store];
    v22 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32];
    v35 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24];
    v34 = __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store], v35);
    v23 = *(v21 + 3);
    v24 = *(v21 + 4);
    __swift_project_boxed_opaque_existential_1(v21, v23);
    (*(v24 + 8))(v23, v24);
    v25 = *(v9 + 48);
    if (v25(v7, 1, v8) == 1)
    {
      sub_219BDBBB4();
      *v12 = 0;
      *(v12 + v8[6]) = 0;
      *(v12 + v8[7]) = 0;
      if (v25(v7, 1, v8) != 1)
      {
        sub_2197CC7F8(v7);
      }
    }

    else
    {
      sub_2197CC884(v7, v12);
    }

    v26 = *v12;
    v27 = v8[5];
    v28 = sub_219BDBD34();
    (*(*(v28 - 8) + 16))(&v14[v27], v12 + v27, v28);
    v29 = *(v12 + v8[7]);
    sub_218D49498(v12);
    *v14 = v26;
    v14[v8[6]] = v36;
    *&v14[v8[7]] = v29;
    (*(v22 + 24))(v14, v35, v22);
    sub_218D49498(v14);
    v30 = &v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped];
    v31 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped];
    *v30 = 0;
    *(v30 + 1) = 0;
    sub_2187FABEC(v31);
    v32 = &v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled];
    v33 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled];
    *v32 = 0;
    *(v32 + 1) = 0;
    sub_2187FABEC(v33);
  }
}

uint64_t sub_2197CC3E4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_218718690(result + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_router, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v2 = sub_2197CA0DC();
    if (v2)
    {
      v4 = v2;
      v5 = [v2 landingPageArticleID];

      if (v5)
      {
        sub_219BF5414();
      }
    }

    sub_21874E3C0(&qword_27CC1F4A8, v3, type metadata accessor for SportsUpsellHandler);
    v6 = v1;
    sub_219BE43B4();

    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t sub_2197CC544(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_16:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v4, v1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        swift_unknownObjectRelease();
        break;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = [v6 asSports];
    swift_unknownObjectRelease();
    v4 = v5 + 1;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  sub_21874D974();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197CC7F8(uint64_t a1)
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2197CC884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsUpsellState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197CC940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2197CC9A4()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  if (v2)
  {

    v2(v3);
    sub_2187FABEC(v2);
  }

  [*(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager) removePostActionHandler:v0 forActionType:*MEMORY[0x277D55110]];
  v4 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  *v4 = 0;
  v4[1] = 0;
  sub_2187FABEC(v5);
  v6 = *v1;
  *v1 = 0;
  v1[1] = 0;

  return sub_2187FABEC(v6);
}

uint64_t sub_2197CCA58()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  if (v2)
  {

    v2(v3);
    sub_2187FABEC(v2);
  }

  [*(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager) removePostActionHandler:v0 forActionType:*MEMORY[0x277D55110]];
  v4 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_2187FABEC(v4);
  v5 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v6 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  *v5 = 0;
  v5[1] = 0;

  return sub_2187FABEC(v6);
}

uint64_t sub_2197CCB0C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4B0 = result;
  return result;
}

uint64_t sub_2197CCD1C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4B8 = result;
  return result;
}

uint64_t sub_2197CCF2C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4C0 = result;
  return result;
}

uint64_t sub_2197CD13C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4C8 = result;
  return result;
}

uint64_t sub_2197CD350()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4D0 = result;
  return result;
}

uint64_t sub_2197CD564()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4D8 = result;
  return result;
}

uint64_t sub_2197CD778()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  *(v7 + 1) = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  strcpy(v10, "default_source");
  v10[15] = -18;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4E0 = result;
  return result;
}

uint64_t sub_2197CD9B8()
{
  v1 = *(v0 + 16);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDA1C()
{
  MEMORY[0x21CECE850](*(v0 + 16));

  return sub_219BF5524();
}

uint64_t sub_2197CDA70()
{
  v1 = *(v0 + 16);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDAD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t SearchFilterItem.hash(into:)()
{
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  type metadata accessor for SearchFilterItem();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578]);
  return sub_219BF52F4();
}

uint64_t SearchFilterItem.hashValue.getter()
{
  sub_219BF7AA4();
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  type metadata accessor for SearchFilterItem();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDCB4()
{
  sub_219BF7AA4();
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDD88()
{
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578]);
  return sub_219BF52F4();
}

uint64_t sub_2197CDE40()
{
  sub_219BF7AA4();
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t _s7NewsUI216SearchFilterItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SearchFilterItem();

  return sub_219BDBC94();
}

uint64_t type metadata accessor for SearchFilterItem()
{
  result = qword_280ED7CD8;
  if (!qword_280ED7CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197CE05C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197CE0CC()
{
  result = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2197CE194()
{
  result = qword_27CC1F4F0;
  if (!qword_27CC1F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F4F0);
  }

  return result;
}

uint64_t NewIssueCheckNotificationCoordinator.performBackgroundFetch()()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_2197CE3C8();
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_2197CE2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 72);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_2197CEFA8;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_218B66540;
  v11[3] = &block_descriptor_173;
  v10 = _Block_copy(v11);

  [v7 refreshBundleSubscriptionWithCachePolicy:2 completion:v10];
  _Block_release(v10);
}

void sub_2197CE3C8()
{
  if (!qword_280EE6BB0)
  {
    sub_219BE2874();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6BB0);
    }
  }
}

uint64_t sub_2197CE420(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = sub_219BE2874();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    (*(v8 + 104))(v10, *MEMORY[0x277D6CD50], v7);
    a3(v10);
    return (*(v8 + 8))(v10, v7);
  }

  v12 = Strong;
  if (objc_getAssociatedObject(a1, (a1 + 1)))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  aBlock = v28;
  v25 = v29;
  if (*(&v29 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v13 = v23;
      v14 = [v23 integerValue];
      if (v14 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }
  }

  else
  {
    sub_218806FD0(&aBlock);
  }

  v13 = 0;
  v14 = 0;
LABEL_14:
  if (objc_getAssociatedObject(a1, ~v14))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  aBlock = v28;
  v25 = v29;
  if (*(&v29 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v15 = v23;
      v16 = [v15 integerValue];

      if ((((v16 - 64) ^ v14) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_218806FD0(&aBlock);
  }

LABEL_23:

  if (((v14 ^ 0xFFFFFFC0) & 1) == 0)
  {
LABEL_24:
    if (qword_280E8D870 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

LABEL_20:
  if ([*(v12 + 64) newIssueNotificationsEnabled])
  {
    v17 = *(v12 + 16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = v18;
    v26 = sub_2197CEFB4;
    v27 = v19;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v25 = sub_218B66540;
    *(&v25 + 1) = &block_descriptor_13_5;
    v20 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v17 fetchUsersCurrentIssuesWithCompletion_];
    _Block_release(v20);

    return swift_unknownObjectRelease();
  }

  if (qword_280E8D870 == -1)
  {
    goto LABEL_27;
  }

LABEL_29:
  swift_once();
LABEL_27:
  sub_219BF6214();
  sub_219BE5314();
  (*(v8 + 104))(v10, *MEMORY[0x277D6CD50], v7);
  a3(v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2197CE954(void *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = sub_219BE2874();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 unreadFollowedIssues];
  if (!v10)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09BA0;
    v29 = 0;
    v30 = 0xE000000000000000;
    v31 = [a1 error];
    sub_2187B1B90(0, &unk_280E8B570, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
    v24 = sub_219BF5484();
    MEMORY[0x21CECC330](v24);

    v25 = v29;
    v26 = v30;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_2186FC3BC();
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;
    sub_219BE5314();

    goto LABEL_14;
  }

  v11 = v10;
  sub_2186C6148(0, &qword_280E8DAB0);
  v12 = sub_219BF5924();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
LABEL_14:
    (*(v7 + 104))(v9, *MEMORY[0x277D6CD50], v6);
    a2(v9);
    return (*(v7 + 8))(v9, v6);
  }

  v14 = Strong;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v28[1] = a3;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  v16 = a2;
  if (v12 >> 62)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v17;
  v18 = sub_219BF7894();
  v20 = v19;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  sub_219BF6214();
  sub_219BE5314();

  v21 = v14[6];
  v22 = v14[7];
  __swift_project_boxed_opaque_existential_1(v14 + 3, v21);
  (*(v22 + 8))(v12, v21, v22);

  (*(v7 + 104))(v9, *MEMORY[0x277D6CD58], v6);
  v16(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t NewIssueCheckNotificationCoordinator.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t NewIssueCheckNotificationCoordinator.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2197CEED4()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_2197CE3C8();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t type metadata accessor for PaywallAudioFeedGroupEmitter()
{
  result = qword_280EB35D0;
  if (!qword_280EB35D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197CF040()
{
  sub_2186FA21C();
  if (v0 <= 0x3F)
  {
    sub_2186C709C(319, &qword_280EE6430);
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &unk_280EE6480);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2197CF114()
{
  sub_219BE4864();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE3064();

  sub_2197CF1E8();
  v1 = sub_219BE31C4();

  return v1;
}

uint64_t sub_2197CF1E8()
{
  v1 = sub_219BE4884();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BE4034();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3E04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BE4914();
  v36 = *(v38 - 8);
  v10 = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for PaywallAudioFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v0 + *(v14 + 24)), *(v0 + *(v14 + 24) + 24));
  (*(v7 + 104))(v9, *MEMORY[0x277D34E80], v6);
  v15 = v39;
  (*(v3 + 104))(v5, *MEMORY[0x277D34EF0], v39);
  v16 = v13;
  v17 = v38;
  v18 = v36;
  sub_219BE4064();
  (*(v3 + 8))(v5, v15);
  (*(v7 + 8))(v9, v6);
  v19 = v37;
  v20 = v16;
  (*(v18 + 16))(v37, v16, v17);
  v21 = (*(v18 + 88))(v19, v17);
  if (v21 == *MEMORY[0x277D353A0])
  {
    (*(v18 + 96))(v19, v17);
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    sub_2197D06E0();
    swift_allocError();
    *v22 = 0;
    sub_2197D0734();
    swift_allocObject();
    v23 = sub_219BE2FF4();
    (*(v18 + 8))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v23;
  }

  if (v21 == *MEMORY[0x277D353B0])
  {
    (*(v18 + 96))(v19, v17);
    v24 = *v19;
    if (*(*v19 + 16))
    {
      v26 = v33;
      v25 = v34;
      v27 = v35;
      (*(v34 + 16))(v33, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v35);

      sub_219BE4874();
      (*(v25 + 8))(v26, v27);
      sub_2186CB1F0(v40, v41);
      sub_218718690(v41, v40);
      sub_2197D0734();
      swift_allocObject();
      v23 = sub_219BE3014();
      __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_17:
      (*(v18 + 8))(v20, v17);
      return v23;
    }

LABEL_16:
    sub_2197D06E0();
    swift_allocError();
    *v30 = 1;
    sub_2197D0734();
    swift_allocObject();
    v23 = sub_219BE2FF4();
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D353A8])
  {
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    goto LABEL_16;
  }

  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_219BE5314();
  sub_2197D06E0();
  swift_allocError();
  *v28 = 2;
  sub_2197D0734();
  swift_allocObject();
  v23 = sub_219BE2FF4();
  v29 = *(v18 + 8);
  v29(v16, v17);
  v29(v19, v17);
  return v23;
}

uint64_t sub_2197CF8FC(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  sub_218C68E08(0);
  v19[1] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaywallAudioFeedGroup();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186FA21C();
  v9 = sub_219BEDCA4();
  v11 = v10;
  v12 = sub_219BE47D4();
  v14 = v13;
  v20 = v9;
  v21 = v11;

  MEMORY[0x21CECC330](v12, v14);

  v15 = v20;
  v16 = v21;
  sub_218718690(v19[0], (v8 + 2));
  sub_219BEDCC4();
  *v8 = v15;
  v8[1] = v16;
  *(v8 + *(v6 + 36)) = 0x3FF0000000000000;
  sub_2197D065C(v8, v4, type metadata accessor for PaywallAudioFeedGroup);
  type metadata accessor for AudioFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_2197D07A0(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v17 = sub_219BE3014();
  sub_2197D08AC(v8, type metadata accessor for PaywallAudioFeedGroup);
  return v17;
}

uint64_t sub_2197CFB28()
{
  type metadata accessor for PaywallAudioFeedGroupEmitter();
  swift_getObjectType();
  return sub_219BE3F74();
}

uint64_t sub_2197CFB7C()
{
  sub_2197D07A0(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197CFBFC@<X0>(uint64_t a1@<X8>)
{
  sub_2186FA21C();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for AudioFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2197CFC7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  a2[3] = &type metadata for PaywallAudioFeedGroupKnobs;
  a2[4] = sub_2197D0804();
  result = sub_2197D0858();
  a2[5] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_2197CFCC4()
{
  v0 = sub_219BEF554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C();
  sub_219BEDCC4();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = *MEMORY[0x277D32638];
  (*(v1 + 8))(v3, v0);
  if (v4 != v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2197D07A0(0, &unk_280E8B8D0, sub_2191FD1C0, MEMORY[0x277D84560]);
  sub_2191FD1C0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277D322F8], v7);
  return v10;
}

uint64_t sub_2197CFEB4()
{
  sub_2186FA21C();

  return sub_219BEDCA4();
}

uint64_t sub_2197CFEE0@<X0>(uint64_t *a1@<X8>)
{
  sub_2197D07A0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FA21C();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197D08AC(inited + 32, sub_2188317B0);
  sub_2197D07A0(0, &qword_280EE7930, type metadata accessor for PaywallAudioFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2197D090C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2197D0064()
{
  sub_2197D0614(&qword_280EB35E8, type metadata accessor for PaywallAudioFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2197D01F0()
{
  v1 = type metadata accessor for PaywallAudioFeedGroupEmitter();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2187D9028();
  v4 = sub_219BF66A4();
  sub_2197D065C(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaywallAudioFeedGroupEmitter);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_2197D03F8(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_2197D04C0();
  sub_219BE31D4();

  sub_2197D065C(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaywallAudioFeedGroupEmitter);
  v7 = swift_allocObject();
  sub_2197D03F8(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2197D0544;
  *(v8 + 24) = v7;
  v9 = sub_219BE2E54();
  sub_218C68E08(0);
  v10 = sub_219BE2F64();

  return v10;
}

uint64_t sub_2197D03F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallAudioFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197D04C0()
{
  if (!qword_280EE61F0)
  {
    sub_219BE4864();
    sub_2186C709C(255, &qword_280EE6460);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE61F0);
    }
  }
}

uint64_t sub_2197D0544(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PaywallAudioFeedGroupEmitter();

  return sub_2197CF8FC(a1, a2);
}

uint64_t sub_2197D05C4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2197D04C0();
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_2197D0614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2197D065C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2197D06E0()
{
  result = qword_27CC1F4F8;
  if (!qword_27CC1F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F4F8);
  }

  return result;
}

void sub_2197D0734()
{
  if (!qword_280EE6FF8)
  {
    sub_2186C709C(255, &qword_280EE6460);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6FF8);
    }
  }
}

void sub_2197D07A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2197D0804()
{
  result = qword_27CC1F500;
  if (!qword_27CC1F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F500);
  }

  return result;
}

unint64_t sub_2197D0858()
{
  result = qword_27CC1F508;
  if (!qword_27CC1F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F508);
  }

  return result;
}

uint64_t sub_2197D08AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2197D090C()
{
  result = qword_280EE7938;
  if (!qword_280EE7938)
  {
    sub_2197D07A0(255, &qword_280EE7930, type metadata accessor for PaywallAudioFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7938);
  }

  return result;
}

unint64_t sub_2197D09A8()
{
  result = qword_27CC1F510;
  if (!qword_27CC1F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F510);
  }

  return result;
}

uint64_t sub_2197D09FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SearchResults();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchFeedServiceContext();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D0AD8(a1, v9);
  sub_2197D0B3C(v9, v6);
  return sub_2190ABC3C(v6, a2);
}

uint64_t sub_2197D0AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedServiceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197D0B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResults();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FoodTagRecipesClusteringRequest()
{
  result = qword_280EA9370;
  if (!qword_280EA9370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197D0C14()
{
  sub_219BE5434();
  if (v0 <= 0x3F)
  {
    sub_2197D0D9C(319, &qword_280E8EF60, sub_218C3EE8C, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2186C61E4();
      if (v2 <= 0x3F)
      {
        sub_2186E2394();
        if (v3 <= 0x3F)
        {
          sub_2197D0E00();
          if (v4 <= 0x3F)
          {
            sub_2197D0D9C(319, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_219BEFD94();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2197D0D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2197D0E00()
{
  if (!qword_280E8FB28)
  {
    sub_219BEED84();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FB28);
    }
  }
}

uint64_t sub_2197D0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v5 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MagazineCatalogModel();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - v10;
  v11 = sub_219BEF2A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_219BEF974();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MagazineCatalogLayoutModel();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3DBBC();
  sub_219BE75E4();
  v49 = v19;
  (*(v19 + 32))(v21, v24, v18);
  swift_getObjectType();
  sub_219BEED04();
  (*(v12 + 16))(v15, v17, v11);
  v25 = (*(v12 + 88))(v15, v11);
  if (v25 == *MEMORY[0x277D32528])
  {
    (*(v12 + 96))(v15, v11);
    v26 = *v15;
    v48 = sub_219BE7314();
    v41 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    sub_2189537DC();
    v27 = v44;
    sub_219BE5FC4();
    v28 = v43;
    sub_218BB47C4(v27, v43);
    v29 = v28;
    v30 = v46;
    sub_2189F5020(v29, v46);
    v31 = sub_218EF6AC8();
    v47 = v18;
    v33 = v32;
    sub_2197D1480(v30, type metadata accessor for MagazineGridItemModel);
    v34 = v27;
    v35 = v26;
    sub_2197D1480(v34, type metadata accessor for MagazineCatalogModel);
    (*(v41 + 32))(v31, v33, ObjectType);

    sub_2197D14E0(qword_280EDE170, type metadata accessor for IssueDownload);
    v36 = v48;
    sub_219BF19C4();

    (*(v12 + 8))(v17, v11);
    (*(v49 + 8))(v21, v47);
  }

  else
  {
    v37 = v49;
    if (v25 == *MEMORY[0x277D32530])
    {
      (*(v12 + 8))(v17, v11);
      (*(v37 + 8))(v21, v18);
      (*(v12 + 96))(v15, v11);
      return *v15;
    }

    else
    {
      v35 = sub_219BEF294();
      v38 = *(v12 + 8);
      v38(v17, v11);
      (*(v37 + 8))(v21, v18);
      v38(v15, v11);
    }
  }

  return v35;
}

uint64_t sub_2197D1450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2197D0E68(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2197D1480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197D14E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SavedFeedLayoutModel()
{
  result = qword_280ECD638;
  if (!qword_280ECD638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2197D1574()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_2197D16D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_2197D17C4(uint64_t a1)
{
  v2 = sub_2197D1D68(&qword_280ECD670);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2197D1868(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_2197D1A5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2197D1BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_2197D1D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197D1D68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SavedFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2197D1DAC(uint64_t a1, uint64_t a2)
{
  sub_219512F74();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager + 32);
  v15 = *(a2 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager + 24);
  v14 = __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager), v15);
  sub_2187D9028();
  v9 = sub_219BF66A4();
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(v12 + v11, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = *(v8 + 24);

  v13(v9, sub_2197D27AC, v12, v15, v8);
}

uint64_t sub_2197D1F7C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((a2 & 1) != 0 || a1 != 1)
    {
      if (qword_280EE5F70 != -1)
      {
        swift_once();
      }

      v14 = sub_219BE5434();
      __swift_project_value_buffer(v14, qword_280F625C8);
      v15 = sub_219BE5414();
      v16 = sub_219BF6214();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2186C1000, v15, v16, "SportsTopicNotificationStartupTask will disable notifications when sports is not onboarded", v17, 2u);
        MEMORY[0x21CECF960](v17, -1, -1);
      }

      v18 = *(v5 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 24);
      v19 = *(v5 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 32);
      __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager), v18);
      (*(v19 + 40))(0, v18, v19);
    }

    else
    {
      v6 = (Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager);
      v7 = *(Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 24);
      v8 = *(Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 32);
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager), v7);
      if ((*(v8 + 64))(v7, v8))
      {
        if (qword_280EE5F70 != -1)
        {
          swift_once();
        }

        v9 = sub_219BE5434();
        __swift_project_value_buffer(v9, qword_280F625C8);
        v10 = sub_219BE5414();
        v11 = sub_219BF6214();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2186C1000, v10, v11, "SportsTopicNotificationStartupTask stopped. This task will only run when sports notifications have not yet been setup before.", v12, 2u);
          MEMORY[0x21CECF960](v12, -1, -1);
        }
      }

      else
      {
        if (qword_280EE5F70 != -1)
        {
          swift_once();
        }

        v20 = sub_219BE5434();
        __swift_project_value_buffer(v20, qword_280F625C8);
        v21 = sub_219BE5414();
        v22 = sub_219BF6214();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2186C1000, v21, v22, "SportsTopicNotificationStartupTask setting sportsTopicNotificationsEnabledState to enabled", v23, 2u);
          MEMORY[0x21CECF960](v23, -1, -1);
        }

        v24 = v6[3];
        v25 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v24);
        (*(v25 + 40))(1, v24, v25);
      }
    }

    sub_219512F74();
    sub_219BF5B64();
  }

  else
  {
    sub_219512F74();
    return sub_219BF5B64();
  }
}

uint64_t sub_2197D22FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2197D242C;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000014, 0x8000000219D36B20, sub_2197D27A4, Strong, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2197D242C()
{

  return MEMORY[0x2822009F8](sub_2197D2528, 0, 0);
}

uint64_t sub_2197D2528()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager), v2);
  (*(v3 + 80))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2197D25D0()
{
  v1 = OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager);

  return swift_deallocClassInstance();
}

uint64_t sub_2197D2694()
{
  sub_21879D924();
  swift_allocObject();
  swift_weakInit();
  return sub_219BE2F54();
}

uint64_t sub_2197D2708(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2197D22DC(a1, v1);
}

uint64_t sub_2197D27AC(uint64_t a1, char a2)
{
  sub_219512F74();

  return sub_2197D1F7C(a1, a2 & 1);
}

uint64_t type metadata accessor for MagazineSectionBarViewController()
{
  result = qword_280EA5FE0;
  if (!qword_280EA5FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197D2A5C()
{
  sub_218747BDC(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2197D2B44()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE8664();
  v19 = sub_219BE7BC4();

  [v19 setContentInsetAdjustmentBehavior_];

  sub_219BE8664();
  v20 = sub_219BE7BC4();

  v21 = sub_219BF53D4();
  [v20 setFocusGroupIdentifier_];

  sub_219BE8664();
  v22 = sub_219BE7BC4();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v25 = sub_219BF53D4();

  [v22 setAccessibilityLabel_];

  sub_219BE9BB4();
  v26 = v2;
  v27 = sub_219BE9BA4();
  if (!v27)
  {
    goto LABEL_8;
  }

  v28 = v27;
  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    [v29 addSubview_];

    v31 = *&v1[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView] = v28;

LABEL_8:
    v32 = [v1 view];
    if (v32)
    {
      v33 = v32;
      [v32 setAccessibilityContainerType_];

      v34 = [v1 traitCollection];
      sub_2197D4690();

      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void sub_2197D2F44()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE8164();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v35.receiver = v0;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_viewWillLayoutSubviews);
  v9 = [*&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintViewController] view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v0 view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame_];
  v21 = *&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView];
  if (!v21)
  {
LABEL_6:
    sub_219BE8664();
    v33 = sub_219BE7BC4();

    sub_219BE86E4();
    swift_getObjectType();
    sub_219BE9E04();
    swift_unknownObjectRelease();
    sub_219BE7FF4();
    v34 = *(v3 + 8);
    v34(v8, v2);
    sub_219BE86E4();
    swift_getObjectType();
    sub_219BE9E04();
    swift_unknownObjectRelease();
    sub_219BE8014();
    v34(v6, v2);
    sub_219BF6094();

    return;
  }

  v22 = v21;
  v23 = [v0 view];
  if (v23)
  {
    v24 = v23;
    [v23 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    [v22 setFrame_];
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2197D3388(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2197D33F8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

uint64_t sub_2197D349C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_2197D34E4(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_2197D35B4()
{
  sub_2197D456C(0, &qword_280EE5A38, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintLayoutProvider);
  sub_2197D454C(0);
  sub_2197D4504(&qword_280EE4C50, sub_2197D454C);
  sub_219BE91E4();
  v6 = sub_219BE6534();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2197D3724(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2197D440C(0, &qword_280EE3798, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_219BE86A4();
  v11[0] = v11[1];
  sub_2197D440C(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  sub_2197D4490();
  sub_219BE7B94();

  v9 = a3(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_2197D3890(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler);
  v7 = *(*(*v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_config) + 16);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);

  v12 = v5;

  v11(v7, sub_2197D43D0, v8, ObjectType, v9);
}

uint64_t sub_2197D398C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;

  v10(sub_2197D4204, v7, ObjectType, v8);
}

void sub_2197D3A5C()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

uint64_t sub_2197D3AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (![*(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_featureAvailability) useOfflineMode] || (__swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_offlineProvider), *(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_offlineProvider + 24)), (sub_219BEED44() & 1) == 0) || (sub_218BBF5C0(), sub_219BE5FC4(), v10 = sub_2196C8ED0(), result = sub_218BBF61C(v21), (v10 & 1) != 0))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v12 = sub_219BE98C4();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = off_282A49828;
    type metadata accessor for MagazineSectionBarEventHandler();
    v15(a2, v12, v14);

    sub_219BE8664();
    v16 = sub_219BE7BC4();

    v17 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_previousSelectedIndexPath;
    swift_beginAccess();
    sub_218A1BF30(v4 + v17, v9);
    sub_218B729A0(v9);

    sub_218A1C0F4(v9);
    v18 = sub_219BDC104();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a3, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    swift_beginAccess();
    sub_2197D462C(v9, v4 + v17);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2197D3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  if ((*(v3 + v9) & 1) == 0)
  {
    (*(v6 + 16))(v8, a3, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x277D6E950])
    {
      (*(v6 + 8))(v8, v5);
LABEL_4:
      v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      return (*(v11 + 40))(nullsub_1, 0, ObjectType, v11);
    }

    if (result == *MEMORY[0x277D6E928])
    {
      v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
      v14 = swift_getObjectType();
      v15 = *(v13 + 32);

      v15(v16, nullsub_1, 0, v14, v13);
    }

    else
    {
      if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
      {
        goto LABEL_4;
      }

      if (result != *MEMORY[0x277D6E958] && result != *MEMORY[0x277D6E970])
      {
        result = sub_219BF7514();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_2197D4038(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_2197D4098(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_2197D4240(uint64_t a1, uint64_t (*a2)(double, double))
{
  v3 = sub_219BE8164();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = [v9 collectionViewLayout];

  [v10 collectionViewContentSize];
  v12 = v11;

  return a2(v8, v12);
}

void sub_2197D440C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineSectionBarSectionDescriptor;
    v8[1] = &type metadata for MagazineSectionBarModel;
    v8[2] = sub_2189510B4();
    v8[3] = sub_218951108();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2197D4490()
{
  result = qword_280EE5570;
  if (!qword_280EE5570)
  {
    sub_2197D440C(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5570);
  }

  return result;
}

uint64_t sub_2197D4504(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2197D456C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineSectionBarLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MagazineSectionBarLayoutModel();
    v8[2] = sub_218951214();
    v8[3] = sub_2197D4504(&qword_280EB01F0, type metadata accessor for MagazineSectionBarLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2197D462C(uint64_t a1, uint64_t a2)
{
  sub_218747BDC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2197D4690()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    v4 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_styler], *&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_styler + 24]);
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    [v5 setBackgroundColor_];
    [v5 setShowsHorizontalScrollIndicator_];
    [v5 setScrollsToTop_];
    [v5 _setPocketsEnabled_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for SearchMoreExpandRequest()
{
  result = qword_27CC1F560;
  if (!qword_27CC1F560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197D487C()
{
  result = type metadata accessor for SearchMoreFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2197D4900()
{
  sub_2186D0E7C(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

BOOL sub_2197D4968()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  v2 = MEMORY[0x277D84F70];
  if (!*(&v11 + 1))
  {
    sub_218745D0C(&v12, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0E7C);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218745D0C(&v12, &qword_280E8B4F0, v2 + 8, MEMORY[0x277D83D88], sub_2186D0E7C);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v7 = -159;
    return ((v7 ^ v4) & 1) == 0;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  v7 = v6 - 159;
  return ((v7 ^ v4) & 1) == 0;
}

uint64_t sub_2197D4C04(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  *(swift_allocObject() + 16) = a3;

  v6 = a3;
  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  *(swift_allocObject() + 16) = v6;
  v7 = v6;

  sub_219BE20F4();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_2197D4D4C()
{
  sub_2186C6148(0, &qword_280E8D790);
  v0 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE2024();
}

uint64_t sub_2197D4DFC()
{
  sub_2186C6148(0, &qword_280E8D790);
  v0 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  type metadata accessor for AudioState(0);
  sub_2197D8F94(&unk_280EDFF90, type metadata accessor for AudioState);
  v2 = sub_219BF7894();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_2186FC3BC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_219BE5314();
}

uint64_t sub_2197D50B8(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for AudioFeedContentConfig();
  v2 = a1;
  sub_219BE31D4();

  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  v4 = sub_219BE2E54();
  type metadata accessor for AudioState(0);
  sub_219BE2F64();

  sub_2186C6148(0, &qword_280E8E3B0);
  v5 = sub_219BF66A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_219BE2F64();

  return v6;
}

uint64_t sub_2197D5254(uint64_t a1)
{
  v2 = sub_219BE1B34();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CC9578];
  v5 = MEMORY[0x277D83D88];
  sub_21873652C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for AudioFeedContentConfig();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  sub_21873652C(0, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, v5);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v23 = (a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager + 24));
  sub_219BE2184();
  sub_21872D560(v16, v8, &qword_280EE9C40, v4);
  v24 = sub_219BDBD34();
  if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
  {
    sub_2197D95DC(v16, type metadata accessor for AudioFeedContentConfig);
    sub_218745D0C(v8, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21873652C);
    v25 = 1;
  }

  else
  {
    sub_218745D0C(v8, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21873652C);
    sub_21872D17C(v16, v22, type metadata accessor for AudioFeedContentConfig);
    v25 = 0;
  }

  (*(v10 + 56))(v22, v25, 1, v9);
  sub_21872D560(v22, v20, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
  if ((*(v10 + 48))(v20, 1, v9) == 1)
  {
    sub_218745D0C(v22, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D83D88], sub_21873652C);
    v38 = *__swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v27 = v35;
    v26 = v36;
    v28 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x277D6CA28], v37);
    v29 = off_282A71798;
    type metadata accessor for AudioFeedConfigManager();
    v30 = v29();
    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v31 = v34;
    sub_21872D17C(v20, v34, type metadata accessor for AudioFeedContentConfig);
    sub_2187365F8(v31, v33, type metadata accessor for AudioFeedContentConfig);
    sub_21873652C(0, &qword_280EE6E00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v30 = sub_219BE3014();
    sub_2197D95DC(v31, type metadata accessor for AudioFeedContentConfig);
    sub_218745D0C(v22, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D83D88], sub_21873652C);
  }

  return v30;
}

uint64_t sub_2197D5888(uint64_t a1, char a2)
{
  v3 = v2;
  v23 = a1;
  v6 = type metadata accessor for AudioFeedContentConfig();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2186C6148(0, &qword_280E8D790);
  v9 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  v11 = sub_2186FC3BC();
  v12 = 1702195828;
  if ((a2 & 1) == 0)
  {
    v12 = 0x65736C6166;
  }

  v13 = 0xE500000000000000;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = v11;
  if (a2)
  {
    v13 = 0xE400000000000000;
  }

  *(v10 + 32) = v12;
  *(v10 + 40) = v13;
  sub_219BE5314();

  sub_2187365F8(a1, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedContentConfig);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  sub_21872D17C(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AudioFeedContentConfig);
  sub_2197D9114();
  v16 = v3;
  sub_219BE31D4();

  sub_2187365F8(v23, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedContentConfig);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_21872D17C(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v14, type metadata accessor for AudioFeedContentConfig);
  v18 = v16;
  v19 = sub_219BE2E54();
  type metadata accessor for AudioState(0);
  v20 = sub_219BE2F64();

  return v20;
}

uint64_t sub_2197D5B60(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_2197D9660();
  v2 = a1;
  sub_219BE31D4();

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2197D96CC;
  *(v4 + 24) = v3;
  type metadata accessor for AudioState(0);
  v5 = v2;
  sub_219BE2F64();

  sub_2186C6148(0, &qword_280E8E3B0);
  v6 = sub_219BF66A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = sub_219BE2F64();

  return v7;
}

uint64_t sub_2197D5D20(uint64_t a1)
{
  v2 = sub_219BE1B34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = *__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager + 24));
  (*(v3 + 104))(v5, *MEMORY[0x277D6CA28], v2);
  v6 = off_282A71798;
  type metadata accessor for AudioFeedConfigManager();
  v6();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore + 24));
  sub_2186C6148(0, &qword_280E8D790);
  v7 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  v12[0] = 0x68736572666572;
  v12[1] = 0xE700000000000000;
  sub_219BE2014();
  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = sub_219BE2E54();
  v10 = sub_219BE2E34();

  return v10;
}

uint64_t sub_2197D5F9C(uint64_t a1)
{
  v2 = type metadata accessor for AudioState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    sub_2197D8F94(&qword_280EDFFA0, type metadata accessor for AudioState);
    sub_219BE2114();
  }

  sub_2187365F8(a1, v4, type metadata accessor for AudioState);
  sub_21873652C(0, &unk_280EE6F98, type metadata accessor for AudioState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197D6114(void *a1, unint64_t a2, void *a3)
{
  v173 = a3;
  v171 = a2;
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  v4 = MEMORY[0x28223BE20](TrackData);
  v160 = (&v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v149 = (&v148 - v6);
  v175 = type metadata accessor for AudioState(0);
  v7 = MEMORY[0x28223BE20](v175);
  v157 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v161 = &v148 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v150 = &v148 - v12;
  MEMORY[0x28223BE20](v11);
  v152 = &v148 - v13;
  v174 = type metadata accessor for AudioFeedTrack(0);
  v177 = *(v174 - 8);
  v14 = MEMORY[0x28223BE20](v174);
  v154 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v172 = (&v148 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = (&v148 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v153 = (&v148 - v23);
  MEMORY[0x28223BE20](v22);
  v159 = (&v148 - v24);
  v163 = sub_218D58C8C;
  v25 = MEMORY[0x277D83D88];
  sub_21873652C(0, &qword_280EDCA40, sub_218D58C8C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v148 - v27;
  sub_21873652C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v25);
  v30 = MEMORY[0x28223BE20](v29);
  v155 = (&v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v164 = &v148 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v176 = &v148 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v148 - v36;
  v170 = sub_2186C6148(0, &qword_280E8D790);
  v38 = sub_219BF6F74();
  LODWORD(v162) = sub_219BF6214();
  sub_2186F20D4();
  v169 = v39;
  v40 = swift_allocObject();
  v158 = xmmword_219C09EC0;
  *(v40 + 16) = xmmword_219C09EC0;
  v179 = 0;
  v180 = 0xE000000000000000;
  swift_getObjectType();
  v166 = a1;
  sub_219BF6874();
  sub_2186CFDE4(0, &unk_280EE73B0);
  sub_219BF7484();
  __swift_destroy_boxed_opaque_existential_1(v178);
  v41 = v179;
  v42 = v180;
  v43 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  v44 = sub_2186FC3BC();
  *(v40 + 64) = v44;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  v45 = v171;
  sub_21872D560(v171, v37, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v46 = sub_219BF5484();
  *(v40 + 96) = v43;
  *(v40 + 104) = v44;
  v168 = v44;
  *(v40 + 72) = v46;
  *(v40 + 80) = v47;
  v48 = v167;
  sub_219BE5314();

  v171 = sub_2197D74BC(v45, v48);
  sub_21872D560(v173, v28, &qword_280EDCA40, v163);
  sub_218D58C8C();
  if ((*(*(v49 - 8) + 48))(v28, 1, v49) == 1)
  {
    sub_218745D0C(v28, &qword_280EDCA40, sub_218D58C8C, MEMORY[0x277D83D88], sub_21873652C);
    v50 = 1;
    v51 = v176;
  }

  else
  {
    v51 = v176;
    sub_21872D17C(v28, v176, type metadata accessor for AudioFeedTrack);
    v50 = 0;
  }

  v52 = v177;
  v53 = v174;
  v177[7](v51, v50, 1, v174);
  v54 = v164;
  sub_21872D560(v51, v164, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v55 = v52[6];
  v163 = (v52 + 6);
  v162 = v55;
  v56 = (v55)(v54, 1, v53);
  v57 = v166;
  if (v56 == 1)
  {
    sub_218745D0C(v54, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);
    goto LABEL_11;
  }

  v58 = v54;
  v59 = v159;
  sub_21872D17C(v58, v159, type metadata accessor for AudioFeedTrack);
  v173 = *v59;
  v60 = [v173 identifier];
  v61 = sub_219BF5414();
  v63 = v62;

  v64 = [v57 identifier];
  v65 = sub_219BF5414();
  v67 = v66;

  if (v61 == v65 && v63 == v67)
  {

LABEL_10:
    sub_2197D95DC(v159, type metadata accessor for AudioFeedTrack);
    goto LABEL_11;
  }

  v68 = sub_219BF78F4();

  if (v68)
  {
    goto LABEL_10;
  }

  v106 = v152;
  sub_219BE20E4();
  v107 = *(v106 + v175[5]);

  result = sub_2197D95DC(v106, type metadata accessor for AudioState);
  v108 = 0;
  v109 = *(v107 + 16);
  v110 = v153;
  while (v109 != v108)
  {
    if (v108 >= *(v107 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    sub_2187365F8(v107 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + v177[9] * v108, v110, type metadata accessor for AudioFeedTrack);
    v111 = [*v110 identifier];
    v112 = sub_219BF5414();
    v114 = v113;

    v115 = [v173 identifier];
    v116 = sub_219BF5414();
    v118 = v117;

    if (v112 == v116 && v114 == v118)
    {

      sub_2197D95DC(v110, type metadata accessor for AudioFeedTrack);
LABEL_45:

      sub_2197D95DC(v159, type metadata accessor for AudioFeedTrack);
      v57 = v166;
      v48 = v167;
      goto LABEL_11;
    }

    ++v108;
    v120 = sub_219BF78F4();

    result = sub_2197D95DC(v110, type metadata accessor for AudioFeedTrack);
    if (v120)
    {
      goto LABEL_45;
    }
  }

  v128 = v150;
  sub_219BE20E4();
  v129 = v149;
  sub_2187365F8(v128 + v175[6], v149, type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v48 = v167;
    if (EnumCaseMultiPayload == 1)
    {
      v131 = v156;
      sub_21872D17C(v129, v156, type metadata accessor for AudioFeedTrack);
      sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v132 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_219C09BA0;
      sub_21872D17C(v131, v133 + v132, type metadata accessor for AudioFeedTrack);
      result = sub_2197D95DC(v128, type metadata accessor for AudioState);
    }

    else
    {
      result = sub_2197D95DC(v128, type metadata accessor for AudioState);
      v133 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    result = sub_2197D95DC(v128, type metadata accessor for AudioState);
    v133 = *v129;
    v48 = v167;
  }

  v134 = v151;
  v135 = 0;
  v136 = *(v133 + 16);
  while (v136 != v135)
  {
    if (v135 >= *(v133 + 16))
    {
      goto LABEL_64;
    }

    sub_2187365F8(v133 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + v177[9] * v135, v134, type metadata accessor for AudioFeedTrack);
    v137 = [*v134 identifier];
    v138 = sub_219BF5414();
    v140 = v139;

    v141 = [v173 identifier];
    v142 = sub_219BF5414();
    v144 = v143;

    if (v138 == v142 && v140 == v144)
    {

      sub_2197D95DC(v134, type metadata accessor for AudioFeedTrack);
LABEL_61:

      goto LABEL_62;
    }

    ++v135;
    v146 = sub_219BF78F4();

    result = sub_2197D95DC(v134, type metadata accessor for AudioFeedTrack);
    if (v146)
    {
      goto LABEL_61;
    }
  }

  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
  sub_218CA8710(v173, 0);
  v147 = v171;
  if (v171 <= 1)
  {
    v147 = 1;
  }

  v171 = v147;
LABEL_62:
  sub_2197D95DC(v159, type metadata accessor for AudioFeedTrack);
  v57 = v166;
LABEL_11:
  v69 = sub_219BF6F74();
  sub_219BF6214();
  v70 = swift_allocObject();
  *(v70 + 16) = v158;
  v71 = [v57 articleID];
  v72 = sub_219BF5414();
  v74 = v73;

  v75 = v168;
  *(v70 + 56) = MEMORY[0x277D837D0];
  *(v70 + 64) = v75;
  v76 = MEMORY[0x277D83B88];
  *(v70 + 32) = v72;
  *(v70 + 40) = v74;
  v77 = MEMORY[0x277D83C10];
  *(v70 + 96) = v76;
  *(v70 + 104) = v77;
  v78 = v171;
  *(v70 + 72) = v171;
  sub_219BE5314();

  v79 = (v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore);
  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
  sub_218CA8710(v57, v78);
  v80 = v161;
  sub_219BE20E4();
  v81 = v160;
  sub_2187365F8(v80 + v175[6], v160, type metadata accessor for AudioState.UpNextTrackData);
  v82 = swift_getEnumCaseMultiPayload();
  if (v82)
  {
    if (v82 == 1)
    {
      v83 = v156;
      sub_21872D17C(v81, v156, type metadata accessor for AudioFeedTrack);
      sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v84 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_219C09BA0;
      sub_21872D17C(v83, v85 + v84, type metadata accessor for AudioFeedTrack);
      sub_2197D95DC(v80, type metadata accessor for AudioState);
      v86 = v85;
    }

    else
    {
      sub_2197D95DC(v80, type metadata accessor for AudioState);
      v86 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_2197D95DC(v80, type metadata accessor for AudioState);
    v86 = *v81;
  }

  v87 = v172;
  v88 = *(v86 + 16);

  if (v88)
  {
    goto LABEL_38;
  }

  v89 = v157;
  sub_219BE20E4();
  v90 = *(v89 + v175[7]);

  sub_2197D95DC(v89, type metadata accessor for AudioState);
  if (*(v90 + 16))
  {
    v91 = v154;
    sub_2187365F8(v90 + ((*(v177 + 80) + 32) & ~*(v177 + 80)), v154, type metadata accessor for AudioFeedTrack);

    sub_21872D17C(v91, v87, type metadata accessor for AudioFeedTrack);
    v92 = *v87;
    v93 = [v92 identifier];
    v94 = sub_219BF5414();
    v96 = v95;

    v97 = v155;
    sub_21872D560(v176, v155, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    if ((v162)(v97, 1, v174) == 1)
    {
      sub_218745D0C(v97, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);

LABEL_20:
      v98 = sub_219BF6F74();
      sub_219BF6214();
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_219C09BA0;
      sub_2197D8F94(&qword_280EDC9E0, type metadata accessor for AudioFeedTrack);
      v100 = v172;
      v101 = sub_219BF7894();
      v102 = v168;
      *(v99 + 56) = MEMORY[0x277D837D0];
      *(v99 + 64) = v102;
      *(v99 + 32) = v101;
      *(v99 + 40) = v103;
      sub_219BE5314();

      result = __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      if (__OFADD__(v171, 1))
      {
LABEL_65:
        __break(1u);
        return result;
      }

      sub_218CA8710(v92, v171 + 1);
      v105 = v100;
      goto LABEL_37;
    }

    v177 = v92;
    v121 = [*v97 identifier];
    v122 = sub_219BF5414();
    v124 = v123;

    sub_2197D95DC(v97, type metadata accessor for AudioFeedTrack);
    if (v94 == v122 && v96 == v124)
    {
    }

    else
    {
      v125 = sub_219BF78F4();

      v92 = v177;
      if ((v125 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v105 = v172;
LABEL_37:
    sub_2197D95DC(v105, type metadata accessor for AudioFeedTrack);
    goto LABEL_38;
  }

LABEL_38:
  v126 = *(v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_readingHistory);
  v127 = [v57 articleID];
  if (!v127)
  {
    sub_219BF5414();
    v127 = sub_219BF53D4();
  }

  [v126 markArticle:v127 withCompletedListening:0];

  return sub_218745D0C(v176, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);
}

uint64_t sub_2197D74BC(uint64_t a1, uint64_t a2)
{
  sub_21873652C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for AudioFeedTrack(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21872D560(a1, v6, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218745D0C(v6, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);
    return 0;
  }

  else
  {
    sub_21872D17C(v6, v10, type metadata accessor for AudioFeedTrack);
    v12 = [*(a2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_audioPlaylist) articleIDs];
    v13 = sub_219BF5924();

    v14 = [*v10 articleID];
    v15 = sub_219BF5414();
    v17 = v16;

    v18 = *(v13 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = (v13 + 40);
      while (1)
      {
        v21 = *(v20 - 1) == v15 && *v20 == v17;
        if (v21 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        ++v19;
        v20 += 2;
        if (v18 == v19)
        {
          goto LABEL_11;
        }
      }

      if (__OFADD__(v19, 1))
      {
        __break(1u);
      }

      else
      {
        sub_2197D95DC(v10, type metadata accessor for AudioFeedTrack);
        return v19 + 1;
      }
    }

    else
    {
LABEL_11:

      sub_2197D95DC(v10, type metadata accessor for AudioFeedTrack);
      return 0;
    }
  }

  return result;
}

void sub_2197D77B0(uint64_t a1, unsigned __int8 a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_completedListeningProcessor), *(v2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_completedListeningProcessor + 24));
  if ((*(a1 + 24) & 0x40) == 0)
  {
    return;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
LABEL_10:
      v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(v2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
      v7 = *a1;
      v8 = *(*v6 + 24);
      v9 = [v7 articleID];
      if (!v9)
      {
        sub_219BF5414();
        v9 = sub_219BF53D4();
      }

      [v8 removeArticleID_];

      v10 = *(v2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_readingHistory);
      v11 = [v7 articleID];
      if (!v11)
      {
        sub_219BF5414();
        v11 = sub_219BF53D4();
      }

      [v10 markArticle:v11 withCompletedListening:1];

      v12 = [v7 articleID];
      if (!v12)
      {
        sub_219BF5414();
        v12 = sub_219BF53D4();
      }

      [v10 markArticle:v12 withListeningProgress:0.0];

      v13 = [v7 articleID];
      if (!v13)
      {
        sub_219BF5414();
        v14 = sub_219BF53D4();

        v13 = v14;
      }

      v15 = v13;
      [v10 markArticle_withReadingPositionJSON_];

      return;
    }
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  type metadata accessor for AudioFeedTrack(0);
  sub_219BDD6D4();
  if (v5)
  {
    [*(a1 + 8) duration];
  }

  if (sub_219BDEAA4())
  {
    goto LABEL_10;
  }
}

uint64_t sub_2197D7A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_heroStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_heroStore + 24));
  sub_21926CDEC(a2, *v4);
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
  sub_2186C6148(0, &qword_280E8D790);
  v6 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2195C53F0;
  *(v7 + 24) = v5;

  v8 = sub_219BE2E54();
  sub_21873652C(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE2F64();

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_recentlyPlayedStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_recentlyPlayedStore + 24));
  sub_219958D14();
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore + 24));
  v9 = off_282A86158;
  type metadata accessor for AudioSuggestionsStore();
  v9();
  v10 = sub_219BE31A4();

  return v10;
}

uint64_t sub_2197D7C70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v143 = a3;
  v8 = type metadata accessor for AudioFeedTrack(0);
  v147 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v144 = (&v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BDBD34();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  v14 = MEMORY[0x28223BE20](TrackData);
  v135 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v133 = (&v128 - v16);
  sub_21873652C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v128 - v18;
  v19 = type metadata accessor for AudioState(0);
  v20 = MEMORY[0x28223BE20](v19);
  v136 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v148 = &v128 - v22;
  v142 = sub_219BF0BD4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ForYouAudioFeedGroupKnobs();
  MEMORY[0x28223BE20](v139);
  v138 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AudioFeedKnobsConfig();
  MEMORY[0x28223BE20](v25 - 8);
  v137 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v149 = a1[2];
  v152 = v29;
  if (v27 >> 62)
  {
LABEL_51:
    v54 = v27;
    v30 = sub_219BF7214();
    v27 = v54;
  }

  else
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v28;
  v134 = TrackData;
  v132 = v27;
  if (!v30)
  {

    v151 = 0;
    goto LABEL_9;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_120;
  }

  v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
    v33 = *(v27 + 32);

    swift_unknownObjectRetain();
    while (1)
    {
      v151 = v33;
LABEL_9:
      if (!sub_2197D4968())
      {

        v31 = MEMORY[0x277D84F90];
      }

      v153 = v31;
      if (v31 >> 62)
      {
        v31 = sub_219BF7214();
      }

      else
      {
        v31 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = MEMORY[0x277D84F90];
      v150 = a2;
      v131 = v12;
      v130 = v19;
      v129 = v8;
      if (v31)
      {
        v157 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
          break;
        }

        TrackData = v157;
        if ((v153 & 0xC000000000000001) != 0)
        {
          v34 = 0;
          do
          {
            MEMORY[0x21CECE0F0](v34, v153);
            v4 = [swift_unknownObjectRetain() articleID];
            a2 = sub_219BF5414();
            v36 = v35;
            swift_unknownObjectRelease_n();

            v157 = TrackData;
            v19 = *(TrackData + 16);
            v37 = *(TrackData + 24);
            if (v19 >= v37 >> 1)
            {
              sub_21870B65C((v37 > 1), v19 + 1, 1);
              TrackData = v157;
            }

            ++v34;
            *(TrackData + 16) = v19 + 1;
            v38 = TrackData + 16 * v19;
            *(v38 + 32) = a2;
            *(v38 + 40) = v36;
          }

          while (v31 != v34);
        }

        else
        {
          v19 = v153 + 32;
          do
          {
            v39 = [swift_unknownObjectRetain_n() articleID];
            v40 = sub_219BF5414();
            a2 = v41;
            swift_unknownObjectRelease_n();

            v157 = TrackData;
            v43 = *(TrackData + 16);
            v42 = *(TrackData + 24);
            if (v43 >= v42 >> 1)
            {
              sub_21870B65C((v42 > 1), v43 + 1, 1);
              TrackData = v157;
            }

            *(TrackData + 16) = v43 + 1;
            v44 = TrackData + 16 * v43;
            *(v44 + 32) = v40;
            *(v44 + 40) = a2;
            v19 += 8;
            --v31;
          }

          while (v31);
        }

        v28 = MEMORY[0x277D84F90];
      }

      else
      {
        TrackData = MEMORY[0x277D84F90];
      }

      v8 = sub_218845F78(TrackData);

      v158 = v28;
      v45 = v152;
      if (v152 >> 62)
      {
        TrackData = v152;
        v46 = sub_219BF7214();
        v45 = TrackData;
        if (v46)
        {
LABEL_29:
          v145 = v5;
          v12 = 0;
          v27 = v45 & 0xFFFFFFFFFFFFFF8;
          v155 = v45 & 0xFFFFFFFFFFFFFF8;
          *&v156 = v45 & 0xC000000000000001;
          v154 = v45 + 32;
          v5 = (v8 + 56);
          while (1)
          {
            if (v156)
            {
              v28 = MEMORY[0x21CECE0F0](v12, v152);
              v47 = __OFADD__(v12++, 1);
              if (v47)
              {
LABEL_48:
                __break(1u);
LABEL_49:
                v31 = v158;
                v5 = v145;
                goto LABEL_55;
              }
            }

            else
            {
              if (v12 >= *(v155 + 16))
              {
                __break(1u);
                goto LABEL_51;
              }

              v28 = *(v154 + 8 * v12);
              swift_unknownObjectRetain();
              v47 = __OFADD__(v12++, 1);
              if (v47)
              {
                goto LABEL_48;
              }
            }

            v48 = [v28 articleID];
            a2 = sub_219BF5414();
            v4 = v49;

            if (*(v8 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v50 = sub_219BF7AE4(), v51 = -1 << *(v8 + 32), TrackData = v50 & ~v51, ((*&v5[(TrackData >> 3) & 0xFFFFFFFFFFFFFF8] >> TrackData) & 1) != 0))
            {
              v19 = ~v51;
              while (1)
              {
                v52 = (*(v8 + 48) + 16 * TrackData);
                v53 = *v52 == a2 && v52[1] == v4;
                if (v53 || (sub_219BF78F4() & 1) != 0)
                {
                  break;
                }

                TrackData = (TrackData + 1) & v19;
                if (((*&v5[(TrackData >> 3) & 0xFFFFFFFFFFFFFF8] >> TrackData) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              swift_unknownObjectRelease();

              if (v12 == v46)
              {
                goto LABEL_49;
              }
            }

            else
            {
LABEL_30:

              TrackData = &v158;
              sub_219BF73D4();
              a2 = v158[2];
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
              if (v12 == v46)
              {
                goto LABEL_49;
              }
            }
          }
        }
      }

      else
      {
        v46 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          goto LABEL_29;
        }
      }

      v31 = MEMORY[0x277D84F90];
LABEL_55:

      v55 = type metadata accessor for AudioFeedContentConfig();
      v56 = v137;
      sub_2187365F8(v143 + *(v55 + 20), v137, type metadata accessor for AudioFeedKnobsConfig);
      v57 = type metadata accessor for AudioFeedGroupKnobs();
      v58 = v138;
      sub_2187365F8(v56 + *(v57 + 20), v138, type metadata accessor for ForYouAudioFeedGroupKnobs);
      sub_2197D95DC(v56, type metadata accessor for AudioFeedGroupKnobs);
      v12 = *(v58 + *(v139 + 24));

      sub_2197D95DC(v58, type metadata accessor for ForYouAudioFeedGroupKnobs);
      v8 = v150;
      swift_getObjectType();
      a2 = v140;
      sub_219BEEFB4();
      sub_219BEF524();

      (*(v141 + 8))(a2, v142);
      v59 = v157;
      if ((v157 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (v31 < 0)
        {
          v12 = 1;
        }

        else
        {
          v12 = (v31 >> 62) & 1;
        }

        if ((v12 & 1) == 0)
        {
          v60 = *(v31 + 16);
          if (v60 >= v157)
          {
            v61 = v157;
          }

          else
          {
            v61 = *(v31 + 16);
          }

          if (v157)
          {
            v19 = v61;
          }

          else
          {
            v19 = 0;
          }

          if (v60 >= v19)
          {
            goto LABEL_67;
          }

          goto LABEL_119;
        }
      }

      v125 = sub_219BF7214();
      result = sub_219BF7214();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (v125 >= v59)
      {
        v126 = v59;
      }

      else
      {
        v126 = v125;
      }

      if (v125 < 0)
      {
        v126 = v59;
      }

      if (v59)
      {
        v19 = v126;
      }

      else
      {
        v19 = 0;
      }

      if (sub_219BF7214() >= v19)
      {
LABEL_67:
        if ((v31 & 0xC000000000000001) != 0 && v19)
        {
          sub_218731D50();

          v62 = 0;
          do
          {
            v63 = v62 + 1;
            sub_219BF7334();
            v62 = v63;
          }

          while (v19 != v63);
        }

        else
        {
        }

        if (v12)
        {
          v64 = sub_219BF7564();
          v66 = v65;
          v68 = v67;
          v70 = v69;

          v31 = v64;
          if (v70)
          {
LABEL_78:
            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v73 = swift_dynamicCastClass();
            if (!v73)
            {
              swift_unknownObjectRelease();
              v73 = MEMORY[0x277D84F90];
            }

            v74 = *(v73 + 16);

            if (__OFSUB__(v70 >> 1, v68))
            {
              __break(1u);
            }

            else if (v74 == (v70 >> 1) - v68)
            {
              v72 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              v8 = v150;
              if (!v72)
              {
                v72 = MEMORY[0x277D84F90];
LABEL_84:
                swift_unknownObjectRelease();
              }

              if (v151)
              {
                v75 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 24);
                v76 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 32);
                __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter), v75);
                v77 = *(v76 + 8);
                v78 = swift_unknownObjectRetain();
                v77(v78, v75, v76);
                if (v5)
                {

                  v5 = 0;
                  v79 = 1;
                }

                else
                {
                  v79 = 0;
                }

                swift_unknownObjectRelease();
                v8 = v150;
              }

              else
              {
                v79 = 1;
              }

              v80 = v146;
              (*(v147 + 56))(v146, v79, 1, v129);
              v81 = (v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter);
              v82 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 24);
              v83 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 32);
              __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter), v82);
              v84 = sub_2193342C8(v132, v82, v83);

              v85 = v81[3];
              v86 = v81[4];
              __swift_project_boxed_opaque_existential_1(v81, v85);
              v87 = sub_2193342C8(v153, v85, v86);

              v88 = v133;
              *v133 = v87;
              swift_storeEnumTagMultiPayload();
              v89 = v81[3];
              v90 = v81[4];
              __swift_project_boxed_opaque_existential_1(v81, v89);
              v91 = sub_2193342C8(v72, v89, v90);

              v92 = v81[3];
              v93 = v81[4];
              __swift_project_boxed_opaque_existential_1(v81, v92);
              v94 = sub_2193342C8(v149, v92, v93);

              v95 = v131;
              sub_219BDBBD4();
              v96 = v148;
              sub_21873703C(v80, v84, v88, v91, v94, v95, v148);
              sub_2186C6148(0, &qword_280E8D790);
              v97 = sub_219BF6F74();
              v98 = sub_219BF6214();
              sub_2186F20D4();
              v19 = swift_allocObject();
              v156 = xmmword_219C09BA0;
              *(v19 + 16) = xmmword_219C09BA0;
              v99 = v135;
              sub_2187365F8(v96 + *(v130 + 24), v135, type metadata accessor for AudioState.UpNextTrackData);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v101 = MEMORY[0x277D84F90];
              if (EnumCaseMultiPayload)
              {
                v102 = MEMORY[0x277D84F90];
                if (EnumCaseMultiPayload == 1)
                {
                  v103 = v144;
                  sub_21872D17C(v99, v144, type metadata accessor for AudioFeedTrack);
                  sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
                  v104 = (*(v147 + 80) + 32) & ~*(v147 + 80);
                  v102 = swift_allocObject();
                  *(v102 + 16) = v156;
                  sub_21872D17C(v103, v102 + v104, type metadata accessor for AudioFeedTrack);
                }

                v31 = *(v102 + 16);
                if (v31)
                {
LABEL_95:
                  LODWORD(v155) = v98;
                  *&v156 = v97;
                  v145 = v5;
                  if (v31 >= 2)
                  {
                    v105 = 2;
                  }

                  else
                  {
                    v105 = v31;
                  }

                  v157 = v101;
                  v106 = v147;
                  v107 = v102 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
                  sub_21870B65C(0, v105, 0);
                  v153 = *(v106 + 72);
                  v154 = v107;
                  v101 = v157;
                  v108 = v107;
                  v109 = v144;
                  sub_2187365F8(v108, v144, type metadata accessor for AudioFeedTrack);
                  v110 = [*v109 articleID];
                  v28 = sub_219BF5414();
                  v5 = v111;

                  sub_2197D95DC(v109, type metadata accessor for AudioFeedTrack);
                  v157 = v101;
                  v8 = *(v101 + 16);
                  v32 = *(v101 + 24);
                  v4 = (v8 + 1);
                  if (v8 < v32 >> 1)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_123;
                }
              }

              else
              {
                v102 = *v99;
                v31 = *(*v99 + 16);
                if (v31)
                {
                  goto LABEL_95;
                }
              }

              goto LABEL_107;
            }

            swift_unknownObjectRelease_n();
            v8 = v150;
          }
        }

        else
        {
          v68 = 0;
          v66 = v31 + 32;
          v70 = (2 * v19) | 1;
          if (v70)
          {
            goto LABEL_78;
          }
        }

        sub_218B667DC(v31, v66, v68, v70);
        v72 = v71;
        goto LABEL_84;
      }

LABEL_119:
      __break(1u);
LABEL_120:
      v127 = v27;

      v33 = MEMORY[0x21CECE0F0](0, v127);
    }
  }

  __break(1u);
LABEL_123:
  sub_21870B65C((v32 > 1), v4, 1);
  v101 = v157;
LABEL_99:
  *(v101 + 16) = v4;
  v112 = v101 + 16 * v8;
  *(v112 + 32) = v28;
  *(v112 + 40) = v5;
  if (v31 != 1)
  {
    v113 = v144;
    sub_2187365F8(v154 + v153, v144, type metadata accessor for AudioFeedTrack);
    v114 = [*v113 articleID];
    v115 = sub_219BF5414();
    v117 = v116;

    sub_2197D95DC(v113, type metadata accessor for AudioFeedTrack);
    v157 = v101;
    v119 = *(v101 + 16);
    v118 = *(v101 + 24);
    if (v119 >= v118 >> 1)
    {
      sub_21870B65C((v118 > 1), v119 + 1, 1);
      v101 = v157;
    }

    *(v101 + 16) = v119 + 1;
    v120 = v101 + 16 * v119;
    *(v120 + 32) = v115;
    *(v120 + 40) = v117;
  }

  v97 = v156;
LABEL_107:
  sub_2186D0E7C(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v19 + 56) = v121;
  *(v19 + 64) = sub_218D893FC();
  *(v19 + 32) = v101;
  sub_219BE5314();

  v122 = v148;
  sub_2187365F8(v148, v136, type metadata accessor for AudioState);
  sub_21873652C(0, &unk_280EE6F98, type metadata accessor for AudioState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v123 = sub_219BE3014();
  swift_unknownObjectRelease();
  sub_2197D95DC(v122, type metadata accessor for AudioState);
  return v123;
}