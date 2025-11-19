uint64_t BIAPayload.referenceId.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BIAPayload.referenceId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*BIAPayload.$referenceId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_21440E1C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 944);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 936);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21440E23C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BIAPayload.title.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 920);
  v7 = *(v2 + 928);
  v11 = *(v3 + 952);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 936), *(v3 + 944));

    *(v3 + 936) = a1;
    *(v3 + 944) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BIAPayload.title.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 936);
  *(v3 + 24) = v5;
  v6 = *(v1 + 944);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21440E514;
  }

  return result;
}

void sub_21440E514(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 920);
    v11 = *(v3 + 928);
    v16 = *(v3 + 952);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 936) = v5;
      *(v12 + 944) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v6 = *(v3 + 920);
  v7 = *(v3 + 928);
  v16 = *(v3 + 952);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 936) = v5;
  *(v8 + 944) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21440E6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 928);
  v3 = *(a1 + 936);
  v4 = *(a1 + 944);
  v5 = *(a1 + 952);
  *a2 = *(a1 + 920);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21440E750(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 928);
  v9 = *(a2 + 936);
  v10 = *(a2 + 944);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 920) = v4;
  *(a2 + 928) = v3;
  *(a2 + 936) = v5;
  *(a2 + 944) = v6;
  *(a2 + 952) = v7;
  return result;
}

void (*BIAPayload.$title.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 928);
  v6 = *(v1 + 936);
  v7 = *(v1 + 944);
  v8 = *(v1 + 952);
  *v4 = *(v1 + 920);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21440E88C;
}

void sub_21440E88C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 928);
  v10 = *(v3 + 936);
  v11 = *(v3 + 944);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 920) = v5;
    *(v3 + 928) = v4;
    *(v3 + 936) = v7;
    *(v3 + 944) = v6;
    *(v3 + 952) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 928);

    sub_213FDC6D0(v10, v11);
    *(v3 + 920) = v5;
    *(v3 + 928) = v4;
    *(v3 + 936) = v7;
    *(v3 + 944) = v6;
    *(v3 + 952) = v8;
  }

  free(v2);
}

uint64_t sub_21440E980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 984);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 976);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21440E9F4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BIAPayload.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 960);
  v7 = *(v2 + 968);
  v11 = *(v3 + 992);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 976), *(v3 + 984));

    *(v3 + 976) = a1;
    *(v3 + 984) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BIAPayload.subtitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 976);
  *(v3 + 24) = v5;
  v6 = *(v1 + 984);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21440ECCC;
  }

  return result;
}

void sub_21440ECCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 960);
    v11 = *(v3 + 968);
    v16 = *(v3 + 992);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 976) = v5;
      *(v12 + 984) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v6 = *(v3 + 960);
  v7 = *(v3 + 968);
  v16 = *(v3 + 992);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v6(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 976) = v5;
  *(v8 + 984) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21440EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 968);
  v3 = *(a1 + 976);
  v4 = *(a1 + 984);
  v5 = *(a1 + 992);
  *a2 = *(a1 + 960);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21440EF08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 968);
  v9 = *(a2 + 976);
  v10 = *(a2 + 984);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 960) = v4;
  *(a2 + 968) = v3;
  *(a2 + 976) = v5;
  *(a2 + 984) = v6;
  *(a2 + 992) = v7;
  return result;
}

void (*BIAPayload.$subtitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 968);
  v6 = *(v1 + 976);
  v7 = *(v1 + 984);
  v8 = *(v1 + 992);
  *v4 = *(v1 + 960);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21440F044;
}

void sub_21440F044(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 968);
  v10 = *(v3 + 976);
  v11 = *(v3 + 984);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v10, v11);
    *(v3 + 960) = v5;
    *(v3 + 968) = v4;
    *(v3 + 976) = v7;
    *(v3 + 984) = v6;
    *(v3 + 992) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 968);

    sub_213FDC6D0(v10, v11);
    *(v3 + 960) = v5;
    *(v3 + 968) = v4;
    *(v3 + 976) = v7;
    *(v3 + 984) = v6;
    *(v3 + 992) = v8;
  }

  free(v2);
}

uint64_t sub_21440F138@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BIAPayload(0) + 40);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21440F1D4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BIAPayload(0) + 40);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BIAPayload.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BIAPayload(0) + 40);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BIAPayload.id.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BIAPayload(0) + 40);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21440F4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BIAPayload(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21440F548(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BIAPayload(0) + 40);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*BIAPayload.$id.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BIAPayload(0) + 40);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t BIAPayload.displayContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BIAPayload(0) + 44);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_213FB2E54(v12, v11, &qword_27C907C40, &qword_2146F4D78);
}

__n128 BIAPayload.displayContent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BIAPayload(0) + 44);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_213FB2DF4(v9, &qword_27C907C40, &qword_2146F4D78);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t sub_21440F7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(a1 + *(v8 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21440F980(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_21402F904(v7);
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_21440FAB0(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  sub_21402F904(v6);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21440FB9C(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v15 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_21440FDC8;
  }

  return result;
}

void sub_21440FDC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    v8 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_21402F904(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = *v2;
    v8 = v2[1];
    sub_21402F904((*a1)[5]);
  }

  free(v4);
  free(v3);
  free(v8);

  free(v2);
}

void (*sub_21440FE8C(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &unk_27C9131D0, &qword_2146EAA70);
  return sub_21440FF3C;
}

void sub_21440FF3C(uint64_t *a1)
{
  v1 = a1[1];
  sub_21402EDB8(v1, *a1, &unk_27C9131D0, &qword_2146EAA70);

  free(v1);
}

uint64_t sub_21440FFA0()
{
  if (*v0)
  {
    result = 28526;
  }

  else
  {
    result = 7562617;
  }

  *v0;
  return result;
}

uint64_t sub_21440FFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562617 && a2 == 0xE300000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_21441009C(uint64_t a1)
{
  v2 = sub_2144104B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144100D8(uint64_t a1)
{
  v2 = sub_2144104B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214410114(uint64_t a1)
{
  v2 = sub_214410508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214410150(uint64_t a1)
{
  v2 = sub_214410508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21441018C(uint64_t a1)
{
  v2 = sub_21441055C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144101C8(uint64_t a1)
{
  v2 = sub_21441055C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214410204(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EB8, &qword_21473C490);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EC0, &qword_21473C498);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EC8, &qword_21473C4A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144104B4();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_214410508();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_21441055C();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_2144104B4()
{
  result = qword_27C912ED0;
  if (!qword_27C912ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912ED0);
  }

  return result;
}

unint64_t sub_214410508()
{
  result = qword_27C912ED8;
  if (!qword_27C912ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912ED8);
  }

  return result;
}

unint64_t sub_21441055C()
{
  result = qword_27C912EE0;
  if (!qword_27C912EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912EE0);
  }

  return result;
}

uint64_t sub_2144105DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_214410624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EE8, &qword_21473C4A8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EF0, &qword_21473C4B0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912EF8, &unk_21473C4B8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144104B4();
  v16 = v36;
  sub_2146DAA08();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2146DA238();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_21439DF70();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v26 = &type metadata for BIADeterminateResponseType;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_214410508();
        sub_2146DA0B8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_21441055C();
        sub_2146DA0B8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_214410B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214410C58(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214410CF4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_214410D98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    *a2 = *(a1 + 56);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214410E08(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214410EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214411000(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144158A0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21441109C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  *(a2 + 72) = v7;
  return result;
}

uint64_t (*sub_214411114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144158A4;
}

uint64_t sub_2144111AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a2 = *(a1 + 96);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21441121C(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144112CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v12 = *(v3 + 112);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 104);

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214411414(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144114B0(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 80);
    v11 = *(v4 + 88);
    v16 = *(v4 + 112);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 96) = v5;
      *(v4 + 104) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 80);
  v6 = *(v4 + 88);
  v16 = *(v4 + 112);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 96) = v5;
  *(v4 + 104) = v3;
}

uint64_t sub_2144116D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v6;
  *(a2 + 104) = v5;
  *(a2 + 112) = v7;
  return result;
}

void (*sub_214411748(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

void sub_2144117E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 88);
  v10 = *(v3 + 104);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 88);

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  free(v2);
}

uint64_t sub_2144118BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214411A04(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214411AA0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t sub_214411B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v12 = *(v3 + 80);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 72);

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214411C80(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214411D1C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

uint64_t (*sub_214411DB8(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214411E54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_214411EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214412034(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144120D4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 40);
    v11 = *(v4 + 48);
    v16 = *(v4 + 72);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 56) = v5;
      *(v4 + 64) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 40);
  v6 = *(v4 + 48);
  v16 = *(v4 + 72);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 56) = v5;
  *(v4 + 64) = v3;
}

uint64_t (*sub_2144122F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21441238C;
}

void sub_214412390(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 48);
  v10 = *(v3 + 64);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 48);

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v7;
    *(v3 + 64) = v6;
    *(v3 + 72) = v8;
  }

  free(v2);
}

uint64_t sub_2144124B8@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214412514()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7463757274736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_21441257C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7463757274736564;
    v8 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
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
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214412698()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214412748()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2144127E4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214412890@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2144124B8(a1);
}

void sub_21441289C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2144129B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t (*sub_214412A6C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214412B08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_214412C64(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BIABinaryChoiceButton(0) + 24);

  return sub_214412CA8(a1, v3);
}

uint64_t sub_214412CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIAUserAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214412D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214412E9C(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214412F38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t sub_214412FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214413068(uint64_t a1)
{
  v2 = sub_214413258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144130A4(uint64_t a1)
{
  v2 = sub_214413258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144130E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F00, &qword_21473C4C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413258();
  sub_2146DAA28();
  type metadata accessor for BIAUserAction(0);
  sub_214413540(&qword_27C907D08, type metadata accessor for BIAUserAction);
  sub_2146DA308();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_214413258()
{
  result = qword_27C912F08;
  if (!qword_27C912F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F08);
  }

  return result;
}

uint64_t sub_2144132AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F18, &qword_21473C4D8);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for BIASingleAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413258();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = v20;
    type metadata accessor for BIAUserAction(0);
    sub_214413540(&qword_27C907CF8, type metadata accessor for BIAUserAction);
    sub_2146DA148();
    (*(v21 + 8))(v11, v8);
    sub_21408AC04(v7, v15, &qword_27C912F10, &qword_21473C4D0);
    sub_214415660(v15, v17, type metadata accessor for BIASingleAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214413540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2144135A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F00, &qword_21473C4C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413258();
  sub_2146DAA28();
  type metadata accessor for BIAUserAction(0);
  sub_214413540(&qword_27C907D08, type metadata accessor for BIAUserAction);
  sub_2146DA308();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214413718()
{
  if (*v0)
  {
    return 0x326E6F6974706FLL;
  }

  else
  {
    return 0x316E6F6974706FLL;
  }
}

uint64_t sub_21441374C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x316E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x326E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_214413828(uint64_t a1)
{
  v2 = sub_214413A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214413864(uint64_t a1)
{
  v2 = sub_214413A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144138A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F20, &unk_21473C4E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413A64();
  sub_2146DAA28();
  v11[15] = 0;
  type metadata accessor for BIABinaryChoiceButton(0);
  sub_214413540(&qword_27C90CC40, type metadata accessor for BIABinaryChoiceButton);
  sub_2146DA308();
  if (!v1)
  {
    v9 = *(type metadata accessor for BIABinaryChoice(0) + 20);
    v11[14] = 1;
    sub_2146DA308();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_214413A64()
{
  result = qword_27C912F28;
  if (!qword_27C912F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F28);
  }

  return result;
}

uint64_t sub_214413AD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F38, &qword_21473C4F0);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v24 - v11;
  v13 = type metadata accessor for BIABinaryChoice(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214413A64();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v13;
  v26 = v16;
  v18 = v29;
  v27 = v8;
  type metadata accessor for BIABinaryChoiceButton(0);
  v33 = 0;
  sub_214413540(&qword_27C90CC58, type metadata accessor for BIABinaryChoiceButton);
  v19 = v30;
  v20 = v31;
  sub_2146DA148();
  v21 = v26;
  sub_21408AC04(v19, v26, &qword_27C912F30, &unk_21477C740);
  v32 = 1;
  v22 = v27;
  sub_2146DA148();
  (*(v18 + 8))(v12, v20);
  sub_21408AC04(v22, v21 + *(v25 + 20), &qword_27C912F30, &unk_21477C740);
  sub_214413E44(v21, v28, type metadata accessor for BIABinaryChoice);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214413EAC(v21);
}

uint64_t sub_214413E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214413EAC(uint64_t a1)
{
  v2 = type metadata accessor for BIABinaryChoice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214413F08(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C912E78, type metadata accessor for BIAPayload);
  result = sub_214413540(&qword_27C912E60, type metadata accessor for BIAPayload);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214413F8C(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C907C38, type metadata accessor for BIAUserInteractionParadigm);
  result = sub_214413540(&qword_27C907C78, type metadata accessor for BIAUserInteractionParadigm);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214414030(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C90CCA0, type metadata accessor for BIAURL);
  result = sub_214413540(&qword_27C90CC80, type metadata accessor for BIAURL);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144140D4(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C907CF8, type metadata accessor for BIAUserAction);
  result = sub_214413540(&qword_27C907D08, type metadata accessor for BIAUserAction);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214414188()
{
  result = qword_27C912F40;
  if (!qword_27C912F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F40);
  }

  return result;
}

uint64_t sub_214414260(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C907D68, type metadata accessor for BIALabeledUserAction);
  result = sub_214413540(&qword_27C907D88, type metadata accessor for BIALabeledUserAction);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144142E8()
{
  result = qword_27C912F48;
  if (!qword_27C912F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F48);
  }

  return result;
}

uint64_t sub_214414368(uint64_t a1)
{
  *(a1 + 8) = sub_214413540(&qword_27C90CC58, type metadata accessor for BIABinaryChoiceButton);
  result = sub_214413540(&qword_27C90CC40, type metadata accessor for BIABinaryChoiceButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214414418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214414454()
{
  result = qword_27C912F50;
  if (!qword_27C912F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F50);
  }

  return result;
}

unint64_t sub_2144144A8()
{
  result = qword_27C912F58;
  if (!qword_27C912F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F58);
  }

  return result;
}

void sub_214414554()
{
  sub_214084AA4();
  if (v0 <= 0x3F)
  {
    sub_214414C30(319, qword_280B2F1A0, &type metadata for BusinessMessageImage, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_214414868(319, qword_280B2EA18, type metadata accessor for BIAUserInteractionParadigm, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_214414C30(319, &qword_280B2EF08, &type metadata for BIAReplyDisplayContent, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214414688()
{
  sub_21441495C(319, &qword_280B2FA50, type metadata accessor for BIAUserAction);
  if (v0 <= 0x3F)
  {
    sub_21441472C();
    if (v1 <= 0x3F)
    {
      sub_2144147A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21441472C()
{
  if (!qword_280B2E488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907D60, &qword_2146F4DF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B2E488);
    }
  }
}

void sub_2144147A4()
{
  if (!qword_280B2F150)
  {
    type metadata accessor for BIABinaryChoiceButton(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B2F150);
    }
  }
}

void sub_214414868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2144148CC()
{
  sub_21441495C(319, &qword_280B2E720, type metadata accessor for BIAURL);
  if (v0 <= 0x3F)
  {
    sub_2144149A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21441495C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_2144149A8()
{
  result = qword_280B2EF10[0];
  if (!qword_280B2EF10[0])
  {
    result = &type metadata for BIADeterminateResponse;
    atomic_store(&type metadata for BIADeterminateResponse, qword_280B2EF10);
  }

  return result;
}

uint64_t sub_2144149F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_214414A40(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214414AB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214414AF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_214414B88()
{
  sub_214414C30(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BIAUserAction(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214414C30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_122Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BIAUserAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_123Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BIAUserAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_214414E08()
{
  sub_214414C30(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BIAUserAction(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_84Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_85Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_214415008(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_214414868(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2144150A8()
{
  sub_214414868(319, &qword_27C912F88, type metadata accessor for BIABinaryChoiceButton, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_214415198()
{
  result = qword_27C912F90;
  if (!qword_27C912F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F90);
  }

  return result;
}

unint64_t sub_2144151F0()
{
  result = qword_27C912F98;
  if (!qword_27C912F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912F98);
  }

  return result;
}

unint64_t sub_214415248()
{
  result = qword_27C912FA0;
  if (!qword_27C912FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FA0);
  }

  return result;
}

unint64_t sub_2144152A0()
{
  result = qword_27C912FA8;
  if (!qword_27C912FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FA8);
  }

  return result;
}

unint64_t sub_2144152F8()
{
  result = qword_27C912FB0;
  if (!qword_27C912FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FB0);
  }

  return result;
}

unint64_t sub_214415350()
{
  result = qword_27C912FB8;
  if (!qword_27C912FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FB8);
  }

  return result;
}

unint64_t sub_2144153A8()
{
  result = qword_27C912FC0;
  if (!qword_27C912FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FC0);
  }

  return result;
}

unint64_t sub_214415400()
{
  result = qword_27C912FC8;
  if (!qword_27C912FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FC8);
  }

  return result;
}

unint64_t sub_214415458()
{
  result = qword_27C912FD0;
  if (!qword_27C912FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FD0);
  }

  return result;
}

unint64_t sub_2144154B0()
{
  result = qword_27C912FD8;
  if (!qword_27C912FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FD8);
  }

  return result;
}

unint64_t sub_214415508()
{
  result = qword_27C912FE0;
  if (!qword_27C912FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FE0);
  }

  return result;
}

unint64_t sub_214415560()
{
  result = qword_27C912FE8;
  if (!qword_27C912FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FE8);
  }

  return result;
}

unint64_t sub_2144155B8()
{
  result = qword_27C912FF0;
  if (!qword_27C912FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FF0);
  }

  return result;
}

unint64_t sub_21441560C()
{
  result = qword_27C912FF8;
  if (!qword_27C912FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912FF8);
  }

  return result;
}

uint64_t sub_214415660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_182Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2146D86D8();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_2144157F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_2144158B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v33 = *(v0 + 217);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v36 = *(v0 + 219);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v37 = v11;
  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68E0;
  *(inited + 32) = 0x6C7255616964656DLL;
  *(inited + 40) = 0xE800000000000000;
  if (v2)
  {
    v14 = MEMORY[0x277D837D0];
    *(inited + 48) = v1;
    *(inited + 56) = v2;
    *(inited + 72) = v14;
    *(inited + 80) = 0xD000000000000010;
    *(inited + 88) = 0x80000002147879B0;
    if (v3)
    {
      *(inited + 96) = v4;
      *(inited + 104) = v3;
      *(inited + 120) = v14;
      strcpy((inited + 128), "mediaFileSize");
      *(inited + 142) = -4864;
      if ((v6 & 1) == 0)
      {
        v15 = MEMORY[0x277D83B88];
        *(inited + 144) = v5;
        *(inited + 168) = v15;
        strcpy((inited + 176), "thumbnailUrl");
        *(inited + 189) = 0;
        *(inited + 190) = -5120;
        if (v7 != 1)
        {
          if (v7)
          {
            v16 = MEMORY[0x277D837D0];
            v17 = v8;
            v18 = v7;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v16 = 0;
            *(inited + 208) = 0;
          }

          *(inited + 192) = v17;
          *(inited + 200) = v18;
          *(inited + 216) = v16;
          *(inited + 224) = 0xD000000000000014;
          *(inited + 232) = 0x80000002147879E0;
          if (v38 != 1)
          {
            if (v38)
            {
              v19 = MEMORY[0x277D837D0];
              v20 = v10;
              v21 = v38;
            }

            else
            {
              v20 = 0;
              v21 = 0;
              v19 = 0;
              *(inited + 256) = 0;
            }

            *(inited + 240) = v20;
            *(inited + 248) = v21;
            *(inited + 264) = v19;
            *(inited + 272) = 0xD000000000000011;
            *(inited + 280) = 0x8000000214787A00;
            if ((v33 & 1) == 0)
            {
              v22 = MEMORY[0x277D83B88];
              v23 = v35;
              if (v34)
              {
                v23 = 0;
                v24 = 0;
                *(inited + 296) = 0;
                *(inited + 304) = 0;
              }

              else
              {
                v24 = MEMORY[0x277D83B88];
              }

              *(inited + 288) = v23;
              *(inited + 312) = v24;
              *(inited + 320) = 0x746867696568;
              *(inited + 328) = 0xE600000000000000;
              *(inited + 336) = v36 - 1;
              *(inited + 360) = v22;
              *(inited + 368) = 0xD000000000000012;
              *(inited + 376) = 0x8000000214787A20;
              if (!v12)
              {
                v25 = 0;
                v26 = 0;
                v27 = 0;
                *(inited + 400) = 0;
LABEL_20:
                v28 = v12;
                *(inited + 384) = v25;
                *(inited + 392) = v26;
                *(inited + 408) = v27;
                v29 = inited;

                sub_213FDC9D0(v8, v7);
                sub_213FDC9D0(v10, v38);
                sub_213FDC9D0(v37, v28);
                v30 = sub_214045690(v29);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
                swift_arrayDestroy();
                v31 = sub_2140418B8(v30);

                return v31;
              }

              if (v12 != 1)
              {
                v27 = MEMORY[0x277D837D0];
                v25 = v37;
                v26 = v12;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214415C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214417778();
  *a2 = result;
  return result;
}

void sub_214415CA4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x746867696568;
    if (v2 != 6)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000214787A20;
    }

    v10 = 0x80000002147879E0;
    v11 = 0xD000000000000011;
    if (v2 == 4)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v10 = 0x8000000214787A00;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C7255616964656DLL;
    v5 = 0xED0000657A695365;
    v6 = 0x6C6946616964656DLL;
    if (v2 != 2)
    {
      v6 = 0x69616E626D756874;
      v5 = 0xEC0000006C72556CLL;
    }

    if (*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000002147879B0;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_214415DC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214417778();
  *a1 = result;
  return result;
}

uint64_t sub_214415DEC(uint64_t a1)
{
  v2 = sub_2144175FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214415E28(uint64_t a1)
{
  v2 = sub_2144175FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214415E64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913000, &unk_21473CFB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v204 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2144175FC();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    LOBYTE(v133) = 0;
    v13 = sub_2146DA168();
    v15 = v14;
    v132 = v13;
    LOBYTE(v133) = 1;
    v17 = v5;
    v16 = sub_2146DA168();
    v19 = v18;
    v20 = v16;
    LOBYTE(v133) = 2;
    v131 = sub_2146DA1A8();
    LOBYTE(v133) = 3;
    v129 = sub_2146DA0F8();
    v130 = v22;
    LOBYTE(v133) = 4;
    v127 = sub_2146DA0F8();
    v128 = v23;
    LOBYTE(v133) = 5;
    v24 = sub_2146DA128();
    v126 = v25;
    v125 = v24;
    LOBYTE(v133) = 6;
    v124 = sub_2146DA1A8();
    v121 = v20;
    LOBYTE(v133) = 7;
    v81 = sub_2146DA0F8();
    v87 = v17;
    v90 = v26;
    if (v124 < 3)
    {
      v27 = v124 + 1;
    }

    else
    {
      v27 = 0;
    }

    v88 = v27;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    v28 = swift_allocObject();
    v122 = xmmword_2146E9BF0;
    *(v28 + 16) = xmmword_2146E9BF0;
    v124 = sub_214069764(&unk_2826534E0);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v29 = swift_allocObject();
    v30 = swift_allocObject();
    *(v30 + 16) = v124;
    *(v29 + 16) = sub_214059810;
    *(v29 + 24) = v30;
    *(v28 + 32) = v29;
    sub_214042B80(v28, &v133);
    v119 = v133;
    v124 = v134;
    v85 = v135;
    v86 = v136;
    v123 = v137;
    v31 = swift_allocObject();
    *(v31 + 16) = v122;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_214064194;
    *(v32 + 24) = 0;
    *(v31 + 32) = v32;
    sub_214042B80(v31, &v189);
    v116 = v189;
    v118 = v190;
    v111 = v191;
    v120 = v192;
    v117 = v193;
    v33 = swift_allocObject();
    *(v33 + 16) = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
    v34 = swift_allocObject();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2146ED240;
    *(v34 + 16) = sub_214032554;
    *(v34 + 24) = v35;
    *(v33 + 32) = v34;
    sub_21404328C(v33, v186);
    v112 = v186[0];
    v114 = v186[1];
    v105 = v186[2];
    LODWORD(v33) = v187;
    v113 = v188;
    sub_2140637C0(v184);
    v106 = v184[0];
    v108 = v184[2];
    v109 = v184[1];
    v110 = v184[3];
    v107 = v185;
    sub_214063914(v182);
    v100 = v182[2];
    v101 = v182[0];
    v103 = v182[3];
    v104 = v182[1];
    v102 = v183;
    sub_214063A34(v178);
    v97 = v178[0];
    v99 = v178[1];
    v89 = v178[2];
    v91 = v179;
    LODWORD(v34) = v180;
    v98 = v181;
    sub_214063B78(v176);
    v92 = v176[0];
    v95 = v176[1];
    v96 = v176[2];
    v94 = v176[3];
    v93 = v177;
    v195 = v33;
    v194 = v34;
    v82 = v34;
    v83 = v33;
    v201 = v33;
    v196 = v34;
    v189 = v132;
    v190 = v15;
    LOBYTE(v184[0]) = v123;
    v84 = 0xD000000000000019;
    v133 = 0xD000000000000019;
    v134 = 0x800000021478F950;
    v115 = 0x800000021478F950;
    v135 = 0xD00000000000001CLL;
    v136 = 0x800000021478A360;
    *&v122 = 0x800000021478A360;
    v36 = v86;

    if (v119(&v189, v184, &v133))
    {
      v37 = v122;

      v189 = v121;
      v190 = v19;
      LOBYTE(v184[0]) = v117;
      v133 = 0xD000000000000021;
      v134 = 0x800000021478F970;
      v135 = 0xD00000000000001CLL;
      v136 = v37;

      if (v116(&v189, v184, &v133))
      {
        v38 = v122;

        LOBYTE(v184[0]) = v83;
        v189 = v131;
        LOBYTE(v182[0]) = v113;
        v133 = 0xD00000000000001ELL;
        v134 = 0x800000021478F9A0;
        v135 = 0xD00000000000001CLL;
        v136 = v38;

        v39 = v112(&v189, v182, &v133);
        if (v39)
        {
          v52 = v122;

          v201 = 0;
          v189 = v129;
          v190 = v130;
          LOBYTE(v184[0]) = v107;
          v133 = 0xD00000000000001DLL;
          v134 = 0x800000021478F9C0;
          v135 = 0xD00000000000001CLL;
          v136 = v52;

          sub_213FDC9D0(v108, v110);
          if (v106(&v189, v184, &v133))
          {
            v53 = v110;
            sub_213FDC6D0(v108, v110);

            sub_213FDC6D0(v108, v53);
            v189 = v127;
            v190 = v128;
            LOBYTE(v184[0]) = v102;
            v133 = 0xD000000000000025;
            v134 = 0x800000021478F9E0;
            v135 = 0xD00000000000001CLL;
            v136 = v122;

            sub_213FDC9D0(v100, v103);
            if (v101(&v189, v184, &v133))
            {
              v54 = v100;
              sub_213FDC6D0(v100, v103);

              sub_213FDC6D0(v54, v103);
              v189 = v125;
              LOBYTE(v190) = v126 & 1;
              LOBYTE(v184[0]) = v98;
              v133 = 0xD000000000000022;
              v134 = 0x800000021478FA10;
              v135 = 0xD00000000000001CLL;
              v136 = v122;

              v55 = v97(&v189, v184, &v133);
              if (v55)
              {
                v63 = v122;

                v91 = v126 & 1;

                v196 = 0;
                v189 = v81;
                v190 = v90;
                LOBYTE(v184[0]) = v93;
                v133 = 0xD000000000000023;
                v134 = 0x800000021478FA40;
                v135 = 0xD00000000000001CLL;
                v136 = v63;

                sub_213FDC9D0(v96, v94);
                if (v92(&v189, v184, &v133))
                {
                  v64 = v94;
                  sub_213FDC6D0(v96, v94);
                  (*(v12 + 8))(v9, v87);
                  v65 = v95;

                  sub_213FDC6D0(v96, v64);
                  v66 = v124;
                  *a2 = v119;
                  *(a2 + 8) = v66;
                  *(a2 + 16) = v132;
                  *(a2 + 24) = v15;
                  *(a2 + 32) = v123;
                  v67 = v118;
                  *(a2 + 40) = v116;
                  *(a2 + 48) = v67;
                  *(a2 + 33) = v203[0];
                  *(a2 + 36) = *(v203 + 3);
                  LOBYTE(v67) = v201;
                  *(a2 + 56) = v121;
                  *(a2 + 64) = v19;
                  v68 = v196;
                  *(a2 + 72) = v117;
                  v69 = *v202;
                  *(a2 + 76) = *&v202[3];
                  *(a2 + 73) = v69;
                  v70 = v114;
                  *(a2 + 80) = v112;
                  *(a2 + 88) = v70;
                  *(a2 + 96) = v131;
                  *(a2 + 104) = v67;
                  *(a2 + 105) = v113;
                  *(a2 + 106) = v199;
                  *(a2 + 110) = v200;
                  v71 = v109;
                  *(a2 + 112) = v106;
                  *(a2 + 120) = v71;
                  v72 = v130;
                  *(a2 + 128) = v129;
                  *(a2 + 136) = v72;
                  *(a2 + 144) = v107;
                  LODWORD(v72) = *v198;
                  *(a2 + 148) = *&v198[3];
                  *(a2 + 145) = v72;
                  v73 = v104;
                  *(a2 + 152) = v101;
                  *(a2 + 160) = v73;
                  v74 = v128;
                  *(a2 + 168) = v127;
                  *(a2 + 176) = v74;
                  *(a2 + 184) = v102;
                  *(a2 + 188) = *&v197[3];
                  *(a2 + 185) = *v197;
                  v75 = v99;
                  *(a2 + 192) = v97;
                  *(a2 + 200) = v75;
                  *(a2 + 208) = v125;
                  *(a2 + 216) = v91;
                  *(a2 + 217) = v68;
                  *(a2 + 218) = v98;
                  *(a2 + 219) = v88;
                  *(a2 + 224) = v92;
                  *(a2 + 232) = v65;
                  v76 = v90;
                  *(a2 + 240) = v81;
                  *(a2 + 248) = v76;
                  *(a2 + 256) = v93;
                  return __swift_destroy_boxed_opaque_existential_1(v204);
                }

                sub_214031C4C();
                swift_allocError();
                *v79 = 0xD000000000000023;
                v79[1] = 0x800000021478FA40;
                v80 = v122;
                v79[2] = 0xD00000000000001CLL;
                v79[3] = v80;
                swift_willThrow();

                (*(v12 + 8))(v9, v87);

                sub_213FDC6D0(v96, v94);
                v44 = v15;
                v120 = v19;
                v105 = v131;
                v47 = v128;
                v49 = v129;
                v110 = v130;
                v111 = v121;
                v48 = v127;
                v89 = v125;
              }

              else
              {

                sub_214031C4C();
                swift_allocError();
                *v77 = 0xD000000000000022;
                v77[1] = 0x800000021478FA10;
                v78 = v122;
                v77[2] = 0xD00000000000001CLL;
                v77[3] = v78;
                swift_willThrow();
                (*(v12 + 8))(v9, v87);

                v196 = v82;
                v44 = v15;
                v120 = v19;
                v105 = v131;
                v47 = v128;
                v49 = v129;
                v110 = v130;
                v111 = v121;
                v48 = v127;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v61 = 0xD000000000000025;
              v61[1] = 0x800000021478F9E0;
              v62 = v122;
              v61[2] = 0xD00000000000001CLL;
              v61[3] = v62;
              swift_willThrow();

              (*(v12 + 8))(v9, v87);

              v48 = v100;
              v47 = v103;
              sub_213FDC6D0(v100, v103);
              v44 = v15;
              v120 = v19;
              v105 = v131;
              v49 = v129;
              v110 = v130;
              v111 = v121;
            }

            v46 = v132;
            v43 = v119;
            v45 = v124;
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v58 = 0xD00000000000001DLL;
            v58[1] = 0x800000021478F9C0;
            v59 = v122;
            v58[2] = 0xD00000000000001CLL;
            v58[3] = v59;
            swift_willThrow();

            (*(v12 + 8))(v9, v87);

            v60 = v108;
            sub_213FDC6D0(v108, v110);
            v49 = v60;
            v44 = v15;
            v111 = v121;
            v120 = v19;
            v46 = v132;
            v105 = v131;
            v43 = v119;
            v45 = v124;
            v47 = v103;
            v48 = v100;
          }

          goto LABEL_12;
        }

        sub_214031C4C();
        swift_allocError();
        *v56 = 0xD00000000000001ELL;
        v56[1] = 0x800000021478F9A0;
        v57 = v122;
        v56[2] = 0xD00000000000001CLL;
        v56[3] = v57;
        swift_willThrow();
        (*(v12 + 8))(v9, v87);
        v83 = LOBYTE(v184[0]);

        v201 = v83;
        v44 = v15;
        v111 = v121;
        v120 = v19;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v50 = 0xD000000000000021;
        v50[1] = 0x800000021478F970;
        v51 = v122;
        v50[2] = 0xD00000000000001CLL;
        v50[3] = v51;
        swift_willThrow();

        (*(v12 + 8))(v9, v87);

        v44 = v15;
      }

      v46 = v132;
      v43 = v119;
      v45 = v124;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v40 = v115;
      *v41 = v84;
      v41[1] = v40;
      v42 = v122;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v42;
      swift_willThrow();

      v43 = v119;
      (*(v12 + 8))(v9, v87);
      v44 = v36;

      v45 = v124;

      v46 = v85;
    }

    v47 = v103;
    v48 = v100;
    v49 = v108;
LABEL_12:
    v133 = v43;
    v134 = v45;
    v135 = v46;
    v136 = v44;
    v137 = v123;
    *v138 = v203[0];
    *&v138[3] = *(v203 + 3);
    v139 = v116;
    v140 = v118;
    v141 = v111;
    v142 = v120;
    v143 = v117;
    *v144 = *v202;
    *&v144[3] = *&v202[3];
    v145 = v112;
    v146 = v114;
    v147 = v105;
    v148 = v201;
    v149 = v113;
    v150 = v199;
    v151 = v200;
    v152 = v106;
    v153 = v109;
    v154 = v49;
    v155 = v110;
    v156 = v107;
    *&v157[3] = *&v198[3];
    *v157 = *v198;
    v158 = v101;
    v159 = v104;
    v160 = v48;
    v161 = v47;
    v162 = v102;
    *&v163[3] = *&v197[3];
    *v163 = *v197;
    v164 = v97;
    v165 = v99;
    v166 = v89;
    v167 = v91;
    v168 = v196;
    v169 = v98;
    v170 = v88;
    v171 = v92;
    v172 = v95;
    v173 = v96;
    v174 = v94;
    v175 = v93;
    sub_2142FF8EC(&v133);
  }

  return __swift_destroy_boxed_opaque_existential_1(v204);
}

uint64_t sub_21441713C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913010, &unk_21473CFC0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v29 = *(v1 + 96);
  v30 = v8;
  v34 = *(v1 + 104);
  v10 = *(v1 + 128);
  v27 = *(v1 + 136);
  v28 = v10;
  v11 = *(v1 + 168);
  v25 = *(v1 + 176);
  v26 = v11;
  v24 = *(v1 + 208);
  LODWORD(v11) = *(v1 + 216);
  v22 = *(v1 + 217);
  v23 = v11;
  v21 = *(v1 + 219);
  v12 = *(v1 + 240);
  v19 = *(v1 + 248);
  v20 = v12;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = &v19 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_2144175FC();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_11;
  }

  LOBYTE(v32) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v31 + 8))(v17, v4);
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LOBYTE(v32) = 1;

  sub_2146DA328();

  if (v34)
  {
    goto LABEL_11;
  }

  LOBYTE(v32) = 2;
  sub_2146DA368();
  if (v27 == 1)
  {
    goto LABEL_11;
  }

  v32 = v28;
  v33 = v27;
  v35 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2143BF4C0(&qword_280B30BA8, &qword_27C904008, &qword_2146EC050);
  sub_2146DA388();
  if (v25 == 1)
  {
    goto LABEL_11;
  }

  v32 = v26;
  v33 = v25;
  v35 = 4;
  sub_2146DA388();
  if (v22)
  {
    goto LABEL_11;
  }

  v32 = v24;
  LOBYTE(v33) = v23 & 1;
  v35 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2143BF4C0(&qword_280B30B90, &qword_27C904798, qword_21473CFD0);
  sub_2146DA388();
  LOBYTE(v32) = 6;
  sub_2146DA368();
  if (v19 == 1)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v20;
    v33 = v19;
    v35 = 7;
    sub_2146DA388();
    return (*(v31 + 8))(v17, v4);
  }

  return result;
}

unint64_t sub_2144175FC()
{
  result = qword_27C913008;
  if (!qword_27C913008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913008);
  }

  return result;
}

unint64_t sub_214417674()
{
  result = qword_27C913018;
  if (!qword_27C913018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913018);
  }

  return result;
}

unint64_t sub_2144176CC()
{
  result = qword_27C913020;
  if (!qword_27C913020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913020);
  }

  return result;
}

unint64_t sub_214417724()
{
  result = qword_27C913028;
  if (!qword_27C913028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913028);
  }

  return result;
}

uint64_t sub_214417778()
{
  v0 = sub_2146DA098();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2144177C4(uint64_t a1)
{
  *(a1 + 8) = sub_21431D6EC();
  result = sub_21431D644();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214417804()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (v6)
  {
    v7 = v6;
    [v6 writeUint32:v1 forTag:1];
    if (!v2)
    {
      goto LABEL_8;
    }

    v8 = sub_2146D9588();

    [v7 writeString:v8 forTag:2];

    if (v4 >> 60 == 15)
    {
      goto LABEL_8;
    }

    sub_21402D9F8(v5, v4);
    v9 = sub_2146D8A38();
    sub_213FDC6BC(v5, v4);
    [v7 writeData:v9 forTag:3];

    v10 = [v7 immutableData];
    if (v10)
    {
      v11 = v10;

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21441797C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144179C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214417A24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_214417A7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_u64[1];

  sub_213FDC6BC(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214417AE4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214417B60()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 64);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214417C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214417D60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214417DFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t sub_214417E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 64);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

uint64_t sub_214417F08(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214417FB8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_214418084(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 72);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 64);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_214418124;
  }

  return result;
}

uint64_t sub_214418124(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_214418264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2144182B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v9, v10);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

void (*sub_214418340(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2144183E0;
}

void sub_2144183E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 56);
  v9 = *(v3 + 64);
  v11 = *(v3 + 72);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v11);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6BC(v14, v15);
  }

  else
  {
    v16 = *(v3 + 56);

    sub_213FDC6BC(v9, v11);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

void sub_2144184C4(uint64_t a1@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(MEMORY[0x277D43170]);
  v3 = sub_2146D8A38();
  v4 = [v2 initWithData_];

  v5 = [v4 position];
  if (v5 >= [v4 length])
  {
    v7 = 0;
    v9 = 0xF000000000000000;
LABEL_43:
    sub_213FDC6BC(v7, v9);

    goto LABEL_44;
  }

  v6 = 0;
  v40 = 0;
  v7 = 0;
  v39 = 0;
  v8 = 1;
  v9 = 0xF000000000000000;
  do
  {
    if ([v4 hasError])
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v41 = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (v41 & 0x7F) << v11;
      if ((v41 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      if (v12++ >= 9)
      {
        v18 = 0;
        goto LABEL_18;
      }
    }

    if ([v4 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

LABEL_18:
    if ([v4 hasError])
    {
      goto LABEL_43;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) == 3)
    {
      v30 = PBReaderReadData();
      if (v30)
      {
        v31 = v30;
        v32 = sub_2146D8A58();
        v34 = v33;
        sub_213FDC6BC(v7, v9);

        v7 = v32;
        v9 = v34;
      }

      else
      {
        sub_213FDC6BC(v7, v9);
        v7 = 0;
        v9 = 0xF000000000000000;
      }
    }

    else if (v19 == 2)
    {

      v27 = PBReaderReadString();
      if (v27)
      {
        v28 = v27;
        v40 = sub_2146D95B8();
        v6 = v29;
      }

      else
      {
        v40 = 0;
        v6 = 0;
      }
    }

    else if (v19 == 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v41 = 0;
        v23 = [v4 position] + 1;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
        {
          v25 = [v4 data];
          [v25 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v22 |= (v41 & 0x7F) << v20;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        if (v21++ > 8)
        {
          v39 = 0;
          v8 = 0;
          goto LABEL_4;
        }
      }

      v8 = 0;
      v35 = [v4 hasError] ? 0 : v22;
      v39 = v35;
    }

    else
    {
      PBReaderSkipValueWithTag();
    }

LABEL_4:
    v10 = [v4 position];
  }

  while (v10 < [v4 length]);
  if (v8)
  {
    goto LABEL_43;
  }

  if (v6)
  {
    if (v9 >> 60 != 15)
    {
      sub_21402D9F8(v7, v9);
      sub_2141FFB68(v39, v40, v6, v7, v9, v42);
      sub_213FDC6BC(v7, v9);

      v37 = v42[3];
      *(a1 + 32) = v42[2];
      *(a1 + 48) = v37;
      *(a1 + 64) = v42[4];
      *(a1 + 80) = v43;
      v38 = v42[1];
      *a1 = v42[0];
      *(a1 + 16) = v38;
      goto LABEL_45;
    }
  }

  else
  {
    sub_213FDC6BC(v7, v9);
  }

LABEL_44:
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
LABEL_45:
  v36 = *MEMORY[0x277D85DE8];
}

unint64_t sub_214418944(uint64_t a1)
{
  *(a1 + 8) = sub_2143207B4();
  result = sub_2143205C8();
  *(a1 + 16) = result;
  return result;
}

uint64_t JPEGEncoder.encode(imageSource:)()
{
  sub_2144189EC();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

unint64_t sub_2144189EC()
{
  result = qword_27C913030;
  if (!qword_27C913030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913030);
  }

  return result;
}

uint64_t JPEGEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t JPEGEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_214418B48@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_214418B94()
{
  sub_2144189EC();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t sub_214418C14()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

void sub_214418C68(CGImageSource *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImageFromSource(v8, a1, 0, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_2144189EC();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_2144189EC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

const __CFDictionary *sub_214418F14(CGImage *a1)
{
  v2 = v1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = sub_2146D9588();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
    inited = swift_initStackObject();
    v8 = MEMORY[0x277CD3678];
    *(inited + 16) = xmmword_2146E6910;
    v9 = *v8;
    *(inited + 32) = v9;
    *(inited + 40) = 0;
    v10 = *MEMORY[0x277CD35A0];
    *(inited + 48) = *MEMORY[0x277CD35A0];
    *(inited + 56) = 1;
    v22 = v9;
    v11 = v10;
    sub_214046938(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    v2 = sub_2143A6B04();
    v12 = sub_2146D9468();

    v13 = CGImageDestinationCreateWithData(v5, v6, 1uLL, v12);

    if (v13)
    {
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_2146E6910;
      *(v14 + 32) = v22;
      *(v14 + 40) = 0;
      *(v14 + 48) = v11;
      *(v14 + 56) = 1;
      v15 = v22;
      v16 = v11;
      sub_214046938(v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      v2 = sub_2146D9468();

      CGImageDestinationAddImage(v13, a1, v2);

      if (CGImageDestinationFinalize(v13))
      {
        v17 = v5;
        v2 = sub_2146D8A58();
      }

      else
      {
        sub_2144189EC();
        swift_allocError();
        *v20 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_2144189EC();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_2144189EC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return v2;
}

void sub_21441922C(CGImage *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImage(v8, a1, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_2144189EC();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_2144189EC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

unint64_t sub_214419538()
{
  result = qword_27C913038;
  if (!qword_27C913038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913038);
  }

  return result;
}

uint64_t sub_2144195EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_214419654(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2144196DC()
{
  v1 = (v0 + *(type metadata accessor for Metadata() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_214419708(uint64_t a1, char a2)
{
  result = type metadata accessor for Metadata();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2144197BC(char a1)
{
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_214419858(char a1)
{
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2144198D0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Metadata();
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t sub_214419910(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for Metadata();
  v5 = (v1 + *(result + 32));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

unint64_t sub_21441999C(uint64_t a1)
{
  *(a1 + 8) = sub_2142F93B0();
  result = sub_2142F9404();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144199CC(uint64_t a1)
{
  *(a1 + 8) = sub_214419A34(&qword_280B2E650);
  result = sub_214419A34(&qword_280B2E658);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214419A34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Metadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214419AA0()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_214419B38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214419B38()
{
  if (!qword_280B2E320)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E320);
    }
  }
}

uint64_t getEnumTagSinglePayload for Metadata.StorageContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Metadata.StorageContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_214419CDC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[12];
  v5 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    v8 = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v8;
    *(inited + 80) = 0x6B6361626C6C6166;
    *(inited + 88) = 0xEB000000006C7255;
    if (v4 != 1)
    {
      if (v4)
      {
        v9 = MEMORY[0x277D837D0];
        v10 = v3;
        v11 = v4;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v9 = 0;
        *(inited + 112) = 0;
      }

      *(inited + 96) = v10;
      *(inited + 104) = v11;
      *(inited + 120) = v9;
      *(inited + 128) = 0x7463656A627573;
      *(inited + 136) = 0xE700000000000000;
      if (!v5)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(inited + 160) = 0;
LABEL_10:
        *(inited + 144) = v12;
        *(inited + 152) = v13;
        *(inited + 168) = v14;
        v15 = inited;

        sub_213FDC9D0(v3, v4);
        sub_213FDC9D0(v6, v5);
        v16 = sub_214045690(v15);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        v17 = sub_2140418B8(v16);

        return v17;
      }

      if (v5 != 1)
      {
        v14 = MEMORY[0x277D837D0];
        v12 = v6;
        v13 = v5;
        goto LABEL_10;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214419EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6B6361626C6C6166;
  v4 = 0xEB000000006C7255;
  if (v2 != 1)
  {
    v3 = 0x7463656A627573;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  v7 = 0x6B6361626C6C6166;
  v8 = 0xEB000000006C7255;
  if (*a2 != 1)
  {
    v7 = 0x7463656A627573;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000726562;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_21441A000()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21441A0B4()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21441A154()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21441A204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21441A9E4();
  *a2 = result;
  return result;
}

void sub_21441A234(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0xEB000000006C7255;
  v5 = 0x6B6361626C6C6166;
  if (v2 != 1)
  {
    v5 = 0x7463656A627573;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D754E656E6F6870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21441A2A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21441A9E4();
  *a1 = result;
  return result;
}

uint64_t sub_21441A2CC(uint64_t a1)
{
  v2 = sub_21441A868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21441A308(uint64_t a1)
{
  v2 = sub_21441A868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21441A344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913050, "F&\t");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21441A868();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v26 = 1;
    v14 = sub_2146DA0F8();
    v16 = v15;
    v23 = v14;
    v26 = 2;
    v17 = sub_2146DA0F8();
    sub_2140FBCE0(v11, v13, v23, v16, v17, v19, v24);
    (*(v6 + 8))(v9, v5);
    v20 = v24[5];
    *(a2 + 64) = v24[4];
    *(a2 + 80) = v20;
    *(a2 + 96) = v24[6];
    *(a2 + 112) = v25;
    v21 = v24[1];
    *a2 = v24[0];
    *(a2 + 16) = v21;
    v22 = v24[3];
    *(a2 + 32) = v24[2];
    *(a2 + 48) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21441A5B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913060, &unk_21473D518);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[7];
  v17 = v1[8];
  v18 = v10;
  v11 = v1[12];
  v15 = v1[13];
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21441A868();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_7;
  }

  LOBYTE(v20) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v19 + 8))(v7, v4);
  }

  if (v17 == 1 || (v20 = v18, v21 = v17, v22 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v15 == 1))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v20 = v16;
    v21 = v15;
    v22 = 2;
    sub_2146DA388();
    return (*(v19 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_21441A868()
{
  result = qword_27C913058;
  if (!qword_27C913058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913058);
  }

  return result;
}

unint64_t sub_21441A8E0()
{
  result = qword_27C913068;
  if (!qword_27C913068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913068);
  }

  return result;
}

unint64_t sub_21441A938()
{
  result = qword_27C913070;
  if (!qword_27C913070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913070);
  }

  return result;
}

unint64_t sub_21441A990()
{
  result = qword_27C913078;
  if (!qword_27C913078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913078);
  }

  return result;
}

uint64_t sub_21441A9E4()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21441AA30()
{
  sub_21441AA84();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21441AA84()
{
  v1 = v0;
  v2 = *v0 + 1;
  v12 = MEMORY[0x277D83B88];
  *&v11 = v2;
  sub_213FDC730(&v11, v10);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 1835365481, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v5 = *v1;
  if (v5 <= 1)
  {
    v6 = sub_2146D0DE4();
  }

  else if (v5 == 2)
  {
    v6 = sub_2146D080C();
  }

  else if (v5 == 3)
  {
    v6 = sub_2146D0B24();
  }

  else
  {
    v6 = sub_2146D1320();
  }

  v12 = MEMORY[0x277CC9318];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  sub_213FDC730(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 0x64616F6C796170, 0xE700000000000000, v8);
  return v3;
}

uint64_t sub_21441ACBC()
{
  sub_21441AA84();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21441AD10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v277 = v263 - v4;
  v5 = type metadata accessor for CloudKitShareParticipant(0);
  v275 = *(v5 - 8);
  v276 = v5;
  v6 = *(v275 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v263 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v273 = v263 - v15;
  MEMORY[0x28223BE20](v14);
  v272 = v263 - v16;
  v17 = sub_2146D8B08();
  v280 = *(v17 - 8);
  v281 = v17;
  v18 = *(v280 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v268 = v263 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v267 = v263 - v22;
  MEMORY[0x28223BE20](v21);
  v266 = v263 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v265 = v263 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v263 - v28;
  v30 = type metadata accessor for HealthSharingSetupMetadata(0);
  v278 = *(v30 - 8);
  v279 = v30;
  v31 = *(v278 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v271 = v263 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v264 = v263 - v34;
  v35 = type metadata accessor for HealthSummarySharingEntry(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = v263 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v263[1] = v35;
  v39 = *(v35 + 20);
  if (qword_27C9030D0 != -1)
  {
    swift_once();
  }

  *&v38[v39] = qword_27C913FF0;
  v40 = *(v1 + 24);
  v274 = v13;
  v269 = v8;
  if (!v40)
  {

    v41 = *(v1 + 64);
    if (!v41)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v40 == 1)
  {
    goto LABEL_97;
  }

  v42 = *(v1 + 16);

  sub_213FDC9D0(v42, v40);
  v43 = *&v38[v39];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *&v38[v39];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_21446FF10(v45);

    *&v38[v39] = v49;
    v45 = v49;
  }

  swift_beginAccess();
  v50 = *(v45 + 24);
  *(v45 + 16) = v42;
  *(v45 + 24) = v40;

  v41 = *(v1 + 64);
  if (v41)
  {
LABEL_10:
    if (v41 == 1)
    {
      goto LABEL_97;
    }

    v51 = *(v1 + 56);

    v52 = *&v38[v39];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *&v38[v39];
    if ((v53 & 1) == 0)
    {
      v55 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_allocObject();
      v58 = sub_21446FF10(v54);

      *&v38[v39] = v58;
      v54 = v58;
    }

    swift_beginAccess();
    v59 = *(v54 + 40);
    *(v54 + 32) = v51;
    *(v54 + 40) = v41;
  }

LABEL_14:
  v60 = *(v1 + 96);
  if (!v60)
  {
    goto LABEL_97;
  }

  v61 = *(v1 + 96);

  v62 = *&v38[v39];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *&v38[v39];
  if ((v63 & 1) == 0)
  {
    v65 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = sub_21446FF10(v64);

    *&v38[v39] = v68;
    v64 = v68;
  }

  swift_beginAccess();
  v69 = *(v64 + 48);
  *(v64 + 48) = v60;

  v70 = *(v1 + 120);
  if (v70)
  {
    v71 = *(v1 + 112);
    v72 = *(v1 + 120);

    v73 = *&v38[v39];
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v75 = *&v38[v39];
    if ((v74 & 1) == 0)
    {
      v76 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      v79 = sub_21446FF10(v75);

      *&v38[v39] = v79;
      v75 = v79;
    }

    swift_beginAccess();
    v80 = *(v75 + 64);
    *(v75 + 56) = v71;
    *(v75 + 64) = v70;
  }

  v81 = *(v1 + 136);
  if (v81)
  {
    v82 = *(v1 + 128);
    v83 = *(v1 + 136);

    v84 = *&v38[v39];
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *&v38[v39];
    if ((v85 & 1) == 0)
    {
      v87 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      swift_allocObject();
      v90 = sub_21446FF10(v86);

      *&v38[v39] = v90;
      v86 = v90;
    }

    swift_beginAccess();
    v91 = *(v86 + 80);
    *(v86 + 72) = v82;
    *(v86 + 80) = v81;
  }

  v92 = *(v1 + 144);
  if (v92 != 2)
  {
    v93 = *&v38[v39];
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *&v38[v39];
    if ((v94 & 1) == 0)
    {
      v96 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      v99 = sub_21446FF10(v95);

      *&v38[v39] = v99;
      v95 = v99;
    }

    swift_beginAccess();
    *(v95 + 88) = v92 & 1;
  }

  v100 = *(v1 + 145);
  if (v100 != 2)
  {
    v101 = *&v38[v39];
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *&v38[v39];
    if ((v102 & 1) == 0)
    {
      v104 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      swift_allocObject();
      v107 = sub_21446FF10(v103);

      *&v38[v39] = v107;
      v103 = v107;
    }

    swift_beginAccess();
    *(v103 + 89) = v100 & 1;
  }

  v108 = *(v1 + 146);
  if (v108 != 5)
  {
    v109 = *&v38[v39];
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *&v38[v39];
    if ((v110 & 1) == 0)
    {
      v112 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v113 = *(v112 + 48);
      v114 = *(v112 + 52);
      swift_allocObject();
      v115 = sub_21446FF10(v111);

      *&v38[v39] = v115;
      v111 = v115;
    }

    swift_beginAccess();
    *(v111 + 90) = v108;
  }

  v116 = v1;
  v117 = v282;
  sub_2144201A0(v29);
  v118 = v117;
  if (v117)
  {
    goto LABEL_38;
  }

  if ((*(v278 + 48))(v29, 1, v279) == 1)
  {
    sub_213FB2DF4(v29, &qword_27C913098, qword_21473D710);
    v120 = v280;
    v121 = v272;
  }

  else
  {
    v122 = v29;
    v123 = v264;
    sub_2144247CC(v122, v264, type metadata accessor for HealthSharingSetupMetadata);
    sub_214424694(v123, v271, type metadata accessor for HealthSharingSetupMetadata);
    v124 = *&v38[v39];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2144246FC(v123, type metadata accessor for HealthSharingSetupMetadata);
      v125 = *&v38[v39];
    }

    else
    {
      v126 = *&v38[v39];
      v127 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v128 = *(v127 + 48);
      v129 = *(v127 + 52);
      swift_allocObject();

      v125 = sub_21446FF10(v130);

      sub_2144246FC(v123, type metadata accessor for HealthSharingSetupMetadata);

      *&v38[v39] = v125;
    }

    v121 = v272;
    v131 = v265;
    sub_2144247CC(v271, v265, type metadata accessor for HealthSharingSetupMetadata);
    (*(v278 + 56))(v131, 0, 1, v279);
    v132 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
    swift_beginAccess();
    sub_214423A00(v131, v125 + v132);
    swift_endAccess();
    v120 = v280;
  }

  v133 = type metadata accessor for IDSHealthInvitation(0);
  sub_213FB2E54(v1 + *(v133 + 52), v121, &qword_27C913090, &unk_2146E9DB0);
  v134 = v281;
  v278 = *(v120 + 48);
  v279 = v120 + 48;
  v135 = (v278)(v121, 1, v281);
  v282 = v133;
  v270 = 0;
  if (v135 == 1)
  {
    sub_213FB2DF4(v121, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    v136 = v266;
    (*(v120 + 32))(v266, v121, v134);
    v137 = v120;
    sub_2146D8AC8();
    v139 = v138;
    v140 = *&v38[v39];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v120 + 8))(v136, v134);
      v141 = *&v38[v39];
    }

    else
    {
      v142 = *&v38[v39];
      v143 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v144 = *(v143 + 48);
      v145 = *(v143 + 52);
      swift_allocObject();

      v141 = sub_21446FF10(v146);

      (*(v137 + 8))(v136, v281);
      v134 = v281;

      *&v38[v39] = v141;
    }

    v147 = v141 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
    swift_beginAccess();
    *v147 = v139;
    *(v147 + 8) = 0;
    v120 = v280;
    v118 = v270;
    v133 = v282;
  }

  v148 = v1 + *(v133 + 56);
  v149 = v273;
  sub_213FB2E54(v148, v273, &qword_27C913090, &unk_2146E9DB0);
  if ((v278)(v149, 1, v134) == 1)
  {
    sub_213FB2DF4(v149, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    v150 = v267;
    (*(v120 + 32))(v267, v149, v134);
    v151 = v120;
    sub_2146D8AC8();
    v153 = v152;
    v154 = *&v38[v39];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v120 + 8))(v150, v134);
      v155 = *&v38[v39];
    }

    else
    {
      v156 = *&v38[v39];
      v157 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v158 = *(v157 + 48);
      v159 = *(v157 + 52);
      swift_allocObject();

      v155 = sub_21446FF10(v160);

      (*(v151 + 8))(v150, v281);
      v134 = v281;

      *&v38[v39] = v155;
    }

    v161 = v155 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
    swift_beginAccess();
    *v161 = v153;
    *(v161 + 8) = 0;
    v120 = v280;
    v118 = v270;
  }

  v162 = v274;
  sub_213FB2E54(v1 + v282[15], v274, &qword_27C913090, &unk_2146E9DB0);
  if ((v278)(v162, 1, v134) == 1)
  {
    sub_213FB2DF4(v162, &qword_27C913090, &unk_2146E9DB0);
    v163 = v282;
  }

  else
  {
    v164 = v268;
    (*(v120 + 32))(v268, v162, v134);
    v165 = v120;
    sub_2146D8AC8();
    v167 = v166;
    v168 = *&v38[v39];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v120 + 8))(v164, v134);
      v169 = *&v38[v39];
    }

    else
    {
      v170 = v134;
      v171 = *&v38[v39];
      v172 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v173 = *(v172 + 48);
      v174 = *(v172 + 52);
      swift_allocObject();

      v169 = sub_21446FF10(v175);

      (*(v165 + 8))(v164, v170);

      *&v38[v39] = v169;
    }

    v163 = v282;
    v176 = v169 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
    swift_beginAccess();
    *v176 = v167;
    *(v176 + 8) = 0;
    v118 = v270;
  }

  v177 = v1 + v163[16];
  v178 = *(v177 + 24);
  if (v178)
  {
    if (v178 == 1)
    {
      goto LABEL_97;
    }

    v179 = *(v177 + 16);
    v180 = *(v177 + 24);

    v181 = *&v38[v39];
    v182 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *&v38[v39];
    if ((v182 & 1) == 0)
    {
      v184 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v185 = *(v184 + 48);
      v186 = *(v184 + 52);
      swift_allocObject();
      v187 = sub_21446FF10(v183);

      *&v38[v39] = v187;
      v183 = v187;
    }

    v188 = (v183 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
    swift_beginAccess();
    v189 = v188[1];
    *v188 = v179;
    v188[1] = v178;

    v118 = v270;
  }

  v190 = v1 + v163[17];
  v191 = *(v190 + 24);
  if (v191)
  {
    if (v191 == 1)
    {
      goto LABEL_97;
    }

    v192 = *(v190 + 16);
    v193 = *(v190 + 24);

    v194 = *&v38[v39];
    v195 = swift_isUniquelyReferenced_nonNull_native();
    v196 = *&v38[v39];
    if ((v195 & 1) == 0)
    {
      v197 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v198 = *(v197 + 48);
      v199 = *(v197 + 52);
      swift_allocObject();
      v200 = sub_21446FF10(v196);

      *&v38[v39] = v200;
      v196 = v200;
    }

    v201 = (v196 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
    swift_beginAccess();
    v202 = v201[1];
    *v201 = v192;
    v201[1] = v191;

    v118 = v270;
  }

  v203 = v277;
  sub_213FB2E54(v1 + v163[18], v277, &qword_27C907570, &qword_214732A10);
  if ((*(v275 + 48))(v203, 1, v276) == 1)
  {
    sub_213FB2DF4(v203, &qword_27C907570, &qword_214732A10);
  }

  else
  {
    v245 = v269;
    sub_2144247CC(v203, v269, type metadata accessor for CloudKitShareParticipant);
    v116 = v245;
    v246 = sub_21462F008();
    if (v118)
    {
      sub_2144246FC(v245, type metadata accessor for CloudKitShareParticipant);
LABEL_38:
      sub_2144246FC(v38, type metadata accessor for HealthSummarySharingEntry);
      return v116;
    }

    v247 = v246;
    v248 = sub_214633900();
    v118 = 0;
    v250 = v249;
    v281 = v248;

    v251 = *&v38[v39];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2144246FC(v245, type metadata accessor for CloudKitShareParticipant);
      v252 = *&v38[v39];
    }

    else
    {
      v253 = v245;
      v254 = *&v38[v39];
      v255 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v256 = *(v255 + 48);
      v257 = *(v255 + 52);
      swift_allocObject();

      v252 = sub_21446FF10(v258);

      v259 = v253;
      v118 = 0;
      v163 = v282;
      sub_2144246FC(v259, type metadata accessor for CloudKitShareParticipant);

      *&v38[v39] = v252;
    }

    v260 = (v252 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
    swift_beginAccess();
    v261 = *v260;
    v262 = v260[1];
    *v260 = v281;
    v260[1] = v250;
    sub_213FDC6BC(v261, v262);
  }

  v204 = *(v1 + v163[19]);
  if (v204 != 3)
  {
    v205 = *&v38[v39];
    v206 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *&v38[v39];
    if ((v206 & 1) == 0)
    {
      v208 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v209 = *(v208 + 48);
      v210 = *(v208 + 52);
      swift_allocObject();
      v211 = sub_21446FF10(v207);

      *&v38[v39] = v211;
      v207 = v211;
    }

    v212 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
    swift_beginAccess();
    *(v207 + v212) = v204;
  }

  v116 = v1;
  v213 = sub_214420C54();
  if (v118)
  {
    goto LABEL_38;
  }

  v214 = v213;
  v215 = *&v38[v39];
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *&v38[v39];
  if ((v216 & 1) == 0)
  {
    v218 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    v219 = *(v218 + 48);
    v220 = *(v218 + 52);
    swift_allocObject();
    v221 = sub_21446FF10(v217);

    *&v38[v39] = v221;
    v217 = v221;
  }

  v222 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v223 = *(v217 + v222);
  *(v217 + v222) = v214;

  v224 = *(v1 + v163[21]);
  if (v224 != 3)
  {
    v225 = *&v38[v39];
    v226 = swift_isUniquelyReferenced_nonNull_native();
    v227 = *&v38[v39];
    if ((v226 & 1) == 0)
    {
      v228 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v229 = *(v228 + 48);
      v230 = *(v228 + 52);
      swift_allocObject();
      v231 = sub_21446FF10(v227);

      *&v38[v39] = v231;
      v227 = v231;
    }

    v232 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
    swift_beginAccess();
    *(v227 + v232) = v224;
  }

  v233 = v1 + v163[22];
  v234 = *(v233 + 16);
  if (v234)
  {
    v235 = *(v233 + 16);

    v236 = *&v38[v39];
    v237 = swift_isUniquelyReferenced_nonNull_native();
    v238 = *&v38[v39];
    if ((v237 & 1) == 0)
    {
      v239 = type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      v240 = *(v239 + 48);
      v241 = *(v239 + 52);
      swift_allocObject();
      v242 = sub_21446FF10(v238);

      *&v38[v39] = v242;
      v238 = v242;
    }

    v243 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
    swift_beginAccess();
    v244 = *(v238 + v243);
    *(v238 + v243) = v234;

    sub_21442464C(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry);
    v116 = sub_2146D8FC8();
    sub_2144246FC(v38, type metadata accessor for HealthSummarySharingEntry);
    return v116;
  }

LABEL_97:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21441C084(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21441C14C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x216054E00](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2146DA028();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_21441C288@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v397 = a2;
  v398 = a1;
  v401 = type metadata accessor for IDSHealthInvitation(0);
  v4 = *(*(v401 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v401);
  v377 = (&v350 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v371 = &v350 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v376 = &v350 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v380 = &v350 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v372 = &v350 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v382 = &v350 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v373 = &v350 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v374 = &v350 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v375 = &v350 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v384 = &v350 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v385 = &v350 - v29;
  MEMORY[0x28223BE20](v28);
  v386 = &v350 - v30;
  v31 = sub_2146D8E18();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v388 = (&v350 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v389 = type metadata accessor for HealthSummarySharingEntry(0);
  v34 = *(*(v389 - 8) + 64);
  MEMORY[0x28223BE20](v389);
  v399 = &v350 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v36 = swift_allocObject();
  v403 = xmmword_2146E9BF0;
  *(v36 + 16) = xmmword_2146E9BF0;
  v37 = swift_allocObject();
  *(v37 + 16) = v403;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_21405980C;
  *(v38 + 24) = 0;
  *(v37 + 32) = v38;
  v39 = sub_2142E0070(v37);
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v40 = swift_allocObject();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v40 + 16) = sub_21403254C;
  *(v40 + 24) = v41;
  *(v36 + 32) = v40;
  sub_214042A28(v36, a3);
  v42 = swift_allocObject();
  *(v42 + 16) = v403;
  v43 = swift_allocObject();
  *(v43 + 16) = v403;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_21403281C;
  *(v44 + 24) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_21439DF24;
  *(v45 + 24) = 0;
  v46 = swift_allocObject();
  v400 = xmmword_2146EAEB0;
  *(v46 + 16) = xmmword_2146EAEB0;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_214423A70;
  *(v47 + 24) = v44;
  *(v46 + 32) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_214424834;
  *(v48 + 24) = v45;
  *(v46 + 40) = v48;
  v49 = swift_allocObject();
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v49 + 16) = sub_214423A74;
  *(v49 + 24) = v50;
  *(v43 + 32) = v49;
  v51 = sub_2142E0070(v43);
  v52 = swift_allocObject();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v52 + 16) = sub_214032610;
  *(v52 + 24) = v53;
  *(v42 + 32) = v52;
  sub_214042A28(v42, a3 + 40);
  v54 = swift_allocObject();
  *(v54 + 16) = v403;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_21403281C;
  *(v55 + 24) = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_21439DFC4;
  *(v56 + 24) = 0;
  v57 = swift_allocObject();
  *(v57 + 16) = v400;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_214424834;
  *(v58 + 24) = v55;
  *(v57 + 32) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_214424834;
  *(v59 + 24) = v56;
  *(v57 + 40) = v59;
  v60 = swift_allocObject();
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  *(v60 + 16) = sub_214424838;
  *(v60 + 24) = v61;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_21408E9E0;
  *(v62 + 24) = v60;
  *(v54 + 32) = v62;
  sub_2140433DC(v54, a3 + 80);
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 514;
  *(a3 + 146) = 5;
  v63 = v401;
  v64 = *(v401 + 48);
  v65 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v66 = *(*(v65 - 8) + 56);
  v395 = v64;
  v66(a3 + v64, 1, 1, v65);
  v67 = v63[13];
  v68 = sub_2146D8B08();
  v69 = *(v68 - 8);
  v70 = *(v69 + 56);
  v71 = v69 + 56;
  v393 = v67;
  v70(a3 + v67, 1, 1, v68);
  v391 = v63[14];
  v70(a3 + v391, 1, 1, v68);
  v392 = v63[15];
  v381 = v68;
  v383 = v70;
  v396 = v71;
  v70(a3 + v392, 1, 1, v68);
  v72 = v63;
  v73 = a3 + v63[16];
  v74 = swift_allocObject();
  *(v74 + 16) = v403;
  v75 = swift_allocObject();
  *(v75 + 16) = v403;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_214059900;
  *(v76 + 24) = 0;
  *(v75 + 32) = v76;
  v77 = sub_2142E0070(v75);
  v78 = swift_allocObject();
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  *(v78 + 16) = sub_214032610;
  *(v78 + 24) = v79;
  *(v74 + 32) = v78;
  v394 = v73;
  sub_214042A28(v74, v73);
  v80 = a3 + v72[17];
  v81 = swift_allocObject();
  *(v81 + 16) = v403;
  v82 = swift_allocObject();
  *(v82 + 16) = v400;
  v83 = swift_allocObject();
  v84 = swift_allocObject();
  v84[2] = sub_213FDC8D0;
  v84[3] = 0;
  v84[4] = 1;
  v84[5] = sub_21403C354;
  v84[6] = 0;
  *(v83 + 16) = sub_214059860;
  *(v83 + 24) = v84;
  *(v82 + 32) = v83;
  v85 = swift_allocObject();
  v86 = swift_allocObject();
  v86[2] = sub_213FB7994;
  v86[3] = 0;
  v86[4] = 255;
  v86[5] = sub_21403C354;
  v86[6] = 0;
  *(v85 + 16) = sub_21439DF90;
  *(v85 + 24) = v86;
  *(v82 + 40) = v85;
  v87 = v82;
  v88 = v399;
  v89 = sub_2142E0070(v87);
  v90 = swift_allocObject();
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  *(v90 + 16) = sub_214032610;
  *(v90 + 24) = v91;
  *(v81 + 32) = v90;
  v92 = a3;
  v402 = v80;
  sub_214042A28(v81, v80);
  v93 = v401;
  v94 = *(v401 + 72);
  v95 = type metadata accessor for CloudKitShareParticipant(0);
  v96 = *(v95 - 1);
  v97 = *(v96 + 56);
  *&v400 = v94;
  v378 = v96 + 56;
  v379 = v97;
  v97(a3 + v94, 1, 1, v95);
  *(a3 + v93[19]) = 3;
  *(a3 + v93[21]) = 3;
  v98 = a3 + v93[22];
  v99 = swift_allocObject();
  *(v99 + 16) = v403;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_21442228C;
  *(v100 + 24) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_21439DF64;
  *(v101 + 24) = v100;
  *(v99 + 32) = v101;
  sub_2140433DC(v99, v98);
  *&v418 = v398;
  *(&v418 + 1) = v397;
  v424 = 0;
  v422 = 0u;
  v423 = 0u;
  v102 = v398;
  v103 = v397;
  sub_21402D9F8(v398, v397);
  sub_2146D8E08();
  sub_21442464C(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry);
  v104 = v390;
  v105 = v389;
  sub_2146D8FD8();
  *&v403 = v104;
  if (v104)
  {
    sub_213FB54FC(v102, v103);
LABEL_39:
    v157 = v400;
LABEL_40:
    v158 = v92[1];
    v159 = v92[2];
    v160 = v92[3];

    sub_213FDC6D0(v159, v160);
    v161 = v92[6];
    v162 = v92[7];
    v163 = v92[8];

    sub_213FDC6D0(v162, v163);
    v164 = v92[11];
    v165 = v92[12];

    sub_213FB2DF4(v92 + v395, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v92 + v393, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v92 + v391, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v92 + v392, &qword_27C913090, &unk_2146E9DB0);
    v166 = v394[1];
    v167 = v394[2];
    v168 = v394[3];

    sub_213FDC6D0(v167, v168);
    v169 = v402[1];
    v170 = v402[2];
    v171 = v402[3];

    sub_213FDC6D0(v170, v171);
    sub_213FB2DF4(v92 + v157, &qword_27C907570, &qword_214732A10);
    v172 = *(v98 + 8);
    v173 = *(v98 + 16);
  }

  v369 = v95;
  v106 = v381;
  v387 = v98;
  v388 = v92;
  v107 = *(v88 + *(v105 + 20));
  swift_beginAccess();
  v108 = *(v107 + 16);
  v109 = *(v107 + 24);
  if (v109)
  {
    v110 = *(v107 + 16);
  }

  else
  {
    v110 = 0;
  }

  swift_beginAccess();
  v111 = *(v107 + 32);
  v112 = *(v107 + 40);
  if (!v112)
  {
    v111 = 0;
  }

  v362 = v111;
  swift_beginAccess();
  v113 = *(v107 + 56);
  v114 = *(v107 + 64);
  if (!v114)
  {
    v113 = 0;
  }

  v367 = v113;
  swift_beginAccess();
  v115 = *(v107 + 72);
  v116 = *(v107 + 80);
  if (!v116)
  {
    v115 = 0;
  }

  v366 = v115;
  swift_beginAccess();
  v117 = *(v107 + 88);
  if (v117 == 2)
  {
    v118 = 2;
  }

  else
  {
    v118 = v117 & 1;
  }

  LODWORD(v365) = v118;
  swift_beginAccess();
  v119 = *(v107 + 89);
  if (v119 == 2)
  {
    v120 = 2;
  }

  else
  {
    v120 = v119 & 1;
  }

  LODWORD(v364) = v120;
  swift_beginAccess();
  LODWORD(v363) = *(v107 + 90);
  v121 = (v107 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified);
  swift_beginAccess();
  v122 = *(v121 + 8);
  v389 = v112;
  v390 = v109;
  if (v122)
  {
    v383(v386, 1, 1, v106);
  }

  else
  {
    v123 = *v121;

    v124 = v386;
    sub_2146D8AB8();
    v383(v124, 0, 1, v106);
  }

  v125 = v385;
  v126 = v403;
  v127 = (v107 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted);
  swift_beginAccess();
  if (v127[1])
  {
    v128 = 1;
  }

  else
  {
    v129 = *v127;
    sub_2146D8AB8();
    v128 = 0;
  }

  v370 = v116;
  v368 = v110;
  v130 = 1;
  v131 = v106;
  v132 = v383;
  v383(v125, v128, 1, v106);
  v133 = (v107 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited);
  swift_beginAccess();
  v134 = v384;
  if ((v133[1] & 1) == 0)
  {
    v135 = *v133;
    sub_2146D8AB8();
    v130 = 0;
  }

  v132(v134, v130, 1, v131);
  v136 = (v107 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v137 = *v136;
  v138 = v136[1];
  if (!v138)
  {
    v137 = 0;
  }

  v381 = v137;
  v139 = (v107 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v140 = *v139;
  v141 = v139[1];
  if (!v141)
  {
    v140 = 0;
  }

  v361 = v140;
  v142 = (v107 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v143 = v142[1];
  if (v143 >> 60 == 15)
  {
    v144 = v382;
    v379(v382, 1, 1, v369);
    v396 = v141;

    v383 = v138;

    v145 = v399;
    v146 = v126;
  }

  else
  {
    v147 = *v142;

    sub_213FDCA18(v147, v143);
    v144 = v382;
    v148 = v126;
    sub_21462EA3C(v147, v143, v382);
    v149 = v141;
    v146 = v148;
    if (v148)
    {

      sub_213FB54FC(v398, v397);
      sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
      v150 = v399;
LABEL_38:
      sub_2144246FC(v150, type metadata accessor for HealthSummarySharingEntry);
      v98 = v387;
      v92 = v388;
      goto LABEL_39;
    }

    v383 = v138;
    v396 = v149;
    v379(v144, 0, 1, v369);
    v145 = v399;
  }

  v151 = v114;
  v152 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  v153 = *(v107 + v152);
  v154 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  v155 = *(v107 + v154);
  v156 = v380;
  sub_21441EA2C(v145, v380);
  if (v146)
  {

    sub_213FB54FC(v398, v397);
    sub_213FB2DF4(v144, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v150 = v145;
    goto LABEL_38;
  }

  v369 = sub_214423F94(v145);
  swift_beginAccess();
  LODWORD(v360) = v153;
  v379 = *(v107 + 48);
  *&v403 = 0;
  v358 = v151;
  v175 = v376;
  sub_213FB2E54(v156, v376, &qword_27C907568, &unk_2146F4AA0);
  v176 = v144;
  v177 = v375;
  sub_213FB2E54(v386, v375, &qword_27C913090, &unk_2146E9DB0);
  LODWORD(v359) = v155;
  v178 = v374;
  sub_213FB2E54(v385, v374, &qword_27C913090, &unk_2146E9DB0);
  v179 = v373;
  sub_213FB2E54(v384, v373, &qword_27C913090, &unk_2146E9DB0);
  v180 = v176;
  v181 = v372;
  sub_213FB2E54(v180, v372, &qword_27C907570, &qword_214732A10);
  v182 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  v183 = *(v107 + v182);
  v184 = v401;
  v185 = v377;
  sub_213FB2E54(v175, v377 + *(v401 + 48), &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2E54(v177, v185 + v184[13], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v178, v185 + v184[14], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v179, v185 + v184[15], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v181, v185 + v184[18], &qword_27C907570, &qword_214732A10);

  v378 = v183;

  sub_214392E94(&v422);
  v186 = v423;
  v357 = v424;
  sub_214392EC8(&v418);
  v187 = v419;
  v350 = v420;
  LOBYTE(v178) = v421;
  sub_2143930D8(&v415);
  v188 = v416;
  LOBYTE(v181) = v417;
  sub_214393298(&v411);
  v355 = v413;
  v356 = v412;
  v354 = v414;
  sub_2143932CC(&v407);
  v352 = v409;
  v353 = v408;
  v351 = v410;
  sub_2143934A4(&v404);
  v189 = v405;
  v190 = v406;
  *v185 = v422;
  *(v185 + 1) = v186;
  *(v185 + 32) = v357;
  *(v185 + 5) = v418;
  v191 = v350;
  v185[7] = v187;
  v185[8] = v191;
  *(v185 + 72) = v178;
  *(v185 + 5) = v415;
  v185[12] = v188;
  *(v185 + 104) = v181;
  v192 = v358;
  v185[14] = v367;
  v185[15] = v192;
  v193 = v370;
  v185[16] = v366;
  v185[17] = v193;
  *(v185 + 144) = v365;
  *(v185 + 145) = v364;
  *(v185 + 146) = v363;
  v194 = v185 + v184[16];
  *v194 = v411;
  v195 = v355;
  *(v194 + 2) = v356;
  *(v194 + 3) = v195;
  v194[32] = v354;
  v196 = v185 + v184[17];
  *v196 = v407;
  v197 = v352;
  *(v196 + 2) = v353;
  *(v196 + 3) = v197;
  v196[32] = v351;
  *(v185 + v184[19]) = v360;
  *(v185 + v184[20]) = v369;
  *(v185 + v184[21]) = v359;
  v198 = v185 + v184[22];
  *v198 = v404;
  *(v198 + 2) = v189;
  v198[24] = v190;
  v200 = *v185;
  v199 = v185[1];
  v201 = v185[2];
  v202 = v185[3];
  v203 = *(v185 + 32);
  *&v418 = v368;
  *(&v418 + 1) = v390;
  LODWORD(v370) = v203;
  LOBYTE(v411) = v203;
  *&v422 = 0xD000000000000018;
  *(&v422 + 1) = 0x800000021478E740;
  v365 = 0x800000021478E740;
  *&v423 = 0xD00000000000001CLL;
  *(&v423 + 1) = 0x800000021478A360;

  v369 = v201;
  v367 = v202;
  sub_213FDC9D0(v201, v202);
  v366 = v199;
  v204 = v403;
  v401 = v200;
  v205 = v200(&v418, &v411, &v422);
  if (v204)
  {
    *&v403 = v204;

LABEL_47:

    v229 = v398;
    v230 = v374;

    sub_213FB54FC(v229, v397);
    sub_213FB2DF4(v372, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v373, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v230, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v375, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v231 = v377;
    v232 = v377[1];
    v233 = v377[2];
    v234 = v377[3];

    sub_213FDC6D0(v233, v234);
    v235 = v366;
    *v231 = v401;
    *(v231 + 8) = v235;
    v236 = v367;
    *(v231 + 16) = v369;
    *(v231 + 24) = v236;
    *(v231 + 32) = v370;
LABEL_48:
    sub_2144246FC(v231, type metadata accessor for IDSHealthInvitation);
    sub_2144246FC(v399, type metadata accessor for HealthSummarySharingEntry);
    v98 = v387;
    v92 = v388;
    v157 = v400;
    goto LABEL_40;
  }

  v206 = v365;
  v363 = v194;
  v364 = 0x800000021478A360;
  v360 = v198;
  v207 = v390;
  if ((v205 & 1) == 0)
  {
    sub_214031C4C();
    v226 = swift_allocError();
    *v227 = 0xD000000000000018;
    v227[1] = v206;
    v228 = v364;
    v227[2] = 0xD00000000000001CLL;
    v227[3] = v228;
    *&v403 = v226;
    swift_willThrow();

    goto LABEL_47;
  }

  v359 = v196;
  *&v403 = 0;
  sub_213FDC6D0(v369, v367);
  v208 = v364;

  v209 = v377;
  v210 = v377[1];
  v211 = v377[2];
  v212 = v377[3];

  sub_213FDC6D0(v211, v212);
  v213 = v366;
  *v209 = v401;
  v209[1] = v213;
  v209[2] = v368;
  v209[3] = v207;
  *(v209 + 32) = v370;
  v215 = v209[5];
  v214 = v209[6];
  v216 = v209[7];
  v217 = v209[8];
  LODWORD(v213) = *(v209 + 72);
  v218 = v362;
  *&v418 = v362;
  v219 = v389;
  *(&v418 + 1) = v389;
  LODWORD(v390) = v213;
  LOBYTE(v411) = v213;
  *&v422 = 0xD00000000000002CLL;
  *(&v422 + 1) = 0x800000021478E760;
  *&v423 = 0xD00000000000001CLL;
  *(&v423 + 1) = v208;

  v369 = v217;
  v370 = v216;
  sub_213FDC9D0(v216, v217);
  v368 = v214;
  v220 = v403;
  v401 = v215;
  v221 = v215(&v418, &v411, &v422);
  v222 = v219;
  if (v220)
  {
    *&v403 = v220;

    v223 = v397;
    v224 = v398;
    v225 = v375;
LABEL_53:

    sub_213FB54FC(v224, v223);
    sub_213FB2DF4(v372, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v373, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v374, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v225, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v231 = v377;
    v251 = v377[6];
    v252 = v377[7];
    v253 = v377[8];

    sub_213FDC6D0(v252, v253);
    v254 = v368;
    *(v231 + 40) = v401;
    *(v231 + 48) = v254;
    v255 = v369;
    *(v231 + 56) = v370;
    *(v231 + 64) = v255;
    *(v231 + 72) = v390;
    goto LABEL_48;
  }

  if ((v221 & 1) == 0)
  {
    sub_214031C4C();
    v248 = swift_allocError();
    *v249 = 0xD00000000000002CLL;
    v249[1] = 0x800000021478E760;
    v250 = v364;
    v249[2] = 0xD00000000000001CLL;
    v249[3] = v250;
    *&v403 = v248;
    swift_willThrow();

    v223 = v397;
    v224 = v398;
    v225 = v375;
    goto LABEL_53;
  }

  *&v403 = 0;
  sub_213FDC6D0(v370, v369);
  v237 = v364;

  v238 = v209[6];
  v239 = v209[7];
  v240 = v209[8];

  sub_213FDC6D0(v239, v240);
  v241 = v368;
  v209[5] = v401;
  v209[6] = v241;
  v209[7] = v218;
  v209[8] = v222;
  *(v209 + 72) = v390;
  v243 = v209[10];
  v242 = v209[11];
  v244 = v209[12];
  v245 = *(v209 + 104);
  *&v418 = v379;
  LOBYTE(v411) = v245;
  *&v422 = 0xD000000000000029;
  *(&v422 + 1) = 0x800000021478E790;
  *&v423 = 0xD00000000000001CLL;
  *(&v423 + 1) = v237;
  v401 = v244;

  v246 = v403;
  v247 = v243(&v418, &v411, &v422);
  if (v246)
  {
    LODWORD(v389) = v245;
    v390 = v243;
    *&v403 = v246;
LABEL_59:

    v283 = v397;
    v284 = v375;
    v285 = v372;
    v286 = v373;

    sub_213FB54FC(v398, v283);
    sub_213FB2DF4(v285, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v286, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v374, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v284, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v231 = v377;
    v287 = v377[11];
    v288 = v377[12];

    *(v231 + 80) = v390;
    *(v231 + 88) = v242;
    *(v231 + 96) = v401;
    *(v231 + 104) = v389;
    goto LABEL_48;
  }

  if ((v247 & 1) == 0)
  {
    LODWORD(v389) = v245;
    v390 = v243;
    sub_214031C4C();
    v280 = swift_allocError();
    *v281 = 0xD000000000000029;
    v281[1] = 0x800000021478E790;
    v282 = v364;
    v281[2] = 0xD00000000000001CLL;
    v281[3] = v282;
    *&v403 = v280;
    swift_willThrow();

    goto LABEL_59;
  }

  v256 = v364;

  v257 = v256;

  v258 = v209[11];
  v259 = v209[12];

  v209[10] = v243;
  v209[11] = v242;
  v209[12] = v379;
  *(v209 + 104) = v245;
  v261 = *v363;
  v260 = *(v363 + 1);
  v262 = *(v363 + 2);
  v263 = *(v363 + 3);
  v264 = v363[32];
  v265 = v381;
  *&v418 = v381;
  v266 = v383;
  *(&v418 + 1) = v383;
  LODWORD(v401) = v264;
  LOBYTE(v411) = v264;
  *&v422 = 0xD000000000000022;
  *(&v422 + 1) = 0x800000021478E7C0;
  *&v423 = 0xD00000000000001CLL;
  *(&v423 + 1) = v257;

  v389 = v263;
  v390 = v262;
  sub_213FDC9D0(v262, v263);
  v267 = v261(&v418, &v411, &v422);
  *&v403 = 0;
  if ((v267 & 1) == 0)
  {
    sub_214031C4C();
    v289 = swift_allocError();
    *v290 = 0xD000000000000022;
    v290[1] = 0x800000021478E7C0;
    v291 = v364;
    v290[2] = 0xD00000000000001CLL;
    v290[3] = v291;
    *&v403 = v289;
    swift_willThrow();

    v292 = v397;
    v293 = v398;
    v294 = v375;

    sub_213FB54FC(v293, v292);
    sub_213FB2DF4(v372, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v373, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v374, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v294, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v295 = v363;
    v296 = *(v363 + 1);
    v297 = *(v363 + 2);
    v298 = *(v363 + 3);

    sub_213FDC6D0(v297, v298);
    *v295 = v261;
    *(v295 + 1) = v260;
    v299 = v389;
    *(v295 + 2) = v390;
    *(v295 + 3) = v299;
    v295[32] = v401;
LABEL_61:
    v231 = v377;
    goto LABEL_48;
  }

  sub_213FDC6D0(v390, v389);
  v268 = v364;

  v269 = v363;
  v270 = *(v363 + 1);
  v271 = *(v363 + 2);
  v272 = *(v363 + 3);

  sub_213FDC6D0(v271, v272);
  *v269 = v261;
  *(v269 + 1) = v260;
  *(v269 + 2) = v265;
  *(v269 + 3) = v266;
  v269[32] = v401;
  v274 = *v359;
  v273 = *(v359 + 1);
  v275 = *(v359 + 2);
  v276 = *(v359 + 3);
  v277 = v359[32];
  *&v418 = v361;
  *(&v418 + 1) = v396;
  LODWORD(v390) = v277;
  LOBYTE(v411) = v277;
  *&v422 = 0xD000000000000026;
  *(&v422 + 1) = 0x800000021478E7F0;
  *&v423 = 0xD00000000000001CLL;
  *(&v423 + 1) = v268;

  v389 = v275;
  v383 = v276;
  sub_213FDC9D0(v275, v276);
  v278 = v403;
  v401 = v274;
  v279 = v274(&v418, &v411, &v422);
  *&v403 = v278;
  if (v278)
  {

LABEL_66:

    sub_213FB54FC(v398, v397);
    sub_213FB2DF4(v372, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v373, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v374, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v375, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v315 = v359;
    v316 = *(v359 + 1);
    v317 = *(v359 + 2);
    v318 = *(v359 + 3);

    sub_213FDC6D0(v317, v318);
    *v315 = v401;
    *(v315 + 1) = v273;
    v319 = v383;
    *(v315 + 2) = v389;
    *(v315 + 3) = v319;
    v315[32] = v390;
    goto LABEL_61;
  }

  if ((v279 & 1) == 0)
  {
    sub_214031C4C();
    v312 = swift_allocError();
    *v313 = 0xD000000000000026;
    v313[1] = 0x800000021478E7F0;
    v314 = v364;
    v313[2] = 0xD00000000000001CLL;
    v313[3] = v314;
    *&v403 = v312;
    swift_willThrow();

    goto LABEL_66;
  }

  sub_213FDC6D0(v389, v383);
  v300 = v364;

  v301 = v359;
  v302 = *(v359 + 1);
  v303 = *(v359 + 2);
  v304 = *(v359 + 3);

  sub_213FDC6D0(v303, v304);
  *v301 = v401;
  *(v301 + 1) = v273;
  v305 = v396;
  *(v301 + 2) = v361;
  *(v301 + 3) = v305;
  v301[32] = v390;
  v307 = *v360;
  v306 = *(v360 + 1);
  v308 = *(v360 + 2);
  v309 = v360[24];
  *&v418 = v378;
  LODWORD(v396) = v309;
  LOBYTE(v411) = v309;
  *&v422 = 0xD00000000000002BLL;
  *(&v422 + 1) = 0x800000021478E820;
  *&v423 = 0xD00000000000001CLL;
  *(&v423 + 1) = v300;

  v401 = v306;
  v310 = v403;
  v311 = v307(&v418, &v411, &v422);
  *&v403 = v310;
  if (v310)
  {

LABEL_70:

    sub_213FB54FC(v398, v397);
    sub_213FB2DF4(v372, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v373, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v374, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v375, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
    v346 = v360;
    v347 = *(v360 + 1);
    v348 = *(v360 + 2);

    v349 = v401;
    *v346 = v307;
    *(v346 + 1) = v349;
    *(v346 + 2) = v308;
    v346[24] = v396;
    goto LABEL_61;
  }

  if ((v311 & 1) == 0)
  {
    sub_214031C4C();
    v343 = swift_allocError();
    *v344 = 0xD00000000000002BLL;
    v344[1] = 0x800000021478E820;
    v345 = v364;
    v344[2] = 0xD00000000000001CLL;
    v344[3] = v345;
    *&v403 = v343;
    swift_willThrow();
    goto LABEL_70;
  }

  sub_213FB54FC(v398, v397);
  sub_213FB2DF4(v372, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v373, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v374, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v375, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v376, &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2DF4(v380, &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2DF4(v382, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v384, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v385, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v386, &qword_27C913090, &unk_2146E9DB0);
  v320 = v360;
  v321 = *(v360 + 1);
  v322 = *(v360 + 2);

  v323 = v401;
  *v320 = v307;
  *(v320 + 1) = v323;
  v324 = v377;
  *(v320 + 2) = v378;
  v320[24] = v396;
  v325 = v371;
  sub_2144247CC(v324, v371, type metadata accessor for IDSHealthInvitation);
  sub_2144246FC(v399, type metadata accessor for HealthSummarySharingEntry);
  v326 = v388;
  v327 = v388[1];
  v328 = v388[2];
  v329 = v388[3];

  sub_213FDC6D0(v328, v329);
  v330 = v326[6];
  v331 = v326[7];
  v332 = v326[8];

  sub_213FDC6D0(v331, v332);
  v333 = v326[11];
  v334 = v326[12];

  sub_213FB2DF4(v326 + v395, &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2DF4(v326 + v393, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v326 + v391, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v326 + v392, &qword_27C913090, &unk_2146E9DB0);
  v335 = v394[1];
  v336 = v394[2];
  v337 = v394[3];

  sub_213FDC6D0(v336, v337);
  v338 = v402[1];
  v339 = v402[2];
  v340 = v402[3];

  sub_213FDC6D0(v339, v340);
  sub_213FB2DF4(v326 + v400, &qword_27C907570, &qword_214732A10);
  v341 = *(v387 + 8);
  v342 = *(v387 + 16);

  return sub_2144247CC(v325, v326, type metadata accessor for IDSHealthInvitation);
}

uint64_t sub_21441EA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v195 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v193 = *(v195 - 8);
  v3 = *(v193 + 64);
  MEMORY[0x28223BE20](v195);
  v185 = (&v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = type metadata accessor for CloudKitSharingToken();
  v191 = *(v200 - 8);
  v5 = *(v191 + 64);
  v6 = MEMORY[0x28223BE20](v200);
  v199 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v198 = &v176 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v190 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v216 = (&v176 - v13);
  v14 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v201 = *(v14 - 8);
  v15 = v201[8];
  MEMORY[0x28223BE20](v14 - 8);
  v202 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v184 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v186 = &v176 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v187 = &v176 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v188 = &v176 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v189 = &v176 - v28;
  MEMORY[0x28223BE20](v27);
  v197 = &v176 - v29;
  v30 = type metadata accessor for HealthSharingSetupMetadata(0);
  v31 = *(v30 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v196 = (&v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v192 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v176 - v38;
  v40 = *(a1 + *(type metadata accessor for HealthSummarySharingEntry(0) + 20));
  v41 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  sub_213FB2E54(v40 + v41, v39, &qword_27C913098, qword_21473D710);
  v42 = *(v31 + 48);
  v43 = 1;
  v44 = v42(v39, 1, v30);
  sub_213FB2DF4(v39, &qword_27C913098, qword_21473D710);
  if (v44 == 1)
  {
    v45 = v194;
    return (*(v193 + 56))(v45, v43, 1, v195);
  }

  v47 = v40 + v41;
  v48 = v192;
  sub_213FB2E54(v47, v192, &qword_27C913098, qword_21473D710);
  if (v42(v48, 1, v30) == 1)
  {
    v49 = v196;
    *v196 = MEMORY[0x277D84F90];
    v50 = v49 + v30[5];
    sub_2146D8DE8();
    v51 = (v49 + v30[6]);
    *v51 = 0;
    v51[1] = 0;
    *(v49 + v30[7]) = xmmword_2146E68C0;
    *(v49 + v30[8]) = xmmword_2146E68C0;
    *(v49 + v30[9]) = xmmword_2146E68C0;
    v52 = (v49 + v30[10]);
    *v52 = 0;
    v52[1] = 0;
    v53 = v42(v48, 1, v30);
    v54 = v203;
    if (v53 != 1)
    {
      sub_213FB2DF4(v48, &qword_27C913098, qword_21473D710);
    }
  }

  else
  {
    v49 = v196;
    sub_2144247CC(v48, v196, type metadata accessor for HealthSharingSetupMetadata);
    v54 = v203;
  }

  v55 = (v49 + v30[6]);
  v57 = *v55;
  v56 = v55[1];
  v58 = (v49 + v30[7]);
  v59 = v58[1];
  if (v59 >> 60 == 15)
  {
    v60 = type metadata accessor for CloudKitShareParticipant(0);
    v61 = v197;
    (*(*(v60 - 8) + 56))(v197, 1, 1, v60);
  }

  else
  {
    v62 = v30;
    v63 = *v58;

    sub_213FDCA18(v63, v59);
    v61 = v197;
    sub_21462EA3C(v63, v59, v197);
    if (v54)
    {
      sub_2144246FC(v49, type metadata accessor for HealthSharingSetupMetadata);
    }

    v64 = type metadata accessor for CloudKitShareParticipant(0);
    (*(*(v64 - 8) + 56))(v61, 0, 1, v64);
    v30 = v62;
  }

  sub_214423B28(v49);
  if (v54)
  {
    sub_213FB2DF4(v61, &qword_27C907570, &qword_214732A10);

    return sub_2144246FC(v49, type metadata accessor for HealthSharingSetupMetadata);
  }

  v66 = v65;
  v67 = v30;
  v183 = v57;
  if (v65)
  {
    v68 = [*&v65[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid] UUIDString];
    v69 = sub_2146D95B8();
    v71 = v70;

    v72 = v66[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type];
  }

  else
  {
    v69 = 0;
    v71 = 0;
    v72 = 5;
  }

  v181 = v72;
  v73 = (v49 + v67[9]);
  v74 = v73[1];
  v177 = v69;
  if (v74 >> 60 == 15)
  {
    v75 = 1;
  }

  else
  {
    v76 = *v73;
    sub_213FDCA18(*v73, v74);
    sub_21462EA3C(v76, v74, v189);
    v75 = 0;
  }

  v180 = v71;
  v182 = v56;
  v179 = v66;
  v77 = type metadata accessor for CloudKitShareParticipant(0);
  (*(*(v77 - 8) + 56))(v189, v75, 1, v77);
  v78 = (v49 + v67[10]);
  v79 = v78[1];
  v176 = *v78;
  v80 = *v49;
  v81 = *(v80 + 16);
  v178 = v79;

  v192 = v81;
  if (v81)
  {
    v82 = 0;
    v83 = (v191 + 48);
    v203 = MEMORY[0x277D84F90];
    v84 = &qword_27C9041D8;
    v85 = &qword_2146ED5C0;
    v86 = v190;
    v87 = v202;
    while (v82 < *(v80 + 16))
    {
      sub_214424694(v80 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + v201[9] * v82, v87, type metadata accessor for HealthSharingSetupInvitationToken);
      v88 = v216;
      sub_214420FA8(v87, v216);
      sub_2144246FC(v87, type metadata accessor for HealthSharingSetupInvitationToken);
      sub_213FB2E54(v88, v86, &qword_27C9041D8, &qword_2146ED5C0);
      if ((*v83)(v86, 1, v200) == 1)
      {
        sub_213FB2DF4(v88, &qword_27C9041D8, &qword_2146ED5C0);
        sub_213FB2DF4(v86, &qword_27C9041D8, &qword_2146ED5C0);
      }

      else
      {
        v89 = v86;
        v90 = v198;
        sub_2144247CC(v89, v198, type metadata accessor for CloudKitSharingToken);
        sub_214424694(v90, v199, type metadata accessor for CloudKitSharingToken);
        v91 = v203;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_214095C0C(0, *(v91 + 2) + 1, 1, v91);
        }

        v93 = *(v91 + 2);
        v92 = *(v91 + 3);
        if (v93 >= v92 >> 1)
        {
          v91 = sub_214095C0C(v92 > 1, v93 + 1, 1, v91);
        }

        sub_2144246FC(v198, type metadata accessor for CloudKitSharingToken);
        sub_213FB2DF4(v216, &qword_27C9041D8, &qword_2146ED5C0);
        *(v91 + 2) = v93 + 1;
        v94 = (*(v191 + 80) + 32) & ~*(v191 + 80);
        v203 = v91;
        sub_2144247CC(v199, v91 + v94 + *(v191 + 72) * v93, type metadata accessor for CloudKitSharingToken);
        v86 = v190;
      }

      ++v82;
      v87 = v202;
      if (v192 == v82)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  v203 = MEMORY[0x277D84F90];
LABEL_33:
  v95 = v188;
  sub_213FB2E54(v197, v188, &qword_27C907570, &qword_214732A10);
  v96 = v187;
  sub_213FB2E54(v189, v187, &qword_27C907570, &qword_214732A10);
  sub_213FB2E54(v95, v186, &qword_27C907570, &qword_214732A10);
  v97 = v184;
  sub_213FB2E54(v96, v184, &qword_27C907570, &qword_214732A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v99 = swift_initStackObject();
  *(v99 + 16) = xmmword_2146EAEB0;
  v100 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v101 = sub_2142E0E94(0xD000000000000013, 0x80000002147915E0, 0);
  v202 = 0;
  v102 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v103 = swift_allocObject();
  v104 = swift_allocObject();
  *(v104 + 16) = v102;
  *(v103 + 16) = sub_21430BBF4;
  *(v103 + 24) = v104;
  *(v99 + 32) = v103;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_2140676DC;
  *(v105 + 24) = 0;
  *(v99 + 40) = v105;
  v106 = sub_2142E0070(v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v107 = swift_allocObject();
  v108 = swift_allocObject();
  *(v108 + 16) = v106;
  *(v107 + 16) = sub_214032610;
  *(v107 + 24) = v108;
  *(inited + 32) = v107;
  sub_214042A28(inited, &v212);
  v109 = v213;
  v110 = v214;
  LOBYTE(v107) = v215;
  sub_214393C20(&v208);
  v111 = v209;
  v112 = v210;
  v113 = v211;
  sub_214393C54(&v204);
  v114 = v205;
  v216 = v206;
  LODWORD(v201) = v207;
  v115 = v185;
  *v185 = v212;
  *(v115 + 2) = v109;
  *(v115 + 3) = v110;
  *(v115 + 32) = v107;
  v116 = v195;
  sub_21442475C(v186, v115 + *(v195 + 20));
  sub_21442475C(v97, v115 + v116[6]);
  v117 = v115 + v116[7];
  *v117 = v208;
  *(v117 + 2) = v111;
  *(v117 + 3) = v112;
  v117[32] = v113;
  *(v115 + v116[8]) = v181;
  v118 = v115 + v116[9];
  *v118 = v204;
  v119 = v216;
  *(v118 + 2) = v114;
  *(v118 + 3) = v119;
  v118[32] = v201;
  *(v115 + v116[10]) = v203;
  v121 = *v115;
  v120 = *(v115 + 1);
  v122 = *(v115 + 2);
  v123 = *(v115 + 3);
  v124 = *(v115 + 32);
  *&v208 = v183;
  *(&v208 + 1) = v182;
  LODWORD(v201) = v124;
  LOBYTE(v204) = v124;
  *&v212 = 0xD00000000000003DLL;
  *(&v212 + 1) = 0x8000000214791630;
  v213 = 0xD00000000000001CLL;
  v214 = 0x800000021478A360;
  v216 = 0x800000021478A360;

  sub_213FDC9D0(v122, v123);
  v125 = v202;
  v126 = v121(&v208, &v204, &v212);
  v203 = v125;
  if (v125)
  {

LABEL_39:

    sub_213FB2DF4(v187, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v188, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v189, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v197, &qword_27C907570, &qword_214732A10);
    v142 = *(v115 + 1);
    v143 = *(v115 + 2);
    v144 = *(v115 + 3);

    sub_213FDC6D0(v143, v144);
    *v115 = v121;
    *(v115 + 1) = v120;
    *(v115 + 2) = v122;
    *(v115 + 3) = v123;
    *(v115 + 32) = v201;
    goto LABEL_40;
  }

  v202 = v118;
  if ((v126 & 1) == 0)
  {
    sub_214031C4C();
    v139 = swift_allocError();
    *v140 = 0xD00000000000003DLL;
    v140[1] = 0x8000000214791630;
    v141 = v216;
    v140[2] = 0xD00000000000001CLL;
    v140[3] = v141;
    v203 = v139;
    swift_willThrow();

    goto LABEL_39;
  }

  sub_213FDC6D0(v122, v123);
  v127 = v216;

  v128 = *(v115 + 1);
  v129 = *(v115 + 2);
  v130 = *(v115 + 3);

  sub_213FDC6D0(v129, v130);
  *v115 = v121;
  *(v115 + 1) = v120;
  v131 = v182;
  *(v115 + 2) = v183;
  *(v115 + 3) = v131;
  *(v115 + 32) = v201;
  v133 = *v117;
  v132 = *(v117 + 1);
  v134 = *(v117 + 2);
  v135 = *(v117 + 3);
  v136 = v117[32];
  *&v208 = v177;
  *(&v208 + 1) = v180;
  LODWORD(v200) = v136;
  LOBYTE(v204) = v136;
  *&v212 = 0xD00000000000003ALL;
  *(&v212 + 1) = 0x8000000214791670;
  v213 = 0xD00000000000001CLL;
  v214 = v127;

  sub_213FDC9D0(v134, v135);
  v137 = v203;
  v201 = v133;
  v138 = (v133)(&v208, &v204, &v212);
  v203 = v137;
  if (v137)
  {
  }

  else
  {
    if (v138)
    {
      sub_213FDC6D0(v134, v135);
      v145 = v216;

      v146 = *(v117 + 1);
      v147 = *(v117 + 2);
      v148 = *(v117 + 3);

      sub_213FDC6D0(v147, v148);
      *v117 = v201;
      *(v117 + 1) = v132;
      v149 = v180;
      *(v117 + 2) = v177;
      *(v117 + 3) = v149;
      v117[32] = v200;
      v150 = v145;
      v83 = 0x80000002147916B0;
      v54 = *v202;
      v84 = *(v202 + 1);
      v85 = *(v202 + 2);
      v87 = *(v202 + 3);
      LOBYTE(v82) = v202[32];
      v151 = v176;
      *&v208 = v176;
      v152 = v178;
      *(&v208 + 1) = v178;
      LOBYTE(v204) = v82;
      *&v212 = 0xD000000000000042;
      *(&v212 + 1) = 0x80000002147916B0;
      v213 = 0xD00000000000001CLL;
      v214 = v150;

      sub_213FDC9D0(v85, v87);
      v153 = v203;
      v154 = v54(&v208, &v204, &v212);
      v203 = v153;
      if (v153)
      {

        v86 = v189;
LABEL_50:
        sub_213FB2DF4(v187, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v188, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v86, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v197, &qword_27C907570, &qword_214732A10);
        v172 = v202;
        v173 = *(v202 + 1);
        v174 = *(v202 + 2);
        v175 = *(v202 + 3);

        sub_213FDC6D0(v174, v175);
        *v172 = v54;
        *(v172 + 1) = v84;
        *(v172 + 2) = v85;
        *(v172 + 3) = v87;
        v172[32] = v82;
        v115 = v185;
        goto LABEL_40;
      }

      v86 = v189;
      if (v154)
      {
        sub_213FDC6D0(v85, v87);

        v163 = v152;
        sub_213FB2DF4(v187, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v188, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v86, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v197, &qword_27C907570, &qword_214732A10);
        v164 = v202;
        v165 = *(v202 + 1);
        v166 = *(v202 + 2);
        v167 = *(v202 + 3);

        sub_213FDC6D0(v166, v167);
        *v164 = v54;
        *(v164 + 1) = v84;
        *(v164 + 2) = v151;
        *(v164 + 3) = v163;
        v164[32] = v82;
        v168 = v194;
        sub_2144247CC(v185, v194, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
        sub_2144246FC(v196, type metadata accessor for HealthSharingSetupMetadata);
        v45 = v168;
        v43 = 0;
        return (*(v193 + 56))(v45, v43, 1, v195);
      }

LABEL_49:
      sub_214031C4C();
      v169 = swift_allocError();
      *v170 = 0xD000000000000042;
      v170[1] = v83;
      v171 = v216;
      v170[2] = 0xD00000000000001CLL;
      v170[3] = v171;
      v203 = v169;
      swift_willThrow();

      goto LABEL_50;
    }

    sub_214031C4C();
    v155 = swift_allocError();
    *v156 = 0xD00000000000003ALL;
    v156[1] = 0x8000000214791670;
    v157 = v216;
    v156[2] = 0xD00000000000001CLL;
    v156[3] = v157;
    v203 = v155;
    swift_willThrow();
  }

  v158 = v201;
  v159 = v200;

  sub_213FB2DF4(v187, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v188, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v189, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v197, &qword_27C907570, &qword_214732A10);
  v160 = *(v117 + 1);
  v161 = *(v117 + 2);
  v162 = *(v117 + 3);

  sub_213FDC6D0(v161, v162);
  *v117 = v158;
  *(v117 + 1) = v132;
  *(v117 + 2) = v134;
  *(v117 + 3) = v135;
  v117[32] = v159;
LABEL_40:
  sub_2144246FC(v115, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  return sub_2144246FC(v196, type metadata accessor for HealthSharingSetupMetadata);
}

uint64_t sub_2144201A0@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v1 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v93 = *(v1 - 8);
  v2 = *(v93 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v99 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = &v81 - v5;
  v6 = type metadata accessor for CloudKitSharingToken();
  v96 = *(v6 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v81 - v13;
  v94 = type metadata accessor for CloudKitShareParticipant(0);
  v91 = *(v94 - 8);
  v14 = *(v91 + 64);
  v15 = MEMORY[0x28223BE20](v94);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v81 - v17;
  v18 = type metadata accessor for HealthSharingSetupMetadata(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v81 - v25;
  v27 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for IDSHealthInvitation(0);
  sub_213FB2E54(v101 + *(v32 + 48), v26, &qword_27C907568, &unk_2146F4AA0);
  v33 = *(v28 + 48);
  v92 = v27;
  if (v33(v26, 1, v27) == 1)
  {
    sub_213FB2DF4(v26, &qword_27C907568, &unk_2146F4AA0);
    return (*(v19 + 56))(v98, 1, 1, v18);
  }

  sub_2144247CC(v26, v31, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  *v22 = MEMORY[0x277D84F90];
  v35 = v22 + v18[5];
  sub_2146D8DE8();
  v36 = (v22 + v18[6]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v22 + v18[7];
  *v37 = xmmword_2146E68C0;
  v38 = (v22 + v18[8]);
  *v38 = xmmword_2146E68C0;
  v39 = (v22 + v18[9]);
  *v39 = xmmword_2146E68C0;
  v40 = (v22 + v18[10]);
  *v40 = 0;
  v40[1] = 0;
  v41 = *(v31 + 3);
  v42 = v97;
  v43 = v90;
  if (v41)
  {
    if (v41 == 1)
    {
      goto LABEL_34;
    }

    *v36 = *(v31 + 2);
    v36[1] = v41;
  }

  v85 = v38;
  v86 = v22;
  v82 = v39;
  v83 = v40;
  v84 = v18;
  v44 = v92;
  sub_213FB2E54(&v31[v92[5]], v43, &qword_27C907570, &qword_214732A10);
  v45 = *(v91 + 48);
  if (v45(v43, 1, v94) == 1)
  {

    sub_213FB2DF4(v43, &qword_27C907570, &qword_214732A10);
    v91 = v19;
  }

  else
  {
    v65 = v43;
    v66 = v89;
    sub_2144247CC(v65, v89, type metadata accessor for CloudKitShareParticipant);

    v67 = sub_21462F008();
    if (v42)
    {
      sub_2144246FC(v66, type metadata accessor for CloudKitShareParticipant);
      goto LABEL_31;
    }

    v68 = v67;
    v91 = v19;
    v42 = 0;
    v70 = sub_214633900();
    v72 = v71;
    sub_2144246FC(v89, type metadata accessor for CloudKitShareParticipant);

    sub_213FDC6BC(*v37, *(v37 + 1));
    *v37 = v70;
    *(v37 + 1) = v72;
  }

  v46 = sub_2144215D0(v31);
  if (v42)
  {
LABEL_31:
    sub_2144246FC(v31, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    v74 = v86;
    return sub_2144246FC(v74, type metadata accessor for HealthSharingSetupMetadata);
  }

  if (v47 >> 60 != 15)
  {
    v48 = v85;
    v49 = v46;
    v50 = v47;
    sub_213FDC6BC(*v85, v85[1]);
    *v48 = v49;
    v48[1] = v50;
    v44 = v92;
  }

  v51 = v88;
  sub_213FB2E54(&v31[v44[6]], v88, &qword_27C907570, &qword_214732A10);
  if (v45(v51, 1, v94) == 1)
  {
    sub_213FB2DF4(v51, &qword_27C907570, &qword_214732A10);
  }

  else
  {
    v69 = v87;
    sub_2144247CC(v51, v87, type metadata accessor for CloudKitShareParticipant);
    v75 = sub_21462F008();
    v76 = v31;
    v77 = sub_214633900();
    v79 = v78;
    sub_2144246FC(v69, type metadata accessor for CloudKitShareParticipant);

    v80 = v82;
    sub_213FDC6BC(*v82, v82[1]);
    *v80 = v77;
    v80[1] = v79;
    v31 = v76;
    v44 = v92;
  }

  v52 = &v31[v44[9]];
  v53 = *(v52 + 3);
  v54 = v98;
  if (!v53)
  {
    goto LABEL_16;
  }

  if (v53 != 1)
  {
    v55 = v83;
    *v83 = *(v52 + 2);
    v55[1] = v53;
LABEL_16:
    v56 = v44[10];
    v97 = v31;
    v57 = *&v31[v56];
    v58 = *(v57 + 16);

    if (v58)
    {
      v59 = 0;
      v60 = MEMORY[0x277D84F90];
      while (v59 < *(v57 + 16))
      {
        v61 = v95;
        sub_214424694(v57 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v59, v95, type metadata accessor for CloudKitSharingToken);
        v62 = v100;
        sub_214421840(v61, v100);
        sub_2144246FC(v61, type metadata accessor for CloudKitSharingToken);
        sub_214424694(v62, v99, type metadata accessor for HealthSharingSetupInvitationToken);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2140954AC(0, v60[2] + 1, 1, v60);
        }

        v64 = v60[2];
        v63 = v60[3];
        if (v64 >= v63 >> 1)
        {
          v60 = sub_2140954AC(v63 > 1, v64 + 1, 1, v60);
        }

        ++v59;
        sub_2144246FC(v100, type metadata accessor for HealthSharingSetupInvitationToken);
        v60[2] = v64 + 1;
        sub_2144247CC(v99, v60 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v64, type metadata accessor for HealthSharingSetupInvitationToken);
        v54 = v98;
        if (v58 == v59)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v60 = MEMORY[0x277D84F90];
LABEL_30:
    sub_2144246FC(v97, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    v73 = v86;
    *v86 = v60;
    sub_214424694(v73, v54, type metadata accessor for HealthSharingSetupMetadata);
    (*(v91 + 56))(v54, 0, 1, v84);
    v74 = v73;
    return sub_2144246FC(v74, type metadata accessor for HealthSharingSetupMetadata);
  }

LABEL_34:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_214420C54()
{
  v1 = type metadata accessor for HealthSharingAuthorization(0);
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = *(v0 + *(type metadata accessor for IDSHealthInvitation(0) + 80));
  v29 = *(v8 + 16);
  if (v29)
  {
    v9 = 0;
    v10 = (v8 + 96);
    v34 = MEMORY[0x277D84F90];
    v27 = v8;
    v28 = v5;
    while (v9 < *(v8 + 16))
    {
      v11 = *(v10 - 7);
      v12 = *(v10 - 6);
      v13 = *(v10 - 5);
      v14 = *(v10 - 3);
      v15 = *(v10 - 2);
      v16 = *v10;
      v32 = *(v10 - 1);
      v33 = v11;

      sub_213FDC9D0(v12, v13);

      sub_2146D8DE8();
      v17 = v31;
      v18 = &v7[*(v31 + 20)];
      *v18 = 0;
      v18[1] = 0;
      v19 = &v7[*(v17 + 24)];
      *v19 = 0;
      *(v19 + 1) = 0;
      v20 = &v7[*(v17 + 28)];
      *v20 = 0;
      *(v20 + 1) = 0;
      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_20;
        }

        *v18 = v12;
        v18[1] = v13;
      }

      if (v15)
      {
        *v19 = v14;
        *(v19 + 1) = v15;
      }

      if (v16)
      {
        *v20 = v32;
        *(v20 + 1) = v16;
      }

      sub_214424694(v7, v5, type metadata accessor for HealthSharingAuthorization);
      sub_213FDC9D0(v12, v13);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_2140954D4(0, v34[2] + 1, 1, v34);
      }

      v22 = v34[2];
      v21 = v34[3];
      if (v22 >= v21 >> 1)
      {
        v34 = sub_2140954D4(v21 > 1, v22 + 1, 1, v34);
      }

      ++v9;

      sub_213FDC6D0(v12, v13);

      v23 = v34;
      v34[2] = v22 + 1;
      v24 = v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22;
      v5 = v28;
      sub_2144247CC(v28, v24, type metadata accessor for HealthSharingAuthorization);
      sub_2144246FC(v7, type metadata accessor for HealthSharingAuthorization);
      v10 += 9;
      v8 = v27;
      if (v29 == v9)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_20:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_214420FA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v10 = (a1 + *(v9 + 24));
  v11 = v10[1];
  if (v11 >> 60 == 15)
  {
    v12 = type metadata accessor for CloudKitSharingToken();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    return;
  }

  v51 = v9;
  v13 = *v10;
  v14 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_213FDCA18(v13, v11);
  v15 = sub_21404A62C();
  if (v2)
  {
    sub_213FB54FC(v13, v11);
    v56 = v2;
    v16 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v17 = v55;
      sub_21404A6EC();
      swift_allocError();
      v19 = v18;
      v20 = v17;
      v21 = [v20 domain];
      v22 = sub_2146D95B8();
      v24 = v23;

      v52 = 0xD000000000000014;
      v53 = 0x800000021478AAD0;
      MEMORY[0x2160545D0](v22, v24);

      v25 = v53;
      *v19 = v52;
      v19[1] = v25;
      v52 = [v20 code];
      v26 = sub_2146DA428();
      v28 = v27;

      v19[2] = v26;
      v19[3] = v28;
      v19[4] = 0xD000000000000013;
      v19[5] = 0x800000021479A560;
      swift_willThrow();

      v29 = v56;
    }

    else
    {

      sub_21404A6EC();
      swift_allocError();
      v46 = v45;
      v47 = v2;
      sub_214689A34(v2, 0xD000000000000013, 0x800000021479A560, v46);
      swift_willThrow();
      v29 = v2;
    }

    return;
  }

  v30 = v15;
  sub_213FB54FC(v13, v11);
  v31 = v30;
  [v31 _enableStrictSecureDecodingMode];
  [v31 setDecodingFailurePolicy_];
  v32 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = sub_2146D9588();
  [v31 setClass:ObjCClassFromMetadata forClassName:v34];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2146EA710;
  *(v35 + 32) = v32;
  v36 = *MEMORY[0x277CCA308];
  sub_2146D95B8();
  sub_2146D9D08();

  if (!v54)
  {
    sub_213FB2DF4(&v52, &qword_27C913170, &qword_2146EAB20);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v48 = sub_2146D9F58();
    swift_allocError();
    v50 = v49;
    sub_2146D9F28();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84168], v48);
    swift_willThrow();

    return;
  }

  v37 = v56;
  v38 = (a1 + *(v51 + 20));
  if (v38[1])
  {
    v39 = *v38;
    v40 = v38[1];

    sub_2146D8928();

    v41 = sub_2146D8958();
    v42 = *(v41 - 8);
    v43 = 0;
    if ((*(v42 + 48))(v8, 1, v41) != 1)
    {
      v43 = sub_2146D8898();
      (*(v42 + 8))(v8, v41);
    }

    [v37 setShareURL_];
  }

  sub_2145A8530(v37, a2);

  v44 = type metadata accessor for CloudKitSharingToken();
  (*(*(v44 - 8) + 56))(a2, 0, 1, v44);
}

uint64_t sub_2144215D0(uint64_t a1)
{
  v2 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v3 = *(a1 + *(v2 + 32));
  if (v3 == 5)
  {
    return 0;
  }

  v5 = a1 + *(v2 + 28);
  result = *(v5 + 24);
  if (result)
  {
    if (result == 1)
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 16);
      v8 = objc_allocWithZone(MEMORY[0x277CCAD78]);

      v9 = sub_2146D9588();
      sub_213FDC6D0(v7, v6);
      v10 = [v8 initWithUUIDString_];

      if (!v10)
      {
        return 0;
      }

      v11 = type metadata accessor for _BlastDoorHKProfileIdentifier();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_UuidKey];
      *v13 = 0x746E65646970;
      v13[1] = 0xE600000000000000;
      v14 = &v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_TypeKey];
      *v14 = 0x6570797470;
      v14[1] = 0xE500000000000000;
      v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type] = v3;
      *&v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid] = v10;
      v21.receiver = v12;
      v21.super_class = v11;
      v15 = v10;
      v16 = objc_msgSendSuper2(&v21, sel_init);
      v17 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      v18 = sub_2146D9588();
      [v17 setClassName:v18 forClass:swift_getObjCClassFromMetadata()];

      [v17 encodeObject:v16 forKey:*MEMORY[0x277CCA308]];
      v19 = [v17 encodedData];
      v20 = sub_2146D8A58();

      return v20;
    }
  }

  return result;
}

uint64_t sub_214421840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2145A8204();
  if (v2)
  {
    v15 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v16 = qword_280B35410;
    if (os_log_type_enabled(qword_280B35410, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_213FAF000, v16, v15, "Error when attempting to recompose CloudSharingMetadata token: %@", v17, 0xCu);
      sub_213FB2DF4(v18, &qword_27C9041E0, &qword_214736EF0);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v22 = v14;
    v23 = a1 + *(type metadata accessor for CloudKitSharingToken() + 24);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
    sub_213FB2E54(v23 + *(v24 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v38 = v22;
      sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      v25 = v22;
      v26 = sub_2146D8868();
      v28 = v27;
      (*(v10 + 8))(v13, v9);
      [v25 setShareURL_];
      v29 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      v30 = sub_2146D9588();
      sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
      [v29 setClassName:v30 forClass:swift_getObjCClassFromMetadata()];

      [v29 encodeObject:v25 forKey:*MEMORY[0x277CCA308]];
      sub_2146D8DE8();
      v31 = type metadata accessor for HealthSharingSetupInvitationToken(0);
      v32 = (a2 + *(v31 + 20));
      *v32 = 0;
      v32[1] = 0;
      v33 = a2 + *(v31 + 24);
      *v33 = xmmword_2146E68C0;
      *v32 = v26;
      v32[1] = v28;
      v34 = [v29 encodedData];
      v35 = sub_2146D8A58();
      v37 = v36;

      result = sub_213FDC6BC(*v33, *(v33 + 8));
      *v33 = v35;
      *(v33 + 8) = v37;
    }
  }

  return result;
}

id sub_214421CB8(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_UuidKey];
  *v4 = 0x746E65646970;
  v4[1] = 0xE600000000000000;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_TypeKey];
  *v5 = 0x6570797470;
  v5[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EA710;
  *(v6 + 32) = sub_21404A8B8(0, &qword_27C913168, 0x277CCAD78);
  sub_2146D9D08();

  if (!v20)
  {

    sub_213FB2DF4(v19, &qword_27C913170, &qword_2146EAB20);
LABEL_10:
    v13 = v4[1];

    v14 = v5[1];

    type metadata accessor for _BlastDoorHKProfileIdentifier();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v7 = v18;
  v8 = *v5;
  v9 = v5[1];

  v10 = sub_2146D9588();

  v11 = [a1 decodeIntegerForKey_];

  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v12 = 0;
      goto LABEL_17;
    }

    if (v11 == 2)
    {
      v12 = 1;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v11 == 3)
  {
    v12 = 2;
    goto LABEL_17;
  }

  if (v11 == 4)
  {
    v12 = 3;
    goto LABEL_17;
  }

  if (v11 != 100)
  {
LABEL_19:

    goto LABEL_10;
  }

  v12 = 4;
LABEL_17:
  v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type] = v12;
  *&v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid] = v7;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for _BlastDoorHKProfileIdentifier();
  v16 = objc_msgSendSuper2(&v17, sel_init);

  return v16;
}

void sub_214421F30(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_UuidKey);
  v4 = *(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_UuidKey + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid);
  v6 = sub_2146D9588();
  [a1 encodeObject:v5 forKey:v6];

  v7 = qword_21473D7E8[*(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type)];
  v8 = *(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_TypeKey);
  v9 = *(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_TypeKey + 8);
  v10 = sub_2146D9588();
  [a1 encodeInteger:v7 forKey:v10];
}

id sub_2144220B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _BlastDoorHKProfileIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214422148(void *a1, char *a2, unint64_t *a3)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *a3;
  v9[0] = *a1;
  v9[1] = v3;
  v7[2] = v9;
  v8 = v4;
  return sub_21441C14C(sub_21438ED20, v7, v5) & 1;
}

uint64_t sub_2144221AC(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  v4 = *a3;
  v9[0] = *a1;
  v9[1] = v3;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = 2;
  return v5(v9, &v8) & 1;
}

uint64_t sub_2144221FC(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a3 + 16);
  if (v5 != 2)
  {
    v9 = *(a3 + 24);
    v10 = *(a3 + 32);
    v13 = v5 & 1;
    if (v9(&v13))
    {
      return 1;
    }
  }

  v12 = sub_2146D96A8();
  return v7(v12, v8) & 1;
}

uint64_t sub_214422298(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  if (v3 == 1 || (v4 = a2[3], v4 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v5 = a1[2];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v11 = a2[5];
  v10 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  if (!v3)
  {
    if (v4)
    {
      return 0;
    }

    sub_213FDC9D0(a2[2], 0);
    sub_213FDC9D0(v5, 0);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (!v10)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v5 != a2[2] || v3 != v4)
  {
    v14 = a1[2];
    if ((sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (!v10 || (v6 != v11 || v7 != v10) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  result = (v9 | v13) == 0;
  if (v9 && v13)
  {
    if (v8 == v12 && v9 == v13)
    {
      return 1;
    }

    else
    {

      return sub_2146DA6A8();
    }
  }

  return result;
}

uint64_t sub_214422444(uint64_t a1, uint64_t a2)
{
  v138 = type metadata accessor for CloudKitShareParticipant(0);
  v136 = *(v138 - 8);
  v4 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v6 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v137 = (&v131 - v9);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913178, &unk_21473D7D0);
  v10 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v139 = &v131 - v11;
  v145 = sub_2146D8B08();
  v147 = *(v145 - 8);
  v12 = *(v147 + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v140 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v141 = &v131 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v131 - v20;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v22 = *(*(v146 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v146);
  v142 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v143 = &v131 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v131 - v27;
  v29 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v148 = *(v29 - 8);
  v30 = *(v148 + 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v131 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913188, &qword_21473D7E0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v131 - v39;
  v41 = *(a1 + 24);
  if (v41 == 1)
  {
    goto LABEL_120;
  }

  v134 = v6;
  v42 = *(a2 + 24);
  if (v42 == 1)
  {
    goto LABEL_120;
  }

  v43 = *(a1 + 16);
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_71;
    }

    if (v43 != *(a2 + 16) || v41 != v42)
    {
      v44 = *(a1 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    if (v42)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v43, 0);
  }

  v45 = *(a1 + 64);
  if (v45 == 1)
  {
    goto LABEL_120;
  }

  v46 = *(a2 + 64);
  if (v46 == 1)
  {
    goto LABEL_120;
  }

  v47 = *(a1 + 56);
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_71;
    }

    if (v47 != *(a2 + 56) || v45 != v46)
    {
      v48 = *(a1 + 56);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    if (v46)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(a2 + 56), 0);
    sub_213FDC9D0(v47, 0);
  }

  v49 = *(a1 + 96);
  if (!v49)
  {
    goto LABEL_120;
  }

  v50 = *(a2 + 96);
  if (!v50)
  {
    goto LABEL_120;
  }

  if ((sub_2143D53BC(v49, v50) & 1) == 0)
  {
LABEL_71:
    v79 = 0;
    return v79 & 1;
  }

  v51 = *(a1 + 120);
  v52 = *(a2 + 120);
  if (v51)
  {
    if (!v52 || (*(a1 + 112) != *(a2 + 112) || v51 != v52) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (v52)
  {
    goto LABEL_71;
  }

  v53 = *(a1 + 136);
  v54 = *(a2 + 136);
  if (v53)
  {
    if (!v54 || (*(a1 + 128) != *(a2 + 128) || v53 != v54) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (v54)
  {
    goto LABEL_71;
  }

  v55 = *(a1 + 144);
  v56 = *(a2 + 144);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      goto LABEL_71;
    }
  }

  else if (v56 == 2 || ((v56 ^ v55) & 1) != 0)
  {
    goto LABEL_71;
  }

  v57 = *(a1 + 145);
  v58 = *(a2 + 145);
  if (v57 == 2)
  {
    if (v58 != 2)
    {
      goto LABEL_71;
    }
  }

  else if (v58 == 2 || ((v58 ^ v57) & 1) != 0)
  {
    goto LABEL_71;
  }

  v59 = *(a1 + 146);
  v60 = *(a2 + 146);
  if (v59 == 5)
  {
    if (v60 != 5)
    {
      goto LABEL_71;
    }
  }

  else if (v59 != v60)
  {
    goto LABEL_71;
  }

  v132 = type metadata accessor for IDSHealthInvitation(0);
  v61 = v132[12];
  v62 = *(v37 + 48);
  sub_213FB2E54(a1 + v61, v40, &qword_27C907568, &unk_2146F4AA0);
  v133 = v62;
  sub_213FB2E54(a2 + v61, &v40[v62], &qword_27C907568, &unk_2146F4AA0);
  v63 = *(v148 + 6);
  if (v63(v40, 1, v29) == 1)
  {
    if (v63(&v40[v133], 1, v29) == 1)
    {
      sub_213FB2DF4(v40, &qword_27C907568, &unk_2146F4AA0);
      goto LABEL_59;
    }

LABEL_57:
    v64 = &qword_27C913188;
    v65 = &qword_21473D7E0;
    v66 = v40;
LABEL_70:
    sub_213FB2DF4(v66, v64, v65);
    goto LABEL_71;
  }

  sub_213FB2E54(v40, v36, &qword_27C907568, &unk_2146F4AA0);
  if (v63(&v40[v133], 1, v29) == 1)
  {
    sub_2144246FC(v36, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    goto LABEL_57;
  }

  sub_2144247CC(&v40[v133], v32, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  v67 = sub_214423500(v36, v32);
  sub_2144246FC(v32, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  sub_2144246FC(v36, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  sub_213FB2DF4(v40, &qword_27C907568, &unk_2146F4AA0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_59:
  v68 = v132[13];
  v69 = *(v146 + 48);
  sub_213FB2E54(a1 + v68, v28, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v68, &v28[v69], &qword_27C913090, &unk_2146E9DB0);
  v70 = *(v147 + 48);
  v71 = v145;
  if (v70(v28, 1, v145) == 1)
  {
    if (v70(&v28[v69], 1, v71) != 1)
    {
LABEL_69:
      v64 = &qword_27C913180;
      v65 = &qword_214739C58;
      v66 = v28;
      goto LABEL_70;
    }

    sub_213FB2DF4(v28, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    sub_213FB2E54(v28, v21, &qword_27C913090, &unk_2146E9DB0);
    v148 = v70;
    if (v70(&v28[v69], 1, v71) == 1)
    {
LABEL_68:
      (*(v147 + 8))(v21, v71);
      goto LABEL_69;
    }

    v72 = v147;
    v73 = v144;
    (*(v147 + 32))(v144, &v28[v69], v71);
    sub_21442464C(&unk_27C913190, MEMORY[0x277CC9578]);
    v74 = sub_2146D9578();
    v75 = *(v72 + 8);
    v75(v73, v71);
    v75(v21, v71);
    sub_213FB2DF4(v28, &qword_27C913090, &unk_2146E9DB0);
    v70 = v148;
    if ((v74 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v76 = v132[14];
  v77 = *(v146 + 48);
  v28 = v143;
  sub_213FB2E54(a1 + v76, v143, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v76, &v28[v77], &qword_27C913090, &unk_2146E9DB0);
  v78 = v70(v28, 1, v71);
  v148 = v70;
  if (v78 == 1)
  {
    if (v70(&v28[v77], 1, v71) == 1)
    {
      sub_213FB2DF4(v28, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  v21 = v141;
  sub_213FB2E54(v28, v141, &qword_27C913090, &unk_2146E9DB0);
  if (v70(&v28[v77], 1, v71) == 1)
  {
    goto LABEL_68;
  }

  v81 = v147;
  v82 = v144;
  (*(v147 + 32))(v144, &v28[v77], v71);
  sub_21442464C(&unk_27C913190, MEMORY[0x277CC9578]);
  v83 = sub_2146D9578();
  v84 = *(v81 + 8);
  v84(v82, v71);
  v84(v21, v71);
  sub_213FB2DF4(v28, &qword_27C913090, &unk_2146E9DB0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_74:
  v85 = v132[15];
  v86 = *(v146 + 48);
  v87 = v142;
  sub_213FB2E54(a1 + v85, v142, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v85, v87 + v86, &qword_27C913090, &unk_2146E9DB0);
  v88 = v145;
  v89 = v148;
  if (v148(v87, 1, v145) == 1)
  {
    if (v89(v87 + v86, 1, v88) == 1)
    {
      sub_213FB2DF4(v142, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  sub_213FB2E54(v87, v140, &qword_27C913090, &unk_2146E9DB0);
  if (v89(v87 + v86, 1, v88) == 1)
  {
    (*(v147 + 8))(v140, v145);
LABEL_79:
    v64 = &qword_27C913180;
    v65 = &qword_214739C58;
    v66 = v142;
    goto LABEL_70;
  }

  v90 = v147;
  v91 = v142;
  v92 = v142 + v86;
  v94 = v144;
  v93 = v145;
  (*(v147 + 32))(v144, v92, v145);
  sub_21442464C(&unk_27C913190, MEMORY[0x277CC9578]);
  v95 = v140;
  v96 = sub_2146D9578();
  v97 = *(v90 + 8);
  v97(v94, v93);
  v97(v95, v93);
  sub_213FB2DF4(v91, &qword_27C913090, &unk_2146E9DB0);
  if ((v96 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_81:
  v98 = v132[16];
  v99 = a1 + v98;
  v100 = *(a1 + v98 + 24);
  if (v100 == 1)
  {
    goto LABEL_120;
  }

  v101 = a2 + v98;
  v102 = *(v101 + 24);
  if (v102 == 1)
  {
    goto LABEL_120;
  }

  v103 = *(v99 + 16);
  if (v100)
  {
    if (!v102)
    {
      goto LABEL_71;
    }

    if (v103 != *(v101 + 16) || v100 != v102)
    {
      v104 = *(v99 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    if (v102)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(v101 + 16), 0);
    sub_213FDC9D0(v103, 0);
  }

  v105 = v132[17];
  v106 = a1 + v105;
  v107 = *(a1 + v105 + 24);
  if (v107 == 1)
  {
    goto LABEL_120;
  }

  v108 = a2 + v105;
  v109 = *(v108 + 24);
  if (v109 == 1)
  {
    goto LABEL_120;
  }

  v110 = *(v106 + 16);
  if (v107)
  {
    if (!v109)
    {
      goto LABEL_71;
    }

    if (v110 != *(v108 + 16) || v107 != v109)
    {
      v111 = *(v106 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    if (v109)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(v108 + 16), 0);
    sub_213FDC9D0(v110, 0);
  }

  v112 = v132[18];
  v113 = *(v135 + 48);
  v114 = v139;
  sub_213FB2E54(a1 + v112, v139, &qword_27C907570, &qword_214732A10);
  sub_213FB2E54(a2 + v112, v114 + v113, &qword_27C907570, &qword_214732A10);
  v115 = *(v136 + 48);
  if (v115(v114, 1, v138) == 1)
  {
    if (v115(v139 + v113, 1, v138) == 1)
    {
      sub_213FB2DF4(v139, &qword_27C907570, &qword_214732A10);
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v116 = v139;
  sub_213FB2E54(v139, v137, &qword_27C907570, &qword_214732A10);
  if (v115(v116 + v113, 1, v138) == 1)
  {
    sub_2144246FC(v137, type metadata accessor for CloudKitShareParticipant);
LABEL_106:
    v64 = &qword_27C913178;
    v65 = &unk_21473D7D0;
    v66 = v139;
    goto LABEL_70;
  }

  v117 = v139;
  v118 = v139 + v113;
  v119 = v134;
  sub_2144247CC(v118, v134, type metadata accessor for CloudKitShareParticipant);
  v120 = v137;
  v121 = sub_214630EE4(v137, v119);
  sub_2144246FC(v119, type metadata accessor for CloudKitShareParticipant);
  sub_2144246FC(v120, type metadata accessor for CloudKitShareParticipant);
  sub_213FB2DF4(v117, &qword_27C907570, &qword_214732A10);
  if ((v121 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_108:
  v122 = v132[19];
  v123 = *(a1 + v122);
  v124 = *(a2 + v122);
  if (v123 == 3)
  {
    if (v124 != 3)
    {
      goto LABEL_71;
    }
  }

  else if (v123 != v124)
  {
    goto LABEL_71;
  }

  if ((sub_2143D7F2C(*(a1 + v132[20]), *(a2 + v132[20])) & 1) == 0)
  {
    goto LABEL_71;
  }

  v125 = v132[21];
  v126 = *(a1 + v125);
  v127 = *(a2 + v125);
  if (v126 == 3)
  {
    if (v127 == 3)
    {
      goto LABEL_117;
    }

    goto LABEL_71;
  }

  if (v126 != v127)
  {
    goto LABEL_71;
  }

LABEL_117:
  v128 = v132[22];
  v129 = *(a1 + v128 + 16);
  if (v129)
  {
    v130 = *(a2 + v128 + 16);
    if (v130)
    {
      v79 = sub_2143D53BC(v129, v130);
      return v79 & 1;
    }
  }

LABEL_120:
  result = sub_2146DA018();
  __break(1u);
  return result;
}