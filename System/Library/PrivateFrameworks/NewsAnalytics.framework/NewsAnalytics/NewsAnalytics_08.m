uint64_t sub_217B2AE6C(uint64_t a1)
{
  v2 = sub_217B2B040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2AEA8(uint64_t a1)
{
  v2 = sub_217B2B040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsletterSubscriptionData.encode(to:)(void *a1)
{
  sub_217B2B280(0, &qword_2811BC588, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B040();
  sub_217D89E7C();
  v13 = v9;
  sub_217B2B094();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B2B040()
{
  result = qword_2811BEFE0[0];
  if (!qword_2811BEFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEFE0);
  }

  return result;
}

unint64_t sub_217B2B094()
{
  result = qword_2811BEFB8;
  if (!qword_2811BEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFB8);
  }

  return result;
}

uint64_t NewsletterSubscriptionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B2B280(0, &qword_2811BC948, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B040();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B2B2E4();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2B280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2B040();
    v7 = a3(a1, &type metadata for NewsletterSubscriptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2B2E4()
{
  result = qword_2811BEFA8;
  if (!qword_2811BEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFA8);
  }

  return result;
}

unint64_t sub_217B2B33C()
{
  result = qword_2811BEFC0;
  if (!qword_2811BEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFC0);
  }

  return result;
}

unint64_t sub_217B2B394()
{
  result = qword_2811BEFC8;
  if (!qword_2811BEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFC8);
  }

  return result;
}

unint64_t sub_217B2B43C()
{
  result = qword_27CB9F898;
  if (!qword_27CB9F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F898);
  }

  return result;
}

unint64_t sub_217B2B494()
{
  result = qword_2811BEFD0;
  if (!qword_2811BEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFD0);
  }

  return result;
}

unint64_t sub_217B2B4EC()
{
  result = qword_2811BEFD8;
  if (!qword_2811BEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFD8);
  }

  return result;
}

uint64_t sub_217B2B59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B2B62C(uint64_t a1)
{
  v2 = sub_217B2B7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2B668(uint64_t a1)
{
  v2 = sub_217B2B7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResponseData.encode(to:)(void *a1)
{
  sub_217B2B9C4(0, &qword_27CB9F8A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B7EC();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B2B7EC()
{
  result = qword_27CB9F8A8;
  if (!qword_27CB9F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8A8);
  }

  return result;
}

uint64_t SearchResponseData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B2B9C4(0, &qword_27CB9F8B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B7EC();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B9C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2B9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2B7EC();
    v7 = a3(a1, &type metadata for SearchResponseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2BA2C()
{
  result = qword_2811C2E48;
  if (!qword_2811C2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E48);
  }

  return result;
}

unint64_t sub_217B2BA84()
{
  result = qword_2811C2E50[0];
  if (!qword_2811C2E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2E50);
  }

  return result;
}

uint64_t sub_217B2BAF0(void *a1)
{
  sub_217B2B9C4(0, &qword_27CB9F8A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2B7EC();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B2BC5C()
{
  result = qword_27CB9F8B8;
  if (!qword_27CB9F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8B8);
  }

  return result;
}

unint64_t sub_217B2BCB4()
{
  result = qword_27CB9F8C0;
  if (!qword_27CB9F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8C0);
  }

  return result;
}

unint64_t sub_217B2BD0C()
{
  result = qword_27CB9F8C8;
  if (!qword_27CB9F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8C8);
  }

  return result;
}

uint64_t sub_217B2BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000217DCDA50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217B2BE5C(uint64_t a1)
{
  v2 = sub_217B2C030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2BE98(uint64_t a1)
{
  v2 = sub_217B2C030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityDismissalData.encode(to:)(void *a1)
{
  sub_217B2C270(0, &qword_27CB9F8D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2C030();
  sub_217D89E7C();
  v13 = v9;
  sub_217B2C084();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B2C030()
{
  result = qword_27CB9F8D8;
  if (!qword_27CB9F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8D8);
  }

  return result;
}

unint64_t sub_217B2C084()
{
  result = qword_27CB9F8E0;
  if (!qword_27CB9F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8E0);
  }

  return result;
}

uint64_t LiveActivityDismissalData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B2C270(0, &qword_27CB9F8E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2C030();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B2C2D4();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2C270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2C030();
    v7 = a3(a1, &type metadata for LiveActivityDismissalData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2C2D4()
{
  result = qword_27CB9F8F0;
  if (!qword_27CB9F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8F0);
  }

  return result;
}

unint64_t sub_217B2C384()
{
  result = qword_27CB9F8F8;
  if (!qword_27CB9F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F8F8);
  }

  return result;
}

unint64_t sub_217B2C3DC()
{
  result = qword_27CB9F900;
  if (!qword_27CB9F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F900);
  }

  return result;
}

unint64_t sub_217B2C434()
{
  result = qword_27CB9F908;
  if (!qword_27CB9F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F908);
  }

  return result;
}

double static ScienceData.emptyScienceData.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  result = 1.0;
  *(a1 + 64) = xmmword_217D94C40;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = MEMORY[0x277D84F90];
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  return result;
}

id ScienceData.feldsparFractionalCohortMemberships.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_217B2C6E8(0, v2, 0);
    v4 = 0;
    v5 = (v1 + 48);
    v6 = v21;
    while (v4 < *(v1 + 16))
    {
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      v10 = objc_allocWithZone(MEMORY[0x277D35408]);

      result = [v10 init];
      if (!result)
      {
        goto LABEL_10;
      }

      v11 = result;
      v12 = sub_217D8951C();
      [v11 setTagId_];

      *&v13 = v9;
      [v11 setScore_];
      v20 = sub_217B2C708();

      *&v19 = v11;
      v21 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_217B2C6E8((v14 > 1), v15 + 1, 1);
        v6 = v21;
      }

      ++v4;
      *(v6 + 16) = v15 + 1;
      result = sub_217B2C754(&v19, (v6 + 32 * v15 + 32));
      v5 += 3;
      if (v2 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v16 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v17 = sub_217D896CC();

    v18 = [v16 initWithArray_];

    return v18;
  }

  return result;
}

char *sub_217B2C6E8(char *a1, int64_t a2, char a3)
{
  result = sub_217B2C824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_217B2C708()
{
  result = qword_27CB9F910;
  if (!qword_27CB9F910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB9F910);
  }

  return result;
}

_OWORD *sub_217B2C754(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_217B2C764(char *a1, int64_t a2, char a3)
{
  result = sub_217B2C93C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C784(char *a1, int64_t a2, char a3)
{
  result = sub_217B2CA60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C7A4(char *a1, int64_t a2, char a3)
{
  result = sub_217B2CB84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C7C4(char *a1, int64_t a2, char a3)
{
  result = sub_217B2CC94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C7E4(char *a1, int64_t a2, char a3)
{
  result = sub_217B2CD9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_217B2C804(void *a1, int64_t a2, char a3)
{
  result = sub_217B2CEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_217B2C824(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &unk_2811BC3F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2C93C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &unk_2811BC450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2CA60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_2811BC448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2CB84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_2811BC428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217B2CC94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_2811BC418);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_217B2CD9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217B2D054(0, &qword_2811BC420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_217B2CEA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_217A4AA00(0, &qword_27CB9F918, sub_217B2CFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_217B2CFF0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_217B2CFF0()
{
  result = qword_27CBA3B80;
  if (!qword_27CBA3B80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CBA3B80);
  }

  return result;
}

void sub_217B2D054(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217D89D0C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t PuzzleStatsData.playDuration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PuzzleStatsData.playDuration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PuzzleStatsData.currentStreak.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PuzzleStatsData.currentStreak.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PuzzleStatsData.rankId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PuzzleStatsData.rankId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PuzzleStatsData.init(playDuration:currentStreak:rankId:puzzleModalType:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = v8;
  return result;
}

uint64_t sub_217B2D208()
{
  v1 = 0x6172754479616C70;
  v2 = 0x64496B6E6172;
  if (*v0 != 2)
  {
    v2 = 0x6F4D656C7A7A7570;
  }

  if (*v0)
  {
    v1 = 0x53746E6572727563;
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

uint64_t sub_217B2D2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B2DBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B2D2C8(uint64_t a1)
{
  v2 = sub_217B2D54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2D304(uint64_t a1)
{
  v2 = sub_217B2D54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleStatsData.encode(to:)(void *a1)
{
  sub_217B2D874(0, &qword_27CB9F920, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v20 = v1[2];
  v19 = *(v1 + 24);
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  HIDWORD(v16) = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2D54C();
  sub_217D89E7C();
  v26 = 0;
  v13 = v21;
  sub_217D89C5C();
  if (!v13)
  {
    v14 = BYTE4(v16);
    v25 = 1;
    sub_217D89C5C();
    v24 = 2;
    sub_217D89C0C();
    v23 = v14;
    v22 = 3;
    sub_217B2D5A0();
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B2D54C()
{
  result = qword_27CB9F928;
  if (!qword_27CB9F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F928);
  }

  return result;
}

unint64_t sub_217B2D5A0()
{
  result = qword_27CB9F930;
  if (!qword_27CB9F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F930);
  }

  return result;
}

uint64_t PuzzleStatsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B2D874(0, &qword_27CB9F938, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v27 = 1;
  v26 = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2D54C();
  sub_217D89E5C();
  if (!v2)
  {
    v32 = 0;
    v12 = sub_217D89B7C();
    v27 = v13 & 1;
    v31 = 1;
    v25 = sub_217D89B7C();
    v26 = v15 & 1;
    v30 = 2;
    v16 = sub_217D89B2C();
    v18 = v17;
    v24 = v16;
    v28 = 3;
    sub_217B2D8D8();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v19 = v29;
    v20 = v27;
    v21 = v26;
    *a2 = v12;
    *(a2 + 8) = v20;
    v22 = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = v18;
    *(a2 + 48) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B2D874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2D54C();
    v7 = a3(a1, &type metadata for PuzzleStatsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B2D8D8()
{
  result = qword_27CB9F940;
  if (!qword_27CB9F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F940);
  }

  return result;
}

unint64_t sub_217B2D930()
{
  result = qword_2811C6568;
  if (!qword_2811C6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6568);
  }

  return result;
}

unint64_t sub_217B2D988()
{
  result = qword_2811C6570;
  if (!qword_2811C6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6570);
  }

  return result;
}

uint64_t sub_217B2DA0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_217B2DA68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_217B2DAF0()
{
  result = qword_27CB9F948;
  if (!qword_27CB9F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F948);
  }

  return result;
}

unint64_t sub_217B2DB48()
{
  result = qword_27CB9F950;
  if (!qword_27CB9F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F950);
  }

  return result;
}

unint64_t sub_217B2DBA0()
{
  result = qword_27CB9F958;
  if (!qword_27CB9F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F958);
  }

  return result;
}

uint64_t sub_217B2DBF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172754479616C70 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496B6E6172 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4D656C7A7A7570 && a2 == 0xEF657079546C6164)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217B2DE30()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9F990);
  __swift_project_value_buffer(v0, qword_27CB9F990);
  return sub_217D8866C();
}

uint64_t WebEmbedFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 20);
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 20);
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 24);
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedFailureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 24);
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.contentModelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 28);
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B2E394()
{
  result = qword_27CB9F9B0;
  if (!qword_27CB9F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9B0);
  }

  return result;
}

unint64_t sub_217B2E3E8()
{
  result = qword_27CB9F9B8;
  if (!qword_27CB9F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9B8);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.contentModelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 28);
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 32);
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 32);
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedFailureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 36);
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B2E79C()
{
  result = qword_27CB9F9C8;
  if (!qword_27CB9F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9C8);
  }

  return result;
}

unint64_t sub_217B2E7F0()
{
  result = qword_27CB9F9D0;
  if (!qword_27CB9F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9D0);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.webEmbedFailureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 36);
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.webEmbedEnvironmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 40);
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B2E9F4()
{
  result = qword_27CB9F9E0;
  if (!qword_27CB9F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9E0);
  }

  return result;
}

unint64_t sub_217B2EA48()
{
  result = qword_27CB9F9E8;
  if (!qword_27CB9F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9E8);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.webEmbedEnvironmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedFailureEvent(0) + 40);
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedFailureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t WebEmbedFailureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t WebEmbedFailureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t WebEmbedFailureEvent.Model.contentModelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t WebEmbedFailureEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedFailureEvent.Model.webEmbedFailureData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t WebEmbedFailureEvent.Model.webEmbedEnvironmentData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedFailureEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 WebEmbedFailureEvent.Model.init(eventData:feedData:viewData:contentModelData:webEmbedData:webEmbedFailureData:webEmbedEnvironmentData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 8);
  v27 = *a2;
  v28 = *a4;
  v14 = *(a4 + 2);
  v15 = *a5;
  v16 = a5[1];
  v30 = a6[1];
  v31 = *a6;
  v17 = *(a6 + 4);
  v29 = *(a6 + 5);
  v32 = a7[1];
  v33 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v27;
  *(v20 + 16) = v10;
  v21 = a8 + v19[6];
  *v21 = v11;
  *(v21 + 8) = v12;
  *(v21 + 16) = v13;
  v22 = a8 + v19[7];
  *v22 = v28;
  *(v22 + 16) = v14;
  v23 = (a8 + v19[8]);
  *v23 = v15;
  v23[1] = v16;
  v24 = a8 + v19[9];
  result = v30;
  *v24 = v31;
  *(v24 + 16) = v30;
  *(v24 + 32) = v17;
  *(v24 + 40) = v29;
  v26 = (a8 + v19[10]);
  *v26 = v33;
  v26[1] = v32;
  return result;
}

uint64_t sub_217B2F25C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6174614464656566;
    if (v1 != 1)
    {
      v5 = 0x6174614477656976;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x746144746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0x6465626D45626577;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217B2F350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B308EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B2F378(uint64_t a1)
{
  v2 = sub_217B2F834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B2F3B4(uint64_t a1)
{
  v2 = sub_217B2F834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B2FED8(0, &qword_27CB9F9F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2F834();
  sub_217D89E7C();
  LOBYTE(v32) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for WebEmbedFailureEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v15 = v13[2];
    *&v32 = *v13;
    *(&v32 + 1) = v14;
    v33 = v15;
    v37 = 1;
    sub_217AD1A68(v32, v14, v15);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v32, *(&v32 + 1), v33);
    v16 = (v3 + v12[6]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    *&v32 = v17;
    *(&v32 + 1) = v18;
    LOWORD(v33) = v16;
    v37 = 2;
    sub_217A5E790();

    sub_217D89C3C();

    v19 = (v3 + v12[7]);
    v20 = *(v19 + 2);
    v32 = *v19;
    v33 = v20;
    v37 = 3;
    sub_217B2E3E8();

    sub_217D89C3C();

    v22 = (v3 + v12[8]);
    v23 = v22[1];
    *&v32 = *v22;
    *(&v32 + 1) = v23;
    v37 = 4;
    sub_217AE89C8();

    sub_217D89CAC();

    v24 = (v3 + v12[9]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    *&v32 = *v24;
    *(&v32 + 1) = v25;
    v33 = v26;
    v34 = v27;
    v35 = v28;
    v36 = v29;
    v37 = 5;
    sub_217B2E7F0();

    sub_217D89CAC();

    v30 = (v3 + v12[10]);
    v31 = v30[1];
    *&v32 = *v30;
    *(&v32 + 1) = v31;
    v37 = 6;
    sub_217B2EA48();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B2F834()
{
  result = qword_27CB9F9F8;
  if (!qword_27CB9F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9F9F8);
  }

  return result;
}

uint64_t WebEmbedFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_217D8899C();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B2FED8(0, &qword_27CB9FA00, MEMORY[0x277D844C8]);
  v41 = v7;
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B2F834();
  v40 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v38;
  v35 = v14;
  LOBYTE(v42) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v39;
  sub_217D89BCC();
  v18 = v35;
  (*(v37 + 32))(v35, v17, v4);
  v46 = 1;
  sub_217A5B978();
  sub_217D89B5C();
  v34 = v4;
  v19 = v43;
  v20 = v18 + v11[5];
  *v20 = v42;
  *(v20 + 16) = v19;
  v46 = 2;
  sub_217A5E738();
  v39 = 0;
  sub_217D89B5C();
  v21 = v43;
  v22 = v18 + v11[6];
  *v22 = v42;
  *(v22 + 16) = v21;
  v46 = 3;
  sub_217B2E394();
  sub_217D89B5C();
  v23 = v43;
  v24 = v18 + v11[7];
  *v24 = v42;
  *(v24 + 16) = v23;
  v46 = 4;
  sub_217AE8974();
  sub_217D89BCC();
  v25 = *(&v42 + 1);
  v26 = (v18 + v11[8]);
  *v26 = v42;
  v26[1] = v25;
  v46 = 5;
  sub_217B2E79C();
  sub_217D89BCC();
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v18 + v11[9];
  *v30 = v42;
  *(v30 + 16) = v27;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  v46 = 6;
  sub_217B2E9F4();
  sub_217D89BCC();
  (*(v16 + 8))(v40, v41);
  v31 = *(&v42 + 1);
  v32 = (v18 + v11[10]);
  *v32 = v42;
  v32[1] = v31;
  sub_217B2FF3C(v18, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B2FFA0(v18);
}

void sub_217B2FED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B2F834();
    v7 = a3(a1, &type metadata for WebEmbedFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B2FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B2FFA0(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedFailureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B300D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217A603DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217A603DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217A603DC(0, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217A603DC(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A603DC(0, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217A603DC(0, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

void sub_217B30460()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A603DC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
    if (v1 <= 0x3F)
    {
      sub_217A603DC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
      if (v2 <= 0x3F)
      {
        sub_217A603DC(319, &qword_27CB9F9A8, sub_217B2E394, sub_217B2E3E8);
        if (v3 <= 0x3F)
        {
          sub_217A603DC(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8);
          if (v4 <= 0x3F)
          {
            sub_217A603DC(319, &qword_27CB9F9C0, sub_217B2E79C, sub_217B2E7F0);
            if (v5 <= 0x3F)
            {
              sub_217A603DC(319, &qword_27CB9F9D8, sub_217B2E9F4, sub_217B2EA48);
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

void sub_217B306D4()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD200);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FA28);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_217B307E8()
{
  result = qword_27CB9FA30;
  if (!qword_27CB9FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA30);
  }

  return result;
}

unint64_t sub_217B30840()
{
  result = qword_27CB9FA38;
  if (!qword_27CB9FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA38);
  }

  return result;
}

unint64_t sub_217B30898()
{
  result = qword_27CB9FA40;
  if (!qword_27CB9FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA40);
  }

  return result;
}

uint64_t sub_217B308EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCDA70 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDA90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCDAB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t WebEmbedFailureData.contentDomain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WebEmbedFailureData.contentDomain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WebEmbedFailureData.embedName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WebEmbedFailureData.embedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WebEmbedFailureData.errorType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WebEmbedFailureData.errorType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall WebEmbedFailureData.init(contentDomain:embedName:errorType:)(NewsAnalytics::WebEmbedFailureData *__return_ptr retstr, Swift::String contentDomain, Swift::String embedName, Swift::String errorType)
{
  retstr->contentDomain = contentDomain;
  retstr->embedName = embedName;
  retstr->errorType = errorType;
}

uint64_t sub_217B30CF8()
{
  v1 = 0x6D614E6465626D65;
  if (*v0 != 1)
  {
    v1 = 0x707954726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_217B30D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B31458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B30D90(uint64_t a1)
{
  v2 = sub_217B30FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B30DCC(uint64_t a1)
{
  v2 = sub_217B30FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedFailureData.encode(to:)(void *a1)
{
  sub_217B31294(0, &qword_27CB9FA48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B30FB8();
  sub_217D89E7C();
  v19 = 0;
  v14 = v16[5];
  sub_217D89C6C();
  if (!v14)
  {
    v18 = 1;
    sub_217D89C6C();
    v17 = 2;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B30FB8()
{
  result = qword_27CB9FA50;
  if (!qword_27CB9FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA50);
  }

  return result;
}

uint64_t WebEmbedFailureData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B31294(0, &qword_27CB9FA58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B30FB8();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_217D89B8C();
  v24 = v15;
  v26 = 2;
  v16 = sub_217D89B8C();
  v18 = v17;
  v19 = v16;
  (*(v7 + 8))(v10, v6);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B31294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B30FB8();
    v7 = a3(a1, &type metadata for WebEmbedFailureData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B31354()
{
  result = qword_27CB9FA60;
  if (!qword_27CB9FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA60);
  }

  return result;
}

unint64_t sub_217B313AC()
{
  result = qword_27CB9FA68;
  if (!qword_27CB9FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA68);
  }

  return result;
}

unint64_t sub_217B31404()
{
  result = qword_27CB9FA70;
  if (!qword_27CB9FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA70);
  }

  return result;
}

uint64_t sub_217B31458(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xED00006E69616D6FLL;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6465626D65 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t UserEventHistoryAggregateStoreData.baselineTimestamp.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineTimestamp.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineStatelessEventCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineStatelessEventCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineTotalEventCount.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t UserEventHistoryAggregateStoreData.baselineTotalEventCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

__n128 UserEventHistoryAggregateStoreData.aggregateCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 89);
  result = *(v1 + 48);
  v6 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 UserEventHistoryAggregateStoreData.aggregateCounts.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 89) = v4;
  return result;
}

__n128 UserEventHistoryAggregateStoreData.init(baselineTimestamp:baselineStatelessEventCount:baselineTotalEventCount:aggregateCounts:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a7 + 32);
  v9 = *(a7 + 40);
  v12 = *(a7 + 41);
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  result = *a7;
  v11 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v11;
  *(a8 + 80) = v8;
  *(a8 + 88) = v9;
  *(a8 + 89) = v12;
  return result;
}

unint64_t sub_217B3170C()
{
  v1 = 0x7461676572676761;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_217B317A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B320EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B317CC(uint64_t a1)
{
  v2 = sub_217B31A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B31808(uint64_t a1)
{
  v2 = sub_217B31A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventHistoryAggregateStoreData.encode(to:)(void *a1)
{
  sub_217B31DA4(0, &qword_2811BC530, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = v1[2];
  v33 = *(v1 + 24);
  v25 = v1[4];
  v26 = v11;
  v24 = *(v1 + 40);
  v12 = *(v1 + 3);
  v19 = *(v1 + 4);
  v20 = v12;
  v23 = v1[10];
  LODWORD(v11) = *(v1 + 88);
  v21 = *(v1 + 89);
  v22 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B31A7C();
  sub_217D89E7C();
  LOBYTE(v28) = 0;
  v14 = v27;
  sub_217D89C5C();
  if (!v14)
  {
    v16 = v21;
    v15 = v22;
    v17 = v23;
    LOBYTE(v28) = 1;
    sub_217D89C5C();
    LOBYTE(v28) = 2;
    sub_217D89C5C();
    v28 = v20;
    v29 = v19;
    v30 = v17;
    v31 = v15;
    v32 = v16;
    v34 = 3;
    sub_217B31AD0();
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B31A7C()
{
  result = qword_2811BDA58[0];
  if (!qword_2811BDA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BDA58);
  }

  return result;
}

unint64_t sub_217B31AD0()
{
  result = qword_2811BD4D0;
  if (!qword_2811BD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4D0);
  }

  return result;
}

uint64_t UserEventHistoryAggregateStoreData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B31DA4(0, &qword_2811BC928, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v36 = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B31A7C();
  sub_217D89E5C();
  if (!v2)
  {
    LOBYTE(v27) = 0;
    v12 = sub_217D89B7C();
    v34 = v13 & 1;
    LOBYTE(v27) = 1;
    v14 = sub_217D89B7C();
    v33 = v15 & 1;
    LOBYTE(v27) = 2;
    v26 = sub_217D89B7C();
    v32 = v16 & 1;
    v35 = 3;
    sub_217B31E08();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v36 = v31;
    v21 = v34;
    v22 = v33;
    v23 = v32;
    *a2 = v12;
    *(a2 + 8) = v21;
    *(a2 + 16) = v14;
    *(a2 + 24) = v22;
    *(a2 + 32) = v26;
    *(a2 + 40) = v23;
    v24 = v28;
    *(a2 + 48) = v27;
    *(a2 + 64) = v24;
    *(a2 + 80) = v18;
    *(a2 + 88) = v19;
    *(a2 + 89) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B31DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B31A7C();
    v7 = a3(a1, &type metadata for UserEventHistoryAggregateStoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B31E08()
{
  result = qword_2811BD4C8;
  if (!qword_2811BD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4C8);
  }

  return result;
}

unint64_t sub_217B31E60()
{
  result = qword_2811BDA38;
  if (!qword_2811BDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA38);
  }

  return result;
}

unint64_t sub_217B31EB8()
{
  result = qword_2811BDA40;
  if (!qword_2811BDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA40);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_217B31F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 90))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217B31F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 90) = v3;
  return result;
}

unint64_t sub_217B31FE8()
{
  result = qword_27CB9FA78;
  if (!qword_27CB9FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA78);
  }

  return result;
}

unint64_t sub_217B32040()
{
  result = qword_2811BDA48;
  if (!qword_2811BDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA48);
  }

  return result;
}

unint64_t sub_217B32098()
{
  result = qword_2811BDA50;
  if (!qword_2811BDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA50);
  }

  return result;
}

uint64_t sub_217B320EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DCDAD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCDAF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DCDB10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEF73746E756F4365)
  {

    return 3;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AdState.init(bannerState:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_217D88F1C();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D2D190])
  {
    (*(v5 + 96))(a1, v4);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v7 = 3;
  }

  else
  {
    if (result != *MEMORY[0x277D2D178])
    {
      if (result != *MEMORY[0x277D2D180])
      {
        if (result == *MEMORY[0x277D2D188])
        {
          v7 = 1;
          goto LABEL_10;
        }

        result = (*(v5 + 8))(a1, v4);
      }

      v7 = 0;
      goto LABEL_10;
    }

    (*(v5 + 96))(a1, v4);
    v8 = sub_217D88F0C();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v7 = 2;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

BOOL BannerAdState.instrumentationAllowed.getter()
{
  v1 = v0;
  v2 = sub_217D88F1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = v7;
  v9 = *MEMORY[0x277D2D190];
  if (v7 == *MEMORY[0x277D2D190])
  {
    (*(v3 + 96))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else if (v7 == *MEMORY[0x277D2D178])
  {
    (*(v3 + 96))(v6, v2);
    v10 = sub_217D88F0C();
    (*(*(v10 - 8) + 8))(v6, v10);
  }

  else if (v7 != *MEMORY[0x277D2D180] && v7 != *MEMORY[0x277D2D188])
  {
    (*(v3 + 8))(v6, v2);
  }

  return v8 == v9;
}

NewsAnalytics::VideoAdLoadState_optional __swiftcall VideoAdLoadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VideoAdLoadState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000012;
  v4 = 0x54676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6572676F72506E69;
  if (v1 != 1)
  {
    v5 = 0x506F547964616572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217B32700()
{
  result = qword_27CB9FA80;
  if (!qword_27CB9FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA80);
  }

  return result;
}

uint64_t sub_217B3275C()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217B32878(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000217DCABB0;
  v6 = 0xD000000000000012;
  v7 = 0xEE0074756F656D69;
  v8 = 0x54676E6964616F6CLL;
  if (v2 != 4)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007373;
  v10 = 0x6572676F72506E69;
  if (v2 != 1)
  {
    v10 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217B32A10()
{
  result = qword_27CB9FA88;
  if (!qword_27CB9FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA88);
  }

  return result;
}

NewsAnalytics::ContentModelType_optional __swiftcall ContentModelType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContentModelType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x656C7A7A7570;
  if (v1 != 5)
  {
    v3 = 0x657069636572;
  }

  v4 = 0x6575737369;
  if (v1 != 3)
  {
    v4 = 0x76457374726F7073;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C6369747261;
  if (v1 != 1)
  {
    v5 = 6775156;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217B32BA0()
{
  result = qword_27CB9FA90;
  if (!qword_27CB9FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA90);
  }

  return result;
}

uint64_t sub_217B32C00()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217B32D18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x656C7A7A7570;
  if (v2 != 5)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6575737369;
  if (v2 != 3)
  {
    v8 = 0x76457374726F7073;
    v7 = 0xEB00000000746E65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656C6369747261;
  if (v2 != 1)
  {
    v10 = 6775156;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217B32EAC()
{
  result = qword_27CB9FA98;
  if (!qword_27CB9FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FA98);
  }

  return result;
}

uint64_t WebEmbedEnvironmentData.embedLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WebEmbedEnvironmentData.embedLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217B32FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636F4C6465626D65 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B3304C(uint64_t a1)
{
  v2 = sub_217B33210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B33088(uint64_t a1)
{
  v2 = sub_217B33210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedEnvironmentData.encode(to:)(void *a1)
{
  sub_217B333E8(0, &qword_27CB9FAA0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33210();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B33210()
{
  result = qword_27CB9FAA8;
  if (!qword_27CB9FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAA8);
  }

  return result;
}

uint64_t WebEmbedEnvironmentData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B333E8(0, &qword_27CB9FAB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33210();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B333E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B33210();
    v7 = a3(a1, &type metadata for WebEmbedEnvironmentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B3346C(void *a1)
{
  sub_217B333E8(0, &qword_27CB9FAA0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33210();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B335DC()
{
  result = qword_27CB9FAB8;
  if (!qword_27CB9FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAB8);
  }

  return result;
}

unint64_t sub_217B33634()
{
  result = qword_27CB9FAC0;
  if (!qword_27CB9FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAC0);
  }

  return result;
}

unint64_t sub_217B3368C()
{
  result = qword_27CB9FAC8;
  if (!qword_27CB9FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAC8);
  }

  return result;
}

uint64_t ContentModelData.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ContentModelData.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_217B337B8()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_217B337F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217B338D4(uint64_t a1)
{
  v2 = sub_217B33ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B33910(uint64_t a1)
{
  v2 = sub_217B33ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentModelData.encode(to:)(void *a1)
{
  sub_217B33D54(0, &qword_27CB9FAD0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33ADC();
  sub_217D89E7C();
  v17 = v10;
  v16 = 0;
  sub_217B33B30();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C6C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B33ADC()
{
  result = qword_27CB9FAD8;
  if (!qword_27CB9FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAD8);
  }

  return result;
}

unint64_t sub_217B33B30()
{
  result = qword_27CB9FAE0;
  if (!qword_27CB9FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAE0);
  }

  return result;
}

uint64_t ContentModelData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B33D54(0, &qword_27CB9FAE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B33ADC();
  sub_217D89E5C();
  if (!v2)
  {
    v19 = 0;
    sub_217B33DB8();
    sub_217D89BCC();
    v12 = v20;
    v18 = 1;
    v14 = sub_217D89B8C();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B33D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B33ADC();
    v7 = a3(a1, &type metadata for ContentModelData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B33DB8()
{
  result = qword_27CB9FAF0;
  if (!qword_27CB9FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAF0);
  }

  return result;
}

uint64_t sub_217B33E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217B33E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B33EF0()
{
  result = qword_27CB9FAF8;
  if (!qword_27CB9FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FAF8);
  }

  return result;
}

unint64_t sub_217B33F48()
{
  result = qword_27CB9FB00;
  if (!qword_27CB9FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB00);
  }

  return result;
}

unint64_t sub_217B33FA0()
{
  result = qword_27CB9FB08;
  if (!qword_27CB9FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB08);
  }

  return result;
}

unint64_t sub_217B34080()
{
  if (*v0)
  {
    result = 0x5374786554646E65;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_217B340C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DCDB30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5374786554646E65 && a2 == 0xEB00000000657A69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217B341B4(uint64_t a1)
{
  v2 = sub_217B343D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B341F0(uint64_t a1)
{
  v2 = sub_217B343D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleTextSizeData.encode(to:)(void *a1)
{
  sub_217B34664(0, &qword_2811BC690, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B343D8();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217B3442C();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217A67A74();
    sub_217D89C3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B343D8()
{
  result = qword_2811C2AB0[0];
  if (!qword_2811C2AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2AB0);
  }

  return result;
}

unint64_t sub_217B3442C()
{
  result = qword_2811C2DD0;
  if (!qword_2811C2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DD0);
  }

  return result;
}

uint64_t ArticleTextSizeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B34664(0, &qword_2811BCA00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B343D8();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217B346C8();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217B3471C();
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B34664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B343D8();
    v7 = a3(a1, &type metadata for ArticleTextSizeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B346C8()
{
  result = qword_2811C2DC0;
  if (!qword_2811C2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DC0);
  }

  return result;
}

unint64_t sub_217B3471C()
{
  result = qword_2811BD278;
  if (!qword_2811BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD278);
  }

  return result;
}

unint64_t sub_217B34774()
{
  result = qword_2811C2A90;
  if (!qword_2811C2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A90);
  }

  return result;
}

unint64_t sub_217B347CC()
{
  result = qword_2811C2A98;
  if (!qword_2811C2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaywallData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PaywallData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B349B8()
{
  result = qword_27CB9FB10;
  if (!qword_27CB9FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB10);
  }

  return result;
}

unint64_t sub_217B34A10()
{
  result = qword_2811C2AA0;
  if (!qword_2811C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2AA0);
  }

  return result;
}

unint64_t sub_217B34A68()
{
  result = qword_2811C2AA8;
  if (!qword_2811C2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2AA8);
  }

  return result;
}

NewsAnalytics::OriginationType_optional __swiftcall OriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OriginationType.rawValue.getter()
{
  if (*v0)
  {
    result = 1937204590;
  }

  else
  {
    result = 0x697261666173;
  }

  *v0;
  return result;
}

uint64_t sub_217B34B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1937204590;
  }

  else
  {
    v4 = 0x697261666173;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1937204590;
  }

  else
  {
    v6 = 0x697261666173;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217B34BF0()
{
  result = qword_27CB9FB18;
  if (!qword_27CB9FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB18);
  }

  return result;
}

uint64_t sub_217B34C44()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B34CBC()
{
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B34D20()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B34D94@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217D89B0C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_217B34DF4(uint64_t *a1@<X8>)
{
  v2 = 1937204590;
  if (!*v1)
  {
    v2 = 0x697261666173;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_217B34EE8()
{
  result = qword_27CB9FB20;
  if (!qword_27CB9FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB20);
  }

  return result;
}

uint64_t sub_217B34F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B35020(uint64_t a1)
{
  v2 = sub_217B351F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3505C(uint64_t a1)
{
  v2 = sub_217B351F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationStatusData.encode(to:)(void *a1)
{
  sub_217B35434(0, &qword_27CB9FB28, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B351F4();
  sub_217D89E7C();
  v13 = v9;
  sub_217B35248();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B351F4()
{
  result = qword_27CB9FB30;
  if (!qword_27CB9FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB30);
  }

  return result;
}

unint64_t sub_217B35248()
{
  result = qword_27CB9FB38;
  if (!qword_27CB9FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB38);
  }

  return result;
}

uint64_t NotificationStatusData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B35434(0, &qword_27CB9FB40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B351F4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B35498();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B35434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B351F4();
    v7 = a3(a1, &type metadata for NotificationStatusData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B35498()
{
  result = qword_27CB9FB48;
  if (!qword_27CB9FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB48);
  }

  return result;
}

unint64_t sub_217B354F0()
{
  result = qword_27CB9FB50;
  if (!qword_27CB9FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB50);
  }

  return result;
}

unint64_t sub_217B35548()
{
  result = qword_27CB9FB58;
  if (!qword_27CB9FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB58);
  }

  return result;
}

unint64_t sub_217B355F0()
{
  result = qword_27CB9FB60;
  if (!qword_27CB9FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB60);
  }

  return result;
}

unint64_t sub_217B35648()
{
  result = qword_27CB9FB68;
  if (!qword_27CB9FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB68);
  }

  return result;
}

unint64_t sub_217B356A0()
{
  result = qword_27CB9FB70;
  if (!qword_27CB9FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB70);
  }

  return result;
}

unint64_t sub_217B35780()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_217B357BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DCDB50 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCDB70 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217B358A0(uint64_t a1)
{
  v2 = sub_217B35AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B358DC(uint64_t a1)
{
  v2 = sub_217B35AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrientationData.encode(to:)(void *a1)
{
  sub_217B35DA4(0, &qword_2811BC750, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B35AC4();
  sub_217D89E7C();
  v18 = v10;
  v17 = 0;
  sub_217B35B18();
  sub_217D89CAC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217B35B6C();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B35AC4()
{
  result = qword_2811C65D8;
  if (!qword_2811C65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65D8);
  }

  return result;
}

unint64_t sub_217B35B18()
{
  result = qword_2811C4680[0];
  if (!qword_2811C4680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4680);
  }

  return result;
}

unint64_t sub_217B35B6C()
{
  result = qword_2811C1F20[0];
  if (!qword_2811C1F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C1F20);
  }

  return result;
}

uint64_t OrientationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B35DA4(0, &qword_2811BCAA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B35AC4();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    sub_217B35E08();
    sub_217D89BCC();
    v12 = v19;
    v16 = 1;
    sub_217B35E5C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B35DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B35AC4();
    v7 = a3(a1, &type metadata for OrientationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B35E08()
{
  result = qword_2811C4670;
  if (!qword_2811C4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4670);
  }

  return result;
}

unint64_t sub_217B35E5C()
{
  result = qword_2811C1F10;
  if (!qword_2811C1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1F10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrientationData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrientationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217B36048()
{
  result = qword_27CB9FB78;
  if (!qword_27CB9FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB78);
  }

  return result;
}

unint64_t sub_217B360A0()
{
  result = qword_2811C65C8;
  if (!qword_2811C65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65C8);
  }

  return result;
}

unint64_t sub_217B360F8()
{
  result = qword_2811C65D0;
  if (!qword_2811C65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65D0);
  }

  return result;
}

uint64_t ExperimentationData.experimentID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExperimentationData.experimentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExperimentationData.variant.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ExperimentationData.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsAnalytics::ExperimentationData __swiftcall ExperimentationData.init(experimentID:variant:)(Swift::String experimentID, Swift::String variant)
{
  *v2 = experimentID;
  v2[1] = variant;
  result.variant = variant;
  result.experimentID = experimentID;
  return result;
}

uint64_t sub_217B36270()
{
  if (*v0)
  {
    result = 0x746E6169726176;
  }

  else
  {
    result = 0x656D697265707865;
  }

  *v0;
  return result;
}

uint64_t sub_217B362B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D697265707865 && a2 == 0xEC0000004449746ELL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217B36394(uint64_t a1)
{
  v2 = sub_217B3658C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B363D0(uint64_t a1)
{
  v2 = sub_217B3658C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExperimentationData.encode(to:)(void *a1)
{
  sub_217B367F0(0, &qword_27CB9FB80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3658C();
  sub_217D89E7C();
  v17 = 0;
  v13 = v15[3];
  sub_217D89C6C();
  if (!v13)
  {
    v16 = 1;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B3658C()
{
  result = qword_27CB9FB88;
  if (!qword_27CB9FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB88);
  }

  return result;
}

uint64_t ExperimentationData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217B367F0(0, &qword_27CB9FB90, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3658C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_217D89B8C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B367F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3658C();
    v7 = a3(a1, &type metadata for ExperimentationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B36858()
{
  result = qword_2811C2A70;
  if (!qword_2811C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A70);
  }

  return result;
}

unint64_t sub_217B368B0()
{
  result = qword_2811C2A78;
  if (!qword_2811C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2A78);
  }

  return result;
}

unint64_t sub_217B36958()
{
  result = qword_27CB9FB98;
  if (!qword_27CB9FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FB98);
  }

  return result;
}

unint64_t sub_217B369B0()
{
  result = qword_27CB9FBA0;
  if (!qword_27CB9FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBA0);
  }

  return result;
}

unint64_t sub_217B36A08()
{
  result = qword_27CB9FBA8;
  if (!qword_27CB9FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBA8);
  }

  return result;
}

uint64_t sub_217B36AA8(uint64_t a1)
{
  v2 = sub_217B36C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B36AE4(uint64_t a1)
{
  v2 = sub_217B36C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdPlacementData.encode(to:)(void *a1)
{
  sub_217B36EBC(0, &qword_27CB9FBB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B36C7C();
  sub_217D89E7C();
  v13 = v9;
  sub_217B36CD0();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B36C7C()
{
  result = qword_27CB9FBB8;
  if (!qword_27CB9FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBB8);
  }

  return result;
}

unint64_t sub_217B36CD0()
{
  result = qword_27CB9FBC0;
  if (!qword_27CB9FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBC0);
  }

  return result;
}

uint64_t BannerAdPlacementData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B36EBC(0, &qword_27CB9FBC8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B36C7C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B36F20();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B36EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B36C7C();
    v7 = a3(a1, &type metadata for BannerAdPlacementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B36F20()
{
  result = qword_27CB9FBD0;
  if (!qword_27CB9FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBD0);
  }

  return result;
}

unint64_t sub_217B36F78()
{
  result = qword_27CB9FBD8;
  if (!qword_27CB9FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBD8);
  }

  return result;
}

unint64_t sub_217B36FD0()
{
  result = qword_27CB9FBE0;
  if (!qword_27CB9FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBE0);
  }

  return result;
}

unint64_t sub_217B37078()
{
  result = qword_27CB9FBE8;
  if (!qword_27CB9FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBE8);
  }

  return result;
}

unint64_t sub_217B370D0()
{
  result = qword_27CB9FBF0;
  if (!qword_27CB9FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBF0);
  }

  return result;
}

unint64_t sub_217B37128()
{
  result = qword_27CB9FBF8;
  if (!qword_27CB9FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FBF8);
  }

  return result;
}

NewsAnalytics::IssueViewContext_optional __swiftcall IssueViewContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IssueViewContext.rawValue.getter()
{
  v1 = 0x6572676761736964;
  if (*v0 != 1)
  {
    v1 = 0x6575737369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217B3723C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676761736964;
  v4 = 0xED00006465746167;
  if (v2 != 1)
  {
    v3 = 0x6575737369;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6572676761736964;
  v8 = 0xED00006465746167;
  if (*a2 != 1)
  {
    v7 = 0x6575737369;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B37354()
{
  result = qword_27CB9FC00;
  if (!qword_27CB9FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC00);
  }

  return result;
}

uint64_t sub_217B373A8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B37454()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B374EC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B375A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED00006465746167;
  v5 = 0x6572676761736964;
  if (v2 != 1)
  {
    v5 = 0x6575737369;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B376C8()
{
  result = qword_2811C5200;
  if (!qword_2811C5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5200);
  }

  return result;
}

uint64_t sub_217B377E4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FC38);
  __swift_project_value_buffer(v0, qword_27CB9FC38);
  return sub_217D8866C();
}

uint64_t NotificationSubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationSubscribeEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 20);
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 24);
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 28);
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.notificationSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B37EF8()
{
  result = qword_2811BEE48;
  if (!qword_2811BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE48);
  }

  return result;
}

unint64_t sub_217B37F4C()
{
  result = qword_2811BEE50[0];
  if (!qword_2811BEE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEE50);
  }

  return result;
}

uint64_t NotificationSubscribeEvent.notificationSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 32);
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 36);
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B38300(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t NotificationSubscribeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscribeEvent(0) + 40);
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationSubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t NotificationSubscribeEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NotificationSubscribeEvent.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t NotificationSubscribeEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_217B1563C(v4, v5);
}

uint64_t NotificationSubscribeEvent.Model.notificationSubscribedData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NotificationSubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NotificationSubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationSubscribeEvent.Model(0) + 36));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t NotificationSubscribeEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NotificationSubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 NotificationSubscribeEvent.Model.init(eventData:tagData:channelData:campaignData:notificationSubscribedData:userBundleSubscriptionContextData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a3 + 4);
  v16 = *(a4 + 4);
  v17 = *(a4 + 5);
  v30 = *a5;
  v31 = *a7;
  v18 = sub_217D8899C();
  v28 = a4[1];
  v29 = *a4;
  v26 = a3[1];
  v27 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v13;
  v20[1] = v14;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v26;
  *(v21 + 32) = v15;
  v22 = a8 + v19[7];
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  *(a8 + v19[8]) = v30;
  v23 = a8 + v19[9];
  v24 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v24;
  result = *(a6 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v31;
  return result;
}

uint64_t sub_217B38B14()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x61746144676174;
    if (v1 != 1)
    {
      v5 = 0x446C656E6E616863;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x746144746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD00000000000001ALL;
    if (v1 == 3)
    {
      v3 = 0x6E676961706D6163;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217B38C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B3A1A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B38C38(uint64_t a1)
{
  v2 = sub_217B39108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B38C74(uint64_t a1)
{
  v2 = sub_217B39108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B3976C(0, &qword_27CB9FC50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B39108();
  sub_217D89E7C();
  LOBYTE(v40) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for NotificationSubscribeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v40 = *v13;
    *(&v40 + 1) = v14;
    LOBYTE(v36) = 1;
    sub_217AF6B14();

    sub_217D89C3C();

    v15 = (v3 + v12[6]);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    *&v40 = *v15;
    *(&v40 + 1) = v16;
    *&v41 = v17;
    *(&v41 + 1) = v18;
    *&v42 = v19;
    LOBYTE(v36) = 2;
    sub_217AD86BC(v40, v16);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v40, *(&v40 + 1));
    v20 = (v3 + v12[7]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[5];
    *&v40 = *v20;
    *(&v40 + 1) = v21;
    *&v41 = v22;
    *(&v41 + 1) = v23;
    *&v42 = v24;
    *(&v42 + 1) = v25;
    LOBYTE(v36) = 3;
    sub_217B1563C(v40, v21);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v40, *(&v40 + 1));
    v45 = *(v3 + v12[8]);
    v44 = 4;
    sub_217B37F4C();
    sub_217D89CAC();
    v26 = (v3 + v12[9]);
    v27 = v26[1];
    v40 = *v26;
    v41 = v27;
    v29 = *v26;
    v28 = v26[1];
    v42 = v26[2];
    v43 = *(v26 + 48);
    v36 = v29;
    v37 = v28;
    v38 = v26[2];
    v39 = *(v26 + 48);
    v35 = 5;
    sub_217ACC004(&v40, v33);
    sub_217A55B98();
    sub_217D89CAC();
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v34 = v39;
    sub_217ACC69C(v33);
    v32 = *(v3 + v12[10]);
    v31[11] = 6;
    sub_217ACFB8C();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B39108()
{
  result = qword_27CB9FC58;
  if (!qword_27CB9FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC58);
  }

  return result;
}

uint64_t NotificationSubscribeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B3976C(0, &qword_27CB9FC60, MEMORY[0x277D844C8]);
  v30 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B39108();
  v31 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  LOBYTE(v32) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v29;
  sub_217D89BCC();
  (*(v27 + 32))(v14, v17, v4);
  LOBYTE(v36) = 1;
  sub_217AF6AC0();
  sub_217D89B5C();
  v29 = 0;
  *&v14[v11[5]] = v32;
  LOBYTE(v36) = 2;
  sub_217AD07F8();
  sub_217D89B5C();
  v18 = v34;
  v19 = &v14[v11[6]];
  v20 = v33;
  *v19 = v32;
  *(v19 + 1) = v20;
  *(v19 + 4) = v18;
  LOBYTE(v36) = 3;
  sub_217A66A84();
  sub_217D89B5C();
  v21 = &v14[v11[7]];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  LOBYTE(v36) = 4;
  sub_217B37EF8();
  sub_217D89BCC();
  *&v14[v11[8]] = v32;
  v38 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v23 = &v14[v11[9]];
  v24 = v33;
  *v23 = v32;
  *(v23 + 1) = v24;
  *(v23 + 2) = v34;
  v23[48] = v35;
  v37 = 6;
  sub_217ACFB38();
  sub_217D89B5C();
  (*(v16 + 8))(v31, v30);
  *&v14[v11[10]] = v36;
  sub_217B397D0(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B39834(v14);
}

void sub_217B3976C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B39108();
    v7 = a3(a1, &type metadata for NotificationSubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B397D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B39834(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B39968@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217B38300(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217B38300(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217B38300(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217B38300(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217B38300(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217B38300(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v7, v18);
}

void sub_217B39CF4()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B38300(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
    if (v1 <= 0x3F)
    {
      sub_217B38300(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217B38300(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
        if (v3 <= 0x3F)
        {
          sub_217B38300(319, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C);
          if (v4 <= 0x3F)
          {
            sub_217B38300(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
            if (v5 <= 0x3F)
            {
              sub_217B38300(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
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

void sub_217B39F68()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD360);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7A98);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C01C8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B3A0A0()
{
  result = qword_27CB9FC68;
  if (!qword_27CB9FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC68);
  }

  return result;
}

unint64_t sub_217B3A0F8()
{
  result = qword_27CB9FC70;
  if (!qword_27CB9FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC70);
  }

  return result;
}

unint64_t sub_217B3A150()
{
  result = qword_27CB9FC78;
  if (!qword_27CB9FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC78);
  }

  return result;
}

uint64_t sub_217B3A1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCDB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

NewsAnalytics::TrackVariant_optional __swiftcall TrackVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TrackVariant.rawValue.getter()
{
  v1 = 0x656C706D6173;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217B3A4B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C706D6173;
  if (v2 != 1)
  {
    v4 = 1819047270;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C706D6173;
  if (*a2 != 1)
  {
    v8 = 1819047270;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217B3A5A0()
{
  result = qword_27CB9FC80;
  if (!qword_27CB9FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC80);
  }

  return result;
}

uint64_t sub_217B3A5F4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217B3A68C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217B3A710()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217B3A7B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C706D6173;
  if (v2 != 1)
  {
    v5 = 1819047270;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217B3A8C4()
{
  result = qword_27CB9FC88;
  if (!qword_27CB9FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FC88);
  }

  return result;
}

uint64_t sub_217B3A9E0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FCC0);
  __swift_project_value_buffer(v0, qword_27CB9FCC0);
  return sub_217D8866C();
}

uint64_t IgnoreTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IgnoreTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 20);
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 20);
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 24);
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 24);
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 28);
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IgnoreTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IgnoreTagEvent(0) + 28);
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IgnoreTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IgnoreTagEvent(0);
  v5 = v4[5];
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t IgnoreTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreTagEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t IgnoreTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IgnoreTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IgnoreTagEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 IgnoreTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 8);
  v13 = sub_217D8899C();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for IgnoreTagEvent.Model(0);
  v15 = a5 + v14[5];
  v16 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v16;
  result = *(a2 + 32);
  *(v15 + 32) = result;
  *(v15 + 48) = *(a2 + 48);
  v18 = (a5 + v14[6]);
  *v18 = v8;
  v18[1] = v9;
  v19 = a5 + v14[7];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  return result;
}

unint64_t sub_217B3B434()
{
  v1 = 0x746144746E657665;
  v2 = 0x61746144676174;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_217B3B4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B3C4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B3B4E0(uint64_t a1)
{
  v2 = sub_217B3B8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3B51C(uint64_t a1)
{
  v2 = sub_217B3B8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IgnoreTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B3BD8C(0, &qword_27CB9FCD8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3B8A4();
  sub_217D89E7C();
  v39 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for IgnoreTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v36 = v13[1];
    v37 = v14;
    v35 = v15;
    v38 = *(v13 + 48);
    v31 = v16;
    v32 = v36;
    v33 = v13[2];
    v34 = *(v13 + 48);
    v30 = 1;
    sub_217ACC004(&v35, v28);
    sub_217A55B98();
    sub_217D89CAC();
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v29 = v34;
    sub_217ACC69C(v28);
    v17 = (v3 + v12[6]);
    v18 = v17[1];
    v24 = *v17;
    v25 = v18;
    v27 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v24 = v20;
    v25 = v21;
    v26 = v19;
    v27 = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B3B8A4()
{
  result = qword_27CB9FCE0;
  if (!qword_27CB9FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FCE0);
  }

  return result;
}

uint64_t IgnoreTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B3BD8C(0, &qword_27CB9FCE8, MEMORY[0x277D844C8]);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for IgnoreTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3B8A4();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  LOBYTE(v36) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v29;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v41 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v18 = &v14[v11[5]];
  v19 = v37;
  *v18 = v36;
  *(v18 + 1) = v19;
  *(v18 + 2) = v38;
  v18[48] = v39;
  v40 = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v20 = v34;
  v21 = &v14[v11[6]];
  *v21 = v33;
  *(v21 + 1) = v20;
  v40 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v30 + 8))(v32, v31);
  v22 = v34;
  v23 = v35;
  v24 = &v14[v11[7]];
  *v24 = v33;
  *(v24 + 1) = v22;
  *(v24 + 8) = v23;
  sub_217B3BDF0(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217B3BE54(v14);
}

void sub_217B3BD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3B8A4();
    v7 = a3(a1, &type metadata for IgnoreTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B3BDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B3BE54(uint64_t a1)
{
  v2 = type metadata accessor for IgnoreTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B3BF88@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62904(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62904(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62904(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217B3C198()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A62904(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
    if (v1 <= 0x3F)
    {
      sub_217A62904(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
      if (v2 <= 0x3F)
      {
        sub_217A62904(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217B3C31C()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217B3C3B8()
{
  result = qword_27CB9FCF0;
  if (!qword_27CB9FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FCF0);
  }

  return result;
}

unint64_t sub_217B3C410()
{
  result = qword_27CB9FCF8;
  if (!qword_27CB9FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FCF8);
  }

  return result;
}

unint64_t sub_217B3C468()
{
  result = qword_27CB9FD00;
  if (!qword_27CB9FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD00);
  }

  return result;
}

uint64_t sub_217B3C4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217B3C630()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811BFEA8);
  v1 = __swift_project_value_buffer(v0, qword_2811BFEA8);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217B3C71C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CB9FD08);
  v1 = __swift_project_value_buffer(v0, qword_27CB9FD08);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217B3C7DC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FD20);
  __swift_project_value_buffer(v0, qword_27CB9FD20);
  return sub_217D8866C();
}

uint64_t NativeAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NativeAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NativeAdImpressionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 20);
  sub_217A6018C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 28);
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 28);
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 32);
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B3CE30()
{
  result = qword_2811C6968;
  if (!qword_2811C6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6968);
  }

  return result;
}

unint64_t sub_217B3CE84()
{
  result = qword_2811C6970;
  if (!qword_2811C6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6970);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 32);
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 36);
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217B3D088()
{
  result = qword_2811C7110;
  if (!qword_2811C7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7110);
  }

  return result;
}

unint64_t sub_217B3D0DC()
{
  result = qword_2811C7118;
  if (!qword_2811C7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7118);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 36);
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 40);
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NativeAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 40);
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 44);
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B3D490(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_217B3D50C()
{
  result = qword_2811C7E10;
  if (!qword_2811C7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E10);
  }

  return result;
}

unint64_t sub_217B3D560()
{
  result = qword_2811C7E18;
  if (!qword_2811C7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E18);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NativeAdImpressionEvent(0) + 44);
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NativeAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NativeAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A6018C();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A608E0();
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v17 - 8) + 104))(a1 + v16, v14, v17);
  v18 = v4[11];
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v14, v19);
}

uint64_t NativeAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217B3DA8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_217B3DB64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NativeAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t NativeAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NativeAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NativeAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NativeAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NativeAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NativeAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 NativeAdImpressionEvent.Model.init(adUserData:eventData:timedData:userBundleSubscriptionContextData:adPlacementData:adPositionData:adFeedData:adGroupData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, int *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  v13 = a1[1];
  v15 = *a5;
  v14 = a5[1];
  v16 = *a6;
  v17 = *(a6 + 4);
  v28 = *a7;
  v29 = *a8;
  *a9 = *a1;
  *(a9 + 1) = v13;
  v18 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v19 = v18[5];
  v20 = sub_217D8899C();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  v21 = v18[6];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(&a9[v21], a3, v22);
  v23 = &a9[v18[7]];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 1) = v24;
  result = *(a4 + 32);
  *(v23 + 2) = result;
  v23[48] = *(a4 + 48);
  v26 = &a9[v18[8]];
  *v26 = v15;
  *(v26 + 1) = v14;
  v27 = &a9[v18[9]];
  *v27 = v16;
  v27[4] = v17;
  a9[v18[10]] = v28;
  a9[v18[11]] = v29;
  return result;
}

uint64_t sub_217B3DE98()
{
  v1 = *v0;
  v2 = 0x6144726573556461;
  v3 = 0x6144646565466461;
  if (v1 != 6)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x6D6563616C506461;
  if (v1 != 4)
  {
    v4 = 0x697469736F506461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 2)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217B3DFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B3F720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B3DFE8(uint64_t a1)
{
  v2 = sub_217B3E52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3E024(uint64_t a1)
{
  v2 = sub_217B3E52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NativeAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B3EC98(0, &qword_27CB9FD38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3E52C();
  sub_217D89E7C();
  v12 = v3[1];
  *&v36[0] = *v3;
  *(&v36[0] + 1) = v12;
  LOBYTE(v32) = 0;
  sub_217A586D4();

  sub_217D89CAC();

  if (!v2)
  {
    v13 = type metadata accessor for NativeAdImpressionEvent.Model(0);
    v14 = v13[5];
    LOBYTE(v36[0]) = 1;
    sub_217D8899C();
    sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
    sub_217D89CAC();
    v15 = v13[6];
    v38 = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v16 = v3 + v13[7];
    v17 = *(v16 + 1);
    v36[0] = *v16;
    v36[1] = v17;
    v19 = *v16;
    v18 = *(v16 + 1);
    v36[2] = *(v16 + 2);
    v37 = v16[48];
    v32 = v19;
    v33 = v18;
    v34 = *(v16 + 2);
    v35 = v16[48];
    v31 = 3;
    sub_217ACC004(v36, v29);
    sub_217A55B98();
    sub_217D89CAC();
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v30 = v35;
    sub_217ACC69C(v29);
    v20 = (v3 + v13[8]);
    v21 = v20[1];
    v27 = *v20;
    v28 = v21;
    v26 = 4;
    sub_217B3CE84();

    sub_217D89CAC();

    v22 = v3 + v13[9];
    v23 = *v22;
    LOBYTE(v22) = v22[4];
    LODWORD(v27) = v23;
    BYTE4(v27) = v22;
    v26 = 5;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v27) = *(v3 + v13[10]);
    v26 = 6;
    sub_217A5BFF4();
    sub_217D89C3C();
    LOBYTE(v27) = *(v3 + v13[11]);
    v26 = 7;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217B3E52C()
{
  result = qword_27CB9FD40;
  if (!qword_27CB9FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD40);
  }

  return result;
}

uint64_t NativeAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D8899C();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B3EC98(0, &qword_27CB9FD48, MEMORY[0x277D844C8]);
  v42 = v12;
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_217B3E52C();
  v43 = v15;
  v22 = v44;
  sub_217D89E5C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v36 = v7;
  v23 = v41;
  v44 = v8;
  LOBYTE(v46) = 0;
  sub_217A5867C();
  sub_217D89BCC();
  v24 = *(&v48 + 1);
  *v19 = v48;
  *(v19 + 1) = v24;
  LOBYTE(v48) = 1;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v25 = v44;
  sub_217D89BCC();
  (*(v23 + 32))(&v19[v16[5]], v11, v25);
  LOBYTE(v48) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v26 = v36;
  v27 = v38;
  sub_217D89BCC();
  (*(v39 + 32))(&v19[v16[6]], v26, v27);
  v53 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v28 = v40;
  v29 = &v19[v16[7]];
  v30 = v49;
  *v29 = v48;
  *(v29 + 1) = v30;
  *(v29 + 2) = v50;
  v29[48] = v51;
  v52 = 4;
  sub_217B3CE30();
  sub_217D89BCC();
  v31 = v47;
  v32 = &v19[v16[8]];
  *v32 = v46;
  *(v32 + 1) = v31;
  v52 = 5;
  sub_217B3D088();
  sub_217D89B5C();
  v33 = BYTE4(v46);
  v34 = &v19[v16[9]];
  *v34 = v46;
  v34[4] = v33;
  v52 = 6;
  sub_217A5BD70();
  sub_217D89B5C();
  v19[v16[10]] = v46;
  v52 = 7;
  sub_217B3D50C();
  sub_217D89B5C();
  (*(v28 + 8))(v43, v42);
  v19[v16[11]] = v46;
  sub_217B3ECFC(v19, v37);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_217B3ED60(v19);
}

void sub_217B3EC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3E52C();
    v7 = a3(a1, &type metadata for NativeAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B3ECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B3ED60(uint64_t a1)
{
  v2 = type metadata accessor for NativeAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B3EE94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217B3D490(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A6018C();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A608E0();
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217B3D490(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217B3D490(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217B3D490(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217B3D490(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  (*(*(v18 - 8) + 104))(a2 + v17, v15, v18);
  v19 = a1[11];
  sub_217B3D490(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v15, v20);
}

void sub_217B3F258()
{
  sub_217B3D490(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  if (v0 <= 0x3F)
  {
    sub_217A6018C();
    if (v1 <= 0x3F)
    {
      sub_217A608E0();
      if (v2 <= 0x3F)
      {
        sub_217B3D490(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217B3D490(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
          if (v4 <= 0x3F)
          {
            sub_217B3D490(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC);
            if (v5 <= 0x3F)
            {
              sub_217B3D490(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
              if (v6 <= 0x3F)
              {
                sub_217B3D490(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560);
                if (v7 <= 0x3F)
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

void sub_217B3F4E4()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CB9FD60);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD68);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD70);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217B3F61C()
{
  result = qword_27CB9FD78;
  if (!qword_27CB9FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD78);
  }

  return result;
}

unint64_t sub_217B3F674()
{
  result = qword_27CB9FD80;
  if (!qword_27CB9FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD80);
  }

  return result;
}

unint64_t sub_217B3F6CC()
{
  result = qword_27CB9FD88;
  if (!qword_27CB9FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD88);
  }

  return result;
}

uint64_t sub_217B3F720(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_217B3FA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xEC000000646F6874)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217B3FAE0(uint64_t a1)
{
  v2 = sub_217B3FCB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B3FB1C(uint64_t a1)
{
  v2 = sub_217B3FCB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionData.encode(to:)(void *a1)
{
  sub_217B3FEF4(0, &qword_27CB9FD90, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3FCB4();
  sub_217D89E7C();
  v13 = v9;
  sub_217B3FD08();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B3FCB4()
{
  result = qword_27CB9FD98;
  if (!qword_27CB9FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FD98);
  }

  return result;
}

unint64_t sub_217B3FD08()
{
  result = qword_27CB9FDA0;
  if (!qword_27CB9FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDA0);
  }

  return result;
}

uint64_t ActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B3FEF4(0, &qword_27CB9FDA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B3FCB4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B3FF58();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B3FEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B3FCB4();
    v7 = a3(a1, &type metadata for ActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B3FF58()
{
  result = qword_27CB9FDB0;
  if (!qword_27CB9FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDB0);
  }

  return result;
}

unint64_t sub_217B40008()
{
  result = qword_27CB9FDB8;
  if (!qword_27CB9FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDB8);
  }

  return result;
}

unint64_t sub_217B40060()
{
  result = qword_27CB9FDC0;
  if (!qword_27CB9FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDC0);
  }

  return result;
}

unint64_t sub_217B400B8()
{
  result = qword_27CB9FDC8;
  if (!qword_27CB9FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDC8);
  }

  return result;
}

uint64_t sub_217B40158(uint64_t a1)
{
  v2 = sub_217B4032C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B40194(uint64_t a1)
{
  v2 = sub_217B4032C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailShareResultData.encode(to:)(void *a1)
{
  sub_217B4056C(0, &qword_27CB9FDD0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4032C();
  sub_217D89E7C();
  v13 = v9;
  sub_217B40380();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217B4032C()
{
  result = qword_27CB9FDD8;
  if (!qword_27CB9FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDD8);
  }

  return result;
}

unint64_t sub_217B40380()
{
  result = qword_27CB9FDE0;
  if (!qword_27CB9FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDE0);
  }

  return result;
}

uint64_t EmailShareResultData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217B4056C(0, &qword_27CB9FDE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B4032C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B405D0();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B4056C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B4032C();
    v7 = a3(a1, &type metadata for EmailShareResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B405D0()
{
  result = qword_27CB9FDF0;
  if (!qword_27CB9FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDF0);
  }

  return result;
}

unint64_t sub_217B40628()
{
  result = qword_27CB9FDF8;
  if (!qword_27CB9FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FDF8);
  }

  return result;
}

unint64_t sub_217B40680()
{
  result = qword_27CB9FE00;
  if (!qword_27CB9FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE00);
  }

  return result;
}

unint64_t sub_217B40728()
{
  result = qword_27CB9FE08;
  if (!qword_27CB9FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE08);
  }

  return result;
}

unint64_t sub_217B40780()
{
  result = qword_27CB9FE10;
  if (!qword_27CB9FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE10);
  }

  return result;
}

unint64_t sub_217B407D8()
{
  result = qword_27CB9FE18;
  if (!qword_27CB9FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FE18);
  }

  return result;
}

id sub_217B4085C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_217B40A58()
{
  result = qword_27CB9FEA0;
  if (!qword_27CB9FEA0)
  {
    sub_217D88AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FEA0);
  }

  return result;
}

uint64_t GalleryData.galleryID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GalleryData.galleryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *GalleryData.init(galleryType:galleryID:galleryImageCount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_217B40BBC()
{
  v1 = 0x497972656C6C6167;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x547972656C6C6167;
  }
}

uint64_t sub_217B40C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B4141C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B40C50(uint64_t a1)
{
  v2 = sub_217B40E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B40C8C(uint64_t a1)
{
  v2 = sub_217B40E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GalleryData.encode(to:)(void *a1)
{
  sub_217B41164(0, &qword_2811BC850, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v15 = *(v1 + 6);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B40E84();
  sub_217D89E7C();
  v19 = v10;
  v18 = 0;
  sub_217B40ED8();
  sub_217D89CAC();
  if (!v2)
  {
    v17 = 1;
    sub_217D89C6C();
    v16 = 2;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217B40E84()
{
  result = qword_2811C7D58;
  if (!qword_2811C7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D58);
  }

  return result;
}

unint64_t sub_217B40ED8()
{
  result = qword_2811C7D30;
  if (!qword_2811C7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D30);
  }

  return result;
}

uint64_t GalleryData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217B41164(0, &qword_27CB9FEA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B40E84();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_217B411C8();
  sub_217D89BCC();
  v12 = v23;
  v21 = 1;
  v13 = sub_217D89B8C();
  v15 = v14;
  v19 = v13;
  v20 = 2;
  v16 = sub_217D89BDC();
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217B41164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B40E84();
    v7 = a3(a1, &type metadata for GalleryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217B411C8()
{
  result = qword_27CB9FEB0;
  if (!qword_27CB9FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FEB0);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_217B41268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217B412B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217B41318()
{
  result = qword_27CB9FEB8;
  if (!qword_27CB9FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FEB8);
  }

  return result;
}

unint64_t sub_217B41370()
{
  result = qword_2811C7D48;
  if (!qword_2811C7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D48);
  }

  return result;
}

unint64_t sub_217B413C8()
{
  result = qword_2811C7D50;
  if (!qword_2811C7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D50);
  }

  return result;
}

uint64_t sub_217B4141C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972656C6C6167 && a2 == 0xEB00000000657079;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x497972656C6C6167 && a2 == 0xE900000000000044 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCDD40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217B41610()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9FEF0);
  __swift_project_value_buffer(v0, qword_27CB9FEF0);
  return sub_217D8866C();
}

uint64_t ArticleUnsaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleUnsaveEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 20);
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 20);
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 24);
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 24);
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 28);
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 28);
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 32);
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 32);
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 36);
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 36);
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 40);
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 40);
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 44);
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 44);
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 48);
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnsaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 48);
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 52);
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217B42594(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ArticleUnsaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnsaveEvent(0) + 52);
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnsaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleUnsaveEvent(0);
  v5 = v4[5];
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t ArticleUnsaveEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleUnsaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleUnsaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleUnsaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleUnsaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t ArticleUnsaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleUnsaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleUnsaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t ArticleUnsaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ArticleUnsaveEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnsaveEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

__n128 ArticleUnsaveEvent.Model.init(eventData:articleData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11)
{
  v16 = *a3;
  v40 = *a4;
  v17 = *(a4 + 2);
  v18 = *a6;
  v19 = a6[1];
  v43 = a7[1];
  v44 = *a7;
  v41 = *(a6 + 8);
  v42 = *(a7 + 1);
  v52 = *a10;
  v51 = a10[1];
  v49 = *(a10 + 17);
  v50 = *(a10 + 16);
  v47 = a10[4];
  v48 = a10[3];
  v20 = sub_217D8899C();
  v45 = a11[1];
  v46 = *a11;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a2 + 127);
  v25 = *(a2 + 112);
  *(v22 + 96) = *(a2 + 96);
  *(v22 + 112) = v25;
  v26 = *(a2 + 80);
  *(v22 + 64) = *(a2 + 64);
  *(v22 + 80) = v26;
  *(a9 + v21[6]) = v16;
  v27 = a9 + v21[7];
  *v27 = v40;
  *(v27 + 16) = v17;
  v28 = (a9 + v21[8]);
  v29 = a5[3];
  v28[2] = a5[2];
  v28[3] = v29;
  v30 = a5[1];
  *v28 = *a5;
  v28[1] = v30;
  v31 = a5[8];
  v28[7] = a5[7];
  v28[8] = v31;
  v32 = a5[6];
  v28[5] = a5[5];
  v28[6] = v32;
  v28[4] = a5[4];
  v33 = a9 + v21[9];
  *v33 = v18;
  *(v33 + 8) = v19;
  *(v33 + 16) = v41;
  v34 = a9 + v21[10];
  *v34 = v44;
  *(v34 + 1) = v43;
  *(v34 + 2) = v42;
  v35 = a9 + v21[11];
  v36 = *(a8 + 16);
  *v35 = *a8;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a8 + 32);
  *(v35 + 48) = *(a8 + 48);
  v37 = a9 + v21[12];
  *v37 = v52;
  *(v37 + 8) = v51;
  *(v37 + 16) = v50;
  *(v37 + 17) = v49;
  *(v37 + 24) = v48;
  *(v37 + 32) = v47;
  v38 = (a9 + v21[13]);
  result = v46;
  *v38 = v46;
  v38[1] = v45;
  return result;
}

unint64_t sub_217B43184(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    v6 = 0x446C656E6E616863;
    if (a1 != 8)
    {
      v6 = 0x7461446575737369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174614477656976;
    if (a1 != 5)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x61446E6F69746361;
    v3 = 0x6174614464656566;
    if (a1 != 3)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x44656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217B432E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217B450AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217B4330C(uint64_t a1)
{
  v2 = sub_217B43AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217B43348(uint64_t a1)
{
  v2 = sub_217B43AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleUnsaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217B44400(0, &qword_27CB9FF08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B43AC4();
  sub_217D89E7C();
  v122 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v123 = v7;
  v57 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v58 = v3;
  v13 = v3 + *(v57 + 20);
  v14 = *(v13 + 96);
  v15 = *(v13 + 64);
  v119 = *(v13 + 80);
  v120 = v14;
  v16 = *(v13 + 96);
  *v121 = *(v13 + 112);
  v17 = *(v13 + 16);
  v18 = *(v13 + 48);
  v116 = *(v13 + 32);
  v117 = v18;
  v19 = *(v13 + 48);
  v118 = *(v13 + 64);
  v20 = *(v13 + 16);
  v115[0] = *v13;
  v115[1] = v20;
  v112 = v119;
  v113 = v16;
  v114[0] = *(v13 + 112);
  v109 = v116;
  v110 = v19;
  v111 = v15;
  *&v121[15] = *(v13 + 127);
  *(v114 + 15) = *(v13 + 127);
  v107 = v115[0];
  v108 = v17;
  v106 = 1;
  sub_217AD1630(v115, &v91);
  sub_217ACF52C();
  sub_217D89CAC();
  v104[5] = v112;
  v104[6] = v113;
  *v105 = v114[0];
  *&v105[15] = *(v114 + 15);
  v104[2] = v109;
  v104[3] = v110;
  v104[4] = v111;
  v104[0] = v107;
  v104[1] = v108;
  sub_217AD2864(v104);
  v22 = v57;
  v21 = v58;
  LOBYTE(v91) = *(v58 + *(v57 + 24));
  LOBYTE(v82) = 2;
  sub_217AED190();
  sub_217D89CAC();
  v23 = (v21 + v22[7]);
  v24 = v23[1];
  v25 = v23[2];
  v101 = *v23;
  v102 = v24;
  v103 = v25;
  v100 = 3;
  sub_217AD1A68(v101, v24, v25);
  sub_217A5BA2C();
  sub_217D89C3C();
  v26 = v123;
  sub_217AD290C(v101, v102, v103);
  v27 = (v21 + v22[8]);
  v28 = v27[6];
  v29 = v27[4];
  v96 = v27[5];
  v97 = v28;
  v30 = v27[6];
  v31 = v27[8];
  v98 = v27[7];
  v99 = v31;
  v32 = v27[2];
  v33 = *v27;
  v92 = v27[1];
  v93 = v32;
  v34 = v27[2];
  v35 = v27[4];
  v94 = v27[3];
  v95 = v35;
  v36 = *v27;
  v88 = v30;
  v89 = v98;
  v90 = v27[8];
  v91 = v36;
  v84 = v34;
  v85 = v94;
  v86 = v29;
  v87 = v96;
  v82 = v33;
  v83 = v92;
  v81 = 4;
  sub_217AD87FC(&v91, v80);
  sub_217A5D3B4();
  sub_217D89C3C();
  v80[6] = v88;
  v80[7] = v89;
  v80[8] = v90;
  v80[2] = v84;
  v80[3] = v85;
  v80[4] = v86;
  v80[5] = v87;
  v80[0] = v82;
  v80[1] = v83;
  sub_217AD96E8(v80);
  v37 = (v21 + v22[9]);
  v38 = *v37;
  v39 = v37[1];
  LOWORD(v37) = *(v37 + 8);
  *&v72 = v38;
  *(&v72 + 1) = v39;
  LOWORD(v73) = v37;
  LOBYTE(v68) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v40 = (v21 + v22[10]);
  v41 = *v40;
  v42 = v40[1];
  LOWORD(v40) = *(v40 + 1);
  v77 = v41;
  v78 = v42;
  v79 = v40;
  v76 = 6;
  sub_217ACFB8C();
  sub_217D89CAC();
  v43 = (v21 + v22[11]);
  v44 = v43[1];
  v72 = *v43;
  v73 = v44;
  v46 = *v43;
  v45 = v43[1];
  v74 = v43[2];
  v75 = *(v43 + 48);
  v68 = v46;
  v69 = v45;
  v70 = v43[2];
  v71 = *(v43 + 48);
  v67 = 7;
  sub_217ACC004(&v72, v65);
  sub_217A55B98();
  sub_217D89CAC();
  v65[0] = v68;
  v65[1] = v69;
  v65[2] = v70;
  v66 = v71;
  sub_217ACC69C(v65);
  v47 = v21 + v22[12];
  v48 = *(v47 + 8);
  v49 = *(v47 + 16);
  v50 = *(v47 + 17);
  v51 = *(v47 + 24);
  v52 = *(v47 + 32);
  v60 = *v47;
  v61 = v48;
  LOBYTE(v62) = v49;
  BYTE1(v62) = v50;
  v63 = v51;
  v64 = v52;
  v59 = 8;
  sub_217AD084C();

  sub_217D89CAC();

  v53 = (v21 + v22[13]);
  v54 = v53[1];
  v55 = v53[2];
  v56 = v53[3];
  v60 = *v53;
  v61 = v54;
  v62 = v55;
  v63 = v56;
  v59 = 9;
  sub_217AE39D0(v60, v54);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v60, v61);
  return (*(v26 + 8))(v10, v6);
}

unint64_t sub_217B43AC4()
{
  result = qword_27CB9FF10;
  if (!qword_27CB9FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9FF10);
  }

  return result;
}

uint64_t ArticleUnsaveEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_217D8899C();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217B44400(0, &qword_27CB9FF18, MEMORY[0x277D844C8]);
  v57 = v6;
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217B43AC4();
  v58 = v9;
  v15 = v87;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v55;
  v87 = a1;
  v51 = v10;
  v52 = v13;
  LOBYTE(v78) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v56;
  sub_217D89BCC();
  v18 = v52;
  (*(v54 + 32))(v52, v17, v3);
  v69 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v50 = v3;
  v56 = 0;
  v19 = v51;
  v20 = &v18[v51[5]];
  v21 = *v77;
  *(v20 + 6) = v76;
  *(v20 + 7) = v21;
  *(v20 + 127) = *&v77[15];
  v22 = v73;
  *(v20 + 2) = v72;
  *(v20 + 3) = v22;
  v23 = v75;
  *(v20 + 4) = v74;
  *(v20 + 5) = v23;
  v24 = v71;
  *v20 = v70;
  *(v20 + 1) = v24;
  LOBYTE(v64) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v18[v19[6]] = v78;
  LOBYTE(v64) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v25 = v79;
  v26 = &v18[v19[7]];
  *v26 = v78;
  *(v26 + 2) = v25;
  v68 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v27 = &v18[v19[8]];
  v28 = v83;
  v29 = v85;
  *(v27 + 6) = v84;
  *(v27 + 7) = v29;
  *(v27 + 8) = v86;
  v30 = v81;
  *(v27 + 2) = v80;
  *(v27 + 3) = v30;
  *(v27 + 4) = v82;
  *(v27 + 5) = v28;
  v31 = v79;
  *v27 = v78;
  *(v27 + 1) = v31;
  LOBYTE(v60) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v32 = v65;
  v33 = &v18[v19[9]];
  *v33 = v64;
  *(v33 + 8) = v32;
  LOBYTE(v60) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v34 = BYTE1(v64);
  v35 = WORD1(v64);
  v36 = &v18[v19[10]];
  *v36 = v64;
  v36[1] = v34;
  *(v36 + 1) = v35;
  v63 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v37 = v51;
  v38 = &v52[v51[11]];
  v39 = v65;
  *v38 = v64;
  *(v38 + 1) = v39;
  *(v38 + 2) = v66;
  v38[48] = v67;
  v59 = 8;
  sub_217AD07F8();
  sub_217D89BCC();
  v40 = *(&v60 + 1);
  v41 = v61;
  v42 = BYTE1(v61);
  v43 = *(&v61 + 1);
  v44 = v62;
  v45 = &v52[v37[12]];
  *v45 = v60;
  *(v45 + 1) = v40;
  v45[16] = v41;
  v45[17] = v42;
  *(v45 + 3) = v43;
  *(v45 + 4) = v44;
  v59 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  (*(v16 + 8))(v58, v57);
  v46 = v52;
  v47 = &v52[v51[13]];
  v48 = v61;
  *v47 = v60;
  *(v47 + 1) = v48;
  sub_217B44464(v46, v53);
  __swift_destroy_boxed_opaque_existential_1(v87);
  return sub_217B444C8(v46);
}

void sub_217B44400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217B43AC4();
    v7 = a3(a1, &type metadata for ArticleUnsaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217B44464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217B444C8(uint64_t a1)
{
  v2 = type metadata accessor for ArticleUnsaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217B445FC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217B42594(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217B42594(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217B42594(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217B42594(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217B42594(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217B42594(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217B42594(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217B42594(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217B42594(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_217B44AF0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217B42594(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217B42594(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217B42594(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217B42594(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217B42594(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
            if (v5 <= 0x3F)
            {
              sub_217B42594(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
              if (v6 <= 0x3F)
              {
                sub_217B42594(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                if (v7 <= 0x3F)
                {
                  sub_217B42594(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                  if (v8 <= 0x3F)
                  {
                    sub_217B42594(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                    if (v9 <= 0x3F)
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
}

void sub_217B44E54()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}